	.file	"quicksort.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	a
	.section	.sdata,"aw"
	.align	3
	.type	a, @object
	.size	a, 8
a:
	.word	1
	.word	3
	.text
	.align	2
	.globl	quick_sort
	.type	quick_sort, @function
quick_sort:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	sd	a0,-40(s0)
	mv	a5,a1
	mv	a4,a2
	sw	a5,-44(s0)
	mv	a5,a4
	sw	a5,-48(s0)
	lw	a4,-44(s0)
	lw	a5,-48(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bge	a4,a5,.L7 // 
	lw	a5,-44(s0)
	addiw	a5,a5,-1 // i = l-1
	sw	a5,-20(s0)
	lw	a5,-48(s0)
	addiw	a5,a5,1  // j = r+1
	sw	a5,-24(s0)
	lw	a4,-44(s0)
	lw	a5,-48(s0)
	addw	a5,a4,a5 // i+j
	sext.w	a5,a5
	sraiw	a5,a5,1  // >> 1
	sext.w	a5,a5
	slli	a5,a5,2  //计算数组地址
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
	j	.L4
.L5:
	lw	a5,-20(s0)
	addiw	a5,a5,1  // i+1
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-28(s0)
	sext.w	a5,a5
	bgt	a5,a4,.L5    //do-while
.L6:
	lw	a5,-24(s0)
	addiw	a5,a5,-1 // j-1
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-28(s0)
	sext.w	a5,a5
	blt	a5,a4,.L6    //do-while
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bge	a4,a5,.L4    //
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-32(s0)
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a4,a4,a5
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a3,-40(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,-32(s0)
	sw	a4,0(a5)
.L4:
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L5 //
	lw	a4,-24(s0)
	lw	a5,-44(s0)
	mv	a2,a4
	mv	a1,a5
	ld	a0,-40(s0)
	call	quick_sort
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	lw	a4,-48(s0)
	mv	a2,a4
	mv	a1,a5
	ld	a0,-40(s0)
	call	quick_sort
	j	.L1
.L7:
	nop
.L1:
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	quick_sort, .-quick_sort
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	addi	s0,sp,32
	li	a2,1
	li	a1,0
	lui	a5,%hi(a)
	addi	a0,a5,%lo(a)
	call	quick_sort
	sw	zero,-20(s0)
	j	.L9
.L10:
	lui	a5,%hi(a)
	lw	a4,-20(s0)
	slli	a4,a4,2
	addi	a5,a5,%lo(a)
	add	a5,a4,a5
	lw	a5,0(a5)
 #APP
# 34 "quicksort/quicksort.c" 1
	.insn r 0x33, 0, 0, a1, zero, a5
# 0 "" 2
# 34 "quicksort/quicksort.c" 1
	.insn i 0x13, 0, a0, zero, 1
# 0 "" 2
# 34 "quicksort/quicksort.c" 1
	ecall
# 0 "" 2
 #NO_APP
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L9:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L10
 #APP
# 36 "quicksort/quicksort.c" 1
	.insn i 0x13, 0, a0, zero, 10
# 0 "" 2
# 36 "quicksort/quicksort.c" 1
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
