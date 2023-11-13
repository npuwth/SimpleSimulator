#include <stdio.h>
#include "cache.h"
#include "memory.h"

using namespace std;

Memory m;
CacheConfig cc = {
    32*1024,
    4,
    64,
    1, 
    1,
    LRU
};
Cache l1(cc);

void run_trace() {
    //在处理trace的时候，不用考虑非对齐访存的问题
    //直接全按照LB来处理就行了，content认为是空就行
    char c, t;
    uint64_t addr;
    vector<uint64_t> content(1);
    while(scanf("%c 0x%lx", &c, &addr) != EOF) {
        printf("%c, %lx\n", c, addr);
        if(c == 'r') {
            l1.handle_request(addr, 8, READ, content);
        } else if(c == 'w') {
            l1.handle_request(addr, 8, WRITE, content);
        } else {
            printf("Cannot handle type: %c\n", c);
            break;
        }
        scanf("%c", &t); //\n
    }
    StorageStats s;
    l1.get_stats(s);
    printf("Total access: %d\n", s.access_counter);
    printf("Total miss:   %d\n", s.miss_num);
    printf("Miss rate: %f\n", s.miss_num*1.0 / s.access_counter);
}

void init_memory() {
    l1.set_lower(&m);
  
    StorageLatency ml;
    ml.bus_latency = 6;
    ml.hit_latency = 100;
    m.set_latency(ml);
  
    StorageLatency ll;
    ll.bus_latency = 3;
    ll.hit_latency = 10;
    l1.set_latency(ll);
}

int main(int argc, char* argv[]) {
    //32-bit addr, 4GB memory, 8byte * 536870912
    if(argc == 1) {
        printf("Error: No trace file passed.\n");
        return -1;
    }
    freopen(argv[1], "r", stdin);
    // if(file == NULL) {
    //     printf("Error: Cannot open source file.\n");
	// 	return -1;
    // } else {
    //     printf("Successfully reading from %s.\n", argv[1]);
    // }
    init_memory();
    int time = 0;
    // vector<uint64_t> content(1);
    // time = l1.handle_request(0, 0, 1, content);
    // printf("Request access time: %dns\n", time); //119
    // time = l1.handle_request(1024, 0, 1, content);
    // printf("Request access time: %dns\n", time); //13
    // l1.get_stats(s);
    // printf("Total L1 access time: %dns\n", s.access_time); //0
    // m.get_stats(s);
    // printf("Total Memory access time: %dns\n", s.access_time); //106

    run_trace();

    return 0;
}

