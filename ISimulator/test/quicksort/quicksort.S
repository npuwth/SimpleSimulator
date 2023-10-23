
quicksort/quicksort:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00010537          	lui	a0,0x10
   100bc:	69450513          	addi	a0,a0,1684 # 10694 <__libc_fini_array>
   100c0:	5c00006f          	j	10680 <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00002197          	auipc	gp,0x2
   100cc:	f2818193          	addi	gp,gp,-216 # 11ff0 <__global_pointer$>
   100d0:	f6818513          	addi	a0,gp,-152 # 11f58 <completed.1>
   100d4:	fa018613          	addi	a2,gp,-96 # 11f90 <__BSS_END__>
   100d8:	40a60633          	sub	a2,a2,a0
   100dc:	00000593          	li	a1,0
   100e0:	39c000ef          	jal	ra,1047c <memset>
   100e4:	00000517          	auipc	a0,0x0
   100e8:	59c50513          	addi	a0,a0,1436 # 10680 <atexit>
   100ec:	00050863          	beqz	a0,100fc <_start+0x34>
   100f0:	00000517          	auipc	a0,0x0
   100f4:	5a450513          	addi	a0,a0,1444 # 10694 <__libc_fini_array>
   100f8:	588000ef          	jal	ra,10680 <atexit>
   100fc:	2e4000ef          	jal	ra,103e0 <__libc_init_array>
   10100:	00012503          	lw	a0,0(sp)
   10104:	00810593          	addi	a1,sp,8
   10108:	00000613          	li	a2,0
   1010c:	220000ef          	jal	ra,1032c <main>
   10110:	2a00006f          	j	103b0 <exit>

0000000000010114 <__do_global_dtors_aux>:
   10114:	f681c703          	lbu	a4,-152(gp) # 11f58 <completed.1>
   10118:	04071263          	bnez	a4,1015c <__do_global_dtors_aux+0x48>
   1011c:	ff010113          	addi	sp,sp,-16
   10120:	00813023          	sd	s0,0(sp)
   10124:	00078413          	mv	s0,a5
   10128:	00113423          	sd	ra,8(sp)
   1012c:	00000793          	li	a5,0
   10130:	00078a63          	beqz	a5,10144 <__do_global_dtors_aux+0x30>
   10134:	00011537          	lui	a0,0x11
   10138:	7d050513          	addi	a0,a0,2000 # 117d0 <__FRAME_END__>
   1013c:	00000097          	auipc	ra,0x0
   10140:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10144:	00100793          	li	a5,1
   10148:	00813083          	ld	ra,8(sp)
   1014c:	f6f18423          	sb	a5,-152(gp) # 11f58 <completed.1>
   10150:	00013403          	ld	s0,0(sp)
   10154:	01010113          	addi	sp,sp,16
   10158:	00008067          	ret
   1015c:	00008067          	ret

0000000000010160 <frame_dummy>:
   10160:	00000793          	li	a5,0
   10164:	00078c63          	beqz	a5,1017c <frame_dummy+0x1c>
   10168:	00011537          	lui	a0,0x11
   1016c:	f7018593          	addi	a1,gp,-144 # 11f60 <object.0>
   10170:	7d050513          	addi	a0,a0,2000 # 117d0 <__FRAME_END__>
   10174:	00000317          	auipc	t1,0x0
   10178:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   1017c:	00008067          	ret

0000000000010180 <quick_sort>:
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
   101a8:	fd442703          	lw	a4,-44(s0)
   101ac:	fd042783          	lw	a5,-48(s0)
   101b0:	0007071b          	sext.w	a4,a4
   101b4:	0007879b          	sext.w	a5,a5
   101b8:	16f75063          	bge	a4,a5,10318 <quick_sort+0x198>
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
   10200:	0c80006f          	j	102c8 <quick_sort+0x148>
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
   1025c:	fec42703          	lw	a4,-20(s0)
   10260:	fe842783          	lw	a5,-24(s0)
   10264:	0007071b          	sext.w	a4,a4
   10268:	0007879b          	sext.w	a5,a5
   1026c:	04f75e63          	bge	a4,a5,102c8 <quick_sort+0x148>
   10270:	fec42783          	lw	a5,-20(s0)
   10274:	00279793          	slli	a5,a5,0x2
   10278:	fd843703          	ld	a4,-40(s0)
   1027c:	00f707b3          	add	a5,a4,a5
   10280:	0007a783          	lw	a5,0(a5)
   10284:	fef42023          	sw	a5,-32(s0)
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
   102b0:	fe842783          	lw	a5,-24(s0)
   102b4:	00279793          	slli	a5,a5,0x2
   102b8:	fd843703          	ld	a4,-40(s0)
   102bc:	00f707b3          	add	a5,a4,a5
   102c0:	fe042703          	lw	a4,-32(s0)
   102c4:	00e7a023          	sw	a4,0(a5)
   102c8:	fec42703          	lw	a4,-20(s0)
   102cc:	fe842783          	lw	a5,-24(s0)
   102d0:	0007071b          	sext.w	a4,a4
   102d4:	0007879b          	sext.w	a5,a5
   102d8:	f2f746e3          	blt	a4,a5,10204 <quick_sort+0x84>
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
   10318:	00000013          	nop
   1031c:	02813083          	ld	ra,40(sp)
   10320:	02013403          	ld	s0,32(sp)
   10324:	03010113          	addi	sp,sp,48
   10328:	00008067          	ret

000000000001032c <main>:
   1032c:	fe010113          	addi	sp,sp,-32
   10330:	00113c23          	sd	ra,24(sp)
   10334:	00813823          	sd	s0,16(sp)
   10338:	02010413          	addi	s0,sp,32
   1033c:	00100613          	li	a2,1
   10340:	00000593          	li	a1,0
   10344:	f5818513          	addi	a0,gp,-168 # 11f48 <a>
   10348:	e39ff0ef          	jal	ra,10180 <quick_sort>
   1034c:	fe042623          	sw	zero,-20(s0)
   10350:	0300006f          	j	10380 <main+0x54>
   10354:	fec42703          	lw	a4,-20(s0)
   10358:	00271713          	slli	a4,a4,0x2
   1035c:	f5818793          	addi	a5,gp,-168 # 11f48 <a>
   10360:	00f707b3          	add	a5,a4,a5
   10364:	0007a783          	lw	a5,0(a5)
   10368:	00f005b3          	add	a1,zero,a5
   1036c:	00100513          	li	a0,1
   10370:	00000073          	ecall
   10374:	fec42783          	lw	a5,-20(s0)
   10378:	0017879b          	addiw	a5,a5,1
   1037c:	fef42623          	sw	a5,-20(s0)
   10380:	fec42783          	lw	a5,-20(s0)
   10384:	0007871b          	sext.w	a4,a5
   10388:	00100793          	li	a5,1
   1038c:	fce7d4e3          	bge	a5,a4,10354 <main+0x28>
   10390:	00a00513          	li	a0,10
   10394:	00000073          	ecall
   10398:	00000793          	li	a5,0
   1039c:	00078513          	mv	a0,a5
   103a0:	01813083          	ld	ra,24(sp)
   103a4:	01013403          	ld	s0,16(sp)
   103a8:	02010113          	addi	sp,sp,32
   103ac:	00008067          	ret

00000000000103b0 <exit>:
   103b0:	ff010113          	addi	sp,sp,-16
   103b4:	00000593          	li	a1,0
   103b8:	00813023          	sd	s0,0(sp)
   103bc:	00113423          	sd	ra,8(sp)
   103c0:	00050413          	mv	s0,a0
   103c4:	194000ef          	jal	ra,10558 <__call_exitprocs>
   103c8:	f481b503          	ld	a0,-184(gp) # 11f38 <_global_impure_ptr>
   103cc:	05853783          	ld	a5,88(a0)
   103d0:	00078463          	beqz	a5,103d8 <exit+0x28>
   103d4:	000780e7          	jalr	a5
   103d8:	00040513          	mv	a0,s0
   103dc:	3bc000ef          	jal	ra,10798 <_exit>

00000000000103e0 <__libc_init_array>:
   103e0:	fe010113          	addi	sp,sp,-32
   103e4:	00813823          	sd	s0,16(sp)
   103e8:	01213023          	sd	s2,0(sp)
   103ec:	00011437          	lui	s0,0x11
   103f0:	00011937          	lui	s2,0x11
   103f4:	7d440793          	addi	a5,s0,2004 # 117d4 <__preinit_array_end>
   103f8:	7d490913          	addi	s2,s2,2004 # 117d4 <__preinit_array_end>
   103fc:	40f90933          	sub	s2,s2,a5
   10400:	00113c23          	sd	ra,24(sp)
   10404:	00913423          	sd	s1,8(sp)
   10408:	40395913          	srai	s2,s2,0x3
   1040c:	02090063          	beqz	s2,1042c <__libc_init_array+0x4c>
   10410:	7d440413          	addi	s0,s0,2004
   10414:	00000493          	li	s1,0
   10418:	00043783          	ld	a5,0(s0)
   1041c:	00148493          	addi	s1,s1,1
   10420:	00840413          	addi	s0,s0,8
   10424:	000780e7          	jalr	a5
   10428:	fe9918e3          	bne	s2,s1,10418 <__libc_init_array+0x38>
   1042c:	00011437          	lui	s0,0x11
   10430:	00011937          	lui	s2,0x11
   10434:	7d840793          	addi	a5,s0,2008 # 117d8 <__init_array_start>
   10438:	7e890913          	addi	s2,s2,2024 # 117e8 <__do_global_dtors_aux_fini_array_entry>
   1043c:	40f90933          	sub	s2,s2,a5
   10440:	40395913          	srai	s2,s2,0x3
   10444:	02090063          	beqz	s2,10464 <__libc_init_array+0x84>
   10448:	7d840413          	addi	s0,s0,2008
   1044c:	00000493          	li	s1,0
   10450:	00043783          	ld	a5,0(s0)
   10454:	00148493          	addi	s1,s1,1
   10458:	00840413          	addi	s0,s0,8
   1045c:	000780e7          	jalr	a5
   10460:	fe9918e3          	bne	s2,s1,10450 <__libc_init_array+0x70>
   10464:	01813083          	ld	ra,24(sp)
   10468:	01013403          	ld	s0,16(sp)
   1046c:	00813483          	ld	s1,8(sp)
   10470:	00013903          	ld	s2,0(sp)
   10474:	02010113          	addi	sp,sp,32
   10478:	00008067          	ret

000000000001047c <memset>:
   1047c:	00f00313          	li	t1,15
   10480:	00050713          	mv	a4,a0
   10484:	02c37a63          	bgeu	t1,a2,104b8 <memset+0x3c>
   10488:	00f77793          	andi	a5,a4,15
   1048c:	0a079063          	bnez	a5,1052c <memset+0xb0>
   10490:	06059e63          	bnez	a1,1050c <memset+0x90>
   10494:	ff067693          	andi	a3,a2,-16
   10498:	00f67613          	andi	a2,a2,15
   1049c:	00e686b3          	add	a3,a3,a4
   104a0:	00b73023          	sd	a1,0(a4)
   104a4:	00b73423          	sd	a1,8(a4)
   104a8:	01070713          	addi	a4,a4,16
   104ac:	fed76ae3          	bltu	a4,a3,104a0 <memset+0x24>
   104b0:	00061463          	bnez	a2,104b8 <memset+0x3c>
   104b4:	00008067          	ret
   104b8:	40c306b3          	sub	a3,t1,a2
   104bc:	00269693          	slli	a3,a3,0x2
   104c0:	00000297          	auipc	t0,0x0
   104c4:	005686b3          	add	a3,a3,t0
   104c8:	00c68067          	jr	12(a3)
   104cc:	00b70723          	sb	a1,14(a4)
   104d0:	00b706a3          	sb	a1,13(a4)
   104d4:	00b70623          	sb	a1,12(a4)
   104d8:	00b705a3          	sb	a1,11(a4)
   104dc:	00b70523          	sb	a1,10(a4)
   104e0:	00b704a3          	sb	a1,9(a4)
   104e4:	00b70423          	sb	a1,8(a4)
   104e8:	00b703a3          	sb	a1,7(a4)
   104ec:	00b70323          	sb	a1,6(a4)
   104f0:	00b702a3          	sb	a1,5(a4)
   104f4:	00b70223          	sb	a1,4(a4)
   104f8:	00b701a3          	sb	a1,3(a4)
   104fc:	00b70123          	sb	a1,2(a4)
   10500:	00b700a3          	sb	a1,1(a4)
   10504:	00b70023          	sb	a1,0(a4)
   10508:	00008067          	ret
   1050c:	0ff5f593          	zext.b	a1,a1
   10510:	00859693          	slli	a3,a1,0x8
   10514:	00d5e5b3          	or	a1,a1,a3
   10518:	01059693          	slli	a3,a1,0x10
   1051c:	00d5e5b3          	or	a1,a1,a3
   10520:	02059693          	slli	a3,a1,0x20
   10524:	00d5e5b3          	or	a1,a1,a3
   10528:	f6dff06f          	j	10494 <memset+0x18>
   1052c:	00279693          	slli	a3,a5,0x2
   10530:	00000297          	auipc	t0,0x0
   10534:	005686b3          	add	a3,a3,t0
   10538:	00008293          	mv	t0,ra
   1053c:	f98680e7          	jalr	-104(a3)
   10540:	00028093          	mv	ra,t0
   10544:	ff078793          	addi	a5,a5,-16
   10548:	40f70733          	sub	a4,a4,a5
   1054c:	00f60633          	add	a2,a2,a5
   10550:	f6c374e3          	bgeu	t1,a2,104b8 <memset+0x3c>
   10554:	f3dff06f          	j	10490 <memset+0x14>

0000000000010558 <__call_exitprocs>:
   10558:	fb010113          	addi	sp,sp,-80
   1055c:	03413023          	sd	s4,32(sp)
   10560:	f481ba03          	ld	s4,-184(gp) # 11f38 <_global_impure_ptr>
   10564:	03213823          	sd	s2,48(sp)
   10568:	04113423          	sd	ra,72(sp)
   1056c:	1f8a3903          	ld	s2,504(s4)
   10570:	04813023          	sd	s0,64(sp)
   10574:	02913c23          	sd	s1,56(sp)
   10578:	03313423          	sd	s3,40(sp)
   1057c:	01513c23          	sd	s5,24(sp)
   10580:	01613823          	sd	s6,16(sp)
   10584:	01713423          	sd	s7,8(sp)
   10588:	01813023          	sd	s8,0(sp)
   1058c:	04090063          	beqz	s2,105cc <__call_exitprocs+0x74>
   10590:	00050b13          	mv	s6,a0
   10594:	00058b93          	mv	s7,a1
   10598:	00100a93          	li	s5,1
   1059c:	fff00993          	li	s3,-1
   105a0:	00892483          	lw	s1,8(s2)
   105a4:	fff4841b          	addiw	s0,s1,-1
   105a8:	02044263          	bltz	s0,105cc <__call_exitprocs+0x74>
   105ac:	00349493          	slli	s1,s1,0x3
   105b0:	009904b3          	add	s1,s2,s1
   105b4:	040b8463          	beqz	s7,105fc <__call_exitprocs+0xa4>
   105b8:	2084b783          	ld	a5,520(s1)
   105bc:	05778063          	beq	a5,s7,105fc <__call_exitprocs+0xa4>
   105c0:	fff4041b          	addiw	s0,s0,-1
   105c4:	ff848493          	addi	s1,s1,-8
   105c8:	ff3416e3          	bne	s0,s3,105b4 <__call_exitprocs+0x5c>
   105cc:	04813083          	ld	ra,72(sp)
   105d0:	04013403          	ld	s0,64(sp)
   105d4:	03813483          	ld	s1,56(sp)
   105d8:	03013903          	ld	s2,48(sp)
   105dc:	02813983          	ld	s3,40(sp)
   105e0:	02013a03          	ld	s4,32(sp)
   105e4:	01813a83          	ld	s5,24(sp)
   105e8:	01013b03          	ld	s6,16(sp)
   105ec:	00813b83          	ld	s7,8(sp)
   105f0:	00013c03          	ld	s8,0(sp)
   105f4:	05010113          	addi	sp,sp,80
   105f8:	00008067          	ret
   105fc:	00892783          	lw	a5,8(s2)
   10600:	0084b703          	ld	a4,8(s1)
   10604:	fff7879b          	addiw	a5,a5,-1
   10608:	06878263          	beq	a5,s0,1066c <__call_exitprocs+0x114>
   1060c:	0004b423          	sd	zero,8(s1)
   10610:	fa0708e3          	beqz	a4,105c0 <__call_exitprocs+0x68>
   10614:	31092783          	lw	a5,784(s2)
   10618:	008a96bb          	sllw	a3,s5,s0
   1061c:	00892c03          	lw	s8,8(s2)
   10620:	00d7f7b3          	and	a5,a5,a3
   10624:	0007879b          	sext.w	a5,a5
   10628:	02079263          	bnez	a5,1064c <__call_exitprocs+0xf4>
   1062c:	000700e7          	jalr	a4
   10630:	00892703          	lw	a4,8(s2)
   10634:	1f8a3783          	ld	a5,504(s4)
   10638:	01871463          	bne	a4,s8,10640 <__call_exitprocs+0xe8>
   1063c:	f92782e3          	beq	a5,s2,105c0 <__call_exitprocs+0x68>
   10640:	f80786e3          	beqz	a5,105cc <__call_exitprocs+0x74>
   10644:	00078913          	mv	s2,a5
   10648:	f59ff06f          	j	105a0 <__call_exitprocs+0x48>
   1064c:	31492783          	lw	a5,788(s2)
   10650:	1084b583          	ld	a1,264(s1)
   10654:	00d7f7b3          	and	a5,a5,a3
   10658:	0007879b          	sext.w	a5,a5
   1065c:	00079c63          	bnez	a5,10674 <__call_exitprocs+0x11c>
   10660:	000b0513          	mv	a0,s6
   10664:	000700e7          	jalr	a4
   10668:	fc9ff06f          	j	10630 <__call_exitprocs+0xd8>
   1066c:	00892423          	sw	s0,8(s2)
   10670:	fa1ff06f          	j	10610 <__call_exitprocs+0xb8>
   10674:	00058513          	mv	a0,a1
   10678:	000700e7          	jalr	a4
   1067c:	fb5ff06f          	j	10630 <__call_exitprocs+0xd8>

0000000000010680 <atexit>:
   10680:	00050593          	mv	a1,a0
   10684:	00000693          	li	a3,0
   10688:	00000613          	li	a2,0
   1068c:	00000513          	li	a0,0
   10690:	0600006f          	j	106f0 <__register_exitproc>

0000000000010694 <__libc_fini_array>:
   10694:	fe010113          	addi	sp,sp,-32
   10698:	00813823          	sd	s0,16(sp)
   1069c:	000117b7          	lui	a5,0x11
   106a0:	00011437          	lui	s0,0x11
   106a4:	7e840413          	addi	s0,s0,2024 # 117e8 <__do_global_dtors_aux_fini_array_entry>
   106a8:	7f078793          	addi	a5,a5,2032 # 117f0 <impure_data>
   106ac:	408787b3          	sub	a5,a5,s0
   106b0:	00913423          	sd	s1,8(sp)
   106b4:	00113c23          	sd	ra,24(sp)
   106b8:	4037d493          	srai	s1,a5,0x3
   106bc:	02048063          	beqz	s1,106dc <__libc_fini_array+0x48>
   106c0:	ff878793          	addi	a5,a5,-8
   106c4:	00878433          	add	s0,a5,s0
   106c8:	00043783          	ld	a5,0(s0)
   106cc:	fff48493          	addi	s1,s1,-1
   106d0:	ff840413          	addi	s0,s0,-8
   106d4:	000780e7          	jalr	a5
   106d8:	fe0498e3          	bnez	s1,106c8 <__libc_fini_array+0x34>
   106dc:	01813083          	ld	ra,24(sp)
   106e0:	01013403          	ld	s0,16(sp)
   106e4:	00813483          	ld	s1,8(sp)
   106e8:	02010113          	addi	sp,sp,32
   106ec:	00008067          	ret

00000000000106f0 <__register_exitproc>:
   106f0:	f481b703          	ld	a4,-184(gp) # 11f38 <_global_impure_ptr>
   106f4:	1f873783          	ld	a5,504(a4)
   106f8:	06078063          	beqz	a5,10758 <__register_exitproc+0x68>
   106fc:	0087a703          	lw	a4,8(a5)
   10700:	01f00813          	li	a6,31
   10704:	08e84663          	blt	a6,a4,10790 <__register_exitproc+0xa0>
   10708:	02050863          	beqz	a0,10738 <__register_exitproc+0x48>
   1070c:	00371813          	slli	a6,a4,0x3
   10710:	01078833          	add	a6,a5,a6
   10714:	10c83823          	sd	a2,272(a6)
   10718:	3107a883          	lw	a7,784(a5)
   1071c:	00100613          	li	a2,1
   10720:	00e6163b          	sllw	a2,a2,a4
   10724:	00c8e8b3          	or	a7,a7,a2
   10728:	3117a823          	sw	a7,784(a5)
   1072c:	20d83823          	sd	a3,528(a6)
   10730:	00200693          	li	a3,2
   10734:	02d50863          	beq	a0,a3,10764 <__register_exitproc+0x74>
   10738:	00270693          	addi	a3,a4,2
   1073c:	00369693          	slli	a3,a3,0x3
   10740:	0017071b          	addiw	a4,a4,1
   10744:	00e7a423          	sw	a4,8(a5)
   10748:	00d787b3          	add	a5,a5,a3
   1074c:	00b7b023          	sd	a1,0(a5)
   10750:	00000513          	li	a0,0
   10754:	00008067          	ret
   10758:	20070793          	addi	a5,a4,512
   1075c:	1ef73c23          	sd	a5,504(a4)
   10760:	f9dff06f          	j	106fc <__register_exitproc+0xc>
   10764:	3147a683          	lw	a3,788(a5)
   10768:	00000513          	li	a0,0
   1076c:	00c6e633          	or	a2,a3,a2
   10770:	00270693          	addi	a3,a4,2
   10774:	00369693          	slli	a3,a3,0x3
   10778:	0017071b          	addiw	a4,a4,1
   1077c:	30c7aa23          	sw	a2,788(a5)
   10780:	00e7a423          	sw	a4,8(a5)
   10784:	00d787b3          	add	a5,a5,a3
   10788:	00b7b023          	sd	a1,0(a5)
   1078c:	00008067          	ret
   10790:	fff00513          	li	a0,-1
   10794:	00008067          	ret

0000000000010798 <_exit>:
   10798:	05d00893          	li	a7,93
   1079c:	00000073          	ecall
   107a0:	00054463          	bltz	a0,107a8 <_exit+0x10>
   107a4:	0000006f          	j	107a4 <_exit+0xc>
   107a8:	ff010113          	addi	sp,sp,-16
   107ac:	00813023          	sd	s0,0(sp)
   107b0:	00050413          	mv	s0,a0
   107b4:	00113423          	sd	ra,8(sp)
   107b8:	4080043b          	negw	s0,s0
   107bc:	00c000ef          	jal	ra,107c8 <__errno>
   107c0:	00852023          	sw	s0,0(a0)
   107c4:	0000006f          	j	107c4 <_exit+0x2c>

00000000000107c8 <__errno>:
   107c8:	f601b503          	ld	a0,-160(gp) # 11f50 <_impure_ptr>
   107cc:	00008067          	ret
