	.file	"ackermann.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	ackermann
	.type	ackermann, @function
ackermann:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	addi	s0,sp,48
	mv	a5,a0
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	lw	a5,-36(s0)
	sext.w	a5,a5
	bne	a5,zero,.L2
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	j	.L3
.L2:
	lw	a5,-40(s0)
	sext.w	a5,a5
	bne	a5,zero,.L4
	lw	a5,-36(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	li	a1,1
	mv	a0,a5
	call	ackermann
	mv	a5,a0
	j	.L3
.L4:
	lw	a5,-36(s0)
	addiw	a5,a5,-1
	sext.w	s1,a5
	lw	a5,-40(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-36(s0)
	mv	a1,a4
	mv	a0,a5
	call	ackermann
	mv	a5,a0
	mv	a1,a5
	mv	a0,s1
	call	ackermann
	mv	a5,a0
.L3:
	mv	a0,a5
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	addi	sp,sp,48
	jr	ra
	.size	ackermann, .-ackermann
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	addi	s0,sp,32
	li	a5,2
	sw	a5,-20(s0)
	li	a5,5
	sw	a5,-24(s0)
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	mv	a1,a4
	mv	a0,a5
	call	ackermann
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a5,-28(s0)
 #APP
# 25 "ackermann/ackermann.c" 1
	.insn r 0x33, 0, 0, a1, zero, a5
# 0 "" 2
# 25 "ackermann/ackermann.c" 1
	.insn i 0x13, 0, a0, zero, 1
# 0 "" 2
# 25 "ackermann/ackermann.c" 1
	ecall
# 0 "" 2
# 26 "ackermann/ackermann.c" 1
	.insn i 0x13, 0, a0, zero, 10
# 0 "" 2
# 26 "ackermann/ackermann.c" 1
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
