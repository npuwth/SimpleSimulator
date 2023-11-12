#include <stdio.h>
#include "cache.h"
#include "memory.h"

using namespace std;

void run_trace() {
    //在处理trace的时候，不用考虑非对齐访存的问题
    //直接全按照LB来处理就行了

}

int main() {
    //32-bit addr, 4GB memory, 8byte * 536870912
    Memory m;
    Cache l1;
    l1.SetLower(&m);
  
    StorageStats s;
    s.access_time = 0;
    m.SetStats(s);
    l1.SetStats(s);
  
    StorageLatency ml;
    ml.bus_latency = 6;
    ml.hit_latency = 100;
    m.SetLatency(ml);
  
    StorageLatency ll;
    ll.bus_latency = 3;
    ll.hit_latency = 10;
    l1.SetLatency(ll);
  
    int hit, time;
    char content[64];
    l1.HandleRequest(0, 0, 1, content, hit, time);
    printf("Request access time: %dns\n", time); //109
    l1.HandleRequest(1024, 0, 1, content, hit, time);
    printf("Request access time: %dns\n", time); //109

    l1.GetStats(s);
    printf("Total L1 access time: %dns\n", s.access_time); //6
    m.GetStats(s);
    printf("Total Memory access time: %dns\n", s.access_time); //212
    return 0;
}

