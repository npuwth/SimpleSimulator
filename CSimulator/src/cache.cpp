#include "cache.h"

bool Cache::hit_or_miss(uint32_t index, uint64_t tag, int &blockID) {
	bool hit = 0;
	for(int i = 0; i < cc.associativity; i++) {
		int bID = i * set_num + index;
		if(this->blocks[bID].valid && this->blocks[bID].tag == tag) {
			hit = 1;
			blockID = bID;
			break;
		}
	}
	return hit;
}

int Cache::get_replacementID(uint32_t index) { //return blockID
	int blockID = 0;
	for(int i = 0; i < cc.associativity; i++) { //find invalid block first
		int bID = i * set_num + index;
		if(!this->blocks[bID].valid) {
			return bID;
		}
	}
	switch(this->cc.r_policy) {
		case LRU: {
			u_int32_t cnt = 100;
			for(int i = 0; i < cc.associativity; i++) {
				int bID = i * set_num + index;
				if(this->blocks[bID].cnt < cnt) { //找最小的cnt
					blockID = bID;
					cnt = this->blocks[bID].cnt;
				}
			}
			break;
		}
		default: {
			printf("Error: Replacement policy not implemented.\n");
		}
	}
	return blockID;
}

void Cache::update_replacement(uint32_t index, int blockID) {
	switch(this->cc.r_policy) {
		case LRU: {
			for(int i = 0; i < cc.associativity; i++) {
				int bID = i * set_num + index;
				if(bID == blockID) {
					this->blocks[bID].cnt = cc.associativity - 1;
				} else {
					if(this->blocks[bID].cnt != 0) {
						this->blocks[bID].cnt--;
					}
				}
			}
			break;
		}
		default: {
			printf("Error: Replacement policy not implemented.\n");
		}
	}
	return;
}

int Cache::evict_block(int index, int blockID) {
	int time = 0;
	if(!this->blocks[blockID].valid) return time;
	if(this->blocks[blockID].dirty) { //需要写回
		uint64_t block_addr = this->blocks[blockID].tag << (index_bit + offset_bit) + index << offset_bit;
		time = this->lower_->handle_request(block_addr, cc.block_size, WRITE, this->blocks[blockID].data);
		this->stats_.replace_num++;
	} else { //直接丢弃
		;
	}
	this->blocks[blockID].valid = 0;
	return time; //evict time
}

int Cache::get_missed_block(uint64_t tag, uint32_t index, int &blockID) {
	int time = 0;
	uint64_t block_addr = tag << (index_bit + offset_bit) + index << offset_bit;
	blockID = get_replacementID(index);
	time = evict_block(index, blockID);
	// printf("before refill: %ld\n", this->blocks[blockID].data.size());
	time += this->lower_->handle_request(block_addr, cc.block_size, READ, this->blocks[blockID].data);
	this->blocks[blockID].valid = 1;
	this->blocks[blockID].tag   = tag;
	this->blocks[blockID].cnt   = 0;
	this->blocks[blockID].dirty = 0;
	// printf("after refill: %ld\n", this->blocks[blockID].data.size());
	update_replacement(index, blockID);
	return time; //refill time
}

int Cache::handle_request(uint64_t addr, int bytes, int read, vector<uint64_t> &content) {
    int time = this->latency_.bus_latency + this->latency_.hit_latency;
	uint32_t offset = (uint32_t)parse_addr(addr, this->tag_bit + this->index_bit, 63);
	uint32_t index  = (uint32_t)parse_addr(addr, this->tag_bit, this->tag_bit + this->index_bit - 1);
	uint64_t tag    = parse_addr(addr, 0, this->tag_bit - 1);
	// printf("addr: %lx, tag: %lx, index: %x, offset: %x\n", addr, tag, index, offset);
	int blockID;
	int offset_index = offset / 8; //which word in cacheline, a word = 8 bytes
	int hit = hit_or_miss(index, tag, blockID);
	this->stats_.access_counter++;
	if(!hit) this->stats_.miss_num++;
	if(hit) { //hit
		vector<uint64_t> &data = this->blocks[blockID].data; //the whole cacheline in cache
		if(read == READ) { //read
			for(int i = 0; i < bytes / 8; i++) {
				// printf("%d, %d\n", i, offset_index + i);
				// printf("blockID: %d\n", blockID);
				// printf("%ld\n", this->blocks[blockID].data.size());
				// printf("data: %lx\n", this->blocks[blockID].data[0]);
				content[i] = data[offset_index + i];
			}
		} else { //write
			if(cc.write_through) {
				//同时写入cache和下级存储，不标记dirty
				for(int i = 0; i < bytes / 8; i++) {
					data[offset_index + i] = content[i];
				}
				this->lower_->handle_request(addr, bytes, WRITE, content);
				//write buffer可以认为不占用时间？
			} else {
				//只写入cache，逐出时写回下级存储，标记dirty
				for(int i = 0; i < bytes / 8; i++) {
					data[offset_index + i] = content[i];
				}
				this->blocks[blockID].dirty = 1;
			}
		}
		update_replacement(index, blockID);
	} else { //miss
		if(read) { //read
			time += get_missed_block(tag, index, blockID);
			this->handle_request(addr, bytes, READ, content); //递归调用自身进行处理
			this->stats_.access_counter--;
		} else { //write
			if(cc.write_allocate) {
				//把下级存储中的块调入cache，然后修改
				time += get_missed_block(tag, index, blockID);
				this->handle_request(addr, bytes, WRITE, content);
				this->stats_.access_counter--;
			} else {
				//直接把数据写入下级存储，不调入cache
				this->lower_->handle_request(addr, bytes, WRITE, content);
				//write buffer可以认为不占用时间？
			}
		}
	}
	// printf("Successfully handle request.\n");
	return time;
}

//Below is used by lab3.2
//   // Bypass?
//   if (!BypassDecision()) {
//     PartitionAlgorithm();
//     // Miss?
//     if (ReplaceDecision()) {
//       // Choose victim
//       ReplaceAlgorithm();
//     } else {
//       // return hit & time
//       hit = 1;
//       time += latency_.bus_latency + latency_.hit_latency;
//       stats_.access_time += time;
//       return;
//     }
//   }
  
//   // Prefetch?
//   if (PrefetchDecision()) {
//     PrefetchAlgorithm();
//   } else {
//     // Fetch from lower layer
//     int lower_hit, lower_time;
//     lower_->handle_request(addr, bytes, read, content,
//                           lower_hit, lower_time);
//     hit = 0;
//     time += latency_.bus_latency + lower_time;
//     stats_.access_time += latency_.bus_latency;
//   }

// int Cache::BypassDecision() {
//   return FALSE;
// }

// void Cache::PartitionAlgorithm() {
// }

// int Cache::ReplaceDecision() {
//   return TRUE;
//   //return FALSE;
// }

// void Cache::ReplaceAlgorithm(){
// }

// int Cache::PrefetchDecision() {
//   return FALSE;
// }

// void Cache::PrefetchAlgorithm() {
// }

