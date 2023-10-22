
test1:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00010537          	lui	a0,0x10
   100bc:	4d050513          	addi	a0,a0,1232 # 104d0 <__libc_fini_array>
   100c0:	3fc0006f          	j	104bc <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00002197          	auipc	gp,0x2
   100cc:	d6018193          	addi	gp,gp,-672 # 11e28 <__global_pointer$>
   100d0:	f6018513          	addi	a0,gp,-160 # 11d88 <completed.1>
   100d4:	f9818613          	addi	a2,gp,-104 # 11dc0 <__BSS_END__>
   100d8:	40a60633          	sub	a2,a2,a0
   100dc:	00000593          	li	a1,0
   100e0:	1d8000ef          	jal	ra,102b8 <memset>
   100e4:	00000517          	auipc	a0,0x0
   100e8:	3d850513          	addi	a0,a0,984 # 104bc <atexit>
   100ec:	00050863          	beqz	a0,100fc <_start+0x34>
   100f0:	00000517          	auipc	a0,0x0
   100f4:	3e050513          	addi	a0,a0,992 # 104d0 <__libc_fini_array>
   100f8:	3c4000ef          	jal	ra,104bc <atexit>
   100fc:	120000ef          	jal	ra,1021c <__libc_init_array>
   10100:	00012503          	lw	a0,0(sp)
   10104:	00810593          	addi	a1,sp,8
   10108:	00000613          	li	a2,0
   1010c:	074000ef          	jal	ra,10180 <main>
   10110:	0dc0006f          	j	101ec <exit>

0000000000010114 <__do_global_dtors_aux>:
   10114:	f601c703          	lbu	a4,-160(gp) # 11d88 <completed.1>
   10118:	04071263          	bnez	a4,1015c <__do_global_dtors_aux+0x48>
   1011c:	ff010113          	addi	sp,sp,-16
   10120:	00813023          	sd	s0,0(sp)
   10124:	00078413          	mv	s0,a5
   10128:	00113423          	sd	ra,8(sp)
   1012c:	00000793          	li	a5,0
   10130:	00078a63          	beqz	a5,10144 <__do_global_dtors_aux+0x30>
   10134:	00011537          	lui	a0,0x11
   10138:	60c50513          	addi	a0,a0,1548 # 1160c <__FRAME_END__>
   1013c:	00000097          	auipc	ra,0x0
   10140:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10144:	00100793          	li	a5,1
   10148:	00813083          	ld	ra,8(sp)
   1014c:	f6f18023          	sb	a5,-160(gp) # 11d88 <completed.1>
   10150:	00013403          	ld	s0,0(sp)
   10154:	01010113          	addi	sp,sp,16
   10158:	00008067          	ret
   1015c:	00008067          	ret

0000000000010160 <frame_dummy>:
   10160:	00000793          	li	a5,0
   10164:	00078c63          	beqz	a5,1017c <frame_dummy+0x1c>
   10168:	00011537          	lui	a0,0x11
   1016c:	f6818593          	addi	a1,gp,-152 # 11d90 <object.0>
   10170:	60c50513          	addi	a0,a0,1548 # 1160c <__FRAME_END__>
   10174:	00000317          	auipc	t1,0x0
   10178:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   1017c:	00008067          	ret

0000000000010180 <main>:
   10180:	fe010113          	addi	sp,sp,-32
   10184:	00813c23          	sd	s0,24(sp)
   10188:	02010413          	addi	s0,sp,32
   1018c:	00100793          	li	a5,1
   10190:	fef42623          	sw	a5,-20(s0)
   10194:	00200793          	li	a5,2
   10198:	fef42423          	sw	a5,-24(s0)
   1019c:	fe842703          	lw	a4,-24(s0)
   101a0:	06400793          	li	a5,100
   101a4:	02f707bb          	mulw	a5,a4,a5
   101a8:	0007879b          	sext.w	a5,a5
   101ac:	fec42703          	lw	a4,-20(s0)
   101b0:	00f707bb          	addw	a5,a4,a5
   101b4:	fef42223          	sw	a5,-28(s0)
   101b8:	00a00793          	li	a5,10
   101bc:	fef42023          	sw	a5,-32(s0)
   101c0:	fe442783          	lw	a5,-28(s0)
   101c4:	00f005b3          	add	a1,zero,a5
   101c8:	00100513          	li	a0,1
   101cc:	00000073          	ecall
   101d0:	00a00513          	li	a0,10
   101d4:	00000073          	ecall
   101d8:	00000793          	li	a5,0
   101dc:	00078513          	mv	a0,a5
   101e0:	01813403          	ld	s0,24(sp)
   101e4:	02010113          	addi	sp,sp,32
   101e8:	00008067          	ret

00000000000101ec <exit>:
   101ec:	ff010113          	addi	sp,sp,-16
   101f0:	00000593          	li	a1,0
   101f4:	00813023          	sd	s0,0(sp)
   101f8:	00113423          	sd	ra,8(sp)
   101fc:	00050413          	mv	s0,a0
   10200:	194000ef          	jal	ra,10394 <__call_exitprocs>
   10204:	f481b503          	ld	a0,-184(gp) # 11d70 <_global_impure_ptr>
   10208:	05853783          	ld	a5,88(a0)
   1020c:	00078463          	beqz	a5,10214 <exit+0x28>
   10210:	000780e7          	jalr	a5
   10214:	00040513          	mv	a0,s0
   10218:	3bc000ef          	jal	ra,105d4 <_exit>

000000000001021c <__libc_init_array>:
   1021c:	fe010113          	addi	sp,sp,-32
   10220:	00813823          	sd	s0,16(sp)
   10224:	01213023          	sd	s2,0(sp)
   10228:	00011437          	lui	s0,0x11
   1022c:	00011937          	lui	s2,0x11
   10230:	61040793          	addi	a5,s0,1552 # 11610 <__init_array_start>
   10234:	61090913          	addi	s2,s2,1552 # 11610 <__init_array_start>
   10238:	40f90933          	sub	s2,s2,a5
   1023c:	00113c23          	sd	ra,24(sp)
   10240:	00913423          	sd	s1,8(sp)
   10244:	40395913          	srai	s2,s2,0x3
   10248:	02090063          	beqz	s2,10268 <__libc_init_array+0x4c>
   1024c:	61040413          	addi	s0,s0,1552
   10250:	00000493          	li	s1,0
   10254:	00043783          	ld	a5,0(s0)
   10258:	00148493          	addi	s1,s1,1
   1025c:	00840413          	addi	s0,s0,8
   10260:	000780e7          	jalr	a5
   10264:	fe9918e3          	bne	s2,s1,10254 <__libc_init_array+0x38>
   10268:	00011437          	lui	s0,0x11
   1026c:	00011937          	lui	s2,0x11
   10270:	61040793          	addi	a5,s0,1552 # 11610 <__init_array_start>
   10274:	62090913          	addi	s2,s2,1568 # 11620 <__do_global_dtors_aux_fini_array_entry>
   10278:	40f90933          	sub	s2,s2,a5
   1027c:	40395913          	srai	s2,s2,0x3
   10280:	02090063          	beqz	s2,102a0 <__libc_init_array+0x84>
   10284:	61040413          	addi	s0,s0,1552
   10288:	00000493          	li	s1,0
   1028c:	00043783          	ld	a5,0(s0)
   10290:	00148493          	addi	s1,s1,1
   10294:	00840413          	addi	s0,s0,8
   10298:	000780e7          	jalr	a5
   1029c:	fe9918e3          	bne	s2,s1,1028c <__libc_init_array+0x70>
   102a0:	01813083          	ld	ra,24(sp)
   102a4:	01013403          	ld	s0,16(sp)
   102a8:	00813483          	ld	s1,8(sp)
   102ac:	00013903          	ld	s2,0(sp)
   102b0:	02010113          	addi	sp,sp,32
   102b4:	00008067          	ret

00000000000102b8 <memset>:
   102b8:	00f00313          	li	t1,15
   102bc:	00050713          	mv	a4,a0
   102c0:	02c37a63          	bgeu	t1,a2,102f4 <memset+0x3c>
   102c4:	00f77793          	andi	a5,a4,15
   102c8:	0a079063          	bnez	a5,10368 <memset+0xb0>
   102cc:	06059e63          	bnez	a1,10348 <memset+0x90>
   102d0:	ff067693          	andi	a3,a2,-16
   102d4:	00f67613          	andi	a2,a2,15
   102d8:	00e686b3          	add	a3,a3,a4
   102dc:	00b73023          	sd	a1,0(a4)
   102e0:	00b73423          	sd	a1,8(a4)
   102e4:	01070713          	addi	a4,a4,16
   102e8:	fed76ae3          	bltu	a4,a3,102dc <memset+0x24>
   102ec:	00061463          	bnez	a2,102f4 <memset+0x3c>
   102f0:	00008067          	ret
   102f4:	40c306b3          	sub	a3,t1,a2
   102f8:	00269693          	slli	a3,a3,0x2
   102fc:	00000297          	auipc	t0,0x0
   10300:	005686b3          	add	a3,a3,t0
   10304:	00c68067          	jr	12(a3)
   10308:	00b70723          	sb	a1,14(a4)
   1030c:	00b706a3          	sb	a1,13(a4)
   10310:	00b70623          	sb	a1,12(a4)
   10314:	00b705a3          	sb	a1,11(a4)
   10318:	00b70523          	sb	a1,10(a4)
   1031c:	00b704a3          	sb	a1,9(a4)
   10320:	00b70423          	sb	a1,8(a4)
   10324:	00b703a3          	sb	a1,7(a4)
   10328:	00b70323          	sb	a1,6(a4)
   1032c:	00b702a3          	sb	a1,5(a4)
   10330:	00b70223          	sb	a1,4(a4)
   10334:	00b701a3          	sb	a1,3(a4)
   10338:	00b70123          	sb	a1,2(a4)
   1033c:	00b700a3          	sb	a1,1(a4)
   10340:	00b70023          	sb	a1,0(a4)
   10344:	00008067          	ret
   10348:	0ff5f593          	zext.b	a1,a1
   1034c:	00859693          	slli	a3,a1,0x8
   10350:	00d5e5b3          	or	a1,a1,a3
   10354:	01059693          	slli	a3,a1,0x10
   10358:	00d5e5b3          	or	a1,a1,a3
   1035c:	02059693          	slli	a3,a1,0x20
   10360:	00d5e5b3          	or	a1,a1,a3
   10364:	f6dff06f          	j	102d0 <memset+0x18>
   10368:	00279693          	slli	a3,a5,0x2
   1036c:	00000297          	auipc	t0,0x0
   10370:	005686b3          	add	a3,a3,t0
   10374:	00008293          	mv	t0,ra
   10378:	f98680e7          	jalr	-104(a3)
   1037c:	00028093          	mv	ra,t0
   10380:	ff078793          	addi	a5,a5,-16
   10384:	40f70733          	sub	a4,a4,a5
   10388:	00f60633          	add	a2,a2,a5
   1038c:	f6c374e3          	bgeu	t1,a2,102f4 <memset+0x3c>
   10390:	f3dff06f          	j	102cc <memset+0x14>

0000000000010394 <__call_exitprocs>:
   10394:	fb010113          	addi	sp,sp,-80
   10398:	03413023          	sd	s4,32(sp)
   1039c:	f481ba03          	ld	s4,-184(gp) # 11d70 <_global_impure_ptr>
   103a0:	03213823          	sd	s2,48(sp)
   103a4:	04113423          	sd	ra,72(sp)
   103a8:	1f8a3903          	ld	s2,504(s4)
   103ac:	04813023          	sd	s0,64(sp)
   103b0:	02913c23          	sd	s1,56(sp)
   103b4:	03313423          	sd	s3,40(sp)
   103b8:	01513c23          	sd	s5,24(sp)
   103bc:	01613823          	sd	s6,16(sp)
   103c0:	01713423          	sd	s7,8(sp)
   103c4:	01813023          	sd	s8,0(sp)
   103c8:	04090063          	beqz	s2,10408 <__call_exitprocs+0x74>
   103cc:	00050b13          	mv	s6,a0
   103d0:	00058b93          	mv	s7,a1
   103d4:	00100a93          	li	s5,1
   103d8:	fff00993          	li	s3,-1
   103dc:	00892483          	lw	s1,8(s2)
   103e0:	fff4841b          	addiw	s0,s1,-1
   103e4:	02044263          	bltz	s0,10408 <__call_exitprocs+0x74>
   103e8:	00349493          	slli	s1,s1,0x3
   103ec:	009904b3          	add	s1,s2,s1
   103f0:	040b8463          	beqz	s7,10438 <__call_exitprocs+0xa4>
   103f4:	2084b783          	ld	a5,520(s1)
   103f8:	05778063          	beq	a5,s7,10438 <__call_exitprocs+0xa4>
   103fc:	fff4041b          	addiw	s0,s0,-1
   10400:	ff848493          	addi	s1,s1,-8
   10404:	ff3416e3          	bne	s0,s3,103f0 <__call_exitprocs+0x5c>
   10408:	04813083          	ld	ra,72(sp)
   1040c:	04013403          	ld	s0,64(sp)
   10410:	03813483          	ld	s1,56(sp)
   10414:	03013903          	ld	s2,48(sp)
   10418:	02813983          	ld	s3,40(sp)
   1041c:	02013a03          	ld	s4,32(sp)
   10420:	01813a83          	ld	s5,24(sp)
   10424:	01013b03          	ld	s6,16(sp)
   10428:	00813b83          	ld	s7,8(sp)
   1042c:	00013c03          	ld	s8,0(sp)
   10430:	05010113          	addi	sp,sp,80
   10434:	00008067          	ret
   10438:	00892783          	lw	a5,8(s2)
   1043c:	0084b703          	ld	a4,8(s1)
   10440:	fff7879b          	addiw	a5,a5,-1
   10444:	06878263          	beq	a5,s0,104a8 <__call_exitprocs+0x114>
   10448:	0004b423          	sd	zero,8(s1)
   1044c:	fa0708e3          	beqz	a4,103fc <__call_exitprocs+0x68>
   10450:	31092783          	lw	a5,784(s2)
   10454:	008a96bb          	sllw	a3,s5,s0
   10458:	00892c03          	lw	s8,8(s2)
   1045c:	00d7f7b3          	and	a5,a5,a3
   10460:	0007879b          	sext.w	a5,a5
   10464:	02079263          	bnez	a5,10488 <__call_exitprocs+0xf4>
   10468:	000700e7          	jalr	a4
   1046c:	00892703          	lw	a4,8(s2)
   10470:	1f8a3783          	ld	a5,504(s4)
   10474:	01871463          	bne	a4,s8,1047c <__call_exitprocs+0xe8>
   10478:	f92782e3          	beq	a5,s2,103fc <__call_exitprocs+0x68>
   1047c:	f80786e3          	beqz	a5,10408 <__call_exitprocs+0x74>
   10480:	00078913          	mv	s2,a5
   10484:	f59ff06f          	j	103dc <__call_exitprocs+0x48>
   10488:	31492783          	lw	a5,788(s2)
   1048c:	1084b583          	ld	a1,264(s1)
   10490:	00d7f7b3          	and	a5,a5,a3
   10494:	0007879b          	sext.w	a5,a5
   10498:	00079c63          	bnez	a5,104b0 <__call_exitprocs+0x11c>
   1049c:	000b0513          	mv	a0,s6
   104a0:	000700e7          	jalr	a4
   104a4:	fc9ff06f          	j	1046c <__call_exitprocs+0xd8>
   104a8:	00892423          	sw	s0,8(s2)
   104ac:	fa1ff06f          	j	1044c <__call_exitprocs+0xb8>
   104b0:	00058513          	mv	a0,a1
   104b4:	000700e7          	jalr	a4
   104b8:	fb5ff06f          	j	1046c <__call_exitprocs+0xd8>

00000000000104bc <atexit>:
   104bc:	00050593          	mv	a1,a0
   104c0:	00000693          	li	a3,0
   104c4:	00000613          	li	a2,0
   104c8:	00000513          	li	a0,0
   104cc:	0600006f          	j	1052c <__register_exitproc>

00000000000104d0 <__libc_fini_array>:
   104d0:	fe010113          	addi	sp,sp,-32
   104d4:	00813823          	sd	s0,16(sp)
   104d8:	000117b7          	lui	a5,0x11
   104dc:	00011437          	lui	s0,0x11
   104e0:	62040413          	addi	s0,s0,1568 # 11620 <__do_global_dtors_aux_fini_array_entry>
   104e4:	62878793          	addi	a5,a5,1576 # 11628 <impure_data>
   104e8:	408787b3          	sub	a5,a5,s0
   104ec:	00913423          	sd	s1,8(sp)
   104f0:	00113c23          	sd	ra,24(sp)
   104f4:	4037d493          	srai	s1,a5,0x3
   104f8:	02048063          	beqz	s1,10518 <__libc_fini_array+0x48>
   104fc:	ff878793          	addi	a5,a5,-8
   10500:	00878433          	add	s0,a5,s0
   10504:	00043783          	ld	a5,0(s0)
   10508:	fff48493          	addi	s1,s1,-1
   1050c:	ff840413          	addi	s0,s0,-8
   10510:	000780e7          	jalr	a5
   10514:	fe0498e3          	bnez	s1,10504 <__libc_fini_array+0x34>
   10518:	01813083          	ld	ra,24(sp)
   1051c:	01013403          	ld	s0,16(sp)
   10520:	00813483          	ld	s1,8(sp)
   10524:	02010113          	addi	sp,sp,32
   10528:	00008067          	ret

000000000001052c <__register_exitproc>:
   1052c:	f481b703          	ld	a4,-184(gp) # 11d70 <_global_impure_ptr>
   10530:	1f873783          	ld	a5,504(a4)
   10534:	06078063          	beqz	a5,10594 <__register_exitproc+0x68>
   10538:	0087a703          	lw	a4,8(a5)
   1053c:	01f00813          	li	a6,31
   10540:	08e84663          	blt	a6,a4,105cc <__register_exitproc+0xa0>
   10544:	02050863          	beqz	a0,10574 <__register_exitproc+0x48>
   10548:	00371813          	slli	a6,a4,0x3
   1054c:	01078833          	add	a6,a5,a6
   10550:	10c83823          	sd	a2,272(a6)
   10554:	3107a883          	lw	a7,784(a5)
   10558:	00100613          	li	a2,1
   1055c:	00e6163b          	sllw	a2,a2,a4
   10560:	00c8e8b3          	or	a7,a7,a2
   10564:	3117a823          	sw	a7,784(a5)
   10568:	20d83823          	sd	a3,528(a6)
   1056c:	00200693          	li	a3,2
   10570:	02d50863          	beq	a0,a3,105a0 <__register_exitproc+0x74>
   10574:	00270693          	addi	a3,a4,2
   10578:	00369693          	slli	a3,a3,0x3
   1057c:	0017071b          	addiw	a4,a4,1
   10580:	00e7a423          	sw	a4,8(a5)
   10584:	00d787b3          	add	a5,a5,a3
   10588:	00b7b023          	sd	a1,0(a5)
   1058c:	00000513          	li	a0,0
   10590:	00008067          	ret
   10594:	20070793          	addi	a5,a4,512
   10598:	1ef73c23          	sd	a5,504(a4)
   1059c:	f9dff06f          	j	10538 <__register_exitproc+0xc>
   105a0:	3147a683          	lw	a3,788(a5)
   105a4:	00000513          	li	a0,0
   105a8:	00c6e633          	or	a2,a3,a2
   105ac:	00270693          	addi	a3,a4,2
   105b0:	00369693          	slli	a3,a3,0x3
   105b4:	0017071b          	addiw	a4,a4,1
   105b8:	30c7aa23          	sw	a2,788(a5)
   105bc:	00e7a423          	sw	a4,8(a5)
   105c0:	00d787b3          	add	a5,a5,a3
   105c4:	00b7b023          	sd	a1,0(a5)
   105c8:	00008067          	ret
   105cc:	fff00513          	li	a0,-1
   105d0:	00008067          	ret

00000000000105d4 <_exit>:
   105d4:	05d00893          	li	a7,93
   105d8:	00000073          	ecall
   105dc:	00054463          	bltz	a0,105e4 <_exit+0x10>
   105e0:	0000006f          	j	105e0 <_exit+0xc>
   105e4:	ff010113          	addi	sp,sp,-16
   105e8:	00813023          	sd	s0,0(sp)
   105ec:	00050413          	mv	s0,a0
   105f0:	00113423          	sd	ra,8(sp)
   105f4:	4080043b          	negw	s0,s0
   105f8:	00c000ef          	jal	ra,10604 <__errno>
   105fc:	00852023          	sw	s0,0(a0)
   10600:	0000006f          	j	10600 <_exit+0x2c>

0000000000010604 <__errno>:
   10604:	f581b503          	ld	a0,-168(gp) # 11d80 <_impure_ptr>
   10608:	00008067          	ret
