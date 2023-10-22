#include "Simulation.h"
using namespace std;

extern void read_elf();
extern unsigned long cadr;
extern unsigned long csize;
extern unsigned long vadr;
extern unsigned long gp;
extern unsigned int madr;
extern unsigned int endPC;
extern unsigned long entry;
extern FILE *file;
FILE *mlog;


long inst_num = 0; //运行指令数
int exit_flag = 0; //退出指示

void print_regs() {
    printf("Registers:\n");
    for(int i = 0; i < 32; i++) {
        printf("%02d: %016lx\n", i, reg[i]);
    }
}

int main(int argc, char* argv[])
{
	// printf("%ld\n", sizeof(unsigned int)); // 4
	// printf("%ld\n", sizeof(unsigned long)); // 8
	// printf("%ld\n", sizeof(unsigned long long)); // 8
    if(argc == 1) {
        printf("Error: No arguments were passed.\n");
        return -1;
    }
    file = fopen(argv[1], "rb");
    if(file == NULL) {
        printf("Error: Cannot open source file.\n");
		return -1;
    } else {
        printf("Successfully reading from %s.\n", argv[1]);
    }
    mlog = fopen("mlog.txt", "w");

	read_elf(); //解析elf文件
	load_memory(); //加载内存
	PC = entry >> 2;   //PC以4个字节对齐, 指令长度4字节
	reg[3] = gp;       //设置全局数据段地址寄存器
	reg[2] = MAX / 2;  //栈基址sp寄存器
	int end = (int)endPC / 4 - 1;

	while(PC != end)
	{
	    translate_inst();
        execute_inst();
        if(exit_flag == 1) {
            printf("OP: %d, fuc3: %d\n", OP, fuc3);
            break;
        }
        reg[0] = 0;//一直为零
	}
    printf("Instruct Num: %ld\n", inst_num);
    print_regs();
    fclose(mlog);
	return 0;
}

void translate_inst()
{
	inst = memory[PC]; //直接认为memory的CPU一样都是小端
	//debug
    printf("PC: %016lx  Inst: %08x\n", PC << 2, inst);
    OP = getbit(inst, 25, 31);
	rd = getbit(inst, 20, 24);
    fuc3 = getbit(inst, 17, 19);

    // printf("OP: %d  rd: %d\n", OP, rd);
	inst_num++;
    // exit_flag = 1;
}

//加载代码段
//初始化PC
void load_memory()
{
	// vadr = 0x10000000;
    fseek(file, cadr, SEEK_SET);
	fread(&memory[vadr >> 2], 1, csize, file); //memory以4 bytes对齐
	fclose(file);
    //debug
    // printf("Text in Memory: %016lx\n", vadr);
    // for(unsigned int i = 0; i < 8; i++) {
    //     printf("%08x\n", memory[(vadr >> 2) + i]);
    // }
}

void execute_inst()
{
	switch(OP) {
        case OP_R: {
            rs1 = getbit(inst, 12, 16);
            rs2 = getbit(inst, 7, 11);
            fuc7 = getbit(inst, 0, 6);
            PC = PC + 1;
            switch(fuc7 * 16 + fuc3) { //这里的写法很细节！！！
                case 0x000: { //add
                    reg[rd] = (unsigned long)((signed long)reg[rs1] + (signed long)reg[rs2]); //要先转成有符号的
                    break;
                }
                case 0x010: { //mul
                    reg[rd] = (unsigned long)((signed long)reg[rs1] * (signed long)reg[rs2]); //直接不考虑溢出就行
                    break;
                }
                case 0x200: { //sub
                    reg[rd] = (unsigned long)((signed long)reg[rs1] - (signed long)reg[rs2]);
                    break;
                }
                case 0x001: { //sll
                    reg[rd] = reg[rs1] << (signed long)reg[rs2];
                    break;
                }
                case 0x011: { //mulh
                    reg[rd] = (unsigned long)(((signed long)reg[rs1] * (signed __int128)reg[rs2]) >> 64);
                    break;
                }
                case 0x012: { //mulhsu
                    reg[rd] = (unsigned long)(((signed long)reg[rs1] * (unsigned __int128)reg[rs2]) >> 64);
                    break;
                }
                case 0x013: { //mulhu
                    reg[rd] = (unsigned long)((reg[rs1] * (unsigned __int128)reg[rs2]) >> 64);
                    break;
                } 
                case 0x002: { //slt
                    reg[rd] = ((signed long)reg[rs1] < (signed long)reg[rs2]) ? 1 : 0;
                    break;
                }
                case 0x003: { //sltu
                    reg[rd] = (reg[rs1] < reg[rs2]) ? 1 : 0;
                    break;
                }
                case 0x004: { //xor
                    reg[rd] = reg[rs1] ^ reg[rs2];
                    break;
                }
                case 0x014: { //div
                    reg[rd] = (unsigned long)((signed long)reg[rs1] / (signed long)reg[rs2]);
                    break;
                }
                case 0x015: { //divu
                    reg[rd] = reg[rs1] / reg[rs2];
                    break;
                }
                case 0x005: { //srl
                    reg[rd] = reg[rs1] >> (signed long)reg[rs2];
                    break;
                }
                case 0x205: { //sra
                    reg[rd] = (unsigned long)((signed long)reg[rs1] >> (signed long)reg[rs2]);
                    break;
                }
                case 0x006: { //or
                    reg[rd] = reg[rs1] | reg[rs2];
                    break;
                }
                case 0x016: { //rem
                    reg[rd] = (unsigned long)((signed long)reg[rs1] % (signed long)reg[rs2]);
                    break;
                }
                case 0x017: { //remu
                    reg[rd] = reg[rs1] % reg[rs2];
                    break;
                }
                case 0x007: { //and
                    reg[rd] = reg[rs1] & reg[rs2];
                    break;
                }
                default: {
                    printf("Error: illegal instruction %08x.\n", inst);
                    exit_flag = 1;    
                }
            }
            break;
        }
        case OP_RW: {
            rs1 = getbit(inst, 12, 16);
            rs2 = getbit(inst, 7, 11);
            fuc7 = getbit(inst, 0, 6);
            PC = PC + 1;
            switch(fuc7 * 16 + fuc3) {
                case 0x000: { //addw
                    reg[rd] = ext_signed((unsigned int)((signed long)reg[rs1] + (signed long)reg[rs2]), 32);
                    break;
                }
                case 0x200: { //subw
                    reg[rd] = ext_signed((unsigned int)((signed long)reg[rs1] - (signed long)reg[rs2]), 32);
                    break;
                }
                case 0x010: { //mulw
                    reg[rd] = ext_signed((unsigned int)((signed long)reg[rs1] * (signed long)reg[rs2]), 32);
                    break;
                }
                case 0x014: { //divw
                    reg[rd] = ext_signed((unsigned int)((signed long)reg[rs1] / (signed long)reg[rs2]), 32);
                    break;
                }
                case 0x016: { //remw
                    reg[rd] = ext_signed((unsigned int)((signed long)reg[rs1] % (signed long)reg[rs2]), 32);
                    break;
                }
                case 0x017: { //remuw
                    reg[rd] = ext_signed((unsigned int)(reg[rs1] % reg[rs2]), 32);
                    break;
                }
                default: {
                    printf("Error: illegal instruction %08x.\n", inst);
                    exit_flag = 1;    
                }
            }
            break;
        }
        case OP_I: {
            rs1 = getbit(inst, 12, 16);
            imm12 = getbit(inst, 0, 11);
            imm5  = getbit(inst, 6, 11); //rv64下增加为6位
            fuc7 = getbit(inst, 0, 5);   //fuc7就缩减为6位
            PC = PC + 1;
            switch(fuc3) {
                case 0x0: { //addi
                    reg[rd] = (unsigned long)((signed long)reg[rs1] + (signed long)ext_signed(imm12, 12));
                    break;
                }
                case 0x1: {
                    if(fuc7 == 0x00) { //slli
                        reg[rd] = reg[rs1] << (signed long)ext_signed(imm5, 6);
                    } else {
                        printf("Error: illegal instruction %08x.\n", inst);
                        exit_flag = 1;
                    }
                    break;
                }
                case 0x2: { //slti
                    reg[rd] = ((signed long)reg[rs1] < (signed long)ext_signed(imm12, 12)) ? 1 : 0;
                    break;
                }
                case 0x3: { //sltiu
                    reg[rd] = (reg[rs1] < ext_signed(imm12, 12)) ? 1 : 0;
                    break;
                }
                case 0x4: { //xori
                    reg[rd] = reg[rs1] ^ ext_signed(imm12, 12);
                    break;
                }
                case 0x5: {
                    if(fuc7 == 0x00) { //srli
                        reg[rd] = reg[rs1] >> (signed long)ext_signed(imm5, 6);
                    } else if(fuc7 == 0x10) { //srai
                        reg[rd] = (unsigned long)((signed long)reg[rs1] >> (signed long)ext_signed(imm5, 6));
                    } else {
                        printf("Error: illegal instruction %08x.\n", inst);
                        exit_flag = 1;
                    }
                    break;
                }
                case 0x6: { //ori
                    reg[rd] = reg[rs1] | ext_signed(imm12, 12);
                    break;
                }
                case 0x7: { //andi
                    reg[rd] = reg[rs1] & ext_signed(imm12, 12);
                    break;
                }
                default: {
                    printf("Error: illegal instruction %08x.\n", inst);
                    exit_flag = 1;
                }
            }
            break;
        }
        case OP_IW: {
            rs1 = getbit(inst, 12, 16);
            imm12 = getbit(inst, 0, 11);
            PC = PC + 1;
            if(fuc3 == 0x0) { //addiw
                reg[rd] = ext_signed((unsigned int)((signed long)reg[rs1] + (signed long)ext_signed(imm12, 12)), 32);
            } else {
                printf("Error: illegal instruction %08x.\n", inst);
                exit_flag = 1;        
            }
            break;
        }
        case OP_LW: {
            rs1 = getbit(inst, 12, 16);
            imm12 = getbit(inst, 0, 11);
            unsigned long addr = (unsigned long)((signed long)reg[rs1] + (signed long)ext_signed(imm12, 12));
            unsigned int data1 = memory[addr >> 2];
            unsigned long data = 0;
            switch(fuc3) { //目前没有考虑非对齐访存异常情况，比如要取的数跨越了两个字
                case 0x0: { //lb
                    if(addr % 4 == 0) {
                        data = ext_signed(getbit(data1, 24, 31), 8);
                    } else if(addr % 4 == 1) {
                        data = ext_signed(getbit(data1, 16, 23), 8);
                    } else if(addr % 4 == 2) {
                        data = ext_signed(getbit(data1, 8, 15), 8);
                    } else {
                        data = ext_signed(getbit(data1, 0, 7), 8);
                    }
                    reg[rd] = data;
                    fprintf(mlog, "PC: %016lx ", PC << 2);
                    fprintf(mlog, "lb from %016lx to reg%02d: %016lx\n", addr, rd, data);
                    break;
                }
                case 0x1: { //lh
                    if(addr % 2 != 0) {
                        printf("Error: Wrong memory access.\n");
                        exit_flag = 1;
                    }
                    if(addr % 4 == 0) {
                        data = ext_signed(getbit(data1, 16, 31), 16);
                    } else {
                        data = ext_signed(getbit(data1, 0, 15), 16);
                    }
                    reg[rd] = data;
                    fprintf(mlog, "PC: %016lx ", PC << 2);
                    fprintf(mlog, "lh from %016lx to reg%02d: %016lx\n", addr, rd, data);
                    break;
                }
                case 0x2: { //lw
                    if(addr % 4 != 0) {
                        printf("Error: Wrong memory access.\n");
                        exit_flag = 1;
                    }
                    data = (unsigned long)data1;
                    reg[rd] = data;
                    fprintf(mlog, "PC: %016lx ", PC << 2);
                    fprintf(mlog, "lw from %016lx to reg%02d: %016lx\n", addr, rd, data);
                    break;
                }
                case 0x3: { //ld
                    if(addr % 8 != 0) {
                        printf("Error: Wrong memory access.\n");
                        exit_flag = 1;
                    }
                    unsigned int data2 = memory[(addr >> 2) + 1];
                    data = ((unsigned long)data2 << 32) + data1; //注意这里的写法，因为是小端，所以data2在左边
                    reg[rd] = data;
                    fprintf(mlog, "PC: %016lx ", PC << 2);
                    fprintf(mlog, "ld from %016lx to reg%02d: %016lx\n", addr, rd, data);
                    break;
                }
                default: {
                    printf("Error: illegal instruction %08x.\n", inst);
                    exit_flag = 1;    
                }
            }
            PC = PC + 1;
            break;
        }
        case OP_SW: {
            rs1 = getbit(inst, 12, 16);
            rs2 = getbit(inst, 7, 11);
            imm7 = getbit(inst, 0, 6);
            imm5 = getbit(inst, 20, 24);
            unsigned int imm = (imm7 << 5) + imm5;
            unsigned long addr = (unsigned long)((signed long)reg[rs1] + (signed long)ext_signed(imm, 12));
            unsigned int data = 0;
            switch(fuc3) {
                case 0x0: { //sb
                    if(addr % 4 == 0) {
                        data = setbit(memory[addr >> 2], reg[rs2], 24, 31);
                    } else if(addr % 4 == 1) {
                        data = setbit(memory[addr >> 2], reg[rs2], 16, 23);
                    } else if(addr % 4 == 2) {
                        data = setbit(memory[addr >> 2], reg[rs2], 8, 15);
                    } else {
                        data = setbit(memory[addr >> 2], reg[rs2], 0, 7);
                    }
                    memory[addr >> 2] = data;
                    fprintf(mlog, "PC: %016lx ", PC << 2);
                    fprintf(mlog, "sb from reg%02d to %016lx: %08x\n", rs2, addr, data);
                    break;
                }
                case 0x1: { //sh
                    if(addr % 2 != 0) {
                        printf("Error: Wrong memory access.\n");
                        exit_flag = 1;
                    }
                    if(addr % 4 == 0) {
                        data = setbit(memory[addr >> 2], reg[rs2], 16, 31);
                    } else {
                        data = setbit(memory[addr >> 2], reg[rs2], 0, 15);
                    }
                    memory[addr >> 2] = data;
                    fprintf(mlog, "PC: %016lx ", PC << 2);
                    fprintf(mlog, "sh from reg%02d to %016lx: %08x\n", rs2, addr, data);
                    break;
                }
                case 0x2: { //sw
                    if(addr % 4 != 0) {
                        printf("Error: Wrong memory access.\n");
                        exit_flag = 1;
                    }
                    data = (unsigned int)reg[rs2];
                    memory[addr >> 2] = data;
                    fprintf(mlog, "PC: %016lx ", PC << 2);
                    fprintf(mlog, "sw from reg%02d to %016lx: %08x\n", rs2, addr, data);
                    break;
                }
                case 0x3: { //sd
                    if(addr % 8 != 0) {
                        printf("Error: Wrong memory access.\n");
                        exit_flag = 1;
                    }
                    data = (unsigned int)(reg[rs2] >> 32);
                    memory[(addr >> 2) + 1] = data;
                    fprintf(mlog, "PC: %016lx ", PC << 2);
                    fprintf(mlog, "sd from reg%02d to %016lx: %08x\n", rs2, addr, data);
                    data = (unsigned int)reg[rs2];
                    memory[addr >> 2] = data;
                    fprintf(mlog, "sd from reg%02d to %016lx: %08x\n", rs2, addr, data);
                    break;
                }
                default: {
                    printf("Error: illegal instruction %08x.\n", inst);
                    exit_flag = 1;  
                }
            }
            PC = PC + 1;
            break;
        }
        case OP_BEQ: {
            rs1 = getbit(inst, 12, 16);
            rs2 = getbit(inst, 7, 11);
            unsigned int imm1 = getbit(inst, 0, 0);
            unsigned int imm6 = getbit(inst, 1, 6);
            unsigned int imm4 = getbit(inst, 20, 23);
            unsigned int imm_1 = getbit(inst, 24, 24);
            unsigned int offset = (imm1 << 11) + (imm_1 << 10) + (imm6 << 4) + imm4;
            // printf("B offset: %d\n", offset);
            switch(fuc3) {
                case 0x0: { //beq
                    if(reg[rs1] == reg[rs2]) {
                        PC = PC + ext_signed(offset >> 1, 11);
                    } else {
                        PC = PC + 1;
                    }
                    break;
                }
                case 0x1: { ///bne
                    if(reg[rs1] != reg[rs2]) {
                        PC = PC + ext_signed(offset >> 1, 11);
                    } else {
                        PC = PC + 1;
                    }
                    break;
                }
                case 0x4: { //blt
                    if((signed long)reg[rs1] < (signed long)reg[rs2]) {
                        PC = PC + ext_signed(offset >> 1, 11);
                    } else {
                        PC = PC + 1;
                    }
                    break;
                }
                case 0x5: { //bge
                    if((signed long)reg[rs1] >= (signed long)reg[rs2]) {
                        PC = PC + ext_signed(offset >> 1, 11);
                    } else {
                        PC = PC + 1;
                    }
                    break;
                }
                case 0x6: { //bltu
                    if(reg[rs1] < reg[rs2]) {
                        PC = PC + ext_signed(offset >> 1, 11);
                    } else {
                        PC = PC + 1;
                    }
                    break;
                }
                case 0x7: { //bgeu
                    if(reg[rs1] >= reg[rs2]) {
                        PC = PC + ext_signed(offset >> 1, 11);
                    } else {
                        PC = PC + 1;
                    }
                    break;
                }
                default: {
                    printf("Error: illegal instruction %08x.\n", inst);
                    exit_flag = 1; 
                }
            }
            break;
        }
        case OP_JAL: {
            unsigned int imm1 = getbit(inst, 0, 0);
            unsigned int imm10 = getbit(inst, 1, 10); //这里被网上指令手册坑了
            unsigned int imm_1 = getbit(inst, 11, 11);
            unsigned int imm8 = getbit(inst, 12, 19);
            unsigned int offset = (imm1 << 19) + (imm8 << 11) + (imm_1 << 10) + imm10;
            // printf("JAL %d %d %d %d\n", imm1, imm10, imm_1, imm8);
            // printf("JAL offset: %d\n", offset);
            reg[rd] = (PC + 1) << 2;
            PC = PC + ext_signed(offset >> 1, 19);
            break;
        }
        case OP_JALR: {
            unsigned int imm12 = getbit(inst, 0, 11);
            rs1 = getbit(inst, 12, 16);
            reg[rd] = (PC + 1) << 2;
            PC = (reg[rs1] + ext_signed(imm12, 12)) >> 2;
            break;
        }
        case OP_AUIPC: {
            imm20 = getbit(inst, 0, 19);
            reg[rd] = (PC << 2) + ext_signed(imm20 << 12, 32);
            PC = PC + 1;
            break;
        }
        case OP_LUI: {
            imm20 = getbit(inst, 0, 19);
            reg[rd] = ext_signed(imm20 << 12, 32);
            PC = PC + 1;
            break;
        }
        case OP_SCALL: {
            fuc7 = getbit(inst, 0, 6);
            if(fuc3 == 0 && fuc7 == 0) { //ecall
                if(reg[10] == 1) {
                    printf("%ld", reg[11]);
                }
            } else {
                printf("Error: illegal instruction %08x.\n", inst);
                exit_flag = 1; 
            }
            break;
        }
        default: {
            printf("Error: illegal instruction %08x.\n", inst);
            exit_flag = 1; 
        }
    }
    // if(OP==OP_SCALL)//系统调用指令
    // {
    //     if(fuc3==F3_SCALL&&fuc7==F7_SCALL)
	//     {
	// 		if(reg[17]==64)////printf
	// 		{
	// 			int place=0,c=0;
	// 			const void * t=&memory[reg[11]>>2];
	// 			reg[10]=write((unsigned int)reg[10],t,(unsigned int)reg[12]);
	// 		}
	// 		else if(reg[17]==63)//scanf
	// 		{

	// 		}
	// 		else if(reg[17]==169)//time
	// 		{

	// 		}
	// 		else if(reg[17]==93)//exit
	// 		{
	// 			exit_flag=1;
	// 		}
	// 		else
	// 		{

	// 		}
    //     }
    //     else
    //     {
			
    //     }
    // }
}











