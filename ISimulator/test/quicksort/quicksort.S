
quicksort/quicksort:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00010537          	lui	a0,0x10
   100bc:	69c50513          	addi	a0,a0,1692 # 1069c <__libc_fini_array>
   100c0:	5c80006f          	j	10688 <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00002197          	auipc	gp,0x2
   100cc:	f3018193          	addi	gp,gp,-208 # 11ff8 <__global_pointer$>
   100d0:	f8818513          	addi	a0,gp,-120 # 11f80 <completed.1>
   100d4:	fc018613          	addi	a2,gp,-64 # 11fb8 <__BSS_END__>
   100d8:	40a60633          	sub	a2,a2,a0
   100dc:	00000593          	li	a1,0
   100e0:	3a4000ef          	jal	ra,10484 <memset>
   100e4:	00000517          	auipc	a0,0x0
   100e8:	5a450513          	addi	a0,a0,1444 # 10688 <atexit>
   100ec:	00050863          	beqz	a0,100fc <_start+0x34>
   100f0:	00000517          	auipc	a0,0x0
   100f4:	5ac50513          	addi	a0,a0,1452 # 1069c <__libc_fini_array>
   100f8:	590000ef          	jal	ra,10688 <atexit>
   100fc:	2ec000ef          	jal	ra,103e8 <__libc_init_array>
   10100:	00012503          	lw	a0,0(sp)
   10104:	00810593          	addi	a1,sp,8
   10108:	00000613          	li	a2,0
   1010c:	220000ef          	jal	ra,1032c <main>
   10110:	2a80006f          	j	103b8 <exit>

0000000000010114 <__do_global_dtors_aux>:
   10114:	f881c703          	lbu	a4,-120(gp) # 11f80 <completed.1>
   10118:	04071263          	bnez	a4,1015c <__do_global_dtors_aux+0x48>
   1011c:	ff010113          	addi	sp,sp,-16
   10120:	00813023          	sd	s0,0(sp)
   10124:	00078413          	mv	s0,a5
   10128:	00113423          	sd	ra,8(sp)
   1012c:	00000793          	li	a5,0
   10130:	00078a63          	beqz	a5,10144 <__do_global_dtors_aux+0x30>
   10134:	00011537          	lui	a0,0x11
   10138:	7d850513          	addi	a0,a0,2008 # 117d8 <__FRAME_END__>
   1013c:	00000097          	auipc	ra,0x0
   10140:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10144:	00100793          	li	a5,1
   10148:	00813083          	ld	ra,8(sp)
   1014c:	f8f18423          	sb	a5,-120(gp) # 11f80 <completed.1>
   10150:	00013403          	ld	s0,0(sp)
   10154:	01010113          	addi	sp,sp,16
   10158:	00008067          	ret
   1015c:	00008067          	ret

0000000000010160 <frame_dummy>:
   10160:	00000793          	li	a5,0
   10164:	00078c63          	beqz	a5,1017c <frame_dummy+0x1c>
   10168:	00011537          	lui	a0,0x11
   1016c:	f9018593          	addi	a1,gp,-112 # 11f88 <object.0>
   10170:	7d850513          	addi	a0,a0,2008 # 117d8 <__FRAME_END__>
   10174:	00000317          	auipc	t1,0x0
   10178:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   1017c:	00008067          	ret

0000000000010180 <quick_sort>:
#define MAXNUM 10

int a[MAXNUM] = {1, 3, 7, 5, 9, 6, 4, 2, 0, 8};
// int a[MAXNUM] = {1, 3};

void quick_sort(int q[], int l, int r) {
   10180:	fd010113          	addi	sp,sp,-48
   10184:	02113423          	sd	ra,40(sp)
   10188:	02813023          	sd	s0,32(sp)
   1018c:	03010413          	addi	s0,sp,48
   10190:	fca43c23          	sd	a0,-40(s0)
   10194:	00058793          	mv	a5,a1
   10198:	00060713          	mv	a4,a2
   1019c:	fcf42a23          	sw	a5,-44(s0)
   101a0:	00070793          	mv	a5,a4
   101a4:	fcf42823          	sw	a5,-48(s0)
	if(l >= r) return;
   101a8:	fd442703          	lw	a4,-44(s0)
   101ac:	fd042783          	lw	a5,-48(s0)
   101b0:	0007071b          	sext.w	a4,a4
   101b4:	0007879b          	sext.w	a5,a5
   101b8:	16f75063          	bge	a4,a5,10318 <quick_sort+0x198>
	int i = l - 1, j = r + 1, x = q[(l + r)>>1];
   101bc:	fd442783          	lw	a5,-44(s0)
   101c0:	fff7879b          	addiw	a5,a5,-1
   101c4:	fef42623          	sw	a5,-20(s0)
   101c8:	fd042783          	lw	a5,-48(s0)
   101cc:	0017879b          	addiw	a5,a5,1
   101d0:	fef42423          	sw	a5,-24(s0)
   101d4:	fd442703          	lw	a4,-44(s0)
   101d8:	fd042783          	lw	a5,-48(s0)
   101dc:	00f707bb          	addw	a5,a4,a5
   101e0:	0007879b          	sext.w	a5,a5
   101e4:	4017d79b          	sraiw	a5,a5,0x1
   101e8:	0007879b          	sext.w	a5,a5
   101ec:	00279793          	slli	a5,a5,0x2
   101f0:	fd843703          	ld	a4,-40(s0)
   101f4:	00f707b3          	add	a5,a4,a5
   101f8:	0007a783          	lw	a5,0(a5)
   101fc:	fef42223          	sw	a5,-28(s0)
	while(i < j) {
   10200:	0c80006f          	j	102c8 <quick_sort+0x148>
		do i++; while(q[i] < x);
   10204:	fec42783          	lw	a5,-20(s0)
   10208:	0017879b          	addiw	a5,a5,1
   1020c:	fef42623          	sw	a5,-20(s0)
   10210:	fec42783          	lw	a5,-20(s0)
   10214:	00279793          	slli	a5,a5,0x2
   10218:	fd843703          	ld	a4,-40(s0)
   1021c:	00f707b3          	add	a5,a4,a5
   10220:	0007a703          	lw	a4,0(a5)
   10224:	fe442783          	lw	a5,-28(s0)
   10228:	0007879b          	sext.w	a5,a5
   1022c:	fcf74ce3          	blt	a4,a5,10204 <quick_sort+0x84>
		do j--; while(q[j] > x);
   10230:	fe842783          	lw	a5,-24(s0)
   10234:	fff7879b          	addiw	a5,a5,-1
   10238:	fef42423          	sw	a5,-24(s0)
   1023c:	fe842783          	lw	a5,-24(s0)
   10240:	00279793          	slli	a5,a5,0x2
   10244:	fd843703          	ld	a4,-40(s0)
   10248:	00f707b3          	add	a5,a4,a5
   1024c:	0007a703          	lw	a4,0(a5)
   10250:	fe442783          	lw	a5,-28(s0)
   10254:	0007879b          	sext.w	a5,a5
   10258:	fce7cce3          	blt	a5,a4,10230 <quick_sort+0xb0>
		if(i < j) {
   1025c:	fec42703          	lw	a4,-20(s0)
   10260:	fe842783          	lw	a5,-24(s0)
   10264:	0007071b          	sext.w	a4,a4
   10268:	0007879b          	sext.w	a5,a5
   1026c:	04f75e63          	bge	a4,a5,102c8 <quick_sort+0x148>
			int t = q[i];
   10270:	fec42783          	lw	a5,-20(s0)
   10274:	00279793          	slli	a5,a5,0x2
   10278:	fd843703          	ld	a4,-40(s0)
   1027c:	00f707b3          	add	a5,a4,a5
   10280:	0007a783          	lw	a5,0(a5)
   10284:	fef42023          	sw	a5,-32(s0)
			q[i] = q[j];
   10288:	fe842783          	lw	a5,-24(s0)
   1028c:	00279793          	slli	a5,a5,0x2
   10290:	fd843703          	ld	a4,-40(s0)
   10294:	00f70733          	add	a4,a4,a5
   10298:	fec42783          	lw	a5,-20(s0)
   1029c:	00279793          	slli	a5,a5,0x2
   102a0:	fd843683          	ld	a3,-40(s0)
   102a4:	00f687b3          	add	a5,a3,a5
   102a8:	00072703          	lw	a4,0(a4)
   102ac:	00e7a023          	sw	a4,0(a5)
			q[j] = t;
   102b0:	fe842783          	lw	a5,-24(s0)
   102b4:	00279793          	slli	a5,a5,0x2
   102b8:	fd843703          	ld	a4,-40(s0)
   102bc:	00f707b3          	add	a5,a4,a5
   102c0:	fe042703          	lw	a4,-32(s0)
   102c4:	00e7a023          	sw	a4,0(a5)
	while(i < j) {
   102c8:	fec42703          	lw	a4,-20(s0)
   102cc:	fe842783          	lw	a5,-24(s0)
   102d0:	0007071b          	sext.w	a4,a4
   102d4:	0007879b          	sext.w	a5,a5
   102d8:	f2f746e3          	blt	a4,a5,10204 <quick_sort+0x84>
		}
	}
	quick_sort(q, l, j); quick_sort(q, j + 1, r);
   102dc:	fe842703          	lw	a4,-24(s0)
   102e0:	fd442783          	lw	a5,-44(s0)
   102e4:	00070613          	mv	a2,a4
   102e8:	00078593          	mv	a1,a5
   102ec:	fd843503          	ld	a0,-40(s0)
   102f0:	e91ff0ef          	jal	ra,10180 <quick_sort>
   102f4:	fe842783          	lw	a5,-24(s0)
   102f8:	0017879b          	addiw	a5,a5,1
   102fc:	0007879b          	sext.w	a5,a5
   10300:	fd042703          	lw	a4,-48(s0)
   10304:	00070613          	mv	a2,a4
   10308:	00078593          	mv	a1,a5
   1030c:	fd843503          	ld	a0,-40(s0)
   10310:	e71ff0ef          	jal	ra,10180 <quick_sort>
   10314:	0080006f          	j	1031c <quick_sort+0x19c>
	if(l >= r) return;
   10318:	00000013          	nop
}
   1031c:	02813083          	ld	ra,40(sp)
   10320:	02013403          	ld	s0,32(sp)
   10324:	03010113          	addi	sp,sp,48
   10328:	00008067          	ret

000000000001032c <main>:

int main() {
   1032c:	fe010113          	addi	sp,sp,-32
   10330:	00113c23          	sd	ra,24(sp)
   10334:	00813823          	sd	s0,16(sp)
   10338:	02010413          	addi	s0,sp,32

	// for(int i = 0; i < MAXNUM; i++) {
	// 	PRINT(a[i]);
	// }

	quick_sort(a, 0, MAXNUM-1);
   1033c:	00900613          	li	a2,9
   10340:	00000593          	li	a1,0
   10344:	000117b7          	lui	a5,0x11
   10348:	7f878513          	addi	a0,a5,2040 # 117f8 <a>
   1034c:	e35ff0ef          	jal	ra,10180 <quick_sort>

	for(int i = 0; i < MAXNUM; i++) {
   10350:	fe042623          	sw	zero,-20(s0)
   10354:	0340006f          	j	10388 <main+0x5c>
		PRINT(a[i]);
   10358:	000117b7          	lui	a5,0x11
   1035c:	7f878713          	addi	a4,a5,2040 # 117f8 <a>
   10360:	fec42783          	lw	a5,-20(s0)
   10364:	00279793          	slli	a5,a5,0x2
   10368:	00f707b3          	add	a5,a4,a5
   1036c:	0007a783          	lw	a5,0(a5)
   10370:	00f005b3          	add	a1,zero,a5
   10374:	00100513          	li	a0,1
   10378:	00000073          	ecall
	for(int i = 0; i < MAXNUM; i++) {
   1037c:	fec42783          	lw	a5,-20(s0)
   10380:	0017879b          	addiw	a5,a5,1
   10384:	fef42623          	sw	a5,-20(s0)
   10388:	fec42783          	lw	a5,-20(s0)
   1038c:	0007871b          	sext.w	a4,a5
   10390:	00900793          	li	a5,9
   10394:	fce7d2e3          	bge	a5,a4,10358 <main+0x2c>
	}
    EXIT();
   10398:	00a00513          	li	a0,10
   1039c:	00000073          	ecall

	return 0;
   103a0:	00000793          	li	a5,0
   103a4:	00078513          	mv	a0,a5
   103a8:	01813083          	ld	ra,24(sp)
   103ac:	01013403          	ld	s0,16(sp)
   103b0:	02010113          	addi	sp,sp,32
   103b4:	00008067          	ret

00000000000103b8 <exit>:
   103b8:	ff010113          	addi	sp,sp,-16
   103bc:	00000593          	li	a1,0
   103c0:	00813023          	sd	s0,0(sp)
   103c4:	00113423          	sd	ra,8(sp)
   103c8:	00050413          	mv	s0,a0
   103cc:	194000ef          	jal	ra,10560 <__call_exitprocs>
   103d0:	f701b503          	ld	a0,-144(gp) # 11f68 <_global_impure_ptr>
   103d4:	05853783          	ld	a5,88(a0)
   103d8:	00078463          	beqz	a5,103e0 <exit+0x28>
   103dc:	000780e7          	jalr	a5
   103e0:	00040513          	mv	a0,s0
   103e4:	3bc000ef          	jal	ra,107a0 <_exit>

00000000000103e8 <__libc_init_array>:
   103e8:	fe010113          	addi	sp,sp,-32
   103ec:	00813823          	sd	s0,16(sp)
   103f0:	01213023          	sd	s2,0(sp)
   103f4:	00011437          	lui	s0,0x11
   103f8:	00011937          	lui	s2,0x11
   103fc:	7dc40793          	addi	a5,s0,2012 # 117dc <__preinit_array_end>
   10400:	7dc90913          	addi	s2,s2,2012 # 117dc <__preinit_array_end>
   10404:	40f90933          	sub	s2,s2,a5
   10408:	00113c23          	sd	ra,24(sp)
   1040c:	00913423          	sd	s1,8(sp)
   10410:	40395913          	srai	s2,s2,0x3
   10414:	02090063          	beqz	s2,10434 <__libc_init_array+0x4c>
   10418:	7dc40413          	addi	s0,s0,2012
   1041c:	00000493          	li	s1,0
   10420:	00043783          	ld	a5,0(s0)
   10424:	00148493          	addi	s1,s1,1
   10428:	00840413          	addi	s0,s0,8
   1042c:	000780e7          	jalr	a5
   10430:	fe9918e3          	bne	s2,s1,10420 <__libc_init_array+0x38>
   10434:	00011437          	lui	s0,0x11
   10438:	00011937          	lui	s2,0x11
   1043c:	7e040793          	addi	a5,s0,2016 # 117e0 <__init_array_start>
   10440:	7f090913          	addi	s2,s2,2032 # 117f0 <__do_global_dtors_aux_fini_array_entry>
   10444:	40f90933          	sub	s2,s2,a5
   10448:	40395913          	srai	s2,s2,0x3
   1044c:	02090063          	beqz	s2,1046c <__libc_init_array+0x84>
   10450:	7e040413          	addi	s0,s0,2016
   10454:	00000493          	li	s1,0
   10458:	00043783          	ld	a5,0(s0)
   1045c:	00148493          	addi	s1,s1,1
   10460:	00840413          	addi	s0,s0,8
   10464:	000780e7          	jalr	a5
   10468:	fe9918e3          	bne	s2,s1,10458 <__libc_init_array+0x70>
   1046c:	01813083          	ld	ra,24(sp)
   10470:	01013403          	ld	s0,16(sp)
   10474:	00813483          	ld	s1,8(sp)
   10478:	00013903          	ld	s2,0(sp)
   1047c:	02010113          	addi	sp,sp,32
   10480:	00008067          	ret

0000000000010484 <memset>:
   10484:	00f00313          	li	t1,15
   10488:	00050713          	mv	a4,a0
   1048c:	02c37a63          	bgeu	t1,a2,104c0 <memset+0x3c>
   10490:	00f77793          	andi	a5,a4,15
   10494:	0a079063          	bnez	a5,10534 <memset+0xb0>
   10498:	06059e63          	bnez	a1,10514 <memset+0x90>
   1049c:	ff067693          	andi	a3,a2,-16
   104a0:	00f67613          	andi	a2,a2,15
   104a4:	00e686b3          	add	a3,a3,a4
   104a8:	00b73023          	sd	a1,0(a4)
   104ac:	00b73423          	sd	a1,8(a4)
   104b0:	01070713          	addi	a4,a4,16
   104b4:	fed76ae3          	bltu	a4,a3,104a8 <memset+0x24>
   104b8:	00061463          	bnez	a2,104c0 <memset+0x3c>
   104bc:	00008067          	ret
   104c0:	40c306b3          	sub	a3,t1,a2
   104c4:	00269693          	slli	a3,a3,0x2
   104c8:	00000297          	auipc	t0,0x0
   104cc:	005686b3          	add	a3,a3,t0
   104d0:	00c68067          	jr	12(a3)
   104d4:	00b70723          	sb	a1,14(a4)
   104d8:	00b706a3          	sb	a1,13(a4)
   104dc:	00b70623          	sb	a1,12(a4)
   104e0:	00b705a3          	sb	a1,11(a4)
   104e4:	00b70523          	sb	a1,10(a4)
   104e8:	00b704a3          	sb	a1,9(a4)
   104ec:	00b70423          	sb	a1,8(a4)
   104f0:	00b703a3          	sb	a1,7(a4)
   104f4:	00b70323          	sb	a1,6(a4)
   104f8:	00b702a3          	sb	a1,5(a4)
   104fc:	00b70223          	sb	a1,4(a4)
   10500:	00b701a3          	sb	a1,3(a4)
   10504:	00b70123          	sb	a1,2(a4)
   10508:	00b700a3          	sb	a1,1(a4)
   1050c:	00b70023          	sb	a1,0(a4)
   10510:	00008067          	ret
   10514:	0ff5f593          	zext.b	a1,a1
   10518:	00859693          	slli	a3,a1,0x8
   1051c:	00d5e5b3          	or	a1,a1,a3
   10520:	01059693          	slli	a3,a1,0x10
   10524:	00d5e5b3          	or	a1,a1,a3
   10528:	02059693          	slli	a3,a1,0x20
   1052c:	00d5e5b3          	or	a1,a1,a3
   10530:	f6dff06f          	j	1049c <memset+0x18>
   10534:	00279693          	slli	a3,a5,0x2
   10538:	00000297          	auipc	t0,0x0
   1053c:	005686b3          	add	a3,a3,t0
   10540:	00008293          	mv	t0,ra
   10544:	f98680e7          	jalr	-104(a3)
   10548:	00028093          	mv	ra,t0
   1054c:	ff078793          	addi	a5,a5,-16
   10550:	40f70733          	sub	a4,a4,a5
   10554:	00f60633          	add	a2,a2,a5
   10558:	f6c374e3          	bgeu	t1,a2,104c0 <memset+0x3c>
   1055c:	f3dff06f          	j	10498 <memset+0x14>

0000000000010560 <__call_exitprocs>:
   10560:	fb010113          	addi	sp,sp,-80
   10564:	03413023          	sd	s4,32(sp)
   10568:	f701ba03          	ld	s4,-144(gp) # 11f68 <_global_impure_ptr>
   1056c:	03213823          	sd	s2,48(sp)
   10570:	04113423          	sd	ra,72(sp)
   10574:	1f8a3903          	ld	s2,504(s4)
   10578:	04813023          	sd	s0,64(sp)
   1057c:	02913c23          	sd	s1,56(sp)
   10580:	03313423          	sd	s3,40(sp)
   10584:	01513c23          	sd	s5,24(sp)
   10588:	01613823          	sd	s6,16(sp)
   1058c:	01713423          	sd	s7,8(sp)
   10590:	01813023          	sd	s8,0(sp)
   10594:	04090063          	beqz	s2,105d4 <__call_exitprocs+0x74>
   10598:	00050b13          	mv	s6,a0
   1059c:	00058b93          	mv	s7,a1
   105a0:	00100a93          	li	s5,1
   105a4:	fff00993          	li	s3,-1
   105a8:	00892483          	lw	s1,8(s2)
   105ac:	fff4841b          	addiw	s0,s1,-1
   105b0:	02044263          	bltz	s0,105d4 <__call_exitprocs+0x74>
   105b4:	00349493          	slli	s1,s1,0x3
   105b8:	009904b3          	add	s1,s2,s1
   105bc:	040b8463          	beqz	s7,10604 <__call_exitprocs+0xa4>
   105c0:	2084b783          	ld	a5,520(s1)
   105c4:	05778063          	beq	a5,s7,10604 <__call_exitprocs+0xa4>
   105c8:	fff4041b          	addiw	s0,s0,-1
   105cc:	ff848493          	addi	s1,s1,-8
   105d0:	ff3416e3          	bne	s0,s3,105bc <__call_exitprocs+0x5c>
   105d4:	04813083          	ld	ra,72(sp)
   105d8:	04013403          	ld	s0,64(sp)
   105dc:	03813483          	ld	s1,56(sp)
   105e0:	03013903          	ld	s2,48(sp)
   105e4:	02813983          	ld	s3,40(sp)
   105e8:	02013a03          	ld	s4,32(sp)
   105ec:	01813a83          	ld	s5,24(sp)
   105f0:	01013b03          	ld	s6,16(sp)
   105f4:	00813b83          	ld	s7,8(sp)
   105f8:	00013c03          	ld	s8,0(sp)
   105fc:	05010113          	addi	sp,sp,80
   10600:	00008067          	ret
   10604:	00892783          	lw	a5,8(s2)
   10608:	0084b703          	ld	a4,8(s1)
   1060c:	fff7879b          	addiw	a5,a5,-1
   10610:	06878263          	beq	a5,s0,10674 <__call_exitprocs+0x114>
   10614:	0004b423          	sd	zero,8(s1)
   10618:	fa0708e3          	beqz	a4,105c8 <__call_exitprocs+0x68>
   1061c:	31092783          	lw	a5,784(s2)
   10620:	008a96bb          	sllw	a3,s5,s0
   10624:	00892c03          	lw	s8,8(s2)
   10628:	00d7f7b3          	and	a5,a5,a3
   1062c:	0007879b          	sext.w	a5,a5
   10630:	02079263          	bnez	a5,10654 <__call_exitprocs+0xf4>
   10634:	000700e7          	jalr	a4
   10638:	00892703          	lw	a4,8(s2)
   1063c:	1f8a3783          	ld	a5,504(s4)
   10640:	01871463          	bne	a4,s8,10648 <__call_exitprocs+0xe8>
   10644:	f92782e3          	beq	a5,s2,105c8 <__call_exitprocs+0x68>
   10648:	f80786e3          	beqz	a5,105d4 <__call_exitprocs+0x74>
   1064c:	00078913          	mv	s2,a5
   10650:	f59ff06f          	j	105a8 <__call_exitprocs+0x48>
   10654:	31492783          	lw	a5,788(s2)
   10658:	1084b583          	ld	a1,264(s1)
   1065c:	00d7f7b3          	and	a5,a5,a3
   10660:	0007879b          	sext.w	a5,a5
   10664:	00079c63          	bnez	a5,1067c <__call_exitprocs+0x11c>
   10668:	000b0513          	mv	a0,s6
   1066c:	000700e7          	jalr	a4
   10670:	fc9ff06f          	j	10638 <__call_exitprocs+0xd8>
   10674:	00892423          	sw	s0,8(s2)
   10678:	fa1ff06f          	j	10618 <__call_exitprocs+0xb8>
   1067c:	00058513          	mv	a0,a1
   10680:	000700e7          	jalr	a4
   10684:	fb5ff06f          	j	10638 <__call_exitprocs+0xd8>

0000000000010688 <atexit>:
   10688:	00050593          	mv	a1,a0
   1068c:	00000693          	li	a3,0
   10690:	00000613          	li	a2,0
   10694:	00000513          	li	a0,0
   10698:	0600006f          	j	106f8 <__register_exitproc>

000000000001069c <__libc_fini_array>:
   1069c:	fe010113          	addi	sp,sp,-32
   106a0:	00813823          	sd	s0,16(sp)
   106a4:	000117b7          	lui	a5,0x11
   106a8:	00011437          	lui	s0,0x11
   106ac:	7f040413          	addi	s0,s0,2032 # 117f0 <__do_global_dtors_aux_fini_array_entry>
   106b0:	7f878793          	addi	a5,a5,2040 # 117f8 <a>
   106b4:	408787b3          	sub	a5,a5,s0
   106b8:	00913423          	sd	s1,8(sp)
   106bc:	00113c23          	sd	ra,24(sp)
   106c0:	4037d493          	srai	s1,a5,0x3
   106c4:	02048063          	beqz	s1,106e4 <__libc_fini_array+0x48>
   106c8:	ff878793          	addi	a5,a5,-8
   106cc:	00878433          	add	s0,a5,s0
   106d0:	00043783          	ld	a5,0(s0)
   106d4:	fff48493          	addi	s1,s1,-1
   106d8:	ff840413          	addi	s0,s0,-8
   106dc:	000780e7          	jalr	a5
   106e0:	fe0498e3          	bnez	s1,106d0 <__libc_fini_array+0x34>
   106e4:	01813083          	ld	ra,24(sp)
   106e8:	01013403          	ld	s0,16(sp)
   106ec:	00813483          	ld	s1,8(sp)
   106f0:	02010113          	addi	sp,sp,32
   106f4:	00008067          	ret

00000000000106f8 <__register_exitproc>:
   106f8:	f701b703          	ld	a4,-144(gp) # 11f68 <_global_impure_ptr>
   106fc:	1f873783          	ld	a5,504(a4)
   10700:	06078063          	beqz	a5,10760 <__register_exitproc+0x68>
   10704:	0087a703          	lw	a4,8(a5)
   10708:	01f00813          	li	a6,31
   1070c:	08e84663          	blt	a6,a4,10798 <__register_exitproc+0xa0>
   10710:	02050863          	beqz	a0,10740 <__register_exitproc+0x48>
   10714:	00371813          	slli	a6,a4,0x3
   10718:	01078833          	add	a6,a5,a6
   1071c:	10c83823          	sd	a2,272(a6)
   10720:	3107a883          	lw	a7,784(a5)
   10724:	00100613          	li	a2,1
   10728:	00e6163b          	sllw	a2,a2,a4
   1072c:	00c8e8b3          	or	a7,a7,a2
   10730:	3117a823          	sw	a7,784(a5)
   10734:	20d83823          	sd	a3,528(a6)
   10738:	00200693          	li	a3,2
   1073c:	02d50863          	beq	a0,a3,1076c <__register_exitproc+0x74>
   10740:	00270693          	addi	a3,a4,2
   10744:	00369693          	slli	a3,a3,0x3
   10748:	0017071b          	addiw	a4,a4,1
   1074c:	00e7a423          	sw	a4,8(a5)
   10750:	00d787b3          	add	a5,a5,a3
   10754:	00b7b023          	sd	a1,0(a5)
   10758:	00000513          	li	a0,0
   1075c:	00008067          	ret
   10760:	20070793          	addi	a5,a4,512
   10764:	1ef73c23          	sd	a5,504(a4)
   10768:	f9dff06f          	j	10704 <__register_exitproc+0xc>
   1076c:	3147a683          	lw	a3,788(a5)
   10770:	00000513          	li	a0,0
   10774:	00c6e633          	or	a2,a3,a2
   10778:	00270693          	addi	a3,a4,2
   1077c:	00369693          	slli	a3,a3,0x3
   10780:	0017071b          	addiw	a4,a4,1
   10784:	30c7aa23          	sw	a2,788(a5)
   10788:	00e7a423          	sw	a4,8(a5)
   1078c:	00d787b3          	add	a5,a5,a3
   10790:	00b7b023          	sd	a1,0(a5)
   10794:	00008067          	ret
   10798:	fff00513          	li	a0,-1
   1079c:	00008067          	ret

00000000000107a0 <_exit>:
   107a0:	05d00893          	li	a7,93
   107a4:	00000073          	ecall
   107a8:	00054463          	bltz	a0,107b0 <_exit+0x10>
   107ac:	0000006f          	j	107ac <_exit+0xc>
   107b0:	ff010113          	addi	sp,sp,-16
   107b4:	00813023          	sd	s0,0(sp)
   107b8:	00050413          	mv	s0,a0
   107bc:	00113423          	sd	ra,8(sp)
   107c0:	4080043b          	negw	s0,s0
   107c4:	00c000ef          	jal	ra,107d0 <__errno>
   107c8:	00852023          	sw	s0,0(a0)
   107cc:	0000006f          	j	107cc <_exit+0x2c>

00000000000107d0 <__errno>:
   107d0:	f801b503          	ld	a0,-128(gp) # 11f78 <_impure_ptr>
   107d4:	00008067          	ret
