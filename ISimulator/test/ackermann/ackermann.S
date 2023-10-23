
ackermann/ackermann:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00010537          	lui	a0,0x10
   100bc:	59450513          	addi	a0,a0,1428 # 10594 <__libc_fini_array>
   100c0:	4c00006f          	j	10580 <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00002197          	auipc	gp,0x2
   100cc:	e2818193          	addi	gp,gp,-472 # 11ef0 <__global_pointer$>
   100d0:	f6018513          	addi	a0,gp,-160 # 11e50 <completed.1>
   100d4:	f9818613          	addi	a2,gp,-104 # 11e88 <__BSS_END__>
   100d8:	40a60633          	sub	a2,a2,a0
   100dc:	00000593          	li	a1,0
   100e0:	29c000ef          	jal	ra,1037c <memset>
   100e4:	00000517          	auipc	a0,0x0
   100e8:	49c50513          	addi	a0,a0,1180 # 10580 <atexit>
   100ec:	00050863          	beqz	a0,100fc <_start+0x34>
   100f0:	00000517          	auipc	a0,0x0
   100f4:	4a450513          	addi	a0,a0,1188 # 10594 <__libc_fini_array>
   100f8:	488000ef          	jal	ra,10580 <atexit>
   100fc:	1e4000ef          	jal	ra,102e0 <__libc_init_array>
   10100:	00012503          	lw	a0,0(sp)
   10104:	00810593          	addi	a1,sp,8
   10108:	00000613          	li	a2,0
   1010c:	138000ef          	jal	ra,10244 <main>
   10110:	1a00006f          	j	102b0 <exit>

0000000000010114 <__do_global_dtors_aux>:
   10114:	f601c703          	lbu	a4,-160(gp) # 11e50 <completed.1>
   10118:	04071263          	bnez	a4,1015c <__do_global_dtors_aux+0x48>
   1011c:	ff010113          	addi	sp,sp,-16
   10120:	00813023          	sd	s0,0(sp)
   10124:	00078413          	mv	s0,a5
   10128:	00113423          	sd	ra,8(sp)
   1012c:	00000793          	li	a5,0
   10130:	00078a63          	beqz	a5,10144 <__do_global_dtors_aux+0x30>
   10134:	00011537          	lui	a0,0x11
   10138:	6d050513          	addi	a0,a0,1744 # 116d0 <__FRAME_END__>
   1013c:	00000097          	auipc	ra,0x0
   10140:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10144:	00100793          	li	a5,1
   10148:	00813083          	ld	ra,8(sp)
   1014c:	f6f18023          	sb	a5,-160(gp) # 11e50 <completed.1>
   10150:	00013403          	ld	s0,0(sp)
   10154:	01010113          	addi	sp,sp,16
   10158:	00008067          	ret
   1015c:	00008067          	ret

0000000000010160 <frame_dummy>:
   10160:	00000793          	li	a5,0
   10164:	00078c63          	beqz	a5,1017c <frame_dummy+0x1c>
   10168:	00011537          	lui	a0,0x11
   1016c:	f6818593          	addi	a1,gp,-152 # 11e58 <object.0>
   10170:	6d050513          	addi	a0,a0,1744 # 116d0 <__FRAME_END__>
   10174:	00000317          	auipc	t1,0x0
   10178:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   1017c:	00008067          	ret

0000000000010180 <ackermann>:
   10180:	fd010113          	addi	sp,sp,-48
   10184:	02113423          	sd	ra,40(sp)
   10188:	02813023          	sd	s0,32(sp)
   1018c:	00913c23          	sd	s1,24(sp)
   10190:	03010413          	addi	s0,sp,48
   10194:	00050793          	mv	a5,a0
   10198:	00058713          	mv	a4,a1
   1019c:	fcf42e23          	sw	a5,-36(s0)
   101a0:	00070793          	mv	a5,a4
   101a4:	fcf42c23          	sw	a5,-40(s0)
   101a8:	fdc42783          	lw	a5,-36(s0)
   101ac:	0007879b          	sext.w	a5,a5
   101b0:	00079a63          	bnez	a5,101c4 <ackermann+0x44>
   101b4:	fd842783          	lw	a5,-40(s0)
   101b8:	0017879b          	addiw	a5,a5,1
   101bc:	0007879b          	sext.w	a5,a5
   101c0:	06c0006f          	j	1022c <ackermann+0xac>
   101c4:	fd842783          	lw	a5,-40(s0)
   101c8:	0007879b          	sext.w	a5,a5
   101cc:	02079263          	bnez	a5,101f0 <ackermann+0x70>
   101d0:	fdc42783          	lw	a5,-36(s0)
   101d4:	fff7879b          	addiw	a5,a5,-1
   101d8:	0007879b          	sext.w	a5,a5
   101dc:	00100593          	li	a1,1
   101e0:	00078513          	mv	a0,a5
   101e4:	f9dff0ef          	jal	ra,10180 <ackermann>
   101e8:	00050793          	mv	a5,a0
   101ec:	0400006f          	j	1022c <ackermann+0xac>
   101f0:	fdc42783          	lw	a5,-36(s0)
   101f4:	fff7879b          	addiw	a5,a5,-1
   101f8:	0007849b          	sext.w	s1,a5
   101fc:	fd842783          	lw	a5,-40(s0)
   10200:	fff7879b          	addiw	a5,a5,-1
   10204:	0007871b          	sext.w	a4,a5
   10208:	fdc42783          	lw	a5,-36(s0)
   1020c:	00070593          	mv	a1,a4
   10210:	00078513          	mv	a0,a5
   10214:	f6dff0ef          	jal	ra,10180 <ackermann>
   10218:	00050793          	mv	a5,a0
   1021c:	00078593          	mv	a1,a5
   10220:	00048513          	mv	a0,s1
   10224:	f5dff0ef          	jal	ra,10180 <ackermann>
   10228:	00050793          	mv	a5,a0
   1022c:	00078513          	mv	a0,a5
   10230:	02813083          	ld	ra,40(sp)
   10234:	02013403          	ld	s0,32(sp)
   10238:	01813483          	ld	s1,24(sp)
   1023c:	03010113          	addi	sp,sp,48
   10240:	00008067          	ret

0000000000010244 <main>:
   10244:	fe010113          	addi	sp,sp,-32
   10248:	00113c23          	sd	ra,24(sp)
   1024c:	00813823          	sd	s0,16(sp)
   10250:	02010413          	addi	s0,sp,32
   10254:	00200793          	li	a5,2
   10258:	fef42623          	sw	a5,-20(s0)
   1025c:	00500793          	li	a5,5
   10260:	fef42423          	sw	a5,-24(s0)
   10264:	fe842703          	lw	a4,-24(s0)
   10268:	fec42783          	lw	a5,-20(s0)
   1026c:	00070593          	mv	a1,a4
   10270:	00078513          	mv	a0,a5
   10274:	f0dff0ef          	jal	ra,10180 <ackermann>
   10278:	00050793          	mv	a5,a0
   1027c:	fef42223          	sw	a5,-28(s0)
   10280:	fe442783          	lw	a5,-28(s0)
   10284:	00f005b3          	add	a1,zero,a5
   10288:	00100513          	li	a0,1
   1028c:	00000073          	ecall
   10290:	00a00513          	li	a0,10
   10294:	00000073          	ecall
   10298:	00000793          	li	a5,0
   1029c:	00078513          	mv	a0,a5
   102a0:	01813083          	ld	ra,24(sp)
   102a4:	01013403          	ld	s0,16(sp)
   102a8:	02010113          	addi	sp,sp,32
   102ac:	00008067          	ret

00000000000102b0 <exit>:
   102b0:	ff010113          	addi	sp,sp,-16
   102b4:	00000593          	li	a1,0
   102b8:	00813023          	sd	s0,0(sp)
   102bc:	00113423          	sd	ra,8(sp)
   102c0:	00050413          	mv	s0,a0
   102c4:	194000ef          	jal	ra,10458 <__call_exitprocs>
   102c8:	f481b503          	ld	a0,-184(gp) # 11e38 <_global_impure_ptr>
   102cc:	05853783          	ld	a5,88(a0)
   102d0:	00078463          	beqz	a5,102d8 <exit+0x28>
   102d4:	000780e7          	jalr	a5
   102d8:	00040513          	mv	a0,s0
   102dc:	3bc000ef          	jal	ra,10698 <_exit>

00000000000102e0 <__libc_init_array>:
   102e0:	fe010113          	addi	sp,sp,-32
   102e4:	00813823          	sd	s0,16(sp)
   102e8:	01213023          	sd	s2,0(sp)
   102ec:	00011437          	lui	s0,0x11
   102f0:	00011937          	lui	s2,0x11
   102f4:	6d440793          	addi	a5,s0,1748 # 116d4 <__preinit_array_end>
   102f8:	6d490913          	addi	s2,s2,1748 # 116d4 <__preinit_array_end>
   102fc:	40f90933          	sub	s2,s2,a5
   10300:	00113c23          	sd	ra,24(sp)
   10304:	00913423          	sd	s1,8(sp)
   10308:	40395913          	srai	s2,s2,0x3
   1030c:	02090063          	beqz	s2,1032c <__libc_init_array+0x4c>
   10310:	6d440413          	addi	s0,s0,1748
   10314:	00000493          	li	s1,0
   10318:	00043783          	ld	a5,0(s0)
   1031c:	00148493          	addi	s1,s1,1
   10320:	00840413          	addi	s0,s0,8
   10324:	000780e7          	jalr	a5
   10328:	fe9918e3          	bne	s2,s1,10318 <__libc_init_array+0x38>
   1032c:	00011437          	lui	s0,0x11
   10330:	00011937          	lui	s2,0x11
   10334:	6d840793          	addi	a5,s0,1752 # 116d8 <__init_array_start>
   10338:	6e890913          	addi	s2,s2,1768 # 116e8 <__do_global_dtors_aux_fini_array_entry>
   1033c:	40f90933          	sub	s2,s2,a5
   10340:	40395913          	srai	s2,s2,0x3
   10344:	02090063          	beqz	s2,10364 <__libc_init_array+0x84>
   10348:	6d840413          	addi	s0,s0,1752
   1034c:	00000493          	li	s1,0
   10350:	00043783          	ld	a5,0(s0)
   10354:	00148493          	addi	s1,s1,1
   10358:	00840413          	addi	s0,s0,8
   1035c:	000780e7          	jalr	a5
   10360:	fe9918e3          	bne	s2,s1,10350 <__libc_init_array+0x70>
   10364:	01813083          	ld	ra,24(sp)
   10368:	01013403          	ld	s0,16(sp)
   1036c:	00813483          	ld	s1,8(sp)
   10370:	00013903          	ld	s2,0(sp)
   10374:	02010113          	addi	sp,sp,32
   10378:	00008067          	ret

000000000001037c <memset>:
   1037c:	00f00313          	li	t1,15
   10380:	00050713          	mv	a4,a0
   10384:	02c37a63          	bgeu	t1,a2,103b8 <memset+0x3c>
   10388:	00f77793          	andi	a5,a4,15
   1038c:	0a079063          	bnez	a5,1042c <memset+0xb0>
   10390:	06059e63          	bnez	a1,1040c <memset+0x90>
   10394:	ff067693          	andi	a3,a2,-16
   10398:	00f67613          	andi	a2,a2,15
   1039c:	00e686b3          	add	a3,a3,a4
   103a0:	00b73023          	sd	a1,0(a4)
   103a4:	00b73423          	sd	a1,8(a4)
   103a8:	01070713          	addi	a4,a4,16
   103ac:	fed76ae3          	bltu	a4,a3,103a0 <memset+0x24>
   103b0:	00061463          	bnez	a2,103b8 <memset+0x3c>
   103b4:	00008067          	ret
   103b8:	40c306b3          	sub	a3,t1,a2
   103bc:	00269693          	slli	a3,a3,0x2
   103c0:	00000297          	auipc	t0,0x0
   103c4:	005686b3          	add	a3,a3,t0
   103c8:	00c68067          	jr	12(a3)
   103cc:	00b70723          	sb	a1,14(a4)
   103d0:	00b706a3          	sb	a1,13(a4)
   103d4:	00b70623          	sb	a1,12(a4)
   103d8:	00b705a3          	sb	a1,11(a4)
   103dc:	00b70523          	sb	a1,10(a4)
   103e0:	00b704a3          	sb	a1,9(a4)
   103e4:	00b70423          	sb	a1,8(a4)
   103e8:	00b703a3          	sb	a1,7(a4)
   103ec:	00b70323          	sb	a1,6(a4)
   103f0:	00b702a3          	sb	a1,5(a4)
   103f4:	00b70223          	sb	a1,4(a4)
   103f8:	00b701a3          	sb	a1,3(a4)
   103fc:	00b70123          	sb	a1,2(a4)
   10400:	00b700a3          	sb	a1,1(a4)
   10404:	00b70023          	sb	a1,0(a4)
   10408:	00008067          	ret
   1040c:	0ff5f593          	zext.b	a1,a1
   10410:	00859693          	slli	a3,a1,0x8
   10414:	00d5e5b3          	or	a1,a1,a3
   10418:	01059693          	slli	a3,a1,0x10
   1041c:	00d5e5b3          	or	a1,a1,a3
   10420:	02059693          	slli	a3,a1,0x20
   10424:	00d5e5b3          	or	a1,a1,a3
   10428:	f6dff06f          	j	10394 <memset+0x18>
   1042c:	00279693          	slli	a3,a5,0x2
   10430:	00000297          	auipc	t0,0x0
   10434:	005686b3          	add	a3,a3,t0
   10438:	00008293          	mv	t0,ra
   1043c:	f98680e7          	jalr	-104(a3)
   10440:	00028093          	mv	ra,t0
   10444:	ff078793          	addi	a5,a5,-16
   10448:	40f70733          	sub	a4,a4,a5
   1044c:	00f60633          	add	a2,a2,a5
   10450:	f6c374e3          	bgeu	t1,a2,103b8 <memset+0x3c>
   10454:	f3dff06f          	j	10390 <memset+0x14>

0000000000010458 <__call_exitprocs>:
   10458:	fb010113          	addi	sp,sp,-80
   1045c:	03413023          	sd	s4,32(sp)
   10460:	f481ba03          	ld	s4,-184(gp) # 11e38 <_global_impure_ptr>
   10464:	03213823          	sd	s2,48(sp)
   10468:	04113423          	sd	ra,72(sp)
   1046c:	1f8a3903          	ld	s2,504(s4)
   10470:	04813023          	sd	s0,64(sp)
   10474:	02913c23          	sd	s1,56(sp)
   10478:	03313423          	sd	s3,40(sp)
   1047c:	01513c23          	sd	s5,24(sp)
   10480:	01613823          	sd	s6,16(sp)
   10484:	01713423          	sd	s7,8(sp)
   10488:	01813023          	sd	s8,0(sp)
   1048c:	04090063          	beqz	s2,104cc <__call_exitprocs+0x74>
   10490:	00050b13          	mv	s6,a0
   10494:	00058b93          	mv	s7,a1
   10498:	00100a93          	li	s5,1
   1049c:	fff00993          	li	s3,-1
   104a0:	00892483          	lw	s1,8(s2)
   104a4:	fff4841b          	addiw	s0,s1,-1
   104a8:	02044263          	bltz	s0,104cc <__call_exitprocs+0x74>
   104ac:	00349493          	slli	s1,s1,0x3
   104b0:	009904b3          	add	s1,s2,s1
   104b4:	040b8463          	beqz	s7,104fc <__call_exitprocs+0xa4>
   104b8:	2084b783          	ld	a5,520(s1)
   104bc:	05778063          	beq	a5,s7,104fc <__call_exitprocs+0xa4>
   104c0:	fff4041b          	addiw	s0,s0,-1
   104c4:	ff848493          	addi	s1,s1,-8
   104c8:	ff3416e3          	bne	s0,s3,104b4 <__call_exitprocs+0x5c>
   104cc:	04813083          	ld	ra,72(sp)
   104d0:	04013403          	ld	s0,64(sp)
   104d4:	03813483          	ld	s1,56(sp)
   104d8:	03013903          	ld	s2,48(sp)
   104dc:	02813983          	ld	s3,40(sp)
   104e0:	02013a03          	ld	s4,32(sp)
   104e4:	01813a83          	ld	s5,24(sp)
   104e8:	01013b03          	ld	s6,16(sp)
   104ec:	00813b83          	ld	s7,8(sp)
   104f0:	00013c03          	ld	s8,0(sp)
   104f4:	05010113          	addi	sp,sp,80
   104f8:	00008067          	ret
   104fc:	00892783          	lw	a5,8(s2)
   10500:	0084b703          	ld	a4,8(s1)
   10504:	fff7879b          	addiw	a5,a5,-1
   10508:	06878263          	beq	a5,s0,1056c <__call_exitprocs+0x114>
   1050c:	0004b423          	sd	zero,8(s1)
   10510:	fa0708e3          	beqz	a4,104c0 <__call_exitprocs+0x68>
   10514:	31092783          	lw	a5,784(s2)
   10518:	008a96bb          	sllw	a3,s5,s0
   1051c:	00892c03          	lw	s8,8(s2)
   10520:	00d7f7b3          	and	a5,a5,a3
   10524:	0007879b          	sext.w	a5,a5
   10528:	02079263          	bnez	a5,1054c <__call_exitprocs+0xf4>
   1052c:	000700e7          	jalr	a4
   10530:	00892703          	lw	a4,8(s2)
   10534:	1f8a3783          	ld	a5,504(s4)
   10538:	01871463          	bne	a4,s8,10540 <__call_exitprocs+0xe8>
   1053c:	f92782e3          	beq	a5,s2,104c0 <__call_exitprocs+0x68>
   10540:	f80786e3          	beqz	a5,104cc <__call_exitprocs+0x74>
   10544:	00078913          	mv	s2,a5
   10548:	f59ff06f          	j	104a0 <__call_exitprocs+0x48>
   1054c:	31492783          	lw	a5,788(s2)
   10550:	1084b583          	ld	a1,264(s1)
   10554:	00d7f7b3          	and	a5,a5,a3
   10558:	0007879b          	sext.w	a5,a5
   1055c:	00079c63          	bnez	a5,10574 <__call_exitprocs+0x11c>
   10560:	000b0513          	mv	a0,s6
   10564:	000700e7          	jalr	a4
   10568:	fc9ff06f          	j	10530 <__call_exitprocs+0xd8>
   1056c:	00892423          	sw	s0,8(s2)
   10570:	fa1ff06f          	j	10510 <__call_exitprocs+0xb8>
   10574:	00058513          	mv	a0,a1
   10578:	000700e7          	jalr	a4
   1057c:	fb5ff06f          	j	10530 <__call_exitprocs+0xd8>

0000000000010580 <atexit>:
   10580:	00050593          	mv	a1,a0
   10584:	00000693          	li	a3,0
   10588:	00000613          	li	a2,0
   1058c:	00000513          	li	a0,0
   10590:	0600006f          	j	105f0 <__register_exitproc>

0000000000010594 <__libc_fini_array>:
   10594:	fe010113          	addi	sp,sp,-32
   10598:	00813823          	sd	s0,16(sp)
   1059c:	000117b7          	lui	a5,0x11
   105a0:	00011437          	lui	s0,0x11
   105a4:	6e840413          	addi	s0,s0,1768 # 116e8 <__do_global_dtors_aux_fini_array_entry>
   105a8:	6f078793          	addi	a5,a5,1776 # 116f0 <impure_data>
   105ac:	408787b3          	sub	a5,a5,s0
   105b0:	00913423          	sd	s1,8(sp)
   105b4:	00113c23          	sd	ra,24(sp)
   105b8:	4037d493          	srai	s1,a5,0x3
   105bc:	02048063          	beqz	s1,105dc <__libc_fini_array+0x48>
   105c0:	ff878793          	addi	a5,a5,-8
   105c4:	00878433          	add	s0,a5,s0
   105c8:	00043783          	ld	a5,0(s0)
   105cc:	fff48493          	addi	s1,s1,-1
   105d0:	ff840413          	addi	s0,s0,-8
   105d4:	000780e7          	jalr	a5
   105d8:	fe0498e3          	bnez	s1,105c8 <__libc_fini_array+0x34>
   105dc:	01813083          	ld	ra,24(sp)
   105e0:	01013403          	ld	s0,16(sp)
   105e4:	00813483          	ld	s1,8(sp)
   105e8:	02010113          	addi	sp,sp,32
   105ec:	00008067          	ret

00000000000105f0 <__register_exitproc>:
   105f0:	f481b703          	ld	a4,-184(gp) # 11e38 <_global_impure_ptr>
   105f4:	1f873783          	ld	a5,504(a4)
   105f8:	06078063          	beqz	a5,10658 <__register_exitproc+0x68>
   105fc:	0087a703          	lw	a4,8(a5)
   10600:	01f00813          	li	a6,31
   10604:	08e84663          	blt	a6,a4,10690 <__register_exitproc+0xa0>
   10608:	02050863          	beqz	a0,10638 <__register_exitproc+0x48>
   1060c:	00371813          	slli	a6,a4,0x3
   10610:	01078833          	add	a6,a5,a6
   10614:	10c83823          	sd	a2,272(a6)
   10618:	3107a883          	lw	a7,784(a5)
   1061c:	00100613          	li	a2,1
   10620:	00e6163b          	sllw	a2,a2,a4
   10624:	00c8e8b3          	or	a7,a7,a2
   10628:	3117a823          	sw	a7,784(a5)
   1062c:	20d83823          	sd	a3,528(a6)
   10630:	00200693          	li	a3,2
   10634:	02d50863          	beq	a0,a3,10664 <__register_exitproc+0x74>
   10638:	00270693          	addi	a3,a4,2
   1063c:	00369693          	slli	a3,a3,0x3
   10640:	0017071b          	addiw	a4,a4,1
   10644:	00e7a423          	sw	a4,8(a5)
   10648:	00d787b3          	add	a5,a5,a3
   1064c:	00b7b023          	sd	a1,0(a5)
   10650:	00000513          	li	a0,0
   10654:	00008067          	ret
   10658:	20070793          	addi	a5,a4,512
   1065c:	1ef73c23          	sd	a5,504(a4)
   10660:	f9dff06f          	j	105fc <__register_exitproc+0xc>
   10664:	3147a683          	lw	a3,788(a5)
   10668:	00000513          	li	a0,0
   1066c:	00c6e633          	or	a2,a3,a2
   10670:	00270693          	addi	a3,a4,2
   10674:	00369693          	slli	a3,a3,0x3
   10678:	0017071b          	addiw	a4,a4,1
   1067c:	30c7aa23          	sw	a2,788(a5)
   10680:	00e7a423          	sw	a4,8(a5)
   10684:	00d787b3          	add	a5,a5,a3
   10688:	00b7b023          	sd	a1,0(a5)
   1068c:	00008067          	ret
   10690:	fff00513          	li	a0,-1
   10694:	00008067          	ret

0000000000010698 <_exit>:
   10698:	05d00893          	li	a7,93
   1069c:	00000073          	ecall
   106a0:	00054463          	bltz	a0,106a8 <_exit+0x10>
   106a4:	0000006f          	j	106a4 <_exit+0xc>
   106a8:	ff010113          	addi	sp,sp,-16
   106ac:	00813023          	sd	s0,0(sp)
   106b0:	00050413          	mv	s0,a0
   106b4:	00113423          	sd	ra,8(sp)
   106b8:	4080043b          	negw	s0,s0
   106bc:	00c000ef          	jal	ra,106c8 <__errno>
   106c0:	00852023          	sw	s0,0(a0)
   106c4:	0000006f          	j	106c4 <_exit+0x2c>

00000000000106c8 <__errno>:
   106c8:	f581b503          	ld	a0,-168(gp) # 11e48 <_impure_ptr>
   106cc:	00008067          	ret
