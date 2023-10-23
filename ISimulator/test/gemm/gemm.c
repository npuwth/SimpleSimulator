#include<stdio.h>

#define PRINT(x) asm volatile(".insn r 0x33, 0, 0, a1, zero, %0"::"r"(x):"a1"); asm volatile(".insn i 0x13, 0, a0, zero, 1":::"a0"); asm volatile("ecall");
#define EXIT()   asm volatile(".insn i 0x13, 0, a0, zero, 10":::"a0"); asm volatile("ecall");

#define N 3

int A[N][N] = {1, 2, 3, 4, 5, 6, 7, 8, 9}; 
int B[N][N] = {1, 2, 3, 4, 5, 6, 7, 8, 9}; 
int C[N][N] = {1, 2, 3, 4, 5, 6, 7, 8, 9}; //put C in .data too

void GEMM() {
	for(int i = 0; i < N; i++) {
		for(int j = 0; j < N; j++) {
			for(int k = 0; k < N; k++) {
				C[i][j] += A[i][k] * B[k][j];
			}
		}
	}
}

int main() {
	// int A[N][N], B[N][N], C[N][N];
	// for(int i = 0; i < N; i++) {
	// 	for(int j = 0; j < N; j++) {
	// 		scanf("%d", &A[i][j]);
	// 	}
	// }
	// for(int i = 0; i < N; i++) {
	// 	for(int j = 0; j < N; j++) {
	// 		scanf("%d", &B[i][j]);
	// 	}
	// }

	GEMM();
	for(int i = 0; i < N; i++) {
		for(int j = 0; j < N; j++) {
			PRINT(C[i][j]);
		}
	}
    EXIT();

	return 0;
}