	.file	"gemm.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	A
	.data
	.align	3
	.type	A, @object
	.size	A, 36
A:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.globl	B
	.align	3
	.type	B, @object
	.size	B, 36
B:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.globl	C
	.align	3
	.type	C, @object
	.size	C, 36
C:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.text
	.align	2
	.globl	GEMM
	.type	GEMM, @function
GEMM:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	sw	zero,-20(s0)
	j	.L2
.L7:
	sw	zero,-24(s0)
	j	.L3
.L6:
	sw	zero,-28(s0)
	j	.L4
.L5:
	lui	a5,%hi(C)
	addi	a3,a5,%lo(C)
	lw	a2,-24(s0)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	add	a5,a5,a2
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a3,0(a5)
	lui	a5,%hi(A)
	addi	a2,a5,%lo(A)
	lw	a1,-28(s0)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	add	a5,a5,a1
	slli	a5,a5,2
	add	a5,a2,a5
	lw	a2,0(a5)
	lui	a5,%hi(B)
	addi	a1,a5,%lo(B)
	lw	a0,-24(s0)
	lw	a4,-28(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	add	a5,a5,a0
	slli	a5,a5,2
	add	a5,a1,a5
	lw	a5,0(a5)
	mulw	a5,a2,a5
	sext.w	a5,a5
	addw	a5,a3,a5
	sext.w	a3,a5
	lui	a5,%hi(C)
	addi	a2,a5,%lo(C)
	lw	a1,-24(s0)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	add	a5,a5,a1
	slli	a5,a5,2
	add	a5,a2,a5
	sw	a3,0(a5)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L4:
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,2
	ble	a4,a5,.L5
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L3:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,2
	ble	a4,a5,.L6
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,2
	ble	a4,a5,.L7
	nop
	nop
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	GEMM, .-GEMM
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	addi	s0,sp,32
	call	GEMM
	sw	zero,-20(s0)
	j	.L9
.L12:
	sw	zero,-24(s0)
	j	.L10
.L11:
	lui	a5,%hi(C)
	addi	a3,a5,%lo(C)
	lw	a2,-24(s0)
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	add	a5,a5,a2
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
 #APP
# 38 "gemm/gemm.c" 1
	.insn r 0x33, 0, 0, a1, zero, a5
# 0 "" 2
# 38 "gemm/gemm.c" 1
	.insn i 0x13, 0, a0, zero, 1
# 0 "" 2
# 38 "gemm/gemm.c" 1
	ecall
# 0 "" 2
 #NO_APP
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L10:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,2
	ble	a4,a5,.L11
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L9:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,2
	ble	a4,a5,.L12
 #APP
# 41 "gemm/gemm.c" 1
	.insn i 0x13, 0, a0, zero, 10
# 0 "" 2
# 41 "gemm/gemm.c" 1
	ecall
# 0 "" 2
 #NO_APP
	li	a5,0
	mv	a0,a5
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 10.2.0"
