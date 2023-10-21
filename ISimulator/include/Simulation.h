#include<iostream>
#include<stdio.h>
#include<math.h>
#include<time.h>
#include<stdlib.h>
#include<unistd.h>

// decode here
#define OP_JAL 111   // 0x6f
#define OP_JALR 103  // 0x67
#define OP_R 51      // 0x33

#define F3_ADD 0
#define F3_MUL 0

#define F7_MSE 1
#define F7_ADD 0

#define OP_I 19      // 0x13
#define F3_ADDI 0

#define OP_SW 35     // 0x23
#define F3_SB 0

#define OP_LW 3      // 0x03
#define F3_LB 0

#define OP_BEQ 99    // 0x63
#define F3_BEQ 0

#define OP_IW 27     // 0x1B
#define F3_ADDIW 0

#define OP_RW 59     // 0x3B
#define F3_ADDW 0
#define F7_ADDW 0

#define OP_SCALL 115 // 0x73
#define F3_SCALL 0
#define F7_SCALL 0

#define OP_AUIPC 23  // 0x17
#define OP_LUI   55  // 0x37

#define MAX 100000000

typedef unsigned long REG;

// Memory, 400_000_000 bytes, 381MB
unsigned int memory[MAX] = {0}; //address:     0000_0000 ~ 5F5E_1000
                                //array index: 0000_0000 ~ 17D7_8400

// Registers, 32*64-bit
REG reg[32] = {0};

// Program Counter
unsigned long PC = 0;

// the current instruction
unsigned int inst = 0;

// decode current instruction
unsigned int OP = 0;
unsigned int fuc3 = 0,fuc7 = 0;
int shamt = 0;
int rs1 = 0,rs2 = 0,rd = 0;
unsigned int imm12 = 0;
unsigned int imm20 = 0;
unsigned int imm7 = 0;
unsigned int imm5 = 0;

void load_memory();
void translate_inst();
void execute_inst();

// signed extend src
unsigned long ext_signed(unsigned int src)
{
    long mid = (long)((signed int)src);
    return (unsigned long)mid;
}

// get specific bit (s - e)
unsigned int getbit(unsigned int inst, int s, int e)
{
	unsigned int mask = 0;
    unsigned int k = 1 << (31 - e);
    for(int i = s; i < e; i++) {
        mask += k;
        k = k << 1;
    }
    // printf("mask: %d\n", mask);
    return (inst & mask) >> (31 - e);
}
