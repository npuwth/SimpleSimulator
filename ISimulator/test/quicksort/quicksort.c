#include<stdio.h>

#define PRINT(x) asm volatile(".insn r 0x33, 0, 0, a1, zero, %0"::"r"(x):"a1"); asm volatile(".insn i 0x13, 0, a0, zero, 1":::"a0"); asm volatile("ecall");
#define EXIT()   asm volatile(".insn i 0x13, 0, a0, zero, 10":::"a0"); asm volatile("ecall");

#define MAXNUM 2

// int a[MAXNUM] = {1, 3, 7, 5, 9, 6, 4, 2, 0, 8};
int a[MAXNUM] = {1, 3};

void quick_sort(int q[], int l, int r) {
	if(l >= r) return;
	int i = l - 1, j = r + 1, x = q[(l + r)>>1];
	while(i < j) {
		do i++; while(q[i] < x);
		do j--; while(q[j] > x);
		if(i < j) {
			int t = q[i];
			q[i] = q[j];
			q[j] = t;
		}
	}
	quick_sort(q, l, j); quick_sort(q, j + 1, r);
}

int main() {
	// for(int i = 0; i < MAXNUM; i++) {
	// 	scanf("%d", &a[i]);
	// }

	quick_sort(a, 0, MAXNUM-1);

	for(int i = 0; i < MAXNUM; i++) {
		PRINT(a[i]);
	}
    EXIT();

	return 0;
}