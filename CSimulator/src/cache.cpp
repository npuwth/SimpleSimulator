#include "cache.h"

bool Cache::hit_or_miss(uint32_t index, uint64_t tag, int &blockID) {
	bool hit = 0;
	for(int i = 0; i < cc.associativity; i++) {
		int bID = cc.associativity * set_num + index;
		if(this->blocks[bID].valid && this->blocks[bID].tag == tag) {
			hit = 1;
			blockID = bID;
			break;
		}
	}
	return hit;
}

int Cache::get_replacementID(uint32_t index) {
	int blockID = 0;
	for(int i = 0; i < cc.associativity; i++) { //find invalid block first
		int bID = cc.associativity * set_num + index;
		if(!this->blocks[bID].valid) {
			return bID;
		}
	}
	switch(this->cc.r_policy) {
		case LRU: {
			u_int32_t cnt = 100;
			for(int i = 0; i < cc.associativity; i++) {
				int bID = cc.associativity * set_num + index;
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
				int bID = cc.associativity * set_num + index;
				if(bID == blockID) {
					this->blocks[bID].cnt = cc.associativity - 1;
				} else {
					if(this->blocks[bID].cnt != 0) {
						this->blocks[bID].cnt--;
					}
				}
			}
		}
		default: {
			printf("Error: Replacement policy not implemented.\n");
		}
	}
	return;
}

int Cache::evict_block(int blockID) {
	int time = 0;
	if(!this->blocks[blockID].valid) return;
	if(this->blocks[blockID].dirty) { //需要写回
		int index = blockID - cc.associativity * set_num;
		uint64_t block_addr = this->blocks[blockID].tag << (index_bit + offset_bit) + index << offset_bit;
		time = this->lower_->HandleRequest(block_addr, cc.block_size, 0, this->blocks[blockID].data);
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
	time = evict_block(blockID);
	time += this->lower_->HandleRequest(block_addr, cc.block_size, 1, this->blocks[blockID].data);
	this->blocks[blockID].valid = 1;
	this->blocks[blockID].tag   = tag;
	this->blocks[blockID].cnt   = 0;
	this->blocks[blockID].dirty = 0;
	update_replacement(index, blockID);
	return time; //refill time
}

int Cache::HandleRequest(uint64_t addr, int bytes, int read, vector<uint64_t> &content) {
    int time = 0;
	uint32_t offset = (uint32_t)parse_addr(addr, this->offset_bit - 1, 0);
	uint32_t index  = (uint32_t)parse_addr(addr, this->index_bit + this->offset_bit - 1, this->offset_bit);
	uint64_t tag    = parse_addr(addr, 63, 63 - this->tag_bit + 1);
	int blockID;
	int offset_index = offset / 8; //which word in cacheline, a word = 8 bytes
	int hit = hit_or_miss(index, tag, blockID);
	time += this->latency_.bus_latency + this->latency_.hit_latency;
	if(hit) { //hit
		vector<uint64_t> &data = this->blocks[blockID].data; //the whole cacheline in cache
		if(read) { //read
			for(int i = 0; i < bytes / 8; i++) {
				content[i] = data[offset_index + i];
			}
		} else { //write
			if(cc.write_through) {
				//同时写入cache和下级存储，不标记dirty
				for(int i = 0; i < bytes / 8; i++) {
					data[offset_index + i] = content[i];
				}
				this->lower_->HandleRequest(addr, bytes, 1, content);
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
			this->HandleRequest(addr, bytes, 0, content); //递归调用自身进行处理
		} else { //write
			if(cc.write_allocate) {
				//把下级存储中的块调入cache，然后修改
				time += get_missed_block(tag, index, blockID);
				this->HandleRequest(addr, bytes, 1, content);
			} else {
				//直接把数据写入下级存储，不调入cache
				this->lower_->HandleRequest(addr, bytes, 1, content);
				//write buffer可以认为不占用时间？
			}
		}
	}
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
//     lower_->HandleRequest(addr, bytes, read, content,
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

