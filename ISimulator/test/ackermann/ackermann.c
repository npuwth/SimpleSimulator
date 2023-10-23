#include<stdio.h>

#define PRINT(x) asm volatile(".insn r 0x33, 0, 0, a1, zero, %0"::"r"(x):"a1"); asm volatile(".insn i 0x13, 0, a0, zero, 1":::"a0"); asm volatile("ecall");
#define EXIT()   asm volatile(".insn i 0x13, 0, a0, zero, 10":::"a0"); asm volatile("ecall");

int ackermann(int m, int n) {
	if(m == 0) {
		return n + 1;
	} else {
		if(n == 0) {
			return ackermann(m - 1, 1);
		} else {
			return ackermann(m - 1, ackermann(m, n - 1));
		}
	}
}

int main() {
	int m, n, result;
	// scanf("%d %d", &m, &n);
    m = 2;
    n = 5;

	result = ackermann(m, n);
    PRINT(result);
    EXIT();

	return 0;
}