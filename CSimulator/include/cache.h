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

typedef struct Block_ {
    bool valid;
    bool dirty;
    uint64_t tag;
    uint32_t cnt;
    vector<uint64_t> data; //必须是8字节的整数倍
} Block;

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
        }
        this->offset_bit = (int)log2(cc.block_size);
        this->index_bit  = (int)log2(set_num);
        this->tag_bit    = ADDR_BIT - index_bit - offset_bit;
        printf("Cache Structure:\n");
        printf("%d-bit tag, %d-bit index, %d-bit offset, %d set_num\n", tag_bit, index_bit, offset_bit, set_num);
	}
	//Set lower storage
    void SetLower(Storage *ll) { this->lower_ = ll; }
    //Request handler
    int HandleRequest(uint64_t addr, int bytes, int read, vector<u_int64_t> &content);
    bool hit_or_miss(uint32_t index, uint64_t tag, int &blockID);
    int get_replacementID(uint32_t index);
    void update_replacement(uint32_t index, int blockID);
    int get_missed_block(uint64_t tag, uint32_t index, int &blockID);
    int evict_block(int blockID);
    //get tag, index, offset from addr
    uint64_t parse_addr(uint64_t addr, int s, int e) {
#ifndef TEST_MEMORY
        if(addr >> 32 != 0) {
            printf("Error: Addr use high 32 bits.\n");
        }
#endif
        uint64_t mask = 0;
        uint64_t k = (1UL << (63 - e));
        for(int i = s; i <= e; i++) {
            mask += k;
            k = (k << 1);
        }
        return ((addr & mask) >> (63 - e));
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

