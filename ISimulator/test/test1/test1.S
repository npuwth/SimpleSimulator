
test1/test1:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00010537          	lui	a0,0x10
   100bc:	4c850513          	addi	a0,a0,1224 # 104c8 <__libc_fini_array>
   100c0:	3f40006f          	j	104b4 <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00002197          	auipc	gp,0x2
   100cc:	d5818193          	addi	gp,gp,-680 # 11e20 <__global_pointer$>
   100d0:	f6018513          	addi	a0,gp,-160 # 11d80 <completed.1>
   100d4:	f9818613          	addi	a2,gp,-104 # 11db8 <__BSS_END__>
   100d8:	40a60633          	sub	a2,a2,a0
   100dc:	00000593          	li	a1,0
   100e0:	1d0000ef          	jal	ra,102b0 <memset>
   100e4:	00000517          	auipc	a0,0x0
   100e8:	3d050513          	addi	a0,a0,976 # 104b4 <atexit>
   100ec:	00050863          	beqz	a0,100fc <_start+0x34>
   100f0:	00000517          	auipc	a0,0x0
   100f4:	3d850513          	addi	a0,a0,984 # 104c8 <__libc_fini_array>
   100f8:	3bc000ef          	jal	ra,104b4 <atexit>
   100fc:	118000ef          	jal	ra,10214 <__libc_init_array>
   10100:	00012503          	lw	a0,0(sp)
   10104:	00810593          	addi	a1,sp,8
   10108:	00000613          	li	a2,0
   1010c:	074000ef          	jal	ra,10180 <main>
   10110:	0d40006f          	j	101e4 <exit>

0000000000010114 <__do_global_dtors_aux>:
   10114:	f601c703          	lbu	a4,-160(gp) # 11d80 <completed.1>
   10118:	04071263          	bnez	a4,1015c <__do_global_dtors_aux+0x48>
   1011c:	ff010113          	addi	sp,sp,-16
   10120:	00813023          	sd	s0,0(sp)
   10124:	00078413          	mv	s0,a5
   10128:	00113423          	sd	ra,8(sp)
   1012c:	00000793          	li	a5,0
   10130:	00078a63          	beqz	a5,10144 <__do_global_dtors_aux+0x30>
   10134:	00011537          	lui	a0,0x11
   10138:	60450513          	addi	a0,a0,1540 # 11604 <__FRAME_END__>
   1013c:	00000097          	auipc	ra,0x0
   10140:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10144:	00100793          	li	a5,1
   10148:	00813083          	ld	ra,8(sp)
   1014c:	f6f18023          	sb	a5,-160(gp) # 11d80 <completed.1>
   10150:	00013403          	ld	s0,0(sp)
   10154:	01010113          	addi	sp,sp,16
   10158:	00008067          	ret
   1015c:	00008067          	ret

0000000000010160 <frame_dummy>:
   10160:	00000793          	li	a5,0
   10164:	00078c63          	beqz	a5,1017c <frame_dummy+0x1c>
   10168:	00011537          	lui	a0,0x11
   1016c:	f6818593          	addi	a1,gp,-152 # 11d88 <object.0>
   10170:	60450513          	addi	a0,a0,1540 # 11604 <__FRAME_END__>
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
   101b8:	fe442783          	lw	a5,-28(s0)
   101bc:	00f005b3          	add	a1,zero,a5
   101c0:	00100513          	li	a0,1
   101c4:	00000073          	ecall
   101c8:	00a00513          	li	a0,10
   101cc:	00000073          	ecall
   101d0:	00000793          	li	a5,0
   101d4:	00078513          	mv	a0,a5
   101d8:	01813403          	ld	s0,24(sp)
   101dc:	02010113          	addi	sp,sp,32
   101e0:	00008067          	ret

00000000000101e4 <exit>:
   101e4:	ff010113          	addi	sp,sp,-16
   101e8:	00000593          	li	a1,0
   101ec:	00813023          	sd	s0,0(sp)
   101f0:	00113423          	sd	ra,8(sp)
   101f4:	00050413          	mv	s0,a0
   101f8:	194000ef          	jal	ra,1038c <__call_exitprocs>
   101fc:	f481b503          	ld	a0,-184(gp) # 11d68 <_global_impure_ptr>
   10200:	05853783          	ld	a5,88(a0)
   10204:	00078463          	beqz	a5,1020c <exit+0x28>
   10208:	000780e7          	jalr	a5
   1020c:	00040513          	mv	a0,s0
   10210:	3bc000ef          	jal	ra,105cc <_exit>

0000000000010214 <__libc_init_array>:
   10214:	fe010113          	addi	sp,sp,-32
   10218:	00813823          	sd	s0,16(sp)
   1021c:	01213023          	sd	s2,0(sp)
   10220:	00011437          	lui	s0,0x11
   10224:	00011937          	lui	s2,0x11
   10228:	60840793          	addi	a5,s0,1544 # 11608 <__init_array_start>
   1022c:	60890913          	addi	s2,s2,1544 # 11608 <__init_array_start>
   10230:	40f90933          	sub	s2,s2,a5
   10234:	00113c23          	sd	ra,24(sp)
   10238:	00913423          	sd	s1,8(sp)
   1023c:	40395913          	srai	s2,s2,0x3
   10240:	02090063          	beqz	s2,10260 <__libc_init_array+0x4c>
   10244:	60840413          	addi	s0,s0,1544
   10248:	00000493          	li	s1,0
   1024c:	00043783          	ld	a5,0(s0)
   10250:	00148493          	addi	s1,s1,1
   10254:	00840413          	addi	s0,s0,8
   10258:	000780e7          	jalr	a5
   1025c:	fe9918e3          	bne	s2,s1,1024c <__libc_init_array+0x38>
   10260:	00011437          	lui	s0,0x11
   10264:	00011937          	lui	s2,0x11
   10268:	60840793          	addi	a5,s0,1544 # 11608 <__init_array_start>
   1026c:	61890913          	addi	s2,s2,1560 # 11618 <__do_global_dtors_aux_fini_array_entry>
   10270:	40f90933          	sub	s2,s2,a5
   10274:	40395913          	srai	s2,s2,0x3
   10278:	02090063          	beqz	s2,10298 <__libc_init_array+0x84>
   1027c:	60840413          	addi	s0,s0,1544
   10280:	00000493          	li	s1,0
   10284:	00043783          	ld	a5,0(s0)
   10288:	00148493          	addi	s1,s1,1
   1028c:	00840413          	addi	s0,s0,8
   10290:	000780e7          	jalr	a5
   10294:	fe9918e3          	bne	s2,s1,10284 <__libc_init_array+0x70>
   10298:	01813083          	ld	ra,24(sp)
   1029c:	01013403          	ld	s0,16(sp)
   102a0:	00813483          	ld	s1,8(sp)
   102a4:	00013903          	ld	s2,0(sp)
   102a8:	02010113          	addi	sp,sp,32
   102ac:	00008067          	ret

00000000000102b0 <memset>:
   102b0:	00f00313          	li	t1,15
   102b4:	00050713          	mv	a4,a0
   102b8:	02c37a63          	bgeu	t1,a2,102ec <memset+0x3c>
   102bc:	00f77793          	andi	a5,a4,15
   102c0:	0a079063          	bnez	a5,10360 <memset+0xb0>
   102c4:	06059e63          	bnez	a1,10340 <memset+0x90>
   102c8:	ff067693          	andi	a3,a2,-16
   102cc:	00f67613          	andi	a2,a2,15
   102d0:	00e686b3          	add	a3,a3,a4
   102d4:	00b73023          	sd	a1,0(a4)
   102d8:	00b73423          	sd	a1,8(a4)
   102dc:	01070713          	addi	a4,a4,16
   102e0:	fed76ae3          	bltu	a4,a3,102d4 <memset+0x24>
   102e4:	00061463          	bnez	a2,102ec <memset+0x3c>
   102e8:	00008067          	ret
   102ec:	40c306b3          	sub	a3,t1,a2
   102f0:	00269693          	slli	a3,a3,0x2
   102f4:	00000297          	auipc	t0,0x0
   102f8:	005686b3          	add	a3,a3,t0
   102fc:	00c68067          	jr	12(a3)
   10300:	00b70723          	sb	a1,14(a4)
   10304:	00b706a3          	sb	a1,13(a4)
   10308:	00b70623          	sb	a1,12(a4)
   1030c:	00b705a3          	sb	a1,11(a4)
   10310:	00b70523          	sb	a1,10(a4)
   10314:	00b704a3          	sb	a1,9(a4)
   10318:	00b70423          	sb	a1,8(a4)
   1031c:	00b703a3          	sb	a1,7(a4)
   10320:	00b70323          	sb	a1,6(a4)
   10324:	00b702a3          	sb	a1,5(a4)
   10328:	00b70223          	sb	a1,4(a4)
   1032c:	00b701a3          	sb	a1,3(a4)
   10330:	00b70123          	sb	a1,2(a4)
   10334:	00b700a3          	sb	a1,1(a4)
   10338:	00b70023          	sb	a1,0(a4)
   1033c:	00008067          	ret
   10340:	0ff5f593          	zext.b	a1,a1
   10344:	00859693          	slli	a3,a1,0x8
   10348:	00d5e5b3          	or	a1,a1,a3
   1034c:	01059693          	slli	a3,a1,0x10
   10350:	00d5e5b3          	or	a1,a1,a3
   10354:	02059693          	slli	a3,a1,0x20
   10358:	00d5e5b3          	or	a1,a1,a3
   1035c:	f6dff06f          	j	102c8 <memset+0x18>
   10360:	00279693          	slli	a3,a5,0x2
   10364:	00000297          	auipc	t0,0x0
   10368:	005686b3          	add	a3,a3,t0
   1036c:	00008293          	mv	t0,ra
   10370:	f98680e7          	jalr	-104(a3)
   10374:	00028093          	mv	ra,t0
   10378:	ff078793          	addi	a5,a5,-16
   1037c:	40f70733          	sub	a4,a4,a5
   10380:	00f60633          	add	a2,a2,a5
   10384:	f6c374e3          	bgeu	t1,a2,102ec <memset+0x3c>
   10388:	f3dff06f          	j	102c4 <memset+0x14>

000000000001038c <__call_exitprocs>:
   1038c:	fb010113          	addi	sp,sp,-80
   10390:	03413023          	sd	s4,32(sp)
   10394:	f481ba03          	ld	s4,-184(gp) # 11d68 <_global_impure_ptr>
   10398:	03213823          	sd	s2,48(sp)
   1039c:	04113423          	sd	ra,72(sp)
   103a0:	1f8a3903          	ld	s2,504(s4)
   103a4:	04813023          	sd	s0,64(sp)
   103a8:	02913c23          	sd	s1,56(sp)
   103ac:	03313423          	sd	s3,40(sp)
   103b0:	01513c23          	sd	s5,24(sp)
   103b4:	01613823          	sd	s6,16(sp)
   103b8:	01713423          	sd	s7,8(sp)
   103bc:	01813023          	sd	s8,0(sp)
   103c0:	04090063          	beqz	s2,10400 <__call_exitprocs+0x74>
   103c4:	00050b13          	mv	s6,a0
   103c8:	00058b93          	mv	s7,a1
   103cc:	00100a93          	li	s5,1
   103d0:	fff00993          	li	s3,-1
   103d4:	00892483          	lw	s1,8(s2)
   103d8:	fff4841b          	addiw	s0,s1,-1
   103dc:	02044263          	bltz	s0,10400 <__call_exitprocs+0x74>
   103e0:	00349493          	slli	s1,s1,0x3
   103e4:	009904b3          	add	s1,s2,s1
   103e8:	040b8463          	beqz	s7,10430 <__call_exitprocs+0xa4>
   103ec:	2084b783          	ld	a5,520(s1)
   103f0:	05778063          	beq	a5,s7,10430 <__call_exitprocs+0xa4>
   103f4:	fff4041b          	addiw	s0,s0,-1
   103f8:	ff848493          	addi	s1,s1,-8
   103fc:	ff3416e3          	bne	s0,s3,103e8 <__call_exitprocs+0x5c>
   10400:	04813083          	ld	ra,72(sp)
   10404:	04013403          	ld	s0,64(sp)
   10408:	03813483          	ld	s1,56(sp)
   1040c:	03013903          	ld	s2,48(sp)
   10410:	02813983          	ld	s3,40(sp)
   10414:	02013a03          	ld	s4,32(sp)
   10418:	01813a83          	ld	s5,24(sp)
   1041c:	01013b03          	ld	s6,16(sp)
   10420:	00813b83          	ld	s7,8(sp)
   10424:	00013c03          	ld	s8,0(sp)
   10428:	05010113          	addi	sp,sp,80
   1042c:	00008067          	ret
   10430:	00892783          	lw	a5,8(s2)
   10434:	0084b703          	ld	a4,8(s1)
   10438:	fff7879b          	addiw	a5,a5,-1
   1043c:	06878263          	beq	a5,s0,104a0 <__call_exitprocs+0x114>
   10440:	0004b423          	sd	zero,8(s1)
   10444:	fa0708e3          	beqz	a4,103f4 <__call_exitprocs+0x68>
   10448:	31092783          	lw	a5,784(s2)
   1044c:	008a96bb          	sllw	a3,s5,s0
   10450:	00892c03          	lw	s8,8(s2)
   10454:	00d7f7b3          	and	a5,a5,a3
   10458:	0007879b          	sext.w	a5,a5
   1045c:	02079263          	bnez	a5,10480 <__call_exitprocs+0xf4>
   10460:	000700e7          	jalr	a4
   10464:	00892703          	lw	a4,8(s2)
   10468:	1f8a3783          	ld	a5,504(s4)
   1046c:	01871463          	bne	a4,s8,10474 <__call_exitprocs+0xe8>
   10470:	f92782e3          	beq	a5,s2,103f4 <__call_exitprocs+0x68>
   10474:	f80786e3          	beqz	a5,10400 <__call_exitprocs+0x74>
   10478:	00078913          	mv	s2,a5
   1047c:	f59ff06f          	j	103d4 <__call_exitprocs+0x48>
   10480:	31492783          	lw	a5,788(s2)
   10484:	1084b583          	ld	a1,264(s1)
   10488:	00d7f7b3          	and	a5,a5,a3
   1048c:	0007879b          	sext.w	a5,a5
   10490:	00079c63          	bnez	a5,104a8 <__call_exitprocs+0x11c>
   10494:	000b0513          	mv	a0,s6
   10498:	000700e7          	jalr	a4
   1049c:	fc9ff06f          	j	10464 <__call_exitprocs+0xd8>
   104a0:	00892423          	sw	s0,8(s2)
   104a4:	fa1ff06f          	j	10444 <__call_exitprocs+0xb8>
   104a8:	00058513          	mv	a0,a1
   104ac:	000700e7          	jalr	a4
   104b0:	fb5ff06f          	j	10464 <__call_exitprocs+0xd8>

00000000000104b4 <atexit>:
   104b4:	00050593          	mv	a1,a0
   104b8:	00000693          	li	a3,0
   104bc:	00000613          	li	a2,0
   104c0:	00000513          	li	a0,0
   104c4:	0600006f          	j	10524 <__register_exitproc>

00000000000104c8 <__libc_fini_array>:
   104c8:	fe010113          	addi	sp,sp,-32
   104cc:	00813823          	sd	s0,16(sp)
   104d0:	000117b7          	lui	a5,0x11
   104d4:	00011437          	lui	s0,0x11
   104d8:	61840413          	addi	s0,s0,1560 # 11618 <__do_global_dtors_aux_fini_array_entry>
   104dc:	62078793          	addi	a5,a5,1568 # 11620 <impure_data>
   104e0:	408787b3          	sub	a5,a5,s0
   104e4:	00913423          	sd	s1,8(sp)
   104e8:	00113c23          	sd	ra,24(sp)
   104ec:	4037d493          	srai	s1,a5,0x3
   104f0:	02048063          	beqz	s1,10510 <__libc_fini_array+0x48>
   104f4:	ff878793          	addi	a5,a5,-8
   104f8:	00878433          	add	s0,a5,s0
   104fc:	00043783          	ld	a5,0(s0)
   10500:	fff48493          	addi	s1,s1,-1
   10504:	ff840413          	addi	s0,s0,-8
   10508:	000780e7          	jalr	a5
   1050c:	fe0498e3          	bnez	s1,104fc <__libc_fini_array+0x34>
   10510:	01813083          	ld	ra,24(sp)
   10514:	01013403          	ld	s0,16(sp)
   10518:	00813483          	ld	s1,8(sp)
   1051c:	02010113          	addi	sp,sp,32
   10520:	00008067          	ret

0000000000010524 <__register_exitproc>:
   10524:	f481b703          	ld	a4,-184(gp) # 11d68 <_global_impure_ptr>
   10528:	1f873783          	ld	a5,504(a4)
   1052c:	06078063          	beqz	a5,1058c <__register_exitproc+0x68>
   10530:	0087a703          	lw	a4,8(a5)
   10534:	01f00813          	li	a6,31
   10538:	08e84663          	blt	a6,a4,105c4 <__register_exitproc+0xa0>
   1053c:	02050863          	beqz	a0,1056c <__register_exitproc+0x48>
   10540:	00371813          	slli	a6,a4,0x3
   10544:	01078833          	add	a6,a5,a6
   10548:	10c83823          	sd	a2,272(a6)
   1054c:	3107a883          	lw	a7,784(a5)
   10550:	00100613          	li	a2,1
   10554:	00e6163b          	sllw	a2,a2,a4
   10558:	00c8e8b3          	or	a7,a7,a2
   1055c:	3117a823          	sw	a7,784(a5)
   10560:	20d83823          	sd	a3,528(a6)
   10564:	00200693          	li	a3,2
   10568:	02d50863          	beq	a0,a3,10598 <__register_exitproc+0x74>
   1056c:	00270693          	addi	a3,a4,2
   10570:	00369693          	slli	a3,a3,0x3
   10574:	0017071b          	addiw	a4,a4,1
   10578:	00e7a423          	sw	a4,8(a5)
   1057c:	00d787b3          	add	a5,a5,a3
   10580:	00b7b023          	sd	a1,0(a5)
   10584:	00000513          	li	a0,0
   10588:	00008067          	ret
   1058c:	20070793          	addi	a5,a4,512
   10590:	1ef73c23          	sd	a5,504(a4)
   10594:	f9dff06f          	j	10530 <__register_exitproc+0xc>
   10598:	3147a683          	lw	a3,788(a5)
   1059c:	00000513          	li	a0,0
   105a0:	00c6e633          	or	a2,a3,a2
   105a4:	00270693          	addi	a3,a4,2
   105a8:	00369693          	slli	a3,a3,0x3
   105ac:	0017071b          	addiw	a4,a4,1
   105b0:	30c7aa23          	sw	a2,788(a5)
   105b4:	00e7a423          	sw	a4,8(a5)
   105b8:	00d787b3          	add	a5,a5,a3
   105bc:	00b7b023          	sd	a1,0(a5)
   105c0:	00008067          	ret
   105c4:	fff00513          	li	a0,-1
   105c8:	00008067          	ret

00000000000105cc <_exit>:
   105cc:	05d00893          	li	a7,93
   105d0:	00000073          	ecall
   105d4:	00054463          	bltz	a0,105dc <_exit+0x10>
   105d8:	0000006f          	j	105d8 <_exit+0xc>
   105dc:	ff010113          	addi	sp,sp,-16
   105e0:	00813023          	sd	s0,0(sp)
   105e4:	00050413          	mv	s0,a0
   105e8:	00113423          	sd	ra,8(sp)
   105ec:	4080043b          	negw	s0,s0
   105f0:	00c000ef          	jal	ra,105fc <__errno>
   105f4:	00852023          	sw	s0,0(a0)
   105f8:	0000006f          	j	105f8 <_exit+0x2c>

00000000000105fc <__errno>:
   105fc:	f581b503          	ld	a0,-168(gp) # 11d78 <_impure_ptr>
   10600:	00008067          	ret
