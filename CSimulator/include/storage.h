#pragma once

#include <stdint.h>
#include <stdio.h>
#include <vector>

using namespace std;

#define DISALLOW_COPY_AND_ASSIGN(TypeName) \
    TypeName(const TypeName&); \
    void operator=(const TypeName&)
#define MAX 536870912
#define ADDR_BIT 64
#define READ 1
#define WRITE 0
#define TEST_MEMORY

typedef struct StorageStats_ {
    int access_counter; //访问次数
    int miss_num;       //miss次数
    // int access_time;    //访问时间In nanoseconds
    int replace_num;    //逐出次数
    // int fetch_num;      //Fetch lower layer
    // int prefetch_num;   //Prefetch
} StorageStats;

typedef struct StorageLatency_ {
    int hit_latency;  //In nanoseconds
    int bus_latency;  //Added to each request
} StorageLatency;

class Storage { //基类
public:
    Storage() {}
    ~Storage() {}
    //Set & Get
    void set_stats(StorageStats ss) { stats_ = ss; }
    void get_stats(StorageStats &ss) { ss = stats_; }
    void set_latency(StorageLatency sl) { latency_ = sl; }
    void get_latency(StorageLatency &sl) { sl = latency_; }
    //Main access process
    //[in]  addr: access address
    //[in]  bytes: target number of bytes, 8的倍数
    //[in]  read: 0|1 for write|read
    //[i|o] content: in|out data
    //[out] hit: 0|1 for miss|hit
    //[out] time: total access time
    virtual int handle_request(uint64_t addr, int bytes, int read, vector<uint64_t> &content) = 0;

protected:
    StorageStats stats_;
    StorageLatency latency_;
};

