#include "Common.h"
#include "Simulation.h"
using namespace std;

extern void read_elf();
extern unsigned long cadr;
extern unsigned long csize;
extern unsigned long vadr;
extern unsigned long dadr;
extern unsigned long dsize;
extern unsigned long gp;
extern unsigned int madr;
extern unsigned long entry;
extern FILE *file;
bool exit_flag = 0; //所有指令运行完成指示
unsigned int memory[MAX] = {0};
REG reg[32] = {0};

void print_regs() { //打印寄存器
    printf("Registers(0 ~ 31):\n");
    for(int i = 0; i < 32; i++) {
        printf("reg%02d: %016lx\n", i, reg[i]);
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
    mlog = fopen("mlog.txt", "w"); //内存访问踪迹
    ilog = fopen("ilog.txt", "w"); //指令运行踪迹

	read_elf(); //解析elf文件
	load_memory(); //加载代码数据至内存
    // entry = 0x10184; //main函数起始地址
    entry = 0x10244; //ackermann
    // entry = 0x102c4; //gemm
    // entry = 0x1032c; //quicksort
	PC = entry >> 2;  //PC以4个字节对齐，指令长度4字节
	reg[3] = gp;      //设置全局数据段地址寄存器
	reg[2] = MAX / 2; //设置栈基址sp寄存器
	// int end = (int)endPC / 4 - 1;

    cmd_shell();

    fclose(mlog);
    fclose(ilog);
    printf("Quit ISimulator successfully.\n");
	return 0;
}

void cmd_shell() {
    char cmd, t;
    int quit_flag = 0;
    printf("ISimulator Shell:\n");
    while(1) {
        fflush(NULL);
        if(quit_flag == 1) break;
        printf("> ");
        scanf("%c%c", &cmd, &t);
        switch(cmd) {
            case 'q': { //退出
                quit_flag = 1;
                break;
            }
            case 'r': { //查看寄存器
                print_regs();
                break;
            }
            case 'i': { //单步执行
                if(exit_flag == 1) {
                    printf("No more instructions\n");
                    break;
                }
                // translate_inst();
                // printf("PC: %016lx  Inst: %08x\n", PC << 2, inst);
                // execute_inst();
                simulate_inst();
                reg[0] = 0;
                break;
            }
            case 'n': { //跑多少条指令
                if(exit_flag == 1) {
                    printf("No more instructions\n");
                    break;
                }
                unsigned long ii_num = 0, k = 0;
                printf("Please enter a num.\n> ");
                scanf("%ld%c", &ii_num, &t);
                while(k < ii_num) {
	                // translate_inst();
                    // execute_inst();
                    simulate_inst();
                    if(exit_flag == 1) {
                        // printf("OP: %d, fuc3: %d\n", OP, fuc3);
                       break;
                    }
                    reg[0] = 0;
                    k++;
	            }
                break;
            }
            case 'm': { //查看指定内存
                unsigned long addr;
                printf("Please enter an address.\n> ");
                scanf("%ld%c", &addr, &t);
                printf("Memory at %016lx: %08x\n", addr, memory[addr >> 2]);
                break;
            }
            case 'a': { //直接执行至结束
                if(exit_flag == 1) {
                    printf("No more instructions\n");
                    break;
                }
                while(1) {
	                // translate_inst();
                    // execute_inst();
                    simulate_inst();
                    if(exit_flag == 1) {
                        // printf("OP: %d, fuc3: %d\n", OP, fuc3);
                       break;
                    }
                    reg[0] = 0;
	            }
                printf("Instruction Num: %ld\n", inst_num);
                printf("Total Cycle Num: %ld\n", inst_cycle);
                printf("Stall Cycle Num: %ld\n", stall_num);
                printf("Average CPI: %f\n", inst_cycle*1.0 / inst_num);
                printf("Misprediction Rate: %ld / %ld: %f\n", mispre_num, branch_num, mispre_num*1.0 / branch_num);
                break;
            }
            case 'h': { //打印帮助信息
                printf("ISimulator V1.0\n");
                printf("  q -- quit\n");
                printf("  r -- print registers\n");
                printf("  m -- print target memory\n");
                printf("  i -- execute 1 instruction\n");
                printf("  n -- execute n instructions\n");
                printf("  a -- execute all instructions\n");
                printf("  h -- help information\n");
                break;
            }
            default: {
                printf("No such command: %c\n", cmd);
            }
        }
    }
}

void load_memory()
{
	// vadr = 0x10000000;
    fseek(file, cadr, SEEK_SET);
	fread(&memory[vadr >> 2], 1, csize, file); //memory以4字节对齐
    fseek(file, dadr, SEEK_SET);
    fread(&memory[gp >> 2], 1, dsize, file);
	fclose(file);
    //debug
    // printf("Text in Memory: %016lx\n", vadr);
    // for(unsigned int i = 0; i < 8; i++) {
    //     printf("%08x\n", memory[(vadr >> 2) + i]);
    // }
}

void simulate_inst() {
    pipeline_IF();
    pipeline_ID();
    pipeline_EX();
    pipeline_MEM();
    pipeline_WB();
    update_regs();
    inst_cycle++;
}
//只有在每个cycle末尾更新regs才是正确的，因为组合逻辑是并行执行
//否则将影响产生flush和stall时的正确性

void update_regs() {
    bool IF_stall = hazard_occur & ~mispre_occur;
    bool ID_stall = hazard_occur;
    bool ID_flush = mispre_occur;
    bool EX_flush = hazard_occur | mispre_occur;

    if(IF_stall) {
        ;
    } else {
        PC = NPC;
        // inst_num++;
    }
    if(ID_flush) reg_IFID = reg_zero;
    else if(ID_stall) {
        ;
    } else {
        reg_IFID = reg_IFID_new;
    }
    if(EX_flush) reg_IDEX = reg_zero;
    else reg_IDEX = reg_IDEX_new;
    reg_EXMEM = reg_EXMEM_new;
    reg_MEMWB = reg_MEMWB_new;
}

void pipeline_IF() { //instruction fetch
    unsigned int inst = memory[PC]; //memory和CPU一样都是小端

#ifdef inst_trace_all
    fprintf(ilog, "IFPC:  %016lx  Inst: %08x\n", PC << 2, inst);
#endif

    NPC = PC + 1; //default not branch

    reg_IFID_new = {
        1,
        inst,
        PC,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
    };
}

void pipeline_ID() { //instruction decode
    if(!reg_IFID.enable) { //this is a bubble
        reg_IDEX_new = reg_zero;
        hazard_occur = 0;
        return;
    }

    bool r_rs1 = 0, r_rs2 = 0;
    int  rs1, rs2;
    struct pipeline_Reg ctrl = execute_Decode(
        reg_IFID.inst, 
        reg_IFID.PC,
        r_rs1, 
        r_rs2, 
        rs1, 
        rs2
    );

    bool hazard = data_hazard(
        r_rs1,
        r_rs2,
        rs1,
        rs2,
        reg_IDEX.write_reg,
        reg_IDEX.rd,
        reg_EXMEM.write_reg,
        reg_EXMEM.rd,
        reg_MEMWB.write_reg,
        reg_MEMWB.rd
    );
    if(hazard) {
        hazard_occur = 1;
        stall_num++;
    } else {
        hazard_occur = 0;
    }

#ifdef inst_trace_all
    fprintf(ilog, "IDPC:  %016lx  Inst: %08x\n", reg_IFID.PC << 2, reg_IFID.inst);
#endif

    reg_IDEX_new = {
        reg_IFID.enable,
        reg_IFID.inst,
        reg_IFID.PC,
        ctrl.rd,
        ctrl.alu_op,
        ctrl.br_op,
        ctrl.write_reg,
        ctrl.mem_w,
        ctrl.mem_r,
        ctrl.mem_type,
        ctrl.data1,
        ctrl.data2,
        ctrl.result,
        ctrl.sdata,
        ctrl.nextPC,
        ctrl.syscall
    };
}

void pipeline_EX() {
    if(!reg_IDEX.enable) { //this is a bubble
        reg_EXMEM_new = reg_zero;
        mispre_occur = 0;
        return;
    }

    // bool alu_busy;
    //这里对乘除法进行了简化，不用busy控制逻辑了，直接加上额外的周期
    int alu_cycle = 1; //默认1周期
    unsigned long alu_result = execute_ALU(
        reg_IDEX.alu_op, 
        reg_IDEX.data1, 
        reg_IDEX.data2,
        reg_IDEX.result,
        alu_cycle
    );
    inst_cycle += (alu_cycle - 1);

    bool branch_taken = execute_Branch(
        reg_IDEX.br_op, 
        reg_IDEX.data1, 
        reg_IDEX.data2
    );

    if(reg_IDEX.br_op != BR_NOP) branch_num++;

    if(branch_taken) {
#ifdef inst_trace
        fprintf(ilog, "branch: %016lx  NPC: %016lx\n", reg_IDEX.PC << 2, reg_IDEX.nextPC << 2);
#endif
        mispre_occur = 1;
        // inst_num -= 2; //有两条是无效的
        NPC = reg_IDEX.nextPC;
        mispre_num++;
    } else {
        mispre_occur = 0;
    }

#ifdef inst_trace_all
    fprintf(ilog, "EXPC:  %016lx  Inst: %08x\n", reg_IDEX.PC << 2, reg_IDEX.inst);
#endif

    reg_EXMEM_new = {
        reg_IDEX.enable,
        reg_IDEX.inst,
        reg_IDEX.PC,
        reg_IDEX.rd,
        reg_IDEX.alu_op,
        reg_IDEX.br_op,
        reg_IDEX.write_reg,
        reg_IDEX.mem_w,
        reg_IDEX.mem_r,
        reg_IDEX.mem_type,
        reg_IDEX.data1,
        reg_IDEX.data2,
        alu_result,
        reg_IDEX.sdata,
        reg_IDEX.nextPC,
        reg_IDEX.syscall
    };
}

void pipeline_MEM() {
    if(!reg_EXMEM.enable) {
        reg_MEMWB_new = reg_zero;
        return;
    }

    unsigned long ldata = execute_LSU(
        reg_EXMEM.mem_r,
        reg_EXMEM.mem_w,
        reg_EXMEM.mem_type,
        reg_EXMEM.result,
        reg_EXMEM.sdata,
        mlog,
        reg_EXMEM.PC
    );
    
    if(reg_EXMEM.syscall) {
        if(reg_EXMEM.data1 == 1) { //以数字输出
            printf("%ld\n", reg_EXMEM.data2);
        } else if(reg_EXMEM.data1 == 10) {
            exit_flag = 1;
            inst_num++;
        }
    }
    //syscall放到MEM级处理，前一条指令正好被写回

#ifdef inst_trace_all
    fprintf(ilog, "MEMPC: %016lx  Inst: %08x\n", reg_EXMEM.PC << 2, reg_EXMEM.inst);
#endif

    reg_MEMWB_new = {
        reg_EXMEM.enable,
        reg_EXMEM.inst,
        reg_EXMEM.PC,
        reg_EXMEM.rd,
        reg_EXMEM.alu_op,
        reg_EXMEM.br_op,
        reg_EXMEM.write_reg,
        reg_EXMEM.mem_w,
        reg_EXMEM.mem_r,
        reg_EXMEM.mem_type,
        reg_EXMEM.data1,
        reg_EXMEM.data2,
        (reg_EXMEM.mem_r ? ldata : reg_EXMEM.result),
        reg_EXMEM.sdata,
        reg_EXMEM.nextPC,
        reg_EXMEM.syscall
    };
}

void pipeline_WB() {
    if(!reg_MEMWB.enable) {
        return;
    } else {
        inst_num++;
    }

    if(reg_MEMWB.write_reg) {
        reg[reg_MEMWB.rd] = reg_MEMWB.result;
    }

#ifdef inst_trace
    fprintf(ilog, "WBPC: %016lx  Inst: %08x\n", reg_MEMWB.PC << 2, reg_MEMWB.inst);
    fprintf(ilog, "Write to reg%02d: %016lx\n", reg_MEMWB.rd, reg_MEMWB.result);
#endif

}
