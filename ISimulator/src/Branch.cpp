#include "Common.h"

bool execute_Branch(int br_op, unsigned long data1, unsigned long data2) {
    bool taken = 0;
    switch (br_op) {
    case BR_BEQ: {
        taken = (data1 == data2);
        break;
    }
    case BR_BNE: {
        taken = (data1 != data2);
        break;
    }
    case BR_BLT: {
        taken = ((signed long)data1 < (signed long)data2);
        break;
    }
    case BR_BGE: {
        taken = ((signed long)data1 >= (signed long)data2);
        break;
    }
    case BR_BLTU: {
        taken = (data1 < data2);
        break;
    }
    case BR_BGEU: {
        taken = (data1 >= data2);
        break;
    }
    case BR_J: {
        taken = 1;
        break;
    }
    case BR_JR: {
        taken = 1;
        break;
    }
    default:
        ;
    }
    
    return taken;
}
