
hello:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	00078863          	beqz	a5,100c4 <register_fini+0x14>
   100b8:	00013537          	lui	a0,0x13
   100bc:	3e450513          	addi	a0,a0,996 # 133e4 <__libc_fini_array>
   100c0:	4410206f          	j	12d00 <atexit>
   100c4:	00008067          	ret

00000000000100c8 <_start>:
   100c8:	00014197          	auipc	gp,0x14
   100cc:	9d818193          	addi	gp,gp,-1576 # 23aa0 <__global_pointer$>
   100d0:	77018513          	addi	a0,gp,1904 # 24210 <__malloc_max_total_mem>
   100d4:	00014617          	auipc	a2,0x14
   100d8:	1cc60613          	addi	a2,a2,460 # 242a0 <__BSS_END__>
   100dc:	40a60633          	sub	a2,a2,a0
   100e0:	00000593          	li	a1,0
   100e4:	1d8000ef          	jal	ra,102bc <memset>
   100e8:	00003517          	auipc	a0,0x3
   100ec:	c1850513          	addi	a0,a0,-1000 # 12d00 <atexit>
   100f0:	00050863          	beqz	a0,10100 <_start+0x38>
   100f4:	00003517          	auipc	a0,0x3
   100f8:	2f050513          	addi	a0,a0,752 # 133e4 <__libc_fini_array>
   100fc:	405020ef          	jal	ra,12d00 <atexit>
   10100:	120000ef          	jal	ra,10220 <__libc_init_array>
   10104:	00012503          	lw	a0,0(sp)
   10108:	00810593          	addi	a1,sp,8
   1010c:	00000613          	li	a2,0
   10110:	074000ef          	jal	ra,10184 <main>
   10114:	0dc0006f          	j	101f0 <exit>

0000000000010118 <__do_global_dtors_aux>:
   10118:	7a01c703          	lbu	a4,1952(gp) # 24240 <completed.1>
   1011c:	04071263          	bnez	a4,10160 <__do_global_dtors_aux+0x48>
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00813023          	sd	s0,0(sp)
   10128:	00078413          	mv	s0,a5
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00000793          	li	a5,0
   10134:	00078a63          	beqz	a5,10148 <__do_global_dtors_aux+0x30>
   10138:	00023537          	lui	a0,0x23
   1013c:	09850513          	addi	a0,a0,152 # 23098 <__FRAME_END__>
   10140:	00000097          	auipc	ra,0x0
   10144:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10148:	00100793          	li	a5,1
   1014c:	00813083          	ld	ra,8(sp)
   10150:	7af18023          	sb	a5,1952(gp) # 24240 <completed.1>
   10154:	00013403          	ld	s0,0(sp)
   10158:	01010113          	addi	sp,sp,16
   1015c:	00008067          	ret
   10160:	00008067          	ret

0000000000010164 <frame_dummy>:
   10164:	00000793          	li	a5,0
   10168:	00078c63          	beqz	a5,10180 <frame_dummy+0x1c>
   1016c:	00023537          	lui	a0,0x23
   10170:	7a818593          	addi	a1,gp,1960 # 24248 <object.0>
   10174:	09850513          	addi	a0,a0,152 # 23098 <__FRAME_END__>
   10178:	00000317          	auipc	t1,0x0
   1017c:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   10180:	00008067          	ret

0000000000010184 <main>:
   10184:	fe010113          	addi	sp,sp,-32
   10188:	00113c23          	sd	ra,24(sp)
   1018c:	00813823          	sd	s0,16(sp)
   10190:	02010413          	addi	s0,sp,32
   10194:	00100793          	li	a5,1
   10198:	fef42623          	sw	a5,-20(s0)
   1019c:	00200793          	li	a5,2
   101a0:	fef42423          	sw	a5,-24(s0)
   101a4:	00300793          	li	a5,3
   101a8:	fef42223          	sw	a5,-28(s0)
   101ac:	fe842703          	lw	a4,-24(s0)
   101b0:	fe442783          	lw	a5,-28(s0)
   101b4:	02f707bb          	mulw	a5,a4,a5
   101b8:	0007879b          	sext.w	a5,a5
   101bc:	fec42703          	lw	a4,-20(s0)
   101c0:	00f707bb          	addw	a5,a4,a5
   101c4:	0007879b          	sext.w	a5,a5
   101c8:	00078593          	mv	a1,a5
   101cc:	000217b7          	lui	a5,0x21
   101d0:	2a078513          	addi	a0,a5,672 # 212a0 <__clzdi2+0x3c>
   101d4:	204000ef          	jal	ra,103d8 <printf>
   101d8:	00000793          	li	a5,0
   101dc:	00078513          	mv	a0,a5
   101e0:	01813083          	ld	ra,24(sp)
   101e4:	01013403          	ld	s0,16(sp)
   101e8:	02010113          	addi	sp,sp,32
   101ec:	00008067          	ret

00000000000101f0 <exit>:
   101f0:	ff010113          	addi	sp,sp,-16
   101f4:	00000593          	li	a1,0
   101f8:	00813023          	sd	s0,0(sp)
   101fc:	00113423          	sd	ra,8(sp)
   10200:	00050413          	mv	s0,a0
   10204:	1d5020ef          	jal	ra,12bd8 <__call_exitprocs>
   10208:	7481b503          	ld	a0,1864(gp) # 241e8 <_global_impure_ptr>
   1020c:	05853783          	ld	a5,88(a0)
   10210:	00078463          	beqz	a5,10218 <exit+0x28>
   10214:	000780e7          	jalr	a5
   10218:	00040513          	mv	a0,s0
   1021c:	2140f0ef          	jal	ra,1f430 <_exit>

0000000000010220 <__libc_init_array>:
   10220:	fe010113          	addi	sp,sp,-32
   10224:	00813823          	sd	s0,16(sp)
   10228:	01213023          	sd	s2,0(sp)
   1022c:	00023437          	lui	s0,0x23
   10230:	00023937          	lui	s2,0x23
   10234:	09c40793          	addi	a5,s0,156 # 2309c <__preinit_array_end>
   10238:	09c90913          	addi	s2,s2,156 # 2309c <__preinit_array_end>
   1023c:	40f90933          	sub	s2,s2,a5
   10240:	00113c23          	sd	ra,24(sp)
   10244:	00913423          	sd	s1,8(sp)
   10248:	40395913          	srai	s2,s2,0x3
   1024c:	02090063          	beqz	s2,1026c <__libc_init_array+0x4c>
   10250:	09c40413          	addi	s0,s0,156
   10254:	00000493          	li	s1,0
   10258:	00043783          	ld	a5,0(s0)
   1025c:	00148493          	addi	s1,s1,1
   10260:	00840413          	addi	s0,s0,8
   10264:	000780e7          	jalr	a5
   10268:	fe9918e3          	bne	s2,s1,10258 <__libc_init_array+0x38>
   1026c:	00023437          	lui	s0,0x23
   10270:	00023937          	lui	s2,0x23
   10274:	0a040793          	addi	a5,s0,160 # 230a0 <__init_array_start>
   10278:	0b090913          	addi	s2,s2,176 # 230b0 <__do_global_dtors_aux_fini_array_entry>
   1027c:	40f90933          	sub	s2,s2,a5
   10280:	40395913          	srai	s2,s2,0x3
   10284:	02090063          	beqz	s2,102a4 <__libc_init_array+0x84>
   10288:	0a040413          	addi	s0,s0,160
   1028c:	00000493          	li	s1,0
   10290:	00043783          	ld	a5,0(s0)
   10294:	00148493          	addi	s1,s1,1
   10298:	00840413          	addi	s0,s0,8
   1029c:	000780e7          	jalr	a5
   102a0:	fe9918e3          	bne	s2,s1,10290 <__libc_init_array+0x70>
   102a4:	01813083          	ld	ra,24(sp)
   102a8:	01013403          	ld	s0,16(sp)
   102ac:	00813483          	ld	s1,8(sp)
   102b0:	00013903          	ld	s2,0(sp)
   102b4:	02010113          	addi	sp,sp,32
   102b8:	00008067          	ret

00000000000102bc <memset>:
   102bc:	00f00313          	li	t1,15
   102c0:	00050713          	mv	a4,a0
   102c4:	02c37a63          	bgeu	t1,a2,102f8 <memset+0x3c>
   102c8:	00f77793          	andi	a5,a4,15
   102cc:	0a079063          	bnez	a5,1036c <memset+0xb0>
   102d0:	06059e63          	bnez	a1,1034c <memset+0x90>
   102d4:	ff067693          	andi	a3,a2,-16
   102d8:	00f67613          	andi	a2,a2,15
   102dc:	00e686b3          	add	a3,a3,a4
   102e0:	00b73023          	sd	a1,0(a4)
   102e4:	00b73423          	sd	a1,8(a4)
   102e8:	01070713          	addi	a4,a4,16
   102ec:	fed76ae3          	bltu	a4,a3,102e0 <memset+0x24>
   102f0:	00061463          	bnez	a2,102f8 <memset+0x3c>
   102f4:	00008067          	ret
   102f8:	40c306b3          	sub	a3,t1,a2
   102fc:	00269693          	slli	a3,a3,0x2
   10300:	00000297          	auipc	t0,0x0
   10304:	005686b3          	add	a3,a3,t0
   10308:	00c68067          	jr	12(a3)
   1030c:	00b70723          	sb	a1,14(a4)
   10310:	00b706a3          	sb	a1,13(a4)
   10314:	00b70623          	sb	a1,12(a4)
   10318:	00b705a3          	sb	a1,11(a4)
   1031c:	00b70523          	sb	a1,10(a4)
   10320:	00b704a3          	sb	a1,9(a4)
   10324:	00b70423          	sb	a1,8(a4)
   10328:	00b703a3          	sb	a1,7(a4)
   1032c:	00b70323          	sb	a1,6(a4)
   10330:	00b702a3          	sb	a1,5(a4)
   10334:	00b70223          	sb	a1,4(a4)
   10338:	00b701a3          	sb	a1,3(a4)
   1033c:	00b70123          	sb	a1,2(a4)
   10340:	00b700a3          	sb	a1,1(a4)
   10344:	00b70023          	sb	a1,0(a4)
   10348:	00008067          	ret
   1034c:	0ff5f593          	zext.b	a1,a1
   10350:	00859693          	slli	a3,a1,0x8
   10354:	00d5e5b3          	or	a1,a1,a3
   10358:	01059693          	slli	a3,a1,0x10
   1035c:	00d5e5b3          	or	a1,a1,a3
   10360:	02059693          	slli	a3,a1,0x20
   10364:	00d5e5b3          	or	a1,a1,a3
   10368:	f6dff06f          	j	102d4 <memset+0x18>
   1036c:	00279693          	slli	a3,a5,0x2
   10370:	00000297          	auipc	t0,0x0
   10374:	005686b3          	add	a3,a3,t0
   10378:	00008293          	mv	t0,ra
   1037c:	f98680e7          	jalr	-104(a3)
   10380:	00028093          	mv	ra,t0
   10384:	ff078793          	addi	a5,a5,-16
   10388:	40f70733          	sub	a4,a4,a5
   1038c:	00f60633          	add	a2,a2,a5
   10390:	f6c374e3          	bgeu	t1,a2,102f8 <memset+0x3c>
   10394:	f3dff06f          	j	102d0 <memset+0x14>

0000000000010398 <_printf_r>:
   10398:	fb010113          	addi	sp,sp,-80
   1039c:	02c13023          	sd	a2,32(sp)
   103a0:	02d13423          	sd	a3,40(sp)
   103a4:	02e13823          	sd	a4,48(sp)
   103a8:	02f13c23          	sd	a5,56(sp)
   103ac:	05013023          	sd	a6,64(sp)
   103b0:	05113423          	sd	a7,72(sp)
   103b4:	00058613          	mv	a2,a1
   103b8:	01053583          	ld	a1,16(a0)
   103bc:	02010693          	addi	a3,sp,32
   103c0:	00113c23          	sd	ra,24(sp)
   103c4:	00d13423          	sd	a3,8(sp)
   103c8:	05c000ef          	jal	ra,10424 <_vfprintf_r>
   103cc:	01813083          	ld	ra,24(sp)
   103d0:	05010113          	addi	sp,sp,80
   103d4:	00008067          	ret

00000000000103d8 <printf>:
   103d8:	7581b303          	ld	t1,1880(gp) # 241f8 <_impure_ptr>
   103dc:	fa010113          	addi	sp,sp,-96
   103e0:	02c13823          	sd	a2,48(sp)
   103e4:	02d13c23          	sd	a3,56(sp)
   103e8:	02b13423          	sd	a1,40(sp)
   103ec:	04e13023          	sd	a4,64(sp)
   103f0:	04f13423          	sd	a5,72(sp)
   103f4:	05013823          	sd	a6,80(sp)
   103f8:	05113c23          	sd	a7,88(sp)
   103fc:	01033583          	ld	a1,16(t1) # 10188 <main+0x4>
   10400:	02810693          	addi	a3,sp,40
   10404:	00050613          	mv	a2,a0
   10408:	00030513          	mv	a0,t1
   1040c:	00113c23          	sd	ra,24(sp)
   10410:	00d13423          	sd	a3,8(sp)
   10414:	010000ef          	jal	ra,10424 <_vfprintf_r>
   10418:	01813083          	ld	ra,24(sp)
   1041c:	06010113          	addi	sp,sp,96
   10420:	00008067          	ret

0000000000010424 <_vfprintf_r>:
   10424:	d8010113          	addi	sp,sp,-640
   10428:	26113c23          	sd	ra,632(sp)
   1042c:	27213023          	sd	s2,608(sp)
   10430:	25413823          	sd	s4,592(sp)
   10434:	23913423          	sd	s9,552(sp)
   10438:	00058913          	mv	s2,a1
   1043c:	00060c93          	mv	s9,a2
   10440:	00d13823          	sd	a3,16(sp)
   10444:	26813823          	sd	s0,624(sp)
   10448:	26913423          	sd	s1,616(sp)
   1044c:	25313c23          	sd	s3,600(sp)
   10450:	25513423          	sd	s5,584(sp)
   10454:	25613023          	sd	s6,576(sp)
   10458:	23713c23          	sd	s7,568(sp)
   1045c:	23813823          	sd	s8,560(sp)
   10460:	23a13023          	sd	s10,544(sp)
   10464:	21b13c23          	sd	s11,536(sp)
   10468:	00050a13          	mv	s4,a0
   1046c:	1ac060ef          	jal	ra,16618 <_localeconv_r>
   10470:	00053783          	ld	a5,0(a0)
   10474:	00078513          	mv	a0,a5
   10478:	06f13823          	sd	a5,112(sp)
   1047c:	364080ef          	jal	ra,187e0 <strlen>
   10480:	06a13423          	sd	a0,104(sp)
   10484:	10013023          	sd	zero,256(sp)
   10488:	10013423          	sd	zero,264(sp)
   1048c:	000a0663          	beqz	s4,10498 <_vfprintf_r+0x74>
   10490:	050a2783          	lw	a5,80(s4)
   10494:	16078ee3          	beqz	a5,10e10 <_vfprintf_r+0x9ec>
   10498:	01091703          	lh	a4,16(s2)
   1049c:	000026b7          	lui	a3,0x2
   104a0:	03071793          	slli	a5,a4,0x30
   104a4:	0307d793          	srli	a5,a5,0x30
   104a8:	00d7f633          	and	a2,a5,a3
   104ac:	02061863          	bnez	a2,104dc <_vfprintf_r+0xb8>
   104b0:	0ac92603          	lw	a2,172(s2)
   104b4:	00d767b3          	or	a5,a4,a3
   104b8:	0107979b          	slliw	a5,a5,0x10
   104bc:	ffffe737          	lui	a4,0xffffe
   104c0:	4107d79b          	sraiw	a5,a5,0x10
   104c4:	fff70713          	addi	a4,a4,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd9d5f>
   104c8:	00e67733          	and	a4,a2,a4
   104cc:	00f91823          	sh	a5,16(s2)
   104d0:	03079793          	slli	a5,a5,0x30
   104d4:	0ae92623          	sw	a4,172(s2)
   104d8:	0307d793          	srli	a5,a5,0x30
   104dc:	0087f713          	andi	a4,a5,8
   104e0:	32070463          	beqz	a4,10808 <_vfprintf_r+0x3e4>
   104e4:	01893703          	ld	a4,24(s2)
   104e8:	32070063          	beqz	a4,10808 <_vfprintf_r+0x3e4>
   104ec:	01a7f793          	andi	a5,a5,26
   104f0:	00a00713          	li	a4,10
   104f4:	32e78c63          	beq	a5,a4,1082c <_vfprintf_r+0x408>
   104f8:	000217b7          	lui	a5,0x21
   104fc:	4c87b783          	ld	a5,1224(a5) # 214c8 <zeroes.0+0x40>
   10500:	19010b13          	addi	s6,sp,400
   10504:	11613823          	sd	s6,272(sp)
   10508:	08f13c23          	sd	a5,152(sp)
   1050c:	000217b7          	lui	a5,0x21
   10510:	4a87b783          	ld	a5,1192(a5) # 214a8 <zeroes.0+0x20>
   10514:	12013023          	sd	zero,288(sp)
   10518:	10012c23          	sw	zero,280(sp)
   1051c:	08f13823          	sd	a5,144(sp)
   10520:	000217b7          	lui	a5,0x21
   10524:	4b87b783          	ld	a5,1208(a5) # 214b8 <zeroes.0+0x30>
   10528:	02013023          	sd	zero,32(sp)
   1052c:	02013423          	sd	zero,40(sp)
   10530:	0af13023          	sd	a5,160(sp)
   10534:	000cc783          	lbu	a5,0(s9)
   10538:	06013c23          	sd	zero,120(sp)
   1053c:	06013023          	sd	zero,96(sp)
   10540:	08013023          	sd	zero,128(sp)
   10544:	08013423          	sd	zero,136(sp)
   10548:	00013423          	sd	zero,8(sp)
   1054c:	000b0313          	mv	t1,s6
   10550:	24078663          	beqz	a5,1079c <_vfprintf_r+0x378>
   10554:	000c8413          	mv	s0,s9
   10558:	02500713          	li	a4,37
   1055c:	3ce78e63          	beq	a5,a4,10938 <_vfprintf_r+0x514>
   10560:	00144783          	lbu	a5,1(s0)
   10564:	00140413          	addi	s0,s0,1
   10568:	fe079ae3          	bnez	a5,1055c <_vfprintf_r+0x138>
   1056c:	419404bb          	subw	s1,s0,s9
   10570:	22048663          	beqz	s1,1079c <_vfprintf_r+0x378>
   10574:	12013703          	ld	a4,288(sp)
   10578:	11812783          	lw	a5,280(sp)
   1057c:	01933023          	sd	s9,0(t1)
   10580:	00970733          	add	a4,a4,s1
   10584:	0017879b          	addiw	a5,a5,1
   10588:	00933423          	sd	s1,8(t1)
   1058c:	12e13023          	sd	a4,288(sp)
   10590:	10f12c23          	sw	a5,280(sp)
   10594:	0007871b          	sext.w	a4,a5
   10598:	00700793          	li	a5,7
   1059c:	01030313          	addi	t1,t1,16
   105a0:	3ae7c463          	blt	a5,a4,10948 <_vfprintf_r+0x524>
   105a4:	00813703          	ld	a4,8(sp)
   105a8:	00044783          	lbu	a5,0(s0)
   105ac:	0097073b          	addw	a4,a4,s1
   105b0:	00e13423          	sd	a4,8(sp)
   105b4:	1e078463          	beqz	a5,1079c <_vfprintf_r+0x378>
   105b8:	000217b7          	lui	a5,0x21
   105bc:	00144e03          	lbu	t3,1(s0)
   105c0:	0c010fa3          	sb	zero,223(sp)
   105c4:	00140413          	addi	s0,s0,1
   105c8:	fff00c13          	li	s8,-1
   105cc:	00000a93          	li	s5,0
   105d0:	00000493          	li	s1,0
   105d4:	05a00993          	li	s3,90
   105d8:	30878b93          	addi	s7,a5,776 # 21308 <__clzdi2+0xa4>
   105dc:	00900d93          	li	s11,9
   105e0:	00140413          	addi	s0,s0,1
   105e4:	000e0d1b          	sext.w	s10,t3
   105e8:	02a00613          	li	a2,42
   105ec:	fe0d079b          	addiw	a5,s10,-32
   105f0:	0007871b          	sext.w	a4,a5
   105f4:	04e9e863          	bltu	s3,a4,10644 <_vfprintf_r+0x220>
   105f8:	02079713          	slli	a4,a5,0x20
   105fc:	01e75793          	srli	a5,a4,0x1e
   10600:	017787b3          	add	a5,a5,s7
   10604:	0007a783          	lw	a5,0(a5)
   10608:	00078067          	jr	a5
   1060c:	00000a93          	li	s5,0
   10610:	00044703          	lbu	a4,0(s0)
   10614:	002a979b          	slliw	a5,s5,0x2
   10618:	01578abb          	addw	s5,a5,s5
   1061c:	fd0d0e1b          	addiw	t3,s10,-48
   10620:	001a9a9b          	slliw	s5,s5,0x1
   10624:	fd07079b          	addiw	a5,a4,-48
   10628:	00140413          	addi	s0,s0,1
   1062c:	015e0abb          	addw	s5,t3,s5
   10630:	00070d1b          	sext.w	s10,a4
   10634:	fcfdfee3          	bgeu	s11,a5,10610 <_vfprintf_r+0x1ec>
   10638:	fe0d079b          	addiw	a5,s10,-32
   1063c:	0007871b          	sext.w	a4,a5
   10640:	fae9fce3          	bgeu	s3,a4,105f8 <_vfprintf_r+0x1d4>
   10644:	140d0c63          	beqz	s10,1079c <_vfprintf_r+0x378>
   10648:	13a10423          	sb	s10,296(sp)
   1064c:	0c010fa3          	sb	zero,223(sp)
   10650:	00100993          	li	s3,1
   10654:	00100b93          	li	s7,1
   10658:	12810c93          	addi	s9,sp,296
   1065c:	00013c23          	sd	zero,24(sp)
   10660:	00000c13          	li	s8,0
   10664:	04013423          	sd	zero,72(sp)
   10668:	04013c23          	sd	zero,88(sp)
   1066c:	04013823          	sd	zero,80(sp)
   10670:	0024f293          	andi	t0,s1,2
   10674:	00028463          	beqz	t0,1067c <_vfprintf_r+0x258>
   10678:	0029899b          	addiw	s3,s3,2
   1067c:	0844fd93          	andi	s11,s1,132
   10680:	12013783          	ld	a5,288(sp)
   10684:	000d9663          	bnez	s11,10690 <_vfprintf_r+0x26c>
   10688:	413a86bb          	subw	a3,s5,s3
   1068c:	58d04ae3          	bgtz	a3,11420 <_vfprintf_r+0xffc>
   10690:	0df14703          	lbu	a4,223(sp)
   10694:	02070c63          	beqz	a4,106cc <_vfprintf_r+0x2a8>
   10698:	11812703          	lw	a4,280(sp)
   1069c:	0df10693          	addi	a3,sp,223
   106a0:	00d33023          	sd	a3,0(t1)
   106a4:	0017071b          	addiw	a4,a4,1
   106a8:	00100693          	li	a3,1
   106ac:	00178793          	addi	a5,a5,1
   106b0:	00d33423          	sd	a3,8(t1)
   106b4:	10e12c23          	sw	a4,280(sp)
   106b8:	0007069b          	sext.w	a3,a4
   106bc:	12f13023          	sd	a5,288(sp)
   106c0:	00700713          	li	a4,7
   106c4:	01030313          	addi	t1,t1,16
   106c8:	52d74e63          	blt	a4,a3,10c04 <_vfprintf_r+0x7e0>
   106cc:	02028c63          	beqz	t0,10704 <_vfprintf_r+0x2e0>
   106d0:	11812703          	lw	a4,280(sp)
   106d4:	0e010693          	addi	a3,sp,224
   106d8:	00d33023          	sd	a3,0(t1)
   106dc:	0017071b          	addiw	a4,a4,1
   106e0:	00200693          	li	a3,2
   106e4:	00278793          	addi	a5,a5,2
   106e8:	00d33423          	sd	a3,8(t1)
   106ec:	10e12c23          	sw	a4,280(sp)
   106f0:	0007069b          	sext.w	a3,a4
   106f4:	12f13023          	sd	a5,288(sp)
   106f8:	00700713          	li	a4,7
   106fc:	01030313          	addi	t1,t1,16
   10700:	60d740e3          	blt	a4,a3,11500 <_vfprintf_r+0x10dc>
   10704:	08000713          	li	a4,128
   10708:	32ed8ae3          	beq	s11,a4,1123c <_vfprintf_r+0xe18>
   1070c:	417c0c3b          	subw	s8,s8,s7
   10710:	3f804ee3          	bgtz	s8,1130c <_vfprintf_r+0xee8>
   10714:	1004f713          	andi	a4,s1,256
   10718:	200712e3          	bnez	a4,1111c <_vfprintf_r+0xcf8>
   1071c:	11812703          	lw	a4,280(sp)
   10720:	017787b3          	add	a5,a5,s7
   10724:	01933023          	sd	s9,0(t1)
   10728:	0017069b          	addiw	a3,a4,1
   1072c:	00068713          	mv	a4,a3
   10730:	01733423          	sd	s7,8(t1)
   10734:	10e12c23          	sw	a4,280(sp)
   10738:	12f13023          	sd	a5,288(sp)
   1073c:	00700713          	li	a4,7
   10740:	5ed74463          	blt	a4,a3,10d28 <_vfprintf_r+0x904>
   10744:	01030313          	addi	t1,t1,16
   10748:	0044f493          	andi	s1,s1,4
   1074c:	00048663          	beqz	s1,10758 <_vfprintf_r+0x334>
   10750:	413a84bb          	subw	s1,s5,s3
   10754:	5c9046e3          	bgtz	s1,11520 <_vfprintf_r+0x10fc>
   10758:	000a8713          	mv	a4,s5
   1075c:	013ad463          	bge	s5,s3,10764 <_vfprintf_r+0x340>
   10760:	00098713          	mv	a4,s3
   10764:	00813683          	ld	a3,8(sp)
   10768:	00d7073b          	addw	a4,a4,a3
   1076c:	00e13423          	sd	a4,8(sp)
   10770:	44079ce3          	bnez	a5,113c8 <_vfprintf_r+0xfa4>
   10774:	01813783          	ld	a5,24(sp)
   10778:	10012c23          	sw	zero,280(sp)
   1077c:	00078863          	beqz	a5,1078c <_vfprintf_r+0x368>
   10780:	01813583          	ld	a1,24(sp)
   10784:	000a0513          	mv	a0,s4
   10788:	5f5020ef          	jal	ra,1357c <_free_r>
   1078c:	000b0313          	mv	t1,s6
   10790:	00040c93          	mv	s9,s0
   10794:	000cc783          	lbu	a5,0(s9)
   10798:	da079ee3          	bnez	a5,10554 <_vfprintf_r+0x130>
   1079c:	12013783          	ld	a5,288(sp)
   107a0:	00078463          	beqz	a5,107a8 <_vfprintf_r+0x384>
   107a4:	10d0106f          	j	120b0 <_vfprintf_r+0x1c8c>
   107a8:	01095783          	lhu	a5,16(s2)
   107ac:	0407f793          	andi	a5,a5,64
   107b0:	00078463          	beqz	a5,107b8 <_vfprintf_r+0x394>
   107b4:	6050106f          	j	125b8 <_vfprintf_r+0x2194>
   107b8:	27813083          	ld	ra,632(sp)
   107bc:	27013403          	ld	s0,624(sp)
   107c0:	00813503          	ld	a0,8(sp)
   107c4:	26813483          	ld	s1,616(sp)
   107c8:	26013903          	ld	s2,608(sp)
   107cc:	25813983          	ld	s3,600(sp)
   107d0:	25013a03          	ld	s4,592(sp)
   107d4:	24813a83          	ld	s5,584(sp)
   107d8:	24013b03          	ld	s6,576(sp)
   107dc:	23813b83          	ld	s7,568(sp)
   107e0:	23013c03          	ld	s8,560(sp)
   107e4:	22813c83          	ld	s9,552(sp)
   107e8:	22013d03          	ld	s10,544(sp)
   107ec:	21813d83          	ld	s11,536(sp)
   107f0:	28010113          	addi	sp,sp,640
   107f4:	00008067          	ret
   107f8:	0104e493          	ori	s1,s1,16
   107fc:	00044e03          	lbu	t3,0(s0)
   10800:	0004849b          	sext.w	s1,s1
   10804:	dddff06f          	j	105e0 <_vfprintf_r+0x1bc>
   10808:	00090593          	mv	a1,s2
   1080c:	000a0513          	mv	a0,s4
   10810:	260020ef          	jal	ra,12a70 <__swsetup_r>
   10814:	00050463          	beqz	a0,1081c <_vfprintf_r+0x3f8>
   10818:	5a10106f          	j	125b8 <_vfprintf_r+0x2194>
   1081c:	01095783          	lhu	a5,16(s2)
   10820:	00a00713          	li	a4,10
   10824:	01a7f793          	andi	a5,a5,26
   10828:	cce798e3          	bne	a5,a4,104f8 <_vfprintf_r+0xd4>
   1082c:	01291783          	lh	a5,18(s2)
   10830:	cc07c4e3          	bltz	a5,104f8 <_vfprintf_r+0xd4>
   10834:	01013683          	ld	a3,16(sp)
   10838:	000c8613          	mv	a2,s9
   1083c:	00090593          	mv	a1,s2
   10840:	000a0513          	mv	a0,s4
   10844:	16c020ef          	jal	ra,129b0 <__sbprintf>
   10848:	00a13423          	sd	a0,8(sp)
   1084c:	f6dff06f          	j	107b8 <_vfprintf_r+0x394>
   10850:	0104e493          	ori	s1,s1,16
   10854:	0004849b          	sext.w	s1,s1
   10858:	01013683          	ld	a3,16(sp)
   1085c:	0204f793          	andi	a5,s1,32
   10860:	00868713          	addi	a4,a3,8 # 2008 <register_fini-0xe0a8>
   10864:	50078663          	beqz	a5,10d70 <_vfprintf_r+0x94c>
   10868:	0006b783          	ld	a5,0(a3)
   1086c:	00078993          	mv	s3,a5
   10870:	5207c263          	bltz	a5,10d94 <_vfprintf_r+0x970>
   10874:	fff00793          	li	a5,-1
   10878:	00fc1463          	bne	s8,a5,10880 <_vfprintf_r+0x45c>
   1087c:	0200106f          	j	1189c <_vfprintf_r+0x1478>
   10880:	f7f4f493          	andi	s1,s1,-129
   10884:	00e13823          	sd	a4,16(sp)
   10888:	00048d9b          	sext.w	s11,s1
   1088c:	36099ae3          	bnez	s3,11400 <_vfprintf_r+0xfdc>
   10890:	360c1ce3          	bnez	s8,11408 <_vfprintf_r+0xfe4>
   10894:	000d8493          	mv	s1,s11
   10898:	00000c13          	li	s8,0
   1089c:	00000b93          	li	s7,0
   108a0:	18c10c93          	addi	s9,sp,396
   108a4:	0df14783          	lbu	a5,223(sp)
   108a8:	000b899b          	sext.w	s3,s7
   108ac:	018bd463          	bge	s7,s8,108b4 <_vfprintf_r+0x490>
   108b0:	000c099b          	sext.w	s3,s8
   108b4:	00013c23          	sd	zero,24(sp)
   108b8:	04013423          	sd	zero,72(sp)
   108bc:	04013c23          	sd	zero,88(sp)
   108c0:	04013823          	sd	zero,80(sp)
   108c4:	da0786e3          	beqz	a5,10670 <_vfprintf_r+0x24c>
   108c8:	0019899b          	addiw	s3,s3,1
   108cc:	da5ff06f          	j	10670 <_vfprintf_r+0x24c>
   108d0:	0104e493          	ori	s1,s1,16
   108d4:	0004849b          	sext.w	s1,s1
   108d8:	01013683          	ld	a3,16(sp)
   108dc:	0204f793          	andi	a5,s1,32
   108e0:	00868713          	addi	a4,a3,8
   108e4:	46078263          	beqz	a5,10d48 <_vfprintf_r+0x924>
   108e8:	0006b983          	ld	s3,0(a3)
   108ec:	bff4f493          	andi	s1,s1,-1025
   108f0:	00048d9b          	sext.w	s11,s1
   108f4:	00e13823          	sd	a4,16(sp)
   108f8:	00000793          	li	a5,0
   108fc:	0c010fa3          	sb	zero,223(sp)
   10900:	fff00713          	li	a4,-1
   10904:	4aec0863          	beq	s8,a4,10db4 <_vfprintf_r+0x990>
   10908:	f7fdf493          	andi	s1,s11,-129
   1090c:	0004849b          	sext.w	s1,s1
   10910:	2e0992e3          	bnez	s3,113f4 <_vfprintf_r+0xfd0>
   10914:	7a0c1e63          	bnez	s8,110d0 <_vfprintf_r+0xcac>
   10918:	f80790e3          	bnez	a5,10898 <_vfprintf_r+0x474>
   1091c:	001dfb93          	andi	s7,s11,1
   10920:	18c10c93          	addi	s9,sp,396
   10924:	f80b80e3          	beqz	s7,108a4 <_vfprintf_r+0x480>
   10928:	03000793          	li	a5,48
   1092c:	18f105a3          	sb	a5,395(sp)
   10930:	18b10c93          	addi	s9,sp,395
   10934:	f71ff06f          	j	108a4 <_vfprintf_r+0x480>
   10938:	419404bb          	subw	s1,s0,s9
   1093c:	c2049ce3          	bnez	s1,10574 <_vfprintf_r+0x150>
   10940:	00044783          	lbu	a5,0(s0)
   10944:	c71ff06f          	j	105b4 <_vfprintf_r+0x190>
   10948:	11010613          	addi	a2,sp,272
   1094c:	00090593          	mv	a1,s2
   10950:	000a0513          	mv	a0,s4
   10954:	5f80a0ef          	jal	ra,1af4c <__sprint_r>
   10958:	e40518e3          	bnez	a0,107a8 <_vfprintf_r+0x384>
   1095c:	000b0313          	mv	t1,s6
   10960:	c45ff06f          	j	105a4 <_vfprintf_r+0x180>
   10964:	0084f793          	andi	a5,s1,8
   10968:	700796e3          	bnez	a5,11874 <_vfprintf_r+0x1450>
   1096c:	01013783          	ld	a5,16(sp)
   10970:	00613c23          	sd	t1,24(sp)
   10974:	0007b507          	fld	fa0,0(a5)
   10978:	00878793          	addi	a5,a5,8
   1097c:	00f13823          	sd	a5,16(sp)
   10980:	4c8100ef          	jal	ra,20e48 <__extenddftf2>
   10984:	01813303          	ld	t1,24(sp)
   10988:	10a13023          	sd	a0,256(sp)
   1098c:	10b13423          	sd	a1,264(sp)
   10990:	10010513          	addi	a0,sp,256
   10994:	00613c23          	sd	t1,24(sp)
   10998:	411050ef          	jal	ra,165a8 <_ldcheck>
   1099c:	0ea12423          	sw	a0,232(sp)
   109a0:	00200793          	li	a5,2
   109a4:	01813303          	ld	t1,24(sp)
   109a8:	00f51463          	bne	a0,a5,109b0 <_vfprintf_r+0x58c>
   109ac:	2840106f          	j	11c30 <_vfprintf_r+0x180c>
   109b0:	00100793          	li	a5,1
   109b4:	00f51463          	bne	a0,a5,109bc <_vfprintf_r+0x598>
   109b8:	3d40106f          	j	11d8c <_vfprintf_r+0x1968>
   109bc:	06100793          	li	a5,97
   109c0:	00fd1463          	bne	s10,a5,109c8 <_vfprintf_r+0x5a4>
   109c4:	5850106f          	j	12748 <_vfprintf_r+0x2324>
   109c8:	04100793          	li	a5,65
   109cc:	00fd1463          	bne	s10,a5,109d4 <_vfprintf_r+0x5b0>
   109d0:	7280106f          	j	120f8 <_vfprintf_r+0x1cd4>
   109d4:	fdfd7713          	andi	a4,s10,-33
   109d8:	fff00793          	li	a5,-1
   109dc:	04e13c23          	sd	a4,88(sp)
   109e0:	00fc1463          	bne	s8,a5,109e8 <_vfprintf_r+0x5c4>
   109e4:	5850106f          	j	12768 <_vfprintf_r+0x2344>
   109e8:	04700793          	li	a5,71
   109ec:	00f71463          	bne	a4,a5,109f4 <_vfprintf_r+0x5d0>
   109f0:	5690106f          	j	12758 <_vfprintf_r+0x2334>
   109f4:	10813b83          	ld	s7,264(sp)
   109f8:	1004e793          	ori	a5,s1,256
   109fc:	0a913c23          	sd	s1,184(sp)
   10a00:	10013d83          	ld	s11,256(sp)
   10a04:	0007879b          	sext.w	a5,a5
   10a08:	000bd463          	bgez	s7,10a10 <_vfprintf_r+0x5ec>
   10a0c:	19d0106f          	j	123a8 <_vfprintf_r+0x1f84>
   10a10:	0c013423          	sd	zero,200(sp)
   10a14:	00078493          	mv	s1,a5
   10a18:	00013c23          	sd	zero,24(sp)
   10a1c:	05813703          	ld	a4,88(sp)
   10a20:	04600793          	li	a5,70
   10a24:	00f71463          	bne	a4,a5,10a2c <_vfprintf_r+0x608>
   10a28:	2050106f          	j	1242c <_vfprintf_r+0x2008>
   10a2c:	04500793          	li	a5,69
   10a30:	02613023          	sd	t1,32(sp)
   10a34:	00f71463          	bne	a4,a5,10a3c <_vfprintf_r+0x618>
   10a38:	4450106f          	j	1267c <_vfprintf_r+0x2258>
   10a3c:	0e810793          	addi	a5,sp,232
   10a40:	000c0713          	mv	a4,s8
   10a44:	0f810893          	addi	a7,sp,248
   10a48:	0ec10813          	addi	a6,sp,236
   10a4c:	00200693          	li	a3,2
   10a50:	000d8593          	mv	a1,s11
   10a54:	000b8613          	mv	a2,s7
   10a58:	000a0513          	mv	a0,s4
   10a5c:	0f1040ef          	jal	ra,1534c <_ldtoa_r>
   10a60:	05813703          	ld	a4,88(sp)
   10a64:	04700793          	li	a5,71
   10a68:	02013303          	ld	t1,32(sp)
   10a6c:	00050c93          	mv	s9,a0
   10a70:	00f70463          	beq	a4,a5,10a78 <_vfprintf_r+0x654>
   10a74:	7190106f          	j	1298c <_vfprintf_r+0x2568>
   10a78:	0b813783          	ld	a5,184(sp)
   10a7c:	0017f793          	andi	a5,a5,1
   10a80:	00078463          	beqz	a5,10a88 <_vfprintf_r+0x664>
   10a84:	45d0106f          	j	126e0 <_vfprintf_r+0x22bc>
   10a88:	0f813683          	ld	a3,248(sp)
   10a8c:	419687bb          	subw	a5,a3,s9
   10a90:	02f13023          	sd	a5,32(sp)
   10a94:	0e812703          	lw	a4,232(sp)
   10a98:	04700793          	li	a5,71
   10a9c:	04e13823          	sd	a4,80(sp)
   10aa0:	05813703          	ld	a4,88(sp)
   10aa4:	00f71463          	bne	a4,a5,10aac <_vfprintf_r+0x688>
   10aa8:	0750106f          	j	1231c <_vfprintf_r+0x1ef8>
   10aac:	05813703          	ld	a4,88(sp)
   10ab0:	04600793          	li	a5,70
   10ab4:	00f71463          	bne	a4,a5,10abc <_vfprintf_r+0x698>
   10ab8:	2dd0106f          	j	12594 <_vfprintf_r+0x2170>
   10abc:	05013783          	ld	a5,80(sp)
   10ac0:	05813583          	ld	a1,88(sp)
   10ac4:	04100613          	li	a2,65
   10ac8:	fff7879b          	addiw	a5,a5,-1
   10acc:	0ef12423          	sw	a5,232(sp)
   10ad0:	0ffd7713          	zext.b	a4,s10
   10ad4:	00000693          	li	a3,0
   10ad8:	00c59863          	bne	a1,a2,10ae8 <_vfprintf_r+0x6c4>
   10adc:	00f7071b          	addiw	a4,a4,15
   10ae0:	0ff77713          	zext.b	a4,a4
   10ae4:	00100693          	li	a3,1
   10ae8:	0ee10823          	sb	a4,240(sp)
   10aec:	02b00713          	li	a4,43
   10af0:	0007da63          	bgez	a5,10b04 <_vfprintf_r+0x6e0>
   10af4:	05013703          	ld	a4,80(sp)
   10af8:	00100793          	li	a5,1
   10afc:	40e787bb          	subw	a5,a5,a4
   10b00:	02d00713          	li	a4,45
   10b04:	0ee108a3          	sb	a4,241(sp)
   10b08:	00900713          	li	a4,9
   10b0c:	00f74463          	blt	a4,a5,10b14 <_vfprintf_r+0x6f0>
   10b10:	46d0106f          	j	1277c <_vfprintf_r+0x2358>
   10b14:	0ff10513          	addi	a0,sp,255
   10b18:	00050593          	mv	a1,a0
   10b1c:	00a00693          	li	a3,10
   10b20:	06300e93          	li	t4,99
   10b24:	02d7e73b          	remw	a4,a5,a3
   10b28:	00058613          	mv	a2,a1
   10b2c:	00078893          	mv	a7,a5
   10b30:	fff58593          	addi	a1,a1,-1
   10b34:	0307071b          	addiw	a4,a4,48
   10b38:	fee60fa3          	sb	a4,-1(a2)
   10b3c:	02d7c7bb          	divw	a5,a5,a3
   10b40:	ff1ec2e3          	blt	t4,a7,10b24 <_vfprintf_r+0x700>
   10b44:	0307879b          	addiw	a5,a5,48
   10b48:	0ff7f693          	zext.b	a3,a5
   10b4c:	fed58fa3          	sb	a3,-1(a1)
   10b50:	ffe60793          	addi	a5,a2,-2
   10b54:	00a7e463          	bltu	a5,a0,10b5c <_vfprintf_r+0x738>
   10b58:	6190106f          	j	12970 <_vfprintf_r+0x254c>
   10b5c:	0f210713          	addi	a4,sp,242
   10b60:	0080006f          	j	10b68 <_vfprintf_r+0x744>
   10b64:	0007c683          	lbu	a3,0(a5)
   10b68:	00d70023          	sb	a3,0(a4)
   10b6c:	00178793          	addi	a5,a5,1
   10b70:	00170713          	addi	a4,a4,1
   10b74:	fea798e3          	bne	a5,a0,10b64 <_vfprintf_r+0x740>
   10b78:	10110793          	addi	a5,sp,257
   10b7c:	0f210713          	addi	a4,sp,242
   10b80:	40c787b3          	sub	a5,a5,a2
   10b84:	00f707b3          	add	a5,a4,a5
   10b88:	0f010713          	addi	a4,sp,240
   10b8c:	40e787bb          	subw	a5,a5,a4
   10b90:	06f13c23          	sd	a5,120(sp)
   10b94:	07813783          	ld	a5,120(sp)
   10b98:	02013683          	ld	a3,32(sp)
   10b9c:	00100713          	li	a4,1
   10ba0:	00f68bbb          	addw	s7,a3,a5
   10ba4:	000b8793          	mv	a5,s7
   10ba8:	00d74463          	blt	a4,a3,10bb0 <_vfprintf_r+0x78c>
   10bac:	5390106f          	j	128e4 <_vfprintf_r+0x24c0>
   10bb0:	06813703          	ld	a4,104(sp)
   10bb4:	00e78bbb          	addw	s7,a5,a4
   10bb8:	0b813783          	ld	a5,184(sp)
   10bbc:	fffbc993          	not	s3,s7
   10bc0:	43f9d993          	srai	s3,s3,0x3f
   10bc4:	bff7f493          	andi	s1,a5,-1025
   10bc8:	0004849b          	sext.w	s1,s1
   10bcc:	013bf9b3          	and	s3,s7,s3
   10bd0:	1004e493          	ori	s1,s1,256
   10bd4:	0009899b          	sext.w	s3,s3
   10bd8:	04013423          	sd	zero,72(sp)
   10bdc:	04013c23          	sd	zero,88(sp)
   10be0:	04013823          	sd	zero,80(sp)
   10be4:	0c813783          	ld	a5,200(sp)
   10be8:	00079463          	bnez	a5,10bf0 <_vfprintf_r+0x7cc>
   10bec:	7a80106f          	j	12394 <_vfprintf_r+0x1f70>
   10bf0:	02d00793          	li	a5,45
   10bf4:	0cf10fa3          	sb	a5,223(sp)
   10bf8:	00000c13          	li	s8,0
   10bfc:	0019899b          	addiw	s3,s3,1
   10c00:	a71ff06f          	j	10670 <_vfprintf_r+0x24c>
   10c04:	11010613          	addi	a2,sp,272
   10c08:	00090593          	mv	a1,s2
   10c0c:	000a0513          	mv	a0,s4
   10c10:	02513823          	sd	t0,48(sp)
   10c14:	3380a0ef          	jal	ra,1af4c <__sprint_r>
   10c18:	7c051263          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   10c1c:	12013783          	ld	a5,288(sp)
   10c20:	03013283          	ld	t0,48(sp)
   10c24:	000b0313          	mv	t1,s6
   10c28:	aa5ff06f          	j	106cc <_vfprintf_r+0x2a8>
   10c2c:	11812603          	lw	a2,280(sp)
   10c30:	00178c13          	addi	s8,a5,1
   10c34:	02013783          	ld	a5,32(sp)
   10c38:	0016071b          	addiw	a4,a2,1
   10c3c:	00100593          	li	a1,1
   10c40:	01933023          	sd	s9,0(t1)
   10c44:	00070693          	mv	a3,a4
   10c48:	01030b93          	addi	s7,t1,16
   10c4c:	30f5d6e3          	bge	a1,a5,11758 <_vfprintf_r+0x1334>
   10c50:	00100613          	li	a2,1
   10c54:	10d12c23          	sw	a3,280(sp)
   10c58:	00c33423          	sd	a2,8(t1)
   10c5c:	13813023          	sd	s8,288(sp)
   10c60:	00700693          	li	a3,7
   10c64:	6ae6c6e3          	blt	a3,a4,11b10 <_vfprintf_r+0x16ec>
   10c68:	06813783          	ld	a5,104(sp)
   10c6c:	0017069b          	addiw	a3,a4,1
   10c70:	07013703          	ld	a4,112(sp)
   10c74:	00fc0c33          	add	s8,s8,a5
   10c78:	00fbb423          	sd	a5,8(s7)
   10c7c:	00ebb023          	sd	a4,0(s7)
   10c80:	10d12c23          	sw	a3,280(sp)
   10c84:	0006871b          	sext.w	a4,a3
   10c88:	13813023          	sd	s8,288(sp)
   10c8c:	00700693          	li	a3,7
   10c90:	010b8b93          	addi	s7,s7,16
   10c94:	6ae6c0e3          	blt	a3,a4,11b34 <_vfprintf_r+0x1710>
   10c98:	10013503          	ld	a0,256(sp)
   10c9c:	10813583          	ld	a1,264(sp)
   10ca0:	00170e1b          	addiw	t3,a4,1
   10ca4:	00000613          	li	a2,0
   10ca8:	00000693          	li	a3,0
   10cac:	03c12823          	sw	t3,48(sp)
   10cb0:	02e13c23          	sd	a4,56(sp)
   10cb4:	22d0e0ef          	jal	ra,1f6e0 <__eqtf2>
   10cb8:	03012e03          	lw	t3,48(sp)
   10cbc:	02013783          	ld	a5,32(sp)
   10cc0:	010b8313          	addi	t1,s7,16
   10cc4:	000e061b          	sext.w	a2,t3
   10cc8:	fff78d1b          	addiw	s10,a5,-1
   10ccc:	2a050ae3          	beqz	a0,11780 <_vfprintf_r+0x135c>
   10cd0:	001c8813          	addi	a6,s9,1
   10cd4:	01ac0c33          	add	s8,s8,s10
   10cd8:	010bb023          	sd	a6,0(s7)
   10cdc:	01abb423          	sd	s10,8(s7)
   10ce0:	13813023          	sd	s8,288(sp)
   10ce4:	11c12c23          	sw	t3,280(sp)
   10ce8:	00700693          	li	a3,7
   10cec:	4ac6c2e3          	blt	a3,a2,11990 <_vfprintf_r+0x156c>
   10cf0:	03813703          	ld	a4,56(sp)
   10cf4:	020b8693          	addi	a3,s7,32
   10cf8:	00030b93          	mv	s7,t1
   10cfc:	0027061b          	addiw	a2,a4,2
   10d00:	00068313          	mv	t1,a3
   10d04:	07813683          	ld	a3,120(sp)
   10d08:	0f010713          	addi	a4,sp,240
   10d0c:	00ebb023          	sd	a4,0(s7)
   10d10:	018687b3          	add	a5,a3,s8
   10d14:	00dbb423          	sd	a3,8(s7)
   10d18:	12f13023          	sd	a5,288(sp)
   10d1c:	10c12c23          	sw	a2,280(sp)
   10d20:	00700713          	li	a4,7
   10d24:	a2c752e3          	bge	a4,a2,10748 <_vfprintf_r+0x324>
   10d28:	11010613          	addi	a2,sp,272
   10d2c:	00090593          	mv	a1,s2
   10d30:	000a0513          	mv	a0,s4
   10d34:	2180a0ef          	jal	ra,1af4c <__sprint_r>
   10d38:	6a051263          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   10d3c:	12013783          	ld	a5,288(sp)
   10d40:	000b0313          	mv	t1,s6
   10d44:	a05ff06f          	j	10748 <_vfprintf_r+0x324>
   10d48:	0104f793          	andi	a5,s1,16
   10d4c:	30079ee3          	bnez	a5,11868 <_vfprintf_r+0x1444>
   10d50:	01013683          	ld	a3,16(sp)
   10d54:	0404f793          	andi	a5,s1,64
   10d58:	0006a983          	lw	s3,0(a3)
   10d5c:	00079463          	bnez	a5,10d64 <_vfprintf_r+0x940>
   10d60:	01c0106f          	j	11d7c <_vfprintf_r+0x1958>
   10d64:	03099993          	slli	s3,s3,0x30
   10d68:	0309d993          	srli	s3,s3,0x30
   10d6c:	b81ff06f          	j	108ec <_vfprintf_r+0x4c8>
   10d70:	0104f793          	andi	a5,s1,16
   10d74:	2e0792e3          	bnez	a5,11858 <_vfprintf_r+0x1434>
   10d78:	0404f793          	andi	a5,s1,64
   10d7c:	00079463          	bnez	a5,10d84 <_vfprintf_r+0x960>
   10d80:	7d50006f          	j	11d54 <_vfprintf_r+0x1930>
   10d84:	01013783          	ld	a5,16(sp)
   10d88:	00079983          	lh	s3,0(a5)
   10d8c:	00098793          	mv	a5,s3
   10d90:	ae07d2e3          	bgez	a5,10874 <_vfprintf_r+0x450>
   10d94:	02d00793          	li	a5,45
   10d98:	0cf10fa3          	sb	a5,223(sp)
   10d9c:	00e13823          	sd	a4,16(sp)
   10da0:	fff00713          	li	a4,-1
   10da4:	413009b3          	neg	s3,s3
   10da8:	00048d93          	mv	s11,s1
   10dac:	00100793          	li	a5,1
   10db0:	b4ec1ce3          	bne	s8,a4,10908 <_vfprintf_r+0x4e4>
   10db4:	00100713          	li	a4,1
   10db8:	64e78463          	beq	a5,a4,11400 <_vfprintf_r+0xfdc>
   10dbc:	00200713          	li	a4,2
   10dc0:	32e78463          	beq	a5,a4,110e8 <_vfprintf_r+0xcc4>
   10dc4:	18c10b93          	addi	s7,sp,396
   10dc8:	000b8c93          	mv	s9,s7
   10dcc:	0079f793          	andi	a5,s3,7
   10dd0:	03078793          	addi	a5,a5,48
   10dd4:	fefc8fa3          	sb	a5,-1(s9)
   10dd8:	0039d993          	srli	s3,s3,0x3
   10ddc:	000c8713          	mv	a4,s9
   10de0:	fffc8c93          	addi	s9,s9,-1
   10de4:	fe0994e3          	bnez	s3,10dcc <_vfprintf_r+0x9a8>
   10de8:	001df693          	andi	a3,s11,1
   10dec:	32068263          	beqz	a3,11110 <_vfprintf_r+0xcec>
   10df0:	03000693          	li	a3,48
   10df4:	30d78e63          	beq	a5,a3,11110 <_vfprintf_r+0xcec>
   10df8:	ffe70713          	addi	a4,a4,-2
   10dfc:	fedc8fa3          	sb	a3,-1(s9)
   10e00:	40eb8bbb          	subw	s7,s7,a4
   10e04:	000d8493          	mv	s1,s11
   10e08:	00070c93          	mv	s9,a4
   10e0c:	a99ff06f          	j	108a4 <_vfprintf_r+0x480>
   10e10:	000a0513          	mv	a0,s4
   10e14:	590020ef          	jal	ra,133a4 <__sinit>
   10e18:	e80ff06f          	j	10498 <_vfprintf_r+0x74>
   10e1c:	01013783          	ld	a5,16(sp)
   10e20:	0c010fa3          	sb	zero,223(sp)
   10e24:	0007bc83          	ld	s9,0(a5)
   10e28:	00878d93          	addi	s11,a5,8
   10e2c:	440c82e3          	beqz	s9,11a70 <_vfprintf_r+0x164c>
   10e30:	fff00793          	li	a5,-1
   10e34:	6cfc00e3          	beq	s8,a5,11cf4 <_vfprintf_r+0x18d0>
   10e38:	000c0613          	mv	a2,s8
   10e3c:	00000593          	li	a1,0
   10e40:	000c8513          	mv	a0,s9
   10e44:	00613823          	sd	t1,16(sp)
   10e48:	248060ef          	jal	ra,17090 <memchr>
   10e4c:	00a13c23          	sd	a0,24(sp)
   10e50:	01013303          	ld	t1,16(sp)
   10e54:	00051463          	bnez	a0,10e5c <_vfprintf_r+0xa38>
   10e58:	69c0106f          	j	124f4 <_vfprintf_r+0x20d0>
   10e5c:	01813783          	ld	a5,24(sp)
   10e60:	01b13823          	sd	s11,16(sp)
   10e64:	00013c23          	sd	zero,24(sp)
   10e68:	41978bbb          	subw	s7,a5,s9
   10e6c:	0df14783          	lbu	a5,223(sp)
   10e70:	fffbc993          	not	s3,s7
   10e74:	43f9d993          	srai	s3,s3,0x3f
   10e78:	04013423          	sd	zero,72(sp)
   10e7c:	04013c23          	sd	zero,88(sp)
   10e80:	04013823          	sd	zero,80(sp)
   10e84:	0179f9b3          	and	s3,s3,s7
   10e88:	00000c13          	li	s8,0
   10e8c:	a2079ee3          	bnez	a5,108c8 <_vfprintf_r+0x4a4>
   10e90:	fe0ff06f          	j	10670 <_vfprintf_r+0x24c>
   10e94:	01013703          	ld	a4,16(sp)
   10e98:	0c010fa3          	sb	zero,223(sp)
   10e9c:	00100993          	li	s3,1
   10ea0:	00072783          	lw	a5,0(a4)
   10ea4:	00870713          	addi	a4,a4,8
   10ea8:	00e13823          	sd	a4,16(sp)
   10eac:	12f10423          	sb	a5,296(sp)
   10eb0:	00100b93          	li	s7,1
   10eb4:	12810c93          	addi	s9,sp,296
   10eb8:	fa4ff06f          	j	1065c <_vfprintf_r+0x238>
   10ebc:	0084e493          	ori	s1,s1,8
   10ec0:	00044e03          	lbu	t3,0(s0)
   10ec4:	0004849b          	sext.w	s1,s1
   10ec8:	f18ff06f          	j	105e0 <_vfprintf_r+0x1bc>
   10ecc:	0104e493          	ori	s1,s1,16
   10ed0:	00048d9b          	sext.w	s11,s1
   10ed4:	01013683          	ld	a3,16(sp)
   10ed8:	020df793          	andi	a5,s11,32
   10edc:	00868713          	addi	a4,a3,8
   10ee0:	10078ce3          	beqz	a5,117f8 <_vfprintf_r+0x13d4>
   10ee4:	0006b983          	ld	s3,0(a3)
   10ee8:	00100793          	li	a5,1
   10eec:	00e13823          	sd	a4,16(sp)
   10ef0:	a0dff06f          	j	108fc <_vfprintf_r+0x4d8>
   10ef4:	0204e493          	ori	s1,s1,32
   10ef8:	00044e03          	lbu	t3,0(s0)
   10efc:	0004849b          	sext.w	s1,s1
   10f00:	ee0ff06f          	j	105e0 <_vfprintf_r+0x1bc>
   10f04:	0804e493          	ori	s1,s1,128
   10f08:	00044e03          	lbu	t3,0(s0)
   10f0c:	0004849b          	sext.w	s1,s1
   10f10:	ed0ff06f          	j	105e0 <_vfprintf_r+0x1bc>
   10f14:	00044d03          	lbu	s10,0(s0)
   10f18:	00140713          	addi	a4,s0,1
   10f1c:	00cd1463          	bne	s10,a2,10f24 <_vfprintf_r+0xb00>
   10f20:	2250106f          	j	12944 <_vfprintf_r+0x2520>
   10f24:	fd0d079b          	addiw	a5,s10,-48
   10f28:	00070413          	mv	s0,a4
   10f2c:	00000c13          	li	s8,0
   10f30:	eafdee63          	bltu	s11,a5,105ec <_vfprintf_r+0x1c8>
   10f34:	00044d03          	lbu	s10,0(s0)
   10f38:	002c169b          	slliw	a3,s8,0x2
   10f3c:	018686bb          	addw	a3,a3,s8
   10f40:	0016969b          	slliw	a3,a3,0x1
   10f44:	00f68c3b          	addw	s8,a3,a5
   10f48:	fd0d079b          	addiw	a5,s10,-48
   10f4c:	00140413          	addi	s0,s0,1
   10f50:	fefdf2e3          	bgeu	s11,a5,10f34 <_vfprintf_r+0xb10>
   10f54:	e98ff06f          	j	105ec <_vfprintf_r+0x1c8>
   10f58:	00044e03          	lbu	t3,0(s0)
   10f5c:	0044e493          	ori	s1,s1,4
   10f60:	0004849b          	sext.w	s1,s1
   10f64:	e7cff06f          	j	105e0 <_vfprintf_r+0x1bc>
   10f68:	02b00793          	li	a5,43
   10f6c:	00044e03          	lbu	t3,0(s0)
   10f70:	0cf10fa3          	sb	a5,223(sp)
   10f74:	e6cff06f          	j	105e0 <_vfprintf_r+0x1bc>
   10f78:	01013783          	ld	a5,16(sp)
   10f7c:	00044e03          	lbu	t3,0(s0)
   10f80:	0007aa83          	lw	s5,0(a5)
   10f84:	00878793          	addi	a5,a5,8
   10f88:	00f13823          	sd	a5,16(sp)
   10f8c:	e40ada63          	bgez	s5,105e0 <_vfprintf_r+0x1bc>
   10f90:	41500abb          	negw	s5,s5
   10f94:	fc9ff06f          	j	10f5c <_vfprintf_r+0xb38>
   10f98:	000a0513          	mv	a0,s4
   10f9c:	00613c23          	sd	t1,24(sp)
   10fa0:	678050ef          	jal	ra,16618 <_localeconv_r>
   10fa4:	00853783          	ld	a5,8(a0)
   10fa8:	00078513          	mv	a0,a5
   10fac:	08f13423          	sd	a5,136(sp)
   10fb0:	031070ef          	jal	ra,187e0 <strlen>
   10fb4:	00050793          	mv	a5,a0
   10fb8:	000a0513          	mv	a0,s4
   10fbc:	00078d13          	mv	s10,a5
   10fc0:	08f13023          	sd	a5,128(sp)
   10fc4:	654050ef          	jal	ra,16618 <_localeconv_r>
   10fc8:	01053783          	ld	a5,16(a0)
   10fcc:	01813303          	ld	t1,24(sp)
   10fd0:	00044e03          	lbu	t3,0(s0)
   10fd4:	06f13023          	sd	a5,96(sp)
   10fd8:	e00d0463          	beqz	s10,105e0 <_vfprintf_r+0x1bc>
   10fdc:	e0078263          	beqz	a5,105e0 <_vfprintf_r+0x1bc>
   10fe0:	0007c783          	lbu	a5,0(a5)
   10fe4:	de078e63          	beqz	a5,105e0 <_vfprintf_r+0x1bc>
   10fe8:	4004e493          	ori	s1,s1,1024
   10fec:	0004849b          	sext.w	s1,s1
   10ff0:	df0ff06f          	j	105e0 <_vfprintf_r+0x1bc>
   10ff4:	0014e493          	ori	s1,s1,1
   10ff8:	00044e03          	lbu	t3,0(s0)
   10ffc:	0004849b          	sext.w	s1,s1
   11000:	de0ff06f          	j	105e0 <_vfprintf_r+0x1bc>
   11004:	0df14783          	lbu	a5,223(sp)
   11008:	00044e03          	lbu	t3,0(s0)
   1100c:	dc079a63          	bnez	a5,105e0 <_vfprintf_r+0x1bc>
   11010:	02000793          	li	a5,32
   11014:	0cf10fa3          	sb	a5,223(sp)
   11018:	dc8ff06f          	j	105e0 <_vfprintf_r+0x1bc>
   1101c:	01013703          	ld	a4,16(sp)
   11020:	ffff87b7          	lui	a5,0xffff8
   11024:	8307c793          	xori	a5,a5,-2000
   11028:	0ef11023          	sh	a5,224(sp)
   1102c:	00870793          	addi	a5,a4,8
   11030:	00f13823          	sd	a5,16(sp)
   11034:	000217b7          	lui	a5,0x21
   11038:	2e078793          	addi	a5,a5,736 # 212e0 <__clzdi2+0x7c>
   1103c:	0024e493          	ori	s1,s1,2
   11040:	02f13423          	sd	a5,40(sp)
   11044:	00073983          	ld	s3,0(a4)
   11048:	00048d9b          	sext.w	s11,s1
   1104c:	00200793          	li	a5,2
   11050:	07800d13          	li	s10,120
   11054:	8a9ff06f          	j	108fc <_vfprintf_r+0x4d8>
   11058:	01013683          	ld	a3,16(sp)
   1105c:	0204f793          	andi	a5,s1,32
   11060:	0006b703          	ld	a4,0(a3)
   11064:	00868693          	addi	a3,a3,8
   11068:	00d13823          	sd	a3,16(sp)
   1106c:	7c079463          	bnez	a5,11834 <_vfprintf_r+0x1410>
   11070:	0104f793          	andi	a5,s1,16
   11074:	7c079063          	bnez	a5,11834 <_vfprintf_r+0x1410>
   11078:	0404f793          	andi	a5,s1,64
   1107c:	00078463          	beqz	a5,11084 <_vfprintf_r+0xc60>
   11080:	7e50006f          	j	12064 <_vfprintf_r+0x1c40>
   11084:	2004f493          	andi	s1,s1,512
   11088:	00813783          	ld	a5,8(sp)
   1108c:	00049463          	bnez	s1,11094 <_vfprintf_r+0xc70>
   11090:	6e00106f          	j	12770 <_vfprintf_r+0x234c>
   11094:	00f70023          	sb	a5,0(a4)
   11098:	00040c93          	mv	s9,s0
   1109c:	ef8ff06f          	j	10794 <_vfprintf_r+0x370>
   110a0:	00044e03          	lbu	t3,0(s0)
   110a4:	06c00793          	li	a5,108
   110a8:	18fe02e3          	beq	t3,a5,11a2c <_vfprintf_r+0x1608>
   110ac:	0104e493          	ori	s1,s1,16
   110b0:	0004849b          	sext.w	s1,s1
   110b4:	d2cff06f          	j	105e0 <_vfprintf_r+0x1bc>
   110b8:	00044e03          	lbu	t3,0(s0)
   110bc:	06800793          	li	a5,104
   110c0:	14fe0ce3          	beq	t3,a5,11a18 <_vfprintf_r+0x15f4>
   110c4:	0404e493          	ori	s1,s1,64
   110c8:	0004849b          	sext.w	s1,s1
   110cc:	d14ff06f          	j	105e0 <_vfprintf_r+0x1bc>
   110d0:	00100713          	li	a4,1
   110d4:	00e79463          	bne	a5,a4,110dc <_vfprintf_r+0xcb8>
   110d8:	6000106f          	j	126d8 <_vfprintf_r+0x22b4>
   110dc:	00200713          	li	a4,2
   110e0:	00048d93          	mv	s11,s1
   110e4:	cee790e3          	bne	a5,a4,10dc4 <_vfprintf_r+0x9a0>
   110e8:	18c10b93          	addi	s7,sp,396
   110ec:	000b8c93          	mv	s9,s7
   110f0:	02813703          	ld	a4,40(sp)
   110f4:	00f9f793          	andi	a5,s3,15
   110f8:	fffc8c93          	addi	s9,s9,-1
   110fc:	00f707b3          	add	a5,a4,a5
   11100:	0007c783          	lbu	a5,0(a5)
   11104:	0049d993          	srli	s3,s3,0x4
   11108:	00fc8023          	sb	a5,0(s9)
   1110c:	fe0992e3          	bnez	s3,110f0 <_vfprintf_r+0xccc>
   11110:	419b8bbb          	subw	s7,s7,s9
   11114:	000d8493          	mv	s1,s11
   11118:	f8cff06f          	j	108a4 <_vfprintf_r+0x480>
   1111c:	06500713          	li	a4,101
   11120:	b1a756e3          	bge	a4,s10,10c2c <_vfprintf_r+0x808>
   11124:	10013503          	ld	a0,256(sp)
   11128:	10813583          	ld	a1,264(sp)
   1112c:	00000613          	li	a2,0
   11130:	00000693          	li	a3,0
   11134:	02f13c23          	sd	a5,56(sp)
   11138:	02613823          	sd	t1,48(sp)
   1113c:	5a40e0ef          	jal	ra,1f6e0 <__eqtf2>
   11140:	03013303          	ld	t1,48(sp)
   11144:	03813783          	ld	a5,56(sp)
   11148:	48051663          	bnez	a0,115d4 <_vfprintf_r+0x11b0>
   1114c:	11812703          	lw	a4,280(sp)
   11150:	000216b7          	lui	a3,0x21
   11154:	30068693          	addi	a3,a3,768 # 21300 <__clzdi2+0x9c>
   11158:	0017071b          	addiw	a4,a4,1
   1115c:	00d33023          	sd	a3,0(t1)
   11160:	00178793          	addi	a5,a5,1
   11164:	00100693          	li	a3,1
   11168:	00d33423          	sd	a3,8(t1)
   1116c:	10e12c23          	sw	a4,280(sp)
   11170:	0007069b          	sext.w	a3,a4
   11174:	12f13023          	sd	a5,288(sp)
   11178:	00700713          	li	a4,7
   1117c:	01030313          	addi	t1,t1,16
   11180:	26d74ee3          	blt	a4,a3,11bfc <_vfprintf_r+0x17d8>
   11184:	0e812703          	lw	a4,232(sp)
   11188:	02013683          	ld	a3,32(sp)
   1118c:	68d75c63          	bge	a4,a3,11824 <_vfprintf_r+0x1400>
   11190:	07013703          	ld	a4,112(sp)
   11194:	06813683          	ld	a3,104(sp)
   11198:	01030313          	addi	t1,t1,16
   1119c:	fee33823          	sd	a4,-16(t1)
   111a0:	11812703          	lw	a4,280(sp)
   111a4:	00d787b3          	add	a5,a5,a3
   111a8:	fed33c23          	sd	a3,-8(t1)
   111ac:	0017071b          	addiw	a4,a4,1
   111b0:	0007069b          	sext.w	a3,a4
   111b4:	10e12c23          	sw	a4,280(sp)
   111b8:	12f13023          	sd	a5,288(sp)
   111bc:	00700713          	li	a4,7
   111c0:	08d740e3          	blt	a4,a3,11a40 <_vfprintf_r+0x161c>
   111c4:	02013703          	ld	a4,32(sp)
   111c8:	fff70b9b          	addiw	s7,a4,-1
   111cc:	d7705e63          	blez	s7,10748 <_vfprintf_r+0x324>
   111d0:	000218b7          	lui	a7,0x21
   111d4:	01000693          	li	a3,16
   111d8:	11812703          	lw	a4,280(sp)
   111dc:	48888d93          	addi	s11,a7,1160 # 21488 <zeroes.0>
   111e0:	01000c93          	li	s9,16
   111e4:	00700c13          	li	s8,7
   111e8:	0176c863          	blt	a3,s7,111f8 <_vfprintf_r+0xdd4>
   111ec:	2310006f          	j	11c1c <_vfprintf_r+0x17f8>
   111f0:	ff0b8b9b          	addiw	s7,s7,-16
   111f4:	237cd4e3          	bge	s9,s7,11c1c <_vfprintf_r+0x17f8>
   111f8:	0017071b          	addiw	a4,a4,1
   111fc:	01078793          	addi	a5,a5,16
   11200:	01b33023          	sd	s11,0(t1)
   11204:	01933423          	sd	s9,8(t1)
   11208:	12f13023          	sd	a5,288(sp)
   1120c:	10e12c23          	sw	a4,280(sp)
   11210:	01030313          	addi	t1,t1,16
   11214:	fcec5ee3          	bge	s8,a4,111f0 <_vfprintf_r+0xdcc>
   11218:	11010613          	addi	a2,sp,272
   1121c:	00090593          	mv	a1,s2
   11220:	000a0513          	mv	a0,s4
   11224:	529090ef          	jal	ra,1af4c <__sprint_r>
   11228:	1a051a63          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   1122c:	12013783          	ld	a5,288(sp)
   11230:	11812703          	lw	a4,280(sp)
   11234:	000b0313          	mv	t1,s6
   11238:	fb9ff06f          	j	111f0 <_vfprintf_r+0xdcc>
   1123c:	413a86bb          	subw	a3,s5,s3
   11240:	ccd05663          	blez	a3,1070c <_vfprintf_r+0x2e8>
   11244:	000218b7          	lui	a7,0x21
   11248:	01000613          	li	a2,16
   1124c:	11812703          	lw	a4,280(sp)
   11250:	48888d93          	addi	s11,a7,1160 # 21488 <zeroes.0>
   11254:	01000f13          	li	t5,16
   11258:	00700f93          	li	t6,7
   1125c:	00d64863          	blt	a2,a3,1126c <_vfprintf_r+0xe48>
   11260:	0640006f          	j	112c4 <_vfprintf_r+0xea0>
   11264:	ff06869b          	addiw	a3,a3,-16
   11268:	04df5e63          	bge	t5,a3,112c4 <_vfprintf_r+0xea0>
   1126c:	0017071b          	addiw	a4,a4,1
   11270:	01078793          	addi	a5,a5,16
   11274:	01b33023          	sd	s11,0(t1)
   11278:	01e33423          	sd	t5,8(t1)
   1127c:	12f13023          	sd	a5,288(sp)
   11280:	10e12c23          	sw	a4,280(sp)
   11284:	01030313          	addi	t1,t1,16
   11288:	fcefdee3          	bge	t6,a4,11264 <_vfprintf_r+0xe40>
   1128c:	11010613          	addi	a2,sp,272
   11290:	00090593          	mv	a1,s2
   11294:	000a0513          	mv	a0,s4
   11298:	02d13823          	sd	a3,48(sp)
   1129c:	4b1090ef          	jal	ra,1af4c <__sprint_r>
   112a0:	12051e63          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   112a4:	03013683          	ld	a3,48(sp)
   112a8:	01000f13          	li	t5,16
   112ac:	12013783          	ld	a5,288(sp)
   112b0:	ff06869b          	addiw	a3,a3,-16
   112b4:	11812703          	lw	a4,280(sp)
   112b8:	000b0313          	mv	t1,s6
   112bc:	00700f93          	li	t6,7
   112c0:	fadf46e3          	blt	t5,a3,1126c <_vfprintf_r+0xe48>
   112c4:	0017071b          	addiw	a4,a4,1
   112c8:	00d787b3          	add	a5,a5,a3
   112cc:	00d33423          	sd	a3,8(t1)
   112d0:	01b33023          	sd	s11,0(t1)
   112d4:	0007069b          	sext.w	a3,a4
   112d8:	10e12c23          	sw	a4,280(sp)
   112dc:	12f13023          	sd	a5,288(sp)
   112e0:	00700713          	li	a4,7
   112e4:	01030313          	addi	t1,t1,16
   112e8:	c2d75263          	bge	a4,a3,1070c <_vfprintf_r+0x2e8>
   112ec:	11010613          	addi	a2,sp,272
   112f0:	00090593          	mv	a1,s2
   112f4:	000a0513          	mv	a0,s4
   112f8:	455090ef          	jal	ra,1af4c <__sprint_r>
   112fc:	0e051063          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   11300:	12013783          	ld	a5,288(sp)
   11304:	000b0313          	mv	t1,s6
   11308:	c04ff06f          	j	1070c <_vfprintf_r+0x2e8>
   1130c:	000218b7          	lui	a7,0x21
   11310:	01000613          	li	a2,16
   11314:	11812703          	lw	a4,280(sp)
   11318:	48888d93          	addi	s11,a7,1160 # 21488 <zeroes.0>
   1131c:	01000e93          	li	t4,16
   11320:	00700f13          	li	t5,7
   11324:	01864863          	blt	a2,s8,11334 <_vfprintf_r+0xf10>
   11328:	05c0006f          	j	11384 <_vfprintf_r+0xf60>
   1132c:	ff0c0c1b          	addiw	s8,s8,-16
   11330:	058eda63          	bge	t4,s8,11384 <_vfprintf_r+0xf60>
   11334:	0017071b          	addiw	a4,a4,1
   11338:	01078793          	addi	a5,a5,16
   1133c:	01b33023          	sd	s11,0(t1)
   11340:	01d33423          	sd	t4,8(t1)
   11344:	12f13023          	sd	a5,288(sp)
   11348:	10e12c23          	sw	a4,280(sp)
   1134c:	01030313          	addi	t1,t1,16
   11350:	fcef5ee3          	bge	t5,a4,1132c <_vfprintf_r+0xf08>
   11354:	11010613          	addi	a2,sp,272
   11358:	00090593          	mv	a1,s2
   1135c:	000a0513          	mv	a0,s4
   11360:	3ed090ef          	jal	ra,1af4c <__sprint_r>
   11364:	06051c63          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   11368:	01000e93          	li	t4,16
   1136c:	ff0c0c1b          	addiw	s8,s8,-16
   11370:	12013783          	ld	a5,288(sp)
   11374:	11812703          	lw	a4,280(sp)
   11378:	000b0313          	mv	t1,s6
   1137c:	00700f13          	li	t5,7
   11380:	fb8ecae3          	blt	t4,s8,11334 <_vfprintf_r+0xf10>
   11384:	0017069b          	addiw	a3,a4,1
   11388:	018787b3          	add	a5,a5,s8
   1138c:	01b33023          	sd	s11,0(t1)
   11390:	01833423          	sd	s8,8(t1)
   11394:	12f13023          	sd	a5,288(sp)
   11398:	10d12c23          	sw	a3,280(sp)
   1139c:	00700713          	li	a4,7
   113a0:	01030313          	addi	t1,t1,16
   113a4:	b6d75863          	bge	a4,a3,10714 <_vfprintf_r+0x2f0>
   113a8:	11010613          	addi	a2,sp,272
   113ac:	00090593          	mv	a1,s2
   113b0:	000a0513          	mv	a0,s4
   113b4:	399090ef          	jal	ra,1af4c <__sprint_r>
   113b8:	02051263          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   113bc:	12013783          	ld	a5,288(sp)
   113c0:	000b0313          	mv	t1,s6
   113c4:	b50ff06f          	j	10714 <_vfprintf_r+0x2f0>
   113c8:	11010613          	addi	a2,sp,272
   113cc:	00090593          	mv	a1,s2
   113d0:	000a0513          	mv	a0,s4
   113d4:	379090ef          	jal	ra,1af4c <__sprint_r>
   113d8:	b8050e63          	beqz	a0,10774 <_vfprintf_r+0x350>
   113dc:	01813783          	ld	a5,24(sp)
   113e0:	bc078463          	beqz	a5,107a8 <_vfprintf_r+0x384>
   113e4:	00078593          	mv	a1,a5
   113e8:	000a0513          	mv	a0,s4
   113ec:	190020ef          	jal	ra,1357c <_free_r>
   113f0:	bb8ff06f          	j	107a8 <_vfprintf_r+0x384>
   113f4:	00100713          	li	a4,1
   113f8:	00048d93          	mv	s11,s1
   113fc:	9ce790e3          	bne	a5,a4,10dbc <_vfprintf_r+0x998>
   11400:	00900793          	li	a5,9
   11404:	4b37e463          	bltu	a5,s3,118ac <_vfprintf_r+0x1488>
   11408:	0309899b          	addiw	s3,s3,48
   1140c:	193105a3          	sb	s3,395(sp)
   11410:	000d8493          	mv	s1,s11
   11414:	00100b93          	li	s7,1
   11418:	18b10c93          	addi	s9,sp,395
   1141c:	c88ff06f          	j	108a4 <_vfprintf_r+0x480>
   11420:	000218b7          	lui	a7,0x21
   11424:	01000613          	li	a2,16
   11428:	11812703          	lw	a4,280(sp)
   1142c:	47888893          	addi	a7,a7,1144 # 21478 <blanks.1>
   11430:	01000f13          	li	t5,16
   11434:	00700393          	li	t2,7
   11438:	00d64863          	blt	a2,a3,11448 <_vfprintf_r+0x1024>
   1143c:	0740006f          	j	114b0 <_vfprintf_r+0x108c>
   11440:	ff06869b          	addiw	a3,a3,-16
   11444:	06df5663          	bge	t5,a3,114b0 <_vfprintf_r+0x108c>
   11448:	0017071b          	addiw	a4,a4,1
   1144c:	01078793          	addi	a5,a5,16
   11450:	01133023          	sd	a7,0(t1)
   11454:	01e33423          	sd	t5,8(t1)
   11458:	12f13023          	sd	a5,288(sp)
   1145c:	10e12c23          	sw	a4,280(sp)
   11460:	01030313          	addi	t1,t1,16
   11464:	fce3dee3          	bge	t2,a4,11440 <_vfprintf_r+0x101c>
   11468:	11010613          	addi	a2,sp,272
   1146c:	00090593          	mv	a1,s2
   11470:	000a0513          	mv	a0,s4
   11474:	05113023          	sd	a7,64(sp)
   11478:	02d13c23          	sd	a3,56(sp)
   1147c:	02513823          	sd	t0,48(sp)
   11480:	2cd090ef          	jal	ra,1af4c <__sprint_r>
   11484:	f4051ce3          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   11488:	03813683          	ld	a3,56(sp)
   1148c:	01000f13          	li	t5,16
   11490:	12013783          	ld	a5,288(sp)
   11494:	ff06869b          	addiw	a3,a3,-16
   11498:	11812703          	lw	a4,280(sp)
   1149c:	04013883          	ld	a7,64(sp)
   114a0:	03013283          	ld	t0,48(sp)
   114a4:	000b0313          	mv	t1,s6
   114a8:	00700393          	li	t2,7
   114ac:	f8df4ee3          	blt	t5,a3,11448 <_vfprintf_r+0x1024>
   114b0:	0017071b          	addiw	a4,a4,1
   114b4:	00d787b3          	add	a5,a5,a3
   114b8:	00d33423          	sd	a3,8(t1)
   114bc:	01133023          	sd	a7,0(t1)
   114c0:	0007069b          	sext.w	a3,a4
   114c4:	10e12c23          	sw	a4,280(sp)
   114c8:	12f13023          	sd	a5,288(sp)
   114cc:	00700713          	li	a4,7
   114d0:	01030313          	addi	t1,t1,16
   114d4:	9ad75e63          	bge	a4,a3,10690 <_vfprintf_r+0x26c>
   114d8:	11010613          	addi	a2,sp,272
   114dc:	00090593          	mv	a1,s2
   114e0:	000a0513          	mv	a0,s4
   114e4:	02513823          	sd	t0,48(sp)
   114e8:	265090ef          	jal	ra,1af4c <__sprint_r>
   114ec:	ee0518e3          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   114f0:	12013783          	ld	a5,288(sp)
   114f4:	03013283          	ld	t0,48(sp)
   114f8:	000b0313          	mv	t1,s6
   114fc:	994ff06f          	j	10690 <_vfprintf_r+0x26c>
   11500:	11010613          	addi	a2,sp,272
   11504:	00090593          	mv	a1,s2
   11508:	000a0513          	mv	a0,s4
   1150c:	241090ef          	jal	ra,1af4c <__sprint_r>
   11510:	ec0516e3          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   11514:	12013783          	ld	a5,288(sp)
   11518:	000b0313          	mv	t1,s6
   1151c:	9e8ff06f          	j	10704 <_vfprintf_r+0x2e0>
   11520:	000218b7          	lui	a7,0x21
   11524:	01000693          	li	a3,16
   11528:	11812703          	lw	a4,280(sp)
   1152c:	47888893          	addi	a7,a7,1144 # 21478 <blanks.1>
   11530:	01000b93          	li	s7,16
   11534:	00700c13          	li	s8,7
   11538:	0096c863          	blt	a3,s1,11548 <_vfprintf_r+0x1124>
   1153c:	05c0006f          	j	11598 <_vfprintf_r+0x1174>
   11540:	ff04849b          	addiw	s1,s1,-16
   11544:	049bda63          	bge	s7,s1,11598 <_vfprintf_r+0x1174>
   11548:	0017071b          	addiw	a4,a4,1
   1154c:	01078793          	addi	a5,a5,16
   11550:	01133023          	sd	a7,0(t1)
   11554:	01733423          	sd	s7,8(t1)
   11558:	12f13023          	sd	a5,288(sp)
   1155c:	10e12c23          	sw	a4,280(sp)
   11560:	01030313          	addi	t1,t1,16
   11564:	fcec5ee3          	bge	s8,a4,11540 <_vfprintf_r+0x111c>
   11568:	11010613          	addi	a2,sp,272
   1156c:	00090593          	mv	a1,s2
   11570:	000a0513          	mv	a0,s4
   11574:	03113823          	sd	a7,48(sp)
   11578:	1d5090ef          	jal	ra,1af4c <__sprint_r>
   1157c:	e60510e3          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   11580:	ff04849b          	addiw	s1,s1,-16
   11584:	12013783          	ld	a5,288(sp)
   11588:	11812703          	lw	a4,280(sp)
   1158c:	03013883          	ld	a7,48(sp)
   11590:	000b0313          	mv	t1,s6
   11594:	fa9bcae3          	blt	s7,s1,11548 <_vfprintf_r+0x1124>
   11598:	0017069b          	addiw	a3,a4,1
   1159c:	009787b3          	add	a5,a5,s1
   115a0:	01133023          	sd	a7,0(t1)
   115a4:	00933423          	sd	s1,8(t1)
   115a8:	12f13023          	sd	a5,288(sp)
   115ac:	10d12c23          	sw	a3,280(sp)
   115b0:	00700713          	li	a4,7
   115b4:	9ad75263          	bge	a4,a3,10758 <_vfprintf_r+0x334>
   115b8:	11010613          	addi	a2,sp,272
   115bc:	00090593          	mv	a1,s2
   115c0:	000a0513          	mv	a0,s4
   115c4:	189090ef          	jal	ra,1af4c <__sprint_r>
   115c8:	e0051ae3          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   115cc:	12013783          	ld	a5,288(sp)
   115d0:	988ff06f          	j	10758 <_vfprintf_r+0x334>
   115d4:	0e812603          	lw	a2,232(sp)
   115d8:	58c05063          	blez	a2,11b58 <_vfprintf_r+0x1734>
   115dc:	05013703          	ld	a4,80(sp)
   115e0:	02013683          	ld	a3,32(sp)
   115e4:	00070b9b          	sext.w	s7,a4
   115e8:	36e6cc63          	blt	a3,a4,11960 <_vfprintf_r+0x153c>
   115ec:	03705663          	blez	s7,11618 <_vfprintf_r+0x11f4>
   115f0:	11812703          	lw	a4,280(sp)
   115f4:	017787b3          	add	a5,a5,s7
   115f8:	01933023          	sd	s9,0(t1)
   115fc:	0017069b          	addiw	a3,a4,1
   11600:	01733423          	sd	s7,8(t1)
   11604:	12f13023          	sd	a5,288(sp)
   11608:	10d12c23          	sw	a3,280(sp)
   1160c:	00700713          	li	a4,7
   11610:	01030313          	addi	t1,t1,16
   11614:	20d744e3          	blt	a4,a3,1201c <_vfprintf_r+0x1bf8>
   11618:	fffbc713          	not	a4,s7
   1161c:	43f75713          	srai	a4,a4,0x3f
   11620:	00ebfbb3          	and	s7,s7,a4
   11624:	05013703          	ld	a4,80(sp)
   11628:	41770bbb          	subw	s7,a4,s7
   1162c:	47704263          	bgtz	s7,11a90 <_vfprintf_r+0x166c>
   11630:	05013683          	ld	a3,80(sp)
   11634:	4004f713          	andi	a4,s1,1024
   11638:	00dc8c33          	add	s8,s9,a3
   1163c:	7a071a63          	bnez	a4,11df0 <_vfprintf_r+0x19cc>
   11640:	0e812703          	lw	a4,232(sp)
   11644:	02013683          	ld	a3,32(sp)
   11648:	00d74663          	blt	a4,a3,11654 <_vfprintf_r+0x1230>
   1164c:	0014f693          	andi	a3,s1,1
   11650:	1e068ae3          	beqz	a3,12044 <_vfprintf_r+0x1c20>
   11654:	07013683          	ld	a3,112(sp)
   11658:	06813603          	ld	a2,104(sp)
   1165c:	01030313          	addi	t1,t1,16
   11660:	fed33823          	sd	a3,-16(t1)
   11664:	11812683          	lw	a3,280(sp)
   11668:	00c787b3          	add	a5,a5,a2
   1166c:	fec33c23          	sd	a2,-8(t1)
   11670:	0016869b          	addiw	a3,a3,1
   11674:	0006861b          	sext.w	a2,a3
   11678:	10d12c23          	sw	a3,280(sp)
   1167c:	12f13023          	sd	a5,288(sp)
   11680:	00700693          	li	a3,7
   11684:	58c6c0e3          	blt	a3,a2,12404 <_vfprintf_r+0x1fe0>
   11688:	02013683          	ld	a3,32(sp)
   1168c:	40e6863b          	subw	a2,a3,a4
   11690:	00dc86b3          	add	a3,s9,a3
   11694:	418686bb          	subw	a3,a3,s8
   11698:	00060713          	mv	a4,a2
   1169c:	00c6d463          	bge	a3,a2,116a4 <_vfprintf_r+0x1280>
   116a0:	00068713          	mv	a4,a3
   116a4:	00070b9b          	sext.w	s7,a4
   116a8:	03705663          	blez	s7,116d4 <_vfprintf_r+0x12b0>
   116ac:	11812703          	lw	a4,280(sp)
   116b0:	017787b3          	add	a5,a5,s7
   116b4:	01833023          	sd	s8,0(t1)
   116b8:	0017069b          	addiw	a3,a4,1
   116bc:	01733423          	sd	s7,8(t1)
   116c0:	12f13023          	sd	a5,288(sp)
   116c4:	10d12c23          	sw	a3,280(sp)
   116c8:	00700713          	li	a4,7
   116cc:	01030313          	addi	t1,t1,16
   116d0:	64d74ee3          	blt	a4,a3,1252c <_vfprintf_r+0x2108>
   116d4:	fffbc713          	not	a4,s7
   116d8:	43f75713          	srai	a4,a4,0x3f
   116dc:	00ebfbb3          	and	s7,s7,a4
   116e0:	41760bbb          	subw	s7,a2,s7
   116e4:	01704463          	bgtz	s7,116ec <_vfprintf_r+0x12c8>
   116e8:	860ff06f          	j	10748 <_vfprintf_r+0x324>
   116ec:	000218b7          	lui	a7,0x21
   116f0:	01000693          	li	a3,16
   116f4:	11812703          	lw	a4,280(sp)
   116f8:	48888d93          	addi	s11,a7,1160 # 21488 <zeroes.0>
   116fc:	01000c93          	li	s9,16
   11700:	00700c13          	li	s8,7
   11704:	0176c863          	blt	a3,s7,11714 <_vfprintf_r+0x12f0>
   11708:	5140006f          	j	11c1c <_vfprintf_r+0x17f8>
   1170c:	ff0b8b9b          	addiw	s7,s7,-16
   11710:	517cd663          	bge	s9,s7,11c1c <_vfprintf_r+0x17f8>
   11714:	0017071b          	addiw	a4,a4,1
   11718:	01078793          	addi	a5,a5,16
   1171c:	01b33023          	sd	s11,0(t1)
   11720:	01933423          	sd	s9,8(t1)
   11724:	12f13023          	sd	a5,288(sp)
   11728:	10e12c23          	sw	a4,280(sp)
   1172c:	01030313          	addi	t1,t1,16
   11730:	fcec5ee3          	bge	s8,a4,1170c <_vfprintf_r+0x12e8>
   11734:	11010613          	addi	a2,sp,272
   11738:	00090593          	mv	a1,s2
   1173c:	000a0513          	mv	a0,s4
   11740:	00d090ef          	jal	ra,1af4c <__sprint_r>
   11744:	c8051ce3          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   11748:	12013783          	ld	a5,288(sp)
   1174c:	11812703          	lw	a4,280(sp)
   11750:	000b0313          	mv	t1,s6
   11754:	fb9ff06f          	j	1170c <_vfprintf_r+0x12e8>
   11758:	0014f513          	andi	a0,s1,1
   1175c:	ce051a63          	bnez	a0,10c50 <_vfprintf_r+0x82c>
   11760:	00b33423          	sd	a1,8(t1)
   11764:	13813023          	sd	s8,288(sp)
   11768:	10e12c23          	sw	a4,280(sp)
   1176c:	00700693          	li	a3,7
   11770:	22e6c063          	blt	a3,a4,11990 <_vfprintf_r+0x156c>
   11774:	0026061b          	addiw	a2,a2,2
   11778:	02030313          	addi	t1,t1,32
   1177c:	d88ff06f          	j	10d04 <_vfprintf_r+0x8e0>
   11780:	d9a05263          	blez	s10,10d04 <_vfprintf_r+0x8e0>
   11784:	01000713          	li	a4,16
   11788:	01a74463          	blt	a4,s10,11790 <_vfprintf_r+0x136c>
   1178c:	1a80106f          	j	12934 <_vfprintf_r+0x2510>
   11790:	000218b7          	lui	a7,0x21
   11794:	48888d93          	addi	s11,a7,1160 # 21488 <zeroes.0>
   11798:	01000813          	li	a6,16
   1179c:	00700c93          	li	s9,7
   117a0:	0100006f          	j	117b0 <_vfprintf_r+0x138c>
   117a4:	ff0d0d1b          	addiw	s10,s10,-16
   117a8:	1da85263          	bge	a6,s10,1196c <_vfprintf_r+0x1548>
   117ac:	00170e1b          	addiw	t3,a4,1
   117b0:	010c0c13          	addi	s8,s8,16
   117b4:	01bbb023          	sd	s11,0(s7)
   117b8:	010bb423          	sd	a6,8(s7)
   117bc:	13813023          	sd	s8,288(sp)
   117c0:	000e071b          	sext.w	a4,t3
   117c4:	11c12c23          	sw	t3,280(sp)
   117c8:	010b8b93          	addi	s7,s7,16
   117cc:	fcecdce3          	bge	s9,a4,117a4 <_vfprintf_r+0x1380>
   117d0:	11010613          	addi	a2,sp,272
   117d4:	00090593          	mv	a1,s2
   117d8:	000a0513          	mv	a0,s4
   117dc:	770090ef          	jal	ra,1af4c <__sprint_r>
   117e0:	be051ee3          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   117e4:	12013c03          	ld	s8,288(sp)
   117e8:	11812703          	lw	a4,280(sp)
   117ec:	000b0b93          	mv	s7,s6
   117f0:	01000813          	li	a6,16
   117f4:	fb1ff06f          	j	117a4 <_vfprintf_r+0x1380>
   117f8:	010df793          	andi	a5,s11,16
   117fc:	04079463          	bnez	a5,11844 <_vfprintf_r+0x1420>
   11800:	01013683          	ld	a3,16(sp)
   11804:	040df793          	andi	a5,s11,64
   11808:	0006a983          	lw	s3,0(a3)
   1180c:	52078863          	beqz	a5,11d3c <_vfprintf_r+0x1918>
   11810:	03099993          	slli	s3,s3,0x30
   11814:	0309d993          	srli	s3,s3,0x30
   11818:	00e13823          	sd	a4,16(sp)
   1181c:	00100793          	li	a5,1
   11820:	8dcff06f          	j	108fc <_vfprintf_r+0x4d8>
   11824:	0014f713          	andi	a4,s1,1
   11828:	00071463          	bnez	a4,11830 <_vfprintf_r+0x140c>
   1182c:	f1dfe06f          	j	10748 <_vfprintf_r+0x324>
   11830:	961ff06f          	j	11190 <_vfprintf_r+0xd6c>
   11834:	00813783          	ld	a5,8(sp)
   11838:	00040c93          	mv	s9,s0
   1183c:	00f73023          	sd	a5,0(a4)
   11840:	f55fe06f          	j	10794 <_vfprintf_r+0x370>
   11844:	01013783          	ld	a5,16(sp)
   11848:	00e13823          	sd	a4,16(sp)
   1184c:	0007b983          	ld	s3,0(a5)
   11850:	00100793          	li	a5,1
   11854:	8a8ff06f          	j	108fc <_vfprintf_r+0x4d8>
   11858:	01013783          	ld	a5,16(sp)
   1185c:	0007b783          	ld	a5,0(a5)
   11860:	00078993          	mv	s3,a5
   11864:	80cff06f          	j	10870 <_vfprintf_r+0x44c>
   11868:	01013783          	ld	a5,16(sp)
   1186c:	0007b983          	ld	s3,0(a5)
   11870:	87cff06f          	j	108ec <_vfprintf_r+0x4c8>
   11874:	01013783          	ld	a5,16(sp)
   11878:	00f78793          	addi	a5,a5,15
   1187c:	ff07f793          	andi	a5,a5,-16
   11880:	0007b703          	ld	a4,0(a5)
   11884:	0087b683          	ld	a3,8(a5)
   11888:	01078793          	addi	a5,a5,16
   1188c:	00f13823          	sd	a5,16(sp)
   11890:	10e13023          	sd	a4,256(sp)
   11894:	10d13423          	sd	a3,264(sp)
   11898:	8f8ff06f          	j	10990 <_vfprintf_r+0x56c>
   1189c:	00e13823          	sd	a4,16(sp)
   118a0:	00900793          	li	a5,9
   118a4:	00048d93          	mv	s11,s1
   118a8:	b737f0e3          	bgeu	a5,s3,11408 <_vfprintf_r+0xfe4>
   118ac:	18c10b93          	addi	s7,sp,396
   118b0:	400df713          	andi	a4,s11,1024
   118b4:	02013023          	sd	zero,32(sp)
   118b8:	000b8613          	mv	a2,s7
   118bc:	00a00493          	li	s1,10
   118c0:	00900693          	li	a3,9
   118c4:	0ff00893          	li	a7,255
   118c8:	0140006f          	j	118dc <_vfprintf_r+0x14b8>
   118cc:	0299d7b3          	divu	a5,s3,s1
   118d0:	8536f0e3          	bgeu	a3,s3,11110 <_vfprintf_r+0xcec>
   118d4:	00078993          	mv	s3,a5
   118d8:	000c8613          	mv	a2,s9
   118dc:	02013583          	ld	a1,32(sp)
   118e0:	fff60c93          	addi	s9,a2,-1
   118e4:	0015859b          	addiw	a1,a1,1
   118e8:	02b13023          	sd	a1,32(sp)
   118ec:	0299f7b3          	remu	a5,s3,s1
   118f0:	0307879b          	addiw	a5,a5,48
   118f4:	fef60fa3          	sb	a5,-1(a2)
   118f8:	fc070ae3          	beqz	a4,118cc <_vfprintf_r+0x14a8>
   118fc:	06013783          	ld	a5,96(sp)
   11900:	0007c783          	lbu	a5,0(a5)
   11904:	fcf594e3          	bne	a1,a5,118cc <_vfprintf_r+0x14a8>
   11908:	fd1782e3          	beq	a5,a7,118cc <_vfprintf_r+0x14a8>
   1190c:	8136f2e3          	bgeu	a3,s3,11110 <_vfprintf_r+0xcec>
   11910:	08013783          	ld	a5,128(sp)
   11914:	08813583          	ld	a1,136(sp)
   11918:	02613823          	sd	t1,48(sp)
   1191c:	40fc8cb3          	sub	s9,s9,a5
   11920:	00078613          	mv	a2,a5
   11924:	000c8513          	mv	a0,s9
   11928:	00e13c23          	sd	a4,24(sp)
   1192c:	77d060ef          	jal	ra,188a8 <strncpy>
   11930:	06013703          	ld	a4,96(sp)
   11934:	0299d7b3          	divu	a5,s3,s1
   11938:	03013303          	ld	t1,48(sp)
   1193c:	00174603          	lbu	a2,1(a4)
   11940:	02013023          	sd	zero,32(sp)
   11944:	00900693          	li	a3,9
   11948:	00c03633          	snez	a2,a2
   1194c:	00c70733          	add	a4,a4,a2
   11950:	06e13023          	sd	a4,96(sp)
   11954:	0ff00893          	li	a7,255
   11958:	01813703          	ld	a4,24(sp)
   1195c:	f79ff06f          	j	118d4 <_vfprintf_r+0x14b0>
   11960:	00068b9b          	sext.w	s7,a3
   11964:	c97046e3          	bgtz	s7,115f0 <_vfprintf_r+0x11cc>
   11968:	cb1ff06f          	j	11618 <_vfprintf_r+0x11f4>
   1196c:	0017061b          	addiw	a2,a4,1
   11970:	010b8713          	addi	a4,s7,16
   11974:	01ac0c33          	add	s8,s8,s10
   11978:	01bbb023          	sd	s11,0(s7)
   1197c:	01abb423          	sd	s10,8(s7)
   11980:	13813023          	sd	s8,288(sp)
   11984:	10c12c23          	sw	a2,280(sp)
   11988:	00700693          	li	a3,7
   1198c:	64c6d863          	bge	a3,a2,11fdc <_vfprintf_r+0x1bb8>
   11990:	11010613          	addi	a2,sp,272
   11994:	00090593          	mv	a1,s2
   11998:	000a0513          	mv	a0,s4
   1199c:	5b0090ef          	jal	ra,1af4c <__sprint_r>
   119a0:	a2051ee3          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   119a4:	11812603          	lw	a2,280(sp)
   119a8:	12013c03          	ld	s8,288(sp)
   119ac:	1a010313          	addi	t1,sp,416
   119b0:	0016061b          	addiw	a2,a2,1
   119b4:	000b0b93          	mv	s7,s6
   119b8:	b4cff06f          	j	10d04 <_vfprintf_r+0x8e0>
   119bc:	00048d93          	mv	s11,s1
   119c0:	d14ff06f          	j	10ed4 <_vfprintf_r+0xab0>
   119c4:	000217b7          	lui	a5,0x21
   119c8:	2e078793          	addi	a5,a5,736 # 212e0 <__clzdi2+0x7c>
   119cc:	02f13423          	sd	a5,40(sp)
   119d0:	01013683          	ld	a3,16(sp)
   119d4:	0204f793          	andi	a5,s1,32
   119d8:	00868713          	addi	a4,a3,8
   119dc:	12078063          	beqz	a5,11afc <_vfprintf_r+0x16d8>
   119e0:	0006b983          	ld	s3,0(a3)
   119e4:	0014f793          	andi	a5,s1,1
   119e8:	00078e63          	beqz	a5,11a04 <_vfprintf_r+0x15e0>
   119ec:	00098c63          	beqz	s3,11a04 <_vfprintf_r+0x15e0>
   119f0:	0024e493          	ori	s1,s1,2
   119f4:	03000793          	li	a5,48
   119f8:	0ef10023          	sb	a5,224(sp)
   119fc:	0fa100a3          	sb	s10,225(sp)
   11a00:	0004849b          	sext.w	s1,s1
   11a04:	bff4f493          	andi	s1,s1,-1025
   11a08:	00048d9b          	sext.w	s11,s1
   11a0c:	00e13823          	sd	a4,16(sp)
   11a10:	00200793          	li	a5,2
   11a14:	ee9fe06f          	j	108fc <_vfprintf_r+0x4d8>
   11a18:	2004e493          	ori	s1,s1,512
   11a1c:	00144e03          	lbu	t3,1(s0)
   11a20:	0004849b          	sext.w	s1,s1
   11a24:	00140413          	addi	s0,s0,1
   11a28:	bb9fe06f          	j	105e0 <_vfprintf_r+0x1bc>
   11a2c:	0204e493          	ori	s1,s1,32
   11a30:	00144e03          	lbu	t3,1(s0)
   11a34:	0004849b          	sext.w	s1,s1
   11a38:	00140413          	addi	s0,s0,1
   11a3c:	ba5fe06f          	j	105e0 <_vfprintf_r+0x1bc>
   11a40:	11010613          	addi	a2,sp,272
   11a44:	00090593          	mv	a1,s2
   11a48:	000a0513          	mv	a0,s4
   11a4c:	500090ef          	jal	ra,1af4c <__sprint_r>
   11a50:	980516e3          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   11a54:	12013783          	ld	a5,288(sp)
   11a58:	000b0313          	mv	t1,s6
   11a5c:	f68ff06f          	j	111c4 <_vfprintf_r+0xda0>
   11a60:	000217b7          	lui	a5,0x21
   11a64:	2c878793          	addi	a5,a5,712 # 212c8 <__clzdi2+0x64>
   11a68:	02f13423          	sd	a5,40(sp)
   11a6c:	f65ff06f          	j	119d0 <_vfprintf_r+0x15ac>
   11a70:	00600793          	li	a5,6
   11a74:	000c0b9b          	sext.w	s7,s8
   11a78:	5d87e263          	bltu	a5,s8,1203c <_vfprintf_r+0x1c18>
   11a7c:	00021837          	lui	a6,0x21
   11a80:	000b8993          	mv	s3,s7
   11a84:	01b13823          	sd	s11,16(sp)
   11a88:	2f880c93          	addi	s9,a6,760 # 212f8 <__clzdi2+0x94>
   11a8c:	bd1fe06f          	j	1065c <_vfprintf_r+0x238>
   11a90:	000218b7          	lui	a7,0x21
   11a94:	01000693          	li	a3,16
   11a98:	11812703          	lw	a4,280(sp)
   11a9c:	48888d93          	addi	s11,a7,1160 # 21488 <zeroes.0>
   11aa0:	01000d13          	li	s10,16
   11aa4:	00700c13          	li	s8,7
   11aa8:	0176c863          	blt	a3,s7,11ab8 <_vfprintf_r+0x1694>
   11aac:	3000006f          	j	11dac <_vfprintf_r+0x1988>
   11ab0:	ff0b8b9b          	addiw	s7,s7,-16
   11ab4:	2f7d5c63          	bge	s10,s7,11dac <_vfprintf_r+0x1988>
   11ab8:	0017071b          	addiw	a4,a4,1
   11abc:	01078793          	addi	a5,a5,16
   11ac0:	01b33023          	sd	s11,0(t1)
   11ac4:	01a33423          	sd	s10,8(t1)
   11ac8:	12f13023          	sd	a5,288(sp)
   11acc:	10e12c23          	sw	a4,280(sp)
   11ad0:	01030313          	addi	t1,t1,16
   11ad4:	fcec5ee3          	bge	s8,a4,11ab0 <_vfprintf_r+0x168c>
   11ad8:	11010613          	addi	a2,sp,272
   11adc:	00090593          	mv	a1,s2
   11ae0:	000a0513          	mv	a0,s4
   11ae4:	468090ef          	jal	ra,1af4c <__sprint_r>
   11ae8:	8e051ae3          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   11aec:	12013783          	ld	a5,288(sp)
   11af0:	11812703          	lw	a4,280(sp)
   11af4:	000b0313          	mv	t1,s6
   11af8:	fb9ff06f          	j	11ab0 <_vfprintf_r+0x168c>
   11afc:	0104f793          	andi	a5,s1,16
   11b00:	0e078063          	beqz	a5,11be0 <_vfprintf_r+0x17bc>
   11b04:	01013783          	ld	a5,16(sp)
   11b08:	0007b983          	ld	s3,0(a5)
   11b0c:	ed9ff06f          	j	119e4 <_vfprintf_r+0x15c0>
   11b10:	11010613          	addi	a2,sp,272
   11b14:	00090593          	mv	a1,s2
   11b18:	000a0513          	mv	a0,s4
   11b1c:	430090ef          	jal	ra,1af4c <__sprint_r>
   11b20:	8a051ee3          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   11b24:	12013c03          	ld	s8,288(sp)
   11b28:	11812703          	lw	a4,280(sp)
   11b2c:	000b0b93          	mv	s7,s6
   11b30:	938ff06f          	j	10c68 <_vfprintf_r+0x844>
   11b34:	11010613          	addi	a2,sp,272
   11b38:	00090593          	mv	a1,s2
   11b3c:	000a0513          	mv	a0,s4
   11b40:	40c090ef          	jal	ra,1af4c <__sprint_r>
   11b44:	88051ce3          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   11b48:	12013c03          	ld	s8,288(sp)
   11b4c:	11812703          	lw	a4,280(sp)
   11b50:	000b0b93          	mv	s7,s6
   11b54:	944ff06f          	j	10c98 <_vfprintf_r+0x874>
   11b58:	11812703          	lw	a4,280(sp)
   11b5c:	000216b7          	lui	a3,0x21
   11b60:	30068693          	addi	a3,a3,768 # 21300 <__clzdi2+0x9c>
   11b64:	0017071b          	addiw	a4,a4,1
   11b68:	00d33023          	sd	a3,0(t1)
   11b6c:	00178793          	addi	a5,a5,1
   11b70:	00100693          	li	a3,1
   11b74:	00d33423          	sd	a3,8(t1)
   11b78:	10e12c23          	sw	a4,280(sp)
   11b7c:	0007069b          	sext.w	a3,a4
   11b80:	12f13023          	sd	a5,288(sp)
   11b84:	00700713          	li	a4,7
   11b88:	01030313          	addi	t1,t1,16
   11b8c:	46d74063          	blt	a4,a3,11fec <_vfprintf_r+0x1bc8>
   11b90:	10061063          	bnez	a2,11c90 <_vfprintf_r+0x186c>
   11b94:	02013683          	ld	a3,32(sp)
   11b98:	0014f713          	andi	a4,s1,1
   11b9c:	00e6e733          	or	a4,a3,a4
   11ba0:	00071463          	bnez	a4,11ba8 <_vfprintf_r+0x1784>
   11ba4:	ba5fe06f          	j	10748 <_vfprintf_r+0x324>
   11ba8:	07013703          	ld	a4,112(sp)
   11bac:	06813683          	ld	a3,104(sp)
   11bb0:	00e33023          	sd	a4,0(t1)
   11bb4:	11812703          	lw	a4,280(sp)
   11bb8:	00f687b3          	add	a5,a3,a5
   11bbc:	00d33423          	sd	a3,8(t1)
   11bc0:	0017071b          	addiw	a4,a4,1
   11bc4:	0007069b          	sext.w	a3,a4
   11bc8:	10e12c23          	sw	a4,280(sp)
   11bcc:	12f13023          	sd	a5,288(sp)
   11bd0:	00700713          	li	a4,7
   11bd4:	4ed74e63          	blt	a4,a3,120d0 <_vfprintf_r+0x1cac>
   11bd8:	01030313          	addi	t1,t1,16
   11bdc:	0ec0006f          	j	11cc8 <_vfprintf_r+0x18a4>
   11be0:	01013683          	ld	a3,16(sp)
   11be4:	0404f793          	andi	a5,s1,64
   11be8:	0006a983          	lw	s3,0(a3)
   11bec:	18078063          	beqz	a5,11d6c <_vfprintf_r+0x1948>
   11bf0:	03099993          	slli	s3,s3,0x30
   11bf4:	0309d993          	srli	s3,s3,0x30
   11bf8:	dedff06f          	j	119e4 <_vfprintf_r+0x15c0>
   11bfc:	11010613          	addi	a2,sp,272
   11c00:	00090593          	mv	a1,s2
   11c04:	000a0513          	mv	a0,s4
   11c08:	344090ef          	jal	ra,1af4c <__sprint_r>
   11c0c:	fc051863          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   11c10:	12013783          	ld	a5,288(sp)
   11c14:	000b0313          	mv	t1,s6
   11c18:	d6cff06f          	j	11184 <_vfprintf_r+0xd60>
   11c1c:	0017069b          	addiw	a3,a4,1
   11c20:	00068713          	mv	a4,a3
   11c24:	017787b3          	add	a5,a5,s7
   11c28:	01b33023          	sd	s11,0(t1)
   11c2c:	b05fe06f          	j	10730 <_vfprintf_r+0x30c>
   11c30:	10013503          	ld	a0,256(sp)
   11c34:	10813583          	ld	a1,264(sp)
   11c38:	00000613          	li	a2,0
   11c3c:	00000693          	li	a3,0
   11c40:	4550d0ef          	jal	ra,1f894 <__letf2>
   11c44:	01813303          	ld	t1,24(sp)
   11c48:	7a054863          	bltz	a0,123f8 <_vfprintf_r+0x1fd4>
   11c4c:	0df14783          	lbu	a5,223(sp)
   11c50:	04700713          	li	a4,71
   11c54:	3ba75e63          	bge	a4,s10,12010 <_vfprintf_r+0x1bec>
   11c58:	00021837          	lui	a6,0x21
   11c5c:	2b080c93          	addi	s9,a6,688 # 212b0 <__clzdi2+0x4c>
   11c60:	f7f4f493          	andi	s1,s1,-129
   11c64:	00013c23          	sd	zero,24(sp)
   11c68:	04013423          	sd	zero,72(sp)
   11c6c:	04013c23          	sd	zero,88(sp)
   11c70:	04013823          	sd	zero,80(sp)
   11c74:	0004849b          	sext.w	s1,s1
   11c78:	00300993          	li	s3,3
   11c7c:	00300b93          	li	s7,3
   11c80:	00000c13          	li	s8,0
   11c84:	00078463          	beqz	a5,11c8c <_vfprintf_r+0x1868>
   11c88:	c41fe06f          	j	108c8 <_vfprintf_r+0x4a4>
   11c8c:	9e5fe06f          	j	10670 <_vfprintf_r+0x24c>
   11c90:	07013703          	ld	a4,112(sp)
   11c94:	06813683          	ld	a3,104(sp)
   11c98:	01030313          	addi	t1,t1,16
   11c9c:	fee33823          	sd	a4,-16(t1)
   11ca0:	11812703          	lw	a4,280(sp)
   11ca4:	00f687b3          	add	a5,a3,a5
   11ca8:	fed33c23          	sd	a3,-8(t1)
   11cac:	0017071b          	addiw	a4,a4,1
   11cb0:	0007069b          	sext.w	a3,a4
   11cb4:	10e12c23          	sw	a4,280(sp)
   11cb8:	12f13023          	sd	a5,288(sp)
   11cbc:	00700713          	li	a4,7
   11cc0:	40d74863          	blt	a4,a3,120d0 <_vfprintf_r+0x1cac>
   11cc4:	100640e3          	bltz	a2,125c4 <_vfprintf_r+0x21a0>
   11cc8:	02013703          	ld	a4,32(sp)
   11ccc:	0016861b          	addiw	a2,a3,1
   11cd0:	01933023          	sd	s9,0(t1)
   11cd4:	00f707b3          	add	a5,a4,a5
   11cd8:	00e33423          	sd	a4,8(t1)
   11cdc:	12f13023          	sd	a5,288(sp)
   11ce0:	10c12c23          	sw	a2,280(sp)
   11ce4:	00700713          	li	a4,7
   11ce8:	00c74463          	blt	a4,a2,11cf0 <_vfprintf_r+0x18cc>
   11cec:	a59fe06f          	j	10744 <_vfprintf_r+0x320>
   11cf0:	838ff06f          	j	10d28 <_vfprintf_r+0x904>
   11cf4:	000c8513          	mv	a0,s9
   11cf8:	02613823          	sd	t1,48(sp)
   11cfc:	2e5060ef          	jal	ra,187e0 <strlen>
   11d00:	00050b9b          	sext.w	s7,a0
   11d04:	0df14783          	lbu	a5,223(sp)
   11d08:	fffbc993          	not	s3,s7
   11d0c:	43f9d993          	srai	s3,s3,0x3f
   11d10:	01b13823          	sd	s11,16(sp)
   11d14:	00013c23          	sd	zero,24(sp)
   11d18:	04013423          	sd	zero,72(sp)
   11d1c:	04013c23          	sd	zero,88(sp)
   11d20:	04013823          	sd	zero,80(sp)
   11d24:	03013303          	ld	t1,48(sp)
   11d28:	0179f9b3          	and	s3,s3,s7
   11d2c:	00000c13          	li	s8,0
   11d30:	00078463          	beqz	a5,11d38 <_vfprintf_r+0x1914>
   11d34:	b95fe06f          	j	108c8 <_vfprintf_r+0x4a4>
   11d38:	939fe06f          	j	10670 <_vfprintf_r+0x24c>
   11d3c:	200df793          	andi	a5,s11,512
   11d40:	34078863          	beqz	a5,12090 <_vfprintf_r+0x1c6c>
   11d44:	0ff9f993          	zext.b	s3,s3
   11d48:	00e13823          	sd	a4,16(sp)
   11d4c:	00100793          	li	a5,1
   11d50:	badfe06f          	j	108fc <_vfprintf_r+0x4d8>
   11d54:	2004f793          	andi	a5,s1,512
   11d58:	32078463          	beqz	a5,12080 <_vfprintf_r+0x1c5c>
   11d5c:	01013783          	ld	a5,16(sp)
   11d60:	00078983          	lb	s3,0(a5)
   11d64:	00098793          	mv	a5,s3
   11d68:	b09fe06f          	j	10870 <_vfprintf_r+0x44c>
   11d6c:	2004f793          	andi	a5,s1,512
   11d70:	32078a63          	beqz	a5,120a4 <_vfprintf_r+0x1c80>
   11d74:	0ff9f993          	zext.b	s3,s3
   11d78:	c6dff06f          	j	119e4 <_vfprintf_r+0x15c0>
   11d7c:	2004f793          	andi	a5,s1,512
   11d80:	2e078a63          	beqz	a5,12074 <_vfprintf_r+0x1c50>
   11d84:	0ff9f993          	zext.b	s3,s3
   11d88:	b65fe06f          	j	108ec <_vfprintf_r+0x4c8>
   11d8c:	10813783          	ld	a5,264(sp)
   11d90:	3207ca63          	bltz	a5,120c4 <_vfprintf_r+0x1ca0>
   11d94:	0df14783          	lbu	a5,223(sp)
   11d98:	04700713          	li	a4,71
   11d9c:	79a75263          	bge	a4,s10,12520 <_vfprintf_r+0x20fc>
   11da0:	00021837          	lui	a6,0x21
   11da4:	2c080c93          	addi	s9,a6,704 # 212c0 <__clzdi2+0x5c>
   11da8:	eb9ff06f          	j	11c60 <_vfprintf_r+0x183c>
   11dac:	0017069b          	addiw	a3,a4,1
   11db0:	017787b3          	add	a5,a5,s7
   11db4:	01b33023          	sd	s11,0(t1)
   11db8:	01733423          	sd	s7,8(t1)
   11dbc:	12f13023          	sd	a5,288(sp)
   11dc0:	10d12c23          	sw	a3,280(sp)
   11dc4:	00700713          	li	a4,7
   11dc8:	01030313          	addi	t1,t1,16
   11dcc:	86d752e3          	bge	a4,a3,11630 <_vfprintf_r+0x120c>
   11dd0:	11010613          	addi	a2,sp,272
   11dd4:	00090593          	mv	a1,s2
   11dd8:	000a0513          	mv	a0,s4
   11ddc:	170090ef          	jal	ra,1af4c <__sprint_r>
   11de0:	de051e63          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   11de4:	12013783          	ld	a5,288(sp)
   11de8:	000b0313          	mv	t1,s6
   11dec:	845ff06f          	j	11630 <_vfprintf_r+0x120c>
   11df0:	02013703          	ld	a4,32(sp)
   11df4:	00021eb7          	lui	t4,0x21
   11df8:	00700b93          	li	s7,7
   11dfc:	00ec8733          	add	a4,s9,a4
   11e00:	02e13c23          	sd	a4,56(sp)
   11e04:	05813703          	ld	a4,88(sp)
   11e08:	01000d93          	li	s11,16
   11e0c:	488e8d13          	addi	s10,t4,1160 # 21488 <zeroes.0>
   11e10:	0c070463          	beqz	a4,11ed8 <_vfprintf_r+0x1ab4>
   11e14:	04813703          	ld	a4,72(sp)
   11e18:	0c071463          	bnez	a4,11ee0 <_vfprintf_r+0x1abc>
   11e1c:	06013703          	ld	a4,96(sp)
   11e20:	fff70713          	addi	a4,a4,-1
   11e24:	06e13023          	sd	a4,96(sp)
   11e28:	05813703          	ld	a4,88(sp)
   11e2c:	fff7071b          	addiw	a4,a4,-1
   11e30:	04e13c23          	sd	a4,88(sp)
   11e34:	08813703          	ld	a4,136(sp)
   11e38:	08013683          	ld	a3,128(sp)
   11e3c:	01030313          	addi	t1,t1,16
   11e40:	fee33823          	sd	a4,-16(t1)
   11e44:	11812703          	lw	a4,280(sp)
   11e48:	00d787b3          	add	a5,a5,a3
   11e4c:	fed33c23          	sd	a3,-8(t1)
   11e50:	0017071b          	addiw	a4,a4,1
   11e54:	12f13023          	sd	a5,288(sp)
   11e58:	0007069b          	sext.w	a3,a4
   11e5c:	10e12c23          	sw	a4,280(sp)
   11e60:	12dbc463          	blt	s7,a3,11f88 <_vfprintf_r+0x1b64>
   11e64:	06013703          	ld	a4,96(sp)
   11e68:	00074583          	lbu	a1,0(a4)
   11e6c:	03813703          	ld	a4,56(sp)
   11e70:	0005869b          	sext.w	a3,a1
   11e74:	4187063b          	subw	a2,a4,s8
   11e78:	0006871b          	sext.w	a4,a3
   11e7c:	00d65463          	bge	a2,a3,11e84 <_vfprintf_r+0x1a60>
   11e80:	0006071b          	sext.w	a4,a2
   11e84:	02e05a63          	blez	a4,11eb8 <_vfprintf_r+0x1a94>
   11e88:	11812683          	lw	a3,280(sp)
   11e8c:	00e787b3          	add	a5,a5,a4
   11e90:	01833023          	sd	s8,0(t1)
   11e94:	0016861b          	addiw	a2,a3,1
   11e98:	00e33423          	sd	a4,8(t1)
   11e9c:	12f13023          	sd	a5,288(sp)
   11ea0:	10c12c23          	sw	a2,280(sp)
   11ea4:	10cbc263          	blt	s7,a2,11fa8 <_vfprintf_r+0x1b84>
   11ea8:	06013683          	ld	a3,96(sp)
   11eac:	01030313          	addi	t1,t1,16
   11eb0:	0006c583          	lbu	a1,0(a3)
   11eb4:	0005869b          	sext.w	a3,a1
   11eb8:	fff74613          	not	a2,a4
   11ebc:	43f65613          	srai	a2,a2,0x3f
   11ec0:	00c77733          	and	a4,a4,a2
   11ec4:	40e6873b          	subw	a4,a3,a4
   11ec8:	02e04463          	bgtz	a4,11ef0 <_vfprintf_r+0x1acc>
   11ecc:	00bc0c33          	add	s8,s8,a1
   11ed0:	05813703          	ld	a4,88(sp)
   11ed4:	f40710e3          	bnez	a4,11e14 <_vfprintf_r+0x19f0>
   11ed8:	04813703          	ld	a4,72(sp)
   11edc:	42070663          	beqz	a4,12308 <_vfprintf_r+0x1ee4>
   11ee0:	04813703          	ld	a4,72(sp)
   11ee4:	fff7071b          	addiw	a4,a4,-1
   11ee8:	04e13423          	sd	a4,72(sp)
   11eec:	f49ff06f          	j	11e34 <_vfprintf_r+0x1a10>
   11ef0:	11812683          	lw	a3,280(sp)
   11ef4:	00edc863          	blt	s11,a4,11f04 <_vfprintf_r+0x1ae0>
   11ef8:	05c0006f          	j	11f54 <_vfprintf_r+0x1b30>
   11efc:	ff07071b          	addiw	a4,a4,-16
   11f00:	04edda63          	bge	s11,a4,11f54 <_vfprintf_r+0x1b30>
   11f04:	0016869b          	addiw	a3,a3,1
   11f08:	01078793          	addi	a5,a5,16
   11f0c:	01a33023          	sd	s10,0(t1)
   11f10:	01b33423          	sd	s11,8(t1)
   11f14:	12f13023          	sd	a5,288(sp)
   11f18:	10d12c23          	sw	a3,280(sp)
   11f1c:	01030313          	addi	t1,t1,16
   11f20:	fcdbdee3          	bge	s7,a3,11efc <_vfprintf_r+0x1ad8>
   11f24:	11010613          	addi	a2,sp,272
   11f28:	00090593          	mv	a1,s2
   11f2c:	000a0513          	mv	a0,s4
   11f30:	02e13823          	sd	a4,48(sp)
   11f34:	018090ef          	jal	ra,1af4c <__sprint_r>
   11f38:	ca051263          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   11f3c:	03013703          	ld	a4,48(sp)
   11f40:	12013783          	ld	a5,288(sp)
   11f44:	11812683          	lw	a3,280(sp)
   11f48:	ff07071b          	addiw	a4,a4,-16
   11f4c:	000b0313          	mv	t1,s6
   11f50:	faedcae3          	blt	s11,a4,11f04 <_vfprintf_r+0x1ae0>
   11f54:	0016869b          	addiw	a3,a3,1
   11f58:	00e787b3          	add	a5,a5,a4
   11f5c:	00e33423          	sd	a4,8(t1)
   11f60:	01a33023          	sd	s10,0(t1)
   11f64:	12f13023          	sd	a5,288(sp)
   11f68:	0006871b          	sext.w	a4,a3
   11f6c:	10d12c23          	sw	a3,280(sp)
   11f70:	44ebcc63          	blt	s7,a4,123c8 <_vfprintf_r+0x1fa4>
   11f74:	06013703          	ld	a4,96(sp)
   11f78:	01030313          	addi	t1,t1,16
   11f7c:	00074583          	lbu	a1,0(a4)
   11f80:	00bc0c33          	add	s8,s8,a1
   11f84:	f4dff06f          	j	11ed0 <_vfprintf_r+0x1aac>
   11f88:	11010613          	addi	a2,sp,272
   11f8c:	00090593          	mv	a1,s2
   11f90:	000a0513          	mv	a0,s4
   11f94:	7b9080ef          	jal	ra,1af4c <__sprint_r>
   11f98:	c4051263          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   11f9c:	12013783          	ld	a5,288(sp)
   11fa0:	000b0313          	mv	t1,s6
   11fa4:	ec1ff06f          	j	11e64 <_vfprintf_r+0x1a40>
   11fa8:	11010613          	addi	a2,sp,272
   11fac:	00090593          	mv	a1,s2
   11fb0:	000a0513          	mv	a0,s4
   11fb4:	02e13823          	sd	a4,48(sp)
   11fb8:	795080ef          	jal	ra,1af4c <__sprint_r>
   11fbc:	c2051063          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   11fc0:	06013783          	ld	a5,96(sp)
   11fc4:	03013703          	ld	a4,48(sp)
   11fc8:	000b0313          	mv	t1,s6
   11fcc:	0007c583          	lbu	a1,0(a5)
   11fd0:	12013783          	ld	a5,288(sp)
   11fd4:	0005869b          	sext.w	a3,a1
   11fd8:	ee1ff06f          	j	11eb8 <_vfprintf_r+0x1a94>
   11fdc:	0016061b          	addiw	a2,a2,1
   11fe0:	01070313          	addi	t1,a4,16
   11fe4:	00070b93          	mv	s7,a4
   11fe8:	d1dfe06f          	j	10d04 <_vfprintf_r+0x8e0>
   11fec:	11010613          	addi	a2,sp,272
   11ff0:	00090593          	mv	a1,s2
   11ff4:	000a0513          	mv	a0,s4
   11ff8:	755080ef          	jal	ra,1af4c <__sprint_r>
   11ffc:	be051063          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   12000:	0e812603          	lw	a2,232(sp)
   12004:	12013783          	ld	a5,288(sp)
   12008:	000b0313          	mv	t1,s6
   1200c:	b85ff06f          	j	11b90 <_vfprintf_r+0x176c>
   12010:	00021837          	lui	a6,0x21
   12014:	2a880c93          	addi	s9,a6,680 # 212a8 <__clzdi2+0x44>
   12018:	c49ff06f          	j	11c60 <_vfprintf_r+0x183c>
   1201c:	11010613          	addi	a2,sp,272
   12020:	00090593          	mv	a1,s2
   12024:	000a0513          	mv	a0,s4
   12028:	725080ef          	jal	ra,1af4c <__sprint_r>
   1202c:	ba051863          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   12030:	12013783          	ld	a5,288(sp)
   12034:	000b0313          	mv	t1,s6
   12038:	de0ff06f          	j	11618 <_vfprintf_r+0x11f4>
   1203c:	00600b93          	li	s7,6
   12040:	a3dff06f          	j	11a7c <_vfprintf_r+0x1658>
   12044:	02013683          	ld	a3,32(sp)
   12048:	00dc8833          	add	a6,s9,a3
   1204c:	40e6863b          	subw	a2,a3,a4
   12050:	41880f3b          	subw	t5,a6,s8
   12054:	00060b93          	mv	s7,a2
   12058:	e6cf5e63          	bge	t5,a2,116d4 <_vfprintf_r+0x12b0>
   1205c:	000f0b9b          	sext.w	s7,t5
   12060:	e74ff06f          	j	116d4 <_vfprintf_r+0x12b0>
   12064:	00813783          	ld	a5,8(sp)
   12068:	00040c93          	mv	s9,s0
   1206c:	00f71023          	sh	a5,0(a4)
   12070:	f24fe06f          	j	10794 <_vfprintf_r+0x370>
   12074:	02099993          	slli	s3,s3,0x20
   12078:	0209d993          	srli	s3,s3,0x20
   1207c:	871fe06f          	j	108ec <_vfprintf_r+0x4c8>
   12080:	01013783          	ld	a5,16(sp)
   12084:	0007a983          	lw	s3,0(a5)
   12088:	00098793          	mv	a5,s3
   1208c:	fe4fe06f          	j	10870 <_vfprintf_r+0x44c>
   12090:	02099993          	slli	s3,s3,0x20
   12094:	0209d993          	srli	s3,s3,0x20
   12098:	00e13823          	sd	a4,16(sp)
   1209c:	00100793          	li	a5,1
   120a0:	85dfe06f          	j	108fc <_vfprintf_r+0x4d8>
   120a4:	02099993          	slli	s3,s3,0x20
   120a8:	0209d993          	srli	s3,s3,0x20
   120ac:	939ff06f          	j	119e4 <_vfprintf_r+0x15c0>
   120b0:	11010613          	addi	a2,sp,272
   120b4:	00090593          	mv	a1,s2
   120b8:	000a0513          	mv	a0,s4
   120bc:	691080ef          	jal	ra,1af4c <__sprint_r>
   120c0:	ee8fe06f          	j	107a8 <_vfprintf_r+0x384>
   120c4:	02d00793          	li	a5,45
   120c8:	0cf10fa3          	sb	a5,223(sp)
   120cc:	ccdff06f          	j	11d98 <_vfprintf_r+0x1974>
   120d0:	11010613          	addi	a2,sp,272
   120d4:	00090593          	mv	a1,s2
   120d8:	000a0513          	mv	a0,s4
   120dc:	671080ef          	jal	ra,1af4c <__sprint_r>
   120e0:	ae051e63          	bnez	a0,113dc <_vfprintf_r+0xfb8>
   120e4:	0e812603          	lw	a2,232(sp)
   120e8:	12013783          	ld	a5,288(sp)
   120ec:	11812683          	lw	a3,280(sp)
   120f0:	000b0313          	mv	t1,s6
   120f4:	bd1ff06f          	j	11cc4 <_vfprintf_r+0x18a0>
   120f8:	03000793          	li	a5,48
   120fc:	0ef10023          	sb	a5,224(sp)
   12100:	05800713          	li	a4,88
   12104:	0024e793          	ori	a5,s1,2
   12108:	0007879b          	sext.w	a5,a5
   1210c:	0ee100a3          	sb	a4,225(sp)
   12110:	0af13c23          	sd	a5,184(sp)
   12114:	06300713          	li	a4,99
   12118:	00013c23          	sd	zero,24(sp)
   1211c:	12810c93          	addi	s9,sp,296
   12120:	59874a63          	blt	a4,s8,126b4 <_vfprintf_r+0x2290>
   12124:	10813b83          	ld	s7,264(sp)
   12128:	fdfd7793          	andi	a5,s10,-33
   1212c:	1024e493          	ori	s1,s1,258
   12130:	04f13c23          	sd	a5,88(sp)
   12134:	0c013423          	sd	zero,200(sp)
   12138:	10013d83          	ld	s11,256(sp)
   1213c:	0004849b          	sext.w	s1,s1
   12140:	260bc863          	bltz	s7,123b0 <_vfprintf_r+0x1f8c>
   12144:	06100793          	li	a5,97
   12148:	66fd0263          	beq	s10,a5,127ac <_vfprintf_r+0x2388>
   1214c:	04100793          	li	a5,65
   12150:	00fd0463          	beq	s10,a5,12158 <_vfprintf_r+0x1d34>
   12154:	8c9fe06f          	j	10a1c <_vfprintf_r+0x5f8>
   12158:	000b8593          	mv	a1,s7
   1215c:	000d8513          	mv	a0,s11
   12160:	02613c23          	sd	t1,56(sp)
   12164:	6050e0ef          	jal	ra,20f68 <__trunctfdf2>
   12168:	0e810513          	addi	a0,sp,232
   1216c:	264060ef          	jal	ra,183d0 <frexp>
   12170:	4d90e0ef          	jal	ra,20e48 <__extenddftf2>
   12174:	09813683          	ld	a3,152(sp)
   12178:	00000613          	li	a2,0
   1217c:	7fc0d0ef          	jal	ra,1f978 <__multf3>
   12180:	00000613          	li	a2,0
   12184:	00000693          	li	a3,0
   12188:	02a13823          	sd	a0,48(sp)
   1218c:	02b13023          	sd	a1,32(sp)
   12190:	5500d0ef          	jal	ra,1f6e0 <__eqtf2>
   12194:	02013f83          	ld	t6,32(sp)
   12198:	03013f03          	ld	t5,48(sp)
   1219c:	03813303          	ld	t1,56(sp)
   121a0:	00051663          	bnez	a0,121ac <_vfprintf_r+0x1d88>
   121a4:	00100793          	li	a5,1
   121a8:	0ef12423          	sw	a5,232(sp)
   121ac:	00021bb7          	lui	s7,0x21
   121b0:	2c8b8793          	addi	a5,s7,712 # 212c8 <__clzdi2+0x64>
   121b4:	04f13423          	sd	a5,72(sp)
   121b8:	020c1793          	slli	a5,s8,0x20
   121bc:	0207d793          	srli	a5,a5,0x20
   121c0:	00178793          	addi	a5,a5,1
   121c4:	00fc87b3          	add	a5,s9,a5
   121c8:	0af13423          	sd	a5,168(sp)
   121cc:	018c87bb          	addw	a5,s9,s8
   121d0:	000c8d93          	mv	s11,s9
   121d4:	0cf12223          	sw	a5,196(sp)
   121d8:	0280006f          	j	12200 <_vfprintf_r+0x1ddc>
   121dc:	00000613          	li	a2,0
   121e0:	00000693          	li	a3,0
   121e4:	04a13023          	sd	a0,64(sp)
   121e8:	4f80d0ef          	jal	ra,1f6e0 <__eqtf2>
   121ec:	04013883          	ld	a7,64(sp)
   121f0:	03013303          	ld	t1,48(sp)
   121f4:	000b8f93          	mv	t6,s7
   121f8:	00088f13          	mv	t5,a7
   121fc:	08050a63          	beqz	a0,12290 <_vfprintf_r+0x1e6c>
   12200:	09013683          	ld	a3,144(sp)
   12204:	00000613          	li	a2,0
   12208:	000f0513          	mv	a0,t5
   1220c:	000f8593          	mv	a1,t6
   12210:	02613823          	sd	t1,48(sp)
   12214:	7640d0ef          	jal	ra,1f978 <__multf3>
   12218:	00058b93          	mv	s7,a1
   1221c:	02a13023          	sd	a0,32(sp)
   12220:	2cd0e0ef          	jal	ra,20cec <__fixtfsi>
   12224:	0005099b          	sext.w	s3,a0
   12228:	00098513          	mv	a0,s3
   1222c:	3950e0ef          	jal	ra,20dc0 <__floatsitf>
   12230:	02013783          	ld	a5,32(sp)
   12234:	00058693          	mv	a3,a1
   12238:	00050613          	mv	a2,a0
   1223c:	000b8593          	mv	a1,s7
   12240:	00078513          	mv	a0,a5
   12244:	7a90d0ef          	jal	ra,201ec <__subtf3>
   12248:	04813783          	ld	a5,72(sp)
   1224c:	0bb13823          	sd	s11,176(sp)
   12250:	001d8d93          	addi	s11,s11,1
   12254:	013787b3          	add	a5,a5,s3
   12258:	0007c683          	lbu	a3,0(a5)
   1225c:	0c412783          	lw	a5,196(sp)
   12260:	02a13c23          	sd	a0,56(sp)
   12264:	fedd8fa3          	sb	a3,-1(s11)
   12268:	41b787bb          	subw	a5,a5,s11
   1226c:	04f13823          	sd	a5,80(sp)
   12270:	0a813783          	ld	a5,168(sp)
   12274:	02b13023          	sd	a1,32(sp)
   12278:	03013303          	ld	t1,48(sp)
   1227c:	00050893          	mv	a7,a0
   12280:	00058b93          	mv	s7,a1
   12284:	f5b79ce3          	bne	a5,s11,121dc <_vfprintf_r+0x1db8>
   12288:	fff00793          	li	a5,-1
   1228c:	04f13823          	sd	a5,80(sp)
   12290:	0a013683          	ld	a3,160(sp)
   12294:	00000613          	li	a2,0
   12298:	00088513          	mv	a0,a7
   1229c:	000b8593          	mv	a1,s7
   122a0:	02613023          	sd	t1,32(sp)
   122a4:	03113823          	sd	a7,48(sp)
   122a8:	5080d0ef          	jal	ra,1f7b0 <__getf2>
   122ac:	02013303          	ld	t1,32(sp)
   122b0:	42a04c63          	bgtz	a0,126e8 <_vfprintf_r+0x22c4>
   122b4:	03013883          	ld	a7,48(sp)
   122b8:	0a013683          	ld	a3,160(sp)
   122bc:	00000613          	li	a2,0
   122c0:	00088513          	mv	a0,a7
   122c4:	000b8593          	mv	a1,s7
   122c8:	4180d0ef          	jal	ra,1f6e0 <__eqtf2>
   122cc:	02013303          	ld	t1,32(sp)
   122d0:	00051663          	bnez	a0,122dc <_vfprintf_r+0x1eb8>
   122d4:	0019f993          	andi	s3,s3,1
   122d8:	40099863          	bnez	s3,126e8 <_vfprintf_r+0x22c4>
   122dc:	05013703          	ld	a4,80(sp)
   122e0:	03000693          	li	a3,48
   122e4:	0017079b          	addiw	a5,a4,1
   122e8:	00fd87b3          	add	a5,s11,a5
   122ec:	00074863          	bltz	a4,122fc <_vfprintf_r+0x1ed8>
   122f0:	001d8d93          	addi	s11,s11,1
   122f4:	fedd8fa3          	sb	a3,-1(s11)
   122f8:	ffb79ce3          	bne	a5,s11,122f0 <_vfprintf_r+0x1ecc>
   122fc:	419d87bb          	subw	a5,s11,s9
   12300:	02f13023          	sd	a5,32(sp)
   12304:	f90fe06f          	j	10a94 <_vfprintf_r+0x670>
   12308:	02013703          	ld	a4,32(sp)
   1230c:	00ec8733          	add	a4,s9,a4
   12310:	b3877863          	bgeu	a4,s8,11640 <_vfprintf_r+0x121c>
   12314:	00070c13          	mv	s8,a4
   12318:	b28ff06f          	j	11640 <_vfprintf_r+0x121c>
   1231c:	05013703          	ld	a4,80(sp)
   12320:	ffd00793          	li	a5,-3
   12324:	00f74463          	blt	a4,a5,1232c <_vfprintf_r+0x1f08>
   12328:	00ec5a63          	bge	s8,a4,1233c <_vfprintf_r+0x1f18>
   1232c:	ffed0d1b          	addiw	s10,s10,-2
   12330:	fdfd7793          	andi	a5,s10,-33
   12334:	04f13c23          	sd	a5,88(sp)
   12338:	f84fe06f          	j	10abc <_vfprintf_r+0x698>
   1233c:	05013703          	ld	a4,80(sp)
   12340:	02013783          	ld	a5,32(sp)
   12344:	20f74c63          	blt	a4,a5,1255c <_vfprintf_r+0x2138>
   12348:	0b813783          	ld	a5,184(sp)
   1234c:	00070b93          	mv	s7,a4
   12350:	0017f793          	andi	a5,a5,1
   12354:	00078663          	beqz	a5,12360 <_vfprintf_r+0x1f3c>
   12358:	06813783          	ld	a5,104(sp)
   1235c:	00e78bbb          	addw	s7,a5,a4
   12360:	0b813783          	ld	a5,184(sp)
   12364:	4007f793          	andi	a5,a5,1024
   12368:	00078663          	beqz	a5,12374 <_vfprintf_r+0x1f50>
   1236c:	05013783          	ld	a5,80(sp)
   12370:	4af04063          	bgtz	a5,12810 <_vfprintf_r+0x23ec>
   12374:	fffbc993          	not	s3,s7
   12378:	43f9d993          	srai	s3,s3,0x3f
   1237c:	013bf9b3          	and	s3,s7,s3
   12380:	0009899b          	sext.w	s3,s3
   12384:	06700d13          	li	s10,103
   12388:	04013423          	sd	zero,72(sp)
   1238c:	04013c23          	sd	zero,88(sp)
   12390:	855fe06f          	j	10be4 <_vfprintf_r+0x7c0>
   12394:	0df14783          	lbu	a5,223(sp)
   12398:	00000c13          	li	s8,0
   1239c:	00078463          	beqz	a5,123a4 <_vfprintf_r+0x1f80>
   123a0:	d28fe06f          	j	108c8 <_vfprintf_r+0x4a4>
   123a4:	accfe06f          	j	10670 <_vfprintf_r+0x24c>
   123a8:	00013c23          	sd	zero,24(sp)
   123ac:	00078493          	mv	s1,a5
   123b0:	fff00793          	li	a5,-1
   123b4:	03f79793          	slli	a5,a5,0x3f
   123b8:	00fbcbb3          	xor	s7,s7,a5
   123bc:	02d00793          	li	a5,45
   123c0:	0cf13423          	sd	a5,200(sp)
   123c4:	d81ff06f          	j	12144 <_vfprintf_r+0x1d20>
   123c8:	11010613          	addi	a2,sp,272
   123cc:	00090593          	mv	a1,s2
   123d0:	000a0513          	mv	a0,s4
   123d4:	379080ef          	jal	ra,1af4c <__sprint_r>
   123d8:	00050463          	beqz	a0,123e0 <_vfprintf_r+0x1fbc>
   123dc:	800ff06f          	j	113dc <_vfprintf_r+0xfb8>
   123e0:	06013783          	ld	a5,96(sp)
   123e4:	000b0313          	mv	t1,s6
   123e8:	0007c583          	lbu	a1,0(a5)
   123ec:	12013783          	ld	a5,288(sp)
   123f0:	00bc0c33          	add	s8,s8,a1
   123f4:	addff06f          	j	11ed0 <_vfprintf_r+0x1aac>
   123f8:	02d00793          	li	a5,45
   123fc:	0cf10fa3          	sb	a5,223(sp)
   12400:	851ff06f          	j	11c50 <_vfprintf_r+0x182c>
   12404:	11010613          	addi	a2,sp,272
   12408:	00090593          	mv	a1,s2
   1240c:	000a0513          	mv	a0,s4
   12410:	33d080ef          	jal	ra,1af4c <__sprint_r>
   12414:	00050463          	beqz	a0,1241c <_vfprintf_r+0x1ff8>
   12418:	fc5fe06f          	j	113dc <_vfprintf_r+0xfb8>
   1241c:	0e812703          	lw	a4,232(sp)
   12420:	12013783          	ld	a5,288(sp)
   12424:	000b0313          	mv	t1,s6
   12428:	a60ff06f          	j	11688 <_vfprintf_r+0x1264>
   1242c:	0e810793          	addi	a5,sp,232
   12430:	000c0713          	mv	a4,s8
   12434:	0f810893          	addi	a7,sp,248
   12438:	0ec10813          	addi	a6,sp,236
   1243c:	00300693          	li	a3,3
   12440:	000d8593          	mv	a1,s11
   12444:	000b8613          	mv	a2,s7
   12448:	000a0513          	mv	a0,s4
   1244c:	02613023          	sd	t1,32(sp)
   12450:	6fd020ef          	jal	ra,1534c <_ldtoa_r>
   12454:	00054703          	lbu	a4,0(a0)
   12458:	03000793          	li	a5,48
   1245c:	02013303          	ld	t1,32(sp)
   12460:	00050c93          	mv	s9,a0
   12464:	06f70063          	beq	a4,a5,124c4 <_vfprintf_r+0x20a0>
   12468:	0e812783          	lw	a5,232(sp)
   1246c:	018787b3          	add	a5,a5,s8
   12470:	00fc89b3          	add	s3,s9,a5
   12474:	00000693          	li	a3,0
   12478:	00000613          	li	a2,0
   1247c:	000d8513          	mv	a0,s11
   12480:	000b8593          	mv	a1,s7
   12484:	02613023          	sd	t1,32(sp)
   12488:	2580d0ef          	jal	ra,1f6e0 <__eqtf2>
   1248c:	02013303          	ld	t1,32(sp)
   12490:	00098693          	mv	a3,s3
   12494:	00051463          	bnez	a0,1249c <_vfprintf_r+0x2078>
   12498:	df4fe06f          	j	10a8c <_vfprintf_r+0x668>
   1249c:	0f813683          	ld	a3,248(sp)
   124a0:	0136e463          	bltu	a3,s3,124a8 <_vfprintf_r+0x2084>
   124a4:	de8fe06f          	j	10a8c <_vfprintf_r+0x668>
   124a8:	03000713          	li	a4,48
   124ac:	00168793          	addi	a5,a3,1
   124b0:	0ef13c23          	sd	a5,248(sp)
   124b4:	00e68023          	sb	a4,0(a3)
   124b8:	0f813683          	ld	a3,248(sp)
   124bc:	ff36e8e3          	bltu	a3,s3,124ac <_vfprintf_r+0x2088>
   124c0:	dccfe06f          	j	10a8c <_vfprintf_r+0x668>
   124c4:	00000613          	li	a2,0
   124c8:	00000693          	li	a3,0
   124cc:	000d8513          	mv	a0,s11
   124d0:	000b8593          	mv	a1,s7
   124d4:	02613023          	sd	t1,32(sp)
   124d8:	2080d0ef          	jal	ra,1f6e0 <__eqtf2>
   124dc:	02013303          	ld	t1,32(sp)
   124e0:	f80504e3          	beqz	a0,12468 <_vfprintf_r+0x2044>
   124e4:	00100713          	li	a4,1
   124e8:	418707bb          	subw	a5,a4,s8
   124ec:	0ef12423          	sw	a5,232(sp)
   124f0:	f7dff06f          	j	1246c <_vfprintf_r+0x2048>
   124f4:	0df14783          	lbu	a5,223(sp)
   124f8:	01b13823          	sd	s11,16(sp)
   124fc:	04013423          	sd	zero,72(sp)
   12500:	04013c23          	sd	zero,88(sp)
   12504:	04013823          	sd	zero,80(sp)
   12508:	000c0993          	mv	s3,s8
   1250c:	000c0b93          	mv	s7,s8
   12510:	00000c13          	li	s8,0
   12514:	00078463          	beqz	a5,1251c <_vfprintf_r+0x20f8>
   12518:	bb0fe06f          	j	108c8 <_vfprintf_r+0x4a4>
   1251c:	954fe06f          	j	10670 <_vfprintf_r+0x24c>
   12520:	00021837          	lui	a6,0x21
   12524:	2b880c93          	addi	s9,a6,696 # 212b8 <__clzdi2+0x54>
   12528:	f38ff06f          	j	11c60 <_vfprintf_r+0x183c>
   1252c:	11010613          	addi	a2,sp,272
   12530:	00090593          	mv	a1,s2
   12534:	000a0513          	mv	a0,s4
   12538:	215080ef          	jal	ra,1af4c <__sprint_r>
   1253c:	00050463          	beqz	a0,12544 <_vfprintf_r+0x2120>
   12540:	e9dfe06f          	j	113dc <_vfprintf_r+0xfb8>
   12544:	0e812603          	lw	a2,232(sp)
   12548:	02013703          	ld	a4,32(sp)
   1254c:	12013783          	ld	a5,288(sp)
   12550:	000b0313          	mv	t1,s6
   12554:	40c7063b          	subw	a2,a4,a2
   12558:	97cff06f          	j	116d4 <_vfprintf_r+0x12b0>
   1255c:	02013703          	ld	a4,32(sp)
   12560:	06813783          	ld	a5,104(sp)
   12564:	06700d13          	li	s10,103
   12568:	00e78bbb          	addw	s7,a5,a4
   1256c:	05013703          	ld	a4,80(sp)
   12570:	34e05a63          	blez	a4,128c4 <_vfprintf_r+0x24a0>
   12574:	0b813783          	ld	a5,184(sp)
   12578:	4007f793          	andi	a5,a5,1024
   1257c:	28079c63          	bnez	a5,12814 <_vfprintf_r+0x23f0>
   12580:	fffbc993          	not	s3,s7
   12584:	43f9d993          	srai	s3,s3,0x3f
   12588:	013bf9b3          	and	s3,s7,s3
   1258c:	0009899b          	sext.w	s3,s3
   12590:	df9ff06f          	j	12388 <_vfprintf_r+0x1f64>
   12594:	0b813783          	ld	a5,184(sp)
   12598:	05013703          	ld	a4,80(sp)
   1259c:	0017f793          	andi	a5,a5,1
   125a0:	00fc67b3          	or	a5,s8,a5
   125a4:	34e05a63          	blez	a4,128f8 <_vfprintf_r+0x24d4>
   125a8:	30079463          	bnez	a5,128b0 <_vfprintf_r+0x248c>
   125ac:	05013b83          	ld	s7,80(sp)
   125b0:	06600d13          	li	s10,102
   125b4:	fc1ff06f          	j	12574 <_vfprintf_r+0x2150>
   125b8:	fff00793          	li	a5,-1
   125bc:	00f13423          	sd	a5,8(sp)
   125c0:	9f8fe06f          	j	107b8 <_vfprintf_r+0x394>
   125c4:	000218b7          	lui	a7,0x21
   125c8:	ff000713          	li	a4,-16
   125cc:	40c00c3b          	negw	s8,a2
   125d0:	48888d93          	addi	s11,a7,1160 # 21488 <zeroes.0>
   125d4:	01000b93          	li	s7,16
   125d8:	00700d13          	li	s10,7
   125dc:	00e64863          	blt	a2,a4,125ec <_vfprintf_r+0x21c8>
   125e0:	0540006f          	j	12634 <_vfprintf_r+0x2210>
   125e4:	ff0c0c1b          	addiw	s8,s8,-16
   125e8:	058bd663          	bge	s7,s8,12634 <_vfprintf_r+0x2210>
   125ec:	0016869b          	addiw	a3,a3,1
   125f0:	01078793          	addi	a5,a5,16
   125f4:	01b33023          	sd	s11,0(t1)
   125f8:	01733423          	sd	s7,8(t1)
   125fc:	12f13023          	sd	a5,288(sp)
   12600:	10d12c23          	sw	a3,280(sp)
   12604:	01030313          	addi	t1,t1,16
   12608:	fcdd5ee3          	bge	s10,a3,125e4 <_vfprintf_r+0x21c0>
   1260c:	11010613          	addi	a2,sp,272
   12610:	00090593          	mv	a1,s2
   12614:	000a0513          	mv	a0,s4
   12618:	135080ef          	jal	ra,1af4c <__sprint_r>
   1261c:	00050463          	beqz	a0,12624 <_vfprintf_r+0x2200>
   12620:	dbdfe06f          	j	113dc <_vfprintf_r+0xfb8>
   12624:	12013783          	ld	a5,288(sp)
   12628:	11812683          	lw	a3,280(sp)
   1262c:	000b0313          	mv	t1,s6
   12630:	fb5ff06f          	j	125e4 <_vfprintf_r+0x21c0>
   12634:	0016869b          	addiw	a3,a3,1
   12638:	018787b3          	add	a5,a5,s8
   1263c:	01b33023          	sd	s11,0(t1)
   12640:	01833423          	sd	s8,8(t1)
   12644:	12f13023          	sd	a5,288(sp)
   12648:	10d12c23          	sw	a3,280(sp)
   1264c:	00700713          	li	a4,7
   12650:	d8d75463          	bge	a4,a3,11bd8 <_vfprintf_r+0x17b4>
   12654:	11010613          	addi	a2,sp,272
   12658:	00090593          	mv	a1,s2
   1265c:	000a0513          	mv	a0,s4
   12660:	0ed080ef          	jal	ra,1af4c <__sprint_r>
   12664:	00050463          	beqz	a0,1266c <_vfprintf_r+0x2248>
   12668:	d75fe06f          	j	113dc <_vfprintf_r+0xfb8>
   1266c:	12013783          	ld	a5,288(sp)
   12670:	11812683          	lw	a3,280(sp)
   12674:	000b0313          	mv	t1,s6
   12678:	e50ff06f          	j	11cc8 <_vfprintf_r+0x18a4>
   1267c:	001c099b          	addiw	s3,s8,1
   12680:	00098713          	mv	a4,s3
   12684:	0f810893          	addi	a7,sp,248
   12688:	0ec10813          	addi	a6,sp,236
   1268c:	0e810793          	addi	a5,sp,232
   12690:	00200693          	li	a3,2
   12694:	000d8593          	mv	a1,s11
   12698:	000b8613          	mv	a2,s7
   1269c:	000a0513          	mv	a0,s4
   126a0:	4ad020ef          	jal	ra,1534c <_ldtoa_r>
   126a4:	00050c93          	mv	s9,a0
   126a8:	02013303          	ld	t1,32(sp)
   126ac:	013c89b3          	add	s3,s9,s3
   126b0:	dc5ff06f          	j	12474 <_vfprintf_r+0x2050>
   126b4:	001c059b          	addiw	a1,s8,1
   126b8:	000a0513          	mv	a0,s4
   126bc:	00613c23          	sd	t1,24(sp)
   126c0:	1c8040ef          	jal	ra,16888 <_malloc_r>
   126c4:	01813303          	ld	t1,24(sp)
   126c8:	00050c93          	mv	s9,a0
   126cc:	2a050863          	beqz	a0,1297c <_vfprintf_r+0x2558>
   126d0:	00a13c23          	sd	a0,24(sp)
   126d4:	a51ff06f          	j	12124 <_vfprintf_r+0x1d00>
   126d8:	00048d93          	mv	s11,s1
   126dc:	d2dfe06f          	j	11408 <_vfprintf_r+0xfe4>
   126e0:	018c89b3          	add	s3,s9,s8
   126e4:	d91ff06f          	j	12474 <_vfprintf_r+0x2050>
   126e8:	0b013783          	ld	a5,176(sp)
   126ec:	0ef13c23          	sd	a5,248(sp)
   126f0:	04813783          	ld	a5,72(sp)
   126f4:	fffdc683          	lbu	a3,-1(s11)
   126f8:	00f7c603          	lbu	a2,15(a5)
   126fc:	000d8793          	mv	a5,s11
   12700:	02d61063          	bne	a2,a3,12720 <_vfprintf_r+0x22fc>
   12704:	03000593          	li	a1,48
   12708:	feb78fa3          	sb	a1,-1(a5)
   1270c:	0f813783          	ld	a5,248(sp)
   12710:	fff78693          	addi	a3,a5,-1
   12714:	0ed13c23          	sd	a3,248(sp)
   12718:	fff7c683          	lbu	a3,-1(a5)
   1271c:	fed606e3          	beq	a2,a3,12708 <_vfprintf_r+0x22e4>
   12720:	0016861b          	addiw	a2,a3,1
   12724:	03900593          	li	a1,57
   12728:	0ff67613          	zext.b	a2,a2
   1272c:	00b68663          	beq	a3,a1,12738 <_vfprintf_r+0x2314>
   12730:	fec78fa3          	sb	a2,-1(a5)
   12734:	bc9ff06f          	j	122fc <_vfprintf_r+0x1ed8>
   12738:	04813703          	ld	a4,72(sp)
   1273c:	00a74603          	lbu	a2,10(a4)
   12740:	fec78fa3          	sb	a2,-1(a5)
   12744:	bb9ff06f          	j	122fc <_vfprintf_r+0x1ed8>
   12748:	03000793          	li	a5,48
   1274c:	0ef10023          	sb	a5,224(sp)
   12750:	07800713          	li	a4,120
   12754:	9b1ff06f          	j	12104 <_vfprintf_r+0x1ce0>
   12758:	000c0463          	beqz	s8,12760 <_vfprintf_r+0x233c>
   1275c:	a98fe06f          	j	109f4 <_vfprintf_r+0x5d0>
   12760:	00100c13          	li	s8,1
   12764:	a90fe06f          	j	109f4 <_vfprintf_r+0x5d0>
   12768:	00600c13          	li	s8,6
   1276c:	a88fe06f          	j	109f4 <_vfprintf_r+0x5d0>
   12770:	00f72023          	sw	a5,0(a4)
   12774:	00040c93          	mv	s9,s0
   12778:	81cfe06f          	j	10794 <_vfprintf_r+0x370>
   1277c:	0f210713          	addi	a4,sp,242
   12780:	00069863          	bnez	a3,12790 <_vfprintf_r+0x236c>
   12784:	03000713          	li	a4,48
   12788:	0ee10923          	sb	a4,242(sp)
   1278c:	0f310713          	addi	a4,sp,243
   12790:	21010693          	addi	a3,sp,528
   12794:	0307879b          	addiw	a5,a5,48
   12798:	40d706b3          	sub	a3,a4,a3
   1279c:	00f70023          	sb	a5,0(a4)
   127a0:	1216879b          	addiw	a5,a3,289
   127a4:	06f13c23          	sd	a5,120(sp)
   127a8:	becfe06f          	j	10b94 <_vfprintf_r+0x770>
   127ac:	000b8593          	mv	a1,s7
   127b0:	000d8513          	mv	a0,s11
   127b4:	02613c23          	sd	t1,56(sp)
   127b8:	7b00e0ef          	jal	ra,20f68 <__trunctfdf2>
   127bc:	0e810513          	addi	a0,sp,232
   127c0:	411050ef          	jal	ra,183d0 <frexp>
   127c4:	6840e0ef          	jal	ra,20e48 <__extenddftf2>
   127c8:	09813683          	ld	a3,152(sp)
   127cc:	00000613          	li	a2,0
   127d0:	1a80d0ef          	jal	ra,1f978 <__multf3>
   127d4:	00000613          	li	a2,0
   127d8:	00000693          	li	a3,0
   127dc:	02a13823          	sd	a0,48(sp)
   127e0:	02b13023          	sd	a1,32(sp)
   127e4:	6fd0c0ef          	jal	ra,1f6e0 <__eqtf2>
   127e8:	02013f83          	ld	t6,32(sp)
   127ec:	03013f03          	ld	t5,48(sp)
   127f0:	03813303          	ld	t1,56(sp)
   127f4:	00051663          	bnez	a0,12800 <_vfprintf_r+0x23dc>
   127f8:	00100793          	li	a5,1
   127fc:	0ef12423          	sw	a5,232(sp)
   12800:	00021bb7          	lui	s7,0x21
   12804:	2e0b8793          	addi	a5,s7,736 # 212e0 <__clzdi2+0x7c>
   12808:	04f13423          	sd	a5,72(sp)
   1280c:	9adff06f          	j	121b8 <_vfprintf_r+0x1d94>
   12810:	06700d13          	li	s10,103
   12814:	06013783          	ld	a5,96(sp)
   12818:	0ff00713          	li	a4,255
   1281c:	04013423          	sd	zero,72(sp)
   12820:	0007c783          	lbu	a5,0(a5)
   12824:	04013c23          	sd	zero,88(sp)
   12828:	04e78063          	beq	a5,a4,12868 <_vfprintf_r+0x2444>
   1282c:	0ff00693          	li	a3,255
   12830:	05013603          	ld	a2,80(sp)
   12834:	0007871b          	sext.w	a4,a5
   12838:	02c7d863          	bge	a5,a2,12868 <_vfprintf_r+0x2444>
   1283c:	06013583          	ld	a1,96(sp)
   12840:	40e6073b          	subw	a4,a2,a4
   12844:	04e13823          	sd	a4,80(sp)
   12848:	0015c783          	lbu	a5,1(a1)
   1284c:	04078663          	beqz	a5,12898 <_vfprintf_r+0x2474>
   12850:	05813703          	ld	a4,88(sp)
   12854:	0017071b          	addiw	a4,a4,1
   12858:	04e13c23          	sd	a4,88(sp)
   1285c:	00158713          	addi	a4,a1,1
   12860:	06e13023          	sd	a4,96(sp)
   12864:	fcd796e3          	bne	a5,a3,12830 <_vfprintf_r+0x240c>
   12868:	04813703          	ld	a4,72(sp)
   1286c:	05813783          	ld	a5,88(sp)
   12870:	00e787bb          	addw	a5,a5,a4
   12874:	08013703          	ld	a4,128(sp)
   12878:	02e787bb          	mulw	a5,a5,a4
   1287c:	017787bb          	addw	a5,a5,s7
   12880:	00078b9b          	sext.w	s7,a5
   12884:	fffbc993          	not	s3,s7
   12888:	43f9d993          	srai	s3,s3,0x3f
   1288c:	0137f7b3          	and	a5,a5,s3
   12890:	0007899b          	sext.w	s3,a5
   12894:	b50fe06f          	j	10be4 <_vfprintf_r+0x7c0>
   12898:	04813703          	ld	a4,72(sp)
   1289c:	06013783          	ld	a5,96(sp)
   128a0:	0017071b          	addiw	a4,a4,1
   128a4:	0007c783          	lbu	a5,0(a5)
   128a8:	04e13423          	sd	a4,72(sp)
   128ac:	fb9ff06f          	j	12864 <_vfprintf_r+0x2440>
   128b0:	06813783          	ld	a5,104(sp)
   128b4:	06600d13          	li	s10,102
   128b8:	00e78bbb          	addw	s7,a5,a4
   128bc:	018b8bbb          	addw	s7,s7,s8
   128c0:	cb5ff06f          	j	12574 <_vfprintf_r+0x2150>
   128c4:	40eb87bb          	subw	a5,s7,a4
   128c8:	0017879b          	addiw	a5,a5,1
   128cc:	00078b9b          	sext.w	s7,a5
   128d0:	fffbc993          	not	s3,s7
   128d4:	43f9d993          	srai	s3,s3,0x3f
   128d8:	0137f7b3          	and	a5,a5,s3
   128dc:	0007899b          	sext.w	s3,a5
   128e0:	aa9ff06f          	j	12388 <_vfprintf_r+0x1f64>
   128e4:	0b813703          	ld	a4,184(sp)
   128e8:	00177713          	andi	a4,a4,1
   128ec:	00071463          	bnez	a4,128f4 <_vfprintf_r+0x24d0>
   128f0:	ac8fe06f          	j	10bb8 <_vfprintf_r+0x794>
   128f4:	abcfe06f          	j	10bb0 <_vfprintf_r+0x78c>
   128f8:	00079a63          	bnez	a5,1290c <_vfprintf_r+0x24e8>
   128fc:	00100993          	li	s3,1
   12900:	06600d13          	li	s10,102
   12904:	00100b93          	li	s7,1
   12908:	a81ff06f          	j	12388 <_vfprintf_r+0x1f64>
   1290c:	06813783          	ld	a5,104(sp)
   12910:	06600d13          	li	s10,102
   12914:	0017869b          	addiw	a3,a5,1
   12918:	018686bb          	addw	a3,a3,s8
   1291c:	00068b9b          	sext.w	s7,a3
   12920:	fffbc993          	not	s3,s7
   12924:	43f9d993          	srai	s3,s3,0x3f
   12928:	0136f6b3          	and	a3,a3,s3
   1292c:	0006899b          	sext.w	s3,a3
   12930:	a59ff06f          	j	12388 <_vfprintf_r+0x1f64>
   12934:	000218b7          	lui	a7,0x21
   12938:	00030713          	mv	a4,t1
   1293c:	48888d93          	addi	s11,a7,1160 # 21488 <zeroes.0>
   12940:	834ff06f          	j	11974 <_vfprintf_r+0x1550>
   12944:	01013683          	ld	a3,16(sp)
   12948:	0006a783          	lw	a5,0(a3)
   1294c:	00868613          	addi	a2,a3,8
   12950:	00078693          	mv	a3,a5
   12954:	0007d463          	bgez	a5,1295c <_vfprintf_r+0x2538>
   12958:	fff00693          	li	a3,-1
   1295c:	00144e03          	lbu	t3,1(s0)
   12960:	00068c1b          	sext.w	s8,a3
   12964:	00c13823          	sd	a2,16(sp)
   12968:	00070413          	mv	s0,a4
   1296c:	c75fd06f          	j	105e0 <_vfprintf_r+0x1bc>
   12970:	00200793          	li	a5,2
   12974:	06f13c23          	sd	a5,120(sp)
   12978:	a1cfe06f          	j	10b94 <_vfprintf_r+0x770>
   1297c:	01095783          	lhu	a5,16(s2)
   12980:	0407e793          	ori	a5,a5,64
   12984:	00f91823          	sh	a5,16(s2)
   12988:	e21fd06f          	j	107a8 <_vfprintf_r+0x384>
   1298c:	000c0993          	mv	s3,s8
   12990:	013c89b3          	add	s3,s9,s3
   12994:	ae1ff06f          	j	12474 <_vfprintf_r+0x2050>

0000000000012998 <vfprintf>:
   12998:	00050793          	mv	a5,a0
   1299c:	7581b503          	ld	a0,1880(gp) # 241f8 <_impure_ptr>
   129a0:	00060693          	mv	a3,a2
   129a4:	00058613          	mv	a2,a1
   129a8:	00078593          	mv	a1,a5
   129ac:	a79fd06f          	j	10424 <_vfprintf_r>

00000000000129b0 <__sbprintf>:
   129b0:	0105d783          	lhu	a5,16(a1)
   129b4:	0ac5ae03          	lw	t3,172(a1)
   129b8:	0125d303          	lhu	t1,18(a1)
   129bc:	0305b883          	ld	a7,48(a1)
   129c0:	0405b803          	ld	a6,64(a1)
   129c4:	b3010113          	addi	sp,sp,-1232
   129c8:	ffd7f793          	andi	a5,a5,-3
   129cc:	40000713          	li	a4,1024
   129d0:	4c813023          	sd	s0,1216(sp)
   129d4:	00f11823          	sh	a5,16(sp)
   129d8:	00058413          	mv	s0,a1
   129dc:	0b010793          	addi	a5,sp,176
   129e0:	00010593          	mv	a1,sp
   129e4:	4a913c23          	sd	s1,1208(sp)
   129e8:	4b213823          	sd	s2,1200(sp)
   129ec:	4c113423          	sd	ra,1224(sp)
   129f0:	00050913          	mv	s2,a0
   129f4:	0bc12623          	sw	t3,172(sp)
   129f8:	00611923          	sh	t1,18(sp)
   129fc:	03113823          	sd	a7,48(sp)
   12a00:	05013023          	sd	a6,64(sp)
   12a04:	00f13023          	sd	a5,0(sp)
   12a08:	00f13c23          	sd	a5,24(sp)
   12a0c:	00e12623          	sw	a4,12(sp)
   12a10:	02e12023          	sw	a4,32(sp)
   12a14:	02012423          	sw	zero,40(sp)
   12a18:	a0dfd0ef          	jal	ra,10424 <_vfprintf_r>
   12a1c:	00050493          	mv	s1,a0
   12a20:	02055c63          	bgez	a0,12a58 <__sbprintf+0xa8>
   12a24:	01015783          	lhu	a5,16(sp)
   12a28:	0407f793          	andi	a5,a5,64
   12a2c:	00078863          	beqz	a5,12a3c <__sbprintf+0x8c>
   12a30:	01045783          	lhu	a5,16(s0)
   12a34:	0407e793          	ori	a5,a5,64
   12a38:	00f41823          	sh	a5,16(s0)
   12a3c:	4c813083          	ld	ra,1224(sp)
   12a40:	4c013403          	ld	s0,1216(sp)
   12a44:	4b013903          	ld	s2,1200(sp)
   12a48:	00048513          	mv	a0,s1
   12a4c:	4b813483          	ld	s1,1208(sp)
   12a50:	4d010113          	addi	sp,sp,1232
   12a54:	00008067          	ret
   12a58:	00010593          	mv	a1,sp
   12a5c:	00090513          	mv	a0,s2
   12a60:	518000ef          	jal	ra,12f78 <_fflush_r>
   12a64:	fc0500e3          	beqz	a0,12a24 <__sbprintf+0x74>
   12a68:	fff00493          	li	s1,-1
   12a6c:	fb9ff06f          	j	12a24 <__sbprintf+0x74>

0000000000012a70 <__swsetup_r>:
   12a70:	7581b783          	ld	a5,1880(gp) # 241f8 <_impure_ptr>
   12a74:	fe010113          	addi	sp,sp,-32
   12a78:	00813823          	sd	s0,16(sp)
   12a7c:	00913423          	sd	s1,8(sp)
   12a80:	00113c23          	sd	ra,24(sp)
   12a84:	00050493          	mv	s1,a0
   12a88:	00058413          	mv	s0,a1
   12a8c:	00078663          	beqz	a5,12a98 <__swsetup_r+0x28>
   12a90:	0507a703          	lw	a4,80(a5)
   12a94:	08070463          	beqz	a4,12b1c <__swsetup_r+0xac>
   12a98:	01041703          	lh	a4,16(s0)
   12a9c:	03071793          	slli	a5,a4,0x30
   12aa0:	00877693          	andi	a3,a4,8
   12aa4:	0307d793          	srli	a5,a5,0x30
   12aa8:	08068863          	beqz	a3,12b38 <__swsetup_r+0xc8>
   12aac:	01843683          	ld	a3,24(s0)
   12ab0:	0a068863          	beqz	a3,12b60 <__swsetup_r+0xf0>
   12ab4:	0017f613          	andi	a2,a5,1
   12ab8:	02060863          	beqz	a2,12ae8 <__swsetup_r+0x78>
   12abc:	02042603          	lw	a2,32(s0)
   12ac0:	00042623          	sw	zero,12(s0)
   12ac4:	00000513          	li	a0,0
   12ac8:	40c0063b          	negw	a2,a2
   12acc:	02c42423          	sw	a2,40(s0)
   12ad0:	02068a63          	beqz	a3,12b04 <__swsetup_r+0x94>
   12ad4:	01813083          	ld	ra,24(sp)
   12ad8:	01013403          	ld	s0,16(sp)
   12adc:	00813483          	ld	s1,8(sp)
   12ae0:	02010113          	addi	sp,sp,32
   12ae4:	00008067          	ret
   12ae8:	0027f613          	andi	a2,a5,2
   12aec:	00000593          	li	a1,0
   12af0:	00061463          	bnez	a2,12af8 <__swsetup_r+0x88>
   12af4:	02042583          	lw	a1,32(s0)
   12af8:	00b42623          	sw	a1,12(s0)
   12afc:	00000513          	li	a0,0
   12b00:	fc069ae3          	bnez	a3,12ad4 <__swsetup_r+0x64>
   12b04:	0807f793          	andi	a5,a5,128
   12b08:	fc0786e3          	beqz	a5,12ad4 <__swsetup_r+0x64>
   12b0c:	04076713          	ori	a4,a4,64
   12b10:	00e41823          	sh	a4,16(s0)
   12b14:	fff00513          	li	a0,-1
   12b18:	fbdff06f          	j	12ad4 <__swsetup_r+0x64>
   12b1c:	00078513          	mv	a0,a5
   12b20:	085000ef          	jal	ra,133a4 <__sinit>
   12b24:	01041703          	lh	a4,16(s0)
   12b28:	03071793          	slli	a5,a4,0x30
   12b2c:	00877693          	andi	a3,a4,8
   12b30:	0307d793          	srli	a5,a5,0x30
   12b34:	f6069ce3          	bnez	a3,12aac <__swsetup_r+0x3c>
   12b38:	0107f693          	andi	a3,a5,16
   12b3c:	08068263          	beqz	a3,12bc0 <__swsetup_r+0x150>
   12b40:	0047f793          	andi	a5,a5,4
   12b44:	04079463          	bnez	a5,12b8c <__swsetup_r+0x11c>
   12b48:	01843683          	ld	a3,24(s0)
   12b4c:	00876713          	ori	a4,a4,8
   12b50:	03071793          	slli	a5,a4,0x30
   12b54:	00e41823          	sh	a4,16(s0)
   12b58:	0307d793          	srli	a5,a5,0x30
   12b5c:	f4069ce3          	bnez	a3,12ab4 <__swsetup_r+0x44>
   12b60:	2807f613          	andi	a2,a5,640
   12b64:	20000593          	li	a1,512
   12b68:	f4b606e3          	beq	a2,a1,12ab4 <__swsetup_r+0x44>
   12b6c:	00040593          	mv	a1,s0
   12b70:	00048513          	mv	a0,s1
   12b74:	2b5030ef          	jal	ra,16628 <__smakebuf_r>
   12b78:	01041703          	lh	a4,16(s0)
   12b7c:	01843683          	ld	a3,24(s0)
   12b80:	03071793          	slli	a5,a4,0x30
   12b84:	0307d793          	srli	a5,a5,0x30
   12b88:	f2dff06f          	j	12ab4 <__swsetup_r+0x44>
   12b8c:	05843583          	ld	a1,88(s0)
   12b90:	00058e63          	beqz	a1,12bac <__swsetup_r+0x13c>
   12b94:	07440793          	addi	a5,s0,116
   12b98:	00f58863          	beq	a1,a5,12ba8 <__swsetup_r+0x138>
   12b9c:	00048513          	mv	a0,s1
   12ba0:	1dd000ef          	jal	ra,1357c <_free_r>
   12ba4:	01041703          	lh	a4,16(s0)
   12ba8:	04043c23          	sd	zero,88(s0)
   12bac:	01843683          	ld	a3,24(s0)
   12bb0:	fdb77713          	andi	a4,a4,-37
   12bb4:	00042423          	sw	zero,8(s0)
   12bb8:	00d43023          	sd	a3,0(s0)
   12bbc:	f91ff06f          	j	12b4c <__swsetup_r+0xdc>
   12bc0:	00900793          	li	a5,9
   12bc4:	00f4a023          	sw	a5,0(s1)
   12bc8:	04076713          	ori	a4,a4,64
   12bcc:	00e41823          	sh	a4,16(s0)
   12bd0:	fff00513          	li	a0,-1
   12bd4:	f01ff06f          	j	12ad4 <__swsetup_r+0x64>

0000000000012bd8 <__call_exitprocs>:
   12bd8:	fb010113          	addi	sp,sp,-80
   12bdc:	03413023          	sd	s4,32(sp)
   12be0:	7481ba03          	ld	s4,1864(gp) # 241e8 <_global_impure_ptr>
   12be4:	03213823          	sd	s2,48(sp)
   12be8:	04113423          	sd	ra,72(sp)
   12bec:	1f8a3903          	ld	s2,504(s4)
   12bf0:	04813023          	sd	s0,64(sp)
   12bf4:	02913c23          	sd	s1,56(sp)
   12bf8:	03313423          	sd	s3,40(sp)
   12bfc:	01513c23          	sd	s5,24(sp)
   12c00:	01613823          	sd	s6,16(sp)
   12c04:	01713423          	sd	s7,8(sp)
   12c08:	01813023          	sd	s8,0(sp)
   12c0c:	04090063          	beqz	s2,12c4c <__call_exitprocs+0x74>
   12c10:	00050b13          	mv	s6,a0
   12c14:	00058b93          	mv	s7,a1
   12c18:	00100a93          	li	s5,1
   12c1c:	fff00993          	li	s3,-1
   12c20:	00892483          	lw	s1,8(s2)
   12c24:	fff4841b          	addiw	s0,s1,-1
   12c28:	02044263          	bltz	s0,12c4c <__call_exitprocs+0x74>
   12c2c:	00349493          	slli	s1,s1,0x3
   12c30:	009904b3          	add	s1,s2,s1
   12c34:	040b8463          	beqz	s7,12c7c <__call_exitprocs+0xa4>
   12c38:	2084b783          	ld	a5,520(s1)
   12c3c:	05778063          	beq	a5,s7,12c7c <__call_exitprocs+0xa4>
   12c40:	fff4041b          	addiw	s0,s0,-1
   12c44:	ff848493          	addi	s1,s1,-8
   12c48:	ff3416e3          	bne	s0,s3,12c34 <__call_exitprocs+0x5c>
   12c4c:	04813083          	ld	ra,72(sp)
   12c50:	04013403          	ld	s0,64(sp)
   12c54:	03813483          	ld	s1,56(sp)
   12c58:	03013903          	ld	s2,48(sp)
   12c5c:	02813983          	ld	s3,40(sp)
   12c60:	02013a03          	ld	s4,32(sp)
   12c64:	01813a83          	ld	s5,24(sp)
   12c68:	01013b03          	ld	s6,16(sp)
   12c6c:	00813b83          	ld	s7,8(sp)
   12c70:	00013c03          	ld	s8,0(sp)
   12c74:	05010113          	addi	sp,sp,80
   12c78:	00008067          	ret
   12c7c:	00892783          	lw	a5,8(s2)
   12c80:	0084b703          	ld	a4,8(s1)
   12c84:	fff7879b          	addiw	a5,a5,-1
   12c88:	06878263          	beq	a5,s0,12cec <__call_exitprocs+0x114>
   12c8c:	0004b423          	sd	zero,8(s1)
   12c90:	fa0708e3          	beqz	a4,12c40 <__call_exitprocs+0x68>
   12c94:	31092783          	lw	a5,784(s2)
   12c98:	008a96bb          	sllw	a3,s5,s0
   12c9c:	00892c03          	lw	s8,8(s2)
   12ca0:	00d7f7b3          	and	a5,a5,a3
   12ca4:	0007879b          	sext.w	a5,a5
   12ca8:	02079263          	bnez	a5,12ccc <__call_exitprocs+0xf4>
   12cac:	000700e7          	jalr	a4
   12cb0:	00892703          	lw	a4,8(s2)
   12cb4:	1f8a3783          	ld	a5,504(s4)
   12cb8:	01871463          	bne	a4,s8,12cc0 <__call_exitprocs+0xe8>
   12cbc:	f92782e3          	beq	a5,s2,12c40 <__call_exitprocs+0x68>
   12cc0:	f80786e3          	beqz	a5,12c4c <__call_exitprocs+0x74>
   12cc4:	00078913          	mv	s2,a5
   12cc8:	f59ff06f          	j	12c20 <__call_exitprocs+0x48>
   12ccc:	31492783          	lw	a5,788(s2)
   12cd0:	1084b583          	ld	a1,264(s1)
   12cd4:	00d7f7b3          	and	a5,a5,a3
   12cd8:	0007879b          	sext.w	a5,a5
   12cdc:	00079c63          	bnez	a5,12cf4 <__call_exitprocs+0x11c>
   12ce0:	000b0513          	mv	a0,s6
   12ce4:	000700e7          	jalr	a4
   12ce8:	fc9ff06f          	j	12cb0 <__call_exitprocs+0xd8>
   12cec:	00892423          	sw	s0,8(s2)
   12cf0:	fa1ff06f          	j	12c90 <__call_exitprocs+0xb8>
   12cf4:	00058513          	mv	a0,a1
   12cf8:	000700e7          	jalr	a4
   12cfc:	fb5ff06f          	j	12cb0 <__call_exitprocs+0xd8>

0000000000012d00 <atexit>:
   12d00:	00050593          	mv	a1,a0
   12d04:	00000693          	li	a3,0
   12d08:	00000613          	li	a2,0
   12d0c:	00000513          	li	a0,0
   12d10:	4a40906f          	j	1c1b4 <__register_exitproc>

0000000000012d14 <__sflush_r>:
   12d14:	01059783          	lh	a5,16(a1)
   12d18:	fd010113          	addi	sp,sp,-48
   12d1c:	02813023          	sd	s0,32(sp)
   12d20:	01313423          	sd	s3,8(sp)
   12d24:	02113423          	sd	ra,40(sp)
   12d28:	00913c23          	sd	s1,24(sp)
   12d2c:	01213823          	sd	s2,16(sp)
   12d30:	0087f693          	andi	a3,a5,8
   12d34:	00058413          	mv	s0,a1
   12d38:	00050993          	mv	s3,a0
   12d3c:	10069c63          	bnez	a3,12e54 <__sflush_r+0x140>
   12d40:	00001737          	lui	a4,0x1
   12d44:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf8b0>
   12d48:	0085a683          	lw	a3,8(a1)
   12d4c:	00e7e7b3          	or	a5,a5,a4
   12d50:	00f59823          	sh	a5,16(a1)
   12d54:	18d05663          	blez	a3,12ee0 <__sflush_r+0x1cc>
   12d58:	04843703          	ld	a4,72(s0)
   12d5c:	0c070c63          	beqz	a4,12e34 <__sflush_r+0x120>
   12d60:	03079793          	slli	a5,a5,0x30
   12d64:	0307d793          	srli	a5,a5,0x30
   12d68:	000016b7          	lui	a3,0x1
   12d6c:	0009a483          	lw	s1,0(s3)
   12d70:	00d7f6b3          	and	a3,a5,a3
   12d74:	0009a023          	sw	zero,0(s3)
   12d78:	03043583          	ld	a1,48(s0)
   12d7c:	16069863          	bnez	a3,12eec <__sflush_r+0x1d8>
   12d80:	00000613          	li	a2,0
   12d84:	00100693          	li	a3,1
   12d88:	00098513          	mv	a0,s3
   12d8c:	000700e7          	jalr	a4
   12d90:	fff00793          	li	a5,-1
   12d94:	00050613          	mv	a2,a0
   12d98:	18f50c63          	beq	a0,a5,12f30 <__sflush_r+0x21c>
   12d9c:	01045783          	lhu	a5,16(s0)
   12da0:	04843703          	ld	a4,72(s0)
   12da4:	03043583          	ld	a1,48(s0)
   12da8:	0047f793          	andi	a5,a5,4
   12dac:	00078e63          	beqz	a5,12dc8 <__sflush_r+0xb4>
   12db0:	00842683          	lw	a3,8(s0)
   12db4:	05843783          	ld	a5,88(s0)
   12db8:	40d60633          	sub	a2,a2,a3
   12dbc:	00078663          	beqz	a5,12dc8 <__sflush_r+0xb4>
   12dc0:	07042783          	lw	a5,112(s0)
   12dc4:	40f60633          	sub	a2,a2,a5
   12dc8:	00000693          	li	a3,0
   12dcc:	00098513          	mv	a0,s3
   12dd0:	000700e7          	jalr	a4
   12dd4:	fff00793          	li	a5,-1
   12dd8:	10f51e63          	bne	a0,a5,12ef4 <__sflush_r+0x1e0>
   12ddc:	0009a703          	lw	a4,0(s3)
   12de0:	01041783          	lh	a5,16(s0)
   12de4:	16070863          	beqz	a4,12f54 <__sflush_r+0x240>
   12de8:	01d00693          	li	a3,29
   12dec:	00d70663          	beq	a4,a3,12df8 <__sflush_r+0xe4>
   12df0:	01600693          	li	a3,22
   12df4:	16d71a63          	bne	a4,a3,12f68 <__sflush_r+0x254>
   12df8:	01843683          	ld	a3,24(s0)
   12dfc:	fffff737          	lui	a4,0xfffff
   12e00:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdb55f>
   12e04:	00e7f7b3          	and	a5,a5,a4
   12e08:	00f41823          	sh	a5,16(s0)
   12e0c:	00042423          	sw	zero,8(s0)
   12e10:	00d43023          	sd	a3,0(s0)
   12e14:	05843583          	ld	a1,88(s0)
   12e18:	0099a023          	sw	s1,0(s3)
   12e1c:	00058c63          	beqz	a1,12e34 <__sflush_r+0x120>
   12e20:	07440793          	addi	a5,s0,116
   12e24:	00f58663          	beq	a1,a5,12e30 <__sflush_r+0x11c>
   12e28:	00098513          	mv	a0,s3
   12e2c:	750000ef          	jal	ra,1357c <_free_r>
   12e30:	04043c23          	sd	zero,88(s0)
   12e34:	00000513          	li	a0,0
   12e38:	02813083          	ld	ra,40(sp)
   12e3c:	02013403          	ld	s0,32(sp)
   12e40:	01813483          	ld	s1,24(sp)
   12e44:	01013903          	ld	s2,16(sp)
   12e48:	00813983          	ld	s3,8(sp)
   12e4c:	03010113          	addi	sp,sp,48
   12e50:	00008067          	ret
   12e54:	0185b903          	ld	s2,24(a1)
   12e58:	fc090ee3          	beqz	s2,12e34 <__sflush_r+0x120>
   12e5c:	0005b483          	ld	s1,0(a1)
   12e60:	03079713          	slli	a4,a5,0x30
   12e64:	03075713          	srli	a4,a4,0x30
   12e68:	00377713          	andi	a4,a4,3
   12e6c:	0125b023          	sd	s2,0(a1)
   12e70:	412484bb          	subw	s1,s1,s2
   12e74:	00000793          	li	a5,0
   12e78:	00071463          	bnez	a4,12e80 <__sflush_r+0x16c>
   12e7c:	0205a783          	lw	a5,32(a1)
   12e80:	00f42623          	sw	a5,12(s0)
   12e84:	00904863          	bgtz	s1,12e94 <__sflush_r+0x180>
   12e88:	fadff06f          	j	12e34 <__sflush_r+0x120>
   12e8c:	00a90933          	add	s2,s2,a0
   12e90:	fa9052e3          	blez	s1,12e34 <__sflush_r+0x120>
   12e94:	04043783          	ld	a5,64(s0)
   12e98:	03043583          	ld	a1,48(s0)
   12e9c:	00048693          	mv	a3,s1
   12ea0:	00090613          	mv	a2,s2
   12ea4:	00098513          	mv	a0,s3
   12ea8:	000780e7          	jalr	a5
   12eac:	40a484bb          	subw	s1,s1,a0
   12eb0:	fca04ee3          	bgtz	a0,12e8c <__sflush_r+0x178>
   12eb4:	01045783          	lhu	a5,16(s0)
   12eb8:	02813083          	ld	ra,40(sp)
   12ebc:	01813483          	ld	s1,24(sp)
   12ec0:	0407e793          	ori	a5,a5,64
   12ec4:	00f41823          	sh	a5,16(s0)
   12ec8:	02013403          	ld	s0,32(sp)
   12ecc:	01013903          	ld	s2,16(sp)
   12ed0:	00813983          	ld	s3,8(sp)
   12ed4:	fff00513          	li	a0,-1
   12ed8:	03010113          	addi	sp,sp,48
   12edc:	00008067          	ret
   12ee0:	0705a703          	lw	a4,112(a1)
   12ee4:	e6e04ae3          	bgtz	a4,12d58 <__sflush_r+0x44>
   12ee8:	f4dff06f          	j	12e34 <__sflush_r+0x120>
   12eec:	09043603          	ld	a2,144(s0)
   12ef0:	eb9ff06f          	j	12da8 <__sflush_r+0x94>
   12ef4:	01045783          	lhu	a5,16(s0)
   12ef8:	fffff737          	lui	a4,0xfffff
   12efc:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdb55f>
   12f00:	00e7f7b3          	and	a5,a5,a4
   12f04:	01843683          	ld	a3,24(s0)
   12f08:	0107979b          	slliw	a5,a5,0x10
   12f0c:	4107d79b          	sraiw	a5,a5,0x10
   12f10:	00001737          	lui	a4,0x1
   12f14:	00f41823          	sh	a5,16(s0)
   12f18:	00042423          	sw	zero,8(s0)
   12f1c:	00d43023          	sd	a3,0(s0)
   12f20:	00e7f7b3          	and	a5,a5,a4
   12f24:	ee0788e3          	beqz	a5,12e14 <__sflush_r+0x100>
   12f28:	08a43823          	sd	a0,144(s0)
   12f2c:	ee9ff06f          	j	12e14 <__sflush_r+0x100>
   12f30:	0009a783          	lw	a5,0(s3)
   12f34:	e60784e3          	beqz	a5,12d9c <__sflush_r+0x88>
   12f38:	01d00713          	li	a4,29
   12f3c:	00e78663          	beq	a5,a4,12f48 <__sflush_r+0x234>
   12f40:	01600713          	li	a4,22
   12f44:	f6e798e3          	bne	a5,a4,12eb4 <__sflush_r+0x1a0>
   12f48:	0099a023          	sw	s1,0(s3)
   12f4c:	00000513          	li	a0,0
   12f50:	ee9ff06f          	j	12e38 <__sflush_r+0x124>
   12f54:	fffff737          	lui	a4,0xfffff
   12f58:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdb55f>
   12f5c:	01843683          	ld	a3,24(s0)
   12f60:	00e7f7b3          	and	a5,a5,a4
   12f64:	fadff06f          	j	12f10 <__sflush_r+0x1fc>
   12f68:	0407e793          	ori	a5,a5,64
   12f6c:	00f41823          	sh	a5,16(s0)
   12f70:	fff00513          	li	a0,-1
   12f74:	ec5ff06f          	j	12e38 <__sflush_r+0x124>

0000000000012f78 <_fflush_r>:
   12f78:	fe010113          	addi	sp,sp,-32
   12f7c:	00813823          	sd	s0,16(sp)
   12f80:	00113c23          	sd	ra,24(sp)
   12f84:	00050413          	mv	s0,a0
   12f88:	00050663          	beqz	a0,12f94 <_fflush_r+0x1c>
   12f8c:	05052783          	lw	a5,80(a0)
   12f90:	02078063          	beqz	a5,12fb0 <_fflush_r+0x38>
   12f94:	01059783          	lh	a5,16(a1)
   12f98:	02079663          	bnez	a5,12fc4 <_fflush_r+0x4c>
   12f9c:	01813083          	ld	ra,24(sp)
   12fa0:	01013403          	ld	s0,16(sp)
   12fa4:	00000513          	li	a0,0
   12fa8:	02010113          	addi	sp,sp,32
   12fac:	00008067          	ret
   12fb0:	00b13423          	sd	a1,8(sp)
   12fb4:	3f0000ef          	jal	ra,133a4 <__sinit>
   12fb8:	00813583          	ld	a1,8(sp)
   12fbc:	01059783          	lh	a5,16(a1)
   12fc0:	fc078ee3          	beqz	a5,12f9c <_fflush_r+0x24>
   12fc4:	00040513          	mv	a0,s0
   12fc8:	01013403          	ld	s0,16(sp)
   12fcc:	01813083          	ld	ra,24(sp)
   12fd0:	02010113          	addi	sp,sp,32
   12fd4:	d41ff06f          	j	12d14 <__sflush_r>

0000000000012fd8 <fflush>:
   12fd8:	06050663          	beqz	a0,13044 <fflush+0x6c>
   12fdc:	fe010113          	addi	sp,sp,-32
   12fe0:	00813823          	sd	s0,16(sp)
   12fe4:	00050413          	mv	s0,a0
   12fe8:	7581b503          	ld	a0,1880(gp) # 241f8 <_impure_ptr>
   12fec:	00113c23          	sd	ra,24(sp)
   12ff0:	00050663          	beqz	a0,12ffc <fflush+0x24>
   12ff4:	05052783          	lw	a5,80(a0)
   12ff8:	02078a63          	beqz	a5,1302c <fflush+0x54>
   12ffc:	01041783          	lh	a5,16(s0)
   13000:	00079c63          	bnez	a5,13018 <fflush+0x40>
   13004:	01813083          	ld	ra,24(sp)
   13008:	01013403          	ld	s0,16(sp)
   1300c:	00000513          	li	a0,0
   13010:	02010113          	addi	sp,sp,32
   13014:	00008067          	ret
   13018:	00040593          	mv	a1,s0
   1301c:	01013403          	ld	s0,16(sp)
   13020:	01813083          	ld	ra,24(sp)
   13024:	02010113          	addi	sp,sp,32
   13028:	cedff06f          	j	12d14 <__sflush_r>
   1302c:	00a13423          	sd	a0,8(sp)
   13030:	374000ef          	jal	ra,133a4 <__sinit>
   13034:	01041783          	lh	a5,16(s0)
   13038:	00813503          	ld	a0,8(sp)
   1303c:	fc0784e3          	beqz	a5,13004 <fflush+0x2c>
   13040:	fd9ff06f          	j	13018 <fflush+0x40>
   13044:	7481b503          	ld	a0,1864(gp) # 241e8 <_global_impure_ptr>
   13048:	000135b7          	lui	a1,0x13
   1304c:	f7858593          	addi	a1,a1,-136 # 12f78 <_fflush_r>
   13050:	1190006f          	j	13968 <_fwalk_reent>

0000000000013054 <__fp_lock>:
   13054:	00000513          	li	a0,0
   13058:	00008067          	ret

000000000001305c <_cleanup_r>:
   1305c:	0001c5b7          	lui	a1,0x1c
   13060:	4d058593          	addi	a1,a1,1232 # 1c4d0 <_fclose_r>
   13064:	1050006f          	j	13968 <_fwalk_reent>

0000000000013068 <__fp_unlock>:
   13068:	00000513          	li	a0,0
   1306c:	00008067          	ret

0000000000013070 <__sinit.part.0>:
   13070:	fc010113          	addi	sp,sp,-64
   13074:	000137b7          	lui	a5,0x13
   13078:	02113c23          	sd	ra,56(sp)
   1307c:	02813823          	sd	s0,48(sp)
   13080:	02913423          	sd	s1,40(sp)
   13084:	03213023          	sd	s2,32(sp)
   13088:	01313c23          	sd	s3,24(sp)
   1308c:	01413823          	sd	s4,16(sp)
   13090:	01513423          	sd	s5,8(sp)
   13094:	01613023          	sd	s6,0(sp)
   13098:	00853403          	ld	s0,8(a0)
   1309c:	05c78793          	addi	a5,a5,92 # 1305c <_cleanup_r>
   130a0:	04f53c23          	sd	a5,88(a0)
   130a4:	53850713          	addi	a4,a0,1336
   130a8:	00300793          	li	a5,3
   130ac:	52e53823          	sd	a4,1328(a0)
   130b0:	52f52423          	sw	a5,1320(a0)
   130b4:	52053023          	sd	zero,1312(a0)
   130b8:	00400793          	li	a5,4
   130bc:	00050913          	mv	s2,a0
   130c0:	00f42823          	sw	a5,16(s0)
   130c4:	00800613          	li	a2,8
   130c8:	00000593          	li	a1,0
   130cc:	0a042623          	sw	zero,172(s0)
   130d0:	00043023          	sd	zero,0(s0)
   130d4:	00043423          	sd	zero,8(s0)
   130d8:	00043c23          	sd	zero,24(s0)
   130dc:	02042023          	sw	zero,32(s0)
   130e0:	02042423          	sw	zero,40(s0)
   130e4:	0a440513          	addi	a0,s0,164
   130e8:	9d4fd0ef          	jal	ra,102bc <memset>
   130ec:	00018b37          	lui	s6,0x18
   130f0:	01093483          	ld	s1,16(s2)
   130f4:	00018ab7          	lui	s5,0x18
   130f8:	00018a37          	lui	s4,0x18
   130fc:	000189b7          	lui	s3,0x18
   13100:	5a8b0b13          	addi	s6,s6,1448 # 185a8 <__sread>
   13104:	60ca8a93          	addi	s5,s5,1548 # 1860c <__swrite>
   13108:	694a0a13          	addi	s4,s4,1684 # 18694 <__sseek>
   1310c:	6fc98993          	addi	s3,s3,1788 # 186fc <__sclose>
   13110:	000107b7          	lui	a5,0x10
   13114:	03643c23          	sd	s6,56(s0)
   13118:	05543023          	sd	s5,64(s0)
   1311c:	05443423          	sd	s4,72(s0)
   13120:	05343823          	sd	s3,80(s0)
   13124:	02843823          	sd	s0,48(s0)
   13128:	00978793          	addi	a5,a5,9 # 10009 <register_fini-0xa7>
   1312c:	00f4a823          	sw	a5,16(s1)
   13130:	00800613          	li	a2,8
   13134:	00000593          	li	a1,0
   13138:	0a04a623          	sw	zero,172(s1)
   1313c:	0004b023          	sd	zero,0(s1)
   13140:	0004b423          	sd	zero,8(s1)
   13144:	0004bc23          	sd	zero,24(s1)
   13148:	0204a023          	sw	zero,32(s1)
   1314c:	0204a423          	sw	zero,40(s1)
   13150:	0a448513          	addi	a0,s1,164
   13154:	968fd0ef          	jal	ra,102bc <memset>
   13158:	01893403          	ld	s0,24(s2)
   1315c:	000207b7          	lui	a5,0x20
   13160:	0364bc23          	sd	s6,56(s1)
   13164:	0554b023          	sd	s5,64(s1)
   13168:	0544b423          	sd	s4,72(s1)
   1316c:	0534b823          	sd	s3,80(s1)
   13170:	0294b823          	sd	s1,48(s1)
   13174:	01278793          	addi	a5,a5,18 # 20012 <__multf3+0x69a>
   13178:	00f42823          	sw	a5,16(s0)
   1317c:	0a042623          	sw	zero,172(s0)
   13180:	00043023          	sd	zero,0(s0)
   13184:	00043423          	sd	zero,8(s0)
   13188:	00043c23          	sd	zero,24(s0)
   1318c:	02042023          	sw	zero,32(s0)
   13190:	02042423          	sw	zero,40(s0)
   13194:	0a440513          	addi	a0,s0,164
   13198:	00800613          	li	a2,8
   1319c:	00000593          	li	a1,0
   131a0:	91cfd0ef          	jal	ra,102bc <memset>
   131a4:	03813083          	ld	ra,56(sp)
   131a8:	03643c23          	sd	s6,56(s0)
   131ac:	05543023          	sd	s5,64(s0)
   131b0:	05443423          	sd	s4,72(s0)
   131b4:	05343823          	sd	s3,80(s0)
   131b8:	02843823          	sd	s0,48(s0)
   131bc:	03013403          	ld	s0,48(sp)
   131c0:	00100793          	li	a5,1
   131c4:	04f92823          	sw	a5,80(s2)
   131c8:	02813483          	ld	s1,40(sp)
   131cc:	02013903          	ld	s2,32(sp)
   131d0:	01813983          	ld	s3,24(sp)
   131d4:	01013a03          	ld	s4,16(sp)
   131d8:	00813a83          	ld	s5,8(sp)
   131dc:	00013b03          	ld	s6,0(sp)
   131e0:	04010113          	addi	sp,sp,64
   131e4:	00008067          	ret

00000000000131e8 <__sfmoreglue>:
   131e8:	fe010113          	addi	sp,sp,-32
   131ec:	00913423          	sd	s1,8(sp)
   131f0:	0b000613          	li	a2,176
   131f4:	fff5849b          	addiw	s1,a1,-1
   131f8:	02c484b3          	mul	s1,s1,a2
   131fc:	01213023          	sd	s2,0(sp)
   13200:	00058913          	mv	s2,a1
   13204:	00813823          	sd	s0,16(sp)
   13208:	00113c23          	sd	ra,24(sp)
   1320c:	0c848593          	addi	a1,s1,200
   13210:	678030ef          	jal	ra,16888 <_malloc_r>
   13214:	00050413          	mv	s0,a0
   13218:	02050063          	beqz	a0,13238 <__sfmoreglue+0x50>
   1321c:	01850513          	addi	a0,a0,24
   13220:	00043023          	sd	zero,0(s0)
   13224:	01242423          	sw	s2,8(s0)
   13228:	00a43823          	sd	a0,16(s0)
   1322c:	0b048613          	addi	a2,s1,176
   13230:	00000593          	li	a1,0
   13234:	888fd0ef          	jal	ra,102bc <memset>
   13238:	01813083          	ld	ra,24(sp)
   1323c:	00040513          	mv	a0,s0
   13240:	01013403          	ld	s0,16(sp)
   13244:	00813483          	ld	s1,8(sp)
   13248:	00013903          	ld	s2,0(sp)
   1324c:	02010113          	addi	sp,sp,32
   13250:	00008067          	ret

0000000000013254 <__sfp>:
   13254:	fd010113          	addi	sp,sp,-48
   13258:	00913c23          	sd	s1,24(sp)
   1325c:	7481b483          	ld	s1,1864(gp) # 241e8 <_global_impure_ptr>
   13260:	01213823          	sd	s2,16(sp)
   13264:	02113423          	sd	ra,40(sp)
   13268:	0504a783          	lw	a5,80(s1)
   1326c:	02813023          	sd	s0,32(sp)
   13270:	01313423          	sd	s3,8(sp)
   13274:	01413023          	sd	s4,0(sp)
   13278:	00050913          	mv	s2,a0
   1327c:	0c078063          	beqz	a5,1333c <__sfp+0xe8>
   13280:	52048493          	addi	s1,s1,1312
   13284:	0b000993          	li	s3,176
   13288:	00400a13          	li	s4,4
   1328c:	0084a783          	lw	a5,8(s1)
   13290:	0104b403          	ld	s0,16(s1)
   13294:	08f05c63          	blez	a5,1332c <__sfp+0xd8>
   13298:	fff7879b          	addiw	a5,a5,-1
   1329c:	02079793          	slli	a5,a5,0x20
   132a0:	0207d793          	srli	a5,a5,0x20
   132a4:	00178793          	addi	a5,a5,1
   132a8:	033787b3          	mul	a5,a5,s3
   132ac:	00f407b3          	add	a5,s0,a5
   132b0:	00c0006f          	j	132bc <__sfp+0x68>
   132b4:	0b040413          	addi	s0,s0,176
   132b8:	06f40a63          	beq	s0,a5,1332c <__sfp+0xd8>
   132bc:	01041703          	lh	a4,16(s0)
   132c0:	fe071ae3          	bnez	a4,132b4 <__sfp+0x60>
   132c4:	ffff07b7          	lui	a5,0xffff0
   132c8:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffcbd61>
   132cc:	0a042623          	sw	zero,172(s0)
   132d0:	00043023          	sd	zero,0(s0)
   132d4:	00043423          	sd	zero,8(s0)
   132d8:	00f42823          	sw	a5,16(s0)
   132dc:	00043c23          	sd	zero,24(s0)
   132e0:	02042023          	sw	zero,32(s0)
   132e4:	02042423          	sw	zero,40(s0)
   132e8:	00800613          	li	a2,8
   132ec:	00000593          	li	a1,0
   132f0:	0a440513          	addi	a0,s0,164
   132f4:	fc9fc0ef          	jal	ra,102bc <memset>
   132f8:	04043c23          	sd	zero,88(s0)
   132fc:	06042023          	sw	zero,96(s0)
   13300:	06043c23          	sd	zero,120(s0)
   13304:	08042023          	sw	zero,128(s0)
   13308:	02813083          	ld	ra,40(sp)
   1330c:	00040513          	mv	a0,s0
   13310:	02013403          	ld	s0,32(sp)
   13314:	01813483          	ld	s1,24(sp)
   13318:	01013903          	ld	s2,16(sp)
   1331c:	00813983          	ld	s3,8(sp)
   13320:	00013a03          	ld	s4,0(sp)
   13324:	03010113          	addi	sp,sp,48
   13328:	00008067          	ret
   1332c:	0004b403          	ld	s0,0(s1)
   13330:	00040c63          	beqz	s0,13348 <__sfp+0xf4>
   13334:	00040493          	mv	s1,s0
   13338:	f55ff06f          	j	1328c <__sfp+0x38>
   1333c:	00048513          	mv	a0,s1
   13340:	d31ff0ef          	jal	ra,13070 <__sinit.part.0>
   13344:	f3dff06f          	j	13280 <__sfp+0x2c>
   13348:	2d800593          	li	a1,728
   1334c:	00090513          	mv	a0,s2
   13350:	538030ef          	jal	ra,16888 <_malloc_r>
   13354:	00050413          	mv	s0,a0
   13358:	02050663          	beqz	a0,13384 <__sfp+0x130>
   1335c:	01850513          	addi	a0,a0,24
   13360:	00043023          	sd	zero,0(s0)
   13364:	01442423          	sw	s4,8(s0)
   13368:	00a43823          	sd	a0,16(s0)
   1336c:	2c000613          	li	a2,704
   13370:	00000593          	li	a1,0
   13374:	f49fc0ef          	jal	ra,102bc <memset>
   13378:	0084b023          	sd	s0,0(s1)
   1337c:	00040493          	mv	s1,s0
   13380:	f0dff06f          	j	1328c <__sfp+0x38>
   13384:	0004b023          	sd	zero,0(s1)
   13388:	00c00793          	li	a5,12
   1338c:	00f92023          	sw	a5,0(s2)
   13390:	f79ff06f          	j	13308 <__sfp+0xb4>

0000000000013394 <_cleanup>:
   13394:	7481b503          	ld	a0,1864(gp) # 241e8 <_global_impure_ptr>
   13398:	0001c5b7          	lui	a1,0x1c
   1339c:	4d058593          	addi	a1,a1,1232 # 1c4d0 <_fclose_r>
   133a0:	5c80006f          	j	13968 <_fwalk_reent>

00000000000133a4 <__sinit>:
   133a4:	05052783          	lw	a5,80(a0)
   133a8:	00078463          	beqz	a5,133b0 <__sinit+0xc>
   133ac:	00008067          	ret
   133b0:	cc1ff06f          	j	13070 <__sinit.part.0>

00000000000133b4 <__sfp_lock_acquire>:
   133b4:	00008067          	ret

00000000000133b8 <__sfp_lock_release>:
   133b8:	00008067          	ret

00000000000133bc <__sinit_lock_acquire>:
   133bc:	00008067          	ret

00000000000133c0 <__sinit_lock_release>:
   133c0:	00008067          	ret

00000000000133c4 <__fp_lock_all>:
   133c4:	7581b503          	ld	a0,1880(gp) # 241f8 <_impure_ptr>
   133c8:	000135b7          	lui	a1,0x13
   133cc:	05458593          	addi	a1,a1,84 # 13054 <__fp_lock>
   133d0:	4d40006f          	j	138a4 <_fwalk>

00000000000133d4 <__fp_unlock_all>:
   133d4:	7581b503          	ld	a0,1880(gp) # 241f8 <_impure_ptr>
   133d8:	000135b7          	lui	a1,0x13
   133dc:	06858593          	addi	a1,a1,104 # 13068 <__fp_unlock>
   133e0:	4c40006f          	j	138a4 <_fwalk>

00000000000133e4 <__libc_fini_array>:
   133e4:	fe010113          	addi	sp,sp,-32
   133e8:	00813823          	sd	s0,16(sp)
   133ec:	000237b7          	lui	a5,0x23
   133f0:	00023437          	lui	s0,0x23
   133f4:	0b040413          	addi	s0,s0,176 # 230b0 <__do_global_dtors_aux_fini_array_entry>
   133f8:	0b878793          	addi	a5,a5,184 # 230b8 <impure_data>
   133fc:	408787b3          	sub	a5,a5,s0
   13400:	00913423          	sd	s1,8(sp)
   13404:	00113c23          	sd	ra,24(sp)
   13408:	4037d493          	srai	s1,a5,0x3
   1340c:	02048063          	beqz	s1,1342c <__libc_fini_array+0x48>
   13410:	ff878793          	addi	a5,a5,-8
   13414:	00878433          	add	s0,a5,s0
   13418:	00043783          	ld	a5,0(s0)
   1341c:	fff48493          	addi	s1,s1,-1
   13420:	ff840413          	addi	s0,s0,-8
   13424:	000780e7          	jalr	a5
   13428:	fe0498e3          	bnez	s1,13418 <__libc_fini_array+0x34>
   1342c:	01813083          	ld	ra,24(sp)
   13430:	01013403          	ld	s0,16(sp)
   13434:	00813483          	ld	s1,8(sp)
   13438:	02010113          	addi	sp,sp,32
   1343c:	00008067          	ret

0000000000013440 <_malloc_trim_r>:
   13440:	fd010113          	addi	sp,sp,-48
   13444:	01313423          	sd	s3,8(sp)
   13448:	000249b7          	lui	s3,0x24
   1344c:	02813023          	sd	s0,32(sp)
   13450:	00913c23          	sd	s1,24(sp)
   13454:	01213823          	sd	s2,16(sp)
   13458:	01413023          	sd	s4,0(sp)
   1345c:	02113423          	sd	ra,40(sp)
   13460:	00058a13          	mv	s4,a1
   13464:	00050913          	mv	s2,a0
   13468:	80098993          	addi	s3,s3,-2048 # 23800 <__malloc_av_>
   1346c:	4ed030ef          	jal	ra,17158 <__malloc_lock>
   13470:	0109b703          	ld	a4,16(s3)
   13474:	000017b7          	lui	a5,0x1
   13478:	fdf78413          	addi	s0,a5,-33 # fdf <register_fini-0xf0d1>
   1347c:	00873483          	ld	s1,8(a4)
   13480:	41440433          	sub	s0,s0,s4
   13484:	ffc4f493          	andi	s1,s1,-4
   13488:	00940433          	add	s0,s0,s1
   1348c:	00c45413          	srli	s0,s0,0xc
   13490:	fff40413          	addi	s0,s0,-1
   13494:	00c41413          	slli	s0,s0,0xc
   13498:	00f44e63          	blt	s0,a5,134b4 <_malloc_trim_r+0x74>
   1349c:	00000593          	li	a1,0
   134a0:	00090513          	mv	a0,s2
   134a4:	7c5040ef          	jal	ra,18468 <_sbrk_r>
   134a8:	0109b783          	ld	a5,16(s3)
   134ac:	009787b3          	add	a5,a5,s1
   134b0:	02f50863          	beq	a0,a5,134e0 <_malloc_trim_r+0xa0>
   134b4:	00090513          	mv	a0,s2
   134b8:	4a5030ef          	jal	ra,1715c <__malloc_unlock>
   134bc:	02813083          	ld	ra,40(sp)
   134c0:	02013403          	ld	s0,32(sp)
   134c4:	01813483          	ld	s1,24(sp)
   134c8:	01013903          	ld	s2,16(sp)
   134cc:	00813983          	ld	s3,8(sp)
   134d0:	00013a03          	ld	s4,0(sp)
   134d4:	00000513          	li	a0,0
   134d8:	03010113          	addi	sp,sp,48
   134dc:	00008067          	ret
   134e0:	408005b3          	neg	a1,s0
   134e4:	00090513          	mv	a0,s2
   134e8:	781040ef          	jal	ra,18468 <_sbrk_r>
   134ec:	fff00793          	li	a5,-1
   134f0:	04f50a63          	beq	a0,a5,13544 <_malloc_trim_r+0x104>
   134f4:	000247b7          	lui	a5,0x24
   134f8:	27878793          	addi	a5,a5,632 # 24278 <__malloc_current_mallinfo>
   134fc:	0007a703          	lw	a4,0(a5)
   13500:	0109b683          	ld	a3,16(s3)
   13504:	408484b3          	sub	s1,s1,s0
   13508:	0014e493          	ori	s1,s1,1
   1350c:	4087043b          	subw	s0,a4,s0
   13510:	00090513          	mv	a0,s2
   13514:	0096b423          	sd	s1,8(a3) # 1008 <register_fini-0xf0a8>
   13518:	0087a023          	sw	s0,0(a5)
   1351c:	441030ef          	jal	ra,1715c <__malloc_unlock>
   13520:	02813083          	ld	ra,40(sp)
   13524:	02013403          	ld	s0,32(sp)
   13528:	01813483          	ld	s1,24(sp)
   1352c:	01013903          	ld	s2,16(sp)
   13530:	00813983          	ld	s3,8(sp)
   13534:	00013a03          	ld	s4,0(sp)
   13538:	00100513          	li	a0,1
   1353c:	03010113          	addi	sp,sp,48
   13540:	00008067          	ret
   13544:	00000593          	li	a1,0
   13548:	00090513          	mv	a0,s2
   1354c:	71d040ef          	jal	ra,18468 <_sbrk_r>
   13550:	0109b703          	ld	a4,16(s3)
   13554:	01f00693          	li	a3,31
   13558:	40e507b3          	sub	a5,a0,a4
   1355c:	f4f6dce3          	bge	a3,a5,134b4 <_malloc_trim_r+0x74>
   13560:	7601b683          	ld	a3,1888(gp) # 24200 <__malloc_sbrk_base>
   13564:	0017e793          	ori	a5,a5,1
   13568:	00f73423          	sd	a5,8(a4)
   1356c:	40d50533          	sub	a0,a0,a3
   13570:	000246b7          	lui	a3,0x24
   13574:	26a6ac23          	sw	a0,632(a3) # 24278 <__malloc_current_mallinfo>
   13578:	f3dff06f          	j	134b4 <_malloc_trim_r+0x74>

000000000001357c <_free_r>:
   1357c:	12058e63          	beqz	a1,136b8 <_free_r+0x13c>
   13580:	fe010113          	addi	sp,sp,-32
   13584:	00813823          	sd	s0,16(sp)
   13588:	00913423          	sd	s1,8(sp)
   1358c:	00058413          	mv	s0,a1
   13590:	00050493          	mv	s1,a0
   13594:	00113c23          	sd	ra,24(sp)
   13598:	3c1030ef          	jal	ra,17158 <__malloc_lock>
   1359c:	ff843503          	ld	a0,-8(s0)
   135a0:	ff040713          	addi	a4,s0,-16
   135a4:	000245b7          	lui	a1,0x24
   135a8:	ffe57793          	andi	a5,a0,-2
   135ac:	00f70633          	add	a2,a4,a5
   135b0:	80058593          	addi	a1,a1,-2048 # 23800 <__malloc_av_>
   135b4:	00863683          	ld	a3,8(a2)
   135b8:	0105b803          	ld	a6,16(a1)
   135bc:	ffc6f693          	andi	a3,a3,-4
   135c0:	1cc80063          	beq	a6,a2,13780 <_free_r+0x204>
   135c4:	00d63423          	sd	a3,8(a2)
   135c8:	00157513          	andi	a0,a0,1
   135cc:	00d60833          	add	a6,a2,a3
   135d0:	0a051463          	bnez	a0,13678 <_free_r+0xfc>
   135d4:	ff043303          	ld	t1,-16(s0)
   135d8:	00883803          	ld	a6,8(a6)
   135dc:	00024537          	lui	a0,0x24
   135e0:	40670733          	sub	a4,a4,t1
   135e4:	01073883          	ld	a7,16(a4)
   135e8:	81050513          	addi	a0,a0,-2032 # 23810 <__malloc_av_+0x10>
   135ec:	006787b3          	add	a5,a5,t1
   135f0:	00187813          	andi	a6,a6,1
   135f4:	14a88663          	beq	a7,a0,13740 <_free_r+0x1c4>
   135f8:	01873303          	ld	t1,24(a4)
   135fc:	0068bc23          	sd	t1,24(a7)
   13600:	01133823          	sd	a7,16(t1)
   13604:	1e080863          	beqz	a6,137f4 <_free_r+0x278>
   13608:	0017e693          	ori	a3,a5,1
   1360c:	00d73423          	sd	a3,8(a4)
   13610:	00f63023          	sd	a5,0(a2)
   13614:	1ff00693          	li	a3,511
   13618:	0af6ec63          	bltu	a3,a5,136d0 <_free_r+0x154>
   1361c:	0037d793          	srli	a5,a5,0x3
   13620:	0017869b          	addiw	a3,a5,1
   13624:	0016969b          	slliw	a3,a3,0x1
   13628:	00369693          	slli	a3,a3,0x3
   1362c:	0085b803          	ld	a6,8(a1)
   13630:	00d586b3          	add	a3,a1,a3
   13634:	0006b503          	ld	a0,0(a3)
   13638:	4027d61b          	sraiw	a2,a5,0x2
   1363c:	00100793          	li	a5,1
   13640:	00c797b3          	sll	a5,a5,a2
   13644:	0107e7b3          	or	a5,a5,a6
   13648:	ff068613          	addi	a2,a3,-16
   1364c:	00c73c23          	sd	a2,24(a4)
   13650:	00a73823          	sd	a0,16(a4)
   13654:	00f5b423          	sd	a5,8(a1)
   13658:	00e6b023          	sd	a4,0(a3)
   1365c:	00e53c23          	sd	a4,24(a0)
   13660:	01013403          	ld	s0,16(sp)
   13664:	01813083          	ld	ra,24(sp)
   13668:	00048513          	mv	a0,s1
   1366c:	00813483          	ld	s1,8(sp)
   13670:	02010113          	addi	sp,sp,32
   13674:	2e90306f          	j	1715c <__malloc_unlock>
   13678:	00883503          	ld	a0,8(a6)
   1367c:	00157513          	andi	a0,a0,1
   13680:	02051e63          	bnez	a0,136bc <_free_r+0x140>
   13684:	00024537          	lui	a0,0x24
   13688:	00d787b3          	add	a5,a5,a3
   1368c:	81050513          	addi	a0,a0,-2032 # 23810 <__malloc_av_+0x10>
   13690:	01063683          	ld	a3,16(a2)
   13694:	0017e893          	ori	a7,a5,1
   13698:	00f70833          	add	a6,a4,a5
   1369c:	16a68a63          	beq	a3,a0,13810 <_free_r+0x294>
   136a0:	01863603          	ld	a2,24(a2)
   136a4:	00c6bc23          	sd	a2,24(a3)
   136a8:	00d63823          	sd	a3,16(a2)
   136ac:	01173423          	sd	a7,8(a4)
   136b0:	00f83023          	sd	a5,0(a6)
   136b4:	f61ff06f          	j	13614 <_free_r+0x98>
   136b8:	00008067          	ret
   136bc:	0017e693          	ori	a3,a5,1
   136c0:	fed43c23          	sd	a3,-8(s0)
   136c4:	00f63023          	sd	a5,0(a2)
   136c8:	1ff00693          	li	a3,511
   136cc:	f4f6f8e3          	bgeu	a3,a5,1361c <_free_r+0xa0>
   136d0:	0097d693          	srli	a3,a5,0x9
   136d4:	00400613          	li	a2,4
   136d8:	0ed66a63          	bltu	a2,a3,137cc <_free_r+0x250>
   136dc:	0067d693          	srli	a3,a5,0x6
   136e0:	0396851b          	addiw	a0,a3,57
   136e4:	0015151b          	slliw	a0,a0,0x1
   136e8:	0386861b          	addiw	a2,a3,56
   136ec:	00351513          	slli	a0,a0,0x3
   136f0:	00a58533          	add	a0,a1,a0
   136f4:	00053683          	ld	a3,0(a0)
   136f8:	ff050513          	addi	a0,a0,-16
   136fc:	12d50863          	beq	a0,a3,1382c <_free_r+0x2b0>
   13700:	0086b603          	ld	a2,8(a3)
   13704:	ffc67613          	andi	a2,a2,-4
   13708:	00c7f663          	bgeu	a5,a2,13714 <_free_r+0x198>
   1370c:	0106b683          	ld	a3,16(a3)
   13710:	fed518e3          	bne	a0,a3,13700 <_free_r+0x184>
   13714:	0186b503          	ld	a0,24(a3)
   13718:	00a73c23          	sd	a0,24(a4)
   1371c:	00d73823          	sd	a3,16(a4)
   13720:	01013403          	ld	s0,16(sp)
   13724:	00e53823          	sd	a4,16(a0)
   13728:	01813083          	ld	ra,24(sp)
   1372c:	00048513          	mv	a0,s1
   13730:	00813483          	ld	s1,8(sp)
   13734:	00e6bc23          	sd	a4,24(a3)
   13738:	02010113          	addi	sp,sp,32
   1373c:	2210306f          	j	1715c <__malloc_unlock>
   13740:	14081a63          	bnez	a6,13894 <_free_r+0x318>
   13744:	01863583          	ld	a1,24(a2)
   13748:	01063603          	ld	a2,16(a2)
   1374c:	00f687b3          	add	a5,a3,a5
   13750:	01013403          	ld	s0,16(sp)
   13754:	00b63c23          	sd	a1,24(a2)
   13758:	00c5b823          	sd	a2,16(a1)
   1375c:	0017e693          	ori	a3,a5,1
   13760:	01813083          	ld	ra,24(sp)
   13764:	00d73423          	sd	a3,8(a4)
   13768:	00048513          	mv	a0,s1
   1376c:	00f70733          	add	a4,a4,a5
   13770:	00813483          	ld	s1,8(sp)
   13774:	00f73023          	sd	a5,0(a4)
   13778:	02010113          	addi	sp,sp,32
   1377c:	1e10306f          	j	1715c <__malloc_unlock>
   13780:	00157513          	andi	a0,a0,1
   13784:	00d787b3          	add	a5,a5,a3
   13788:	02051063          	bnez	a0,137a8 <_free_r+0x22c>
   1378c:	ff043503          	ld	a0,-16(s0)
   13790:	40a70733          	sub	a4,a4,a0
   13794:	01873683          	ld	a3,24(a4)
   13798:	01073603          	ld	a2,16(a4)
   1379c:	00a787b3          	add	a5,a5,a0
   137a0:	00d63c23          	sd	a3,24(a2)
   137a4:	00c6b823          	sd	a2,16(a3)
   137a8:	0017e613          	ori	a2,a5,1
   137ac:	7681b683          	ld	a3,1896(gp) # 24208 <__malloc_trim_threshold>
   137b0:	00c73423          	sd	a2,8(a4)
   137b4:	00e5b823          	sd	a4,16(a1)
   137b8:	ead7e4e3          	bltu	a5,a3,13660 <_free_r+0xe4>
   137bc:	7801b583          	ld	a1,1920(gp) # 24220 <__malloc_top_pad>
   137c0:	00048513          	mv	a0,s1
   137c4:	c7dff0ef          	jal	ra,13440 <_malloc_trim_r>
   137c8:	e99ff06f          	j	13660 <_free_r+0xe4>
   137cc:	01400613          	li	a2,20
   137d0:	02d67663          	bgeu	a2,a3,137fc <_free_r+0x280>
   137d4:	05400613          	li	a2,84
   137d8:	06d66863          	bltu	a2,a3,13848 <_free_r+0x2cc>
   137dc:	00c7d693          	srli	a3,a5,0xc
   137e0:	06f6851b          	addiw	a0,a3,111
   137e4:	0015151b          	slliw	a0,a0,0x1
   137e8:	06e6861b          	addiw	a2,a3,110
   137ec:	00351513          	slli	a0,a0,0x3
   137f0:	f01ff06f          	j	136f0 <_free_r+0x174>
   137f4:	00d787b3          	add	a5,a5,a3
   137f8:	e99ff06f          	j	13690 <_free_r+0x114>
   137fc:	05c6851b          	addiw	a0,a3,92
   13800:	0015151b          	slliw	a0,a0,0x1
   13804:	05b6861b          	addiw	a2,a3,91
   13808:	00351513          	slli	a0,a0,0x3
   1380c:	ee5ff06f          	j	136f0 <_free_r+0x174>
   13810:	02e5b423          	sd	a4,40(a1)
   13814:	02e5b023          	sd	a4,32(a1)
   13818:	00a73c23          	sd	a0,24(a4)
   1381c:	00a73823          	sd	a0,16(a4)
   13820:	01173423          	sd	a7,8(a4)
   13824:	00f83023          	sd	a5,0(a6)
   13828:	e39ff06f          	j	13660 <_free_r+0xe4>
   1382c:	0085b803          	ld	a6,8(a1)
   13830:	4026561b          	sraiw	a2,a2,0x2
   13834:	00100793          	li	a5,1
   13838:	00c79633          	sll	a2,a5,a2
   1383c:	01066633          	or	a2,a2,a6
   13840:	00c5b423          	sd	a2,8(a1)
   13844:	ed5ff06f          	j	13718 <_free_r+0x19c>
   13848:	15400613          	li	a2,340
   1384c:	00d66e63          	bltu	a2,a3,13868 <_free_r+0x2ec>
   13850:	00f7d693          	srli	a3,a5,0xf
   13854:	0786851b          	addiw	a0,a3,120
   13858:	0015151b          	slliw	a0,a0,0x1
   1385c:	0776861b          	addiw	a2,a3,119
   13860:	00351513          	slli	a0,a0,0x3
   13864:	e8dff06f          	j	136f0 <_free_r+0x174>
   13868:	55400613          	li	a2,1364
   1386c:	00d66e63          	bltu	a2,a3,13888 <_free_r+0x30c>
   13870:	0127d693          	srli	a3,a5,0x12
   13874:	07d6851b          	addiw	a0,a3,125
   13878:	0015151b          	slliw	a0,a0,0x1
   1387c:	07c6861b          	addiw	a2,a3,124
   13880:	00351513          	slli	a0,a0,0x3
   13884:	e6dff06f          	j	136f0 <_free_r+0x174>
   13888:	7f000513          	li	a0,2032
   1388c:	07e00613          	li	a2,126
   13890:	e61ff06f          	j	136f0 <_free_r+0x174>
   13894:	0017e693          	ori	a3,a5,1
   13898:	00d73423          	sd	a3,8(a4)
   1389c:	00f63023          	sd	a5,0(a2)
   138a0:	dc1ff06f          	j	13660 <_free_r+0xe4>

00000000000138a4 <_fwalk>:
   138a4:	fb010113          	addi	sp,sp,-80
   138a8:	03213823          	sd	s2,48(sp)
   138ac:	03313423          	sd	s3,40(sp)
   138b0:	03413023          	sd	s4,32(sp)
   138b4:	01513c23          	sd	s5,24(sp)
   138b8:	01613823          	sd	s6,16(sp)
   138bc:	01713423          	sd	s7,8(sp)
   138c0:	04113423          	sd	ra,72(sp)
   138c4:	04813023          	sd	s0,64(sp)
   138c8:	02913c23          	sd	s1,56(sp)
   138cc:	00058a13          	mv	s4,a1
   138d0:	52050913          	addi	s2,a0,1312
   138d4:	00000b13          	li	s6,0
   138d8:	0b000a93          	li	s5,176
   138dc:	00100b93          	li	s7,1
   138e0:	fff00993          	li	s3,-1
   138e4:	00892783          	lw	a5,8(s2)
   138e8:	01093403          	ld	s0,16(s2)
   138ec:	04f05263          	blez	a5,13930 <_fwalk+0x8c>
   138f0:	fff7849b          	addiw	s1,a5,-1
   138f4:	02049493          	slli	s1,s1,0x20
   138f8:	0204d493          	srli	s1,s1,0x20
   138fc:	00148493          	addi	s1,s1,1
   13900:	035484b3          	mul	s1,s1,s5
   13904:	009404b3          	add	s1,s0,s1
   13908:	01045783          	lhu	a5,16(s0)
   1390c:	00fbfe63          	bgeu	s7,a5,13928 <_fwalk+0x84>
   13910:	01241783          	lh	a5,18(s0)
   13914:	00040513          	mv	a0,s0
   13918:	01378863          	beq	a5,s3,13928 <_fwalk+0x84>
   1391c:	000a00e7          	jalr	s4
   13920:	01656b33          	or	s6,a0,s6
   13924:	000b0b1b          	sext.w	s6,s6
   13928:	0b040413          	addi	s0,s0,176
   1392c:	fc849ee3          	bne	s1,s0,13908 <_fwalk+0x64>
   13930:	00093903          	ld	s2,0(s2)
   13934:	fa0918e3          	bnez	s2,138e4 <_fwalk+0x40>
   13938:	04813083          	ld	ra,72(sp)
   1393c:	04013403          	ld	s0,64(sp)
   13940:	03813483          	ld	s1,56(sp)
   13944:	03013903          	ld	s2,48(sp)
   13948:	02813983          	ld	s3,40(sp)
   1394c:	02013a03          	ld	s4,32(sp)
   13950:	01813a83          	ld	s5,24(sp)
   13954:	00813b83          	ld	s7,8(sp)
   13958:	000b0513          	mv	a0,s6
   1395c:	01013b03          	ld	s6,16(sp)
   13960:	05010113          	addi	sp,sp,80
   13964:	00008067          	ret

0000000000013968 <_fwalk_reent>:
   13968:	fb010113          	addi	sp,sp,-80
   1396c:	03213823          	sd	s2,48(sp)
   13970:	03313423          	sd	s3,40(sp)
   13974:	03413023          	sd	s4,32(sp)
   13978:	01513c23          	sd	s5,24(sp)
   1397c:	01613823          	sd	s6,16(sp)
   13980:	01713423          	sd	s7,8(sp)
   13984:	01813023          	sd	s8,0(sp)
   13988:	04113423          	sd	ra,72(sp)
   1398c:	04813023          	sd	s0,64(sp)
   13990:	02913c23          	sd	s1,56(sp)
   13994:	00050c13          	mv	s8,a0
   13998:	00058a13          	mv	s4,a1
   1399c:	52050913          	addi	s2,a0,1312
   139a0:	00000b13          	li	s6,0
   139a4:	0b000a93          	li	s5,176
   139a8:	00100b93          	li	s7,1
   139ac:	fff00993          	li	s3,-1
   139b0:	00892783          	lw	a5,8(s2)
   139b4:	01093403          	ld	s0,16(s2)
   139b8:	04f05463          	blez	a5,13a00 <_fwalk_reent+0x98>
   139bc:	fff7849b          	addiw	s1,a5,-1
   139c0:	02049493          	slli	s1,s1,0x20
   139c4:	0204d493          	srli	s1,s1,0x20
   139c8:	00148493          	addi	s1,s1,1
   139cc:	035484b3          	mul	s1,s1,s5
   139d0:	009404b3          	add	s1,s0,s1
   139d4:	01045783          	lhu	a5,16(s0)
   139d8:	02fbf063          	bgeu	s7,a5,139f8 <_fwalk_reent+0x90>
   139dc:	01241783          	lh	a5,18(s0)
   139e0:	00040593          	mv	a1,s0
   139e4:	000c0513          	mv	a0,s8
   139e8:	01378863          	beq	a5,s3,139f8 <_fwalk_reent+0x90>
   139ec:	000a00e7          	jalr	s4
   139f0:	01656b33          	or	s6,a0,s6
   139f4:	000b0b1b          	sext.w	s6,s6
   139f8:	0b040413          	addi	s0,s0,176
   139fc:	fc849ce3          	bne	s1,s0,139d4 <_fwalk_reent+0x6c>
   13a00:	00093903          	ld	s2,0(s2)
   13a04:	fa0916e3          	bnez	s2,139b0 <_fwalk_reent+0x48>
   13a08:	04813083          	ld	ra,72(sp)
   13a0c:	04013403          	ld	s0,64(sp)
   13a10:	03813483          	ld	s1,56(sp)
   13a14:	03013903          	ld	s2,48(sp)
   13a18:	02813983          	ld	s3,40(sp)
   13a1c:	02013a03          	ld	s4,32(sp)
   13a20:	01813a83          	ld	s5,24(sp)
   13a24:	00813b83          	ld	s7,8(sp)
   13a28:	00013c03          	ld	s8,0(sp)
   13a2c:	000b0513          	mv	a0,s6
   13a30:	01013b03          	ld	s6,16(sp)
   13a34:	05010113          	addi	sp,sp,80
   13a38:	00008067          	ret

0000000000013a3c <eshdn1>:
   13a3c:	00450693          	addi	a3,a0,4
   13a40:	00000793          	li	a5,0
   13a44:	01a50513          	addi	a0,a0,26
   13a48:	ffff8837          	lui	a6,0xffff8
   13a4c:	01c0006f          	j	13a68 <eshdn1+0x2c>
   13a50:	0017979b          	slliw	a5,a5,0x1
   13a54:	00e69023          	sh	a4,0(a3)
   13a58:	03079793          	slli	a5,a5,0x30
   13a5c:	00268693          	addi	a3,a3,2
   13a60:	0307d793          	srli	a5,a5,0x30
   13a64:	02d50e63          	beq	a0,a3,13aa0 <eshdn1+0x64>
   13a68:	0006d703          	lhu	a4,0(a3)
   13a6c:	00177613          	andi	a2,a4,1
   13a70:	00060463          	beqz	a2,13a78 <eshdn1+0x3c>
   13a74:	0017e793          	ori	a5,a5,1
   13a78:	00175713          	srli	a4,a4,0x1
   13a7c:	0027f613          	andi	a2,a5,2
   13a80:	010765b3          	or	a1,a4,a6
   13a84:	fc0606e3          	beqz	a2,13a50 <eshdn1+0x14>
   13a88:	0017979b          	slliw	a5,a5,0x1
   13a8c:	00b69023          	sh	a1,0(a3)
   13a90:	03079793          	slli	a5,a5,0x30
   13a94:	00268693          	addi	a3,a3,2
   13a98:	0307d793          	srli	a5,a5,0x30
   13a9c:	fcd516e3          	bne	a0,a3,13a68 <eshdn1+0x2c>
   13aa0:	00008067          	ret

0000000000013aa4 <eshup1>:
   13aa4:	01850693          	addi	a3,a0,24
   13aa8:	00000713          	li	a4,0
   13aac:	00250513          	addi	a0,a0,2
   13ab0:	01c0006f          	j	13acc <eshup1+0x28>
   13ab4:	0017171b          	slliw	a4,a4,0x1
   13ab8:	00f69023          	sh	a5,0(a3)
   13abc:	03071713          	slli	a4,a4,0x30
   13ac0:	ffe68693          	addi	a3,a3,-2
   13ac4:	03075713          	srli	a4,a4,0x30
   13ac8:	04d50263          	beq	a0,a3,13b0c <eshup1+0x68>
   13acc:	0006d783          	lhu	a5,0(a3)
   13ad0:	00f7d613          	srli	a2,a5,0xf
   13ad4:	0017979b          	slliw	a5,a5,0x1
   13ad8:	00060463          	beqz	a2,13ae0 <eshup1+0x3c>
   13adc:	00176713          	ori	a4,a4,1
   13ae0:	03079793          	slli	a5,a5,0x30
   13ae4:	0307d793          	srli	a5,a5,0x30
   13ae8:	00277613          	andi	a2,a4,2
   13aec:	0017e593          	ori	a1,a5,1
   13af0:	fc0602e3          	beqz	a2,13ab4 <eshup1+0x10>
   13af4:	0017171b          	slliw	a4,a4,0x1
   13af8:	00b69023          	sh	a1,0(a3)
   13afc:	03071713          	slli	a4,a4,0x30
   13b00:	ffe68693          	addi	a3,a3,-2
   13b04:	03075713          	srli	a4,a4,0x30
   13b08:	fcd512e3          	bne	a0,a3,13acc <eshup1+0x28>
   13b0c:	00008067          	ret

0000000000013b10 <m16m>:
   13b10:	fe010113          	addi	sp,sp,-32
   13b14:	00010e37          	lui	t3,0x10
   13b18:	00011b23          	sh	zero,22(sp)
   13b1c:	00011c23          	sh	zero,24(sp)
   13b20:	01858593          	addi	a1,a1,24
   13b24:	01810793          	addi	a5,sp,24
   13b28:	00410813          	addi	a6,sp,4
   13b2c:	fffe0e13          	addi	t3,t3,-1 # ffff <register_fini-0xb1>
   13b30:	0005d703          	lhu	a4,0(a1)
   13b34:	ffe78793          	addi	a5,a5,-2
   13b38:	ffe58593          	addi	a1,a1,-2
   13b3c:	02071863          	bnez	a4,13b6c <m16m+0x5c>
   13b40:	fe079f23          	sh	zero,-2(a5)
   13b44:	ff0796e3          	bne	a5,a6,13b30 <m16m+0x20>
   13b48:	00460613          	addi	a2,a2,4
   13b4c:	01a10693          	addi	a3,sp,26
   13b50:	0007d703          	lhu	a4,0(a5)
   13b54:	00278793          	addi	a5,a5,2
   13b58:	00260613          	addi	a2,a2,2
   13b5c:	fee61f23          	sh	a4,-2(a2)
   13b60:	fed798e3          	bne	a5,a3,13b50 <m16m+0x40>
   13b64:	02010113          	addi	sp,sp,32
   13b68:	00008067          	ret
   13b6c:	02a70733          	mul	a4,a4,a0
   13b70:	0027d883          	lhu	a7,2(a5)
   13b74:	0007d303          	lhu	t1,0(a5)
   13b78:	01c776b3          	and	a3,a4,t3
   13b7c:	011686b3          	add	a3,a3,a7
   13b80:	01075713          	srli	a4,a4,0x10
   13b84:	0106d893          	srli	a7,a3,0x10
   13b88:	00670733          	add	a4,a4,t1
   13b8c:	01170733          	add	a4,a4,a7
   13b90:	01075893          	srli	a7,a4,0x10
   13b94:	00d79123          	sh	a3,2(a5)
   13b98:	00e79023          	sh	a4,0(a5)
   13b9c:	ff179f23          	sh	a7,-2(a5)
   13ba0:	f90798e3          	bne	a5,a6,13b30 <m16m+0x20>
   13ba4:	fa5ff06f          	j	13b48 <m16m+0x38>

0000000000013ba8 <emovo.constprop.0>:
   13ba8:	00055703          	lhu	a4,0(a0)
   13bac:	00255783          	lhu	a5,2(a0)
   13bb0:	00070663          	beqz	a4,13bbc <emovo.constprop.0+0x14>
   13bb4:	00008737          	lui	a4,0x8
   13bb8:	00e7e7b3          	or	a5,a5,a4
   13bbc:	00f59923          	sh	a5,18(a1)
   13bc0:	00255703          	lhu	a4,2(a0)
   13bc4:	000087b7          	lui	a5,0x8
   13bc8:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   13bcc:	02f70463          	beq	a4,a5,13bf4 <emovo.constprop.0+0x4c>
   13bd0:	00650793          	addi	a5,a0,6
   13bd4:	01058593          	addi	a1,a1,16
   13bd8:	01850513          	addi	a0,a0,24
   13bdc:	0007d703          	lhu	a4,0(a5)
   13be0:	00278793          	addi	a5,a5,2
   13be4:	ffe58593          	addi	a1,a1,-2
   13be8:	00e59123          	sh	a4,2(a1)
   13bec:	fea798e3          	bne	a5,a0,13bdc <emovo.constprop.0+0x34>
   13bf0:	00008067          	ret
   13bf4:	00650793          	addi	a5,a0,6
   13bf8:	01a50513          	addi	a0,a0,26
   13bfc:	0007d703          	lhu	a4,0(a5)
   13c00:	00278793          	addi	a5,a5,2
   13c04:	02071a63          	bnez	a4,13c38 <emovo.constprop.0+0x90>
   13c08:	fea79ae3          	bne	a5,a0,13bfc <emovo.constprop.0+0x54>
   13c0c:	01258713          	addi	a4,a1,18
   13c10:	00058793          	mv	a5,a1
   13c14:	00278793          	addi	a5,a5,2
   13c18:	fe079f23          	sh	zero,-2(a5)
   13c1c:	fef71ce3          	bne	a4,a5,13c14 <emovo.constprop.0+0x6c>
   13c20:	0125d783          	lhu	a5,18(a1)
   13c24:	00008737          	lui	a4,0x8
   13c28:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   13c2c:	00e7e7b3          	or	a5,a5,a4
   13c30:	00f59923          	sh	a5,18(a1)
   13c34:	00008067          	ret
   13c38:	01058713          	addi	a4,a1,16
   13c3c:	00058793          	mv	a5,a1
   13c40:	00278793          	addi	a5,a5,2
   13c44:	fe079f23          	sh	zero,-2(a5)
   13c48:	fef71ce3          	bne	a4,a5,13c40 <emovo.constprop.0+0x98>
   13c4c:	ffffc7b7          	lui	a5,0xffffc
   13c50:	00f59823          	sh	a5,16(a1)
   13c54:	ffff87b7          	lui	a5,0xffff8
   13c58:	fff7c793          	not	a5,a5
   13c5c:	00f59923          	sh	a5,18(a1)
   13c60:	00008067          	ret

0000000000013c64 <enormlz>:
   13c64:	00455783          	lhu	a5,4(a0)
   13c68:	fe010113          	addi	sp,sp,-32
   13c6c:	00913423          	sd	s1,8(sp)
   13c70:	00113c23          	sd	ra,24(sp)
   13c74:	00813823          	sd	s0,16(sp)
   13c78:	01213023          	sd	s2,0(sp)
   13c7c:	00050493          	mv	s1,a0
   13c80:	0c079863          	bnez	a5,13d50 <enormlz+0xec>
   13c84:	00655703          	lhu	a4,6(a0)
   13c88:	00000413          	li	s0,0
   13c8c:	00f75793          	srli	a5,a4,0xf
   13c90:	0a079263          	bnez	a5,13d34 <enormlz+0xd0>
   13c94:	01a50693          	addi	a3,a0,26
   13c98:	0a000613          	li	a2,160
   13c9c:	02071863          	bnez	a4,13ccc <enormlz+0x68>
   13ca0:	00648793          	addi	a5,s1,6
   13ca4:	0080006f          	j	13cac <enormlz+0x48>
   13ca8:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd3d60>
   13cac:	00278793          	addi	a5,a5,2
   13cb0:	fee79e23          	sh	a4,-4(a5)
   13cb4:	fed79ae3          	bne	a5,a3,13ca8 <enormlz+0x44>
   13cb8:	00049c23          	sh	zero,24(s1)
   13cbc:	0104041b          	addiw	s0,s0,16
   13cc0:	06c40a63          	beq	s0,a2,13d34 <enormlz+0xd0>
   13cc4:	0064d703          	lhu	a4,6(s1)
   13cc8:	fc070ce3          	beqz	a4,13ca0 <enormlz+0x3c>
   13ccc:	f0077793          	andi	a5,a4,-256
   13cd0:	04079063          	bnez	a5,13d10 <enormlz+0xac>
   13cd4:	01848513          	addi	a0,s1,24
   13cd8:	00248593          	addi	a1,s1,2
   13cdc:	00000793          	li	a5,0
   13ce0:	00050713          	mv	a4,a0
   13ce4:	00075683          	lhu	a3,0(a4)
   13ce8:	ffe70713          	addi	a4,a4,-2
   13cec:	0086961b          	slliw	a2,a3,0x8
   13cf0:	00c7e7b3          	or	a5,a5,a2
   13cf4:	00f71123          	sh	a5,2(a4)
   13cf8:	0086d793          	srli	a5,a3,0x8
   13cfc:	fee594e3          	bne	a1,a4,13ce4 <enormlz+0x80>
   13d00:	0064d703          	lhu	a4,6(s1)
   13d04:	0084041b          	addiw	s0,s0,8
   13d08:	f0077793          	andi	a5,a4,-256
   13d0c:	fc0788e3          	beqz	a5,13cdc <enormlz+0x78>
   13d10:	0a000913          	li	s2,160
   13d14:	0140006f          	j	13d28 <enormlz+0xc4>
   13d18:	0014041b          	addiw	s0,s0,1
   13d1c:	d89ff0ef          	jal	ra,13aa4 <eshup1>
   13d20:	00894a63          	blt	s2,s0,13d34 <enormlz+0xd0>
   13d24:	0064d703          	lhu	a4,6(s1)
   13d28:	00f75713          	srli	a4,a4,0xf
   13d2c:	00048513          	mv	a0,s1
   13d30:	fe0704e3          	beqz	a4,13d18 <enormlz+0xb4>
   13d34:	01813083          	ld	ra,24(sp)
   13d38:	00040513          	mv	a0,s0
   13d3c:	01013403          	ld	s0,16(sp)
   13d40:	00813483          	ld	s1,8(sp)
   13d44:	00013903          	ld	s2,0(sp)
   13d48:	02010113          	addi	sp,sp,32
   13d4c:	00008067          	ret
   13d50:	f007f713          	andi	a4,a5,-256
   13d54:	00000413          	li	s0,0
   13d58:	04071063          	bnez	a4,13d98 <enormlz+0x134>
   13d5c:	f6f00913          	li	s2,-145
   13d60:	0140006f          	j	13d74 <enormlz+0x110>
   13d64:	fff4041b          	addiw	s0,s0,-1
   13d68:	cd5ff0ef          	jal	ra,13a3c <eshdn1>
   13d6c:	fd2404e3          	beq	s0,s2,13d34 <enormlz+0xd0>
   13d70:	0044d783          	lhu	a5,4(s1)
   13d74:	00048513          	mv	a0,s1
   13d78:	fe0796e3          	bnez	a5,13d64 <enormlz+0x100>
   13d7c:	01813083          	ld	ra,24(sp)
   13d80:	00040513          	mv	a0,s0
   13d84:	01013403          	ld	s0,16(sp)
   13d88:	00813483          	ld	s1,8(sp)
   13d8c:	00013903          	ld	s2,0(sp)
   13d90:	02010113          	addi	sp,sp,32
   13d94:	00008067          	ret
   13d98:	00450693          	addi	a3,a0,4
   13d9c:	01a50593          	addi	a1,a0,26
   13da0:	00000713          	li	a4,0
   13da4:	0080006f          	j	13dac <enormlz+0x148>
   13da8:	0006d783          	lhu	a5,0(a3)
   13dac:	0087d61b          	srliw	a2,a5,0x8
   13db0:	00c76733          	or	a4,a4,a2
   13db4:	0087979b          	slliw	a5,a5,0x8
   13db8:	00e69023          	sh	a4,0(a3)
   13dbc:	03079713          	slli	a4,a5,0x30
   13dc0:	00268693          	addi	a3,a3,2
   13dc4:	03075713          	srli	a4,a4,0x30
   13dc8:	fed590e3          	bne	a1,a3,13da8 <enormlz+0x144>
   13dcc:	0044d783          	lhu	a5,4(s1)
   13dd0:	ff800413          	li	s0,-8
   13dd4:	f89ff06f          	j	13d5c <enormlz+0xf8>

0000000000013dd8 <eshift.part.0>:
   13dd8:	fd010113          	addi	sp,sp,-48
   13ddc:	02813023          	sd	s0,32(sp)
   13de0:	00913c23          	sd	s1,24(sp)
   13de4:	02113423          	sd	ra,40(sp)
   13de8:	01213823          	sd	s2,16(sp)
   13dec:	01313423          	sd	s3,8(sp)
   13df0:	00058493          	mv	s1,a1
   13df4:	00050413          	mv	s0,a0
   13df8:	0a05c463          	bltz	a1,13ea0 <eshift.part.0+0xc8>
   13dfc:	00f00793          	li	a5,15
   13e00:	00058613          	mv	a2,a1
   13e04:	00450513          	addi	a0,a0,4
   13e08:	01840693          	addi	a3,s0,24
   13e0c:	00f00593          	li	a1,15
   13e10:	0297d463          	bge	a5,s1,13e38 <eshift.part.0+0x60>
   13e14:	00050793          	mv	a5,a0
   13e18:	0027d703          	lhu	a4,2(a5)
   13e1c:	00278793          	addi	a5,a5,2
   13e20:	fee79f23          	sh	a4,-2(a5)
   13e24:	fef69ae3          	bne	a3,a5,13e18 <eshift.part.0+0x40>
   13e28:	00041c23          	sh	zero,24(s0)
   13e2c:	ff06061b          	addiw	a2,a2,-16
   13e30:	fec5c2e3          	blt	a1,a2,13e14 <eshift.part.0+0x3c>
   13e34:	00f4f493          	andi	s1,s1,15
   13e38:	00700793          	li	a5,7
   13e3c:	0297d863          	bge	a5,s1,13e6c <eshift.part.0+0x94>
   13e40:	01840713          	addi	a4,s0,24
   13e44:	00240593          	addi	a1,s0,2
   13e48:	00000793          	li	a5,0
   13e4c:	00075683          	lhu	a3,0(a4)
   13e50:	ffe70713          	addi	a4,a4,-2
   13e54:	0086961b          	slliw	a2,a3,0x8
   13e58:	00c7e7b3          	or	a5,a5,a2
   13e5c:	00f71123          	sh	a5,2(a4)
   13e60:	0086d793          	srli	a5,a3,0x8
   13e64:	fee594e3          	bne	a1,a4,13e4c <eshift.part.0+0x74>
   13e68:	ff84849b          	addiw	s1,s1,-8
   13e6c:	00048a63          	beqz	s1,13e80 <eshift.part.0+0xa8>
   13e70:	fff4849b          	addiw	s1,s1,-1
   13e74:	00040513          	mv	a0,s0
   13e78:	c2dff0ef          	jal	ra,13aa4 <eshup1>
   13e7c:	fe049ae3          	bnez	s1,13e70 <eshift.part.0+0x98>
   13e80:	00000513          	li	a0,0
   13e84:	02813083          	ld	ra,40(sp)
   13e88:	02013403          	ld	s0,32(sp)
   13e8c:	01813483          	ld	s1,24(sp)
   13e90:	01013903          	ld	s2,16(sp)
   13e94:	00813983          	ld	s3,8(sp)
   13e98:	03010113          	addi	sp,sp,48
   13e9c:	00008067          	ret
   13ea0:	ff100793          	li	a5,-15
   13ea4:	40b0093b          	negw	s2,a1
   13ea8:	12f5de63          	bge	a1,a5,13fe4 <eshift.part.0+0x20c>
   13eac:	01850593          	addi	a1,a0,24
   13eb0:	00000993          	li	s3,0
   13eb4:	00450693          	addi	a3,a0,4
   13eb8:	00f00613          	li	a2,15
   13ebc:	01845703          	lhu	a4,24(s0)
   13ec0:	00058793          	mv	a5,a1
   13ec4:	00e9e9b3          	or	s3,s3,a4
   13ec8:	ffe7d703          	lhu	a4,-2(a5)
   13ecc:	ffe78793          	addi	a5,a5,-2
   13ed0:	00e79123          	sh	a4,2(a5)
   13ed4:	fed79ae3          	bne	a5,a3,13ec8 <eshift.part.0+0xf0>
   13ed8:	00041223          	sh	zero,4(s0)
   13edc:	ff09091b          	addiw	s2,s2,-16
   13ee0:	fd264ee3          	blt	a2,s2,13ebc <eshift.part.0+0xe4>
   13ee4:	ff000913          	li	s2,-16
   13ee8:	ff100713          	li	a4,-15
   13eec:	4099093b          	subw	s2,s2,s1
   13ef0:	00000793          	li	a5,0
   13ef4:	0ae4c663          	blt	s1,a4,13fa0 <eshift.part.0+0x1c8>
   13ef8:	00f9093b          	addw	s2,s2,a5
   13efc:	00700793          	li	a5,7
   13f00:	0527ca63          	blt	a5,s2,13f54 <eshift.part.0+0x17c>
   13f04:	0c090263          	beqz	s2,13fc8 <eshift.part.0+0x1f0>
   13f08:	01845783          	lhu	a5,24(s0)
   13f0c:	fff9091b          	addiw	s2,s2,-1
   13f10:	00040513          	mv	a0,s0
   13f14:	0017f793          	andi	a5,a5,1
   13f18:	0137e9b3          	or	s3,a5,s3
   13f1c:	b21ff0ef          	jal	ra,13a3c <eshdn1>
   13f20:	fe0914e3          	bnez	s2,13f08 <eshift.part.0+0x130>
   13f24:	0109979b          	slliw	a5,s3,0x10
   13f28:	4107d79b          	sraiw	a5,a5,0x10
   13f2c:	08079663          	bnez	a5,13fb8 <eshift.part.0+0x1e0>
   13f30:	03099513          	slli	a0,s3,0x30
   13f34:	03055513          	srli	a0,a0,0x30
   13f38:	02813083          	ld	ra,40(sp)
   13f3c:	02013403          	ld	s0,32(sp)
   13f40:	01813483          	ld	s1,24(sp)
   13f44:	01013903          	ld	s2,16(sp)
   13f48:	00813983          	ld	s3,8(sp)
   13f4c:	03010113          	addi	sp,sp,48
   13f50:	00008067          	ret
   13f54:	0109999b          	slliw	s3,s3,0x10
   13f58:	4109d99b          	sraiw	s3,s3,0x10
   13f5c:	01844783          	lbu	a5,24(s0)
   13f60:	01a40593          	addi	a1,s0,26
   13f64:	00f9e9b3          	or	s3,s3,a5
   13f68:	03099993          	slli	s3,s3,0x30
   13f6c:	0309d993          	srli	s3,s3,0x30
   13f70:	00000793          	li	a5,0
   13f74:	0006d703          	lhu	a4,0(a3)
   13f78:	00268693          	addi	a3,a3,2
   13f7c:	0087561b          	srliw	a2,a4,0x8
   13f80:	00c7e7b3          	or	a5,a5,a2
   13f84:	0087171b          	slliw	a4,a4,0x8
   13f88:	fef69f23          	sh	a5,-2(a3)
   13f8c:	03071793          	slli	a5,a4,0x30
   13f90:	0307d793          	srli	a5,a5,0x30
   13f94:	fed590e3          	bne	a1,a3,13f74 <eshift.part.0+0x19c>
   13f98:	ff89091b          	addiw	s2,s2,-8
   13f9c:	f69ff06f          	j	13f04 <eshift.part.0+0x12c>
   13fa0:	ff097793          	andi	a5,s2,-16
   13fa4:	40f007bb          	negw	a5,a5
   13fa8:	00f9093b          	addw	s2,s2,a5
   13fac:	00700793          	li	a5,7
   13fb0:	f527dae3          	bge	a5,s2,13f04 <eshift.part.0+0x12c>
   13fb4:	fa1ff06f          	j	13f54 <eshift.part.0+0x17c>
   13fb8:	00100993          	li	s3,1
   13fbc:	03099513          	slli	a0,s3,0x30
   13fc0:	03055513          	srli	a0,a0,0x30
   13fc4:	f75ff06f          	j	13f38 <eshift.part.0+0x160>
   13fc8:	00098513          	mv	a0,s3
   13fcc:	00099863          	bnez	s3,13fdc <eshift.part.0+0x204>
   13fd0:	03051513          	slli	a0,a0,0x30
   13fd4:	03055513          	srli	a0,a0,0x30
   13fd8:	eadff06f          	j	13e84 <eshift.part.0+0xac>
   13fdc:	00100513          	li	a0,1
   13fe0:	ff1ff06f          	j	13fd0 <eshift.part.0+0x1f8>
   13fe4:	ff900793          	li	a5,-7
   13fe8:	00000993          	li	s3,0
   13fec:	00450693          	addi	a3,a0,4
   13ff0:	f6f5c6e3          	blt	a1,a5,13f5c <eshift.part.0+0x184>
   13ff4:	f15ff06f          	j	13f08 <eshift.part.0+0x130>

0000000000013ff8 <emovi>:
   13ff8:	01255783          	lhu	a5,18(a0)
   13ffc:	00008637          	lui	a2,0x8
   14000:	fff60613          	addi	a2,a2,-1 # 7fff <register_fini-0x80b1>
   14004:	00f7d79b          	srliw	a5,a5,0xf
   14008:	40f007bb          	negw	a5,a5
   1400c:	00f59023          	sh	a5,0(a1)
   14010:	01255683          	lhu	a3,18(a0)
   14014:	01050793          	addi	a5,a0,16
   14018:	00458713          	addi	a4,a1,4
   1401c:	00d676b3          	and	a3,a2,a3
   14020:	00d59123          	sh	a3,2(a1)
   14024:	0006881b          	sext.w	a6,a3
   14028:	02c68663          	beq	a3,a2,14054 <emovi+0x5c>
   1402c:	00658713          	addi	a4,a1,6
   14030:	00059223          	sh	zero,4(a1)
   14034:	ffe50513          	addi	a0,a0,-2
   14038:	0007d683          	lhu	a3,0(a5)
   1403c:	ffe78793          	addi	a5,a5,-2
   14040:	00270713          	addi	a4,a4,2
   14044:	fed71f23          	sh	a3,-2(a4)
   14048:	fef518e3          	bne	a0,a5,14038 <emovi+0x40>
   1404c:	00059c23          	sh	zero,24(a1)
   14050:	00008067          	ret
   14054:	01255683          	lhu	a3,18(a0)
   14058:	00d876b3          	and	a3,a6,a3
   1405c:	01069e63          	bne	a3,a6,14078 <emovi+0x80>
   14060:	01250813          	addi	a6,a0,18
   14064:	00050693          	mv	a3,a0
   14068:	0006d603          	lhu	a2,0(a3)
   1406c:	00268693          	addi	a3,a3,2
   14070:	00061e63          	bnez	a2,1408c <emovi+0x94>
   14074:	ff069ae3          	bne	a3,a6,14068 <emovi+0x70>
   14078:	01a58593          	addi	a1,a1,26
   1407c:	00270713          	addi	a4,a4,2
   14080:	fe071f23          	sh	zero,-2(a4)
   14084:	fee59ce3          	bne	a1,a4,1407c <emovi+0x84>
   14088:	00008067          	ret
   1408c:	00658713          	addi	a4,a1,6
   14090:	00059223          	sh	zero,4(a1)
   14094:	ffc50513          	addi	a0,a0,-4
   14098:	0007d683          	lhu	a3,0(a5)
   1409c:	ffe78793          	addi	a5,a5,-2
   140a0:	00270713          	addi	a4,a4,2
   140a4:	fed71f23          	sh	a3,-2(a4)
   140a8:	fea798e3          	bne	a5,a0,14098 <emovi+0xa0>
   140ac:	00008067          	ret

00000000000140b0 <ecmp>:
   140b0:	01255783          	lhu	a5,18(a0)
   140b4:	fb010113          	addi	sp,sp,-80
   140b8:	04813023          	sd	s0,64(sp)
   140bc:	fff7c793          	not	a5,a5
   140c0:	04113423          	sd	ra,72(sp)
   140c4:	03179713          	slli	a4,a5,0x31
   140c8:	00058413          	mv	s0,a1
   140cc:	00071e63          	bnez	a4,140e8 <ecmp+0x38>
   140d0:	01250693          	addi	a3,a0,18
   140d4:	00050793          	mv	a5,a0
   140d8:	0007d703          	lhu	a4,0(a5)
   140dc:	00278793          	addi	a5,a5,2
   140e0:	08071c63          	bnez	a4,14178 <ecmp+0xc8>
   140e4:	fed79ae3          	bne	a5,a3,140d8 <ecmp+0x28>
   140e8:	01245783          	lhu	a5,18(s0)
   140ec:	fff7c793          	not	a5,a5
   140f0:	03179713          	slli	a4,a5,0x31
   140f4:	06070063          	beqz	a4,14154 <ecmp+0xa4>
   140f8:	00010593          	mv	a1,sp
   140fc:	efdff0ef          	jal	ra,13ff8 <emovi>
   14100:	02010593          	addi	a1,sp,32
   14104:	00040513          	mv	a0,s0
   14108:	ef1ff0ef          	jal	ra,13ff8 <emovi>
   1410c:	00015583          	lhu	a1,0(sp)
   14110:	02015783          	lhu	a5,32(sp)
   14114:	06b78c63          	beq	a5,a1,1418c <ecmp+0xdc>
   14118:	00210793          	addi	a5,sp,2
   1411c:	02210713          	addi	a4,sp,34
   14120:	01810613          	addi	a2,sp,24
   14124:	0007d683          	lhu	a3,0(a5)
   14128:	00278793          	addi	a5,a5,2
   1412c:	0a069663          	bnez	a3,141d8 <ecmp+0x128>
   14130:	00075683          	lhu	a3,0(a4)
   14134:	00270713          	addi	a4,a4,2
   14138:	0a069063          	bnez	a3,141d8 <ecmp+0x128>
   1413c:	fef614e3          	bne	a2,a5,14124 <ecmp+0x74>
   14140:	00000513          	li	a0,0
   14144:	04813083          	ld	ra,72(sp)
   14148:	04013403          	ld	s0,64(sp)
   1414c:	05010113          	addi	sp,sp,80
   14150:	00008067          	ret
   14154:	00040793          	mv	a5,s0
   14158:	0007d703          	lhu	a4,0(a5)
   1415c:	01240693          	addi	a3,s0,18
   14160:	00278793          	addi	a5,a5,2
   14164:	00071a63          	bnez	a4,14178 <ecmp+0xc8>
   14168:	f8d788e3          	beq	a5,a3,140f8 <ecmp+0x48>
   1416c:	0007d703          	lhu	a4,0(a5)
   14170:	00278793          	addi	a5,a5,2
   14174:	fe070ae3          	beqz	a4,14168 <ecmp+0xb8>
   14178:	04813083          	ld	ra,72(sp)
   1417c:	04013403          	ld	s0,64(sp)
   14180:	ffe00513          	li	a0,-2
   14184:	05010113          	addi	sp,sp,80
   14188:	00008067          	ret
   1418c:	00100513          	li	a0,1
   14190:	04059c63          	bnez	a1,141e8 <ecmp+0x138>
   14194:	00215603          	lhu	a2,2(sp)
   14198:	02215683          	lhu	a3,34(sp)
   1419c:	00210713          	addi	a4,sp,2
   141a0:	02210793          	addi	a5,sp,34
   141a4:	03810593          	addi	a1,sp,56
   141a8:	00278793          	addi	a5,a5,2
   141ac:	00270713          	addi	a4,a4,2
   141b0:	00d61e63          	bne	a2,a3,141cc <ecmp+0x11c>
   141b4:	f8b786e3          	beq	a5,a1,14140 <ecmp+0x90>
   141b8:	00075603          	lhu	a2,0(a4)
   141bc:	0007d683          	lhu	a3,0(a5)
   141c0:	00270713          	addi	a4,a4,2
   141c4:	00278793          	addi	a5,a5,2
   141c8:	fed606e3          	beq	a2,a3,141b4 <ecmp+0x104>
   141cc:	f6c6ece3          	bltu	a3,a2,14144 <ecmp+0x94>
   141d0:	40a0053b          	negw	a0,a0
   141d4:	f71ff06f          	j	14144 <ecmp+0x94>
   141d8:	00100513          	li	a0,1
   141dc:	f60584e3          	beqz	a1,14144 <ecmp+0x94>
   141e0:	fff00513          	li	a0,-1
   141e4:	f61ff06f          	j	14144 <ecmp+0x94>
   141e8:	fff00513          	li	a0,-1
   141ec:	fa9ff06f          	j	14194 <ecmp+0xe4>

00000000000141f0 <emdnorm>:
   141f0:	fc010113          	addi	sp,sp,-64
   141f4:	02813823          	sd	s0,48(sp)
   141f8:	02913423          	sd	s1,40(sp)
   141fc:	03213023          	sd	s2,32(sp)
   14200:	01313c23          	sd	s3,24(sp)
   14204:	01413823          	sd	s4,16(sp)
   14208:	01513423          	sd	s5,8(sp)
   1420c:	00068913          	mv	s2,a3
   14210:	00078493          	mv	s1,a5
   14214:	02113c23          	sd	ra,56(sp)
   14218:	00050413          	mv	s0,a0
   1421c:	00058993          	mv	s3,a1
   14220:	00060a13          	mv	s4,a2
   14224:	00070a93          	mv	s5,a4
   14228:	a3dff0ef          	jal	ra,13c64 <enormlz>
   1422c:	09000793          	li	a5,144
   14230:	40a90933          	sub	s2,s2,a0
   14234:	1aa7da63          	bge	a5,a0,143e8 <emdnorm+0x1f8>
   14238:	000087b7          	lui	a5,0x8
   1423c:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x80b2>
   14240:	2327d863          	bge	a5,s2,14470 <emdnorm+0x280>
   14244:	200a8263          	beqz	s5,14448 <emdnorm+0x258>
   14248:	0044a503          	lw	a0,4(s1)
   1424c:	0004a783          	lw	a5,0(s1)
   14250:	06a78a63          	beq	a5,a0,142c4 <emdnorm+0xd4>
   14254:	01a48713          	addi	a4,s1,26
   14258:	03448793          	addi	a5,s1,52
   1425c:	00270713          	addi	a4,a4,2
   14260:	fe071f23          	sh	zero,-2(a4)
   14264:	fef71ce3          	bne	a4,a5,1425c <emdnorm+0x6c>
   14268:	03800793          	li	a5,56
   1426c:	36f50e63          	beq	a0,a5,145e8 <emdnorm+0x3f8>
   14270:	18a7de63          	bge	a5,a0,1440c <emdnorm+0x21c>
   14274:	04000793          	li	a5,64
   14278:	30f50c63          	beq	a0,a5,14590 <emdnorm+0x3a0>
   1427c:	07100793          	li	a5,113
   14280:	32f51e63          	bne	a0,a5,145bc <emdnorm+0x3cc>
   14284:	400087b7          	lui	a5,0x40008
   14288:	fff78793          	addi	a5,a5,-1 # 40007fff <__BSS_END__+0x3ffe3d5f>
   1428c:	00a00713          	li	a4,10
   14290:	00f4aa23          	sw	a5,20(s1)
   14294:	ffff87b7          	lui	a5,0xffff8
   14298:	00e4a423          	sw	a4,8(s1)
   1429c:	00f49c23          	sh	a5,24(s1)
   142a0:	00e4a623          	sw	a4,12(s1)
   142a4:	00a00793          	li	a5,10
   142a8:	00008737          	lui	a4,0x8
   142ac:	00878793          	addi	a5,a5,8 # ffffffffffff8008 <__BSS_END__+0xfffffffffffd3d68>
   142b0:	00179793          	slli	a5,a5,0x1
   142b4:	00f487b3          	add	a5,s1,a5
   142b8:	00e79523          	sh	a4,10(a5)
   142bc:	00a4a023          	sw	a0,0(s1)
   142c0:	1f205663          	blez	s2,144ac <emdnorm+0x2bc>
   142c4:	0084a683          	lw	a3,8(s1)
   142c8:	0144d603          	lhu	a2,20(s1)
   142cc:	08f00713          	li	a4,143
   142d0:	00169793          	slli	a5,a3,0x1
   142d4:	00f40833          	add	a6,s0,a5
   142d8:	00085883          	lhu	a7,0(a6) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd3d60>
   142dc:	00c8f5b3          	and	a1,a7,a2
   142e0:	04a74863          	blt	a4,a0,14330 <emdnorm+0x140>
   142e4:	00b00713          	li	a4,11
   142e8:	04d74463          	blt	a4,a3,14330 <emdnorm+0x140>
   142ec:	40d7073b          	subw	a4,a4,a3
   142f0:	02071713          	slli	a4,a4,0x20
   142f4:	02075713          	srli	a4,a4,0x20
   142f8:	00d70733          	add	a4,a4,a3
   142fc:	00171693          	slli	a3,a4,0x1
   14300:	00278793          	addi	a5,a5,2
   14304:	00440713          	addi	a4,s0,4
   14308:	00f407b3          	add	a5,s0,a5
   1430c:	00e68733          	add	a4,a3,a4
   14310:	0007d683          	lhu	a3,0(a5)
   14314:	00068463          	beqz	a3,1431c <emdnorm+0x12c>
   14318:	0015e593          	ori	a1,a1,1
   1431c:	00079023          	sh	zero,0(a5)
   14320:	00278793          	addi	a5,a5,2
   14324:	fef716e3          	bne	a4,a5,14310 <emdnorm+0x120>
   14328:	00085883          	lhu	a7,0(a6)
   1432c:	0144d603          	lhu	a2,20(s1)
   14330:	fff64613          	not	a2,a2
   14334:	01167633          	and	a2,a2,a7
   14338:	00c81023          	sh	a2,0(a6)
   1433c:	0164d783          	lhu	a5,22(s1)
   14340:	00b7f733          	and	a4,a5,a1
   14344:	06070063          	beqz	a4,143a4 <emdnorm+0x1b4>
   14348:	02b79263          	bne	a5,a1,1436c <emdnorm+0x17c>
   1434c:	20099863          	bnez	s3,1455c <emdnorm+0x36c>
   14350:	00c4a783          	lw	a5,12(s1)
   14354:	0184d703          	lhu	a4,24(s1)
   14358:	00179793          	slli	a5,a5,0x1
   1435c:	00f407b3          	add	a5,s0,a5
   14360:	0007d783          	lhu	a5,0(a5)
   14364:	00e7f7b3          	and	a5,a5,a4
   14368:	02078e63          	beqz	a5,143a4 <emdnorm+0x1b4>
   1436c:	03248613          	addi	a2,s1,50
   14370:	01840693          	addi	a3,s0,24
   14374:	01c48493          	addi	s1,s1,28
   14378:	00000713          	li	a4,0
   1437c:	00065783          	lhu	a5,0(a2)
   14380:	0006d583          	lhu	a1,0(a3)
   14384:	ffe68693          	addi	a3,a3,-2
   14388:	ffe60613          	addi	a2,a2,-2
   1438c:	00b787b3          	add	a5,a5,a1
   14390:	00e787b3          	add	a5,a5,a4
   14394:	0107d713          	srli	a4,a5,0x10
   14398:	00f69123          	sh	a5,2(a3)
   1439c:	00177713          	andi	a4,a4,1
   143a0:	fc961ee3          	bne	a2,s1,1437c <emdnorm+0x18c>
   143a4:	17205663          	blez	s2,14510 <emdnorm+0x320>
   143a8:	00445783          	lhu	a5,4(s0)
   143ac:	12079e63          	bnez	a5,144e8 <emdnorm+0x2f8>
   143b0:	000087b7          	lui	a5,0x8
   143b4:	00041c23          	sh	zero,24(s0)
   143b8:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x80b2>
   143bc:	0927c863          	blt	a5,s2,1444c <emdnorm+0x25c>
   143c0:	01241123          	sh	s2,2(s0)
   143c4:	03813083          	ld	ra,56(sp)
   143c8:	03013403          	ld	s0,48(sp)
   143cc:	02813483          	ld	s1,40(sp)
   143d0:	02013903          	ld	s2,32(sp)
   143d4:	01813983          	ld	s3,24(sp)
   143d8:	01013a03          	ld	s4,16(sp)
   143dc:	00813a83          	ld	s5,8(sp)
   143e0:	04010113          	addi	sp,sp,64
   143e4:	00008067          	ret
   143e8:	0e095463          	bgez	s2,144d0 <emdnorm+0x2e0>
   143ec:	f7000793          	li	a5,-144
   143f0:	08f95c63          	bge	s2,a5,14488 <emdnorm+0x298>
   143f4:	00240793          	addi	a5,s0,2
   143f8:	01a40413          	addi	s0,s0,26
   143fc:	00278793          	addi	a5,a5,2
   14400:	fe079f23          	sh	zero,-2(a5)
   14404:	fe879ce3          	bne	a5,s0,143fc <emdnorm+0x20c>
   14408:	fbdff06f          	j	143c4 <emdnorm+0x1d4>
   1440c:	01800793          	li	a5,24
   14410:	14f50a63          	beq	a0,a5,14564 <emdnorm+0x374>
   14414:	03500793          	li	a5,53
   14418:	1af51263          	bne	a0,a5,145bc <emdnorm+0x3cc>
   1441c:	00001737          	lui	a4,0x1
   14420:	040007b7          	lui	a5,0x4000
   14424:	00600693          	li	a3,6
   14428:	7ff78793          	addi	a5,a5,2047 # 40007ff <__BSS_END__+0x3fdc55f>
   1442c:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf8b0>
   14430:	00f4aa23          	sw	a5,20(s1)
   14434:	00d4a423          	sw	a3,8(s1)
   14438:	00e49c23          	sh	a4,24(s1)
   1443c:	00d4a623          	sw	a3,12(s1)
   14440:	00600793          	li	a5,6
   14444:	e69ff06f          	j	142ac <emdnorm+0xbc>
   14448:	00041c23          	sh	zero,24(s0)
   1444c:	ffff87b7          	lui	a5,0xffff8
   14450:	fff7c793          	not	a5,a5
   14454:	00f41123          	sh	a5,2(s0)
   14458:	00440793          	addi	a5,s0,4
   1445c:	01840413          	addi	s0,s0,24
   14460:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd3d60>
   14464:	00278793          	addi	a5,a5,2
   14468:	fef41ce3          	bne	s0,a5,14460 <emdnorm+0x270>
   1446c:	f59ff06f          	j	143c4 <emdnorm+0x1d4>
   14470:	00240793          	addi	a5,s0,2
   14474:	01a40413          	addi	s0,s0,26
   14478:	00278793          	addi	a5,a5,2
   1447c:	fe079f23          	sh	zero,-2(a5)
   14480:	fe879ce3          	bne	a5,s0,14478 <emdnorm+0x288>
   14484:	f41ff06f          	j	143c4 <emdnorm+0x1d4>
   14488:	0009059b          	sext.w	a1,s2
   1448c:	00040513          	mv	a0,s0
   14490:	949ff0ef          	jal	ra,13dd8 <eshift.part.0>
   14494:	00050463          	beqz	a0,1449c <emdnorm+0x2ac>
   14498:	00100993          	li	s3,1
   1449c:	0a0a8a63          	beqz	s5,14550 <emdnorm+0x360>
   144a0:	0044a503          	lw	a0,4(s1)
   144a4:	0004a783          	lw	a5,0(s1)
   144a8:	daa796e3          	bne	a5,a0,14254 <emdnorm+0x64>
   144ac:	09000793          	li	a5,144
   144b0:	08f50263          	beq	a0,a5,14534 <emdnorm+0x344>
   144b4:	01845783          	lhu	a5,24(s0)
   144b8:	00040513          	mv	a0,s0
   144bc:	0017f793          	andi	a5,a5,1
   144c0:	0137e9b3          	or	s3,a5,s3
   144c4:	d78ff0ef          	jal	ra,13a3c <eshdn1>
   144c8:	0044a503          	lw	a0,4(s1)
   144cc:	df9ff06f          	j	142c4 <emdnorm+0xd4>
   144d0:	ee0a80e3          	beqz	s5,143b0 <emdnorm+0x1c0>
   144d4:	0044a503          	lw	a0,4(s1)
   144d8:	0004a783          	lw	a5,0(s1)
   144dc:	d6a79ce3          	bne	a5,a0,14254 <emdnorm+0x64>
   144e0:	df2042e3          	bgtz	s2,142c4 <emdnorm+0xd4>
   144e4:	fc9ff06f          	j	144ac <emdnorm+0x2bc>
   144e8:	00040513          	mv	a0,s0
   144ec:	d50ff0ef          	jal	ra,13a3c <eshdn1>
   144f0:	000087b7          	lui	a5,0x8
   144f4:	00190913          	addi	s2,s2,1
   144f8:	00041c23          	sh	zero,24(s0)
   144fc:	ffe78793          	addi	a5,a5,-2 # 7ffe <register_fini-0x80b2>
   14500:	f527c6e3          	blt	a5,s2,1444c <emdnorm+0x25c>
   14504:	ea095ee3          	bgez	s2,143c0 <emdnorm+0x1d0>
   14508:	00041123          	sh	zero,2(s0)
   1450c:	eb9ff06f          	j	143c4 <emdnorm+0x1d4>
   14510:	09000793          	li	a5,144
   14514:	00f50663          	beq	a0,a5,14520 <emdnorm+0x330>
   14518:	00040513          	mv	a0,s0
   1451c:	d88ff0ef          	jal	ra,13aa4 <eshup1>
   14520:	00445783          	lhu	a5,4(s0)
   14524:	fc0792e3          	bnez	a5,144e8 <emdnorm+0x2f8>
   14528:	00041c23          	sh	zero,24(s0)
   1452c:	fc094ee3          	bltz	s2,14508 <emdnorm+0x318>
   14530:	e91ff06f          	j	143c0 <emdnorm+0x1d0>
   14534:	0084a803          	lw	a6,8(s1)
   14538:	0144d603          	lhu	a2,20(s1)
   1453c:	00181813          	slli	a6,a6,0x1
   14540:	01040833          	add	a6,s0,a6
   14544:	00085883          	lhu	a7,0(a6)
   14548:	011675b3          	and	a1,a2,a7
   1454c:	de5ff06f          	j	14330 <emdnorm+0x140>
   14550:	00041c23          	sh	zero,24(s0)
   14554:	00041123          	sh	zero,2(s0)
   14558:	e6dff06f          	j	143c4 <emdnorm+0x1d4>
   1455c:	e00a08e3          	beqz	s4,1436c <emdnorm+0x17c>
   14560:	e45ff06f          	j	143a4 <emdnorm+0x1b4>
   14564:	008007b7          	lui	a5,0x800
   14568:	0ff78793          	addi	a5,a5,255 # 8000ff <__BSS_END__+0x7dbe5f>
   1456c:	00400713          	li	a4,4
   14570:	00f4aa23          	sw	a5,20(s1)
   14574:	10000793          	li	a5,256
   14578:	00e4a423          	sw	a4,8(s1)
   1457c:	00f49c23          	sh	a5,24(s1)
   14580:	00e4a623          	sw	a4,12(s1)
   14584:	00400793          	li	a5,4
   14588:	10000713          	li	a4,256
   1458c:	d21ff06f          	j	142ac <emdnorm+0xbc>
   14590:	00700793          	li	a5,7
   14594:	00f4a423          	sw	a5,8(s1)
   14598:	800107b7          	lui	a5,0x80010
   1459c:	fff78793          	addi	a5,a5,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffebd5f>
   145a0:	00f4aa23          	sw	a5,20(s1)
   145a4:	00100793          	li	a5,1
   145a8:	00f49c23          	sh	a5,24(s1)
   145ac:	00600793          	li	a5,6
   145b0:	00f4a623          	sw	a5,12(s1)
   145b4:	00100713          	li	a4,1
   145b8:	cf5ff06f          	j	142ac <emdnorm+0xbc>
   145bc:	00c00793          	li	a5,12
   145c0:	00f4a423          	sw	a5,8(s1)
   145c4:	800107b7          	lui	a5,0x80010
   145c8:	fff78793          	addi	a5,a5,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffebd5f>
   145cc:	00f4aa23          	sw	a5,20(s1)
   145d0:	00100793          	li	a5,1
   145d4:	00f49c23          	sh	a5,24(s1)
   145d8:	00b00793          	li	a5,11
   145dc:	00f4a623          	sw	a5,12(s1)
   145e0:	00100713          	li	a4,1
   145e4:	cc9ff06f          	j	142ac <emdnorm+0xbc>
   145e8:	008007b7          	lui	a5,0x800
   145ec:	0ff78793          	addi	a5,a5,255 # 8000ff <__BSS_END__+0x7dbe5f>
   145f0:	00600713          	li	a4,6
   145f4:	00f4aa23          	sw	a5,20(s1)
   145f8:	10000793          	li	a5,256
   145fc:	00e4a423          	sw	a4,8(s1)
   14600:	00f49c23          	sh	a5,24(s1)
   14604:	00e4a623          	sw	a4,12(s1)
   14608:	00600793          	li	a5,6
   1460c:	10000713          	li	a4,256
   14610:	c9dff06f          	j	142ac <emdnorm+0xbc>

0000000000014614 <eiremain>:
   14614:	fa010113          	addi	sp,sp,-96
   14618:	05213023          	sd	s2,64(sp)
   1461c:	03313c23          	sd	s3,56(sp)
   14620:	00058913          	mv	s2,a1
   14624:	00255983          	lhu	s3,2(a0)
   14628:	04113c23          	sd	ra,88(sp)
   1462c:	04813823          	sd	s0,80(sp)
   14630:	04913423          	sd	s1,72(sp)
   14634:	03413823          	sd	s4,48(sp)
   14638:	00060493          	mv	s1,a2
   1463c:	01713c23          	sd	s7,24(sp)
   14640:	03513423          	sd	s5,40(sp)
   14644:	03613023          	sd	s6,32(sp)
   14648:	01813823          	sd	s8,16(sp)
   1464c:	01913423          	sd	s9,8(sp)
   14650:	01a13023          	sd	s10,0(sp)
   14654:	00050b93          	mv	s7,a0
   14658:	e0cff0ef          	jal	ra,13c64 <enormlz>
   1465c:	00295403          	lhu	s0,2(s2)
   14660:	00050793          	mv	a5,a0
   14664:	00090513          	mv	a0,s2
   14668:	40f989b3          	sub	s3,s3,a5
   1466c:	03448a13          	addi	s4,s1,52
   14670:	df4ff0ef          	jal	ra,13c64 <enormlz>
   14674:	40a40433          	sub	s0,s0,a0
   14678:	04e48713          	addi	a4,s1,78
   1467c:	000a0793          	mv	a5,s4
   14680:	00278793          	addi	a5,a5,2
   14684:	fe079f23          	sh	zero,-2(a5)
   14688:	fee79ce3          	bne	a5,a4,14680 <eiremain+0x6c>
   1468c:	09344863          	blt	s0,s3,1471c <eiremain+0x108>
   14690:	004b8b13          	addi	s6,s7,4
   14694:	00490a93          	addi	s5,s2,4
   14698:	01ab8c13          	addi	s8,s7,26
   1469c:	00290d13          	addi	s10,s2,2
   146a0:	000a8713          	mv	a4,s5
   146a4:	000b0793          	mv	a5,s6
   146a8:	0007d603          	lhu	a2,0(a5)
   146ac:	00075683          	lhu	a3,0(a4)
   146b0:	00278793          	addi	a5,a5,2
   146b4:	00270713          	addi	a4,a4,2
   146b8:	0ad61a63          	bne	a2,a3,1476c <eiremain+0x158>
   146bc:	ff8796e3          	bne	a5,s8,146a8 <eiremain+0x94>
   146c0:	018b8613          	addi	a2,s7,24
   146c4:	01890713          	addi	a4,s2,24
   146c8:	00000693          	li	a3,0
   146cc:	00075783          	lhu	a5,0(a4)
   146d0:	00065583          	lhu	a1,0(a2)
   146d4:	ffe70713          	addi	a4,a4,-2
   146d8:	40d787b3          	sub	a5,a5,a3
   146dc:	40b787b3          	sub	a5,a5,a1
   146e0:	0107d693          	srli	a3,a5,0x10
   146e4:	00f71123          	sh	a5,2(a4)
   146e8:	0016f693          	andi	a3,a3,1
   146ec:	ffe60613          	addi	a2,a2,-2
   146f0:	fced1ee3          	bne	s10,a4,146cc <eiremain+0xb8>
   146f4:	00100c93          	li	s9,1
   146f8:	000a0513          	mv	a0,s4
   146fc:	ba8ff0ef          	jal	ra,13aa4 <eshup1>
   14700:	04c4d783          	lhu	a5,76(s1)
   14704:	fff40413          	addi	s0,s0,-1
   14708:	00090513          	mv	a0,s2
   1470c:	00fce7b3          	or	a5,s9,a5
   14710:	04f49623          	sh	a5,76(s1)
   14714:	b90ff0ef          	jal	ra,13aa4 <eshup1>
   14718:	f93454e3          	bge	s0,s3,146a0 <eiremain+0x8c>
   1471c:	00040693          	mv	a3,s0
   14720:	05013403          	ld	s0,80(sp)
   14724:	05813083          	ld	ra,88(sp)
   14728:	03813983          	ld	s3,56(sp)
   1472c:	03013a03          	ld	s4,48(sp)
   14730:	02813a83          	ld	s5,40(sp)
   14734:	02013b03          	ld	s6,32(sp)
   14738:	01813b83          	ld	s7,24(sp)
   1473c:	01013c03          	ld	s8,16(sp)
   14740:	00813c83          	ld	s9,8(sp)
   14744:	00013d03          	ld	s10,0(sp)
   14748:	00048793          	mv	a5,s1
   1474c:	00090513          	mv	a0,s2
   14750:	04813483          	ld	s1,72(sp)
   14754:	04013903          	ld	s2,64(sp)
   14758:	00000713          	li	a4,0
   1475c:	00000613          	li	a2,0
   14760:	00000593          	li	a1,0
   14764:	06010113          	addi	sp,sp,96
   14768:	a89ff06f          	j	141f0 <emdnorm>
   1476c:	00000c93          	li	s9,0
   14770:	f8c6e4e3          	bltu	a3,a2,146f8 <eiremain+0xe4>
   14774:	f4dff06f          	j	146c0 <eiremain+0xac>

0000000000014778 <emul>:
   14778:	f4010113          	addi	sp,sp,-192
   1477c:	0a913423          	sd	s1,168(sp)
   14780:	00050493          	mv	s1,a0
   14784:	01255503          	lhu	a0,18(a0)
   14788:	00008737          	lui	a4,0x8
   1478c:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   14790:	0a813823          	sd	s0,176(sp)
   14794:	0b213023          	sd	s2,160(sp)
   14798:	09413823          	sd	s4,144(sp)
   1479c:	0a113c23          	sd	ra,184(sp)
   147a0:	09313c23          	sd	s3,152(sp)
   147a4:	09513423          	sd	s5,136(sp)
   147a8:	09613023          	sd	s6,128(sp)
   147ac:	07713c23          	sd	s7,120(sp)
   147b0:	07813823          	sd	s8,112(sp)
   147b4:	07913423          	sd	s9,104(sp)
   147b8:	00a77533          	and	a0,a4,a0
   147bc:	00058913          	mv	s2,a1
   147c0:	00060413          	mv	s0,a2
   147c4:	00068a13          	mv	s4,a3
   147c8:	00e51e63          	bne	a0,a4,147e4 <emul+0x6c>
   147cc:	01248993          	addi	s3,s1,18
   147d0:	00048713          	mv	a4,s1
   147d4:	00075603          	lhu	a2,0(a4)
   147d8:	00270713          	addi	a4,a4,2
   147dc:	16061863          	bnez	a2,1494c <emul+0x1d4>
   147e0:	ff371ae3          	bne	a4,s3,147d4 <emul+0x5c>
   147e4:	01295603          	lhu	a2,18(s2)
   147e8:	000087b7          	lui	a5,0x8
   147ec:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   147f0:	00f675b3          	and	a1,a2,a5
   147f4:	0af59c63          	bne	a1,a5,148ac <emul+0x134>
   147f8:	01290693          	addi	a3,s2,18
   147fc:	00090713          	mv	a4,s2
   14800:	00075783          	lhu	a5,0(a4)
   14804:	00270713          	addi	a4,a4,2
   14808:	22079463          	bnez	a5,14a30 <emul+0x2b8>
   1480c:	fee69ae3          	bne	a3,a4,14800 <emul+0x88>
   14810:	000087b7          	lui	a5,0x8
   14814:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14818:	08f50c63          	beq	a0,a5,148b0 <emul+0x138>
   1481c:	00090793          	mv	a5,s2
   14820:	0007d703          	lhu	a4,0(a5)
   14824:	00278793          	addi	a5,a5,2
   14828:	3e071a63          	bnez	a4,14c1c <emul+0x4a4>
   1482c:	fef69ae3          	bne	a3,a5,14820 <emul+0xa8>
   14830:	000215b7          	lui	a1,0x21
   14834:	57058593          	addi	a1,a1,1392 # 21570 <ezero>
   14838:	00048513          	mv	a0,s1
   1483c:	875ff0ef          	jal	ra,140b0 <ecmp>
   14840:	20050663          	beqz	a0,14a4c <emul+0x2d4>
   14844:	0124d503          	lhu	a0,18(s1)
   14848:	01295603          	lhu	a2,18(s2)
   1484c:	000087b7          	lui	a5,0x8
   14850:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14854:	00f576b3          	and	a3,a0,a5
   14858:	00f67733          	and	a4,a2,a5
   1485c:	00068813          	mv	a6,a3
   14860:	0007059b          	sext.w	a1,a4
   14864:	12f69e63          	bne	a3,a5,149a0 <emul+0x228>
   14868:	01248993          	addi	s3,s1,18
   1486c:	0007059b          	sext.w	a1,a4
   14870:	00048793          	mv	a5,s1
   14874:	0007d703          	lhu	a4,0(a5)
   14878:	00278793          	addi	a5,a5,2
   1487c:	10071e63          	bnez	a4,14998 <emul+0x220>
   14880:	fef99ae3          	bne	s3,a5,14874 <emul+0xfc>
   14884:	0004d783          	lhu	a5,0(s1)
   14888:	00248493          	addi	s1,s1,2
   1488c:	34079663          	bnez	a5,14bd8 <emul+0x460>
   14890:	ff349ae3          	bne	s1,s3,14884 <emul+0x10c>
   14894:	00f55893          	srli	a7,a0,0xf
   14898:	00008737          	lui	a4,0x8
   1489c:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   148a0:	14e59863          	bne	a1,a4,149f0 <emul+0x278>
   148a4:	01290693          	addi	a3,s2,18
   148a8:	1380006f          	j	149e0 <emul+0x268>
   148ac:	04f51863          	bne	a0,a5,148fc <emul+0x184>
   148b0:	01248993          	addi	s3,s1,18
   148b4:	00048793          	mv	a5,s1
   148b8:	0007d703          	lhu	a4,0(a5)
   148bc:	00278793          	addi	a5,a5,2
   148c0:	32071063          	bnez	a4,14be0 <emul+0x468>
   148c4:	fef99ae3          	bne	s3,a5,148b8 <emul+0x140>
   148c8:	000215b7          	lui	a1,0x21
   148cc:	57058593          	addi	a1,a1,1392 # 21570 <ezero>
   148d0:	00090513          	mv	a0,s2
   148d4:	fdcff0ef          	jal	ra,140b0 <ecmp>
   148d8:	16050a63          	beqz	a0,14a4c <emul+0x2d4>
   148dc:	01295603          	lhu	a2,18(s2)
   148e0:	000087b7          	lui	a5,0x8
   148e4:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   148e8:	00f675b3          	and	a1,a2,a5
   148ec:	18f58663          	beq	a1,a5,14a78 <emul+0x300>
   148f0:	0124d503          	lhu	a0,18(s1)
   148f4:	00f57733          	and	a4,a0,a5
   148f8:	f6f70ce3          	beq	a4,a5,14870 <emul+0xf8>
   148fc:	00048513          	mv	a0,s1
   14900:	00010593          	mv	a1,sp
   14904:	ef4ff0ef          	jal	ra,13ff8 <emovi>
   14908:	02010593          	addi	a1,sp,32
   1490c:	00090513          	mv	a0,s2
   14910:	ee8ff0ef          	jal	ra,13ff8 <emovi>
   14914:	00215483          	lhu	s1,2(sp)
   14918:	02215983          	lhu	s3,34(sp)
   1491c:	16049263          	bnez	s1,14a80 <emul+0x308>
   14920:	00410793          	addi	a5,sp,4
   14924:	01810693          	addi	a3,sp,24
   14928:	2cd78663          	beq	a5,a3,14bf4 <emul+0x47c>
   1492c:	0007d703          	lhu	a4,0(a5)
   14930:	00278793          	addi	a5,a5,2
   14934:	fe070ae3          	beqz	a4,14928 <emul+0x1b0>
   14938:	00010513          	mv	a0,sp
   1493c:	b28ff0ef          	jal	ra,13c64 <enormlz>
   14940:	02215703          	lhu	a4,34(sp)
   14944:	40a004b3          	neg	s1,a0
   14948:	13c0006f          	j	14a84 <emul+0x30c>
   1494c:	01448713          	addi	a4,s1,20
   14950:	0004d783          	lhu	a5,0(s1)
   14954:	00248493          	addi	s1,s1,2
   14958:	00240413          	addi	s0,s0,2
   1495c:	fef41f23          	sh	a5,-2(s0)
   14960:	fee498e3          	bne	s1,a4,14950 <emul+0x1d8>
   14964:	0b813083          	ld	ra,184(sp)
   14968:	0b013403          	ld	s0,176(sp)
   1496c:	0a813483          	ld	s1,168(sp)
   14970:	0a013903          	ld	s2,160(sp)
   14974:	09813983          	ld	s3,152(sp)
   14978:	09013a03          	ld	s4,144(sp)
   1497c:	08813a83          	ld	s5,136(sp)
   14980:	08013b03          	ld	s6,128(sp)
   14984:	07813b83          	ld	s7,120(sp)
   14988:	07013c03          	ld	s8,112(sp)
   1498c:	06813c83          	ld	s9,104(sp)
   14990:	0c010113          	addi	sp,sp,192
   14994:	00008067          	ret
   14998:	00008837          	lui	a6,0x8
   1499c:	fff80813          	addi	a6,a6,-1 # 7fff <register_fini-0x80b1>
   149a0:	000087b7          	lui	a5,0x8
   149a4:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   149a8:	f4f59ae3          	bne	a1,a5,148fc <emul+0x184>
   149ac:	01290693          	addi	a3,s2,18
   149b0:	00090793          	mv	a5,s2
   149b4:	0007d703          	lhu	a4,0(a5)
   149b8:	00278793          	addi	a5,a5,2
   149bc:	f40710e3          	bnez	a4,148fc <emul+0x184>
   149c0:	fed79ae3          	bne	a5,a3,149b4 <emul+0x23c>
   149c4:	00008737          	lui	a4,0x8
   149c8:	0008081b          	sext.w	a6,a6
   149cc:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   149d0:	00f55893          	srli	a7,a0,0xf
   149d4:	01248993          	addi	s3,s1,18
   149d8:	00080593          	mv	a1,a6
   149dc:	eae804e3          	beq	a6,a4,14884 <emul+0x10c>
   149e0:	00095703          	lhu	a4,0(s2)
   149e4:	00290913          	addi	s2,s2,2
   149e8:	1e071463          	bnez	a4,14bd0 <emul+0x458>
   149ec:	fed91ae3          	bne	s2,a3,149e0 <emul+0x268>
   149f0:	00f65793          	srli	a5,a2,0xf
   149f4:	411787b3          	sub	a5,a5,a7
   149f8:	00f037b3          	snez	a5,a5
   149fc:	00f79793          	slli	a5,a5,0xf
   14a00:	00f41923          	sh	a5,18(s0)
   14a04:	01240713          	addi	a4,s0,18
   14a08:	00040793          	mv	a5,s0
   14a0c:	00278793          	addi	a5,a5,2
   14a10:	fe079f23          	sh	zero,-2(a5)
   14a14:	fee79ce3          	bne	a5,a4,14a0c <emul+0x294>
   14a18:	01245783          	lhu	a5,18(s0)
   14a1c:	00008737          	lui	a4,0x8
   14a20:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   14a24:	00e7e7b3          	or	a5,a5,a4
   14a28:	00f41923          	sh	a5,18(s0)
   14a2c:	f39ff06f          	j	14964 <emul+0x1ec>
   14a30:	01440713          	addi	a4,s0,20
   14a34:	00095783          	lhu	a5,0(s2)
   14a38:	00240413          	addi	s0,s0,2
   14a3c:	00290913          	addi	s2,s2,2
   14a40:	fef41f23          	sh	a5,-2(s0)
   14a44:	fee418e3          	bne	s0,a4,14a34 <emul+0x2bc>
   14a48:	f1dff06f          	j	14964 <emul+0x1ec>
   14a4c:	01040713          	addi	a4,s0,16
   14a50:	00040793          	mv	a5,s0
   14a54:	00278793          	addi	a5,a5,2
   14a58:	fe079f23          	sh	zero,-2(a5)
   14a5c:	fee79ce3          	bne	a5,a4,14a54 <emul+0x2dc>
   14a60:	ffffc7b7          	lui	a5,0xffffc
   14a64:	00f41823          	sh	a5,16(s0)
   14a68:	ffff87b7          	lui	a5,0xffff8
   14a6c:	fff7c793          	not	a5,a5
   14a70:	00f41923          	sh	a5,18(s0)
   14a74:	ef1ff06f          	j	14964 <emul+0x1ec>
   14a78:	01290693          	addi	a3,s2,18
   14a7c:	da1ff06f          	j	1481c <emul+0xa4>
   14a80:	00098713          	mv	a4,s3
   14a84:	00098913          	mv	s2,s3
   14a88:	02410793          	addi	a5,sp,36
   14a8c:	03810693          	addi	a3,sp,56
   14a90:	02071263          	bnez	a4,14ab4 <emul+0x33c>
   14a94:	16d78a63          	beq	a5,a3,14c08 <emul+0x490>
   14a98:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd3d60>
   14a9c:	00278793          	addi	a5,a5,2
   14aa0:	fe070ae3          	beqz	a4,14a94 <emul+0x31c>
   14aa4:	02010513          	addi	a0,sp,32
   14aa8:	9bcff0ef          	jal	ra,13c64 <enormlz>
   14aac:	02215703          	lhu	a4,34(sp)
   14ab0:	40a98933          	sub	s2,s3,a0
   14ab4:	02015783          	lhu	a5,32(sp)
   14ab8:	038a0993          	addi	s3,s4,56
   14abc:	02ea1b23          	sh	a4,54(s4)
   14ac0:	02fa1a23          	sh	a5,52(s4)
   14ac4:	04ea0713          	addi	a4,s4,78
   14ac8:	00098793          	mv	a5,s3
   14acc:	00079023          	sh	zero,0(a5)
   14ad0:	00278793          	addi	a5,a5,2
   14ad4:	fef71ce3          	bne	a4,a5,14acc <emul+0x354>
   14ad8:	04ca0c13          	addi	s8,s4,76
   14adc:	00000b93          	li	s7,0
   14ae0:	01810a93          	addi	s5,sp,24
   14ae4:	00410c93          	addi	s9,sp,4
   14ae8:	04210b13          	addi	s6,sp,66
   14aec:	000ad503          	lhu	a0,0(s5)
   14af0:	ffea8a93          	addi	s5,s5,-2
   14af4:	08051c63          	bnez	a0,14b8c <emul+0x414>
   14af8:	04ca5783          	lhu	a5,76(s4)
   14afc:	000c0713          	mv	a4,s8
   14b00:	00fbebb3          	or	s7,s7,a5
   14b04:	ffe75603          	lhu	a2,-2(a4)
   14b08:	ffe70713          	addi	a4,a4,-2
   14b0c:	00c71123          	sh	a2,2(a4)
   14b10:	fee99ae3          	bne	s3,a4,14b04 <emul+0x38c>
   14b14:	020a1c23          	sh	zero,56(s4)
   14b18:	fd9a9ae3          	bne	s5,s9,14aec <emul+0x374>
   14b1c:	034a0713          	addi	a4,s4,52
   14b20:	02010793          	addi	a5,sp,32
   14b24:	03a10613          	addi	a2,sp,58
   14b28:	00075683          	lhu	a3,0(a4)
   14b2c:	00278793          	addi	a5,a5,2
   14b30:	00270713          	addi	a4,a4,2
   14b34:	fed79f23          	sh	a3,-2(a5)
   14b38:	fef618e3          	bne	a2,a5,14b28 <emul+0x3b0>
   14b3c:	ffffc6b7          	lui	a3,0xffffc
   14b40:	012484b3          	add	s1,s1,s2
   14b44:	00268693          	addi	a3,a3,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd7d62>
   14b48:	000b8593          	mv	a1,s7
   14b4c:	02010513          	addi	a0,sp,32
   14b50:	000a0793          	mv	a5,s4
   14b54:	04000713          	li	a4,64
   14b58:	00d486b3          	add	a3,s1,a3
   14b5c:	00000613          	li	a2,0
   14b60:	e90ff0ef          	jal	ra,141f0 <emdnorm>
   14b64:	02015703          	lhu	a4,32(sp)
   14b68:	00015783          	lhu	a5,0(sp)
   14b6c:	00040593          	mv	a1,s0
   14b70:	02010513          	addi	a0,sp,32
   14b74:	40e787b3          	sub	a5,a5,a4
   14b78:	00f037b3          	snez	a5,a5
   14b7c:	40f007bb          	negw	a5,a5
   14b80:	02f11023          	sh	a5,32(sp)
   14b84:	824ff0ef          	jal	ra,13ba8 <emovo.constprop.0>
   14b88:	dddff06f          	j	14964 <emul+0x1ec>
   14b8c:	04010613          	addi	a2,sp,64
   14b90:	02010593          	addi	a1,sp,32
   14b94:	f7dfe0ef          	jal	ra,13b10 <m16m>
   14b98:	000c0513          	mv	a0,s8
   14b9c:	00000593          	li	a1,0
   14ba0:	05810613          	addi	a2,sp,88
   14ba4:	00055783          	lhu	a5,0(a0)
   14ba8:	00065703          	lhu	a4,0(a2)
   14bac:	ffe50513          	addi	a0,a0,-2
   14bb0:	ffe60613          	addi	a2,a2,-2
   14bb4:	00f70733          	add	a4,a4,a5
   14bb8:	00b70733          	add	a4,a4,a1
   14bbc:	01075593          	srli	a1,a4,0x10
   14bc0:	00e51123          	sh	a4,2(a0)
   14bc4:	0015f593          	andi	a1,a1,1
   14bc8:	fd661ee3          	bne	a2,s6,14ba4 <emul+0x42c>
   14bcc:	f2dff06f          	j	14af8 <emul+0x380>
   14bd0:	00000793          	li	a5,0
   14bd4:	e21ff06f          	j	149f4 <emul+0x27c>
   14bd8:	00000893          	li	a7,0
   14bdc:	cbdff06f          	j	14898 <emul+0x120>
   14be0:	000087b7          	lui	a5,0x8
   14be4:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14be8:	e8f588e3          	beq	a1,a5,14a78 <emul+0x300>
   14bec:	0124d503          	lhu	a0,18(s1)
   14bf0:	c81ff06f          	j	14870 <emul+0xf8>
   14bf4:	01440793          	addi	a5,s0,20
   14bf8:	00240413          	addi	s0,s0,2
   14bfc:	fe041f23          	sh	zero,-2(s0)
   14c00:	fe879ce3          	bne	a5,s0,14bf8 <emul+0x480>
   14c04:	d61ff06f          	j	14964 <emul+0x1ec>
   14c08:	01440793          	addi	a5,s0,20
   14c0c:	00240413          	addi	s0,s0,2
   14c10:	fe041f23          	sh	zero,-2(s0)
   14c14:	fe879ce3          	bne	a5,s0,14c0c <emul+0x494>
   14c18:	d4dff06f          	j	14964 <emul+0x1ec>
   14c1c:	0124d503          	lhu	a0,18(s1)
   14c20:	000087b7          	lui	a5,0x8
   14c24:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14c28:	00f575b3          	and	a1,a0,a5
   14c2c:	01248993          	addi	s3,s1,18
   14c30:	00058813          	mv	a6,a1
   14c34:	d6f59ee3          	bne	a1,a5,149b0 <emul+0x238>
   14c38:	c39ff06f          	j	14870 <emul+0xf8>

0000000000014c3c <ediv>:
   14c3c:	01255783          	lhu	a5,18(a0)
   14c40:	f2010113          	addi	sp,sp,-224
   14c44:	0c813823          	sd	s0,208(sp)
   14c48:	fff7c793          	not	a5,a5
   14c4c:	0c913423          	sd	s1,200(sp)
   14c50:	0d213023          	sd	s2,192(sp)
   14c54:	0b313c23          	sd	s3,184(sp)
   14c58:	0c113c23          	sd	ra,216(sp)
   14c5c:	0b413823          	sd	s4,176(sp)
   14c60:	0b513423          	sd	s5,168(sp)
   14c64:	0b613023          	sd	s6,160(sp)
   14c68:	09713c23          	sd	s7,152(sp)
   14c6c:	09813823          	sd	s8,144(sp)
   14c70:	09913423          	sd	s9,136(sp)
   14c74:	09a13023          	sd	s10,128(sp)
   14c78:	07b13c23          	sd	s11,120(sp)
   14c7c:	03179713          	slli	a4,a5,0x31
   14c80:	00050493          	mv	s1,a0
   14c84:	00058913          	mv	s2,a1
   14c88:	00060413          	mv	s0,a2
   14c8c:	00068993          	mv	s3,a3
   14c90:	00071e63          	bnez	a4,14cac <ediv+0x70>
   14c94:	01250693          	addi	a3,a0,18
   14c98:	00050793          	mv	a5,a0
   14c9c:	0007d703          	lhu	a4,0(a5)
   14ca0:	00278793          	addi	a5,a5,2
   14ca4:	30071263          	bnez	a4,14fa8 <ediv+0x36c>
   14ca8:	fed79ae3          	bne	a5,a3,14c9c <ediv+0x60>
   14cac:	01295783          	lhu	a5,18(s2)
   14cb0:	fff7c793          	not	a5,a5
   14cb4:	03179713          	slli	a4,a5,0x31
   14cb8:	00071e63          	bnez	a4,14cd4 <ediv+0x98>
   14cbc:	01290693          	addi	a3,s2,18
   14cc0:	00090793          	mv	a5,s2
   14cc4:	0007d703          	lhu	a4,0(a5)
   14cc8:	00278793          	addi	a5,a5,2
   14ccc:	2e071c63          	bnez	a4,14fc4 <ediv+0x388>
   14cd0:	fed79ae3          	bne	a5,a3,14cc4 <ediv+0x88>
   14cd4:	00021a37          	lui	s4,0x21
   14cd8:	570a0593          	addi	a1,s4,1392 # 21570 <ezero>
   14cdc:	00048513          	mv	a0,s1
   14ce0:	bd0ff0ef          	jal	ra,140b0 <ecmp>
   14ce4:	2e050e63          	beqz	a0,14fe0 <ediv+0x3a4>
   14ce8:	0124d603          	lhu	a2,18(s1)
   14cec:	01295583          	lhu	a1,18(s2)
   14cf0:	000087b7          	lui	a5,0x8
   14cf4:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14cf8:	00f67533          	and	a0,a2,a5
   14cfc:	00f5f6b3          	and	a3,a1,a5
   14d00:	0af51663          	bne	a0,a5,14dac <ediv+0x170>
   14d04:	01248813          	addi	a6,s1,18
   14d08:	00048793          	mv	a5,s1
   14d0c:	0007d703          	lhu	a4,0(a5)
   14d10:	00278793          	addi	a5,a5,2
   14d14:	08071863          	bnez	a4,14da4 <ediv+0x168>
   14d18:	ff079ae3          	bne	a5,a6,14d0c <ediv+0xd0>
   14d1c:	000087b7          	lui	a5,0x8
   14d20:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14d24:	2cf69a63          	bne	a3,a5,14ff8 <ediv+0x3bc>
   14d28:	01290693          	addi	a3,s2,18
   14d2c:	00090793          	mv	a5,s2
   14d30:	0007d703          	lhu	a4,0(a5)
   14d34:	00278793          	addi	a5,a5,2
   14d38:	48071c63          	bnez	a4,151d0 <ediv+0x594>
   14d3c:	fed79ae3          	bne	a5,a3,14d30 <ediv+0xf4>
   14d40:	01040713          	addi	a4,s0,16
   14d44:	00040793          	mv	a5,s0
   14d48:	00278793          	addi	a5,a5,2
   14d4c:	fe079f23          	sh	zero,-2(a5)
   14d50:	fee79ce3          	bne	a5,a4,14d48 <ediv+0x10c>
   14d54:	ffffc7b7          	lui	a5,0xffffc
   14d58:	00f41823          	sh	a5,16(s0)
   14d5c:	ffff87b7          	lui	a5,0xffff8
   14d60:	fff7c793          	not	a5,a5
   14d64:	00f41923          	sh	a5,18(s0)
   14d68:	0d813083          	ld	ra,216(sp)
   14d6c:	0d013403          	ld	s0,208(sp)
   14d70:	0c813483          	ld	s1,200(sp)
   14d74:	0c013903          	ld	s2,192(sp)
   14d78:	0b813983          	ld	s3,184(sp)
   14d7c:	0b013a03          	ld	s4,176(sp)
   14d80:	0a813a83          	ld	s5,168(sp)
   14d84:	0a013b03          	ld	s6,160(sp)
   14d88:	09813b83          	ld	s7,152(sp)
   14d8c:	09013c03          	ld	s8,144(sp)
   14d90:	08813c83          	ld	s9,136(sp)
   14d94:	08013d03          	ld	s10,128(sp)
   14d98:	07813d83          	ld	s11,120(sp)
   14d9c:	0e010113          	addi	sp,sp,224
   14da0:	00008067          	ret
   14da4:	000087b7          	lui	a5,0x8
   14da8:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   14dac:	26f68063          	beq	a3,a5,1500c <ediv+0x3d0>
   14db0:	00048513          	mv	a0,s1
   14db4:	01010593          	addi	a1,sp,16
   14db8:	a40ff0ef          	jal	ra,13ff8 <emovi>
   14dbc:	03010593          	addi	a1,sp,48
   14dc0:	00090513          	mv	a0,s2
   14dc4:	a34ff0ef          	jal	ra,13ff8 <emovi>
   14dc8:	03215a83          	lhu	s5,50(sp)
   14dcc:	01215483          	lhu	s1,18(sp)
   14dd0:	2c0a8663          	beqz	s5,1509c <ediv+0x460>
   14dd4:	01513423          	sd	s5,8(sp)
   14dd8:	00048613          	mv	a2,s1
   14ddc:	00913023          	sd	s1,0(sp)
   14de0:	01410793          	addi	a5,sp,20
   14de4:	02810693          	addi	a3,sp,40
   14de8:	02061263          	bnez	a2,14e0c <ediv+0x1d0>
   14dec:	3ad78463          	beq	a5,a3,15194 <ediv+0x558>
   14df0:	0007d703          	lhu	a4,0(a5)
   14df4:	00278793          	addi	a5,a5,2
   14df8:	fe070ae3          	beqz	a4,14dec <ediv+0x1b0>
   14dfc:	01010513          	addi	a0,sp,16
   14e00:	e65fe0ef          	jal	ra,13c64 <enormlz>
   14e04:	40a487b3          	sub	a5,s1,a0
   14e08:	00f13023          	sd	a5,0(sp)
   14e0c:	03012703          	lw	a4,48(sp)
   14e10:	03898a93          	addi	s5,s3,56
   14e14:	000a8793          	mv	a5,s5
   14e18:	02e9aa23          	sw	a4,52(s3)
   14e1c:	04e98493          	addi	s1,s3,78
   14e20:	00278793          	addi	a5,a5,2
   14e24:	fe079f23          	sh	zero,-2(a5)
   14e28:	fef49ce3          	bne	s1,a5,14e20 <ediv+0x1e4>
   14e2c:	03010513          	addi	a0,sp,48
   14e30:	c0dfe0ef          	jal	ra,13a3c <eshdn1>
   14e34:	01615b03          	lhu	s6,22(sp)
   14e38:	00010937          	lui	s2,0x10
   14e3c:	04810c13          	addi	s8,sp,72
   14e40:	010b1a13          	slli	s4,s6,0x10
   14e44:	416a0a33          	sub	s4,s4,s6
   14e48:	03210c93          	addi	s9,sp,50
   14e4c:	fff90913          	addi	s2,s2,-1 # ffff <register_fini-0xb1>
   14e50:	06a10d13          	addi	s10,sp,106
   14e54:	05210d93          	addi	s11,sp,82
   14e58:	03415783          	lhu	a5,52(sp)
   14e5c:	03615703          	lhu	a4,54(sp)
   14e60:	00090b93          	mv	s7,s2
   14e64:	01079793          	slli	a5,a5,0x10
   14e68:	00e787b3          	add	a5,a5,a4
   14e6c:	00fa6863          	bltu	s4,a5,14e7c <ediv+0x240>
   14e70:	0367d533          	divu	a0,a5,s6
   14e74:	03051b93          	slli	s7,a0,0x30
   14e78:	030bdb93          	srli	s7,s7,0x30
   14e7c:	05010613          	addi	a2,sp,80
   14e80:	01010593          	addi	a1,sp,16
   14e84:	000b8513          	mv	a0,s7
   14e88:	c89fe0ef          	jal	ra,13b10 <m16m>
   14e8c:	03410713          	addi	a4,sp,52
   14e90:	05410793          	addi	a5,sp,84
   14e94:	0007d603          	lhu	a2,0(a5)
   14e98:	00075683          	lhu	a3,0(a4)
   14e9c:	00278793          	addi	a5,a5,2
   14ea0:	00270713          	addi	a4,a4,2
   14ea4:	22d61463          	bne	a2,a3,150cc <ediv+0x490>
   14ea8:	ffa796e3          	bne	a5,s10,14e94 <ediv+0x258>
   14eac:	00000793          	li	a5,0
   14eb0:	06810693          	addi	a3,sp,104
   14eb4:	000c0613          	mv	a2,s8
   14eb8:	00065703          	lhu	a4,0(a2)
   14ebc:	0006d583          	lhu	a1,0(a3)
   14ec0:	ffe60613          	addi	a2,a2,-2
   14ec4:	40f70733          	sub	a4,a4,a5
   14ec8:	40b70733          	sub	a4,a4,a1
   14ecc:	01075793          	srli	a5,a4,0x10
   14ed0:	00e61123          	sh	a4,2(a2)
   14ed4:	0017f793          	andi	a5,a5,1
   14ed8:	ffe68693          	addi	a3,a3,-2
   14edc:	fd961ee3          	bne	a2,s9,14eb8 <ediv+0x27c>
   14ee0:	017a9023          	sh	s7,0(s5)
   14ee4:	03410793          	addi	a5,sp,52
   14ee8:	0027d703          	lhu	a4,2(a5)
   14eec:	00278793          	addi	a5,a5,2
   14ef0:	fee79f23          	sh	a4,-2(a5)
   14ef4:	ff879ae3          	bne	a5,s8,14ee8 <ediv+0x2ac>
   14ef8:	04011423          	sh	zero,72(sp)
   14efc:	002a8a93          	addi	s5,s5,2
   14f00:	f5549ce3          	bne	s1,s5,14e58 <ediv+0x21c>
   14f04:	00000713          	li	a4,0
   14f08:	03410793          	addi	a5,sp,52
   14f0c:	04a10613          	addi	a2,sp,74
   14f10:	0007d683          	lhu	a3,0(a5)
   14f14:	00278793          	addi	a5,a5,2
   14f18:	00d76733          	or	a4,a4,a3
   14f1c:	fec79ae3          	bne	a5,a2,14f10 <ediv+0x2d4>
   14f20:	0107179b          	slliw	a5,a4,0x10
   14f24:	4107d79b          	sraiw	a5,a5,0x10
   14f28:	00078463          	beqz	a5,14f30 <ediv+0x2f4>
   14f2c:	00100713          	li	a4,1
   14f30:	03071593          	slli	a1,a4,0x30
   14f34:	0305d593          	srli	a1,a1,0x30
   14f38:	03498713          	addi	a4,s3,52
   14f3c:	03010793          	addi	a5,sp,48
   14f40:	00075683          	lhu	a3,0(a4)
   14f44:	00278793          	addi	a5,a5,2
   14f48:	00270713          	addi	a4,a4,2
   14f4c:	fed79f23          	sh	a3,-2(a5)
   14f50:	fef618e3          	bne	a2,a5,14f40 <ediv+0x304>
   14f54:	00813783          	ld	a5,8(sp)
   14f58:	00013703          	ld	a4,0(sp)
   14f5c:	000046b7          	lui	a3,0x4
   14f60:	fff68693          	addi	a3,a3,-1 # 3fff <register_fini-0xc0b1>
   14f64:	40e78ab3          	sub	s5,a5,a4
   14f68:	03010513          	addi	a0,sp,48
   14f6c:	00098793          	mv	a5,s3
   14f70:	04000713          	li	a4,64
   14f74:	00da86b3          	add	a3,s5,a3
   14f78:	00000613          	li	a2,0
   14f7c:	a74ff0ef          	jal	ra,141f0 <emdnorm>
   14f80:	03015703          	lhu	a4,48(sp)
   14f84:	01015783          	lhu	a5,16(sp)
   14f88:	00040593          	mv	a1,s0
   14f8c:	03010513          	addi	a0,sp,48
   14f90:	40e787b3          	sub	a5,a5,a4
   14f94:	00f037b3          	snez	a5,a5
   14f98:	40f007bb          	negw	a5,a5
   14f9c:	02f11823          	sh	a5,48(sp)
   14fa0:	c09fe0ef          	jal	ra,13ba8 <emovo.constprop.0>
   14fa4:	dc5ff06f          	j	14d68 <ediv+0x12c>
   14fa8:	01448713          	addi	a4,s1,20
   14fac:	0004d783          	lhu	a5,0(s1)
   14fb0:	00248493          	addi	s1,s1,2
   14fb4:	00240413          	addi	s0,s0,2
   14fb8:	fef41f23          	sh	a5,-2(s0)
   14fbc:	fee498e3          	bne	s1,a4,14fac <ediv+0x370>
   14fc0:	da9ff06f          	j	14d68 <ediv+0x12c>
   14fc4:	01490713          	addi	a4,s2,20
   14fc8:	00095783          	lhu	a5,0(s2)
   14fcc:	00290913          	addi	s2,s2,2
   14fd0:	00240413          	addi	s0,s0,2
   14fd4:	fef41f23          	sh	a5,-2(s0)
   14fd8:	fee918e3          	bne	s2,a4,14fc8 <ediv+0x38c>
   14fdc:	d8dff06f          	j	14d68 <ediv+0x12c>
   14fe0:	570a0593          	addi	a1,s4,1392
   14fe4:	00090513          	mv	a0,s2
   14fe8:	8c8ff0ef          	jal	ra,140b0 <ecmp>
   14fec:	ce051ee3          	bnez	a0,14ce8 <ediv+0xac>
   14ff0:	d51ff06f          	j	14d40 <ediv+0x104>
   14ff4:	da080ee3          	beqz	a6,14db0 <ediv+0x174>
   14ff8:	01440793          	addi	a5,s0,20
   14ffc:	00240413          	addi	s0,s0,2
   15000:	fe041f23          	sh	zero,-2(s0)
   15004:	fef41ce3          	bne	s0,a5,14ffc <ediv+0x3c0>
   15008:	d61ff06f          	j	14d68 <ediv+0x12c>
   1500c:	00000813          	li	a6,0
   15010:	01290693          	addi	a3,s2,18
   15014:	00090793          	mv	a5,s2
   15018:	0007d703          	lhu	a4,0(a5)
   1501c:	00278793          	addi	a5,a5,2
   15020:	fc071ae3          	bnez	a4,14ff4 <ediv+0x3b8>
   15024:	fed79ae3          	bne	a5,a3,15018 <ediv+0x3dc>
   15028:	000087b7          	lui	a5,0x8
   1502c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   15030:	04f50a63          	beq	a0,a5,15084 <ediv+0x448>
   15034:	00f65613          	srli	a2,a2,0xf
   15038:	00095783          	lhu	a5,0(s2)
   1503c:	00290913          	addi	s2,s2,2
   15040:	18079063          	bnez	a5,151c0 <ediv+0x584>
   15044:	fed91ae3          	bne	s2,a3,15038 <ediv+0x3fc>
   15048:	00f5d593          	srli	a1,a1,0xf
   1504c:	00c58463          	beq	a1,a2,15054 <ediv+0x418>
   15050:	00008737          	lui	a4,0x8
   15054:	00e41923          	sh	a4,18(s0)
   15058:	00040793          	mv	a5,s0
   1505c:	01240713          	addi	a4,s0,18
   15060:	00278793          	addi	a5,a5,2
   15064:	fe079f23          	sh	zero,-2(a5)
   15068:	fee79ce3          	bne	a5,a4,15060 <ediv+0x424>
   1506c:	01245783          	lhu	a5,18(s0)
   15070:	00008737          	lui	a4,0x8
   15074:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   15078:	00e7e7b3          	or	a5,a5,a4
   1507c:	00f41923          	sh	a5,18(s0)
   15080:	ce9ff06f          	j	14d68 <ediv+0x12c>
   15084:	01248513          	addi	a0,s1,18
   15088:	0004d783          	lhu	a5,0(s1)
   1508c:	00248493          	addi	s1,s1,2
   15090:	12079c63          	bnez	a5,151c8 <ediv+0x58c>
   15094:	fea49ae3          	bne	s1,a0,15088 <ediv+0x44c>
   15098:	f9dff06f          	j	15034 <ediv+0x3f8>
   1509c:	03410793          	addi	a5,sp,52
   150a0:	04810c13          	addi	s8,sp,72
   150a4:	0cfc0e63          	beq	s8,a5,15180 <ediv+0x544>
   150a8:	0007d703          	lhu	a4,0(a5)
   150ac:	00278793          	addi	a5,a5,2
   150b0:	fe070ae3          	beqz	a4,150a4 <ediv+0x468>
   150b4:	03010513          	addi	a0,sp,48
   150b8:	badfe0ef          	jal	ra,13c64 <enormlz>
   150bc:	40a007b3          	neg	a5,a0
   150c0:	01215603          	lhu	a2,18(sp)
   150c4:	00f13423          	sd	a5,8(sp)
   150c8:	d15ff06f          	j	14ddc <ediv+0x1a0>
   150cc:	dec6f0e3          	bgeu	a3,a2,14eac <ediv+0x270>
   150d0:	fffb879b          	addiw	a5,s7,-1
   150d4:	03079893          	slli	a7,a5,0x30
   150d8:	0308d893          	srli	a7,a7,0x30
   150dc:	00000693          	li	a3,0
   150e0:	02810613          	addi	a2,sp,40
   150e4:	06810713          	addi	a4,sp,104
   150e8:	00075783          	lhu	a5,0(a4)
   150ec:	00065583          	lhu	a1,0(a2)
   150f0:	ffe70713          	addi	a4,a4,-2
   150f4:	40d787b3          	sub	a5,a5,a3
   150f8:	40b787b3          	sub	a5,a5,a1
   150fc:	0107d693          	srli	a3,a5,0x10
   15100:	00f71123          	sh	a5,2(a4)
   15104:	0016f693          	andi	a3,a3,1
   15108:	ffe60613          	addi	a2,a2,-2
   1510c:	fdb71ee3          	bne	a4,s11,150e8 <ediv+0x4ac>
   15110:	03410713          	addi	a4,sp,52
   15114:	05410793          	addi	a5,sp,84
   15118:	0007d603          	lhu	a2,0(a5)
   1511c:	00075683          	lhu	a3,0(a4)
   15120:	00278793          	addi	a5,a5,2
   15124:	00270713          	addi	a4,a4,2
   15128:	00d61863          	bne	a2,a3,15138 <ediv+0x4fc>
   1512c:	ffa796e3          	bne	a5,s10,15118 <ediv+0x4dc>
   15130:	00088b93          	mv	s7,a7
   15134:	d79ff06f          	j	14eac <ediv+0x270>
   15138:	fec6fce3          	bgeu	a3,a2,15130 <ediv+0x4f4>
   1513c:	ffeb851b          	addiw	a0,s7,-2
   15140:	03051b93          	slli	s7,a0,0x30
   15144:	030bdb93          	srli	s7,s7,0x30
   15148:	00000693          	li	a3,0
   1514c:	02810613          	addi	a2,sp,40
   15150:	06810713          	addi	a4,sp,104
   15154:	00075783          	lhu	a5,0(a4)
   15158:	00065583          	lhu	a1,0(a2)
   1515c:	ffe70713          	addi	a4,a4,-2
   15160:	40d787b3          	sub	a5,a5,a3
   15164:	40b787b3          	sub	a5,a5,a1
   15168:	0107d693          	srli	a3,a5,0x10
   1516c:	00f71123          	sh	a5,2(a4)
   15170:	0016f693          	andi	a3,a3,1
   15174:	ffe60613          	addi	a2,a2,-2
   15178:	fdb71ee3          	bne	a4,s11,15154 <ediv+0x518>
   1517c:	d31ff06f          	j	14eac <ediv+0x270>
   15180:	01440793          	addi	a5,s0,20
   15184:	00240413          	addi	s0,s0,2
   15188:	fe041f23          	sh	zero,-2(s0)
   1518c:	fef41ce3          	bne	s0,a5,15184 <ediv+0x548>
   15190:	bd9ff06f          	j	14d68 <ediv+0x12c>
   15194:	01015703          	lhu	a4,16(sp)
   15198:	03015783          	lhu	a5,48(sp)
   1519c:	00f70463          	beq	a4,a5,151a4 <ediv+0x568>
   151a0:	00008637          	lui	a2,0x8
   151a4:	00c41923          	sh	a2,18(s0)
   151a8:	01240713          	addi	a4,s0,18
   151ac:	00040793          	mv	a5,s0
   151b0:	00278793          	addi	a5,a5,2
   151b4:	fe079f23          	sh	zero,-2(a5)
   151b8:	fef71ce3          	bne	a4,a5,151b0 <ediv+0x574>
   151bc:	eb1ff06f          	j	1506c <ediv+0x430>
   151c0:	00000593          	li	a1,0
   151c4:	e89ff06f          	j	1504c <ediv+0x410>
   151c8:	00000613          	li	a2,0
   151cc:	e6dff06f          	j	15038 <ediv+0x3fc>
   151d0:	00100813          	li	a6,1
   151d4:	e41ff06f          	j	15014 <ediv+0x3d8>

00000000000151d8 <e113toe.isra.0>:
   151d8:	fd010113          	addi	sp,sp,-48
   151dc:	02813023          	sd	s0,32(sp)
   151e0:	02113423          	sd	ra,40(sp)
   151e4:	00058413          	mv	s0,a1
   151e8:	00010793          	mv	a5,sp
   151ec:	01a10713          	addi	a4,sp,26
   151f0:	00278793          	addi	a5,a5,2
   151f4:	fe079f23          	sh	zero,-2(a5)
   151f8:	fee79ce3          	bne	a5,a4,151f0 <e113toe.isra.0+0x18>
   151fc:	00e55783          	lhu	a5,14(a0)
   15200:	00f7d713          	srli	a4,a5,0xf
   15204:	06071c63          	bnez	a4,1527c <e113toe.isra.0+0xa4>
   15208:	00008737          	lui	a4,0x8
   1520c:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   15210:	00e7f6b3          	and	a3,a5,a4
   15214:	00011023          	sh	zero,0(sp)
   15218:	00068613          	mv	a2,a3
   1521c:	06e68e63          	beq	a3,a4,15298 <e113toe.isra.0+0xc0>
   15220:	00e50793          	addi	a5,a0,14
   15224:	00d11123          	sh	a3,2(sp)
   15228:	00610713          	addi	a4,sp,6
   1522c:	ffe7d683          	lhu	a3,-2(a5)
   15230:	ffe78793          	addi	a5,a5,-2
   15234:	00270713          	addi	a4,a4,2
   15238:	fed71f23          	sh	a3,-2(a4)
   1523c:	fef518e3          	bne	a0,a5,1522c <e113toe.isra.0+0x54>
   15240:	02061263          	bnez	a2,15264 <e113toe.isra.0+0x8c>
   15244:	00011223          	sh	zero,4(sp)
   15248:	00040593          	mv	a1,s0
   1524c:	00010513          	mv	a0,sp
   15250:	959fe0ef          	jal	ra,13ba8 <emovo.constprop.0>
   15254:	02813083          	ld	ra,40(sp)
   15258:	02013403          	ld	s0,32(sp)
   1525c:	03010113          	addi	sp,sp,48
   15260:	00008067          	ret
   15264:	00100793          	li	a5,1
   15268:	fff00593          	li	a1,-1
   1526c:	00010513          	mv	a0,sp
   15270:	00f11223          	sh	a5,4(sp)
   15274:	b65fe0ef          	jal	ra,13dd8 <eshift.part.0>
   15278:	fd1ff06f          	j	15248 <e113toe.isra.0+0x70>
   1527c:	fff00713          	li	a4,-1
   15280:	00e11023          	sh	a4,0(sp)
   15284:	00008737          	lui	a4,0x8
   15288:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   1528c:	00e7f6b3          	and	a3,a5,a4
   15290:	00068613          	mv	a2,a3
   15294:	f8e696e3          	bne	a3,a4,15220 <e113toe.isra.0+0x48>
   15298:	00050793          	mv	a5,a0
   1529c:	00e50693          	addi	a3,a0,14
   152a0:	0007d703          	lhu	a4,0(a5)
   152a4:	00278793          	addi	a5,a5,2
   152a8:	06071c63          	bnez	a4,15320 <e113toe.isra.0+0x148>
   152ac:	fef69ae3          	bne	a3,a5,152a0 <e113toe.isra.0+0xc8>
   152b0:	01440713          	addi	a4,s0,20
   152b4:	00040793          	mv	a5,s0
   152b8:	00278793          	addi	a5,a5,2
   152bc:	fe079f23          	sh	zero,-2(a5)
   152c0:	fee79ce3          	bne	a5,a4,152b8 <e113toe.isra.0+0xe0>
   152c4:	01240713          	addi	a4,s0,18
   152c8:	00040793          	mv	a5,s0
   152cc:	00278793          	addi	a5,a5,2
   152d0:	fe079f23          	sh	zero,-2(a5)
   152d4:	fef71ce3          	bne	a4,a5,152cc <e113toe.isra.0+0xf4>
   152d8:	01245783          	lhu	a5,18(s0)
   152dc:	000086b7          	lui	a3,0x8
   152e0:	fff68693          	addi	a3,a3,-1 # 7fff <register_fini-0x80b1>
   152e4:	00d7e7b3          	or	a5,a5,a3
   152e8:	03079793          	slli	a5,a5,0x30
   152ec:	0307d793          	srli	a5,a5,0x30
   152f0:	00f41923          	sh	a5,18(s0)
   152f4:	00e51683          	lh	a3,14(a0)
   152f8:	f406dee3          	bgez	a3,15254 <e113toe.isra.0+0x7c>
   152fc:	00040693          	mv	a3,s0
   15300:	0006d603          	lhu	a2,0(a3)
   15304:	00268693          	addi	a3,a3,2
   15308:	f40616e3          	bnez	a2,15254 <e113toe.isra.0+0x7c>
   1530c:	fed71ae3          	bne	a4,a3,15300 <e113toe.isra.0+0x128>
   15310:	ffff8737          	lui	a4,0xffff8
   15314:	00e7c7b3          	xor	a5,a5,a4
   15318:	00f41923          	sh	a5,18(s0)
   1531c:	f39ff06f          	j	15254 <e113toe.isra.0+0x7c>
   15320:	01040713          	addi	a4,s0,16
   15324:	00040793          	mv	a5,s0
   15328:	00278793          	addi	a5,a5,2
   1532c:	fe079f23          	sh	zero,-2(a5)
   15330:	fee79ce3          	bne	a5,a4,15328 <e113toe.isra.0+0x150>
   15334:	ffffc7b7          	lui	a5,0xffffc
   15338:	00f41823          	sh	a5,16(s0)
   1533c:	ffff87b7          	lui	a5,0xffff8
   15340:	fff7c793          	not	a5,a5
   15344:	00f41923          	sh	a5,18(s0)
   15348:	f0dff06f          	j	15254 <e113toe.isra.0+0x7c>

000000000001534c <_ldtoa_r>:
   1534c:	d9010113          	addi	sp,sp,-624
   15350:	09100313          	li	t1,145
   15354:	06c13423          	sd	a2,104(sp)
   15358:	06053e03          	ld	t3,96(a0)
   1535c:	02031613          	slli	a2,t1,0x20
   15360:	fff60613          	addi	a2,a2,-1 # 7fff <register_fini-0x80b1>
   15364:	26813023          	sd	s0,608(sp)
   15368:	25313423          	sd	s3,584(sp)
   1536c:	26113423          	sd	ra,616(sp)
   15370:	24913c23          	sd	s1,600(sp)
   15374:	25213823          	sd	s2,592(sp)
   15378:	25413023          	sd	s4,576(sp)
   1537c:	23513c23          	sd	s5,568(sp)
   15380:	23613823          	sd	s6,560(sp)
   15384:	23713423          	sd	s7,552(sp)
   15388:	23813023          	sd	s8,544(sp)
   1538c:	21913c23          	sd	s9,536(sp)
   15390:	21a13823          	sd	s10,528(sp)
   15394:	21b13423          	sd	s11,520(sp)
   15398:	06b13023          	sd	a1,96(sp)
   1539c:	1ac13823          	sd	a2,432(sp)
   153a0:	00d13423          	sd	a3,8(sp)
   153a4:	00e13c23          	sd	a4,24(sp)
   153a8:	02f13023          	sd	a5,32(sp)
   153ac:	03113823          	sd	a7,48(sp)
   153b0:	00050993          	mv	s3,a0
   153b4:	00080413          	mv	s0,a6
   153b8:	020e0263          	beqz	t3,153dc <_ldtoa_r+0x90>
   153bc:	06852703          	lw	a4,104(a0)
   153c0:	00100793          	li	a5,1
   153c4:	000e0593          	mv	a1,t3
   153c8:	00e797bb          	sllw	a5,a5,a4
   153cc:	00ee2423          	sw	a4,8(t3)
   153d0:	00fe2623          	sw	a5,12(t3)
   153d4:	635010ef          	jal	ra,17208 <_Bfree>
   153d8:	0609b023          	sd	zero,96(s3)
   153dc:	09010593          	addi	a1,sp,144
   153e0:	06010513          	addi	a0,sp,96
   153e4:	df5ff0ef          	jal	ra,151d8 <e113toe.isra.0>
   153e8:	0a215683          	lhu	a3,162(sp)
   153ec:	000087b7          	lui	a5,0x8
   153f0:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   153f4:	00f6f5b3          	and	a1,a3,a5
   153f8:	00f59e63          	bne	a1,a5,15414 <_ldtoa_r+0xc8>
   153fc:	09010793          	addi	a5,sp,144
   15400:	0a210613          	addi	a2,sp,162
   15404:	0007d703          	lhu	a4,0(a5)
   15408:	00278793          	addi	a5,a5,2
   1540c:	3a0710e3          	bnez	a4,15fac <_ldtoa_r+0xc60>
   15410:	fec79ae3          	bne	a5,a2,15404 <_ldtoa_r+0xb8>
   15414:	00f6d693          	srli	a3,a3,0xf
   15418:	00813703          	ld	a4,8(sp)
   1541c:	00d42023          	sw	a3,0(s0)
   15420:	00300793          	li	a5,3
   15424:	06f70ae3          	beq	a4,a5,15c98 <_ldtoa_r+0x94c>
   15428:	01400793          	li	a5,20
   1542c:	00f13823          	sd	a5,16(sp)
   15430:	380712e3          	bnez	a4,15fb4 <_ldtoa_r+0xc68>
   15434:	1b412703          	lw	a4,436(sp)
   15438:	000087b7          	lui	a5,0x8
   1543c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   15440:	02e13423          	sd	a4,40(sp)
   15444:	00f59e63          	bne	a1,a5,15460 <_ldtoa_r+0x114>
   15448:	09010793          	addi	a5,sp,144
   1544c:	0a210693          	addi	a3,sp,162
   15450:	0007d703          	lhu	a4,0(a5)
   15454:	00278793          	addi	a5,a5,2
   15458:	0a071ce3          	bnez	a4,15d10 <_ldtoa_r+0x9c4>
   1545c:	fed79ae3          	bne	a5,a3,15450 <_ldtoa_r+0x104>
   15460:	09000793          	li	a5,144
   15464:	1af12a23          	sw	a5,436(sp)
   15468:	0b010713          	addi	a4,sp,176
   1546c:	09010793          	addi	a5,sp,144
   15470:	0a410613          	addi	a2,sp,164
   15474:	0007d683          	lhu	a3,0(a5)
   15478:	00278793          	addi	a5,a5,2
   1547c:	00270713          	addi	a4,a4,2 # ffffffffffff8002 <__BSS_END__+0xfffffffffffd3d62>
   15480:	fed71f23          	sh	a3,-2(a4)
   15484:	fec798e3          	bne	a5,a2,15474 <_ldtoa_r+0x128>
   15488:	0c215603          	lhu	a2,194(sp)
   1548c:	00000c13          	li	s8,0
   15490:	00f65793          	srli	a5,a2,0xf
   15494:	54079263          	bnez	a5,159d8 <_ldtoa_r+0x68c>
   15498:	00021ab7          	lui	s5,0x21
   1549c:	570a8b93          	addi	s7,s5,1392 # 21570 <ezero>
   154a0:	018b8b13          	addi	s6,s7,24
   154a4:	00000693          	li	a3,0
   154a8:	0d010793          	addi	a5,sp,208
   154ac:	000b0713          	mv	a4,s6
   154b0:	0e410d93          	addi	s11,sp,228
   154b4:	0080006f          	j	154bc <_ldtoa_r+0x170>
   154b8:	00075683          	lhu	a3,0(a4)
   154bc:	00278793          	addi	a5,a5,2
   154c0:	fed79f23          	sh	a3,-2(a5)
   154c4:	00270713          	addi	a4,a4,2
   154c8:	ffb798e3          	bne	a5,s11,154b8 <_ldtoa_r+0x16c>
   154cc:	14060463          	beqz	a2,15614 <_ldtoa_r+0x2c8>
   154d0:	000087b7          	lui	a5,0x8
   154d4:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   154d8:	4af608e3          	beq	a2,a5,16188 <_ldtoa_r+0xe3c>
   154dc:	0c011783          	lh	a5,192(sp)
   154e0:	5207d6e3          	bgez	a5,1620c <_ldtoa_r+0xec0>
   154e4:	0b010593          	addi	a1,sp,176
   154e8:	000b0513          	mv	a0,s6
   154ec:	bc5fe0ef          	jal	ra,140b0 <ecmp>
   154f0:	12050e63          	beqz	a0,1562c <_ldtoa_r+0x2e0>
   154f4:	02054ee3          	bltz	a0,15d30 <_ldtoa_r+0x9e4>
   154f8:	0c215783          	lhu	a5,194(sp)
   154fc:	5a0798e3          	bnez	a5,162ac <_ldtoa_r+0xf60>
   15500:	0c011783          	lh	a5,192(sp)
   15504:	00000493          	li	s1,0
   15508:	1b010913          	addi	s2,sp,432
   1550c:	0207c463          	bltz	a5,15534 <_ldtoa_r+0x1e8>
   15510:	120b8413          	addi	s0,s7,288
   15514:	0b010613          	addi	a2,sp,176
   15518:	00090693          	mv	a3,s2
   1551c:	00060593          	mv	a1,a2
   15520:	00040513          	mv	a0,s0
   15524:	a54ff0ef          	jal	ra,14778 <emul>
   15528:	0c011783          	lh	a5,192(sp)
   1552c:	fff4849b          	addiw	s1,s1,-1
   15530:	fe07d2e3          	bgez	a5,15514 <_ldtoa_r+0x1c8>
   15534:	11010413          	addi	s0,sp,272
   15538:	12810a13          	addi	s4,sp,296
   1553c:	00040713          	mv	a4,s0
   15540:	0b010793          	addi	a5,sp,176
   15544:	0c410613          	addi	a2,sp,196
   15548:	0007d683          	lhu	a3,0(a5)
   1554c:	00278793          	addi	a5,a5,2
   15550:	00270713          	addi	a4,a4,2
   15554:	fed71f23          	sh	a3,-2(a4)
   15558:	fec798e3          	bne	a5,a2,15548 <_ldtoa_r+0x1fc>
   1555c:	00000693          	li	a3,0
   15560:	0d010793          	addi	a5,sp,208
   15564:	000b0713          	mv	a4,s6
   15568:	0080006f          	j	15570 <_ldtoa_r+0x224>
   1556c:	00075683          	lhu	a3,0(a4)
   15570:	00278793          	addi	a5,a5,2
   15574:	fed79f23          	sh	a3,-2(a5)
   15578:	00270713          	addi	a4,a4,2
   1557c:	ffb798e3          	bne	a5,s11,1556c <_ldtoa_r+0x220>
   15580:	030b8c93          	addi	s9,s7,48
   15584:	138b8d93          	addi	s11,s7,312
   15588:	fffffd37          	lui	s10,0xfffff
   1558c:	120b8b93          	addi	s7,s7,288
   15590:	00c0006f          	j	1559c <_ldtoa_r+0x250>
   15594:	014d8d93          	addi	s11,s11,20
   15598:	014c8c93          	addi	s9,s9,20
   1559c:	00040593          	mv	a1,s0
   155a0:	000b0513          	mv	a0,s6
   155a4:	b0dfe0ef          	jal	ra,140b0 <ecmp>
   155a8:	04a05863          	blez	a0,155f8 <_ldtoa_r+0x2ac>
   155ac:	00040593          	mv	a1,s0
   155b0:	000d8513          	mv	a0,s11
   155b4:	afdfe0ef          	jal	ra,140b0 <ecmp>
   155b8:	02054863          	bltz	a0,155e8 <_ldtoa_r+0x29c>
   155bc:	00090693          	mv	a3,s2
   155c0:	00040613          	mv	a2,s0
   155c4:	00040593          	mv	a1,s0
   155c8:	000c8513          	mv	a0,s9
   155cc:	9acff0ef          	jal	ra,14778 <emul>
   155d0:	0d010613          	addi	a2,sp,208
   155d4:	00090693          	mv	a3,s2
   155d8:	00060593          	mv	a1,a2
   155dc:	000c8513          	mv	a0,s9
   155e0:	998ff0ef          	jal	ra,14778 <emul>
   155e4:	009d04bb          	addw	s1,s10,s1
   155e8:	01fd579b          	srliw	a5,s10,0x1f
   155ec:	01a78d3b          	addw	s10,a5,s10
   155f0:	401d5d1b          	sraiw	s10,s10,0x1
   155f4:	fb7c90e3          	bne	s9,s7,15594 <_ldtoa_r+0x248>
   155f8:	0d010613          	addi	a2,sp,208
   155fc:	00090693          	mv	a3,s2
   15600:	000b0593          	mv	a1,s6
   15604:	00060513          	mv	a0,a2
   15608:	e34ff0ef          	jal	ra,14c3c <ediv>
   1560c:	17010c93          	addi	s9,sp,368
   15610:	0300006f          	j	15640 <_ldtoa_r+0x2f4>
   15614:	0b010793          	addi	a5,sp,176
   15618:	0c210693          	addi	a3,sp,194
   1561c:	0007d703          	lhu	a4,0(a5)
   15620:	ec0712e3          	bnez	a4,154e4 <_ldtoa_r+0x198>
   15624:	00278793          	addi	a5,a5,2
   15628:	fef69ae3          	bne	a3,a5,1561c <_ldtoa_r+0x2d0>
   1562c:	00000493          	li	s1,0
   15630:	17010c93          	addi	s9,sp,368
   15634:	1b010913          	addi	s2,sp,432
   15638:	11010413          	addi	s0,sp,272
   1563c:	12810a13          	addi	s4,sp,296
   15640:	00040593          	mv	a1,s0
   15644:	0d010513          	addi	a0,sp,208
   15648:	9b1fe0ef          	jal	ra,13ff8 <emovi>
   1564c:	0d010713          	addi	a4,sp,208
   15650:	00040793          	mv	a5,s0
   15654:	0007d683          	lhu	a3,0(a5)
   15658:	00278793          	addi	a5,a5,2
   1565c:	00270713          	addi	a4,a4,2
   15660:	fed71f23          	sh	a3,-2(a4)
   15664:	ff4798e3          	bne	a5,s4,15654 <_ldtoa_r+0x308>
   15668:	00040593          	mv	a1,s0
   1566c:	0b010513          	addi	a0,sp,176
   15670:	0e011423          	sh	zero,232(sp)
   15674:	985fe0ef          	jal	ra,13ff8 <emovi>
   15678:	0b010793          	addi	a5,sp,176
   1567c:	00045703          	lhu	a4,0(s0)
   15680:	00240413          	addi	s0,s0,2
   15684:	00278793          	addi	a5,a5,2
   15688:	fee79f23          	sh	a4,-2(a5)
   1568c:	ff4418e3          	bne	s0,s4,1567c <_ldtoa_r+0x330>
   15690:	00090613          	mv	a2,s2
   15694:	0b010593          	addi	a1,sp,176
   15698:	0d010513          	addi	a0,sp,208
   1569c:	0c011423          	sh	zero,200(sp)
   156a0:	f75fe0ef          	jal	ra,14614 <eiremain>
   156a4:	1fc15b03          	lhu	s6,508(sp)
   156a8:	160b1663          	bnez	s6,15814 <_ldtoa_r+0x4c8>
   156ac:	0c810b93          	addi	s7,sp,200
   156b0:	0b210d13          	addi	s10,sp,178
   156b4:	0f210413          	addi	s0,sp,242
   156b8:	570a8593          	addi	a1,s5,1392
   156bc:	0b010513          	addi	a0,sp,176
   156c0:	9f1fe0ef          	jal	ra,140b0 <ecmp>
   156c4:	14050863          	beqz	a0,15814 <_ldtoa_r+0x4c8>
   156c8:	00000713          	li	a4,0
   156cc:	000b8693          	mv	a3,s7
   156d0:	0006d783          	lhu	a5,0(a3)
   156d4:	00f7d613          	srli	a2,a5,0xf
   156d8:	00060463          	beqz	a2,156e0 <_ldtoa_r+0x394>
   156dc:	00176713          	ori	a4,a4,1
   156e0:	0017979b          	slliw	a5,a5,0x1
   156e4:	03079793          	slli	a5,a5,0x30
   156e8:	00277613          	andi	a2,a4,2
   156ec:	0307d793          	srli	a5,a5,0x30
   156f0:	00060463          	beqz	a2,156f8 <_ldtoa_r+0x3ac>
   156f4:	0017e793          	ori	a5,a5,1
   156f8:	0017171b          	slliw	a4,a4,0x1
   156fc:	00f69023          	sh	a5,0(a3)
   15700:	03071713          	slli	a4,a4,0x30
   15704:	ffe68693          	addi	a3,a3,-2
   15708:	03075713          	srli	a4,a4,0x30
   1570c:	fda692e3          	bne	a3,s10,156d0 <_ldtoa_r+0x384>
   15710:	0f010713          	addi	a4,sp,240
   15714:	0b010793          	addi	a5,sp,176
   15718:	0007d683          	lhu	a3,0(a5)
   1571c:	00278793          	addi	a5,a5,2
   15720:	00270713          	addi	a4,a4,2
   15724:	fed71f23          	sh	a3,-2(a4)
   15728:	ff7798e3          	bne	a5,s7,15718 <_ldtoa_r+0x3cc>
   1572c:	10011423          	sh	zero,264(sp)
   15730:	00000713          	li	a4,0
   15734:	10810693          	addi	a3,sp,264
   15738:	0006d783          	lhu	a5,0(a3)
   1573c:	00f7d613          	srli	a2,a5,0xf
   15740:	00060463          	beqz	a2,15748 <_ldtoa_r+0x3fc>
   15744:	00176713          	ori	a4,a4,1
   15748:	0017979b          	slliw	a5,a5,0x1
   1574c:	03079793          	slli	a5,a5,0x30
   15750:	00277613          	andi	a2,a4,2
   15754:	0307d793          	srli	a5,a5,0x30
   15758:	00060463          	beqz	a2,15760 <_ldtoa_r+0x414>
   1575c:	0017e793          	ori	a5,a5,1
   15760:	0017171b          	slliw	a4,a4,0x1
   15764:	00f69023          	sh	a5,0(a3)
   15768:	03071713          	slli	a4,a4,0x30
   1576c:	ffe68693          	addi	a3,a3,-2
   15770:	03075713          	srli	a4,a4,0x30
   15774:	fc8692e3          	bne	a3,s0,15738 <_ldtoa_r+0x3ec>
   15778:	00000713          	li	a4,0
   1577c:	10810693          	addi	a3,sp,264
   15780:	0006d783          	lhu	a5,0(a3)
   15784:	00f7d613          	srli	a2,a5,0xf
   15788:	00060463          	beqz	a2,15790 <_ldtoa_r+0x444>
   1578c:	00176713          	ori	a4,a4,1
   15790:	0017979b          	slliw	a5,a5,0x1
   15794:	03079793          	slli	a5,a5,0x30
   15798:	00277613          	andi	a2,a4,2
   1579c:	0307d793          	srli	a5,a5,0x30
   157a0:	00060463          	beqz	a2,157a8 <_ldtoa_r+0x45c>
   157a4:	0017e793          	ori	a5,a5,1
   157a8:	0017171b          	slliw	a4,a4,0x1
   157ac:	00f69023          	sh	a5,0(a3)
   157b0:	03071713          	slli	a4,a4,0x30
   157b4:	ffe68693          	addi	a3,a3,-2
   157b8:	03075713          	srli	a4,a4,0x30
   157bc:	fc8692e3          	bne	a3,s0,15780 <_ldtoa_r+0x434>
   157c0:	00000613          	li	a2,0
   157c4:	000b8693          	mv	a3,s7
   157c8:	10810713          	addi	a4,sp,264
   157cc:	0006d583          	lhu	a1,0(a3)
   157d0:	00075783          	lhu	a5,0(a4)
   157d4:	ffe68693          	addi	a3,a3,-2
   157d8:	ffe70713          	addi	a4,a4,-2
   157dc:	00b787b3          	add	a5,a5,a1
   157e0:	00c787b3          	add	a5,a5,a2
   157e4:	0107d613          	srli	a2,a5,0x10
   157e8:	00f69123          	sh	a5,2(a3)
   157ec:	00167613          	andi	a2,a2,1
   157f0:	fc871ee3          	bne	a4,s0,157cc <_ldtoa_r+0x480>
   157f4:	00090613          	mv	a2,s2
   157f8:	0b010593          	addi	a1,sp,176
   157fc:	0d010513          	addi	a0,sp,208
   15800:	e15fe0ef          	jal	ra,14614 <eiremain>
   15804:	1fc15783          	lhu	a5,508(sp)
   15808:	fff4849b          	addiw	s1,s1,-1
   1580c:	ea0786e3          	beqz	a5,156b8 <_ldtoa_r+0x36c>
   15810:	00078b13          	mv	s6,a5
   15814:	02d00793          	li	a5,45
   15818:	000c1463          	bnez	s8,15820 <_ldtoa_r+0x4d4>
   1581c:	02000793          	li	a5,32
   15820:	00813683          	ld	a3,8(sp)
   15824:	16f10823          	sb	a5,368(sp)
   15828:	00300713          	li	a4,3
   1582c:	01013783          	ld	a5,16(sp)
   15830:	00e69463          	bne	a3,a4,15838 <_ldtoa_r+0x4ec>
   15834:	009787bb          	addw	a5,a5,s1
   15838:	02a00713          	li	a4,42
   1583c:	0007841b          	sext.w	s0,a5
   15840:	00f75463          	bge	a4,a5,15848 <_ldtoa_r+0x4fc>
   15844:	02a00413          	li	s0,42
   15848:	00a00713          	li	a4,10
   1584c:	48eb0c63          	beq	s6,a4,15ce4 <_ldtoa_r+0x998>
   15850:	030b0b1b          	addiw	s6,s6,48
   15854:	02e00713          	li	a4,46
   15858:	176108a3          	sb	s6,369(sp)
   1585c:	16e10923          	sb	a4,370(sp)
   15860:	1807c863          	bltz	a5,159f0 <_ldtoa_r+0x6a4>
   15864:	17310c13          	addi	s8,sp,371
   15868:	00000a13          	li	s4,0
   1586c:	0f010d13          	addi	s10,sp,240
   15870:	0c810b93          	addi	s7,sp,200
   15874:	0b210d93          	addi	s11,sp,178
   15878:	0f210b13          	addi	s6,sp,242
   1587c:	00000613          	li	a2,0
   15880:	000b8593          	mv	a1,s7
   15884:	0005d783          	lhu	a5,0(a1)
   15888:	00f7d513          	srli	a0,a5,0xf
   1588c:	00050463          	beqz	a0,15894 <_ldtoa_r+0x548>
   15890:	00166613          	ori	a2,a2,1
   15894:	0017979b          	slliw	a5,a5,0x1
   15898:	03079793          	slli	a5,a5,0x30
   1589c:	00267513          	andi	a0,a2,2
   158a0:	0307d793          	srli	a5,a5,0x30
   158a4:	00050463          	beqz	a0,158ac <_ldtoa_r+0x560>
   158a8:	0017e793          	ori	a5,a5,1
   158ac:	0016161b          	slliw	a2,a2,0x1
   158b0:	00f59023          	sh	a5,0(a1)
   158b4:	03061613          	slli	a2,a2,0x30
   158b8:	ffe58593          	addi	a1,a1,-2
   158bc:	03065613          	srli	a2,a2,0x30
   158c0:	fdb592e3          	bne	a1,s11,15884 <_ldtoa_r+0x538>
   158c4:	000d0613          	mv	a2,s10
   158c8:	0b010793          	addi	a5,sp,176
   158cc:	0007d583          	lhu	a1,0(a5)
   158d0:	00278793          	addi	a5,a5,2
   158d4:	00260613          	addi	a2,a2,2
   158d8:	feb61f23          	sh	a1,-2(a2)
   158dc:	ff7798e3          	bne	a5,s7,158cc <_ldtoa_r+0x580>
   158e0:	10011423          	sh	zero,264(sp)
   158e4:	00000613          	li	a2,0
   158e8:	10810593          	addi	a1,sp,264
   158ec:	0005d783          	lhu	a5,0(a1)
   158f0:	00f7d513          	srli	a0,a5,0xf
   158f4:	00050463          	beqz	a0,158fc <_ldtoa_r+0x5b0>
   158f8:	00166613          	ori	a2,a2,1
   158fc:	0017979b          	slliw	a5,a5,0x1
   15900:	03079793          	slli	a5,a5,0x30
   15904:	00267513          	andi	a0,a2,2
   15908:	0307d793          	srli	a5,a5,0x30
   1590c:	00050463          	beqz	a0,15914 <_ldtoa_r+0x5c8>
   15910:	0017e793          	ori	a5,a5,1
   15914:	0016161b          	slliw	a2,a2,0x1
   15918:	00f59023          	sh	a5,0(a1)
   1591c:	03061613          	slli	a2,a2,0x30
   15920:	ffe58593          	addi	a1,a1,-2
   15924:	03065613          	srli	a2,a2,0x30
   15928:	fd6592e3          	bne	a1,s6,158ec <_ldtoa_r+0x5a0>
   1592c:	00000613          	li	a2,0
   15930:	10810593          	addi	a1,sp,264
   15934:	0005d783          	lhu	a5,0(a1)
   15938:	00f7d513          	srli	a0,a5,0xf
   1593c:	00050463          	beqz	a0,15944 <_ldtoa_r+0x5f8>
   15940:	00166613          	ori	a2,a2,1
   15944:	0017979b          	slliw	a5,a5,0x1
   15948:	03079793          	slli	a5,a5,0x30
   1594c:	00267513          	andi	a0,a2,2
   15950:	0307d793          	srli	a5,a5,0x30
   15954:	00050463          	beqz	a0,1595c <_ldtoa_r+0x610>
   15958:	0017e793          	ori	a5,a5,1
   1595c:	0016161b          	slliw	a2,a2,0x1
   15960:	00f59023          	sh	a5,0(a1)
   15964:	03061613          	slli	a2,a2,0x30
   15968:	ffe58593          	addi	a1,a1,-2
   1596c:	03065613          	srli	a2,a2,0x30
   15970:	fd6592e3          	bne	a1,s6,15934 <_ldtoa_r+0x5e8>
   15974:	00000513          	li	a0,0
   15978:	000b8593          	mv	a1,s7
   1597c:	10810613          	addi	a2,sp,264
   15980:	0005d803          	lhu	a6,0(a1)
   15984:	00065783          	lhu	a5,0(a2)
   15988:	ffe58593          	addi	a1,a1,-2
   1598c:	ffe60613          	addi	a2,a2,-2
   15990:	010787b3          	add	a5,a5,a6
   15994:	00a787b3          	add	a5,a5,a0
   15998:	0107d513          	srli	a0,a5,0x10
   1599c:	00f59123          	sh	a5,2(a1)
   159a0:	00157513          	andi	a0,a0,1
   159a4:	fd661ee3          	bne	a2,s6,15980 <_ldtoa_r+0x634>
   159a8:	00090613          	mv	a2,s2
   159ac:	0b010593          	addi	a1,sp,176
   159b0:	0d010513          	addi	a0,sp,208
   159b4:	c61fe0ef          	jal	ra,14614 <eiremain>
   159b8:	1fc15603          	lhu	a2,508(sp)
   159bc:	001c0793          	addi	a5,s8,1
   159c0:	001a0a1b          	addiw	s4,s4,1
   159c4:	0306059b          	addiw	a1,a2,48
   159c8:	feb78fa3          	sb	a1,-1(a5)
   159cc:	03444863          	blt	s0,s4,159fc <_ldtoa_r+0x6b0>
   159d0:	00078c13          	mv	s8,a5
   159d4:	ea9ff06f          	j	1587c <_ldtoa_r+0x530>
   159d8:	03161613          	slli	a2,a2,0x31
   159dc:	03165613          	srli	a2,a2,0x31
   159e0:	000107b7          	lui	a5,0x10
   159e4:	0cc11123          	sh	a2,194(sp)
   159e8:	fff78c13          	addi	s8,a5,-1 # ffff <register_fini-0xb1>
   159ec:	aadff06f          	j	15498 <_ldtoa_r+0x14c>
   159f0:	1fc15603          	lhu	a2,508(sp)
   159f4:	17210c13          	addi	s8,sp,370
   159f8:	17310793          	addi	a5,sp,371
   159fc:	00400713          	li	a4,4
   15a00:	04c75c63          	bge	a4,a2,15a58 <_ldtoa_r+0x70c>
   15a04:	00500713          	li	a4,5
   15a08:	02e602e3          	beq	a2,a4,1622c <_ldtoa_r+0xee0>
   15a0c:	ffe7c703          	lbu	a4,-2(a5)
   15a10:	ffe78613          	addi	a2,a5,-2
   15a14:	07f77593          	andi	a1,a4,127
   15a18:	00058713          	mv	a4,a1
   15a1c:	02044863          	bltz	s0,15a4c <_ldtoa_r+0x700>
   15a20:	02e00513          	li	a0,46
   15a24:	03800813          	li	a6,56
   15a28:	03000893          	li	a7,48
   15a2c:	78a58463          	beq	a1,a0,161b4 <_ldtoa_r+0xe68>
   15a30:	7ae85063          	bge	a6,a4,161d0 <_ldtoa_r+0xe84>
   15a34:	fff64783          	lbu	a5,-1(a2)
   15a38:	01160023          	sb	a7,0(a2)
   15a3c:	fff60613          	addi	a2,a2,-1
   15a40:	07f7f593          	andi	a1,a5,127
   15a44:	00058713          	mv	a4,a1
   15a48:	fe5ff06f          	j	15a2c <_ldtoa_r+0x6e0>
   15a4c:	03100713          	li	a4,49
   15a50:	fee78f23          	sb	a4,-2(a5)
   15a54:	0014849b          	addiw	s1,s1,1
   15a58:	000215b7          	lui	a1,0x21
   15a5c:	00048613          	mv	a2,s1
   15a60:	4f858593          	addi	a1,a1,1272 # 214f8 <zeroes.0+0x70>
   15a64:	000c0513          	mv	a0,s8
   15a68:	2c9020ef          	jal	ra,18530 <sprintf>
   15a6c:	0a215783          	lhu	a5,162(sp)
   15a70:	02813703          	ld	a4,40(sp)
   15a74:	1c912023          	sw	s1,448(sp)
   15a78:	fff7c793          	not	a5,a5
   15a7c:	1ae12a23          	sw	a4,436(sp)
   15a80:	03179713          	slli	a4,a5,0x31
   15a84:	18070a63          	beqz	a4,15c18 <_ldtoa_r+0x8cc>
   15a88:	02013683          	ld	a3,32(sp)
   15a8c:	17014703          	lbu	a4,368(sp)
   15a90:	0014879b          	addiw	a5,s1,1
   15a94:	00f6a023          	sw	a5,0(a3)
   15a98:	000c8793          	mv	a5,s9
   15a9c:	02070a63          	beqz	a4,15ad0 <_ldtoa_r+0x784>
   15aa0:	02e00693          	li	a3,46
   15aa4:	20d70a63          	beq	a4,a3,15cb8 <_ldtoa_r+0x96c>
   15aa8:	0017c703          	lbu	a4,1(a5)
   15aac:	00178793          	addi	a5,a5,1
   15ab0:	fe071ae3          	bnez	a4,15aa4 <_ldtoa_r+0x758>
   15ab4:	04500693          	li	a3,69
   15ab8:	00fce663          	bltu	s9,a5,15ac4 <_ldtoa_r+0x778>
   15abc:	0140006f          	j	15ad0 <_ldtoa_r+0x784>
   15ac0:	01978863          	beq	a5,s9,15ad0 <_ldtoa_r+0x784>
   15ac4:	fff7c703          	lbu	a4,-1(a5)
   15ac8:	fff78793          	addi	a5,a5,-1
   15acc:	fed71ae3          	bne	a4,a3,15ac0 <_ldtoa_r+0x774>
   15ad0:	00078023          	sb	zero,0(a5)
   15ad4:	000c8793          	mv	a5,s9
   15ad8:	02000693          	li	a3,32
   15adc:	02d00613          	li	a2,45
   15ae0:	0007c703          	lbu	a4,0(a5)
   15ae4:	00d70463          	beq	a4,a3,15aec <_ldtoa_r+0x7a0>
   15ae8:	00c71663          	bne	a4,a2,15af4 <_ldtoa_r+0x7a8>
   15aec:	00178793          	addi	a5,a5,1
   15af0:	ff1ff06f          	j	15ae0 <_ldtoa_r+0x794>
   15af4:	000c8413          	mv	s0,s9
   15af8:	00c0006f          	j	15b04 <_ldtoa_r+0x7b8>
   15afc:	0007c703          	lbu	a4,0(a5)
   15b00:	00068413          	mv	s0,a3
   15b04:	00e40023          	sb	a4,0(s0)
   15b08:	00140693          	addi	a3,s0,1
   15b0c:	00178793          	addi	a5,a5,1
   15b10:	fe0716e3          	bnez	a4,15afc <_ldtoa_r+0x7b0>
   15b14:	00813703          	ld	a4,8(sp)
   15b18:	00200793          	li	a5,2
   15b1c:	fff44683          	lbu	a3,-1(s0)
   15b20:	12f70263          	beq	a4,a5,15c44 <_ldtoa_r+0x8f8>
   15b24:	01013703          	ld	a4,16(sp)
   15b28:	00070793          	mv	a5,a4
   15b2c:	00975463          	bge	a4,s1,15b34 <_ldtoa_r+0x7e8>
   15b30:	00048793          	mv	a5,s1
   15b34:	03000613          	li	a2,48
   15b38:	0007871b          	sext.w	a4,a5
   15b3c:	02c69663          	bne	a3,a2,15b68 <_ldtoa_r+0x81c>
   15b40:	419407b3          	sub	a5,s0,s9
   15b44:	02f75263          	bge	a4,a5,15b68 <_ldtoa_r+0x81c>
   15b48:	03000693          	li	a3,48
   15b4c:	00c0006f          	j	15b58 <_ldtoa_r+0x80c>
   15b50:	419407b3          	sub	a5,s0,s9
   15b54:	00f75a63          	bge	a4,a5,15b68 <_ldtoa_r+0x81c>
   15b58:	ffe44783          	lbu	a5,-2(s0)
   15b5c:	fe040fa3          	sb	zero,-1(s0)
   15b60:	fff40413          	addi	s0,s0,-1
   15b64:	fed786e3          	beq	a5,a3,15b50 <_ldtoa_r+0x804>
   15b68:	00813703          	ld	a4,8(sp)
   15b6c:	00300793          	li	a5,3
   15b70:	0ef70663          	beq	a4,a5,15c5c <_ldtoa_r+0x910>
   15b74:	01813783          	ld	a5,24(sp)
   15b78:	0609a423          	sw	zero,104(s3)
   15b7c:	0097861b          	addiw	a2,a5,9
   15b80:	01f00793          	li	a5,31
   15b84:	10c7f663          	bgeu	a5,a2,15c90 <_ldtoa_r+0x944>
   15b88:	00100713          	li	a4,1
   15b8c:	00400793          	li	a5,4
   15b90:	0017979b          	slliw	a5,a5,0x1
   15b94:	01c78693          	addi	a3,a5,28
   15b98:	0007059b          	sext.w	a1,a4
   15b9c:	0017071b          	addiw	a4,a4,1
   15ba0:	fed678e3          	bgeu	a2,a3,15b90 <_ldtoa_r+0x844>
   15ba4:	06b9a423          	sw	a1,104(s3)
   15ba8:	00098513          	mv	a0,s3
   15bac:	5b4010ef          	jal	ra,17160 <_Balloc>
   15bb0:	00050493          	mv	s1,a0
   15bb4:	080506e3          	beqz	a0,16440 <_ldtoa_r+0x10f4>
   15bb8:	06a9b023          	sd	a0,96(s3)
   15bbc:	000c8593          	mv	a1,s9
   15bc0:	345020ef          	jal	ra,18704 <strcpy>
   15bc4:	03013703          	ld	a4,48(sp)
   15bc8:	00070863          	beqz	a4,15bd8 <_ldtoa_r+0x88c>
   15bcc:	419407b3          	sub	a5,s0,s9
   15bd0:	00f487b3          	add	a5,s1,a5
   15bd4:	00f73023          	sd	a5,0(a4)
   15bd8:	26813083          	ld	ra,616(sp)
   15bdc:	26013403          	ld	s0,608(sp)
   15be0:	25013903          	ld	s2,592(sp)
   15be4:	24813983          	ld	s3,584(sp)
   15be8:	24013a03          	ld	s4,576(sp)
   15bec:	23813a83          	ld	s5,568(sp)
   15bf0:	23013b03          	ld	s6,560(sp)
   15bf4:	22813b83          	ld	s7,552(sp)
   15bf8:	22013c03          	ld	s8,544(sp)
   15bfc:	21813c83          	ld	s9,536(sp)
   15c00:	21013d03          	ld	s10,528(sp)
   15c04:	20813d83          	ld	s11,520(sp)
   15c08:	00048513          	mv	a0,s1
   15c0c:	25813483          	ld	s1,600(sp)
   15c10:	27010113          	addi	sp,sp,624
   15c14:	00008067          	ret
   15c18:	09010793          	addi	a5,sp,144
   15c1c:	0a210693          	addi	a3,sp,162
   15c20:	0007d703          	lhu	a4,0(a5)
   15c24:	00278793          	addi	a5,a5,2
   15c28:	5a071a63          	bnez	a4,161dc <_ldtoa_r+0xe90>
   15c2c:	fed79ae3          	bne	a5,a3,15c20 <_ldtoa_r+0x8d4>
   15c30:	02013703          	ld	a4,32(sp)
   15c34:	000027b7          	lui	a5,0x2
   15c38:	70f78793          	addi	a5,a5,1807 # 270f <register_fini-0xd9a1>
   15c3c:	00f72023          	sw	a5,0(a4)
   15c40:	e95ff06f          	j	15ad4 <_ldtoa_r+0x788>
   15c44:	03000793          	li	a5,48
   15c48:	f2f696e3          	bne	a3,a5,15b74 <_ldtoa_r+0x828>
   15c4c:	419407b3          	sub	a5,s0,s9
   15c50:	00100713          	li	a4,1
   15c54:	eef74ae3          	blt	a4,a5,15b48 <_ldtoa_r+0x7fc>
   15c58:	f1dff06f          	j	15b74 <_ldtoa_r+0x828>
   15c5c:	01013783          	ld	a5,16(sp)
   15c60:	009784bb          	addw	s1,a5,s1
   15c64:	4e04cc63          	bltz	s1,1615c <_ldtoa_r+0xe10>
   15c68:	02013783          	ld	a5,32(sp)
   15c6c:	01813703          	ld	a4,24(sp)
   15c70:	0007a783          	lw	a5,0(a5)
   15c74:	00e787bb          	addw	a5,a5,a4
   15c78:	00f13c23          	sd	a5,24(sp)
   15c7c:	01813783          	ld	a5,24(sp)
   15c80:	0609a423          	sw	zero,104(s3)
   15c84:	0037861b          	addiw	a2,a5,3
   15c88:	01f00793          	li	a5,31
   15c8c:	eec7eee3          	bltu	a5,a2,15b88 <_ldtoa_r+0x83c>
   15c90:	00000593          	li	a1,0
   15c94:	f15ff06f          	j	15ba8 <_ldtoa_r+0x85c>
   15c98:	01813783          	ld	a5,24(sp)
   15c9c:	02a00713          	li	a4,42
   15ca0:	00078c13          	mv	s8,a5
   15ca4:	00f75463          	bge	a4,a5,15cac <_ldtoa_r+0x960>
   15ca8:	02a00c13          	li	s8,42
   15cac:	000c079b          	sext.w	a5,s8
   15cb0:	00f13823          	sd	a5,16(sp)
   15cb4:	f80ff06f          	j	15434 <_ldtoa_r+0xe8>
   15cb8:	0007c703          	lbu	a4,0(a5)
   15cbc:	de070ce3          	beqz	a4,15ab4 <_ldtoa_r+0x768>
   15cc0:	0017c703          	lbu	a4,1(a5)
   15cc4:	00178793          	addi	a5,a5,1
   15cc8:	fee78fa3          	sb	a4,-1(a5)
   15ccc:	de0704e3          	beqz	a4,15ab4 <_ldtoa_r+0x768>
   15cd0:	0017c703          	lbu	a4,1(a5)
   15cd4:	00178793          	addi	a5,a5,1
   15cd8:	fee78fa3          	sb	a4,-1(a5)
   15cdc:	fe0712e3          	bnez	a4,15cc0 <_ldtoa_r+0x974>
   15ce0:	dd5ff06f          	j	15ab4 <_ldtoa_r+0x768>
   15ce4:	03100713          	li	a4,49
   15ce8:	16e108a3          	sb	a4,369(sp)
   15cec:	02e00713          	li	a4,46
   15cf0:	16e10923          	sb	a4,370(sp)
   15cf4:	0014849b          	addiw	s1,s1,1
   15cf8:	2af05463          	blez	a5,15fa0 <_ldtoa_r+0xc54>
   15cfc:	03000793          	li	a5,48
   15d00:	16f109a3          	sb	a5,371(sp)
   15d04:	fff4041b          	addiw	s0,s0,-1
   15d08:	17410c13          	addi	s8,sp,372
   15d0c:	b5dff06f          	j	15868 <_ldtoa_r+0x51c>
   15d10:	17010c93          	addi	s9,sp,368
   15d14:	000215b7          	lui	a1,0x21
   15d18:	56858593          	addi	a1,a1,1384 # 21568 <zeroes.0+0xe0>
   15d1c:	000c8513          	mv	a0,s9
   15d20:	000024b7          	lui	s1,0x2
   15d24:	00d020ef          	jal	ra,18530 <sprintf>
   15d28:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   15d2c:	d41ff06f          	j	15a6c <_ldtoa_r+0x720>
   15d30:	0f010d13          	addi	s10,sp,240
   15d34:	000d0713          	mv	a4,s10
   15d38:	0b010793          	addi	a5,sp,176
   15d3c:	0c410613          	addi	a2,sp,196
   15d40:	0007d683          	lhu	a3,0(a5)
   15d44:	00278793          	addi	a5,a5,2
   15d48:	00270713          	addi	a4,a4,2
   15d4c:	fed71f23          	sh	a3,-2(a4)
   15d50:	fec798e3          	bne	a5,a2,15d40 <_ldtoa_r+0x9f4>
   15d54:	000047b7          	lui	a5,0x4
   15d58:	08e78793          	addi	a5,a5,142 # 408e <register_fini-0xc022>
   15d5c:	10f11123          	sh	a5,258(sp)
   15d60:	01000793          	li	a5,16
   15d64:	02f13c23          	sd	a5,56(sp)
   15d68:	000087b7          	lui	a5,0x8
   15d6c:	fff78793          	addi	a5,a5,-1 # 7fff <register_fini-0x80b1>
   15d70:	04f13423          	sd	a5,72(sp)
   15d74:	ffffc7b7          	lui	a5,0xffffc
   15d78:	0027879b          	addiw	a5,a5,2
   15d7c:	00000493          	li	s1,0
   15d80:	0d0b8313          	addi	t1,s7,208
   15d84:	17010c93          	addi	s9,sp,368
   15d88:	1b010913          	addi	s2,sp,432
   15d8c:	11010413          	addi	s0,sp,272
   15d90:	0e210a13          	addi	s4,sp,226
   15d94:	04f12a23          	sw	a5,84(sp)
   15d98:	00030513          	mv	a0,t1
   15d9c:	00090693          	mv	a3,s2
   15da0:	0d010613          	addi	a2,sp,208
   15da4:	000d0593          	mv	a1,s10
   15da8:	04613023          	sd	t1,64(sp)
   15dac:	e91fe0ef          	jal	ra,14c3c <ediv>
   15db0:	04013303          	ld	t1,64(sp)
   15db4:	07810713          	addi	a4,sp,120
   15db8:	0d010793          	addi	a5,sp,208
   15dbc:	0007d683          	lhu	a3,0(a5) # ffffffffffffc000 <__BSS_END__+0xfffffffffffd7d60>
   15dc0:	00278793          	addi	a5,a5,2
   15dc4:	00270713          	addi	a4,a4,2
   15dc8:	fed71f23          	sh	a3,-2(a4)
   15dcc:	ffb798e3          	bne	a5,s11,15dbc <_ldtoa_r+0xa70>
   15dd0:	04813783          	ld	a5,72(sp)
   15dd4:	08a15503          	lhu	a0,138(sp)
   15dd8:	00f575b3          	and	a1,a0,a5
   15ddc:	05412783          	lw	a5,84(sp)
   15de0:	00f587bb          	addw	a5,a1,a5
   15de4:	00078e13          	mv	t3,a5
   15de8:	38f05463          	blez	a5,16170 <_ldtoa_r+0xe24>
   15dec:	09000593          	li	a1,144
   15df0:	40f585bb          	subw	a1,a1,a5
   15df4:	00040713          	mv	a4,s0
   15df8:	07810793          	addi	a5,sp,120
   15dfc:	08c10613          	addi	a2,sp,140
   15e00:	0007d683          	lhu	a3,0(a5)
   15e04:	00278793          	addi	a5,a5,2
   15e08:	00270713          	addi	a4,a4,2
   15e0c:	fed71f23          	sh	a3,-2(a4)
   15e10:	fec798e3          	bne	a5,a2,15e00 <_ldtoa_r+0xab4>
   15e14:	06b05463          	blez	a1,15e7c <_ldtoa_r+0xb30>
   15e18:	00f00793          	li	a5,15
   15e1c:	00040713          	mv	a4,s0
   15e20:	02b7de63          	bge	a5,a1,15e5c <_ldtoa_r+0xb10>
   15e24:	08000693          	li	a3,128
   15e28:	41c686bb          	subw	a3,a3,t3
   15e2c:	0046d69b          	srliw	a3,a3,0x4
   15e30:	0016871b          	addiw	a4,a3,1
   15e34:	00171713          	slli	a4,a4,0x1
   15e38:	00e40733          	add	a4,s0,a4
   15e3c:	00040793          	mv	a5,s0
   15e40:	00278793          	addi	a5,a5,2
   15e44:	fe079f23          	sh	zero,-2(a5)
   15e48:	fef71ce3          	bne	a4,a5,15e40 <_ldtoa_r+0xaf4>
   15e4c:	08000593          	li	a1,128
   15e50:	41c585bb          	subw	a1,a1,t3
   15e54:	0046969b          	slliw	a3,a3,0x4
   15e58:	40d585bb          	subw	a1,a1,a3
   15e5c:	00159793          	slli	a5,a1,0x1
   15e60:	00fb87b3          	add	a5,s7,a5
   15e64:	00075683          	lhu	a3,0(a4)
   15e68:	2407d783          	lhu	a5,576(a5)
   15e6c:	00f6f7b3          	and	a5,a3,a5
   15e70:	00f71023          	sh	a5,0(a4)
   15e74:	00f55513          	srli	a0,a0,0xf
   15e78:	14051463          	bnez	a0,15fc0 <_ldtoa_r+0xc74>
   15e7c:	0d010793          	addi	a5,sp,208
   15e80:	00040713          	mv	a4,s0
   15e84:	0007d603          	lhu	a2,0(a5)
   15e88:	00075683          	lhu	a3,0(a4)
   15e8c:	02d61a63          	bne	a2,a3,15ec0 <_ldtoa_r+0xb74>
   15e90:	00278793          	addi	a5,a5,2
   15e94:	00270713          	addi	a4,a4,2
   15e98:	fefa16e3          	bne	s4,a5,15e84 <_ldtoa_r+0xb38>
   15e9c:	000d0713          	mv	a4,s10
   15ea0:	0d010793          	addi	a5,sp,208
   15ea4:	0007d683          	lhu	a3,0(a5)
   15ea8:	00278793          	addi	a5,a5,2
   15eac:	00270713          	addi	a4,a4,2
   15eb0:	fed71f23          	sh	a3,-2(a4)
   15eb4:	ffb798e3          	bne	a5,s11,15ea4 <_ldtoa_r+0xb58>
   15eb8:	03813783          	ld	a5,56(sp)
   15ebc:	009784bb          	addw	s1,a5,s1
   15ec0:	03813703          	ld	a4,56(sp)
   15ec4:	01430313          	addi	t1,t1,20
   15ec8:	134b8793          	addi	a5,s7,308
   15ecc:	00175713          	srli	a4,a4,0x1
   15ed0:	02e13c23          	sd	a4,56(sp)
   15ed4:	ecf312e3          	bne	t1,a5,15d98 <_ldtoa_r+0xa4c>
   15ed8:	10215783          	lhu	a5,258(sp)
   15edc:	0c215703          	lhu	a4,194(sp)
   15ee0:	10410613          	addi	a2,sp,260
   15ee4:	00e787bb          	addw	a5,a5,a4
   15ee8:	ffffc737          	lui	a4,0xffffc
   15eec:	f727071b          	addiw	a4,a4,-142
   15ef0:	00e787bb          	addw	a5,a5,a4
   15ef4:	10f11123          	sh	a5,258(sp)
   15ef8:	0b010713          	addi	a4,sp,176
   15efc:	000d0793          	mv	a5,s10
   15f00:	0007d683          	lhu	a3,0(a5)
   15f04:	00278793          	addi	a5,a5,2
   15f08:	00270713          	addi	a4,a4,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd7d62>
   15f0c:	fed71f23          	sh	a3,-2(a4)
   15f10:	fec798e3          	bne	a5,a2,15f00 <_ldtoa_r+0xbb4>
   15f14:	00000713          	li	a4,0
   15f18:	0d010793          	addi	a5,sp,208
   15f1c:	0080006f          	j	15f24 <_ldtoa_r+0xbd8>
   15f20:	000b5703          	lhu	a4,0(s6)
   15f24:	00278793          	addi	a5,a5,2
   15f28:	fee79f23          	sh	a4,-2(a5)
   15f2c:	002b0b13          	addi	s6,s6,2
   15f30:	ffb798e3          	bne	a5,s11,15f20 <_ldtoa_r+0xbd4>
   15f34:	030b8d93          	addi	s11,s7,48
   15f38:	00001b37          	lui	s6,0x1
   15f3c:	120b8b93          	addi	s7,s7,288
   15f40:	0100006f          	j	15f50 <_ldtoa_r+0xc04>
   15f44:	001b5b13          	srli	s6,s6,0x1
   15f48:	277d8263          	beq	s11,s7,161ac <_ldtoa_r+0xe60>
   15f4c:	014d8d93          	addi	s11,s11,20
   15f50:	000d0593          	mv	a1,s10
   15f54:	000b8513          	mv	a0,s7
   15f58:	958fe0ef          	jal	ra,140b0 <ecmp>
   15f5c:	24a04863          	bgtz	a0,161ac <_ldtoa_r+0xe60>
   15f60:	000d0593          	mv	a1,s10
   15f64:	000d8513          	mv	a0,s11
   15f68:	948fe0ef          	jal	ra,140b0 <ecmp>
   15f6c:	fca04ce3          	bgtz	a0,15f44 <_ldtoa_r+0xbf8>
   15f70:	00090693          	mv	a3,s2
   15f74:	000d0613          	mv	a2,s10
   15f78:	000d0593          	mv	a1,s10
   15f7c:	000d8513          	mv	a0,s11
   15f80:	cbdfe0ef          	jal	ra,14c3c <ediv>
   15f84:	0d010613          	addi	a2,sp,208
   15f88:	00090693          	mv	a3,s2
   15f8c:	00060593          	mv	a1,a2
   15f90:	000d8513          	mv	a0,s11
   15f94:	fe4fe0ef          	jal	ra,14778 <emul>
   15f98:	009b04bb          	addw	s1,s6,s1
   15f9c:	fa9ff06f          	j	15f44 <_ldtoa_r+0xbf8>
   15fa0:	17310c13          	addi	s8,sp,371
   15fa4:	aa079ae3          	bnez	a5,15a58 <_ldtoa_r+0x70c>
   15fa8:	8c1ff06f          	j	15868 <_ldtoa_r+0x51c>
   15fac:	00000693          	li	a3,0
   15fb0:	c68ff06f          	j	15418 <_ldtoa_r+0xcc>
   15fb4:	01813783          	ld	a5,24(sp)
   15fb8:	fff7879b          	addiw	a5,a5,-1
   15fbc:	ce1ff06f          	j	15c9c <_ldtoa_r+0x950>
   15fc0:	07810793          	addi	a5,sp,120
   15fc4:	00040713          	mv	a4,s0
   15fc8:	0140006f          	j	15fdc <_ldtoa_r+0xc90>
   15fcc:	00278793          	addi	a5,a5,2
   15fd0:	08a10693          	addi	a3,sp,138
   15fd4:	00270713          	addi	a4,a4,2
   15fd8:	eaf682e3          	beq	a3,a5,15e7c <_ldtoa_r+0xb30>
   15fdc:	0007d603          	lhu	a2,0(a5)
   15fe0:	00075683          	lhu	a3,0(a4)
   15fe4:	fed604e3          	beq	a2,a3,15fcc <_ldtoa_r+0xc80>
   15fe8:	12215783          	lhu	a5,290(sp)
   15fec:	04813703          	ld	a4,72(sp)
   15ff0:	00f777b3          	and	a5,a4,a5
   15ff4:	3ce78863          	beq	a5,a4,163c4 <_ldtoa_r+0x1078>
   15ff8:	13010593          	addi	a1,sp,304
   15ffc:	000b0513          	mv	a0,s6
   16000:	04613023          	sd	t1,64(sp)
   16004:	ff5fd0ef          	jal	ra,13ff8 <emovi>
   16008:	15010593          	addi	a1,sp,336
   1600c:	00040513          	mv	a0,s0
   16010:	fe9fd0ef          	jal	ra,13ff8 <emovi>
   16014:	13015703          	lhu	a4,304(sp)
   16018:	15215603          	lhu	a2,338(sp)
   1601c:	13215503          	lhu	a0,306(sp)
   16020:	fff74713          	not	a4,a4
   16024:	03071713          	slli	a4,a4,0x30
   16028:	03075713          	srli	a4,a4,0x30
   1602c:	12e11823          	sh	a4,304(sp)
   16030:	40c505b3          	sub	a1,a0,a2
   16034:	04013303          	ld	t1,64(sp)
   16038:	00060693          	mv	a3,a2
   1603c:	06b05e63          	blez	a1,160b8 <_ldtoa_r+0xd6c>
   16040:	000c8593          	mv	a1,s9
   16044:	15010693          	addi	a3,sp,336
   16048:	16810793          	addi	a5,sp,360
   1604c:	0006de03          	lhu	t3,0(a3)
   16050:	00268693          	addi	a3,a3,2
   16054:	00258593          	addi	a1,a1,2
   16058:	ffc59f23          	sh	t3,-2(a1)
   1605c:	fef698e3          	bne	a3,a5,1604c <_ldtoa_r+0xd00>
   16060:	18011423          	sh	zero,392(sp)
   16064:	15010693          	addi	a3,sp,336
   16068:	13010593          	addi	a1,sp,304
   1606c:	0080006f          	j	16074 <_ldtoa_r+0xd28>
   16070:	0005d703          	lhu	a4,0(a1)
   16074:	00268693          	addi	a3,a3,2
   16078:	fee69f23          	sh	a4,-2(a3)
   1607c:	00258593          	addi	a1,a1,2
   16080:	fef698e3          	bne	a3,a5,16070 <_ldtoa_r+0xd24>
   16084:	16011423          	sh	zero,360(sp)
   16088:	13010713          	addi	a4,sp,304
   1608c:	000c8793          	mv	a5,s9
   16090:	18810593          	addi	a1,sp,392
   16094:	0007d683          	lhu	a3,0(a5)
   16098:	00278793          	addi	a5,a5,2
   1609c:	00270713          	addi	a4,a4,2
   160a0:	fed71f23          	sh	a3,-2(a4)
   160a4:	feb798e3          	bne	a5,a1,16094 <_ldtoa_r+0xd48>
   160a8:	15215683          	lhu	a3,338(sp)
   160ac:	40a605b3          	sub	a1,a2,a0
   160b0:	14011423          	sh	zero,328(sp)
   160b4:	00068613          	mv	a2,a3
   160b8:	34058063          	beqz	a1,163f8 <_ldtoa_r+0x10ac>
   160bc:	04d13c23          	sd	a3,88(sp)
   160c0:	f6f00793          	li	a5,-145
   160c4:	08f5c063          	blt	a1,a5,16144 <_ldtoa_r+0xdf8>
   160c8:	0005859b          	sext.w	a1,a1
   160cc:	13010513          	addi	a0,sp,304
   160d0:	04613023          	sd	t1,64(sp)
   160d4:	d05fd0ef          	jal	ra,13dd8 <eshift.part.0>
   160d8:	04013303          	ld	t1,64(sp)
   160dc:	05813683          	ld	a3,88(sp)
   160e0:	00050593          	mv	a1,a0
   160e4:	16810793          	addi	a5,sp,360
   160e8:	14810713          	addi	a4,sp,328
   160ec:	13015503          	lhu	a0,304(sp)
   160f0:	15015603          	lhu	a2,336(sp)
   160f4:	3ac50863          	beq	a0,a2,164a4 <_ldtoa_r+0x1158>
   160f8:	00000e13          	li	t3,0
   160fc:	15210513          	addi	a0,sp,338
   16100:	0007d603          	lhu	a2,0(a5)
   16104:	00075e83          	lhu	t4,0(a4)
   16108:	ffe78793          	addi	a5,a5,-2
   1610c:	41c60633          	sub	a2,a2,t3
   16110:	41d60633          	sub	a2,a2,t4
   16114:	01065e13          	srli	t3,a2,0x10
   16118:	00c79123          	sh	a2,2(a5)
   1611c:	001e7e13          	andi	t3,t3,1
   16120:	ffe70713          	addi	a4,a4,-2
   16124:	fca79ee3          	bne	a5,a0,16100 <_ldtoa_r+0xdb4>
   16128:	00100613          	li	a2,1
   1612c:	00090793          	mv	a5,s2
   16130:	04000713          	li	a4,64
   16134:	15010513          	addi	a0,sp,336
   16138:	04613023          	sd	t1,64(sp)
   1613c:	8b4fe0ef          	jal	ra,141f0 <emdnorm>
   16140:	04013303          	ld	t1,64(sp)
   16144:	00040593          	mv	a1,s0
   16148:	15010513          	addi	a0,sp,336
   1614c:	04613023          	sd	t1,64(sp)
   16150:	a59fd0ef          	jal	ra,13ba8 <emovo.constprop.0>
   16154:	04013303          	ld	t1,64(sp)
   16158:	d25ff06f          	j	15e7c <_ldtoa_r+0xb30>
   1615c:	02013783          	ld	a5,32(sp)
   16160:	16010823          	sb	zero,368(sp)
   16164:	000c8413          	mv	s0,s9
   16168:	0007a023          	sw	zero,0(a5)
   1616c:	b11ff06f          	j	15c7c <_ldtoa_r+0x930>
   16170:	00040793          	mv	a5,s0
   16174:	12410713          	addi	a4,sp,292
   16178:	00278793          	addi	a5,a5,2
   1617c:	fe079f23          	sh	zero,-2(a5)
   16180:	fee79ce3          	bne	a5,a4,16178 <_ldtoa_r+0xe2c>
   16184:	cf1ff06f          	j	15e74 <_ldtoa_r+0xb28>
   16188:	17010c93          	addi	s9,sp,368
   1618c:	0e0c0c63          	beqz	s8,16284 <_ldtoa_r+0xf38>
   16190:	000215b7          	lui	a1,0x21
   16194:	4d058593          	addi	a1,a1,1232 # 214d0 <zeroes.0+0x48>
   16198:	000c8513          	mv	a0,s9
   1619c:	000024b7          	lui	s1,0x2
   161a0:	390020ef          	jal	ra,18530 <sprintf>
   161a4:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   161a8:	8c5ff06f          	j	15a6c <_ldtoa_r+0x720>
   161ac:	12810a13          	addi	s4,sp,296
   161b0:	c90ff06f          	j	15640 <_ldtoa_r+0x2f4>
   161b4:	fff64783          	lbu	a5,-1(a2)
   161b8:	03800713          	li	a4,56
   161bc:	0ef77263          	bgeu	a4,a5,162a0 <_ldtoa_r+0xf54>
   161c0:	03100793          	li	a5,49
   161c4:	0014849b          	addiw	s1,s1,1
   161c8:	fef60fa3          	sb	a5,-1(a2)
   161cc:	88dff06f          	j	15a58 <_ldtoa_r+0x70c>
   161d0:	0015859b          	addiw	a1,a1,1
   161d4:	00b60023          	sb	a1,0(a2)
   161d8:	881ff06f          	j	15a58 <_ldtoa_r+0x70c>
   161dc:	09010793          	addi	a5,sp,144
   161e0:	0a210693          	addi	a3,sp,162
   161e4:	0080006f          	j	161ec <_ldtoa_r+0xea0>
   161e8:	8ad780e3          	beq	a5,a3,15a88 <_ldtoa_r+0x73c>
   161ec:	0007d703          	lhu	a4,0(a5)
   161f0:	00278793          	addi	a5,a5,2
   161f4:	fe070ae3          	beqz	a4,161e8 <_ldtoa_r+0xe9c>
   161f8:	02013703          	ld	a4,32(sp)
   161fc:	000027b7          	lui	a5,0x2
   16200:	70f78793          	addi	a5,a5,1807 # 270f <register_fini-0xd9a1>
   16204:	00f72023          	sw	a5,0(a4)
   16208:	8cdff06f          	j	15ad4 <_ldtoa_r+0x788>
   1620c:	17010c93          	addi	s9,sp,368
   16210:	000215b7          	lui	a1,0x21
   16214:	4f058593          	addi	a1,a1,1264 # 214f0 <zeroes.0+0x68>
   16218:	000c8513          	mv	a0,s9
   1621c:	000024b7          	lui	s1,0x2
   16220:	310020ef          	jal	ra,18530 <sprintf>
   16224:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   16228:	845ff06f          	j	15a6c <_ldtoa_r+0x720>
   1622c:	0d010593          	addi	a1,sp,208
   16230:	0b010513          	addi	a0,sp,176
   16234:	02f13c23          	sd	a5,56(sp)
   16238:	971fd0ef          	jal	ra,13ba8 <emovo.constprop.0>
   1623c:	570a8593          	addi	a1,s5,1392
   16240:	0d010513          	addi	a0,sp,208
   16244:	e6dfd0ef          	jal	ra,140b0 <ecmp>
   16248:	03813783          	ld	a5,56(sp)
   1624c:	fc051063          	bnez	a0,15a0c <_ldtoa_r+0x6c0>
   16250:	800444e3          	bltz	s0,15a58 <_ldtoa_r+0x70c>
   16254:	ffe7c703          	lbu	a4,-2(a5)
   16258:	fd270613          	addi	a2,a4,-46
   1625c:	00163613          	seqz	a2,a2
   16260:	fff64613          	not	a2,a2
   16264:	00cc0633          	add	a2,s8,a2
   16268:	00064603          	lbu	a2,0(a2)
   1626c:	00167613          	andi	a2,a2,1
   16270:	fe060463          	beqz	a2,15a58 <_ldtoa_r+0x70c>
   16274:	07f77593          	andi	a1,a4,127
   16278:	ffe78613          	addi	a2,a5,-2
   1627c:	00058713          	mv	a4,a1
   16280:	fa0ff06f          	j	15a20 <_ldtoa_r+0x6d4>
   16284:	000215b7          	lui	a1,0x21
   16288:	4e058593          	addi	a1,a1,1248 # 214e0 <zeroes.0+0x58>
   1628c:	000c8513          	mv	a0,s9
   16290:	000024b7          	lui	s1,0x2
   16294:	29c020ef          	jal	ra,18530 <sprintf>
   16298:	70f48493          	addi	s1,s1,1807 # 270f <register_fini-0xd9a1>
   1629c:	fd0ff06f          	j	15a6c <_ldtoa_r+0x720>
   162a0:	0017879b          	addiw	a5,a5,1
   162a4:	fef60fa3          	sb	a5,-1(a2)
   162a8:	fb0ff06f          	j	15a58 <_ldtoa_r+0x70c>
   162ac:	11010413          	addi	s0,sp,272
   162b0:	00040593          	mv	a1,s0
   162b4:	0b010513          	addi	a0,sp,176
   162b8:	00004d37          	lui	s10,0x4
   162bc:	d3dfd0ef          	jal	ra,13ff8 <emovi>
   162c0:	00000493          	li	s1,0
   162c4:	12810a13          	addi	s4,sp,296
   162c8:	10810913          	addi	s2,sp,264
   162cc:	11210c93          	addi	s9,sp,274
   162d0:	ffed0d13          	addi	s10,s10,-2 # 3ffe <register_fini-0xc0b2>
   162d4:	12815783          	lhu	a5,296(sp)
   162d8:	0077f793          	andi	a5,a5,7
   162dc:	0c079a63          	bnez	a5,163b0 <_ldtoa_r+0x1064>
   162e0:	0f010713          	addi	a4,sp,240
   162e4:	00040793          	mv	a5,s0
   162e8:	0007d683          	lhu	a3,0(a5)
   162ec:	00278793          	addi	a5,a5,2
   162f0:	00270713          	addi	a4,a4,2
   162f4:	fed71f23          	sh	a3,-2(a4)
   162f8:	ff4798e3          	bne	a5,s4,162e8 <_ldtoa_r+0xf9c>
   162fc:	0f010513          	addi	a0,sp,240
   16300:	10011423          	sh	zero,264(sp)
   16304:	f38fd0ef          	jal	ra,13a3c <eshdn1>
   16308:	0f010513          	addi	a0,sp,240
   1630c:	f30fd0ef          	jal	ra,13a3c <eshdn1>
   16310:	00000613          	li	a2,0
   16314:	00090693          	mv	a3,s2
   16318:	000a0713          	mv	a4,s4
   1631c:	0006d583          	lhu	a1,0(a3)
   16320:	00075783          	lhu	a5,0(a4)
   16324:	ffe68693          	addi	a3,a3,-2
   16328:	ffe70713          	addi	a4,a4,-2
   1632c:	00b787b3          	add	a5,a5,a1
   16330:	00c787b3          	add	a5,a5,a2
   16334:	0107d613          	srli	a2,a5,0x10
   16338:	00f69123          	sh	a5,2(a3)
   1633c:	00167613          	andi	a2,a2,1
   16340:	fd971ee3          	bne	a4,s9,1631c <_ldtoa_r+0xfd0>
   16344:	0f215783          	lhu	a5,242(sp)
   16348:	0f415703          	lhu	a4,244(sp)
   1634c:	0037879b          	addiw	a5,a5,3
   16350:	0ef11923          	sh	a5,242(sp)
   16354:	02070063          	beqz	a4,16374 <_ldtoa_r+0x1028>
   16358:	0f010513          	addi	a0,sp,240
   1635c:	ee0fd0ef          	jal	ra,13a3c <eshdn1>
   16360:	0f215783          	lhu	a5,242(sp)
   16364:	0f415703          	lhu	a4,244(sp)
   16368:	0017879b          	addiw	a5,a5,1
   1636c:	0ef11923          	sh	a5,242(sp)
   16370:	fe0714e3          	bnez	a4,16358 <_ldtoa_r+0x100c>
   16374:	10815783          	lhu	a5,264(sp)
   16378:	02079c63          	bnez	a5,163b0 <_ldtoa_r+0x1064>
   1637c:	0f215783          	lhu	a5,242(sp)
   16380:	02fd6863          	bltu	s10,a5,163b0 <_ldtoa_r+0x1064>
   16384:	00040713          	mv	a4,s0
   16388:	0f010793          	addi	a5,sp,240
   1638c:	0007d683          	lhu	a3,0(a5)
   16390:	00278793          	addi	a5,a5,2
   16394:	00270713          	addi	a4,a4,2
   16398:	fed71f23          	sh	a3,-2(a4)
   1639c:	ff2798e3          	bne	a5,s2,1638c <_ldtoa_r+0x1040>
   163a0:	12011423          	sh	zero,296(sp)
   163a4:	fff4849b          	addiw	s1,s1,-1
   163a8:	fd500793          	li	a5,-43
   163ac:	f2f494e3          	bne	s1,a5,162d4 <_ldtoa_r+0xf88>
   163b0:	0b010593          	addi	a1,sp,176
   163b4:	00040513          	mv	a0,s0
   163b8:	ff0fd0ef          	jal	ra,13ba8 <emovo.constprop.0>
   163bc:	1b010913          	addi	s2,sp,432
   163c0:	97cff06f          	j	1553c <_ldtoa_r+0x1f0>
   163c4:	00040793          	mv	a5,s0
   163c8:	0007d703          	lhu	a4,0(a5)
   163cc:	00278793          	addi	a5,a5,2
   163d0:	aa0716e3          	bnez	a4,15e7c <_ldtoa_r+0xb30>
   163d4:	12210713          	addi	a4,sp,290
   163d8:	fee798e3          	bne	a5,a4,163c8 <_ldtoa_r+0x107c>
   163dc:	00040793          	mv	a5,s0
   163e0:	0007d703          	lhu	a4,0(a5)
   163e4:	00278793          	addi	a5,a5,2
   163e8:	c00718e3          	bnez	a4,15ff8 <_ldtoa_r+0xcac>
   163ec:	12210713          	addi	a4,sp,290
   163f0:	fee798e3          	bne	a5,a4,163e0 <_ldtoa_r+0x1094>
   163f4:	a89ff06f          	j	15e7c <_ldtoa_r+0xb30>
   163f8:	15410713          	addi	a4,sp,340
   163fc:	13410793          	addi	a5,sp,308
   16400:	0007d503          	lhu	a0,0(a5)
   16404:	00075583          	lhu	a1,0(a4)
   16408:	00278793          	addi	a5,a5,2
   1640c:	00270713          	addi	a4,a4,2
   16410:	04b51863          	bne	a0,a1,16460 <_ldtoa_r+0x1114>
   16414:	14a10593          	addi	a1,sp,330
   16418:	feb794e3          	bne	a5,a1,16400 <_ldtoa_r+0x10b4>
   1641c:	13015703          	lhu	a4,304(sp)
   16420:	15015783          	lhu	a5,336(sp)
   16424:	04f70863          	beq	a4,a5,16474 <_ldtoa_r+0x1128>
   16428:	00040793          	mv	a5,s0
   1642c:	12410713          	addi	a4,sp,292
   16430:	00278793          	addi	a5,a5,2
   16434:	fe079f23          	sh	zero,-2(a5)
   16438:	fee79ce3          	bne	a5,a4,16430 <_ldtoa_r+0x10e4>
   1643c:	a41ff06f          	j	15e7c <_ldtoa_r+0xb30>
   16440:	000216b7          	lui	a3,0x21
   16444:	000015b7          	lui	a1,0x1
   16448:	00021537          	lui	a0,0x21
   1644c:	50068693          	addi	a3,a3,1280 # 21500 <zeroes.0+0x78>
   16450:	00000613          	li	a2,0
   16454:	b6e58593          	addi	a1,a1,-1170 # b6e <register_fini-0xf542>
   16458:	51850513          	addi	a0,a0,1304 # 21518 <zeroes.0+0x90>
   1645c:	601050ef          	jal	ra,1c25c <__assert_func>
   16460:	06a5ee63          	bltu	a1,a0,164dc <_ldtoa_r+0x1190>
   16464:	00000593          	li	a1,0
   16468:	16810793          	addi	a5,sp,360
   1646c:	14810713          	addi	a4,sp,328
   16470:	c7dff06f          	j	160ec <_ldtoa_r+0xda0>
   16474:	00068713          	mv	a4,a3
   16478:	00069663          	bnez	a3,16484 <_ldtoa_r+0x1138>
   1647c:	15611783          	lh	a5,342(sp)
   16480:	0c07d863          	bgez	a5,16550 <_ldtoa_r+0x1204>
   16484:	15210713          	addi	a4,sp,338
   16488:	16810793          	addi	a5,sp,360
   1648c:	00075583          	lhu	a1,0(a4)
   16490:	10059663          	bnez	a1,1659c <_ldtoa_r+0x1250>
   16494:	00270713          	addi	a4,a4,2
   16498:	fee79ae3          	bne	a5,a4,1648c <_ldtoa_r+0x1140>
   1649c:	14c11923          	sh	a2,338(sp)
   164a0:	ca5ff06f          	j	16144 <_ldtoa_r+0xdf8>
   164a4:	00000513          	li	a0,0
   164a8:	13210e13          	addi	t3,sp,306
   164ac:	0007de83          	lhu	t4,0(a5)
   164b0:	00075603          	lhu	a2,0(a4)
   164b4:	ffe78793          	addi	a5,a5,-2
   164b8:	ffe70713          	addi	a4,a4,-2
   164bc:	01d60633          	add	a2,a2,t4
   164c0:	00a60633          	add	a2,a2,a0
   164c4:	01065513          	srli	a0,a2,0x10
   164c8:	00c79123          	sh	a2,2(a5)
   164cc:	00157513          	andi	a0,a0,1
   164d0:	fdc71ee3          	bne	a4,t3,164ac <_ldtoa_r+0x1160>
   164d4:	00000613          	li	a2,0
   164d8:	c55ff06f          	j	1612c <_ldtoa_r+0xde0>
   164dc:	000c8613          	mv	a2,s9
   164e0:	15010713          	addi	a4,sp,336
   164e4:	16810793          	addi	a5,sp,360
   164e8:	00075583          	lhu	a1,0(a4)
   164ec:	00270713          	addi	a4,a4,2
   164f0:	00260613          	addi	a2,a2,2
   164f4:	feb61f23          	sh	a1,-2(a2)
   164f8:	fef718e3          	bne	a4,a5,164e8 <_ldtoa_r+0x119c>
   164fc:	18011423          	sh	zero,392(sp)
   16500:	15010593          	addi	a1,sp,336
   16504:	13010613          	addi	a2,sp,304
   16508:	14810713          	addi	a4,sp,328
   1650c:	00065503          	lhu	a0,0(a2)
   16510:	00260613          	addi	a2,a2,2
   16514:	00258593          	addi	a1,a1,2
   16518:	fea59f23          	sh	a0,-2(a1)
   1651c:	fee618e3          	bne	a2,a4,1650c <_ldtoa_r+0x11c0>
   16520:	16011423          	sh	zero,360(sp)
   16524:	13010513          	addi	a0,sp,304
   16528:	000c8613          	mv	a2,s9
   1652c:	18810593          	addi	a1,sp,392
   16530:	00065e03          	lhu	t3,0(a2)
   16534:	00260613          	addi	a2,a2,2
   16538:	00250513          	addi	a0,a0,2
   1653c:	ffc51f23          	sh	t3,-2(a0)
   16540:	feb618e3          	bne	a2,a1,16530 <_ldtoa_r+0x11e4>
   16544:	14011423          	sh	zero,328(sp)
   16548:	00000593          	li	a1,0
   1654c:	ba1ff06f          	j	160ec <_ldtoa_r+0xda0>
   16550:	16810693          	addi	a3,sp,360
   16554:	15210513          	addi	a0,sp,338
   16558:	0006d783          	lhu	a5,0(a3)
   1655c:	00f7d613          	srli	a2,a5,0xf
   16560:	00060463          	beqz	a2,16568 <_ldtoa_r+0x121c>
   16564:	00176713          	ori	a4,a4,1
   16568:	0017979b          	slliw	a5,a5,0x1
   1656c:	03079793          	slli	a5,a5,0x30
   16570:	00277613          	andi	a2,a4,2
   16574:	0307d793          	srli	a5,a5,0x30
   16578:	00060463          	beqz	a2,16580 <_ldtoa_r+0x1234>
   1657c:	0017e793          	ori	a5,a5,1
   16580:	0017171b          	slliw	a4,a4,0x1
   16584:	00f69023          	sh	a5,0(a3)
   16588:	03071713          	slli	a4,a4,0x30
   1658c:	ffe68693          	addi	a3,a3,-2
   16590:	03075713          	srli	a4,a4,0x30
   16594:	fca692e3          	bne	a3,a0,16558 <_ldtoa_r+0x120c>
   16598:	badff06f          	j	16144 <_ldtoa_r+0xdf8>
   1659c:	00168613          	addi	a2,a3,1
   165a0:	14c11923          	sh	a2,338(sp)
   165a4:	ba1ff06f          	j	16144 <_ldtoa_r+0xdf8>

00000000000165a8 <_ldcheck>:
   165a8:	00053703          	ld	a4,0(a0)
   165ac:	00853783          	ld	a5,8(a0)
   165b0:	fc010113          	addi	sp,sp,-64
   165b4:	00010513          	mv	a0,sp
   165b8:	01010593          	addi	a1,sp,16
   165bc:	00e13023          	sd	a4,0(sp)
   165c0:	00f13423          	sd	a5,8(sp)
   165c4:	02113c23          	sd	ra,56(sp)
   165c8:	c11fe0ef          	jal	ra,151d8 <e113toe.isra.0>
   165cc:	02215783          	lhu	a5,34(sp)
   165d0:	00000513          	li	a0,0
   165d4:	fff7c793          	not	a5,a5
   165d8:	03179713          	slli	a4,a5,0x31
   165dc:	02071063          	bnez	a4,165fc <_ldcheck+0x54>
   165e0:	01010793          	addi	a5,sp,16
   165e4:	02210693          	addi	a3,sp,34
   165e8:	0007d703          	lhu	a4,0(a5)
   165ec:	00278793          	addi	a5,a5,2
   165f0:	00071c63          	bnez	a4,16608 <_ldcheck+0x60>
   165f4:	fed79ae3          	bne	a5,a3,165e8 <_ldcheck+0x40>
   165f8:	00200513          	li	a0,2
   165fc:	03813083          	ld	ra,56(sp)
   16600:	04010113          	addi	sp,sp,64
   16604:	00008067          	ret
   16608:	00100513          	li	a0,1
   1660c:	ff1ff06f          	j	165fc <_ldcheck+0x54>

0000000000016610 <__localeconv_l>:
   16610:	10050513          	addi	a0,a0,256
   16614:	00008067          	ret

0000000000016618 <_localeconv_r>:
   16618:	67018513          	addi	a0,gp,1648 # 24110 <__global_locale+0x100>
   1661c:	00008067          	ret

0000000000016620 <localeconv>:
   16620:	67018513          	addi	a0,gp,1648 # 24110 <__global_locale+0x100>
   16624:	00008067          	ret

0000000000016628 <__smakebuf_r>:
   16628:	0105d783          	lhu	a5,16(a1)
   1662c:	f6010113          	addi	sp,sp,-160
   16630:	08813823          	sd	s0,144(sp)
   16634:	08113c23          	sd	ra,152(sp)
   16638:	08913423          	sd	s1,136(sp)
   1663c:	09213023          	sd	s2,128(sp)
   16640:	07313c23          	sd	s3,120(sp)
   16644:	07413823          	sd	s4,112(sp)
   16648:	0027f713          	andi	a4,a5,2
   1664c:	00058413          	mv	s0,a1
   16650:	02070c63          	beqz	a4,16688 <__smakebuf_r+0x60>
   16654:	07758793          	addi	a5,a1,119
   16658:	00f5b023          	sd	a5,0(a1)
   1665c:	00f5bc23          	sd	a5,24(a1)
   16660:	00100793          	li	a5,1
   16664:	02f5a023          	sw	a5,32(a1)
   16668:	09813083          	ld	ra,152(sp)
   1666c:	09013403          	ld	s0,144(sp)
   16670:	08813483          	ld	s1,136(sp)
   16674:	08013903          	ld	s2,128(sp)
   16678:	07813983          	ld	s3,120(sp)
   1667c:	07013a03          	ld	s4,112(sp)
   16680:	0a010113          	addi	sp,sp,160
   16684:	00008067          	ret
   16688:	01259583          	lh	a1,18(a1)
   1668c:	00050493          	mv	s1,a0
   16690:	0805cc63          	bltz	a1,16728 <__smakebuf_r+0x100>
   16694:	00810613          	addi	a2,sp,8
   16698:	174060ef          	jal	ra,1c80c <_fstat_r>
   1669c:	08054463          	bltz	a0,16724 <__smakebuf_r+0xfc>
   166a0:	00c12903          	lw	s2,12(sp)
   166a4:	0000f7b7          	lui	a5,0xf
   166a8:	40000a13          	li	s4,1024
   166ac:	00f97933          	and	s2,s2,a5
   166b0:	000027b7          	lui	a5,0x2
   166b4:	40f90933          	sub	s2,s2,a5
   166b8:	000017b7          	lui	a5,0x1
   166bc:	00193913          	seqz	s2,s2
   166c0:	80078993          	addi	s3,a5,-2048 # 800 <register_fini-0xf8b0>
   166c4:	000a0593          	mv	a1,s4
   166c8:	00048513          	mv	a0,s1
   166cc:	1bc000ef          	jal	ra,16888 <_malloc_r>
   166d0:	01041783          	lh	a5,16(s0)
   166d4:	06050e63          	beqz	a0,16750 <__smakebuf_r+0x128>
   166d8:	00013737          	lui	a4,0x13
   166dc:	05c70713          	addi	a4,a4,92 # 1305c <_cleanup_r>
   166e0:	04e4bc23          	sd	a4,88(s1)
   166e4:	0807e793          	ori	a5,a5,128
   166e8:	00f41823          	sh	a5,16(s0)
   166ec:	00a43023          	sd	a0,0(s0)
   166f0:	00a43c23          	sd	a0,24(s0)
   166f4:	03442023          	sw	s4,32(s0)
   166f8:	08091863          	bnez	s2,16788 <__smakebuf_r+0x160>
   166fc:	0137e7b3          	or	a5,a5,s3
   16700:	09813083          	ld	ra,152(sp)
   16704:	00f41823          	sh	a5,16(s0)
   16708:	09013403          	ld	s0,144(sp)
   1670c:	08813483          	ld	s1,136(sp)
   16710:	08013903          	ld	s2,128(sp)
   16714:	07813983          	ld	s3,120(sp)
   16718:	07013a03          	ld	s4,112(sp)
   1671c:	0a010113          	addi	sp,sp,160
   16720:	00008067          	ret
   16724:	01045783          	lhu	a5,16(s0)
   16728:	0807f793          	andi	a5,a5,128
   1672c:	00000913          	li	s2,0
   16730:	04078663          	beqz	a5,1677c <__smakebuf_r+0x154>
   16734:	04000a13          	li	s4,64
   16738:	000a0593          	mv	a1,s4
   1673c:	00048513          	mv	a0,s1
   16740:	148000ef          	jal	ra,16888 <_malloc_r>
   16744:	01041783          	lh	a5,16(s0)
   16748:	00000993          	li	s3,0
   1674c:	f80516e3          	bnez	a0,166d8 <__smakebuf_r+0xb0>
   16750:	2007f713          	andi	a4,a5,512
   16754:	f0071ae3          	bnez	a4,16668 <__smakebuf_r+0x40>
   16758:	ffc7f793          	andi	a5,a5,-4
   1675c:	0027e793          	ori	a5,a5,2
   16760:	07740713          	addi	a4,s0,119
   16764:	00f41823          	sh	a5,16(s0)
   16768:	00100793          	li	a5,1
   1676c:	00e43023          	sd	a4,0(s0)
   16770:	00e43c23          	sd	a4,24(s0)
   16774:	02f42023          	sw	a5,32(s0)
   16778:	ef1ff06f          	j	16668 <__smakebuf_r+0x40>
   1677c:	40000a13          	li	s4,1024
   16780:	00000993          	li	s3,0
   16784:	f41ff06f          	j	166c4 <__smakebuf_r+0x9c>
   16788:	01241583          	lh	a1,18(s0)
   1678c:	00048513          	mv	a0,s1
   16790:	58c060ef          	jal	ra,1cd1c <_isatty_r>
   16794:	00051663          	bnez	a0,167a0 <__smakebuf_r+0x178>
   16798:	01041783          	lh	a5,16(s0)
   1679c:	f61ff06f          	j	166fc <__smakebuf_r+0xd4>
   167a0:	01045783          	lhu	a5,16(s0)
   167a4:	ffc7f793          	andi	a5,a5,-4
   167a8:	0017e793          	ori	a5,a5,1
   167ac:	0107979b          	slliw	a5,a5,0x10
   167b0:	4107d79b          	sraiw	a5,a5,0x10
   167b4:	f49ff06f          	j	166fc <__smakebuf_r+0xd4>

00000000000167b8 <__swhatbuf_r>:
   167b8:	f7010113          	addi	sp,sp,-144
   167bc:	08813023          	sd	s0,128(sp)
   167c0:	00058413          	mv	s0,a1
   167c4:	01259583          	lh	a1,18(a1)
   167c8:	06913c23          	sd	s1,120(sp)
   167cc:	07213823          	sd	s2,112(sp)
   167d0:	08113423          	sd	ra,136(sp)
   167d4:	00060493          	mv	s1,a2
   167d8:	00068913          	mv	s2,a3
   167dc:	0405ca63          	bltz	a1,16830 <__swhatbuf_r+0x78>
   167e0:	00810613          	addi	a2,sp,8
   167e4:	028060ef          	jal	ra,1c80c <_fstat_r>
   167e8:	04054463          	bltz	a0,16830 <__swhatbuf_r+0x78>
   167ec:	00c12783          	lw	a5,12(sp)
   167f0:	0000f737          	lui	a4,0xf
   167f4:	08813083          	ld	ra,136(sp)
   167f8:	00e7f7b3          	and	a5,a5,a4
   167fc:	00002737          	lui	a4,0x2
   16800:	40e787b3          	sub	a5,a5,a4
   16804:	08013403          	ld	s0,128(sp)
   16808:	0017b793          	seqz	a5,a5
   1680c:	00f92023          	sw	a5,0(s2)
   16810:	40000793          	li	a5,1024
   16814:	00f4b023          	sd	a5,0(s1)
   16818:	00001537          	lui	a0,0x1
   1681c:	07813483          	ld	s1,120(sp)
   16820:	07013903          	ld	s2,112(sp)
   16824:	80050513          	addi	a0,a0,-2048 # 800 <register_fini-0xf8b0>
   16828:	09010113          	addi	sp,sp,144
   1682c:	00008067          	ret
   16830:	01041783          	lh	a5,16(s0)
   16834:	00092023          	sw	zero,0(s2)
   16838:	0807f793          	andi	a5,a5,128
   1683c:	02078463          	beqz	a5,16864 <__swhatbuf_r+0xac>
   16840:	08813083          	ld	ra,136(sp)
   16844:	08013403          	ld	s0,128(sp)
   16848:	04000793          	li	a5,64
   1684c:	00f4b023          	sd	a5,0(s1)
   16850:	07013903          	ld	s2,112(sp)
   16854:	07813483          	ld	s1,120(sp)
   16858:	00000513          	li	a0,0
   1685c:	09010113          	addi	sp,sp,144
   16860:	00008067          	ret
   16864:	08813083          	ld	ra,136(sp)
   16868:	08013403          	ld	s0,128(sp)
   1686c:	40000793          	li	a5,1024
   16870:	00f4b023          	sd	a5,0(s1)
   16874:	07013903          	ld	s2,112(sp)
   16878:	07813483          	ld	s1,120(sp)
   1687c:	00000513          	li	a0,0
   16880:	09010113          	addi	sp,sp,144
   16884:	00008067          	ret

0000000000016888 <_malloc_r>:
   16888:	fa010113          	addi	sp,sp,-96
   1688c:	04913423          	sd	s1,72(sp)
   16890:	05213023          	sd	s2,64(sp)
   16894:	04113c23          	sd	ra,88(sp)
   16898:	04813823          	sd	s0,80(sp)
   1689c:	03313c23          	sd	s3,56(sp)
   168a0:	03413823          	sd	s4,48(sp)
   168a4:	03513423          	sd	s5,40(sp)
   168a8:	03613023          	sd	s6,32(sp)
   168ac:	01713c23          	sd	s7,24(sp)
   168b0:	01813823          	sd	s8,16(sp)
   168b4:	01913423          	sd	s9,8(sp)
   168b8:	01758493          	addi	s1,a1,23
   168bc:	02e00793          	li	a5,46
   168c0:	00050913          	mv	s2,a0
   168c4:	0697e663          	bltu	a5,s1,16930 <_malloc_r+0xa8>
   168c8:	02000793          	li	a5,32
   168cc:	26b7e063          	bltu	a5,a1,16b2c <_malloc_r+0x2a4>
   168d0:	089000ef          	jal	ra,17158 <__malloc_lock>
   168d4:	02000493          	li	s1,32
   168d8:	05000793          	li	a5,80
   168dc:	00400613          	li	a2,4
   168e0:	000249b7          	lui	s3,0x24
   168e4:	80098993          	addi	s3,s3,-2048 # 23800 <__malloc_av_>
   168e8:	00f987b3          	add	a5,s3,a5
   168ec:	0087b403          	ld	s0,8(a5)
   168f0:	ff078713          	addi	a4,a5,-16
   168f4:	26e40c63          	beq	s0,a4,16b6c <_malloc_r+0x2e4>
   168f8:	00843783          	ld	a5,8(s0)
   168fc:	01843683          	ld	a3,24(s0)
   16900:	01043603          	ld	a2,16(s0)
   16904:	ffc7f793          	andi	a5,a5,-4
   16908:	00f407b3          	add	a5,s0,a5
   1690c:	0087b703          	ld	a4,8(a5)
   16910:	00d63c23          	sd	a3,24(a2)
   16914:	00c6b823          	sd	a2,16(a3)
   16918:	00176713          	ori	a4,a4,1
   1691c:	00090513          	mv	a0,s2
   16920:	00e7b423          	sd	a4,8(a5)
   16924:	039000ef          	jal	ra,1715c <__malloc_unlock>
   16928:	01040513          	addi	a0,s0,16
   1692c:	20c0006f          	j	16b38 <_malloc_r+0x2b0>
   16930:	800007b7          	lui	a5,0x80000
   16934:	ff04f493          	andi	s1,s1,-16
   16938:	fff7c793          	not	a5,a5
   1693c:	1e97e863          	bltu	a5,s1,16b2c <_malloc_r+0x2a4>
   16940:	1eb4e663          	bltu	s1,a1,16b2c <_malloc_r+0x2a4>
   16944:	015000ef          	jal	ra,17158 <__malloc_lock>
   16948:	1f700793          	li	a5,503
   1694c:	4e97f063          	bgeu	a5,s1,16e2c <_malloc_r+0x5a4>
   16950:	0094d793          	srli	a5,s1,0x9
   16954:	34078663          	beqz	a5,16ca0 <_malloc_r+0x418>
   16958:	00400713          	li	a4,4
   1695c:	40f76663          	bltu	a4,a5,16d68 <_malloc_r+0x4e0>
   16960:	0064d793          	srli	a5,s1,0x6
   16964:	0397861b          	addiw	a2,a5,57
   16968:	0016169b          	slliw	a3,a2,0x1
   1696c:	0387851b          	addiw	a0,a5,56
   16970:	00369693          	slli	a3,a3,0x3
   16974:	000249b7          	lui	s3,0x24
   16978:	80098993          	addi	s3,s3,-2048 # 23800 <__malloc_av_>
   1697c:	00d986b3          	add	a3,s3,a3
   16980:	0086b403          	ld	s0,8(a3)
   16984:	ff068693          	addi	a3,a3,-16
   16988:	1e868863          	beq	a3,s0,16b78 <_malloc_r+0x2f0>
   1698c:	01f00593          	li	a1,31
   16990:	0100006f          	j	169a0 <_malloc_r+0x118>
   16994:	36075263          	bgez	a4,16cf8 <_malloc_r+0x470>
   16998:	01843403          	ld	s0,24(s0)
   1699c:	1c868e63          	beq	a3,s0,16b78 <_malloc_r+0x2f0>
   169a0:	00843783          	ld	a5,8(s0)
   169a4:	ffc7f793          	andi	a5,a5,-4
   169a8:	40978733          	sub	a4,a5,s1
   169ac:	fee5d4e3          	bge	a1,a4,16994 <_malloc_r+0x10c>
   169b0:	0209b403          	ld	s0,32(s3)
   169b4:	00024837          	lui	a6,0x24
   169b8:	81080813          	addi	a6,a6,-2032 # 23810 <__malloc_av_+0x10>
   169bc:	00050613          	mv	a2,a0
   169c0:	1d041463          	bne	s0,a6,16b88 <_malloc_r+0x300>
   169c4:	0089b783          	ld	a5,8(s3)
   169c8:	4026571b          	sraiw	a4,a2,0x2
   169cc:	00100593          	li	a1,1
   169d0:	00e595b3          	sll	a1,a1,a4
   169d4:	22b7f863          	bgeu	a5,a1,16c04 <_malloc_r+0x37c>
   169d8:	0109b403          	ld	s0,16(s3)
   169dc:	00843a03          	ld	s4,8(s0)
   169e0:	ffca7a93          	andi	s5,s4,-4
   169e4:	009ae863          	bltu	s5,s1,169f4 <_malloc_r+0x16c>
   169e8:	409a87b3          	sub	a5,s5,s1
   169ec:	01f00713          	li	a4,31
   169f0:	2ef74063          	blt	a4,a5,16cd0 <_malloc_r+0x448>
   169f4:	7801ba03          	ld	s4,1920(gp) # 24220 <__malloc_top_pad>
   169f8:	7601b703          	ld	a4,1888(gp) # 24200 <__malloc_sbrk_base>
   169fc:	fff00793          	li	a5,-1
   16a00:	01540c33          	add	s8,s0,s5
   16a04:	01448a33          	add	s4,s1,s4
   16a08:	4ef70663          	beq	a4,a5,16ef4 <_malloc_r+0x66c>
   16a0c:	000017b7          	lui	a5,0x1
   16a10:	01f78793          	addi	a5,a5,31 # 101f <register_fini-0xf091>
   16a14:	00fa0a33          	add	s4,s4,a5
   16a18:	fffff7b7          	lui	a5,0xfffff
   16a1c:	00fa7a33          	and	s4,s4,a5
   16a20:	000a0593          	mv	a1,s4
   16a24:	00090513          	mv	a0,s2
   16a28:	241010ef          	jal	ra,18468 <_sbrk_r>
   16a2c:	fff00793          	li	a5,-1
   16a30:	00050b13          	mv	s6,a0
   16a34:	42f50663          	beq	a0,a5,16e60 <_malloc_r+0x5d8>
   16a38:	43856263          	bltu	a0,s8,16e5c <_malloc_r+0x5d4>
   16a3c:	7d818b93          	addi	s7,gp,2008 # 24278 <__malloc_current_mallinfo>
   16a40:	000ba703          	lw	a4,0(s7)
   16a44:	014707bb          	addw	a5,a4,s4
   16a48:	00fba023          	sw	a5,0(s7)
   16a4c:	00078693          	mv	a3,a5
   16a50:	54ac0a63          	beq	s8,a0,16fa4 <_malloc_r+0x71c>
   16a54:	7601b703          	ld	a4,1888(gp) # 24200 <__malloc_sbrk_base>
   16a58:	fff00793          	li	a5,-1
   16a5c:	56f70263          	beq	a4,a5,16fc0 <_malloc_r+0x738>
   16a60:	418b07b3          	sub	a5,s6,s8
   16a64:	00d787bb          	addw	a5,a5,a3
   16a68:	00fba023          	sw	a5,0(s7)
   16a6c:	00fb7c13          	andi	s8,s6,15
   16a70:	4a0c0463          	beqz	s8,16f18 <_malloc_r+0x690>
   16a74:	00001737          	lui	a4,0x1
   16a78:	418b0b33          	sub	s6,s6,s8
   16a7c:	01070793          	addi	a5,a4,16 # 1010 <register_fini-0xf0a0>
   16a80:	010b0b13          	addi	s6,s6,16 # 1010 <register_fini-0xf0a0>
   16a84:	418787b3          	sub	a5,a5,s8
   16a88:	014b0cb3          	add	s9,s6,s4
   16a8c:	41978a33          	sub	s4,a5,s9
   16a90:	fff70713          	addi	a4,a4,-1
   16a94:	00ea7a33          	and	s4,s4,a4
   16a98:	000a0593          	mv	a1,s4
   16a9c:	00090513          	mv	a0,s2
   16aa0:	1c9010ef          	jal	ra,18468 <_sbrk_r>
   16aa4:	fff00793          	li	a5,-1
   16aa8:	56f50a63          	beq	a0,a5,1701c <_malloc_r+0x794>
   16aac:	41650533          	sub	a0,a0,s6
   16ab0:	000a071b          	sext.w	a4,s4
   16ab4:	01450a33          	add	s4,a0,s4
   16ab8:	000ba783          	lw	a5,0(s7)
   16abc:	0169b823          	sd	s6,16(s3)
   16ac0:	001a6a13          	ori	s4,s4,1
   16ac4:	00e787bb          	addw	a5,a5,a4
   16ac8:	00fba023          	sw	a5,0(s7)
   16acc:	014b3423          	sd	s4,8(s6)
   16ad0:	4f340c63          	beq	s0,s3,16fc8 <_malloc_r+0x740>
   16ad4:	01f00613          	li	a2,31
   16ad8:	4f567c63          	bgeu	a2,s5,16fd0 <_malloc_r+0x748>
   16adc:	00843683          	ld	a3,8(s0)
   16ae0:	fe8a8713          	addi	a4,s5,-24
   16ae4:	ff077713          	andi	a4,a4,-16
   16ae8:	0016f693          	andi	a3,a3,1
   16aec:	00e6e6b3          	or	a3,a3,a4
   16af0:	00d43423          	sd	a3,8(s0)
   16af4:	00900593          	li	a1,9
   16af8:	00e406b3          	add	a3,s0,a4
   16afc:	00b6b423          	sd	a1,8(a3)
   16b00:	00b6b823          	sd	a1,16(a3)
   16b04:	52e66663          	bltu	a2,a4,17030 <_malloc_r+0x7a8>
   16b08:	008b3a03          	ld	s4,8(s6)
   16b0c:	000b0413          	mv	s0,s6
   16b10:	7781b683          	ld	a3,1912(gp) # 24218 <__malloc_max_sbrked_mem>
   16b14:	00f6f463          	bgeu	a3,a5,16b1c <_malloc_r+0x294>
   16b18:	76f1bc23          	sd	a5,1912(gp) # 24218 <__malloc_max_sbrked_mem>
   16b1c:	7701b683          	ld	a3,1904(gp) # 24210 <__malloc_max_total_mem>
   16b20:	34f6f463          	bgeu	a3,a5,16e68 <_malloc_r+0x5e0>
   16b24:	76f1b823          	sd	a5,1904(gp) # 24210 <__malloc_max_total_mem>
   16b28:	3400006f          	j	16e68 <_malloc_r+0x5e0>
   16b2c:	00c00793          	li	a5,12
   16b30:	00f92023          	sw	a5,0(s2)
   16b34:	00000513          	li	a0,0
   16b38:	05813083          	ld	ra,88(sp)
   16b3c:	05013403          	ld	s0,80(sp)
   16b40:	04813483          	ld	s1,72(sp)
   16b44:	04013903          	ld	s2,64(sp)
   16b48:	03813983          	ld	s3,56(sp)
   16b4c:	03013a03          	ld	s4,48(sp)
   16b50:	02813a83          	ld	s5,40(sp)
   16b54:	02013b03          	ld	s6,32(sp)
   16b58:	01813b83          	ld	s7,24(sp)
   16b5c:	01013c03          	ld	s8,16(sp)
   16b60:	00813c83          	ld	s9,8(sp)
   16b64:	06010113          	addi	sp,sp,96
   16b68:	00008067          	ret
   16b6c:	0187b403          	ld	s0,24(a5) # fffffffffffff018 <__BSS_END__+0xfffffffffffdad78>
   16b70:	0026061b          	addiw	a2,a2,2
   16b74:	d88792e3          	bne	a5,s0,168f8 <_malloc_r+0x70>
   16b78:	0209b403          	ld	s0,32(s3)
   16b7c:	00024837          	lui	a6,0x24
   16b80:	81080813          	addi	a6,a6,-2032 # 23810 <__malloc_av_+0x10>
   16b84:	e50400e3          	beq	s0,a6,169c4 <_malloc_r+0x13c>
   16b88:	00843783          	ld	a5,8(s0)
   16b8c:	01f00693          	li	a3,31
   16b90:	ffc7f793          	andi	a5,a5,-4
   16b94:	40978733          	sub	a4,a5,s1
   16b98:	24e6cc63          	blt	a3,a4,16df0 <_malloc_r+0x568>
   16b9c:	0309b423          	sd	a6,40(s3)
   16ba0:	0309b023          	sd	a6,32(s3)
   16ba4:	10075663          	bgez	a4,16cb0 <_malloc_r+0x428>
   16ba8:	1ff00713          	li	a4,511
   16bac:	14f76c63          	bltu	a4,a5,16d04 <_malloc_r+0x47c>
   16bb0:	0037d793          	srli	a5,a5,0x3
   16bb4:	0017871b          	addiw	a4,a5,1
   16bb8:	0017171b          	slliw	a4,a4,0x1
   16bbc:	00371713          	slli	a4,a4,0x3
   16bc0:	0089b503          	ld	a0,8(s3)
   16bc4:	00e98733          	add	a4,s3,a4
   16bc8:	00073583          	ld	a1,0(a4)
   16bcc:	4027d69b          	sraiw	a3,a5,0x2
   16bd0:	00100793          	li	a5,1
   16bd4:	00d797b3          	sll	a5,a5,a3
   16bd8:	00a7e7b3          	or	a5,a5,a0
   16bdc:	ff070693          	addi	a3,a4,-16
   16be0:	00d43c23          	sd	a3,24(s0)
   16be4:	00b43823          	sd	a1,16(s0)
   16be8:	00f9b423          	sd	a5,8(s3)
   16bec:	00873023          	sd	s0,0(a4)
   16bf0:	0085bc23          	sd	s0,24(a1)
   16bf4:	4026571b          	sraiw	a4,a2,0x2
   16bf8:	00100593          	li	a1,1
   16bfc:	00e595b3          	sll	a1,a1,a4
   16c00:	dcb7ece3          	bltu	a5,a1,169d8 <_malloc_r+0x150>
   16c04:	00f5f733          	and	a4,a1,a5
   16c08:	02071463          	bnez	a4,16c30 <_malloc_r+0x3a8>
   16c0c:	00159593          	slli	a1,a1,0x1
   16c10:	ffc67613          	andi	a2,a2,-4
   16c14:	00f5f733          	and	a4,a1,a5
   16c18:	0046061b          	addiw	a2,a2,4
   16c1c:	00071a63          	bnez	a4,16c30 <_malloc_r+0x3a8>
   16c20:	00159593          	slli	a1,a1,0x1
   16c24:	00f5f733          	and	a4,a1,a5
   16c28:	0046061b          	addiw	a2,a2,4
   16c2c:	fe070ae3          	beqz	a4,16c20 <_malloc_r+0x398>
   16c30:	01f00893          	li	a7,31
   16c34:	0016031b          	addiw	t1,a2,1
   16c38:	0013131b          	slliw	t1,t1,0x1
   16c3c:	00331313          	slli	t1,t1,0x3
   16c40:	ff030313          	addi	t1,t1,-16
   16c44:	00698333          	add	t1,s3,t1
   16c48:	00030513          	mv	a0,t1
   16c4c:	01853783          	ld	a5,24(a0)
   16c50:	00060e13          	mv	t3,a2
   16c54:	12f50e63          	beq	a0,a5,16d90 <_malloc_r+0x508>
   16c58:	0087b703          	ld	a4,8(a5)
   16c5c:	00078413          	mv	s0,a5
   16c60:	0187b783          	ld	a5,24(a5)
   16c64:	ffc77713          	andi	a4,a4,-4
   16c68:	409706b3          	sub	a3,a4,s1
   16c6c:	12d8ce63          	blt	a7,a3,16da8 <_malloc_r+0x520>
   16c70:	fe06c2e3          	bltz	a3,16c54 <_malloc_r+0x3cc>
   16c74:	00e40733          	add	a4,s0,a4
   16c78:	00873683          	ld	a3,8(a4)
   16c7c:	01043603          	ld	a2,16(s0)
   16c80:	00090513          	mv	a0,s2
   16c84:	0016e693          	ori	a3,a3,1
   16c88:	00d73423          	sd	a3,8(a4)
   16c8c:	00f63c23          	sd	a5,24(a2)
   16c90:	00c7b823          	sd	a2,16(a5)
   16c94:	4c8000ef          	jal	ra,1715c <__malloc_unlock>
   16c98:	01040513          	addi	a0,s0,16
   16c9c:	e9dff06f          	j	16b38 <_malloc_r+0x2b0>
   16ca0:	40000693          	li	a3,1024
   16ca4:	04000613          	li	a2,64
   16ca8:	03f00513          	li	a0,63
   16cac:	cc9ff06f          	j	16974 <_malloc_r+0xec>
   16cb0:	00f407b3          	add	a5,s0,a5
   16cb4:	0087b703          	ld	a4,8(a5)
   16cb8:	00090513          	mv	a0,s2
   16cbc:	00176713          	ori	a4,a4,1
   16cc0:	00e7b423          	sd	a4,8(a5)
   16cc4:	498000ef          	jal	ra,1715c <__malloc_unlock>
   16cc8:	01040513          	addi	a0,s0,16
   16ccc:	e6dff06f          	j	16b38 <_malloc_r+0x2b0>
   16cd0:	0014e713          	ori	a4,s1,1
   16cd4:	00e43423          	sd	a4,8(s0)
   16cd8:	009404b3          	add	s1,s0,s1
   16cdc:	0099b823          	sd	s1,16(s3)
   16ce0:	0017e793          	ori	a5,a5,1
   16ce4:	00090513          	mv	a0,s2
   16ce8:	00f4b423          	sd	a5,8(s1)
   16cec:	470000ef          	jal	ra,1715c <__malloc_unlock>
   16cf0:	01040513          	addi	a0,s0,16
   16cf4:	e45ff06f          	j	16b38 <_malloc_r+0x2b0>
   16cf8:	01843683          	ld	a3,24(s0)
   16cfc:	01043603          	ld	a2,16(s0)
   16d00:	c09ff06f          	j	16908 <_malloc_r+0x80>
   16d04:	0097d713          	srli	a4,a5,0x9
   16d08:	00400693          	li	a3,4
   16d0c:	12e6fc63          	bgeu	a3,a4,16e44 <_malloc_r+0x5bc>
   16d10:	01400693          	li	a3,20
   16d14:	22e6ee63          	bltu	a3,a4,16f50 <_malloc_r+0x6c8>
   16d18:	05c7059b          	addiw	a1,a4,92
   16d1c:	0015959b          	slliw	a1,a1,0x1
   16d20:	05b7069b          	addiw	a3,a4,91
   16d24:	00359593          	slli	a1,a1,0x3
   16d28:	00b985b3          	add	a1,s3,a1
   16d2c:	0005b703          	ld	a4,0(a1)
   16d30:	ff058593          	addi	a1,a1,-16
   16d34:	1ce58463          	beq	a1,a4,16efc <_malloc_r+0x674>
   16d38:	00873683          	ld	a3,8(a4)
   16d3c:	ffc6f693          	andi	a3,a3,-4
   16d40:	00d7f663          	bgeu	a5,a3,16d4c <_malloc_r+0x4c4>
   16d44:	01073703          	ld	a4,16(a4)
   16d48:	fee598e3          	bne	a1,a4,16d38 <_malloc_r+0x4b0>
   16d4c:	01873583          	ld	a1,24(a4)
   16d50:	0089b783          	ld	a5,8(s3)
   16d54:	00b43c23          	sd	a1,24(s0)
   16d58:	00e43823          	sd	a4,16(s0)
   16d5c:	0085b823          	sd	s0,16(a1)
   16d60:	00873c23          	sd	s0,24(a4)
   16d64:	e91ff06f          	j	16bf4 <_malloc_r+0x36c>
   16d68:	01400713          	li	a4,20
   16d6c:	12f77063          	bgeu	a4,a5,16e8c <_malloc_r+0x604>
   16d70:	05400713          	li	a4,84
   16d74:	1ef76e63          	bltu	a4,a5,16f70 <_malloc_r+0x6e8>
   16d78:	00c4d793          	srli	a5,s1,0xc
   16d7c:	06f7861b          	addiw	a2,a5,111
   16d80:	0016169b          	slliw	a3,a2,0x1
   16d84:	06e7851b          	addiw	a0,a5,110
   16d88:	00369693          	slli	a3,a3,0x3
   16d8c:	be9ff06f          	j	16974 <_malloc_r+0xec>
   16d90:	001e0e1b          	addiw	t3,t3,1
   16d94:	003e7793          	andi	a5,t3,3
   16d98:	01050513          	addi	a0,a0,16
   16d9c:	10078863          	beqz	a5,16eac <_malloc_r+0x624>
   16da0:	01853783          	ld	a5,24(a0)
   16da4:	eb1ff06f          	j	16c54 <_malloc_r+0x3cc>
   16da8:	01043603          	ld	a2,16(s0)
   16dac:	0014e593          	ori	a1,s1,1
   16db0:	00b43423          	sd	a1,8(s0)
   16db4:	00f63c23          	sd	a5,24(a2)
   16db8:	00c7b823          	sd	a2,16(a5)
   16dbc:	009404b3          	add	s1,s0,s1
   16dc0:	0299b423          	sd	s1,40(s3)
   16dc4:	0299b023          	sd	s1,32(s3)
   16dc8:	0016e793          	ori	a5,a3,1
   16dcc:	0104bc23          	sd	a6,24(s1)
   16dd0:	0104b823          	sd	a6,16(s1)
   16dd4:	00f4b423          	sd	a5,8(s1)
   16dd8:	00e40733          	add	a4,s0,a4
   16ddc:	00090513          	mv	a0,s2
   16de0:	00d73023          	sd	a3,0(a4)
   16de4:	378000ef          	jal	ra,1715c <__malloc_unlock>
   16de8:	01040513          	addi	a0,s0,16
   16dec:	d4dff06f          	j	16b38 <_malloc_r+0x2b0>
   16df0:	0014e693          	ori	a3,s1,1
   16df4:	00d43423          	sd	a3,8(s0)
   16df8:	009404b3          	add	s1,s0,s1
   16dfc:	0299b423          	sd	s1,40(s3)
   16e00:	0299b023          	sd	s1,32(s3)
   16e04:	00176693          	ori	a3,a4,1
   16e08:	0104bc23          	sd	a6,24(s1)
   16e0c:	0104b823          	sd	a6,16(s1)
   16e10:	00d4b423          	sd	a3,8(s1)
   16e14:	00f407b3          	add	a5,s0,a5
   16e18:	00090513          	mv	a0,s2
   16e1c:	00e7b023          	sd	a4,0(a5)
   16e20:	33c000ef          	jal	ra,1715c <__malloc_unlock>
   16e24:	01040513          	addi	a0,s0,16
   16e28:	d11ff06f          	j	16b38 <_malloc_r+0x2b0>
   16e2c:	0034d613          	srli	a2,s1,0x3
   16e30:	0016079b          	addiw	a5,a2,1
   16e34:	0017979b          	slliw	a5,a5,0x1
   16e38:	0006061b          	sext.w	a2,a2
   16e3c:	00379793          	slli	a5,a5,0x3
   16e40:	aa1ff06f          	j	168e0 <_malloc_r+0x58>
   16e44:	0067d713          	srli	a4,a5,0x6
   16e48:	0397059b          	addiw	a1,a4,57
   16e4c:	0015959b          	slliw	a1,a1,0x1
   16e50:	0387069b          	addiw	a3,a4,56
   16e54:	00359593          	slli	a1,a1,0x3
   16e58:	ed1ff06f          	j	16d28 <_malloc_r+0x4a0>
   16e5c:	13340a63          	beq	s0,s3,16f90 <_malloc_r+0x708>
   16e60:	0109b403          	ld	s0,16(s3)
   16e64:	00843a03          	ld	s4,8(s0)
   16e68:	ffca7a13          	andi	s4,s4,-4
   16e6c:	409a07b3          	sub	a5,s4,s1
   16e70:	009a6663          	bltu	s4,s1,16e7c <_malloc_r+0x5f4>
   16e74:	01f00713          	li	a4,31
   16e78:	e4f74ce3          	blt	a4,a5,16cd0 <_malloc_r+0x448>
   16e7c:	00090513          	mv	a0,s2
   16e80:	2dc000ef          	jal	ra,1715c <__malloc_unlock>
   16e84:	00000513          	li	a0,0
   16e88:	cb1ff06f          	j	16b38 <_malloc_r+0x2b0>
   16e8c:	05c7861b          	addiw	a2,a5,92
   16e90:	0016169b          	slliw	a3,a2,0x1
   16e94:	05b7851b          	addiw	a0,a5,91
   16e98:	00369693          	slli	a3,a3,0x3
   16e9c:	ad9ff06f          	j	16974 <_malloc_r+0xec>
   16ea0:	01033783          	ld	a5,16(t1)
   16ea4:	fff6061b          	addiw	a2,a2,-1
   16ea8:	1e679063          	bne	a5,t1,17088 <_malloc_r+0x800>
   16eac:	00367793          	andi	a5,a2,3
   16eb0:	ff030313          	addi	t1,t1,-16
   16eb4:	fe0796e3          	bnez	a5,16ea0 <_malloc_r+0x618>
   16eb8:	0089b703          	ld	a4,8(s3)
   16ebc:	fff5c793          	not	a5,a1
   16ec0:	00e7f7b3          	and	a5,a5,a4
   16ec4:	00f9b423          	sd	a5,8(s3)
   16ec8:	00159593          	slli	a1,a1,0x1
   16ecc:	b0b7e6e3          	bltu	a5,a1,169d8 <_malloc_r+0x150>
   16ed0:	b00584e3          	beqz	a1,169d8 <_malloc_r+0x150>
   16ed4:	00f5f733          	and	a4,a1,a5
   16ed8:	00071a63          	bnez	a4,16eec <_malloc_r+0x664>
   16edc:	00159593          	slli	a1,a1,0x1
   16ee0:	00f5f733          	and	a4,a1,a5
   16ee4:	004e0e1b          	addiw	t3,t3,4
   16ee8:	fe070ae3          	beqz	a4,16edc <_malloc_r+0x654>
   16eec:	000e0613          	mv	a2,t3
   16ef0:	d45ff06f          	j	16c34 <_malloc_r+0x3ac>
   16ef4:	020a0a13          	addi	s4,s4,32
   16ef8:	b29ff06f          	j	16a20 <_malloc_r+0x198>
   16efc:	0089b503          	ld	a0,8(s3)
   16f00:	4026d69b          	sraiw	a3,a3,0x2
   16f04:	00100793          	li	a5,1
   16f08:	00d797b3          	sll	a5,a5,a3
   16f0c:	00a7e7b3          	or	a5,a5,a0
   16f10:	00f9b423          	sd	a5,8(s3)
   16f14:	e41ff06f          	j	16d54 <_malloc_r+0x4cc>
   16f18:	014b0c33          	add	s8,s6,s4
   16f1c:	41800c33          	neg	s8,s8
   16f20:	034c1c13          	slli	s8,s8,0x34
   16f24:	034c5c13          	srli	s8,s8,0x34
   16f28:	000c0593          	mv	a1,s8
   16f2c:	00090513          	mv	a0,s2
   16f30:	538010ef          	jal	ra,18468 <_sbrk_r>
   16f34:	fff00793          	li	a5,-1
   16f38:	00000713          	li	a4,0
   16f3c:	b6f50ee3          	beq	a0,a5,16ab8 <_malloc_r+0x230>
   16f40:	41650533          	sub	a0,a0,s6
   16f44:	000c071b          	sext.w	a4,s8
   16f48:	01850a33          	add	s4,a0,s8
   16f4c:	b6dff06f          	j	16ab8 <_malloc_r+0x230>
   16f50:	05400693          	li	a3,84
   16f54:	08e6e463          	bltu	a3,a4,16fdc <_malloc_r+0x754>
   16f58:	00c7d713          	srli	a4,a5,0xc
   16f5c:	06f7059b          	addiw	a1,a4,111
   16f60:	0015959b          	slliw	a1,a1,0x1
   16f64:	06e7069b          	addiw	a3,a4,110
   16f68:	00359593          	slli	a1,a1,0x3
   16f6c:	dbdff06f          	j	16d28 <_malloc_r+0x4a0>
   16f70:	15400713          	li	a4,340
   16f74:	08f76463          	bltu	a4,a5,16ffc <_malloc_r+0x774>
   16f78:	00f4d793          	srli	a5,s1,0xf
   16f7c:	0787861b          	addiw	a2,a5,120
   16f80:	0016169b          	slliw	a3,a2,0x1
   16f84:	0777851b          	addiw	a0,a5,119
   16f88:	00369693          	slli	a3,a3,0x3
   16f8c:	9e9ff06f          	j	16974 <_malloc_r+0xec>
   16f90:	7d818b93          	addi	s7,gp,2008 # 24278 <__malloc_current_mallinfo>
   16f94:	000ba783          	lw	a5,0(s7)
   16f98:	014786bb          	addw	a3,a5,s4
   16f9c:	00dba023          	sw	a3,0(s7)
   16fa0:	ab5ff06f          	j	16a54 <_malloc_r+0x1cc>
   16fa4:	034c1713          	slli	a4,s8,0x34
   16fa8:	aa0716e3          	bnez	a4,16a54 <_malloc_r+0x1cc>
   16fac:	0109b403          	ld	s0,16(s3)
   16fb0:	014a8a33          	add	s4,s5,s4
   16fb4:	001a6a13          	ori	s4,s4,1
   16fb8:	01443423          	sd	s4,8(s0)
   16fbc:	b55ff06f          	j	16b10 <_malloc_r+0x288>
   16fc0:	7761b023          	sd	s6,1888(gp) # 24200 <__malloc_sbrk_base>
   16fc4:	aa9ff06f          	j	16a6c <_malloc_r+0x1e4>
   16fc8:	000b0413          	mv	s0,s6
   16fcc:	b45ff06f          	j	16b10 <_malloc_r+0x288>
   16fd0:	00100793          	li	a5,1
   16fd4:	00fb3423          	sd	a5,8(s6)
   16fd8:	ea5ff06f          	j	16e7c <_malloc_r+0x5f4>
   16fdc:	15400693          	li	a3,340
   16fe0:	06e6e663          	bltu	a3,a4,1704c <_malloc_r+0x7c4>
   16fe4:	00f7d713          	srli	a4,a5,0xf
   16fe8:	0787059b          	addiw	a1,a4,120
   16fec:	0015959b          	slliw	a1,a1,0x1
   16ff0:	0777069b          	addiw	a3,a4,119
   16ff4:	00359593          	slli	a1,a1,0x3
   16ff8:	d31ff06f          	j	16d28 <_malloc_r+0x4a0>
   16ffc:	55400713          	li	a4,1364
   17000:	06f76663          	bltu	a4,a5,1706c <_malloc_r+0x7e4>
   17004:	0124d793          	srli	a5,s1,0x12
   17008:	07d7861b          	addiw	a2,a5,125
   1700c:	0016169b          	slliw	a3,a2,0x1
   17010:	07c7851b          	addiw	a0,a5,124
   17014:	00369693          	slli	a3,a3,0x3
   17018:	95dff06f          	j	16974 <_malloc_r+0xec>
   1701c:	ff0c0c13          	addi	s8,s8,-16
   17020:	018c8a33          	add	s4,s9,s8
   17024:	416a0a33          	sub	s4,s4,s6
   17028:	00000713          	li	a4,0
   1702c:	a8dff06f          	j	16ab8 <_malloc_r+0x230>
   17030:	01040593          	addi	a1,s0,16
   17034:	00090513          	mv	a0,s2
   17038:	d44fc0ef          	jal	ra,1357c <_free_r>
   1703c:	0109b403          	ld	s0,16(s3)
   17040:	000ba783          	lw	a5,0(s7)
   17044:	00843a03          	ld	s4,8(s0)
   17048:	ac9ff06f          	j	16b10 <_malloc_r+0x288>
   1704c:	55400693          	li	a3,1364
   17050:	02e6e663          	bltu	a3,a4,1707c <_malloc_r+0x7f4>
   17054:	0127d713          	srli	a4,a5,0x12
   17058:	07d7059b          	addiw	a1,a4,125
   1705c:	0015959b          	slliw	a1,a1,0x1
   17060:	07c7069b          	addiw	a3,a4,124
   17064:	00359593          	slli	a1,a1,0x3
   17068:	cc1ff06f          	j	16d28 <_malloc_r+0x4a0>
   1706c:	7f000693          	li	a3,2032
   17070:	07f00613          	li	a2,127
   17074:	07e00513          	li	a0,126
   17078:	8fdff06f          	j	16974 <_malloc_r+0xec>
   1707c:	7f000593          	li	a1,2032
   17080:	07e00693          	li	a3,126
   17084:	ca5ff06f          	j	16d28 <_malloc_r+0x4a0>
   17088:	0089b783          	ld	a5,8(s3)
   1708c:	e3dff06f          	j	16ec8 <_malloc_r+0x640>

0000000000017090 <memchr>:
   17090:	00757793          	andi	a5,a0,7
   17094:	0ff5f693          	zext.b	a3,a1
   17098:	02078a63          	beqz	a5,170cc <memchr+0x3c>
   1709c:	fff60793          	addi	a5,a2,-1
   170a0:	02060e63          	beqz	a2,170dc <memchr+0x4c>
   170a4:	fff00613          	li	a2,-1
   170a8:	0180006f          	j	170c0 <memchr+0x30>
   170ac:	00150513          	addi	a0,a0,1
   170b0:	00757713          	andi	a4,a0,7
   170b4:	00070e63          	beqz	a4,170d0 <memchr+0x40>
   170b8:	fff78793          	addi	a5,a5,-1
   170bc:	02c78063          	beq	a5,a2,170dc <memchr+0x4c>
   170c0:	00054703          	lbu	a4,0(a0)
   170c4:	fed714e3          	bne	a4,a3,170ac <memchr+0x1c>
   170c8:	00008067          	ret
   170cc:	00060793          	mv	a5,a2
   170d0:	00700713          	li	a4,7
   170d4:	02f76663          	bltu	a4,a5,17100 <memchr+0x70>
   170d8:	00079663          	bnez	a5,170e4 <memchr+0x54>
   170dc:	00000513          	li	a0,0
   170e0:	00008067          	ret
   170e4:	00f507b3          	add	a5,a0,a5
   170e8:	00c0006f          	j	170f4 <memchr+0x64>
   170ec:	00150513          	addi	a0,a0,1
   170f0:	fea786e3          	beq	a5,a0,170dc <memchr+0x4c>
   170f4:	00054703          	lbu	a4,0(a0)
   170f8:	fed71ae3          	bne	a4,a3,170ec <memchr+0x5c>
   170fc:	00008067          	ret
   17100:	0ff5f593          	zext.b	a1,a1
   17104:	00859713          	slli	a4,a1,0x8
   17108:	00b765b3          	or	a1,a4,a1
   1710c:	01059713          	slli	a4,a1,0x10
   17110:	7181b883          	ld	a7,1816(gp) # 241b8 <__SDATA_BEGIN__>
   17114:	00b76733          	or	a4,a4,a1
   17118:	7201b803          	ld	a6,1824(gp) # 241c0 <__SDATA_BEGIN__+0x8>
   1711c:	02071593          	slli	a1,a4,0x20
   17120:	00e5e5b3          	or	a1,a1,a4
   17124:	00700313          	li	t1,7
   17128:	00053703          	ld	a4,0(a0)
   1712c:	00e5c733          	xor	a4,a1,a4
   17130:	01170633          	add	a2,a4,a7
   17134:	fff74713          	not	a4,a4
   17138:	00e67733          	and	a4,a2,a4
   1713c:	01077733          	and	a4,a4,a6
   17140:	fa0712e3          	bnez	a4,170e4 <memchr+0x54>
   17144:	ff878793          	addi	a5,a5,-8
   17148:	00850513          	addi	a0,a0,8
   1714c:	fcf36ee3          	bltu	t1,a5,17128 <memchr+0x98>
   17150:	f8079ae3          	bnez	a5,170e4 <memchr+0x54>
   17154:	f89ff06f          	j	170dc <memchr+0x4c>

0000000000017158 <__malloc_lock>:
   17158:	00008067          	ret

000000000001715c <__malloc_unlock>:
   1715c:	00008067          	ret

0000000000017160 <_Balloc>:
   17160:	07853783          	ld	a5,120(a0)
   17164:	fe010113          	addi	sp,sp,-32
   17168:	00813823          	sd	s0,16(sp)
   1716c:	00913423          	sd	s1,8(sp)
   17170:	00113c23          	sd	ra,24(sp)
   17174:	01213023          	sd	s2,0(sp)
   17178:	00050413          	mv	s0,a0
   1717c:	00058493          	mv	s1,a1
   17180:	02078c63          	beqz	a5,171b8 <_Balloc+0x58>
   17184:	00349513          	slli	a0,s1,0x3
   17188:	00a787b3          	add	a5,a5,a0
   1718c:	0007b503          	ld	a0,0(a5)
   17190:	04050463          	beqz	a0,171d8 <_Balloc+0x78>
   17194:	00053703          	ld	a4,0(a0)
   17198:	00e7b023          	sd	a4,0(a5)
   1719c:	00053823          	sd	zero,16(a0)
   171a0:	01813083          	ld	ra,24(sp)
   171a4:	01013403          	ld	s0,16(sp)
   171a8:	00813483          	ld	s1,8(sp)
   171ac:	00013903          	ld	s2,0(sp)
   171b0:	02010113          	addi	sp,sp,32
   171b4:	00008067          	ret
   171b8:	04100613          	li	a2,65
   171bc:	00800593          	li	a1,8
   171c0:	104050ef          	jal	ra,1c2c4 <_calloc_r>
   171c4:	06a43c23          	sd	a0,120(s0)
   171c8:	00050793          	mv	a5,a0
   171cc:	fa051ce3          	bnez	a0,17184 <_Balloc+0x24>
   171d0:	00000513          	li	a0,0
   171d4:	fcdff06f          	j	171a0 <_Balloc+0x40>
   171d8:	00100913          	li	s2,1
   171dc:	0099163b          	sllw	a2,s2,s1
   171e0:	00060913          	mv	s2,a2
   171e4:	00760613          	addi	a2,a2,7
   171e8:	00261613          	slli	a2,a2,0x2
   171ec:	00100593          	li	a1,1
   171f0:	00040513          	mv	a0,s0
   171f4:	0d0050ef          	jal	ra,1c2c4 <_calloc_r>
   171f8:	fc050ce3          	beqz	a0,171d0 <_Balloc+0x70>
   171fc:	00952423          	sw	s1,8(a0)
   17200:	01252623          	sw	s2,12(a0)
   17204:	f99ff06f          	j	1719c <_Balloc+0x3c>

0000000000017208 <_Bfree>:
   17208:	02058063          	beqz	a1,17228 <_Bfree+0x20>
   1720c:	0085a703          	lw	a4,8(a1)
   17210:	07853783          	ld	a5,120(a0)
   17214:	00371713          	slli	a4,a4,0x3
   17218:	00e787b3          	add	a5,a5,a4
   1721c:	0007b703          	ld	a4,0(a5)
   17220:	00e5b023          	sd	a4,0(a1)
   17224:	00b7b023          	sd	a1,0(a5)
   17228:	00008067          	ret

000000000001722c <__multadd>:
   1722c:	fd010113          	addi	sp,sp,-48
   17230:	00913c23          	sd	s1,24(sp)
   17234:	0145a483          	lw	s1,20(a1)
   17238:	00010337          	lui	t1,0x10
   1723c:	02813023          	sd	s0,32(sp)
   17240:	01213823          	sd	s2,16(sp)
   17244:	01313423          	sd	s3,8(sp)
   17248:	02113423          	sd	ra,40(sp)
   1724c:	01413023          	sd	s4,0(sp)
   17250:	00058913          	mv	s2,a1
   17254:	00050993          	mv	s3,a0
   17258:	00068413          	mv	s0,a3
   1725c:	01858813          	addi	a6,a1,24
   17260:	00000893          	li	a7,0
   17264:	fff30313          	addi	t1,t1,-1 # ffff <register_fini-0xb1>
   17268:	00082783          	lw	a5,0(a6)
   1726c:	00480813          	addi	a6,a6,4
   17270:	0018889b          	addiw	a7,a7,1
   17274:	0067f6b3          	and	a3,a5,t1
   17278:	02c686bb          	mulw	a3,a3,a2
   1727c:	0107d79b          	srliw	a5,a5,0x10
   17280:	02c787bb          	mulw	a5,a5,a2
   17284:	008686bb          	addw	a3,a3,s0
   17288:	0106de1b          	srliw	t3,a3,0x10
   1728c:	00d37733          	and	a4,t1,a3
   17290:	01c786bb          	addw	a3,a5,t3
   17294:	0106979b          	slliw	a5,a3,0x10
   17298:	00e7873b          	addw	a4,a5,a4
   1729c:	fee82e23          	sw	a4,-4(a6)
   172a0:	0106d41b          	srliw	s0,a3,0x10
   172a4:	fc98c2e3          	blt	a7,s1,17268 <__multadd+0x3c>
   172a8:	02040263          	beqz	s0,172cc <__multadd+0xa0>
   172ac:	00c92783          	lw	a5,12(s2)
   172b0:	04f4d063          	bge	s1,a5,172f0 <__multadd+0xc4>
   172b4:	00448793          	addi	a5,s1,4
   172b8:	00279793          	slli	a5,a5,0x2
   172bc:	00f907b3          	add	a5,s2,a5
   172c0:	0087a423          	sw	s0,8(a5)
   172c4:	0014849b          	addiw	s1,s1,1
   172c8:	00992a23          	sw	s1,20(s2)
   172cc:	02813083          	ld	ra,40(sp)
   172d0:	02013403          	ld	s0,32(sp)
   172d4:	01813483          	ld	s1,24(sp)
   172d8:	00813983          	ld	s3,8(sp)
   172dc:	00013a03          	ld	s4,0(sp)
   172e0:	00090513          	mv	a0,s2
   172e4:	01013903          	ld	s2,16(sp)
   172e8:	03010113          	addi	sp,sp,48
   172ec:	00008067          	ret
   172f0:	00892583          	lw	a1,8(s2)
   172f4:	00098513          	mv	a0,s3
   172f8:	0015859b          	addiw	a1,a1,1
   172fc:	e65ff0ef          	jal	ra,17160 <_Balloc>
   17300:	00050a13          	mv	s4,a0
   17304:	04050c63          	beqz	a0,1735c <__multadd+0x130>
   17308:	01492603          	lw	a2,20(s2)
   1730c:	01090593          	addi	a1,s2,16
   17310:	01050513          	addi	a0,a0,16
   17314:	00260613          	addi	a2,a2,2
   17318:	00261613          	slli	a2,a2,0x2
   1731c:	435050ef          	jal	ra,1cf50 <memcpy>
   17320:	00892703          	lw	a4,8(s2)
   17324:	0789b783          	ld	a5,120(s3)
   17328:	00371713          	slli	a4,a4,0x3
   1732c:	00e787b3          	add	a5,a5,a4
   17330:	0007b703          	ld	a4,0(a5)
   17334:	00e93023          	sd	a4,0(s2)
   17338:	0127b023          	sd	s2,0(a5)
   1733c:	00448793          	addi	a5,s1,4
   17340:	000a0913          	mv	s2,s4
   17344:	00279793          	slli	a5,a5,0x2
   17348:	00f907b3          	add	a5,s2,a5
   1734c:	0087a423          	sw	s0,8(a5)
   17350:	0014849b          	addiw	s1,s1,1
   17354:	00992a23          	sw	s1,20(s2)
   17358:	f75ff06f          	j	172cc <__multadd+0xa0>
   1735c:	000216b7          	lui	a3,0x21
   17360:	00021537          	lui	a0,0x21
   17364:	50068693          	addi	a3,a3,1280 # 21500 <zeroes.0+0x78>
   17368:	00000613          	li	a2,0
   1736c:	0b500593          	li	a1,181
   17370:	7d850513          	addi	a0,a0,2008 # 217d8 <bmask+0x28>
   17374:	6e9040ef          	jal	ra,1c25c <__assert_func>

0000000000017378 <__s2b>:
   17378:	fc010113          	addi	sp,sp,-64
   1737c:	02813823          	sd	s0,48(sp)
   17380:	02913423          	sd	s1,40(sp)
   17384:	03213023          	sd	s2,32(sp)
   17388:	01313c23          	sd	s3,24(sp)
   1738c:	01413823          	sd	s4,16(sp)
   17390:	00068493          	mv	s1,a3
   17394:	00058413          	mv	s0,a1
   17398:	0086869b          	addiw	a3,a3,8
   1739c:	00900593          	li	a1,9
   173a0:	02113c23          	sd	ra,56(sp)
   173a4:	01513423          	sd	s5,8(sp)
   173a8:	01613023          	sd	s6,0(sp)
   173ac:	00900793          	li	a5,9
   173b0:	02b6c6bb          	divw	a3,a3,a1
   173b4:	00050913          	mv	s2,a0
   173b8:	00060993          	mv	s3,a2
   173bc:	00070a13          	mv	s4,a4
   173c0:	0e97dc63          	bge	a5,s1,174b8 <__s2b+0x140>
   173c4:	00100793          	li	a5,1
   173c8:	00000593          	li	a1,0
   173cc:	0017979b          	slliw	a5,a5,0x1
   173d0:	0015859b          	addiw	a1,a1,1
   173d4:	fed7cce3          	blt	a5,a3,173cc <__s2b+0x54>
   173d8:	00090513          	mv	a0,s2
   173dc:	d85ff0ef          	jal	ra,17160 <_Balloc>
   173e0:	00050593          	mv	a1,a0
   173e4:	0c050e63          	beqz	a0,174c0 <__s2b+0x148>
   173e8:	00100793          	li	a5,1
   173ec:	00f52a23          	sw	a5,20(a0)
   173f0:	01452c23          	sw	s4,24(a0)
   173f4:	00900793          	li	a5,9
   173f8:	0b37da63          	bge	a5,s3,174ac <__s2b+0x134>
   173fc:	02099793          	slli	a5,s3,0x20
   17400:	00940b13          	addi	s6,s0,9
   17404:	0207d793          	srli	a5,a5,0x20
   17408:	00098a9b          	sext.w	s5,s3
   1740c:	00f40433          	add	s0,s0,a5
   17410:	000b0a13          	mv	s4,s6
   17414:	000a4683          	lbu	a3,0(s4)
   17418:	00a00613          	li	a2,10
   1741c:	00090513          	mv	a0,s2
   17420:	fd06869b          	addiw	a3,a3,-48
   17424:	e09ff0ef          	jal	ra,1722c <__multadd>
   17428:	001a0a13          	addi	s4,s4,1
   1742c:	00050593          	mv	a1,a0
   17430:	fe8a12e3          	bne	s4,s0,17414 <__s2b+0x9c>
   17434:	ff8a841b          	addiw	s0,s5,-8
   17438:	02041413          	slli	s0,s0,0x20
   1743c:	02045413          	srli	s0,s0,0x20
   17440:	008b0433          	add	s0,s6,s0
   17444:	0299de63          	bge	s3,s1,17480 <__s2b+0x108>
   17448:	fff4849b          	addiw	s1,s1,-1
   1744c:	413484bb          	subw	s1,s1,s3
   17450:	02049493          	slli	s1,s1,0x20
   17454:	0204d493          	srli	s1,s1,0x20
   17458:	00148493          	addi	s1,s1,1
   1745c:	009404b3          	add	s1,s0,s1
   17460:	00044683          	lbu	a3,0(s0)
   17464:	00a00613          	li	a2,10
   17468:	00090513          	mv	a0,s2
   1746c:	fd06869b          	addiw	a3,a3,-48
   17470:	dbdff0ef          	jal	ra,1722c <__multadd>
   17474:	00140413          	addi	s0,s0,1
   17478:	00050593          	mv	a1,a0
   1747c:	fe9412e3          	bne	s0,s1,17460 <__s2b+0xe8>
   17480:	03813083          	ld	ra,56(sp)
   17484:	03013403          	ld	s0,48(sp)
   17488:	02813483          	ld	s1,40(sp)
   1748c:	02013903          	ld	s2,32(sp)
   17490:	01813983          	ld	s3,24(sp)
   17494:	01013a03          	ld	s4,16(sp)
   17498:	00813a83          	ld	s5,8(sp)
   1749c:	00013b03          	ld	s6,0(sp)
   174a0:	00058513          	mv	a0,a1
   174a4:	04010113          	addi	sp,sp,64
   174a8:	00008067          	ret
   174ac:	00a40413          	addi	s0,s0,10
   174b0:	00900993          	li	s3,9
   174b4:	f91ff06f          	j	17444 <__s2b+0xcc>
   174b8:	00000593          	li	a1,0
   174bc:	f1dff06f          	j	173d8 <__s2b+0x60>
   174c0:	000216b7          	lui	a3,0x21
   174c4:	00021537          	lui	a0,0x21
   174c8:	50068693          	addi	a3,a3,1280 # 21500 <zeroes.0+0x78>
   174cc:	00000613          	li	a2,0
   174d0:	0ce00593          	li	a1,206
   174d4:	7d850513          	addi	a0,a0,2008 # 217d8 <bmask+0x28>
   174d8:	585040ef          	jal	ra,1c25c <__assert_func>

00000000000174dc <__hi0bits>:
   174dc:	ffff0737          	lui	a4,0xffff0
   174e0:	00e57733          	and	a4,a0,a4
   174e4:	00050793          	mv	a5,a0
   174e8:	00000513          	li	a0,0
   174ec:	00071663          	bnez	a4,174f8 <__hi0bits+0x1c>
   174f0:	0107979b          	slliw	a5,a5,0x10
   174f4:	01000513          	li	a0,16
   174f8:	ff000737          	lui	a4,0xff000
   174fc:	00e7f733          	and	a4,a5,a4
   17500:	00071663          	bnez	a4,1750c <__hi0bits+0x30>
   17504:	0087979b          	slliw	a5,a5,0x8
   17508:	0085051b          	addiw	a0,a0,8
   1750c:	f0000737          	lui	a4,0xf0000
   17510:	00e7f733          	and	a4,a5,a4
   17514:	00071663          	bnez	a4,17520 <__hi0bits+0x44>
   17518:	0047979b          	slliw	a5,a5,0x4
   1751c:	0045051b          	addiw	a0,a0,4
   17520:	c0000737          	lui	a4,0xc0000
   17524:	00e7f733          	and	a4,a5,a4
   17528:	00071663          	bnez	a4,17534 <__hi0bits+0x58>
   1752c:	0027979b          	slliw	a5,a5,0x2
   17530:	0025051b          	addiw	a0,a0,2
   17534:	0007ca63          	bltz	a5,17548 <__hi0bits+0x6c>
   17538:	01e7d793          	srli	a5,a5,0x1e
   1753c:	0017f793          	andi	a5,a5,1
   17540:	0015051b          	addiw	a0,a0,1
   17544:	00078463          	beqz	a5,1754c <__hi0bits+0x70>
   17548:	00008067          	ret
   1754c:	02000513          	li	a0,32
   17550:	00008067          	ret

0000000000017554 <__lo0bits>:
   17554:	00052783          	lw	a5,0(a0)
   17558:	00050713          	mv	a4,a0
   1755c:	0077f693          	andi	a3,a5,7
   17560:	00078613          	mv	a2,a5
   17564:	02068463          	beqz	a3,1758c <__lo0bits+0x38>
   17568:	0017f693          	andi	a3,a5,1
   1756c:	00000513          	li	a0,0
   17570:	04069e63          	bnez	a3,175cc <__lo0bits+0x78>
   17574:	00267613          	andi	a2,a2,2
   17578:	0a060863          	beqz	a2,17628 <__lo0bits+0xd4>
   1757c:	0017d79b          	srliw	a5,a5,0x1
   17580:	00f72023          	sw	a5,0(a4) # ffffffffc0000000 <__BSS_END__+0xffffffffbffdbd60>
   17584:	00100513          	li	a0,1
   17588:	00008067          	ret
   1758c:	03079693          	slli	a3,a5,0x30
   17590:	0306d693          	srli	a3,a3,0x30
   17594:	00000513          	li	a0,0
   17598:	06068e63          	beqz	a3,17614 <__lo0bits+0xc0>
   1759c:	0ff7f693          	zext.b	a3,a5
   175a0:	06068063          	beqz	a3,17600 <__lo0bits+0xac>
   175a4:	00f7f693          	andi	a3,a5,15
   175a8:	04068263          	beqz	a3,175ec <__lo0bits+0x98>
   175ac:	0037f693          	andi	a3,a5,3
   175b0:	02068463          	beqz	a3,175d8 <__lo0bits+0x84>
   175b4:	0017f693          	andi	a3,a5,1
   175b8:	00069c63          	bnez	a3,175d0 <__lo0bits+0x7c>
   175bc:	0017d79b          	srliw	a5,a5,0x1
   175c0:	0015051b          	addiw	a0,a0,1
   175c4:	00079663          	bnez	a5,175d0 <__lo0bits+0x7c>
   175c8:	02000513          	li	a0,32
   175cc:	00008067          	ret
   175d0:	00f72023          	sw	a5,0(a4)
   175d4:	00008067          	ret
   175d8:	0027d79b          	srliw	a5,a5,0x2
   175dc:	0017f693          	andi	a3,a5,1
   175e0:	0025051b          	addiw	a0,a0,2
   175e4:	fe0696e3          	bnez	a3,175d0 <__lo0bits+0x7c>
   175e8:	fd5ff06f          	j	175bc <__lo0bits+0x68>
   175ec:	0047d79b          	srliw	a5,a5,0x4
   175f0:	0037f693          	andi	a3,a5,3
   175f4:	0045051b          	addiw	a0,a0,4
   175f8:	fa069ee3          	bnez	a3,175b4 <__lo0bits+0x60>
   175fc:	fddff06f          	j	175d8 <__lo0bits+0x84>
   17600:	0087d79b          	srliw	a5,a5,0x8
   17604:	00f7f693          	andi	a3,a5,15
   17608:	0085051b          	addiw	a0,a0,8
   1760c:	fa0690e3          	bnez	a3,175ac <__lo0bits+0x58>
   17610:	fddff06f          	j	175ec <__lo0bits+0x98>
   17614:	0107d79b          	srliw	a5,a5,0x10
   17618:	0ff7f693          	zext.b	a3,a5
   1761c:	01000513          	li	a0,16
   17620:	f80692e3          	bnez	a3,175a4 <__lo0bits+0x50>
   17624:	fddff06f          	j	17600 <__lo0bits+0xac>
   17628:	0027d79b          	srliw	a5,a5,0x2
   1762c:	00f72023          	sw	a5,0(a4)
   17630:	00200513          	li	a0,2
   17634:	00008067          	ret

0000000000017638 <__i2b>:
   17638:	07853783          	ld	a5,120(a0)
   1763c:	fe010113          	addi	sp,sp,-32
   17640:	00813823          	sd	s0,16(sp)
   17644:	00913423          	sd	s1,8(sp)
   17648:	00113c23          	sd	ra,24(sp)
   1764c:	00050413          	mv	s0,a0
   17650:	00058493          	mv	s1,a1
   17654:	02078c63          	beqz	a5,1768c <__i2b+0x54>
   17658:	0087b503          	ld	a0,8(a5)
   1765c:	06050263          	beqz	a0,176c0 <__i2b+0x88>
   17660:	00053703          	ld	a4,0(a0)
   17664:	00e7b423          	sd	a4,8(a5)
   17668:	01813083          	ld	ra,24(sp)
   1766c:	01013403          	ld	s0,16(sp)
   17670:	00100793          	li	a5,1
   17674:	02079793          	slli	a5,a5,0x20
   17678:	00952c23          	sw	s1,24(a0)
   1767c:	00f53823          	sd	a5,16(a0)
   17680:	00813483          	ld	s1,8(sp)
   17684:	02010113          	addi	sp,sp,32
   17688:	00008067          	ret
   1768c:	04100613          	li	a2,65
   17690:	00800593          	li	a1,8
   17694:	431040ef          	jal	ra,1c2c4 <_calloc_r>
   17698:	06a43c23          	sd	a0,120(s0)
   1769c:	00050793          	mv	a5,a0
   176a0:	fa051ce3          	bnez	a0,17658 <__i2b+0x20>
   176a4:	000216b7          	lui	a3,0x21
   176a8:	00021537          	lui	a0,0x21
   176ac:	50068693          	addi	a3,a3,1280 # 21500 <zeroes.0+0x78>
   176b0:	00000613          	li	a2,0
   176b4:	14000593          	li	a1,320
   176b8:	7d850513          	addi	a0,a0,2008 # 217d8 <bmask+0x28>
   176bc:	3a1040ef          	jal	ra,1c25c <__assert_func>
   176c0:	02400613          	li	a2,36
   176c4:	00100593          	li	a1,1
   176c8:	00040513          	mv	a0,s0
   176cc:	3f9040ef          	jal	ra,1c2c4 <_calloc_r>
   176d0:	fc050ae3          	beqz	a0,176a4 <__i2b+0x6c>
   176d4:	00100793          	li	a5,1
   176d8:	02179793          	slli	a5,a5,0x21
   176dc:	00178793          	addi	a5,a5,1
   176e0:	00f53423          	sd	a5,8(a0)
   176e4:	f85ff06f          	j	17668 <__i2b+0x30>

00000000000176e8 <__multiply>:
   176e8:	fd010113          	addi	sp,sp,-48
   176ec:	01213823          	sd	s2,16(sp)
   176f0:	01313423          	sd	s3,8(sp)
   176f4:	01462903          	lw	s2,20(a2)
   176f8:	0145a983          	lw	s3,20(a1)
   176fc:	00913c23          	sd	s1,24(sp)
   17700:	01413023          	sd	s4,0(sp)
   17704:	02113423          	sd	ra,40(sp)
   17708:	02813023          	sd	s0,32(sp)
   1770c:	00058a13          	mv	s4,a1
   17710:	00060493          	mv	s1,a2
   17714:	0129cc63          	blt	s3,s2,1772c <__multiply+0x44>
   17718:	00090793          	mv	a5,s2
   1771c:	00058493          	mv	s1,a1
   17720:	00098913          	mv	s2,s3
   17724:	00060a13          	mv	s4,a2
   17728:	00078993          	mv	s3,a5
   1772c:	00c4a783          	lw	a5,12(s1)
   17730:	0139043b          	addw	s0,s2,s3
   17734:	0084a583          	lw	a1,8(s1)
   17738:	0087d463          	bge	a5,s0,17740 <__multiply+0x58>
   1773c:	0015859b          	addiw	a1,a1,1
   17740:	a21ff0ef          	jal	ra,17160 <_Balloc>
   17744:	1c050063          	beqz	a0,17904 <__multiply+0x21c>
   17748:	01850313          	addi	t1,a0,24
   1774c:	00241893          	slli	a7,s0,0x2
   17750:	011308b3          	add	a7,t1,a7
   17754:	00030793          	mv	a5,t1
   17758:	01137863          	bgeu	t1,a7,17768 <__multiply+0x80>
   1775c:	0007a023          	sw	zero,0(a5)
   17760:	00478793          	addi	a5,a5,4
   17764:	ff17ece3          	bltu	a5,a7,1775c <__multiply+0x74>
   17768:	018a0813          	addi	a6,s4,24
   1776c:	00299e13          	slli	t3,s3,0x2
   17770:	01848e93          	addi	t4,s1,24
   17774:	00291593          	slli	a1,s2,0x2
   17778:	01c80e33          	add	t3,a6,t3
   1777c:	00be85b3          	add	a1,t4,a1
   17780:	13c87863          	bgeu	a6,t3,178b0 <__multiply+0x1c8>
   17784:	01948793          	addi	a5,s1,25
   17788:	00400f13          	li	t5,4
   1778c:	16f5f263          	bgeu	a1,a5,178f0 <__multiply+0x208>
   17790:	00010637          	lui	a2,0x10
   17794:	fff60613          	addi	a2,a2,-1 # ffff <register_fini-0xb1>
   17798:	0180006f          	j	177b0 <__multiply+0xc8>
   1779c:	0102d29b          	srliw	t0,t0,0x10
   177a0:	08029863          	bnez	t0,17830 <__multiply+0x148>
   177a4:	00480813          	addi	a6,a6,4
   177a8:	00430313          	addi	t1,t1,4
   177ac:	11c87263          	bgeu	a6,t3,178b0 <__multiply+0x1c8>
   177b0:	00082283          	lw	t0,0(a6)
   177b4:	00c2f4b3          	and	s1,t0,a2
   177b8:	fe0482e3          	beqz	s1,1779c <__multiply+0xb4>
   177bc:	00030393          	mv	t2,t1
   177c0:	000e8293          	mv	t0,t4
   177c4:	00000913          	li	s2,0
   177c8:	0002a683          	lw	a3,0(t0) # 10370 <memset+0xb4>
   177cc:	0003af83          	lw	t6,0(t2)
   177d0:	00438393          	addi	t2,t2,4
   177d4:	00c6f7b3          	and	a5,a3,a2
   177d8:	029787bb          	mulw	a5,a5,s1
   177dc:	0106d71b          	srliw	a4,a3,0x10
   177e0:	00cff6b3          	and	a3,t6,a2
   177e4:	010fdf9b          	srliw	t6,t6,0x10
   177e8:	00428293          	addi	t0,t0,4
   177ec:	0297073b          	mulw	a4,a4,s1
   177f0:	00d787bb          	addw	a5,a5,a3
   177f4:	012787bb          	addw	a5,a5,s2
   177f8:	0107d69b          	srliw	a3,a5,0x10
   177fc:	00f677b3          	and	a5,a2,a5
   17800:	01f7073b          	addw	a4,a4,t6
   17804:	00d7073b          	addw	a4,a4,a3
   17808:	0107169b          	slliw	a3,a4,0x10
   1780c:	00d7e7b3          	or	a5,a5,a3
   17810:	fef3ae23          	sw	a5,-4(t2)
   17814:	0107591b          	srliw	s2,a4,0x10
   17818:	fab2e8e3          	bltu	t0,a1,177c8 <__multiply+0xe0>
   1781c:	01e307b3          	add	a5,t1,t5
   17820:	0127a023          	sw	s2,0(a5)
   17824:	00082283          	lw	t0,0(a6)
   17828:	0102d29b          	srliw	t0,t0,0x10
   1782c:	f6028ce3          	beqz	t0,177a4 <__multiply+0xbc>
   17830:	00032683          	lw	a3,0(t1)
   17834:	00030393          	mv	t2,t1
   17838:	000e8f93          	mv	t6,t4
   1783c:	00068493          	mv	s1,a3
   17840:	00000713          	li	a4,0
   17844:	000fa783          	lw	a5,0(t6)
   17848:	0104d99b          	srliw	s3,s1,0x10
   1784c:	00c6f6b3          	and	a3,a3,a2
   17850:	00c7f7b3          	and	a5,a5,a2
   17854:	025787bb          	mulw	a5,a5,t0
   17858:	0043a483          	lw	s1,4(t2)
   1785c:	00438393          	addi	t2,t2,4
   17860:	004f8f93          	addi	t6,t6,4
   17864:	00c4f933          	and	s2,s1,a2
   17868:	013787bb          	addw	a5,a5,s3
   1786c:	00e787bb          	addw	a5,a5,a4
   17870:	0107971b          	slliw	a4,a5,0x10
   17874:	00e6e6b3          	or	a3,a3,a4
   17878:	fed3ae23          	sw	a3,-4(t2)
   1787c:	ffefd703          	lhu	a4,-2(t6)
   17880:	0107d79b          	srliw	a5,a5,0x10
   17884:	0257073b          	mulw	a4,a4,t0
   17888:	0127073b          	addw	a4,a4,s2
   1788c:	00f707bb          	addw	a5,a4,a5
   17890:	0007869b          	sext.w	a3,a5
   17894:	0107d71b          	srliw	a4,a5,0x10
   17898:	fabfe6e3          	bltu	t6,a1,17844 <__multiply+0x15c>
   1789c:	01e307b3          	add	a5,t1,t5
   178a0:	00d7a023          	sw	a3,0(a5)
   178a4:	00480813          	addi	a6,a6,4
   178a8:	00430313          	addi	t1,t1,4
   178ac:	f1c862e3          	bltu	a6,t3,177b0 <__multiply+0xc8>
   178b0:	00804863          	bgtz	s0,178c0 <__multiply+0x1d8>
   178b4:	0180006f          	j	178cc <__multiply+0x1e4>
   178b8:	fff4041b          	addiw	s0,s0,-1
   178bc:	00040863          	beqz	s0,178cc <__multiply+0x1e4>
   178c0:	ffc8a783          	lw	a5,-4(a7)
   178c4:	ffc88893          	addi	a7,a7,-4
   178c8:	fe0788e3          	beqz	a5,178b8 <__multiply+0x1d0>
   178cc:	02813083          	ld	ra,40(sp)
   178d0:	00852a23          	sw	s0,20(a0)
   178d4:	02013403          	ld	s0,32(sp)
   178d8:	01813483          	ld	s1,24(sp)
   178dc:	01013903          	ld	s2,16(sp)
   178e0:	00813983          	ld	s3,8(sp)
   178e4:	00013a03          	ld	s4,0(sp)
   178e8:	03010113          	addi	sp,sp,48
   178ec:	00008067          	ret
   178f0:	40958f33          	sub	t5,a1,s1
   178f4:	fe7f0f13          	addi	t5,t5,-25
   178f8:	ffcf7f13          	andi	t5,t5,-4
   178fc:	004f0f13          	addi	t5,t5,4
   17900:	e91ff06f          	j	17790 <__multiply+0xa8>
   17904:	000216b7          	lui	a3,0x21
   17908:	00021537          	lui	a0,0x21
   1790c:	50068693          	addi	a3,a3,1280 # 21500 <zeroes.0+0x78>
   17910:	00000613          	li	a2,0
   17914:	15d00593          	li	a1,349
   17918:	7d850513          	addi	a0,a0,2008 # 217d8 <bmask+0x28>
   1791c:	141040ef          	jal	ra,1c25c <__assert_func>

0000000000017920 <__pow5mult>:
   17920:	fd010113          	addi	sp,sp,-48
   17924:	02813023          	sd	s0,32(sp)
   17928:	01213823          	sd	s2,16(sp)
   1792c:	01313423          	sd	s3,8(sp)
   17930:	02113423          	sd	ra,40(sp)
   17934:	00913c23          	sd	s1,24(sp)
   17938:	00367793          	andi	a5,a2,3
   1793c:	00060413          	mv	s0,a2
   17940:	00050993          	mv	s3,a0
   17944:	00058913          	mv	s2,a1
   17948:	0a079e63          	bnez	a5,17a04 <__pow5mult+0xe4>
   1794c:	40245413          	srai	s0,s0,0x2
   17950:	06040663          	beqz	s0,179bc <__pow5mult+0x9c>
   17954:	0709b483          	ld	s1,112(s3)
   17958:	0c048a63          	beqz	s1,17a2c <__pow5mult+0x10c>
   1795c:	00147793          	andi	a5,s0,1
   17960:	02079063          	bnez	a5,17980 <__pow5mult+0x60>
   17964:	40145413          	srai	s0,s0,0x1
   17968:	04040a63          	beqz	s0,179bc <__pow5mult+0x9c>
   1796c:	0004b503          	ld	a0,0(s1)
   17970:	06050663          	beqz	a0,179dc <__pow5mult+0xbc>
   17974:	00050493          	mv	s1,a0
   17978:	00147793          	andi	a5,s0,1
   1797c:	fe0784e3          	beqz	a5,17964 <__pow5mult+0x44>
   17980:	00048613          	mv	a2,s1
   17984:	00090593          	mv	a1,s2
   17988:	00098513          	mv	a0,s3
   1798c:	d5dff0ef          	jal	ra,176e8 <__multiply>
   17990:	06090663          	beqz	s2,179fc <__pow5mult+0xdc>
   17994:	00892703          	lw	a4,8(s2)
   17998:	0789b783          	ld	a5,120(s3)
   1799c:	40145413          	srai	s0,s0,0x1
   179a0:	00371713          	slli	a4,a4,0x3
   179a4:	00e787b3          	add	a5,a5,a4
   179a8:	0007b703          	ld	a4,0(a5)
   179ac:	00e93023          	sd	a4,0(s2)
   179b0:	0127b023          	sd	s2,0(a5)
   179b4:	00050913          	mv	s2,a0
   179b8:	fa041ae3          	bnez	s0,1796c <__pow5mult+0x4c>
   179bc:	02813083          	ld	ra,40(sp)
   179c0:	02013403          	ld	s0,32(sp)
   179c4:	01813483          	ld	s1,24(sp)
   179c8:	00813983          	ld	s3,8(sp)
   179cc:	00090513          	mv	a0,s2
   179d0:	01013903          	ld	s2,16(sp)
   179d4:	03010113          	addi	sp,sp,48
   179d8:	00008067          	ret
   179dc:	00048613          	mv	a2,s1
   179e0:	00048593          	mv	a1,s1
   179e4:	00098513          	mv	a0,s3
   179e8:	d01ff0ef          	jal	ra,176e8 <__multiply>
   179ec:	00a4b023          	sd	a0,0(s1)
   179f0:	00053023          	sd	zero,0(a0)
   179f4:	00050493          	mv	s1,a0
   179f8:	f81ff06f          	j	17978 <__pow5mult+0x58>
   179fc:	00050913          	mv	s2,a0
   17a00:	f65ff06f          	j	17964 <__pow5mult+0x44>
   17a04:	fff7879b          	addiw	a5,a5,-1
   17a08:	00022737          	lui	a4,0x22
   17a0c:	82870713          	addi	a4,a4,-2008 # 21828 <p05.0>
   17a10:	00279793          	slli	a5,a5,0x2
   17a14:	00f707b3          	add	a5,a4,a5
   17a18:	0007a603          	lw	a2,0(a5)
   17a1c:	00000693          	li	a3,0
   17a20:	80dff0ef          	jal	ra,1722c <__multadd>
   17a24:	00050913          	mv	s2,a0
   17a28:	f25ff06f          	j	1794c <__pow5mult+0x2c>
   17a2c:	00100593          	li	a1,1
   17a30:	00098513          	mv	a0,s3
   17a34:	f2cff0ef          	jal	ra,17160 <_Balloc>
   17a38:	00050493          	mv	s1,a0
   17a3c:	02050063          	beqz	a0,17a5c <__pow5mult+0x13c>
   17a40:	27100793          	li	a5,625
   17a44:	00f52c23          	sw	a5,24(a0)
   17a48:	00100793          	li	a5,1
   17a4c:	00f52a23          	sw	a5,20(a0)
   17a50:	06a9b823          	sd	a0,112(s3)
   17a54:	00053023          	sd	zero,0(a0)
   17a58:	f05ff06f          	j	1795c <__pow5mult+0x3c>
   17a5c:	000216b7          	lui	a3,0x21
   17a60:	00021537          	lui	a0,0x21
   17a64:	50068693          	addi	a3,a3,1280 # 21500 <zeroes.0+0x78>
   17a68:	00000613          	li	a2,0
   17a6c:	14000593          	li	a1,320
   17a70:	7d850513          	addi	a0,a0,2008 # 217d8 <bmask+0x28>
   17a74:	7e8040ef          	jal	ra,1c25c <__assert_func>

0000000000017a78 <__lshift>:
   17a78:	fc010113          	addi	sp,sp,-64
   17a7c:	01313c23          	sd	s3,24(sp)
   17a80:	0145a983          	lw	s3,20(a1)
   17a84:	00c5a783          	lw	a5,12(a1)
   17a88:	01513423          	sd	s5,8(sp)
   17a8c:	40565a9b          	sraiw	s5,a2,0x5
   17a90:	015989bb          	addw	s3,s3,s5
   17a94:	02813823          	sd	s0,48(sp)
   17a98:	02913423          	sd	s1,40(sp)
   17a9c:	03213023          	sd	s2,32(sp)
   17aa0:	01413823          	sd	s4,16(sp)
   17aa4:	01613023          	sd	s6,0(sp)
   17aa8:	02113c23          	sd	ra,56(sp)
   17aac:	0019891b          	addiw	s2,s3,1
   17ab0:	00058493          	mv	s1,a1
   17ab4:	00060413          	mv	s0,a2
   17ab8:	0085a583          	lw	a1,8(a1)
   17abc:	00050a13          	mv	s4,a0
   17ac0:	40565b13          	srai	s6,a2,0x5
   17ac4:	0127d863          	bge	a5,s2,17ad4 <__lshift+0x5c>
   17ac8:	0017979b          	slliw	a5,a5,0x1
   17acc:	0015859b          	addiw	a1,a1,1
   17ad0:	ff27cce3          	blt	a5,s2,17ac8 <__lshift+0x50>
   17ad4:	000a0513          	mv	a0,s4
   17ad8:	e88ff0ef          	jal	ra,17160 <_Balloc>
   17adc:	12050263          	beqz	a0,17c00 <__lshift+0x188>
   17ae0:	01850693          	addi	a3,a0,24
   17ae4:	03605863          	blez	s6,17b14 <__lshift+0x9c>
   17ae8:	006a871b          	addiw	a4,s5,6
   17aec:	02071793          	slli	a5,a4,0x20
   17af0:	01e7d713          	srli	a4,a5,0x1e
   17af4:	00e50733          	add	a4,a0,a4
   17af8:	00068793          	mv	a5,a3
   17afc:	00478793          	addi	a5,a5,4
   17b00:	fe07ae23          	sw	zero,-4(a5)
   17b04:	fee79ce3          	bne	a5,a4,17afc <__lshift+0x84>
   17b08:	020a9793          	slli	a5,s5,0x20
   17b0c:	01e7da93          	srli	s5,a5,0x1e
   17b10:	015686b3          	add	a3,a3,s5
   17b14:	0144a803          	lw	a6,20(s1)
   17b18:	01848793          	addi	a5,s1,24
   17b1c:	01f47313          	andi	t1,s0,31
   17b20:	00281813          	slli	a6,a6,0x2
   17b24:	01078833          	add	a6,a5,a6
   17b28:	0a030663          	beqz	t1,17bd4 <__lshift+0x15c>
   17b2c:	02000593          	li	a1,32
   17b30:	406585bb          	subw	a1,a1,t1
   17b34:	00068893          	mv	a7,a3
   17b38:	00000713          	li	a4,0
   17b3c:	0007a603          	lw	a2,0(a5)
   17b40:	00488893          	addi	a7,a7,4
   17b44:	00478793          	addi	a5,a5,4
   17b48:	0066163b          	sllw	a2,a2,t1
   17b4c:	00c76733          	or	a4,a4,a2
   17b50:	fee8ae23          	sw	a4,-4(a7)
   17b54:	ffc7a703          	lw	a4,-4(a5)
   17b58:	00b7573b          	srlw	a4,a4,a1
   17b5c:	ff07e0e3          	bltu	a5,a6,17b3c <__lshift+0xc4>
   17b60:	01948613          	addi	a2,s1,25
   17b64:	00400793          	li	a5,4
   17b68:	00c86a63          	bltu	a6,a2,17b7c <__lshift+0x104>
   17b6c:	409807b3          	sub	a5,a6,s1
   17b70:	fe778793          	addi	a5,a5,-25
   17b74:	ffc7f793          	andi	a5,a5,-4
   17b78:	00478793          	addi	a5,a5,4
   17b7c:	00f686b3          	add	a3,a3,a5
   17b80:	00e6a023          	sw	a4,0(a3)
   17b84:	00070463          	beqz	a4,17b8c <__lshift+0x114>
   17b88:	00090993          	mv	s3,s2
   17b8c:	0084a703          	lw	a4,8(s1)
   17b90:	078a3783          	ld	a5,120(s4)
   17b94:	03813083          	ld	ra,56(sp)
   17b98:	00371713          	slli	a4,a4,0x3
   17b9c:	00e787b3          	add	a5,a5,a4
   17ba0:	0007b703          	ld	a4,0(a5)
   17ba4:	01352a23          	sw	s3,20(a0)
   17ba8:	03013403          	ld	s0,48(sp)
   17bac:	00e4b023          	sd	a4,0(s1)
   17bb0:	0097b023          	sd	s1,0(a5)
   17bb4:	02013903          	ld	s2,32(sp)
   17bb8:	02813483          	ld	s1,40(sp)
   17bbc:	01813983          	ld	s3,24(sp)
   17bc0:	01013a03          	ld	s4,16(sp)
   17bc4:	00813a83          	ld	s5,8(sp)
   17bc8:	00013b03          	ld	s6,0(sp)
   17bcc:	04010113          	addi	sp,sp,64
   17bd0:	00008067          	ret
   17bd4:	0007a703          	lw	a4,0(a5)
   17bd8:	00478793          	addi	a5,a5,4
   17bdc:	00468693          	addi	a3,a3,4
   17be0:	fee6ae23          	sw	a4,-4(a3)
   17be4:	fb07f4e3          	bgeu	a5,a6,17b8c <__lshift+0x114>
   17be8:	0007a703          	lw	a4,0(a5)
   17bec:	00478793          	addi	a5,a5,4
   17bf0:	00468693          	addi	a3,a3,4
   17bf4:	fee6ae23          	sw	a4,-4(a3)
   17bf8:	fd07eee3          	bltu	a5,a6,17bd4 <__lshift+0x15c>
   17bfc:	f91ff06f          	j	17b8c <__lshift+0x114>
   17c00:	000216b7          	lui	a3,0x21
   17c04:	00021537          	lui	a0,0x21
   17c08:	50068693          	addi	a3,a3,1280 # 21500 <zeroes.0+0x78>
   17c0c:	00000613          	li	a2,0
   17c10:	1d900593          	li	a1,473
   17c14:	7d850513          	addi	a0,a0,2008 # 217d8 <bmask+0x28>
   17c18:	644040ef          	jal	ra,1c25c <__assert_func>

0000000000017c1c <__mcmp>:
   17c1c:	0145a783          	lw	a5,20(a1)
   17c20:	00050813          	mv	a6,a0
   17c24:	01452503          	lw	a0,20(a0)
   17c28:	40f5053b          	subw	a0,a0,a5
   17c2c:	02051e63          	bnez	a0,17c68 <__mcmp+0x4c>
   17c30:	00279793          	slli	a5,a5,0x2
   17c34:	01880813          	addi	a6,a6,24
   17c38:	01858593          	addi	a1,a1,24
   17c3c:	00f80733          	add	a4,a6,a5
   17c40:	00f587b3          	add	a5,a1,a5
   17c44:	0080006f          	j	17c4c <__mcmp+0x30>
   17c48:	02e87063          	bgeu	a6,a4,17c68 <__mcmp+0x4c>
   17c4c:	ffc72603          	lw	a2,-4(a4)
   17c50:	ffc7a683          	lw	a3,-4(a5)
   17c54:	ffc70713          	addi	a4,a4,-4
   17c58:	ffc78793          	addi	a5,a5,-4
   17c5c:	fed606e3          	beq	a2,a3,17c48 <__mcmp+0x2c>
   17c60:	fff00513          	li	a0,-1
   17c64:	00d67463          	bgeu	a2,a3,17c6c <__mcmp+0x50>
   17c68:	00008067          	ret
   17c6c:	00100513          	li	a0,1
   17c70:	00008067          	ret

0000000000017c74 <__mdiff>:
   17c74:	fe010113          	addi	sp,sp,-32
   17c78:	01462703          	lw	a4,20(a2)
   17c7c:	01213023          	sd	s2,0(sp)
   17c80:	0145a903          	lw	s2,20(a1)
   17c84:	00813823          	sd	s0,16(sp)
   17c88:	00913423          	sd	s1,8(sp)
   17c8c:	00113c23          	sd	ra,24(sp)
   17c90:	40e9093b          	subw	s2,s2,a4
   17c94:	00058493          	mv	s1,a1
   17c98:	00060413          	mv	s0,a2
   17c9c:	1a091863          	bnez	s2,17e4c <__mdiff+0x1d8>
   17ca0:	00271693          	slli	a3,a4,0x2
   17ca4:	01858593          	addi	a1,a1,24
   17ca8:	01860713          	addi	a4,a2,24
   17cac:	00d587b3          	add	a5,a1,a3
   17cb0:	00d70733          	add	a4,a4,a3
   17cb4:	0080006f          	j	17cbc <__mdiff+0x48>
   17cb8:	1af5f063          	bgeu	a1,a5,17e58 <__mdiff+0x1e4>
   17cbc:	ffc7a603          	lw	a2,-4(a5)
   17cc0:	ffc72683          	lw	a3,-4(a4)
   17cc4:	ffc78793          	addi	a5,a5,-4
   17cc8:	ffc70713          	addi	a4,a4,-4
   17ccc:	fed606e3          	beq	a2,a3,17cb8 <__mdiff+0x44>
   17cd0:	16d66463          	bltu	a2,a3,17e38 <__mdiff+0x1c4>
   17cd4:	0084a583          	lw	a1,8(s1)
   17cd8:	c88ff0ef          	jal	ra,17160 <_Balloc>
   17cdc:	1a050663          	beqz	a0,17e88 <__mdiff+0x214>
   17ce0:	0144a883          	lw	a7,20(s1)
   17ce4:	01442f83          	lw	t6,20(s0)
   17ce8:	01848493          	addi	s1,s1,24
   17cec:	00289313          	slli	t1,a7,0x2
   17cf0:	01840813          	addi	a6,s0,24
   17cf4:	002f9f93          	slli	t6,t6,0x2
   17cf8:	01850f13          	addi	t5,a0,24
   17cfc:	00010e37          	lui	t3,0x10
   17d00:	01252823          	sw	s2,16(a0)
   17d04:	00648333          	add	t1,s1,t1
   17d08:	01f80fb3          	add	t6,a6,t6
   17d0c:	000f0613          	mv	a2,t5
   17d10:	00048e93          	mv	t4,s1
   17d14:	00000713          	li	a4,0
   17d18:	fffe0e13          	addi	t3,t3,-1 # ffff <register_fini-0xb1>
   17d1c:	000ea683          	lw	a3,0(t4)
   17d20:	00082583          	lw	a1,0(a6)
   17d24:	00460613          	addi	a2,a2,4
   17d28:	01c6f7b3          	and	a5,a3,t3
   17d2c:	00e787bb          	addw	a5,a5,a4
   17d30:	01c5f733          	and	a4,a1,t3
   17d34:	40e787bb          	subw	a5,a5,a4
   17d38:	0105d59b          	srliw	a1,a1,0x10
   17d3c:	0106d71b          	srliw	a4,a3,0x10
   17d40:	40b7073b          	subw	a4,a4,a1
   17d44:	4107d69b          	sraiw	a3,a5,0x10
   17d48:	00d7073b          	addw	a4,a4,a3
   17d4c:	0107169b          	slliw	a3,a4,0x10
   17d50:	01c7f7b3          	and	a5,a5,t3
   17d54:	00d7e7b3          	or	a5,a5,a3
   17d58:	0007879b          	sext.w	a5,a5
   17d5c:	00480813          	addi	a6,a6,4
   17d60:	fef62e23          	sw	a5,-4(a2)
   17d64:	004e8e93          	addi	t4,t4,4
   17d68:	4107571b          	sraiw	a4,a4,0x10
   17d6c:	fbf868e3          	bltu	a6,t6,17d1c <__mdiff+0xa8>
   17d70:	408f85b3          	sub	a1,t6,s0
   17d74:	fe758593          	addi	a1,a1,-25
   17d78:	01940413          	addi	s0,s0,25
   17d7c:	0025d593          	srli	a1,a1,0x2
   17d80:	00000693          	li	a3,0
   17d84:	008fe463          	bltu	t6,s0,17d8c <__mdiff+0x118>
   17d88:	00259693          	slli	a3,a1,0x2
   17d8c:	00df06b3          	add	a3,t5,a3
   17d90:	00400813          	li	a6,4
   17d94:	008fe663          	bltu	t6,s0,17da0 <__mdiff+0x12c>
   17d98:	00158593          	addi	a1,a1,1
   17d9c:	00259813          	slli	a6,a1,0x2
   17da0:	010484b3          	add	s1,s1,a6
   17da4:	010f0f33          	add	t5,t5,a6
   17da8:	0664f063          	bgeu	s1,t1,17e08 <__mdiff+0x194>
   17dac:	00010837          	lui	a6,0x10
   17db0:	000f0593          	mv	a1,t5
   17db4:	00048613          	mv	a2,s1
   17db8:	fff80813          	addi	a6,a6,-1 # ffff <register_fini-0xb1>
   17dbc:	00062683          	lw	a3,0(a2)
   17dc0:	00458593          	addi	a1,a1,4
   17dc4:	00460613          	addi	a2,a2,4
   17dc8:	0106f7b3          	and	a5,a3,a6
   17dcc:	00e787bb          	addw	a5,a5,a4
   17dd0:	0106d71b          	srliw	a4,a3,0x10
   17dd4:	4107d69b          	sraiw	a3,a5,0x10
   17dd8:	00d7073b          	addw	a4,a4,a3
   17ddc:	0107169b          	slliw	a3,a4,0x10
   17de0:	0107f7b3          	and	a5,a5,a6
   17de4:	00d7e7b3          	or	a5,a5,a3
   17de8:	0007879b          	sext.w	a5,a5
   17dec:	fef5ae23          	sw	a5,-4(a1)
   17df0:	4107571b          	sraiw	a4,a4,0x10
   17df4:	fc6664e3          	bltu	a2,t1,17dbc <__mdiff+0x148>
   17df8:	fff30693          	addi	a3,t1,-1
   17dfc:	409684b3          	sub	s1,a3,s1
   17e00:	ffc4f693          	andi	a3,s1,-4
   17e04:	00df06b3          	add	a3,t5,a3
   17e08:	00079a63          	bnez	a5,17e1c <__mdiff+0x1a8>
   17e0c:	ffc6a783          	lw	a5,-4(a3)
   17e10:	fff8889b          	addiw	a7,a7,-1
   17e14:	ffc68693          	addi	a3,a3,-4
   17e18:	fe078ae3          	beqz	a5,17e0c <__mdiff+0x198>
   17e1c:	01813083          	ld	ra,24(sp)
   17e20:	01013403          	ld	s0,16(sp)
   17e24:	01152a23          	sw	a7,20(a0)
   17e28:	00813483          	ld	s1,8(sp)
   17e2c:	00013903          	ld	s2,0(sp)
   17e30:	02010113          	addi	sp,sp,32
   17e34:	00008067          	ret
   17e38:	00048793          	mv	a5,s1
   17e3c:	00100913          	li	s2,1
   17e40:	00040493          	mv	s1,s0
   17e44:	00078413          	mv	s0,a5
   17e48:	e8dff06f          	j	17cd4 <__mdiff+0x60>
   17e4c:	fe0946e3          	bltz	s2,17e38 <__mdiff+0x1c4>
   17e50:	00000913          	li	s2,0
   17e54:	e81ff06f          	j	17cd4 <__mdiff+0x60>
   17e58:	00000593          	li	a1,0
   17e5c:	b04ff0ef          	jal	ra,17160 <_Balloc>
   17e60:	04050263          	beqz	a0,17ea4 <__mdiff+0x230>
   17e64:	01813083          	ld	ra,24(sp)
   17e68:	01013403          	ld	s0,16(sp)
   17e6c:	00100793          	li	a5,1
   17e70:	00f52a23          	sw	a5,20(a0)
   17e74:	00052c23          	sw	zero,24(a0)
   17e78:	00813483          	ld	s1,8(sp)
   17e7c:	00013903          	ld	s2,0(sp)
   17e80:	02010113          	addi	sp,sp,32
   17e84:	00008067          	ret
   17e88:	000216b7          	lui	a3,0x21
   17e8c:	00021537          	lui	a0,0x21
   17e90:	50068693          	addi	a3,a3,1280 # 21500 <zeroes.0+0x78>
   17e94:	00000613          	li	a2,0
   17e98:	24000593          	li	a1,576
   17e9c:	7d850513          	addi	a0,a0,2008 # 217d8 <bmask+0x28>
   17ea0:	3bc040ef          	jal	ra,1c25c <__assert_func>
   17ea4:	000216b7          	lui	a3,0x21
   17ea8:	00021537          	lui	a0,0x21
   17eac:	50068693          	addi	a3,a3,1280 # 21500 <zeroes.0+0x78>
   17eb0:	00000613          	li	a2,0
   17eb4:	23200593          	li	a1,562
   17eb8:	7d850513          	addi	a0,a0,2008 # 217d8 <bmask+0x28>
   17ebc:	3a0040ef          	jal	ra,1c25c <__assert_func>

0000000000017ec0 <__ulp>:
   17ec0:	e20507d3          	fmv.x.d	a5,fa0
   17ec4:	7ff00737          	lui	a4,0x7ff00
   17ec8:	0207d793          	srli	a5,a5,0x20
   17ecc:	00e7f733          	and	a4,a5,a4
   17ed0:	fcc007b7          	lui	a5,0xfcc00
   17ed4:	00e787bb          	addw	a5,a5,a4
   17ed8:	0007871b          	sext.w	a4,a5
   17edc:	00e05863          	blez	a4,17eec <__ulp+0x2c>
   17ee0:	02079793          	slli	a5,a5,0x20
   17ee4:	f2078553          	fmv.d.x	fa0,a5
   17ee8:	00008067          	ret
   17eec:	40f007bb          	negw	a5,a5
   17ef0:	4147d71b          	sraiw	a4,a5,0x14
   17ef4:	01300693          	li	a3,19
   17ef8:	00e6c863          	blt	a3,a4,17f08 <__ulp+0x48>
   17efc:	000807b7          	lui	a5,0x80
   17f00:	40e7d7bb          	sraw	a5,a5,a4
   17f04:	fddff06f          	j	17ee0 <__ulp+0x20>
   17f08:	fec7069b          	addiw	a3,a4,-20
   17f0c:	01e00613          	li	a2,30
   17f10:	00000793          	li	a5,0
   17f14:	00100713          	li	a4,1
   17f18:	00d64663          	blt	a2,a3,17f24 <__ulp+0x64>
   17f1c:	80000737          	lui	a4,0x80000
   17f20:	00d7573b          	srlw	a4,a4,a3
   17f24:	0207d793          	srli	a5,a5,0x20
   17f28:	02071713          	slli	a4,a4,0x20
   17f2c:	02075713          	srli	a4,a4,0x20
   17f30:	02079793          	slli	a5,a5,0x20
   17f34:	00e7e7b3          	or	a5,a5,a4
   17f38:	f2078553          	fmv.d.x	fa0,a5
   17f3c:	00008067          	ret

0000000000017f40 <__b2d>:
   17f40:	fd010113          	addi	sp,sp,-48
   17f44:	00913c23          	sd	s1,24(sp)
   17f48:	01452483          	lw	s1,20(a0)
   17f4c:	02813023          	sd	s0,32(sp)
   17f50:	01850413          	addi	s0,a0,24
   17f54:	00249493          	slli	s1,s1,0x2
   17f58:	009404b3          	add	s1,s0,s1
   17f5c:	01213823          	sd	s2,16(sp)
   17f60:	ffc4a903          	lw	s2,-4(s1)
   17f64:	01313423          	sd	s3,8(sp)
   17f68:	01413023          	sd	s4,0(sp)
   17f6c:	00090513          	mv	a0,s2
   17f70:	00058993          	mv	s3,a1
   17f74:	02113423          	sd	ra,40(sp)
   17f78:	d64ff0ef          	jal	ra,174dc <__hi0bits>
   17f7c:	02000693          	li	a3,32
   17f80:	40a687bb          	subw	a5,a3,a0
   17f84:	00f9a023          	sw	a5,0(s3)
   17f88:	00a00793          	li	a5,10
   17f8c:	ffc48a13          	addi	s4,s1,-4
   17f90:	0aa7d663          	bge	a5,a0,1803c <__b2d+0xfc>
   17f94:	ff55079b          	addiw	a5,a0,-11
   17f98:	07447063          	bgeu	s0,s4,17ff8 <__b2d+0xb8>
   17f9c:	ff84a703          	lw	a4,-8(s1)
   17fa0:	06078063          	beqz	a5,18000 <__b2d+0xc0>
   17fa4:	40f6853b          	subw	a0,a3,a5
   17fa8:	00f916bb          	sllw	a3,s2,a5
   17fac:	00a7593b          	srlw	s2,a4,a0
   17fb0:	0126e6b3          	or	a3,a3,s2
   17fb4:	3ff00937          	lui	s2,0x3ff00
   17fb8:	0126e6b3          	or	a3,a3,s2
   17fbc:	00f7173b          	sllw	a4,a4,a5
   17fc0:	ff848613          	addi	a2,s1,-8
   17fc4:	02069793          	slli	a5,a3,0x20
   17fc8:	0007069b          	sext.w	a3,a4
   17fcc:	00c47a63          	bgeu	s0,a2,17fe0 <__b2d+0xa0>
   17fd0:	ff44a683          	lw	a3,-12(s1)
   17fd4:	00a6d6bb          	srlw	a3,a3,a0
   17fd8:	00e6e6b3          	or	a3,a3,a4
   17fdc:	0006869b          	sext.w	a3,a3
   17fe0:	0207d793          	srli	a5,a5,0x20
   17fe4:	02069693          	slli	a3,a3,0x20
   17fe8:	0206d693          	srli	a3,a3,0x20
   17fec:	02079793          	slli	a5,a5,0x20
   17ff0:	00d7e7b3          	or	a5,a5,a3
   17ff4:	0240006f          	j	18018 <__b2d+0xd8>
   17ff8:	00000713          	li	a4,0
   17ffc:	08079663          	bnez	a5,18088 <__b2d+0x148>
   18000:	3ff007b7          	lui	a5,0x3ff00
   18004:	00f967b3          	or	a5,s2,a5
   18008:	02071713          	slli	a4,a4,0x20
   1800c:	02075713          	srli	a4,a4,0x20
   18010:	02079793          	slli	a5,a5,0x20
   18014:	00e7e7b3          	or	a5,a5,a4
   18018:	02813083          	ld	ra,40(sp)
   1801c:	02013403          	ld	s0,32(sp)
   18020:	01813483          	ld	s1,24(sp)
   18024:	01013903          	ld	s2,16(sp)
   18028:	00813983          	ld	s3,8(sp)
   1802c:	00013a03          	ld	s4,0(sp)
   18030:	f2078553          	fmv.d.x	fa0,a5
   18034:	03010113          	addi	sp,sp,48
   18038:	00008067          	ret
   1803c:	00b00693          	li	a3,11
   18040:	40a686bb          	subw	a3,a3,a0
   18044:	3ff00737          	lui	a4,0x3ff00
   18048:	00d957bb          	srlw	a5,s2,a3
   1804c:	00e7e7b3          	or	a5,a5,a4
   18050:	02079793          	slli	a5,a5,0x20
   18054:	00000713          	li	a4,0
   18058:	01447663          	bgeu	s0,s4,18064 <__b2d+0x124>
   1805c:	ff84a703          	lw	a4,-8(s1)
   18060:	00d7573b          	srlw	a4,a4,a3
   18064:	0155051b          	addiw	a0,a0,21
   18068:	00a9153b          	sllw	a0,s2,a0
   1806c:	00a76533          	or	a0,a4,a0
   18070:	0207d793          	srli	a5,a5,0x20
   18074:	02051513          	slli	a0,a0,0x20
   18078:	02055513          	srli	a0,a0,0x20
   1807c:	02079793          	slli	a5,a5,0x20
   18080:	00a7e7b3          	or	a5,a5,a0
   18084:	f95ff06f          	j	18018 <__b2d+0xd8>
   18088:	00f917bb          	sllw	a5,s2,a5
   1808c:	3ff00937          	lui	s2,0x3ff00
   18090:	0127e7b3          	or	a5,a5,s2
   18094:	02079793          	slli	a5,a5,0x20
   18098:	00000693          	li	a3,0
   1809c:	f45ff06f          	j	17fe0 <__b2d+0xa0>

00000000000180a0 <__d2b>:
   180a0:	fc010113          	addi	sp,sp,-64
   180a4:	01413823          	sd	s4,16(sp)
   180a8:	00058a13          	mv	s4,a1
   180ac:	00100593          	li	a1,1
   180b0:	02813823          	sd	s0,48(sp)
   180b4:	01313c23          	sd	s3,24(sp)
   180b8:	02113c23          	sd	ra,56(sp)
   180bc:	02913423          	sd	s1,40(sp)
   180c0:	03213023          	sd	s2,32(sp)
   180c4:	e2050453          	fmv.x.d	s0,fa0
   180c8:	00060993          	mv	s3,a2
   180cc:	894ff0ef          	jal	ra,17160 <_Balloc>
   180d0:	10050c63          	beqz	a0,181e8 <__d2b+0x148>
   180d4:	42045793          	srai	a5,s0,0x20
   180d8:	0147d91b          	srliw	s2,a5,0x14
   180dc:	7ff97913          	andi	s2,s2,2047
   180e0:	02c79793          	slli	a5,a5,0x2c
   180e4:	00050493          	mv	s1,a0
   180e8:	02c7d793          	srli	a5,a5,0x2c
   180ec:	00090663          	beqz	s2,180f8 <__d2b+0x58>
   180f0:	00100737          	lui	a4,0x100
   180f4:	00e7e7b3          	or	a5,a5,a4
   180f8:	00f12623          	sw	a5,12(sp)
   180fc:	0004041b          	sext.w	s0,s0
   18100:	08040663          	beqz	s0,1818c <__d2b+0xec>
   18104:	00810513          	addi	a0,sp,8
   18108:	00812423          	sw	s0,8(sp)
   1810c:	c48ff0ef          	jal	ra,17554 <__lo0bits>
   18110:	0c050463          	beqz	a0,181d8 <__d2b+0x138>
   18114:	00c12703          	lw	a4,12(sp)
   18118:	00812683          	lw	a3,8(sp)
   1811c:	02000793          	li	a5,32
   18120:	40a787bb          	subw	a5,a5,a0
   18124:	00f717bb          	sllw	a5,a4,a5
   18128:	00d7e7b3          	or	a5,a5,a3
   1812c:	00a7573b          	srlw	a4,a4,a0
   18130:	00f4ac23          	sw	a5,24(s1)
   18134:	00e12623          	sw	a4,12(sp)
   18138:	0007079b          	sext.w	a5,a4
   1813c:	00f03433          	snez	s0,a5
   18140:	00140413          	addi	s0,s0,1
   18144:	00f4ae23          	sw	a5,28(s1)
   18148:	0084aa23          	sw	s0,20(s1)
   1814c:	06090263          	beqz	s2,181b0 <__d2b+0x110>
   18150:	bcd9091b          	addiw	s2,s2,-1075
   18154:	00a9093b          	addw	s2,s2,a0
   18158:	03500793          	li	a5,53
   1815c:	012a2023          	sw	s2,0(s4)
   18160:	40a7853b          	subw	a0,a5,a0
   18164:	00a9a023          	sw	a0,0(s3)
   18168:	03813083          	ld	ra,56(sp)
   1816c:	03013403          	ld	s0,48(sp)
   18170:	02013903          	ld	s2,32(sp)
   18174:	01813983          	ld	s3,24(sp)
   18178:	01013a03          	ld	s4,16(sp)
   1817c:	00048513          	mv	a0,s1
   18180:	02813483          	ld	s1,40(sp)
   18184:	04010113          	addi	sp,sp,64
   18188:	00008067          	ret
   1818c:	00c10513          	addi	a0,sp,12
   18190:	bc4ff0ef          	jal	ra,17554 <__lo0bits>
   18194:	00100793          	li	a5,1
   18198:	00f4aa23          	sw	a5,20(s1)
   1819c:	00c12783          	lw	a5,12(sp)
   181a0:	0205051b          	addiw	a0,a0,32
   181a4:	00100413          	li	s0,1
   181a8:	00f4ac23          	sw	a5,24(s1)
   181ac:	fa0912e3          	bnez	s2,18150 <__d2b+0xb0>
   181b0:	bce5051b          	addiw	a0,a0,-1074
   181b4:	00241793          	slli	a5,s0,0x2
   181b8:	00aa2023          	sw	a0,0(s4)
   181bc:	00f487b3          	add	a5,s1,a5
   181c0:	0147a503          	lw	a0,20(a5) # 3ff00014 <__BSS_END__+0x3fedbd74>
   181c4:	0054141b          	slliw	s0,s0,0x5
   181c8:	b14ff0ef          	jal	ra,174dc <__hi0bits>
   181cc:	40a4043b          	subw	s0,s0,a0
   181d0:	0089a023          	sw	s0,0(s3)
   181d4:	f95ff06f          	j	18168 <__d2b+0xc8>
   181d8:	00812703          	lw	a4,8(sp)
   181dc:	00c12783          	lw	a5,12(sp)
   181e0:	00e4ac23          	sw	a4,24(s1)
   181e4:	f59ff06f          	j	1813c <__d2b+0x9c>
   181e8:	000216b7          	lui	a3,0x21
   181ec:	00021537          	lui	a0,0x21
   181f0:	50068693          	addi	a3,a3,1280 # 21500 <zeroes.0+0x78>
   181f4:	00000613          	li	a2,0
   181f8:	30a00593          	li	a1,778
   181fc:	7d850513          	addi	a0,a0,2008 # 217d8 <bmask+0x28>
   18200:	05c040ef          	jal	ra,1c25c <__assert_func>

0000000000018204 <__ratio>:
   18204:	fd010113          	addi	sp,sp,-48
   18208:	00913c23          	sd	s1,24(sp)
   1820c:	00058493          	mv	s1,a1
   18210:	00810593          	addi	a1,sp,8
   18214:	02113423          	sd	ra,40(sp)
   18218:	02813023          	sd	s0,32(sp)
   1821c:	01213823          	sd	s2,16(sp)
   18220:	00050913          	mv	s2,a0
   18224:	d1dff0ef          	jal	ra,17f40 <__b2d>
   18228:	00c10593          	addi	a1,sp,12
   1822c:	00048513          	mv	a0,s1
   18230:	e2050453          	fmv.x.d	s0,fa0
   18234:	d0dff0ef          	jal	ra,17f40 <__b2d>
   18238:	0144a703          	lw	a4,20(s1)
   1823c:	01492783          	lw	a5,20(s2) # 3ff00014 <__BSS_END__+0x3fedbd74>
   18240:	00c12683          	lw	a3,12(sp)
   18244:	40e787bb          	subw	a5,a5,a4
   18248:	00812703          	lw	a4,8(sp)
   1824c:	0057979b          	slliw	a5,a5,0x5
   18250:	40d7073b          	subw	a4,a4,a3
   18254:	00e786bb          	addw	a3,a5,a4
   18258:	00068793          	mv	a5,a3
   1825c:	e2050753          	fmv.x.d	a4,fa0
   18260:	04d05463          	blez	a3,182a8 <__ratio+0xa4>
   18264:	02045693          	srli	a3,s0,0x20
   18268:	0147979b          	slliw	a5,a5,0x14
   1826c:	00d787bb          	addw	a5,a5,a3
   18270:	fff00693          	li	a3,-1
   18274:	0206d693          	srli	a3,a3,0x20
   18278:	02079793          	slli	a5,a5,0x20
   1827c:	0086f433          	and	s0,a3,s0
   18280:	00f46433          	or	s0,s0,a5
   18284:	f20407d3          	fmv.d.x	fa5,s0
   18288:	02813083          	ld	ra,40(sp)
   1828c:	02013403          	ld	s0,32(sp)
   18290:	f2070753          	fmv.d.x	fa4,a4
   18294:	01813483          	ld	s1,24(sp)
   18298:	01013903          	ld	s2,16(sp)
   1829c:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   182a0:	03010113          	addi	sp,sp,48
   182a4:	00008067          	ret
   182a8:	02075693          	srli	a3,a4,0x20
   182ac:	0147979b          	slliw	a5,a5,0x14
   182b0:	40f687bb          	subw	a5,a3,a5
   182b4:	fff00693          	li	a3,-1
   182b8:	0206d693          	srli	a3,a3,0x20
   182bc:	02079793          	slli	a5,a5,0x20
   182c0:	00e6f733          	and	a4,a3,a4
   182c4:	00f76733          	or	a4,a4,a5
   182c8:	fbdff06f          	j	18284 <__ratio+0x80>

00000000000182cc <_mprec_log10>:
   182cc:	01700793          	li	a5,23
   182d0:	00a7de63          	bge	a5,a0,182ec <_mprec_log10+0x20>
   182d4:	7281b507          	fld	fa0,1832(gp) # 241c8 <__SDATA_BEGIN__+0x10>
   182d8:	7301b787          	fld	fa5,1840(gp) # 241d0 <__SDATA_BEGIN__+0x18>
   182dc:	fff5051b          	addiw	a0,a0,-1
   182e0:	12f57553          	fmul.d	fa0,fa0,fa5
   182e4:	fe051ce3          	bnez	a0,182dc <_mprec_log10+0x10>
   182e8:	00008067          	ret
   182ec:	000227b7          	lui	a5,0x22
   182f0:	82878793          	addi	a5,a5,-2008 # 21828 <p05.0>
   182f4:	00351513          	slli	a0,a0,0x3
   182f8:	00a78533          	add	a0,a5,a0
   182fc:	01053507          	fld	fa0,16(a0)
   18300:	00008067          	ret

0000000000018304 <__copybits>:
   18304:	01462683          	lw	a3,20(a2)
   18308:	fff5859b          	addiw	a1,a1,-1
   1830c:	4055d59b          	sraiw	a1,a1,0x5
   18310:	0015859b          	addiw	a1,a1,1
   18314:	01860793          	addi	a5,a2,24
   18318:	00269693          	slli	a3,a3,0x2
   1831c:	00259593          	slli	a1,a1,0x2
   18320:	00d786b3          	add	a3,a5,a3
   18324:	00b505b3          	add	a1,a0,a1
   18328:	02d7f863          	bgeu	a5,a3,18358 <__copybits+0x54>
   1832c:	00050713          	mv	a4,a0
   18330:	0007a803          	lw	a6,0(a5)
   18334:	00478793          	addi	a5,a5,4
   18338:	00470713          	addi	a4,a4,4 # 100004 <__BSS_END__+0xdbd64>
   1833c:	ff072e23          	sw	a6,-4(a4)
   18340:	fed7e8e3          	bltu	a5,a3,18330 <__copybits+0x2c>
   18344:	40c687b3          	sub	a5,a3,a2
   18348:	fe778793          	addi	a5,a5,-25
   1834c:	ffc7f793          	andi	a5,a5,-4
   18350:	00478793          	addi	a5,a5,4
   18354:	00f50533          	add	a0,a0,a5
   18358:	00b57863          	bgeu	a0,a1,18368 <__copybits+0x64>
   1835c:	00450513          	addi	a0,a0,4
   18360:	fe052e23          	sw	zero,-4(a0)
   18364:	feb56ce3          	bltu	a0,a1,1835c <__copybits+0x58>
   18368:	00008067          	ret

000000000001836c <__any_on>:
   1836c:	01452703          	lw	a4,20(a0)
   18370:	4055d613          	srai	a2,a1,0x5
   18374:	01850693          	addi	a3,a0,24
   18378:	02c75263          	bge	a4,a2,1839c <__any_on+0x30>
   1837c:	00271793          	slli	a5,a4,0x2
   18380:	00f687b3          	add	a5,a3,a5
   18384:	04f6f263          	bgeu	a3,a5,183c8 <__any_on+0x5c>
   18388:	ffc7a703          	lw	a4,-4(a5)
   1838c:	ffc78793          	addi	a5,a5,-4
   18390:	fe070ae3          	beqz	a4,18384 <__any_on+0x18>
   18394:	00100513          	li	a0,1
   18398:	00008067          	ret
   1839c:	00261793          	slli	a5,a2,0x2
   183a0:	00f687b3          	add	a5,a3,a5
   183a4:	fee650e3          	bge	a2,a4,18384 <__any_on+0x18>
   183a8:	01f5f593          	andi	a1,a1,31
   183ac:	fc058ce3          	beqz	a1,18384 <__any_on+0x18>
   183b0:	0007a603          	lw	a2,0(a5)
   183b4:	00100513          	li	a0,1
   183b8:	00b6573b          	srlw	a4,a2,a1
   183bc:	00b715bb          	sllw	a1,a4,a1
   183c0:	fcc582e3          	beq	a1,a2,18384 <__any_on+0x18>
   183c4:	00008067          	ret
   183c8:	00000513          	li	a0,0
   183cc:	00008067          	ret

00000000000183d0 <frexp>:
   183d0:	e20507d3          	fmv.x.d	a5,fa0
   183d4:	80000637          	lui	a2,0x80000
   183d8:	fff64613          	not	a2,a2
   183dc:	4207d593          	srai	a1,a5,0x20
   183e0:	00c5f733          	and	a4,a1,a2
   183e4:	00052023          	sw	zero,0(a0)
   183e8:	7ff00837          	lui	a6,0x7ff00
   183ec:	00058693          	mv	a3,a1
   183f0:	07075863          	bge	a4,a6,18460 <frexp+0x90>
   183f4:	00f76833          	or	a6,a4,a5
   183f8:	0008081b          	sext.w	a6,a6
   183fc:	06080263          	beqz	a6,18460 <frexp+0x90>
   18400:	7ff00837          	lui	a6,0x7ff00
   18404:	0105f5b3          	and	a1,a1,a6
   18408:	00000813          	li	a6,0
   1840c:	00059e63          	bnez	a1,18428 <frexp+0x58>
   18410:	7381b787          	fld	fa5,1848(gp) # 241d8 <__SDATA_BEGIN__+0x20>
   18414:	fca00813          	li	a6,-54
   18418:	12f577d3          	fmul.d	fa5,fa0,fa5
   1841c:	e20787d3          	fmv.x.d	a5,fa5
   18420:	4207d693          	srai	a3,a5,0x20
   18424:	00c6f733          	and	a4,a3,a2
   18428:	80100637          	lui	a2,0x80100
   1842c:	fff60613          	addi	a2,a2,-1 # ffffffff800fffff <__BSS_END__+0xffffffff800dbd5f>
   18430:	00c6f6b3          	and	a3,a3,a2
   18434:	3fe00637          	lui	a2,0x3fe00
   18438:	00c6e6b3          	or	a3,a3,a2
   1843c:	4147571b          	sraiw	a4,a4,0x14
   18440:	fff00613          	li	a2,-1
   18444:	c027071b          	addiw	a4,a4,-1022
   18448:	02065613          	srli	a2,a2,0x20
   1844c:	0107073b          	addw	a4,a4,a6
   18450:	02069693          	slli	a3,a3,0x20
   18454:	00f677b3          	and	a5,a2,a5
   18458:	00e52023          	sw	a4,0(a0)
   1845c:	00d7e7b3          	or	a5,a5,a3
   18460:	f2078553          	fmv.d.x	fa0,a5
   18464:	00008067          	ret

0000000000018468 <_sbrk_r>:
   18468:	fe010113          	addi	sp,sp,-32
   1846c:	00813823          	sd	s0,16(sp)
   18470:	00913423          	sd	s1,8(sp)
   18474:	00050413          	mv	s0,a0
   18478:	00058513          	mv	a0,a1
   1847c:	00113c23          	sd	ra,24(sp)
   18480:	7801a823          	sw	zero,1936(gp) # 24230 <errno>
   18484:	134070ef          	jal	ra,1f5b8 <_sbrk>
   18488:	fff00793          	li	a5,-1
   1848c:	00f50c63          	beq	a0,a5,184a4 <_sbrk_r+0x3c>
   18490:	01813083          	ld	ra,24(sp)
   18494:	01013403          	ld	s0,16(sp)
   18498:	00813483          	ld	s1,8(sp)
   1849c:	02010113          	addi	sp,sp,32
   184a0:	00008067          	ret
   184a4:	7901a783          	lw	a5,1936(gp) # 24230 <errno>
   184a8:	fe0784e3          	beqz	a5,18490 <_sbrk_r+0x28>
   184ac:	01813083          	ld	ra,24(sp)
   184b0:	00f42023          	sw	a5,0(s0)
   184b4:	01013403          	ld	s0,16(sp)
   184b8:	00813483          	ld	s1,8(sp)
   184bc:	02010113          	addi	sp,sp,32
   184c0:	00008067          	ret

00000000000184c4 <_sprintf_r>:
   184c4:	f0010113          	addi	sp,sp,-256
   184c8:	0d810e93          	addi	t4,sp,216
   184cc:	0ef13423          	sd	a5,232(sp)
   184d0:	80000337          	lui	t1,0x80000
   184d4:	ffff07b7          	lui	a5,0xffff0
   184d8:	00058e13          	mv	t3,a1
   184dc:	fff34313          	not	t1,t1
   184e0:	0cd13c23          	sd	a3,216(sp)
   184e4:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcbf68>
   184e8:	01010593          	addi	a1,sp,16
   184ec:	000e8693          	mv	a3,t4
   184f0:	0c113423          	sd	ra,200(sp)
   184f4:	02f12023          	sw	a5,32(sp)
   184f8:	0ee13023          	sd	a4,224(sp)
   184fc:	0f013823          	sd	a6,240(sp)
   18500:	0f113c23          	sd	a7,248(sp)
   18504:	01c13823          	sd	t3,16(sp)
   18508:	03c13423          	sd	t3,40(sp)
   1850c:	02612823          	sw	t1,48(sp)
   18510:	00612e23          	sw	t1,28(sp)
   18514:	01d13423          	sd	t4,8(sp)
   18518:	430000ef          	jal	ra,18948 <_svfprintf_r>
   1851c:	01013783          	ld	a5,16(sp)
   18520:	00078023          	sb	zero,0(a5)
   18524:	0c813083          	ld	ra,200(sp)
   18528:	10010113          	addi	sp,sp,256
   1852c:	00008067          	ret

0000000000018530 <sprintf>:
   18530:	00050e13          	mv	t3,a0
   18534:	f0010113          	addi	sp,sp,-256
   18538:	7581b503          	ld	a0,1880(gp) # 241f8 <_impure_ptr>
   1853c:	0d010e93          	addi	t4,sp,208
   18540:	0ef13423          	sd	a5,232(sp)
   18544:	80000337          	lui	t1,0x80000
   18548:	ffff07b7          	lui	a5,0xffff0
   1854c:	fff34313          	not	t1,t1
   18550:	0cc13823          	sd	a2,208(sp)
   18554:	0cd13c23          	sd	a3,216(sp)
   18558:	20878793          	addi	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcbf68>
   1855c:	00058613          	mv	a2,a1
   18560:	000e8693          	mv	a3,t4
   18564:	01010593          	addi	a1,sp,16
   18568:	0c113423          	sd	ra,200(sp)
   1856c:	02f12023          	sw	a5,32(sp)
   18570:	0ee13023          	sd	a4,224(sp)
   18574:	0f013823          	sd	a6,240(sp)
   18578:	0f113c23          	sd	a7,248(sp)
   1857c:	01c13823          	sd	t3,16(sp)
   18580:	03c13423          	sd	t3,40(sp)
   18584:	02612823          	sw	t1,48(sp)
   18588:	00612e23          	sw	t1,28(sp)
   1858c:	01d13423          	sd	t4,8(sp)
   18590:	3b8000ef          	jal	ra,18948 <_svfprintf_r>
   18594:	01013783          	ld	a5,16(sp)
   18598:	00078023          	sb	zero,0(a5)
   1859c:	0c813083          	ld	ra,200(sp)
   185a0:	10010113          	addi	sp,sp,256
   185a4:	00008067          	ret

00000000000185a8 <__sread>:
   185a8:	ff010113          	addi	sp,sp,-16
   185ac:	00813023          	sd	s0,0(sp)
   185b0:	00058413          	mv	s0,a1
   185b4:	01259583          	lh	a1,18(a1)
   185b8:	00113423          	sd	ra,8(sp)
   185bc:	3dd040ef          	jal	ra,1d198 <_read_r>
   185c0:	02054063          	bltz	a0,185e0 <__sread+0x38>
   185c4:	09043783          	ld	a5,144(s0)
   185c8:	00813083          	ld	ra,8(sp)
   185cc:	00a787b3          	add	a5,a5,a0
   185d0:	08f43823          	sd	a5,144(s0)
   185d4:	00013403          	ld	s0,0(sp)
   185d8:	01010113          	addi	sp,sp,16
   185dc:	00008067          	ret
   185e0:	01045783          	lhu	a5,16(s0)
   185e4:	fffff737          	lui	a4,0xfffff
   185e8:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdad5f>
   185ec:	00e7f7b3          	and	a5,a5,a4
   185f0:	00813083          	ld	ra,8(sp)
   185f4:	00f41823          	sh	a5,16(s0)
   185f8:	00013403          	ld	s0,0(sp)
   185fc:	01010113          	addi	sp,sp,16
   18600:	00008067          	ret

0000000000018604 <__seofread>:
   18604:	00000513          	li	a0,0
   18608:	00008067          	ret

000000000001860c <__swrite>:
   1860c:	01059783          	lh	a5,16(a1)
   18610:	fd010113          	addi	sp,sp,-48
   18614:	02813023          	sd	s0,32(sp)
   18618:	00913c23          	sd	s1,24(sp)
   1861c:	01213823          	sd	s2,16(sp)
   18620:	01313423          	sd	s3,8(sp)
   18624:	02113423          	sd	ra,40(sp)
   18628:	1007f713          	andi	a4,a5,256
   1862c:	00058413          	mv	s0,a1
   18630:	00050493          	mv	s1,a0
   18634:	01259583          	lh	a1,18(a1)
   18638:	00060913          	mv	s2,a2
   1863c:	00068993          	mv	s3,a3
   18640:	02071e63          	bnez	a4,1867c <__swrite+0x70>
   18644:	fffff737          	lui	a4,0xfffff
   18648:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdad5f>
   1864c:	00e7f7b3          	and	a5,a5,a4
   18650:	00f41823          	sh	a5,16(s0)
   18654:	02013403          	ld	s0,32(sp)
   18658:	02813083          	ld	ra,40(sp)
   1865c:	00098693          	mv	a3,s3
   18660:	00090613          	mv	a2,s2
   18664:	00813983          	ld	s3,8(sp)
   18668:	01013903          	ld	s2,16(sp)
   1866c:	00048513          	mv	a0,s1
   18670:	01813483          	ld	s1,24(sp)
   18674:	03010113          	addi	sp,sp,48
   18678:	2d50306f          	j	1c14c <_write_r>
   1867c:	00200693          	li	a3,2
   18680:	00000613          	li	a2,0
   18684:	7f4040ef          	jal	ra,1ce78 <_lseek_r>
   18688:	01041783          	lh	a5,16(s0)
   1868c:	01241583          	lh	a1,18(s0)
   18690:	fb5ff06f          	j	18644 <__swrite+0x38>

0000000000018694 <__sseek>:
   18694:	ff010113          	addi	sp,sp,-16
   18698:	00813023          	sd	s0,0(sp)
   1869c:	00058413          	mv	s0,a1
   186a0:	01259583          	lh	a1,18(a1)
   186a4:	00113423          	sd	ra,8(sp)
   186a8:	7d0040ef          	jal	ra,1ce78 <_lseek_r>
   186ac:	fff00793          	li	a5,-1
   186b0:	02f50463          	beq	a0,a5,186d8 <__sseek+0x44>
   186b4:	01045783          	lhu	a5,16(s0)
   186b8:	00001737          	lui	a4,0x1
   186bc:	00813083          	ld	ra,8(sp)
   186c0:	00e7e7b3          	or	a5,a5,a4
   186c4:	08a43823          	sd	a0,144(s0)
   186c8:	00f41823          	sh	a5,16(s0)
   186cc:	00013403          	ld	s0,0(sp)
   186d0:	01010113          	addi	sp,sp,16
   186d4:	00008067          	ret
   186d8:	01045783          	lhu	a5,16(s0)
   186dc:	fffff737          	lui	a4,0xfffff
   186e0:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdad5f>
   186e4:	00e7f7b3          	and	a5,a5,a4
   186e8:	00813083          	ld	ra,8(sp)
   186ec:	00f41823          	sh	a5,16(s0)
   186f0:	00013403          	ld	s0,0(sp)
   186f4:	01010113          	addi	sp,sp,16
   186f8:	00008067          	ret

00000000000186fc <__sclose>:
   186fc:	01259583          	lh	a1,18(a1)
   18700:	4ad0306f          	j	1c3ac <_close_r>

0000000000018704 <strcpy>:
   18704:	00b567b3          	or	a5,a0,a1
   18708:	0077f793          	andi	a5,a5,7
   1870c:	0a079463          	bnez	a5,187b4 <strcpy+0xb0>
   18710:	7401b683          	ld	a3,1856(gp) # 241e0 <mask>
   18714:	0005b703          	ld	a4,0(a1)
   18718:	fff00613          	li	a2,-1
   1871c:	00d777b3          	and	a5,a4,a3
   18720:	00d787b3          	add	a5,a5,a3
   18724:	00e7e7b3          	or	a5,a5,a4
   18728:	00d7e7b3          	or	a5,a5,a3
   1872c:	0ac79263          	bne	a5,a2,187d0 <strcpy+0xcc>
   18730:	00050613          	mv	a2,a0
   18734:	fff00813          	li	a6,-1
   18738:	00e63023          	sd	a4,0(a2) # 3fe00000 <__BSS_END__+0x3fddbd60>
   1873c:	0085b703          	ld	a4,8(a1)
   18740:	00858593          	addi	a1,a1,8
   18744:	00860613          	addi	a2,a2,8
   18748:	00d777b3          	and	a5,a4,a3
   1874c:	00d787b3          	add	a5,a5,a3
   18750:	00e7e7b3          	or	a5,a5,a4
   18754:	00d7e7b3          	or	a5,a5,a3
   18758:	ff0780e3          	beq	a5,a6,18738 <strcpy+0x34>
   1875c:	0005c783          	lbu	a5,0(a1)
   18760:	0015c703          	lbu	a4,1(a1)
   18764:	0025c683          	lbu	a3,2(a1)
   18768:	00f60023          	sb	a5,0(a2)
   1876c:	04078263          	beqz	a5,187b0 <strcpy+0xac>
   18770:	00e600a3          	sb	a4,1(a2)
   18774:	02070e63          	beqz	a4,187b0 <strcpy+0xac>
   18778:	0035c783          	lbu	a5,3(a1)
   1877c:	00d60123          	sb	a3,2(a2)
   18780:	02068863          	beqz	a3,187b0 <strcpy+0xac>
   18784:	0045c703          	lbu	a4,4(a1)
   18788:	00f601a3          	sb	a5,3(a2)
   1878c:	02078263          	beqz	a5,187b0 <strcpy+0xac>
   18790:	0055c783          	lbu	a5,5(a1)
   18794:	00e60223          	sb	a4,4(a2)
   18798:	00070c63          	beqz	a4,187b0 <strcpy+0xac>
   1879c:	0065c703          	lbu	a4,6(a1)
   187a0:	00f602a3          	sb	a5,5(a2)
   187a4:	00078663          	beqz	a5,187b0 <strcpy+0xac>
   187a8:	00e60323          	sb	a4,6(a2)
   187ac:	02071663          	bnez	a4,187d8 <strcpy+0xd4>
   187b0:	00008067          	ret
   187b4:	00050793          	mv	a5,a0
   187b8:	0005c703          	lbu	a4,0(a1)
   187bc:	00178793          	addi	a5,a5,1
   187c0:	00158593          	addi	a1,a1,1
   187c4:	fee78fa3          	sb	a4,-1(a5)
   187c8:	fe0718e3          	bnez	a4,187b8 <strcpy+0xb4>
   187cc:	00008067          	ret
   187d0:	00050613          	mv	a2,a0
   187d4:	f89ff06f          	j	1875c <strcpy+0x58>
   187d8:	000603a3          	sb	zero,7(a2)
   187dc:	00008067          	ret

00000000000187e0 <strlen>:
   187e0:	00757793          	andi	a5,a0,7
   187e4:	00050713          	mv	a4,a0
   187e8:	06079a63          	bnez	a5,1885c <strlen+0x7c>
   187ec:	7401b683          	ld	a3,1856(gp) # 241e0 <mask>
   187f0:	fff00593          	li	a1,-1
   187f4:	00073603          	ld	a2,0(a4)
   187f8:	00870713          	addi	a4,a4,8
   187fc:	00d677b3          	and	a5,a2,a3
   18800:	00d787b3          	add	a5,a5,a3
   18804:	00c7e7b3          	or	a5,a5,a2
   18808:	00d7e7b3          	or	a5,a5,a3
   1880c:	feb784e3          	beq	a5,a1,187f4 <strlen+0x14>
   18810:	ff874683          	lbu	a3,-8(a4)
   18814:	40a707b3          	sub	a5,a4,a0
   18818:	06068463          	beqz	a3,18880 <strlen+0xa0>
   1881c:	ff974683          	lbu	a3,-7(a4)
   18820:	04068c63          	beqz	a3,18878 <strlen+0x98>
   18824:	ffa74683          	lbu	a3,-6(a4)
   18828:	06068463          	beqz	a3,18890 <strlen+0xb0>
   1882c:	ffb74683          	lbu	a3,-5(a4)
   18830:	04068c63          	beqz	a3,18888 <strlen+0xa8>
   18834:	ffc74683          	lbu	a3,-4(a4)
   18838:	ffd74603          	lbu	a2,-3(a4)
   1883c:	ffe74503          	lbu	a0,-2(a4)
   18840:	04068c63          	beqz	a3,18898 <strlen+0xb8>
   18844:	04060e63          	beqz	a2,188a0 <strlen+0xc0>
   18848:	00a03533          	snez	a0,a0
   1884c:	00f50533          	add	a0,a0,a5
   18850:	ffe50513          	addi	a0,a0,-2
   18854:	00008067          	ret
   18858:	f8068ae3          	beqz	a3,187ec <strlen+0xc>
   1885c:	00074783          	lbu	a5,0(a4)
   18860:	00170713          	addi	a4,a4,1
   18864:	00777693          	andi	a3,a4,7
   18868:	fe0798e3          	bnez	a5,18858 <strlen+0x78>
   1886c:	40a70733          	sub	a4,a4,a0
   18870:	fff70513          	addi	a0,a4,-1
   18874:	00008067          	ret
   18878:	ff978513          	addi	a0,a5,-7
   1887c:	00008067          	ret
   18880:	ff878513          	addi	a0,a5,-8
   18884:	00008067          	ret
   18888:	ffb78513          	addi	a0,a5,-5
   1888c:	00008067          	ret
   18890:	ffa78513          	addi	a0,a5,-6
   18894:	00008067          	ret
   18898:	ffc78513          	addi	a0,a5,-4
   1889c:	00008067          	ret
   188a0:	ffd78513          	addi	a0,a5,-3
   188a4:	00008067          	ret

00000000000188a8 <strncpy>:
   188a8:	00a5e7b3          	or	a5,a1,a0
   188ac:	0077f793          	andi	a5,a5,7
   188b0:	00050713          	mv	a4,a0
   188b4:	06079463          	bnez	a5,1891c <strncpy+0x74>
   188b8:	00700793          	li	a5,7
   188bc:	06c7f063          	bgeu	a5,a2,1891c <strncpy+0x74>
   188c0:	7181b303          	ld	t1,1816(gp) # 241b8 <__SDATA_BEGIN__>
   188c4:	7201b883          	ld	a7,1824(gp) # 241c0 <__SDATA_BEGIN__+0x8>
   188c8:	00700e13          	li	t3,7
   188cc:	0005b683          	ld	a3,0(a1)
   188d0:	006687b3          	add	a5,a3,t1
   188d4:	fff6c813          	not	a6,a3
   188d8:	0107f7b3          	and	a5,a5,a6
   188dc:	0117f7b3          	and	a5,a5,a7
   188e0:	02079e63          	bnez	a5,1891c <strncpy+0x74>
   188e4:	00d73023          	sd	a3,0(a4)
   188e8:	ff860613          	addi	a2,a2,-8
   188ec:	00870713          	addi	a4,a4,8
   188f0:	00858593          	addi	a1,a1,8
   188f4:	fcce6ce3          	bltu	t3,a2,188cc <strncpy+0x24>
   188f8:	00158593          	addi	a1,a1,1
   188fc:	00170793          	addi	a5,a4,1
   18900:	02060463          	beqz	a2,18928 <strncpy+0x80>
   18904:	fff5c683          	lbu	a3,-1(a1)
   18908:	fff60813          	addi	a6,a2,-1
   1890c:	fed78fa3          	sb	a3,-1(a5)
   18910:	00068e63          	beqz	a3,1892c <strncpy+0x84>
   18914:	00078713          	mv	a4,a5
   18918:	00080613          	mv	a2,a6
   1891c:	00158593          	addi	a1,a1,1
   18920:	00170793          	addi	a5,a4,1
   18924:	fe0610e3          	bnez	a2,18904 <strncpy+0x5c>
   18928:	00008067          	ret
   1892c:	00c70633          	add	a2,a4,a2
   18930:	00080a63          	beqz	a6,18944 <strncpy+0x9c>
   18934:	00178793          	addi	a5,a5,1
   18938:	fe078fa3          	sb	zero,-1(a5)
   1893c:	fec79ce3          	bne	a5,a2,18934 <strncpy+0x8c>
   18940:	00008067          	ret
   18944:	00008067          	ret

0000000000018948 <_svfprintf_r>:
   18948:	d8010113          	addi	sp,sp,-640
   1894c:	26113c23          	sd	ra,632(sp)
   18950:	25313c23          	sd	s3,600(sp)
   18954:	25413823          	sd	s4,592(sp)
   18958:	23a13023          	sd	s10,544(sp)
   1895c:	00058a13          	mv	s4,a1
   18960:	00060d13          	mv	s10,a2
   18964:	00d13c23          	sd	a3,24(sp)
   18968:	26813823          	sd	s0,624(sp)
   1896c:	26913423          	sd	s1,616(sp)
   18970:	27213023          	sd	s2,608(sp)
   18974:	25513423          	sd	s5,584(sp)
   18978:	25613023          	sd	s6,576(sp)
   1897c:	23713c23          	sd	s7,568(sp)
   18980:	23813823          	sd	s8,560(sp)
   18984:	23913423          	sd	s9,552(sp)
   18988:	21b13c23          	sd	s11,536(sp)
   1898c:	00050993          	mv	s3,a0
   18990:	c89fd0ef          	jal	ra,16618 <_localeconv_r>
   18994:	00053783          	ld	a5,0(a0)
   18998:	00078513          	mv	a0,a5
   1899c:	06f13823          	sd	a5,112(sp)
   189a0:	e41ff0ef          	jal	ra,187e0 <strlen>
   189a4:	010a5783          	lhu	a5,16(s4)
   189a8:	10013023          	sd	zero,256(sp)
   189ac:	10013423          	sd	zero,264(sp)
   189b0:	0807f793          	andi	a5,a5,128
   189b4:	06a13423          	sd	a0,104(sp)
   189b8:	00078863          	beqz	a5,189c8 <_svfprintf_r+0x80>
   189bc:	018a3783          	ld	a5,24(s4)
   189c0:	00079463          	bnez	a5,189c8 <_svfprintf_r+0x80>
   189c4:	4600106f          	j	19e24 <_svfprintf_r+0x14dc>
   189c8:	000217b7          	lui	a5,0x21
   189cc:	4c87b783          	ld	a5,1224(a5) # 214c8 <zeroes.0+0x40>
   189d0:	19010b13          	addi	s6,sp,400
   189d4:	11613823          	sd	s6,272(sp)
   189d8:	08f13c23          	sd	a5,152(sp)
   189dc:	000217b7          	lui	a5,0x21
   189e0:	4a87b783          	ld	a5,1192(a5) # 214a8 <zeroes.0+0x20>
   189e4:	12013023          	sd	zero,288(sp)
   189e8:	10012c23          	sw	zero,280(sp)
   189ec:	08f13823          	sd	a5,144(sp)
   189f0:	000217b7          	lui	a5,0x21
   189f4:	4b87b783          	ld	a5,1208(a5) # 214b8 <zeroes.0+0x30>
   189f8:	02013023          	sd	zero,32(sp)
   189fc:	02013423          	sd	zero,40(sp)
   18a00:	0af13023          	sd	a5,160(sp)
   18a04:	000d4783          	lbu	a5,0(s10)
   18a08:	06013c23          	sd	zero,120(sp)
   18a0c:	06013023          	sd	zero,96(sp)
   18a10:	08013023          	sd	zero,128(sp)
   18a14:	08013423          	sd	zero,136(sp)
   18a18:	00013423          	sd	zero,8(sp)
   18a1c:	000b0313          	mv	t1,s6
   18a20:	24078663          	beqz	a5,18c6c <_svfprintf_r+0x324>
   18a24:	000d0413          	mv	s0,s10
   18a28:	02500713          	li	a4,37
   18a2c:	3ae78063          	beq	a5,a4,18dcc <_svfprintf_r+0x484>
   18a30:	00144783          	lbu	a5,1(s0)
   18a34:	00140413          	addi	s0,s0,1
   18a38:	fe079ae3          	bnez	a5,18a2c <_svfprintf_r+0xe4>
   18a3c:	41a404bb          	subw	s1,s0,s10
   18a40:	22048663          	beqz	s1,18c6c <_svfprintf_r+0x324>
   18a44:	12013703          	ld	a4,288(sp)
   18a48:	11812783          	lw	a5,280(sp)
   18a4c:	01a33023          	sd	s10,0(t1) # ffffffff80000000 <__BSS_END__+0xffffffff7ffdbd60>
   18a50:	00970733          	add	a4,a4,s1
   18a54:	0017879b          	addiw	a5,a5,1
   18a58:	00933423          	sd	s1,8(t1)
   18a5c:	12e13023          	sd	a4,288(sp)
   18a60:	10f12c23          	sw	a5,280(sp)
   18a64:	0007871b          	sext.w	a4,a5
   18a68:	00700793          	li	a5,7
   18a6c:	01030313          	addi	t1,t1,16
   18a70:	36e7c663          	blt	a5,a4,18ddc <_svfprintf_r+0x494>
   18a74:	00813703          	ld	a4,8(sp)
   18a78:	00044783          	lbu	a5,0(s0)
   18a7c:	0097073b          	addw	a4,a4,s1
   18a80:	00e13423          	sd	a4,8(sp)
   18a84:	1e078463          	beqz	a5,18c6c <_svfprintf_r+0x324>
   18a88:	000227b7          	lui	a5,0x22
   18a8c:	00144e03          	lbu	t3,1(s0)
   18a90:	0c010fa3          	sb	zero,223(sp)
   18a94:	00140413          	addi	s0,s0,1
   18a98:	fff00c13          	li	s8,-1
   18a9c:	00000a93          	li	s5,0
   18aa0:	00000493          	li	s1,0
   18aa4:	05a00913          	li	s2,90
   18aa8:	95078b93          	addi	s7,a5,-1712 # 21950 <__mprec_bigtens+0x28>
   18aac:	00900d93          	li	s11,9
   18ab0:	00140413          	addi	s0,s0,1
   18ab4:	000e0c9b          	sext.w	s9,t3
   18ab8:	02a00613          	li	a2,42
   18abc:	fe0c879b          	addiw	a5,s9,-32
   18ac0:	0007871b          	sext.w	a4,a5
   18ac4:	04e96863          	bltu	s2,a4,18b14 <_svfprintf_r+0x1cc>
   18ac8:	02079713          	slli	a4,a5,0x20
   18acc:	01e75793          	srli	a5,a4,0x1e
   18ad0:	017787b3          	add	a5,a5,s7
   18ad4:	0007a783          	lw	a5,0(a5)
   18ad8:	00078067          	jr	a5
   18adc:	00000a93          	li	s5,0
   18ae0:	00044703          	lbu	a4,0(s0)
   18ae4:	002a979b          	slliw	a5,s5,0x2
   18ae8:	01578abb          	addw	s5,a5,s5
   18aec:	fd0c8e1b          	addiw	t3,s9,-48
   18af0:	001a9a9b          	slliw	s5,s5,0x1
   18af4:	fd07079b          	addiw	a5,a4,-48
   18af8:	00140413          	addi	s0,s0,1
   18afc:	015e0abb          	addw	s5,t3,s5
   18b00:	00070c9b          	sext.w	s9,a4
   18b04:	fcfdfee3          	bgeu	s11,a5,18ae0 <_svfprintf_r+0x198>
   18b08:	fe0c879b          	addiw	a5,s9,-32
   18b0c:	0007871b          	sext.w	a4,a5
   18b10:	fae97ce3          	bgeu	s2,a4,18ac8 <_svfprintf_r+0x180>
   18b14:	140c8c63          	beqz	s9,18c6c <_svfprintf_r+0x324>
   18b18:	13910423          	sb	s9,296(sp)
   18b1c:	0c010fa3          	sb	zero,223(sp)
   18b20:	00100913          	li	s2,1
   18b24:	00100b93          	li	s7,1
   18b28:	12810d13          	addi	s10,sp,296
   18b2c:	00013823          	sd	zero,16(sp)
   18b30:	00000c13          	li	s8,0
   18b34:	04013423          	sd	zero,72(sp)
   18b38:	04013c23          	sd	zero,88(sp)
   18b3c:	04013823          	sd	zero,80(sp)
   18b40:	0024f293          	andi	t0,s1,2
   18b44:	00028463          	beqz	t0,18b4c <_svfprintf_r+0x204>
   18b48:	0029091b          	addiw	s2,s2,2
   18b4c:	0844fd93          	andi	s11,s1,132
   18b50:	12013783          	ld	a5,288(sp)
   18b54:	000d9663          	bnez	s11,18b60 <_svfprintf_r+0x218>
   18b58:	412a86bb          	subw	a3,s5,s2
   18b5c:	54d040e3          	bgtz	a3,1989c <_svfprintf_r+0xf54>
   18b60:	0df14703          	lbu	a4,223(sp)
   18b64:	02070c63          	beqz	a4,18b9c <_svfprintf_r+0x254>
   18b68:	11812703          	lw	a4,280(sp)
   18b6c:	0df10693          	addi	a3,sp,223
   18b70:	00d33023          	sd	a3,0(t1)
   18b74:	0017071b          	addiw	a4,a4,1
   18b78:	00100693          	li	a3,1
   18b7c:	00178793          	addi	a5,a5,1
   18b80:	00d33423          	sd	a3,8(t1)
   18b84:	10e12c23          	sw	a4,280(sp)
   18b88:	0007069b          	sext.w	a3,a4
   18b8c:	12f13023          	sd	a5,288(sp)
   18b90:	00700713          	li	a4,7
   18b94:	01030313          	addi	t1,t1,16
   18b98:	50d74063          	blt	a4,a3,19098 <_svfprintf_r+0x750>
   18b9c:	02028c63          	beqz	t0,18bd4 <_svfprintf_r+0x28c>
   18ba0:	11812703          	lw	a4,280(sp)
   18ba4:	0e010693          	addi	a3,sp,224
   18ba8:	00d33023          	sd	a3,0(t1)
   18bac:	0017071b          	addiw	a4,a4,1
   18bb0:	00200693          	li	a3,2
   18bb4:	00278793          	addi	a5,a5,2
   18bb8:	00d33423          	sd	a3,8(t1)
   18bbc:	10e12c23          	sw	a4,280(sp)
   18bc0:	0007069b          	sext.w	a3,a4
   18bc4:	12f13023          	sd	a5,288(sp)
   18bc8:	00700713          	li	a4,7
   18bcc:	01030313          	addi	t1,t1,16
   18bd0:	5ad746e3          	blt	a4,a3,1997c <_svfprintf_r+0x1034>
   18bd4:	08000713          	li	a4,128
   18bd8:	30ed80e3          	beq	s11,a4,196d8 <_svfprintf_r+0xd90>
   18bdc:	417c0c3b          	subw	s8,s8,s7
   18be0:	3d8046e3          	bgtz	s8,197ac <_svfprintf_r+0xe64>
   18be4:	1004f713          	andi	a4,s1,256
   18be8:	180712e3          	bnez	a4,1956c <_svfprintf_r+0xc24>
   18bec:	11812703          	lw	a4,280(sp)
   18bf0:	017787b3          	add	a5,a5,s7
   18bf4:	01a33023          	sd	s10,0(t1)
   18bf8:	0017069b          	addiw	a3,a4,1
   18bfc:	00068713          	mv	a4,a3
   18c00:	01733423          	sd	s7,8(t1)
   18c04:	10e12c23          	sw	a4,280(sp)
   18c08:	12f13023          	sd	a5,288(sp)
   18c0c:	00700713          	li	a4,7
   18c10:	5ad74663          	blt	a4,a3,191bc <_svfprintf_r+0x874>
   18c14:	01030313          	addi	t1,t1,16
   18c18:	0044f493          	andi	s1,s1,4
   18c1c:	00048663          	beqz	s1,18c28 <_svfprintf_r+0x2e0>
   18c20:	412a84bb          	subw	s1,s5,s2
   18c24:	56904ce3          	bgtz	s1,1999c <_svfprintf_r+0x1054>
   18c28:	000a8713          	mv	a4,s5
   18c2c:	012ad463          	bge	s5,s2,18c34 <_svfprintf_r+0x2ec>
   18c30:	00090713          	mv	a4,s2
   18c34:	00813683          	ld	a3,8(sp)
   18c38:	00d7073b          	addw	a4,a4,a3
   18c3c:	00e13423          	sd	a4,8(sp)
   18c40:	420794e3          	bnez	a5,19868 <_svfprintf_r+0xf20>
   18c44:	01013783          	ld	a5,16(sp)
   18c48:	10012c23          	sw	zero,280(sp)
   18c4c:	00078863          	beqz	a5,18c5c <_svfprintf_r+0x314>
   18c50:	01013583          	ld	a1,16(sp)
   18c54:	00098513          	mv	a0,s3
   18c58:	925fa0ef          	jal	ra,1357c <_free_r>
   18c5c:	000b0313          	mv	t1,s6
   18c60:	00040d13          	mv	s10,s0
   18c64:	000d4783          	lbu	a5,0(s10)
   18c68:	da079ee3          	bnez	a5,18a24 <_svfprintf_r+0xdc>
   18c6c:	12013783          	ld	a5,288(sp)
   18c70:	00078463          	beqz	a5,18c78 <_svfprintf_r+0x330>
   18c74:	14d0106f          	j	1a5c0 <_svfprintf_r+0x1c78>
   18c78:	010a5783          	lhu	a5,16(s4)
   18c7c:	0407f793          	andi	a5,a5,64
   18c80:	00078463          	beqz	a5,18c88 <_svfprintf_r+0x340>
   18c84:	7890106f          	j	1ac0c <_svfprintf_r+0x22c4>
   18c88:	27813083          	ld	ra,632(sp)
   18c8c:	27013403          	ld	s0,624(sp)
   18c90:	00813503          	ld	a0,8(sp)
   18c94:	26813483          	ld	s1,616(sp)
   18c98:	26013903          	ld	s2,608(sp)
   18c9c:	25813983          	ld	s3,600(sp)
   18ca0:	25013a03          	ld	s4,592(sp)
   18ca4:	24813a83          	ld	s5,584(sp)
   18ca8:	24013b03          	ld	s6,576(sp)
   18cac:	23813b83          	ld	s7,568(sp)
   18cb0:	23013c03          	ld	s8,560(sp)
   18cb4:	22813c83          	ld	s9,552(sp)
   18cb8:	22013d03          	ld	s10,544(sp)
   18cbc:	21813d83          	ld	s11,536(sp)
   18cc0:	28010113          	addi	sp,sp,640
   18cc4:	00008067          	ret
   18cc8:	0104e493          	ori	s1,s1,16
   18ccc:	00044e03          	lbu	t3,0(s0)
   18cd0:	0004849b          	sext.w	s1,s1
   18cd4:	dddff06f          	j	18ab0 <_svfprintf_r+0x168>
   18cd8:	0104e493          	ori	s1,s1,16
   18cdc:	0004849b          	sext.w	s1,s1
   18ce0:	01813683          	ld	a3,24(sp)
   18ce4:	0204f793          	andi	a5,s1,32
   18ce8:	00868713          	addi	a4,a3,8
   18cec:	50078c63          	beqz	a5,19204 <_svfprintf_r+0x8bc>
   18cf0:	0006b783          	ld	a5,0(a3)
   18cf4:	00078913          	mv	s2,a5
   18cf8:	5207c863          	bltz	a5,19228 <_svfprintf_r+0x8e0>
   18cfc:	fff00793          	li	a5,-1
   18d00:	00fc1463          	bne	s8,a5,18d08 <_svfprintf_r+0x3c0>
   18d04:	5980106f          	j	1a29c <_svfprintf_r+0x1954>
   18d08:	f7f4f493          	andi	s1,s1,-129
   18d0c:	00e13c23          	sd	a4,24(sp)
   18d10:	00048d9b          	sext.w	s11,s1
   18d14:	6a090ee3          	beqz	s2,19bd0 <_svfprintf_r+0x1288>
   18d18:	00900793          	li	a5,9
   18d1c:	0127f463          	bgeu	a5,s2,18d24 <_svfprintf_r+0x3dc>
   18d20:	3d80106f          	j	1a0f8 <_svfprintf_r+0x17b0>
   18d24:	0309091b          	addiw	s2,s2,48
   18d28:	192105a3          	sb	s2,395(sp)
   18d2c:	000d8493          	mv	s1,s11
   18d30:	00100b93          	li	s7,1
   18d34:	18b10d13          	addi	s10,sp,395
   18d38:	0df14783          	lbu	a5,223(sp)
   18d3c:	000b891b          	sext.w	s2,s7
   18d40:	018bd463          	bge	s7,s8,18d48 <_svfprintf_r+0x400>
   18d44:	000c091b          	sext.w	s2,s8
   18d48:	00013823          	sd	zero,16(sp)
   18d4c:	04013423          	sd	zero,72(sp)
   18d50:	04013c23          	sd	zero,88(sp)
   18d54:	04013823          	sd	zero,80(sp)
   18d58:	de0784e3          	beqz	a5,18b40 <_svfprintf_r+0x1f8>
   18d5c:	0019091b          	addiw	s2,s2,1
   18d60:	de1ff06f          	j	18b40 <_svfprintf_r+0x1f8>
   18d64:	0104e493          	ori	s1,s1,16
   18d68:	0004849b          	sext.w	s1,s1
   18d6c:	01813683          	ld	a3,24(sp)
   18d70:	0204f793          	andi	a5,s1,32
   18d74:	00868713          	addi	a4,a3,8
   18d78:	46078263          	beqz	a5,191dc <_svfprintf_r+0x894>
   18d7c:	0006b903          	ld	s2,0(a3)
   18d80:	bff4f493          	andi	s1,s1,-1025
   18d84:	00048d9b          	sext.w	s11,s1
   18d88:	00e13c23          	sd	a4,24(sp)
   18d8c:	00000793          	li	a5,0
   18d90:	0c010fa3          	sb	zero,223(sp)
   18d94:	fff00713          	li	a4,-1
   18d98:	4aec0863          	beq	s8,a4,19248 <_svfprintf_r+0x900>
   18d9c:	f7fdf493          	andi	s1,s11,-129
   18da0:	0004849b          	sext.w	s1,s1
   18da4:	2e0918e3          	bnez	s2,19894 <_svfprintf_r+0xf4c>
   18da8:	0e0c12e3          	bnez	s8,1968c <_svfprintf_r+0xd44>
   18dac:	620796e3          	bnez	a5,19bd8 <_svfprintf_r+0x1290>
   18db0:	001dfb93          	andi	s7,s11,1
   18db4:	18c10d13          	addi	s10,sp,396
   18db8:	f80b80e3          	beqz	s7,18d38 <_svfprintf_r+0x3f0>
   18dbc:	03000793          	li	a5,48
   18dc0:	18f105a3          	sb	a5,395(sp)
   18dc4:	18b10d13          	addi	s10,sp,395
   18dc8:	f71ff06f          	j	18d38 <_svfprintf_r+0x3f0>
   18dcc:	41a404bb          	subw	s1,s0,s10
   18dd0:	c6049ae3          	bnez	s1,18a44 <_svfprintf_r+0xfc>
   18dd4:	00044783          	lbu	a5,0(s0)
   18dd8:	cadff06f          	j	18a84 <_svfprintf_r+0x13c>
   18ddc:	11010613          	addi	a2,sp,272
   18de0:	000a0593          	mv	a1,s4
   18de4:	00098513          	mv	a0,s3
   18de8:	46d040ef          	jal	ra,1da54 <__ssprint_r>
   18dec:	e80516e3          	bnez	a0,18c78 <_svfprintf_r+0x330>
   18df0:	000b0313          	mv	t1,s6
   18df4:	c81ff06f          	j	18a74 <_svfprintf_r+0x12c>
   18df8:	0084f793          	andi	a5,s1,8
   18dfc:	740790e3          	bnez	a5,19d3c <_svfprintf_r+0x13f4>
   18e00:	01813783          	ld	a5,24(sp)
   18e04:	00613823          	sd	t1,16(sp)
   18e08:	0007b507          	fld	fa0,0(a5)
   18e0c:	00878793          	addi	a5,a5,8
   18e10:	00f13c23          	sd	a5,24(sp)
   18e14:	034080ef          	jal	ra,20e48 <__extenddftf2>
   18e18:	01013303          	ld	t1,16(sp)
   18e1c:	10a13023          	sd	a0,256(sp)
   18e20:	10b13423          	sd	a1,264(sp)
   18e24:	10010513          	addi	a0,sp,256
   18e28:	00613823          	sd	t1,16(sp)
   18e2c:	f7cfd0ef          	jal	ra,165a8 <_ldcheck>
   18e30:	0ea12423          	sw	a0,232(sp)
   18e34:	00200793          	li	a5,2
   18e38:	01013303          	ld	t1,16(sp)
   18e3c:	00f51463          	bne	a0,a5,18e44 <_svfprintf_r+0x4fc>
   18e40:	4d00106f          	j	1a310 <_svfprintf_r+0x19c8>
   18e44:	00100793          	li	a5,1
   18e48:	00f51463          	bne	a0,a5,18e50 <_svfprintf_r+0x508>
   18e4c:	66c0106f          	j	1a4b8 <_svfprintf_r+0x1b70>
   18e50:	06100793          	li	a5,97
   18e54:	00fc9463          	bne	s9,a5,18e5c <_svfprintf_r+0x514>
   18e58:	5890106f          	j	1abe0 <_svfprintf_r+0x2298>
   18e5c:	04100793          	li	a5,65
   18e60:	00fc9463          	bne	s9,a5,18e68 <_svfprintf_r+0x520>
   18e64:	2390106f          	j	1a89c <_svfprintf_r+0x1f54>
   18e68:	fdfcf713          	andi	a4,s9,-33
   18e6c:	fff00793          	li	a5,-1
   18e70:	04e13c23          	sd	a4,88(sp)
   18e74:	00fc1463          	bne	s8,a5,18e7c <_svfprintf_r+0x534>
   18e78:	7940106f          	j	1a60c <_svfprintf_r+0x1cc4>
   18e7c:	04700793          	li	a5,71
   18e80:	00f71463          	bne	a4,a5,18e88 <_svfprintf_r+0x540>
   18e84:	5790106f          	j	1abfc <_svfprintf_r+0x22b4>
   18e88:	10813b83          	ld	s7,264(sp)
   18e8c:	1004e793          	ori	a5,s1,256
   18e90:	0a913c23          	sd	s1,184(sp)
   18e94:	10013d83          	ld	s11,256(sp)
   18e98:	0007879b          	sext.w	a5,a5
   18e9c:	000bd463          	bgez	s7,18ea4 <_svfprintf_r+0x55c>
   18ea0:	40d0106f          	j	1aaac <_svfprintf_r+0x2164>
   18ea4:	0c013423          	sd	zero,200(sp)
   18ea8:	00078493          	mv	s1,a5
   18eac:	00013823          	sd	zero,16(sp)
   18eb0:	05813703          	ld	a4,88(sp)
   18eb4:	04600793          	li	a5,70
   18eb8:	00f71463          	bne	a4,a5,18ec0 <_svfprintf_r+0x578>
   18ebc:	0310106f          	j	1a6ec <_svfprintf_r+0x1da4>
   18ec0:	04500793          	li	a5,69
   18ec4:	02613023          	sd	t1,32(sp)
   18ec8:	00f71463          	bne	a4,a5,18ed0 <_svfprintf_r+0x588>
   18ecc:	4dd0106f          	j	1aba8 <_svfprintf_r+0x2260>
   18ed0:	0e810793          	addi	a5,sp,232
   18ed4:	000c0713          	mv	a4,s8
   18ed8:	0f810893          	addi	a7,sp,248
   18edc:	0ec10813          	addi	a6,sp,236
   18ee0:	00200693          	li	a3,2
   18ee4:	000d8593          	mv	a1,s11
   18ee8:	000b8613          	mv	a2,s7
   18eec:	00098513          	mv	a0,s3
   18ef0:	c5cfc0ef          	jal	ra,1534c <_ldtoa_r>
   18ef4:	05813703          	ld	a4,88(sp)
   18ef8:	04700793          	li	a5,71
   18efc:	02013303          	ld	t1,32(sp)
   18f00:	00050d13          	mv	s10,a0
   18f04:	00f70463          	beq	a4,a5,18f0c <_svfprintf_r+0x5c4>
   18f08:	7190106f          	j	1ae20 <_svfprintf_r+0x24d8>
   18f0c:	0b813783          	ld	a5,184(sp)
   18f10:	0017f793          	andi	a5,a5,1
   18f14:	00078463          	beqz	a5,18f1c <_svfprintf_r+0x5d4>
   18f18:	4410106f          	j	1ab58 <_svfprintf_r+0x2210>
   18f1c:	0f813683          	ld	a3,248(sp)
   18f20:	41a687bb          	subw	a5,a3,s10
   18f24:	02f13023          	sd	a5,32(sp)
   18f28:	0e812703          	lw	a4,232(sp)
   18f2c:	04700793          	li	a5,71
   18f30:	04e13823          	sd	a4,80(sp)
   18f34:	05813703          	ld	a4,88(sp)
   18f38:	00f71463          	bne	a4,a5,18f40 <_svfprintf_r+0x5f8>
   18f3c:	6ec0106f          	j	1a628 <_svfprintf_r+0x1ce0>
   18f40:	05813703          	ld	a4,88(sp)
   18f44:	04600793          	li	a5,70
   18f48:	00f71463          	bne	a4,a5,18f50 <_svfprintf_r+0x608>
   18f4c:	12d0106f          	j	1a878 <_svfprintf_r+0x1f30>
   18f50:	05013783          	ld	a5,80(sp)
   18f54:	05813583          	ld	a1,88(sp)
   18f58:	04100613          	li	a2,65
   18f5c:	fff7879b          	addiw	a5,a5,-1
   18f60:	0ef12423          	sw	a5,232(sp)
   18f64:	0ffcf713          	zext.b	a4,s9
   18f68:	00000693          	li	a3,0
   18f6c:	00c59863          	bne	a1,a2,18f7c <_svfprintf_r+0x634>
   18f70:	00f7071b          	addiw	a4,a4,15
   18f74:	0ff77713          	zext.b	a4,a4
   18f78:	00100693          	li	a3,1
   18f7c:	0ee10823          	sb	a4,240(sp)
   18f80:	02b00713          	li	a4,43
   18f84:	0007da63          	bgez	a5,18f98 <_svfprintf_r+0x650>
   18f88:	05013703          	ld	a4,80(sp)
   18f8c:	00100793          	li	a5,1
   18f90:	40e787bb          	subw	a5,a5,a4
   18f94:	02d00713          	li	a4,45
   18f98:	0ee108a3          	sb	a4,241(sp)
   18f9c:	00900713          	li	a4,9
   18fa0:	00f74463          	blt	a4,a5,18fa8 <_svfprintf_r+0x660>
   18fa4:	58d0106f          	j	1ad30 <_svfprintf_r+0x23e8>
   18fa8:	0ff10513          	addi	a0,sp,255
   18fac:	00050593          	mv	a1,a0
   18fb0:	00a00693          	li	a3,10
   18fb4:	06300e93          	li	t4,99
   18fb8:	02d7e73b          	remw	a4,a5,a3
   18fbc:	00058613          	mv	a2,a1
   18fc0:	00078893          	mv	a7,a5
   18fc4:	fff58593          	addi	a1,a1,-1
   18fc8:	0307071b          	addiw	a4,a4,48
   18fcc:	fee60fa3          	sb	a4,-1(a2)
   18fd0:	02d7c7bb          	divw	a5,a5,a3
   18fd4:	ff1ec2e3          	blt	t4,a7,18fb8 <_svfprintf_r+0x670>
   18fd8:	0307879b          	addiw	a5,a5,48
   18fdc:	0ff7f693          	zext.b	a3,a5
   18fe0:	fed58fa3          	sb	a3,-1(a1)
   18fe4:	ffe60793          	addi	a5,a2,-2
   18fe8:	00a7e463          	bltu	a5,a0,18ff0 <_svfprintf_r+0x6a8>
   18fec:	6410106f          	j	1ae2c <_svfprintf_r+0x24e4>
   18ff0:	0f210713          	addi	a4,sp,242
   18ff4:	0080006f          	j	18ffc <_svfprintf_r+0x6b4>
   18ff8:	0007c683          	lbu	a3,0(a5)
   18ffc:	00d70023          	sb	a3,0(a4)
   19000:	00178793          	addi	a5,a5,1
   19004:	00170713          	addi	a4,a4,1
   19008:	fea798e3          	bne	a5,a0,18ff8 <_svfprintf_r+0x6b0>
   1900c:	10110793          	addi	a5,sp,257
   19010:	0f210713          	addi	a4,sp,242
   19014:	40c787b3          	sub	a5,a5,a2
   19018:	00f707b3          	add	a5,a4,a5
   1901c:	0f010713          	addi	a4,sp,240
   19020:	40e787bb          	subw	a5,a5,a4
   19024:	06f13c23          	sd	a5,120(sp)
   19028:	07813783          	ld	a5,120(sp)
   1902c:	02013683          	ld	a3,32(sp)
   19030:	00100713          	li	a4,1
   19034:	00d78bbb          	addw	s7,a5,a3
   19038:	000b8793          	mv	a5,s7
   1903c:	00d74463          	blt	a4,a3,19044 <_svfprintf_r+0x6fc>
   19040:	5210106f          	j	1ad60 <_svfprintf_r+0x2418>
   19044:	06813703          	ld	a4,104(sp)
   19048:	00e78bbb          	addw	s7,a5,a4
   1904c:	0b813783          	ld	a5,184(sp)
   19050:	fffbc913          	not	s2,s7
   19054:	43f95913          	srai	s2,s2,0x3f
   19058:	bff7f493          	andi	s1,a5,-1025
   1905c:	0004849b          	sext.w	s1,s1
   19060:	012bf933          	and	s2,s7,s2
   19064:	1004e493          	ori	s1,s1,256
   19068:	0009091b          	sext.w	s2,s2
   1906c:	04013423          	sd	zero,72(sp)
   19070:	04013c23          	sd	zero,88(sp)
   19074:	04013823          	sd	zero,80(sp)
   19078:	0c813783          	ld	a5,200(sp)
   1907c:	00079463          	bnez	a5,19084 <_svfprintf_r+0x73c>
   19080:	6200106f          	j	1a6a0 <_svfprintf_r+0x1d58>
   19084:	02d00793          	li	a5,45
   19088:	0cf10fa3          	sb	a5,223(sp)
   1908c:	00000c13          	li	s8,0
   19090:	0019091b          	addiw	s2,s2,1
   19094:	aadff06f          	j	18b40 <_svfprintf_r+0x1f8>
   19098:	11010613          	addi	a2,sp,272
   1909c:	000a0593          	mv	a1,s4
   190a0:	00098513          	mv	a0,s3
   190a4:	02513823          	sd	t0,48(sp)
   190a8:	1ad040ef          	jal	ra,1da54 <__ssprint_r>
   190ac:	7c051863          	bnez	a0,1987c <_svfprintf_r+0xf34>
   190b0:	12013783          	ld	a5,288(sp)
   190b4:	03013283          	ld	t0,48(sp)
   190b8:	000b0313          	mv	t1,s6
   190bc:	ae1ff06f          	j	18b9c <_svfprintf_r+0x254>
   190c0:	11812603          	lw	a2,280(sp)
   190c4:	00178c13          	addi	s8,a5,1
   190c8:	02013783          	ld	a5,32(sp)
   190cc:	0016071b          	addiw	a4,a2,1
   190d0:	00100593          	li	a1,1
   190d4:	01a33023          	sd	s10,0(t1)
   190d8:	00070693          	mv	a3,a4
   190dc:	01030b93          	addi	s7,t1,16
   190e0:	30f5d4e3          	bge	a1,a5,19be8 <_svfprintf_r+0x12a0>
   190e4:	00100613          	li	a2,1
   190e8:	10d12c23          	sw	a3,280(sp)
   190ec:	00c33423          	sd	a2,8(t1)
   190f0:	13813023          	sd	s8,288(sp)
   190f4:	00700693          	li	a3,7
   190f8:	3ae6cee3          	blt	a3,a4,19cb4 <_svfprintf_r+0x136c>
   190fc:	06813783          	ld	a5,104(sp)
   19100:	0017069b          	addiw	a3,a4,1
   19104:	07013703          	ld	a4,112(sp)
   19108:	00fc0c33          	add	s8,s8,a5
   1910c:	00fbb423          	sd	a5,8(s7)
   19110:	00ebb023          	sd	a4,0(s7)
   19114:	10d12c23          	sw	a3,280(sp)
   19118:	0006871b          	sext.w	a4,a3
   1911c:	13813023          	sd	s8,288(sp)
   19120:	00700693          	li	a3,7
   19124:	010b8b93          	addi	s7,s7,16
   19128:	3ae6c8e3          	blt	a3,a4,19cd8 <_svfprintf_r+0x1390>
   1912c:	10013503          	ld	a0,256(sp)
   19130:	10813583          	ld	a1,264(sp)
   19134:	00170e1b          	addiw	t3,a4,1
   19138:	00000613          	li	a2,0
   1913c:	00000693          	li	a3,0
   19140:	03c12823          	sw	t3,48(sp)
   19144:	02e13c23          	sd	a4,56(sp)
   19148:	598060ef          	jal	ra,1f6e0 <__eqtf2>
   1914c:	03012e03          	lw	t3,48(sp)
   19150:	02013783          	ld	a5,32(sp)
   19154:	010b8313          	addi	t1,s7,16
   19158:	000e061b          	sext.w	a2,t3
   1915c:	fff78c9b          	addiw	s9,a5,-1
   19160:	2a0508e3          	beqz	a0,19c10 <_svfprintf_r+0x12c8>
   19164:	001d0813          	addi	a6,s10,1
   19168:	019c0c33          	add	s8,s8,s9
   1916c:	010bb023          	sd	a6,0(s7)
   19170:	019bb423          	sd	s9,8(s7)
   19174:	13813023          	sd	s8,288(sp)
   19178:	11c12c23          	sw	t3,280(sp)
   1917c:	00700693          	li	a3,7
   19180:	74c6c6e3          	blt	a3,a2,1a0cc <_svfprintf_r+0x1784>
   19184:	03813703          	ld	a4,56(sp)
   19188:	020b8693          	addi	a3,s7,32
   1918c:	00030b93          	mv	s7,t1
   19190:	0027061b          	addiw	a2,a4,2
   19194:	00068313          	mv	t1,a3
   19198:	07813683          	ld	a3,120(sp)
   1919c:	0f010713          	addi	a4,sp,240
   191a0:	00ebb023          	sd	a4,0(s7)
   191a4:	018687b3          	add	a5,a3,s8
   191a8:	00dbb423          	sd	a3,8(s7)
   191ac:	12f13023          	sd	a5,288(sp)
   191b0:	10c12c23          	sw	a2,280(sp)
   191b4:	00700713          	li	a4,7
   191b8:	a6c750e3          	bge	a4,a2,18c18 <_svfprintf_r+0x2d0>
   191bc:	11010613          	addi	a2,sp,272
   191c0:	000a0593          	mv	a1,s4
   191c4:	00098513          	mv	a0,s3
   191c8:	08d040ef          	jal	ra,1da54 <__ssprint_r>
   191cc:	6a051863          	bnez	a0,1987c <_svfprintf_r+0xf34>
   191d0:	12013783          	ld	a5,288(sp)
   191d4:	000b0313          	mv	t1,s6
   191d8:	a41ff06f          	j	18c18 <_svfprintf_r+0x2d0>
   191dc:	0104f793          	andi	a5,s1,16
   191e0:	340790e3          	bnez	a5,19d20 <_svfprintf_r+0x13d8>
   191e4:	01813683          	ld	a3,24(sp)
   191e8:	0404f793          	andi	a5,s1,64
   191ec:	0006a903          	lw	s2,0(a3)
   191f0:	00079463          	bnez	a5,191f8 <_svfprintf_r+0x8b0>
   191f4:	2b40106f          	j	1a4a8 <_svfprintf_r+0x1b60>
   191f8:	03091913          	slli	s2,s2,0x30
   191fc:	03095913          	srli	s2,s2,0x30
   19200:	b81ff06f          	j	18d80 <_svfprintf_r+0x438>
   19204:	0104f793          	andi	a5,s1,16
   19208:	320792e3          	bnez	a5,19d2c <_svfprintf_r+0x13e4>
   1920c:	0404f793          	andi	a5,s1,64
   19210:	00079463          	bnez	a5,19218 <_svfprintf_r+0x8d0>
   19214:	2640106f          	j	1a478 <_svfprintf_r+0x1b30>
   19218:	01813783          	ld	a5,24(sp)
   1921c:	00079903          	lh	s2,0(a5)
   19220:	00090793          	mv	a5,s2
   19224:	ac07dce3          	bgez	a5,18cfc <_svfprintf_r+0x3b4>
   19228:	02d00793          	li	a5,45
   1922c:	0cf10fa3          	sb	a5,223(sp)
   19230:	00e13c23          	sd	a4,24(sp)
   19234:	fff00713          	li	a4,-1
   19238:	41200933          	neg	s2,s2
   1923c:	00048d93          	mv	s11,s1
   19240:	00100793          	li	a5,1
   19244:	b4ec1ce3          	bne	s8,a4,18d9c <_svfprintf_r+0x454>
   19248:	00100713          	li	a4,1
   1924c:	ace786e3          	beq	a5,a4,18d18 <_svfprintf_r+0x3d0>
   19250:	00200713          	li	a4,2
   19254:	44e78863          	beq	a5,a4,196a4 <_svfprintf_r+0xd5c>
   19258:	18c10b93          	addi	s7,sp,396
   1925c:	000b8d13          	mv	s10,s7
   19260:	00797793          	andi	a5,s2,7
   19264:	03078793          	addi	a5,a5,48
   19268:	fefd0fa3          	sb	a5,-1(s10)
   1926c:	00395913          	srli	s2,s2,0x3
   19270:	000d0713          	mv	a4,s10
   19274:	fffd0d13          	addi	s10,s10,-1
   19278:	fe0914e3          	bnez	s2,19260 <_svfprintf_r+0x918>
   1927c:	001df693          	andi	a3,s11,1
   19280:	44068663          	beqz	a3,196cc <_svfprintf_r+0xd84>
   19284:	03000693          	li	a3,48
   19288:	44d78263          	beq	a5,a3,196cc <_svfprintf_r+0xd84>
   1928c:	ffe70713          	addi	a4,a4,-2
   19290:	fedd0fa3          	sb	a3,-1(s10)
   19294:	40eb8bbb          	subw	s7,s7,a4
   19298:	000d8493          	mv	s1,s11
   1929c:	00070d13          	mv	s10,a4
   192a0:	a99ff06f          	j	18d38 <_svfprintf_r+0x3f0>
   192a4:	01813703          	ld	a4,24(sp)
   192a8:	0c010fa3          	sb	zero,223(sp)
   192ac:	00100913          	li	s2,1
   192b0:	00072783          	lw	a5,0(a4)
   192b4:	00870713          	addi	a4,a4,8
   192b8:	00e13c23          	sd	a4,24(sp)
   192bc:	12f10423          	sb	a5,296(sp)
   192c0:	00100b93          	li	s7,1
   192c4:	12810d13          	addi	s10,sp,296
   192c8:	865ff06f          	j	18b2c <_svfprintf_r+0x1e4>
   192cc:	01813783          	ld	a5,24(sp)
   192d0:	0c010fa3          	sb	zero,223(sp)
   192d4:	0007bd03          	ld	s10,0(a5)
   192d8:	00878d93          	addi	s11,a5,8
   192dc:	000d1463          	bnez	s10,192e4 <_svfprintf_r+0x99c>
   192e0:	0900106f          	j	1a370 <_svfprintf_r+0x1a28>
   192e4:	fff00793          	li	a5,-1
   192e8:	36fc02e3          	beq	s8,a5,19e4c <_svfprintf_r+0x1504>
   192ec:	000c0613          	mv	a2,s8
   192f0:	00000593          	li	a1,0
   192f4:	000d0513          	mv	a0,s10
   192f8:	00613c23          	sd	t1,24(sp)
   192fc:	d95fd0ef          	jal	ra,17090 <memchr>
   19300:	00a13823          	sd	a0,16(sp)
   19304:	01813303          	ld	t1,24(sp)
   19308:	00051463          	bnez	a0,19310 <_svfprintf_r+0x9c8>
   1930c:	4cc0106f          	j	1a7d8 <_svfprintf_r+0x1e90>
   19310:	01013783          	ld	a5,16(sp)
   19314:	01b13c23          	sd	s11,24(sp)
   19318:	00013823          	sd	zero,16(sp)
   1931c:	41a78bbb          	subw	s7,a5,s10
   19320:	0df14783          	lbu	a5,223(sp)
   19324:	fffbc913          	not	s2,s7
   19328:	43f95913          	srai	s2,s2,0x3f
   1932c:	04013423          	sd	zero,72(sp)
   19330:	04013c23          	sd	zero,88(sp)
   19334:	04013823          	sd	zero,80(sp)
   19338:	01797933          	and	s2,s2,s7
   1933c:	00000c13          	li	s8,0
   19340:	a0079ee3          	bnez	a5,18d5c <_svfprintf_r+0x414>
   19344:	ffcff06f          	j	18b40 <_svfprintf_r+0x1f8>
   19348:	0104e493          	ori	s1,s1,16
   1934c:	00048d9b          	sext.w	s11,s1
   19350:	01813683          	ld	a3,24(sp)
   19354:	020df793          	andi	a5,s11,32
   19358:	00868713          	addi	a4,a3,8
   1935c:	120786e3          	beqz	a5,19c88 <_svfprintf_r+0x1340>
   19360:	0006b903          	ld	s2,0(a3)
   19364:	00100793          	li	a5,1
   19368:	00e13c23          	sd	a4,24(sp)
   1936c:	a25ff06f          	j	18d90 <_svfprintf_r+0x448>
   19370:	0084e493          	ori	s1,s1,8
   19374:	00044e03          	lbu	t3,0(s0)
   19378:	0004849b          	sext.w	s1,s1
   1937c:	f34ff06f          	j	18ab0 <_svfprintf_r+0x168>
   19380:	0204e493          	ori	s1,s1,32
   19384:	00044e03          	lbu	t3,0(s0)
   19388:	0004849b          	sext.w	s1,s1
   1938c:	f24ff06f          	j	18ab0 <_svfprintf_r+0x168>
   19390:	01813703          	ld	a4,24(sp)
   19394:	ffff87b7          	lui	a5,0xffff8
   19398:	8307c793          	xori	a5,a5,-2000
   1939c:	0ef11023          	sh	a5,224(sp)
   193a0:	00870793          	addi	a5,a4,8
   193a4:	00f13c23          	sd	a5,24(sp)
   193a8:	000217b7          	lui	a5,0x21
   193ac:	2e078793          	addi	a5,a5,736 # 212e0 <__clzdi2+0x7c>
   193b0:	0024e493          	ori	s1,s1,2
   193b4:	02f13423          	sd	a5,40(sp)
   193b8:	00073903          	ld	s2,0(a4)
   193bc:	00048d9b          	sext.w	s11,s1
   193c0:	00200793          	li	a5,2
   193c4:	07800c93          	li	s9,120
   193c8:	9c9ff06f          	j	18d90 <_svfprintf_r+0x448>
   193cc:	01813683          	ld	a3,24(sp)
   193d0:	0204f793          	andi	a5,s1,32
   193d4:	0006b703          	ld	a4,0(a3)
   193d8:	00868693          	addi	a3,a3,8
   193dc:	00d13c23          	sd	a3,24(sp)
   193e0:	02079a63          	bnez	a5,19414 <_svfprintf_r+0xacc>
   193e4:	0104f793          	andi	a5,s1,16
   193e8:	02079663          	bnez	a5,19414 <_svfprintf_r+0xacc>
   193ec:	0404f793          	andi	a5,s1,64
   193f0:	00078463          	beqz	a5,193f8 <_svfprintf_r+0xab0>
   193f4:	1800106f          	j	1a574 <_svfprintf_r+0x1c2c>
   193f8:	2004f493          	andi	s1,s1,512
   193fc:	00813783          	ld	a5,8(sp)
   19400:	00049463          	bnez	s1,19408 <_svfprintf_r+0xac0>
   19404:	7ec0106f          	j	1abf0 <_svfprintf_r+0x22a8>
   19408:	00f70023          	sb	a5,0(a4)
   1940c:	00040d13          	mv	s10,s0
   19410:	855ff06f          	j	18c64 <_svfprintf_r+0x31c>
   19414:	00813783          	ld	a5,8(sp)
   19418:	00040d13          	mv	s10,s0
   1941c:	00f73023          	sd	a5,0(a4)
   19420:	845ff06f          	j	18c64 <_svfprintf_r+0x31c>
   19424:	00044e03          	lbu	t3,0(s0)
   19428:	06c00793          	li	a5,108
   1942c:	1efe02e3          	beq	t3,a5,19e10 <_svfprintf_r+0x14c8>
   19430:	0104e493          	ori	s1,s1,16
   19434:	0004849b          	sext.w	s1,s1
   19438:	e78ff06f          	j	18ab0 <_svfprintf_r+0x168>
   1943c:	00044e03          	lbu	t3,0(s0)
   19440:	06800793          	li	a5,104
   19444:	1afe0ce3          	beq	t3,a5,19dfc <_svfprintf_r+0x14b4>
   19448:	0404e493          	ori	s1,s1,64
   1944c:	0004849b          	sext.w	s1,s1
   19450:	e60ff06f          	j	18ab0 <_svfprintf_r+0x168>
   19454:	0804e493          	ori	s1,s1,128
   19458:	00044e03          	lbu	t3,0(s0)
   1945c:	0004849b          	sext.w	s1,s1
   19460:	e50ff06f          	j	18ab0 <_svfprintf_r+0x168>
   19464:	00044c83          	lbu	s9,0(s0)
   19468:	00140713          	addi	a4,s0,1
   1946c:	00cc9463          	bne	s9,a2,19474 <_svfprintf_r+0xb2c>
   19470:	1710106f          	j	1ade0 <_svfprintf_r+0x2498>
   19474:	fd0c879b          	addiw	a5,s9,-48
   19478:	00070413          	mv	s0,a4
   1947c:	00000c13          	li	s8,0
   19480:	e2fdee63          	bltu	s11,a5,18abc <_svfprintf_r+0x174>
   19484:	00044c83          	lbu	s9,0(s0)
   19488:	002c169b          	slliw	a3,s8,0x2
   1948c:	018686bb          	addw	a3,a3,s8
   19490:	0016969b          	slliw	a3,a3,0x1
   19494:	00f68c3b          	addw	s8,a3,a5
   19498:	fd0c879b          	addiw	a5,s9,-48
   1949c:	00140413          	addi	s0,s0,1
   194a0:	fefdf2e3          	bgeu	s11,a5,19484 <_svfprintf_r+0xb3c>
   194a4:	e18ff06f          	j	18abc <_svfprintf_r+0x174>
   194a8:	00044e03          	lbu	t3,0(s0)
   194ac:	0044e493          	ori	s1,s1,4
   194b0:	0004849b          	sext.w	s1,s1
   194b4:	dfcff06f          	j	18ab0 <_svfprintf_r+0x168>
   194b8:	02b00793          	li	a5,43
   194bc:	00044e03          	lbu	t3,0(s0)
   194c0:	0cf10fa3          	sb	a5,223(sp)
   194c4:	decff06f          	j	18ab0 <_svfprintf_r+0x168>
   194c8:	01813783          	ld	a5,24(sp)
   194cc:	00044e03          	lbu	t3,0(s0)
   194d0:	0007aa83          	lw	s5,0(a5)
   194d4:	00878793          	addi	a5,a5,8
   194d8:	00f13c23          	sd	a5,24(sp)
   194dc:	dc0ada63          	bgez	s5,18ab0 <_svfprintf_r+0x168>
   194e0:	41500abb          	negw	s5,s5
   194e4:	fc9ff06f          	j	194ac <_svfprintf_r+0xb64>
   194e8:	00098513          	mv	a0,s3
   194ec:	00613823          	sd	t1,16(sp)
   194f0:	928fd0ef          	jal	ra,16618 <_localeconv_r>
   194f4:	00853783          	ld	a5,8(a0)
   194f8:	00078513          	mv	a0,a5
   194fc:	08f13423          	sd	a5,136(sp)
   19500:	ae0ff0ef          	jal	ra,187e0 <strlen>
   19504:	00050793          	mv	a5,a0
   19508:	00098513          	mv	a0,s3
   1950c:	00078c93          	mv	s9,a5
   19510:	08f13023          	sd	a5,128(sp)
   19514:	904fd0ef          	jal	ra,16618 <_localeconv_r>
   19518:	01053783          	ld	a5,16(a0)
   1951c:	01013303          	ld	t1,16(sp)
   19520:	00044e03          	lbu	t3,0(s0)
   19524:	06f13023          	sd	a5,96(sp)
   19528:	d80c8463          	beqz	s9,18ab0 <_svfprintf_r+0x168>
   1952c:	d8078263          	beqz	a5,18ab0 <_svfprintf_r+0x168>
   19530:	0007c783          	lbu	a5,0(a5)
   19534:	d6078e63          	beqz	a5,18ab0 <_svfprintf_r+0x168>
   19538:	4004e493          	ori	s1,s1,1024
   1953c:	0004849b          	sext.w	s1,s1
   19540:	d70ff06f          	j	18ab0 <_svfprintf_r+0x168>
   19544:	0014e493          	ori	s1,s1,1
   19548:	00044e03          	lbu	t3,0(s0)
   1954c:	0004849b          	sext.w	s1,s1
   19550:	d60ff06f          	j	18ab0 <_svfprintf_r+0x168>
   19554:	0df14783          	lbu	a5,223(sp)
   19558:	00044e03          	lbu	t3,0(s0)
   1955c:	d4079a63          	bnez	a5,18ab0 <_svfprintf_r+0x168>
   19560:	02000793          	li	a5,32
   19564:	0cf10fa3          	sb	a5,223(sp)
   19568:	d48ff06f          	j	18ab0 <_svfprintf_r+0x168>
   1956c:	06500713          	li	a4,101
   19570:	b59758e3          	bge	a4,s9,190c0 <_svfprintf_r+0x778>
   19574:	10013503          	ld	a0,256(sp)
   19578:	10813583          	ld	a1,264(sp)
   1957c:	00000613          	li	a2,0
   19580:	00000693          	li	a3,0
   19584:	02613c23          	sd	t1,56(sp)
   19588:	02f13823          	sd	a5,48(sp)
   1958c:	154060ef          	jal	ra,1f6e0 <__eqtf2>
   19590:	03013783          	ld	a5,48(sp)
   19594:	03813303          	ld	t1,56(sp)
   19598:	4a051c63          	bnez	a0,19a50 <_svfprintf_r+0x1108>
   1959c:	11812703          	lw	a4,280(sp)
   195a0:	000216b7          	lui	a3,0x21
   195a4:	30068693          	addi	a3,a3,768 # 21300 <__clzdi2+0x9c>
   195a8:	0017071b          	addiw	a4,a4,1
   195ac:	00d33023          	sd	a3,0(t1)
   195b0:	00178793          	addi	a5,a5,1
   195b4:	00100693          	li	a3,1
   195b8:	00d33423          	sd	a3,8(t1)
   195bc:	10e12c23          	sw	a4,280(sp)
   195c0:	0007069b          	sext.w	a3,a4
   195c4:	12f13023          	sd	a5,288(sp)
   195c8:	00700713          	li	a4,7
   195cc:	01030313          	addi	t1,t1,16
   195d0:	4cd74ce3          	blt	a4,a3,1a2a8 <_svfprintf_r+0x1960>
   195d4:	0e812703          	lw	a4,232(sp)
   195d8:	02013683          	ld	a3,32(sp)
   195dc:	72d75063          	bge	a4,a3,19cfc <_svfprintf_r+0x13b4>
   195e0:	07013703          	ld	a4,112(sp)
   195e4:	06813683          	ld	a3,104(sp)
   195e8:	01030313          	addi	t1,t1,16
   195ec:	fee33823          	sd	a4,-16(t1)
   195f0:	11812703          	lw	a4,280(sp)
   195f4:	00d787b3          	add	a5,a5,a3
   195f8:	fed33c23          	sd	a3,-8(t1)
   195fc:	0017071b          	addiw	a4,a4,1
   19600:	0007069b          	sext.w	a3,a4
   19604:	10e12c23          	sw	a4,280(sp)
   19608:	12f13023          	sd	a5,288(sp)
   1960c:	00700713          	li	a4,7
   19610:	7ad74e63          	blt	a4,a3,19dcc <_svfprintf_r+0x1484>
   19614:	02013703          	ld	a4,32(sp)
   19618:	fff70b9b          	addiw	s7,a4,-1
   1961c:	df705e63          	blez	s7,18c18 <_svfprintf_r+0x2d0>
   19620:	000228b7          	lui	a7,0x22
   19624:	01000693          	li	a3,16
   19628:	11812703          	lw	a4,280(sp)
   1962c:	ad088d93          	addi	s11,a7,-1328 # 21ad0 <zeroes.0>
   19630:	01000c93          	li	s9,16
   19634:	00700c13          	li	s8,7
   19638:	0176c863          	blt	a3,s7,19648 <_svfprintf_r+0xd00>
   1963c:	48d0006f          	j	1a2c8 <_svfprintf_r+0x1980>
   19640:	ff0b8b9b          	addiw	s7,s7,-16
   19644:	497cd2e3          	bge	s9,s7,1a2c8 <_svfprintf_r+0x1980>
   19648:	0017071b          	addiw	a4,a4,1
   1964c:	01078793          	addi	a5,a5,16
   19650:	01b33023          	sd	s11,0(t1)
   19654:	01933423          	sd	s9,8(t1)
   19658:	12f13023          	sd	a5,288(sp)
   1965c:	10e12c23          	sw	a4,280(sp)
   19660:	01030313          	addi	t1,t1,16
   19664:	fcec5ee3          	bge	s8,a4,19640 <_svfprintf_r+0xcf8>
   19668:	11010613          	addi	a2,sp,272
   1966c:	000a0593          	mv	a1,s4
   19670:	00098513          	mv	a0,s3
   19674:	3e0040ef          	jal	ra,1da54 <__ssprint_r>
   19678:	20051263          	bnez	a0,1987c <_svfprintf_r+0xf34>
   1967c:	12013783          	ld	a5,288(sp)
   19680:	11812703          	lw	a4,280(sp)
   19684:	000b0313          	mv	t1,s6
   19688:	fb9ff06f          	j	19640 <_svfprintf_r+0xcf8>
   1968c:	00100713          	li	a4,1
   19690:	00e79463          	bne	a5,a4,19698 <_svfprintf_r+0xd50>
   19694:	4bc0106f          	j	1ab50 <_svfprintf_r+0x2208>
   19698:	00200713          	li	a4,2
   1969c:	00048d93          	mv	s11,s1
   196a0:	bae79ce3          	bne	a5,a4,19258 <_svfprintf_r+0x910>
   196a4:	18c10b93          	addi	s7,sp,396
   196a8:	000b8d13          	mv	s10,s7
   196ac:	02813703          	ld	a4,40(sp)
   196b0:	00f97793          	andi	a5,s2,15
   196b4:	fffd0d13          	addi	s10,s10,-1
   196b8:	00f707b3          	add	a5,a4,a5
   196bc:	0007c783          	lbu	a5,0(a5)
   196c0:	00495913          	srli	s2,s2,0x4
   196c4:	00fd0023          	sb	a5,0(s10)
   196c8:	fe0912e3          	bnez	s2,196ac <_svfprintf_r+0xd64>
   196cc:	41ab8bbb          	subw	s7,s7,s10
   196d0:	000d8493          	mv	s1,s11
   196d4:	e64ff06f          	j	18d38 <_svfprintf_r+0x3f0>
   196d8:	412a86bb          	subw	a3,s5,s2
   196dc:	d0d05063          	blez	a3,18bdc <_svfprintf_r+0x294>
   196e0:	000228b7          	lui	a7,0x22
   196e4:	01000613          	li	a2,16
   196e8:	11812703          	lw	a4,280(sp)
   196ec:	ad088d93          	addi	s11,a7,-1328 # 21ad0 <zeroes.0>
   196f0:	01000f13          	li	t5,16
   196f4:	00700f93          	li	t6,7
   196f8:	00d64863          	blt	a2,a3,19708 <_svfprintf_r+0xdc0>
   196fc:	0640006f          	j	19760 <_svfprintf_r+0xe18>
   19700:	ff06869b          	addiw	a3,a3,-16
   19704:	04df5e63          	bge	t5,a3,19760 <_svfprintf_r+0xe18>
   19708:	0017071b          	addiw	a4,a4,1
   1970c:	01078793          	addi	a5,a5,16
   19710:	01b33023          	sd	s11,0(t1)
   19714:	01e33423          	sd	t5,8(t1)
   19718:	12f13023          	sd	a5,288(sp)
   1971c:	10e12c23          	sw	a4,280(sp)
   19720:	01030313          	addi	t1,t1,16
   19724:	fcefdee3          	bge	t6,a4,19700 <_svfprintf_r+0xdb8>
   19728:	11010613          	addi	a2,sp,272
   1972c:	000a0593          	mv	a1,s4
   19730:	00098513          	mv	a0,s3
   19734:	02d13823          	sd	a3,48(sp)
   19738:	31c040ef          	jal	ra,1da54 <__ssprint_r>
   1973c:	14051063          	bnez	a0,1987c <_svfprintf_r+0xf34>
   19740:	03013683          	ld	a3,48(sp)
   19744:	01000f13          	li	t5,16
   19748:	12013783          	ld	a5,288(sp)
   1974c:	ff06869b          	addiw	a3,a3,-16
   19750:	11812703          	lw	a4,280(sp)
   19754:	000b0313          	mv	t1,s6
   19758:	00700f93          	li	t6,7
   1975c:	fadf46e3          	blt	t5,a3,19708 <_svfprintf_r+0xdc0>
   19760:	0017071b          	addiw	a4,a4,1
   19764:	00d787b3          	add	a5,a5,a3
   19768:	00d33423          	sd	a3,8(t1)
   1976c:	01b33023          	sd	s11,0(t1)
   19770:	0007069b          	sext.w	a3,a4
   19774:	10e12c23          	sw	a4,280(sp)
   19778:	12f13023          	sd	a5,288(sp)
   1977c:	00700713          	li	a4,7
   19780:	01030313          	addi	t1,t1,16
   19784:	c4d75c63          	bge	a4,a3,18bdc <_svfprintf_r+0x294>
   19788:	11010613          	addi	a2,sp,272
   1978c:	000a0593          	mv	a1,s4
   19790:	00098513          	mv	a0,s3
   19794:	2c0040ef          	jal	ra,1da54 <__ssprint_r>
   19798:	0e051263          	bnez	a0,1987c <_svfprintf_r+0xf34>
   1979c:	417c0c3b          	subw	s8,s8,s7
   197a0:	12013783          	ld	a5,288(sp)
   197a4:	000b0313          	mv	t1,s6
   197a8:	c3805e63          	blez	s8,18be4 <_svfprintf_r+0x29c>
   197ac:	000228b7          	lui	a7,0x22
   197b0:	01000613          	li	a2,16
   197b4:	11812703          	lw	a4,280(sp)
   197b8:	ad088d93          	addi	s11,a7,-1328 # 21ad0 <zeroes.0>
   197bc:	01000e93          	li	t4,16
   197c0:	00700f13          	li	t5,7
   197c4:	01864863          	blt	a2,s8,197d4 <_svfprintf_r+0xe8c>
   197c8:	05c0006f          	j	19824 <_svfprintf_r+0xedc>
   197cc:	ff0c0c1b          	addiw	s8,s8,-16
   197d0:	058eda63          	bge	t4,s8,19824 <_svfprintf_r+0xedc>
   197d4:	0017071b          	addiw	a4,a4,1
   197d8:	01078793          	addi	a5,a5,16
   197dc:	01b33023          	sd	s11,0(t1)
   197e0:	01d33423          	sd	t4,8(t1)
   197e4:	12f13023          	sd	a5,288(sp)
   197e8:	10e12c23          	sw	a4,280(sp)
   197ec:	01030313          	addi	t1,t1,16
   197f0:	fcef5ee3          	bge	t5,a4,197cc <_svfprintf_r+0xe84>
   197f4:	11010613          	addi	a2,sp,272
   197f8:	000a0593          	mv	a1,s4
   197fc:	00098513          	mv	a0,s3
   19800:	254040ef          	jal	ra,1da54 <__ssprint_r>
   19804:	06051c63          	bnez	a0,1987c <_svfprintf_r+0xf34>
   19808:	01000e93          	li	t4,16
   1980c:	ff0c0c1b          	addiw	s8,s8,-16
   19810:	12013783          	ld	a5,288(sp)
   19814:	11812703          	lw	a4,280(sp)
   19818:	000b0313          	mv	t1,s6
   1981c:	00700f13          	li	t5,7
   19820:	fb8ecae3          	blt	t4,s8,197d4 <_svfprintf_r+0xe8c>
   19824:	0017069b          	addiw	a3,a4,1
   19828:	018787b3          	add	a5,a5,s8
   1982c:	01b33023          	sd	s11,0(t1)
   19830:	01833423          	sd	s8,8(t1)
   19834:	12f13023          	sd	a5,288(sp)
   19838:	10d12c23          	sw	a3,280(sp)
   1983c:	00700713          	li	a4,7
   19840:	01030313          	addi	t1,t1,16
   19844:	bad75063          	bge	a4,a3,18be4 <_svfprintf_r+0x29c>
   19848:	11010613          	addi	a2,sp,272
   1984c:	000a0593          	mv	a1,s4
   19850:	00098513          	mv	a0,s3
   19854:	200040ef          	jal	ra,1da54 <__ssprint_r>
   19858:	02051263          	bnez	a0,1987c <_svfprintf_r+0xf34>
   1985c:	12013783          	ld	a5,288(sp)
   19860:	000b0313          	mv	t1,s6
   19864:	b80ff06f          	j	18be4 <_svfprintf_r+0x29c>
   19868:	11010613          	addi	a2,sp,272
   1986c:	000a0593          	mv	a1,s4
   19870:	00098513          	mv	a0,s3
   19874:	1e0040ef          	jal	ra,1da54 <__ssprint_r>
   19878:	bc050663          	beqz	a0,18c44 <_svfprintf_r+0x2fc>
   1987c:	01013783          	ld	a5,16(sp)
   19880:	be078c63          	beqz	a5,18c78 <_svfprintf_r+0x330>
   19884:	01013583          	ld	a1,16(sp)
   19888:	00098513          	mv	a0,s3
   1988c:	cf1f90ef          	jal	ra,1357c <_free_r>
   19890:	be8ff06f          	j	18c78 <_svfprintf_r+0x330>
   19894:	00048d93          	mv	s11,s1
   19898:	9b1ff06f          	j	19248 <_svfprintf_r+0x900>
   1989c:	000228b7          	lui	a7,0x22
   198a0:	01000613          	li	a2,16
   198a4:	11812703          	lw	a4,280(sp)
   198a8:	ac088893          	addi	a7,a7,-1344 # 21ac0 <blanks.1>
   198ac:	01000f13          	li	t5,16
   198b0:	00700393          	li	t2,7
   198b4:	00d64863          	blt	a2,a3,198c4 <_svfprintf_r+0xf7c>
   198b8:	0740006f          	j	1992c <_svfprintf_r+0xfe4>
   198bc:	ff06869b          	addiw	a3,a3,-16
   198c0:	06df5663          	bge	t5,a3,1992c <_svfprintf_r+0xfe4>
   198c4:	0017071b          	addiw	a4,a4,1
   198c8:	01078793          	addi	a5,a5,16
   198cc:	01133023          	sd	a7,0(t1)
   198d0:	01e33423          	sd	t5,8(t1)
   198d4:	12f13023          	sd	a5,288(sp)
   198d8:	10e12c23          	sw	a4,280(sp)
   198dc:	01030313          	addi	t1,t1,16
   198e0:	fce3dee3          	bge	t2,a4,198bc <_svfprintf_r+0xf74>
   198e4:	11010613          	addi	a2,sp,272
   198e8:	000a0593          	mv	a1,s4
   198ec:	00098513          	mv	a0,s3
   198f0:	05113023          	sd	a7,64(sp)
   198f4:	02d13c23          	sd	a3,56(sp)
   198f8:	02513823          	sd	t0,48(sp)
   198fc:	158040ef          	jal	ra,1da54 <__ssprint_r>
   19900:	f6051ee3          	bnez	a0,1987c <_svfprintf_r+0xf34>
   19904:	03813683          	ld	a3,56(sp)
   19908:	01000f13          	li	t5,16
   1990c:	12013783          	ld	a5,288(sp)
   19910:	ff06869b          	addiw	a3,a3,-16
   19914:	11812703          	lw	a4,280(sp)
   19918:	04013883          	ld	a7,64(sp)
   1991c:	03013283          	ld	t0,48(sp)
   19920:	000b0313          	mv	t1,s6
   19924:	00700393          	li	t2,7
   19928:	f8df4ee3          	blt	t5,a3,198c4 <_svfprintf_r+0xf7c>
   1992c:	0017071b          	addiw	a4,a4,1
   19930:	00d787b3          	add	a5,a5,a3
   19934:	00d33423          	sd	a3,8(t1)
   19938:	01133023          	sd	a7,0(t1)
   1993c:	0007069b          	sext.w	a3,a4
   19940:	10e12c23          	sw	a4,280(sp)
   19944:	12f13023          	sd	a5,288(sp)
   19948:	00700713          	li	a4,7
   1994c:	01030313          	addi	t1,t1,16
   19950:	a0d75863          	bge	a4,a3,18b60 <_svfprintf_r+0x218>
   19954:	11010613          	addi	a2,sp,272
   19958:	000a0593          	mv	a1,s4
   1995c:	00098513          	mv	a0,s3
   19960:	02513823          	sd	t0,48(sp)
   19964:	0f0040ef          	jal	ra,1da54 <__ssprint_r>
   19968:	f0051ae3          	bnez	a0,1987c <_svfprintf_r+0xf34>
   1996c:	12013783          	ld	a5,288(sp)
   19970:	03013283          	ld	t0,48(sp)
   19974:	000b0313          	mv	t1,s6
   19978:	9e8ff06f          	j	18b60 <_svfprintf_r+0x218>
   1997c:	11010613          	addi	a2,sp,272
   19980:	000a0593          	mv	a1,s4
   19984:	00098513          	mv	a0,s3
   19988:	0cc040ef          	jal	ra,1da54 <__ssprint_r>
   1998c:	ee0518e3          	bnez	a0,1987c <_svfprintf_r+0xf34>
   19990:	12013783          	ld	a5,288(sp)
   19994:	000b0313          	mv	t1,s6
   19998:	a3cff06f          	j	18bd4 <_svfprintf_r+0x28c>
   1999c:	000228b7          	lui	a7,0x22
   199a0:	01000693          	li	a3,16
   199a4:	11812703          	lw	a4,280(sp)
   199a8:	ac088893          	addi	a7,a7,-1344 # 21ac0 <blanks.1>
   199ac:	01000b93          	li	s7,16
   199b0:	00700c13          	li	s8,7
   199b4:	0096c863          	blt	a3,s1,199c4 <_svfprintf_r+0x107c>
   199b8:	05c0006f          	j	19a14 <_svfprintf_r+0x10cc>
   199bc:	ff04849b          	addiw	s1,s1,-16
   199c0:	049bda63          	bge	s7,s1,19a14 <_svfprintf_r+0x10cc>
   199c4:	0017071b          	addiw	a4,a4,1
   199c8:	01078793          	addi	a5,a5,16
   199cc:	01133023          	sd	a7,0(t1)
   199d0:	01733423          	sd	s7,8(t1)
   199d4:	12f13023          	sd	a5,288(sp)
   199d8:	10e12c23          	sw	a4,280(sp)
   199dc:	01030313          	addi	t1,t1,16
   199e0:	fcec5ee3          	bge	s8,a4,199bc <_svfprintf_r+0x1074>
   199e4:	11010613          	addi	a2,sp,272
   199e8:	000a0593          	mv	a1,s4
   199ec:	00098513          	mv	a0,s3
   199f0:	03113823          	sd	a7,48(sp)
   199f4:	060040ef          	jal	ra,1da54 <__ssprint_r>
   199f8:	e80512e3          	bnez	a0,1987c <_svfprintf_r+0xf34>
   199fc:	ff04849b          	addiw	s1,s1,-16
   19a00:	12013783          	ld	a5,288(sp)
   19a04:	11812703          	lw	a4,280(sp)
   19a08:	03013883          	ld	a7,48(sp)
   19a0c:	000b0313          	mv	t1,s6
   19a10:	fa9bcae3          	blt	s7,s1,199c4 <_svfprintf_r+0x107c>
   19a14:	0017069b          	addiw	a3,a4,1
   19a18:	009787b3          	add	a5,a5,s1
   19a1c:	01133023          	sd	a7,0(t1)
   19a20:	00933423          	sd	s1,8(t1)
   19a24:	12f13023          	sd	a5,288(sp)
   19a28:	10d12c23          	sw	a3,280(sp)
   19a2c:	00700713          	li	a4,7
   19a30:	9ed75c63          	bge	a4,a3,18c28 <_svfprintf_r+0x2e0>
   19a34:	11010613          	addi	a2,sp,272
   19a38:	000a0593          	mv	a1,s4
   19a3c:	00098513          	mv	a0,s3
   19a40:	014040ef          	jal	ra,1da54 <__ssprint_r>
   19a44:	e2051ce3          	bnez	a0,1987c <_svfprintf_r+0xf34>
   19a48:	12013783          	ld	a5,288(sp)
   19a4c:	9dcff06f          	j	18c28 <_svfprintf_r+0x2e0>
   19a50:	0e812603          	lw	a2,232(sp)
   19a54:	74c05c63          	blez	a2,1a1ac <_svfprintf_r+0x1864>
   19a58:	05013703          	ld	a4,80(sp)
   19a5c:	02013683          	ld	a3,32(sp)
   19a60:	00070b9b          	sext.w	s7,a4
   19a64:	30e6c063          	blt	a3,a4,19d64 <_svfprintf_r+0x141c>
   19a68:	03705663          	blez	s7,19a94 <_svfprintf_r+0x114c>
   19a6c:	11812703          	lw	a4,280(sp)
   19a70:	017787b3          	add	a5,a5,s7
   19a74:	01a33023          	sd	s10,0(t1)
   19a78:	0017069b          	addiw	a3,a4,1
   19a7c:	01733423          	sd	s7,8(t1)
   19a80:	12f13023          	sd	a5,288(sp)
   19a84:	10d12c23          	sw	a3,280(sp)
   19a88:	00700713          	li	a4,7
   19a8c:	01030313          	addi	t1,t1,16
   19a90:	28d74ee3          	blt	a4,a3,1a52c <_svfprintf_r+0x1be4>
   19a94:	fffbc713          	not	a4,s7
   19a98:	43f75713          	srai	a4,a4,0x3f
   19a9c:	00ebfbb3          	and	s7,s7,a4
   19aa0:	05013703          	ld	a4,80(sp)
   19aa4:	41770bbb          	subw	s7,a4,s7
   19aa8:	3f704663          	bgtz	s7,19e94 <_svfprintf_r+0x154c>
   19aac:	05013683          	ld	a3,80(sp)
   19ab0:	4004f713          	andi	a4,s1,1024
   19ab4:	00dd0c33          	add	s8,s10,a3
   19ab8:	44071463          	bnez	a4,19f00 <_svfprintf_r+0x15b8>
   19abc:	0e812703          	lw	a4,232(sp)
   19ac0:	02013683          	ld	a3,32(sp)
   19ac4:	00d74663          	blt	a4,a3,19ad0 <_svfprintf_r+0x1188>
   19ac8:	0014f693          	andi	a3,s1,1
   19acc:	280684e3          	beqz	a3,1a554 <_svfprintf_r+0x1c0c>
   19ad0:	07013683          	ld	a3,112(sp)
   19ad4:	06813603          	ld	a2,104(sp)
   19ad8:	01030313          	addi	t1,t1,16
   19adc:	fed33823          	sd	a3,-16(t1)
   19ae0:	11812683          	lw	a3,280(sp)
   19ae4:	00c787b3          	add	a5,a5,a2
   19ae8:	fec33c23          	sd	a2,-8(t1)
   19aec:	0016869b          	addiw	a3,a3,1
   19af0:	0006861b          	sext.w	a2,a3
   19af4:	10d12c23          	sw	a3,280(sp)
   19af8:	12f13023          	sd	a5,288(sp)
   19afc:	00700693          	li	a3,7
   19b00:	4ac6cae3          	blt	a3,a2,1a7b4 <_svfprintf_r+0x1e6c>
   19b04:	02013683          	ld	a3,32(sp)
   19b08:	40e6863b          	subw	a2,a3,a4
   19b0c:	00dd06b3          	add	a3,s10,a3
   19b10:	418686bb          	subw	a3,a3,s8
   19b14:	00060713          	mv	a4,a2
   19b18:	00c6d463          	bge	a3,a2,19b20 <_svfprintf_r+0x11d8>
   19b1c:	00068713          	mv	a4,a3
   19b20:	00070b9b          	sext.w	s7,a4
   19b24:	03705663          	blez	s7,19b50 <_svfprintf_r+0x1208>
   19b28:	11812703          	lw	a4,280(sp)
   19b2c:	017787b3          	add	a5,a5,s7
   19b30:	01833023          	sd	s8,0(t1)
   19b34:	0017069b          	addiw	a3,a4,1
   19b38:	01733423          	sd	s7,8(t1)
   19b3c:	12f13023          	sd	a5,288(sp)
   19b40:	10d12c23          	sw	a3,280(sp)
   19b44:	00700713          	li	a4,7
   19b48:	01030313          	addi	t1,t1,16
   19b4c:	4ed748e3          	blt	a4,a3,1a83c <_svfprintf_r+0x1ef4>
   19b50:	fffbc713          	not	a4,s7
   19b54:	43f75713          	srai	a4,a4,0x3f
   19b58:	00ebfbb3          	and	s7,s7,a4
   19b5c:	41760bbb          	subw	s7,a2,s7
   19b60:	8b705c63          	blez	s7,18c18 <_svfprintf_r+0x2d0>
   19b64:	000228b7          	lui	a7,0x22
   19b68:	01000693          	li	a3,16
   19b6c:	11812703          	lw	a4,280(sp)
   19b70:	ad088d93          	addi	s11,a7,-1328 # 21ad0 <zeroes.0>
   19b74:	01000c93          	li	s9,16
   19b78:	00700c13          	li	s8,7
   19b7c:	0176c863          	blt	a3,s7,19b8c <_svfprintf_r+0x1244>
   19b80:	7480006f          	j	1a2c8 <_svfprintf_r+0x1980>
   19b84:	ff0b8b9b          	addiw	s7,s7,-16
   19b88:	757cd063          	bge	s9,s7,1a2c8 <_svfprintf_r+0x1980>
   19b8c:	0017071b          	addiw	a4,a4,1
   19b90:	01078793          	addi	a5,a5,16
   19b94:	01b33023          	sd	s11,0(t1)
   19b98:	01933423          	sd	s9,8(t1)
   19b9c:	12f13023          	sd	a5,288(sp)
   19ba0:	10e12c23          	sw	a4,280(sp)
   19ba4:	01030313          	addi	t1,t1,16
   19ba8:	fcec5ee3          	bge	s8,a4,19b84 <_svfprintf_r+0x123c>
   19bac:	11010613          	addi	a2,sp,272
   19bb0:	000a0593          	mv	a1,s4
   19bb4:	00098513          	mv	a0,s3
   19bb8:	69d030ef          	jal	ra,1da54 <__ssprint_r>
   19bbc:	cc0510e3          	bnez	a0,1987c <_svfprintf_r+0xf34>
   19bc0:	12013783          	ld	a5,288(sp)
   19bc4:	11812703          	lw	a4,280(sp)
   19bc8:	000b0313          	mv	t1,s6
   19bcc:	fb9ff06f          	j	19b84 <_svfprintf_r+0x123c>
   19bd0:	940c1a63          	bnez	s8,18d24 <_svfprintf_r+0x3dc>
   19bd4:	000d8493          	mv	s1,s11
   19bd8:	00000c13          	li	s8,0
   19bdc:	00000b93          	li	s7,0
   19be0:	18c10d13          	addi	s10,sp,396
   19be4:	954ff06f          	j	18d38 <_svfprintf_r+0x3f0>
   19be8:	0014f513          	andi	a0,s1,1
   19bec:	ce051c63          	bnez	a0,190e4 <_svfprintf_r+0x79c>
   19bf0:	00b33423          	sd	a1,8(t1)
   19bf4:	13813023          	sd	s8,288(sp)
   19bf8:	10e12c23          	sw	a4,280(sp)
   19bfc:	00700693          	li	a3,7
   19c00:	4ce6c663          	blt	a3,a4,1a0cc <_svfprintf_r+0x1784>
   19c04:	0026061b          	addiw	a2,a2,2
   19c08:	02030313          	addi	t1,t1,32
   19c0c:	d8cff06f          	j	19198 <_svfprintf_r+0x850>
   19c10:	d9905463          	blez	s9,19198 <_svfprintf_r+0x850>
   19c14:	01000713          	li	a4,16
   19c18:	01974463          	blt	a4,s9,19c20 <_svfprintf_r+0x12d8>
   19c1c:	1780106f          	j	1ad94 <_svfprintf_r+0x244c>
   19c20:	000228b7          	lui	a7,0x22
   19c24:	ad088d93          	addi	s11,a7,-1328 # 21ad0 <zeroes.0>
   19c28:	01000813          	li	a6,16
   19c2c:	00700d13          	li	s10,7
   19c30:	0100006f          	j	19c40 <_svfprintf_r+0x12f8>
   19c34:	ff0c8c9b          	addiw	s9,s9,-16
   19c38:	7f985e63          	bge	a6,s9,1a434 <_svfprintf_r+0x1aec>
   19c3c:	00170e1b          	addiw	t3,a4,1
   19c40:	010c0c13          	addi	s8,s8,16
   19c44:	01bbb023          	sd	s11,0(s7)
   19c48:	010bb423          	sd	a6,8(s7)
   19c4c:	13813023          	sd	s8,288(sp)
   19c50:	000e071b          	sext.w	a4,t3
   19c54:	11c12c23          	sw	t3,280(sp)
   19c58:	010b8b93          	addi	s7,s7,16
   19c5c:	fced5ce3          	bge	s10,a4,19c34 <_svfprintf_r+0x12ec>
   19c60:	11010613          	addi	a2,sp,272
   19c64:	000a0593          	mv	a1,s4
   19c68:	00098513          	mv	a0,s3
   19c6c:	5e9030ef          	jal	ra,1da54 <__ssprint_r>
   19c70:	c00516e3          	bnez	a0,1987c <_svfprintf_r+0xf34>
   19c74:	12013c03          	ld	s8,288(sp)
   19c78:	11812703          	lw	a4,280(sp)
   19c7c:	000b0b93          	mv	s7,s6
   19c80:	01000813          	li	a6,16
   19c84:	fb1ff06f          	j	19c34 <_svfprintf_r+0x12ec>
   19c88:	010df793          	andi	a5,s11,16
   19c8c:	08079063          	bnez	a5,19d0c <_svfprintf_r+0x13c4>
   19c90:	01813683          	ld	a3,24(sp)
   19c94:	040df793          	andi	a5,s11,64
   19c98:	0006a903          	lw	s2,0(a3)
   19c9c:	7e078a63          	beqz	a5,1a490 <_svfprintf_r+0x1b48>
   19ca0:	03091913          	slli	s2,s2,0x30
   19ca4:	03095913          	srli	s2,s2,0x30
   19ca8:	00e13c23          	sd	a4,24(sp)
   19cac:	00100793          	li	a5,1
   19cb0:	8e0ff06f          	j	18d90 <_svfprintf_r+0x448>
   19cb4:	11010613          	addi	a2,sp,272
   19cb8:	000a0593          	mv	a1,s4
   19cbc:	00098513          	mv	a0,s3
   19cc0:	595030ef          	jal	ra,1da54 <__ssprint_r>
   19cc4:	ba051ce3          	bnez	a0,1987c <_svfprintf_r+0xf34>
   19cc8:	12013c03          	ld	s8,288(sp)
   19ccc:	11812703          	lw	a4,280(sp)
   19cd0:	000b0b93          	mv	s7,s6
   19cd4:	c28ff06f          	j	190fc <_svfprintf_r+0x7b4>
   19cd8:	11010613          	addi	a2,sp,272
   19cdc:	000a0593          	mv	a1,s4
   19ce0:	00098513          	mv	a0,s3
   19ce4:	571030ef          	jal	ra,1da54 <__ssprint_r>
   19ce8:	b8051ae3          	bnez	a0,1987c <_svfprintf_r+0xf34>
   19cec:	12013c03          	ld	s8,288(sp)
   19cf0:	11812703          	lw	a4,280(sp)
   19cf4:	000b0b93          	mv	s7,s6
   19cf8:	c34ff06f          	j	1912c <_svfprintf_r+0x7e4>
   19cfc:	0014f713          	andi	a4,s1,1
   19d00:	00071463          	bnez	a4,19d08 <_svfprintf_r+0x13c0>
   19d04:	f15fe06f          	j	18c18 <_svfprintf_r+0x2d0>
   19d08:	8d9ff06f          	j	195e0 <_svfprintf_r+0xc98>
   19d0c:	01813783          	ld	a5,24(sp)
   19d10:	00e13c23          	sd	a4,24(sp)
   19d14:	0007b903          	ld	s2,0(a5)
   19d18:	00100793          	li	a5,1
   19d1c:	874ff06f          	j	18d90 <_svfprintf_r+0x448>
   19d20:	01813783          	ld	a5,24(sp)
   19d24:	0007b903          	ld	s2,0(a5)
   19d28:	858ff06f          	j	18d80 <_svfprintf_r+0x438>
   19d2c:	01813783          	ld	a5,24(sp)
   19d30:	0007b783          	ld	a5,0(a5)
   19d34:	00078913          	mv	s2,a5
   19d38:	fc1fe06f          	j	18cf8 <_svfprintf_r+0x3b0>
   19d3c:	01813783          	ld	a5,24(sp)
   19d40:	00f78793          	addi	a5,a5,15
   19d44:	ff07f793          	andi	a5,a5,-16
   19d48:	0007b703          	ld	a4,0(a5)
   19d4c:	0087b683          	ld	a3,8(a5)
   19d50:	01078793          	addi	a5,a5,16
   19d54:	00f13c23          	sd	a5,24(sp)
   19d58:	10e13023          	sd	a4,256(sp)
   19d5c:	10d13423          	sd	a3,264(sp)
   19d60:	8c4ff06f          	j	18e24 <_svfprintf_r+0x4dc>
   19d64:	00068b9b          	sext.w	s7,a3
   19d68:	d17042e3          	bgtz	s7,19a6c <_svfprintf_r+0x1124>
   19d6c:	d29ff06f          	j	19a94 <_svfprintf_r+0x114c>
   19d70:	00048d93          	mv	s11,s1
   19d74:	ddcff06f          	j	19350 <_svfprintf_r+0xa08>
   19d78:	000217b7          	lui	a5,0x21
   19d7c:	2e078793          	addi	a5,a5,736 # 212e0 <__clzdi2+0x7c>
   19d80:	02f13423          	sd	a5,40(sp)
   19d84:	01813683          	ld	a3,24(sp)
   19d88:	0204f793          	andi	a5,s1,32
   19d8c:	00868713          	addi	a4,a3,8
   19d90:	30078463          	beqz	a5,1a098 <_svfprintf_r+0x1750>
   19d94:	0006b903          	ld	s2,0(a3)
   19d98:	0014f793          	andi	a5,s1,1
   19d9c:	00078e63          	beqz	a5,19db8 <_svfprintf_r+0x1470>
   19da0:	00090c63          	beqz	s2,19db8 <_svfprintf_r+0x1470>
   19da4:	0024e493          	ori	s1,s1,2
   19da8:	03000793          	li	a5,48
   19dac:	0ef10023          	sb	a5,224(sp)
   19db0:	0f9100a3          	sb	s9,225(sp)
   19db4:	0004849b          	sext.w	s1,s1
   19db8:	bff4f493          	andi	s1,s1,-1025
   19dbc:	00048d9b          	sext.w	s11,s1
   19dc0:	00e13c23          	sd	a4,24(sp)
   19dc4:	00200793          	li	a5,2
   19dc8:	fc9fe06f          	j	18d90 <_svfprintf_r+0x448>
   19dcc:	11010613          	addi	a2,sp,272
   19dd0:	000a0593          	mv	a1,s4
   19dd4:	00098513          	mv	a0,s3
   19dd8:	47d030ef          	jal	ra,1da54 <__ssprint_r>
   19ddc:	aa0510e3          	bnez	a0,1987c <_svfprintf_r+0xf34>
   19de0:	12013783          	ld	a5,288(sp)
   19de4:	000b0313          	mv	t1,s6
   19de8:	82dff06f          	j	19614 <_svfprintf_r+0xccc>
   19dec:	000217b7          	lui	a5,0x21
   19df0:	2c878793          	addi	a5,a5,712 # 212c8 <__clzdi2+0x64>
   19df4:	02f13423          	sd	a5,40(sp)
   19df8:	f8dff06f          	j	19d84 <_svfprintf_r+0x143c>
   19dfc:	2004e493          	ori	s1,s1,512
   19e00:	00144e03          	lbu	t3,1(s0)
   19e04:	0004849b          	sext.w	s1,s1
   19e08:	00140413          	addi	s0,s0,1
   19e0c:	ca5fe06f          	j	18ab0 <_svfprintf_r+0x168>
   19e10:	0204e493          	ori	s1,s1,32
   19e14:	00144e03          	lbu	t3,1(s0)
   19e18:	0004849b          	sext.w	s1,s1
   19e1c:	00140413          	addi	s0,s0,1
   19e20:	c91fe06f          	j	18ab0 <_svfprintf_r+0x168>
   19e24:	04000593          	li	a1,64
   19e28:	00098513          	mv	a0,s3
   19e2c:	a5dfc0ef          	jal	ra,16888 <_malloc_r>
   19e30:	00aa3023          	sd	a0,0(s4)
   19e34:	00aa3c23          	sd	a0,24(s4)
   19e38:	00051463          	bnez	a0,19e40 <_svfprintf_r+0x14f8>
   19e3c:	7d10006f          	j	1ae0c <_svfprintf_r+0x24c4>
   19e40:	04000793          	li	a5,64
   19e44:	02fa2023          	sw	a5,32(s4)
   19e48:	b81fe06f          	j	189c8 <_svfprintf_r+0x80>
   19e4c:	000d0513          	mv	a0,s10
   19e50:	02613823          	sd	t1,48(sp)
   19e54:	98dfe0ef          	jal	ra,187e0 <strlen>
   19e58:	00050b9b          	sext.w	s7,a0
   19e5c:	0df14783          	lbu	a5,223(sp)
   19e60:	fffbc913          	not	s2,s7
   19e64:	43f95913          	srai	s2,s2,0x3f
   19e68:	01b13c23          	sd	s11,24(sp)
   19e6c:	00013823          	sd	zero,16(sp)
   19e70:	04013423          	sd	zero,72(sp)
   19e74:	04013c23          	sd	zero,88(sp)
   19e78:	04013823          	sd	zero,80(sp)
   19e7c:	03013303          	ld	t1,48(sp)
   19e80:	01797933          	and	s2,s2,s7
   19e84:	00000c13          	li	s8,0
   19e88:	00078463          	beqz	a5,19e90 <_svfprintf_r+0x1548>
   19e8c:	ed1fe06f          	j	18d5c <_svfprintf_r+0x414>
   19e90:	cb1fe06f          	j	18b40 <_svfprintf_r+0x1f8>
   19e94:	000228b7          	lui	a7,0x22
   19e98:	01000693          	li	a3,16
   19e9c:	11812703          	lw	a4,280(sp)
   19ea0:	ad088d93          	addi	s11,a7,-1328 # 21ad0 <zeroes.0>
   19ea4:	01000c93          	li	s9,16
   19ea8:	00700c13          	li	s8,7
   19eac:	0176c863          	blt	a3,s7,19ebc <_svfprintf_r+0x1574>
   19eb0:	62c0006f          	j	1a4dc <_svfprintf_r+0x1b94>
   19eb4:	ff0b8b9b          	addiw	s7,s7,-16
   19eb8:	637cd263          	bge	s9,s7,1a4dc <_svfprintf_r+0x1b94>
   19ebc:	0017071b          	addiw	a4,a4,1
   19ec0:	01078793          	addi	a5,a5,16
   19ec4:	01b33023          	sd	s11,0(t1)
   19ec8:	01933423          	sd	s9,8(t1)
   19ecc:	12f13023          	sd	a5,288(sp)
   19ed0:	10e12c23          	sw	a4,280(sp)
   19ed4:	01030313          	addi	t1,t1,16
   19ed8:	fcec5ee3          	bge	s8,a4,19eb4 <_svfprintf_r+0x156c>
   19edc:	11010613          	addi	a2,sp,272
   19ee0:	000a0593          	mv	a1,s4
   19ee4:	00098513          	mv	a0,s3
   19ee8:	36d030ef          	jal	ra,1da54 <__ssprint_r>
   19eec:	980518e3          	bnez	a0,1987c <_svfprintf_r+0xf34>
   19ef0:	12013783          	ld	a5,288(sp)
   19ef4:	11812703          	lw	a4,280(sp)
   19ef8:	000b0313          	mv	t1,s6
   19efc:	fb9ff06f          	j	19eb4 <_svfprintf_r+0x156c>
   19f00:	02013703          	ld	a4,32(sp)
   19f04:	00022eb7          	lui	t4,0x22
   19f08:	00700b93          	li	s7,7
   19f0c:	00ed0733          	add	a4,s10,a4
   19f10:	02e13c23          	sd	a4,56(sp)
   19f14:	05813703          	ld	a4,88(sp)
   19f18:	01000d93          	li	s11,16
   19f1c:	ad0e8c93          	addi	s9,t4,-1328 # 21ad0 <zeroes.0>
   19f20:	0c070463          	beqz	a4,19fe8 <_svfprintf_r+0x16a0>
   19f24:	04813703          	ld	a4,72(sp)
   19f28:	0c071463          	bnez	a4,19ff0 <_svfprintf_r+0x16a8>
   19f2c:	06013703          	ld	a4,96(sp)
   19f30:	fff70713          	addi	a4,a4,-1
   19f34:	06e13023          	sd	a4,96(sp)
   19f38:	05813703          	ld	a4,88(sp)
   19f3c:	fff7071b          	addiw	a4,a4,-1
   19f40:	04e13c23          	sd	a4,88(sp)
   19f44:	08813703          	ld	a4,136(sp)
   19f48:	08013683          	ld	a3,128(sp)
   19f4c:	01030313          	addi	t1,t1,16
   19f50:	fee33823          	sd	a4,-16(t1)
   19f54:	11812703          	lw	a4,280(sp)
   19f58:	00d787b3          	add	a5,a5,a3
   19f5c:	fed33c23          	sd	a3,-8(t1)
   19f60:	0017071b          	addiw	a4,a4,1
   19f64:	12f13023          	sd	a5,288(sp)
   19f68:	0007069b          	sext.w	a3,a4
   19f6c:	10e12c23          	sw	a4,280(sp)
   19f70:	12dbce63          	blt	s7,a3,1a0ac <_svfprintf_r+0x1764>
   19f74:	06013703          	ld	a4,96(sp)
   19f78:	00074583          	lbu	a1,0(a4)
   19f7c:	03813703          	ld	a4,56(sp)
   19f80:	0005869b          	sext.w	a3,a1
   19f84:	4187063b          	subw	a2,a4,s8
   19f88:	0006871b          	sext.w	a4,a3
   19f8c:	00d65463          	bge	a2,a3,19f94 <_svfprintf_r+0x164c>
   19f90:	0006071b          	sext.w	a4,a2
   19f94:	02e05a63          	blez	a4,19fc8 <_svfprintf_r+0x1680>
   19f98:	11812683          	lw	a3,280(sp)
   19f9c:	00e787b3          	add	a5,a5,a4
   19fa0:	01833023          	sd	s8,0(t1)
   19fa4:	0016861b          	addiw	a2,a3,1
   19fa8:	00e33423          	sd	a4,8(t1)
   19fac:	12f13023          	sd	a5,288(sp)
   19fb0:	10c12c23          	sw	a2,280(sp)
   19fb4:	32cbc463          	blt	s7,a2,1a2dc <_svfprintf_r+0x1994>
   19fb8:	06013683          	ld	a3,96(sp)
   19fbc:	01030313          	addi	t1,t1,16
   19fc0:	0006c583          	lbu	a1,0(a3)
   19fc4:	0005869b          	sext.w	a3,a1
   19fc8:	fff74613          	not	a2,a4
   19fcc:	43f65613          	srai	a2,a2,0x3f
   19fd0:	00c77733          	and	a4,a4,a2
   19fd4:	40e6873b          	subw	a4,a3,a4
   19fd8:	02e04463          	bgtz	a4,1a000 <_svfprintf_r+0x16b8>
   19fdc:	00bc0c33          	add	s8,s8,a1
   19fe0:	05813703          	ld	a4,88(sp)
   19fe4:	f40710e3          	bnez	a4,19f24 <_svfprintf_r+0x15dc>
   19fe8:	04813703          	ld	a4,72(sp)
   19fec:	62070463          	beqz	a4,1a614 <_svfprintf_r+0x1ccc>
   19ff0:	04813703          	ld	a4,72(sp)
   19ff4:	fff7071b          	addiw	a4,a4,-1
   19ff8:	04e13423          	sd	a4,72(sp)
   19ffc:	f49ff06f          	j	19f44 <_svfprintf_r+0x15fc>
   1a000:	11812683          	lw	a3,280(sp)
   1a004:	00edc863          	blt	s11,a4,1a014 <_svfprintf_r+0x16cc>
   1a008:	05c0006f          	j	1a064 <_svfprintf_r+0x171c>
   1a00c:	ff07071b          	addiw	a4,a4,-16
   1a010:	04edda63          	bge	s11,a4,1a064 <_svfprintf_r+0x171c>
   1a014:	0016869b          	addiw	a3,a3,1
   1a018:	01078793          	addi	a5,a5,16
   1a01c:	01933023          	sd	s9,0(t1)
   1a020:	01b33423          	sd	s11,8(t1)
   1a024:	12f13023          	sd	a5,288(sp)
   1a028:	10d12c23          	sw	a3,280(sp)
   1a02c:	01030313          	addi	t1,t1,16
   1a030:	fcdbdee3          	bge	s7,a3,1a00c <_svfprintf_r+0x16c4>
   1a034:	11010613          	addi	a2,sp,272
   1a038:	000a0593          	mv	a1,s4
   1a03c:	00098513          	mv	a0,s3
   1a040:	02e13823          	sd	a4,48(sp)
   1a044:	211030ef          	jal	ra,1da54 <__ssprint_r>
   1a048:	82051ae3          	bnez	a0,1987c <_svfprintf_r+0xf34>
   1a04c:	03013703          	ld	a4,48(sp)
   1a050:	12013783          	ld	a5,288(sp)
   1a054:	11812683          	lw	a3,280(sp)
   1a058:	ff07071b          	addiw	a4,a4,-16
   1a05c:	000b0313          	mv	t1,s6
   1a060:	faedcae3          	blt	s11,a4,1a014 <_svfprintf_r+0x16cc>
   1a064:	0016869b          	addiw	a3,a3,1
   1a068:	00e787b3          	add	a5,a5,a4
   1a06c:	00e33423          	sd	a4,8(t1)
   1a070:	01933023          	sd	s9,0(t1)
   1a074:	12f13023          	sd	a5,288(sp)
   1a078:	0006871b          	sext.w	a4,a3
   1a07c:	10d12c23          	sw	a3,280(sp)
   1a080:	62ebca63          	blt	s7,a4,1a6b4 <_svfprintf_r+0x1d6c>
   1a084:	06013703          	ld	a4,96(sp)
   1a088:	01030313          	addi	t1,t1,16
   1a08c:	00074583          	lbu	a1,0(a4)
   1a090:	00bc0c33          	add	s8,s8,a1
   1a094:	f4dff06f          	j	19fe0 <_svfprintf_r+0x1698>
   1a098:	0104f793          	andi	a5,s1,16
   1a09c:	1e078263          	beqz	a5,1a280 <_svfprintf_r+0x1938>
   1a0a0:	01813783          	ld	a5,24(sp)
   1a0a4:	0007b903          	ld	s2,0(a5)
   1a0a8:	cf1ff06f          	j	19d98 <_svfprintf_r+0x1450>
   1a0ac:	11010613          	addi	a2,sp,272
   1a0b0:	000a0593          	mv	a1,s4
   1a0b4:	00098513          	mv	a0,s3
   1a0b8:	19d030ef          	jal	ra,1da54 <__ssprint_r>
   1a0bc:	fc051063          	bnez	a0,1987c <_svfprintf_r+0xf34>
   1a0c0:	12013783          	ld	a5,288(sp)
   1a0c4:	000b0313          	mv	t1,s6
   1a0c8:	eadff06f          	j	19f74 <_svfprintf_r+0x162c>
   1a0cc:	11010613          	addi	a2,sp,272
   1a0d0:	000a0593          	mv	a1,s4
   1a0d4:	00098513          	mv	a0,s3
   1a0d8:	17d030ef          	jal	ra,1da54 <__ssprint_r>
   1a0dc:	fa051063          	bnez	a0,1987c <_svfprintf_r+0xf34>
   1a0e0:	11812603          	lw	a2,280(sp)
   1a0e4:	12013c03          	ld	s8,288(sp)
   1a0e8:	1a010313          	addi	t1,sp,416
   1a0ec:	0016061b          	addiw	a2,a2,1
   1a0f0:	000b0b93          	mv	s7,s6
   1a0f4:	8a4ff06f          	j	19198 <_svfprintf_r+0x850>
   1a0f8:	18c10b93          	addi	s7,sp,396
   1a0fc:	400df713          	andi	a4,s11,1024
   1a100:	02013023          	sd	zero,32(sp)
   1a104:	000b8613          	mv	a2,s7
   1a108:	00a00493          	li	s1,10
   1a10c:	00900693          	li	a3,9
   1a110:	0ff00893          	li	a7,255
   1a114:	0140006f          	j	1a128 <_svfprintf_r+0x17e0>
   1a118:	029957b3          	divu	a5,s2,s1
   1a11c:	db26f863          	bgeu	a3,s2,196cc <_svfprintf_r+0xd84>
   1a120:	00078913          	mv	s2,a5
   1a124:	000d0613          	mv	a2,s10
   1a128:	02013583          	ld	a1,32(sp)
   1a12c:	fff60d13          	addi	s10,a2,-1
   1a130:	0015859b          	addiw	a1,a1,1
   1a134:	02b13023          	sd	a1,32(sp)
   1a138:	029977b3          	remu	a5,s2,s1
   1a13c:	0307879b          	addiw	a5,a5,48
   1a140:	fef60fa3          	sb	a5,-1(a2)
   1a144:	fc070ae3          	beqz	a4,1a118 <_svfprintf_r+0x17d0>
   1a148:	06013783          	ld	a5,96(sp)
   1a14c:	0007c783          	lbu	a5,0(a5)
   1a150:	fcf594e3          	bne	a1,a5,1a118 <_svfprintf_r+0x17d0>
   1a154:	fd1782e3          	beq	a5,a7,1a118 <_svfprintf_r+0x17d0>
   1a158:	d726fa63          	bgeu	a3,s2,196cc <_svfprintf_r+0xd84>
   1a15c:	08013783          	ld	a5,128(sp)
   1a160:	08813583          	ld	a1,136(sp)
   1a164:	02e13823          	sd	a4,48(sp)
   1a168:	40fd0d33          	sub	s10,s10,a5
   1a16c:	00078613          	mv	a2,a5
   1a170:	000d0513          	mv	a0,s10
   1a174:	00613823          	sd	t1,16(sp)
   1a178:	f30fe0ef          	jal	ra,188a8 <strncpy>
   1a17c:	06013703          	ld	a4,96(sp)
   1a180:	029957b3          	divu	a5,s2,s1
   1a184:	01013303          	ld	t1,16(sp)
   1a188:	00174603          	lbu	a2,1(a4)
   1a18c:	02013023          	sd	zero,32(sp)
   1a190:	00900693          	li	a3,9
   1a194:	00c03633          	snez	a2,a2
   1a198:	00c70733          	add	a4,a4,a2
   1a19c:	06e13023          	sd	a4,96(sp)
   1a1a0:	0ff00893          	li	a7,255
   1a1a4:	03013703          	ld	a4,48(sp)
   1a1a8:	f79ff06f          	j	1a120 <_svfprintf_r+0x17d8>
   1a1ac:	11812703          	lw	a4,280(sp)
   1a1b0:	000216b7          	lui	a3,0x21
   1a1b4:	30068693          	addi	a3,a3,768 # 21300 <__clzdi2+0x9c>
   1a1b8:	0017071b          	addiw	a4,a4,1
   1a1bc:	00d33023          	sd	a3,0(t1)
   1a1c0:	00178793          	addi	a5,a5,1
   1a1c4:	00100693          	li	a3,1
   1a1c8:	00d33423          	sd	a3,8(t1)
   1a1cc:	10e12c23          	sw	a4,280(sp)
   1a1d0:	0007069b          	sext.w	a3,a4
   1a1d4:	12f13023          	sd	a5,288(sp)
   1a1d8:	00700713          	li	a4,7
   1a1dc:	01030313          	addi	t1,t1,16
   1a1e0:	06d74e63          	blt	a4,a3,1a25c <_svfprintf_r+0x1914>
   1a1e4:	1a061663          	bnez	a2,1a390 <_svfprintf_r+0x1a48>
   1a1e8:	02013683          	ld	a3,32(sp)
   1a1ec:	0014f713          	andi	a4,s1,1
   1a1f0:	00e6e733          	or	a4,a3,a4
   1a1f4:	00071463          	bnez	a4,1a1fc <_svfprintf_r+0x18b4>
   1a1f8:	a21fe06f          	j	18c18 <_svfprintf_r+0x2d0>
   1a1fc:	07013703          	ld	a4,112(sp)
   1a200:	06813683          	ld	a3,104(sp)
   1a204:	00e33023          	sd	a4,0(t1)
   1a208:	11812703          	lw	a4,280(sp)
   1a20c:	00f687b3          	add	a5,a3,a5
   1a210:	00d33423          	sd	a3,8(t1)
   1a214:	0017071b          	addiw	a4,a4,1
   1a218:	0007069b          	sext.w	a3,a4
   1a21c:	10e12c23          	sw	a4,280(sp)
   1a220:	12f13023          	sd	a5,288(sp)
   1a224:	00700713          	li	a4,7
   1a228:	3ad74c63          	blt	a4,a3,1a5e0 <_svfprintf_r+0x1c98>
   1a22c:	01030313          	addi	t1,t1,16
   1a230:	02013703          	ld	a4,32(sp)
   1a234:	0016861b          	addiw	a2,a3,1
   1a238:	01a33023          	sd	s10,0(t1)
   1a23c:	00f707b3          	add	a5,a4,a5
   1a240:	00e33423          	sd	a4,8(t1)
   1a244:	12f13023          	sd	a5,288(sp)
   1a248:	10c12c23          	sw	a2,280(sp)
   1a24c:	00700713          	li	a4,7
   1a250:	00c74463          	blt	a4,a2,1a258 <_svfprintf_r+0x1910>
   1a254:	9c1fe06f          	j	18c14 <_svfprintf_r+0x2cc>
   1a258:	f65fe06f          	j	191bc <_svfprintf_r+0x874>
   1a25c:	11010613          	addi	a2,sp,272
   1a260:	000a0593          	mv	a1,s4
   1a264:	00098513          	mv	a0,s3
   1a268:	7ec030ef          	jal	ra,1da54 <__ssprint_r>
   1a26c:	e0051863          	bnez	a0,1987c <_svfprintf_r+0xf34>
   1a270:	0e812603          	lw	a2,232(sp)
   1a274:	12013783          	ld	a5,288(sp)
   1a278:	000b0313          	mv	t1,s6
   1a27c:	f69ff06f          	j	1a1e4 <_svfprintf_r+0x189c>
   1a280:	01813683          	ld	a3,24(sp)
   1a284:	0404f793          	andi	a5,s1,64
   1a288:	0006a903          	lw	s2,0(a3)
   1a28c:	1c078e63          	beqz	a5,1a468 <_svfprintf_r+0x1b20>
   1a290:	03091913          	slli	s2,s2,0x30
   1a294:	03095913          	srli	s2,s2,0x30
   1a298:	b01ff06f          	j	19d98 <_svfprintf_r+0x1450>
   1a29c:	00048d93          	mv	s11,s1
   1a2a0:	00e13c23          	sd	a4,24(sp)
   1a2a4:	a75fe06f          	j	18d18 <_svfprintf_r+0x3d0>
   1a2a8:	11010613          	addi	a2,sp,272
   1a2ac:	000a0593          	mv	a1,s4
   1a2b0:	00098513          	mv	a0,s3
   1a2b4:	7a0030ef          	jal	ra,1da54 <__ssprint_r>
   1a2b8:	dc051263          	bnez	a0,1987c <_svfprintf_r+0xf34>
   1a2bc:	12013783          	ld	a5,288(sp)
   1a2c0:	000b0313          	mv	t1,s6
   1a2c4:	b10ff06f          	j	195d4 <_svfprintf_r+0xc8c>
   1a2c8:	0017069b          	addiw	a3,a4,1
   1a2cc:	00068713          	mv	a4,a3
   1a2d0:	017787b3          	add	a5,a5,s7
   1a2d4:	01b33023          	sd	s11,0(t1)
   1a2d8:	929fe06f          	j	18c00 <_svfprintf_r+0x2b8>
   1a2dc:	11010613          	addi	a2,sp,272
   1a2e0:	000a0593          	mv	a1,s4
   1a2e4:	00098513          	mv	a0,s3
   1a2e8:	02e13823          	sd	a4,48(sp)
   1a2ec:	768030ef          	jal	ra,1da54 <__ssprint_r>
   1a2f0:	d8051663          	bnez	a0,1987c <_svfprintf_r+0xf34>
   1a2f4:	06013783          	ld	a5,96(sp)
   1a2f8:	03013703          	ld	a4,48(sp)
   1a2fc:	000b0313          	mv	t1,s6
   1a300:	0007c583          	lbu	a1,0(a5)
   1a304:	12013783          	ld	a5,288(sp)
   1a308:	0005869b          	sext.w	a3,a1
   1a30c:	cbdff06f          	j	19fc8 <_svfprintf_r+0x1680>
   1a310:	10013503          	ld	a0,256(sp)
   1a314:	10813583          	ld	a1,264(sp)
   1a318:	00000613          	li	a2,0
   1a31c:	00000693          	li	a3,0
   1a320:	574050ef          	jal	ra,1f894 <__letf2>
   1a324:	01013303          	ld	t1,16(sp)
   1a328:	3a054c63          	bltz	a0,1a6e0 <_svfprintf_r+0x1d98>
   1a32c:	0df14783          	lbu	a5,223(sp)
   1a330:	04700713          	li	a4,71
   1a334:	1f975663          	bge	a4,s9,1a520 <_svfprintf_r+0x1bd8>
   1a338:	00021837          	lui	a6,0x21
   1a33c:	2b080d13          	addi	s10,a6,688 # 212b0 <__clzdi2+0x4c>
   1a340:	f7f4f493          	andi	s1,s1,-129
   1a344:	00013823          	sd	zero,16(sp)
   1a348:	04013423          	sd	zero,72(sp)
   1a34c:	04013c23          	sd	zero,88(sp)
   1a350:	04013823          	sd	zero,80(sp)
   1a354:	0004849b          	sext.w	s1,s1
   1a358:	00300913          	li	s2,3
   1a35c:	00300b93          	li	s7,3
   1a360:	00000c13          	li	s8,0
   1a364:	00078463          	beqz	a5,1a36c <_svfprintf_r+0x1a24>
   1a368:	9f5fe06f          	j	18d5c <_svfprintf_r+0x414>
   1a36c:	fd4fe06f          	j	18b40 <_svfprintf_r+0x1f8>
   1a370:	00600793          	li	a5,6
   1a374:	000c0b9b          	sext.w	s7,s8
   1a378:	1d87ea63          	bltu	a5,s8,1a54c <_svfprintf_r+0x1c04>
   1a37c:	00021837          	lui	a6,0x21
   1a380:	000b8913          	mv	s2,s7
   1a384:	01b13c23          	sd	s11,24(sp)
   1a388:	2f880d13          	addi	s10,a6,760 # 212f8 <__clzdi2+0x94>
   1a38c:	fa0fe06f          	j	18b2c <_svfprintf_r+0x1e4>
   1a390:	07013703          	ld	a4,112(sp)
   1a394:	06813683          	ld	a3,104(sp)
   1a398:	01030313          	addi	t1,t1,16
   1a39c:	fee33823          	sd	a4,-16(t1)
   1a3a0:	11812703          	lw	a4,280(sp)
   1a3a4:	00f687b3          	add	a5,a3,a5
   1a3a8:	fed33c23          	sd	a3,-8(t1)
   1a3ac:	0017071b          	addiw	a4,a4,1
   1a3b0:	0007069b          	sext.w	a3,a4
   1a3b4:	10e12c23          	sw	a4,280(sp)
   1a3b8:	12f13023          	sd	a5,288(sp)
   1a3bc:	00700713          	li	a4,7
   1a3c0:	22d74063          	blt	a4,a3,1a5e0 <_svfprintf_r+0x1c98>
   1a3c4:	e60656e3          	bgez	a2,1a230 <_svfprintf_r+0x18e8>
   1a3c8:	000228b7          	lui	a7,0x22
   1a3cc:	ff000713          	li	a4,-16
   1a3d0:	40c00c3b          	negw	s8,a2
   1a3d4:	ad088d93          	addi	s11,a7,-1328 # 21ad0 <zeroes.0>
   1a3d8:	01000b93          	li	s7,16
   1a3dc:	00700c93          	li	s9,7
   1a3e0:	00e64863          	blt	a2,a4,1a3f0 <_svfprintf_r+0x1aa8>
   1a3e4:	77c0006f          	j	1ab60 <_svfprintf_r+0x2218>
   1a3e8:	ff0c0c1b          	addiw	s8,s8,-16
   1a3ec:	778bda63          	bge	s7,s8,1ab60 <_svfprintf_r+0x2218>
   1a3f0:	0016869b          	addiw	a3,a3,1
   1a3f4:	01078793          	addi	a5,a5,16
   1a3f8:	01b33023          	sd	s11,0(t1)
   1a3fc:	01733423          	sd	s7,8(t1)
   1a400:	12f13023          	sd	a5,288(sp)
   1a404:	10d12c23          	sw	a3,280(sp)
   1a408:	01030313          	addi	t1,t1,16
   1a40c:	fcdcdee3          	bge	s9,a3,1a3e8 <_svfprintf_r+0x1aa0>
   1a410:	11010613          	addi	a2,sp,272
   1a414:	000a0593          	mv	a1,s4
   1a418:	00098513          	mv	a0,s3
   1a41c:	638030ef          	jal	ra,1da54 <__ssprint_r>
   1a420:	c4051e63          	bnez	a0,1987c <_svfprintf_r+0xf34>
   1a424:	12013783          	ld	a5,288(sp)
   1a428:	11812683          	lw	a3,280(sp)
   1a42c:	000b0313          	mv	t1,s6
   1a430:	fb9ff06f          	j	1a3e8 <_svfprintf_r+0x1aa0>
   1a434:	0017061b          	addiw	a2,a4,1
   1a438:	010b8713          	addi	a4,s7,16
   1a43c:	019c0c33          	add	s8,s8,s9
   1a440:	01bbb023          	sd	s11,0(s7)
   1a444:	019bb423          	sd	s9,8(s7)
   1a448:	13813023          	sd	s8,288(sp)
   1a44c:	10c12c23          	sw	a2,280(sp)
   1a450:	00700693          	li	a3,7
   1a454:	c6c6cce3          	blt	a3,a2,1a0cc <_svfprintf_r+0x1784>
   1a458:	0016061b          	addiw	a2,a2,1
   1a45c:	01070313          	addi	t1,a4,16
   1a460:	00070b93          	mv	s7,a4
   1a464:	d35fe06f          	j	19198 <_svfprintf_r+0x850>
   1a468:	2004f793          	andi	a5,s1,512
   1a46c:	14078463          	beqz	a5,1a5b4 <_svfprintf_r+0x1c6c>
   1a470:	0ff97913          	zext.b	s2,s2
   1a474:	925ff06f          	j	19d98 <_svfprintf_r+0x1450>
   1a478:	2004f793          	andi	a5,s1,512
   1a47c:	12078463          	beqz	a5,1a5a4 <_svfprintf_r+0x1c5c>
   1a480:	01813783          	ld	a5,24(sp)
   1a484:	00078903          	lb	s2,0(a5)
   1a488:	00090793          	mv	a5,s2
   1a48c:	86dfe06f          	j	18cf8 <_svfprintf_r+0x3b0>
   1a490:	200df793          	andi	a5,s11,512
   1a494:	0e078e63          	beqz	a5,1a590 <_svfprintf_r+0x1c48>
   1a498:	0ff97913          	zext.b	s2,s2
   1a49c:	00e13c23          	sd	a4,24(sp)
   1a4a0:	00100793          	li	a5,1
   1a4a4:	8edfe06f          	j	18d90 <_svfprintf_r+0x448>
   1a4a8:	2004f793          	andi	a5,s1,512
   1a4ac:	0c078c63          	beqz	a5,1a584 <_svfprintf_r+0x1c3c>
   1a4b0:	0ff97913          	zext.b	s2,s2
   1a4b4:	8cdfe06f          	j	18d80 <_svfprintf_r+0x438>
   1a4b8:	10813783          	ld	a5,264(sp)
   1a4bc:	1007de63          	bgez	a5,1a5d8 <_svfprintf_r+0x1c90>
   1a4c0:	02d00793          	li	a5,45
   1a4c4:	0cf10fa3          	sb	a5,223(sp)
   1a4c8:	04700713          	li	a4,71
   1a4cc:	3b975063          	bge	a4,s9,1a86c <_svfprintf_r+0x1f24>
   1a4d0:	00021837          	lui	a6,0x21
   1a4d4:	2c080d13          	addi	s10,a6,704 # 212c0 <__clzdi2+0x5c>
   1a4d8:	e69ff06f          	j	1a340 <_svfprintf_r+0x19f8>
   1a4dc:	0017069b          	addiw	a3,a4,1
   1a4e0:	017787b3          	add	a5,a5,s7
   1a4e4:	01b33023          	sd	s11,0(t1)
   1a4e8:	01733423          	sd	s7,8(t1)
   1a4ec:	12f13023          	sd	a5,288(sp)
   1a4f0:	10d12c23          	sw	a3,280(sp)
   1a4f4:	00700713          	li	a4,7
   1a4f8:	01030313          	addi	t1,t1,16
   1a4fc:	dad75863          	bge	a4,a3,19aac <_svfprintf_r+0x1164>
   1a500:	11010613          	addi	a2,sp,272
   1a504:	000a0593          	mv	a1,s4
   1a508:	00098513          	mv	a0,s3
   1a50c:	548030ef          	jal	ra,1da54 <__ssprint_r>
   1a510:	b6051663          	bnez	a0,1987c <_svfprintf_r+0xf34>
   1a514:	12013783          	ld	a5,288(sp)
   1a518:	000b0313          	mv	t1,s6
   1a51c:	d90ff06f          	j	19aac <_svfprintf_r+0x1164>
   1a520:	00021837          	lui	a6,0x21
   1a524:	2a880d13          	addi	s10,a6,680 # 212a8 <__clzdi2+0x44>
   1a528:	e19ff06f          	j	1a340 <_svfprintf_r+0x19f8>
   1a52c:	11010613          	addi	a2,sp,272
   1a530:	000a0593          	mv	a1,s4
   1a534:	00098513          	mv	a0,s3
   1a538:	51c030ef          	jal	ra,1da54 <__ssprint_r>
   1a53c:	b4051063          	bnez	a0,1987c <_svfprintf_r+0xf34>
   1a540:	12013783          	ld	a5,288(sp)
   1a544:	000b0313          	mv	t1,s6
   1a548:	d4cff06f          	j	19a94 <_svfprintf_r+0x114c>
   1a54c:	00600b93          	li	s7,6
   1a550:	e2dff06f          	j	1a37c <_svfprintf_r+0x1a34>
   1a554:	02013683          	ld	a3,32(sp)
   1a558:	00dd0833          	add	a6,s10,a3
   1a55c:	40e6863b          	subw	a2,a3,a4
   1a560:	41880f3b          	subw	t5,a6,s8
   1a564:	00060b93          	mv	s7,a2
   1a568:	decf5463          	bge	t5,a2,19b50 <_svfprintf_r+0x1208>
   1a56c:	000f0b9b          	sext.w	s7,t5
   1a570:	de0ff06f          	j	19b50 <_svfprintf_r+0x1208>
   1a574:	00813783          	ld	a5,8(sp)
   1a578:	00040d13          	mv	s10,s0
   1a57c:	00f71023          	sh	a5,0(a4)
   1a580:	ee4fe06f          	j	18c64 <_svfprintf_r+0x31c>
   1a584:	02091913          	slli	s2,s2,0x20
   1a588:	02095913          	srli	s2,s2,0x20
   1a58c:	ff4fe06f          	j	18d80 <_svfprintf_r+0x438>
   1a590:	02091913          	slli	s2,s2,0x20
   1a594:	02095913          	srli	s2,s2,0x20
   1a598:	00e13c23          	sd	a4,24(sp)
   1a59c:	00100793          	li	a5,1
   1a5a0:	ff0fe06f          	j	18d90 <_svfprintf_r+0x448>
   1a5a4:	01813783          	ld	a5,24(sp)
   1a5a8:	0007a903          	lw	s2,0(a5)
   1a5ac:	00090793          	mv	a5,s2
   1a5b0:	f48fe06f          	j	18cf8 <_svfprintf_r+0x3b0>
   1a5b4:	02091913          	slli	s2,s2,0x20
   1a5b8:	02095913          	srli	s2,s2,0x20
   1a5bc:	fdcff06f          	j	19d98 <_svfprintf_r+0x1450>
   1a5c0:	11010613          	addi	a2,sp,272
   1a5c4:	000a0593          	mv	a1,s4
   1a5c8:	00098513          	mv	a0,s3
   1a5cc:	488030ef          	jal	ra,1da54 <__ssprint_r>
   1a5d0:	010a5783          	lhu	a5,16(s4)
   1a5d4:	ea8fe06f          	j	18c7c <_svfprintf_r+0x334>
   1a5d8:	0df14783          	lbu	a5,223(sp)
   1a5dc:	eedff06f          	j	1a4c8 <_svfprintf_r+0x1b80>
   1a5e0:	11010613          	addi	a2,sp,272
   1a5e4:	000a0593          	mv	a1,s4
   1a5e8:	00098513          	mv	a0,s3
   1a5ec:	468030ef          	jal	ra,1da54 <__ssprint_r>
   1a5f0:	a8051663          	bnez	a0,1987c <_svfprintf_r+0xf34>
   1a5f4:	0e812603          	lw	a2,232(sp)
   1a5f8:	12013783          	ld	a5,288(sp)
   1a5fc:	11812683          	lw	a3,280(sp)
   1a600:	000b0313          	mv	t1,s6
   1a604:	c20656e3          	bgez	a2,1a230 <_svfprintf_r+0x18e8>
   1a608:	dc1ff06f          	j	1a3c8 <_svfprintf_r+0x1a80>
   1a60c:	00600c13          	li	s8,6
   1a610:	879fe06f          	j	18e88 <_svfprintf_r+0x540>
   1a614:	02013703          	ld	a4,32(sp)
   1a618:	00ed0733          	add	a4,s10,a4
   1a61c:	cb877063          	bgeu	a4,s8,19abc <_svfprintf_r+0x1174>
   1a620:	00070c13          	mv	s8,a4
   1a624:	c98ff06f          	j	19abc <_svfprintf_r+0x1174>
   1a628:	05013703          	ld	a4,80(sp)
   1a62c:	ffd00793          	li	a5,-3
   1a630:	00f74463          	blt	a4,a5,1a638 <_svfprintf_r+0x1cf0>
   1a634:	00ec5a63          	bge	s8,a4,1a648 <_svfprintf_r+0x1d00>
   1a638:	ffec8c9b          	addiw	s9,s9,-2
   1a63c:	fdfcf793          	andi	a5,s9,-33
   1a640:	04f13c23          	sd	a5,88(sp)
   1a644:	90dfe06f          	j	18f50 <_svfprintf_r+0x608>
   1a648:	05013703          	ld	a4,80(sp)
   1a64c:	02013783          	ld	a5,32(sp)
   1a650:	1af74a63          	blt	a4,a5,1a804 <_svfprintf_r+0x1ebc>
   1a654:	0b813783          	ld	a5,184(sp)
   1a658:	00070b93          	mv	s7,a4
   1a65c:	0017f793          	andi	a5,a5,1
   1a660:	00078663          	beqz	a5,1a66c <_svfprintf_r+0x1d24>
   1a664:	06813783          	ld	a5,104(sp)
   1a668:	00e78bbb          	addw	s7,a5,a4
   1a66c:	0b813783          	ld	a5,184(sp)
   1a670:	4007f793          	andi	a5,a5,1024
   1a674:	00078663          	beqz	a5,1a680 <_svfprintf_r+0x1d38>
   1a678:	05013783          	ld	a5,80(sp)
   1a67c:	60f04a63          	bgtz	a5,1ac90 <_svfprintf_r+0x2348>
   1a680:	fffbc913          	not	s2,s7
   1a684:	43f95913          	srai	s2,s2,0x3f
   1a688:	012bf933          	and	s2,s7,s2
   1a68c:	0009091b          	sext.w	s2,s2
   1a690:	06700c93          	li	s9,103
   1a694:	04013423          	sd	zero,72(sp)
   1a698:	04013c23          	sd	zero,88(sp)
   1a69c:	9ddfe06f          	j	19078 <_svfprintf_r+0x730>
   1a6a0:	0df14783          	lbu	a5,223(sp)
   1a6a4:	00000c13          	li	s8,0
   1a6a8:	00078463          	beqz	a5,1a6b0 <_svfprintf_r+0x1d68>
   1a6ac:	eb0fe06f          	j	18d5c <_svfprintf_r+0x414>
   1a6b0:	c90fe06f          	j	18b40 <_svfprintf_r+0x1f8>
   1a6b4:	11010613          	addi	a2,sp,272
   1a6b8:	000a0593          	mv	a1,s4
   1a6bc:	00098513          	mv	a0,s3
   1a6c0:	394030ef          	jal	ra,1da54 <__ssprint_r>
   1a6c4:	9a051c63          	bnez	a0,1987c <_svfprintf_r+0xf34>
   1a6c8:	06013783          	ld	a5,96(sp)
   1a6cc:	000b0313          	mv	t1,s6
   1a6d0:	0007c583          	lbu	a1,0(a5)
   1a6d4:	12013783          	ld	a5,288(sp)
   1a6d8:	00bc0c33          	add	s8,s8,a1
   1a6dc:	905ff06f          	j	19fe0 <_svfprintf_r+0x1698>
   1a6e0:	02d00793          	li	a5,45
   1a6e4:	0cf10fa3          	sb	a5,223(sp)
   1a6e8:	c49ff06f          	j	1a330 <_svfprintf_r+0x19e8>
   1a6ec:	0e810793          	addi	a5,sp,232
   1a6f0:	000c0713          	mv	a4,s8
   1a6f4:	0f810893          	addi	a7,sp,248
   1a6f8:	0ec10813          	addi	a6,sp,236
   1a6fc:	00300693          	li	a3,3
   1a700:	000d8593          	mv	a1,s11
   1a704:	000b8613          	mv	a2,s7
   1a708:	00098513          	mv	a0,s3
   1a70c:	02613023          	sd	t1,32(sp)
   1a710:	c3dfa0ef          	jal	ra,1534c <_ldtoa_r>
   1a714:	00054703          	lbu	a4,0(a0)
   1a718:	03000793          	li	a5,48
   1a71c:	02013303          	ld	t1,32(sp)
   1a720:	00050d13          	mv	s10,a0
   1a724:	06f70063          	beq	a4,a5,1a784 <_svfprintf_r+0x1e3c>
   1a728:	0e812783          	lw	a5,232(sp)
   1a72c:	018787b3          	add	a5,a5,s8
   1a730:	00fd0933          	add	s2,s10,a5
   1a734:	00000693          	li	a3,0
   1a738:	00000613          	li	a2,0
   1a73c:	000d8513          	mv	a0,s11
   1a740:	000b8593          	mv	a1,s7
   1a744:	02613023          	sd	t1,32(sp)
   1a748:	799040ef          	jal	ra,1f6e0 <__eqtf2>
   1a74c:	02013303          	ld	t1,32(sp)
   1a750:	00090693          	mv	a3,s2
   1a754:	00051463          	bnez	a0,1a75c <_svfprintf_r+0x1e14>
   1a758:	fc8fe06f          	j	18f20 <_svfprintf_r+0x5d8>
   1a75c:	0f813683          	ld	a3,248(sp)
   1a760:	0126e463          	bltu	a3,s2,1a768 <_svfprintf_r+0x1e20>
   1a764:	fbcfe06f          	j	18f20 <_svfprintf_r+0x5d8>
   1a768:	03000713          	li	a4,48
   1a76c:	00168793          	addi	a5,a3,1
   1a770:	0ef13c23          	sd	a5,248(sp)
   1a774:	00e68023          	sb	a4,0(a3)
   1a778:	0f813683          	ld	a3,248(sp)
   1a77c:	ff26e8e3          	bltu	a3,s2,1a76c <_svfprintf_r+0x1e24>
   1a780:	fa0fe06f          	j	18f20 <_svfprintf_r+0x5d8>
   1a784:	00000613          	li	a2,0
   1a788:	00000693          	li	a3,0
   1a78c:	000d8513          	mv	a0,s11
   1a790:	000b8593          	mv	a1,s7
   1a794:	02613023          	sd	t1,32(sp)
   1a798:	749040ef          	jal	ra,1f6e0 <__eqtf2>
   1a79c:	02013303          	ld	t1,32(sp)
   1a7a0:	f80504e3          	beqz	a0,1a728 <_svfprintf_r+0x1de0>
   1a7a4:	00100713          	li	a4,1
   1a7a8:	418707bb          	subw	a5,a4,s8
   1a7ac:	0ef12423          	sw	a5,232(sp)
   1a7b0:	f7dff06f          	j	1a72c <_svfprintf_r+0x1de4>
   1a7b4:	11010613          	addi	a2,sp,272
   1a7b8:	000a0593          	mv	a1,s4
   1a7bc:	00098513          	mv	a0,s3
   1a7c0:	294030ef          	jal	ra,1da54 <__ssprint_r>
   1a7c4:	8a051c63          	bnez	a0,1987c <_svfprintf_r+0xf34>
   1a7c8:	0e812703          	lw	a4,232(sp)
   1a7cc:	12013783          	ld	a5,288(sp)
   1a7d0:	000b0313          	mv	t1,s6
   1a7d4:	b30ff06f          	j	19b04 <_svfprintf_r+0x11bc>
   1a7d8:	0df14783          	lbu	a5,223(sp)
   1a7dc:	01b13c23          	sd	s11,24(sp)
   1a7e0:	04013423          	sd	zero,72(sp)
   1a7e4:	04013c23          	sd	zero,88(sp)
   1a7e8:	04013823          	sd	zero,80(sp)
   1a7ec:	000c0913          	mv	s2,s8
   1a7f0:	000c0b93          	mv	s7,s8
   1a7f4:	00000c13          	li	s8,0
   1a7f8:	00078463          	beqz	a5,1a800 <_svfprintf_r+0x1eb8>
   1a7fc:	d60fe06f          	j	18d5c <_svfprintf_r+0x414>
   1a800:	b40fe06f          	j	18b40 <_svfprintf_r+0x1f8>
   1a804:	02013703          	ld	a4,32(sp)
   1a808:	06813783          	ld	a5,104(sp)
   1a80c:	06700c93          	li	s9,103
   1a810:	00e78bbb          	addw	s7,a5,a4
   1a814:	05013703          	ld	a4,80(sp)
   1a818:	54e05e63          	blez	a4,1ad74 <_svfprintf_r+0x242c>
   1a81c:	0b813783          	ld	a5,184(sp)
   1a820:	4007f793          	andi	a5,a5,1024
   1a824:	46079863          	bnez	a5,1ac94 <_svfprintf_r+0x234c>
   1a828:	fffbc913          	not	s2,s7
   1a82c:	43f95913          	srai	s2,s2,0x3f
   1a830:	012bf933          	and	s2,s7,s2
   1a834:	0009091b          	sext.w	s2,s2
   1a838:	e5dff06f          	j	1a694 <_svfprintf_r+0x1d4c>
   1a83c:	11010613          	addi	a2,sp,272
   1a840:	000a0593          	mv	a1,s4
   1a844:	00098513          	mv	a0,s3
   1a848:	20c030ef          	jal	ra,1da54 <__ssprint_r>
   1a84c:	00050463          	beqz	a0,1a854 <_svfprintf_r+0x1f0c>
   1a850:	82cff06f          	j	1987c <_svfprintf_r+0xf34>
   1a854:	0e812603          	lw	a2,232(sp)
   1a858:	02013703          	ld	a4,32(sp)
   1a85c:	12013783          	ld	a5,288(sp)
   1a860:	000b0313          	mv	t1,s6
   1a864:	40c7063b          	subw	a2,a4,a2
   1a868:	ae8ff06f          	j	19b50 <_svfprintf_r+0x1208>
   1a86c:	00021837          	lui	a6,0x21
   1a870:	2b880d13          	addi	s10,a6,696 # 212b8 <__clzdi2+0x54>
   1a874:	acdff06f          	j	1a340 <_svfprintf_r+0x19f8>
   1a878:	0b813783          	ld	a5,184(sp)
   1a87c:	05013703          	ld	a4,80(sp)
   1a880:	0017f793          	andi	a5,a5,1
   1a884:	00fc67b3          	or	a5,s8,a5
   1a888:	50e05e63          	blez	a4,1ada4 <_svfprintf_r+0x245c>
   1a88c:	3e079863          	bnez	a5,1ac7c <_svfprintf_r+0x2334>
   1a890:	05013b83          	ld	s7,80(sp)
   1a894:	06600c93          	li	s9,102
   1a898:	f85ff06f          	j	1a81c <_svfprintf_r+0x1ed4>
   1a89c:	03000793          	li	a5,48
   1a8a0:	0ef10023          	sb	a5,224(sp)
   1a8a4:	05800713          	li	a4,88
   1a8a8:	0024e793          	ori	a5,s1,2
   1a8ac:	0007879b          	sext.w	a5,a5
   1a8b0:	0ee100a3          	sb	a4,225(sp)
   1a8b4:	0af13c23          	sd	a5,184(sp)
   1a8b8:	06300713          	li	a4,99
   1a8bc:	00013823          	sd	zero,16(sp)
   1a8c0:	12810d13          	addi	s10,sp,296
   1a8c4:	27874463          	blt	a4,s8,1ab2c <_svfprintf_r+0x21e4>
   1a8c8:	10813b83          	ld	s7,264(sp)
   1a8cc:	fdfcf793          	andi	a5,s9,-33
   1a8d0:	1024e493          	ori	s1,s1,258
   1a8d4:	04f13c23          	sd	a5,88(sp)
   1a8d8:	0c013423          	sd	zero,200(sp)
   1a8dc:	10013d83          	ld	s11,256(sp)
   1a8e0:	0004849b          	sext.w	s1,s1
   1a8e4:	1c0bc863          	bltz	s7,1aab4 <_svfprintf_r+0x216c>
   1a8e8:	06100793          	li	a5,97
   1a8ec:	32fc8663          	beq	s9,a5,1ac18 <_svfprintf_r+0x22d0>
   1a8f0:	04100793          	li	a5,65
   1a8f4:	00fc8463          	beq	s9,a5,1a8fc <_svfprintf_r+0x1fb4>
   1a8f8:	db8fe06f          	j	18eb0 <_svfprintf_r+0x568>
   1a8fc:	000b8593          	mv	a1,s7
   1a900:	000d8513          	mv	a0,s11
   1a904:	02613c23          	sd	t1,56(sp)
   1a908:	660060ef          	jal	ra,20f68 <__trunctfdf2>
   1a90c:	0e810513          	addi	a0,sp,232
   1a910:	ac1fd0ef          	jal	ra,183d0 <frexp>
   1a914:	534060ef          	jal	ra,20e48 <__extenddftf2>
   1a918:	09813683          	ld	a3,152(sp)
   1a91c:	00000613          	li	a2,0
   1a920:	058050ef          	jal	ra,1f978 <__multf3>
   1a924:	00000613          	li	a2,0
   1a928:	00000693          	li	a3,0
   1a92c:	02a13823          	sd	a0,48(sp)
   1a930:	02b13023          	sd	a1,32(sp)
   1a934:	5ad040ef          	jal	ra,1f6e0 <__eqtf2>
   1a938:	02013f83          	ld	t6,32(sp)
   1a93c:	03013f03          	ld	t5,48(sp)
   1a940:	03813303          	ld	t1,56(sp)
   1a944:	00051663          	bnez	a0,1a950 <_svfprintf_r+0x2008>
   1a948:	00100793          	li	a5,1
   1a94c:	0ef12423          	sw	a5,232(sp)
   1a950:	00021bb7          	lui	s7,0x21
   1a954:	2c8b8793          	addi	a5,s7,712 # 212c8 <__clzdi2+0x64>
   1a958:	04f13423          	sd	a5,72(sp)
   1a95c:	020c1793          	slli	a5,s8,0x20
   1a960:	0207d793          	srli	a5,a5,0x20
   1a964:	00178793          	addi	a5,a5,1
   1a968:	00fd07b3          	add	a5,s10,a5
   1a96c:	0af13423          	sd	a5,168(sp)
   1a970:	018d07bb          	addw	a5,s10,s8
   1a974:	000d0d93          	mv	s11,s10
   1a978:	0cf12223          	sw	a5,196(sp)
   1a97c:	0280006f          	j	1a9a4 <_svfprintf_r+0x205c>
   1a980:	00000613          	li	a2,0
   1a984:	00000693          	li	a3,0
   1a988:	04a13023          	sd	a0,64(sp)
   1a98c:	555040ef          	jal	ra,1f6e0 <__eqtf2>
   1a990:	04013883          	ld	a7,64(sp)
   1a994:	03013303          	ld	t1,48(sp)
   1a998:	000b8f93          	mv	t6,s7
   1a99c:	00088f13          	mv	t5,a7
   1a9a0:	08050a63          	beqz	a0,1aa34 <_svfprintf_r+0x20ec>
   1a9a4:	09013683          	ld	a3,144(sp)
   1a9a8:	00000613          	li	a2,0
   1a9ac:	000f0513          	mv	a0,t5
   1a9b0:	000f8593          	mv	a1,t6
   1a9b4:	02613823          	sd	t1,48(sp)
   1a9b8:	7c1040ef          	jal	ra,1f978 <__multf3>
   1a9bc:	00058b93          	mv	s7,a1
   1a9c0:	02a13023          	sd	a0,32(sp)
   1a9c4:	328060ef          	jal	ra,20cec <__fixtfsi>
   1a9c8:	0005091b          	sext.w	s2,a0
   1a9cc:	00090513          	mv	a0,s2
   1a9d0:	3f0060ef          	jal	ra,20dc0 <__floatsitf>
   1a9d4:	02013783          	ld	a5,32(sp)
   1a9d8:	00058693          	mv	a3,a1
   1a9dc:	00050613          	mv	a2,a0
   1a9e0:	000b8593          	mv	a1,s7
   1a9e4:	00078513          	mv	a0,a5
   1a9e8:	005050ef          	jal	ra,201ec <__subtf3>
   1a9ec:	04813783          	ld	a5,72(sp)
   1a9f0:	0bb13823          	sd	s11,176(sp)
   1a9f4:	001d8d93          	addi	s11,s11,1
   1a9f8:	012787b3          	add	a5,a5,s2
   1a9fc:	0007c683          	lbu	a3,0(a5)
   1aa00:	0c412783          	lw	a5,196(sp)
   1aa04:	02a13c23          	sd	a0,56(sp)
   1aa08:	fedd8fa3          	sb	a3,-1(s11)
   1aa0c:	41b787bb          	subw	a5,a5,s11
   1aa10:	04f13823          	sd	a5,80(sp)
   1aa14:	0a813783          	ld	a5,168(sp)
   1aa18:	02b13023          	sd	a1,32(sp)
   1aa1c:	03013303          	ld	t1,48(sp)
   1aa20:	00050893          	mv	a7,a0
   1aa24:	00058b93          	mv	s7,a1
   1aa28:	f5b79ce3          	bne	a5,s11,1a980 <_svfprintf_r+0x2038>
   1aa2c:	fff00793          	li	a5,-1
   1aa30:	04f13823          	sd	a5,80(sp)
   1aa34:	0a013683          	ld	a3,160(sp)
   1aa38:	00000613          	li	a2,0
   1aa3c:	00088513          	mv	a0,a7
   1aa40:	000b8593          	mv	a1,s7
   1aa44:	02613023          	sd	t1,32(sp)
   1aa48:	03113823          	sd	a7,48(sp)
   1aa4c:	565040ef          	jal	ra,1f7b0 <__getf2>
   1aa50:	02013303          	ld	t1,32(sp)
   1aa54:	06a04c63          	bgtz	a0,1aacc <_svfprintf_r+0x2184>
   1aa58:	03013883          	ld	a7,48(sp)
   1aa5c:	0a013683          	ld	a3,160(sp)
   1aa60:	00000613          	li	a2,0
   1aa64:	00088513          	mv	a0,a7
   1aa68:	000b8593          	mv	a1,s7
   1aa6c:	475040ef          	jal	ra,1f6e0 <__eqtf2>
   1aa70:	02013303          	ld	t1,32(sp)
   1aa74:	00051663          	bnez	a0,1aa80 <_svfprintf_r+0x2138>
   1aa78:	00197913          	andi	s2,s2,1
   1aa7c:	04091863          	bnez	s2,1aacc <_svfprintf_r+0x2184>
   1aa80:	05013703          	ld	a4,80(sp)
   1aa84:	03000693          	li	a3,48
   1aa88:	0017079b          	addiw	a5,a4,1
   1aa8c:	00fd87b3          	add	a5,s11,a5
   1aa90:	00074863          	bltz	a4,1aaa0 <_svfprintf_r+0x2158>
   1aa94:	001d8d93          	addi	s11,s11,1
   1aa98:	fedd8fa3          	sb	a3,-1(s11)
   1aa9c:	ffb79ce3          	bne	a5,s11,1aa94 <_svfprintf_r+0x214c>
   1aaa0:	41ad87bb          	subw	a5,s11,s10
   1aaa4:	02f13023          	sd	a5,32(sp)
   1aaa8:	c80fe06f          	j	18f28 <_svfprintf_r+0x5e0>
   1aaac:	00013823          	sd	zero,16(sp)
   1aab0:	00078493          	mv	s1,a5
   1aab4:	fff00793          	li	a5,-1
   1aab8:	03f79793          	slli	a5,a5,0x3f
   1aabc:	00fbcbb3          	xor	s7,s7,a5
   1aac0:	02d00793          	li	a5,45
   1aac4:	0cf13423          	sd	a5,200(sp)
   1aac8:	e21ff06f          	j	1a8e8 <_svfprintf_r+0x1fa0>
   1aacc:	0b013783          	ld	a5,176(sp)
   1aad0:	0ef13c23          	sd	a5,248(sp)
   1aad4:	04813783          	ld	a5,72(sp)
   1aad8:	fffdc683          	lbu	a3,-1(s11)
   1aadc:	00f7c603          	lbu	a2,15(a5)
   1aae0:	000d8793          	mv	a5,s11
   1aae4:	02d61063          	bne	a2,a3,1ab04 <_svfprintf_r+0x21bc>
   1aae8:	03000593          	li	a1,48
   1aaec:	feb78fa3          	sb	a1,-1(a5)
   1aaf0:	0f813783          	ld	a5,248(sp)
   1aaf4:	fff78693          	addi	a3,a5,-1
   1aaf8:	0ed13c23          	sd	a3,248(sp)
   1aafc:	fff7c683          	lbu	a3,-1(a5)
   1ab00:	fed606e3          	beq	a2,a3,1aaec <_svfprintf_r+0x21a4>
   1ab04:	0016861b          	addiw	a2,a3,1
   1ab08:	03900593          	li	a1,57
   1ab0c:	0ff67613          	zext.b	a2,a2
   1ab10:	00b68663          	beq	a3,a1,1ab1c <_svfprintf_r+0x21d4>
   1ab14:	fec78fa3          	sb	a2,-1(a5)
   1ab18:	f89ff06f          	j	1aaa0 <_svfprintf_r+0x2158>
   1ab1c:	04813703          	ld	a4,72(sp)
   1ab20:	00a74603          	lbu	a2,10(a4)
   1ab24:	fec78fa3          	sb	a2,-1(a5)
   1ab28:	f79ff06f          	j	1aaa0 <_svfprintf_r+0x2158>
   1ab2c:	001c059b          	addiw	a1,s8,1
   1ab30:	00098513          	mv	a0,s3
   1ab34:	00613823          	sd	t1,16(sp)
   1ab38:	d51fb0ef          	jal	ra,16888 <_malloc_r>
   1ab3c:	01013303          	ld	t1,16(sp)
   1ab40:	00050d13          	mv	s10,a0
   1ab44:	2e050a63          	beqz	a0,1ae38 <_svfprintf_r+0x24f0>
   1ab48:	00a13823          	sd	a0,16(sp)
   1ab4c:	d7dff06f          	j	1a8c8 <_svfprintf_r+0x1f80>
   1ab50:	00048d93          	mv	s11,s1
   1ab54:	9d0fe06f          	j	18d24 <_svfprintf_r+0x3dc>
   1ab58:	018d0933          	add	s2,s10,s8
   1ab5c:	bd9ff06f          	j	1a734 <_svfprintf_r+0x1dec>
   1ab60:	0016869b          	addiw	a3,a3,1
   1ab64:	018787b3          	add	a5,a5,s8
   1ab68:	01b33023          	sd	s11,0(t1)
   1ab6c:	01833423          	sd	s8,8(t1)
   1ab70:	12f13023          	sd	a5,288(sp)
   1ab74:	10d12c23          	sw	a3,280(sp)
   1ab78:	00700713          	li	a4,7
   1ab7c:	ead75863          	bge	a4,a3,1a22c <_svfprintf_r+0x18e4>
   1ab80:	11010613          	addi	a2,sp,272
   1ab84:	000a0593          	mv	a1,s4
   1ab88:	00098513          	mv	a0,s3
   1ab8c:	6c9020ef          	jal	ra,1da54 <__ssprint_r>
   1ab90:	00050463          	beqz	a0,1ab98 <_svfprintf_r+0x2250>
   1ab94:	ce9fe06f          	j	1987c <_svfprintf_r+0xf34>
   1ab98:	12013783          	ld	a5,288(sp)
   1ab9c:	11812683          	lw	a3,280(sp)
   1aba0:	000b0313          	mv	t1,s6
   1aba4:	e8cff06f          	j	1a230 <_svfprintf_r+0x18e8>
   1aba8:	001c091b          	addiw	s2,s8,1
   1abac:	00090713          	mv	a4,s2
   1abb0:	0f810893          	addi	a7,sp,248
   1abb4:	0ec10813          	addi	a6,sp,236
   1abb8:	0e810793          	addi	a5,sp,232
   1abbc:	00200693          	li	a3,2
   1abc0:	000d8593          	mv	a1,s11
   1abc4:	000b8613          	mv	a2,s7
   1abc8:	00098513          	mv	a0,s3
   1abcc:	f80fa0ef          	jal	ra,1534c <_ldtoa_r>
   1abd0:	00050d13          	mv	s10,a0
   1abd4:	02013303          	ld	t1,32(sp)
   1abd8:	012d0933          	add	s2,s10,s2
   1abdc:	b59ff06f          	j	1a734 <_svfprintf_r+0x1dec>
   1abe0:	03000793          	li	a5,48
   1abe4:	0ef10023          	sb	a5,224(sp)
   1abe8:	07800713          	li	a4,120
   1abec:	cbdff06f          	j	1a8a8 <_svfprintf_r+0x1f60>
   1abf0:	00f72023          	sw	a5,0(a4)
   1abf4:	00040d13          	mv	s10,s0
   1abf8:	86cfe06f          	j	18c64 <_svfprintf_r+0x31c>
   1abfc:	000c0463          	beqz	s8,1ac04 <_svfprintf_r+0x22bc>
   1ac00:	a88fe06f          	j	18e88 <_svfprintf_r+0x540>
   1ac04:	00100c13          	li	s8,1
   1ac08:	a80fe06f          	j	18e88 <_svfprintf_r+0x540>
   1ac0c:	fff00793          	li	a5,-1
   1ac10:	00f13423          	sd	a5,8(sp)
   1ac14:	874fe06f          	j	18c88 <_svfprintf_r+0x340>
   1ac18:	000b8593          	mv	a1,s7
   1ac1c:	000d8513          	mv	a0,s11
   1ac20:	02613c23          	sd	t1,56(sp)
   1ac24:	344060ef          	jal	ra,20f68 <__trunctfdf2>
   1ac28:	0e810513          	addi	a0,sp,232
   1ac2c:	fa4fd0ef          	jal	ra,183d0 <frexp>
   1ac30:	218060ef          	jal	ra,20e48 <__extenddftf2>
   1ac34:	09813683          	ld	a3,152(sp)
   1ac38:	00000613          	li	a2,0
   1ac3c:	53d040ef          	jal	ra,1f978 <__multf3>
   1ac40:	00000613          	li	a2,0
   1ac44:	00000693          	li	a3,0
   1ac48:	02a13823          	sd	a0,48(sp)
   1ac4c:	02b13023          	sd	a1,32(sp)
   1ac50:	291040ef          	jal	ra,1f6e0 <__eqtf2>
   1ac54:	02013f83          	ld	t6,32(sp)
   1ac58:	03013f03          	ld	t5,48(sp)
   1ac5c:	03813303          	ld	t1,56(sp)
   1ac60:	00051663          	bnez	a0,1ac6c <_svfprintf_r+0x2324>
   1ac64:	00100793          	li	a5,1
   1ac68:	0ef12423          	sw	a5,232(sp)
   1ac6c:	00021bb7          	lui	s7,0x21
   1ac70:	2e0b8793          	addi	a5,s7,736 # 212e0 <__clzdi2+0x7c>
   1ac74:	04f13423          	sd	a5,72(sp)
   1ac78:	ce5ff06f          	j	1a95c <_svfprintf_r+0x2014>
   1ac7c:	06813783          	ld	a5,104(sp)
   1ac80:	06600c93          	li	s9,102
   1ac84:	00e78bbb          	addw	s7,a5,a4
   1ac88:	018b8bbb          	addw	s7,s7,s8
   1ac8c:	b91ff06f          	j	1a81c <_svfprintf_r+0x1ed4>
   1ac90:	06700c93          	li	s9,103
   1ac94:	06013783          	ld	a5,96(sp)
   1ac98:	0ff00713          	li	a4,255
   1ac9c:	04013423          	sd	zero,72(sp)
   1aca0:	0007c783          	lbu	a5,0(a5)
   1aca4:	04013c23          	sd	zero,88(sp)
   1aca8:	04e78063          	beq	a5,a4,1ace8 <_svfprintf_r+0x23a0>
   1acac:	0ff00693          	li	a3,255
   1acb0:	05013603          	ld	a2,80(sp)
   1acb4:	0007871b          	sext.w	a4,a5
   1acb8:	02c7d863          	bge	a5,a2,1ace8 <_svfprintf_r+0x23a0>
   1acbc:	06013583          	ld	a1,96(sp)
   1acc0:	40e6073b          	subw	a4,a2,a4
   1acc4:	04e13823          	sd	a4,80(sp)
   1acc8:	0015c783          	lbu	a5,1(a1)
   1accc:	04078663          	beqz	a5,1ad18 <_svfprintf_r+0x23d0>
   1acd0:	05813703          	ld	a4,88(sp)
   1acd4:	0017071b          	addiw	a4,a4,1
   1acd8:	04e13c23          	sd	a4,88(sp)
   1acdc:	00158713          	addi	a4,a1,1
   1ace0:	06e13023          	sd	a4,96(sp)
   1ace4:	fcd796e3          	bne	a5,a3,1acb0 <_svfprintf_r+0x2368>
   1ace8:	04813703          	ld	a4,72(sp)
   1acec:	05813783          	ld	a5,88(sp)
   1acf0:	00e787bb          	addw	a5,a5,a4
   1acf4:	08013703          	ld	a4,128(sp)
   1acf8:	02e787bb          	mulw	a5,a5,a4
   1acfc:	017787bb          	addw	a5,a5,s7
   1ad00:	00078b9b          	sext.w	s7,a5
   1ad04:	fffbc913          	not	s2,s7
   1ad08:	43f95913          	srai	s2,s2,0x3f
   1ad0c:	0127f7b3          	and	a5,a5,s2
   1ad10:	0007891b          	sext.w	s2,a5
   1ad14:	b64fe06f          	j	19078 <_svfprintf_r+0x730>
   1ad18:	04813703          	ld	a4,72(sp)
   1ad1c:	06013783          	ld	a5,96(sp)
   1ad20:	0017071b          	addiw	a4,a4,1
   1ad24:	0007c783          	lbu	a5,0(a5)
   1ad28:	04e13423          	sd	a4,72(sp)
   1ad2c:	fb9ff06f          	j	1ace4 <_svfprintf_r+0x239c>
   1ad30:	0f210713          	addi	a4,sp,242
   1ad34:	00069863          	bnez	a3,1ad44 <_svfprintf_r+0x23fc>
   1ad38:	03000713          	li	a4,48
   1ad3c:	0ee10923          	sb	a4,242(sp)
   1ad40:	0f310713          	addi	a4,sp,243
   1ad44:	21010693          	addi	a3,sp,528
   1ad48:	0307879b          	addiw	a5,a5,48
   1ad4c:	40d706b3          	sub	a3,a4,a3
   1ad50:	00f70023          	sb	a5,0(a4)
   1ad54:	1216879b          	addiw	a5,a3,289
   1ad58:	06f13c23          	sd	a5,120(sp)
   1ad5c:	accfe06f          	j	19028 <_svfprintf_r+0x6e0>
   1ad60:	0b813703          	ld	a4,184(sp)
   1ad64:	00177713          	andi	a4,a4,1
   1ad68:	00071463          	bnez	a4,1ad70 <_svfprintf_r+0x2428>
   1ad6c:	ae0fe06f          	j	1904c <_svfprintf_r+0x704>
   1ad70:	ad4fe06f          	j	19044 <_svfprintf_r+0x6fc>
   1ad74:	40eb87bb          	subw	a5,s7,a4
   1ad78:	0017879b          	addiw	a5,a5,1
   1ad7c:	00078b9b          	sext.w	s7,a5
   1ad80:	fffbc913          	not	s2,s7
   1ad84:	43f95913          	srai	s2,s2,0x3f
   1ad88:	0127f7b3          	and	a5,a5,s2
   1ad8c:	0007891b          	sext.w	s2,a5
   1ad90:	905ff06f          	j	1a694 <_svfprintf_r+0x1d4c>
   1ad94:	000228b7          	lui	a7,0x22
   1ad98:	00030713          	mv	a4,t1
   1ad9c:	ad088d93          	addi	s11,a7,-1328 # 21ad0 <zeroes.0>
   1ada0:	e9cff06f          	j	1a43c <_svfprintf_r+0x1af4>
   1ada4:	00079a63          	bnez	a5,1adb8 <_svfprintf_r+0x2470>
   1ada8:	00100913          	li	s2,1
   1adac:	06600c93          	li	s9,102
   1adb0:	00100b93          	li	s7,1
   1adb4:	8e1ff06f          	j	1a694 <_svfprintf_r+0x1d4c>
   1adb8:	06813783          	ld	a5,104(sp)
   1adbc:	06600c93          	li	s9,102
   1adc0:	0017869b          	addiw	a3,a5,1
   1adc4:	018686bb          	addw	a3,a3,s8
   1adc8:	00068b9b          	sext.w	s7,a3
   1adcc:	fffbc913          	not	s2,s7
   1add0:	43f95913          	srai	s2,s2,0x3f
   1add4:	0126f6b3          	and	a3,a3,s2
   1add8:	0006891b          	sext.w	s2,a3
   1addc:	8b9ff06f          	j	1a694 <_svfprintf_r+0x1d4c>
   1ade0:	01813683          	ld	a3,24(sp)
   1ade4:	0006a783          	lw	a5,0(a3)
   1ade8:	00868613          	addi	a2,a3,8
   1adec:	00078693          	mv	a3,a5
   1adf0:	0007d463          	bgez	a5,1adf8 <_svfprintf_r+0x24b0>
   1adf4:	fff00693          	li	a3,-1
   1adf8:	00144e03          	lbu	t3,1(s0)
   1adfc:	00068c1b          	sext.w	s8,a3
   1ae00:	00c13c23          	sd	a2,24(sp)
   1ae04:	00070413          	mv	s0,a4
   1ae08:	ca9fd06f          	j	18ab0 <_svfprintf_r+0x168>
   1ae0c:	00c00793          	li	a5,12
   1ae10:	00f9a023          	sw	a5,0(s3)
   1ae14:	fff00793          	li	a5,-1
   1ae18:	00f13423          	sd	a5,8(sp)
   1ae1c:	e6dfd06f          	j	18c88 <_svfprintf_r+0x340>
   1ae20:	000c0913          	mv	s2,s8
   1ae24:	012d0933          	add	s2,s10,s2
   1ae28:	90dff06f          	j	1a734 <_svfprintf_r+0x1dec>
   1ae2c:	00200793          	li	a5,2
   1ae30:	06f13c23          	sd	a5,120(sp)
   1ae34:	9f4fe06f          	j	19028 <_svfprintf_r+0x6e0>
   1ae38:	010a5783          	lhu	a5,16(s4)
   1ae3c:	0407e713          	ori	a4,a5,64
   1ae40:	00070793          	mv	a5,a4
   1ae44:	00ea1823          	sh	a4,16(s4)
   1ae48:	e35fd06f          	j	18c7c <_svfprintf_r+0x334>

000000000001ae4c <__sprint_r.part.0>:
   1ae4c:	0ac5a783          	lw	a5,172(a1)
   1ae50:	fb010113          	addi	sp,sp,-80
   1ae54:	00002737          	lui	a4,0x2
   1ae58:	01513c23          	sd	s5,24(sp)
   1ae5c:	04113423          	sd	ra,72(sp)
   1ae60:	04813023          	sd	s0,64(sp)
   1ae64:	02913c23          	sd	s1,56(sp)
   1ae68:	03213823          	sd	s2,48(sp)
   1ae6c:	03313423          	sd	s3,40(sp)
   1ae70:	03413023          	sd	s4,32(sp)
   1ae74:	01613823          	sd	s6,16(sp)
   1ae78:	01713423          	sd	s7,8(sp)
   1ae7c:	00e7f7b3          	and	a5,a5,a4
   1ae80:	00060a93          	mv	s5,a2
   1ae84:	0c078063          	beqz	a5,1af44 <__sprint_r.part.0+0xf8>
   1ae88:	01063783          	ld	a5,16(a2)
   1ae8c:	00063b03          	ld	s6,0(a2)
   1ae90:	00058913          	mv	s2,a1
   1ae94:	00050993          	mv	s3,a0
   1ae98:	fff00a13          	li	s4,-1
   1ae9c:	0a078063          	beqz	a5,1af3c <__sprint_r.part.0+0xf0>
   1aea0:	008b3483          	ld	s1,8(s6)
   1aea4:	000b3403          	ld	s0,0(s6)
   1aea8:	0024d493          	srli	s1,s1,0x2
   1aeac:	00048b9b          	sext.w	s7,s1
   1aeb0:	07705c63          	blez	s7,1af28 <__sprint_r.part.0+0xdc>
   1aeb4:	fff4849b          	addiw	s1,s1,-1
   1aeb8:	02049793          	slli	a5,s1,0x20
   1aebc:	01e7d493          	srli	s1,a5,0x1e
   1aec0:	00440793          	addi	a5,s0,4
   1aec4:	00f484b3          	add	s1,s1,a5
   1aec8:	0080006f          	j	1aed0 <__sprint_r.part.0+0x84>
   1aecc:	04848c63          	beq	s1,s0,1af24 <__sprint_r.part.0+0xd8>
   1aed0:	00042583          	lw	a1,0(s0)
   1aed4:	00090613          	mv	a2,s2
   1aed8:	00098513          	mv	a0,s3
   1aedc:	089010ef          	jal	ra,1c764 <_fputwc_r>
   1aee0:	0005051b          	sext.w	a0,a0
   1aee4:	00440413          	addi	s0,s0,4
   1aee8:	ff4512e3          	bne	a0,s4,1aecc <__sprint_r.part.0+0x80>
   1aeec:	fff00513          	li	a0,-1
   1aef0:	04813083          	ld	ra,72(sp)
   1aef4:	04013403          	ld	s0,64(sp)
   1aef8:	000ab823          	sd	zero,16(s5)
   1aefc:	000aa423          	sw	zero,8(s5)
   1af00:	03813483          	ld	s1,56(sp)
   1af04:	03013903          	ld	s2,48(sp)
   1af08:	02813983          	ld	s3,40(sp)
   1af0c:	02013a03          	ld	s4,32(sp)
   1af10:	01813a83          	ld	s5,24(sp)
   1af14:	01013b03          	ld	s6,16(sp)
   1af18:	00813b83          	ld	s7,8(sp)
   1af1c:	05010113          	addi	sp,sp,80
   1af20:	00008067          	ret
   1af24:	010ab783          	ld	a5,16(s5)
   1af28:	002b9b93          	slli	s7,s7,0x2
   1af2c:	417787b3          	sub	a5,a5,s7
   1af30:	00fab823          	sd	a5,16(s5)
   1af34:	010b0b13          	addi	s6,s6,16
   1af38:	f60794e3          	bnez	a5,1aea0 <__sprint_r.part.0+0x54>
   1af3c:	00000513          	li	a0,0
   1af40:	fb1ff06f          	j	1aef0 <__sprint_r.part.0+0xa4>
   1af44:	12d010ef          	jal	ra,1c870 <__sfvwrite_r>
   1af48:	fa9ff06f          	j	1aef0 <__sprint_r.part.0+0xa4>

000000000001af4c <__sprint_r>:
   1af4c:	01063703          	ld	a4,16(a2)
   1af50:	00070463          	beqz	a4,1af58 <__sprint_r+0xc>
   1af54:	ef9ff06f          	j	1ae4c <__sprint_r.part.0>
   1af58:	00062423          	sw	zero,8(a2)
   1af5c:	00000513          	li	a0,0
   1af60:	00008067          	ret

000000000001af64 <_vfiprintf_r>:
   1af64:	e3010113          	addi	sp,sp,-464
   1af68:	1b313423          	sd	s3,424(sp)
   1af6c:	19513c23          	sd	s5,408(sp)
   1af70:	19813023          	sd	s8,384(sp)
   1af74:	17b13423          	sd	s11,360(sp)
   1af78:	1c113423          	sd	ra,456(sp)
   1af7c:	1c813023          	sd	s0,448(sp)
   1af80:	1a913c23          	sd	s1,440(sp)
   1af84:	1b213823          	sd	s2,432(sp)
   1af88:	1b413023          	sd	s4,416(sp)
   1af8c:	19613823          	sd	s6,400(sp)
   1af90:	19713423          	sd	s7,392(sp)
   1af94:	17913c23          	sd	s9,376(sp)
   1af98:	17a13823          	sd	s10,368(sp)
   1af9c:	00050a93          	mv	s5,a0
   1afa0:	00058993          	mv	s3,a1
   1afa4:	00060d93          	mv	s11,a2
   1afa8:	00068c13          	mv	s8,a3
   1afac:	00050663          	beqz	a0,1afb8 <_vfiprintf_r+0x54>
   1afb0:	05052783          	lw	a5,80(a0)
   1afb4:	58078e63          	beqz	a5,1b550 <_vfiprintf_r+0x5ec>
   1afb8:	01099703          	lh	a4,16(s3)
   1afbc:	000026b7          	lui	a3,0x2
   1afc0:	03071793          	slli	a5,a4,0x30
   1afc4:	0307d793          	srli	a5,a5,0x30
   1afc8:	00d7f633          	and	a2,a5,a3
   1afcc:	02061863          	bnez	a2,1affc <_vfiprintf_r+0x98>
   1afd0:	0ac9a603          	lw	a2,172(s3)
   1afd4:	00d767b3          	or	a5,a4,a3
   1afd8:	0107979b          	slliw	a5,a5,0x10
   1afdc:	ffffe737          	lui	a4,0xffffe
   1afe0:	4107d79b          	sraiw	a5,a5,0x10
   1afe4:	fff70713          	addi	a4,a4,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd9d5f>
   1afe8:	00e67733          	and	a4,a2,a4
   1afec:	00f99823          	sh	a5,16(s3)
   1aff0:	03079793          	slli	a5,a5,0x30
   1aff4:	0ae9a623          	sw	a4,172(s3)
   1aff8:	0307d793          	srli	a5,a5,0x30
   1affc:	0087f713          	andi	a4,a5,8
   1b000:	3a070863          	beqz	a4,1b3b0 <_vfiprintf_r+0x44c>
   1b004:	0189b703          	ld	a4,24(s3)
   1b008:	3a070463          	beqz	a4,1b3b0 <_vfiprintf_r+0x44c>
   1b00c:	01a7f793          	andi	a5,a5,26
   1b010:	00a00713          	li	a4,10
   1b014:	3ae78e63          	beq	a5,a4,1b3d0 <_vfiprintf_r+0x46c>
   1b018:	000227b7          	lui	a5,0x22
   1b01c:	0e010413          	addi	s0,sp,224
   1b020:	ae078793          	addi	a5,a5,-1312 # 21ae0 <zeroes.0+0x10>
   1b024:	00022b37          	lui	s6,0x22
   1b028:	00022937          	lui	s2,0x22
   1b02c:	06813023          	sd	s0,96(sp)
   1b030:	06013823          	sd	zero,112(sp)
   1b034:	06012423          	sw	zero,104(sp)
   1b038:	00040713          	mv	a4,s0
   1b03c:	00013823          	sd	zero,16(sp)
   1b040:	02013c23          	sd	zero,56(sp)
   1b044:	04013423          	sd	zero,72(sp)
   1b048:	04013023          	sd	zero,64(sp)
   1b04c:	00013023          	sd	zero,0(sp)
   1b050:	00f13c23          	sd	a5,24(sp)
   1b054:	c50b0b13          	addi	s6,s6,-944 # 21c50 <blanks.1>
   1b058:	c6090913          	addi	s2,s2,-928 # 21c60 <zeroes.0>
   1b05c:	000dc783          	lbu	a5,0(s11)
   1b060:	26078e63          	beqz	a5,1b2dc <_vfiprintf_r+0x378>
   1b064:	000d8493          	mv	s1,s11
   1b068:	02500693          	li	a3,37
   1b06c:	40d78e63          	beq	a5,a3,1b488 <_vfiprintf_r+0x524>
   1b070:	0014c783          	lbu	a5,1(s1)
   1b074:	00148493          	addi	s1,s1,1
   1b078:	fe079ae3          	bnez	a5,1b06c <_vfiprintf_r+0x108>
   1b07c:	41b48a3b          	subw	s4,s1,s11
   1b080:	240a0e63          	beqz	s4,1b2dc <_vfiprintf_r+0x378>
   1b084:	06812783          	lw	a5,104(sp)
   1b088:	07013683          	ld	a3,112(sp)
   1b08c:	01b73023          	sd	s11,0(a4)
   1b090:	0017861b          	addiw	a2,a5,1
   1b094:	00da06b3          	add	a3,s4,a3
   1b098:	01473423          	sd	s4,8(a4)
   1b09c:	06d13823          	sd	a3,112(sp)
   1b0a0:	06c12423          	sw	a2,104(sp)
   1b0a4:	00700793          	li	a5,7
   1b0a8:	01070713          	addi	a4,a4,16
   1b0ac:	02c7d063          	bge	a5,a2,1b0cc <_vfiprintf_r+0x168>
   1b0b0:	3e0684e3          	beqz	a3,1bc98 <_vfiprintf_r+0xd34>
   1b0b4:	06010613          	addi	a2,sp,96
   1b0b8:	00098593          	mv	a1,s3
   1b0bc:	000a8513          	mv	a0,s5
   1b0c0:	d8dff0ef          	jal	ra,1ae4c <__sprint_r.part.0>
   1b0c4:	22051063          	bnez	a0,1b2e4 <_vfiprintf_r+0x380>
   1b0c8:	00040713          	mv	a4,s0
   1b0cc:	00013683          	ld	a3,0(sp)
   1b0d0:	0004c783          	lbu	a5,0(s1)
   1b0d4:	014686bb          	addw	a3,a3,s4
   1b0d8:	00d13023          	sd	a3,0(sp)
   1b0dc:	20078063          	beqz	a5,1b2dc <_vfiprintf_r+0x378>
   1b0e0:	0014c783          	lbu	a5,1(s1)
   1b0e4:	00148d93          	addi	s11,s1,1
   1b0e8:	04010ba3          	sb	zero,87(sp)
   1b0ec:	fff00313          	li	t1,-1
   1b0f0:	00000493          	li	s1,0
   1b0f4:	00000d13          	li	s10,0
   1b0f8:	05a00a13          	li	s4,90
   1b0fc:	00900b93          	li	s7,9
   1b100:	001d8d93          	addi	s11,s11,1
   1b104:	0007879b          	sext.w	a5,a5
   1b108:	02a00593          	li	a1,42
   1b10c:	fe07869b          	addiw	a3,a5,-32
   1b110:	0006861b          	sext.w	a2,a3
   1b114:	04ca6a63          	bltu	s4,a2,1b168 <_vfiprintf_r+0x204>
   1b118:	02069613          	slli	a2,a3,0x20
   1b11c:	01e65693          	srli	a3,a2,0x1e
   1b120:	01813603          	ld	a2,24(sp)
   1b124:	00c686b3          	add	a3,a3,a2
   1b128:	0006a683          	lw	a3,0(a3) # 2000 <register_fini-0xe0b0>
   1b12c:	00068067          	jr	a3
   1b130:	00000493          	li	s1,0
   1b134:	000dc603          	lbu	a2,0(s11)
   1b138:	0024969b          	slliw	a3,s1,0x2
   1b13c:	009684bb          	addw	s1,a3,s1
   1b140:	fd07879b          	addiw	a5,a5,-48
   1b144:	0014949b          	slliw	s1,s1,0x1
   1b148:	fd06069b          	addiw	a3,a2,-48
   1b14c:	009784bb          	addw	s1,a5,s1
   1b150:	001d8d93          	addi	s11,s11,1
   1b154:	0006079b          	sext.w	a5,a2
   1b158:	fcdbfee3          	bgeu	s7,a3,1b134 <_vfiprintf_r+0x1d0>
   1b15c:	fe07869b          	addiw	a3,a5,-32
   1b160:	0006861b          	sext.w	a2,a3
   1b164:	faca7ae3          	bgeu	s4,a2,1b118 <_vfiprintf_r+0x1b4>
   1b168:	16078a63          	beqz	a5,1b2dc <_vfiprintf_r+0x378>
   1b16c:	06f10c23          	sb	a5,120(sp)
   1b170:	04010ba3          	sb	zero,87(sp)
   1b174:	00100b93          	li	s7,1
   1b178:	00100a13          	li	s4,1
   1b17c:	07810c93          	addi	s9,sp,120
   1b180:	00000313          	li	t1,0
   1b184:	002d7f93          	andi	t6,s10,2
   1b188:	000f8463          	beqz	t6,1b190 <_vfiprintf_r+0x22c>
   1b18c:	002b8b9b          	addiw	s7,s7,2
   1b190:	06812683          	lw	a3,104(sp)
   1b194:	084d7f13          	andi	t5,s10,132
   1b198:	07013783          	ld	a5,112(sp)
   1b19c:	0016861b          	addiw	a2,a3,1
   1b1a0:	00060593          	mv	a1,a2
   1b1a4:	000f1663          	bnez	t5,1b1b0 <_vfiprintf_r+0x24c>
   1b1a8:	41748ebb          	subw	t4,s1,s7
   1b1ac:	0fd044e3          	bgtz	t4,1ba94 <_vfiprintf_r+0xb30>
   1b1b0:	05714503          	lbu	a0,87(sp)
   1b1b4:	01070593          	addi	a1,a4,16
   1b1b8:	02050c63          	beqz	a0,1b1f0 <_vfiprintf_r+0x28c>
   1b1bc:	05710693          	addi	a3,sp,87
   1b1c0:	00d73023          	sd	a3,0(a4)
   1b1c4:	00178793          	addi	a5,a5,1
   1b1c8:	00100693          	li	a3,1
   1b1cc:	00d73423          	sd	a3,8(a4)
   1b1d0:	06f13823          	sd	a5,112(sp)
   1b1d4:	06c12423          	sw	a2,104(sp)
   1b1d8:	00700713          	li	a4,7
   1b1dc:	00c744e3          	blt	a4,a2,1b9e4 <_vfiprintf_r+0xa80>
   1b1e0:	00060693          	mv	a3,a2
   1b1e4:	00058713          	mv	a4,a1
   1b1e8:	0016061b          	addiw	a2,a2,1
   1b1ec:	01058593          	addi	a1,a1,16
   1b1f0:	060f8263          	beqz	t6,1b254 <_vfiprintf_r+0x2f0>
   1b1f4:	05810693          	addi	a3,sp,88
   1b1f8:	00d73023          	sd	a3,0(a4)
   1b1fc:	00278793          	addi	a5,a5,2
   1b200:	00200693          	li	a3,2
   1b204:	00d73423          	sd	a3,8(a4)
   1b208:	06f13823          	sd	a5,112(sp)
   1b20c:	06c12423          	sw	a2,104(sp)
   1b210:	00700713          	li	a4,7
   1b214:	04c750e3          	bge	a4,a2,1ba54 <_vfiprintf_r+0xaf0>
   1b218:	2a0782e3          	beqz	a5,1bcbc <_vfiprintf_r+0xd58>
   1b21c:	06010613          	addi	a2,sp,96
   1b220:	00098593          	mv	a1,s3
   1b224:	000a8513          	mv	a0,s5
   1b228:	02613023          	sd	t1,32(sp)
   1b22c:	01e13423          	sd	t5,8(sp)
   1b230:	c1dff0ef          	jal	ra,1ae4c <__sprint_r.part.0>
   1b234:	0a051863          	bnez	a0,1b2e4 <_vfiprintf_r+0x380>
   1b238:	06812683          	lw	a3,104(sp)
   1b23c:	07013783          	ld	a5,112(sp)
   1b240:	02013303          	ld	t1,32(sp)
   1b244:	00813f03          	ld	t5,8(sp)
   1b248:	0f010593          	addi	a1,sp,240
   1b24c:	0016861b          	addiw	a2,a3,1
   1b250:	00040713          	mv	a4,s0
   1b254:	08000513          	li	a0,128
   1b258:	5aaf0863          	beq	t5,a0,1b808 <_vfiprintf_r+0x8a4>
   1b25c:	4143033b          	subw	t1,t1,s4
   1b260:	68604c63          	bgtz	t1,1b8f8 <_vfiprintf_r+0x994>
   1b264:	00fa07b3          	add	a5,s4,a5
   1b268:	01973023          	sd	s9,0(a4)
   1b26c:	01473423          	sd	s4,8(a4)
   1b270:	06f13823          	sd	a5,112(sp)
   1b274:	06c12423          	sw	a2,104(sp)
   1b278:	00700713          	li	a4,7
   1b27c:	02c75263          	bge	a4,a2,1b2a0 <_vfiprintf_r+0x33c>
   1b280:	0e0788e3          	beqz	a5,1bb70 <_vfiprintf_r+0xc0c>
   1b284:	06010613          	addi	a2,sp,96
   1b288:	00098593          	mv	a1,s3
   1b28c:	000a8513          	mv	a0,s5
   1b290:	bbdff0ef          	jal	ra,1ae4c <__sprint_r.part.0>
   1b294:	04051863          	bnez	a0,1b2e4 <_vfiprintf_r+0x380>
   1b298:	07013783          	ld	a5,112(sp)
   1b29c:	00040593          	mv	a1,s0
   1b2a0:	004d7893          	andi	a7,s10,4
   1b2a4:	00088663          	beqz	a7,1b2b0 <_vfiprintf_r+0x34c>
   1b2a8:	41748a3b          	subw	s4,s1,s7
   1b2ac:	0d404ee3          	bgtz	s4,1bb88 <_vfiprintf_r+0xc24>
   1b2b0:	00048713          	mv	a4,s1
   1b2b4:	0174d463          	bge	s1,s7,1b2bc <_vfiprintf_r+0x358>
   1b2b8:	000b8713          	mv	a4,s7
   1b2bc:	00013683          	ld	a3,0(sp)
   1b2c0:	00d7073b          	addw	a4,a4,a3
   1b2c4:	00e13023          	sd	a4,0(sp)
   1b2c8:	6e079a63          	bnez	a5,1b9bc <_vfiprintf_r+0xa58>
   1b2cc:	000dc783          	lbu	a5,0(s11)
   1b2d0:	06012423          	sw	zero,104(sp)
   1b2d4:	00040713          	mv	a4,s0
   1b2d8:	d80796e3          	bnez	a5,1b064 <_vfiprintf_r+0x100>
   1b2dc:	07013783          	ld	a5,112(sp)
   1b2e0:	520792e3          	bnez	a5,1c004 <_vfiprintf_r+0x10a0>
   1b2e4:	0109d783          	lhu	a5,16(s3)
   1b2e8:	0407f793          	andi	a5,a5,64
   1b2ec:	540794e3          	bnez	a5,1c034 <_vfiprintf_r+0x10d0>
   1b2f0:	1c813083          	ld	ra,456(sp)
   1b2f4:	1c013403          	ld	s0,448(sp)
   1b2f8:	00013503          	ld	a0,0(sp)
   1b2fc:	1b813483          	ld	s1,440(sp)
   1b300:	1b013903          	ld	s2,432(sp)
   1b304:	1a813983          	ld	s3,424(sp)
   1b308:	1a013a03          	ld	s4,416(sp)
   1b30c:	19813a83          	ld	s5,408(sp)
   1b310:	19013b03          	ld	s6,400(sp)
   1b314:	18813b83          	ld	s7,392(sp)
   1b318:	18013c03          	ld	s8,384(sp)
   1b31c:	17813c83          	ld	s9,376(sp)
   1b320:	17013d03          	ld	s10,368(sp)
   1b324:	16813d83          	ld	s11,360(sp)
   1b328:	1d010113          	addi	sp,sp,464
   1b32c:	00008067          	ret
   1b330:	010d6893          	ori	a7,s10,16
   1b334:	000dc783          	lbu	a5,0(s11)
   1b338:	00088d1b          	sext.w	s10,a7
   1b33c:	dc5ff06f          	j	1b100 <_vfiprintf_r+0x19c>
   1b340:	010d6893          	ori	a7,s10,16
   1b344:	00088d1b          	sext.w	s10,a7
   1b348:	020d7793          	andi	a5,s10,32
   1b34c:	008c0613          	addi	a2,s8,8
   1b350:	16078463          	beqz	a5,1b4b8 <_vfiprintf_r+0x554>
   1b354:	000c3783          	ld	a5,0(s8)
   1b358:	00078b93          	mv	s7,a5
   1b35c:	1607cc63          	bltz	a5,1b4d4 <_vfiprintf_r+0x570>
   1b360:	fff00793          	li	a5,-1
   1b364:	000d0693          	mv	a3,s10
   1b368:	00060c13          	mv	s8,a2
   1b36c:	70f30463          	beq	t1,a5,1ba74 <_vfiprintf_r+0xb10>
   1b370:	f7fd7693          	andi	a3,s10,-129
   1b374:	0006869b          	sext.w	a3,a3
   1b378:	280b96e3          	bnez	s7,1be04 <_vfiprintf_r+0xea0>
   1b37c:	70031063          	bnez	t1,1ba7c <_vfiprintf_r+0xb18>
   1b380:	00068d13          	mv	s10,a3
   1b384:	00000313          	li	t1,0
   1b388:	00000a13          	li	s4,0
   1b38c:	0dc10c93          	addi	s9,sp,220
   1b390:	00030793          	mv	a5,t1
   1b394:	01435463          	bge	t1,s4,1b39c <_vfiprintf_r+0x438>
   1b398:	000a0793          	mv	a5,s4
   1b39c:	05714683          	lbu	a3,87(sp)
   1b3a0:	00078b9b          	sext.w	s7,a5
   1b3a4:	de0680e3          	beqz	a3,1b184 <_vfiprintf_r+0x220>
   1b3a8:	00178b9b          	addiw	s7,a5,1
   1b3ac:	dd9ff06f          	j	1b184 <_vfiprintf_r+0x220>
   1b3b0:	00098593          	mv	a1,s3
   1b3b4:	000a8513          	mv	a0,s5
   1b3b8:	eb8f70ef          	jal	ra,12a70 <__swsetup_r>
   1b3bc:	46051ce3          	bnez	a0,1c034 <_vfiprintf_r+0x10d0>
   1b3c0:	0109d783          	lhu	a5,16(s3)
   1b3c4:	00a00713          	li	a4,10
   1b3c8:	01a7f793          	andi	a5,a5,26
   1b3cc:	c4e796e3          	bne	a5,a4,1b018 <_vfiprintf_r+0xb4>
   1b3d0:	01299783          	lh	a5,18(s3)
   1b3d4:	c407c2e3          	bltz	a5,1b018 <_vfiprintf_r+0xb4>
   1b3d8:	1c013403          	ld	s0,448(sp)
   1b3dc:	1c813083          	ld	ra,456(sp)
   1b3e0:	1b813483          	ld	s1,440(sp)
   1b3e4:	1b013903          	ld	s2,432(sp)
   1b3e8:	1a013a03          	ld	s4,416(sp)
   1b3ec:	19013b03          	ld	s6,400(sp)
   1b3f0:	18813b83          	ld	s7,392(sp)
   1b3f4:	17813c83          	ld	s9,376(sp)
   1b3f8:	17013d03          	ld	s10,368(sp)
   1b3fc:	000c0693          	mv	a3,s8
   1b400:	000d8613          	mv	a2,s11
   1b404:	18013c03          	ld	s8,384(sp)
   1b408:	16813d83          	ld	s11,360(sp)
   1b40c:	00098593          	mv	a1,s3
   1b410:	000a8513          	mv	a0,s5
   1b414:	1a813983          	ld	s3,424(sp)
   1b418:	19813a83          	ld	s5,408(sp)
   1b41c:	1d010113          	addi	sp,sp,464
   1b420:	46d0006f          	j	1c08c <__sbprintf>
   1b424:	010d6893          	ori	a7,s10,16
   1b428:	00088d1b          	sext.w	s10,a7
   1b42c:	020d7793          	andi	a5,s10,32
   1b430:	008c0613          	addi	a2,s8,8
   1b434:	06078263          	beqz	a5,1b498 <_vfiprintf_r+0x534>
   1b438:	000c3b83          	ld	s7,0(s8)
   1b43c:	bffd7693          	andi	a3,s10,-1025
   1b440:	0006869b          	sext.w	a3,a3
   1b444:	00060c13          	mv	s8,a2
   1b448:	00000793          	li	a5,0
   1b44c:	04010ba3          	sb	zero,87(sp)
   1b450:	fff00613          	li	a2,-1
   1b454:	0ac30063          	beq	t1,a2,1b4f4 <_vfiprintf_r+0x590>
   1b458:	f7f6f893          	andi	a7,a3,-129
   1b45c:	00088d1b          	sext.w	s10,a7
   1b460:	600b9463          	bnez	s7,1ba68 <_vfiprintf_r+0xb04>
   1b464:	26031ae3          	bnez	t1,1bed8 <_vfiprintf_r+0xf74>
   1b468:	f0079ee3          	bnez	a5,1b384 <_vfiprintf_r+0x420>
   1b46c:	0016fa13          	andi	s4,a3,1
   1b470:	0dc10c93          	addi	s9,sp,220
   1b474:	f00a0ee3          	beqz	s4,1b390 <_vfiprintf_r+0x42c>
   1b478:	03000793          	li	a5,48
   1b47c:	0cf10da3          	sb	a5,219(sp)
   1b480:	0db10c93          	addi	s9,sp,219
   1b484:	f0dff06f          	j	1b390 <_vfiprintf_r+0x42c>
   1b488:	41b48a3b          	subw	s4,s1,s11
   1b48c:	be0a1ce3          	bnez	s4,1b084 <_vfiprintf_r+0x120>
   1b490:	0004c783          	lbu	a5,0(s1)
   1b494:	c49ff06f          	j	1b0dc <_vfiprintf_r+0x178>
   1b498:	010d7793          	andi	a5,s10,16
   1b49c:	f8079ee3          	bnez	a5,1b438 <_vfiprintf_r+0x4d4>
   1b4a0:	040d7793          	andi	a5,s10,64
   1b4a4:	000c2b83          	lw	s7,0(s8)
   1b4a8:	2a0780e3          	beqz	a5,1bf48 <_vfiprintf_r+0xfe4>
   1b4ac:	030b9b93          	slli	s7,s7,0x30
   1b4b0:	030bdb93          	srli	s7,s7,0x30
   1b4b4:	f89ff06f          	j	1b43c <_vfiprintf_r+0x4d8>
   1b4b8:	010d7793          	andi	a5,s10,16
   1b4bc:	e8079ce3          	bnez	a5,1b354 <_vfiprintf_r+0x3f0>
   1b4c0:	040d7793          	andi	a5,s10,64
   1b4c4:	260788e3          	beqz	a5,1bf34 <_vfiprintf_r+0xfd0>
   1b4c8:	000c1b83          	lh	s7,0(s8)
   1b4cc:	000b8793          	mv	a5,s7
   1b4d0:	e807d8e3          	bgez	a5,1b360 <_vfiprintf_r+0x3fc>
   1b4d4:	02d00793          	li	a5,45
   1b4d8:	04f10ba3          	sb	a5,87(sp)
   1b4dc:	00060c13          	mv	s8,a2
   1b4e0:	fff00613          	li	a2,-1
   1b4e4:	41700bb3          	neg	s7,s7
   1b4e8:	000d0693          	mv	a3,s10
   1b4ec:	00100793          	li	a5,1
   1b4f0:	f6c314e3          	bne	t1,a2,1b458 <_vfiprintf_r+0x4f4>
   1b4f4:	00100613          	li	a2,1
   1b4f8:	56c78e63          	beq	a5,a2,1ba74 <_vfiprintf_r+0xb10>
   1b4fc:	00200613          	li	a2,2
   1b500:	2cc78a63          	beq	a5,a2,1b7d4 <_vfiprintf_r+0x870>
   1b504:	0dc10a13          	addi	s4,sp,220
   1b508:	000a0c93          	mv	s9,s4
   1b50c:	007bf793          	andi	a5,s7,7
   1b510:	03078793          	addi	a5,a5,48
   1b514:	fefc8fa3          	sb	a5,-1(s9)
   1b518:	003bdb93          	srli	s7,s7,0x3
   1b51c:	000c8613          	mv	a2,s9
   1b520:	fffc8c93          	addi	s9,s9,-1
   1b524:	fe0b94e3          	bnez	s7,1b50c <_vfiprintf_r+0x5a8>
   1b528:	0016f593          	andi	a1,a3,1
   1b52c:	2c058863          	beqz	a1,1b7fc <_vfiprintf_r+0x898>
   1b530:	03000593          	li	a1,48
   1b534:	2cb78463          	beq	a5,a1,1b7fc <_vfiprintf_r+0x898>
   1b538:	ffe60613          	addi	a2,a2,-2
   1b53c:	febc8fa3          	sb	a1,-1(s9)
   1b540:	40ca0a3b          	subw	s4,s4,a2
   1b544:	00068d13          	mv	s10,a3
   1b548:	00060c93          	mv	s9,a2
   1b54c:	e45ff06f          	j	1b390 <_vfiprintf_r+0x42c>
   1b550:	e55f70ef          	jal	ra,133a4 <__sinit>
   1b554:	a65ff06f          	j	1afb8 <_vfiprintf_r+0x54>
   1b558:	000c3c83          	ld	s9,0(s8)
   1b55c:	04010ba3          	sb	zero,87(sp)
   1b560:	008c0c13          	addi	s8,s8,8
   1b564:	1a0c8ae3          	beqz	s9,1bf18 <_vfiprintf_r+0xfb4>
   1b568:	fff00793          	li	a5,-1
   1b56c:	12f308e3          	beq	t1,a5,1be9c <_vfiprintf_r+0xf38>
   1b570:	00030613          	mv	a2,t1
   1b574:	00000593          	li	a1,0
   1b578:	000c8513          	mv	a0,s9
   1b57c:	02e13023          	sd	a4,32(sp)
   1b580:	00613423          	sd	t1,8(sp)
   1b584:	b0dfb0ef          	jal	ra,17090 <memchr>
   1b588:	00813303          	ld	t1,8(sp)
   1b58c:	02013703          	ld	a4,32(sp)
   1b590:	280504e3          	beqz	a0,1c018 <_vfiprintf_r+0x10b4>
   1b594:	41950a3b          	subw	s4,a0,s9
   1b598:	00000313          	li	t1,0
   1b59c:	df5ff06f          	j	1b390 <_vfiprintf_r+0x42c>
   1b5a0:	000c2783          	lw	a5,0(s8)
   1b5a4:	04010ba3          	sb	zero,87(sp)
   1b5a8:	008c0c13          	addi	s8,s8,8
   1b5ac:	06f10c23          	sb	a5,120(sp)
   1b5b0:	00100b93          	li	s7,1
   1b5b4:	00100a13          	li	s4,1
   1b5b8:	07810c93          	addi	s9,sp,120
   1b5bc:	bc5ff06f          	j	1b180 <_vfiprintf_r+0x21c>
   1b5c0:	020d6893          	ori	a7,s10,32
   1b5c4:	000dc783          	lbu	a5,0(s11)
   1b5c8:	00088d1b          	sext.w	s10,a7
   1b5cc:	b35ff06f          	j	1b100 <_vfiprintf_r+0x19c>
   1b5d0:	ffff87b7          	lui	a5,0xffff8
   1b5d4:	002d6693          	ori	a3,s10,2
   1b5d8:	8307c793          	xori	a5,a5,-2000
   1b5dc:	00021d37          	lui	s10,0x21
   1b5e0:	04f11c23          	sh	a5,88(sp)
   1b5e4:	2e0d0793          	addi	a5,s10,736 # 212e0 <__clzdi2+0x7c>
   1b5e8:	000c3b83          	ld	s7,0(s8)
   1b5ec:	00f13823          	sd	a5,16(sp)
   1b5f0:	0006869b          	sext.w	a3,a3
   1b5f4:	008c0c13          	addi	s8,s8,8
   1b5f8:	00200793          	li	a5,2
   1b5fc:	e51ff06f          	j	1b44c <_vfiprintf_r+0x4e8>
   1b600:	020d7793          	andi	a5,s10,32
   1b604:	000c3683          	ld	a3,0(s8)
   1b608:	008c0c13          	addi	s8,s8,8
   1b60c:	02079463          	bnez	a5,1b634 <_vfiprintf_r+0x6d0>
   1b610:	010d7793          	andi	a5,s10,16
   1b614:	02079063          	bnez	a5,1b634 <_vfiprintf_r+0x6d0>
   1b618:	040d7793          	andi	a5,s10,64
   1b61c:	1a0792e3          	bnez	a5,1bfc0 <_vfiprintf_r+0x105c>
   1b620:	200d7893          	andi	a7,s10,512
   1b624:	00013783          	ld	a5,0(sp)
   1b628:	220882e3          	beqz	a7,1c04c <_vfiprintf_r+0x10e8>
   1b62c:	00f68023          	sb	a5,0(a3)
   1b630:	a2dff06f          	j	1b05c <_vfiprintf_r+0xf8>
   1b634:	00013783          	ld	a5,0(sp)
   1b638:	00f6b023          	sd	a5,0(a3)
   1b63c:	a21ff06f          	j	1b05c <_vfiprintf_r+0xf8>
   1b640:	000dc783          	lbu	a5,0(s11)
   1b644:	06c00693          	li	a3,108
   1b648:	0ad78ee3          	beq	a5,a3,1bf04 <_vfiprintf_r+0xfa0>
   1b64c:	010d6893          	ori	a7,s10,16
   1b650:	00088d1b          	sext.w	s10,a7
   1b654:	aadff06f          	j	1b100 <_vfiprintf_r+0x19c>
   1b658:	000dc783          	lbu	a5,0(s11)
   1b65c:	06800693          	li	a3,104
   1b660:	08d788e3          	beq	a5,a3,1bef0 <_vfiprintf_r+0xf8c>
   1b664:	040d6893          	ori	a7,s10,64
   1b668:	00088d1b          	sext.w	s10,a7
   1b66c:	a95ff06f          	j	1b100 <_vfiprintf_r+0x19c>
   1b670:	010d6693          	ori	a3,s10,16
   1b674:	0006869b          	sext.w	a3,a3
   1b678:	0206f793          	andi	a5,a3,32
   1b67c:	008c0613          	addi	a2,s8,8
   1b680:	02079663          	bnez	a5,1b6ac <_vfiprintf_r+0x748>
   1b684:	0106f793          	andi	a5,a3,16
   1b688:	02079263          	bnez	a5,1b6ac <_vfiprintf_r+0x748>
   1b68c:	0406f793          	andi	a5,a3,64
   1b690:	000c2b83          	lw	s7,0(s8)
   1b694:	0c0782e3          	beqz	a5,1bf58 <_vfiprintf_r+0xff4>
   1b698:	030b9b93          	slli	s7,s7,0x30
   1b69c:	030bdb93          	srli	s7,s7,0x30
   1b6a0:	00060c13          	mv	s8,a2
   1b6a4:	00100793          	li	a5,1
   1b6a8:	da5ff06f          	j	1b44c <_vfiprintf_r+0x4e8>
   1b6ac:	000c3b83          	ld	s7,0(s8)
   1b6b0:	00100793          	li	a5,1
   1b6b4:	00060c13          	mv	s8,a2
   1b6b8:	d95ff06f          	j	1b44c <_vfiprintf_r+0x4e8>
   1b6bc:	080d6893          	ori	a7,s10,128
   1b6c0:	000dc783          	lbu	a5,0(s11)
   1b6c4:	00088d1b          	sext.w	s10,a7
   1b6c8:	a39ff06f          	j	1b100 <_vfiprintf_r+0x19c>
   1b6cc:	000dc783          	lbu	a5,0(s11)
   1b6d0:	001d8693          	addi	a3,s11,1
   1b6d4:	18b780e3          	beq	a5,a1,1c054 <_vfiprintf_r+0x10f0>
   1b6d8:	fd07861b          	addiw	a2,a5,-48
   1b6dc:	00068d93          	mv	s11,a3
   1b6e0:	00000313          	li	t1,0
   1b6e4:	a2cbe4e3          	bltu	s7,a2,1b10c <_vfiprintf_r+0x1a8>
   1b6e8:	000dc783          	lbu	a5,0(s11)
   1b6ec:	0023169b          	slliw	a3,t1,0x2
   1b6f0:	0066833b          	addw	t1,a3,t1
   1b6f4:	0013131b          	slliw	t1,t1,0x1
   1b6f8:	00c3033b          	addw	t1,t1,a2
   1b6fc:	fd07861b          	addiw	a2,a5,-48
   1b700:	001d8d93          	addi	s11,s11,1
   1b704:	fecbf2e3          	bgeu	s7,a2,1b6e8 <_vfiprintf_r+0x784>
   1b708:	a05ff06f          	j	1b10c <_vfiprintf_r+0x1a8>
   1b70c:	000dc783          	lbu	a5,0(s11)
   1b710:	004d6893          	ori	a7,s10,4
   1b714:	00088d1b          	sext.w	s10,a7
   1b718:	9e9ff06f          	j	1b100 <_vfiprintf_r+0x19c>
   1b71c:	02b00693          	li	a3,43
   1b720:	000dc783          	lbu	a5,0(s11)
   1b724:	04d10ba3          	sb	a3,87(sp)
   1b728:	9d9ff06f          	j	1b100 <_vfiprintf_r+0x19c>
   1b72c:	000c2483          	lw	s1,0(s8)
   1b730:	000dc783          	lbu	a5,0(s11)
   1b734:	008c0c13          	addi	s8,s8,8
   1b738:	9c04d4e3          	bgez	s1,1b100 <_vfiprintf_r+0x19c>
   1b73c:	409004bb          	negw	s1,s1
   1b740:	fd1ff06f          	j	1b710 <_vfiprintf_r+0x7ac>
   1b744:	000a8513          	mv	a0,s5
   1b748:	02e13023          	sd	a4,32(sp)
   1b74c:	00613423          	sd	t1,8(sp)
   1b750:	ec9fa0ef          	jal	ra,16618 <_localeconv_r>
   1b754:	00853783          	ld	a5,8(a0)
   1b758:	00078513          	mv	a0,a5
   1b75c:	04f13023          	sd	a5,64(sp)
   1b760:	880fd0ef          	jal	ra,187e0 <strlen>
   1b764:	00050793          	mv	a5,a0
   1b768:	000a8513          	mv	a0,s5
   1b76c:	00078c93          	mv	s9,a5
   1b770:	04f13423          	sd	a5,72(sp)
   1b774:	ea5fa0ef          	jal	ra,16618 <_localeconv_r>
   1b778:	01053683          	ld	a3,16(a0)
   1b77c:	00813303          	ld	t1,8(sp)
   1b780:	02013703          	ld	a4,32(sp)
   1b784:	02d13c23          	sd	a3,56(sp)
   1b788:	640c8c63          	beqz	s9,1bde0 <_vfiprintf_r+0xe7c>
   1b78c:	000dc783          	lbu	a5,0(s11)
   1b790:	960688e3          	beqz	a3,1b100 <_vfiprintf_r+0x19c>
   1b794:	0006c683          	lbu	a3,0(a3)
   1b798:	960684e3          	beqz	a3,1b100 <_vfiprintf_r+0x19c>
   1b79c:	400d6893          	ori	a7,s10,1024
   1b7a0:	00088d1b          	sext.w	s10,a7
   1b7a4:	95dff06f          	j	1b100 <_vfiprintf_r+0x19c>
   1b7a8:	001d6893          	ori	a7,s10,1
   1b7ac:	000dc783          	lbu	a5,0(s11)
   1b7b0:	00088d1b          	sext.w	s10,a7
   1b7b4:	94dff06f          	j	1b100 <_vfiprintf_r+0x19c>
   1b7b8:	05714683          	lbu	a3,87(sp)
   1b7bc:	000dc783          	lbu	a5,0(s11)
   1b7c0:	940690e3          	bnez	a3,1b100 <_vfiprintf_r+0x19c>
   1b7c4:	02000693          	li	a3,32
   1b7c8:	04d10ba3          	sb	a3,87(sp)
   1b7cc:	935ff06f          	j	1b100 <_vfiprintf_r+0x19c>
   1b7d0:	000d0693          	mv	a3,s10
   1b7d4:	0dc10a13          	addi	s4,sp,220
   1b7d8:	000a0c93          	mv	s9,s4
   1b7dc:	01013603          	ld	a2,16(sp)
   1b7e0:	00fbf793          	andi	a5,s7,15
   1b7e4:	fffc8c93          	addi	s9,s9,-1
   1b7e8:	00f607b3          	add	a5,a2,a5
   1b7ec:	0007c783          	lbu	a5,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd3d60>
   1b7f0:	004bdb93          	srli	s7,s7,0x4
   1b7f4:	00fc8023          	sb	a5,0(s9)
   1b7f8:	fe0b92e3          	bnez	s7,1b7dc <_vfiprintf_r+0x878>
   1b7fc:	419a0a3b          	subw	s4,s4,s9
   1b800:	00068d13          	mv	s10,a3
   1b804:	b8dff06f          	j	1b390 <_vfiprintf_r+0x42c>
   1b808:	41748ebb          	subw	t4,s1,s7
   1b80c:	a5d058e3          	blez	t4,1b25c <_vfiprintf_r+0x2f8>
   1b810:	01000513          	li	a0,16
   1b814:	03d556e3          	bge	a0,t4,1c040 <_vfiprintf_r+0x10dc>
   1b818:	01000f13          	li	t5,16
   1b81c:	00700f93          	li	t6,7
   1b820:	0180006f          	j	1b838 <_vfiprintf_r+0x8d4>
   1b824:	0026851b          	addiw	a0,a3,2
   1b828:	01070713          	addi	a4,a4,16
   1b82c:	00058693          	mv	a3,a1
   1b830:	ff0e8e9b          	addiw	t4,t4,-16
   1b834:	07df5463          	bge	t5,t4,1b89c <_vfiprintf_r+0x938>
   1b838:	0016859b          	addiw	a1,a3,1
   1b83c:	01078793          	addi	a5,a5,16
   1b840:	01273023          	sd	s2,0(a4)
   1b844:	01e73423          	sd	t5,8(a4)
   1b848:	06f13823          	sd	a5,112(sp)
   1b84c:	06b12423          	sw	a1,104(sp)
   1b850:	fcbfdae3          	bge	t6,a1,1b824 <_vfiprintf_r+0x8c0>
   1b854:	18078063          	beqz	a5,1b9d4 <_vfiprintf_r+0xa70>
   1b858:	06010613          	addi	a2,sp,96
   1b85c:	00098593          	mv	a1,s3
   1b860:	000a8513          	mv	a0,s5
   1b864:	03d13023          	sd	t4,32(sp)
   1b868:	00613423          	sd	t1,8(sp)
   1b86c:	de0ff0ef          	jal	ra,1ae4c <__sprint_r.part.0>
   1b870:	a6051ae3          	bnez	a0,1b2e4 <_vfiprintf_r+0x380>
   1b874:	02013e83          	ld	t4,32(sp)
   1b878:	06812683          	lw	a3,104(sp)
   1b87c:	01000f13          	li	t5,16
   1b880:	ff0e8e9b          	addiw	t4,t4,-16
   1b884:	07013783          	ld	a5,112(sp)
   1b888:	00813303          	ld	t1,8(sp)
   1b88c:	00040713          	mv	a4,s0
   1b890:	0016851b          	addiw	a0,a3,1
   1b894:	00700f93          	li	t6,7
   1b898:	fbdf40e3          	blt	t5,t4,1b838 <_vfiprintf_r+0x8d4>
   1b89c:	01070f13          	addi	t5,a4,16
   1b8a0:	01d787b3          	add	a5,a5,t4
   1b8a4:	01273023          	sd	s2,0(a4)
   1b8a8:	01d73423          	sd	t4,8(a4)
   1b8ac:	06f13823          	sd	a5,112(sp)
   1b8b0:	06a12423          	sw	a0,104(sp)
   1b8b4:	00700713          	li	a4,7
   1b8b8:	50a75a63          	bge	a4,a0,1bdcc <_vfiprintf_r+0xe68>
   1b8bc:	6c078663          	beqz	a5,1bf88 <_vfiprintf_r+0x1024>
   1b8c0:	06010613          	addi	a2,sp,96
   1b8c4:	00098593          	mv	a1,s3
   1b8c8:	000a8513          	mv	a0,s5
   1b8cc:	00613423          	sd	t1,8(sp)
   1b8d0:	d7cff0ef          	jal	ra,1ae4c <__sprint_r.part.0>
   1b8d4:	a00518e3          	bnez	a0,1b2e4 <_vfiprintf_r+0x380>
   1b8d8:	00813303          	ld	t1,8(sp)
   1b8dc:	06812683          	lw	a3,104(sp)
   1b8e0:	07013783          	ld	a5,112(sp)
   1b8e4:	4143033b          	subw	t1,t1,s4
   1b8e8:	0f010593          	addi	a1,sp,240
   1b8ec:	0016861b          	addiw	a2,a3,1
   1b8f0:	00040713          	mv	a4,s0
   1b8f4:	966058e3          	blez	t1,1b264 <_vfiprintf_r+0x300>
   1b8f8:	01000513          	li	a0,16
   1b8fc:	68655263          	bge	a0,t1,1bf80 <_vfiprintf_r+0x101c>
   1b900:	01000e93          	li	t4,16
   1b904:	00700f13          	li	t5,7
   1b908:	0180006f          	j	1b920 <_vfiprintf_r+0x9bc>
   1b90c:	0026861b          	addiw	a2,a3,2
   1b910:	01070713          	addi	a4,a4,16
   1b914:	00058693          	mv	a3,a1
   1b918:	ff03031b          	addiw	t1,t1,-16
   1b91c:	066ed063          	bge	t4,t1,1b97c <_vfiprintf_r+0xa18>
   1b920:	0016859b          	addiw	a1,a3,1
   1b924:	01078793          	addi	a5,a5,16
   1b928:	01273023          	sd	s2,0(a4)
   1b92c:	01d73423          	sd	t4,8(a4)
   1b930:	06f13823          	sd	a5,112(sp)
   1b934:	06b12423          	sw	a1,104(sp)
   1b938:	fcbf5ae3          	bge	t5,a1,1b90c <_vfiprintf_r+0x9a8>
   1b93c:	06078863          	beqz	a5,1b9ac <_vfiprintf_r+0xa48>
   1b940:	06010613          	addi	a2,sp,96
   1b944:	00098593          	mv	a1,s3
   1b948:	000a8513          	mv	a0,s5
   1b94c:	00613423          	sd	t1,8(sp)
   1b950:	cfcff0ef          	jal	ra,1ae4c <__sprint_r.part.0>
   1b954:	980518e3          	bnez	a0,1b2e4 <_vfiprintf_r+0x380>
   1b958:	00813303          	ld	t1,8(sp)
   1b95c:	06812683          	lw	a3,104(sp)
   1b960:	01000e93          	li	t4,16
   1b964:	ff03031b          	addiw	t1,t1,-16
   1b968:	07013783          	ld	a5,112(sp)
   1b96c:	00040713          	mv	a4,s0
   1b970:	0016861b          	addiw	a2,a3,1
   1b974:	00700f13          	li	t5,7
   1b978:	fa6ec4e3          	blt	t4,t1,1b920 <_vfiprintf_r+0x9bc>
   1b97c:	01070693          	addi	a3,a4,16
   1b980:	006787b3          	add	a5,a5,t1
   1b984:	01273023          	sd	s2,0(a4)
   1b988:	00673423          	sd	t1,8(a4)
   1b98c:	06f13823          	sd	a5,112(sp)
   1b990:	06c12423          	sw	a2,104(sp)
   1b994:	00700713          	li	a4,7
   1b998:	2cc74863          	blt	a4,a2,1bc68 <_vfiprintf_r+0xd04>
   1b99c:	0016061b          	addiw	a2,a2,1
   1b9a0:	01068593          	addi	a1,a3,16
   1b9a4:	00068713          	mv	a4,a3
   1b9a8:	8bdff06f          	j	1b264 <_vfiprintf_r+0x300>
   1b9ac:	00100613          	li	a2,1
   1b9b0:	00000693          	li	a3,0
   1b9b4:	00040713          	mv	a4,s0
   1b9b8:	f61ff06f          	j	1b918 <_vfiprintf_r+0x9b4>
   1b9bc:	06010613          	addi	a2,sp,96
   1b9c0:	00098593          	mv	a1,s3
   1b9c4:	000a8513          	mv	a0,s5
   1b9c8:	c84ff0ef          	jal	ra,1ae4c <__sprint_r.part.0>
   1b9cc:	900500e3          	beqz	a0,1b2cc <_vfiprintf_r+0x368>
   1b9d0:	915ff06f          	j	1b2e4 <_vfiprintf_r+0x380>
   1b9d4:	00100513          	li	a0,1
   1b9d8:	00000693          	li	a3,0
   1b9dc:	00040713          	mv	a4,s0
   1b9e0:	e51ff06f          	j	1b830 <_vfiprintf_r+0x8cc>
   1b9e4:	2c078063          	beqz	a5,1bca4 <_vfiprintf_r+0xd40>
   1b9e8:	06010613          	addi	a2,sp,96
   1b9ec:	00098593          	mv	a1,s3
   1b9f0:	000a8513          	mv	a0,s5
   1b9f4:	02613423          	sd	t1,40(sp)
   1b9f8:	03e13023          	sd	t5,32(sp)
   1b9fc:	01f13423          	sd	t6,8(sp)
   1ba00:	c4cff0ef          	jal	ra,1ae4c <__sprint_r.part.0>
   1ba04:	8e0510e3          	bnez	a0,1b2e4 <_vfiprintf_r+0x380>
   1ba08:	06812683          	lw	a3,104(sp)
   1ba0c:	07013783          	ld	a5,112(sp)
   1ba10:	02813303          	ld	t1,40(sp)
   1ba14:	02013f03          	ld	t5,32(sp)
   1ba18:	00813f83          	ld	t6,8(sp)
   1ba1c:	0f010593          	addi	a1,sp,240
   1ba20:	0016861b          	addiw	a2,a3,1
   1ba24:	00040713          	mv	a4,s0
   1ba28:	fc8ff06f          	j	1b1f0 <_vfiprintf_r+0x28c>
   1ba2c:	36079063          	bnez	a5,1bd8c <_vfiprintf_r+0xe28>
   1ba30:	05714703          	lbu	a4,87(sp)
   1ba34:	56071863          	bnez	a4,1bfa4 <_vfiprintf_r+0x1040>
   1ba38:	260f8863          	beqz	t6,1bca8 <_vfiprintf_r+0xd44>
   1ba3c:	05810793          	addi	a5,sp,88
   1ba40:	0ef13023          	sd	a5,224(sp)
   1ba44:	00200793          	li	a5,2
   1ba48:	0ef13423          	sd	a5,232(sp)
   1ba4c:	0f010593          	addi	a1,sp,240
   1ba50:	00100613          	li	a2,1
   1ba54:	00058713          	mv	a4,a1
   1ba58:	00060693          	mv	a3,a2
   1ba5c:	0016861b          	addiw	a2,a3,1
   1ba60:	01070593          	addi	a1,a4,16
   1ba64:	ff0ff06f          	j	1b254 <_vfiprintf_r+0x2f0>
   1ba68:	00100613          	li	a2,1
   1ba6c:	000d0693          	mv	a3,s10
   1ba70:	a8c796e3          	bne	a5,a2,1b4fc <_vfiprintf_r+0x598>
   1ba74:	00900793          	li	a5,9
   1ba78:	2577ec63          	bltu	a5,s7,1bcd0 <_vfiprintf_r+0xd6c>
   1ba7c:	030b8b9b          	addiw	s7,s7,48
   1ba80:	0d710da3          	sb	s7,219(sp)
   1ba84:	00068d13          	mv	s10,a3
   1ba88:	00100a13          	li	s4,1
   1ba8c:	0db10c93          	addi	s9,sp,219
   1ba90:	901ff06f          	j	1b390 <_vfiprintf_r+0x42c>
   1ba94:	01000513          	li	a0,16
   1ba98:	09d55e63          	bge	a0,t4,1bb34 <_vfiprintf_r+0xbd0>
   1ba9c:	01000293          	li	t0,16
   1baa0:	00700393          	li	t2,7
   1baa4:	01c0006f          	j	1bac0 <_vfiprintf_r+0xb5c>
   1baa8:	0026859b          	addiw	a1,a3,2
   1baac:	01070713          	addi	a4,a4,16
   1bab0:	00060693          	mv	a3,a2
   1bab4:	ff0e8e9b          	addiw	t4,t4,-16
   1bab8:	07d2de63          	bge	t0,t4,1bb34 <_vfiprintf_r+0xbd0>
   1babc:	0016859b          	addiw	a1,a3,1
   1bac0:	01078793          	addi	a5,a5,16
   1bac4:	01673023          	sd	s6,0(a4)
   1bac8:	00573423          	sd	t0,8(a4)
   1bacc:	06f13823          	sd	a5,112(sp)
   1bad0:	0005861b          	sext.w	a2,a1
   1bad4:	06b12423          	sw	a1,104(sp)
   1bad8:	fcc3d8e3          	bge	t2,a2,1baa8 <_vfiprintf_r+0xb44>
   1badc:	08078263          	beqz	a5,1bb60 <_vfiprintf_r+0xbfc>
   1bae0:	06010613          	addi	a2,sp,96
   1bae4:	00098593          	mv	a1,s3
   1bae8:	000a8513          	mv	a0,s5
   1baec:	03d13823          	sd	t4,48(sp)
   1baf0:	02613423          	sd	t1,40(sp)
   1baf4:	03e13023          	sd	t5,32(sp)
   1baf8:	01f13423          	sd	t6,8(sp)
   1bafc:	b50ff0ef          	jal	ra,1ae4c <__sprint_r.part.0>
   1bb00:	fe051263          	bnez	a0,1b2e4 <_vfiprintf_r+0x380>
   1bb04:	03013e83          	ld	t4,48(sp)
   1bb08:	06812683          	lw	a3,104(sp)
   1bb0c:	01000293          	li	t0,16
   1bb10:	ff0e8e9b          	addiw	t4,t4,-16
   1bb14:	07013783          	ld	a5,112(sp)
   1bb18:	02813303          	ld	t1,40(sp)
   1bb1c:	02013f03          	ld	t5,32(sp)
   1bb20:	00813f83          	ld	t6,8(sp)
   1bb24:	00040713          	mv	a4,s0
   1bb28:	0016859b          	addiw	a1,a3,1
   1bb2c:	00700393          	li	t2,7
   1bb30:	f9d2c6e3          	blt	t0,t4,1babc <_vfiprintf_r+0xb58>
   1bb34:	01d787b3          	add	a5,a5,t4
   1bb38:	01673023          	sd	s6,0(a4)
   1bb3c:	01d73423          	sd	t4,8(a4)
   1bb40:	06f13823          	sd	a5,112(sp)
   1bb44:	06b12423          	sw	a1,104(sp)
   1bb48:	00700693          	li	a3,7
   1bb4c:	eeb6c0e3          	blt	a3,a1,1ba2c <_vfiprintf_r+0xac8>
   1bb50:	01070713          	addi	a4,a4,16
   1bb54:	0015861b          	addiw	a2,a1,1
   1bb58:	00058693          	mv	a3,a1
   1bb5c:	e54ff06f          	j	1b1b0 <_vfiprintf_r+0x24c>
   1bb60:	00000693          	li	a3,0
   1bb64:	00100593          	li	a1,1
   1bb68:	00040713          	mv	a4,s0
   1bb6c:	f49ff06f          	j	1bab4 <_vfiprintf_r+0xb50>
   1bb70:	06012423          	sw	zero,104(sp)
   1bb74:	004d7893          	andi	a7,s10,4
   1bb78:	0c088a63          	beqz	a7,1bc4c <_vfiprintf_r+0xce8>
   1bb7c:	41748a3b          	subw	s4,s1,s7
   1bb80:	0d405663          	blez	s4,1bc4c <_vfiprintf_r+0xce8>
   1bb84:	00040593          	mv	a1,s0
   1bb88:	01000713          	li	a4,16
   1bb8c:	06812683          	lw	a3,104(sp)
   1bb90:	49475a63          	bge	a4,s4,1c024 <_vfiprintf_r+0x10c0>
   1bb94:	01000d13          	li	s10,16
   1bb98:	00700c93          	li	s9,7
   1bb9c:	0180006f          	j	1bbb4 <_vfiprintf_r+0xc50>
   1bba0:	0026871b          	addiw	a4,a3,2
   1bba4:	01058593          	addi	a1,a1,16
   1bba8:	00060693          	mv	a3,a2
   1bbac:	ff0a0a1b          	addiw	s4,s4,-16
   1bbb0:	054d5863          	bge	s10,s4,1bc00 <_vfiprintf_r+0xc9c>
   1bbb4:	0016861b          	addiw	a2,a3,1
   1bbb8:	01078793          	addi	a5,a5,16
   1bbbc:	0165b023          	sd	s6,0(a1)
   1bbc0:	01a5b423          	sd	s10,8(a1)
   1bbc4:	06f13823          	sd	a5,112(sp)
   1bbc8:	06c12423          	sw	a2,104(sp)
   1bbcc:	fcccdae3          	bge	s9,a2,1bba0 <_vfiprintf_r+0xc3c>
   1bbd0:	06078663          	beqz	a5,1bc3c <_vfiprintf_r+0xcd8>
   1bbd4:	06010613          	addi	a2,sp,96
   1bbd8:	00098593          	mv	a1,s3
   1bbdc:	000a8513          	mv	a0,s5
   1bbe0:	a6cff0ef          	jal	ra,1ae4c <__sprint_r.part.0>
   1bbe4:	f0051063          	bnez	a0,1b2e4 <_vfiprintf_r+0x380>
   1bbe8:	06812683          	lw	a3,104(sp)
   1bbec:	ff0a0a1b          	addiw	s4,s4,-16
   1bbf0:	07013783          	ld	a5,112(sp)
   1bbf4:	00040593          	mv	a1,s0
   1bbf8:	0016871b          	addiw	a4,a3,1
   1bbfc:	fb4d4ce3          	blt	s10,s4,1bbb4 <_vfiprintf_r+0xc50>
   1bc00:	014787b3          	add	a5,a5,s4
   1bc04:	0165b023          	sd	s6,0(a1)
   1bc08:	0145b423          	sd	s4,8(a1)
   1bc0c:	06f13823          	sd	a5,112(sp)
   1bc10:	06e12423          	sw	a4,104(sp)
   1bc14:	00700693          	li	a3,7
   1bc18:	e8e6dc63          	bge	a3,a4,1b2b0 <_vfiprintf_r+0x34c>
   1bc1c:	02078863          	beqz	a5,1bc4c <_vfiprintf_r+0xce8>
   1bc20:	06010613          	addi	a2,sp,96
   1bc24:	00098593          	mv	a1,s3
   1bc28:	000a8513          	mv	a0,s5
   1bc2c:	a20ff0ef          	jal	ra,1ae4c <__sprint_r.part.0>
   1bc30:	ea051a63          	bnez	a0,1b2e4 <_vfiprintf_r+0x380>
   1bc34:	07013783          	ld	a5,112(sp)
   1bc38:	e78ff06f          	j	1b2b0 <_vfiprintf_r+0x34c>
   1bc3c:	00100713          	li	a4,1
   1bc40:	00000693          	li	a3,0
   1bc44:	00040593          	mv	a1,s0
   1bc48:	f65ff06f          	j	1bbac <_vfiprintf_r+0xc48>
   1bc4c:	00048793          	mv	a5,s1
   1bc50:	0174d463          	bge	s1,s7,1bc58 <_vfiprintf_r+0xcf4>
   1bc54:	000b8793          	mv	a5,s7
   1bc58:	00013703          	ld	a4,0(sp)
   1bc5c:	00e787bb          	addw	a5,a5,a4
   1bc60:	00f13023          	sd	a5,0(sp)
   1bc64:	e68ff06f          	j	1b2cc <_vfiprintf_r+0x368>
   1bc68:	24078863          	beqz	a5,1beb8 <_vfiprintf_r+0xf54>
   1bc6c:	06010613          	addi	a2,sp,96
   1bc70:	00098593          	mv	a1,s3
   1bc74:	000a8513          	mv	a0,s5
   1bc78:	9d4ff0ef          	jal	ra,1ae4c <__sprint_r.part.0>
   1bc7c:	e6051463          	bnez	a0,1b2e4 <_vfiprintf_r+0x380>
   1bc80:	06812603          	lw	a2,104(sp)
   1bc84:	07013783          	ld	a5,112(sp)
   1bc88:	0f010593          	addi	a1,sp,240
   1bc8c:	0016061b          	addiw	a2,a2,1
   1bc90:	00040713          	mv	a4,s0
   1bc94:	dd0ff06f          	j	1b264 <_vfiprintf_r+0x300>
   1bc98:	06012423          	sw	zero,104(sp)
   1bc9c:	00040713          	mv	a4,s0
   1bca0:	c2cff06f          	j	1b0cc <_vfiprintf_r+0x168>
   1bca4:	140f9263          	bnez	t6,1bde8 <_vfiprintf_r+0xe84>
   1bca8:	00000693          	li	a3,0
   1bcac:	0f010593          	addi	a1,sp,240
   1bcb0:	00100613          	li	a2,1
   1bcb4:	00040713          	mv	a4,s0
   1bcb8:	d9cff06f          	j	1b254 <_vfiprintf_r+0x2f0>
   1bcbc:	0f010593          	addi	a1,sp,240
   1bcc0:	00100613          	li	a2,1
   1bcc4:	00000693          	li	a3,0
   1bcc8:	00040713          	mv	a4,s0
   1bccc:	d88ff06f          	j	1b254 <_vfiprintf_r+0x2f0>
   1bcd0:	0dc10a13          	addi	s4,sp,220
   1bcd4:	4006ff13          	andi	t5,a3,1024
   1bcd8:	00000593          	li	a1,0
   1bcdc:	000a0613          	mv	a2,s4
   1bce0:	00a00893          	li	a7,10
   1bce4:	00900e93          	li	t4,9
   1bce8:	0ff00d13          	li	s10,255
   1bcec:	0140006f          	j	1bd00 <_vfiprintf_r+0xd9c>
   1bcf0:	031bd7b3          	divu	a5,s7,a7
   1bcf4:	b17ef4e3          	bgeu	t4,s7,1b7fc <_vfiprintf_r+0x898>
   1bcf8:	00078b93          	mv	s7,a5
   1bcfc:	000c8613          	mv	a2,s9
   1bd00:	fff60c93          	addi	s9,a2,-1
   1bd04:	0015859b          	addiw	a1,a1,1
   1bd08:	031bf7b3          	remu	a5,s7,a7
   1bd0c:	0307879b          	addiw	a5,a5,48
   1bd10:	fef60fa3          	sb	a5,-1(a2)
   1bd14:	fc0f0ee3          	beqz	t5,1bcf0 <_vfiprintf_r+0xd8c>
   1bd18:	03813783          	ld	a5,56(sp)
   1bd1c:	0007c783          	lbu	a5,0(a5)
   1bd20:	fcb798e3          	bne	a5,a1,1bcf0 <_vfiprintf_r+0xd8c>
   1bd24:	fda786e3          	beq	a5,s10,1bcf0 <_vfiprintf_r+0xd8c>
   1bd28:	ad7efae3          	bgeu	t4,s7,1b7fc <_vfiprintf_r+0x898>
   1bd2c:	04813783          	ld	a5,72(sp)
   1bd30:	04013583          	ld	a1,64(sp)
   1bd34:	03e13823          	sd	t5,48(sp)
   1bd38:	40fc8cb3          	sub	s9,s9,a5
   1bd3c:	00078613          	mv	a2,a5
   1bd40:	000c8513          	mv	a0,s9
   1bd44:	02e13423          	sd	a4,40(sp)
   1bd48:	02613023          	sd	t1,32(sp)
   1bd4c:	00d13423          	sd	a3,8(sp)
   1bd50:	b59fc0ef          	jal	ra,188a8 <strncpy>
   1bd54:	03813703          	ld	a4,56(sp)
   1bd58:	00a00893          	li	a7,10
   1bd5c:	031bd7b3          	divu	a5,s7,a7
   1bd60:	00174603          	lbu	a2,1(a4)
   1bd64:	00813683          	ld	a3,8(sp)
   1bd68:	02013303          	ld	t1,32(sp)
   1bd6c:	00c03633          	snez	a2,a2
   1bd70:	00c70733          	add	a4,a4,a2
   1bd74:	02e13c23          	sd	a4,56(sp)
   1bd78:	03013f03          	ld	t5,48(sp)
   1bd7c:	02813703          	ld	a4,40(sp)
   1bd80:	00000593          	li	a1,0
   1bd84:	00900e93          	li	t4,9
   1bd88:	f71ff06f          	j	1bcf8 <_vfiprintf_r+0xd94>
   1bd8c:	06010613          	addi	a2,sp,96
   1bd90:	00098593          	mv	a1,s3
   1bd94:	000a8513          	mv	a0,s5
   1bd98:	02613423          	sd	t1,40(sp)
   1bd9c:	03e13023          	sd	t5,32(sp)
   1bda0:	01f13423          	sd	t6,8(sp)
   1bda4:	8a8ff0ef          	jal	ra,1ae4c <__sprint_r.part.0>
   1bda8:	d2051e63          	bnez	a0,1b2e4 <_vfiprintf_r+0x380>
   1bdac:	06812683          	lw	a3,104(sp)
   1bdb0:	07013783          	ld	a5,112(sp)
   1bdb4:	02813303          	ld	t1,40(sp)
   1bdb8:	02013f03          	ld	t5,32(sp)
   1bdbc:	00813f83          	ld	t6,8(sp)
   1bdc0:	00040713          	mv	a4,s0
   1bdc4:	0016861b          	addiw	a2,a3,1
   1bdc8:	be8ff06f          	j	1b1b0 <_vfiprintf_r+0x24c>
   1bdcc:	0015061b          	addiw	a2,a0,1
   1bdd0:	010f0593          	addi	a1,t5,16
   1bdd4:	00050693          	mv	a3,a0
   1bdd8:	000f0713          	mv	a4,t5
   1bddc:	c80ff06f          	j	1b25c <_vfiprintf_r+0x2f8>
   1bde0:	000dc783          	lbu	a5,0(s11)
   1bde4:	b1cff06f          	j	1b100 <_vfiprintf_r+0x19c>
   1bde8:	05810793          	addi	a5,sp,88
   1bdec:	0ef13023          	sd	a5,224(sp)
   1bdf0:	00200793          	li	a5,2
   1bdf4:	0ef13423          	sd	a5,232(sp)
   1bdf8:	0f010713          	addi	a4,sp,240
   1bdfc:	00100693          	li	a3,1
   1be00:	c5dff06f          	j	1ba5c <_vfiprintf_r+0xaf8>
   1be04:	00060c13          	mv	s8,a2
   1be08:	c6dff06f          	j	1ba74 <_vfiprintf_r+0xb10>
   1be0c:	000d0693          	mv	a3,s10
   1be10:	869ff06f          	j	1b678 <_vfiprintf_r+0x714>
   1be14:	000216b7          	lui	a3,0x21
   1be18:	2c868693          	addi	a3,a3,712 # 212c8 <__clzdi2+0x64>
   1be1c:	00d13823          	sd	a3,16(sp)
   1be20:	020d7693          	andi	a3,s10,32
   1be24:	008c0613          	addi	a2,s8,8
   1be28:	06069663          	bnez	a3,1be94 <_vfiprintf_r+0xf30>
   1be2c:	010d7693          	andi	a3,s10,16
   1be30:	06069263          	bnez	a3,1be94 <_vfiprintf_r+0xf30>
   1be34:	040d7693          	andi	a3,s10,64
   1be38:	000c2b83          	lw	s7,0(s8)
   1be3c:	12068a63          	beqz	a3,1bf70 <_vfiprintf_r+0x100c>
   1be40:	030b9b93          	slli	s7,s7,0x30
   1be44:	030bdb93          	srli	s7,s7,0x30
   1be48:	001d7693          	andi	a3,s10,1
   1be4c:	00068e63          	beqz	a3,1be68 <_vfiprintf_r+0xf04>
   1be50:	000b8c63          	beqz	s7,1be68 <_vfiprintf_r+0xf04>
   1be54:	002d6893          	ori	a7,s10,2
   1be58:	03000693          	li	a3,48
   1be5c:	04d10c23          	sb	a3,88(sp)
   1be60:	04f10ca3          	sb	a5,89(sp)
   1be64:	00088d1b          	sext.w	s10,a7
   1be68:	bffd7693          	andi	a3,s10,-1025
   1be6c:	0006869b          	sext.w	a3,a3
   1be70:	00060c13          	mv	s8,a2
   1be74:	00200793          	li	a5,2
   1be78:	dd4ff06f          	j	1b44c <_vfiprintf_r+0x4e8>
   1be7c:	000216b7          	lui	a3,0x21
   1be80:	2e068693          	addi	a3,a3,736 # 212e0 <__clzdi2+0x7c>
   1be84:	00d13823          	sd	a3,16(sp)
   1be88:	020d7693          	andi	a3,s10,32
   1be8c:	008c0613          	addi	a2,s8,8
   1be90:	f8068ee3          	beqz	a3,1be2c <_vfiprintf_r+0xec8>
   1be94:	000c3b83          	ld	s7,0(s8)
   1be98:	fb1ff06f          	j	1be48 <_vfiprintf_r+0xee4>
   1be9c:	000c8513          	mv	a0,s9
   1bea0:	00e13423          	sd	a4,8(sp)
   1bea4:	93dfc0ef          	jal	ra,187e0 <strlen>
   1bea8:	00813703          	ld	a4,8(sp)
   1beac:	00050a1b          	sext.w	s4,a0
   1beb0:	00000313          	li	t1,0
   1beb4:	cdcff06f          	j	1b390 <_vfiprintf_r+0x42c>
   1beb8:	00100713          	li	a4,1
   1bebc:	000a0793          	mv	a5,s4
   1bec0:	0f913023          	sd	s9,224(sp)
   1bec4:	0f413423          	sd	s4,232(sp)
   1bec8:	07413823          	sd	s4,112(sp)
   1becc:	06e12423          	sw	a4,104(sp)
   1bed0:	0f010593          	addi	a1,sp,240
   1bed4:	bccff06f          	j	1b2a0 <_vfiprintf_r+0x33c>
   1bed8:	00100693          	li	a3,1
   1bedc:	14d78863          	beq	a5,a3,1c02c <_vfiprintf_r+0x10c8>
   1bee0:	00200693          	li	a3,2
   1bee4:	8ed786e3          	beq	a5,a3,1b7d0 <_vfiprintf_r+0x86c>
   1bee8:	000d0693          	mv	a3,s10
   1beec:	e18ff06f          	j	1b504 <_vfiprintf_r+0x5a0>
   1bef0:	200d6893          	ori	a7,s10,512
   1bef4:	001dc783          	lbu	a5,1(s11)
   1bef8:	00088d1b          	sext.w	s10,a7
   1befc:	001d8d93          	addi	s11,s11,1
   1bf00:	a00ff06f          	j	1b100 <_vfiprintf_r+0x19c>
   1bf04:	020d6893          	ori	a7,s10,32
   1bf08:	001dc783          	lbu	a5,1(s11)
   1bf0c:	00088d1b          	sext.w	s10,a7
   1bf10:	001d8d93          	addi	s11,s11,1
   1bf14:	9ecff06f          	j	1b100 <_vfiprintf_r+0x19c>
   1bf18:	00600793          	li	a5,6
   1bf1c:	00030a1b          	sext.w	s4,t1
   1bf20:	0667ee63          	bltu	a5,t1,1bf9c <_vfiprintf_r+0x1038>
   1bf24:	00021e37          	lui	t3,0x21
   1bf28:	000a0b93          	mv	s7,s4
   1bf2c:	2f8e0c93          	addi	s9,t3,760 # 212f8 <__clzdi2+0x94>
   1bf30:	a50ff06f          	j	1b180 <_vfiprintf_r+0x21c>
   1bf34:	200d7793          	andi	a5,s10,512
   1bf38:	0a078a63          	beqz	a5,1bfec <_vfiprintf_r+0x1088>
   1bf3c:	000c0b83          	lb	s7,0(s8)
   1bf40:	000b8793          	mv	a5,s7
   1bf44:	c18ff06f          	j	1b35c <_vfiprintf_r+0x3f8>
   1bf48:	200d7793          	andi	a5,s10,512
   1bf4c:	08078a63          	beqz	a5,1bfe0 <_vfiprintf_r+0x107c>
   1bf50:	0ffbfb93          	zext.b	s7,s7
   1bf54:	ce8ff06f          	j	1b43c <_vfiprintf_r+0x4d8>
   1bf58:	2006f793          	andi	a5,a3,512
   1bf5c:	06078863          	beqz	a5,1bfcc <_vfiprintf_r+0x1068>
   1bf60:	0ffbfb93          	zext.b	s7,s7
   1bf64:	00060c13          	mv	s8,a2
   1bf68:	00100793          	li	a5,1
   1bf6c:	ce0ff06f          	j	1b44c <_vfiprintf_r+0x4e8>
   1bf70:	200d7693          	andi	a3,s10,512
   1bf74:	08068263          	beqz	a3,1bff8 <_vfiprintf_r+0x1094>
   1bf78:	0ffbfb93          	zext.b	s7,s7
   1bf7c:	ecdff06f          	j	1be48 <_vfiprintf_r+0xee4>
   1bf80:	00058693          	mv	a3,a1
   1bf84:	9fdff06f          	j	1b980 <_vfiprintf_r+0xa1c>
   1bf88:	0f010593          	addi	a1,sp,240
   1bf8c:	00100613          	li	a2,1
   1bf90:	00000693          	li	a3,0
   1bf94:	00040713          	mv	a4,s0
   1bf98:	ac4ff06f          	j	1b25c <_vfiprintf_r+0x2f8>
   1bf9c:	00600a13          	li	s4,6
   1bfa0:	f85ff06f          	j	1bf24 <_vfiprintf_r+0xfc0>
   1bfa4:	05710793          	addi	a5,sp,87
   1bfa8:	0ef13023          	sd	a5,224(sp)
   1bfac:	00100793          	li	a5,1
   1bfb0:	0ef13423          	sd	a5,232(sp)
   1bfb4:	0f010593          	addi	a1,sp,240
   1bfb8:	00100613          	li	a2,1
   1bfbc:	a24ff06f          	j	1b1e0 <_vfiprintf_r+0x27c>
   1bfc0:	00013783          	ld	a5,0(sp)
   1bfc4:	00f69023          	sh	a5,0(a3)
   1bfc8:	894ff06f          	j	1b05c <_vfiprintf_r+0xf8>
   1bfcc:	020b9b93          	slli	s7,s7,0x20
   1bfd0:	020bdb93          	srli	s7,s7,0x20
   1bfd4:	00060c13          	mv	s8,a2
   1bfd8:	00100793          	li	a5,1
   1bfdc:	c70ff06f          	j	1b44c <_vfiprintf_r+0x4e8>
   1bfe0:	020b9b93          	slli	s7,s7,0x20
   1bfe4:	020bdb93          	srli	s7,s7,0x20
   1bfe8:	c54ff06f          	j	1b43c <_vfiprintf_r+0x4d8>
   1bfec:	000c2b83          	lw	s7,0(s8)
   1bff0:	000b8793          	mv	a5,s7
   1bff4:	b68ff06f          	j	1b35c <_vfiprintf_r+0x3f8>
   1bff8:	020b9b93          	slli	s7,s7,0x20
   1bffc:	020bdb93          	srli	s7,s7,0x20
   1c000:	e49ff06f          	j	1be48 <_vfiprintf_r+0xee4>
   1c004:	06010613          	addi	a2,sp,96
   1c008:	00098593          	mv	a1,s3
   1c00c:	000a8513          	mv	a0,s5
   1c010:	e3dfe0ef          	jal	ra,1ae4c <__sprint_r.part.0>
   1c014:	ad0ff06f          	j	1b2e4 <_vfiprintf_r+0x380>
   1c018:	00030a13          	mv	s4,t1
   1c01c:	00000313          	li	t1,0
   1c020:	b70ff06f          	j	1b390 <_vfiprintf_r+0x42c>
   1c024:	0016871b          	addiw	a4,a3,1
   1c028:	bd9ff06f          	j	1bc00 <_vfiprintf_r+0xc9c>
   1c02c:	000d0693          	mv	a3,s10
   1c030:	a4dff06f          	j	1ba7c <_vfiprintf_r+0xb18>
   1c034:	fff00793          	li	a5,-1
   1c038:	00f13023          	sd	a5,0(sp)
   1c03c:	ab4ff06f          	j	1b2f0 <_vfiprintf_r+0x38c>
   1c040:	00058f13          	mv	t5,a1
   1c044:	00060513          	mv	a0,a2
   1c048:	859ff06f          	j	1b8a0 <_vfiprintf_r+0x93c>
   1c04c:	00f6a023          	sw	a5,0(a3)
   1c050:	80cff06f          	j	1b05c <_vfiprintf_r+0xf8>
   1c054:	000c2783          	lw	a5,0(s8)
   1c058:	008c0c13          	addi	s8,s8,8
   1c05c:	0007831b          	sext.w	t1,a5
   1c060:	0007d463          	bgez	a5,1c068 <_vfiprintf_r+0x1104>
   1c064:	fff00313          	li	t1,-1
   1c068:	001dc783          	lbu	a5,1(s11)
   1c06c:	00068d93          	mv	s11,a3
   1c070:	890ff06f          	j	1b100 <_vfiprintf_r+0x19c>

000000000001c074 <vfiprintf>:
   1c074:	00050793          	mv	a5,a0
   1c078:	7581b503          	ld	a0,1880(gp) # 241f8 <_impure_ptr>
   1c07c:	00060693          	mv	a3,a2
   1c080:	00058613          	mv	a2,a1
   1c084:	00078593          	mv	a1,a5
   1c088:	eddfe06f          	j	1af64 <_vfiprintf_r>

000000000001c08c <__sbprintf>:
   1c08c:	0105d783          	lhu	a5,16(a1)
   1c090:	0ac5ae03          	lw	t3,172(a1)
   1c094:	0125d303          	lhu	t1,18(a1)
   1c098:	0305b883          	ld	a7,48(a1)
   1c09c:	0405b803          	ld	a6,64(a1)
   1c0a0:	b3010113          	addi	sp,sp,-1232
   1c0a4:	ffd7f793          	andi	a5,a5,-3
   1c0a8:	40000713          	li	a4,1024
   1c0ac:	4c813023          	sd	s0,1216(sp)
   1c0b0:	00f11823          	sh	a5,16(sp)
   1c0b4:	00058413          	mv	s0,a1
   1c0b8:	0b010793          	addi	a5,sp,176
   1c0bc:	00010593          	mv	a1,sp
   1c0c0:	4a913c23          	sd	s1,1208(sp)
   1c0c4:	4b213823          	sd	s2,1200(sp)
   1c0c8:	4c113423          	sd	ra,1224(sp)
   1c0cc:	00050913          	mv	s2,a0
   1c0d0:	0bc12623          	sw	t3,172(sp)
   1c0d4:	00611923          	sh	t1,18(sp)
   1c0d8:	03113823          	sd	a7,48(sp)
   1c0dc:	05013023          	sd	a6,64(sp)
   1c0e0:	00f13023          	sd	a5,0(sp)
   1c0e4:	00f13c23          	sd	a5,24(sp)
   1c0e8:	00e12623          	sw	a4,12(sp)
   1c0ec:	02e12023          	sw	a4,32(sp)
   1c0f0:	02012423          	sw	zero,40(sp)
   1c0f4:	e71fe0ef          	jal	ra,1af64 <_vfiprintf_r>
   1c0f8:	00050493          	mv	s1,a0
   1c0fc:	02055c63          	bgez	a0,1c134 <__sbprintf+0xa8>
   1c100:	01015783          	lhu	a5,16(sp)
   1c104:	0407f793          	andi	a5,a5,64
   1c108:	00078863          	beqz	a5,1c118 <__sbprintf+0x8c>
   1c10c:	01045783          	lhu	a5,16(s0)
   1c110:	0407e793          	ori	a5,a5,64
   1c114:	00f41823          	sh	a5,16(s0)
   1c118:	4c813083          	ld	ra,1224(sp)
   1c11c:	4c013403          	ld	s0,1216(sp)
   1c120:	4b013903          	ld	s2,1200(sp)
   1c124:	00048513          	mv	a0,s1
   1c128:	4b813483          	ld	s1,1208(sp)
   1c12c:	4d010113          	addi	sp,sp,1232
   1c130:	00008067          	ret
   1c134:	00010593          	mv	a1,sp
   1c138:	00090513          	mv	a0,s2
   1c13c:	e3df60ef          	jal	ra,12f78 <_fflush_r>
   1c140:	fc0500e3          	beqz	a0,1c100 <__sbprintf+0x74>
   1c144:	fff00493          	li	s1,-1
   1c148:	fb9ff06f          	j	1c100 <__sbprintf+0x74>

000000000001c14c <_write_r>:
   1c14c:	fe010113          	addi	sp,sp,-32
   1c150:	00058713          	mv	a4,a1
   1c154:	00813823          	sd	s0,16(sp)
   1c158:	00913423          	sd	s1,8(sp)
   1c15c:	00060593          	mv	a1,a2
   1c160:	00050413          	mv	s0,a0
   1c164:	00068613          	mv	a2,a3
   1c168:	00070513          	mv	a0,a4
   1c16c:	00113c23          	sd	ra,24(sp)
   1c170:	7801a823          	sw	zero,1936(gp) # 24230 <errno>
   1c174:	4bc030ef          	jal	ra,1f630 <_write>
   1c178:	fff00793          	li	a5,-1
   1c17c:	00f50c63          	beq	a0,a5,1c194 <_write_r+0x48>
   1c180:	01813083          	ld	ra,24(sp)
   1c184:	01013403          	ld	s0,16(sp)
   1c188:	00813483          	ld	s1,8(sp)
   1c18c:	02010113          	addi	sp,sp,32
   1c190:	00008067          	ret
   1c194:	7901a783          	lw	a5,1936(gp) # 24230 <errno>
   1c198:	fe0784e3          	beqz	a5,1c180 <_write_r+0x34>
   1c19c:	01813083          	ld	ra,24(sp)
   1c1a0:	00f42023          	sw	a5,0(s0)
   1c1a4:	01013403          	ld	s0,16(sp)
   1c1a8:	00813483          	ld	s1,8(sp)
   1c1ac:	02010113          	addi	sp,sp,32
   1c1b0:	00008067          	ret

000000000001c1b4 <__register_exitproc>:
   1c1b4:	7481b703          	ld	a4,1864(gp) # 241e8 <_global_impure_ptr>
   1c1b8:	1f873783          	ld	a5,504(a4)
   1c1bc:	06078063          	beqz	a5,1c21c <__register_exitproc+0x68>
   1c1c0:	0087a703          	lw	a4,8(a5)
   1c1c4:	01f00813          	li	a6,31
   1c1c8:	08e84663          	blt	a6,a4,1c254 <__register_exitproc+0xa0>
   1c1cc:	02050863          	beqz	a0,1c1fc <__register_exitproc+0x48>
   1c1d0:	00371813          	slli	a6,a4,0x3
   1c1d4:	01078833          	add	a6,a5,a6
   1c1d8:	10c83823          	sd	a2,272(a6)
   1c1dc:	3107a883          	lw	a7,784(a5)
   1c1e0:	00100613          	li	a2,1
   1c1e4:	00e6163b          	sllw	a2,a2,a4
   1c1e8:	00c8e8b3          	or	a7,a7,a2
   1c1ec:	3117a823          	sw	a7,784(a5)
   1c1f0:	20d83823          	sd	a3,528(a6)
   1c1f4:	00200693          	li	a3,2
   1c1f8:	02d50863          	beq	a0,a3,1c228 <__register_exitproc+0x74>
   1c1fc:	00270693          	addi	a3,a4,2
   1c200:	00369693          	slli	a3,a3,0x3
   1c204:	0017071b          	addiw	a4,a4,1
   1c208:	00e7a423          	sw	a4,8(a5)
   1c20c:	00d787b3          	add	a5,a5,a3
   1c210:	00b7b023          	sd	a1,0(a5)
   1c214:	00000513          	li	a0,0
   1c218:	00008067          	ret
   1c21c:	20070793          	addi	a5,a4,512
   1c220:	1ef73c23          	sd	a5,504(a4)
   1c224:	f9dff06f          	j	1c1c0 <__register_exitproc+0xc>
   1c228:	3147a683          	lw	a3,788(a5)
   1c22c:	00000513          	li	a0,0
   1c230:	00c6e633          	or	a2,a3,a2
   1c234:	00270693          	addi	a3,a4,2
   1c238:	00369693          	slli	a3,a3,0x3
   1c23c:	0017071b          	addiw	a4,a4,1
   1c240:	30c7aa23          	sw	a2,788(a5)
   1c244:	00e7a423          	sw	a4,8(a5)
   1c248:	00d787b3          	add	a5,a5,a3
   1c24c:	00b7b023          	sd	a1,0(a5)
   1c250:	00008067          	ret
   1c254:	fff00513          	li	a0,-1
   1c258:	00008067          	ret

000000000001c25c <__assert_func>:
   1c25c:	7581b703          	ld	a4,1880(gp) # 241f8 <_impure_ptr>
   1c260:	ff010113          	addi	sp,sp,-16
   1c264:	00068793          	mv	a5,a3
   1c268:	00060813          	mv	a6,a2
   1c26c:	00113423          	sd	ra,8(sp)
   1c270:	01873883          	ld	a7,24(a4)
   1c274:	00050693          	mv	a3,a0
   1c278:	00058713          	mv	a4,a1
   1c27c:	00078613          	mv	a2,a5
   1c280:	02080063          	beqz	a6,1c2a0 <__assert_func+0x44>
   1c284:	000227b7          	lui	a5,0x22
   1c288:	c7078793          	addi	a5,a5,-912 # 21c70 <zeroes.0+0x10>
   1c28c:	000225b7          	lui	a1,0x22
   1c290:	c8058593          	addi	a1,a1,-896 # 21c80 <zeroes.0+0x20>
   1c294:	00088513          	mv	a0,a7
   1c298:	354000ef          	jal	ra,1c5ec <fiprintf>
   1c29c:	351020ef          	jal	ra,1edec <abort>
   1c2a0:	00021837          	lui	a6,0x21
   1c2a4:	2d880793          	addi	a5,a6,728 # 212d8 <__clzdi2+0x74>
   1c2a8:	2d880813          	addi	a6,a6,728
   1c2ac:	fe1ff06f          	j	1c28c <__assert_func+0x30>

000000000001c2b0 <__assert>:
   1c2b0:	ff010113          	addi	sp,sp,-16
   1c2b4:	00060693          	mv	a3,a2
   1c2b8:	00000613          	li	a2,0
   1c2bc:	00113423          	sd	ra,8(sp)
   1c2c0:	f9dff0ef          	jal	ra,1c25c <__assert_func>

000000000001c2c4 <_calloc_r>:
   1c2c4:	02c5b7b3          	mulhu	a5,a1,a2
   1c2c8:	ff010113          	addi	sp,sp,-16
   1c2cc:	00113423          	sd	ra,8(sp)
   1c2d0:	00813023          	sd	s0,0(sp)
   1c2d4:	02c585b3          	mul	a1,a1,a2
   1c2d8:	0a079063          	bnez	a5,1c378 <_calloc_r+0xb4>
   1c2dc:	dacfa0ef          	jal	ra,16888 <_malloc_r>
   1c2e0:	00050413          	mv	s0,a0
   1c2e4:	04050863          	beqz	a0,1c334 <_calloc_r+0x70>
   1c2e8:	ff853603          	ld	a2,-8(a0)
   1c2ec:	04800713          	li	a4,72
   1c2f0:	ffc67613          	andi	a2,a2,-4
   1c2f4:	ff860613          	addi	a2,a2,-8
   1c2f8:	04c76863          	bltu	a4,a2,1c348 <_calloc_r+0x84>
   1c2fc:	02700693          	li	a3,39
   1c300:	00050793          	mv	a5,a0
   1c304:	02c6f263          	bgeu	a3,a2,1c328 <_calloc_r+0x64>
   1c308:	00053023          	sd	zero,0(a0)
   1c30c:	00053423          	sd	zero,8(a0)
   1c310:	03700793          	li	a5,55
   1c314:	04c7f863          	bgeu	a5,a2,1c364 <_calloc_r+0xa0>
   1c318:	00053823          	sd	zero,16(a0)
   1c31c:	00053c23          	sd	zero,24(a0)
   1c320:	02050793          	addi	a5,a0,32
   1c324:	06e60c63          	beq	a2,a4,1c39c <_calloc_r+0xd8>
   1c328:	0007b023          	sd	zero,0(a5)
   1c32c:	0007b423          	sd	zero,8(a5)
   1c330:	0007b823          	sd	zero,16(a5)
   1c334:	00813083          	ld	ra,8(sp)
   1c338:	00040513          	mv	a0,s0
   1c33c:	00013403          	ld	s0,0(sp)
   1c340:	01010113          	addi	sp,sp,16
   1c344:	00008067          	ret
   1c348:	00000593          	li	a1,0
   1c34c:	f71f30ef          	jal	ra,102bc <memset>
   1c350:	00813083          	ld	ra,8(sp)
   1c354:	00040513          	mv	a0,s0
   1c358:	00013403          	ld	s0,0(sp)
   1c35c:	01010113          	addi	sp,sp,16
   1c360:	00008067          	ret
   1c364:	01050793          	addi	a5,a0,16
   1c368:	0007b023          	sd	zero,0(a5)
   1c36c:	0007b423          	sd	zero,8(a5)
   1c370:	0007b823          	sd	zero,16(a5)
   1c374:	fc1ff06f          	j	1c334 <_calloc_r+0x70>
   1c378:	090000ef          	jal	ra,1c408 <__errno>
   1c37c:	00000413          	li	s0,0
   1c380:	00c00793          	li	a5,12
   1c384:	00813083          	ld	ra,8(sp)
   1c388:	00f52023          	sw	a5,0(a0)
   1c38c:	00040513          	mv	a0,s0
   1c390:	00013403          	ld	s0,0(sp)
   1c394:	01010113          	addi	sp,sp,16
   1c398:	00008067          	ret
   1c39c:	02053023          	sd	zero,32(a0)
   1c3a0:	03050793          	addi	a5,a0,48
   1c3a4:	02053423          	sd	zero,40(a0)
   1c3a8:	f81ff06f          	j	1c328 <_calloc_r+0x64>

000000000001c3ac <_close_r>:
   1c3ac:	fe010113          	addi	sp,sp,-32
   1c3b0:	00813823          	sd	s0,16(sp)
   1c3b4:	00913423          	sd	s1,8(sp)
   1c3b8:	00050413          	mv	s0,a0
   1c3bc:	00058513          	mv	a0,a1
   1c3c0:	00113c23          	sd	ra,24(sp)
   1c3c4:	7801a823          	sw	zero,1936(gp) # 24230 <errno>
   1c3c8:	024030ef          	jal	ra,1f3ec <_close>
   1c3cc:	fff00793          	li	a5,-1
   1c3d0:	00f50c63          	beq	a0,a5,1c3e8 <_close_r+0x3c>
   1c3d4:	01813083          	ld	ra,24(sp)
   1c3d8:	01013403          	ld	s0,16(sp)
   1c3dc:	00813483          	ld	s1,8(sp)
   1c3e0:	02010113          	addi	sp,sp,32
   1c3e4:	00008067          	ret
   1c3e8:	7901a783          	lw	a5,1936(gp) # 24230 <errno>
   1c3ec:	fe0784e3          	beqz	a5,1c3d4 <_close_r+0x28>
   1c3f0:	01813083          	ld	ra,24(sp)
   1c3f4:	00f42023          	sw	a5,0(s0)
   1c3f8:	01013403          	ld	s0,16(sp)
   1c3fc:	00813483          	ld	s1,8(sp)
   1c400:	02010113          	addi	sp,sp,32
   1c404:	00008067          	ret

000000000001c408 <__errno>:
   1c408:	7581b503          	ld	a0,1880(gp) # 241f8 <_impure_ptr>
   1c40c:	00008067          	ret

000000000001c410 <_fclose_r.part.0>:
   1c410:	fe010113          	addi	sp,sp,-32
   1c414:	00813823          	sd	s0,16(sp)
   1c418:	00913423          	sd	s1,8(sp)
   1c41c:	01213023          	sd	s2,0(sp)
   1c420:	00058413          	mv	s0,a1
   1c424:	00113c23          	sd	ra,24(sp)
   1c428:	00050493          	mv	s1,a0
   1c42c:	8e9f60ef          	jal	ra,12d14 <__sflush_r>
   1c430:	05043783          	ld	a5,80(s0)
   1c434:	00050913          	mv	s2,a0
   1c438:	00078a63          	beqz	a5,1c44c <_fclose_r.part.0+0x3c>
   1c43c:	03043583          	ld	a1,48(s0)
   1c440:	00048513          	mv	a0,s1
   1c444:	000780e7          	jalr	a5
   1c448:	06054463          	bltz	a0,1c4b0 <_fclose_r.part.0+0xa0>
   1c44c:	01045783          	lhu	a5,16(s0)
   1c450:	0807f793          	andi	a5,a5,128
   1c454:	06079663          	bnez	a5,1c4c0 <_fclose_r.part.0+0xb0>
   1c458:	05843583          	ld	a1,88(s0)
   1c45c:	00058c63          	beqz	a1,1c474 <_fclose_r.part.0+0x64>
   1c460:	07440793          	addi	a5,s0,116
   1c464:	00f58663          	beq	a1,a5,1c470 <_fclose_r.part.0+0x60>
   1c468:	00048513          	mv	a0,s1
   1c46c:	910f70ef          	jal	ra,1357c <_free_r>
   1c470:	04043c23          	sd	zero,88(s0)
   1c474:	07843583          	ld	a1,120(s0)
   1c478:	00058863          	beqz	a1,1c488 <_fclose_r.part.0+0x78>
   1c47c:	00048513          	mv	a0,s1
   1c480:	8fcf70ef          	jal	ra,1357c <_free_r>
   1c484:	06043c23          	sd	zero,120(s0)
   1c488:	f2df60ef          	jal	ra,133b4 <__sfp_lock_acquire>
   1c48c:	00041823          	sh	zero,16(s0)
   1c490:	f29f60ef          	jal	ra,133b8 <__sfp_lock_release>
   1c494:	01813083          	ld	ra,24(sp)
   1c498:	01013403          	ld	s0,16(sp)
   1c49c:	00813483          	ld	s1,8(sp)
   1c4a0:	00090513          	mv	a0,s2
   1c4a4:	00013903          	ld	s2,0(sp)
   1c4a8:	02010113          	addi	sp,sp,32
   1c4ac:	00008067          	ret
   1c4b0:	01045783          	lhu	a5,16(s0)
   1c4b4:	fff00913          	li	s2,-1
   1c4b8:	0807f793          	andi	a5,a5,128
   1c4bc:	f8078ee3          	beqz	a5,1c458 <_fclose_r.part.0+0x48>
   1c4c0:	01843583          	ld	a1,24(s0)
   1c4c4:	00048513          	mv	a0,s1
   1c4c8:	8b4f70ef          	jal	ra,1357c <_free_r>
   1c4cc:	f8dff06f          	j	1c458 <_fclose_r.part.0+0x48>

000000000001c4d0 <_fclose_r>:
   1c4d0:	06058463          	beqz	a1,1c538 <_fclose_r+0x68>
   1c4d4:	fe010113          	addi	sp,sp,-32
   1c4d8:	00813823          	sd	s0,16(sp)
   1c4dc:	00113c23          	sd	ra,24(sp)
   1c4e0:	00050413          	mv	s0,a0
   1c4e4:	00050663          	beqz	a0,1c4f0 <_fclose_r+0x20>
   1c4e8:	05052783          	lw	a5,80(a0)
   1c4ec:	02078a63          	beqz	a5,1c520 <_fclose_r+0x50>
   1c4f0:	01059783          	lh	a5,16(a1)
   1c4f4:	00079c63          	bnez	a5,1c50c <_fclose_r+0x3c>
   1c4f8:	01813083          	ld	ra,24(sp)
   1c4fc:	01013403          	ld	s0,16(sp)
   1c500:	00000513          	li	a0,0
   1c504:	02010113          	addi	sp,sp,32
   1c508:	00008067          	ret
   1c50c:	00040513          	mv	a0,s0
   1c510:	01013403          	ld	s0,16(sp)
   1c514:	01813083          	ld	ra,24(sp)
   1c518:	02010113          	addi	sp,sp,32
   1c51c:	ef5ff06f          	j	1c410 <_fclose_r.part.0>
   1c520:	00b13423          	sd	a1,8(sp)
   1c524:	e81f60ef          	jal	ra,133a4 <__sinit>
   1c528:	00813583          	ld	a1,8(sp)
   1c52c:	01059783          	lh	a5,16(a1)
   1c530:	fc0784e3          	beqz	a5,1c4f8 <_fclose_r+0x28>
   1c534:	fd9ff06f          	j	1c50c <_fclose_r+0x3c>
   1c538:	00000513          	li	a0,0
   1c53c:	00008067          	ret

000000000001c540 <fclose>:
   1c540:	06050663          	beqz	a0,1c5ac <fclose+0x6c>
   1c544:	fe010113          	addi	sp,sp,-32
   1c548:	00813823          	sd	s0,16(sp)
   1c54c:	00050413          	mv	s0,a0
   1c550:	7581b503          	ld	a0,1880(gp) # 241f8 <_impure_ptr>
   1c554:	00113c23          	sd	ra,24(sp)
   1c558:	00050663          	beqz	a0,1c564 <fclose+0x24>
   1c55c:	05052783          	lw	a5,80(a0)
   1c560:	02078a63          	beqz	a5,1c594 <fclose+0x54>
   1c564:	01041783          	lh	a5,16(s0)
   1c568:	00079c63          	bnez	a5,1c580 <fclose+0x40>
   1c56c:	01813083          	ld	ra,24(sp)
   1c570:	01013403          	ld	s0,16(sp)
   1c574:	00000513          	li	a0,0
   1c578:	02010113          	addi	sp,sp,32
   1c57c:	00008067          	ret
   1c580:	00040593          	mv	a1,s0
   1c584:	01013403          	ld	s0,16(sp)
   1c588:	01813083          	ld	ra,24(sp)
   1c58c:	02010113          	addi	sp,sp,32
   1c590:	e81ff06f          	j	1c410 <_fclose_r.part.0>
   1c594:	00a13423          	sd	a0,8(sp)
   1c598:	e0df60ef          	jal	ra,133a4 <__sinit>
   1c59c:	01041783          	lh	a5,16(s0)
   1c5a0:	00813503          	ld	a0,8(sp)
   1c5a4:	fc0784e3          	beqz	a5,1c56c <fclose+0x2c>
   1c5a8:	fd9ff06f          	j	1c580 <fclose+0x40>
   1c5ac:	00000513          	li	a0,0
   1c5b0:	00008067          	ret

000000000001c5b4 <_fiprintf_r>:
   1c5b4:	fb010113          	addi	sp,sp,-80
   1c5b8:	02810313          	addi	t1,sp,40
   1c5bc:	02d13423          	sd	a3,40(sp)
   1c5c0:	00030693          	mv	a3,t1
   1c5c4:	00113c23          	sd	ra,24(sp)
   1c5c8:	02e13823          	sd	a4,48(sp)
   1c5cc:	02f13c23          	sd	a5,56(sp)
   1c5d0:	05013023          	sd	a6,64(sp)
   1c5d4:	05113423          	sd	a7,72(sp)
   1c5d8:	00613423          	sd	t1,8(sp)
   1c5dc:	989fe0ef          	jal	ra,1af64 <_vfiprintf_r>
   1c5e0:	01813083          	ld	ra,24(sp)
   1c5e4:	05010113          	addi	sp,sp,80
   1c5e8:	00008067          	ret

000000000001c5ec <fiprintf>:
   1c5ec:	00050e13          	mv	t3,a0
   1c5f0:	fb010113          	addi	sp,sp,-80
   1c5f4:	7581b503          	ld	a0,1880(gp) # 241f8 <_impure_ptr>
   1c5f8:	02010313          	addi	t1,sp,32
   1c5fc:	02c13023          	sd	a2,32(sp)
   1c600:	02d13423          	sd	a3,40(sp)
   1c604:	00058613          	mv	a2,a1
   1c608:	00030693          	mv	a3,t1
   1c60c:	000e0593          	mv	a1,t3
   1c610:	00113c23          	sd	ra,24(sp)
   1c614:	02e13823          	sd	a4,48(sp)
   1c618:	02f13c23          	sd	a5,56(sp)
   1c61c:	05013023          	sd	a6,64(sp)
   1c620:	05113423          	sd	a7,72(sp)
   1c624:	00613423          	sd	t1,8(sp)
   1c628:	93dfe0ef          	jal	ra,1af64 <_vfiprintf_r>
   1c62c:	01813083          	ld	ra,24(sp)
   1c630:	05010113          	addi	sp,sp,80
   1c634:	00008067          	ret

000000000001c638 <__fputwc>:
   1c638:	fb010113          	addi	sp,sp,-80
   1c63c:	04813023          	sd	s0,64(sp)
   1c640:	03313423          	sd	s3,40(sp)
   1c644:	01613823          	sd	s6,16(sp)
   1c648:	04113423          	sd	ra,72(sp)
   1c64c:	02913c23          	sd	s1,56(sp)
   1c650:	03213823          	sd	s2,48(sp)
   1c654:	03413023          	sd	s4,32(sp)
   1c658:	01513c23          	sd	s5,24(sp)
   1c65c:	00050b13          	mv	s6,a0
   1c660:	00058993          	mv	s3,a1
   1c664:	00060413          	mv	s0,a2
   1c668:	78c000ef          	jal	ra,1cdf4 <__locale_mb_cur_max>
   1c66c:	00100793          	li	a5,1
   1c670:	02f51063          	bne	a0,a5,1c690 <__fputwc+0x58>
   1c674:	fff9879b          	addiw	a5,s3,-1
   1c678:	0fe00713          	li	a4,254
   1c67c:	00f76a63          	bltu	a4,a5,1c690 <__fputwc+0x58>
   1c680:	0ff9f713          	zext.b	a4,s3
   1c684:	00e10423          	sb	a4,8(sp)
   1c688:	00100913          	li	s2,1
   1c68c:	02c0006f          	j	1c6b8 <__fputwc+0x80>
   1c690:	0a440693          	addi	a3,s0,164
   1c694:	00098613          	mv	a2,s3
   1c698:	00810593          	addi	a1,sp,8
   1c69c:	000b0513          	mv	a0,s6
   1c6a0:	610020ef          	jal	ra,1ecb0 <_wcrtomb_r>
   1c6a4:	fff00793          	li	a5,-1
   1c6a8:	00050913          	mv	s2,a0
   1c6ac:	0af50263          	beq	a0,a5,1c750 <__fputwc+0x118>
   1c6b0:	08050c63          	beqz	a0,1c748 <__fputwc+0x110>
   1c6b4:	00814703          	lbu	a4,8(sp)
   1c6b8:	00000493          	li	s1,0
   1c6bc:	fff00a13          	li	s4,-1
   1c6c0:	00a00a93          	li	s5,10
   1c6c4:	0280006f          	j	1c6ec <__fputwc+0xb4>
   1c6c8:	00043783          	ld	a5,0(s0)
   1c6cc:	00178693          	addi	a3,a5,1
   1c6d0:	00d43023          	sd	a3,0(s0)
   1c6d4:	00e78023          	sb	a4,0(a5)
   1c6d8:	00148493          	addi	s1,s1,1
   1c6dc:	00810793          	addi	a5,sp,8
   1c6e0:	009787b3          	add	a5,a5,s1
   1c6e4:	0724f263          	bgeu	s1,s2,1c748 <__fputwc+0x110>
   1c6e8:	0007c703          	lbu	a4,0(a5)
   1c6ec:	00c42783          	lw	a5,12(s0)
   1c6f0:	fff7879b          	addiw	a5,a5,-1
   1c6f4:	00f42623          	sw	a5,12(s0)
   1c6f8:	fc07d8e3          	bgez	a5,1c6c8 <__fputwc+0x90>
   1c6fc:	02842683          	lw	a3,40(s0)
   1c700:	00070593          	mv	a1,a4
   1c704:	00040613          	mv	a2,s0
   1c708:	000b0513          	mv	a0,s6
   1c70c:	00d7c463          	blt	a5,a3,1c714 <__fputwc+0xdc>
   1c710:	fb571ce3          	bne	a4,s5,1c6c8 <__fputwc+0x90>
   1c714:	400020ef          	jal	ra,1eb14 <__swbuf_r>
   1c718:	fd4510e3          	bne	a0,s4,1c6d8 <__fputwc+0xa0>
   1c71c:	fff00513          	li	a0,-1
   1c720:	04813083          	ld	ra,72(sp)
   1c724:	04013403          	ld	s0,64(sp)
   1c728:	03813483          	ld	s1,56(sp)
   1c72c:	03013903          	ld	s2,48(sp)
   1c730:	02813983          	ld	s3,40(sp)
   1c734:	02013a03          	ld	s4,32(sp)
   1c738:	01813a83          	ld	s5,24(sp)
   1c73c:	01013b03          	ld	s6,16(sp)
   1c740:	05010113          	addi	sp,sp,80
   1c744:	00008067          	ret
   1c748:	0009851b          	sext.w	a0,s3
   1c74c:	fd5ff06f          	j	1c720 <__fputwc+0xe8>
   1c750:	01045783          	lhu	a5,16(s0)
   1c754:	fff00513          	li	a0,-1
   1c758:	0407e793          	ori	a5,a5,64
   1c75c:	00f41823          	sh	a5,16(s0)
   1c760:	fc1ff06f          	j	1c720 <__fputwc+0xe8>

000000000001c764 <_fputwc_r>:
   1c764:	01061783          	lh	a5,16(a2)
   1c768:	03279713          	slli	a4,a5,0x32
   1c76c:	02074063          	bltz	a4,1c78c <_fputwc_r+0x28>
   1c770:	0ac62703          	lw	a4,172(a2)
   1c774:	000026b7          	lui	a3,0x2
   1c778:	00d7e7b3          	or	a5,a5,a3
   1c77c:	000026b7          	lui	a3,0x2
   1c780:	00d76733          	or	a4,a4,a3
   1c784:	00f61823          	sh	a5,16(a2)
   1c788:	0ae62623          	sw	a4,172(a2)
   1c78c:	eadff06f          	j	1c638 <__fputwc>

000000000001c790 <fputwc>:
   1c790:	fe010113          	addi	sp,sp,-32
   1c794:	00813823          	sd	s0,16(sp)
   1c798:	7581b403          	ld	s0,1880(gp) # 241f8 <_impure_ptr>
   1c79c:	00113c23          	sd	ra,24(sp)
   1c7a0:	00058613          	mv	a2,a1
   1c7a4:	00050593          	mv	a1,a0
   1c7a8:	00040663          	beqz	s0,1c7b4 <fputwc+0x24>
   1c7ac:	05042783          	lw	a5,80(s0)
   1c7b0:	04078063          	beqz	a5,1c7f0 <fputwc+0x60>
   1c7b4:	01061783          	lh	a5,16(a2)
   1c7b8:	03279713          	slli	a4,a5,0x32
   1c7bc:	02074063          	bltz	a4,1c7dc <fputwc+0x4c>
   1c7c0:	0ac62703          	lw	a4,172(a2)
   1c7c4:	000026b7          	lui	a3,0x2
   1c7c8:	00d7e7b3          	or	a5,a5,a3
   1c7cc:	000026b7          	lui	a3,0x2
   1c7d0:	00d76733          	or	a4,a4,a3
   1c7d4:	00f61823          	sh	a5,16(a2)
   1c7d8:	0ae62623          	sw	a4,172(a2)
   1c7dc:	00040513          	mv	a0,s0
   1c7e0:	01013403          	ld	s0,16(sp)
   1c7e4:	01813083          	ld	ra,24(sp)
   1c7e8:	02010113          	addi	sp,sp,32
   1c7ec:	e4dff06f          	j	1c638 <__fputwc>
   1c7f0:	00a13023          	sd	a0,0(sp)
   1c7f4:	00040513          	mv	a0,s0
   1c7f8:	00c13423          	sd	a2,8(sp)
   1c7fc:	ba9f60ef          	jal	ra,133a4 <__sinit>
   1c800:	00813603          	ld	a2,8(sp)
   1c804:	00013583          	ld	a1,0(sp)
   1c808:	fadff06f          	j	1c7b4 <fputwc+0x24>

000000000001c80c <_fstat_r>:
   1c80c:	fe010113          	addi	sp,sp,-32
   1c810:	00058713          	mv	a4,a1
   1c814:	00813823          	sd	s0,16(sp)
   1c818:	00913423          	sd	s1,8(sp)
   1c81c:	00050413          	mv	s0,a0
   1c820:	00060593          	mv	a1,a2
   1c824:	00070513          	mv	a0,a4
   1c828:	00113c23          	sd	ra,24(sp)
   1c82c:	7801a823          	sw	zero,1936(gp) # 24230 <errno>
   1c830:	431020ef          	jal	ra,1f460 <_fstat>
   1c834:	fff00793          	li	a5,-1
   1c838:	00f50c63          	beq	a0,a5,1c850 <_fstat_r+0x44>
   1c83c:	01813083          	ld	ra,24(sp)
   1c840:	01013403          	ld	s0,16(sp)
   1c844:	00813483          	ld	s1,8(sp)
   1c848:	02010113          	addi	sp,sp,32
   1c84c:	00008067          	ret
   1c850:	7901a783          	lw	a5,1936(gp) # 24230 <errno>
   1c854:	fe0784e3          	beqz	a5,1c83c <_fstat_r+0x30>
   1c858:	01813083          	ld	ra,24(sp)
   1c85c:	00f42023          	sw	a5,0(s0)
   1c860:	01013403          	ld	s0,16(sp)
   1c864:	00813483          	ld	s1,8(sp)
   1c868:	02010113          	addi	sp,sp,32
   1c86c:	00008067          	ret

000000000001c870 <__sfvwrite_r>:
   1c870:	01063783          	ld	a5,16(a2)
   1c874:	28078863          	beqz	a5,1cb04 <__sfvwrite_r+0x294>
   1c878:	0105d783          	lhu	a5,16(a1)
   1c87c:	fa010113          	addi	sp,sp,-96
   1c880:	04813823          	sd	s0,80(sp)
   1c884:	03413823          	sd	s4,48(sp)
   1c888:	03513423          	sd	s5,40(sp)
   1c88c:	04113c23          	sd	ra,88(sp)
   1c890:	04913423          	sd	s1,72(sp)
   1c894:	05213023          	sd	s2,64(sp)
   1c898:	03313c23          	sd	s3,56(sp)
   1c89c:	03613023          	sd	s6,32(sp)
   1c8a0:	01713c23          	sd	s7,24(sp)
   1c8a4:	01813823          	sd	s8,16(sp)
   1c8a8:	01913423          	sd	s9,8(sp)
   1c8ac:	01a13023          	sd	s10,0(sp)
   1c8b0:	0087f713          	andi	a4,a5,8
   1c8b4:	00060a13          	mv	s4,a2
   1c8b8:	00050a93          	mv	s5,a0
   1c8bc:	00058413          	mv	s0,a1
   1c8c0:	08070863          	beqz	a4,1c950 <__sfvwrite_r+0xe0>
   1c8c4:	0185b703          	ld	a4,24(a1)
   1c8c8:	08070463          	beqz	a4,1c950 <__sfvwrite_r+0xe0>
   1c8cc:	0027f713          	andi	a4,a5,2
   1c8d0:	000a3903          	ld	s2,0(s4)
   1c8d4:	08070e63          	beqz	a4,1c970 <__sfvwrite_r+0x100>
   1c8d8:	04043783          	ld	a5,64(s0)
   1c8dc:	03043583          	ld	a1,48(s0)
   1c8e0:	80000b37          	lui	s6,0x80000
   1c8e4:	00000993          	li	s3,0
   1c8e8:	00000493          	li	s1,0
   1c8ec:	c00b4b13          	xori	s6,s6,-1024
   1c8f0:	00098613          	mv	a2,s3
   1c8f4:	000a8513          	mv	a0,s5
   1c8f8:	04048463          	beqz	s1,1c940 <__sfvwrite_r+0xd0>
   1c8fc:	00048693          	mv	a3,s1
   1c900:	009b7463          	bgeu	s6,s1,1c908 <__sfvwrite_r+0x98>
   1c904:	000b0693          	mv	a3,s6
   1c908:	0006869b          	sext.w	a3,a3
   1c90c:	000780e7          	jalr	a5
   1c910:	1ea05063          	blez	a0,1caf0 <__sfvwrite_r+0x280>
   1c914:	010a3783          	ld	a5,16(s4)
   1c918:	00a989b3          	add	s3,s3,a0
   1c91c:	40a484b3          	sub	s1,s1,a0
   1c920:	40a78533          	sub	a0,a5,a0
   1c924:	00aa3823          	sd	a0,16(s4)
   1c928:	16050e63          	beqz	a0,1caa4 <__sfvwrite_r+0x234>
   1c92c:	04043783          	ld	a5,64(s0)
   1c930:	03043583          	ld	a1,48(s0)
   1c934:	00098613          	mv	a2,s3
   1c938:	000a8513          	mv	a0,s5
   1c93c:	fc0490e3          	bnez	s1,1c8fc <__sfvwrite_r+0x8c>
   1c940:	00093983          	ld	s3,0(s2)
   1c944:	00893483          	ld	s1,8(s2)
   1c948:	01090913          	addi	s2,s2,16
   1c94c:	fa5ff06f          	j	1c8f0 <__sfvwrite_r+0x80>
   1c950:	00040593          	mv	a1,s0
   1c954:	000a8513          	mv	a0,s5
   1c958:	918f60ef          	jal	ra,12a70 <__swsetup_r>
   1c95c:	3a051c63          	bnez	a0,1cd14 <__sfvwrite_r+0x4a4>
   1c960:	01045783          	lhu	a5,16(s0)
   1c964:	000a3903          	ld	s2,0(s4)
   1c968:	0027f713          	andi	a4,a5,2
   1c96c:	f60716e3          	bnez	a4,1c8d8 <__sfvwrite_r+0x68>
   1c970:	0017f713          	andi	a4,a5,1
   1c974:	0a071263          	bnez	a4,1ca18 <__sfvwrite_r+0x1a8>
   1c978:	00c42483          	lw	s1,12(s0)
   1c97c:	00043503          	ld	a0,0(s0)
   1c980:	80000b37          	lui	s6,0x80000
   1c984:	ffeb4b93          	xori	s7,s6,-2
   1c988:	00000c13          	li	s8,0
   1c98c:	00000993          	li	s3,0
   1c990:	fffb4b13          	not	s6,s6
   1c994:	00048c93          	mv	s9,s1
   1c998:	06098863          	beqz	s3,1ca08 <__sfvwrite_r+0x198>
   1c99c:	2007f713          	andi	a4,a5,512
   1c9a0:	1c070863          	beqz	a4,1cb70 <__sfvwrite_r+0x300>
   1c9a4:	00048d13          	mv	s10,s1
   1c9a8:	2499fc63          	bgeu	s3,s1,1cc00 <__sfvwrite_r+0x390>
   1c9ac:	00098c93          	mv	s9,s3
   1c9b0:	00098d13          	mv	s10,s3
   1c9b4:	000d0613          	mv	a2,s10
   1c9b8:	000c0593          	mv	a1,s8
   1c9bc:	6bc000ef          	jal	ra,1d078 <memmove>
   1c9c0:	00c42703          	lw	a4,12(s0)
   1c9c4:	00043783          	ld	a5,0(s0)
   1c9c8:	00098493          	mv	s1,s3
   1c9cc:	41970cbb          	subw	s9,a4,s9
   1c9d0:	01a787b3          	add	a5,a5,s10
   1c9d4:	01942623          	sw	s9,12(s0)
   1c9d8:	00f43023          	sd	a5,0(s0)
   1c9dc:	00000993          	li	s3,0
   1c9e0:	010a3603          	ld	a2,16(s4)
   1c9e4:	009c0c33          	add	s8,s8,s1
   1c9e8:	409604b3          	sub	s1,a2,s1
   1c9ec:	009a3823          	sd	s1,16(s4)
   1c9f0:	0a048a63          	beqz	s1,1caa4 <__sfvwrite_r+0x234>
   1c9f4:	00c42483          	lw	s1,12(s0)
   1c9f8:	00043503          	ld	a0,0(s0)
   1c9fc:	01045783          	lhu	a5,16(s0)
   1ca00:	00048c93          	mv	s9,s1
   1ca04:	f8099ce3          	bnez	s3,1c99c <__sfvwrite_r+0x12c>
   1ca08:	00093c03          	ld	s8,0(s2)
   1ca0c:	00893983          	ld	s3,8(s2)
   1ca10:	01090913          	addi	s2,s2,16
   1ca14:	f81ff06f          	j	1c994 <__sfvwrite_r+0x124>
   1ca18:	00000993          	li	s3,0
   1ca1c:	00000513          	li	a0,0
   1ca20:	00000c93          	li	s9,0
   1ca24:	00000c13          	li	s8,0
   1ca28:	0e0c0263          	beqz	s8,1cb0c <__sfvwrite_r+0x29c>
   1ca2c:	0e050863          	beqz	a0,1cb1c <__sfvwrite_r+0x2ac>
   1ca30:	00098b93          	mv	s7,s3
   1ca34:	013c7463          	bgeu	s8,s3,1ca3c <__sfvwrite_r+0x1cc>
   1ca38:	000c0b93          	mv	s7,s8
   1ca3c:	00043503          	ld	a0,0(s0)
   1ca40:	01843783          	ld	a5,24(s0)
   1ca44:	02042683          	lw	a3,32(s0)
   1ca48:	000b8493          	mv	s1,s7
   1ca4c:	00a7f863          	bgeu	a5,a0,1ca5c <__sfvwrite_r+0x1ec>
   1ca50:	00c42783          	lw	a5,12(s0)
   1ca54:	00d78b3b          	addw	s6,a5,a3
   1ca58:	0f7b4263          	blt	s6,s7,1cb3c <__sfvwrite_r+0x2cc>
   1ca5c:	24dbc063          	blt	s7,a3,1cc9c <__sfvwrite_r+0x42c>
   1ca60:	04043783          	ld	a5,64(s0)
   1ca64:	03043583          	ld	a1,48(s0)
   1ca68:	000c8613          	mv	a2,s9
   1ca6c:	000a8513          	mv	a0,s5
   1ca70:	000780e7          	jalr	a5
   1ca74:	00050493          	mv	s1,a0
   1ca78:	06a05c63          	blez	a0,1caf0 <__sfvwrite_r+0x280>
   1ca7c:	0005079b          	sext.w	a5,a0
   1ca80:	40f989bb          	subw	s3,s3,a5
   1ca84:	00100513          	li	a0,1
   1ca88:	04098c63          	beqz	s3,1cae0 <__sfvwrite_r+0x270>
   1ca8c:	010a3783          	ld	a5,16(s4)
   1ca90:	009c8cb3          	add	s9,s9,s1
   1ca94:	409c0c33          	sub	s8,s8,s1
   1ca98:	409784b3          	sub	s1,a5,s1
   1ca9c:	009a3823          	sd	s1,16(s4)
   1caa0:	f80494e3          	bnez	s1,1ca28 <__sfvwrite_r+0x1b8>
   1caa4:	00000513          	li	a0,0
   1caa8:	05813083          	ld	ra,88(sp)
   1caac:	05013403          	ld	s0,80(sp)
   1cab0:	04813483          	ld	s1,72(sp)
   1cab4:	04013903          	ld	s2,64(sp)
   1cab8:	03813983          	ld	s3,56(sp)
   1cabc:	03013a03          	ld	s4,48(sp)
   1cac0:	02813a83          	ld	s5,40(sp)
   1cac4:	02013b03          	ld	s6,32(sp)
   1cac8:	01813b83          	ld	s7,24(sp)
   1cacc:	01013c03          	ld	s8,16(sp)
   1cad0:	00813c83          	ld	s9,8(sp)
   1cad4:	00013d03          	ld	s10,0(sp)
   1cad8:	06010113          	addi	sp,sp,96
   1cadc:	00008067          	ret
   1cae0:	00040593          	mv	a1,s0
   1cae4:	000a8513          	mv	a0,s5
   1cae8:	c90f60ef          	jal	ra,12f78 <_fflush_r>
   1caec:	fa0500e3          	beqz	a0,1ca8c <__sfvwrite_r+0x21c>
   1caf0:	01041783          	lh	a5,16(s0)
   1caf4:	0407e793          	ori	a5,a5,64
   1caf8:	00f41823          	sh	a5,16(s0)
   1cafc:	fff00513          	li	a0,-1
   1cb00:	fa9ff06f          	j	1caa8 <__sfvwrite_r+0x238>
   1cb04:	00000513          	li	a0,0
   1cb08:	00008067          	ret
   1cb0c:	00893c03          	ld	s8,8(s2)
   1cb10:	00093c83          	ld	s9,0(s2)
   1cb14:	01090913          	addi	s2,s2,16
   1cb18:	fe0c0ae3          	beqz	s8,1cb0c <__sfvwrite_r+0x29c>
   1cb1c:	000c0613          	mv	a2,s8
   1cb20:	00a00593          	li	a1,10
   1cb24:	000c8513          	mv	a0,s9
   1cb28:	d68fa0ef          	jal	ra,17090 <memchr>
   1cb2c:	1c050863          	beqz	a0,1ccfc <__sfvwrite_r+0x48c>
   1cb30:	00150513          	addi	a0,a0,1
   1cb34:	419509bb          	subw	s3,a0,s9
   1cb38:	ef9ff06f          	j	1ca30 <__sfvwrite_r+0x1c0>
   1cb3c:	000c8593          	mv	a1,s9
   1cb40:	000b0613          	mv	a2,s6
   1cb44:	534000ef          	jal	ra,1d078 <memmove>
   1cb48:	00043783          	ld	a5,0(s0)
   1cb4c:	00040593          	mv	a1,s0
   1cb50:	000a8513          	mv	a0,s5
   1cb54:	016787b3          	add	a5,a5,s6
   1cb58:	00f43023          	sd	a5,0(s0)
   1cb5c:	c1cf60ef          	jal	ra,12f78 <_fflush_r>
   1cb60:	f80518e3          	bnez	a0,1caf0 <__sfvwrite_r+0x280>
   1cb64:	000b0793          	mv	a5,s6
   1cb68:	000b0493          	mv	s1,s6
   1cb6c:	f15ff06f          	j	1ca80 <__sfvwrite_r+0x210>
   1cb70:	01843783          	ld	a5,24(s0)
   1cb74:	04a7e263          	bltu	a5,a0,1cbb8 <__sfvwrite_r+0x348>
   1cb78:	02042783          	lw	a5,32(s0)
   1cb7c:	02f9ee63          	bltu	s3,a5,1cbb8 <__sfvwrite_r+0x348>
   1cb80:	00098693          	mv	a3,s3
   1cb84:	013bf463          	bgeu	s7,s3,1cb8c <__sfvwrite_r+0x31c>
   1cb88:	000b0693          	mv	a3,s6
   1cb8c:	02f6c6bb          	divw	a3,a3,a5
   1cb90:	04043703          	ld	a4,64(s0)
   1cb94:	03043583          	ld	a1,48(s0)
   1cb98:	000c0613          	mv	a2,s8
   1cb9c:	000a8513          	mv	a0,s5
   1cba0:	02f686bb          	mulw	a3,a3,a5
   1cba4:	000700e7          	jalr	a4
   1cba8:	00050493          	mv	s1,a0
   1cbac:	f4a052e3          	blez	a0,1caf0 <__sfvwrite_r+0x280>
   1cbb0:	409989b3          	sub	s3,s3,s1
   1cbb4:	e2dff06f          	j	1c9e0 <__sfvwrite_r+0x170>
   1cbb8:	0099f463          	bgeu	s3,s1,1cbc0 <__sfvwrite_r+0x350>
   1cbbc:	00098493          	mv	s1,s3
   1cbc0:	00048613          	mv	a2,s1
   1cbc4:	000c0593          	mv	a1,s8
   1cbc8:	4b0000ef          	jal	ra,1d078 <memmove>
   1cbcc:	00c42783          	lw	a5,12(s0)
   1cbd0:	00043703          	ld	a4,0(s0)
   1cbd4:	409786bb          	subw	a3,a5,s1
   1cbd8:	00970733          	add	a4,a4,s1
   1cbdc:	00d42623          	sw	a3,12(s0)
   1cbe0:	00e43023          	sd	a4,0(s0)
   1cbe4:	fc0696e3          	bnez	a3,1cbb0 <__sfvwrite_r+0x340>
   1cbe8:	00040593          	mv	a1,s0
   1cbec:	000a8513          	mv	a0,s5
   1cbf0:	b88f60ef          	jal	ra,12f78 <_fflush_r>
   1cbf4:	ee051ee3          	bnez	a0,1caf0 <__sfvwrite_r+0x280>
   1cbf8:	409989b3          	sub	s3,s3,s1
   1cbfc:	de5ff06f          	j	1c9e0 <__sfvwrite_r+0x170>
   1cc00:	4807f713          	andi	a4,a5,1152
   1cc04:	da0708e3          	beqz	a4,1c9b4 <__sfvwrite_r+0x144>
   1cc08:	02042483          	lw	s1,32(s0)
   1cc0c:	01843583          	ld	a1,24(s0)
   1cc10:	00198713          	addi	a4,s3,1
   1cc14:	0014969b          	slliw	a3,s1,0x1
   1cc18:	009686bb          	addw	a3,a3,s1
   1cc1c:	40b50533          	sub	a0,a0,a1
   1cc20:	01f6d49b          	srliw	s1,a3,0x1f
   1cc24:	00050d1b          	sext.w	s10,a0
   1cc28:	00d484bb          	addw	s1,s1,a3
   1cc2c:	4014d49b          	sraiw	s1,s1,0x1
   1cc30:	01a70733          	add	a4,a4,s10
   1cc34:	00e4f663          	bgeu	s1,a4,1cc40 <__sfvwrite_r+0x3d0>
   1cc38:	0019849b          	addiw	s1,s3,1
   1cc3c:	00a484bb          	addw	s1,s1,a0
   1cc40:	4007f793          	andi	a5,a5,1024
   1cc44:	08078263          	beqz	a5,1ccc8 <__sfvwrite_r+0x458>
   1cc48:	00048593          	mv	a1,s1
   1cc4c:	000a8513          	mv	a0,s5
   1cc50:	c39f90ef          	jal	ra,16888 <_malloc_r>
   1cc54:	00050c93          	mv	s9,a0
   1cc58:	0a050663          	beqz	a0,1cd04 <__sfvwrite_r+0x494>
   1cc5c:	01843583          	ld	a1,24(s0)
   1cc60:	000d0613          	mv	a2,s10
   1cc64:	2ec000ef          	jal	ra,1cf50 <memcpy>
   1cc68:	01045783          	lhu	a5,16(s0)
   1cc6c:	b7f7f793          	andi	a5,a5,-1153
   1cc70:	0807e793          	ori	a5,a5,128
   1cc74:	00f41823          	sh	a5,16(s0)
   1cc78:	01ac8533          	add	a0,s9,s10
   1cc7c:	41a487bb          	subw	a5,s1,s10
   1cc80:	01943c23          	sd	s9,24(s0)
   1cc84:	00a43023          	sd	a0,0(s0)
   1cc88:	02942023          	sw	s1,32(s0)
   1cc8c:	00098c93          	mv	s9,s3
   1cc90:	00f42623          	sw	a5,12(s0)
   1cc94:	00098d13          	mv	s10,s3
   1cc98:	d1dff06f          	j	1c9b4 <__sfvwrite_r+0x144>
   1cc9c:	000b8613          	mv	a2,s7
   1cca0:	000c8593          	mv	a1,s9
   1cca4:	3d4000ef          	jal	ra,1d078 <memmove>
   1cca8:	00c42683          	lw	a3,12(s0)
   1ccac:	00043703          	ld	a4,0(s0)
   1ccb0:	000b879b          	sext.w	a5,s7
   1ccb4:	417686bb          	subw	a3,a3,s7
   1ccb8:	01770733          	add	a4,a4,s7
   1ccbc:	00d42623          	sw	a3,12(s0)
   1ccc0:	00e43023          	sd	a4,0(s0)
   1ccc4:	dbdff06f          	j	1ca80 <__sfvwrite_r+0x210>
   1ccc8:	00048613          	mv	a2,s1
   1cccc:	000a8513          	mv	a0,s5
   1ccd0:	530000ef          	jal	ra,1d200 <_realloc_r>
   1ccd4:	00050c93          	mv	s9,a0
   1ccd8:	fa0510e3          	bnez	a0,1cc78 <__sfvwrite_r+0x408>
   1ccdc:	01843583          	ld	a1,24(s0)
   1cce0:	000a8513          	mv	a0,s5
   1cce4:	899f60ef          	jal	ra,1357c <_free_r>
   1cce8:	01041783          	lh	a5,16(s0)
   1ccec:	00c00713          	li	a4,12
   1ccf0:	00eaa023          	sw	a4,0(s5)
   1ccf4:	f7f7f793          	andi	a5,a5,-129
   1ccf8:	dfdff06f          	j	1caf4 <__sfvwrite_r+0x284>
   1ccfc:	001c099b          	addiw	s3,s8,1
   1cd00:	d31ff06f          	j	1ca30 <__sfvwrite_r+0x1c0>
   1cd04:	00c00713          	li	a4,12
   1cd08:	01041783          	lh	a5,16(s0)
   1cd0c:	00eaa023          	sw	a4,0(s5)
   1cd10:	de5ff06f          	j	1caf4 <__sfvwrite_r+0x284>
   1cd14:	fff00513          	li	a0,-1
   1cd18:	d91ff06f          	j	1caa8 <__sfvwrite_r+0x238>

000000000001cd1c <_isatty_r>:
   1cd1c:	fe010113          	addi	sp,sp,-32
   1cd20:	00813823          	sd	s0,16(sp)
   1cd24:	00913423          	sd	s1,8(sp)
   1cd28:	00050413          	mv	s0,a0
   1cd2c:	00058513          	mv	a0,a1
   1cd30:	00113c23          	sd	ra,24(sp)
   1cd34:	7801a823          	sw	zero,1936(gp) # 24230 <errno>
   1cd38:	794020ef          	jal	ra,1f4cc <_isatty>
   1cd3c:	fff00793          	li	a5,-1
   1cd40:	00f50c63          	beq	a0,a5,1cd58 <_isatty_r+0x3c>
   1cd44:	01813083          	ld	ra,24(sp)
   1cd48:	01013403          	ld	s0,16(sp)
   1cd4c:	00813483          	ld	s1,8(sp)
   1cd50:	02010113          	addi	sp,sp,32
   1cd54:	00008067          	ret
   1cd58:	7901a783          	lw	a5,1936(gp) # 24230 <errno>
   1cd5c:	fe0784e3          	beqz	a5,1cd44 <_isatty_r+0x28>
   1cd60:	01813083          	ld	ra,24(sp)
   1cd64:	00f42023          	sw	a5,0(s0)
   1cd68:	01013403          	ld	s0,16(sp)
   1cd6c:	00813483          	ld	s1,8(sp)
   1cd70:	02010113          	addi	sp,sp,32
   1cd74:	00008067          	ret

000000000001cd78 <_setlocale_r>:
   1cd78:	fe010113          	addi	sp,sp,-32
   1cd7c:	00113c23          	sd	ra,24(sp)
   1cd80:	00813823          	sd	s0,16(sp)
   1cd84:	00913423          	sd	s1,8(sp)
   1cd88:	02060c63          	beqz	a2,1cdc0 <_setlocale_r+0x48>
   1cd8c:	000225b7          	lui	a1,0x22
   1cd90:	cb858593          	addi	a1,a1,-840 # 21cb8 <zeroes.0+0x58>
   1cd94:	00060513          	mv	a0,a2
   1cd98:	00060413          	mv	s0,a2
   1cd9c:	38d000ef          	jal	ra,1d928 <strcmp>
   1cda0:	000224b7          	lui	s1,0x22
   1cda4:	02051263          	bnez	a0,1cdc8 <_setlocale_r+0x50>
   1cda8:	cb048513          	addi	a0,s1,-848 # 21cb0 <zeroes.0+0x50>
   1cdac:	01813083          	ld	ra,24(sp)
   1cdb0:	01013403          	ld	s0,16(sp)
   1cdb4:	00813483          	ld	s1,8(sp)
   1cdb8:	02010113          	addi	sp,sp,32
   1cdbc:	00008067          	ret
   1cdc0:	000224b7          	lui	s1,0x22
   1cdc4:	fe5ff06f          	j	1cda8 <_setlocale_r+0x30>
   1cdc8:	cb048593          	addi	a1,s1,-848 # 21cb0 <zeroes.0+0x50>
   1cdcc:	00040513          	mv	a0,s0
   1cdd0:	359000ef          	jal	ra,1d928 <strcmp>
   1cdd4:	fc050ae3          	beqz	a0,1cda8 <_setlocale_r+0x30>
   1cdd8:	000215b7          	lui	a1,0x21
   1cddc:	2d858593          	addi	a1,a1,728 # 212d8 <__clzdi2+0x74>
   1cde0:	00040513          	mv	a0,s0
   1cde4:	345000ef          	jal	ra,1d928 <strcmp>
   1cde8:	fc0500e3          	beqz	a0,1cda8 <_setlocale_r+0x30>
   1cdec:	00000513          	li	a0,0
   1cdf0:	fbdff06f          	j	1cdac <_setlocale_r+0x34>

000000000001cdf4 <__locale_mb_cur_max>:
   1cdf4:	6d01c503          	lbu	a0,1744(gp) # 24170 <__global_locale+0x160>
   1cdf8:	00008067          	ret

000000000001cdfc <setlocale>:
   1cdfc:	fe010113          	addi	sp,sp,-32
   1ce00:	00113c23          	sd	ra,24(sp)
   1ce04:	00813823          	sd	s0,16(sp)
   1ce08:	00913423          	sd	s1,8(sp)
   1ce0c:	02058c63          	beqz	a1,1ce44 <setlocale+0x48>
   1ce10:	00058413          	mv	s0,a1
   1ce14:	000225b7          	lui	a1,0x22
   1ce18:	cb858593          	addi	a1,a1,-840 # 21cb8 <zeroes.0+0x58>
   1ce1c:	00040513          	mv	a0,s0
   1ce20:	309000ef          	jal	ra,1d928 <strcmp>
   1ce24:	000224b7          	lui	s1,0x22
   1ce28:	02051263          	bnez	a0,1ce4c <setlocale+0x50>
   1ce2c:	cb048513          	addi	a0,s1,-848 # 21cb0 <zeroes.0+0x50>
   1ce30:	01813083          	ld	ra,24(sp)
   1ce34:	01013403          	ld	s0,16(sp)
   1ce38:	00813483          	ld	s1,8(sp)
   1ce3c:	02010113          	addi	sp,sp,32
   1ce40:	00008067          	ret
   1ce44:	000224b7          	lui	s1,0x22
   1ce48:	fe5ff06f          	j	1ce2c <setlocale+0x30>
   1ce4c:	cb048593          	addi	a1,s1,-848 # 21cb0 <zeroes.0+0x50>
   1ce50:	00040513          	mv	a0,s0
   1ce54:	2d5000ef          	jal	ra,1d928 <strcmp>
   1ce58:	fc050ae3          	beqz	a0,1ce2c <setlocale+0x30>
   1ce5c:	000215b7          	lui	a1,0x21
   1ce60:	2d858593          	addi	a1,a1,728 # 212d8 <__clzdi2+0x74>
   1ce64:	00040513          	mv	a0,s0
   1ce68:	2c1000ef          	jal	ra,1d928 <strcmp>
   1ce6c:	fc0500e3          	beqz	a0,1ce2c <setlocale+0x30>
   1ce70:	00000513          	li	a0,0
   1ce74:	fbdff06f          	j	1ce30 <setlocale+0x34>

000000000001ce78 <_lseek_r>:
   1ce78:	fe010113          	addi	sp,sp,-32
   1ce7c:	00058713          	mv	a4,a1
   1ce80:	00813823          	sd	s0,16(sp)
   1ce84:	00913423          	sd	s1,8(sp)
   1ce88:	00060593          	mv	a1,a2
   1ce8c:	00050413          	mv	s0,a0
   1ce90:	00068613          	mv	a2,a3
   1ce94:	00070513          	mv	a0,a4
   1ce98:	00113c23          	sd	ra,24(sp)
   1ce9c:	7801a823          	sw	zero,1936(gp) # 24230 <errno>
   1cea0:	690020ef          	jal	ra,1f530 <_lseek>
   1cea4:	fff00793          	li	a5,-1
   1cea8:	00f50c63          	beq	a0,a5,1cec0 <_lseek_r+0x48>
   1ceac:	01813083          	ld	ra,24(sp)
   1ceb0:	01013403          	ld	s0,16(sp)
   1ceb4:	00813483          	ld	s1,8(sp)
   1ceb8:	02010113          	addi	sp,sp,32
   1cebc:	00008067          	ret
   1cec0:	7901a783          	lw	a5,1936(gp) # 24230 <errno>
   1cec4:	fe0784e3          	beqz	a5,1ceac <_lseek_r+0x34>
   1cec8:	01813083          	ld	ra,24(sp)
   1cecc:	00f42023          	sw	a5,0(s0)
   1ced0:	01013403          	ld	s0,16(sp)
   1ced4:	00813483          	ld	s1,8(sp)
   1ced8:	02010113          	addi	sp,sp,32
   1cedc:	00008067          	ret

000000000001cee0 <_mbtowc_r>:
   1cee0:	6581b783          	ld	a5,1624(gp) # 240f8 <__global_locale+0xe8>
   1cee4:	00078067          	jr	a5

000000000001cee8 <__ascii_mbtowc>:
   1cee8:	02058063          	beqz	a1,1cf08 <__ascii_mbtowc+0x20>
   1ceec:	04060263          	beqz	a2,1cf30 <__ascii_mbtowc+0x48>
   1cef0:	04068863          	beqz	a3,1cf40 <__ascii_mbtowc+0x58>
   1cef4:	00064783          	lbu	a5,0(a2)
   1cef8:	00f5a023          	sw	a5,0(a1)
   1cefc:	00064503          	lbu	a0,0(a2)
   1cf00:	00a03533          	snez	a0,a0
   1cf04:	00008067          	ret
   1cf08:	ff010113          	addi	sp,sp,-16
   1cf0c:	00c10593          	addi	a1,sp,12
   1cf10:	02060463          	beqz	a2,1cf38 <__ascii_mbtowc+0x50>
   1cf14:	02068a63          	beqz	a3,1cf48 <__ascii_mbtowc+0x60>
   1cf18:	00064783          	lbu	a5,0(a2)
   1cf1c:	00f5a023          	sw	a5,0(a1)
   1cf20:	00064503          	lbu	a0,0(a2)
   1cf24:	00a03533          	snez	a0,a0
   1cf28:	01010113          	addi	sp,sp,16
   1cf2c:	00008067          	ret
   1cf30:	00000513          	li	a0,0
   1cf34:	00008067          	ret
   1cf38:	00000513          	li	a0,0
   1cf3c:	fedff06f          	j	1cf28 <__ascii_mbtowc+0x40>
   1cf40:	ffe00513          	li	a0,-2
   1cf44:	00008067          	ret
   1cf48:	ffe00513          	li	a0,-2
   1cf4c:	fddff06f          	j	1cf28 <__ascii_mbtowc+0x40>

000000000001cf50 <memcpy>:
   1cf50:	00a5c7b3          	xor	a5,a1,a0
   1cf54:	0077f793          	andi	a5,a5,7
   1cf58:	00c508b3          	add	a7,a0,a2
   1cf5c:	06079663          	bnez	a5,1cfc8 <memcpy+0x78>
   1cf60:	00700793          	li	a5,7
   1cf64:	06c7f263          	bgeu	a5,a2,1cfc8 <memcpy+0x78>
   1cf68:	00757793          	andi	a5,a0,7
   1cf6c:	00050713          	mv	a4,a0
   1cf70:	0c079a63          	bnez	a5,1d044 <memcpy+0xf4>
   1cf74:	ff88f613          	andi	a2,a7,-8
   1cf78:	40e606b3          	sub	a3,a2,a4
   1cf7c:	04000793          	li	a5,64
   1cf80:	04000293          	li	t0,64
   1cf84:	06d7c263          	blt	a5,a3,1cfe8 <memcpy+0x98>
   1cf88:	00058693          	mv	a3,a1
   1cf8c:	00070793          	mv	a5,a4
   1cf90:	02c77863          	bgeu	a4,a2,1cfc0 <memcpy+0x70>
   1cf94:	0006b803          	ld	a6,0(a3) # 2000 <register_fini-0xe0b0>
   1cf98:	00878793          	addi	a5,a5,8
   1cf9c:	00868693          	addi	a3,a3,8
   1cfa0:	ff07bc23          	sd	a6,-8(a5)
   1cfa4:	fec7e8e3          	bltu	a5,a2,1cf94 <memcpy+0x44>
   1cfa8:	fff60793          	addi	a5,a2,-1
   1cfac:	40e787b3          	sub	a5,a5,a4
   1cfb0:	ff87f793          	andi	a5,a5,-8
   1cfb4:	00878793          	addi	a5,a5,8
   1cfb8:	00f70733          	add	a4,a4,a5
   1cfbc:	00f585b3          	add	a1,a1,a5
   1cfc0:	01176863          	bltu	a4,a7,1cfd0 <memcpy+0x80>
   1cfc4:	00008067          	ret
   1cfc8:	00050713          	mv	a4,a0
   1cfcc:	ff157ce3          	bgeu	a0,a7,1cfc4 <memcpy+0x74>
   1cfd0:	0005c783          	lbu	a5,0(a1)
   1cfd4:	00170713          	addi	a4,a4,1
   1cfd8:	00158593          	addi	a1,a1,1
   1cfdc:	fef70fa3          	sb	a5,-1(a4)
   1cfe0:	ff1768e3          	bltu	a4,a7,1cfd0 <memcpy+0x80>
   1cfe4:	00008067          	ret
   1cfe8:	0085b683          	ld	a3,8(a1)
   1cfec:	0385b783          	ld	a5,56(a1)
   1cff0:	0005bf83          	ld	t6,0(a1)
   1cff4:	0105bf03          	ld	t5,16(a1)
   1cff8:	0185be83          	ld	t4,24(a1)
   1cffc:	0205be03          	ld	t3,32(a1)
   1d000:	0285b303          	ld	t1,40(a1)
   1d004:	0305b803          	ld	a6,48(a1)
   1d008:	00d73423          	sd	a3,8(a4)
   1d00c:	0405b683          	ld	a3,64(a1)
   1d010:	01f73023          	sd	t6,0(a4)
   1d014:	01e73823          	sd	t5,16(a4)
   1d018:	01d73c23          	sd	t4,24(a4)
   1d01c:	03c73023          	sd	t3,32(a4)
   1d020:	02673423          	sd	t1,40(a4)
   1d024:	03073823          	sd	a6,48(a4)
   1d028:	02f73c23          	sd	a5,56(a4)
   1d02c:	04870713          	addi	a4,a4,72
   1d030:	40e607b3          	sub	a5,a2,a4
   1d034:	fed73c23          	sd	a3,-8(a4)
   1d038:	04858593          	addi	a1,a1,72
   1d03c:	faf2c6e3          	blt	t0,a5,1cfe8 <memcpy+0x98>
   1d040:	f49ff06f          	j	1cf88 <memcpy+0x38>
   1d044:	0005c683          	lbu	a3,0(a1)
   1d048:	00170713          	addi	a4,a4,1
   1d04c:	00777793          	andi	a5,a4,7
   1d050:	fed70fa3          	sb	a3,-1(a4)
   1d054:	00158593          	addi	a1,a1,1
   1d058:	f0078ee3          	beqz	a5,1cf74 <memcpy+0x24>
   1d05c:	0005c683          	lbu	a3,0(a1)
   1d060:	00170713          	addi	a4,a4,1
   1d064:	00777793          	andi	a5,a4,7
   1d068:	fed70fa3          	sb	a3,-1(a4)
   1d06c:	00158593          	addi	a1,a1,1
   1d070:	fc079ae3          	bnez	a5,1d044 <memcpy+0xf4>
   1d074:	f01ff06f          	j	1cf74 <memcpy+0x24>

000000000001d078 <memmove>:
   1d078:	02a5f663          	bgeu	a1,a0,1d0a4 <memmove+0x2c>
   1d07c:	00c587b3          	add	a5,a1,a2
   1d080:	02f57263          	bgeu	a0,a5,1d0a4 <memmove+0x2c>
   1d084:	00c50733          	add	a4,a0,a2
   1d088:	0e060a63          	beqz	a2,1d17c <memmove+0x104>
   1d08c:	fff7c683          	lbu	a3,-1(a5)
   1d090:	fff78793          	addi	a5,a5,-1
   1d094:	fff70713          	addi	a4,a4,-1
   1d098:	00d70023          	sb	a3,0(a4)
   1d09c:	fef598e3          	bne	a1,a5,1d08c <memmove+0x14>
   1d0a0:	00008067          	ret
   1d0a4:	01f00793          	li	a5,31
   1d0a8:	02c7e863          	bltu	a5,a2,1d0d8 <memmove+0x60>
   1d0ac:	00050793          	mv	a5,a0
   1d0b0:	fff60693          	addi	a3,a2,-1
   1d0b4:	0c060c63          	beqz	a2,1d18c <memmove+0x114>
   1d0b8:	00168693          	addi	a3,a3,1
   1d0bc:	00d786b3          	add	a3,a5,a3
   1d0c0:	0005c703          	lbu	a4,0(a1)
   1d0c4:	00178793          	addi	a5,a5,1
   1d0c8:	00158593          	addi	a1,a1,1
   1d0cc:	fee78fa3          	sb	a4,-1(a5)
   1d0d0:	fed798e3          	bne	a5,a3,1d0c0 <memmove+0x48>
   1d0d4:	00008067          	ret
   1d0d8:	00a5e7b3          	or	a5,a1,a0
   1d0dc:	0077f793          	andi	a5,a5,7
   1d0e0:	0a079063          	bnez	a5,1d180 <memmove+0x108>
   1d0e4:	fe060893          	addi	a7,a2,-32
   1d0e8:	fe08f893          	andi	a7,a7,-32
   1d0ec:	02088893          	addi	a7,a7,32
   1d0f0:	01150833          	add	a6,a0,a7
   1d0f4:	00058713          	mv	a4,a1
   1d0f8:	00050793          	mv	a5,a0
   1d0fc:	00073683          	ld	a3,0(a4)
   1d100:	02070713          	addi	a4,a4,32
   1d104:	02078793          	addi	a5,a5,32
   1d108:	fed7b023          	sd	a3,-32(a5)
   1d10c:	fe873683          	ld	a3,-24(a4)
   1d110:	fed7b423          	sd	a3,-24(a5)
   1d114:	ff073683          	ld	a3,-16(a4)
   1d118:	fed7b823          	sd	a3,-16(a5)
   1d11c:	ff873683          	ld	a3,-8(a4)
   1d120:	fed7bc23          	sd	a3,-8(a5)
   1d124:	fcf81ce3          	bne	a6,a5,1d0fc <memmove+0x84>
   1d128:	01867713          	andi	a4,a2,24
   1d12c:	011585b3          	add	a1,a1,a7
   1d130:	01f67813          	andi	a6,a2,31
   1d134:	04070e63          	beqz	a4,1d190 <memmove+0x118>
   1d138:	00058713          	mv	a4,a1
   1d13c:	00078893          	mv	a7,a5
   1d140:	00700e13          	li	t3,7
   1d144:	00073303          	ld	t1,0(a4)
   1d148:	00870713          	addi	a4,a4,8
   1d14c:	40e806b3          	sub	a3,a6,a4
   1d150:	0068b023          	sd	t1,0(a7)
   1d154:	00d586b3          	add	a3,a1,a3
   1d158:	00888893          	addi	a7,a7,8
   1d15c:	fede64e3          	bltu	t3,a3,1d144 <memmove+0xcc>
   1d160:	ff880713          	addi	a4,a6,-8
   1d164:	ff877713          	andi	a4,a4,-8
   1d168:	00870713          	addi	a4,a4,8
   1d16c:	00767613          	andi	a2,a2,7
   1d170:	00e787b3          	add	a5,a5,a4
   1d174:	00e585b3          	add	a1,a1,a4
   1d178:	f39ff06f          	j	1d0b0 <memmove+0x38>
   1d17c:	00008067          	ret
   1d180:	fff60693          	addi	a3,a2,-1
   1d184:	00050793          	mv	a5,a0
   1d188:	f31ff06f          	j	1d0b8 <memmove+0x40>
   1d18c:	00008067          	ret
   1d190:	00080613          	mv	a2,a6
   1d194:	f1dff06f          	j	1d0b0 <memmove+0x38>

000000000001d198 <_read_r>:
   1d198:	fe010113          	addi	sp,sp,-32
   1d19c:	00058713          	mv	a4,a1
   1d1a0:	00813823          	sd	s0,16(sp)
   1d1a4:	00913423          	sd	s1,8(sp)
   1d1a8:	00060593          	mv	a1,a2
   1d1ac:	00050413          	mv	s0,a0
   1d1b0:	00068613          	mv	a2,a3
   1d1b4:	00070513          	mv	a0,a4
   1d1b8:	00113c23          	sd	ra,24(sp)
   1d1bc:	7801a823          	sw	zero,1936(gp) # 24230 <errno>
   1d1c0:	3b4020ef          	jal	ra,1f574 <_read>
   1d1c4:	fff00793          	li	a5,-1
   1d1c8:	00f50c63          	beq	a0,a5,1d1e0 <_read_r+0x48>
   1d1cc:	01813083          	ld	ra,24(sp)
   1d1d0:	01013403          	ld	s0,16(sp)
   1d1d4:	00813483          	ld	s1,8(sp)
   1d1d8:	02010113          	addi	sp,sp,32
   1d1dc:	00008067          	ret
   1d1e0:	7901a783          	lw	a5,1936(gp) # 24230 <errno>
   1d1e4:	fe0784e3          	beqz	a5,1d1cc <_read_r+0x34>
   1d1e8:	01813083          	ld	ra,24(sp)
   1d1ec:	00f42023          	sw	a5,0(s0)
   1d1f0:	01013403          	ld	s0,16(sp)
   1d1f4:	00813483          	ld	s1,8(sp)
   1d1f8:	02010113          	addi	sp,sp,32
   1d1fc:	00008067          	ret

000000000001d200 <_realloc_r>:
   1d200:	fb010113          	addi	sp,sp,-80
   1d204:	03213823          	sd	s2,48(sp)
   1d208:	04113423          	sd	ra,72(sp)
   1d20c:	04813023          	sd	s0,64(sp)
   1d210:	02913c23          	sd	s1,56(sp)
   1d214:	03313423          	sd	s3,40(sp)
   1d218:	03413023          	sd	s4,32(sp)
   1d21c:	01513c23          	sd	s5,24(sp)
   1d220:	01613823          	sd	s6,16(sp)
   1d224:	01713423          	sd	s7,8(sp)
   1d228:	01813023          	sd	s8,0(sp)
   1d22c:	00060913          	mv	s2,a2
   1d230:	1c058663          	beqz	a1,1d3fc <_realloc_r+0x1fc>
   1d234:	00058413          	mv	s0,a1
   1d238:	00050a93          	mv	s5,a0
   1d23c:	f1df90ef          	jal	ra,17158 <__malloc_lock>
   1d240:	ff843703          	ld	a4,-8(s0)
   1d244:	01790493          	addi	s1,s2,23
   1d248:	02e00793          	li	a5,46
   1d24c:	ff040b13          	addi	s6,s0,-16
   1d250:	ffc77a13          	andi	s4,a4,-4
   1d254:	0e97fa63          	bgeu	a5,s1,1d348 <_realloc_r+0x148>
   1d258:	800007b7          	lui	a5,0x80000
   1d25c:	ff04f493          	andi	s1,s1,-16
   1d260:	fff7c793          	not	a5,a5
   1d264:	0e97e663          	bltu	a5,s1,1d350 <_realloc_r+0x150>
   1d268:	0f24e463          	bltu	s1,s2,1d350 <_realloc_r+0x150>
   1d26c:	014b09b3          	add	s3,s6,s4
   1d270:	129a5c63          	bge	s4,s1,1d3a8 <_realloc_r+0x1a8>
   1d274:	000247b7          	lui	a5,0x24
   1d278:	80078b93          	addi	s7,a5,-2048 # 23800 <__malloc_av_>
   1d27c:	010bb683          	ld	a3,16(s7)
   1d280:	0089b783          	ld	a5,8(s3)
   1d284:	1d368e63          	beq	a3,s3,1d460 <_realloc_r+0x260>
   1d288:	ffe7f693          	andi	a3,a5,-2
   1d28c:	00d986b3          	add	a3,s3,a3
   1d290:	0086b683          	ld	a3,8(a3)
   1d294:	0016f693          	andi	a3,a3,1
   1d298:	14069463          	bnez	a3,1d3e0 <_realloc_r+0x1e0>
   1d29c:	ffc7f793          	andi	a5,a5,-4
   1d2a0:	00fa06b3          	add	a3,s4,a5
   1d2a4:	0e96d663          	bge	a3,s1,1d390 <_realloc_r+0x190>
   1d2a8:	00177713          	andi	a4,a4,1
   1d2ac:	02071463          	bnez	a4,1d2d4 <_realloc_r+0xd4>
   1d2b0:	ff043c03          	ld	s8,-16(s0)
   1d2b4:	418b0c33          	sub	s8,s6,s8
   1d2b8:	008c3703          	ld	a4,8(s8)
   1d2bc:	ffc77713          	andi	a4,a4,-4
   1d2c0:	00f707b3          	add	a5,a4,a5
   1d2c4:	01478bb3          	add	s7,a5,s4
   1d2c8:	349bd863          	bge	s7,s1,1d618 <_realloc_r+0x418>
   1d2cc:	00ea0bb3          	add	s7,s4,a4
   1d2d0:	2c9bd263          	bge	s7,s1,1d594 <_realloc_r+0x394>
   1d2d4:	00090593          	mv	a1,s2
   1d2d8:	000a8513          	mv	a0,s5
   1d2dc:	dacf90ef          	jal	ra,16888 <_malloc_r>
   1d2e0:	00050913          	mv	s2,a0
   1d2e4:	04050c63          	beqz	a0,1d33c <_realloc_r+0x13c>
   1d2e8:	ff843783          	ld	a5,-8(s0)
   1d2ec:	ff050713          	addi	a4,a0,-16
   1d2f0:	ffe7f793          	andi	a5,a5,-2
   1d2f4:	00fb07b3          	add	a5,s6,a5
   1d2f8:	28e78463          	beq	a5,a4,1d580 <_realloc_r+0x380>
   1d2fc:	ff8a0613          	addi	a2,s4,-8
   1d300:	04800793          	li	a5,72
   1d304:	30c7e463          	bltu	a5,a2,1d60c <_realloc_r+0x40c>
   1d308:	02700713          	li	a4,39
   1d30c:	00043683          	ld	a3,0(s0)
   1d310:	20c76c63          	bltu	a4,a2,1d528 <_realloc_r+0x328>
   1d314:	00050793          	mv	a5,a0
   1d318:	00040713          	mv	a4,s0
   1d31c:	00d7b023          	sd	a3,0(a5)
   1d320:	00873683          	ld	a3,8(a4)
   1d324:	00d7b423          	sd	a3,8(a5)
   1d328:	01073703          	ld	a4,16(a4)
   1d32c:	00e7b823          	sd	a4,16(a5)
   1d330:	00040593          	mv	a1,s0
   1d334:	000a8513          	mv	a0,s5
   1d338:	a44f60ef          	jal	ra,1357c <_free_r>
   1d33c:	000a8513          	mv	a0,s5
   1d340:	e1df90ef          	jal	ra,1715c <__malloc_unlock>
   1d344:	0180006f          	j	1d35c <_realloc_r+0x15c>
   1d348:	02000493          	li	s1,32
   1d34c:	f324f0e3          	bgeu	s1,s2,1d26c <_realloc_r+0x6c>
   1d350:	00c00793          	li	a5,12
   1d354:	00faa023          	sw	a5,0(s5)
   1d358:	00000913          	li	s2,0
   1d35c:	04813083          	ld	ra,72(sp)
   1d360:	04013403          	ld	s0,64(sp)
   1d364:	03813483          	ld	s1,56(sp)
   1d368:	02813983          	ld	s3,40(sp)
   1d36c:	02013a03          	ld	s4,32(sp)
   1d370:	01813a83          	ld	s5,24(sp)
   1d374:	01013b03          	ld	s6,16(sp)
   1d378:	00813b83          	ld	s7,8(sp)
   1d37c:	00013c03          	ld	s8,0(sp)
   1d380:	00090513          	mv	a0,s2
   1d384:	03013903          	ld	s2,48(sp)
   1d388:	05010113          	addi	sp,sp,80
   1d38c:	00008067          	ret
   1d390:	0189b783          	ld	a5,24(s3)
   1d394:	0109b703          	ld	a4,16(s3)
   1d398:	00068a13          	mv	s4,a3
   1d39c:	00db09b3          	add	s3,s6,a3
   1d3a0:	00f73c23          	sd	a5,24(a4)
   1d3a4:	00e7b823          	sd	a4,16(a5)
   1d3a8:	008b3783          	ld	a5,8(s6) # ffffffff80000008 <__BSS_END__+0xffffffff7ffdbd68>
   1d3ac:	409a0733          	sub	a4,s4,s1
   1d3b0:	01f00693          	li	a3,31
   1d3b4:	0017f793          	andi	a5,a5,1
   1d3b8:	06e6ec63          	bltu	a3,a4,1d430 <_realloc_r+0x230>
   1d3bc:	00fa67b3          	or	a5,s4,a5
   1d3c0:	00fb3423          	sd	a5,8(s6)
   1d3c4:	0089b783          	ld	a5,8(s3)
   1d3c8:	0017e793          	ori	a5,a5,1
   1d3cc:	00f9b423          	sd	a5,8(s3)
   1d3d0:	000a8513          	mv	a0,s5
   1d3d4:	d89f90ef          	jal	ra,1715c <__malloc_unlock>
   1d3d8:	00040913          	mv	s2,s0
   1d3dc:	f81ff06f          	j	1d35c <_realloc_r+0x15c>
   1d3e0:	00177713          	andi	a4,a4,1
   1d3e4:	ee0718e3          	bnez	a4,1d2d4 <_realloc_r+0xd4>
   1d3e8:	ff043c03          	ld	s8,-16(s0)
   1d3ec:	418b0c33          	sub	s8,s6,s8
   1d3f0:	008c3703          	ld	a4,8(s8)
   1d3f4:	ffc77713          	andi	a4,a4,-4
   1d3f8:	ed5ff06f          	j	1d2cc <_realloc_r+0xcc>
   1d3fc:	04013403          	ld	s0,64(sp)
   1d400:	04813083          	ld	ra,72(sp)
   1d404:	03813483          	ld	s1,56(sp)
   1d408:	03013903          	ld	s2,48(sp)
   1d40c:	02813983          	ld	s3,40(sp)
   1d410:	02013a03          	ld	s4,32(sp)
   1d414:	01813a83          	ld	s5,24(sp)
   1d418:	01013b03          	ld	s6,16(sp)
   1d41c:	00813b83          	ld	s7,8(sp)
   1d420:	00013c03          	ld	s8,0(sp)
   1d424:	00060593          	mv	a1,a2
   1d428:	05010113          	addi	sp,sp,80
   1d42c:	c5cf906f          	j	16888 <_malloc_r>
   1d430:	00f4e7b3          	or	a5,s1,a5
   1d434:	00fb3423          	sd	a5,8(s6)
   1d438:	009b05b3          	add	a1,s6,s1
   1d43c:	00176713          	ori	a4,a4,1
   1d440:	00e5b423          	sd	a4,8(a1)
   1d444:	0089b783          	ld	a5,8(s3)
   1d448:	01058593          	addi	a1,a1,16
   1d44c:	000a8513          	mv	a0,s5
   1d450:	0017e793          	ori	a5,a5,1
   1d454:	00f9b423          	sd	a5,8(s3)
   1d458:	924f60ef          	jal	ra,1357c <_free_r>
   1d45c:	f75ff06f          	j	1d3d0 <_realloc_r+0x1d0>
   1d460:	ffc7f793          	andi	a5,a5,-4
   1d464:	00fa06b3          	add	a3,s4,a5
   1d468:	02048613          	addi	a2,s1,32
   1d46c:	0ec6d063          	bge	a3,a2,1d54c <_realloc_r+0x34c>
   1d470:	00177713          	andi	a4,a4,1
   1d474:	e60710e3          	bnez	a4,1d2d4 <_realloc_r+0xd4>
   1d478:	ff043c03          	ld	s8,-16(s0)
   1d47c:	418b0c33          	sub	s8,s6,s8
   1d480:	008c3703          	ld	a4,8(s8)
   1d484:	ffc77713          	andi	a4,a4,-4
   1d488:	00f707b3          	add	a5,a4,a5
   1d48c:	014789b3          	add	s3,a5,s4
   1d490:	e2c9cee3          	blt	s3,a2,1d2cc <_realloc_r+0xcc>
   1d494:	018c3783          	ld	a5,24(s8)
   1d498:	010c3703          	ld	a4,16(s8)
   1d49c:	ff8a0613          	addi	a2,s4,-8
   1d4a0:	04800693          	li	a3,72
   1d4a4:	00f73c23          	sd	a5,24(a4)
   1d4a8:	00e7b823          	sd	a4,16(a5)
   1d4ac:	010c0913          	addi	s2,s8,16
   1d4b0:	26c6ec63          	bltu	a3,a2,1d728 <_realloc_r+0x528>
   1d4b4:	02700593          	li	a1,39
   1d4b8:	00043703          	ld	a4,0(s0)
   1d4bc:	00090793          	mv	a5,s2
   1d4c0:	02c5f263          	bgeu	a1,a2,1d4e4 <_realloc_r+0x2e4>
   1d4c4:	00ec3823          	sd	a4,16(s8)
   1d4c8:	00843703          	ld	a4,8(s0)
   1d4cc:	03700793          	li	a5,55
   1d4d0:	00ec3c23          	sd	a4,24(s8)
   1d4d4:	26c7e263          	bltu	a5,a2,1d738 <_realloc_r+0x538>
   1d4d8:	01043703          	ld	a4,16(s0)
   1d4dc:	020c0793          	addi	a5,s8,32
   1d4e0:	01040413          	addi	s0,s0,16
   1d4e4:	00e7b023          	sd	a4,0(a5)
   1d4e8:	00843703          	ld	a4,8(s0)
   1d4ec:	00e7b423          	sd	a4,8(a5)
   1d4f0:	01043703          	ld	a4,16(s0)
   1d4f4:	00e7b823          	sd	a4,16(a5)
   1d4f8:	009c0733          	add	a4,s8,s1
   1d4fc:	409989b3          	sub	s3,s3,s1
   1d500:	00ebb823          	sd	a4,16(s7)
   1d504:	0019e793          	ori	a5,s3,1
   1d508:	00f73423          	sd	a5,8(a4)
   1d50c:	008c3783          	ld	a5,8(s8)
   1d510:	000a8513          	mv	a0,s5
   1d514:	0017f793          	andi	a5,a5,1
   1d518:	0097e4b3          	or	s1,a5,s1
   1d51c:	009c3423          	sd	s1,8(s8)
   1d520:	c3df90ef          	jal	ra,1715c <__malloc_unlock>
   1d524:	e39ff06f          	j	1d35c <_realloc_r+0x15c>
   1d528:	00d53023          	sd	a3,0(a0)
   1d52c:	00843683          	ld	a3,8(s0)
   1d530:	03700713          	li	a4,55
   1d534:	00d53423          	sd	a3,8(a0)
   1d538:	16c76e63          	bltu	a4,a2,1d6b4 <_realloc_r+0x4b4>
   1d53c:	01043683          	ld	a3,16(s0)
   1d540:	01040713          	addi	a4,s0,16
   1d544:	01050793          	addi	a5,a0,16
   1d548:	dd5ff06f          	j	1d31c <_realloc_r+0x11c>
   1d54c:	009b0b33          	add	s6,s6,s1
   1d550:	409686b3          	sub	a3,a3,s1
   1d554:	016bb823          	sd	s6,16(s7)
   1d558:	0016e793          	ori	a5,a3,1
   1d55c:	00fb3423          	sd	a5,8(s6)
   1d560:	ff843783          	ld	a5,-8(s0)
   1d564:	000a8513          	mv	a0,s5
   1d568:	00040913          	mv	s2,s0
   1d56c:	0017f793          	andi	a5,a5,1
   1d570:	0097e4b3          	or	s1,a5,s1
   1d574:	fe943c23          	sd	s1,-8(s0)
   1d578:	be5f90ef          	jal	ra,1715c <__malloc_unlock>
   1d57c:	de1ff06f          	j	1d35c <_realloc_r+0x15c>
   1d580:	ff853783          	ld	a5,-8(a0)
   1d584:	ffc7f793          	andi	a5,a5,-4
   1d588:	00fa0a33          	add	s4,s4,a5
   1d58c:	014b09b3          	add	s3,s6,s4
   1d590:	e19ff06f          	j	1d3a8 <_realloc_r+0x1a8>
   1d594:	018c3783          	ld	a5,24(s8)
   1d598:	010c3703          	ld	a4,16(s8)
   1d59c:	ff8a0613          	addi	a2,s4,-8
   1d5a0:	04800693          	li	a3,72
   1d5a4:	00f73c23          	sd	a5,24(a4)
   1d5a8:	00e7b823          	sd	a4,16(a5)
   1d5ac:	010c0913          	addi	s2,s8,16
   1d5b0:	017c09b3          	add	s3,s8,s7
   1d5b4:	0ec6e263          	bltu	a3,a2,1d698 <_realloc_r+0x498>
   1d5b8:	02700593          	li	a1,39
   1d5bc:	00043703          	ld	a4,0(s0)
   1d5c0:	00090793          	mv	a5,s2
   1d5c4:	02c5f263          	bgeu	a1,a2,1d5e8 <_realloc_r+0x3e8>
   1d5c8:	00ec3823          	sd	a4,16(s8)
   1d5cc:	00843703          	ld	a4,8(s0)
   1d5d0:	03700793          	li	a5,55
   1d5d4:	00ec3c23          	sd	a4,24(s8)
   1d5d8:	10c7e063          	bltu	a5,a2,1d6d8 <_realloc_r+0x4d8>
   1d5dc:	01043703          	ld	a4,16(s0)
   1d5e0:	020c0793          	addi	a5,s8,32
   1d5e4:	01040413          	addi	s0,s0,16
   1d5e8:	00e7b023          	sd	a4,0(a5)
   1d5ec:	00843703          	ld	a4,8(s0)
   1d5f0:	000b8a13          	mv	s4,s7
   1d5f4:	000c0b13          	mv	s6,s8
   1d5f8:	00e7b423          	sd	a4,8(a5)
   1d5fc:	01043703          	ld	a4,16(s0)
   1d600:	00090413          	mv	s0,s2
   1d604:	00e7b823          	sd	a4,16(a5)
   1d608:	da1ff06f          	j	1d3a8 <_realloc_r+0x1a8>
   1d60c:	00040593          	mv	a1,s0
   1d610:	a69ff0ef          	jal	ra,1d078 <memmove>
   1d614:	d1dff06f          	j	1d330 <_realloc_r+0x130>
   1d618:	0189b783          	ld	a5,24(s3)
   1d61c:	0109b703          	ld	a4,16(s3)
   1d620:	ff8a0613          	addi	a2,s4,-8
   1d624:	04800693          	li	a3,72
   1d628:	00f73c23          	sd	a5,24(a4)
   1d62c:	00e7b823          	sd	a4,16(a5)
   1d630:	010c3703          	ld	a4,16(s8)
   1d634:	018c3783          	ld	a5,24(s8)
   1d638:	010c0913          	addi	s2,s8,16
   1d63c:	017c09b3          	add	s3,s8,s7
   1d640:	00f73c23          	sd	a5,24(a4)
   1d644:	00e7b823          	sd	a4,16(a5)
   1d648:	04c6e863          	bltu	a3,a2,1d698 <_realloc_r+0x498>
   1d64c:	02700693          	li	a3,39
   1d650:	00043703          	ld	a4,0(s0)
   1d654:	00090793          	mv	a5,s2
   1d658:	f8c6f8e3          	bgeu	a3,a2,1d5e8 <_realloc_r+0x3e8>
   1d65c:	00ec3823          	sd	a4,16(s8)
   1d660:	00843703          	ld	a4,8(s0)
   1d664:	03700793          	li	a5,55
   1d668:	00ec3c23          	sd	a4,24(s8)
   1d66c:	01043703          	ld	a4,16(s0)
   1d670:	f6c7f8e3          	bgeu	a5,a2,1d5e0 <_realloc_r+0x3e0>
   1d674:	02ec3023          	sd	a4,32(s8)
   1d678:	01843703          	ld	a4,24(s0)
   1d67c:	04800793          	li	a5,72
   1d680:	02ec3423          	sd	a4,40(s8)
   1d684:	02043703          	ld	a4,32(s0)
   1d688:	06f60463          	beq	a2,a5,1d6f0 <_realloc_r+0x4f0>
   1d68c:	030c0793          	addi	a5,s8,48
   1d690:	02040413          	addi	s0,s0,32
   1d694:	f55ff06f          	j	1d5e8 <_realloc_r+0x3e8>
   1d698:	00040593          	mv	a1,s0
   1d69c:	00090513          	mv	a0,s2
   1d6a0:	9d9ff0ef          	jal	ra,1d078 <memmove>
   1d6a4:	00090413          	mv	s0,s2
   1d6a8:	000b8a13          	mv	s4,s7
   1d6ac:	000c0b13          	mv	s6,s8
   1d6b0:	cf9ff06f          	j	1d3a8 <_realloc_r+0x1a8>
   1d6b4:	01043703          	ld	a4,16(s0)
   1d6b8:	00e53823          	sd	a4,16(a0)
   1d6bc:	01843703          	ld	a4,24(s0)
   1d6c0:	00e53c23          	sd	a4,24(a0)
   1d6c4:	02043683          	ld	a3,32(s0)
   1d6c8:	04f60263          	beq	a2,a5,1d70c <_realloc_r+0x50c>
   1d6cc:	02040713          	addi	a4,s0,32
   1d6d0:	02050793          	addi	a5,a0,32
   1d6d4:	c49ff06f          	j	1d31c <_realloc_r+0x11c>
   1d6d8:	01043783          	ld	a5,16(s0)
   1d6dc:	02fc3023          	sd	a5,32(s8)
   1d6e0:	01843783          	ld	a5,24(s0)
   1d6e4:	02fc3423          	sd	a5,40(s8)
   1d6e8:	02043703          	ld	a4,32(s0)
   1d6ec:	fad610e3          	bne	a2,a3,1d68c <_realloc_r+0x48c>
   1d6f0:	02ec3823          	sd	a4,48(s8)
   1d6f4:	02843703          	ld	a4,40(s0)
   1d6f8:	040c0793          	addi	a5,s8,64
   1d6fc:	03040413          	addi	s0,s0,48
   1d700:	02ec3c23          	sd	a4,56(s8)
   1d704:	00043703          	ld	a4,0(s0)
   1d708:	ee1ff06f          	j	1d5e8 <_realloc_r+0x3e8>
   1d70c:	02d53023          	sd	a3,32(a0)
   1d710:	02843683          	ld	a3,40(s0)
   1d714:	03040713          	addi	a4,s0,48
   1d718:	03050793          	addi	a5,a0,48
   1d71c:	02d53423          	sd	a3,40(a0)
   1d720:	03043683          	ld	a3,48(s0)
   1d724:	bf9ff06f          	j	1d31c <_realloc_r+0x11c>
   1d728:	00040593          	mv	a1,s0
   1d72c:	00090513          	mv	a0,s2
   1d730:	949ff0ef          	jal	ra,1d078 <memmove>
   1d734:	dc5ff06f          	j	1d4f8 <_realloc_r+0x2f8>
   1d738:	01043783          	ld	a5,16(s0)
   1d73c:	02fc3023          	sd	a5,32(s8)
   1d740:	01843783          	ld	a5,24(s0)
   1d744:	02fc3423          	sd	a5,40(s8)
   1d748:	02043703          	ld	a4,32(s0)
   1d74c:	00d60863          	beq	a2,a3,1d75c <_realloc_r+0x55c>
   1d750:	030c0793          	addi	a5,s8,48
   1d754:	02040413          	addi	s0,s0,32
   1d758:	d8dff06f          	j	1d4e4 <_realloc_r+0x2e4>
   1d75c:	02ec3823          	sd	a4,48(s8)
   1d760:	02843703          	ld	a4,40(s0)
   1d764:	040c0793          	addi	a5,s8,64
   1d768:	03040413          	addi	s0,s0,48
   1d76c:	02ec3c23          	sd	a4,56(s8)
   1d770:	00043703          	ld	a4,0(s0)
   1d774:	d71ff06f          	j	1d4e4 <_realloc_r+0x2e4>

000000000001d778 <cleanup_glue>:
   1d778:	fd010113          	addi	sp,sp,-48
   1d77c:	01213823          	sd	s2,16(sp)
   1d780:	0005b903          	ld	s2,0(a1)
   1d784:	02813023          	sd	s0,32(sp)
   1d788:	00913c23          	sd	s1,24(sp)
   1d78c:	02113423          	sd	ra,40(sp)
   1d790:	01313423          	sd	s3,8(sp)
   1d794:	01413023          	sd	s4,0(sp)
   1d798:	00058413          	mv	s0,a1
   1d79c:	00050493          	mv	s1,a0
   1d7a0:	04090263          	beqz	s2,1d7e4 <cleanup_glue+0x6c>
   1d7a4:	00093983          	ld	s3,0(s2)
   1d7a8:	02098863          	beqz	s3,1d7d8 <cleanup_glue+0x60>
   1d7ac:	0009ba03          	ld	s4,0(s3)
   1d7b0:	000a0e63          	beqz	s4,1d7cc <cleanup_glue+0x54>
   1d7b4:	000a3583          	ld	a1,0(s4)
   1d7b8:	00058463          	beqz	a1,1d7c0 <cleanup_glue+0x48>
   1d7bc:	fbdff0ef          	jal	ra,1d778 <cleanup_glue>
   1d7c0:	000a0593          	mv	a1,s4
   1d7c4:	00048513          	mv	a0,s1
   1d7c8:	db5f50ef          	jal	ra,1357c <_free_r>
   1d7cc:	00098593          	mv	a1,s3
   1d7d0:	00048513          	mv	a0,s1
   1d7d4:	da9f50ef          	jal	ra,1357c <_free_r>
   1d7d8:	00090593          	mv	a1,s2
   1d7dc:	00048513          	mv	a0,s1
   1d7e0:	d9df50ef          	jal	ra,1357c <_free_r>
   1d7e4:	00040593          	mv	a1,s0
   1d7e8:	02013403          	ld	s0,32(sp)
   1d7ec:	02813083          	ld	ra,40(sp)
   1d7f0:	01013903          	ld	s2,16(sp)
   1d7f4:	00813983          	ld	s3,8(sp)
   1d7f8:	00013a03          	ld	s4,0(sp)
   1d7fc:	00048513          	mv	a0,s1
   1d800:	01813483          	ld	s1,24(sp)
   1d804:	03010113          	addi	sp,sp,48
   1d808:	d75f506f          	j	1357c <_free_r>

000000000001d80c <_reclaim_reent>:
   1d80c:	7581b783          	ld	a5,1880(gp) # 241f8 <_impure_ptr>
   1d810:	10a78a63          	beq	a5,a0,1d924 <_reclaim_reent+0x118>
   1d814:	07853583          	ld	a1,120(a0)
   1d818:	fd010113          	addi	sp,sp,-48
   1d81c:	00913c23          	sd	s1,24(sp)
   1d820:	02113423          	sd	ra,40(sp)
   1d824:	02813023          	sd	s0,32(sp)
   1d828:	01213823          	sd	s2,16(sp)
   1d82c:	01313423          	sd	s3,8(sp)
   1d830:	00050493          	mv	s1,a0
   1d834:	04058063          	beqz	a1,1d874 <_reclaim_reent+0x68>
   1d838:	00000913          	li	s2,0
   1d83c:	20000993          	li	s3,512
   1d840:	012587b3          	add	a5,a1,s2
   1d844:	0007b403          	ld	s0,0(a5)
   1d848:	00040e63          	beqz	s0,1d864 <_reclaim_reent+0x58>
   1d84c:	00040593          	mv	a1,s0
   1d850:	00043403          	ld	s0,0(s0)
   1d854:	00048513          	mv	a0,s1
   1d858:	d25f50ef          	jal	ra,1357c <_free_r>
   1d85c:	fe0418e3          	bnez	s0,1d84c <_reclaim_reent+0x40>
   1d860:	0784b583          	ld	a1,120(s1)
   1d864:	00890913          	addi	s2,s2,8
   1d868:	fd391ce3          	bne	s2,s3,1d840 <_reclaim_reent+0x34>
   1d86c:	00048513          	mv	a0,s1
   1d870:	d0df50ef          	jal	ra,1357c <_free_r>
   1d874:	0604b583          	ld	a1,96(s1)
   1d878:	00058663          	beqz	a1,1d884 <_reclaim_reent+0x78>
   1d87c:	00048513          	mv	a0,s1
   1d880:	cfdf50ef          	jal	ra,1357c <_free_r>
   1d884:	1f84b403          	ld	s0,504(s1)
   1d888:	02040063          	beqz	s0,1d8a8 <_reclaim_reent+0x9c>
   1d88c:	20048913          	addi	s2,s1,512
   1d890:	01240c63          	beq	s0,s2,1d8a8 <_reclaim_reent+0x9c>
   1d894:	00040593          	mv	a1,s0
   1d898:	00043403          	ld	s0,0(s0)
   1d89c:	00048513          	mv	a0,s1
   1d8a0:	cddf50ef          	jal	ra,1357c <_free_r>
   1d8a4:	fe8918e3          	bne	s2,s0,1d894 <_reclaim_reent+0x88>
   1d8a8:	0884b583          	ld	a1,136(s1)
   1d8ac:	00058663          	beqz	a1,1d8b8 <_reclaim_reent+0xac>
   1d8b0:	00048513          	mv	a0,s1
   1d8b4:	cc9f50ef          	jal	ra,1357c <_free_r>
   1d8b8:	0504a783          	lw	a5,80(s1)
   1d8bc:	04078663          	beqz	a5,1d908 <_reclaim_reent+0xfc>
   1d8c0:	0584b783          	ld	a5,88(s1)
   1d8c4:	00048513          	mv	a0,s1
   1d8c8:	000780e7          	jalr	a5
   1d8cc:	5204b403          	ld	s0,1312(s1)
   1d8d0:	02040c63          	beqz	s0,1d908 <_reclaim_reent+0xfc>
   1d8d4:	00043583          	ld	a1,0(s0)
   1d8d8:	00058663          	beqz	a1,1d8e4 <_reclaim_reent+0xd8>
   1d8dc:	00048513          	mv	a0,s1
   1d8e0:	e99ff0ef          	jal	ra,1d778 <cleanup_glue>
   1d8e4:	00040593          	mv	a1,s0
   1d8e8:	02013403          	ld	s0,32(sp)
   1d8ec:	02813083          	ld	ra,40(sp)
   1d8f0:	01013903          	ld	s2,16(sp)
   1d8f4:	00813983          	ld	s3,8(sp)
   1d8f8:	00048513          	mv	a0,s1
   1d8fc:	01813483          	ld	s1,24(sp)
   1d900:	03010113          	addi	sp,sp,48
   1d904:	c79f506f          	j	1357c <_free_r>
   1d908:	02813083          	ld	ra,40(sp)
   1d90c:	02013403          	ld	s0,32(sp)
   1d910:	01813483          	ld	s1,24(sp)
   1d914:	01013903          	ld	s2,16(sp)
   1d918:	00813983          	ld	s3,8(sp)
   1d91c:	03010113          	addi	sp,sp,48
   1d920:	00008067          	ret
   1d924:	00008067          	ret

000000000001d928 <strcmp>:
   1d928:	00b56733          	or	a4,a0,a1
   1d92c:	fff00393          	li	t2,-1
   1d930:	00777713          	andi	a4,a4,7
   1d934:	0c071c63          	bnez	a4,1da0c <strcmp+0xe4>
   1d938:	00007797          	auipc	a5,0x7
   1d93c:	8a87b783          	ld	a5,-1880(a5) # 241e0 <mask>
   1d940:	00053603          	ld	a2,0(a0)
   1d944:	0005b683          	ld	a3,0(a1)
   1d948:	00f672b3          	and	t0,a2,a5
   1d94c:	00f66333          	or	t1,a2,a5
   1d950:	00f282b3          	add	t0,t0,a5
   1d954:	0062e2b3          	or	t0,t0,t1
   1d958:	0c729e63          	bne	t0,t2,1da34 <strcmp+0x10c>
   1d95c:	04d61663          	bne	a2,a3,1d9a8 <strcmp+0x80>
   1d960:	00853603          	ld	a2,8(a0)
   1d964:	0085b683          	ld	a3,8(a1)
   1d968:	00f672b3          	and	t0,a2,a5
   1d96c:	00f66333          	or	t1,a2,a5
   1d970:	00f282b3          	add	t0,t0,a5
   1d974:	0062e2b3          	or	t0,t0,t1
   1d978:	0a729a63          	bne	t0,t2,1da2c <strcmp+0x104>
   1d97c:	02d61663          	bne	a2,a3,1d9a8 <strcmp+0x80>
   1d980:	01053603          	ld	a2,16(a0)
   1d984:	0105b683          	ld	a3,16(a1)
   1d988:	00f672b3          	and	t0,a2,a5
   1d98c:	00f66333          	or	t1,a2,a5
   1d990:	00f282b3          	add	t0,t0,a5
   1d994:	0062e2b3          	or	t0,t0,t1
   1d998:	0a729463          	bne	t0,t2,1da40 <strcmp+0x118>
   1d99c:	01850513          	addi	a0,a0,24
   1d9a0:	01858593          	addi	a1,a1,24
   1d9a4:	f8d60ee3          	beq	a2,a3,1d940 <strcmp+0x18>
   1d9a8:	03061713          	slli	a4,a2,0x30
   1d9ac:	03069793          	slli	a5,a3,0x30
   1d9b0:	02f71a63          	bne	a4,a5,1d9e4 <strcmp+0xbc>
   1d9b4:	02061713          	slli	a4,a2,0x20
   1d9b8:	02069793          	slli	a5,a3,0x20
   1d9bc:	02f71463          	bne	a4,a5,1d9e4 <strcmp+0xbc>
   1d9c0:	01061713          	slli	a4,a2,0x10
   1d9c4:	01069793          	slli	a5,a3,0x10
   1d9c8:	00f71e63          	bne	a4,a5,1d9e4 <strcmp+0xbc>
   1d9cc:	03065713          	srli	a4,a2,0x30
   1d9d0:	0306d793          	srli	a5,a3,0x30
   1d9d4:	40f70533          	sub	a0,a4,a5
   1d9d8:	0ff57593          	zext.b	a1,a0
   1d9dc:	02059063          	bnez	a1,1d9fc <strcmp+0xd4>
   1d9e0:	00008067          	ret
   1d9e4:	03075713          	srli	a4,a4,0x30
   1d9e8:	0307d793          	srli	a5,a5,0x30
   1d9ec:	40f70533          	sub	a0,a4,a5
   1d9f0:	0ff57593          	zext.b	a1,a0
   1d9f4:	00059463          	bnez	a1,1d9fc <strcmp+0xd4>
   1d9f8:	00008067          	ret
   1d9fc:	0ff77713          	zext.b	a4,a4
   1da00:	0ff7f793          	zext.b	a5,a5
   1da04:	40f70533          	sub	a0,a4,a5
   1da08:	00008067          	ret
   1da0c:	00054603          	lbu	a2,0(a0)
   1da10:	0005c683          	lbu	a3,0(a1)
   1da14:	00150513          	addi	a0,a0,1
   1da18:	00158593          	addi	a1,a1,1
   1da1c:	00d61463          	bne	a2,a3,1da24 <strcmp+0xfc>
   1da20:	fe0616e3          	bnez	a2,1da0c <strcmp+0xe4>
   1da24:	40d60533          	sub	a0,a2,a3
   1da28:	00008067          	ret
   1da2c:	00850513          	addi	a0,a0,8
   1da30:	00858593          	addi	a1,a1,8
   1da34:	fcd61ce3          	bne	a2,a3,1da0c <strcmp+0xe4>
   1da38:	00000513          	li	a0,0
   1da3c:	00008067          	ret
   1da40:	01050513          	addi	a0,a0,16
   1da44:	01058593          	addi	a1,a1,16
   1da48:	fcd612e3          	bne	a2,a3,1da0c <strcmp+0xe4>
   1da4c:	00000513          	li	a0,0
   1da50:	00008067          	ret

000000000001da54 <__ssprint_r>:
   1da54:	01063783          	ld	a5,16(a2)
   1da58:	fb010113          	addi	sp,sp,-80
   1da5c:	03413023          	sd	s4,32(sp)
   1da60:	04113423          	sd	ra,72(sp)
   1da64:	04813023          	sd	s0,64(sp)
   1da68:	02913c23          	sd	s1,56(sp)
   1da6c:	03213823          	sd	s2,48(sp)
   1da70:	03313423          	sd	s3,40(sp)
   1da74:	01513c23          	sd	s5,24(sp)
   1da78:	01613823          	sd	s6,16(sp)
   1da7c:	01713423          	sd	s7,8(sp)
   1da80:	01813023          	sd	s8,0(sp)
   1da84:	00060a13          	mv	s4,a2
   1da88:	10078c63          	beqz	a5,1dba0 <__ssprint_r+0x14c>
   1da8c:	00050a93          	mv	s5,a0
   1da90:	00063983          	ld	s3,0(a2)
   1da94:	0005b503          	ld	a0,0(a1)
   1da98:	00c5a403          	lw	s0,12(a1)
   1da9c:	00058913          	mv	s2,a1
   1daa0:	00000b13          	li	s6,0
   1daa4:	00000493          	li	s1,0
   1daa8:	12048863          	beqz	s1,1dbd8 <__ssprint_r+0x184>
   1daac:	00040c13          	mv	s8,s0
   1dab0:	0004879b          	sext.w	a5,s1
   1dab4:	1284ea63          	bltu	s1,s0,1dbe8 <__ssprint_r+0x194>
   1dab8:	01095783          	lhu	a5,16(s2)
   1dabc:	00048b9b          	sext.w	s7,s1
   1dac0:	4807f713          	andi	a4,a5,1152
   1dac4:	0a070063          	beqz	a4,1db64 <__ssprint_r+0x110>
   1dac8:	02092683          	lw	a3,32(s2)
   1dacc:	01893583          	ld	a1,24(s2)
   1dad0:	00148713          	addi	a4,s1,1
   1dad4:	0016941b          	slliw	s0,a3,0x1
   1dad8:	00d406bb          	addw	a3,s0,a3
   1dadc:	40b50533          	sub	a0,a0,a1
   1dae0:	01f6d41b          	srliw	s0,a3,0x1f
   1dae4:	00050b9b          	sext.w	s7,a0
   1dae8:	00d4043b          	addw	s0,s0,a3
   1daec:	4014541b          	sraiw	s0,s0,0x1
   1daf0:	01770733          	add	a4,a4,s7
   1daf4:	00e47663          	bgeu	s0,a4,1db00 <__ssprint_r+0xac>
   1daf8:	0014841b          	addiw	s0,s1,1
   1dafc:	00a4043b          	addw	s0,s0,a0
   1db00:	4007f793          	andi	a5,a5,1024
   1db04:	0e078a63          	beqz	a5,1dbf8 <__ssprint_r+0x1a4>
   1db08:	00040593          	mv	a1,s0
   1db0c:	000a8513          	mv	a0,s5
   1db10:	d79f80ef          	jal	ra,16888 <_malloc_r>
   1db14:	00050c13          	mv	s8,a0
   1db18:	10050063          	beqz	a0,1dc18 <__ssprint_r+0x1c4>
   1db1c:	01893583          	ld	a1,24(s2)
   1db20:	000b8613          	mv	a2,s7
   1db24:	c2cff0ef          	jal	ra,1cf50 <memcpy>
   1db28:	01095783          	lhu	a5,16(s2)
   1db2c:	b7f7f793          	andi	a5,a5,-1153
   1db30:	0807e793          	ori	a5,a5,128
   1db34:	00f91823          	sh	a5,16(s2)
   1db38:	017c0533          	add	a0,s8,s7
   1db3c:	41740bbb          	subw	s7,s0,s7
   1db40:	0004879b          	sext.w	a5,s1
   1db44:	01893c23          	sd	s8,24(s2)
   1db48:	02892023          	sw	s0,32(s2)
   1db4c:	01792623          	sw	s7,12(s2)
   1db50:	00a93023          	sd	a0,0(s2)
   1db54:	00078413          	mv	s0,a5
   1db58:	00078b93          	mv	s7,a5
   1db5c:	00078c13          	mv	s8,a5
   1db60:	08f4e463          	bltu	s1,a5,1dbe8 <__ssprint_r+0x194>
   1db64:	00040613          	mv	a2,s0
   1db68:	000b0593          	mv	a1,s6
   1db6c:	d0cff0ef          	jal	ra,1d078 <memmove>
   1db70:	00c92603          	lw	a2,12(s2)
   1db74:	00093503          	ld	a0,0(s2)
   1db78:	010a3783          	ld	a5,16(s4)
   1db7c:	4086043b          	subw	s0,a2,s0
   1db80:	01850533          	add	a0,a0,s8
   1db84:	00892623          	sw	s0,12(s2)
   1db88:	00a93023          	sd	a0,0(s2)
   1db8c:	417787b3          	sub	a5,a5,s7
   1db90:	00fa3823          	sd	a5,16(s4)
   1db94:	017b0b33          	add	s6,s6,s7
   1db98:	417484b3          	sub	s1,s1,s7
   1db9c:	f00796e3          	bnez	a5,1daa8 <__ssprint_r+0x54>
   1dba0:	000a2423          	sw	zero,8(s4)
   1dba4:	00000513          	li	a0,0
   1dba8:	04813083          	ld	ra,72(sp)
   1dbac:	04013403          	ld	s0,64(sp)
   1dbb0:	03813483          	ld	s1,56(sp)
   1dbb4:	03013903          	ld	s2,48(sp)
   1dbb8:	02813983          	ld	s3,40(sp)
   1dbbc:	02013a03          	ld	s4,32(sp)
   1dbc0:	01813a83          	ld	s5,24(sp)
   1dbc4:	01013b03          	ld	s6,16(sp)
   1dbc8:	00813b83          	ld	s7,8(sp)
   1dbcc:	00013c03          	ld	s8,0(sp)
   1dbd0:	05010113          	addi	sp,sp,80
   1dbd4:	00008067          	ret
   1dbd8:	0009bb03          	ld	s6,0(s3)
   1dbdc:	0089b483          	ld	s1,8(s3)
   1dbe0:	01098993          	addi	s3,s3,16
   1dbe4:	ec5ff06f          	j	1daa8 <__ssprint_r+0x54>
   1dbe8:	00078413          	mv	s0,a5
   1dbec:	00078b93          	mv	s7,a5
   1dbf0:	00078c13          	mv	s8,a5
   1dbf4:	f71ff06f          	j	1db64 <__ssprint_r+0x110>
   1dbf8:	00040613          	mv	a2,s0
   1dbfc:	000a8513          	mv	a0,s5
   1dc00:	e00ff0ef          	jal	ra,1d200 <_realloc_r>
   1dc04:	00050c13          	mv	s8,a0
   1dc08:	f20518e3          	bnez	a0,1db38 <__ssprint_r+0xe4>
   1dc0c:	01893583          	ld	a1,24(s2)
   1dc10:	000a8513          	mv	a0,s5
   1dc14:	969f50ef          	jal	ra,1357c <_free_r>
   1dc18:	00c00793          	li	a5,12
   1dc1c:	00faa023          	sw	a5,0(s5)
   1dc20:	01095783          	lhu	a5,16(s2)
   1dc24:	fff00513          	li	a0,-1
   1dc28:	0407e793          	ori	a5,a5,64
   1dc2c:	00f91823          	sh	a5,16(s2)
   1dc30:	000a3823          	sd	zero,16(s4)
   1dc34:	000a2423          	sw	zero,8(s4)
   1dc38:	f71ff06f          	j	1dba8 <__ssprint_r+0x154>

000000000001dc3c <_svfiprintf_r>:
   1dc3c:	0105d783          	lhu	a5,16(a1)
   1dc40:	e3010113          	addi	sp,sp,-464
   1dc44:	1b313423          	sd	s3,424(sp)
   1dc48:	19513c23          	sd	s5,408(sp)
   1dc4c:	19813023          	sd	s8,384(sp)
   1dc50:	17b13423          	sd	s11,360(sp)
   1dc54:	1c113423          	sd	ra,456(sp)
   1dc58:	1c813023          	sd	s0,448(sp)
   1dc5c:	1a913c23          	sd	s1,440(sp)
   1dc60:	1b213823          	sd	s2,432(sp)
   1dc64:	1b413023          	sd	s4,416(sp)
   1dc68:	19613823          	sd	s6,400(sp)
   1dc6c:	19713423          	sd	s7,392(sp)
   1dc70:	17913c23          	sd	s9,376(sp)
   1dc74:	17a13823          	sd	s10,368(sp)
   1dc78:	0807f793          	andi	a5,a5,128
   1dc7c:	00058993          	mv	s3,a1
   1dc80:	00050a93          	mv	s5,a0
   1dc84:	00060d93          	mv	s11,a2
   1dc88:	00068c13          	mv	s8,a3
   1dc8c:	00078663          	beqz	a5,1dc98 <_svfiprintf_r+0x5c>
   1dc90:	0185b783          	ld	a5,24(a1)
   1dc94:	4c0782e3          	beqz	a5,1e958 <_svfiprintf_r+0xd1c>
   1dc98:	000227b7          	lui	a5,0x22
   1dc9c:	0e010a13          	addi	s4,sp,224
   1dca0:	cc878793          	addi	a5,a5,-824 # 21cc8 <zeroes.0+0x68>
   1dca4:	00022b37          	lui	s6,0x22
   1dca8:	000224b7          	lui	s1,0x22
   1dcac:	07413023          	sd	s4,96(sp)
   1dcb0:	06013823          	sd	zero,112(sp)
   1dcb4:	06012423          	sw	zero,104(sp)
   1dcb8:	000a0713          	mv	a4,s4
   1dcbc:	00013823          	sd	zero,16(sp)
   1dcc0:	02013c23          	sd	zero,56(sp)
   1dcc4:	04013423          	sd	zero,72(sp)
   1dcc8:	04013023          	sd	zero,64(sp)
   1dccc:	00013023          	sd	zero,0(sp)
   1dcd0:	00f13c23          	sd	a5,24(sp)
   1dcd4:	e38b0b13          	addi	s6,s6,-456 # 21e38 <blanks.1>
   1dcd8:	e4848493          	addi	s1,s1,-440 # 21e48 <zeroes.0>
   1dcdc:	000dc783          	lbu	a5,0(s11)
   1dce0:	36078263          	beqz	a5,1e044 <_svfiprintf_r+0x408>
   1dce4:	000d8413          	mv	s0,s11
   1dce8:	02500693          	li	a3,37
   1dcec:	1cd78a63          	beq	a5,a3,1dec0 <_svfiprintf_r+0x284>
   1dcf0:	00144783          	lbu	a5,1(s0)
   1dcf4:	00140413          	addi	s0,s0,1
   1dcf8:	fe079ae3          	bnez	a5,1dcec <_svfiprintf_r+0xb0>
   1dcfc:	41b4093b          	subw	s2,s0,s11
   1dd00:	34090263          	beqz	s2,1e044 <_svfiprintf_r+0x408>
   1dd04:	07013683          	ld	a3,112(sp)
   1dd08:	06812783          	lw	a5,104(sp)
   1dd0c:	01b73023          	sd	s11,0(a4)
   1dd10:	012686b3          	add	a3,a3,s2
   1dd14:	0017879b          	addiw	a5,a5,1
   1dd18:	01273423          	sd	s2,8(a4)
   1dd1c:	06d13823          	sd	a3,112(sp)
   1dd20:	06f12423          	sw	a5,104(sp)
   1dd24:	0007869b          	sext.w	a3,a5
   1dd28:	00700793          	li	a5,7
   1dd2c:	01070713          	addi	a4,a4,16
   1dd30:	54d7ca63          	blt	a5,a3,1e284 <_svfiprintf_r+0x648>
   1dd34:	00013683          	ld	a3,0(sp)
   1dd38:	00044783          	lbu	a5,0(s0)
   1dd3c:	012686bb          	addw	a3,a3,s2
   1dd40:	00d13023          	sd	a3,0(sp)
   1dd44:	30078063          	beqz	a5,1e044 <_svfiprintf_r+0x408>
   1dd48:	00144783          	lbu	a5,1(s0)
   1dd4c:	00140d93          	addi	s11,s0,1
   1dd50:	04010ba3          	sb	zero,87(sp)
   1dd54:	fff00693          	li	a3,-1
   1dd58:	00000413          	li	s0,0
   1dd5c:	00000d13          	li	s10,0
   1dd60:	05a00913          	li	s2,90
   1dd64:	00900b93          	li	s7,9
   1dd68:	001d8d93          	addi	s11,s11,1
   1dd6c:	0007879b          	sext.w	a5,a5
   1dd70:	02a00513          	li	a0,42
   1dd74:	fe07861b          	addiw	a2,a5,-32
   1dd78:	0006059b          	sext.w	a1,a2
   1dd7c:	04b96a63          	bltu	s2,a1,1ddd0 <_svfiprintf_r+0x194>
   1dd80:	02061593          	slli	a1,a2,0x20
   1dd84:	01e5d613          	srli	a2,a1,0x1e
   1dd88:	01813583          	ld	a1,24(sp)
   1dd8c:	00b60633          	add	a2,a2,a1
   1dd90:	00062603          	lw	a2,0(a2)
   1dd94:	00060067          	jr	a2
   1dd98:	00000413          	li	s0,0
   1dd9c:	000dc583          	lbu	a1,0(s11)
   1dda0:	0024161b          	slliw	a2,s0,0x2
   1dda4:	0086043b          	addw	s0,a2,s0
   1dda8:	fd07879b          	addiw	a5,a5,-48
   1ddac:	0014141b          	slliw	s0,s0,0x1
   1ddb0:	fd05861b          	addiw	a2,a1,-48
   1ddb4:	0087843b          	addw	s0,a5,s0
   1ddb8:	001d8d93          	addi	s11,s11,1
   1ddbc:	0005879b          	sext.w	a5,a1
   1ddc0:	fccbfee3          	bgeu	s7,a2,1dd9c <_svfiprintf_r+0x160>
   1ddc4:	fe07861b          	addiw	a2,a5,-32
   1ddc8:	0006059b          	sext.w	a1,a2
   1ddcc:	fab97ae3          	bgeu	s2,a1,1dd80 <_svfiprintf_r+0x144>
   1ddd0:	26078a63          	beqz	a5,1e044 <_svfiprintf_r+0x408>
   1ddd4:	06f10c23          	sb	a5,120(sp)
   1ddd8:	04010ba3          	sb	zero,87(sp)
   1dddc:	00100b93          	li	s7,1
   1dde0:	00100913          	li	s2,1
   1dde4:	07810c93          	addi	s9,sp,120
   1dde8:	00000693          	li	a3,0
   1ddec:	1480006f          	j	1df34 <_svfiprintf_r+0x2f8>
   1ddf0:	010d6893          	ori	a7,s10,16
   1ddf4:	000dc783          	lbu	a5,0(s11)
   1ddf8:	00088d1b          	sext.w	s10,a7
   1ddfc:	f6dff06f          	j	1dd68 <_svfiprintf_r+0x12c>
   1de00:	010d6893          	ori	a7,s10,16
   1de04:	00088d1b          	sext.w	s10,a7
   1de08:	020d7793          	andi	a5,s10,32
   1de0c:	008c0613          	addi	a2,s8,8
   1de10:	6e078c63          	beqz	a5,1e508 <_svfiprintf_r+0x8cc>
   1de14:	000c3783          	ld	a5,0(s8)
   1de18:	00078b93          	mv	s7,a5
   1de1c:	7007c463          	bltz	a5,1e524 <_svfiprintf_r+0x8e8>
   1de20:	fff00793          	li	a5,-1
   1de24:	000d0e13          	mv	t3,s10
   1de28:	00060c13          	mv	s8,a2
   1de2c:	00f68863          	beq	a3,a5,1de3c <_svfiprintf_r+0x200>
   1de30:	f7fd7893          	andi	a7,s10,-129
   1de34:	00088e1b          	sext.w	t3,a7
   1de38:	660b8c63          	beqz	s7,1e4b0 <_svfiprintf_r+0x874>
   1de3c:	00900793          	li	a5,9
   1de40:	1b77e4e3          	bltu	a5,s7,1e7e8 <_svfiprintf_r+0xbac>
   1de44:	030b8b9b          	addiw	s7,s7,48
   1de48:	0d710da3          	sb	s7,219(sp)
   1de4c:	000e0d13          	mv	s10,t3
   1de50:	00100913          	li	s2,1
   1de54:	0db10c93          	addi	s9,sp,219
   1de58:	0c00006f          	j	1df18 <_svfiprintf_r+0x2dc>
   1de5c:	010d6893          	ori	a7,s10,16
   1de60:	00088d1b          	sext.w	s10,a7
   1de64:	020d7793          	andi	a5,s10,32
   1de68:	008c0613          	addi	a2,s8,8
   1de6c:	66078e63          	beqz	a5,1e4e8 <_svfiprintf_r+0x8ac>
   1de70:	000c3b83          	ld	s7,0(s8)
   1de74:	bffd7893          	andi	a7,s10,-1025
   1de78:	00088e1b          	sext.w	t3,a7
   1de7c:	00060c13          	mv	s8,a2
   1de80:	00000793          	li	a5,0
   1de84:	04010ba3          	sb	zero,87(sp)
   1de88:	fff00613          	li	a2,-1
   1de8c:	04c68463          	beq	a3,a2,1ded4 <_svfiprintf_r+0x298>
   1de90:	f7fe7893          	andi	a7,t3,-129
   1de94:	00088d1b          	sext.w	s10,a7
   1de98:	020b9c63          	bnez	s7,1ded0 <_svfiprintf_r+0x294>
   1de9c:	3a069463          	bnez	a3,1e244 <_svfiprintf_r+0x608>
   1dea0:	60079c63          	bnez	a5,1e4b8 <_svfiprintf_r+0x87c>
   1dea4:	001e7913          	andi	s2,t3,1
   1dea8:	0dc10c93          	addi	s9,sp,220
   1deac:	06090663          	beqz	s2,1df18 <_svfiprintf_r+0x2dc>
   1deb0:	03000793          	li	a5,48
   1deb4:	0cf10da3          	sb	a5,219(sp)
   1deb8:	0db10c93          	addi	s9,sp,219
   1debc:	05c0006f          	j	1df18 <_svfiprintf_r+0x2dc>
   1dec0:	41b4093b          	subw	s2,s0,s11
   1dec4:	e40910e3          	bnez	s2,1dd04 <_svfiprintf_r+0xc8>
   1dec8:	00044783          	lbu	a5,0(s0)
   1decc:	e79ff06f          	j	1dd44 <_svfiprintf_r+0x108>
   1ded0:	000d0e13          	mv	t3,s10
   1ded4:	00100613          	li	a2,1
   1ded8:	f6c782e3          	beq	a5,a2,1de3c <_svfiprintf_r+0x200>
   1dedc:	00200613          	li	a2,2
   1dee0:	36c78c63          	beq	a5,a2,1e258 <_svfiprintf_r+0x61c>
   1dee4:	0dc10913          	addi	s2,sp,220
   1dee8:	00090c93          	mv	s9,s2
   1deec:	007bf793          	andi	a5,s7,7
   1def0:	03078793          	addi	a5,a5,48
   1def4:	fefc8fa3          	sb	a5,-1(s9)
   1def8:	003bdb93          	srli	s7,s7,0x3
   1defc:	000c8613          	mv	a2,s9
   1df00:	fffc8c93          	addi	s9,s9,-1
   1df04:	fe0b94e3          	bnez	s7,1deec <_svfiprintf_r+0x2b0>
   1df08:	001e7593          	andi	a1,t3,1
   1df0c:	5a059e63          	bnez	a1,1e4c8 <_svfiprintf_r+0x88c>
   1df10:	4199093b          	subw	s2,s2,s9
   1df14:	000e0d13          	mv	s10,t3
   1df18:	00068793          	mv	a5,a3
   1df1c:	0126d463          	bge	a3,s2,1df24 <_svfiprintf_r+0x2e8>
   1df20:	00090793          	mv	a5,s2
   1df24:	05714603          	lbu	a2,87(sp)
   1df28:	00078b9b          	sext.w	s7,a5
   1df2c:	00060463          	beqz	a2,1df34 <_svfiprintf_r+0x2f8>
   1df30:	00178b9b          	addiw	s7,a5,1
   1df34:	002d7f13          	andi	t5,s10,2
   1df38:	000f0463          	beqz	t5,1df40 <_svfiprintf_r+0x304>
   1df3c:	002b8b9b          	addiw	s7,s7,2
   1df40:	084d7e93          	andi	t4,s10,132
   1df44:	07013783          	ld	a5,112(sp)
   1df48:	06812583          	lw	a1,104(sp)
   1df4c:	000e9663          	bnez	t4,1df58 <_svfiprintf_r+0x31c>
   1df50:	41740e3b          	subw	t3,s0,s7
   1df54:	35c04663          	bgtz	t3,1e2a0 <_svfiprintf_r+0x664>
   1df58:	05714f83          	lbu	t6,87(sp)
   1df5c:	0015851b          	addiw	a0,a1,1
   1df60:	01070613          	addi	a2,a4,16
   1df64:	040f8063          	beqz	t6,1dfa4 <_svfiprintf_r+0x368>
   1df68:	05710f93          	addi	t6,sp,87
   1df6c:	00178793          	addi	a5,a5,1
   1df70:	01f73023          	sd	t6,0(a4)
   1df74:	00100f93          	li	t6,1
   1df78:	01f73423          	sd	t6,8(a4)
   1df7c:	06f13823          	sd	a5,112(sp)
   1df80:	06a12423          	sw	a0,104(sp)
   1df84:	00700e13          	li	t3,7
   1df88:	40ae4263          	blt	t3,a0,1e38c <_svfiprintf_r+0x750>
   1df8c:	00258f9b          	addiw	t6,a1,2
   1df90:	02070e13          	addi	t3,a4,32
   1df94:	00050593          	mv	a1,a0
   1df98:	00060713          	mv	a4,a2
   1df9c:	000f8513          	mv	a0,t6
   1dfa0:	000e0613          	mv	a2,t3
   1dfa4:	020f0c63          	beqz	t5,1dfdc <_svfiprintf_r+0x3a0>
   1dfa8:	05810593          	addi	a1,sp,88
   1dfac:	00b73023          	sd	a1,0(a4)
   1dfb0:	00278793          	addi	a5,a5,2
   1dfb4:	00200593          	li	a1,2
   1dfb8:	00b73423          	sd	a1,8(a4)
   1dfbc:	06f13823          	sd	a5,112(sp)
   1dfc0:	06a12423          	sw	a0,104(sp)
   1dfc4:	00700713          	li	a4,7
   1dfc8:	40a74463          	blt	a4,a0,1e3d0 <_svfiprintf_r+0x794>
   1dfcc:	00050593          	mv	a1,a0
   1dfd0:	00060713          	mv	a4,a2
   1dfd4:	0015051b          	addiw	a0,a0,1
   1dfd8:	01060613          	addi	a2,a2,16
   1dfdc:	08000e13          	li	t3,128
   1dfe0:	0bce8c63          	beq	t4,t3,1e098 <_svfiprintf_r+0x45c>
   1dfe4:	412686bb          	subw	a3,a3,s2
   1dfe8:	16d04463          	bgtz	a3,1e150 <_svfiprintf_r+0x514>
   1dfec:	00f907b3          	add	a5,s2,a5
   1dff0:	01973023          	sd	s9,0(a4)
   1dff4:	01273423          	sd	s2,8(a4)
   1dff8:	06f13823          	sd	a5,112(sp)
   1dffc:	06a12423          	sw	a0,104(sp)
   1e000:	00700713          	li	a4,7
   1e004:	20a74463          	blt	a4,a0,1e20c <_svfiprintf_r+0x5d0>
   1e008:	004d7893          	andi	a7,s10,4
   1e00c:	00088663          	beqz	a7,1e018 <_svfiprintf_r+0x3dc>
   1e010:	4174093b          	subw	s2,s0,s7
   1e014:	3f204c63          	bgtz	s2,1e40c <_svfiprintf_r+0x7d0>
   1e018:	00040713          	mv	a4,s0
   1e01c:	01745463          	bge	s0,s7,1e024 <_svfiprintf_r+0x3e8>
   1e020:	000b8713          	mv	a4,s7
   1e024:	00013683          	ld	a3,0(sp)
   1e028:	00d7073b          	addw	a4,a4,a3
   1e02c:	00e13023          	sd	a4,0(sp)
   1e030:	1e079e63          	bnez	a5,1e22c <_svfiprintf_r+0x5f0>
   1e034:	000dc783          	lbu	a5,0(s11)
   1e038:	06012423          	sw	zero,104(sp)
   1e03c:	000a0713          	mv	a4,s4
   1e040:	ca0792e3          	bnez	a5,1dce4 <_svfiprintf_r+0xa8>
   1e044:	07013783          	ld	a5,112(sp)
   1e048:	240798e3          	bnez	a5,1ea98 <_svfiprintf_r+0xe5c>
   1e04c:	0109d783          	lhu	a5,16(s3)
   1e050:	0407f793          	andi	a5,a5,64
   1e054:	280790e3          	bnez	a5,1ead4 <_svfiprintf_r+0xe98>
   1e058:	1c813083          	ld	ra,456(sp)
   1e05c:	1c013403          	ld	s0,448(sp)
   1e060:	00013503          	ld	a0,0(sp)
   1e064:	1b813483          	ld	s1,440(sp)
   1e068:	1b013903          	ld	s2,432(sp)
   1e06c:	1a813983          	ld	s3,424(sp)
   1e070:	1a013a03          	ld	s4,416(sp)
   1e074:	19813a83          	ld	s5,408(sp)
   1e078:	19013b03          	ld	s6,400(sp)
   1e07c:	18813b83          	ld	s7,392(sp)
   1e080:	18013c03          	ld	s8,384(sp)
   1e084:	17813c83          	ld	s9,376(sp)
   1e088:	17013d03          	ld	s10,368(sp)
   1e08c:	16813d83          	ld	s11,360(sp)
   1e090:	1d010113          	addi	sp,sp,464
   1e094:	00008067          	ret
   1e098:	41740e3b          	subw	t3,s0,s7
   1e09c:	f5c054e3          	blez	t3,1dfe4 <_svfiprintf_r+0x3a8>
   1e0a0:	01000e93          	li	t4,16
   1e0a4:	21cedee3          	bge	t4,t3,1eac0 <_svfiprintf_r+0xe84>
   1e0a8:	00700f13          	li	t5,7
   1e0ac:	00c0006f          	j	1e0b8 <_svfiprintf_r+0x47c>
   1e0b0:	ff0e0e1b          	addiw	t3,t3,-16
   1e0b4:	07ced263          	bge	t4,t3,1e118 <_svfiprintf_r+0x4dc>
   1e0b8:	0015859b          	addiw	a1,a1,1
   1e0bc:	01078793          	addi	a5,a5,16
   1e0c0:	00973023          	sd	s1,0(a4)
   1e0c4:	01d73423          	sd	t4,8(a4)
   1e0c8:	06f13823          	sd	a5,112(sp)
   1e0cc:	06b12423          	sw	a1,104(sp)
   1e0d0:	01070713          	addi	a4,a4,16
   1e0d4:	fcbf5ee3          	bge	t5,a1,1e0b0 <_svfiprintf_r+0x474>
   1e0d8:	06010613          	addi	a2,sp,96
   1e0dc:	00098593          	mv	a1,s3
   1e0e0:	000a8513          	mv	a0,s5
   1e0e4:	02d13023          	sd	a3,32(sp)
   1e0e8:	01c13423          	sd	t3,8(sp)
   1e0ec:	969ff0ef          	jal	ra,1da54 <__ssprint_r>
   1e0f0:	f4051ee3          	bnez	a0,1e04c <_svfiprintf_r+0x410>
   1e0f4:	00813e03          	ld	t3,8(sp)
   1e0f8:	01000e93          	li	t4,16
   1e0fc:	07013783          	ld	a5,112(sp)
   1e100:	ff0e0e1b          	addiw	t3,t3,-16
   1e104:	06812583          	lw	a1,104(sp)
   1e108:	02013683          	ld	a3,32(sp)
   1e10c:	000a0713          	mv	a4,s4
   1e110:	00700f13          	li	t5,7
   1e114:	fbcec2e3          	blt	t4,t3,1e0b8 <_svfiprintf_r+0x47c>
   1e118:	0015859b          	addiw	a1,a1,1
   1e11c:	01070e93          	addi	t4,a4,16
   1e120:	01c787b3          	add	a5,a5,t3
   1e124:	00973023          	sd	s1,0(a4)
   1e128:	01c73423          	sd	t3,8(a4)
   1e12c:	06f13823          	sd	a5,112(sp)
   1e130:	06b12423          	sw	a1,104(sp)
   1e134:	00700713          	li	a4,7
   1e138:	04b740e3          	blt	a4,a1,1e978 <_svfiprintf_r+0xd3c>
   1e13c:	412686bb          	subw	a3,a3,s2
   1e140:	0015851b          	addiw	a0,a1,1
   1e144:	010e8613          	addi	a2,t4,16
   1e148:	000e8713          	mv	a4,t4
   1e14c:	ead050e3          	blez	a3,1dfec <_svfiprintf_r+0x3b0>
   1e150:	01000e13          	li	t3,16
   1e154:	0ede5ae3          	bge	t3,a3,1ea48 <_svfiprintf_r+0xe0c>
   1e158:	00700e93          	li	t4,7
   1e15c:	00c0006f          	j	1e168 <_svfiprintf_r+0x52c>
   1e160:	ff06869b          	addiw	a3,a3,-16
   1e164:	04de5e63          	bge	t3,a3,1e1c0 <_svfiprintf_r+0x584>
   1e168:	0015859b          	addiw	a1,a1,1
   1e16c:	01078793          	addi	a5,a5,16
   1e170:	00973023          	sd	s1,0(a4)
   1e174:	01c73423          	sd	t3,8(a4)
   1e178:	06f13823          	sd	a5,112(sp)
   1e17c:	06b12423          	sw	a1,104(sp)
   1e180:	01070713          	addi	a4,a4,16
   1e184:	fcbedee3          	bge	t4,a1,1e160 <_svfiprintf_r+0x524>
   1e188:	06010613          	addi	a2,sp,96
   1e18c:	00098593          	mv	a1,s3
   1e190:	000a8513          	mv	a0,s5
   1e194:	00d13423          	sd	a3,8(sp)
   1e198:	8bdff0ef          	jal	ra,1da54 <__ssprint_r>
   1e19c:	ea0518e3          	bnez	a0,1e04c <_svfiprintf_r+0x410>
   1e1a0:	00813683          	ld	a3,8(sp)
   1e1a4:	01000e13          	li	t3,16
   1e1a8:	07013783          	ld	a5,112(sp)
   1e1ac:	ff06869b          	addiw	a3,a3,-16
   1e1b0:	06812583          	lw	a1,104(sp)
   1e1b4:	000a0713          	mv	a4,s4
   1e1b8:	00700e93          	li	t4,7
   1e1bc:	fade46e3          	blt	t3,a3,1e168 <_svfiprintf_r+0x52c>
   1e1c0:	0015851b          	addiw	a0,a1,1
   1e1c4:	01070593          	addi	a1,a4,16
   1e1c8:	00d787b3          	add	a5,a5,a3
   1e1cc:	00973023          	sd	s1,0(a4)
   1e1d0:	00d73423          	sd	a3,8(a4)
   1e1d4:	06f13823          	sd	a5,112(sp)
   1e1d8:	06a12423          	sw	a0,104(sp)
   1e1dc:	00700713          	li	a4,7
   1e1e0:	5ca74e63          	blt	a4,a0,1e7bc <_svfiprintf_r+0xb80>
   1e1e4:	00058713          	mv	a4,a1
   1e1e8:	0015051b          	addiw	a0,a0,1
   1e1ec:	00f907b3          	add	a5,s2,a5
   1e1f0:	01973023          	sd	s9,0(a4)
   1e1f4:	01273423          	sd	s2,8(a4)
   1e1f8:	06f13823          	sd	a5,112(sp)
   1e1fc:	06a12423          	sw	a0,104(sp)
   1e200:	00700713          	li	a4,7
   1e204:	01058613          	addi	a2,a1,16
   1e208:	e0a750e3          	bge	a4,a0,1e008 <_svfiprintf_r+0x3cc>
   1e20c:	06010613          	addi	a2,sp,96
   1e210:	00098593          	mv	a1,s3
   1e214:	000a8513          	mv	a0,s5
   1e218:	83dff0ef          	jal	ra,1da54 <__ssprint_r>
   1e21c:	e20518e3          	bnez	a0,1e04c <_svfiprintf_r+0x410>
   1e220:	07013783          	ld	a5,112(sp)
   1e224:	000a0613          	mv	a2,s4
   1e228:	de1ff06f          	j	1e008 <_svfiprintf_r+0x3cc>
   1e22c:	06010613          	addi	a2,sp,96
   1e230:	00098593          	mv	a1,s3
   1e234:	000a8513          	mv	a0,s5
   1e238:	81dff0ef          	jal	ra,1da54 <__ssprint_r>
   1e23c:	de050ce3          	beqz	a0,1e034 <_svfiprintf_r+0x3f8>
   1e240:	e0dff06f          	j	1e04c <_svfiprintf_r+0x410>
   1e244:	00100613          	li	a2,1
   1e248:	06c788e3          	beq	a5,a2,1eab8 <_svfiprintf_r+0xe7c>
   1e24c:	00200613          	li	a2,2
   1e250:	000d0e13          	mv	t3,s10
   1e254:	c8c798e3          	bne	a5,a2,1dee4 <_svfiprintf_r+0x2a8>
   1e258:	0dc10913          	addi	s2,sp,220
   1e25c:	00090c93          	mv	s9,s2
   1e260:	01013603          	ld	a2,16(sp)
   1e264:	00fbf793          	andi	a5,s7,15
   1e268:	fffc8c93          	addi	s9,s9,-1
   1e26c:	00f607b3          	add	a5,a2,a5
   1e270:	0007c783          	lbu	a5,0(a5)
   1e274:	004bdb93          	srli	s7,s7,0x4
   1e278:	00fc8023          	sb	a5,0(s9)
   1e27c:	fe0b92e3          	bnez	s7,1e260 <_svfiprintf_r+0x624>
   1e280:	c91ff06f          	j	1df10 <_svfiprintf_r+0x2d4>
   1e284:	06010613          	addi	a2,sp,96
   1e288:	00098593          	mv	a1,s3
   1e28c:	000a8513          	mv	a0,s5
   1e290:	fc4ff0ef          	jal	ra,1da54 <__ssprint_r>
   1e294:	da051ce3          	bnez	a0,1e04c <_svfiprintf_r+0x410>
   1e298:	000a0713          	mv	a4,s4
   1e29c:	a99ff06f          	j	1dd34 <_svfiprintf_r+0xf8>
   1e2a0:	01000613          	li	a2,16
   1e2a4:	09c65463          	bge	a2,t3,1e32c <_svfiprintf_r+0x6f0>
   1e2a8:	01000f93          	li	t6,16
   1e2ac:	00700293          	li	t0,7
   1e2b0:	00c0006f          	j	1e2bc <_svfiprintf_r+0x680>
   1e2b4:	ff0e0e1b          	addiw	t3,t3,-16
   1e2b8:	07cfda63          	bge	t6,t3,1e32c <_svfiprintf_r+0x6f0>
   1e2bc:	0015859b          	addiw	a1,a1,1
   1e2c0:	01078793          	addi	a5,a5,16
   1e2c4:	01673023          	sd	s6,0(a4)
   1e2c8:	01f73423          	sd	t6,8(a4)
   1e2cc:	06f13823          	sd	a5,112(sp)
   1e2d0:	06b12423          	sw	a1,104(sp)
   1e2d4:	01070713          	addi	a4,a4,16
   1e2d8:	fcb2dee3          	bge	t0,a1,1e2b4 <_svfiprintf_r+0x678>
   1e2dc:	06010613          	addi	a2,sp,96
   1e2e0:	00098593          	mv	a1,s3
   1e2e4:	000a8513          	mv	a0,s5
   1e2e8:	03c13823          	sd	t3,48(sp)
   1e2ec:	02d13423          	sd	a3,40(sp)
   1e2f0:	03d13023          	sd	t4,32(sp)
   1e2f4:	01e13423          	sd	t5,8(sp)
   1e2f8:	f5cff0ef          	jal	ra,1da54 <__ssprint_r>
   1e2fc:	d40518e3          	bnez	a0,1e04c <_svfiprintf_r+0x410>
   1e300:	03013e03          	ld	t3,48(sp)
   1e304:	01000f93          	li	t6,16
   1e308:	07013783          	ld	a5,112(sp)
   1e30c:	ff0e0e1b          	addiw	t3,t3,-16
   1e310:	06812583          	lw	a1,104(sp)
   1e314:	02813683          	ld	a3,40(sp)
   1e318:	02013e83          	ld	t4,32(sp)
   1e31c:	00813f03          	ld	t5,8(sp)
   1e320:	000a0713          	mv	a4,s4
   1e324:	00700293          	li	t0,7
   1e328:	f9cfcae3          	blt	t6,t3,1e2bc <_svfiprintf_r+0x680>
   1e32c:	0015859b          	addiw	a1,a1,1
   1e330:	01c787b3          	add	a5,a5,t3
   1e334:	01673023          	sd	s6,0(a4)
   1e338:	01c73423          	sd	t3,8(a4)
   1e33c:	06f13823          	sd	a5,112(sp)
   1e340:	06b12423          	sw	a1,104(sp)
   1e344:	00700613          	li	a2,7
   1e348:	01070713          	addi	a4,a4,16
   1e34c:	c0b656e3          	bge	a2,a1,1df58 <_svfiprintf_r+0x31c>
   1e350:	06010613          	addi	a2,sp,96
   1e354:	00098593          	mv	a1,s3
   1e358:	000a8513          	mv	a0,s5
   1e35c:	02d13423          	sd	a3,40(sp)
   1e360:	03d13023          	sd	t4,32(sp)
   1e364:	01e13423          	sd	t5,8(sp)
   1e368:	eecff0ef          	jal	ra,1da54 <__ssprint_r>
   1e36c:	ce0510e3          	bnez	a0,1e04c <_svfiprintf_r+0x410>
   1e370:	07013783          	ld	a5,112(sp)
   1e374:	06812583          	lw	a1,104(sp)
   1e378:	02813683          	ld	a3,40(sp)
   1e37c:	02013e83          	ld	t4,32(sp)
   1e380:	00813f03          	ld	t5,8(sp)
   1e384:	000a0713          	mv	a4,s4
   1e388:	bd1ff06f          	j	1df58 <_svfiprintf_r+0x31c>
   1e38c:	06010613          	addi	a2,sp,96
   1e390:	00098593          	mv	a1,s3
   1e394:	000a8513          	mv	a0,s5
   1e398:	02d13423          	sd	a3,40(sp)
   1e39c:	03d13023          	sd	t4,32(sp)
   1e3a0:	01e13423          	sd	t5,8(sp)
   1e3a4:	eb0ff0ef          	jal	ra,1da54 <__ssprint_r>
   1e3a8:	ca0512e3          	bnez	a0,1e04c <_svfiprintf_r+0x410>
   1e3ac:	06812583          	lw	a1,104(sp)
   1e3b0:	07013783          	ld	a5,112(sp)
   1e3b4:	02813683          	ld	a3,40(sp)
   1e3b8:	02013e83          	ld	t4,32(sp)
   1e3bc:	00813f03          	ld	t5,8(sp)
   1e3c0:	0f010613          	addi	a2,sp,240
   1e3c4:	0015851b          	addiw	a0,a1,1
   1e3c8:	000a0713          	mv	a4,s4
   1e3cc:	bd9ff06f          	j	1dfa4 <_svfiprintf_r+0x368>
   1e3d0:	06010613          	addi	a2,sp,96
   1e3d4:	00098593          	mv	a1,s3
   1e3d8:	000a8513          	mv	a0,s5
   1e3dc:	02d13023          	sd	a3,32(sp)
   1e3e0:	01d13423          	sd	t4,8(sp)
   1e3e4:	e70ff0ef          	jal	ra,1da54 <__ssprint_r>
   1e3e8:	c60512e3          	bnez	a0,1e04c <_svfiprintf_r+0x410>
   1e3ec:	06812583          	lw	a1,104(sp)
   1e3f0:	07013783          	ld	a5,112(sp)
   1e3f4:	02013683          	ld	a3,32(sp)
   1e3f8:	00813e83          	ld	t4,8(sp)
   1e3fc:	0f010613          	addi	a2,sp,240
   1e400:	0015851b          	addiw	a0,a1,1
   1e404:	000a0713          	mv	a4,s4
   1e408:	bd5ff06f          	j	1dfdc <_svfiprintf_r+0x3a0>
   1e40c:	01000693          	li	a3,16
   1e410:	06812703          	lw	a4,104(sp)
   1e414:	0726d063          	bge	a3,s2,1e474 <_svfiprintf_r+0x838>
   1e418:	01000d13          	li	s10,16
   1e41c:	00700c93          	li	s9,7
   1e420:	00c0006f          	j	1e42c <_svfiprintf_r+0x7f0>
   1e424:	ff09091b          	addiw	s2,s2,-16
   1e428:	052d5663          	bge	s10,s2,1e474 <_svfiprintf_r+0x838>
   1e42c:	0017071b          	addiw	a4,a4,1
   1e430:	01078793          	addi	a5,a5,16
   1e434:	01663023          	sd	s6,0(a2)
   1e438:	01a63423          	sd	s10,8(a2)
   1e43c:	06f13823          	sd	a5,112(sp)
   1e440:	06e12423          	sw	a4,104(sp)
   1e444:	01060613          	addi	a2,a2,16
   1e448:	fcecdee3          	bge	s9,a4,1e424 <_svfiprintf_r+0x7e8>
   1e44c:	06010613          	addi	a2,sp,96
   1e450:	00098593          	mv	a1,s3
   1e454:	000a8513          	mv	a0,s5
   1e458:	dfcff0ef          	jal	ra,1da54 <__ssprint_r>
   1e45c:	be0518e3          	bnez	a0,1e04c <_svfiprintf_r+0x410>
   1e460:	ff09091b          	addiw	s2,s2,-16
   1e464:	07013783          	ld	a5,112(sp)
   1e468:	06812703          	lw	a4,104(sp)
   1e46c:	000a0613          	mv	a2,s4
   1e470:	fb2d4ee3          	blt	s10,s2,1e42c <_svfiprintf_r+0x7f0>
   1e474:	0017069b          	addiw	a3,a4,1
   1e478:	012787b3          	add	a5,a5,s2
   1e47c:	01663023          	sd	s6,0(a2)
   1e480:	01263423          	sd	s2,8(a2)
   1e484:	06f13823          	sd	a5,112(sp)
   1e488:	06d12423          	sw	a3,104(sp)
   1e48c:	00700713          	li	a4,7
   1e490:	b8d754e3          	bge	a4,a3,1e018 <_svfiprintf_r+0x3dc>
   1e494:	06010613          	addi	a2,sp,96
   1e498:	00098593          	mv	a1,s3
   1e49c:	000a8513          	mv	a0,s5
   1e4a0:	db4ff0ef          	jal	ra,1da54 <__ssprint_r>
   1e4a4:	ba0514e3          	bnez	a0,1e04c <_svfiprintf_r+0x410>
   1e4a8:	07013783          	ld	a5,112(sp)
   1e4ac:	b6dff06f          	j	1e018 <_svfiprintf_r+0x3dc>
   1e4b0:	98069ae3          	bnez	a3,1de44 <_svfiprintf_r+0x208>
   1e4b4:	000e0d13          	mv	s10,t3
   1e4b8:	00000693          	li	a3,0
   1e4bc:	00000913          	li	s2,0
   1e4c0:	0dc10c93          	addi	s9,sp,220
   1e4c4:	a55ff06f          	j	1df18 <_svfiprintf_r+0x2dc>
   1e4c8:	03000593          	li	a1,48
   1e4cc:	a4b782e3          	beq	a5,a1,1df10 <_svfiprintf_r+0x2d4>
   1e4d0:	ffe60613          	addi	a2,a2,-2
   1e4d4:	febc8fa3          	sb	a1,-1(s9)
   1e4d8:	40c9093b          	subw	s2,s2,a2
   1e4dc:	000e0d13          	mv	s10,t3
   1e4e0:	00060c93          	mv	s9,a2
   1e4e4:	a35ff06f          	j	1df18 <_svfiprintf_r+0x2dc>
   1e4e8:	010d7793          	andi	a5,s10,16
   1e4ec:	980792e3          	bnez	a5,1de70 <_svfiprintf_r+0x234>
   1e4f0:	040d7793          	andi	a5,s10,64
   1e4f4:	000c2b83          	lw	s7,0(s8)
   1e4f8:	50078063          	beqz	a5,1e9f8 <_svfiprintf_r+0xdbc>
   1e4fc:	030b9b93          	slli	s7,s7,0x30
   1e500:	030bdb93          	srli	s7,s7,0x30
   1e504:	971ff06f          	j	1de74 <_svfiprintf_r+0x238>
   1e508:	010d7793          	andi	a5,s10,16
   1e50c:	900794e3          	bnez	a5,1de14 <_svfiprintf_r+0x1d8>
   1e510:	040d7793          	andi	a5,s10,64
   1e514:	50078263          	beqz	a5,1ea18 <_svfiprintf_r+0xddc>
   1e518:	000c1b83          	lh	s7,0(s8)
   1e51c:	000b8793          	mv	a5,s7
   1e520:	9007d0e3          	bgez	a5,1de20 <_svfiprintf_r+0x1e4>
   1e524:	02d00793          	li	a5,45
   1e528:	04f10ba3          	sb	a5,87(sp)
   1e52c:	41700bb3          	neg	s7,s7
   1e530:	00060c13          	mv	s8,a2
   1e534:	000d0e13          	mv	t3,s10
   1e538:	00100793          	li	a5,1
   1e53c:	94dff06f          	j	1de88 <_svfiprintf_r+0x24c>
   1e540:	000c3c83          	ld	s9,0(s8)
   1e544:	04010ba3          	sb	zero,87(sp)
   1e548:	008c0c13          	addi	s8,s8,8
   1e54c:	480c8463          	beqz	s9,1e9d4 <_svfiprintf_r+0xd98>
   1e550:	fff00793          	li	a5,-1
   1e554:	3ef68463          	beq	a3,a5,1e93c <_svfiprintf_r+0xd00>
   1e558:	00068613          	mv	a2,a3
   1e55c:	00000593          	li	a1,0
   1e560:	000c8513          	mv	a0,s9
   1e564:	02e13023          	sd	a4,32(sp)
   1e568:	00d13423          	sd	a3,8(sp)
   1e56c:	b25f80ef          	jal	ra,17090 <memchr>
   1e570:	00813683          	ld	a3,8(sp)
   1e574:	02013703          	ld	a4,32(sp)
   1e578:	52050a63          	beqz	a0,1eaac <_svfiprintf_r+0xe70>
   1e57c:	4195093b          	subw	s2,a0,s9
   1e580:	00000693          	li	a3,0
   1e584:	995ff06f          	j	1df18 <_svfiprintf_r+0x2dc>
   1e588:	000c2783          	lw	a5,0(s8)
   1e58c:	04010ba3          	sb	zero,87(sp)
   1e590:	008c0c13          	addi	s8,s8,8
   1e594:	06f10c23          	sb	a5,120(sp)
   1e598:	00100b93          	li	s7,1
   1e59c:	00100913          	li	s2,1
   1e5a0:	07810c93          	addi	s9,sp,120
   1e5a4:	00000693          	li	a3,0
   1e5a8:	98dff06f          	j	1df34 <_svfiprintf_r+0x2f8>
   1e5ac:	020d6893          	ori	a7,s10,32
   1e5b0:	000dc783          	lbu	a5,0(s11)
   1e5b4:	00088d1b          	sext.w	s10,a7
   1e5b8:	fb0ff06f          	j	1dd68 <_svfiprintf_r+0x12c>
   1e5bc:	ffff87b7          	lui	a5,0xffff8
   1e5c0:	002d6893          	ori	a7,s10,2
   1e5c4:	8307c793          	xori	a5,a5,-2000
   1e5c8:	00021d37          	lui	s10,0x21
   1e5cc:	04f11c23          	sh	a5,88(sp)
   1e5d0:	2e0d0793          	addi	a5,s10,736 # 212e0 <__clzdi2+0x7c>
   1e5d4:	000c3b83          	ld	s7,0(s8)
   1e5d8:	00f13823          	sd	a5,16(sp)
   1e5dc:	00088e1b          	sext.w	t3,a7
   1e5e0:	008c0c13          	addi	s8,s8,8
   1e5e4:	00200793          	li	a5,2
   1e5e8:	89dff06f          	j	1de84 <_svfiprintf_r+0x248>
   1e5ec:	020d7793          	andi	a5,s10,32
   1e5f0:	000c3683          	ld	a3,0(s8)
   1e5f4:	008c0c13          	addi	s8,s8,8
   1e5f8:	02079463          	bnez	a5,1e620 <_svfiprintf_r+0x9e4>
   1e5fc:	010d7793          	andi	a5,s10,16
   1e600:	02079063          	bnez	a5,1e620 <_svfiprintf_r+0x9e4>
   1e604:	040d7793          	andi	a5,s10,64
   1e608:	48079263          	bnez	a5,1ea8c <_svfiprintf_r+0xe50>
   1e60c:	200d7893          	andi	a7,s10,512
   1e610:	00013783          	ld	a5,0(sp)
   1e614:	4a088c63          	beqz	a7,1eacc <_svfiprintf_r+0xe90>
   1e618:	00f68023          	sb	a5,0(a3)
   1e61c:	ec0ff06f          	j	1dcdc <_svfiprintf_r+0xa0>
   1e620:	00013783          	ld	a5,0(sp)
   1e624:	00f6b023          	sd	a5,0(a3)
   1e628:	eb4ff06f          	j	1dcdc <_svfiprintf_r+0xa0>
   1e62c:	000dc783          	lbu	a5,0(s11)
   1e630:	06c00613          	li	a2,108
   1e634:	38c78663          	beq	a5,a2,1e9c0 <_svfiprintf_r+0xd84>
   1e638:	010d6893          	ori	a7,s10,16
   1e63c:	00088d1b          	sext.w	s10,a7
   1e640:	f28ff06f          	j	1dd68 <_svfiprintf_r+0x12c>
   1e644:	000dc783          	lbu	a5,0(s11)
   1e648:	06800613          	li	a2,104
   1e64c:	36c78063          	beq	a5,a2,1e9ac <_svfiprintf_r+0xd70>
   1e650:	040d6893          	ori	a7,s10,64
   1e654:	00088d1b          	sext.w	s10,a7
   1e658:	f10ff06f          	j	1dd68 <_svfiprintf_r+0x12c>
   1e65c:	010d6893          	ori	a7,s10,16
   1e660:	00088e1b          	sext.w	t3,a7
   1e664:	020e7793          	andi	a5,t3,32
   1e668:	008c0613          	addi	a2,s8,8
   1e66c:	02079663          	bnez	a5,1e698 <_svfiprintf_r+0xa5c>
   1e670:	010e7793          	andi	a5,t3,16
   1e674:	02079263          	bnez	a5,1e698 <_svfiprintf_r+0xa5c>
   1e678:	040e7793          	andi	a5,t3,64
   1e67c:	000c2b83          	lw	s7,0(s8)
   1e680:	3a078863          	beqz	a5,1ea30 <_svfiprintf_r+0xdf4>
   1e684:	030b9b93          	slli	s7,s7,0x30
   1e688:	030bdb93          	srli	s7,s7,0x30
   1e68c:	00060c13          	mv	s8,a2
   1e690:	00100793          	li	a5,1
   1e694:	ff0ff06f          	j	1de84 <_svfiprintf_r+0x248>
   1e698:	000c3b83          	ld	s7,0(s8)
   1e69c:	00100793          	li	a5,1
   1e6a0:	00060c13          	mv	s8,a2
   1e6a4:	fe0ff06f          	j	1de84 <_svfiprintf_r+0x248>
   1e6a8:	080d6893          	ori	a7,s10,128
   1e6ac:	000dc783          	lbu	a5,0(s11)
   1e6b0:	00088d1b          	sext.w	s10,a7
   1e6b4:	eb4ff06f          	j	1dd68 <_svfiprintf_r+0x12c>
   1e6b8:	000dc783          	lbu	a5,0(s11)
   1e6bc:	001d8613          	addi	a2,s11,1
   1e6c0:	42a78063          	beq	a5,a0,1eae0 <_svfiprintf_r+0xea4>
   1e6c4:	fd07859b          	addiw	a1,a5,-48
   1e6c8:	00060d93          	mv	s11,a2
   1e6cc:	00000693          	li	a3,0
   1e6d0:	eabbe263          	bltu	s7,a1,1dd74 <_svfiprintf_r+0x138>
   1e6d4:	000dc783          	lbu	a5,0(s11)
   1e6d8:	0026961b          	slliw	a2,a3,0x2
   1e6dc:	00d606bb          	addw	a3,a2,a3
   1e6e0:	0016969b          	slliw	a3,a3,0x1
   1e6e4:	00b686bb          	addw	a3,a3,a1
   1e6e8:	fd07859b          	addiw	a1,a5,-48
   1e6ec:	001d8d93          	addi	s11,s11,1
   1e6f0:	febbf2e3          	bgeu	s7,a1,1e6d4 <_svfiprintf_r+0xa98>
   1e6f4:	e80ff06f          	j	1dd74 <_svfiprintf_r+0x138>
   1e6f8:	000dc783          	lbu	a5,0(s11)
   1e6fc:	004d6893          	ori	a7,s10,4
   1e700:	00088d1b          	sext.w	s10,a7
   1e704:	e64ff06f          	j	1dd68 <_svfiprintf_r+0x12c>
   1e708:	02b00613          	li	a2,43
   1e70c:	000dc783          	lbu	a5,0(s11)
   1e710:	04c10ba3          	sb	a2,87(sp)
   1e714:	e54ff06f          	j	1dd68 <_svfiprintf_r+0x12c>
   1e718:	000c2403          	lw	s0,0(s8)
   1e71c:	000dc783          	lbu	a5,0(s11)
   1e720:	008c0c13          	addi	s8,s8,8
   1e724:	e4045263          	bgez	s0,1dd68 <_svfiprintf_r+0x12c>
   1e728:	4080043b          	negw	s0,s0
   1e72c:	fd1ff06f          	j	1e6fc <_svfiprintf_r+0xac0>
   1e730:	000a8513          	mv	a0,s5
   1e734:	02e13023          	sd	a4,32(sp)
   1e738:	00d13423          	sd	a3,8(sp)
   1e73c:	eddf70ef          	jal	ra,16618 <_localeconv_r>
   1e740:	00853783          	ld	a5,8(a0)
   1e744:	00078513          	mv	a0,a5
   1e748:	04f13023          	sd	a5,64(sp)
   1e74c:	894fa0ef          	jal	ra,187e0 <strlen>
   1e750:	00050793          	mv	a5,a0
   1e754:	000a8513          	mv	a0,s5
   1e758:	00078c93          	mv	s9,a5
   1e75c:	04f13423          	sd	a5,72(sp)
   1e760:	eb9f70ef          	jal	ra,16618 <_localeconv_r>
   1e764:	01053603          	ld	a2,16(a0)
   1e768:	00813683          	ld	a3,8(sp)
   1e76c:	02013703          	ld	a4,32(sp)
   1e770:	02c13c23          	sd	a2,56(sp)
   1e774:	120c8863          	beqz	s9,1e8a4 <_svfiprintf_r+0xc68>
   1e778:	000dc783          	lbu	a5,0(s11)
   1e77c:	de060663          	beqz	a2,1dd68 <_svfiprintf_r+0x12c>
   1e780:	00064603          	lbu	a2,0(a2)
   1e784:	de060263          	beqz	a2,1dd68 <_svfiprintf_r+0x12c>
   1e788:	400d6893          	ori	a7,s10,1024
   1e78c:	00088d1b          	sext.w	s10,a7
   1e790:	dd8ff06f          	j	1dd68 <_svfiprintf_r+0x12c>
   1e794:	001d6893          	ori	a7,s10,1
   1e798:	000dc783          	lbu	a5,0(s11)
   1e79c:	00088d1b          	sext.w	s10,a7
   1e7a0:	dc8ff06f          	j	1dd68 <_svfiprintf_r+0x12c>
   1e7a4:	05714603          	lbu	a2,87(sp)
   1e7a8:	000dc783          	lbu	a5,0(s11)
   1e7ac:	da061e63          	bnez	a2,1dd68 <_svfiprintf_r+0x12c>
   1e7b0:	02000613          	li	a2,32
   1e7b4:	04c10ba3          	sb	a2,87(sp)
   1e7b8:	db0ff06f          	j	1dd68 <_svfiprintf_r+0x12c>
   1e7bc:	06010613          	addi	a2,sp,96
   1e7c0:	00098593          	mv	a1,s3
   1e7c4:	000a8513          	mv	a0,s5
   1e7c8:	a8cff0ef          	jal	ra,1da54 <__ssprint_r>
   1e7cc:	880510e3          	bnez	a0,1e04c <_svfiprintf_r+0x410>
   1e7d0:	06812503          	lw	a0,104(sp)
   1e7d4:	07013783          	ld	a5,112(sp)
   1e7d8:	0f010613          	addi	a2,sp,240
   1e7dc:	0015051b          	addiw	a0,a0,1
   1e7e0:	000a0713          	mv	a4,s4
   1e7e4:	809ff06f          	j	1dfec <_svfiprintf_r+0x3b0>
   1e7e8:	0dc10913          	addi	s2,sp,220
   1e7ec:	400e7f13          	andi	t5,t3,1024
   1e7f0:	00000593          	li	a1,0
   1e7f4:	00090613          	mv	a2,s2
   1e7f8:	00a00893          	li	a7,10
   1e7fc:	00900e93          	li	t4,9
   1e800:	0ff00d13          	li	s10,255
   1e804:	0140006f          	j	1e818 <_svfiprintf_r+0xbdc>
   1e808:	031bd7b3          	divu	a5,s7,a7
   1e80c:	f17ef263          	bgeu	t4,s7,1df10 <_svfiprintf_r+0x2d4>
   1e810:	00078b93          	mv	s7,a5
   1e814:	000c8613          	mv	a2,s9
   1e818:	fff60c93          	addi	s9,a2,-1
   1e81c:	0015859b          	addiw	a1,a1,1
   1e820:	031bf7b3          	remu	a5,s7,a7
   1e824:	0307879b          	addiw	a5,a5,48
   1e828:	fef60fa3          	sb	a5,-1(a2)
   1e82c:	fc0f0ee3          	beqz	t5,1e808 <_svfiprintf_r+0xbcc>
   1e830:	03813783          	ld	a5,56(sp)
   1e834:	0007c783          	lbu	a5,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd3d60>
   1e838:	fcb798e3          	bne	a5,a1,1e808 <_svfiprintf_r+0xbcc>
   1e83c:	fda786e3          	beq	a5,s10,1e808 <_svfiprintf_r+0xbcc>
   1e840:	ed7ef863          	bgeu	t4,s7,1df10 <_svfiprintf_r+0x2d4>
   1e844:	04813783          	ld	a5,72(sp)
   1e848:	04013583          	ld	a1,64(sp)
   1e84c:	03e13823          	sd	t5,48(sp)
   1e850:	40fc8cb3          	sub	s9,s9,a5
   1e854:	00078613          	mv	a2,a5
   1e858:	000c8513          	mv	a0,s9
   1e85c:	02e13423          	sd	a4,40(sp)
   1e860:	02d13023          	sd	a3,32(sp)
   1e864:	01c13423          	sd	t3,8(sp)
   1e868:	840fa0ef          	jal	ra,188a8 <strncpy>
   1e86c:	03813703          	ld	a4,56(sp)
   1e870:	00a00893          	li	a7,10
   1e874:	031bd7b3          	divu	a5,s7,a7
   1e878:	00174603          	lbu	a2,1(a4)
   1e87c:	00813e03          	ld	t3,8(sp)
   1e880:	02013683          	ld	a3,32(sp)
   1e884:	00c03633          	snez	a2,a2
   1e888:	00c70733          	add	a4,a4,a2
   1e88c:	02e13c23          	sd	a4,56(sp)
   1e890:	03013f03          	ld	t5,48(sp)
   1e894:	02813703          	ld	a4,40(sp)
   1e898:	00000593          	li	a1,0
   1e89c:	00900e93          	li	t4,9
   1e8a0:	f71ff06f          	j	1e810 <_svfiprintf_r+0xbd4>
   1e8a4:	000dc783          	lbu	a5,0(s11)
   1e8a8:	cc0ff06f          	j	1dd68 <_svfiprintf_r+0x12c>
   1e8ac:	000d0e13          	mv	t3,s10
   1e8b0:	db5ff06f          	j	1e664 <_svfiprintf_r+0xa28>
   1e8b4:	00021637          	lui	a2,0x21
   1e8b8:	2c860613          	addi	a2,a2,712 # 212c8 <__clzdi2+0x64>
   1e8bc:	00c13823          	sd	a2,16(sp)
   1e8c0:	020d7613          	andi	a2,s10,32
   1e8c4:	008c0593          	addi	a1,s8,8
   1e8c8:	06061663          	bnez	a2,1e934 <_svfiprintf_r+0xcf8>
   1e8cc:	010d7613          	andi	a2,s10,16
   1e8d0:	06061263          	bnez	a2,1e934 <_svfiprintf_r+0xcf8>
   1e8d4:	040d7613          	andi	a2,s10,64
   1e8d8:	000c2b83          	lw	s7,0(s8)
   1e8dc:	12060663          	beqz	a2,1ea08 <_svfiprintf_r+0xdcc>
   1e8e0:	030b9b93          	slli	s7,s7,0x30
   1e8e4:	030bdb93          	srli	s7,s7,0x30
   1e8e8:	001d7613          	andi	a2,s10,1
   1e8ec:	00060e63          	beqz	a2,1e908 <_svfiprintf_r+0xccc>
   1e8f0:	000b8c63          	beqz	s7,1e908 <_svfiprintf_r+0xccc>
   1e8f4:	002d6893          	ori	a7,s10,2
   1e8f8:	03000613          	li	a2,48
   1e8fc:	04c10c23          	sb	a2,88(sp)
   1e900:	04f10ca3          	sb	a5,89(sp)
   1e904:	00088d1b          	sext.w	s10,a7
   1e908:	bffd7893          	andi	a7,s10,-1025
   1e90c:	00088e1b          	sext.w	t3,a7
   1e910:	00058c13          	mv	s8,a1
   1e914:	00200793          	li	a5,2
   1e918:	d6cff06f          	j	1de84 <_svfiprintf_r+0x248>
   1e91c:	00021637          	lui	a2,0x21
   1e920:	2e060613          	addi	a2,a2,736 # 212e0 <__clzdi2+0x7c>
   1e924:	00c13823          	sd	a2,16(sp)
   1e928:	020d7613          	andi	a2,s10,32
   1e92c:	008c0593          	addi	a1,s8,8
   1e930:	f8060ee3          	beqz	a2,1e8cc <_svfiprintf_r+0xc90>
   1e934:	000c3b83          	ld	s7,0(s8)
   1e938:	fb1ff06f          	j	1e8e8 <_svfiprintf_r+0xcac>
   1e93c:	000c8513          	mv	a0,s9
   1e940:	00e13423          	sd	a4,8(sp)
   1e944:	e9df90ef          	jal	ra,187e0 <strlen>
   1e948:	00813703          	ld	a4,8(sp)
   1e94c:	0005091b          	sext.w	s2,a0
   1e950:	00000693          	li	a3,0
   1e954:	dc4ff06f          	j	1df18 <_svfiprintf_r+0x2dc>
   1e958:	04000593          	li	a1,64
   1e95c:	f2df70ef          	jal	ra,16888 <_malloc_r>
   1e960:	00a9b023          	sd	a0,0(s3)
   1e964:	00a9bc23          	sd	a0,24(s3)
   1e968:	18050c63          	beqz	a0,1eb00 <_svfiprintf_r+0xec4>
   1e96c:	04000793          	li	a5,64
   1e970:	02f9a023          	sw	a5,32(s3)
   1e974:	b24ff06f          	j	1dc98 <_svfiprintf_r+0x5c>
   1e978:	06010613          	addi	a2,sp,96
   1e97c:	00098593          	mv	a1,s3
   1e980:	000a8513          	mv	a0,s5
   1e984:	00d13423          	sd	a3,8(sp)
   1e988:	8ccff0ef          	jal	ra,1da54 <__ssprint_r>
   1e98c:	ec051063          	bnez	a0,1e04c <_svfiprintf_r+0x410>
   1e990:	06812583          	lw	a1,104(sp)
   1e994:	07013783          	ld	a5,112(sp)
   1e998:	00813683          	ld	a3,8(sp)
   1e99c:	0f010613          	addi	a2,sp,240
   1e9a0:	0015851b          	addiw	a0,a1,1
   1e9a4:	000a0713          	mv	a4,s4
   1e9a8:	e3cff06f          	j	1dfe4 <_svfiprintf_r+0x3a8>
   1e9ac:	200d6893          	ori	a7,s10,512
   1e9b0:	001dc783          	lbu	a5,1(s11)
   1e9b4:	00088d1b          	sext.w	s10,a7
   1e9b8:	001d8d93          	addi	s11,s11,1
   1e9bc:	bacff06f          	j	1dd68 <_svfiprintf_r+0x12c>
   1e9c0:	020d6893          	ori	a7,s10,32
   1e9c4:	001dc783          	lbu	a5,1(s11)
   1e9c8:	00088d1b          	sext.w	s10,a7
   1e9cc:	001d8d93          	addi	s11,s11,1
   1e9d0:	b98ff06f          	j	1dd68 <_svfiprintf_r+0x12c>
   1e9d4:	00600793          	li	a5,6
   1e9d8:	0006891b          	sext.w	s2,a3
   1e9dc:	00d7f463          	bgeu	a5,a3,1e9e4 <_svfiprintf_r+0xda8>
   1e9e0:	00600913          	li	s2,6
   1e9e4:	00021337          	lui	t1,0x21
   1e9e8:	00090b93          	mv	s7,s2
   1e9ec:	2f830c93          	addi	s9,t1,760 # 212f8 <__clzdi2+0x94>
   1e9f0:	00000693          	li	a3,0
   1e9f4:	d40ff06f          	j	1df34 <_svfiprintf_r+0x2f8>
   1e9f8:	200d7793          	andi	a5,s10,512
   1e9fc:	08078263          	beqz	a5,1ea80 <_svfiprintf_r+0xe44>
   1ea00:	0ffbfb93          	zext.b	s7,s7
   1ea04:	c70ff06f          	j	1de74 <_svfiprintf_r+0x238>
   1ea08:	200d7613          	andi	a2,s10,512
   1ea0c:	06060463          	beqz	a2,1ea74 <_svfiprintf_r+0xe38>
   1ea10:	0ffbfb93          	zext.b	s7,s7
   1ea14:	ed5ff06f          	j	1e8e8 <_svfiprintf_r+0xcac>
   1ea18:	200d7793          	andi	a5,s10,512
   1ea1c:	04078463          	beqz	a5,1ea64 <_svfiprintf_r+0xe28>
   1ea20:	000c0b83          	lb	s7,0(s8)
   1ea24:	000b8793          	mv	a5,s7
   1ea28:	be07dc63          	bgez	a5,1de20 <_svfiprintf_r+0x1e4>
   1ea2c:	af9ff06f          	j	1e524 <_svfiprintf_r+0x8e8>
   1ea30:	200e7793          	andi	a5,t3,512
   1ea34:	00078e63          	beqz	a5,1ea50 <_svfiprintf_r+0xe14>
   1ea38:	0ffbfb93          	zext.b	s7,s7
   1ea3c:	00060c13          	mv	s8,a2
   1ea40:	00100793          	li	a5,1
   1ea44:	c40ff06f          	j	1de84 <_svfiprintf_r+0x248>
   1ea48:	00060593          	mv	a1,a2
   1ea4c:	f7cff06f          	j	1e1c8 <_svfiprintf_r+0x58c>
   1ea50:	020b9b93          	slli	s7,s7,0x20
   1ea54:	020bdb93          	srli	s7,s7,0x20
   1ea58:	00060c13          	mv	s8,a2
   1ea5c:	00100793          	li	a5,1
   1ea60:	c24ff06f          	j	1de84 <_svfiprintf_r+0x248>
   1ea64:	000c2b83          	lw	s7,0(s8)
   1ea68:	000b8793          	mv	a5,s7
   1ea6c:	ba07da63          	bgez	a5,1de20 <_svfiprintf_r+0x1e4>
   1ea70:	ab5ff06f          	j	1e524 <_svfiprintf_r+0x8e8>
   1ea74:	020b9b93          	slli	s7,s7,0x20
   1ea78:	020bdb93          	srli	s7,s7,0x20
   1ea7c:	e6dff06f          	j	1e8e8 <_svfiprintf_r+0xcac>
   1ea80:	020b9b93          	slli	s7,s7,0x20
   1ea84:	020bdb93          	srli	s7,s7,0x20
   1ea88:	becff06f          	j	1de74 <_svfiprintf_r+0x238>
   1ea8c:	00013783          	ld	a5,0(sp)
   1ea90:	00f69023          	sh	a5,0(a3)
   1ea94:	a48ff06f          	j	1dcdc <_svfiprintf_r+0xa0>
   1ea98:	06010613          	addi	a2,sp,96
   1ea9c:	00098593          	mv	a1,s3
   1eaa0:	000a8513          	mv	a0,s5
   1eaa4:	fb1fe0ef          	jal	ra,1da54 <__ssprint_r>
   1eaa8:	da4ff06f          	j	1e04c <_svfiprintf_r+0x410>
   1eaac:	00068913          	mv	s2,a3
   1eab0:	00000693          	li	a3,0
   1eab4:	c64ff06f          	j	1df18 <_svfiprintf_r+0x2dc>
   1eab8:	000d0e13          	mv	t3,s10
   1eabc:	b88ff06f          	j	1de44 <_svfiprintf_r+0x208>
   1eac0:	00060e93          	mv	t4,a2
   1eac4:	00050593          	mv	a1,a0
   1eac8:	e58ff06f          	j	1e120 <_svfiprintf_r+0x4e4>
   1eacc:	00f6a023          	sw	a5,0(a3)
   1ead0:	a0cff06f          	j	1dcdc <_svfiprintf_r+0xa0>
   1ead4:	fff00793          	li	a5,-1
   1ead8:	00f13023          	sd	a5,0(sp)
   1eadc:	d7cff06f          	j	1e058 <_svfiprintf_r+0x41c>
   1eae0:	000c2783          	lw	a5,0(s8)
   1eae4:	008c0c13          	addi	s8,s8,8
   1eae8:	0007869b          	sext.w	a3,a5
   1eaec:	0007d463          	bgez	a5,1eaf4 <_svfiprintf_r+0xeb8>
   1eaf0:	fff00693          	li	a3,-1
   1eaf4:	001dc783          	lbu	a5,1(s11)
   1eaf8:	00060d93          	mv	s11,a2
   1eafc:	a6cff06f          	j	1dd68 <_svfiprintf_r+0x12c>
   1eb00:	00c00793          	li	a5,12
   1eb04:	00faa023          	sw	a5,0(s5)
   1eb08:	fff00793          	li	a5,-1
   1eb0c:	00f13023          	sd	a5,0(sp)
   1eb10:	d48ff06f          	j	1e058 <_svfiprintf_r+0x41c>

000000000001eb14 <__swbuf_r>:
   1eb14:	fd010113          	addi	sp,sp,-48
   1eb18:	02813023          	sd	s0,32(sp)
   1eb1c:	00913c23          	sd	s1,24(sp)
   1eb20:	01213823          	sd	s2,16(sp)
   1eb24:	02113423          	sd	ra,40(sp)
   1eb28:	01313423          	sd	s3,8(sp)
   1eb2c:	00050913          	mv	s2,a0
   1eb30:	00058493          	mv	s1,a1
   1eb34:	00060413          	mv	s0,a2
   1eb38:	00050663          	beqz	a0,1eb44 <__swbuf_r+0x30>
   1eb3c:	05052783          	lw	a5,80(a0)
   1eb40:	14078a63          	beqz	a5,1ec94 <__swbuf_r+0x180>
   1eb44:	01041703          	lh	a4,16(s0)
   1eb48:	02842683          	lw	a3,40(s0)
   1eb4c:	00877793          	andi	a5,a4,8
   1eb50:	00d42623          	sw	a3,12(s0)
   1eb54:	03071693          	slli	a3,a4,0x30
   1eb58:	0306d693          	srli	a3,a3,0x30
   1eb5c:	08078463          	beqz	a5,1ebe4 <__swbuf_r+0xd0>
   1eb60:	01843783          	ld	a5,24(s0)
   1eb64:	08078063          	beqz	a5,1ebe4 <__swbuf_r+0xd0>
   1eb68:	00002637          	lui	a2,0x2
   1eb6c:	0ff4f993          	zext.b	s3,s1
   1eb70:	00c6f6b3          	and	a3,a3,a2
   1eb74:	00098493          	mv	s1,s3
   1eb78:	0a068063          	beqz	a3,1ec18 <__swbuf_r+0x104>
   1eb7c:	00043703          	ld	a4,0(s0)
   1eb80:	02042683          	lw	a3,32(s0)
   1eb84:	40f707bb          	subw	a5,a4,a5
   1eb88:	0ad7de63          	bge	a5,a3,1ec44 <__swbuf_r+0x130>
   1eb8c:	00c42683          	lw	a3,12(s0)
   1eb90:	00170613          	addi	a2,a4,1
   1eb94:	00c43023          	sd	a2,0(s0)
   1eb98:	fff6869b          	addiw	a3,a3,-1
   1eb9c:	00d42623          	sw	a3,12(s0)
   1eba0:	01370023          	sb	s3,0(a4)
   1eba4:	02042703          	lw	a4,32(s0)
   1eba8:	0017879b          	addiw	a5,a5,1
   1ebac:	0cf70863          	beq	a4,a5,1ec7c <__swbuf_r+0x168>
   1ebb0:	01045783          	lhu	a5,16(s0)
   1ebb4:	0017f793          	andi	a5,a5,1
   1ebb8:	00078663          	beqz	a5,1ebc4 <__swbuf_r+0xb0>
   1ebbc:	00a00793          	li	a5,10
   1ebc0:	0af48e63          	beq	s1,a5,1ec7c <__swbuf_r+0x168>
   1ebc4:	02813083          	ld	ra,40(sp)
   1ebc8:	02013403          	ld	s0,32(sp)
   1ebcc:	01013903          	ld	s2,16(sp)
   1ebd0:	00813983          	ld	s3,8(sp)
   1ebd4:	00048513          	mv	a0,s1
   1ebd8:	01813483          	ld	s1,24(sp)
   1ebdc:	03010113          	addi	sp,sp,48
   1ebe0:	00008067          	ret
   1ebe4:	00040593          	mv	a1,s0
   1ebe8:	00090513          	mv	a0,s2
   1ebec:	e85f30ef          	jal	ra,12a70 <__swsetup_r>
   1ebf0:	08051e63          	bnez	a0,1ec8c <__swbuf_r+0x178>
   1ebf4:	01041703          	lh	a4,16(s0)
   1ebf8:	00002637          	lui	a2,0x2
   1ebfc:	0ff4f993          	zext.b	s3,s1
   1ec00:	03071693          	slli	a3,a4,0x30
   1ec04:	0306d693          	srli	a3,a3,0x30
   1ec08:	00c6f6b3          	and	a3,a3,a2
   1ec0c:	01843783          	ld	a5,24(s0)
   1ec10:	00098493          	mv	s1,s3
   1ec14:	f60694e3          	bnez	a3,1eb7c <__swbuf_r+0x68>
   1ec18:	0ac42683          	lw	a3,172(s0)
   1ec1c:	00c76733          	or	a4,a4,a2
   1ec20:	ffffe637          	lui	a2,0xffffe
   1ec24:	fff60613          	addi	a2,a2,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd9d5f>
   1ec28:	00c6f6b3          	and	a3,a3,a2
   1ec2c:	00e41823          	sh	a4,16(s0)
   1ec30:	00043703          	ld	a4,0(s0)
   1ec34:	0ad42623          	sw	a3,172(s0)
   1ec38:	02042683          	lw	a3,32(s0)
   1ec3c:	40f707bb          	subw	a5,a4,a5
   1ec40:	f4d7c6e3          	blt	a5,a3,1eb8c <__swbuf_r+0x78>
   1ec44:	00040593          	mv	a1,s0
   1ec48:	00090513          	mv	a0,s2
   1ec4c:	b2cf40ef          	jal	ra,12f78 <_fflush_r>
   1ec50:	02051e63          	bnez	a0,1ec8c <__swbuf_r+0x178>
   1ec54:	00043703          	ld	a4,0(s0)
   1ec58:	00c42683          	lw	a3,12(s0)
   1ec5c:	00100793          	li	a5,1
   1ec60:	00170613          	addi	a2,a4,1
   1ec64:	fff6869b          	addiw	a3,a3,-1
   1ec68:	00c43023          	sd	a2,0(s0)
   1ec6c:	00d42623          	sw	a3,12(s0)
   1ec70:	01370023          	sb	s3,0(a4)
   1ec74:	02042703          	lw	a4,32(s0)
   1ec78:	f2f71ce3          	bne	a4,a5,1ebb0 <__swbuf_r+0x9c>
   1ec7c:	00040593          	mv	a1,s0
   1ec80:	00090513          	mv	a0,s2
   1ec84:	af4f40ef          	jal	ra,12f78 <_fflush_r>
   1ec88:	f2050ee3          	beqz	a0,1ebc4 <__swbuf_r+0xb0>
   1ec8c:	fff00493          	li	s1,-1
   1ec90:	f35ff06f          	j	1ebc4 <__swbuf_r+0xb0>
   1ec94:	f10f40ef          	jal	ra,133a4 <__sinit>
   1ec98:	eadff06f          	j	1eb44 <__swbuf_r+0x30>

000000000001ec9c <__swbuf>:
   1ec9c:	00050793          	mv	a5,a0
   1eca0:	7581b503          	ld	a0,1880(gp) # 241f8 <_impure_ptr>
   1eca4:	00058613          	mv	a2,a1
   1eca8:	00078593          	mv	a1,a5
   1ecac:	e69ff06f          	j	1eb14 <__swbuf_r>

000000000001ecb0 <_wcrtomb_r>:
   1ecb0:	fd010113          	addi	sp,sp,-48
   1ecb4:	02813023          	sd	s0,32(sp)
   1ecb8:	00913c23          	sd	s1,24(sp)
   1ecbc:	02113423          	sd	ra,40(sp)
   1ecc0:	6501b783          	ld	a5,1616(gp) # 240f0 <__global_locale+0xe0>
   1ecc4:	00050413          	mv	s0,a0
   1ecc8:	00068493          	mv	s1,a3
   1eccc:	02058263          	beqz	a1,1ecf0 <_wcrtomb_r+0x40>
   1ecd0:	000780e7          	jalr	a5
   1ecd4:	fff00793          	li	a5,-1
   1ecd8:	02f50663          	beq	a0,a5,1ed04 <_wcrtomb_r+0x54>
   1ecdc:	02813083          	ld	ra,40(sp)
   1ece0:	02013403          	ld	s0,32(sp)
   1ece4:	01813483          	ld	s1,24(sp)
   1ece8:	03010113          	addi	sp,sp,48
   1ecec:	00008067          	ret
   1ecf0:	00000613          	li	a2,0
   1ecf4:	00010593          	mv	a1,sp
   1ecf8:	000780e7          	jalr	a5
   1ecfc:	fff00793          	li	a5,-1
   1ed00:	fcf51ee3          	bne	a0,a5,1ecdc <_wcrtomb_r+0x2c>
   1ed04:	0004a023          	sw	zero,0(s1)
   1ed08:	08a00793          	li	a5,138
   1ed0c:	02813083          	ld	ra,40(sp)
   1ed10:	00f42023          	sw	a5,0(s0)
   1ed14:	02013403          	ld	s0,32(sp)
   1ed18:	01813483          	ld	s1,24(sp)
   1ed1c:	03010113          	addi	sp,sp,48
   1ed20:	00008067          	ret

000000000001ed24 <wcrtomb>:
   1ed24:	fd010113          	addi	sp,sp,-48
   1ed28:	02813023          	sd	s0,32(sp)
   1ed2c:	00913c23          	sd	s1,24(sp)
   1ed30:	02113423          	sd	ra,40(sp)
   1ed34:	7581b483          	ld	s1,1880(gp) # 241f8 <_impure_ptr>
   1ed38:	6501b783          	ld	a5,1616(gp) # 240f0 <__global_locale+0xe0>
   1ed3c:	00060413          	mv	s0,a2
   1ed40:	02050a63          	beqz	a0,1ed74 <wcrtomb+0x50>
   1ed44:	00058613          	mv	a2,a1
   1ed48:	00040693          	mv	a3,s0
   1ed4c:	00050593          	mv	a1,a0
   1ed50:	00048513          	mv	a0,s1
   1ed54:	000780e7          	jalr	a5
   1ed58:	fff00793          	li	a5,-1
   1ed5c:	02f50a63          	beq	a0,a5,1ed90 <wcrtomb+0x6c>
   1ed60:	02813083          	ld	ra,40(sp)
   1ed64:	02013403          	ld	s0,32(sp)
   1ed68:	01813483          	ld	s1,24(sp)
   1ed6c:	03010113          	addi	sp,sp,48
   1ed70:	00008067          	ret
   1ed74:	00060693          	mv	a3,a2
   1ed78:	00010593          	mv	a1,sp
   1ed7c:	00000613          	li	a2,0
   1ed80:	00048513          	mv	a0,s1
   1ed84:	000780e7          	jalr	a5
   1ed88:	fff00793          	li	a5,-1
   1ed8c:	fcf51ae3          	bne	a0,a5,1ed60 <wcrtomb+0x3c>
   1ed90:	00042023          	sw	zero,0(s0)
   1ed94:	02813083          	ld	ra,40(sp)
   1ed98:	02013403          	ld	s0,32(sp)
   1ed9c:	08a00793          	li	a5,138
   1eda0:	00f4a023          	sw	a5,0(s1)
   1eda4:	01813483          	ld	s1,24(sp)
   1eda8:	03010113          	addi	sp,sp,48
   1edac:	00008067          	ret

000000000001edb0 <_wctomb_r>:
   1edb0:	6501b783          	ld	a5,1616(gp) # 240f0 <__global_locale+0xe0>
   1edb4:	00078067          	jr	a5

000000000001edb8 <__ascii_wctomb>:
   1edb8:	0006079b          	sext.w	a5,a2
   1edbc:	02058463          	beqz	a1,1ede4 <__ascii_wctomb+0x2c>
   1edc0:	0ff00713          	li	a4,255
   1edc4:	00f76863          	bltu	a4,a5,1edd4 <__ascii_wctomb+0x1c>
   1edc8:	00c58023          	sb	a2,0(a1)
   1edcc:	00100513          	li	a0,1
   1edd0:	00008067          	ret
   1edd4:	08a00793          	li	a5,138
   1edd8:	00f52023          	sw	a5,0(a0)
   1eddc:	fff00513          	li	a0,-1
   1ede0:	00008067          	ret
   1ede4:	00000513          	li	a0,0
   1ede8:	00008067          	ret

000000000001edec <abort>:
   1edec:	ff010113          	addi	sp,sp,-16
   1edf0:	00600513          	li	a0,6
   1edf4:	00113423          	sd	ra,8(sp)
   1edf8:	2cc000ef          	jal	ra,1f0c4 <raise>
   1edfc:	00100513          	li	a0,1
   1ee00:	630000ef          	jal	ra,1f430 <_exit>

000000000001ee04 <_init_signal_r>:
   1ee04:	51853783          	ld	a5,1304(a0)
   1ee08:	00078663          	beqz	a5,1ee14 <_init_signal_r+0x10>
   1ee0c:	00000513          	li	a0,0
   1ee10:	00008067          	ret
   1ee14:	ff010113          	addi	sp,sp,-16
   1ee18:	10000593          	li	a1,256
   1ee1c:	00813023          	sd	s0,0(sp)
   1ee20:	00113423          	sd	ra,8(sp)
   1ee24:	00050413          	mv	s0,a0
   1ee28:	a61f70ef          	jal	ra,16888 <_malloc_r>
   1ee2c:	50a43c23          	sd	a0,1304(s0)
   1ee30:	02050463          	beqz	a0,1ee58 <_init_signal_r+0x54>
   1ee34:	10050793          	addi	a5,a0,256
   1ee38:	00053023          	sd	zero,0(a0)
   1ee3c:	00850513          	addi	a0,a0,8
   1ee40:	fef51ce3          	bne	a0,a5,1ee38 <_init_signal_r+0x34>
   1ee44:	00000513          	li	a0,0
   1ee48:	00813083          	ld	ra,8(sp)
   1ee4c:	00013403          	ld	s0,0(sp)
   1ee50:	01010113          	addi	sp,sp,16
   1ee54:	00008067          	ret
   1ee58:	fff00513          	li	a0,-1
   1ee5c:	fedff06f          	j	1ee48 <_init_signal_r+0x44>

000000000001ee60 <_signal_r>:
   1ee60:	fd010113          	addi	sp,sp,-48
   1ee64:	00913c23          	sd	s1,24(sp)
   1ee68:	02113423          	sd	ra,40(sp)
   1ee6c:	02813023          	sd	s0,32(sp)
   1ee70:	01f00793          	li	a5,31
   1ee74:	00050493          	mv	s1,a0
   1ee78:	02b7ea63          	bltu	a5,a1,1eeac <_signal_r+0x4c>
   1ee7c:	51853703          	ld	a4,1304(a0)
   1ee80:	00058413          	mv	s0,a1
   1ee84:	04070463          	beqz	a4,1eecc <_signal_r+0x6c>
   1ee88:	00341413          	slli	s0,s0,0x3
   1ee8c:	00870433          	add	s0,a4,s0
   1ee90:	00043503          	ld	a0,0(s0)
   1ee94:	00c43023          	sd	a2,0(s0)
   1ee98:	02813083          	ld	ra,40(sp)
   1ee9c:	02013403          	ld	s0,32(sp)
   1eea0:	01813483          	ld	s1,24(sp)
   1eea4:	03010113          	addi	sp,sp,48
   1eea8:	00008067          	ret
   1eeac:	02813083          	ld	ra,40(sp)
   1eeb0:	02013403          	ld	s0,32(sp)
   1eeb4:	01600793          	li	a5,22
   1eeb8:	00f52023          	sw	a5,0(a0)
   1eebc:	01813483          	ld	s1,24(sp)
   1eec0:	fff00513          	li	a0,-1
   1eec4:	03010113          	addi	sp,sp,48
   1eec8:	00008067          	ret
   1eecc:	10000593          	li	a1,256
   1eed0:	00c13423          	sd	a2,8(sp)
   1eed4:	9b5f70ef          	jal	ra,16888 <_malloc_r>
   1eed8:	50a4bc23          	sd	a0,1304(s1)
   1eedc:	00050713          	mv	a4,a0
   1eee0:	02050063          	beqz	a0,1ef00 <_signal_r+0xa0>
   1eee4:	00813603          	ld	a2,8(sp)
   1eee8:	00050793          	mv	a5,a0
   1eeec:	10050693          	addi	a3,a0,256
   1eef0:	0007b023          	sd	zero,0(a5)
   1eef4:	00878793          	addi	a5,a5,8
   1eef8:	fef69ce3          	bne	a3,a5,1eef0 <_signal_r+0x90>
   1eefc:	f8dff06f          	j	1ee88 <_signal_r+0x28>
   1ef00:	fff00513          	li	a0,-1
   1ef04:	f95ff06f          	j	1ee98 <_signal_r+0x38>

000000000001ef08 <_raise_r>:
   1ef08:	fe010113          	addi	sp,sp,-32
   1ef0c:	00913423          	sd	s1,8(sp)
   1ef10:	00113c23          	sd	ra,24(sp)
   1ef14:	00813823          	sd	s0,16(sp)
   1ef18:	01f00793          	li	a5,31
   1ef1c:	00050493          	mv	s1,a0
   1ef20:	0ab7ea63          	bltu	a5,a1,1efd4 <_raise_r+0xcc>
   1ef24:	51853783          	ld	a5,1304(a0)
   1ef28:	00058413          	mv	s0,a1
   1ef2c:	04078463          	beqz	a5,1ef74 <_raise_r+0x6c>
   1ef30:	00359713          	slli	a4,a1,0x3
   1ef34:	00e787b3          	add	a5,a5,a4
   1ef38:	0007b703          	ld	a4,0(a5)
   1ef3c:	02070c63          	beqz	a4,1ef74 <_raise_r+0x6c>
   1ef40:	00100693          	li	a3,1
   1ef44:	06d70c63          	beq	a4,a3,1efbc <_raise_r+0xb4>
   1ef48:	fff00693          	li	a3,-1
   1ef4c:	04d70863          	beq	a4,a3,1ef9c <_raise_r+0x94>
   1ef50:	00058513          	mv	a0,a1
   1ef54:	0007b023          	sd	zero,0(a5)
   1ef58:	000700e7          	jalr	a4
   1ef5c:	00000513          	li	a0,0
   1ef60:	01813083          	ld	ra,24(sp)
   1ef64:	01013403          	ld	s0,16(sp)
   1ef68:	00813483          	ld	s1,8(sp)
   1ef6c:	02010113          	addi	sp,sp,32
   1ef70:	00008067          	ret
   1ef74:	00048513          	mv	a0,s1
   1ef78:	470000ef          	jal	ra,1f3e8 <_getpid_r>
   1ef7c:	00040613          	mv	a2,s0
   1ef80:	01013403          	ld	s0,16(sp)
   1ef84:	01813083          	ld	ra,24(sp)
   1ef88:	00050593          	mv	a1,a0
   1ef8c:	00048513          	mv	a0,s1
   1ef90:	00813483          	ld	s1,8(sp)
   1ef94:	02010113          	addi	sp,sp,32
   1ef98:	3ec0006f          	j	1f384 <_kill_r>
   1ef9c:	01813083          	ld	ra,24(sp)
   1efa0:	01013403          	ld	s0,16(sp)
   1efa4:	01600793          	li	a5,22
   1efa8:	00f52023          	sw	a5,0(a0)
   1efac:	00813483          	ld	s1,8(sp)
   1efb0:	00100513          	li	a0,1
   1efb4:	02010113          	addi	sp,sp,32
   1efb8:	00008067          	ret
   1efbc:	01813083          	ld	ra,24(sp)
   1efc0:	01013403          	ld	s0,16(sp)
   1efc4:	00813483          	ld	s1,8(sp)
   1efc8:	00000513          	li	a0,0
   1efcc:	02010113          	addi	sp,sp,32
   1efd0:	00008067          	ret
   1efd4:	01600793          	li	a5,22
   1efd8:	00f52023          	sw	a5,0(a0)
   1efdc:	fff00513          	li	a0,-1
   1efe0:	f81ff06f          	j	1ef60 <_raise_r+0x58>

000000000001efe4 <__sigtramp_r>:
   1efe4:	01f00793          	li	a5,31
   1efe8:	0cb7ea63          	bltu	a5,a1,1f0bc <__sigtramp_r+0xd8>
   1efec:	51853703          	ld	a4,1304(a0)
   1eff0:	fe010113          	addi	sp,sp,-32
   1eff4:	00813823          	sd	s0,16(sp)
   1eff8:	00913423          	sd	s1,8(sp)
   1effc:	00113c23          	sd	ra,24(sp)
   1f000:	00058413          	mv	s0,a1
   1f004:	00050493          	mv	s1,a0
   1f008:	06070063          	beqz	a4,1f068 <__sigtramp_r+0x84>
   1f00c:	00341513          	slli	a0,s0,0x3
   1f010:	00a70733          	add	a4,a4,a0
   1f014:	00073783          	ld	a5,0(a4)
   1f018:	02078c63          	beqz	a5,1f050 <__sigtramp_r+0x6c>
   1f01c:	fff00693          	li	a3,-1
   1f020:	08d78663          	beq	a5,a3,1f0ac <__sigtramp_r+0xc8>
   1f024:	00100693          	li	a3,1
   1f028:	06d78663          	beq	a5,a3,1f094 <__sigtramp_r+0xb0>
   1f02c:	00040513          	mv	a0,s0
   1f030:	00073023          	sd	zero,0(a4)
   1f034:	000780e7          	jalr	a5
   1f038:	00000513          	li	a0,0
   1f03c:	01813083          	ld	ra,24(sp)
   1f040:	01013403          	ld	s0,16(sp)
   1f044:	00813483          	ld	s1,8(sp)
   1f048:	02010113          	addi	sp,sp,32
   1f04c:	00008067          	ret
   1f050:	01813083          	ld	ra,24(sp)
   1f054:	01013403          	ld	s0,16(sp)
   1f058:	00813483          	ld	s1,8(sp)
   1f05c:	00100513          	li	a0,1
   1f060:	02010113          	addi	sp,sp,32
   1f064:	00008067          	ret
   1f068:	10000593          	li	a1,256
   1f06c:	81df70ef          	jal	ra,16888 <_malloc_r>
   1f070:	50a4bc23          	sd	a0,1304(s1)
   1f074:	00050713          	mv	a4,a0
   1f078:	02050e63          	beqz	a0,1f0b4 <__sigtramp_r+0xd0>
   1f07c:	00050793          	mv	a5,a0
   1f080:	10050693          	addi	a3,a0,256
   1f084:	0007b023          	sd	zero,0(a5)
   1f088:	00878793          	addi	a5,a5,8
   1f08c:	fed79ce3          	bne	a5,a3,1f084 <__sigtramp_r+0xa0>
   1f090:	f7dff06f          	j	1f00c <__sigtramp_r+0x28>
   1f094:	01813083          	ld	ra,24(sp)
   1f098:	01013403          	ld	s0,16(sp)
   1f09c:	00813483          	ld	s1,8(sp)
   1f0a0:	00300513          	li	a0,3
   1f0a4:	02010113          	addi	sp,sp,32
   1f0a8:	00008067          	ret
   1f0ac:	00200513          	li	a0,2
   1f0b0:	f8dff06f          	j	1f03c <__sigtramp_r+0x58>
   1f0b4:	fff00513          	li	a0,-1
   1f0b8:	f85ff06f          	j	1f03c <__sigtramp_r+0x58>
   1f0bc:	fff00513          	li	a0,-1
   1f0c0:	00008067          	ret

000000000001f0c4 <raise>:
   1f0c4:	fe010113          	addi	sp,sp,-32
   1f0c8:	00913423          	sd	s1,8(sp)
   1f0cc:	00113c23          	sd	ra,24(sp)
   1f0d0:	00813823          	sd	s0,16(sp)
   1f0d4:	01f00793          	li	a5,31
   1f0d8:	7581b483          	ld	s1,1880(gp) # 241f8 <_impure_ptr>
   1f0dc:	0aa7e863          	bltu	a5,a0,1f18c <raise+0xc8>
   1f0e0:	5184b783          	ld	a5,1304(s1)
   1f0e4:	00050413          	mv	s0,a0
   1f0e8:	04078263          	beqz	a5,1f12c <raise+0x68>
   1f0ec:	00351713          	slli	a4,a0,0x3
   1f0f0:	00e787b3          	add	a5,a5,a4
   1f0f4:	0007b703          	ld	a4,0(a5)
   1f0f8:	02070a63          	beqz	a4,1f12c <raise+0x68>
   1f0fc:	00100693          	li	a3,1
   1f100:	06d70a63          	beq	a4,a3,1f174 <raise+0xb0>
   1f104:	fff00693          	li	a3,-1
   1f108:	04d70663          	beq	a4,a3,1f154 <raise+0x90>
   1f10c:	0007b023          	sd	zero,0(a5)
   1f110:	000700e7          	jalr	a4
   1f114:	00000513          	li	a0,0
   1f118:	01813083          	ld	ra,24(sp)
   1f11c:	01013403          	ld	s0,16(sp)
   1f120:	00813483          	ld	s1,8(sp)
   1f124:	02010113          	addi	sp,sp,32
   1f128:	00008067          	ret
   1f12c:	00048513          	mv	a0,s1
   1f130:	2b8000ef          	jal	ra,1f3e8 <_getpid_r>
   1f134:	00040613          	mv	a2,s0
   1f138:	01013403          	ld	s0,16(sp)
   1f13c:	01813083          	ld	ra,24(sp)
   1f140:	00050593          	mv	a1,a0
   1f144:	00048513          	mv	a0,s1
   1f148:	00813483          	ld	s1,8(sp)
   1f14c:	02010113          	addi	sp,sp,32
   1f150:	2340006f          	j	1f384 <_kill_r>
   1f154:	01813083          	ld	ra,24(sp)
   1f158:	01013403          	ld	s0,16(sp)
   1f15c:	01600793          	li	a5,22
   1f160:	00f4a023          	sw	a5,0(s1)
   1f164:	00100513          	li	a0,1
   1f168:	00813483          	ld	s1,8(sp)
   1f16c:	02010113          	addi	sp,sp,32
   1f170:	00008067          	ret
   1f174:	01813083          	ld	ra,24(sp)
   1f178:	01013403          	ld	s0,16(sp)
   1f17c:	00813483          	ld	s1,8(sp)
   1f180:	00000513          	li	a0,0
   1f184:	02010113          	addi	sp,sp,32
   1f188:	00008067          	ret
   1f18c:	01600793          	li	a5,22
   1f190:	00f4a023          	sw	a5,0(s1)
   1f194:	fff00513          	li	a0,-1
   1f198:	f81ff06f          	j	1f118 <raise+0x54>

000000000001f19c <signal>:
   1f19c:	fe010113          	addi	sp,sp,-32
   1f1a0:	01213023          	sd	s2,0(sp)
   1f1a4:	00113c23          	sd	ra,24(sp)
   1f1a8:	00813823          	sd	s0,16(sp)
   1f1ac:	00913423          	sd	s1,8(sp)
   1f1b0:	01f00793          	li	a5,31
   1f1b4:	7581b903          	ld	s2,1880(gp) # 241f8 <_impure_ptr>
   1f1b8:	02a7ee63          	bltu	a5,a0,1f1f4 <signal+0x58>
   1f1bc:	00050413          	mv	s0,a0
   1f1c0:	51893503          	ld	a0,1304(s2)
   1f1c4:	00058493          	mv	s1,a1
   1f1c8:	04050863          	beqz	a0,1f218 <signal+0x7c>
   1f1cc:	00341413          	slli	s0,s0,0x3
   1f1d0:	00850433          	add	s0,a0,s0
   1f1d4:	00043503          	ld	a0,0(s0)
   1f1d8:	00943023          	sd	s1,0(s0)
   1f1dc:	01813083          	ld	ra,24(sp)
   1f1e0:	01013403          	ld	s0,16(sp)
   1f1e4:	00813483          	ld	s1,8(sp)
   1f1e8:	00013903          	ld	s2,0(sp)
   1f1ec:	02010113          	addi	sp,sp,32
   1f1f0:	00008067          	ret
   1f1f4:	01813083          	ld	ra,24(sp)
   1f1f8:	01013403          	ld	s0,16(sp)
   1f1fc:	01600793          	li	a5,22
   1f200:	00f92023          	sw	a5,0(s2)
   1f204:	00813483          	ld	s1,8(sp)
   1f208:	00013903          	ld	s2,0(sp)
   1f20c:	fff00513          	li	a0,-1
   1f210:	02010113          	addi	sp,sp,32
   1f214:	00008067          	ret
   1f218:	10000593          	li	a1,256
   1f21c:	00090513          	mv	a0,s2
   1f220:	e68f70ef          	jal	ra,16888 <_malloc_r>
   1f224:	50a93c23          	sd	a0,1304(s2)
   1f228:	00050e63          	beqz	a0,1f244 <signal+0xa8>
   1f22c:	00050793          	mv	a5,a0
   1f230:	10050713          	addi	a4,a0,256
   1f234:	0007b023          	sd	zero,0(a5)
   1f238:	00878793          	addi	a5,a5,8
   1f23c:	fef71ce3          	bne	a4,a5,1f234 <signal+0x98>
   1f240:	f8dff06f          	j	1f1cc <signal+0x30>
   1f244:	fff00513          	li	a0,-1
   1f248:	f95ff06f          	j	1f1dc <signal+0x40>

000000000001f24c <_init_signal>:
   1f24c:	ff010113          	addi	sp,sp,-16
   1f250:	00813023          	sd	s0,0(sp)
   1f254:	7581b403          	ld	s0,1880(gp) # 241f8 <_impure_ptr>
   1f258:	00113423          	sd	ra,8(sp)
   1f25c:	51843783          	ld	a5,1304(s0)
   1f260:	00078c63          	beqz	a5,1f278 <_init_signal+0x2c>
   1f264:	00000513          	li	a0,0
   1f268:	00813083          	ld	ra,8(sp)
   1f26c:	00013403          	ld	s0,0(sp)
   1f270:	01010113          	addi	sp,sp,16
   1f274:	00008067          	ret
   1f278:	10000593          	li	a1,256
   1f27c:	00040513          	mv	a0,s0
   1f280:	e08f70ef          	jal	ra,16888 <_malloc_r>
   1f284:	50a43c23          	sd	a0,1304(s0)
   1f288:	00050c63          	beqz	a0,1f2a0 <_init_signal+0x54>
   1f28c:	10050793          	addi	a5,a0,256
   1f290:	00053023          	sd	zero,0(a0)
   1f294:	00850513          	addi	a0,a0,8
   1f298:	fef51ce3          	bne	a0,a5,1f290 <_init_signal+0x44>
   1f29c:	fc9ff06f          	j	1f264 <_init_signal+0x18>
   1f2a0:	fff00513          	li	a0,-1
   1f2a4:	fc5ff06f          	j	1f268 <_init_signal+0x1c>

000000000001f2a8 <__sigtramp>:
   1f2a8:	fe010113          	addi	sp,sp,-32
   1f2ac:	00913423          	sd	s1,8(sp)
   1f2b0:	00113c23          	sd	ra,24(sp)
   1f2b4:	00813823          	sd	s0,16(sp)
   1f2b8:	01f00793          	li	a5,31
   1f2bc:	7581b483          	ld	s1,1880(gp) # 241f8 <_impure_ptr>
   1f2c0:	0aa7ee63          	bltu	a5,a0,1f37c <__sigtramp+0xd4>
   1f2c4:	5184b703          	ld	a4,1304(s1)
   1f2c8:	00050413          	mv	s0,a0
   1f2cc:	06070063          	beqz	a4,1f32c <__sigtramp+0x84>
   1f2d0:	00341513          	slli	a0,s0,0x3
   1f2d4:	00a70733          	add	a4,a4,a0
   1f2d8:	00073783          	ld	a5,0(a4)
   1f2dc:	02078c63          	beqz	a5,1f314 <__sigtramp+0x6c>
   1f2e0:	fff00693          	li	a3,-1
   1f2e4:	08d78863          	beq	a5,a3,1f374 <__sigtramp+0xcc>
   1f2e8:	00100693          	li	a3,1
   1f2ec:	06d78863          	beq	a5,a3,1f35c <__sigtramp+0xb4>
   1f2f0:	00040513          	mv	a0,s0
   1f2f4:	00073023          	sd	zero,0(a4)
   1f2f8:	000780e7          	jalr	a5
   1f2fc:	00000513          	li	a0,0
   1f300:	01813083          	ld	ra,24(sp)
   1f304:	01013403          	ld	s0,16(sp)
   1f308:	00813483          	ld	s1,8(sp)
   1f30c:	02010113          	addi	sp,sp,32
   1f310:	00008067          	ret
   1f314:	01813083          	ld	ra,24(sp)
   1f318:	01013403          	ld	s0,16(sp)
   1f31c:	00813483          	ld	s1,8(sp)
   1f320:	00100513          	li	a0,1
   1f324:	02010113          	addi	sp,sp,32
   1f328:	00008067          	ret
   1f32c:	10000593          	li	a1,256
   1f330:	00048513          	mv	a0,s1
   1f334:	d54f70ef          	jal	ra,16888 <_malloc_r>
   1f338:	50a4bc23          	sd	a0,1304(s1)
   1f33c:	00050713          	mv	a4,a0
   1f340:	02050e63          	beqz	a0,1f37c <__sigtramp+0xd4>
   1f344:	00050793          	mv	a5,a0
   1f348:	10050693          	addi	a3,a0,256
   1f34c:	0007b023          	sd	zero,0(a5)
   1f350:	00878793          	addi	a5,a5,8
   1f354:	fed79ce3          	bne	a5,a3,1f34c <__sigtramp+0xa4>
   1f358:	f79ff06f          	j	1f2d0 <__sigtramp+0x28>
   1f35c:	01813083          	ld	ra,24(sp)
   1f360:	01013403          	ld	s0,16(sp)
   1f364:	00813483          	ld	s1,8(sp)
   1f368:	00300513          	li	a0,3
   1f36c:	02010113          	addi	sp,sp,32
   1f370:	00008067          	ret
   1f374:	00200513          	li	a0,2
   1f378:	f89ff06f          	j	1f300 <__sigtramp+0x58>
   1f37c:	fff00513          	li	a0,-1
   1f380:	f81ff06f          	j	1f300 <__sigtramp+0x58>

000000000001f384 <_kill_r>:
   1f384:	fe010113          	addi	sp,sp,-32
   1f388:	00058713          	mv	a4,a1
   1f38c:	00813823          	sd	s0,16(sp)
   1f390:	00913423          	sd	s1,8(sp)
   1f394:	00050413          	mv	s0,a0
   1f398:	00060593          	mv	a1,a2
   1f39c:	00070513          	mv	a0,a4
   1f3a0:	00113c23          	sd	ra,24(sp)
   1f3a4:	7801a823          	sw	zero,1936(gp) # 24230 <errno>
   1f3a8:	164000ef          	jal	ra,1f50c <_kill>
   1f3ac:	fff00793          	li	a5,-1
   1f3b0:	00f50c63          	beq	a0,a5,1f3c8 <_kill_r+0x44>
   1f3b4:	01813083          	ld	ra,24(sp)
   1f3b8:	01013403          	ld	s0,16(sp)
   1f3bc:	00813483          	ld	s1,8(sp)
   1f3c0:	02010113          	addi	sp,sp,32
   1f3c4:	00008067          	ret
   1f3c8:	7901a783          	lw	a5,1936(gp) # 24230 <errno>
   1f3cc:	fe0784e3          	beqz	a5,1f3b4 <_kill_r+0x30>
   1f3d0:	01813083          	ld	ra,24(sp)
   1f3d4:	00f42023          	sw	a5,0(s0)
   1f3d8:	01013403          	ld	s0,16(sp)
   1f3dc:	00813483          	ld	s1,8(sp)
   1f3e0:	02010113          	addi	sp,sp,32
   1f3e4:	00008067          	ret

000000000001f3e8 <_getpid_r>:
   1f3e8:	0dc0006f          	j	1f4c4 <_getpid>

000000000001f3ec <_close>:
   1f3ec:	ff010113          	addi	sp,sp,-16
   1f3f0:	00113423          	sd	ra,8(sp)
   1f3f4:	00813023          	sd	s0,0(sp)
   1f3f8:	03900893          	li	a7,57
   1f3fc:	00000073          	ecall
   1f400:	00050413          	mv	s0,a0
   1f404:	00054c63          	bltz	a0,1f41c <_close+0x30>
   1f408:	0005051b          	sext.w	a0,a0
   1f40c:	00813083          	ld	ra,8(sp)
   1f410:	00013403          	ld	s0,0(sp)
   1f414:	01010113          	addi	sp,sp,16
   1f418:	00008067          	ret
   1f41c:	fedfc0ef          	jal	ra,1c408 <__errno>
   1f420:	4080043b          	negw	s0,s0
   1f424:	00852023          	sw	s0,0(a0)
   1f428:	fff00513          	li	a0,-1
   1f42c:	fe1ff06f          	j	1f40c <_close+0x20>

000000000001f430 <_exit>:
   1f430:	05d00893          	li	a7,93
   1f434:	00000073          	ecall
   1f438:	00054463          	bltz	a0,1f440 <_exit+0x10>
   1f43c:	0000006f          	j	1f43c <_exit+0xc>
   1f440:	ff010113          	addi	sp,sp,-16
   1f444:	00813023          	sd	s0,0(sp)
   1f448:	00050413          	mv	s0,a0
   1f44c:	00113423          	sd	ra,8(sp)
   1f450:	4080043b          	negw	s0,s0
   1f454:	fb5fc0ef          	jal	ra,1c408 <__errno>
   1f458:	00852023          	sw	s0,0(a0)
   1f45c:	0000006f          	j	1f45c <_exit+0x2c>

000000000001f460 <_fstat>:
   1f460:	f6010113          	addi	sp,sp,-160
   1f464:	08913423          	sd	s1,136(sp)
   1f468:	08113c23          	sd	ra,152(sp)
   1f46c:	00058493          	mv	s1,a1
   1f470:	08813823          	sd	s0,144(sp)
   1f474:	05000893          	li	a7,80
   1f478:	00010593          	mv	a1,sp
   1f47c:	00000073          	ecall
   1f480:	00050413          	mv	s0,a0
   1f484:	02054663          	bltz	a0,1f4b0 <_fstat+0x50>
   1f488:	0005041b          	sext.w	s0,a0
   1f48c:	00048513          	mv	a0,s1
   1f490:	00010593          	mv	a1,sp
   1f494:	1e0000ef          	jal	ra,1f674 <_conv_stat>
   1f498:	09813083          	ld	ra,152(sp)
   1f49c:	00040513          	mv	a0,s0
   1f4a0:	09013403          	ld	s0,144(sp)
   1f4a4:	08813483          	ld	s1,136(sp)
   1f4a8:	0a010113          	addi	sp,sp,160
   1f4ac:	00008067          	ret
   1f4b0:	4080043b          	negw	s0,s0
   1f4b4:	f55fc0ef          	jal	ra,1c408 <__errno>
   1f4b8:	00852023          	sw	s0,0(a0)
   1f4bc:	fff00413          	li	s0,-1
   1f4c0:	fcdff06f          	j	1f48c <_fstat+0x2c>

000000000001f4c4 <_getpid>:
   1f4c4:	00100513          	li	a0,1
   1f4c8:	00008067          	ret

000000000001f4cc <_isatty>:
   1f4cc:	f8010113          	addi	sp,sp,-128
   1f4d0:	00810593          	addi	a1,sp,8
   1f4d4:	06113c23          	sd	ra,120(sp)
   1f4d8:	f89ff0ef          	jal	ra,1f460 <_fstat>
   1f4dc:	fff00793          	li	a5,-1
   1f4e0:	00f50e63          	beq	a0,a5,1f4fc <_isatty+0x30>
   1f4e4:	00c12503          	lw	a0,12(sp)
   1f4e8:	07813083          	ld	ra,120(sp)
   1f4ec:	40d5551b          	sraiw	a0,a0,0xd
   1f4f0:	00157513          	andi	a0,a0,1
   1f4f4:	08010113          	addi	sp,sp,128
   1f4f8:	00008067          	ret
   1f4fc:	07813083          	ld	ra,120(sp)
   1f500:	00000513          	li	a0,0
   1f504:	08010113          	addi	sp,sp,128
   1f508:	00008067          	ret

000000000001f50c <_kill>:
   1f50c:	ff010113          	addi	sp,sp,-16
   1f510:	00113423          	sd	ra,8(sp)
   1f514:	ef5fc0ef          	jal	ra,1c408 <__errno>
   1f518:	00813083          	ld	ra,8(sp)
   1f51c:	01600793          	li	a5,22
   1f520:	00f52023          	sw	a5,0(a0)
   1f524:	fff00513          	li	a0,-1
   1f528:	01010113          	addi	sp,sp,16
   1f52c:	00008067          	ret

000000000001f530 <_lseek>:
   1f530:	ff010113          	addi	sp,sp,-16
   1f534:	00113423          	sd	ra,8(sp)
   1f538:	00813023          	sd	s0,0(sp)
   1f53c:	03e00893          	li	a7,62
   1f540:	00000073          	ecall
   1f544:	00050413          	mv	s0,a0
   1f548:	00054c63          	bltz	a0,1f560 <_lseek+0x30>
   1f54c:	00813083          	ld	ra,8(sp)
   1f550:	00040513          	mv	a0,s0
   1f554:	00013403          	ld	s0,0(sp)
   1f558:	01010113          	addi	sp,sp,16
   1f55c:	00008067          	ret
   1f560:	4080043b          	negw	s0,s0
   1f564:	ea5fc0ef          	jal	ra,1c408 <__errno>
   1f568:	00852023          	sw	s0,0(a0)
   1f56c:	fff00413          	li	s0,-1
   1f570:	fddff06f          	j	1f54c <_lseek+0x1c>

000000000001f574 <_read>:
   1f574:	ff010113          	addi	sp,sp,-16
   1f578:	00113423          	sd	ra,8(sp)
   1f57c:	00813023          	sd	s0,0(sp)
   1f580:	03f00893          	li	a7,63
   1f584:	00000073          	ecall
   1f588:	00050413          	mv	s0,a0
   1f58c:	00054c63          	bltz	a0,1f5a4 <_read+0x30>
   1f590:	00813083          	ld	ra,8(sp)
   1f594:	00040513          	mv	a0,s0
   1f598:	00013403          	ld	s0,0(sp)
   1f59c:	01010113          	addi	sp,sp,16
   1f5a0:	00008067          	ret
   1f5a4:	4080043b          	negw	s0,s0
   1f5a8:	e61fc0ef          	jal	ra,1c408 <__errno>
   1f5ac:	00852023          	sw	s0,0(a0)
   1f5b0:	fff00413          	li	s0,-1
   1f5b4:	fddff06f          	j	1f590 <_read+0x1c>

000000000001f5b8 <_sbrk>:
   1f5b8:	7981b703          	ld	a4,1944(gp) # 24238 <heap_end.0>
   1f5bc:	ff010113          	addi	sp,sp,-16
   1f5c0:	00113423          	sd	ra,8(sp)
   1f5c4:	00050793          	mv	a5,a0
   1f5c8:	02071063          	bnez	a4,1f5e8 <_sbrk+0x30>
   1f5cc:	0d600893          	li	a7,214
   1f5d0:	00000513          	li	a0,0
   1f5d4:	00000073          	ecall
   1f5d8:	fff00613          	li	a2,-1
   1f5dc:	00050713          	mv	a4,a0
   1f5e0:	02c50a63          	beq	a0,a2,1f614 <_sbrk+0x5c>
   1f5e4:	78a1bc23          	sd	a0,1944(gp) # 24238 <heap_end.0>
   1f5e8:	0d600893          	li	a7,214
   1f5ec:	00e78533          	add	a0,a5,a4
   1f5f0:	00000073          	ecall
   1f5f4:	7981b703          	ld	a4,1944(gp) # 24238 <heap_end.0>
   1f5f8:	00e787b3          	add	a5,a5,a4
   1f5fc:	00f51c63          	bne	a0,a5,1f614 <_sbrk+0x5c>
   1f600:	00813083          	ld	ra,8(sp)
   1f604:	78a1bc23          	sd	a0,1944(gp) # 24238 <heap_end.0>
   1f608:	00070513          	mv	a0,a4
   1f60c:	01010113          	addi	sp,sp,16
   1f610:	00008067          	ret
   1f614:	df5fc0ef          	jal	ra,1c408 <__errno>
   1f618:	00813083          	ld	ra,8(sp)
   1f61c:	00c00793          	li	a5,12
   1f620:	00f52023          	sw	a5,0(a0)
   1f624:	fff00513          	li	a0,-1
   1f628:	01010113          	addi	sp,sp,16
   1f62c:	00008067          	ret

000000000001f630 <_write>:
   1f630:	ff010113          	addi	sp,sp,-16
   1f634:	00113423          	sd	ra,8(sp)
   1f638:	00813023          	sd	s0,0(sp)
   1f63c:	04000893          	li	a7,64
   1f640:	00000073          	ecall
   1f644:	00050413          	mv	s0,a0
   1f648:	00054c63          	bltz	a0,1f660 <_write+0x30>
   1f64c:	00813083          	ld	ra,8(sp)
   1f650:	00040513          	mv	a0,s0
   1f654:	00013403          	ld	s0,0(sp)
   1f658:	01010113          	addi	sp,sp,16
   1f65c:	00008067          	ret
   1f660:	4080043b          	negw	s0,s0
   1f664:	da5fc0ef          	jal	ra,1c408 <__errno>
   1f668:	00852023          	sw	s0,0(a0)
   1f66c:	fff00413          	li	s0,-1
   1f670:	fddff06f          	j	1f64c <_write+0x1c>

000000000001f674 <_conv_stat>:
   1f674:	0005b383          	ld	t2,0(a1)
   1f678:	0085b283          	ld	t0,8(a1)
   1f67c:	0105af83          	lw	t6,16(a1)
   1f680:	0145af03          	lw	t5,20(a1)
   1f684:	0185ae83          	lw	t4,24(a1)
   1f688:	01c5ae03          	lw	t3,28(a1)
   1f68c:	0205b303          	ld	t1,32(a1)
   1f690:	0305b883          	ld	a7,48(a1)
   1f694:	0405b803          	ld	a6,64(a1)
   1f698:	0385a603          	lw	a2,56(a1)
   1f69c:	0485b683          	ld	a3,72(a1)
   1f6a0:	0585b703          	ld	a4,88(a1)
   1f6a4:	0685b783          	ld	a5,104(a1)
   1f6a8:	00751023          	sh	t2,0(a0)
   1f6ac:	00551123          	sh	t0,2(a0)
   1f6b0:	01f52223          	sw	t6,4(a0)
   1f6b4:	01e51423          	sh	t5,8(a0)
   1f6b8:	01d51523          	sh	t4,10(a0)
   1f6bc:	01c51623          	sh	t3,12(a0)
   1f6c0:	00651723          	sh	t1,14(a0)
   1f6c4:	01153823          	sd	a7,16(a0)
   1f6c8:	05053823          	sd	a6,80(a0)
   1f6cc:	04c53423          	sd	a2,72(a0)
   1f6d0:	00d53c23          	sd	a3,24(a0)
   1f6d4:	02e53423          	sd	a4,40(a0)
   1f6d8:	02f53c23          	sd	a5,56(a0)
   1f6dc:	00008067          	ret

000000000001f6e0 <__eqtf2>:
   1f6e0:	00050813          	mv	a6,a0
   1f6e4:	002027f3          	frrm	a5
   1f6e8:	00008537          	lui	a0,0x8
   1f6ec:	0305d893          	srli	a7,a1,0x30
   1f6f0:	fff50513          	addi	a0,a0,-1 # 7fff <register_fini-0x80b1>
   1f6f4:	fff00793          	li	a5,-1
   1f6f8:	0107d793          	srli	a5,a5,0x10
   1f6fc:	0306d313          	srli	t1,a3,0x30
   1f700:	00a8f8b3          	and	a7,a7,a0
   1f704:	00f5f733          	and	a4,a1,a5
   1f708:	00a37333          	and	t1,t1,a0
   1f70c:	00f6f7b3          	and	a5,a3,a5
   1f710:	03f5d593          	srli	a1,a1,0x3f
   1f714:	03f6d693          	srli	a3,a3,0x3f
   1f718:	00a89a63          	bne	a7,a0,1f72c <__eqtf2+0x4c>
   1f71c:	01076533          	or	a0,a4,a6
   1f720:	02051663          	bnez	a0,1f74c <__eqtf2+0x6c>
   1f724:	05131863          	bne	t1,a7,1f774 <__eqtf2+0x94>
   1f728:	0080006f          	j	1f730 <__eqtf2+0x50>
   1f72c:	04a31863          	bne	t1,a0,1f77c <__eqtf2+0x9c>
   1f730:	00c7e533          	or	a0,a5,a2
   1f734:	04050463          	beqz	a0,1f77c <__eqtf2+0x9c>
   1f738:	000086b7          	lui	a3,0x8
   1f73c:	fff68693          	addi	a3,a3,-1 # 7fff <register_fini-0x80b1>
   1f740:	02d89663          	bne	a7,a3,1f76c <__eqtf2+0x8c>
   1f744:	01076533          	or	a0,a4,a6
   1f748:	02050263          	beqz	a0,1f76c <__eqtf2+0x8c>
   1f74c:	02f75713          	srli	a4,a4,0x2f
   1f750:	04070c63          	beqz	a4,1f7a8 <__eqtf2+0xc8>
   1f754:	00008737          	lui	a4,0x8
   1f758:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   1f75c:	00100513          	li	a0,1
   1f760:	00e31c63          	bne	t1,a4,1f778 <__eqtf2+0x98>
   1f764:	00c7e633          	or	a2,a5,a2
   1f768:	00060863          	beqz	a2,1f778 <__eqtf2+0x98>
   1f76c:	02f7d793          	srli	a5,a5,0x2f
   1f770:	02078c63          	beqz	a5,1f7a8 <__eqtf2+0xc8>
   1f774:	00100513          	li	a0,1
   1f778:	00008067          	ret
   1f77c:	00100513          	li	a0,1
   1f780:	fe689ce3          	bne	a7,t1,1f778 <__eqtf2+0x98>
   1f784:	fef71ae3          	bne	a4,a5,1f778 <__eqtf2+0x98>
   1f788:	fec818e3          	bne	a6,a2,1f778 <__eqtf2+0x98>
   1f78c:	00d58a63          	beq	a1,a3,1f7a0 <__eqtf2+0xc0>
   1f790:	fe0894e3          	bnez	a7,1f778 <__eqtf2+0x98>
   1f794:	01076533          	or	a0,a4,a6
   1f798:	00a03533          	snez	a0,a0
   1f79c:	00008067          	ret
   1f7a0:	00000513          	li	a0,0
   1f7a4:	00008067          	ret
   1f7a8:	00186073          	csrsi	fflags,16
   1f7ac:	fc9ff06f          	j	1f774 <__eqtf2+0x94>

000000000001f7b0 <__getf2>:
   1f7b0:	00050893          	mv	a7,a0
   1f7b4:	002027f3          	frrm	a5
   1f7b8:	00008337          	lui	t1,0x8
   1f7bc:	fff30313          	addi	t1,t1,-1 # 7fff <register_fini-0x80b1>
   1f7c0:	fff00793          	li	a5,-1
   1f7c4:	0305d813          	srli	a6,a1,0x30
   1f7c8:	0107d793          	srli	a5,a5,0x10
   1f7cc:	0306d713          	srli	a4,a3,0x30
   1f7d0:	00687833          	and	a6,a6,t1
   1f7d4:	00f5fe33          	and	t3,a1,a5
   1f7d8:	03f5d513          	srli	a0,a1,0x3f
   1f7dc:	00f6f7b3          	and	a5,a3,a5
   1f7e0:	00677733          	and	a4,a4,t1
   1f7e4:	03f6d693          	srli	a3,a3,0x3f
   1f7e8:	00681c63          	bne	a6,t1,1f800 <__getf2+0x50>
   1f7ec:	011e65b3          	or	a1,t3,a7
   1f7f0:	08058a63          	beqz	a1,1f884 <__getf2+0xd4>
   1f7f4:	00186073          	csrsi	fflags,16
   1f7f8:	ffe00513          	li	a0,-2
   1f7fc:	00008067          	ret
   1f800:	00671663          	bne	a4,t1,1f80c <__getf2+0x5c>
   1f804:	00c7e5b3          	or	a1,a5,a2
   1f808:	fe0596e3          	bnez	a1,1f7f4 <__getf2+0x44>
   1f80c:	06081e63          	bnez	a6,1f888 <__getf2+0xd8>
   1f810:	011e65b3          	or	a1,t3,a7
   1f814:	0015b593          	seqz	a1,a1
   1f818:	04071663          	bnez	a4,1f864 <__getf2+0xb4>
   1f81c:	00c7e333          	or	t1,a5,a2
   1f820:	04031263          	bnez	t1,1f864 <__getf2+0xb4>
   1f824:	02059863          	bnez	a1,1f854 <__getf2+0xa4>
   1f828:	02050a63          	beqz	a0,1f85c <__getf2+0xac>
   1f82c:	fff00513          	li	a0,-1
   1f830:	00008067          	ret
   1f834:	fff00513          	li	a0,-1
   1f838:	04068063          	beqz	a3,1f878 <__getf2+0xc8>
   1f83c:	00068513          	mv	a0,a3
   1f840:	00008067          	ret
   1f844:	ffc7e2e3          	bltu	a5,t3,1f828 <__getf2+0x78>
   1f848:	02fe1a63          	bne	t3,a5,1f87c <__getf2+0xcc>
   1f84c:	fd166ee3          	bltu	a2,a7,1f828 <__getf2+0x78>
   1f850:	02c8e263          	bltu	a7,a2,1f874 <__getf2+0xc4>
   1f854:	00000513          	li	a0,0
   1f858:	00008067          	ret
   1f85c:	00100513          	li	a0,1
   1f860:	00008067          	ret
   1f864:	fc0598e3          	bnez	a1,1f834 <__getf2+0x84>
   1f868:	fcd510e3          	bne	a0,a3,1f828 <__getf2+0x78>
   1f86c:	fb074ee3          	blt	a4,a6,1f828 <__getf2+0x78>
   1f870:	fce85ae3          	bge	a6,a4,1f844 <__getf2+0x94>
   1f874:	fa050ce3          	beqz	a0,1f82c <__getf2+0x7c>
   1f878:	00008067          	ret
   1f87c:	fefe6ce3          	bltu	t3,a5,1f874 <__getf2+0xc4>
   1f880:	fd5ff06f          	j	1f854 <__getf2+0xa4>
   1f884:	f90700e3          	beq	a4,a6,1f804 <__getf2+0x54>
   1f888:	fe0710e3          	bnez	a4,1f868 <__getf2+0xb8>
   1f88c:	00000593          	li	a1,0
   1f890:	f8dff06f          	j	1f81c <__getf2+0x6c>

000000000001f894 <__letf2>:
   1f894:	00050893          	mv	a7,a0
   1f898:	002027f3          	frrm	a5
   1f89c:	00008337          	lui	t1,0x8
   1f8a0:	fff30313          	addi	t1,t1,-1 # 7fff <register_fini-0x80b1>
   1f8a4:	fff00793          	li	a5,-1
   1f8a8:	0305d813          	srli	a6,a1,0x30
   1f8ac:	0107d793          	srli	a5,a5,0x10
   1f8b0:	0306d713          	srli	a4,a3,0x30
   1f8b4:	00687833          	and	a6,a6,t1
   1f8b8:	00f5fe33          	and	t3,a1,a5
   1f8bc:	03f5d513          	srli	a0,a1,0x3f
   1f8c0:	00f6f7b3          	and	a5,a3,a5
   1f8c4:	00677733          	and	a4,a4,t1
   1f8c8:	03f6d693          	srli	a3,a3,0x3f
   1f8cc:	00681c63          	bne	a6,t1,1f8e4 <__letf2+0x50>
   1f8d0:	011e65b3          	or	a1,t3,a7
   1f8d4:	08058a63          	beqz	a1,1f968 <__letf2+0xd4>
   1f8d8:	00186073          	csrsi	fflags,16
   1f8dc:	00200513          	li	a0,2
   1f8e0:	00008067          	ret
   1f8e4:	00671663          	bne	a4,t1,1f8f0 <__letf2+0x5c>
   1f8e8:	00c7e5b3          	or	a1,a5,a2
   1f8ec:	fe0596e3          	bnez	a1,1f8d8 <__letf2+0x44>
   1f8f0:	06081e63          	bnez	a6,1f96c <__letf2+0xd8>
   1f8f4:	011e65b3          	or	a1,t3,a7
   1f8f8:	0015b593          	seqz	a1,a1
   1f8fc:	04071663          	bnez	a4,1f948 <__letf2+0xb4>
   1f900:	00c7e333          	or	t1,a5,a2
   1f904:	04031263          	bnez	t1,1f948 <__letf2+0xb4>
   1f908:	02059863          	bnez	a1,1f938 <__letf2+0xa4>
   1f90c:	02050a63          	beqz	a0,1f940 <__letf2+0xac>
   1f910:	fff00513          	li	a0,-1
   1f914:	00008067          	ret
   1f918:	fff00513          	li	a0,-1
   1f91c:	04068063          	beqz	a3,1f95c <__letf2+0xc8>
   1f920:	00068513          	mv	a0,a3
   1f924:	00008067          	ret
   1f928:	ffc7e2e3          	bltu	a5,t3,1f90c <__letf2+0x78>
   1f92c:	02fe1a63          	bne	t3,a5,1f960 <__letf2+0xcc>
   1f930:	fd166ee3          	bltu	a2,a7,1f90c <__letf2+0x78>
   1f934:	02c8e263          	bltu	a7,a2,1f958 <__letf2+0xc4>
   1f938:	00000513          	li	a0,0
   1f93c:	00008067          	ret
   1f940:	00100513          	li	a0,1
   1f944:	00008067          	ret
   1f948:	fc0598e3          	bnez	a1,1f918 <__letf2+0x84>
   1f94c:	fcd510e3          	bne	a0,a3,1f90c <__letf2+0x78>
   1f950:	fb074ee3          	blt	a4,a6,1f90c <__letf2+0x78>
   1f954:	fce85ae3          	bge	a6,a4,1f928 <__letf2+0x94>
   1f958:	fa050ce3          	beqz	a0,1f910 <__letf2+0x7c>
   1f95c:	00008067          	ret
   1f960:	fefe6ce3          	bltu	t3,a5,1f958 <__letf2+0xc4>
   1f964:	fd5ff06f          	j	1f938 <__letf2+0xa4>
   1f968:	f90700e3          	beq	a4,a6,1f8e8 <__letf2+0x54>
   1f96c:	fe0710e3          	bnez	a4,1f94c <__letf2+0xb8>
   1f970:	00000593          	li	a1,0
   1f974:	f8dff06f          	j	1f900 <__letf2+0x6c>

000000000001f978 <__multf3>:
   1f978:	fa010113          	addi	sp,sp,-96
   1f97c:	03613023          	sd	s6,32(sp)
   1f980:	01913423          	sd	s9,8(sp)
   1f984:	04113c23          	sd	ra,88(sp)
   1f988:	04813823          	sd	s0,80(sp)
   1f98c:	04913423          	sd	s1,72(sp)
   1f990:	05213023          	sd	s2,64(sp)
   1f994:	03313c23          	sd	s3,56(sp)
   1f998:	03413823          	sd	s4,48(sp)
   1f99c:	03513423          	sd	s5,40(sp)
   1f9a0:	01713c23          	sd	s7,24(sp)
   1f9a4:	01813823          	sd	s8,16(sp)
   1f9a8:	00060c93          	mv	s9,a2
   1f9ac:	00068b13          	mv	s6,a3
   1f9b0:	00202973          	frrm	s2
   1f9b4:	00008737          	lui	a4,0x8
   1f9b8:	0305da93          	srli	s5,a1,0x30
   1f9bc:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   1f9c0:	01059993          	slli	s3,a1,0x10
   1f9c4:	00eaf7b3          	and	a5,s5,a4
   1f9c8:	0009091b          	sext.w	s2,s2
   1f9cc:	0109d993          	srli	s3,s3,0x10
   1f9d0:	03f5db93          	srli	s7,a1,0x3f
   1f9d4:	04078263          	beqz	a5,1fa18 <__multf3+0xa0>
   1f9d8:	00050a13          	mv	s4,a0
   1f9dc:	00078a9b          	sext.w	s5,a5
   1f9e0:	0ae78663          	beq	a5,a4,1fa8c <__multf3+0x114>
   1f9e4:	00399993          	slli	s3,s3,0x3
   1f9e8:	03d55713          	srli	a4,a0,0x3d
   1f9ec:	01376733          	or	a4,a4,s3
   1f9f0:	ffffcab7          	lui	s5,0xffffc
   1f9f4:	00100993          	li	s3,1
   1f9f8:	03399993          	slli	s3,s3,0x33
   1f9fc:	001a8a93          	addi	s5,s5,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd7d61>
   1fa00:	013769b3          	or	s3,a4,s3
   1fa04:	00351a13          	slli	s4,a0,0x3
   1fa08:	01578ab3          	add	s5,a5,s5
   1fa0c:	00000c13          	li	s8,0
   1fa10:	00000493          	li	s1,0
   1fa14:	0940006f          	j	1faa8 <__multf3+0x130>
   1fa18:	00a9e7b3          	or	a5,s3,a0
   1fa1c:	00050413          	mv	s0,a0
   1fa20:	10078c63          	beqz	a5,1fb38 <__multf3+0x1c0>
   1fa24:	04098663          	beqz	s3,1fa70 <__multf3+0xf8>
   1fa28:	00098513          	mv	a0,s3
   1fa2c:	039010ef          	jal	ra,21264 <__clzdi2>
   1fa30:	0005079b          	sext.w	a5,a0
   1fa34:	ff178693          	addi	a3,a5,-15
   1fa38:	03c00613          	li	a2,60
   1fa3c:	0006871b          	sext.w	a4,a3
   1fa40:	02d64e63          	blt	a2,a3,1fa7c <__multf3+0x104>
   1fa44:	03d00693          	li	a3,61
   1fa48:	00370a1b          	addiw	s4,a4,3
   1fa4c:	40e6873b          	subw	a4,a3,a4
   1fa50:	014999b3          	sll	s3,s3,s4
   1fa54:	00e45733          	srl	a4,s0,a4
   1fa58:	013769b3          	or	s3,a4,s3
   1fa5c:	01441a33          	sll	s4,s0,s4
   1fa60:	ffffcab7          	lui	s5,0xffffc
   1fa64:	011a8a93          	addi	s5,s5,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd7d71>
   1fa68:	40fa8ab3          	sub	s5,s5,a5
   1fa6c:	fa1ff06f          	j	1fa0c <__multf3+0x94>
   1fa70:	7f4010ef          	jal	ra,21264 <__clzdi2>
   1fa74:	0405079b          	addiw	a5,a0,64
   1fa78:	fbdff06f          	j	1fa34 <__multf3+0xbc>
   1fa7c:	fc37071b          	addiw	a4,a4,-61
   1fa80:	00e419b3          	sll	s3,s0,a4
   1fa84:	00000a13          	li	s4,0
   1fa88:	fd9ff06f          	j	1fa60 <__multf3+0xe8>
   1fa8c:	00a9e7b3          	or	a5,s3,a0
   1fa90:	0a078e63          	beqz	a5,1fb4c <__multf3+0x1d4>
   1fa94:	02f9d793          	srli	a5,s3,0x2f
   1fa98:	0017f793          	andi	a5,a5,1
   1fa9c:	00300c13          	li	s8,3
   1faa0:	01000493          	li	s1,16
   1faa4:	f60796e3          	bnez	a5,1fa10 <__multf3+0x98>
   1faa8:	000086b7          	lui	a3,0x8
   1faac:	030b5513          	srli	a0,s6,0x30
   1fab0:	fff68693          	addi	a3,a3,-1 # 7fff <register_fini-0x80b1>
   1fab4:	010b1413          	slli	s0,s6,0x10
   1fab8:	00d57733          	and	a4,a0,a3
   1fabc:	000c8793          	mv	a5,s9
   1fac0:	01045413          	srli	s0,s0,0x10
   1fac4:	03fb5b13          	srli	s6,s6,0x3f
   1fac8:	08070a63          	beqz	a4,1fb5c <__multf3+0x1e4>
   1facc:	0007051b          	sext.w	a0,a4
   1fad0:	10d70063          	beq	a4,a3,1fbd0 <__multf3+0x258>
   1fad4:	00341413          	slli	s0,s0,0x3
   1fad8:	03dcd693          	srli	a3,s9,0x3d
   1fadc:	0086e6b3          	or	a3,a3,s0
   1fae0:	ffffc537          	lui	a0,0xffffc
   1fae4:	00100413          	li	s0,1
   1fae8:	03341413          	slli	s0,s0,0x33
   1faec:	00150513          	addi	a0,a0,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd7d61>
   1faf0:	0086e433          	or	s0,a3,s0
   1faf4:	003c9793          	slli	a5,s9,0x3
   1faf8:	00a70533          	add	a0,a4,a0
   1fafc:	00000713          	li	a4,0
   1fb00:	002c1693          	slli	a3,s8,0x2
   1fb04:	00e6e6b3          	or	a3,a3,a4
   1fb08:	01550ab3          	add	s5,a0,s5
   1fb0c:	fff68693          	addi	a3,a3,-1
   1fb10:	00e00593          	li	a1,14
   1fb14:	016bc633          	xor	a2,s7,s6
   1fb18:	001a8813          	addi	a6,s5,1
   1fb1c:	16d5ec63          	bltu	a1,a3,1fc94 <__multf3+0x31c>
   1fb20:	000225b7          	lui	a1,0x22
   1fb24:	00269693          	slli	a3,a3,0x2
   1fb28:	f5c58593          	addi	a1,a1,-164 # 21f5c <_ctype_+0x104>
   1fb2c:	00b686b3          	add	a3,a3,a1
   1fb30:	0006a683          	lw	a3,0(a3)
   1fb34:	00068067          	jr	a3
   1fb38:	00000993          	li	s3,0
   1fb3c:	00000a13          	li	s4,0
   1fb40:	00000a93          	li	s5,0
   1fb44:	00100c13          	li	s8,1
   1fb48:	ec9ff06f          	j	1fa10 <__multf3+0x98>
   1fb4c:	00000993          	li	s3,0
   1fb50:	00000a13          	li	s4,0
   1fb54:	00200c13          	li	s8,2
   1fb58:	eb9ff06f          	j	1fa10 <__multf3+0x98>
   1fb5c:	008ce7b3          	or	a5,s9,s0
   1fb60:	08078863          	beqz	a5,1fbf0 <__multf3+0x278>
   1fb64:	04040663          	beqz	s0,1fbb0 <__multf3+0x238>
   1fb68:	00040513          	mv	a0,s0
   1fb6c:	6f8010ef          	jal	ra,21264 <__clzdi2>
   1fb70:	0005071b          	sext.w	a4,a0
   1fb74:	ff170793          	addi	a5,a4,-15
   1fb78:	03c00613          	li	a2,60
   1fb7c:	0007869b          	sext.w	a3,a5
   1fb80:	04f64063          	blt	a2,a5,1fbc0 <__multf3+0x248>
   1fb84:	03d00613          	li	a2,61
   1fb88:	0036879b          	addiw	a5,a3,3
   1fb8c:	40d606bb          	subw	a3,a2,a3
   1fb90:	00f41433          	sll	s0,s0,a5
   1fb94:	00dcd6b3          	srl	a3,s9,a3
   1fb98:	0086e433          	or	s0,a3,s0
   1fb9c:	00fc97b3          	sll	a5,s9,a5
   1fba0:	ffffc537          	lui	a0,0xffffc
   1fba4:	01150513          	addi	a0,a0,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd7d71>
   1fba8:	40e50533          	sub	a0,a0,a4
   1fbac:	f51ff06f          	j	1fafc <__multf3+0x184>
   1fbb0:	000c8513          	mv	a0,s9
   1fbb4:	6b0010ef          	jal	ra,21264 <__clzdi2>
   1fbb8:	0405071b          	addiw	a4,a0,64
   1fbbc:	fb9ff06f          	j	1fb74 <__multf3+0x1fc>
   1fbc0:	fc36869b          	addiw	a3,a3,-61
   1fbc4:	00dc9433          	sll	s0,s9,a3
   1fbc8:	00000793          	li	a5,0
   1fbcc:	fd5ff06f          	j	1fba0 <__multf3+0x228>
   1fbd0:	008ce733          	or	a4,s9,s0
   1fbd4:	02070863          	beqz	a4,1fc04 <__multf3+0x28c>
   1fbd8:	02f45713          	srli	a4,s0,0x2f
   1fbdc:	00177713          	andi	a4,a4,1
   1fbe0:	02071a63          	bnez	a4,1fc14 <__multf3+0x29c>
   1fbe4:	00300713          	li	a4,3
   1fbe8:	01000493          	li	s1,16
   1fbec:	f15ff06f          	j	1fb00 <__multf3+0x188>
   1fbf0:	00000413          	li	s0,0
   1fbf4:	00000793          	li	a5,0
   1fbf8:	00000513          	li	a0,0
   1fbfc:	00100713          	li	a4,1
   1fc00:	f01ff06f          	j	1fb00 <__multf3+0x188>
   1fc04:	00000413          	li	s0,0
   1fc08:	00000793          	li	a5,0
   1fc0c:	00200713          	li	a4,2
   1fc10:	ef1ff06f          	j	1fb00 <__multf3+0x188>
   1fc14:	00300713          	li	a4,3
   1fc18:	ee9ff06f          	j	1fb00 <__multf3+0x188>
   1fc1c:	00100413          	li	s0,1
   1fc20:	00008737          	lui	a4,0x8
   1fc24:	02f41413          	slli	s0,s0,0x2f
   1fc28:	00000513          	li	a0,0
   1fc2c:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   1fc30:	00000613          	li	a2,0
   1fc34:	01000493          	li	s1,16
   1fc38:	03171713          	slli	a4,a4,0x31
   1fc3c:	03175713          	srli	a4,a4,0x31
   1fc40:	00f61613          	slli	a2,a2,0xf
   1fc44:	01041413          	slli	s0,s0,0x10
   1fc48:	00e66733          	or	a4,a2,a4
   1fc4c:	03071713          	slli	a4,a4,0x30
   1fc50:	01045593          	srli	a1,s0,0x10
   1fc54:	00e5e5b3          	or	a1,a1,a4
   1fc58:	00048463          	beqz	s1,1fc60 <__multf3+0x2e8>
   1fc5c:	0014a073          	csrs	fflags,s1
   1fc60:	05813083          	ld	ra,88(sp)
   1fc64:	05013403          	ld	s0,80(sp)
   1fc68:	04813483          	ld	s1,72(sp)
   1fc6c:	04013903          	ld	s2,64(sp)
   1fc70:	03813983          	ld	s3,56(sp)
   1fc74:	03013a03          	ld	s4,48(sp)
   1fc78:	02813a83          	ld	s5,40(sp)
   1fc7c:	02013b03          	ld	s6,32(sp)
   1fc80:	01813b83          	ld	s7,24(sp)
   1fc84:	01013c03          	ld	s8,16(sp)
   1fc88:	00813c83          	ld	s9,8(sp)
   1fc8c:	06010113          	addi	sp,sp,96
   1fc90:	00008067          	ret
   1fc94:	fff00513          	li	a0,-1
   1fc98:	02055513          	srli	a0,a0,0x20
   1fc9c:	014983b3          	add	t2,s3,s4
   1fca0:	00878f33          	add	t5,a5,s0
   1fca4:	020a5e93          	srli	t4,s4,0x20
   1fca8:	0207d693          	srli	a3,a5,0x20
   1fcac:	0143bfb3          	sltu	t6,t2,s4
   1fcb0:	00ff32b3          	sltu	t0,t5,a5
   1fcb4:	00aa7a33          	and	s4,s4,a0
   1fcb8:	00a7f7b3          	and	a5,a5,a0
   1fcbc:	03478533          	mul	a0,a5,s4
   1fcc0:	000f8e13          	mv	t3,t6
   1fcc4:	00028313          	mv	t1,t0
   1fcc8:	02fe87b3          	mul	a5,t4,a5
   1fccc:	02de8733          	mul	a4,t4,a3
   1fcd0:	034686b3          	mul	a3,a3,s4
   1fcd4:	02055a13          	srli	s4,a0,0x20
   1fcd8:	00f686b3          	add	a3,a3,a5
   1fcdc:	00da0a33          	add	s4,s4,a3
   1fce0:	00fa7863          	bgeu	s4,a5,1fcf0 <__multf3+0x378>
   1fce4:	00100793          	li	a5,1
   1fce8:	02079793          	slli	a5,a5,0x20
   1fcec:	00f70733          	add	a4,a4,a5
   1fcf0:	fff00693          	li	a3,-1
   1fcf4:	0206d693          	srli	a3,a3,0x20
   1fcf8:	00da75b3          	and	a1,s4,a3
   1fcfc:	00d57533          	and	a0,a0,a3
   1fd00:	02059593          	slli	a1,a1,0x20
   1fd04:	0203d893          	srli	a7,t2,0x20
   1fd08:	020f5793          	srli	a5,t5,0x20
   1fd0c:	020a5e93          	srli	t4,s4,0x20
   1fd10:	00a585b3          	add	a1,a1,a0
   1fd14:	00d3f533          	and	a0,t2,a3
   1fd18:	00df76b3          	and	a3,t5,a3
   1fd1c:	02f88b33          	mul	s6,a7,a5
   1fd20:	00ee8eb3          	add	t4,t4,a4
   1fd24:	02a787b3          	mul	a5,a5,a0
   1fd28:	02a68733          	mul	a4,a3,a0
   1fd2c:	02d886b3          	mul	a3,a7,a3
   1fd30:	00d78533          	add	a0,a5,a3
   1fd34:	02075793          	srli	a5,a4,0x20
   1fd38:	00a787b3          	add	a5,a5,a0
   1fd3c:	00d7f863          	bgeu	a5,a3,1fd4c <__multf3+0x3d4>
   1fd40:	00100693          	li	a3,1
   1fd44:	02069693          	slli	a3,a3,0x20
   1fd48:	00db0b33          	add	s6,s6,a3
   1fd4c:	fff00893          	li	a7,-1
   1fd50:	0208d893          	srli	a7,a7,0x20
   1fd54:	0117f6b3          	and	a3,a5,a7
   1fd58:	02045b93          	srli	s7,s0,0x20
   1fd5c:	01177533          	and	a0,a4,a7
   1fd60:	0207da13          	srli	s4,a5,0x20
   1fd64:	0209d793          	srli	a5,s3,0x20
   1fd68:	0119f9b3          	and	s3,s3,a7
   1fd6c:	011478b3          	and	a7,s0,a7
   1fd70:	03198433          	mul	s0,s3,a7
   1fd74:	02069693          	slli	a3,a3,0x20
   1fd78:	00a68533          	add	a0,a3,a0
   1fd7c:	031788b3          	mul	a7,a5,a7
   1fd80:	037787b3          	mul	a5,a5,s7
   1fd84:	033b8bb3          	mul	s7,s7,s3
   1fd88:	02045993          	srli	s3,s0,0x20
   1fd8c:	011b8bb3          	add	s7,s7,a7
   1fd90:	017989b3          	add	s3,s3,s7
   1fd94:	0119f863          	bgeu	s3,a7,1fda4 <__multf3+0x42c>
   1fd98:	00100713          	li	a4,1
   1fd9c:	02071713          	slli	a4,a4,0x20
   1fda0:	00e787b3          	add	a5,a5,a4
   1fda4:	0209d693          	srli	a3,s3,0x20
   1fda8:	00f687b3          	add	a5,a3,a5
   1fdac:	fff00693          	li	a3,-1
   1fdb0:	0206d693          	srli	a3,a3,0x20
   1fdb4:	00d9f733          	and	a4,s3,a3
   1fdb8:	00d47433          	and	s0,s0,a3
   1fdbc:	01d506b3          	add	a3,a0,t4
   1fdc0:	01d6b533          	sltu	a0,a3,t4
   1fdc4:	00aa08b3          	add	a7,s4,a0
   1fdc8:	40600333          	neg	t1,t1
   1fdcc:	016888b3          	add	a7,a7,s6
   1fdd0:	007373b3          	and	t2,t1,t2
   1fdd4:	41c00e33          	neg	t3,t3
   1fdd8:	011383b3          	add	t2,t2,a7
   1fddc:	01ee7f33          	and	t5,t3,t5
   1fde0:	00a8b533          	sltu	a0,a7,a0
   1fde4:	005fffb3          	and	t6,t6,t0
   1fde8:	007f0f33          	add	t5,t5,t2
   1fdec:	0113b8b3          	sltu	a7,t2,a7
   1fdf0:	01f50533          	add	a0,a0,t6
   1fdf4:	40b68333          	sub	t1,a3,a1
   1fdf8:	01150533          	add	a0,a0,a7
   1fdfc:	0066be33          	sltu	t3,a3,t1
   1fe00:	41df08b3          	sub	a7,t5,t4
   1fe04:	02071713          	slli	a4,a4,0x20
   1fe08:	007f33b3          	sltu	t2,t5,t2
   1fe0c:	011f3fb3          	sltu	t6,t5,a7
   1fe10:	00870733          	add	a4,a4,s0
   1fe14:	41c888b3          	sub	a7,a7,t3
   1fe18:	00750533          	add	a0,a0,t2
   1fe1c:	00000e13          	li	t3,0
   1fe20:	0066f663          	bgeu	a3,t1,1fe2c <__multf3+0x4b4>
   1fe24:	41ee8f33          	sub	t5,t4,t5
   1fe28:	001f3e13          	seqz	t3,t5
   1fe2c:	01fe6f33          	or	t5,t3,t6
   1fe30:	40e30e33          	sub	t3,t1,a4
   1fe34:	40f886b3          	sub	a3,a7,a5
   1fe38:	00f50533          	add	a0,a0,a5
   1fe3c:	01c337b3          	sltu	a5,t1,t3
   1fe40:	00d8b8b3          	sltu	a7,a7,a3
   1fe44:	40f707b3          	sub	a5,a4,a5
   1fe48:	00000e93          	li	t4,0
   1fe4c:	01c37463          	bgeu	t1,t3,1fe54 <__multf3+0x4dc>
   1fe50:	0016be93          	seqz	t4,a3
   1fe54:	00f686b3          	add	a3,a3,a5
   1fe58:	00e6b733          	sltu	a4,a3,a4
   1fe5c:	00a70733          	add	a4,a4,a0
   1fe60:	41e70733          	sub	a4,a4,t5
   1fe64:	011ee8b3          	or	a7,t4,a7
   1fe68:	41170733          	sub	a4,a4,a7
   1fe6c:	00de1793          	slli	a5,t3,0xd
   1fe70:	00d71713          	slli	a4,a4,0xd
   1fe74:	0336d413          	srli	s0,a3,0x33
   1fe78:	00b7e7b3          	or	a5,a5,a1
   1fe7c:	00876433          	or	s0,a4,s0
   1fe80:	00f037b3          	snez	a5,a5
   1fe84:	033e5513          	srli	a0,t3,0x33
   1fe88:	03475713          	srli	a4,a4,0x34
   1fe8c:	00a7e7b3          	or	a5,a5,a0
   1fe90:	00d69693          	slli	a3,a3,0xd
   1fe94:	00177713          	andi	a4,a4,1
   1fe98:	00d7e7b3          	or	a5,a5,a3
   1fe9c:	0a070463          	beqz	a4,1ff44 <__multf3+0x5cc>
   1fea0:	0017d713          	srli	a4,a5,0x1
   1fea4:	0017f793          	andi	a5,a5,1
   1fea8:	03f41513          	slli	a0,s0,0x3f
   1feac:	00f767b3          	or	a5,a4,a5
   1feb0:	00a7e7b3          	or	a5,a5,a0
   1feb4:	00145413          	srli	s0,s0,0x1
   1feb8:	00004737          	lui	a4,0x4
   1febc:	fff70713          	addi	a4,a4,-1 # 3fff <register_fini-0xc0b1>
   1fec0:	00e80733          	add	a4,a6,a4
   1fec4:	12e05263          	blez	a4,1ffe8 <__multf3+0x670>
   1fec8:	0077f693          	andi	a3,a5,7
   1fecc:	08068863          	beqz	a3,1ff5c <__multf3+0x5e4>
   1fed0:	00200693          	li	a3,2
   1fed4:	0014e493          	ori	s1,s1,1
   1fed8:	08d90063          	beq	s2,a3,1ff58 <__multf3+0x5e0>
   1fedc:	00300693          	li	a3,3
   1fee0:	06d90663          	beq	s2,a3,1ff4c <__multf3+0x5d4>
   1fee4:	06091c63          	bnez	s2,1ff5c <__multf3+0x5e4>
   1fee8:	00f7f693          	andi	a3,a5,15
   1feec:	00400593          	li	a1,4
   1fef0:	06b68663          	beq	a3,a1,1ff5c <__multf3+0x5e4>
   1fef4:	00478693          	addi	a3,a5,4
   1fef8:	00f6b7b3          	sltu	a5,a3,a5
   1fefc:	00f40433          	add	s0,s0,a5
   1ff00:	00068793          	mv	a5,a3
   1ff04:	0580006f          	j	1ff5c <__multf3+0x5e4>
   1ff08:	000b8613          	mv	a2,s7
   1ff0c:	00098413          	mv	s0,s3
   1ff10:	000a0793          	mv	a5,s4
   1ff14:	000c0713          	mv	a4,s8
   1ff18:	00200693          	li	a3,2
   1ff1c:	2ad70063          	beq	a4,a3,201bc <__multf3+0x844>
   1ff20:	00300693          	li	a3,3
   1ff24:	2ad70663          	beq	a4,a3,201d0 <__multf3+0x858>
   1ff28:	00100693          	li	a3,1
   1ff2c:	f8d716e3          	bne	a4,a3,1feb8 <__multf3+0x540>
   1ff30:	00000413          	li	s0,0
   1ff34:	00000513          	li	a0,0
   1ff38:	2600006f          	j	20198 <__multf3+0x820>
   1ff3c:	000b0613          	mv	a2,s6
   1ff40:	fd9ff06f          	j	1ff18 <__multf3+0x5a0>
   1ff44:	000a8813          	mv	a6,s5
   1ff48:	f71ff06f          	j	1feb8 <__multf3+0x540>
   1ff4c:	00061863          	bnez	a2,1ff5c <__multf3+0x5e4>
   1ff50:	00878693          	addi	a3,a5,8
   1ff54:	fa5ff06f          	j	1fef8 <__multf3+0x580>
   1ff58:	fe061ce3          	bnez	a2,1ff50 <__multf3+0x5d8>
   1ff5c:	03445693          	srli	a3,s0,0x34
   1ff60:	0016f693          	andi	a3,a3,1
   1ff64:	00068e63          	beqz	a3,1ff80 <__multf3+0x608>
   1ff68:	fff00713          	li	a4,-1
   1ff6c:	03471713          	slli	a4,a4,0x34
   1ff70:	fff70713          	addi	a4,a4,-1
   1ff74:	00e47433          	and	s0,s0,a4
   1ff78:	00004737          	lui	a4,0x4
   1ff7c:	00e80733          	add	a4,a6,a4
   1ff80:	000086b7          	lui	a3,0x8
   1ff84:	ffe68593          	addi	a1,a3,-2 # 7ffe <register_fini-0x80b2>
   1ff88:	00e5cc63          	blt	a1,a4,1ffa0 <__multf3+0x628>
   1ff8c:	03d41513          	slli	a0,s0,0x3d
   1ff90:	0037d793          	srli	a5,a5,0x3
   1ff94:	00f56533          	or	a0,a0,a5
   1ff98:	00345413          	srli	s0,s0,0x3
   1ff9c:	c9dff06f          	j	1fc38 <__multf3+0x2c0>
   1ffa0:	00200793          	li	a5,2
   1ffa4:	02f90a63          	beq	s2,a5,1ffd8 <__multf3+0x660>
   1ffa8:	00300793          	li	a5,3
   1ffac:	fff68713          	addi	a4,a3,-1
   1ffb0:	00f90863          	beq	s2,a5,1ffc0 <__multf3+0x648>
   1ffb4:	00091863          	bnez	s2,1ffc4 <__multf3+0x64c>
   1ffb8:	00000513          	li	a0,0
   1ffbc:	0100006f          	j	1ffcc <__multf3+0x654>
   1ffc0:	fe060ce3          	beqz	a2,1ffb8 <__multf3+0x640>
   1ffc4:	fff00513          	li	a0,-1
   1ffc8:	00058713          	mv	a4,a1
   1ffcc:	0054e493          	ori	s1,s1,5
   1ffd0:	00050413          	mv	s0,a0
   1ffd4:	c65ff06f          	j	1fc38 <__multf3+0x2c0>
   1ffd8:	fe0606e3          	beqz	a2,1ffc4 <__multf3+0x64c>
   1ffdc:	00000513          	li	a0,0
   1ffe0:	fff68713          	addi	a4,a3,-1
   1ffe4:	fe9ff06f          	j	1ffcc <__multf3+0x654>
   1ffe8:	00100693          	li	a3,1
   1ffec:	06071463          	bnez	a4,20054 <__multf3+0x6dc>
   1fff0:	0077f593          	andi	a1,a5,7
   1fff4:	00040693          	mv	a3,s0
   1fff8:	04058863          	beqz	a1,20048 <__multf3+0x6d0>
   1fffc:	00200593          	li	a1,2
   20000:	0014e493          	ori	s1,s1,1
   20004:	04b90063          	beq	s2,a1,20044 <__multf3+0x6cc>
   20008:	00300593          	li	a1,3
   2000c:	02b90663          	beq	s2,a1,20038 <__multf3+0x6c0>
   20010:	02091c63          	bnez	s2,20048 <__multf3+0x6d0>
   20014:	00f7f593          	andi	a1,a5,15
   20018:	00400513          	li	a0,4
   2001c:	02a58663          	beq	a1,a0,20048 <__multf3+0x6d0>
   20020:	ffc7b693          	sltiu	a3,a5,-4
   20024:	0016c693          	xori	a3,a3,1
   20028:	02069693          	slli	a3,a3,0x20
   2002c:	0206d693          	srli	a3,a3,0x20
   20030:	008686b3          	add	a3,a3,s0
   20034:	0140006f          	j	20048 <__multf3+0x6d0>
   20038:	00061863          	bnez	a2,20048 <__multf3+0x6d0>
   2003c:	ff87b693          	sltiu	a3,a5,-8
   20040:	fe5ff06f          	j	20024 <__multf3+0x6ac>
   20044:	fe061ce3          	bnez	a2,2003c <__multf3+0x6c4>
   20048:	0346d693          	srli	a3,a3,0x34
   2004c:	0016c693          	xori	a3,a3,1
   20050:	0016f693          	andi	a3,a3,1
   20054:	00100813          	li	a6,1
   20058:	40e80833          	sub	a6,a6,a4
   2005c:	07400713          	li	a4,116
   20060:	11074263          	blt	a4,a6,20164 <__multf3+0x7ec>
   20064:	03f00593          	li	a1,63
   20068:	0008071b          	sext.w	a4,a6
   2006c:	0705c463          	blt	a1,a6,200d4 <__multf3+0x75c>
   20070:	04000593          	li	a1,64
   20074:	40e585bb          	subw	a1,a1,a4
   20078:	00b41533          	sll	a0,s0,a1
   2007c:	00e7d833          	srl	a6,a5,a4
   20080:	00b797b3          	sll	a5,a5,a1
   20084:	01056533          	or	a0,a0,a6
   20088:	00f037b3          	snez	a5,a5
   2008c:	00f56533          	or	a0,a0,a5
   20090:	00e45433          	srl	s0,s0,a4
   20094:	00757793          	andi	a5,a0,7
   20098:	08078063          	beqz	a5,20118 <__multf3+0x7a0>
   2009c:	00200793          	li	a5,2
   200a0:	0014e493          	ori	s1,s1,1
   200a4:	06f90863          	beq	s2,a5,20114 <__multf3+0x79c>
   200a8:	00300793          	li	a5,3
   200ac:	04f90e63          	beq	s2,a5,20108 <__multf3+0x790>
   200b0:	06091463          	bnez	s2,20118 <__multf3+0x7a0>
   200b4:	00f57793          	andi	a5,a0,15
   200b8:	00400713          	li	a4,4
   200bc:	04e78e63          	beq	a5,a4,20118 <__multf3+0x7a0>
   200c0:	00450793          	addi	a5,a0,4
   200c4:	00a7b533          	sltu	a0,a5,a0
   200c8:	00a40433          	add	s0,s0,a0
   200cc:	00078513          	mv	a0,a5
   200d0:	0480006f          	j	20118 <__multf3+0x7a0>
   200d4:	fc07051b          	addiw	a0,a4,-64
   200d8:	04000893          	li	a7,64
   200dc:	00a45533          	srl	a0,s0,a0
   200e0:	00000593          	li	a1,0
   200e4:	01180863          	beq	a6,a7,200f4 <__multf3+0x77c>
   200e8:	08000593          	li	a1,128
   200ec:	40e5873b          	subw	a4,a1,a4
   200f0:	00e415b3          	sll	a1,s0,a4
   200f4:	00f5e7b3          	or	a5,a1,a5
   200f8:	00f037b3          	snez	a5,a5
   200fc:	00f56533          	or	a0,a0,a5
   20100:	00000413          	li	s0,0
   20104:	f91ff06f          	j	20094 <__multf3+0x71c>
   20108:	00061863          	bnez	a2,20118 <__multf3+0x7a0>
   2010c:	00850793          	addi	a5,a0,8
   20110:	fb5ff06f          	j	200c4 <__multf3+0x74c>
   20114:	fe061ce3          	bnez	a2,2010c <__multf3+0x794>
   20118:	03345793          	srli	a5,s0,0x33
   2011c:	0017f793          	andi	a5,a5,1
   20120:	02078063          	beqz	a5,20140 <__multf3+0x7c8>
   20124:	0014e493          	ori	s1,s1,1
   20128:	00000413          	li	s0,0
   2012c:	00000513          	li	a0,0
   20130:	00100713          	li	a4,1
   20134:	b00682e3          	beqz	a3,1fc38 <__multf3+0x2c0>
   20138:	0024e493          	ori	s1,s1,2
   2013c:	afdff06f          	j	1fc38 <__multf3+0x2c0>
   20140:	03d41793          	slli	a5,s0,0x3d
   20144:	00355513          	srli	a0,a0,0x3
   20148:	00a7e533          	or	a0,a5,a0
   2014c:	00345413          	srli	s0,s0,0x3
   20150:	00000713          	li	a4,0
   20154:	ae0682e3          	beqz	a3,1fc38 <__multf3+0x2c0>
   20158:	0014f793          	andi	a5,s1,1
   2015c:	ac078ee3          	beqz	a5,1fc38 <__multf3+0x2c0>
   20160:	fd9ff06f          	j	20138 <__multf3+0x7c0>
   20164:	0087e533          	or	a0,a5,s0
   20168:	02050463          	beqz	a0,20190 <__multf3+0x818>
   2016c:	00200793          	li	a5,2
   20170:	0014e493          	ori	s1,s1,1
   20174:	02f90e63          	beq	s2,a5,201b0 <__multf3+0x838>
   20178:	00300793          	li	a5,3
   2017c:	02f90263          	beq	s2,a5,201a0 <__multf3+0x828>
   20180:	00100793          	li	a5,1
   20184:	00091463          	bnez	s2,2018c <__multf3+0x814>
   20188:	00500793          	li	a5,5
   2018c:	0037d513          	srli	a0,a5,0x3
   20190:	0024e493          	ori	s1,s1,2
   20194:	00000413          	li	s0,0
   20198:	00000713          	li	a4,0
   2019c:	a9dff06f          	j	1fc38 <__multf3+0x2c0>
   201a0:	00900793          	li	a5,9
   201a4:	fe0604e3          	beqz	a2,2018c <__multf3+0x814>
   201a8:	00100793          	li	a5,1
   201ac:	fe1ff06f          	j	2018c <__multf3+0x814>
   201b0:	00900793          	li	a5,9
   201b4:	fc061ce3          	bnez	a2,2018c <__multf3+0x814>
   201b8:	ff1ff06f          	j	201a8 <__multf3+0x830>
   201bc:	00008737          	lui	a4,0x8
   201c0:	00000413          	li	s0,0
   201c4:	00000513          	li	a0,0
   201c8:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   201cc:	a6dff06f          	j	1fc38 <__multf3+0x2c0>
   201d0:	00100413          	li	s0,1
   201d4:	00008737          	lui	a4,0x8
   201d8:	02f41413          	slli	s0,s0,0x2f
   201dc:	00000513          	li	a0,0
   201e0:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   201e4:	00000613          	li	a2,0
   201e8:	a51ff06f          	j	1fc38 <__multf3+0x2c0>

00000000000201ec <__subtf3>:
   201ec:	fd010113          	addi	sp,sp,-48
   201f0:	02113423          	sd	ra,40(sp)
   201f4:	02813023          	sd	s0,32(sp)
   201f8:	00913c23          	sd	s1,24(sp)
   201fc:	01213823          	sd	s2,16(sp)
   20200:	01313423          	sd	s3,8(sp)
   20204:	01413023          	sd	s4,0(sp)
   20208:	00202473          	frrm	s0
   2020c:	fff00713          	li	a4,-1
   20210:	01075713          	srli	a4,a4,0x10
   20214:	00008837          	lui	a6,0x8
   20218:	0305d893          	srli	a7,a1,0x30
   2021c:	fff80813          	addi	a6,a6,-1 # 7fff <register_fini-0x80b1>
   20220:	0306de93          	srli	t4,a3,0x30
   20224:	03f5d493          	srli	s1,a1,0x3f
   20228:	03f6d313          	srli	t1,a3,0x3f
   2022c:	00e5f5b3          	and	a1,a1,a4
   20230:	00e6f6b3          	and	a3,a3,a4
   20234:	00359593          	slli	a1,a1,0x3
   20238:	03d55793          	srli	a5,a0,0x3d
   2023c:	03d65713          	srli	a4,a2,0x3d
   20240:	0108f8b3          	and	a7,a7,a6
   20244:	010efeb3          	and	t4,t4,a6
   20248:	00369693          	slli	a3,a3,0x3
   2024c:	00b7e7b3          	or	a5,a5,a1
   20250:	0004041b          	sext.w	s0,s0
   20254:	00088993          	mv	s3,a7
   20258:	00351513          	slli	a0,a0,0x3
   2025c:	000e8593          	mv	a1,t4
   20260:	00d76733          	or	a4,a4,a3
   20264:	00361613          	slli	a2,a2,0x3
   20268:	010e9663          	bne	t4,a6,20274 <__subtf3+0x88>
   2026c:	00c766b3          	or	a3,a4,a2
   20270:	00069463          	bnez	a3,20278 <__subtf3+0x8c>
   20274:	00134313          	xori	t1,t1,1
   20278:	41d886bb          	subw	a3,a7,t4
   2027c:	00008e37          	lui	t3,0x8
   20280:	0006881b          	sext.w	a6,a3
   20284:	fffe0f13          	addi	t5,t3,-1 # 7fff <register_fini-0x80b1>
   20288:	4c931663          	bne	t1,s1,20754 <__subtf3+0x568>
   2028c:	13005c63          	blez	a6,203c4 <__subtf3+0x1d8>
   20290:	0a0e9663          	bnez	t4,2033c <__subtf3+0x150>
   20294:	00c765b3          	or	a1,a4,a2
   20298:	00059a63          	bnez	a1,202ac <__subtf3+0xc0>
   2029c:	09e88063          	beq	a7,t5,2031c <__subtf3+0x130>
   202a0:	00078713          	mv	a4,a5
   202a4:	00088593          	mv	a1,a7
   202a8:	1010006f          	j	20ba8 <__subtf3+0x9bc>
   202ac:	fff6881b          	addiw	a6,a3,-1
   202b0:	06081463          	bnez	a6,20318 <__subtf3+0x12c>
   202b4:	00a60633          	add	a2,a2,a0
   202b8:	00a63533          	sltu	a0,a2,a0
   202bc:	00f70733          	add	a4,a4,a5
   202c0:	00a70733          	add	a4,a4,a0
   202c4:	00088593          	mv	a1,a7
   202c8:	00060513          	mv	a0,a2
   202cc:	03375793          	srli	a5,a4,0x33
   202d0:	0017f793          	andi	a5,a5,1
   202d4:	0c078ae3          	beqz	a5,20ba8 <__subtf3+0x9bc>
   202d8:	000086b7          	lui	a3,0x8
   202dc:	00158593          	addi	a1,a1,1
   202e0:	fff68793          	addi	a5,a3,-1 # 7fff <register_fini-0x80b1>
   202e4:	42f58e63          	beq	a1,a5,20720 <__subtf3+0x534>
   202e8:	fff00793          	li	a5,-1
   202ec:	03379793          	slli	a5,a5,0x33
   202f0:	fff78793          	addi	a5,a5,-1
   202f4:	00f777b3          	and	a5,a4,a5
   202f8:	00155713          	srli	a4,a0,0x1
   202fc:	00157513          	andi	a0,a0,1
   20300:	00a76533          	or	a0,a4,a0
   20304:	03f79713          	slli	a4,a5,0x3f
   20308:	00a76533          	or	a0,a4,a0
   2030c:	0017d793          	srli	a5,a5,0x1
   20310:	00000813          	li	a6,0
   20314:	3900006f          	j	206a4 <__subtf3+0x4b8>
   20318:	03e89a63          	bne	a7,t5,2034c <__subtf3+0x160>
   2031c:	00a7e733          	or	a4,a5,a0
   20320:	100704e3          	beqz	a4,20c28 <__subtf3+0xa3c>
   20324:	0327d713          	srli	a4,a5,0x32
   20328:	00177713          	andi	a4,a4,1
   2032c:	00088593          	mv	a1,a7
   20330:	00000813          	li	a6,0
   20334:	36071863          	bnez	a4,206a4 <__subtf3+0x4b8>
   20338:	0c00006f          	j	203f8 <__subtf3+0x20c>
   2033c:	ffe880e3          	beq	a7,t5,2031c <__subtf3+0x130>
   20340:	00100693          	li	a3,1
   20344:	03369693          	slli	a3,a3,0x33
   20348:	00d76733          	or	a4,a4,a3
   2034c:	07400693          	li	a3,116
   20350:	0706c463          	blt	a3,a6,203b8 <__subtf3+0x1cc>
   20354:	03f00693          	li	a3,63
   20358:	0306c663          	blt	a3,a6,20384 <__subtf3+0x198>
   2035c:	04000593          	li	a1,64
   20360:	410585bb          	subw	a1,a1,a6
   20364:	00b716b3          	sll	a3,a4,a1
   20368:	01065333          	srl	t1,a2,a6
   2036c:	00b61633          	sll	a2,a2,a1
   20370:	0066e6b3          	or	a3,a3,t1
   20374:	00c03633          	snez	a2,a2
   20378:	00c6e633          	or	a2,a3,a2
   2037c:	01075733          	srl	a4,a4,a6
   20380:	f35ff06f          	j	202b4 <__subtf3+0xc8>
   20384:	fc08069b          	addiw	a3,a6,-64
   20388:	04000313          	li	t1,64
   2038c:	00d756b3          	srl	a3,a4,a3
   20390:	00000593          	li	a1,0
   20394:	00680863          	beq	a6,t1,203a4 <__subtf3+0x1b8>
   20398:	08000593          	li	a1,128
   2039c:	410585bb          	subw	a1,a1,a6
   203a0:	00b715b3          	sll	a1,a4,a1
   203a4:	00c5e633          	or	a2,a1,a2
   203a8:	00c03633          	snez	a2,a2
   203ac:	00c6e633          	or	a2,a3,a2
   203b0:	00000713          	li	a4,0
   203b4:	f01ff06f          	j	202b4 <__subtf3+0xc8>
   203b8:	00c76633          	or	a2,a4,a2
   203bc:	00c03633          	snez	a2,a2
   203c0:	ff1ff06f          	j	203b0 <__subtf3+0x1c4>
   203c4:	12080063          	beqz	a6,204e4 <__subtf3+0x2f8>
   203c8:	08089063          	bnez	a7,20448 <__subtf3+0x25c>
   203cc:	00a7e833          	or	a6,a5,a0
   203d0:	02081863          	bnez	a6,20400 <__subtf3+0x214>
   203d4:	00060513          	mv	a0,a2
   203d8:	7dee9863          	bne	t4,t5,20ba8 <__subtf3+0x9bc>
   203dc:	00c76533          	or	a0,a4,a2
   203e0:	020508e3          	beqz	a0,20c10 <__subtf3+0xa24>
   203e4:	03275793          	srli	a5,a4,0x32
   203e8:	0017f793          	andi	a5,a5,1
   203ec:	020798e3          	bnez	a5,20c1c <__subtf3+0xa30>
   203f0:	00070793          	mv	a5,a4
   203f4:	00060513          	mv	a0,a2
   203f8:	01000693          	li	a3,16
   203fc:	1440006f          	j	20540 <__subtf3+0x354>
   20400:	fff6c693          	not	a3,a3
   20404:	0006869b          	sext.w	a3,a3
   20408:	00069c63          	bnez	a3,20420 <__subtf3+0x234>
   2040c:	00c50533          	add	a0,a0,a2
   20410:	00e78733          	add	a4,a5,a4
   20414:	00c53633          	sltu	a2,a0,a2
   20418:	00c70733          	add	a4,a4,a2
   2041c:	eb1ff06f          	j	202cc <__subtf3+0xe0>
   20420:	03ee9e63          	bne	t4,t5,2045c <__subtf3+0x270>
   20424:	00c76533          	or	a0,a4,a2
   20428:	7e050463          	beqz	a0,20c10 <__subtf3+0xa24>
   2042c:	03275793          	srli	a5,a4,0x32
   20430:	0017f793          	andi	a5,a5,1
   20434:	7e079463          	bnez	a5,20c1c <__subtf3+0xa30>
   20438:	00070793          	mv	a5,a4
   2043c:	00060513          	mv	a0,a2
   20440:	00000813          	li	a6,0
   20444:	fb5ff06f          	j	203f8 <__subtf3+0x20c>
   20448:	fdee8ee3          	beq	t4,t5,20424 <__subtf3+0x238>
   2044c:	00100813          	li	a6,1
   20450:	03381813          	slli	a6,a6,0x33
   20454:	40d006bb          	negw	a3,a3
   20458:	0107e7b3          	or	a5,a5,a6
   2045c:	07400813          	li	a6,116
   20460:	06d84c63          	blt	a6,a3,204d8 <__subtf3+0x2ec>
   20464:	03f00813          	li	a6,63
   20468:	02d84e63          	blt	a6,a3,204a4 <__subtf3+0x2b8>
   2046c:	04000893          	li	a7,64
   20470:	40d888bb          	subw	a7,a7,a3
   20474:	00d55333          	srl	t1,a0,a3
   20478:	01179833          	sll	a6,a5,a7
   2047c:	01151533          	sll	a0,a0,a7
   20480:	00686833          	or	a6,a6,t1
   20484:	00a03533          	snez	a0,a0
   20488:	00a86533          	or	a0,a6,a0
   2048c:	00d7d6b3          	srl	a3,a5,a3
   20490:	00c50533          	add	a0,a0,a2
   20494:	00e686b3          	add	a3,a3,a4
   20498:	00c53633          	sltu	a2,a0,a2
   2049c:	00c68733          	add	a4,a3,a2
   204a0:	e2dff06f          	j	202cc <__subtf3+0xe0>
   204a4:	fc06881b          	addiw	a6,a3,-64
   204a8:	04000313          	li	t1,64
   204ac:	0107d833          	srl	a6,a5,a6
   204b0:	00000893          	li	a7,0
   204b4:	00668863          	beq	a3,t1,204c4 <__subtf3+0x2d8>
   204b8:	08000893          	li	a7,128
   204bc:	40d886bb          	subw	a3,a7,a3
   204c0:	00d798b3          	sll	a7,a5,a3
   204c4:	00a8e533          	or	a0,a7,a0
   204c8:	00a03533          	snez	a0,a0
   204cc:	00a86533          	or	a0,a6,a0
   204d0:	00000693          	li	a3,0
   204d4:	fbdff06f          	j	20490 <__subtf3+0x2a4>
   204d8:	00a7e533          	or	a0,a5,a0
   204dc:	00a03533          	snez	a0,a0
   204e0:	ff1ff06f          	j	204d0 <__subtf3+0x2e4>
   204e4:	00188593          	addi	a1,a7,1
   204e8:	ffee0693          	addi	a3,t3,-2
   204ec:	00d5f333          	and	t1,a1,a3
   204f0:	18031863          	bnez	t1,20680 <__subtf3+0x494>
   204f4:	00a7e5b3          	or	a1,a5,a0
   204f8:	06089263          	bnez	a7,2055c <__subtf3+0x370>
   204fc:	6c058263          	beqz	a1,20bc0 <__subtf3+0x9d4>
   20500:	00c766b3          	or	a3,a4,a2
   20504:	48068263          	beqz	a3,20988 <__subtf3+0x79c>
   20508:	00c50633          	add	a2,a0,a2
   2050c:	00e787b3          	add	a5,a5,a4
   20510:	00a63533          	sltu	a0,a2,a0
   20514:	00a787b3          	add	a5,a5,a0
   20518:	0337d713          	srli	a4,a5,0x33
   2051c:	00177713          	andi	a4,a4,1
   20520:	6a070263          	beqz	a4,20bc4 <__subtf3+0x9d8>
   20524:	fff00713          	li	a4,-1
   20528:	03371713          	slli	a4,a4,0x33
   2052c:	fff70713          	addi	a4,a4,-1
   20530:	00e7f7b3          	and	a5,a5,a4
   20534:	00060513          	mv	a0,a2
   20538:	00000693          	li	a3,0
   2053c:	00100593          	li	a1,1
   20540:	00757713          	andi	a4,a0,7
   20544:	1a071263          	bnez	a4,206e8 <__subtf3+0x4fc>
   20548:	08080663          	beqz	a6,205d4 <__subtf3+0x3e8>
   2054c:	0016f713          	andi	a4,a3,1
   20550:	08070263          	beqz	a4,205d4 <__subtf3+0x3e8>
   20554:	0026e693          	ori	a3,a3,2
   20558:	07c0006f          	j	205d4 <__subtf3+0x3e8>
   2055c:	03e89c63          	bne	a7,t5,20594 <__subtf3+0x3a8>
   20560:	78058063          	beqz	a1,20ce0 <__subtf3+0xaf4>
   20564:	0327d693          	srli	a3,a5,0x32
   20568:	0016f693          	andi	a3,a3,1
   2056c:	0016b693          	seqz	a3,a3
   20570:	00469693          	slli	a3,a3,0x4
   20574:	051e9063          	bne	t4,a7,205b4 <__subtf3+0x3c8>
   20578:	00c768b3          	or	a7,a4,a2
   2057c:	02088063          	beqz	a7,2059c <__subtf3+0x3b0>
   20580:	03275893          	srli	a7,a4,0x32
   20584:	0018f893          	andi	a7,a7,1
   20588:	00089a63          	bnez	a7,2059c <__subtf3+0x3b0>
   2058c:	01000693          	li	a3,16
   20590:	00c0006f          	j	2059c <__subtf3+0x3b0>
   20594:	00000693          	li	a3,0
   20598:	ffee80e3          	beq	t4,t5,20578 <__subtf3+0x38c>
   2059c:	00059c63          	bnez	a1,205b4 <__subtf3+0x3c8>
   205a0:	00070793          	mv	a5,a4
   205a4:	00060513          	mv	a0,a2
   205a8:	000085b7          	lui	a1,0x8
   205ac:	fff58593          	addi	a1,a1,-1 # 7fff <register_fini-0x80b1>
   205b0:	f91ff06f          	j	20540 <__subtf3+0x354>
   205b4:	00c76633          	or	a2,a4,a2
   205b8:	fe0608e3          	beqz	a2,205a8 <__subtf3+0x3bc>
   205bc:	00100793          	li	a5,1
   205c0:	000085b7          	lui	a1,0x8
   205c4:	00000493          	li	s1,0
   205c8:	03279793          	slli	a5,a5,0x32
   205cc:	00000513          	li	a0,0
   205d0:	fff58593          	addi	a1,a1,-1 # 7fff <register_fini-0x80b1>
   205d4:	0337d713          	srli	a4,a5,0x33
   205d8:	00177713          	andi	a4,a4,1
   205dc:	02070263          	beqz	a4,20600 <__subtf3+0x414>
   205e0:	00008737          	lui	a4,0x8
   205e4:	00158593          	addi	a1,a1,1
   205e8:	fff70613          	addi	a2,a4,-1 # 7fff <register_fini-0x80b1>
   205ec:	6ac58863          	beq	a1,a2,20c9c <__subtf3+0xab0>
   205f0:	fff00713          	li	a4,-1
   205f4:	03371713          	slli	a4,a4,0x33
   205f8:	fff70713          	addi	a4,a4,-1
   205fc:	00e7f7b3          	and	a5,a5,a4
   20600:	00355713          	srli	a4,a0,0x3
   20604:	03d79513          	slli	a0,a5,0x3d
   20608:	00e56533          	or	a0,a0,a4
   2060c:	00008737          	lui	a4,0x8
   20610:	fff70713          	addi	a4,a4,-1 # 7fff <register_fini-0x80b1>
   20614:	0037d793          	srli	a5,a5,0x3
   20618:	02e59063          	bne	a1,a4,20638 <__subtf3+0x44c>
   2061c:	00f56533          	or	a0,a0,a5
   20620:	00000793          	li	a5,0
   20624:	00050a63          	beqz	a0,20638 <__subtf3+0x44c>
   20628:	00100793          	li	a5,1
   2062c:	02f79793          	slli	a5,a5,0x2f
   20630:	00000513          	li	a0,0
   20634:	00000493          	li	s1,0
   20638:	03159593          	slli	a1,a1,0x31
   2063c:	00f4949b          	slliw	s1,s1,0xf
   20640:	0315d593          	srli	a1,a1,0x31
   20644:	0095e5b3          	or	a1,a1,s1
   20648:	01079793          	slli	a5,a5,0x10
   2064c:	03059493          	slli	s1,a1,0x30
   20650:	0107d593          	srli	a1,a5,0x10
   20654:	0095e5b3          	or	a1,a1,s1
   20658:	00068463          	beqz	a3,20660 <__subtf3+0x474>
   2065c:	0016a073          	csrs	fflags,a3
   20660:	02813083          	ld	ra,40(sp)
   20664:	02013403          	ld	s0,32(sp)
   20668:	01813483          	ld	s1,24(sp)
   2066c:	01013903          	ld	s2,16(sp)
   20670:	00813983          	ld	s3,8(sp)
   20674:	00013a03          	ld	s4,0(sp)
   20678:	03010113          	addi	sp,sp,48
   2067c:	00008067          	ret
   20680:	03e58663          	beq	a1,t5,206ac <__subtf3+0x4c0>
   20684:	00c50633          	add	a2,a0,a2
   20688:	00a63533          	sltu	a0,a2,a0
   2068c:	00e787b3          	add	a5,a5,a4
   20690:	00a787b3          	add	a5,a5,a0
   20694:	03f79513          	slli	a0,a5,0x3f
   20698:	00165613          	srli	a2,a2,0x1
   2069c:	00c56533          	or	a0,a0,a2
   206a0:	0017d793          	srli	a5,a5,0x1
   206a4:	00000693          	li	a3,0
   206a8:	e99ff06f          	j	20540 <__subtf3+0x354>
   206ac:	00040863          	beqz	s0,206bc <__subtf3+0x4d0>
   206b0:	00300793          	li	a5,3
   206b4:	00f41c63          	bne	s0,a5,206cc <__subtf3+0x4e0>
   206b8:	02049063          	bnez	s1,206d8 <__subtf3+0x4ec>
   206bc:	00000793          	li	a5,0
   206c0:	00000513          	li	a0,0
   206c4:	00500693          	li	a3,5
   206c8:	f0dff06f          	j	205d4 <__subtf3+0x3e8>
   206cc:	00200793          	li	a5,2
   206d0:	00f41463          	bne	s0,a5,206d8 <__subtf3+0x4ec>
   206d4:	fe0494e3          	bnez	s1,206bc <__subtf3+0x4d0>
   206d8:	fff00793          	li	a5,-1
   206dc:	fff00513          	li	a0,-1
   206e0:	00068593          	mv	a1,a3
   206e4:	00500693          	li	a3,5
   206e8:	00200713          	li	a4,2
   206ec:	0016e693          	ori	a3,a3,1
   206f0:	5ae40063          	beq	s0,a4,20c90 <__subtf3+0xaa4>
   206f4:	00300713          	li	a4,3
   206f8:	58e40663          	beq	s0,a4,20c84 <__subtf3+0xa98>
   206fc:	58041c63          	bnez	s0,20c94 <__subtf3+0xaa8>
   20700:	00f57713          	andi	a4,a0,15
   20704:	00400613          	li	a2,4
   20708:	58c70663          	beq	a4,a2,20c94 <__subtf3+0xaa8>
   2070c:	00450713          	addi	a4,a0,4
   20710:	00a73533          	sltu	a0,a4,a0
   20714:	00a787b3          	add	a5,a5,a0
   20718:	00070513          	mv	a0,a4
   2071c:	5780006f          	j	20c94 <__subtf3+0xaa8>
   20720:	f8040ee3          	beqz	s0,206bc <__subtf3+0x4d0>
   20724:	00300793          	li	a5,3
   20728:	00f41e63          	bne	s0,a5,20744 <__subtf3+0x558>
   2072c:	f80488e3          	beqz	s1,206bc <__subtf3+0x4d0>
   20730:	fff00793          	li	a5,-1
   20734:	fff00513          	li	a0,-1
   20738:	ffe68593          	addi	a1,a3,-2
   2073c:	00000813          	li	a6,0
   20740:	fa5ff06f          	j	206e4 <__subtf3+0x4f8>
   20744:	00200793          	li	a5,2
   20748:	fef414e3          	bne	s0,a5,20730 <__subtf3+0x544>
   2074c:	f60498e3          	bnez	s1,206bc <__subtf3+0x4d0>
   20750:	fe1ff06f          	j	20730 <__subtf3+0x544>
   20754:	0f005063          	blez	a6,20834 <__subtf3+0x648>
   20758:	080e9463          	bnez	t4,207e0 <__subtf3+0x5f4>
   2075c:	00c765b3          	or	a1,a4,a2
   20760:	b2058ee3          	beqz	a1,2029c <__subtf3+0xb0>
   20764:	fff6881b          	addiw	a6,a3,-1
   20768:	02081e63          	bnez	a6,207a4 <__subtf3+0x5b8>
   2076c:	40c50633          	sub	a2,a0,a2
   20770:	00c53533          	sltu	a0,a0,a2
   20774:	40e78733          	sub	a4,a5,a4
   20778:	40a70733          	sub	a4,a4,a0
   2077c:	00088593          	mv	a1,a7
   20780:	00060513          	mv	a0,a2
   20784:	03375793          	srli	a5,a4,0x33
   20788:	0017f793          	andi	a5,a5,1
   2078c:	40078e63          	beqz	a5,20ba8 <__subtf3+0x9bc>
   20790:	00d71713          	slli	a4,a4,0xd
   20794:	00d75913          	srli	s2,a4,0xd
   20798:	00050a13          	mv	s4,a0
   2079c:	00058993          	mv	s3,a1
   207a0:	3240006f          	j	20ac4 <__subtf3+0x8d8>
   207a4:	b7e88ce3          	beq	a7,t5,2031c <__subtf3+0x130>
   207a8:	07400693          	li	a3,116
   207ac:	0706ce63          	blt	a3,a6,20828 <__subtf3+0x63c>
   207b0:	03f00693          	li	a3,63
   207b4:	0506c063          	blt	a3,a6,207f4 <__subtf3+0x608>
   207b8:	04000593          	li	a1,64
   207bc:	410585bb          	subw	a1,a1,a6
   207c0:	00b716b3          	sll	a3,a4,a1
   207c4:	01065333          	srl	t1,a2,a6
   207c8:	00b61633          	sll	a2,a2,a1
   207cc:	0066e6b3          	or	a3,a3,t1
   207d0:	00c03633          	snez	a2,a2
   207d4:	00c6e633          	or	a2,a3,a2
   207d8:	01075733          	srl	a4,a4,a6
   207dc:	f91ff06f          	j	2076c <__subtf3+0x580>
   207e0:	b3e88ee3          	beq	a7,t5,2031c <__subtf3+0x130>
   207e4:	00100693          	li	a3,1
   207e8:	03369693          	slli	a3,a3,0x33
   207ec:	00d76733          	or	a4,a4,a3
   207f0:	fb9ff06f          	j	207a8 <__subtf3+0x5bc>
   207f4:	fc08069b          	addiw	a3,a6,-64
   207f8:	04000313          	li	t1,64
   207fc:	00d756b3          	srl	a3,a4,a3
   20800:	00000593          	li	a1,0
   20804:	00680863          	beq	a6,t1,20814 <__subtf3+0x628>
   20808:	08000593          	li	a1,128
   2080c:	410585bb          	subw	a1,a1,a6
   20810:	00b715b3          	sll	a1,a4,a1
   20814:	00c5e633          	or	a2,a1,a2
   20818:	00c03633          	snez	a2,a2
   2081c:	00c6e633          	or	a2,a3,a2
   20820:	00000713          	li	a4,0
   20824:	f49ff06f          	j	2076c <__subtf3+0x580>
   20828:	00c76633          	or	a2,a4,a2
   2082c:	00c03633          	snez	a2,a2
   20830:	ff1ff06f          	j	20820 <__subtf3+0x634>
   20834:	12080063          	beqz	a6,20954 <__subtf3+0x768>
   20838:	08089063          	bnez	a7,208b8 <__subtf3+0x6cc>
   2083c:	00a7e833          	or	a6,a5,a0
   20840:	02081663          	bnez	a6,2086c <__subtf3+0x680>
   20844:	37ee9863          	bne	t4,t5,20bb4 <__subtf3+0x9c8>
   20848:	00c76533          	or	a0,a4,a2
   2084c:	3e050663          	beqz	a0,20c38 <__subtf3+0xa4c>
   20850:	03275793          	srli	a5,a4,0x32
   20854:	0017f793          	andi	a5,a5,1
   20858:	3e079663          	bnez	a5,20c44 <__subtf3+0xa58>
   2085c:	00070793          	mv	a5,a4
   20860:	00060513          	mv	a0,a2
   20864:	00030493          	mv	s1,t1
   20868:	b91ff06f          	j	203f8 <__subtf3+0x20c>
   2086c:	fff6c693          	not	a3,a3
   20870:	0006869b          	sext.w	a3,a3
   20874:	00069e63          	bnez	a3,20890 <__subtf3+0x6a4>
   20878:	40a60533          	sub	a0,a2,a0
   2087c:	40f70733          	sub	a4,a4,a5
   20880:	00a63633          	sltu	a2,a2,a0
   20884:	40c70733          	sub	a4,a4,a2
   20888:	00030493          	mv	s1,t1
   2088c:	ef9ff06f          	j	20784 <__subtf3+0x598>
   20890:	03ee9e63          	bne	t4,t5,208cc <__subtf3+0x6e0>
   20894:	00c76533          	or	a0,a4,a2
   20898:	3a050063          	beqz	a0,20c38 <__subtf3+0xa4c>
   2089c:	03275793          	srli	a5,a4,0x32
   208a0:	0017f793          	andi	a5,a5,1
   208a4:	3a079063          	bnez	a5,20c44 <__subtf3+0xa58>
   208a8:	00070793          	mv	a5,a4
   208ac:	00060513          	mv	a0,a2
   208b0:	00030493          	mv	s1,t1
   208b4:	b8dff06f          	j	20440 <__subtf3+0x254>
   208b8:	fdee8ee3          	beq	t4,t5,20894 <__subtf3+0x6a8>
   208bc:	00100813          	li	a6,1
   208c0:	03381813          	slli	a6,a6,0x33
   208c4:	40d006bb          	negw	a3,a3
   208c8:	0107e7b3          	or	a5,a5,a6
   208cc:	07400813          	li	a6,116
   208d0:	06d84c63          	blt	a6,a3,20948 <__subtf3+0x75c>
   208d4:	03f00813          	li	a6,63
   208d8:	02d84e63          	blt	a6,a3,20914 <__subtf3+0x728>
   208dc:	04000893          	li	a7,64
   208e0:	40d888bb          	subw	a7,a7,a3
   208e4:	01179833          	sll	a6,a5,a7
   208e8:	00d55e33          	srl	t3,a0,a3
   208ec:	01151533          	sll	a0,a0,a7
   208f0:	01c86833          	or	a6,a6,t3
   208f4:	00a03533          	snez	a0,a0
   208f8:	00a86533          	or	a0,a6,a0
   208fc:	00d7d7b3          	srl	a5,a5,a3
   20900:	40a60533          	sub	a0,a2,a0
   20904:	40f707b3          	sub	a5,a4,a5
   20908:	00a63633          	sltu	a2,a2,a0
   2090c:	40c78733          	sub	a4,a5,a2
   20910:	f79ff06f          	j	20888 <__subtf3+0x69c>
   20914:	fc06881b          	addiw	a6,a3,-64
   20918:	04000e13          	li	t3,64
   2091c:	0107d833          	srl	a6,a5,a6
   20920:	00000893          	li	a7,0
   20924:	01c68863          	beq	a3,t3,20934 <__subtf3+0x748>
   20928:	08000893          	li	a7,128
   2092c:	40d886bb          	subw	a3,a7,a3
   20930:	00d798b3          	sll	a7,a5,a3
   20934:	00a8e533          	or	a0,a7,a0
   20938:	00a03533          	snez	a0,a0
   2093c:	00a86533          	or	a0,a6,a0
   20940:	00000793          	li	a5,0
   20944:	fbdff06f          	j	20900 <__subtf3+0x714>
   20948:	00a7e533          	or	a0,a5,a0
   2094c:	00a03533          	snez	a0,a0
   20950:	ff1ff06f          	j	20940 <__subtf3+0x754>
   20954:	00188593          	addi	a1,a7,1
   20958:	ffee0693          	addi	a3,t3,-2
   2095c:	00d5f6b3          	and	a3,a1,a3
   20960:	12069a63          	bnez	a3,20a94 <__subtf3+0x8a8>
   20964:	00a7ee33          	or	t3,a5,a0
   20968:	00c765b3          	or	a1,a4,a2
   2096c:	0c089663          	bnez	a7,20a38 <__subtf3+0x84c>
   20970:	060e1c63          	bnez	t3,209e8 <__subtf3+0x7fc>
   20974:	24059c63          	bnez	a1,20bcc <__subtf3+0x9e0>
   20978:	ffe40493          	addi	s1,s0,-2
   2097c:	0014b493          	seqz	s1,s1
   20980:	00000793          	li	a5,0
   20984:	00000513          	li	a0,0
   20988:	00f56733          	or	a4,a0,a5
   2098c:	2e070463          	beqz	a4,20c74 <__subtf3+0xa88>
   20990:	03f55713          	srli	a4,a0,0x3f
   20994:	00179813          	slli	a6,a5,0x1
   20998:	00e80833          	add	a6,a6,a4
   2099c:	00151713          	slli	a4,a0,0x1
   209a0:	00777613          	andi	a2,a4,7
   209a4:	00000693          	li	a3,0
   209a8:	02060663          	beqz	a2,209d4 <__subtf3+0x7e8>
   209ac:	00200693          	li	a3,2
   209b0:	24d40a63          	beq	s0,a3,20c04 <__subtf3+0xa18>
   209b4:	00300693          	li	a3,3
   209b8:	22d40663          	beq	s0,a3,20be4 <__subtf3+0x9f8>
   209bc:	00100693          	li	a3,1
   209c0:	00041a63          	bnez	s0,209d4 <__subtf3+0x7e8>
   209c4:	00f77613          	andi	a2,a4,15
   209c8:	00400593          	li	a1,4
   209cc:	ffc73713          	sltiu	a4,a4,-4
   209d0:	22b61063          	bne	a2,a1,20bf0 <__subtf3+0xa04>
   209d4:	03485813          	srli	a6,a6,0x34
   209d8:	00184813          	xori	a6,a6,1
   209dc:	00187813          	andi	a6,a6,1
   209e0:	00000593          	li	a1,0
   209e4:	b5dff06f          	j	20540 <__subtf3+0x354>
   209e8:	fa0580e3          	beqz	a1,20988 <__subtf3+0x79c>
   209ec:	40c505b3          	sub	a1,a0,a2
   209f0:	00b53833          	sltu	a6,a0,a1
   209f4:	40e786b3          	sub	a3,a5,a4
   209f8:	410686b3          	sub	a3,a3,a6
   209fc:	0336d813          	srli	a6,a3,0x33
   20a00:	00187813          	andi	a6,a6,1
   20a04:	00080e63          	beqz	a6,20a20 <__subtf3+0x834>
   20a08:	40a60533          	sub	a0,a2,a0
   20a0c:	40f707b3          	sub	a5,a4,a5
   20a10:	00a63633          	sltu	a2,a2,a0
   20a14:	40c787b3          	sub	a5,a5,a2
   20a18:	00030493          	mv	s1,t1
   20a1c:	f6dff06f          	j	20988 <__subtf3+0x79c>
   20a20:	00d5e533          	or	a0,a1,a3
   20a24:	1a051a63          	bnez	a0,20bd8 <__subtf3+0x9ec>
   20a28:	ffe40493          	addi	s1,s0,-2
   20a2c:	0014b493          	seqz	s1,s1
   20a30:	00000793          	li	a5,0
   20a34:	f55ff06f          	j	20988 <__subtf3+0x79c>
   20a38:	03e89a63          	bne	a7,t5,20a6c <__subtf3+0x880>
   20a3c:	280e0c63          	beqz	t3,20cd4 <__subtf3+0xae8>
   20a40:	0327d693          	srli	a3,a5,0x32
   20a44:	0016f693          	andi	a3,a3,1
   20a48:	0016b693          	seqz	a3,a3
   20a4c:	00469693          	slli	a3,a3,0x4
   20a50:	031e9e63          	bne	t4,a7,20a8c <__subtf3+0x8a0>
   20a54:	02058063          	beqz	a1,20a74 <__subtf3+0x888>
   20a58:	03275893          	srli	a7,a4,0x32
   20a5c:	0018f893          	andi	a7,a7,1
   20a60:	00089a63          	bnez	a7,20a74 <__subtf3+0x888>
   20a64:	01000693          	li	a3,16
   20a68:	00c0006f          	j	20a74 <__subtf3+0x888>
   20a6c:	00000693          	li	a3,0
   20a70:	ffee82e3          	beq	t4,t5,20a54 <__subtf3+0x868>
   20a74:	000e1c63          	bnez	t3,20a8c <__subtf3+0x8a0>
   20a78:	1c058e63          	beqz	a1,20c54 <__subtf3+0xa68>
   20a7c:	00070793          	mv	a5,a4
   20a80:	00060513          	mv	a0,a2
   20a84:	00030493          	mv	s1,t1
   20a88:	b21ff06f          	j	205a8 <__subtf3+0x3bc>
   20a8c:	b0058ee3          	beqz	a1,205a8 <__subtf3+0x3bc>
   20a90:	b2dff06f          	j	205bc <__subtf3+0x3d0>
   20a94:	40c50a33          	sub	s4,a0,a2
   20a98:	014536b3          	sltu	a3,a0,s4
   20a9c:	40e78933          	sub	s2,a5,a4
   20aa0:	40d90933          	sub	s2,s2,a3
   20aa4:	03395693          	srli	a3,s2,0x33
   20aa8:	0016f693          	andi	a3,a3,1
   20aac:	08068663          	beqz	a3,20b38 <__subtf3+0x94c>
   20ab0:	40a60a33          	sub	s4,a2,a0
   20ab4:	40f70733          	sub	a4,a4,a5
   20ab8:	01463633          	sltu	a2,a2,s4
   20abc:	40c70933          	sub	s2,a4,a2
   20ac0:	00030493          	mv	s1,t1
   20ac4:	08090063          	beqz	s2,20b44 <__subtf3+0x958>
   20ac8:	00090513          	mv	a0,s2
   20acc:	798000ef          	jal	ra,21264 <__clzdi2>
   20ad0:	0005051b          	sext.w	a0,a0
   20ad4:	ff45059b          	addiw	a1,a0,-12
   20ad8:	03f00793          	li	a5,63
   20adc:	00058693          	mv	a3,a1
   20ae0:	06b7ca63          	blt	a5,a1,20b54 <__subtf3+0x968>
   20ae4:	04000713          	li	a4,64
   20ae8:	40b7073b          	subw	a4,a4,a1
   20aec:	00b91933          	sll	s2,s2,a1
   20af0:	00ea5733          	srl	a4,s4,a4
   20af4:	01276733          	or	a4,a4,s2
   20af8:	00ba1533          	sll	a0,s4,a1
   20afc:	0935cc63          	blt	a1,s3,20b94 <__subtf3+0x9a8>
   20b00:	413686bb          	subw	a3,a3,s3
   20b04:	0016879b          	addiw	a5,a3,1
   20b08:	03f00613          	li	a2,63
   20b0c:	04f64c63          	blt	a2,a5,20b64 <__subtf3+0x978>
   20b10:	04000693          	li	a3,64
   20b14:	40f686bb          	subw	a3,a3,a5
   20b18:	00f555b3          	srl	a1,a0,a5
   20b1c:	00d71633          	sll	a2,a4,a3
   20b20:	00d51533          	sll	a0,a0,a3
   20b24:	00b66633          	or	a2,a2,a1
   20b28:	00a03533          	snez	a0,a0
   20b2c:	00a66533          	or	a0,a2,a0
   20b30:	00f757b3          	srl	a5,a4,a5
   20b34:	e55ff06f          	j	20988 <__subtf3+0x79c>
   20b38:	012a6533          	or	a0,s4,s2
   20b3c:	f80514e3          	bnez	a0,20ac4 <__subtf3+0x8d8>
   20b40:	ee9ff06f          	j	20a28 <__subtf3+0x83c>
   20b44:	000a0513          	mv	a0,s4
   20b48:	71c000ef          	jal	ra,21264 <__clzdi2>
   20b4c:	0405051b          	addiw	a0,a0,64
   20b50:	f85ff06f          	j	20ad4 <__subtf3+0x8e8>
   20b54:	fb45071b          	addiw	a4,a0,-76
   20b58:	00ea1733          	sll	a4,s4,a4
   20b5c:	00000513          	li	a0,0
   20b60:	f9dff06f          	j	20afc <__subtf3+0x910>
   20b64:	fc16869b          	addiw	a3,a3,-63
   20b68:	04000813          	li	a6,64
   20b6c:	00d75633          	srl	a2,a4,a3
   20b70:	00000693          	li	a3,0
   20b74:	01078863          	beq	a5,a6,20b84 <__subtf3+0x998>
   20b78:	08000693          	li	a3,128
   20b7c:	40f686bb          	subw	a3,a3,a5
   20b80:	00d716b3          	sll	a3,a4,a3
   20b84:	00d56533          	or	a0,a0,a3
   20b88:	00a03533          	snez	a0,a0
   20b8c:	00a66533          	or	a0,a2,a0
   20b90:	ea1ff06f          	j	20a30 <__subtf3+0x844>
   20b94:	fff00793          	li	a5,-1
   20b98:	03379793          	slli	a5,a5,0x33
   20b9c:	fff78793          	addi	a5,a5,-1
   20ba0:	40b985b3          	sub	a1,s3,a1
   20ba4:	00f77733          	and	a4,a4,a5
   20ba8:	00070793          	mv	a5,a4
   20bac:	dc058ee3          	beqz	a1,20988 <__subtf3+0x79c>
   20bb0:	f60ff06f          	j	20310 <__subtf3+0x124>
   20bb4:	00060513          	mv	a0,a2
   20bb8:	00030493          	mv	s1,t1
   20bbc:	fedff06f          	j	20ba8 <__subtf3+0x9bc>
   20bc0:	00070793          	mv	a5,a4
   20bc4:	00060513          	mv	a0,a2
   20bc8:	dc1ff06f          	j	20988 <__subtf3+0x79c>
   20bcc:	00070793          	mv	a5,a4
   20bd0:	00060513          	mv	a0,a2
   20bd4:	e45ff06f          	j	20a18 <__subtf3+0x82c>
   20bd8:	00068793          	mv	a5,a3
   20bdc:	00058513          	mv	a0,a1
   20be0:	da9ff06f          	j	20988 <__subtf3+0x79c>
   20be4:	00100693          	li	a3,1
   20be8:	de0496e3          	bnez	s1,209d4 <__subtf3+0x7e8>
   20bec:	ff873713          	sltiu	a4,a4,-8
   20bf0:	00174713          	xori	a4,a4,1
   20bf4:	02071713          	slli	a4,a4,0x20
   20bf8:	02075713          	srli	a4,a4,0x20
   20bfc:	00e80833          	add	a6,a6,a4
   20c00:	dd5ff06f          	j	209d4 <__subtf3+0x7e8>
   20c04:	00100693          	li	a3,1
   20c08:	dc0486e3          	beqz	s1,209d4 <__subtf3+0x7e8>
   20c0c:	fe1ff06f          	j	20bec <__subtf3+0xa00>
   20c10:	00000793          	li	a5,0
   20c14:	00000693          	li	a3,0
   20c18:	9bdff06f          	j	205d4 <__subtf3+0x3e8>
   20c1c:	00070793          	mv	a5,a4
   20c20:	00060513          	mv	a0,a2
   20c24:	eecff06f          	j	20310 <__subtf3+0x124>
   20c28:	00000793          	li	a5,0
   20c2c:	00000513          	li	a0,0
   20c30:	00088593          	mv	a1,a7
   20c34:	fe1ff06f          	j	20c14 <__subtf3+0xa28>
   20c38:	00000793          	li	a5,0
   20c3c:	00030493          	mv	s1,t1
   20c40:	fd5ff06f          	j	20c14 <__subtf3+0xa28>
   20c44:	00070793          	mv	a5,a4
   20c48:	00060513          	mv	a0,a2
   20c4c:	00030493          	mv	s1,t1
   20c50:	ec0ff06f          	j	20310 <__subtf3+0x124>
   20c54:	00100793          	li	a5,1
   20c58:	000085b7          	lui	a1,0x8
   20c5c:	00000513          	li	a0,0
   20c60:	00000493          	li	s1,0
   20c64:	03279793          	slli	a5,a5,0x32
   20c68:	fff58593          	addi	a1,a1,-1 # 7fff <register_fini-0x80b1>
   20c6c:	01000693          	li	a3,16
   20c70:	965ff06f          	j	205d4 <__subtf3+0x3e8>
   20c74:	00000793          	li	a5,0
   20c78:	00000513          	li	a0,0
   20c7c:	00000593          	li	a1,0
   20c80:	f95ff06f          	j	20c14 <__subtf3+0xa28>
   20c84:	00049863          	bnez	s1,20c94 <__subtf3+0xaa8>
   20c88:	00850713          	addi	a4,a0,8
   20c8c:	a85ff06f          	j	20710 <__subtf3+0x524>
   20c90:	fe049ce3          	bnez	s1,20c88 <__subtf3+0xa9c>
   20c94:	8c0810e3          	bnez	a6,20554 <__subtf3+0x368>
   20c98:	93dff06f          	j	205d4 <__subtf3+0x3e8>
   20c9c:	00000513          	li	a0,0
   20ca0:	02040463          	beqz	s0,20cc8 <__subtf3+0xadc>
   20ca4:	00300793          	li	a5,3
   20ca8:	00f41a63          	bne	s0,a5,20cbc <__subtf3+0xad0>
   20cac:	00048e63          	beqz	s1,20cc8 <__subtf3+0xadc>
   20cb0:	fff00513          	li	a0,-1
   20cb4:	ffe70593          	addi	a1,a4,-2
   20cb8:	0100006f          	j	20cc8 <__subtf3+0xadc>
   20cbc:	00200793          	li	a5,2
   20cc0:	fef418e3          	bne	s0,a5,20cb0 <__subtf3+0xac4>
   20cc4:	fe0486e3          	beqz	s1,20cb0 <__subtf3+0xac4>
   20cc8:	0056e693          	ori	a3,a3,5
   20ccc:	00050793          	mv	a5,a0
   20cd0:	931ff06f          	j	20600 <__subtf3+0x414>
   20cd4:	00000693          	li	a3,0
   20cd8:	db1e90e3          	bne	t4,a7,20a78 <__subtf3+0x88c>
   20cdc:	d79ff06f          	j	20a54 <__subtf3+0x868>
   20ce0:	00000693          	li	a3,0
   20ce4:	8b1e9ee3          	bne	t4,a7,205a0 <__subtf3+0x3b4>
   20ce8:	891ff06f          	j	20578 <__subtf3+0x38c>

0000000000020cec <__fixtfsi>:
   20cec:	00050613          	mv	a2,a0
   20cf0:	002027f3          	frrm	a5
   20cf4:	00004837          	lui	a6,0x4
   20cf8:	00159693          	slli	a3,a1,0x1
   20cfc:	01059793          	slli	a5,a1,0x10
   20d00:	0316d693          	srli	a3,a3,0x31
   20d04:	ffe80713          	addi	a4,a6,-2 # 3ffe <register_fini-0xc0b2>
   20d08:	0107d793          	srli	a5,a5,0x10
   20d0c:	03f5d593          	srli	a1,a1,0x3f
   20d10:	00d74c63          	blt	a4,a3,20d28 <__fixtfsi+0x3c>
   20d14:	08069c63          	bnez	a3,20dac <__fixtfsi+0xc0>
   20d18:	00f567b3          	or	a5,a0,a5
   20d1c:	00000513          	li	a0,0
   20d20:	04079063          	bnez	a5,20d60 <__fixtfsi+0x74>
   20d24:	00008067          	ret
   20d28:	01d80713          	addi	a4,a6,29
   20d2c:	02d75e63          	bge	a4,a3,20d68 <__fixtfsi+0x7c>
   20d30:	80000737          	lui	a4,0x80000
   20d34:	fff74713          	not	a4,a4
   20d38:	00b7053b          	addw	a0,a4,a1
   20d3c:	06058c63          	beqz	a1,20db4 <__fixtfsi+0xc8>
   20d40:	01e80813          	addi	a6,a6,30
   20d44:	01000713          	li	a4,16
   20d48:	07069863          	bne	a3,a6,20db8 <__fixtfsi+0xcc>
   20d4c:	0117d693          	srli	a3,a5,0x11
   20d50:	06069463          	bnez	a3,20db8 <__fixtfsi+0xcc>
   20d54:	02f79793          	slli	a5,a5,0x2f
   20d58:	00c7e7b3          	or	a5,a5,a2
   20d5c:	04078663          	beqz	a5,20da8 <__fixtfsi+0xbc>
   20d60:	00100713          	li	a4,1
   20d64:	0540006f          	j	20db8 <__fixtfsi+0xcc>
   20d68:	00100513          	li	a0,1
   20d6c:	03051513          	slli	a0,a0,0x30
   20d70:	00a7e7b3          	or	a5,a5,a0
   20d74:	ffffc737          	lui	a4,0xffffc
   20d78:	00004537          	lui	a0,0x4
   20d7c:	02f5051b          	addiw	a0,a0,47
   20d80:	0117071b          	addiw	a4,a4,17
   20d84:	00d7073b          	addw	a4,a4,a3
   20d88:	40d506bb          	subw	a3,a0,a3
   20d8c:	00e79733          	sll	a4,a5,a4
   20d90:	00d7d7b3          	srl	a5,a5,a3
   20d94:	00c76733          	or	a4,a4,a2
   20d98:	0007851b          	sext.w	a0,a5
   20d9c:	00058463          	beqz	a1,20da4 <__fixtfsi+0xb8>
   20da0:	40a0053b          	negw	a0,a0
   20da4:	fa071ee3          	bnez	a4,20d60 <__fixtfsi+0x74>
   20da8:	00008067          	ret
   20dac:	00000513          	li	a0,0
   20db0:	fb1ff06f          	j	20d60 <__fixtfsi+0x74>
   20db4:	01000713          	li	a4,16
   20db8:	00172073          	csrs	fflags,a4
   20dbc:	fedff06f          	j	20da8 <__fixtfsi+0xbc>

0000000000020dc0 <__floatsitf>:
   20dc0:	fe010113          	addi	sp,sp,-32
   20dc4:	00113c23          	sd	ra,24(sp)
   20dc8:	00813823          	sd	s0,16(sp)
   20dcc:	00913423          	sd	s1,8(sp)
   20dd0:	06050463          	beqz	a0,20e38 <__floatsitf+0x78>
   20dd4:	0005079b          	sext.w	a5,a0
   20dd8:	03f55493          	srli	s1,a0,0x3f
   20ddc:	00055463          	bgez	a0,20de4 <__floatsitf+0x24>
   20de0:	40f007bb          	negw	a5,a5
   20de4:	02079413          	slli	s0,a5,0x20
   20de8:	02045413          	srli	s0,s0,0x20
   20dec:	00040513          	mv	a0,s0
   20df0:	474000ef          	jal	ra,21264 <__clzdi2>
   20df4:	000045b7          	lui	a1,0x4
   20df8:	03e5859b          	addiw	a1,a1,62
   20dfc:	ff15079b          	addiw	a5,a0,-15
   20e00:	40a585bb          	subw	a1,a1,a0
   20e04:	00f417b3          	sll	a5,s0,a5
   20e08:	01813083          	ld	ra,24(sp)
   20e0c:	01013403          	ld	s0,16(sp)
   20e10:	00f4949b          	slliw	s1,s1,0xf
   20e14:	0095e5b3          	or	a1,a1,s1
   20e18:	01079793          	slli	a5,a5,0x10
   20e1c:	03059593          	slli	a1,a1,0x30
   20e20:	0107d793          	srli	a5,a5,0x10
   20e24:	00813483          	ld	s1,8(sp)
   20e28:	00000513          	li	a0,0
   20e2c:	00b7e5b3          	or	a1,a5,a1
   20e30:	02010113          	addi	sp,sp,32
   20e34:	00008067          	ret
   20e38:	00000793          	li	a5,0
   20e3c:	00000593          	li	a1,0
   20e40:	00000493          	li	s1,0
   20e44:	fc5ff06f          	j	20e08 <__floatsitf+0x48>

0000000000020e48 <__extenddftf2>:
   20e48:	fe010113          	addi	sp,sp,-32
   20e4c:	e20507d3          	fmv.x.d	a5,fa0
   20e50:	00113c23          	sd	ra,24(sp)
   20e54:	00813823          	sd	s0,16(sp)
   20e58:	00913423          	sd	s1,8(sp)
   20e5c:	00202773          	frrm	a4
   20e60:	0347d513          	srli	a0,a5,0x34
   20e64:	7ff57513          	andi	a0,a0,2047
   20e68:	00c79413          	slli	s0,a5,0xc
   20e6c:	03f7d493          	srli	s1,a5,0x3f
   20e70:	00150793          	addi	a5,a0,1 # 4001 <register_fini-0xc0af>
   20e74:	7fe7f793          	andi	a5,a5,2046
   20e78:	00c45413          	srli	s0,s0,0xc
   20e7c:	02078063          	beqz	a5,20e9c <__extenddftf2+0x54>
   20e80:	000047b7          	lui	a5,0x4
   20e84:	c0078793          	addi	a5,a5,-1024 # 3c00 <register_fini-0xc4b0>
   20e88:	00445593          	srli	a1,s0,0x4
   20e8c:	00f50533          	add	a0,a0,a5
   20e90:	03c41413          	slli	s0,s0,0x3c
   20e94:	00000793          	li	a5,0
   20e98:	0880006f          	j	20f20 <__extenddftf2+0xd8>
   20e9c:	04051a63          	bnez	a0,20ef0 <__extenddftf2+0xa8>
   20ea0:	00000593          	li	a1,0
   20ea4:	fe0408e3          	beqz	s0,20e94 <__extenddftf2+0x4c>
   20ea8:	00040513          	mv	a0,s0
   20eac:	3b8000ef          	jal	ra,21264 <__clzdi2>
   20eb0:	0005071b          	sext.w	a4,a0
   20eb4:	00e00793          	li	a5,14
   20eb8:	02e7c463          	blt	a5,a4,20ee0 <__extenddftf2+0x98>
   20ebc:	00f00593          	li	a1,15
   20ec0:	40a585bb          	subw	a1,a1,a0
   20ec4:	0315079b          	addiw	a5,a0,49
   20ec8:	00b455b3          	srl	a1,s0,a1
   20ecc:	00f41433          	sll	s0,s0,a5
   20ed0:	000047b7          	lui	a5,0x4
   20ed4:	c0c7879b          	addiw	a5,a5,-1012
   20ed8:	40a7853b          	subw	a0,a5,a0
   20edc:	fb9ff06f          	j	20e94 <__extenddftf2+0x4c>
   20ee0:	ff15059b          	addiw	a1,a0,-15
   20ee4:	00b415b3          	sll	a1,s0,a1
   20ee8:	00000413          	li	s0,0
   20eec:	fe5ff06f          	j	20ed0 <__extenddftf2+0x88>
   20ef0:	06040463          	beqz	s0,20f58 <__extenddftf2+0x110>
   20ef4:	00100713          	li	a4,1
   20ef8:	03371793          	slli	a5,a4,0x33
   20efc:	00f477b3          	and	a5,s0,a5
   20f00:	00445593          	srli	a1,s0,0x4
   20f04:	0017b793          	seqz	a5,a5
   20f08:	02f71713          	slli	a4,a4,0x2f
   20f0c:	00008537          	lui	a0,0x8
   20f10:	00479793          	slli	a5,a5,0x4
   20f14:	00e5e5b3          	or	a1,a1,a4
   20f18:	03c41413          	slli	s0,s0,0x3c
   20f1c:	fff50513          	addi	a0,a0,-1 # 7fff <register_fini-0x80b1>
   20f20:	00f4949b          	slliw	s1,s1,0xf
   20f24:	01059593          	slli	a1,a1,0x10
   20f28:	00956533          	or	a0,a0,s1
   20f2c:	03051513          	slli	a0,a0,0x30
   20f30:	0105d593          	srli	a1,a1,0x10
   20f34:	00a5e5b3          	or	a1,a1,a0
   20f38:	00078463          	beqz	a5,20f40 <__extenddftf2+0xf8>
   20f3c:	0017a073          	csrs	fflags,a5
   20f40:	01813083          	ld	ra,24(sp)
   20f44:	00040513          	mv	a0,s0
   20f48:	01013403          	ld	s0,16(sp)
   20f4c:	00813483          	ld	s1,8(sp)
   20f50:	02010113          	addi	sp,sp,32
   20f54:	00008067          	ret
   20f58:	00008537          	lui	a0,0x8
   20f5c:	00000593          	li	a1,0
   20f60:	fff50513          	addi	a0,a0,-1 # 7fff <register_fini-0x80b1>
   20f64:	f31ff06f          	j	20e94 <__extenddftf2+0x4c>

0000000000020f68 <__trunctfdf2>:
   20f68:	00202873          	frrm	a6
   20f6c:	00008337          	lui	t1,0x8
   20f70:	0305d713          	srli	a4,a1,0x30
   20f74:	fff30e13          	addi	t3,t1,-1 # 7fff <register_fini-0x80b1>
   20f78:	01c77633          	and	a2,a4,t3
   20f7c:	03f5d693          	srli	a3,a1,0x3f
   20f80:	00160793          	addi	a5,a2,1
   20f84:	01059593          	slli	a1,a1,0x10
   20f88:	ffe30313          	addi	t1,t1,-2
   20f8c:	00d5d593          	srli	a1,a1,0xd
   20f90:	03d55713          	srli	a4,a0,0x3d
   20f94:	0067f333          	and	t1,a5,t1
   20f98:	0008081b          	sext.w	a6,a6
   20f9c:	00b76733          	or	a4,a4,a1
   20fa0:	00351e93          	slli	t4,a0,0x3
   20fa4:	1e030e63          	beqz	t1,211a0 <__trunctfdf2+0x238>
   20fa8:	ffffc7b7          	lui	a5,0xffffc
   20fac:	40078793          	addi	a5,a5,1024 # ffffffffffffc400 <__BSS_END__+0xfffffffffffd8160>
   20fb0:	00f60633          	add	a2,a2,a5
   20fb4:	7fe00793          	li	a5,2046
   20fb8:	0ec7d063          	bge	a5,a2,21098 <__trunctfdf2+0x130>
   20fbc:	06080063          	beqz	a6,2101c <__trunctfdf2+0xb4>
   20fc0:	00300793          	li	a5,3
   20fc4:	04f81663          	bne	a6,a5,21010 <__trunctfdf2+0xa8>
   20fc8:	04068a63          	beqz	a3,2101c <__trunctfdf2+0xb4>
   20fcc:	fff00793          	li	a5,-1
   20fd0:	7fe00613          	li	a2,2046
   20fd4:	00000713          	li	a4,0
   20fd8:	00500893          	li	a7,5
   20fdc:	00200593          	li	a1,2
   20fe0:	0018e893          	ori	a7,a7,1
   20fe4:	24b80263          	beq	a6,a1,21228 <__trunctfdf2+0x2c0>
   20fe8:	00300593          	li	a1,3
   20fec:	22b80863          	beq	a6,a1,2121c <__trunctfdf2+0x2b4>
   20ff0:	00081a63          	bnez	a6,21004 <__trunctfdf2+0x9c>
   20ff4:	00f7f593          	andi	a1,a5,15
   20ff8:	00400513          	li	a0,4
   20ffc:	00a58463          	beq	a1,a0,21004 <__trunctfdf2+0x9c>
   21000:	00478793          	addi	a5,a5,4
   21004:	02070263          	beqz	a4,21028 <__trunctfdf2+0xc0>
   21008:	0028e893          	ori	a7,a7,2
   2100c:	01c0006f          	j	21028 <__trunctfdf2+0xc0>
   21010:	00200793          	li	a5,2
   21014:	faf81ce3          	bne	a6,a5,20fcc <__trunctfdf2+0x64>
   21018:	fa068ae3          	beqz	a3,20fcc <__trunctfdf2+0x64>
   2101c:	00000793          	li	a5,0
   21020:	7ff00613          	li	a2,2047
   21024:	00500893          	li	a7,5
   21028:	0377d713          	srli	a4,a5,0x37
   2102c:	00177713          	andi	a4,a4,1
   21030:	02070063          	beqz	a4,21050 <__trunctfdf2+0xe8>
   21034:	00160613          	addi	a2,a2,1
   21038:	7ff00713          	li	a4,2047
   2103c:	1ee60a63          	beq	a2,a4,21230 <__trunctfdf2+0x2c8>
   21040:	fff00593          	li	a1,-1
   21044:	03759593          	slli	a1,a1,0x37
   21048:	fff58593          	addi	a1,a1,-1 # 3fff <register_fini-0xc0b1>
   2104c:	00b7f7b3          	and	a5,a5,a1
   21050:	7ff00713          	li	a4,2047
   21054:	0037d793          	srli	a5,a5,0x3
   21058:	00e61a63          	bne	a2,a4,2106c <__trunctfdf2+0x104>
   2105c:	00078863          	beqz	a5,2106c <__trunctfdf2+0x104>
   21060:	00100793          	li	a5,1
   21064:	03379793          	slli	a5,a5,0x33
   21068:	00000693          	li	a3,0
   2106c:	7ff67713          	andi	a4,a2,2047
   21070:	00c79793          	slli	a5,a5,0xc
   21074:	03471713          	slli	a4,a4,0x34
   21078:	00c7d793          	srli	a5,a5,0xc
   2107c:	00f767b3          	or	a5,a4,a5
   21080:	03f69693          	slli	a3,a3,0x3f
   21084:	00d7e7b3          	or	a5,a5,a3
   21088:	00088463          	beqz	a7,21090 <__trunctfdf2+0x128>
   2108c:	0018a073          	csrs	fflags,a7
   21090:	f2078553          	fmv.d.x	fa0,a5
   21094:	00008067          	ret
   21098:	0cc04a63          	bgtz	a2,2116c <__trunctfdf2+0x204>
   2109c:	fcc00793          	li	a5,-52
   210a0:	14f64a63          	blt	a2,a5,211f4 <__trunctfdf2+0x28c>
   210a4:	00100793          	li	a5,1
   210a8:	03379793          	slli	a5,a5,0x33
   210ac:	03d00e13          	li	t3,61
   210b0:	00f76733          	or	a4,a4,a5
   210b4:	40ce0e33          	sub	t3,t3,a2
   210b8:	03f00793          	li	a5,63
   210bc:	0006089b          	sext.w	a7,a2
   210c0:	07c7ce63          	blt	a5,t3,2113c <__trunctfdf2+0x1d4>
   210c4:	0038859b          	addiw	a1,a7,3
   210c8:	03d00613          	li	a2,61
   210cc:	4116063b          	subw	a2,a2,a7
   210d0:	00be97b3          	sll	a5,t4,a1
   210d4:	00ced633          	srl	a2,t4,a2
   210d8:	00f037b3          	snez	a5,a5
   210dc:	00f667b3          	or	a5,a2,a5
   210e0:	00b71733          	sll	a4,a4,a1
   210e4:	00f767b3          	or	a5,a4,a5
   210e8:	00000613          	li	a2,0
   210ec:	0c078063          	beqz	a5,211ac <__trunctfdf2+0x244>
   210f0:	00179713          	slli	a4,a5,0x1
   210f4:	00777613          	andi	a2,a4,7
   210f8:	00000893          	li	a7,0
   210fc:	02060663          	beqz	a2,21128 <__trunctfdf2+0x1c0>
   21100:	00200613          	li	a2,2
   21104:	10c80263          	beq	a6,a2,21208 <__trunctfdf2+0x2a0>
   21108:	00300613          	li	a2,3
   2110c:	00100893          	li	a7,1
   21110:	0ec80663          	beq	a6,a2,211fc <__trunctfdf2+0x294>
   21114:	00081a63          	bnez	a6,21128 <__trunctfdf2+0x1c0>
   21118:	00f77613          	andi	a2,a4,15
   2111c:	00400593          	li	a1,4
   21120:	00b60463          	beq	a2,a1,21128 <__trunctfdf2+0x1c0>
   21124:	00470713          	addi	a4,a4,4 # ffffffffffffc004 <__BSS_END__+0xfffffffffffd7d64>
   21128:	03875713          	srli	a4,a4,0x38
   2112c:	00174713          	xori	a4,a4,1
   21130:	00177713          	andi	a4,a4,1
   21134:	00000613          	li	a2,0
   21138:	0540006f          	j	2118c <__trunctfdf2+0x224>
   2113c:	ffd00313          	li	t1,-3
   21140:	4113033b          	subw	t1,t1,a7
   21144:	04000793          	li	a5,64
   21148:	00675333          	srl	t1,a4,t1
   2114c:	00000593          	li	a1,0
   21150:	00fe0663          	beq	t3,a5,2115c <__trunctfdf2+0x1f4>
   21154:	0438861b          	addiw	a2,a7,67
   21158:	00c715b3          	sll	a1,a4,a2
   2115c:	01d5e5b3          	or	a1,a1,t4
   21160:	00b035b3          	snez	a1,a1
   21164:	00b367b3          	or	a5,t1,a1
   21168:	f81ff06f          	j	210e8 <__trunctfdf2+0x180>
   2116c:	00751793          	slli	a5,a0,0x7
   21170:	00f037b3          	snez	a5,a5
   21174:	03ced593          	srli	a1,t4,0x3c
   21178:	00471713          	slli	a4,a4,0x4
   2117c:	00b7e7b3          	or	a5,a5,a1
   21180:	00f767b3          	or	a5,a4,a5
   21184:	00000893          	li	a7,0
   21188:	00000713          	li	a4,0
   2118c:	0077f593          	andi	a1,a5,7
   21190:	e40596e3          	bnez	a1,20fdc <__trunctfdf2+0x74>
   21194:	e8070ae3          	beqz	a4,21028 <__trunctfdf2+0xc0>
   21198:	0018f713          	andi	a4,a7,1
   2119c:	e69ff06f          	j	21004 <__trunctfdf2+0x9c>
   211a0:	01d767b3          	or	a5,a4,t4
   211a4:	00061863          	bnez	a2,211b4 <__trunctfdf2+0x24c>
   211a8:	04079663          	bnez	a5,211f4 <__trunctfdf2+0x28c>
   211ac:	00000893          	li	a7,0
   211b0:	e79ff06f          	j	21028 <__trunctfdf2+0xc0>
   211b4:	06078063          	beqz	a5,21214 <__trunctfdf2+0x2ac>
   211b8:	00000893          	li	a7,0
   211bc:	01c61863          	bne	a2,t3,211cc <__trunctfdf2+0x264>
   211c0:	03275893          	srli	a7,a4,0x32
   211c4:	0018b893          	seqz	a7,a7
   211c8:	00489893          	slli	a7,a7,0x4
   211cc:	03ced793          	srli	a5,t4,0x3c
   211d0:	00471713          	slli	a4,a4,0x4
   211d4:	00f76733          	or	a4,a4,a5
   211d8:	00100793          	li	a5,1
   211dc:	ff877713          	andi	a4,a4,-8
   211e0:	03679793          	slli	a5,a5,0x36
   211e4:	00f767b3          	or	a5,a4,a5
   211e8:	7ff00613          	li	a2,2047
   211ec:	00000713          	li	a4,0
   211f0:	f9dff06f          	j	2118c <__trunctfdf2+0x224>
   211f4:	00100793          	li	a5,1
   211f8:	ef9ff06f          	j	210f0 <__trunctfdf2+0x188>
   211fc:	f20696e3          	bnez	a3,21128 <__trunctfdf2+0x1c0>
   21200:	00870713          	addi	a4,a4,8
   21204:	f25ff06f          	j	21128 <__trunctfdf2+0x1c0>
   21208:	00100893          	li	a7,1
   2120c:	f0068ee3          	beqz	a3,21128 <__trunctfdf2+0x1c0>
   21210:	ff1ff06f          	j	21200 <__trunctfdf2+0x298>
   21214:	7ff00613          	li	a2,2047
   21218:	f95ff06f          	j	211ac <__trunctfdf2+0x244>
   2121c:	de0694e3          	bnez	a3,21004 <__trunctfdf2+0x9c>
   21220:	00878793          	addi	a5,a5,8
   21224:	de1ff06f          	j	21004 <__trunctfdf2+0x9c>
   21228:	dc068ee3          	beqz	a3,21004 <__trunctfdf2+0x9c>
   2122c:	ff5ff06f          	j	21220 <__trunctfdf2+0x2b8>
   21230:	00000793          	li	a5,0
   21234:	02080463          	beqz	a6,2125c <__trunctfdf2+0x2f4>
   21238:	00300713          	li	a4,3
   2123c:	00e81a63          	bne	a6,a4,21250 <__trunctfdf2+0x2e8>
   21240:	00068e63          	beqz	a3,2125c <__trunctfdf2+0x2f4>
   21244:	fff00793          	li	a5,-1
   21248:	7fe00613          	li	a2,2046
   2124c:	0100006f          	j	2125c <__trunctfdf2+0x2f4>
   21250:	00200713          	li	a4,2
   21254:	fee818e3          	bne	a6,a4,21244 <__trunctfdf2+0x2dc>
   21258:	fe0686e3          	beqz	a3,21244 <__trunctfdf2+0x2dc>
   2125c:	0058e893          	ori	a7,a7,5
   21260:	df1ff06f          	j	21050 <__trunctfdf2+0xe8>

0000000000021264 <__clzdi2>:
   21264:	03800793          	li	a5,56
   21268:	00f55733          	srl	a4,a0,a5
   2126c:	0ff77713          	zext.b	a4,a4
   21270:	00071663          	bnez	a4,2127c <__clzdi2+0x18>
   21274:	ff878793          	addi	a5,a5,-8
   21278:	fe0798e3          	bnez	a5,21268 <__clzdi2+0x4>
   2127c:	00022737          	lui	a4,0x22
   21280:	04000693          	li	a3,64
   21284:	40f686b3          	sub	a3,a3,a5
   21288:	00f55533          	srl	a0,a0,a5
   2128c:	f9870793          	addi	a5,a4,-104 # 21f98 <__clz_tab>
   21290:	00a78533          	add	a0,a5,a0
   21294:	00054503          	lbu	a0,0(a0)
   21298:	40a6853b          	subw	a0,a3,a0
   2129c:	00008067          	ret
