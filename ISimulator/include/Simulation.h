#include<iostream>
#include<stdio.h>
#include<math.h>
#include<time.h>
#include<stdlib.h>
#include<unistd.h>

// decode here
#define OP_JAL 111   // 0x6f
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

#define MAX 100000000

typedef unsigned long REG;

// Memory, 400_000_000 bytes
unsigned int memory[MAX] = {0};

// Registers, 32*64-bit
REG reg[32] = {0};

// Program Counter
int PC = 0;

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
int ext_signed(unsigned int src, int bit);

int ext_signed(unsigned int src, int bit)
{
    return 0;
}

// get specific bit (s - e)
unsigned int getbit(int s, int e);

unsigned int getbit(int s, int e)
{
	unsigned int mask = 0;
    unsigned int k = 1 << s;
    for(int i = s; i <= e; i++) {
        mask += k;
        k << 1;
    }
    return (inst & mask) >> s;
    //大端小端问题
}
