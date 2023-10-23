#include<stdio.h>

int main() {
    int a = 1;
    int b = 2;
    int c = a + b * 100;
    // int d = 10;
    // printf("%d\n", c);
    asm volatile(".insn r 0x33, 0, 0, a1, zero, %0"::"r"(c):"a1");
    asm volatile(".insn i 0x13, 0, a0, zero, 1":::"a0");
    asm volatile("ecall");
    asm volatile(".insn i 0x13, 0, a0, zero, 10":::"a0");
    asm volatile("ecall");
    return 0;
}