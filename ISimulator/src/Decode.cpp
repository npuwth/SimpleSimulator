#include "Common.h"

extern bool exit_flag;
extern REG reg[32];

struct pipeline_Reg execute_Decode(unsigned int inst, unsigned long PC, bool &r_rs1, bool &r_rs2, int &rs1, int &rs2) {
    unsigned int OP, fuc3, fuc7;
    int rd, alu_op = 0, br_op = 0, write_reg = 0; //1, 2, 3, 4
    int mem_r = 0, mem_w = 0, mem_type, syscall = 0; //5, 6, 7, 13
    unsigned long data1, data2, sdata, result, nextPC; //8, 9, 10, 11, 12

    //start decode
    OP = getbit(inst, 25, 31);
	rd = getbit(inst, 20, 24); //1
    fuc3 = getbit(inst, 17, 19);
    switch(OP) {
        case OP_R: {
            rs1 = getbit(inst, 12, 16);
            rs2 = getbit(inst, 7, 11);
            fuc7 = getbit(inst, 0, 6);
            data1 = reg[rs1]; r_rs1 = 1; //8
            data2 = reg[rs2]; r_rs2 = 1; //9
            write_reg = 1; //4
            switch(fuc7 * 16 + fuc3) { //alu_op, 2
                case 0x000: { //add
                    alu_op = ALU_ADD;
                    break;
                }
                case 0x010: { //mul
                    alu_op = ALU_MUL;
                    break;
                }
                case 0x200: { //sub
                    alu_op = ALU_SUB;
                    break;
                }
                case 0x001: { //sll
                    alu_op = ALU_SLL;
                    break;
                }
                case 0x011: { //mulh
                    alu_op = ALU_MULH;
                    break;
                }
                case 0x012: { //mulhsu
                    alu_op = ALU_MULHSU;
                    break;
                }
                case 0x013: { //mulhu
                    alu_op = ALU_MULHU;
                    break;
                } 
                case 0x002: { //slt
                    alu_op = ALU_SLT;
                    break;
                }
                case 0x003: { //sltu
                    alu_op = ALU_SLTU;
                    break;
                }
                case 0x004: { //xor
                    alu_op = ALU_XOR;
                    break;
                }
                case 0x014: { //div
                    alu_op = ALU_DIV;
                    break;
                }
                case 0x015: { //divu
                    alu_op = ALU_DIVU;
                    break;
                }
                case 0x005: { //srl
                    alu_op = ALU_SRL;
                    break;
                }
                case 0x205: { //sra
                    alu_op = ALU_SRA;
                    break;
                }
                case 0x006: { //or
                    alu_op = ALU_OR;
                    break;
                }
                case 0x016: { //rem
                    alu_op = ALU_REM;
                    break;
                }
                case 0x017: { //remu
                    alu_op = ALU_REMU;
                    break;
                }
                case 0x007: { //and
                    alu_op = ALU_AND;
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
            data1 = reg[rs1]; r_rs1 = 1; //8
            data2 = reg[rs2]; r_rs2 = 1; //9
            write_reg = 1; //4
            switch(fuc7 * 16 + fuc3) { //alu_op, 2
                case 0x000: { //addw
                    alu_op = ALU_ADDW;
                    break;
                }
                case 0x200: { //subw
                    alu_op = ALU_SUBW;
                    break;
                }
                case 0x001: { //sllw
                    alu_op = ALU_SLLW;
                    break;
                }
                case 0x005: { //srlw
                    alu_op = ALU_SRLW;
                    break;
                }
                case 0x205: { //sraw
                    alu_op = ALU_SRAW;
                    break;
                }
                case 0x010: { //mulw
                    alu_op = ALU_MULW;
                    break;
                }
                case 0x014: { //divw
                    alu_op = ALU_DIVW;
                    break;
                }
                case 0x016: { //remw
                    alu_op = ALU_REMW;
                    break;
                }
                case 0x017: { //remuw
                    alu_op = ALU_REMUW;
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
            unsigned int imm12 = getbit(inst, 0, 11);
            unsigned int imm5  = getbit(inst, 6, 11); //rv64下增加为6位
            fuc7 = getbit(inst, 0, 5); //fuc7就缩减为6位
            data1 = reg[rs1]; r_rs1 = 1; //8
            write_reg = 1; //4
            switch(fuc3) { //alu_op & data2, 2 & 9
                case 0x0: { //addi
                    alu_op = ALU_ADD;
                    data2  = ext_signed(imm12, 12);
                    break;
                }
                case 0x1: {
                if(fuc7 == 0x00) { //slli
                    alu_op = ALU_SLL;
                    data2  = (unsigned long)imm5;
                } else {
                    printf("Error: illegal instruction %08x.\n", inst);
                    exit_flag = 1;
                }
                    break;
                }
                case 0x2: { //slti
                    alu_op = ALU_SLT;
                    data2  = ext_signed(imm12, 12);
                    break;
                }
                case 0x3: { //sltiu
                    alu_op = ALU_SLTU;
                    data2  = ext_signed(imm12, 12);
                    break;
                }
                case 0x4: { //xori
                    alu_op = ALU_XOR;
                    data2  = ext_signed(imm12, 12);
                    break;
                }
                case 0x5: {
                if(fuc7 == 0x00) { //srli
                    alu_op = ALU_SRL;
                    data2  = (unsigned long)imm5;
                } else if(fuc7 == 0x10) { //srai
                    alu_op = ALU_SRA;
                    data2  = (unsigned long)imm5;
                } else {
                    printf("Error: illegal instruction %08x.\n", inst);
                    exit_flag = 1;
                }
                    break;
                }
                case 0x6: { //ori
                    alu_op = ALU_OR;
                    data2  = ext_signed(imm12, 12);
                    break;
                }
                case 0x7: { //andi
                    alu_op = ALU_AND;
                    data2  = ext_signed(imm12, 12);
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
            unsigned int imm12 = getbit(inst, 0, 11);
            unsigned int imm5 = getbit(inst, 7, 11);
            data1 = reg[rs1]; r_rs1 = 1; //8
            write_reg = 1; //4
            fuc7 = getbit(inst, 0, 6);
            switch(fuc3) { //alu_op & data2, 2 & 9
                case 0x0: { //addiw
                    alu_op = ALU_ADDW;
                    data2  = ext_signed(imm12, 12);
                    break;
                }
                case 0x1: { //slliw
                    alu_op = ALU_SLLW;
                    data2  = (unsigned long)imm5;
                    break;
                }
                case 0x5: {
                if(fuc7 == 0x00) { //srliw
                    alu_op = ALU_SRLW;
                    data2  = (unsigned long)imm5;
                } else if(fuc7 == 0x20) { //sraiw
                    alu_op = ALU_SRAW;
                    data2  = (unsigned long)imm5;
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
            break;
        }
        case OP_LW: {
            rs1 = getbit(inst, 12, 16);
            unsigned int imm12 = getbit(inst, 0, 11);
            alu_op = ALU_ADD; //2
            data1  = reg[rs1]; r_rs1 = 1;   //8
            data2  = ext_signed(imm12, 12); //9
            write_reg = 1; //4
            mem_r = 1; //5
            switch(fuc3) { //目前没有考虑非对齐访存异常情况，比如要取的数跨越了两个字
                case 0x0: { //lb
                    mem_type = MEM_B;
                    break;
                }
                case 0x1: { //lh
                    mem_type = MEM_H;
                    break;
                }
                case 0x2: { //lw
                    mem_type = MEM_W;
                    break;
                }
                case 0x3: { //ld
                    mem_type = MEM_D;
                    break;
                }
                case 0x4: { //lbu
                    mem_type = MEM_BU;
                    break;
                }
                case 0x5: { //lhu
                    mem_type = MEM_HU;
                    break;
                }
                case 0x6: { //lwu
                    mem_type = MEM_WU;
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
            unsigned int imm7 = getbit(inst, 0, 6);
            unsigned int imm5 = getbit(inst, 20, 24);
            unsigned int imm = (imm7 << 5) + imm5;
            alu_op = ALU_ADD; //2
            data1  = reg[rs1]; r_rs1 = 1; //8
            data2  = ext_signed(imm, 12); //9
            sdata  = reg[rs2]; r_rs2 = 1; //11
            mem_w = 1; //6
            switch(fuc3) { //mem_type, 7
                case 0x0: { //sb
                    mem_type = MEM_B;
                    break;
                }
                case 0x1: { //sh
                    mem_type = MEM_H;
                    break;
                }
                case 0x2: { //sw
                    mem_type = MEM_W;
                    break;
                }
                case 0x3: { //sd
                    mem_type = MEM_D;
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
            //br addr
            nextPC = PC + ext_signed(offset >> 1, 11); //12
            data1 = reg[rs1]; r_rs1 = 1; //8
            data2 = reg[rs2]; r_rs2 = 1; //9
            switch(fuc3) { //br_op, 3
                case 0x0: { //beq
                    br_op = BR_BEQ;
                    break;
                }
                case 0x1: { ///bne
                    br_op = BR_BNE;
                    break;
                }
                case 0x4: { //blt
                    br_op = BR_BLT;
                    break;
                }
                case 0x5: { //bge
                    br_op = BR_BGE;
                    break;
                }
                case 0x6: { //bltu
                    br_op = BR_BLTU;
                    break;
                }
                case 0x7: { //bgeu
                    br_op = BR_BGEU;
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
            //j addr
            nextPC = PC + ext_signed(offset >> 1, 19); //12
            br_op = BR_J; //3
            result = (PC + 1) << 2; //10
            write_reg = 1; //4
            break;
        }
        case OP_JALR: {
            unsigned int imm12 = getbit(inst, 0, 11);
            rs1 = getbit(inst, 12, 16); r_rs1 = 1;
            //jr addr
            nextPC = (reg[rs1] + ext_signed(imm12, 12)) >> 2; //12
            br_op = BR_JR; //3
            result = (PC + 1) << 2; //10
            write_reg = 1; //4
            break;
        }
        case OP_AUIPC: {
            unsigned int imm20 = getbit(inst, 0, 19);
            result = (PC << 2) + ext_signed(imm20 << 12, 32); //10
            write_reg = 1; //4
            break;
        }
        case OP_LUI: {
            unsigned int imm20 = getbit(inst, 0, 19);
            result = ext_signed(imm20 << 12, 32); //10
            write_reg = 1; //4
            break;
        }
        case OP_SCALL: {
            unsigned int imm12 = getbit(inst, 0, 11);
            switch(fuc3) {
                case 0x0: {
                    if(imm12 == 0x0) { //ecall
                        rs1 = 10;
                        rs2 = 11;
                        data1 = reg[rs1]; r_rs1 = 1; //8
                        data2 = reg[rs2]; r_rs2 = 1; //9
                        syscall = 1; //13
                    } else if(imm12 == 0x1) { //ebreak
                        printf("Ebreak Called.\n");
                    } else {
                        printf("Error: illegal instruction %08x.\n", inst);
                        exit_flag = 1;
                    }
                    break;
                }
                case 0x1: { //CSRRW
                    printf("CSRRW Called.\n");
                    break;
                }
                case 0x2: { //CSRRS
                    printf("CSRRS Called.\n");
                    break;
                }
                case 0x3: { //CSRRC
                    printf("CSRRC Called.\n");
                    break;
                }
                case 0x5: { //CSRRWI
                    printf("CSRRWI Called.\n");
                    break;
                }
                case 0x6: { //CSRRSI
                    printf("CSRRSI Called.\n");
                    break;
                }
                case 0x7: { //CSRRCI
                    printf("CSRRCI Called.\n");
                    break;
                }
                default: {
                    printf("Error: illegal instruction %08x.\n", inst);
                    exit_flag = 1;
                }
            }
            break;
        }
        default: {
            printf("Error: illegal instruction %08x.\n", inst);
            exit_flag = 1;
        }
    }

    struct pipeline_Reg ctrl = {
        0,
        0,
        0,
        rd,
        alu_op,
        br_op,
        write_reg,
        mem_w,
        mem_r,
        mem_type,
        data1,
        data2,
        result,
        sdata,
        nextPC,
        syscall
    };
    return ctrl;
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
// 		else if(reg[17]==169)//time
// 		else if(reg[17]==93)//exit
//     }
// }
