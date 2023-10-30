#pragma once

struct pipeline_Reg reg_IFID, reg_IDEX, reg_EXMEM, reg_MEMWB;
struct pipeline_Reg reg_IFID_new, reg_IDEX_new, reg_EXMEM_new, reg_MEMWB_new;

FILE* ilog = NULL;
FILE* mlog = NULL;

unsigned long PC = 0;
unsigned long NPC = 0;
long inst_num = 0; //运行指令数
long inst_cycle = 0; //运行周期数
long stall_num = 0; //阻塞周期数
bool IF_stall; //阻塞，使PC保持不变
bool ID_stall; //阻塞，使reg_IFID保持不变
bool ID_flush; //清空reg_IFID
bool EX_flush; //清空reg_IDEX

bool stall_EX_flush;
bool mispre_EX_flush;

void print_regs();
void cmd_shell();
void load_memory();
void simulate_inst();
void update_regs();
void pipeline_IF();
void pipeline_ID();
void pipeline_EX();
void pipeline_MEM();
void pipeline_WB();

unsigned long ext_signed(unsigned int src, int x);
unsigned int getbit(unsigned int inst, int s, int e);
unsigned int setbit(unsigned int target, unsigned int reg, int s, int e);

// signed extend src form x-bit to 64-bit
unsigned long ext_signed(unsigned int src, int x)
{
    unsigned long mask = 0;
    if(getbit(src, 32 - x, 32 - x) == 0) {
        ;
    } else {
        // unsigned long k = 1 << x;
        unsigned long k = 1UL;
        k = k << x;
        // if(src == 0xffffffff) printf("k: %016lx\n", k);
        for(int i = x; i < 64; i++) {
            mask += k;
            k = k << 1;
            // if(src == 0xffffffff) printf("%d, %016lx\n",x, k);
        }
    }
    // if(src == 0xffffffff) printf("src:%08x, result:%016lx\n", src, (mask | (unsigned long)src));
    return (mask | (unsigned long)src);
}

// get specific bit (s - e)
unsigned int getbit(unsigned int inst, int s, int e)
{
	unsigned int mask = 0;
    unsigned int k = (1U << (31 - e));
    for(int i = s; i <= e; i++) {
        mask += k;
        k = (k << 1);
    }
    // printf("mask: %d\n", mask);
    return ((inst & mask) >> (31 - e));
}

unsigned int setbit(unsigned int target, unsigned int reg, int s, int e) {
    unsigned int mask = 0;
    unsigned int data = 0;
    if(e - s == 7) {
        data = getbit(reg, 24, 31);
    } else {
        data = getbit(reg, 16, 31);
    }
    data = (data << (31 - e));
    unsigned int k = (1U << (31 - e));
    for(int i = s; i <= e; i++) {
        mask += k;
        k = (k << 1);
    }
    mask = mask ^ 0;
    target = target & mask;
    return (target | data);
}
