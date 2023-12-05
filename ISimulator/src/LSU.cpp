#include "Common.h"

extern bool exit_flag;
// extern unsigned int memory[MAX];
extern Cache l1;

unsigned long execute_LSU(int mem_r, int mem_w, int mem_type, unsigned long addr, unsigned long data, FILE* log, unsigned long PC) {
    unsigned long ldata = 0; //load至寄存器的数据
    // unsigned int sdata = 0; //store至内存的数据
    if(mem_r) {
        uint32_t data1;
        vector<uint64_t> content(1);
        uint64_t new_addr = addr >> 1;
        new_addr = new_addr << 3;
        l1.handle_request(new_addr, 8, READ, content);
        if(addr % 2 == 0) {
            data1 = (uint32_t)getbit(content[0], 32, 63);
        } else {
            data1 = (uint32_t)getbit(content[0], 0, 31);
        }
        // unsigned long data1 = memory[addr >> 2];
        switch(mem_type) {
            case MEM_B: {
                if(addr % 4 == 0) {
                    ldata = ext_signed(getbit(data1, 24, 31), 8);
                } else if(addr % 4 == 1) {
                    ldata = ext_signed(getbit(data1, 16, 23), 8);
                } else if(addr % 4 == 2) {
                    ldata = ext_signed(getbit(data1, 8, 15), 8);
                } else {
                    ldata = ext_signed(getbit(data1, 0, 7), 8);
                }
#ifdef mem_trace
                fprintf(log, "PC: %016lx ", PC << 2);
                fprintf(log, "lb from %016lx: %016lx\n", addr, ldata);
#endif
                break;
            }
            case MEM_H: {
                if(addr % 2 != 0) {
                    printf("Error: Wrong memory access.\n");
                    exit_flag = 1;
                }
                if(addr % 4 == 0) {
                    ldata = ext_signed(getbit(data1, 16, 31), 16);
                } else {
                    ldata = ext_signed(getbit(data1, 0, 15), 16);
                }
#ifdef mem_trace
                fprintf(log, "PC: %016lx ", PC << 2);
                fprintf(log, "lh from %016lx: %016lx\n", addr, ldata);
#endif
                break;
            }
            case MEM_W: {
                if(addr % 4 != 0) {
                    printf("Error: Wrong memory access.\n");
                    exit_flag = 1;
                }
                ldata = ext_signed(data1, 32);
#ifdef mem_trace
                fprintf(log, "PC: %016lx ", PC << 2);
                fprintf(log, "lw from %016lx: %016lx\n", addr, ldata);
#endif
                break;
            }
            case MEM_D: {
                if(addr % 8 != 0) {
                    printf("Error: Wrong memory access.\n");
                    exit_flag = 1;
                }
                // unsigned int data2 = memory[(addr >> 2) + 1];
                // ldata = ((unsigned long)data2 << 32) + data1; //注意这里的写法，因为是小端，所以data2在左边
                ldata = content[0];
#ifdef mem_trace
                fprintf(log, "PC: %016lx ", PC << 2);
                fprintf(log, "ld from %016lx: %016lx\n", addr, ldata);
#endif
                break;
            }
            case MEM_BU: {
                if(addr % 4 == 0) {
                    ldata = (unsigned long)getbit(data1, 24, 31);
                } else if(addr % 4 == 1) {
                    ldata = (unsigned long)getbit(data1, 16, 23);
                } else if(addr % 4 == 2) {
                    ldata = (unsigned long)getbit(data1, 8, 15);
                } else {
                    ldata = (unsigned long)getbit(data1, 0, 7);
                }
#ifdef mem_trace
                fprintf(log, "PC: %016lx ", PC << 2);
                fprintf(log, "lbu from %016lx: %016lx\n", addr, ldata);
#endif
                break;
            }
            case MEM_HU: {
                if(addr % 2 != 0) {
                    printf("Error: Wrong memory access.\n");
                    exit_flag = 1;
                }
                if(addr % 4 == 0) {
                    ldata = (unsigned long)getbit(data1, 16, 31);
                } else {
                    ldata = (unsigned long)getbit(data1, 0, 15);
                }
#ifdef mem_trace
                fprintf(log, "PC: %016lx ", PC << 2);
                fprintf(log, "lhu from %016lx: %016lx\n", addr, ldata);
#endif
                break;
            }
            case MEM_WU: {
                if(addr % 4 != 0) {
                    printf("Error: Wrong memory access.\n");
                    exit_flag = 1;
                }
                ldata = (unsigned long)data1;
#ifdef mem_trace
                fprintf(log, "PC: %016lx ", PC << 2);
                fprintf(log, "lwu from %016lx: %016lx\n", addr, ldata);
#endif
                break;
            }
            default: {
                ;
            }
        }
    } else if(mem_w) {
        vector<uint64_t> content;
        content.push_back(data);
        switch(mem_type) {
            case MEM_B: {
                l1.handle_request(addr, 1, WRITE, content);
                // if(addr % 4 == 0) {
                //     sdata = setbit(memory[addr >> 2], data, 24, 31);
                // } else if(addr % 4 == 1) {
                //     sdata = setbit(memory[addr >> 2], data, 16, 23);
                // } else if(addr % 4 == 2) {
                //     sdata = setbit(memory[addr >> 2], data, 8, 15);
                // } else {
                //     sdata = setbit(memory[addr >> 2], data, 0, 7);
                // }
#ifdef mem_trace
                fprintf(log, "PC: %016lx ", PC << 2);
                fprintf(log, "sb to %016lx: %016lx\n", addr, data);
#endif
                break;
            }
            case MEM_H: {
                if(addr % 2 != 0) {
                    printf("Error: Wrong memory access.\n");
                    exit_flag = 1;
                }
                l1.handle_request(addr, 2, WRITE, content);
                // if(addr % 4 == 0) {
                //     sdata = setbit(memory[addr >> 2], data, 16, 31);
                // } else {
                //     sdata = setbit(memory[addr >> 2], data, 0, 15);
                // }
#ifdef mem_trace
                fprintf(log, "PC: %016lx ", PC << 2);
                fprintf(log, "sh to %016lx: %016lx\n", addr, data);
#endif
                break;
            }
            case MEM_W: {
                if(addr % 4 != 0) {
                    printf("Error: Wrong memory access.\n");
                    exit_flag = 1;
                }
                l1.handle_request(addr, 4, WRITE, content);
                // sdata = (unsigned int)data;
#ifdef mem_trace
                fprintf(log, "PC: %016lx ", PC << 2);
                fprintf(log, "sw to %016lx: %016lx\n", addr, data);
#endif
                break;
            }
            case MEM_D: {
                if(addr % 8 != 0) {
                    printf("Error: Wrong memory access.\n");
                    exit_flag = 1;
                }
                l1.handle_request(addr, 8, WRITE, content);
                // sdata = (unsigned int)(data >> 32);
                // memory[(addr >> 2) + 1] = sdata;
// #ifdef mem_trace
//                 fprintf(log, "PC: %016lx ", PC << 2);
//                 fprintf(log, "sd to %016lx: %08x\n", addr + 4, sdata);
// #endif
                // sdata = (unsigned int)data;
#ifdef mem_trace
                fprintf(log, "PC: %016lx ", PC << 2);
                fprintf(log, "sd to %016lx: %016lx\n", addr, data);
#endif
                break;
            }
            default: {
                ;
            }
        }
        // memory[addr >> 2] = sdata;
    }

    return ldata;
}
