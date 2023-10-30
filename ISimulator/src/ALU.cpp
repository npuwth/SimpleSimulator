#include "Common.h"

unsigned long execute_ALU(int alu_op, unsigned long alu_in1, unsigned long alu_in2, unsigned long result) {
    unsigned long alu_result = result;
    switch(alu_op) {
        case ALU_NOP: {
            break;
        }
        case ALU_ADD: {
            alu_result = (unsigned long)((signed long)alu_in1 + (signed long)alu_in2);
            break;
        }
        case ALU_MUL: {
            alu_result = (unsigned long)((signed long)alu_in1 * (signed long)alu_in2); //直接不考虑溢出就行
            break;
        }
        case ALU_SUB: {
            alu_result = (unsigned long)((signed long)alu_in1 - (signed long)alu_in2);
            break;
        }
        case ALU_SLL: {
            alu_result = alu_in1 << (alu_in2 & 0b111111);
            break;
        }
        case ALU_MULH: {
            alu_result = (unsigned long)(((signed long)alu_in1 * (signed __int128)alu_in2) >> 64);
            break;
        }
        case ALU_MULHSU: {
            alu_result = (unsigned long)(((signed long)alu_in1 * (unsigned __int128)alu_in2) >> 64);
            break;
        }
        case ALU_MULHU: {
            alu_result = (unsigned long)((alu_in1 * (unsigned __int128)alu_in2) >> 64);
            break;
        }
        case ALU_SLT: {
            alu_result = ((signed long)alu_in1 < (signed long)alu_in2) ? 1 : 0;
            break;
        }
        case ALU_SLTU: {
            alu_result = (alu_in1 < alu_in2) ? 1 : 0;
            break;
        }
        case ALU_XOR: {
            alu_result = alu_in1 ^ alu_in2;
            break;
        }
        case ALU_DIV: {
            alu_result = (unsigned long)((signed long)alu_in1 / (signed long)alu_in2);
            break;
        }
        case ALU_DIVU: {
            alu_result = alu_in1 / alu_in2;
            break;
        }
        case ALU_SRL: {
            alu_result = alu_in1 >> (alu_in2 & 0b111111);
            break;
        }
        case ALU_SRA: {
            alu_result = (unsigned long)((signed long)alu_in1 >> (alu_in2 & 0b111111));
            break;
        }
        case ALU_OR: {
            alu_result = alu_in1 | alu_in2;
            break;
        }
        case ALU_REM: {
            alu_result = (unsigned long)((signed long)alu_in1 % (signed long)alu_in2);
            break;
        }
        case ALU_REMU: {
            alu_result = alu_in1 % alu_in2;
            break;
        }
        case ALU_AND: {
            alu_result = alu_in1 & alu_in2;
            break;
        }
        case ALU_ADDW: {
            alu_result = ext_signed((unsigned int)((signed int)alu_in1 + (signed int)alu_in2), 32);
            break;
        }
        case ALU_SUBW: {
            alu_result = ext_signed((unsigned int)((signed int)alu_in1 - (signed int)alu_in2), 32);
            break;
        }
        case ALU_SLLW: {
            alu_result = ext_signed((unsigned int)(alu_in1 << (alu_in2 & 0b11111)), 32);
            break;
        }
        case ALU_SRLW: {
            alu_result = ext_signed((unsigned int)(alu_in1 >> (alu_in2 & 0b11111)), 32);
            break;
        }
        case ALU_SRAW: {
            alu_result = ext_signed((unsigned int)((signed int)alu_in1 >> (alu_in2 & 0b11111)), 32);
            break;
        }
        case ALU_MULW: {
            alu_result = ext_signed((unsigned int)((signed int)alu_in1 * (signed int)alu_in2), 32);
            break;
        }
        case ALU_DIVW: {
            alu_result = ext_signed((unsigned int)((signed int)alu_in1 / (signed int)alu_in2), 32);
            break;
        }
        case ALU_REMW: {
            alu_result = ext_signed((unsigned int)((signed int)alu_in1 % (signed int)alu_in2), 32);
            break;
        }
        case ALU_REMUW: {
            alu_result = ext_signed((unsigned int)((unsigned int)alu_in1 % (unsigned int)alu_in2), 32);
            break;
        }
        default: {
            ;
        }
    }

    return alu_result;
}
