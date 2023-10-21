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


long inst_num = 0; //运行指令数
int exit_flag = 0; //系统调用退出指示

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

	read_elf(); //解析elf文件
	load_memory(); //加载内存
	PC = entry >> 2;   //PC以4个字节对齐（指令长度4字节）
	reg[3] = gp;       //设置全局数据段地址寄存器
	reg[2] = MAX / 2;  //栈基址sp寄存器
	int end = (int)endPC / 4 - 1;

	while(PC != end)
	{
	    translate_inst();
        execute_inst();
        if(exit_flag == 1)
            break;
        reg[0] = 0;//一直为零
	}
    printf("Instruct Num: %ld\n", inst_num);
	return 0;
}

void translate_inst()
{
	inst = memory[PC];
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
                case 0x000: {
                    reg[rd] = reg[rs1] + reg[rs2];
                    break;
                }
                case 0x010: {
                    reg[rd] = reg[rs1] * reg[rs2]; //因为是unsigned long，直接不考虑溢出就行
                    break;
                }
                case 0x200: {
                    reg[rd] = reg[rs1] - reg[rs2];
                    break;
                }
                case 0x001: {
                    reg[rd] = reg[rs1] << reg[rs2];
                    break;
                }
                case 0x011: {
                    reg[rd] = (reg[rs1] * (unsigned __int128)reg[rs2]) >> 64;
                    break;
                }
                case 0x002: {
                    reg[rd] = (reg[rs1] < reg[rs2]) ? 1 : 0;
                    break;
                }
                case 0x004: {
                    reg[rd] = reg[rs1] ^ reg[rs2];
                    break;
                }
                case 0x014: {
                    reg[rd] = reg[rs1] / reg[rs2];
                    break;
                }
                case 0x005: { //SRL
                    reg[rd] = reg[rs1] >> reg[rs2];
                    break;
                }
                case 0x205: { //SRA
                    reg[rd] = (unsigned long)((signed long)reg[rs1] >> reg[rs2]);
                    break;
                }
                case 0x006: {
                    reg[rd] = reg[rs1] | reg[rs2];
                    break;
                }
                case 0x016: {
                    reg[rd] = reg[rs1] % reg[rs2];
                    break;
                }
                case 0x007: {
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
                case 0x000: {
                    reg[rd] = ext_signed((unsigned int)(reg[rs1] + reg[rs2]));
                    break;
                }
                case 0x200: {
                    reg[rd] = ext_signed((unsigned int)(reg[rs1] - reg[rs2]));
                    break;
                }
                case 0x010: {
                    reg[rd] = ext_signed((unsigned int)(reg[rs1] * reg[rs2]));
                    break;
                }
                case 0x014: {
                    reg[rd] = ext_signed((unsigned int)(reg[rs1] / reg[rs2]));
                    break;
                }
                case 0x016: {
                    reg[rd] = ext_signed((unsigned int)(reg[rs1] % reg[rs2]));
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
            fuc7 = getbit(inst, 0, 6);
            PC = PC + 1;
            switch(fuc3) {
                case 0x0: { //addi
                    reg[rd] = reg[rs1] + ext_signed(imm12);
                    break;
                }
                case 0x1: {
                    if(fuc7 == 0x00) { //slli
                        reg[rd] = reg[rs1] << imm5;
                    } else {
                        printf("Error: illegal instruction %08x.\n", inst);
                        exit_flag = 1;
                    }
                    break;
                }
                case 0x2: {
                    reg[rd] = (reg[rs1] < ext_signed(imm12)) ? 1 : 0;
                    break;
                }
                case 0x4: {
                    reg[rd] = reg[rs1] ^ ext_signed(imm12);
                    break;
                }
                case 0x5: {
                    if(fuc7 == 0x00) { //srli
                        reg[rd] = reg[rs1] >> imm5;
                    } else if(fuc7 == 0x10) { //srai
                        reg[rd] = (unsigned long)((signed long)reg[rs1] >> imm5);
                    } else {
                        printf("Error: illegal instruction %08x.\n", inst);
                        exit_flag = 1;
                    }
                    break;
                }
                case 0x6: {
                    reg[rd] = reg[rs1] | ext_signed(imm12);
                    break;
                }
                case 0x7: {
                    reg[rd] = reg[rs1] & ext_signed(imm12);
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
                reg[rd] = ext_signed((unsigned int)(reg[rs1] + ext_signed(imm12)));
            } else {
                printf("Error: illegal instruction %08x.\n", inst);
                exit_flag = 1;        
            }
            break;
        }
        case OP_LW: {
            rs1 = getbit(inst, 12, 16);
            imm12 = getbit(inst, 0, 11);
            PC = PC + 1;
            unsigned long addr = reg[rs1] + ext_signed(imm12);
            unsigned int data1 = memory[addr >> 2];
            switch(fuc3) { //目前没有考虑非对齐访存异常
                case 0x0: {
                    if(addr % 4 == 0) {
                        reg[rd] = ext_signed(getbit(data1, 0, 7));
                    } else if(addr % 4 == 1) {
                        reg[rd] = ext_signed(getbit(data1, 8, 15));
                    } else if(addr % 4 == 2) {
                        reg[rd] = ext_signed(getbit(data1, 16, 23));
                    } else {
                        reg[rd] = ext_signed(getbit(data1, 24, 31));
                    }
                    break;
                }
                case 0x1: {
                    if(addr % 4 == 0) { //前半部分
                        reg[rd] = ext_signed(getbit(data1, 0, 15));
                    } else { //后半部分
                        reg[rd] = ext_signed(getbit(data1, 16, 31));
                    }
                    break;
                }
                case 0x2: {
                    reg[rd] = data1;
                    break;
                }
                case 0x3: {
                    unsigned int data2 = memory[(addr >> 2) + 1];
                    reg[rd] = ((unsigned long)data1 << 32) + data2;
                    break;
                }
                default: {
                    printf("Error: illegal instruction %08x.\n", inst);
                    exit_flag = 1;    
                }
            }
            break;
        }
        case OP_SW: {
            rs1 = getbit(inst, 12, 16);
            rs2 = getbit(inst, 7, 11);
            imm7 = getbit(inst, 0, 6);
            imm5 = getbit(inst, 20, 24);
            PC = PC + 1;
            unsigned int imm = (imm7 << 5) + imm5;
            unsigned long addr = reg[rs1] + ext_signed(imm);
            switch(fuc3) {
                case 0x0: {

                    break;
                }
                case 0x1: {

                    break;
                }
                case 0x2: {

                    break;
                }
                case 0x3: {

                    break;
                }
                default: {
                    printf("Error: illegal instruction %08x.\n", inst);
                    exit_flag = 1;  
                }
            }
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
            switch(fuc3) {
                case 0x0: {
                    if(reg[rs1] == reg[rs2]) {
                        PC = PC + ext_signed(offset >> 1);
                    } else {
                        PC = PC + 1;
                    }
                    break;
                }
                case 0x1: {
                    if(reg[rs1] != reg[rs2]) {
                        PC = PC + ext_signed(offset >> 1);
                    } else {
                        PC = PC + 1;
                    }
                    break;
                }
                case 0x4: {
                    if(reg[rs1] < reg[rs2]) {
                        PC = PC + ext_signed(offset >> 1);
                    } else {
                        PC = PC + 1;
                    }
                    break;
                }
                case 0x5: {
                    if(reg[rs1] >= reg[rs2]) {
                        PC = PC + ext_signed(offset >> 1);
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
            unsigned int imm8 = getbit(inst, 1, 8);
            unsigned int imm_1 = getbit(inst, 9, 9);
            unsigned int imm10 = getbit(inst, 10, 19);
            unsigned int offset = (imm1 << 19) + (imm10 << 9) + (imm_1 << 8) + imm8;
            reg[rd] = (PC + 1) << 2;
            PC = PC + ext_signed(offset >> 1);
            break;
        }
        case OP_JALR: {
            unsigned int imm12 = getbit(inst, 0, 11);
            rs1 = getbit(inst, 12, 16);
            reg[rd] = (PC + 1) << 2;
            PC = (reg[rs1] + ext_signed(imm12)) >> 1;
            break;
        }
        case OP_AUIPC: {
            imm20 = getbit(inst, 0, 19);
            reg[rd] = (PC << 2) + ext_signed(imm20 << 12);
            PC = PC + 1;
            break;
        }
        case OP_LUI: {
            imm20 = getbit(inst, 0, 19);
            reg[rd] = ext_signed(imm20 << 12);
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











