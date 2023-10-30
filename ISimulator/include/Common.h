#pragma once
#include<iostream>
#include<stdio.h>
#include<math.h>
#include<time.h>
#include<stdlib.h>
#include<unistd.h>
#include "Decode.h"

#define MAX 100000000
#define inst_trace 1
// #define inst_trace_all 1
#define mem_trace 1

typedef unsigned long REG;
// extern REG reg[32] = {0};

// Memory, 400_000_000 bytes, 381MB
// extern unsigned int memory[MAX] = {0}; //address:     0000_0000 ~ 5F5E_1000
                                //array index: 0000_0000 ~ 17D7_8400

// extern bool exit_flag;

struct pipeline_Reg { //16
    int enable; //whether a bubble (pipeline stall)
    unsigned int inst;
    unsigned long PC;
    int rd, alu_op, br_op, write_reg;
    int mem_w, mem_r, mem_type;
    unsigned long data1, data2, result;
    unsigned long sdata, nextPC;
    int syscall;
};

#define reg_zero {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}

unsigned long execute_ALU(int alu_op, unsigned long alu_in1, unsigned long alu_in2, unsigned long result);
bool data_hazard(bool r_rs1, bool r_rs2, int rs1, int rs2, bool EX_write, int EX_rd, bool MEM_write, int MEM_rd, bool WB_write, int WB_rd);
struct pipeline_Reg execute_Decode(unsigned int inst, unsigned long PC, bool &r_rs1, bool &r_rs2, int &rs1, int &rs2);
bool execute_Branch(int br_op, unsigned long alu_in1, unsigned long alu_in2);
unsigned long execute_LSU(int mem_r, int mem_w, int mem_type, unsigned long addr, unsigned long data, FILE* log, unsigned long PC);

extern unsigned long ext_signed(unsigned int src, int x);
extern unsigned int getbit(unsigned int inst, int s, int e);
extern unsigned int setbit(unsigned int target, unsigned int reg, int s, int e);
