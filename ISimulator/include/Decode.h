#pragma once
// decode here
#define OP_JAL 111   // 0x6f
#define OP_JALR 103  // 0x67
#define OP_R 51      // 0x33
#define OP_I 19      // 0x13
#define OP_SW 35     // 0x23
#define OP_LW 3      // 0x03
#define OP_BEQ 99    // 0x63
#define OP_IW 27     // 0x1B
#define OP_RW 59     // 0x3B
#define OP_SCALL 115 // 0x73
#define OP_AUIPC 23  // 0x17
#define OP_LUI   55  // 0x37
#define OP_FENCE 15  // 0x0f

#define ALU_NOP 0
#define ALU_ADD 1
#define ALU_SUB 2
#define ALU_MUL 3
#define ALU_DIV 4
#define ALU_REM 5

#define ALU_SLL 6
#define ALU_SRL 7
#define ALU_SRA 8
#define ALU_XOR 9
#define ALU_OR  10
#define ALU_AND 11
#define ALU_SLT 12
#define ALU_SLTU 13

#define ALU_MULH 14
#define ALU_MULHSU 15
#define ALU_MULHU 16
#define ALU_DIVU 17
#define ALU_REMU 18

#define ALU_ADDW 19
#define ALU_SUBW 20
#define ALU_SLLW 21
#define ALU_SRLW 22
#define ALU_SRAW 23
#define ALU_MULW 24
#define ALU_DIVW 25
#define ALU_REMW 26
#define ALU_REMUW 27

#define MEM_B 1
#define MEM_H 2
#define MEM_W 3
#define MEM_D 4
#define MEM_BU 5
#define MEM_HU 6
#define MEM_WU 7

#define BR_NOP 0
#define BR_BEQ 1
#define BR_BNE 2
#define BR_BLT 3
#define BR_BGE 4
#define BR_BLTU 5
#define BR_BGEU 6
#define BR_J 7
#define BR_JR 8
