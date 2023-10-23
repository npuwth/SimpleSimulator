	.file	"test1.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	li	a5,1
	sw	a5,-20(s0)
	li	a5,2
	sw	a5,-24(s0)
	lw	a4,-24(s0)
	li	a5,100
	mulw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-20(s0)
	addw	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-28(s0)
 #APP
# 9 "test1/test1.c" 1
	.insn r 0x33, 0, 0, a1, zero, a5
# 0 "" 2
# 10 "test1/test1.c" 1
	.insn i 0x13, 0, a0, zero, 1
# 0 "" 2
# 11 "test1/test1.c" 1
	ecall
# 0 "" 2
# 12 "test1/test1.c" 1
	.insn i 0x13, 0, a0, zero, 10
# 0 "" 2
# 13 "test1/test1.c" 1
	ecall
# 0 "" 2
 #NO_APP
	li	a5,0
	mv	a0,a5
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 10.2.0"
