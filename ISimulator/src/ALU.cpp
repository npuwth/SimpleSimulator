#include "Common.h"

#define MUL_CYCLE 2
#define DIV_CYCLE 40
#define REM_CYCLE 40

bool last_mul = 0;
bool last_div = 0;
bool last_div_u = 0; //last div unsigned 
unsigned long last_alu_in1 = 0;
unsigned long last_alu_in2 = 0;

unsigned long execute_ALU(int alu_op, unsigned long alu_in1, unsigned long alu_in2, unsigned long result, int &cycle) {
    unsigned long alu_result = result;
    last_alu_in1 = alu_in1;
    last_alu_in2 = alu_in2;
    switch(alu_op) {
        case ALU_NOP: {
            last_mul = 0;
            last_div = 0;
            break;
        }
        case ALU_ADD: {
            alu_result = (unsigned long)((signed long)alu_in1 + (signed long)alu_in2);
            last_mul = 0;
            last_div = 0;
            break;
        }
        case ALU_MUL: {
            alu_result = (unsigned long)((signed long)alu_in1 * (signed long)alu_in2); //直接不考虑溢出就行
            if(last_mul) cycle = MUL_CYCLE - 1; //乘法可流水
            else cycle = MUL_CYCLE;
            last_mul = 1;
            last_div = 0;
            break;
        }
        case ALU_SUB: {
            alu_result = (unsigned long)((signed long)alu_in1 - (signed long)alu_in2);
            last_mul = 0;
            last_div = 0;
            break;
        }
        case ALU_SLL: {
            alu_result = alu_in1 << (alu_in2 & 0b111111);
            last_mul = 0;
            last_div = 0;
            break;
        }
        case ALU_MULH: {
            alu_result = (unsigned long)(((signed long)alu_in1 * (signed __int128)alu_in2) >> 64);
            if(last_mul) cycle = MUL_CYCLE - 1;
            else cycle = MUL_CYCLE;
            last_mul = 1;
            last_div = 0;
            break;
        }
        case ALU_MULHSU: {
            alu_result = (unsigned long)(((signed long)alu_in1 * (unsigned __int128)alu_in2) >> 64);
            if(last_mul) cycle = MUL_CYCLE - 1;
            else cycle = MUL_CYCLE;
            last_mul = 1;
            last_div = 0;
            break;
        }
        case ALU_MULHU: {
            alu_result = (unsigned long)((alu_in1 * (unsigned __int128)alu_in2) >> 64);
            if(last_mul) cycle = MUL_CYCLE - 1;
            else cycle = MUL_CYCLE;
            last_mul = 1;
            last_div = 0;
            break;
        }
        case ALU_SLT: {
            alu_result = ((signed long)alu_in1 < (signed long)alu_in2) ? 1 : 0;
            last_mul = 0;
            last_div = 0;
            break;
        }
        case ALU_SLTU: {
            alu_result = (alu_in1 < alu_in2) ? 1 : 0;
            last_mul = 0;
            last_div = 0;
            break;
        }
        case ALU_XOR: {
            alu_result = alu_in1 ^ alu_in2;
            last_mul = 0;
            last_div = 0;
            break;
        }
        case ALU_DIV: {
            alu_result = (unsigned long)((signed long)alu_in1 / (signed long)alu_in2);
            cycle = DIV_CYCLE;
            last_mul = 0;
            last_div = 1;
            last_div_u = 0;
            break;
        }
        case ALU_DIVU: {
            alu_result = alu_in1 / alu_in2;
            cycle = DIV_CYCLE;
            last_mul = 0;
            last_div = 1;
            last_div_u = 1;
            break;
        }
        case ALU_SRL: {
            alu_result = alu_in1 >> (alu_in2 & 0b111111);
            last_mul = 0;
            last_div = 0;
            break;
        }
        case ALU_SRA: {
            alu_result = (unsigned long)((signed long)alu_in1 >> (alu_in2 & 0b111111));
            last_mul = 0;
            last_div = 0;
            break;
        }
        case ALU_OR: {
            alu_result = alu_in1 | alu_in2;
            last_mul = 0;
            last_div = 0;
            break;
        }
        case ALU_REM: {
            alu_result = (unsigned long)((signed long)alu_in1 % (signed long)alu_in2);
            if(last_div && ~last_div_u && alu_in1 == last_alu_in1 && alu_in2 == last_alu_in2) {
                cycle = 0;
            } else {
                cycle = REM_CYCLE;
            }
            last_mul = 0;
            last_div = 0;
            break;
        }
        case ALU_REMU: {
            alu_result = alu_in1 % alu_in2;
            if(last_div && last_div_u && alu_in1 == last_alu_in1 && alu_in2 == last_alu_in2) {
                cycle = 0;
            } else {
                cycle = REM_CYCLE;
            }
            last_mul = 0;
            last_div = 0;
            break;
        }
        case ALU_AND: {
            alu_result = alu_in1 & alu_in2;
            last_mul = 0;
            last_div = 0;
            break;
        }
        case ALU_ADDW: {
            alu_result = ext_signed((unsigned int)((signed int)alu_in1 + (signed int)alu_in2), 32);
            last_mul = 0;
            last_div = 0;
            break;
        }
        case ALU_SUBW: {
            alu_result = ext_signed((unsigned int)((signed int)alu_in1 - (signed int)alu_in2), 32);
            last_mul = 0;
            last_div = 0;
            break;
        }
        case ALU_SLLW: {
            alu_result = ext_signed((unsigned int)(alu_in1 << (alu_in2 & 0b11111)), 32);
            last_mul = 0;
            last_div = 0;
            break;
        }
        case ALU_SRLW: {
            alu_result = ext_signed((unsigned int)(alu_in1 >> (alu_in2 & 0b11111)), 32);
            last_mul = 0;
            last_div = 0;
            break;
        }
        case ALU_SRAW: {
            alu_result = ext_signed((unsigned int)((signed int)alu_in1 >> (alu_in2 & 0b11111)), 32);
            last_mul = 0;
            last_div = 0;
            break;
        }
        case ALU_MULW: {
            alu_result = ext_signed((unsigned int)((signed int)alu_in1 * (signed int)alu_in2), 32);
            last_mul = 0;
            last_div = 0;
            break;
        }
        case ALU_DIVW: {
            alu_result = ext_signed((unsigned int)((signed int)alu_in1 / (signed int)alu_in2), 32);
            cycle = DIV_CYCLE;
            last_mul = 0;
            last_div = 1;
            last_div_u = 0;
            break;
        }
        case ALU_REMW: {
            alu_result = ext_signed((unsigned int)((signed int)alu_in1 % (signed int)alu_in2), 32);
            if(last_div && ~last_div_u && alu_in1 == last_alu_in1 && alu_in2 == last_alu_in2) {
                cycle = 0;
            } else {
                cycle = REM_CYCLE;
            }
            last_mul = 0;
            last_div = 0;
            break;
        }
        case ALU_REMUW: {
            alu_result = ext_signed((unsigned int)((unsigned int)alu_in1 % (unsigned int)alu_in2), 32);
            if(last_div && last_div_u && alu_in1 == last_alu_in1 && alu_in2 == last_alu_in2) {
                cycle = 0;
            } else {
                cycle = REM_CYCLE;
            }
            last_mul = 0;
            last_div = 0;
            break;
        }
        default: {
            ;
        }
    }

    return alu_result;
}
