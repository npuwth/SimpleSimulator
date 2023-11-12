#pragma once

#include <stdint.h>
#include "storage.h"

class Memory: public Storage {
public:
    Memory() {}
    ~Memory() {}
    //Main access process
    int HandleRequest(uint64_t addr, int bytes, int read, vector<uint64_t> &content) {
  		time += this->latency_.hit_latency + this->latency_.bus_latency;
  		stats_.access_time += time;
#ifndef TEST_MEMORY
        if(read) { //read
            for(int i = 0; i < bytes / 8; i++) {
                content[i] = memory[addr / 8 + i]; //addr is byte address, so / 8
            }
        } else { //write
            for(int i = 0; i < bytes / 8; i++) {
                memory[addr / 8 + i] = content[i];
            }
        }
#endif
	}

private:
#ifndef TEST_MEMORY
    uint64_t memory[MAX / 8]; //4GB
#endif
    DISALLOW_COPY_AND_ASSIGN(Memory);
};

