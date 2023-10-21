#include "Simulation.h"
using namespace std;

extern void read_elf();
extern unsigned int cadr;
extern unsigned int csize;
extern unsigned int vadr;
extern unsigned long gp;
extern unsigned int madr;
extern unsigned int endPC;
extern unsigned int entry;
extern FILE *file;


//运行指令数
long inst_num = 0;

//系统调用退出指示
int exit_flag = 0;

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
        printf("Successfully Reading from %s.\n", argv[1]);
    }

	read_elf(); //解析elf文件
	load_memory(); //加载内存
	//设置入口地址
	PC = entry >> 2;   //PC以4个字节对齐（指令长度4字节）
	reg[3] = gp;       //设置全局数据段地址寄存器
	reg[2] = MAX / 2;  //栈基址, sp寄存器
	//结束PC的设置
	int end = (int)endPC / 4 - 1;

	while(PC != end)
	{
	    translate_inst();
        execute_inst();
        if(exit_flag == 1)
            break;
        reg[0] = 0;//一直为零
	}
    printf("Instruct Num: %lld\n", inst_num);
	return 0;
}

void translate_inst()
{
	inst = memory[PC];
	
	rd = getbit(7,11);
    // rs1 = getbit();
    // rs2 = getbit();
	//....
	
	inst_num++;
	PC++;
}

//加载代码段
//初始化PC
void load_memory()
{
	fseek(file, cadr, SEEK_SET);
	fread(&memory[vadr >> 2], 1, csize, file);

	vadr = vadr >> 2;
	csize = csize >> 2;
	fclose(file);
}

void execute_inst()
{
	if(OP==OP_R)
	{
		if(fuc3==F3_ADD&&fuc7==F7_ADD)
		{
            reg[rd]=reg[rs1]+reg[rs2];
		}
		else if(OP==OP_R&&fuc7==F7_MSE)
        {
            if(fuc3==F3_MUL)
            {
                reg[rd]=reg[rs1]*reg[rs2];
            }
        }
		else
		{
		   
		}
	}
	else if(OP==OP_I)
    {
        if(fuc3==F3_ADDI)
        {
            
        }
        else
        {
           
        }
    }
    else if(OP==OP_SW)
    {
        if(fuc3==F3_SB)
        {
           
        }
        else
        {
           
        }
    }
    else if(OP==OP_LW)
    {
        if(fuc3==F3_LB)
        {
			
        }
        else
        {

        }
    }
    else if(OP==OP_BEQ)
    {
        if(fuc3==F3_BEQ)
        {
			
        }
        else
        {
           
        }
    }
    else if(OP==OP_JAL)
    {
        
    }
    else if(OP==OP_IW)
    {
        if(fuc3==F3_ADDIW)
        {
			
        }
        else
        {
			
        }
    }
    else if(OP==OP_RW)
    {
        if(fuc3==F3_ADDW&&fuc7==F7_ADDW)
        {
			
        }
        else
        {
			
        }
    }
    else if(OP==OP_SCALL)//系统调用指令
    {
        if(fuc3==F3_SCALL&&fuc7==F7_SCALL)
	{
			if(reg[17]==64)////printf
			{
				int place=0,c=0;
				const void * t=&memory[reg[11]>>2];
				reg[10]=write((unsigned int)reg[10],t,(unsigned int)reg[12]);
			}
			else if(reg[17]==63)//scanf
			{

			}
			else if(reg[17]==169)//time
			{

			}
			else if(reg[17]==93)//exit
			{
				exit_flag=1;
			}
			else
			{

			}
        }
        else
        {
			
        }
    }
    else
    {
		
    }
}











