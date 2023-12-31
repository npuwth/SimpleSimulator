#pragma once

#include <stdint.h>
#include <math.h>
#include "storage.h"

#define LRU 1
#define LFU 2
#define FIFO 3

typedef struct CacheConfig_ {
    int size;           //总大小 (bytes)
    int associativity;  //相连度 (1 - 32)
    int block_size;     //块大小 (bytes)
    int write_through;  //0|1 for back|through
    int write_allocate; //0|1 for no-alc|alc
    int r_policy;       //replacement policy
} CacheConfig;

struct Block {
    bool valid;
    bool dirty;
    uint64_t tag;
    uint32_t cnt;
    vector<uint64_t> data; //必须是8字节的整数倍大小
    Block() {}
    ~Block() {}
};

class Cache: public Storage {
public:
    Cache(CacheConfig cc) {
        this->cc = cc;
		int block_num = cc.size / cc.block_size;
        this->set_num   = block_num / cc.associativity;
        //set_num = size / block_size / associativity
        this->blocks = vector<Block>(block_num);
        for(int i = 0; i < block_num; i++) {
            this->blocks[i].valid = 0;
            this->blocks[i].dirty = 0;
            this->blocks[i].tag   = 0;
            this->blocks[i].data  = vector<uint64_t>(cc.block_size / 8);
            // printf("data size: %ld\n", this->blocks[i].data.size());
        }
        this->offset_bit = (int)log2(cc.block_size);
        this->index_bit  = (int)log2(set_num);
        this->tag_bit    = ADDR_BIT - index_bit - offset_bit;
        printf("Cache Structure:\n");
        // printf("Block num: %d\n", block_num);
        printf("%d-bit tag, %d-bit index, %d-bit offset, %d set_num\n", tag_bit, index_bit, offset_bit, set_num);
	}
    ~Cache() {}
	//Set lower storage
    void set_lower(Storage *ll) { this->lower_ = ll; }
    //Request handler
    int handle_request(uint64_t addr, int bytes, int read, vector<u_int64_t> &content);
    bool hit_or_miss(uint32_t index, uint64_t tag, int &blockID);
    int get_replacementID(uint32_t index);
    void update_replacement(uint32_t index, int blockID);
    int get_missed_block(uint64_t tag, uint32_t index, int &blockID);
    int evict_block(int index, int blockID);
    void write_byte(uint64_t addr, int bytes, int blockID, uint64_t data);
    //get tag, index, offset from addr
    uint64_t parse_addr(uint64_t addr, int s, int e) {
        //63 ----------- 0
        //tag index offset
        //s - e
// #ifndef TEST_MEMORY
//         if(addr >> 32 != 0) {
//             printf("Error: Addr use high 32 bits.\n");
//         }
// #endif
        uint64_t mask = 0;
        uint64_t k = (1UL << (63 - e));
        for(int i = s; i <= e; i++) {
            mask += k;
            k = (k << 1);
        }
        return ((addr & mask) >> (63 - e));
    }

    uint64_t setbit(uint64_t target, uint64_t reg, int s, int e, int bytes) {
        uint64_t mask = 0;
        uint64_t data = 0;
        if(bytes == 1) {
            data = parse_addr(reg, 56, 63);
        } else if(bytes == 2) {
            data = parse_addr(reg, 48, 63);
        } else if(bytes == 4) {
            data = parse_addr(reg, 32, 63);
        } else {
            data = reg;
        }
        data = (data << (63 - e));
        uint64_t k = (1UL << (63 - e));
        for(int i = s; i <= e; i++) {
            mask += k;
            k = (k << 1);
        }
        mask = mask ^ 0;
        target = target & mask;
        return (target | data);
    }

private:
    // // Bypassing
    // int BypassDecision();
    // // Partitioning
    // void PartitionAlgorithm();
    // // Replacement
    // int ReplaceDecision();
    // void ReplaceAlgorithm();
    // // Prefetching
    // int PrefetchDecision();
    // void PrefetchAlgorithm();
    Storage *lower_;
    vector<Block> blocks;
    //blocks[0 - set_num-1]: associativity 1
    //blocks[set_num - 2*set_num-1]: associativity 2, etc
    int offset_bit;
    int index_bit;
    int tag_bit;
    int set_num;
    CacheConfig cc;
    DISALLOW_COPY_AND_ASSIGN(Cache);
};

