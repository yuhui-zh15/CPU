
main.elf:     file format elf32-tradbigmips
main.elf


Disassembly of section .text:

80000000 <_ftext>:
/home/ubuntu/functiontest/src/start.S:65
80000000:	3c060040 	lui	a2,0x40
/home/ubuntu/functiontest/src/start.S:66
80000004:	40866000 	mtc0	a2,c0_sr
/home/ubuntu/functiontest/src/start.S:67
80000008:	40806800 	mtc0	zero,c0_cause
/home/ubuntu/functiontest/src/start.S:68
8000000c:	3c1d8020 	lui	sp,0x8020
80000010:	27bd0810 	addiu	sp,sp,2064
/home/ubuntu/functiontest/src/start.S:69
80000014:	3c1c8001 	lui	gp,0x8001
80000018:	279cc200 	addiu	gp,gp,-15872
/home/ubuntu/functiontest/src/start.S:70
8000001c:	34070000 	li	a3,0x0
/home/ubuntu/functiontest/src/start.S:71
80000020:	00e00013 	mtlo	a3
/home/ubuntu/functiontest/src/start.S:72
80000024:	34180000 	li	t8,0x0
/home/ubuntu/functiontest/src/start.S:73
80000028:	03000011 	mthi	t8
/home/ubuntu/functiontest/src/start.S:75
8000002c:	08000187 	j	8000061c <locate>
/home/ubuntu/functiontest/src/start.S:76
80000030:	00000000 	nop
	...
/home/ubuntu/functiontest/src/start.S:82
80000380:	24030001 	li	v1,1
/home/ubuntu/functiontest/src/start.S:83
80000384:	1043001b 	beq	v0,v1,800003f4 <syscall_ex>
/home/ubuntu/functiontest/src/start.S:84
80000388:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:85
8000038c:	24030002 	li	v1,2
/home/ubuntu/functiontest/src/start.S:86
80000390:	1043002b 	beq	v0,v1,80000440 <break_ex>
/home/ubuntu/functiontest/src/start.S:87
80000394:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:88
80000398:	24030003 	li	v1,3
/home/ubuntu/functiontest/src/start.S:89
8000039c:	1043003b 	beq	v0,v1,8000048c <eret_ex>
/home/ubuntu/functiontest/src/start.S:90
800003a0:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:91
800003a4:	24030004 	li	v1,4
/home/ubuntu/functiontest/src/start.S:92
800003a8:	1043003e 	beq	v0,v1,800004a4 <overflow_ex>
/home/ubuntu/functiontest/src/start.S:93
800003ac:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:94
800003b0:	24030005 	li	v1,5
/home/ubuntu/functiontest/src/start.S:95
800003b4:	10430049 	beq	v0,v1,800004dc <adel_load_ex>
/home/ubuntu/functiontest/src/start.S:96
800003b8:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:97
800003bc:	24030006 	li	v1,6
/home/ubuntu/functiontest/src/start.S:98
800003c0:	10430054 	beq	v0,v1,80000514 <ades_ex>
/home/ubuntu/functiontest/src/start.S:99
800003c4:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:100
800003c8:	24030007 	li	v1,7
/home/ubuntu/functiontest/src/start.S:101
800003cc:	1043005f 	beq	v0,v1,8000054c <adel_if_ex>
/home/ubuntu/functiontest/src/start.S:102
800003d0:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:103
800003d4:	24030008 	li	v1,8
/home/ubuntu/functiontest/src/start.S:104
800003d8:	1043006b 	beq	v0,v1,80000588 <reserved_inst_ex>
/home/ubuntu/functiontest/src/start.S:105
800003dc:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:106
800003e0:	24030009 	li	v1,9
/home/ubuntu/functiontest/src/start.S:107
800003e4:	10430076 	beq	v0,v1,800005c0 <delay_slot_ex>
/home/ubuntu/functiontest/src/start.S:108
800003e8:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:109
800003ec:	1000007b 	b	800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:110
800003f0:	00000000 	nop

800003f4 <syscall_ex>:
/home/ubuntu/functiontest/src/start.S:112
800003f4:	00001021 	move	v0,zero
/home/ubuntu/functiontest/src/start.S:113
800003f8:	401a7000 	mfc0	k0,c0_epc
/home/ubuntu/functiontest/src/start.S:114
800003fc:	3c1b8000 	lui	k1,0x8000
80000400:	277b07a8 	addiu	k1,k1,1960
/home/ubuntu/functiontest/src/start.S:115
80000404:	175b0075 	bne	k0,k1,800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:116
80000408:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:117
8000040c:	401a6800 	mfc0	k0,c0_cause
/home/ubuntu/functiontest/src/start.S:118
80000410:	335a007c 	andi	k0,k0,0x7c
/home/ubuntu/functiontest/src/start.S:119
80000414:	241b0020 	li	k1,32
/home/ubuntu/functiontest/src/start.S:120
80000418:	175b0070 	bne	k0,k1,800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:121
8000041c:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:122
80000420:	401a6000 	mfc0	k0,c0_sr
/home/ubuntu/functiontest/src/start.S:123
80000424:	335a0002 	andi	k0,k0,0x2
/home/ubuntu/functiontest/src/start.S:124
80000428:	241b0002 	li	k1,2
/home/ubuntu/functiontest/src/start.S:125
8000042c:	175b006b 	bne	k0,k1,800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:126
80000430:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:127
80000434:	3c0200ff 	lui	v0,0xff
/home/ubuntu/functiontest/src/start.S:128
80000438:	10000068 	b	800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:129
8000043c:	00000000 	nop

80000440 <break_ex>:
/home/ubuntu/functiontest/src/start.S:131
80000440:	00001021 	move	v0,zero
/home/ubuntu/functiontest/src/start.S:132
80000444:	401a7000 	mfc0	k0,c0_epc
/home/ubuntu/functiontest/src/start.S:133
80000448:	3c1b8000 	lui	k1,0x8000
8000044c:	277b0778 	addiu	k1,k1,1912
/home/ubuntu/functiontest/src/start.S:134
80000450:	175b0062 	bne	k0,k1,800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:135
80000454:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:136
80000458:	401a6800 	mfc0	k0,c0_cause
/home/ubuntu/functiontest/src/start.S:137
8000045c:	335a007c 	andi	k0,k0,0x7c
/home/ubuntu/functiontest/src/start.S:138
80000460:	241b0024 	li	k1,36
/home/ubuntu/functiontest/src/start.S:139
80000464:	175b005d 	bne	k0,k1,800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:140
80000468:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:141
8000046c:	401a6000 	mfc0	k0,c0_sr
/home/ubuntu/functiontest/src/start.S:142
80000470:	335a0002 	andi	k0,k0,0x2
/home/ubuntu/functiontest/src/start.S:143
80000474:	241b0002 	li	k1,2
/home/ubuntu/functiontest/src/start.S:144
80000478:	175b0058 	bne	k0,k1,800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:145
8000047c:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:146
80000480:	3c02ff00 	lui	v0,0xff00
/home/ubuntu/functiontest/src/start.S:147
80000484:	10000055 	b	800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:148
80000488:	00000000 	nop

8000048c <eret_ex>:
/home/ubuntu/functiontest/src/start.S:150
8000048c:	3c1a8000 	lui	k0,0x8000
80000490:	275a07f0 	addiu	k0,k0,2032
/home/ubuntu/functiontest/src/start.S:151
80000494:	409a7000 	mtc0	k0,c0_epc
/home/ubuntu/functiontest/src/start.S:152
80000498:	3c020f0f 	lui	v0,0xf0f
/home/ubuntu/functiontest/src/start.S:153
8000049c:	1000004f 	b	800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:154
800004a0:	00000000 	nop

800004a4 <overflow_ex>:
/home/ubuntu/functiontest/src/start.S:156
800004a4:	00001021 	move	v0,zero
/home/ubuntu/functiontest/src/start.S:157
800004a8:	401a6800 	mfc0	k0,c0_cause
/home/ubuntu/functiontest/src/start.S:158
800004ac:	335a007c 	andi	k0,k0,0x7c
/home/ubuntu/functiontest/src/start.S:159
800004b0:	241b0030 	li	k1,48
/home/ubuntu/functiontest/src/start.S:160
800004b4:	175b0049 	bne	k0,k1,800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:161
800004b8:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:162
800004bc:	401a6000 	mfc0	k0,c0_sr
/home/ubuntu/functiontest/src/start.S:163
800004c0:	335a0002 	andi	k0,k0,0x2
/home/ubuntu/functiontest/src/start.S:164
800004c4:	241b0002 	li	k1,2
/home/ubuntu/functiontest/src/start.S:165
800004c8:	175b0044 	bne	k0,k1,800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:166
800004cc:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:167
800004d0:	3c021234 	lui	v0,0x1234
/home/ubuntu/functiontest/src/start.S:168
800004d4:	10000041 	b	800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:169
800004d8:	00000000 	nop

800004dc <adel_load_ex>:
/home/ubuntu/functiontest/src/start.S:171
800004dc:	00001021 	move	v0,zero
/home/ubuntu/functiontest/src/start.S:172
800004e0:	401a6800 	mfc0	k0,c0_cause
/home/ubuntu/functiontest/src/start.S:173
800004e4:	335a007c 	andi	k0,k0,0x7c
/home/ubuntu/functiontest/src/start.S:174
800004e8:	241b0010 	li	k1,16
/home/ubuntu/functiontest/src/start.S:175
800004ec:	175b003b 	bne	k0,k1,800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:176
800004f0:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:177
800004f4:	401a6000 	mfc0	k0,c0_sr
/home/ubuntu/functiontest/src/start.S:178
800004f8:	335a0002 	andi	k0,k0,0x2
/home/ubuntu/functiontest/src/start.S:179
800004fc:	241b0002 	li	k1,2
/home/ubuntu/functiontest/src/start.S:180
80000500:	175b0036 	bne	k0,k1,800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:181
80000504:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:182
80000508:	3c025678 	lui	v0,0x5678
/home/ubuntu/functiontest/src/start.S:183
8000050c:	10000033 	b	800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:184
80000510:	00000000 	nop

80000514 <ades_ex>:
/home/ubuntu/functiontest/src/start.S:186
80000514:	00001021 	move	v0,zero
/home/ubuntu/functiontest/src/start.S:187
80000518:	401a6800 	mfc0	k0,c0_cause
/home/ubuntu/functiontest/src/start.S:188
8000051c:	335a007c 	andi	k0,k0,0x7c
/home/ubuntu/functiontest/src/start.S:189
80000520:	241b0014 	li	k1,20
/home/ubuntu/functiontest/src/start.S:190
80000524:	175b002d 	bne	k0,k1,800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:191
80000528:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:192
8000052c:	401a6000 	mfc0	k0,c0_sr
/home/ubuntu/functiontest/src/start.S:193
80000530:	335a0002 	andi	k0,k0,0x2
/home/ubuntu/functiontest/src/start.S:194
80000534:	241b0002 	li	k1,2
/home/ubuntu/functiontest/src/start.S:195
80000538:	175b0028 	bne	k0,k1,800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:196
8000053c:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:197
80000540:	3c021111 	lui	v0,0x1111
/home/ubuntu/functiontest/src/start.S:198
80000544:	10000025 	b	800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:199
80000548:	00000000 	nop

8000054c <adel_if_ex>:
/home/ubuntu/functiontest/src/start.S:201
8000054c:	00001021 	move	v0,zero
/home/ubuntu/functiontest/src/start.S:202
80000550:	409b7000 	mtc0	k1,c0_epc
/home/ubuntu/functiontest/src/start.S:203
80000554:	401a6800 	mfc0	k0,c0_cause
/home/ubuntu/functiontest/src/start.S:204
80000558:	335a007c 	andi	k0,k0,0x7c
/home/ubuntu/functiontest/src/start.S:205
8000055c:	241b0010 	li	k1,16
/home/ubuntu/functiontest/src/start.S:206
80000560:	175b001e 	bne	k0,k1,800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:207
80000564:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:208
80000568:	401a6000 	mfc0	k0,c0_sr
/home/ubuntu/functiontest/src/start.S:209
8000056c:	335a0002 	andi	k0,k0,0x2
/home/ubuntu/functiontest/src/start.S:210
80000570:	241b0002 	li	k1,2
/home/ubuntu/functiontest/src/start.S:211
80000574:	175b0019 	bne	k0,k1,800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:212
80000578:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:213
8000057c:	3c022222 	lui	v0,0x2222
/home/ubuntu/functiontest/src/start.S:214
80000580:	10000016 	b	800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:215
80000584:	00000000 	nop

80000588 <reserved_inst_ex>:
/home/ubuntu/functiontest/src/start.S:217
80000588:	00001021 	move	v0,zero
/home/ubuntu/functiontest/src/start.S:218
8000058c:	401a6800 	mfc0	k0,c0_cause
/home/ubuntu/functiontest/src/start.S:219
80000590:	335a007c 	andi	k0,k0,0x7c
/home/ubuntu/functiontest/src/start.S:220
80000594:	241b0028 	li	k1,40
/home/ubuntu/functiontest/src/start.S:221
80000598:	175b0010 	bne	k0,k1,800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:222
8000059c:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:223
800005a0:	401a6000 	mfc0	k0,c0_sr
/home/ubuntu/functiontest/src/start.S:224
800005a4:	335a0002 	andi	k0,k0,0x2
/home/ubuntu/functiontest/src/start.S:225
800005a8:	241b0002 	li	k1,2
/home/ubuntu/functiontest/src/start.S:226
800005ac:	175b000b 	bne	k0,k1,800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:227
800005b0:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:228
800005b4:	3c023333 	lui	v0,0x3333
/home/ubuntu/functiontest/src/start.S:229
800005b8:	10000008 	b	800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:230
800005bc:	00000000 	nop

800005c0 <delay_slot_ex>:
/home/ubuntu/functiontest/src/start.S:232
800005c0:	00001021 	move	v0,zero
/home/ubuntu/functiontest/src/start.S:233
800005c4:	401a6800 	mfc0	k0,c0_cause
/home/ubuntu/functiontest/src/start.S:234
800005c8:	3c1b8000 	lui	k1,0x8000
/home/ubuntu/functiontest/src/start.S:235
800005cc:	035bd024 	and	k0,k0,k1
/home/ubuntu/functiontest/src/start.S:236
800005d0:	175b0002 	bne	k0,k1,800005dc <other_ex>
/home/ubuntu/functiontest/src/start.S:237
800005d4:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:238
800005d8:	3c024444 	lui	v0,0x4444

800005dc <other_ex>:
/home/ubuntu/functiontest/src/start.S:240
800005dc:	401a6800 	mfc0	k0,c0_cause
/home/ubuntu/functiontest/src/start.S:241
800005e0:	40037000 	mfc0	v1,c0_epc
/home/ubuntu/functiontest/src/start.S:242
800005e4:	3c1b8000 	lui	k1,0x8000
/home/ubuntu/functiontest/src/start.S:243
800005e8:	24630004 	addiu	v1,v1,4
/home/ubuntu/functiontest/src/start.S:244
800005ec:	035bd024 	and	k0,k0,k1
/home/ubuntu/functiontest/src/start.S:245
800005f0:	13400002 	beqz	k0,800005fc <other_ex+0x20>
/home/ubuntu/functiontest/src/start.S:246
800005f4:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:247
800005f8:	24630004 	addiu	v1,v1,4
/home/ubuntu/functiontest/src/start.S:249
800005fc:	40837000 	mtc0	v1,c0_epc
/home/ubuntu/functiontest/src/start.S:250
80000600:	14400002 	bnez	v0,8000060c <ex_ret>
/home/ubuntu/functiontest/src/start.S:251
80000604:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:252
80000608:	3c02ffff 	lui	v0,0xffff

8000060c <ex_ret>:
/home/ubuntu/functiontest/src/start.S:255
8000060c:	42000018 	c0	0x18
	...

8000061c <locate>:
/home/ubuntu/functiontest/src/start.S:265
8000061c:	3409ffff 	li	t1,0xffff
/home/ubuntu/functiontest/src/start.S:266
80000620:	3c08bfd0 	lui	t0,0xbfd0
80000624:	3508f000 	ori	t0,t0,0xf000
/home/ubuntu/functiontest/src/start.S:267
80000628:	ad090000 	sw	t1,0(t0)
/home/ubuntu/functiontest/src/start.S:269
8000062c:	3c11bfd0 	lui	s1,0xbfd0
80000630:	3631f010 	ori	s1,s1,0xf010
/home/ubuntu/functiontest/src/start.S:270
80000634:	3c130000 	lui	s3,0x0
/home/ubuntu/functiontest/src/start.S:271
80000638:	ae330000 	sw	s3,0(s1)

8000063c <inst_test>:
/home/ubuntu/functiontest/src/start.S:628
8000063c:	3c028000 	lui	v0,0x8000
80000640:	244228f0 	addiu	v0,v0,10480
/home/ubuntu/functiontest/src/start.S:629
80000644:	0040f809 	jalr	v0
/home/ubuntu/functiontest/src/start.S:630
80000648:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:631
8000064c:	0c0001d5 	jal	80000754 <wait_1s>
/home/ubuntu/functiontest/src/start.S:632
80000650:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:633
80000654:	3c028000 	lui	v0,0x8000
80000658:	244213a8 	addiu	v0,v0,5032
/home/ubuntu/functiontest/src/start.S:634
8000065c:	0040f809 	jalr	v0
/home/ubuntu/functiontest/src/start.S:635
80000660:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:636
80000664:	0c0001d5 	jal	80000754 <wait_1s>
/home/ubuntu/functiontest/src/start.S:637
80000668:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:638
8000066c:	3c028000 	lui	v0,0x8000
80000670:	244221d8 	addiu	v0,v0,8664
/home/ubuntu/functiontest/src/start.S:639
80000674:	0040f809 	jalr	v0
/home/ubuntu/functiontest/src/start.S:640
80000678:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:641
8000067c:	0c0001d5 	jal	80000754 <wait_1s>
/home/ubuntu/functiontest/src/start.S:642
80000680:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:643
80000684:	3c028000 	lui	v0,0x8000
80000688:	24423008 	addiu	v0,v0,12296
/home/ubuntu/functiontest/src/start.S:644
8000068c:	0040f809 	jalr	v0
/home/ubuntu/functiontest/src/start.S:645
80000690:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:646
80000694:	0c0001d5 	jal	80000754 <wait_1s>
/home/ubuntu/functiontest/src/start.S:647
80000698:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:648
8000069c:	3c028000 	lui	v0,0x8000
800006a0:	24421ac0 	addiu	v0,v0,6848
/home/ubuntu/functiontest/src/start.S:649
800006a4:	0040f809 	jalr	v0
/home/ubuntu/functiontest/src/start.S:650
800006a8:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:651
800006ac:	0c0001d5 	jal	80000754 <wait_1s>
/home/ubuntu/functiontest/src/start.S:652
800006b0:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:653
800006b4:	3c028000 	lui	v0,0x8000
800006b8:	24423720 	addiu	v0,v0,14112
/home/ubuntu/functiontest/src/start.S:654
800006bc:	0040f809 	jalr	v0
/home/ubuntu/functiontest/src/start.S:655
800006c0:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:656
800006c4:	0c0001d5 	jal	80000754 <wait_1s>
/home/ubuntu/functiontest/src/start.S:657
800006c8:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:668
800006cc:	3c028000 	lui	v0,0x8000
800006d0:	24420c08 	addiu	v0,v0,3080
/home/ubuntu/functiontest/src/start.S:669
800006d4:	0040f809 	jalr	v0
/home/ubuntu/functiontest/src/start.S:670
800006d8:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:671
800006dc:	0c0001d5 	jal	80000754 <wait_1s>
/home/ubuntu/functiontest/src/start.S:672
800006e0:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:673
800006e4:	3c028000 	lui	v0,0x8000
800006e8:	24423e38 	addiu	v0,v0,15928
/home/ubuntu/functiontest/src/start.S:674
800006ec:	0040f809 	jalr	v0
/home/ubuntu/functiontest/src/start.S:675
800006f0:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:676
800006f4:	0c0001d5 	jal	80000754 <wait_1s>
/home/ubuntu/functiontest/src/start.S:677
800006f8:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:678
800006fc:	3c028000 	lui	v0,0x8000
80000700:	24420830 	addiu	v0,v0,2096
/home/ubuntu/functiontest/src/start.S:679
80000704:	0040f809 	jalr	v0
/home/ubuntu/functiontest/src/start.S:680
80000708:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:681
8000070c:	0c0001d5 	jal	80000754 <wait_1s>
/home/ubuntu/functiontest/src/start.S:682
80000710:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:683
80000714:	3c028000 	lui	v0,0x8000
80000718:	24420fa0 	addiu	v0,v0,4000
/home/ubuntu/functiontest/src/start.S:684
8000071c:	0040f809 	jalr	v0
/home/ubuntu/functiontest/src/start.S:685
80000720:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:686
80000724:	0c0001d5 	jal	80000754 <wait_1s>
/home/ubuntu/functiontest/src/start.S:687
80000728:	00000000 	nop

8000072c <test_end>:
/home/ubuntu/functiontest/src/start.S:691
8000072c:	2404005b 	li	a0,91
/home/ubuntu/functiontest/src/start.S:692
80000730:	10930003 	beq	a0,s3,80000740 <test_end+0x14>
/home/ubuntu/functiontest/src/start.S:693
80000734:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:695
80000738:	10000004 	b	8000074c <test_end+0x20>
/home/ubuntu/functiontest/src/start.S:696
8000073c:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:699
80000740:	3c08bfd0 	lui	t0,0xbfd0
80000744:	3508f000 	ori	t0,t0,0xf000
/home/ubuntu/functiontest/src/start.S:700
80000748:	ad000000 	sw	zero,0(t0)
/home/ubuntu/functiontest/src/start.S:702
8000074c:	1000ffff 	b	8000074c <test_end+0x20>
/home/ubuntu/functiontest/src/start.S:703
80000750:	00000000 	nop

80000754 <wait_1s>:
/home/ubuntu/functiontest/src/start.S:707
80000754:	24080001 	li	t0,1
/home/ubuntu/functiontest/src/start.S:709
80000758:	2508ffff 	addiu	t0,t0,-1
/home/ubuntu/functiontest/src/start.S:710
8000075c:	1500fffe 	bnez	t0,80000758 <wait_1s+0x4>
/home/ubuntu/functiontest/src/start.S:711
80000760:	00000000 	nop
/home/ubuntu/functiontest/src/start.S:712
80000764:	03e00008 	jr	ra
/home/ubuntu/functiontest/src/start.S:713
80000768:	00000000 	nop
wait_1s():
8000076c:	00000000 	nop

80000770 <n45_break_test>:
/home/ubuntu/functiontest/src/inst/n45_break.S:11
80000770:	3c042d00 	lui	a0,0x2d00
/home/ubuntu/functiontest/src/inst/n45_break.S:12
80000774:	24020002 	li	v0,2

80000778 <break_pc>:
/home/ubuntu/functiontest/src/inst/n45_break.S:16
80000778:	0000000d 	break
/home/ubuntu/functiontest/src/inst/n45_break.S:18
8000077c:	3c10ff00 	lui	s0,0xff00
/home/ubuntu/functiontest/src/inst/n45_break.S:19
80000780:	14500002 	bne	v0,s0,8000078c <inst_error>
/home/ubuntu/functiontest/src/inst/n45_break.S:20
80000784:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n45_break.S:22
80000788:	26730001 	addiu	s3,s3,1

8000078c <inst_error>:
/home/ubuntu/functiontest/src/inst/n45_break.S:25
8000078c:	00934025 	or	t0,a0,s3
/home/ubuntu/functiontest/src/inst/n45_break.S:26
80000790:	ae280000 	sw	t0,0(s1)
/home/ubuntu/functiontest/src/inst/n45_break.S:27
80000794:	03e00008 	jr	ra
/home/ubuntu/functiontest/src/inst/n45_break.S:28
80000798:	00000000 	nop
inst_error():
8000079c:	00000000 	nop

800007a0 <n46_syscall_test>:
/home/ubuntu/functiontest/src/inst/n46_syscall.S:11
800007a0:	3c042e00 	lui	a0,0x2e00
/home/ubuntu/functiontest/src/inst/n46_syscall.S:12
800007a4:	24020001 	li	v0,1

800007a8 <syscall_pc>:
/home/ubuntu/functiontest/src/inst/n46_syscall.S:16
800007a8:	0000000c 	syscall
/home/ubuntu/functiontest/src/inst/n46_syscall.S:18
800007ac:	3c1000ff 	lui	s0,0xff
/home/ubuntu/functiontest/src/inst/n46_syscall.S:19
800007b0:	14500002 	bne	v0,s0,800007bc <inst_error>
/home/ubuntu/functiontest/src/inst/n46_syscall.S:20
800007b4:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n46_syscall.S:22
800007b8:	26730001 	addiu	s3,s3,1

800007bc <inst_error>:
/home/ubuntu/functiontest/src/inst/n46_syscall.S:25
800007bc:	00934025 	or	t0,a0,s3
/home/ubuntu/functiontest/src/inst/n46_syscall.S:26
800007c0:	ae280000 	sw	t0,0(s1)
/home/ubuntu/functiontest/src/inst/n46_syscall.S:27
800007c4:	03e00008 	jr	ra
/home/ubuntu/functiontest/src/inst/n46_syscall.S:28
800007c8:	00000000 	nop
800007cc:	00000000 	nop

800007d0 <n55_eret_test>:
/home/ubuntu/functiontest/src/inst/n55_eret.S:11
800007d0:	3c043700 	lui	a0,0x3700
/home/ubuntu/functiontest/src/inst/n55_eret.S:12
800007d4:	24020003 	li	v0,3
/home/ubuntu/functiontest/src/inst/n55_eret.S:14
800007d8:	3c087fff 	lui	t0,0x7fff
800007dc:	3508ffff 	ori	t0,t0,0xffff
/home/ubuntu/functiontest/src/inst/n55_eret.S:15
800007e0:	21087fff 	addi	t0,t0,32767
/home/ubuntu/functiontest/src/inst/n55_eret.S:16
800007e4:	3c021234 	lui	v0,0x1234
/home/ubuntu/functiontest/src/inst/n55_eret.S:17
800007e8:	3c028765 	lui	v0,0x8765
/home/ubuntu/functiontest/src/inst/n55_eret.S:18
800007ec:	3c025678 	lui	v0,0x5678

800007f0 <eret_ret_pc>:
/home/ubuntu/functiontest/src/inst/n55_eret.S:21
800007f0:	3c024321 	lui	v0,0x4321
/home/ubuntu/functiontest/src/inst/n55_eret.S:23
800007f4:	3c100f0f 	lui	s0,0xf0f
/home/ubuntu/functiontest/src/inst/n55_eret.S:24
800007f8:	14500002 	bne	v0,s0,80000804 <inst_error>
/home/ubuntu/functiontest/src/inst/n55_eret.S:25
800007fc:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n55_eret.S:27
80000800:	26730001 	addiu	s3,s3,1

80000804 <inst_error>:
/home/ubuntu/functiontest/src/inst/n55_eret.S:30
80000804:	00934025 	or	t0,a0,s3
/home/ubuntu/functiontest/src/inst/n55_eret.S:31
80000808:	ae280000 	sw	t0,0(s1)
/home/ubuntu/functiontest/src/inst/n55_eret.S:32
8000080c:	03e00008 	jr	ra
/home/ubuntu/functiontest/src/inst/n55_eret.S:33
80000810:	00000000 	nop
80000814:	00000000 	nop
80000818:	bd0a03dc 	0xbd0a03dc
	...

Disassembly of section .data:

80000830 <_fdata>:
/home/ubuntu/functiontest/src/inst/n90_jr_ex_ds.S:14
80000830:	3c045a00 	lui	a0,0x5a00
/home/ubuntu/functiontest/src/inst/n90_jr_ex_ds.S:17
80000834:	24020009 	li	v0,9
80000838:	00008021 	move	s0,zero
8000083c:	00009021 	move	s2,zero
80000840:	3c087fff 	lui	t0,0x7fff
80000844:	3508ffff 	ori	t0,t0,0xffff
80000848:	3c097fff 	lui	t1,0x7fff
8000084c:	3529ffff 	ori	t1,t1,0xffff
80000850:	3c0a8002 	lui	t2,0x8002
80000854:	354afff0 	ori	t2,t2,0xfff0
80000858:	ad480000 	sw	t0,0(t2)
8000085c:	10000004 	b	80000870 <_fdata+0x40>
80000860:	00000000 	nop
80000864:	26522222 	addiu	s2,s2,8738
80000868:	10000009 	b	80000890 <_fdata+0x60>
8000086c:	00000000 	nop
80000870:	26101111 	addiu	s0,s0,4369
80000874:	3c0d8000 	lui	t5,0x8000
80000878:	25ad0890 	addiu	t5,t5,2192
8000087c:	01a00008 	jr	t5
80000880:	21147fff 	addi	s4,t0,32767
80000884:	26100002 	addiu	s0,s0,2
80000888:	26100002 	addiu	s0,s0,2
8000088c:	26100002 	addiu	s0,s0,2
80000890:	02129021 	addu	s2,s0,s2
80000894:	24141117 	li	s4,4375
80000898:	169200d7 	bne	s4,s2,80000bf8 <inst_error>
8000089c:	00000000 	nop
800008a0:	3c144444 	lui	s4,0x4444
800008a4:	168200d4 	bne	s4,v0,80000bf8 <inst_error>
800008a8:	00000000 	nop
800008ac:	24020009 	li	v0,9
800008b0:	00008021 	move	s0,zero
800008b4:	00009021 	move	s2,zero
800008b8:	3c087fff 	lui	t0,0x7fff
800008bc:	3508ffff 	ori	t0,t0,0xffff
800008c0:	3c097fff 	lui	t1,0x7fff
800008c4:	3529ffff 	ori	t1,t1,0xffff
800008c8:	3c0a8002 	lui	t2,0x8002
800008cc:	354afff0 	ori	t2,t2,0xfff0
800008d0:	ad480000 	sw	t0,0(t2)
800008d4:	10000004 	b	800008e8 <_fdata+0xb8>
800008d8:	00000000 	nop
800008dc:	26522222 	addiu	s2,s2,8738
800008e0:	10000009 	b	80000908 <_fdata+0xd8>
800008e4:	00000000 	nop
800008e8:	26101111 	addiu	s0,s0,4369
800008ec:	3c0d8000 	lui	t5,0x8000
800008f0:	25ad08dc 	addiu	t5,t5,2268
800008f4:	01a00008 	jr	t5
800008f8:	21147fff 	addi	s4,t0,32767
800008fc:	26100002 	addiu	s0,s0,2
80000900:	26100002 	addiu	s0,s0,2
80000904:	26100002 	addiu	s0,s0,2
80000908:	02129021 	addu	s2,s0,s2
8000090c:	24141117 	li	s4,4375
80000910:	169200b9 	bne	s4,s2,80000bf8 <inst_error>
80000914:	00000000 	nop
80000918:	3c144444 	lui	s4,0x4444
8000091c:	168200b6 	bne	s4,v0,80000bf8 <inst_error>
80000920:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n90_jr_ex_ds.S:18
80000924:	24020009 	li	v0,9
80000928:	00008021 	move	s0,zero
8000092c:	00009021 	move	s2,zero
80000930:	3c087fff 	lui	t0,0x7fff
80000934:	3508ffff 	ori	t0,t0,0xffff
80000938:	3c097fff 	lui	t1,0x7fff
8000093c:	3529ffff 	ori	t1,t1,0xffff
80000940:	3c0a8002 	lui	t2,0x8002
80000944:	354afff0 	ori	t2,t2,0xfff0
80000948:	ad480000 	sw	t0,0(t2)
8000094c:	10000004 	b	80000960 <_fdata+0x130>
80000950:	00000000 	nop
80000954:	26522222 	addiu	s2,s2,8738
80000958:	10000009 	b	80000980 <_fdata+0x150>
8000095c:	00000000 	nop
80000960:	26101111 	addiu	s0,s0,4369
80000964:	3c0d8000 	lui	t5,0x8000
80000968:	25ad0980 	addiu	t5,t5,2432
8000096c:	01a00008 	jr	t5
80000970:	0109a020 	add	s4,t0,t1
80000974:	26100002 	addiu	s0,s0,2
80000978:	26100002 	addiu	s0,s0,2
8000097c:	26100002 	addiu	s0,s0,2
80000980:	02129021 	addu	s2,s0,s2
80000984:	24141117 	li	s4,4375
80000988:	1692009b 	bne	s4,s2,80000bf8 <inst_error>
8000098c:	00000000 	nop
80000990:	3c144444 	lui	s4,0x4444
80000994:	16820098 	bne	s4,v0,80000bf8 <inst_error>
80000998:	00000000 	nop
8000099c:	24020009 	li	v0,9
800009a0:	00008021 	move	s0,zero
800009a4:	00009021 	move	s2,zero
800009a8:	3c087fff 	lui	t0,0x7fff
800009ac:	3508ffff 	ori	t0,t0,0xffff
800009b0:	3c097fff 	lui	t1,0x7fff
800009b4:	3529ffff 	ori	t1,t1,0xffff
800009b8:	3c0a8002 	lui	t2,0x8002
800009bc:	354afff0 	ori	t2,t2,0xfff0
800009c0:	ad480000 	sw	t0,0(t2)
800009c4:	10000004 	b	800009d8 <_fdata+0x1a8>
800009c8:	00000000 	nop
800009cc:	26522222 	addiu	s2,s2,8738
800009d0:	10000009 	b	800009f8 <_fdata+0x1c8>
800009d4:	00000000 	nop
800009d8:	26101111 	addiu	s0,s0,4369
800009dc:	3c0d8000 	lui	t5,0x8000
800009e0:	25ad09cc 	addiu	t5,t5,2508
800009e4:	01a00008 	jr	t5
800009e8:	0109a020 	add	s4,t0,t1
800009ec:	26100002 	addiu	s0,s0,2
800009f0:	26100002 	addiu	s0,s0,2
800009f4:	26100002 	addiu	s0,s0,2
800009f8:	02129021 	addu	s2,s0,s2
800009fc:	24141117 	li	s4,4375
80000a00:	1692007d 	bne	s4,s2,80000bf8 <inst_error>
80000a04:	00000000 	nop
80000a08:	3c144444 	lui	s4,0x4444
80000a0c:	1682007a 	bne	s4,v0,80000bf8 <inst_error>
80000a10:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n90_jr_ex_ds.S:19
80000a14:	24020009 	li	v0,9
80000a18:	00008021 	move	s0,zero
80000a1c:	00009021 	move	s2,zero
80000a20:	3c087fff 	lui	t0,0x7fff
80000a24:	3508ffff 	ori	t0,t0,0xffff
80000a28:	3c097fff 	lui	t1,0x7fff
80000a2c:	3529ffff 	ori	t1,t1,0xffff
80000a30:	3c0a8002 	lui	t2,0x8002
80000a34:	354afff0 	ori	t2,t2,0xfff0
80000a38:	ad480000 	sw	t0,0(t2)
80000a3c:	10000004 	b	80000a50 <_fdata+0x220>
80000a40:	00000000 	nop
80000a44:	26522222 	addiu	s2,s2,8738
80000a48:	10000009 	b	80000a70 <_fdata+0x240>
80000a4c:	00000000 	nop
80000a50:	26101111 	addiu	s0,s0,4369
80000a54:	3c0d8000 	lui	t5,0x8000
80000a58:	25ad0a70 	addiu	t5,t5,2672
80000a5c:	01a00008 	jr	t5
80000a60:	010aa022 	sub	s4,t0,t2
80000a64:	26100002 	addiu	s0,s0,2
80000a68:	26100002 	addiu	s0,s0,2
80000a6c:	26100002 	addiu	s0,s0,2
80000a70:	02129021 	addu	s2,s0,s2
80000a74:	24141117 	li	s4,4375
80000a78:	1692005f 	bne	s4,s2,80000bf8 <inst_error>
80000a7c:	00000000 	nop
80000a80:	3c144444 	lui	s4,0x4444
80000a84:	1682005c 	bne	s4,v0,80000bf8 <inst_error>
80000a88:	00000000 	nop
80000a8c:	24020009 	li	v0,9
80000a90:	00008021 	move	s0,zero
80000a94:	00009021 	move	s2,zero
80000a98:	3c087fff 	lui	t0,0x7fff
80000a9c:	3508ffff 	ori	t0,t0,0xffff
80000aa0:	3c097fff 	lui	t1,0x7fff
80000aa4:	3529ffff 	ori	t1,t1,0xffff
80000aa8:	3c0a8002 	lui	t2,0x8002
80000aac:	354afff0 	ori	t2,t2,0xfff0
80000ab0:	ad480000 	sw	t0,0(t2)
80000ab4:	10000004 	b	80000ac8 <_fdata+0x298>
80000ab8:	00000000 	nop
80000abc:	26522222 	addiu	s2,s2,8738
80000ac0:	10000009 	b	80000ae8 <_fdata+0x2b8>
80000ac4:	00000000 	nop
80000ac8:	26101111 	addiu	s0,s0,4369
80000acc:	3c0d8000 	lui	t5,0x8000
80000ad0:	25ad0abc 	addiu	t5,t5,2748
80000ad4:	01a00008 	jr	t5
80000ad8:	010aa022 	sub	s4,t0,t2
80000adc:	26100002 	addiu	s0,s0,2
80000ae0:	26100002 	addiu	s0,s0,2
80000ae4:	26100002 	addiu	s0,s0,2
80000ae8:	02129021 	addu	s2,s0,s2
80000aec:	24141117 	li	s4,4375
80000af0:	16920041 	bne	s4,s2,80000bf8 <inst_error>
80000af4:	00000000 	nop
80000af8:	3c144444 	lui	s4,0x4444
80000afc:	1682003e 	bne	s4,v0,80000bf8 <inst_error>
80000b00:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n90_jr_ex_ds.S:26
80000b04:	24020009 	li	v0,9
80000b08:	00008021 	move	s0,zero
80000b0c:	00009021 	move	s2,zero
80000b10:	3c087fff 	lui	t0,0x7fff
80000b14:	3508ffff 	ori	t0,t0,0xffff
80000b18:	3c097fff 	lui	t1,0x7fff
80000b1c:	3529ffff 	ori	t1,t1,0xffff
80000b20:	3c0a8002 	lui	t2,0x8002
80000b24:	354afff0 	ori	t2,t2,0xfff0
80000b28:	ad480000 	sw	t0,0(t2)
80000b2c:	10000004 	b	80000b40 <_fdata+0x310>
80000b30:	00000000 	nop
80000b34:	26522222 	addiu	s2,s2,8738
80000b38:	10000009 	b	80000b60 <_fdata+0x330>
80000b3c:	00000000 	nop
80000b40:	26101111 	addiu	s0,s0,4369
80000b44:	3c0d8000 	lui	t5,0x8000
80000b48:	25ad0b60 	addiu	t5,t5,2912
80000b4c:	01a00008 	jr	t5
80000b50:	0000000c 	syscall
80000b54:	26100002 	addiu	s0,s0,2
80000b58:	26100002 	addiu	s0,s0,2
80000b5c:	26100002 	addiu	s0,s0,2
80000b60:	02129021 	addu	s2,s0,s2
80000b64:	24141117 	li	s4,4375
80000b68:	16920023 	bne	s4,s2,80000bf8 <inst_error>
80000b6c:	00000000 	nop
80000b70:	3c144444 	lui	s4,0x4444
80000b74:	16820020 	bne	s4,v0,80000bf8 <inst_error>
80000b78:	00000000 	nop
80000b7c:	24020009 	li	v0,9
80000b80:	00008021 	move	s0,zero
80000b84:	00009021 	move	s2,zero
80000b88:	3c087fff 	lui	t0,0x7fff
80000b8c:	3508ffff 	ori	t0,t0,0xffff
80000b90:	3c097fff 	lui	t1,0x7fff
80000b94:	3529ffff 	ori	t1,t1,0xffff
80000b98:	3c0a8002 	lui	t2,0x8002
80000b9c:	354afff0 	ori	t2,t2,0xfff0
80000ba0:	ad480000 	sw	t0,0(t2)
80000ba4:	10000004 	b	80000bb8 <_fdata+0x388>
80000ba8:	00000000 	nop
80000bac:	26522222 	addiu	s2,s2,8738
80000bb0:	10000009 	b	80000bd8 <_fdata+0x3a8>
80000bb4:	00000000 	nop
80000bb8:	26101111 	addiu	s0,s0,4369
80000bbc:	3c0d8000 	lui	t5,0x8000
80000bc0:	25ad0bac 	addiu	t5,t5,2988
80000bc4:	01a00008 	jr	t5
80000bc8:	0000000c 	syscall
80000bcc:	26100002 	addiu	s0,s0,2
80000bd0:	26100002 	addiu	s0,s0,2
80000bd4:	26100002 	addiu	s0,s0,2
80000bd8:	02129021 	addu	s2,s0,s2
80000bdc:	24141117 	li	s4,4375
80000be0:	16920005 	bne	s4,s2,80000bf8 <inst_error>
80000be4:	00000000 	nop
80000be8:	3c144444 	lui	s4,0x4444
80000bec:	16820002 	bne	s4,v0,80000bf8 <inst_error>
80000bf0:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n90_jr_ex_ds.S:33
80000bf4:	26730001 	addiu	s3,s3,1

80000bf8 <inst_error>:
/home/ubuntu/functiontest/src/inst/n90_jr_ex_ds.S:36
80000bf8:	00934025 	or	t0,a0,s3
/home/ubuntu/functiontest/src/inst/n90_jr_ex_ds.S:37
80000bfc:	ae280000 	sw	t0,0(s1)
/home/ubuntu/functiontest/src/inst/n90_jr_ex_ds.S:38
80000c00:	03e00008 	jr	ra
/home/ubuntu/functiontest/src/inst/n90_jr_ex_ds.S:39
80000c04:	00000000 	nop

80000c08 <n88_j_ex_ds_test>:
/home/ubuntu/functiontest/src/inst/n88_j_ex_ds.S:14
80000c08:	3c045800 	lui	a0,0x5800
/home/ubuntu/functiontest/src/inst/n88_j_ex_ds.S:17
80000c0c:	24020009 	li	v0,9
80000c10:	00008021 	move	s0,zero
80000c14:	00009021 	move	s2,zero
80000c18:	3c087fff 	lui	t0,0x7fff
80000c1c:	3508ffff 	ori	t0,t0,0xffff
80000c20:	3c097fff 	lui	t1,0x7fff
80000c24:	3529ffff 	ori	t1,t1,0xffff
80000c28:	3c0a8002 	lui	t2,0x8002
80000c2c:	354afff0 	ori	t2,t2,0xfff0
80000c30:	ad480000 	sw	t0,0(t2)
80000c34:	10000004 	b	80000c48 <n88_j_ex_ds_test+0x40>
80000c38:	00000000 	nop
80000c3c:	26522222 	addiu	s2,s2,8738
80000c40:	10000007 	b	80000c60 <n88_j_ex_ds_test+0x58>
80000c44:	00000000 	nop
80000c48:	26101111 	addiu	s0,s0,4369
80000c4c:	08000318 	j	80000c60 <n88_j_ex_ds_test+0x58>
80000c50:	21147fff 	addi	s4,t0,32767
80000c54:	26100002 	addiu	s0,s0,2
80000c58:	26100002 	addiu	s0,s0,2
80000c5c:	26100002 	addiu	s0,s0,2
80000c60:	02129021 	addu	s2,s0,s2
80000c64:	24141117 	li	s4,4375
80000c68:	169200c9 	bne	s4,s2,80000f90 <inst_error>
80000c6c:	00000000 	nop
80000c70:	3c144444 	lui	s4,0x4444
80000c74:	168200c6 	bne	s4,v0,80000f90 <inst_error>
80000c78:	00000000 	nop
80000c7c:	24020009 	li	v0,9
80000c80:	00008021 	move	s0,zero
80000c84:	00009021 	move	s2,zero
80000c88:	3c087fff 	lui	t0,0x7fff
80000c8c:	3508ffff 	ori	t0,t0,0xffff
80000c90:	3c097fff 	lui	t1,0x7fff
80000c94:	3529ffff 	ori	t1,t1,0xffff
80000c98:	3c0a8002 	lui	t2,0x8002
80000c9c:	354afff0 	ori	t2,t2,0xfff0
80000ca0:	ad480000 	sw	t0,0(t2)
80000ca4:	10000004 	b	80000cb8 <n88_j_ex_ds_test+0xb0>
80000ca8:	00000000 	nop
80000cac:	26522222 	addiu	s2,s2,8738
80000cb0:	10000007 	b	80000cd0 <n88_j_ex_ds_test+0xc8>
80000cb4:	00000000 	nop
80000cb8:	26101111 	addiu	s0,s0,4369
80000cbc:	0800032b 	j	80000cac <n88_j_ex_ds_test+0xa4>
80000cc0:	21147fff 	addi	s4,t0,32767
80000cc4:	26100002 	addiu	s0,s0,2
80000cc8:	26100002 	addiu	s0,s0,2
80000ccc:	26100002 	addiu	s0,s0,2
80000cd0:	02129021 	addu	s2,s0,s2
80000cd4:	24141117 	li	s4,4375
80000cd8:	169200ad 	bne	s4,s2,80000f90 <inst_error>
80000cdc:	00000000 	nop
80000ce0:	3c144444 	lui	s4,0x4444
80000ce4:	168200aa 	bne	s4,v0,80000f90 <inst_error>
80000ce8:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n88_j_ex_ds.S:18
80000cec:	24020009 	li	v0,9
80000cf0:	00008021 	move	s0,zero
80000cf4:	00009021 	move	s2,zero
80000cf8:	3c087fff 	lui	t0,0x7fff
80000cfc:	3508ffff 	ori	t0,t0,0xffff
80000d00:	3c097fff 	lui	t1,0x7fff
80000d04:	3529ffff 	ori	t1,t1,0xffff
80000d08:	3c0a8002 	lui	t2,0x8002
80000d0c:	354afff0 	ori	t2,t2,0xfff0
80000d10:	ad480000 	sw	t0,0(t2)
80000d14:	10000004 	b	80000d28 <n88_j_ex_ds_test+0x120>
80000d18:	00000000 	nop
80000d1c:	26522222 	addiu	s2,s2,8738
80000d20:	10000007 	b	80000d40 <n88_j_ex_ds_test+0x138>
80000d24:	00000000 	nop
80000d28:	26101111 	addiu	s0,s0,4369
80000d2c:	08000350 	j	80000d40 <n88_j_ex_ds_test+0x138>
80000d30:	0109a020 	add	s4,t0,t1
80000d34:	26100002 	addiu	s0,s0,2
80000d38:	26100002 	addiu	s0,s0,2
80000d3c:	26100002 	addiu	s0,s0,2
80000d40:	02129021 	addu	s2,s0,s2
80000d44:	24141117 	li	s4,4375
80000d48:	16920091 	bne	s4,s2,80000f90 <inst_error>
80000d4c:	00000000 	nop
80000d50:	3c144444 	lui	s4,0x4444
80000d54:	1682008e 	bne	s4,v0,80000f90 <inst_error>
80000d58:	00000000 	nop
80000d5c:	24020009 	li	v0,9
80000d60:	00008021 	move	s0,zero
80000d64:	00009021 	move	s2,zero
80000d68:	3c087fff 	lui	t0,0x7fff
80000d6c:	3508ffff 	ori	t0,t0,0xffff
80000d70:	3c097fff 	lui	t1,0x7fff
80000d74:	3529ffff 	ori	t1,t1,0xffff
80000d78:	3c0a8002 	lui	t2,0x8002
80000d7c:	354afff0 	ori	t2,t2,0xfff0
80000d80:	ad480000 	sw	t0,0(t2)
80000d84:	10000004 	b	80000d98 <n88_j_ex_ds_test+0x190>
80000d88:	00000000 	nop
80000d8c:	26522222 	addiu	s2,s2,8738
80000d90:	10000007 	b	80000db0 <n88_j_ex_ds_test+0x1a8>
80000d94:	00000000 	nop
80000d98:	26101111 	addiu	s0,s0,4369
80000d9c:	08000363 	j	80000d8c <n88_j_ex_ds_test+0x184>
80000da0:	0109a020 	add	s4,t0,t1
80000da4:	26100002 	addiu	s0,s0,2
80000da8:	26100002 	addiu	s0,s0,2
80000dac:	26100002 	addiu	s0,s0,2
80000db0:	02129021 	addu	s2,s0,s2
80000db4:	24141117 	li	s4,4375
80000db8:	16920075 	bne	s4,s2,80000f90 <inst_error>
80000dbc:	00000000 	nop
80000dc0:	3c144444 	lui	s4,0x4444
80000dc4:	16820072 	bne	s4,v0,80000f90 <inst_error>
80000dc8:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n88_j_ex_ds.S:19
80000dcc:	24020009 	li	v0,9
80000dd0:	00008021 	move	s0,zero
80000dd4:	00009021 	move	s2,zero
80000dd8:	3c087fff 	lui	t0,0x7fff
80000ddc:	3508ffff 	ori	t0,t0,0xffff
80000de0:	3c097fff 	lui	t1,0x7fff
80000de4:	3529ffff 	ori	t1,t1,0xffff
80000de8:	3c0a8002 	lui	t2,0x8002
80000dec:	354afff0 	ori	t2,t2,0xfff0
80000df0:	ad480000 	sw	t0,0(t2)
80000df4:	10000004 	b	80000e08 <n88_j_ex_ds_test+0x200>
80000df8:	00000000 	nop
80000dfc:	26522222 	addiu	s2,s2,8738
80000e00:	10000007 	b	80000e20 <n88_j_ex_ds_test+0x218>
80000e04:	00000000 	nop
80000e08:	26101111 	addiu	s0,s0,4369
80000e0c:	08000388 	j	80000e20 <n88_j_ex_ds_test+0x218>
80000e10:	010aa022 	sub	s4,t0,t2
80000e14:	26100002 	addiu	s0,s0,2
80000e18:	26100002 	addiu	s0,s0,2
80000e1c:	26100002 	addiu	s0,s0,2
80000e20:	02129021 	addu	s2,s0,s2
80000e24:	24141117 	li	s4,4375
80000e28:	16920059 	bne	s4,s2,80000f90 <inst_error>
80000e2c:	00000000 	nop
80000e30:	3c144444 	lui	s4,0x4444
80000e34:	16820056 	bne	s4,v0,80000f90 <inst_error>
80000e38:	00000000 	nop
80000e3c:	24020009 	li	v0,9
80000e40:	00008021 	move	s0,zero
80000e44:	00009021 	move	s2,zero
80000e48:	3c087fff 	lui	t0,0x7fff
80000e4c:	3508ffff 	ori	t0,t0,0xffff
80000e50:	3c097fff 	lui	t1,0x7fff
80000e54:	3529ffff 	ori	t1,t1,0xffff
80000e58:	3c0a8002 	lui	t2,0x8002
80000e5c:	354afff0 	ori	t2,t2,0xfff0
80000e60:	ad480000 	sw	t0,0(t2)
80000e64:	10000004 	b	80000e78 <n88_j_ex_ds_test+0x270>
80000e68:	00000000 	nop
80000e6c:	26522222 	addiu	s2,s2,8738
80000e70:	10000007 	b	80000e90 <n88_j_ex_ds_test+0x288>
80000e74:	00000000 	nop
80000e78:	26101111 	addiu	s0,s0,4369
80000e7c:	0800039b 	j	80000e6c <n88_j_ex_ds_test+0x264>
80000e80:	010aa022 	sub	s4,t0,t2
80000e84:	26100002 	addiu	s0,s0,2
80000e88:	26100002 	addiu	s0,s0,2
80000e8c:	26100002 	addiu	s0,s0,2
80000e90:	02129021 	addu	s2,s0,s2
80000e94:	24141117 	li	s4,4375
80000e98:	1692003d 	bne	s4,s2,80000f90 <inst_error>
80000e9c:	00000000 	nop
80000ea0:	3c144444 	lui	s4,0x4444
80000ea4:	1682003a 	bne	s4,v0,80000f90 <inst_error>
80000ea8:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n88_j_ex_ds.S:26
80000eac:	24020009 	li	v0,9
80000eb0:	00008021 	move	s0,zero
80000eb4:	00009021 	move	s2,zero
80000eb8:	3c087fff 	lui	t0,0x7fff
80000ebc:	3508ffff 	ori	t0,t0,0xffff
80000ec0:	3c097fff 	lui	t1,0x7fff
80000ec4:	3529ffff 	ori	t1,t1,0xffff
80000ec8:	3c0a8002 	lui	t2,0x8002
80000ecc:	354afff0 	ori	t2,t2,0xfff0
80000ed0:	ad480000 	sw	t0,0(t2)
80000ed4:	10000004 	b	80000ee8 <n88_j_ex_ds_test+0x2e0>
80000ed8:	00000000 	nop
80000edc:	26522222 	addiu	s2,s2,8738
80000ee0:	10000007 	b	80000f00 <n88_j_ex_ds_test+0x2f8>
80000ee4:	00000000 	nop
80000ee8:	26101111 	addiu	s0,s0,4369
80000eec:	080003c0 	j	80000f00 <n88_j_ex_ds_test+0x2f8>
80000ef0:	0000000c 	syscall
80000ef4:	26100002 	addiu	s0,s0,2
80000ef8:	26100002 	addiu	s0,s0,2
80000efc:	26100002 	addiu	s0,s0,2
80000f00:	02129021 	addu	s2,s0,s2
80000f04:	24141117 	li	s4,4375
80000f08:	16920021 	bne	s4,s2,80000f90 <inst_error>
80000f0c:	00000000 	nop
80000f10:	3c144444 	lui	s4,0x4444
80000f14:	1682001e 	bne	s4,v0,80000f90 <inst_error>
80000f18:	00000000 	nop
80000f1c:	24020009 	li	v0,9
80000f20:	00008021 	move	s0,zero
80000f24:	00009021 	move	s2,zero
80000f28:	3c087fff 	lui	t0,0x7fff
80000f2c:	3508ffff 	ori	t0,t0,0xffff
80000f30:	3c097fff 	lui	t1,0x7fff
80000f34:	3529ffff 	ori	t1,t1,0xffff
80000f38:	3c0a8002 	lui	t2,0x8002
80000f3c:	354afff0 	ori	t2,t2,0xfff0
80000f40:	ad480000 	sw	t0,0(t2)
80000f44:	10000004 	b	80000f58 <n88_j_ex_ds_test+0x350>
80000f48:	00000000 	nop
80000f4c:	26522222 	addiu	s2,s2,8738
80000f50:	10000007 	b	80000f70 <n88_j_ex_ds_test+0x368>
80000f54:	00000000 	nop
80000f58:	26101111 	addiu	s0,s0,4369
80000f5c:	080003d3 	j	80000f4c <n88_j_ex_ds_test+0x344>
80000f60:	0000000c 	syscall
80000f64:	26100002 	addiu	s0,s0,2
80000f68:	26100002 	addiu	s0,s0,2
80000f6c:	26100002 	addiu	s0,s0,2
80000f70:	02129021 	addu	s2,s0,s2
80000f74:	24141117 	li	s4,4375
80000f78:	16920005 	bne	s4,s2,80000f90 <inst_error>
80000f7c:	00000000 	nop
80000f80:	3c144444 	lui	s4,0x4444
80000f84:	16820002 	bne	s4,v0,80000f90 <inst_error>
80000f88:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n88_j_ex_ds.S:33
80000f8c:	26730001 	addiu	s3,s3,1

80000f90 <inst_error>:
/home/ubuntu/functiontest/src/inst/n88_j_ex_ds.S:36
80000f90:	00934025 	or	t0,a0,s3
/home/ubuntu/functiontest/src/inst/n88_j_ex_ds.S:37
80000f94:	ae280000 	sw	t0,0(s1)
/home/ubuntu/functiontest/src/inst/n88_j_ex_ds.S:38
80000f98:	03e00008 	jr	ra
/home/ubuntu/functiontest/src/inst/n88_j_ex_ds.S:39
80000f9c:	00000000 	nop

80000fa0 <n91_jalr_ex_ds_test>:
/home/ubuntu/functiontest/src/inst/n91_jalr_ex_ds.S:14
80000fa0:	3c045b00 	lui	a0,0x5b00
/home/ubuntu/functiontest/src/inst/n91_jalr_ex_ds.S:17
80000fa4:	001f6021 	addu	t4,zero,ra
80000fa8:	24020009 	li	v0,9
80000fac:	00008021 	move	s0,zero
80000fb0:	00009021 	move	s2,zero
80000fb4:	3c087fff 	lui	t0,0x7fff
80000fb8:	3508ffff 	ori	t0,t0,0xffff
80000fbc:	3c097fff 	lui	t1,0x7fff
80000fc0:	3529ffff 	ori	t1,t1,0xffff
80000fc4:	3c0a8002 	lui	t2,0x8002
80000fc8:	354afff0 	ori	t2,t2,0xfff0
80000fcc:	ad480000 	sw	t0,0(t2)
80000fd0:	10000004 	b	80000fe4 <n91_jalr_ex_ds_test+0x44>
80000fd4:	00000000 	nop
80000fd8:	26522222 	addiu	s2,s2,8738
80000fdc:	10000009 	b	80001004 <n91_jalr_ex_ds_test+0x64>
80000fe0:	00000000 	nop
80000fe4:	26101111 	addiu	s0,s0,4369
80000fe8:	3c0d8000 	lui	t5,0x8000
80000fec:	25ad1004 	addiu	t5,t5,4100
80000ff0:	01a0f809 	jalr	t5
80000ff4:	21147fff 	addi	s4,t0,32767
80000ff8:	26100002 	addiu	s0,s0,2
80000ffc:	26100002 	addiu	s0,s0,2
80001000:	26100002 	addiu	s0,s0,2
80001004:	02129021 	addu	s2,s0,s2
80001008:	0180f821 	move	ra,t4
8000100c:	24141117 	li	s4,4375
80001010:	169200e1 	bne	s4,s2,80001398 <inst_error>
80001014:	00000000 	nop
80001018:	3c144444 	lui	s4,0x4444
8000101c:	168200de 	bne	s4,v0,80001398 <inst_error>
80001020:	00000000 	nop
80001024:	24020009 	li	v0,9
80001028:	00008021 	move	s0,zero
8000102c:	00009021 	move	s2,zero
80001030:	3c087fff 	lui	t0,0x7fff
80001034:	3508ffff 	ori	t0,t0,0xffff
80001038:	3c097fff 	lui	t1,0x7fff
8000103c:	3529ffff 	ori	t1,t1,0xffff
80001040:	3c0a8002 	lui	t2,0x8002
80001044:	354afff0 	ori	t2,t2,0xfff0
80001048:	ad480000 	sw	t0,0(t2)
8000104c:	10000004 	b	80001060 <n91_jalr_ex_ds_test+0xc0>
80001050:	00000000 	nop
80001054:	26522222 	addiu	s2,s2,8738
80001058:	10000009 	b	80001080 <n91_jalr_ex_ds_test+0xe0>
8000105c:	00000000 	nop
80001060:	26101111 	addiu	s0,s0,4369
80001064:	3c0d8000 	lui	t5,0x8000
80001068:	25ad1054 	addiu	t5,t5,4180
8000106c:	01a0f809 	jalr	t5
80001070:	21147fff 	addi	s4,t0,32767
80001074:	26100002 	addiu	s0,s0,2
80001078:	26100002 	addiu	s0,s0,2
8000107c:	26100002 	addiu	s0,s0,2
80001080:	02129021 	addu	s2,s0,s2
80001084:	0180f821 	move	ra,t4
80001088:	24141117 	li	s4,4375
8000108c:	169200c2 	bne	s4,s2,80001398 <inst_error>
80001090:	00000000 	nop
80001094:	3c144444 	lui	s4,0x4444
80001098:	168200bf 	bne	s4,v0,80001398 <inst_error>
8000109c:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n91_jalr_ex_ds.S:18
800010a0:	001f6021 	addu	t4,zero,ra
800010a4:	24020009 	li	v0,9
800010a8:	00008021 	move	s0,zero
800010ac:	00009021 	move	s2,zero
800010b0:	3c087fff 	lui	t0,0x7fff
800010b4:	3508ffff 	ori	t0,t0,0xffff
800010b8:	3c097fff 	lui	t1,0x7fff
800010bc:	3529ffff 	ori	t1,t1,0xffff
800010c0:	3c0a8002 	lui	t2,0x8002
800010c4:	354afff0 	ori	t2,t2,0xfff0
800010c8:	ad480000 	sw	t0,0(t2)
800010cc:	10000004 	b	800010e0 <n91_jalr_ex_ds_test+0x140>
800010d0:	00000000 	nop
800010d4:	26522222 	addiu	s2,s2,8738
800010d8:	10000009 	b	80001100 <n91_jalr_ex_ds_test+0x160>
800010dc:	00000000 	nop
800010e0:	26101111 	addiu	s0,s0,4369
800010e4:	3c0d8000 	lui	t5,0x8000
800010e8:	25ad1100 	addiu	t5,t5,4352
800010ec:	01a0f809 	jalr	t5
800010f0:	0109a020 	add	s4,t0,t1
800010f4:	26100002 	addiu	s0,s0,2
800010f8:	26100002 	addiu	s0,s0,2
800010fc:	26100002 	addiu	s0,s0,2
80001100:	02129021 	addu	s2,s0,s2
80001104:	0180f821 	move	ra,t4
80001108:	24141117 	li	s4,4375
8000110c:	169200a2 	bne	s4,s2,80001398 <inst_error>
80001110:	00000000 	nop
80001114:	3c144444 	lui	s4,0x4444
80001118:	1682009f 	bne	s4,v0,80001398 <inst_error>
8000111c:	00000000 	nop
80001120:	24020009 	li	v0,9
80001124:	00008021 	move	s0,zero
80001128:	00009021 	move	s2,zero
8000112c:	3c087fff 	lui	t0,0x7fff
80001130:	3508ffff 	ori	t0,t0,0xffff
80001134:	3c097fff 	lui	t1,0x7fff
80001138:	3529ffff 	ori	t1,t1,0xffff
8000113c:	3c0a8002 	lui	t2,0x8002
80001140:	354afff0 	ori	t2,t2,0xfff0
80001144:	ad480000 	sw	t0,0(t2)
80001148:	10000004 	b	8000115c <n91_jalr_ex_ds_test+0x1bc>
8000114c:	00000000 	nop
80001150:	26522222 	addiu	s2,s2,8738
80001154:	10000009 	b	8000117c <n91_jalr_ex_ds_test+0x1dc>
80001158:	00000000 	nop
8000115c:	26101111 	addiu	s0,s0,4369
80001160:	3c0d8000 	lui	t5,0x8000
80001164:	25ad1150 	addiu	t5,t5,4432
80001168:	01a0f809 	jalr	t5
8000116c:	0109a020 	add	s4,t0,t1
80001170:	26100002 	addiu	s0,s0,2
80001174:	26100002 	addiu	s0,s0,2
80001178:	26100002 	addiu	s0,s0,2
8000117c:	02129021 	addu	s2,s0,s2
80001180:	0180f821 	move	ra,t4
80001184:	24141117 	li	s4,4375
80001188:	16920083 	bne	s4,s2,80001398 <inst_error>
8000118c:	00000000 	nop
80001190:	3c144444 	lui	s4,0x4444
80001194:	16820080 	bne	s4,v0,80001398 <inst_error>
80001198:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n91_jalr_ex_ds.S:19
8000119c:	001f6021 	addu	t4,zero,ra
800011a0:	24020009 	li	v0,9
800011a4:	00008021 	move	s0,zero
800011a8:	00009021 	move	s2,zero
800011ac:	3c087fff 	lui	t0,0x7fff
800011b0:	3508ffff 	ori	t0,t0,0xffff
800011b4:	3c097fff 	lui	t1,0x7fff
800011b8:	3529ffff 	ori	t1,t1,0xffff
800011bc:	3c0a8002 	lui	t2,0x8002
800011c0:	354afff0 	ori	t2,t2,0xfff0
800011c4:	ad480000 	sw	t0,0(t2)
800011c8:	10000004 	b	800011dc <n91_jalr_ex_ds_test+0x23c>
800011cc:	00000000 	nop
800011d0:	26522222 	addiu	s2,s2,8738
800011d4:	10000009 	b	800011fc <n91_jalr_ex_ds_test+0x25c>
800011d8:	00000000 	nop
800011dc:	26101111 	addiu	s0,s0,4369
800011e0:	3c0d8000 	lui	t5,0x8000
800011e4:	25ad11fc 	addiu	t5,t5,4604
800011e8:	01a0f809 	jalr	t5
800011ec:	010aa022 	sub	s4,t0,t2
800011f0:	26100002 	addiu	s0,s0,2
800011f4:	26100002 	addiu	s0,s0,2
800011f8:	26100002 	addiu	s0,s0,2
800011fc:	02129021 	addu	s2,s0,s2
80001200:	0180f821 	move	ra,t4
80001204:	24141117 	li	s4,4375
80001208:	16920063 	bne	s4,s2,80001398 <inst_error>
8000120c:	00000000 	nop
80001210:	3c144444 	lui	s4,0x4444
80001214:	16820060 	bne	s4,v0,80001398 <inst_error>
80001218:	00000000 	nop
8000121c:	24020009 	li	v0,9
80001220:	00008021 	move	s0,zero
80001224:	00009021 	move	s2,zero
80001228:	3c087fff 	lui	t0,0x7fff
8000122c:	3508ffff 	ori	t0,t0,0xffff
80001230:	3c097fff 	lui	t1,0x7fff
80001234:	3529ffff 	ori	t1,t1,0xffff
80001238:	3c0a8002 	lui	t2,0x8002
8000123c:	354afff0 	ori	t2,t2,0xfff0
80001240:	ad480000 	sw	t0,0(t2)
80001244:	10000004 	b	80001258 <n91_jalr_ex_ds_test+0x2b8>
80001248:	00000000 	nop
8000124c:	26522222 	addiu	s2,s2,8738
80001250:	10000009 	b	80001278 <n91_jalr_ex_ds_test+0x2d8>
80001254:	00000000 	nop
80001258:	26101111 	addiu	s0,s0,4369
8000125c:	3c0d8000 	lui	t5,0x8000
80001260:	25ad124c 	addiu	t5,t5,4684
80001264:	01a0f809 	jalr	t5
80001268:	010aa022 	sub	s4,t0,t2
8000126c:	26100002 	addiu	s0,s0,2
80001270:	26100002 	addiu	s0,s0,2
80001274:	26100002 	addiu	s0,s0,2
80001278:	02129021 	addu	s2,s0,s2
8000127c:	0180f821 	move	ra,t4
80001280:	24141117 	li	s4,4375
80001284:	16920044 	bne	s4,s2,80001398 <inst_error>
80001288:	00000000 	nop
8000128c:	3c144444 	lui	s4,0x4444
80001290:	16820041 	bne	s4,v0,80001398 <inst_error>
80001294:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n91_jalr_ex_ds.S:26
80001298:	001f6021 	addu	t4,zero,ra
8000129c:	24020009 	li	v0,9
800012a0:	00008021 	move	s0,zero
800012a4:	00009021 	move	s2,zero
800012a8:	3c087fff 	lui	t0,0x7fff
800012ac:	3508ffff 	ori	t0,t0,0xffff
800012b0:	3c097fff 	lui	t1,0x7fff
800012b4:	3529ffff 	ori	t1,t1,0xffff
800012b8:	3c0a8002 	lui	t2,0x8002
800012bc:	354afff0 	ori	t2,t2,0xfff0
800012c0:	ad480000 	sw	t0,0(t2)
800012c4:	10000004 	b	800012d8 <n91_jalr_ex_ds_test+0x338>
800012c8:	00000000 	nop
800012cc:	26522222 	addiu	s2,s2,8738
800012d0:	10000009 	b	800012f8 <n91_jalr_ex_ds_test+0x358>
800012d4:	00000000 	nop
800012d8:	26101111 	addiu	s0,s0,4369
800012dc:	3c0d8000 	lui	t5,0x8000
800012e0:	25ad12f8 	addiu	t5,t5,4856
800012e4:	01a0f809 	jalr	t5
800012e8:	0000000c 	syscall
800012ec:	26100002 	addiu	s0,s0,2
800012f0:	26100002 	addiu	s0,s0,2
800012f4:	26100002 	addiu	s0,s0,2
800012f8:	02129021 	addu	s2,s0,s2
800012fc:	0180f821 	move	ra,t4
80001300:	24141117 	li	s4,4375
80001304:	16920024 	bne	s4,s2,80001398 <inst_error>
80001308:	00000000 	nop
8000130c:	3c144444 	lui	s4,0x4444
80001310:	16820021 	bne	s4,v0,80001398 <inst_error>
80001314:	00000000 	nop
80001318:	24020009 	li	v0,9
8000131c:	00008021 	move	s0,zero
80001320:	00009021 	move	s2,zero
80001324:	3c087fff 	lui	t0,0x7fff
80001328:	3508ffff 	ori	t0,t0,0xffff
8000132c:	3c097fff 	lui	t1,0x7fff
80001330:	3529ffff 	ori	t1,t1,0xffff
80001334:	3c0a8002 	lui	t2,0x8002
80001338:	354afff0 	ori	t2,t2,0xfff0
8000133c:	ad480000 	sw	t0,0(t2)
80001340:	10000004 	b	80001354 <n91_jalr_ex_ds_test+0x3b4>
80001344:	00000000 	nop
80001348:	26522222 	addiu	s2,s2,8738
8000134c:	10000009 	b	80001374 <n91_jalr_ex_ds_test+0x3d4>
80001350:	00000000 	nop
80001354:	26101111 	addiu	s0,s0,4369
80001358:	3c0d8000 	lui	t5,0x8000
8000135c:	25ad1348 	addiu	t5,t5,4936
80001360:	01a0f809 	jalr	t5
80001364:	0000000c 	syscall
80001368:	26100002 	addiu	s0,s0,2
8000136c:	26100002 	addiu	s0,s0,2
80001370:	26100002 	addiu	s0,s0,2
80001374:	02129021 	addu	s2,s0,s2
80001378:	0180f821 	move	ra,t4
8000137c:	24141117 	li	s4,4375
80001380:	16920005 	bne	s4,s2,80001398 <inst_error>
80001384:	00000000 	nop
80001388:	3c144444 	lui	s4,0x4444
8000138c:	16820002 	bne	s4,v0,80001398 <inst_error>
80001390:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n91_jalr_ex_ds.S:33
80001394:	26730001 	addiu	s3,s3,1

80001398 <inst_error>:
/home/ubuntu/functiontest/src/inst/n91_jalr_ex_ds.S:36
80001398:	00934025 	or	t0,a0,s3
/home/ubuntu/functiontest/src/inst/n91_jalr_ex_ds.S:37
8000139c:	ae280000 	sw	t0,0(s1)
/home/ubuntu/functiontest/src/inst/n91_jalr_ex_ds.S:38
800013a0:	03e00008 	jr	ra
/home/ubuntu/functiontest/src/inst/n91_jalr_ex_ds.S:39
800013a4:	00000000 	nop

800013a8 <n81_bne_ex_ds_test>:
/home/ubuntu/functiontest/src/inst/n81_bne_ex_ds.S:14
800013a8:	3c045100 	lui	a0,0x5100
/home/ubuntu/functiontest/src/inst/n81_bne_ex_ds.S:17
800013ac:	24020009 	li	v0,9
800013b0:	00008021 	move	s0,zero
800013b4:	00009021 	move	s2,zero
800013b8:	3c087fff 	lui	t0,0x7fff
800013bc:	3508ffff 	ori	t0,t0,0xffff
800013c0:	3c097fff 	lui	t1,0x7fff
800013c4:	3529ffff 	ori	t1,t1,0xffff
800013c8:	3c0a8002 	lui	t2,0x8002
800013cc:	354afff0 	ori	t2,t2,0xfff0
800013d0:	ad480000 	sw	t0,0(t2)
800013d4:	10000004 	b	800013e8 <n81_bne_ex_ds_test+0x40>
800013d8:	00000000 	nop
800013dc:	26522222 	addiu	s2,s2,8738
800013e0:	10000007 	b	80001400 <n81_bne_ex_ds_test+0x58>
800013e4:	00000000 	nop
800013e8:	26101111 	addiu	s0,s0,4369
800013ec:	15480004 	bne	t2,t0,80001400 <n81_bne_ex_ds_test+0x58>
800013f0:	21147fff 	addi	s4,t0,32767
800013f4:	26100002 	addiu	s0,s0,2
800013f8:	26100002 	addiu	s0,s0,2
800013fc:	26100002 	addiu	s0,s0,2
80001400:	02129021 	addu	s2,s0,s2
80001404:	24141117 	li	s4,4375
80001408:	169201a9 	bne	s4,s2,80001ab0 <inst_error>
8000140c:	00000000 	nop
80001410:	3c144444 	lui	s4,0x4444
80001414:	168201a6 	bne	s4,v0,80001ab0 <inst_error>
80001418:	00000000 	nop
8000141c:	24020009 	li	v0,9
80001420:	00008021 	move	s0,zero
80001424:	00009021 	move	s2,zero
80001428:	3c087fff 	lui	t0,0x7fff
8000142c:	3508ffff 	ori	t0,t0,0xffff
80001430:	3c097fff 	lui	t1,0x7fff
80001434:	3529ffff 	ori	t1,t1,0xffff
80001438:	3c0a8002 	lui	t2,0x8002
8000143c:	354afff0 	ori	t2,t2,0xfff0
80001440:	ad480000 	sw	t0,0(t2)
80001444:	10000004 	b	80001458 <n81_bne_ex_ds_test+0xb0>
80001448:	00000000 	nop
8000144c:	26522222 	addiu	s2,s2,8738
80001450:	10000007 	b	80001470 <n81_bne_ex_ds_test+0xc8>
80001454:	00000000 	nop
80001458:	26101111 	addiu	s0,s0,4369
8000145c:	15280004 	bne	t1,t0,80001470 <n81_bne_ex_ds_test+0xc8>
80001460:	21147fff 	addi	s4,t0,32767
80001464:	26100002 	addiu	s0,s0,2
80001468:	26100002 	addiu	s0,s0,2
8000146c:	26100002 	addiu	s0,s0,2
80001470:	02129021 	addu	s2,s0,s2
80001474:	24141117 	li	s4,4375
80001478:	1692018d 	bne	s4,s2,80001ab0 <inst_error>
8000147c:	00000000 	nop
80001480:	3c144444 	lui	s4,0x4444
80001484:	1682018a 	bne	s4,v0,80001ab0 <inst_error>
80001488:	00000000 	nop
8000148c:	24020009 	li	v0,9
80001490:	00008021 	move	s0,zero
80001494:	00009021 	move	s2,zero
80001498:	3c087fff 	lui	t0,0x7fff
8000149c:	3508ffff 	ori	t0,t0,0xffff
800014a0:	3c097fff 	lui	t1,0x7fff
800014a4:	3529ffff 	ori	t1,t1,0xffff
800014a8:	3c0a8002 	lui	t2,0x8002
800014ac:	354afff0 	ori	t2,t2,0xfff0
800014b0:	ad480000 	sw	t0,0(t2)
800014b4:	10000004 	b	800014c8 <n81_bne_ex_ds_test+0x120>
800014b8:	00000000 	nop
800014bc:	26522222 	addiu	s2,s2,8738
800014c0:	10000007 	b	800014e0 <n81_bne_ex_ds_test+0x138>
800014c4:	00000000 	nop
800014c8:	26101111 	addiu	s0,s0,4369
800014cc:	1548fffb 	bne	t2,t0,800014bc <n81_bne_ex_ds_test+0x114>
800014d0:	21147fff 	addi	s4,t0,32767
800014d4:	26100002 	addiu	s0,s0,2
800014d8:	26100002 	addiu	s0,s0,2
800014dc:	26100002 	addiu	s0,s0,2
800014e0:	02129021 	addu	s2,s0,s2
800014e4:	24141117 	li	s4,4375
800014e8:	16920171 	bne	s4,s2,80001ab0 <inst_error>
800014ec:	00000000 	nop
800014f0:	3c144444 	lui	s4,0x4444
800014f4:	1682016e 	bne	s4,v0,80001ab0 <inst_error>
800014f8:	00000000 	nop
800014fc:	24020009 	li	v0,9
80001500:	00008021 	move	s0,zero
80001504:	00009021 	move	s2,zero
80001508:	3c087fff 	lui	t0,0x7fff
8000150c:	3508ffff 	ori	t0,t0,0xffff
80001510:	3c097fff 	lui	t1,0x7fff
80001514:	3529ffff 	ori	t1,t1,0xffff
80001518:	3c0a8002 	lui	t2,0x8002
8000151c:	354afff0 	ori	t2,t2,0xfff0
80001520:	ad480000 	sw	t0,0(t2)
80001524:	10000004 	b	80001538 <n81_bne_ex_ds_test+0x190>
80001528:	00000000 	nop
8000152c:	26522222 	addiu	s2,s2,8738
80001530:	10000007 	b	80001550 <n81_bne_ex_ds_test+0x1a8>
80001534:	00000000 	nop
80001538:	26101111 	addiu	s0,s0,4369
8000153c:	1528fffb 	bne	t1,t0,8000152c <n81_bne_ex_ds_test+0x184>
80001540:	21147fff 	addi	s4,t0,32767
80001544:	26100002 	addiu	s0,s0,2
80001548:	26100002 	addiu	s0,s0,2
8000154c:	26100002 	addiu	s0,s0,2
80001550:	02129021 	addu	s2,s0,s2
80001554:	24141117 	li	s4,4375
80001558:	16920155 	bne	s4,s2,80001ab0 <inst_error>
8000155c:	00000000 	nop
80001560:	3c144444 	lui	s4,0x4444
80001564:	16820152 	bne	s4,v0,80001ab0 <inst_error>
80001568:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n81_bne_ex_ds.S:18
8000156c:	24020009 	li	v0,9
80001570:	00008021 	move	s0,zero
80001574:	00009021 	move	s2,zero
80001578:	3c087fff 	lui	t0,0x7fff
8000157c:	3508ffff 	ori	t0,t0,0xffff
80001580:	3c097fff 	lui	t1,0x7fff
80001584:	3529ffff 	ori	t1,t1,0xffff
80001588:	3c0a8002 	lui	t2,0x8002
8000158c:	354afff0 	ori	t2,t2,0xfff0
80001590:	ad480000 	sw	t0,0(t2)
80001594:	10000004 	b	800015a8 <n81_bne_ex_ds_test+0x200>
80001598:	00000000 	nop
8000159c:	26522222 	addiu	s2,s2,8738
800015a0:	10000007 	b	800015c0 <n81_bne_ex_ds_test+0x218>
800015a4:	00000000 	nop
800015a8:	26101111 	addiu	s0,s0,4369
800015ac:	15480004 	bne	t2,t0,800015c0 <n81_bne_ex_ds_test+0x218>
800015b0:	0109a020 	add	s4,t0,t1
800015b4:	26100002 	addiu	s0,s0,2
800015b8:	26100002 	addiu	s0,s0,2
800015bc:	26100002 	addiu	s0,s0,2
800015c0:	02129021 	addu	s2,s0,s2
800015c4:	24141117 	li	s4,4375
800015c8:	16920139 	bne	s4,s2,80001ab0 <inst_error>
800015cc:	00000000 	nop
800015d0:	3c144444 	lui	s4,0x4444
800015d4:	16820136 	bne	s4,v0,80001ab0 <inst_error>
800015d8:	00000000 	nop
800015dc:	24020009 	li	v0,9
800015e0:	00008021 	move	s0,zero
800015e4:	00009021 	move	s2,zero
800015e8:	3c087fff 	lui	t0,0x7fff
800015ec:	3508ffff 	ori	t0,t0,0xffff
800015f0:	3c097fff 	lui	t1,0x7fff
800015f4:	3529ffff 	ori	t1,t1,0xffff
800015f8:	3c0a8002 	lui	t2,0x8002
800015fc:	354afff0 	ori	t2,t2,0xfff0
80001600:	ad480000 	sw	t0,0(t2)
80001604:	10000004 	b	80001618 <n81_bne_ex_ds_test+0x270>
80001608:	00000000 	nop
8000160c:	26522222 	addiu	s2,s2,8738
80001610:	10000007 	b	80001630 <n81_bne_ex_ds_test+0x288>
80001614:	00000000 	nop
80001618:	26101111 	addiu	s0,s0,4369
8000161c:	15280004 	bne	t1,t0,80001630 <n81_bne_ex_ds_test+0x288>
80001620:	0109a020 	add	s4,t0,t1
80001624:	26100002 	addiu	s0,s0,2
80001628:	26100002 	addiu	s0,s0,2
8000162c:	26100002 	addiu	s0,s0,2
80001630:	02129021 	addu	s2,s0,s2
80001634:	24141117 	li	s4,4375
80001638:	1692011d 	bne	s4,s2,80001ab0 <inst_error>
8000163c:	00000000 	nop
80001640:	3c144444 	lui	s4,0x4444
80001644:	1682011a 	bne	s4,v0,80001ab0 <inst_error>
80001648:	00000000 	nop
8000164c:	24020009 	li	v0,9
80001650:	00008021 	move	s0,zero
80001654:	00009021 	move	s2,zero
80001658:	3c087fff 	lui	t0,0x7fff
8000165c:	3508ffff 	ori	t0,t0,0xffff
80001660:	3c097fff 	lui	t1,0x7fff
80001664:	3529ffff 	ori	t1,t1,0xffff
80001668:	3c0a8002 	lui	t2,0x8002
8000166c:	354afff0 	ori	t2,t2,0xfff0
80001670:	ad480000 	sw	t0,0(t2)
80001674:	10000004 	b	80001688 <n81_bne_ex_ds_test+0x2e0>
80001678:	00000000 	nop
8000167c:	26522222 	addiu	s2,s2,8738
80001680:	10000007 	b	800016a0 <n81_bne_ex_ds_test+0x2f8>
80001684:	00000000 	nop
80001688:	26101111 	addiu	s0,s0,4369
8000168c:	1548fffb 	bne	t2,t0,8000167c <n81_bne_ex_ds_test+0x2d4>
80001690:	0109a020 	add	s4,t0,t1
80001694:	26100002 	addiu	s0,s0,2
80001698:	26100002 	addiu	s0,s0,2
8000169c:	26100002 	addiu	s0,s0,2
800016a0:	02129021 	addu	s2,s0,s2
800016a4:	24141117 	li	s4,4375
800016a8:	16920101 	bne	s4,s2,80001ab0 <inst_error>
800016ac:	00000000 	nop
800016b0:	3c144444 	lui	s4,0x4444
800016b4:	168200fe 	bne	s4,v0,80001ab0 <inst_error>
800016b8:	00000000 	nop
800016bc:	24020009 	li	v0,9
800016c0:	00008021 	move	s0,zero
800016c4:	00009021 	move	s2,zero
800016c8:	3c087fff 	lui	t0,0x7fff
800016cc:	3508ffff 	ori	t0,t0,0xffff
800016d0:	3c097fff 	lui	t1,0x7fff
800016d4:	3529ffff 	ori	t1,t1,0xffff
800016d8:	3c0a8002 	lui	t2,0x8002
800016dc:	354afff0 	ori	t2,t2,0xfff0
800016e0:	ad480000 	sw	t0,0(t2)
800016e4:	10000004 	b	800016f8 <n81_bne_ex_ds_test+0x350>
800016e8:	00000000 	nop
800016ec:	26522222 	addiu	s2,s2,8738
800016f0:	10000007 	b	80001710 <n81_bne_ex_ds_test+0x368>
800016f4:	00000000 	nop
800016f8:	26101111 	addiu	s0,s0,4369
800016fc:	1528fffb 	bne	t1,t0,800016ec <n81_bne_ex_ds_test+0x344>
80001700:	0109a020 	add	s4,t0,t1
80001704:	26100002 	addiu	s0,s0,2
80001708:	26100002 	addiu	s0,s0,2
8000170c:	26100002 	addiu	s0,s0,2
80001710:	02129021 	addu	s2,s0,s2
80001714:	24141117 	li	s4,4375
80001718:	169200e5 	bne	s4,s2,80001ab0 <inst_error>
8000171c:	00000000 	nop
80001720:	3c144444 	lui	s4,0x4444
80001724:	168200e2 	bne	s4,v0,80001ab0 <inst_error>
80001728:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n81_bne_ex_ds.S:19
8000172c:	24020009 	li	v0,9
80001730:	00008021 	move	s0,zero
80001734:	00009021 	move	s2,zero
80001738:	3c087fff 	lui	t0,0x7fff
8000173c:	3508ffff 	ori	t0,t0,0xffff
80001740:	3c097fff 	lui	t1,0x7fff
80001744:	3529ffff 	ori	t1,t1,0xffff
80001748:	3c0a8002 	lui	t2,0x8002
8000174c:	354afff0 	ori	t2,t2,0xfff0
80001750:	ad480000 	sw	t0,0(t2)
80001754:	10000004 	b	80001768 <n81_bne_ex_ds_test+0x3c0>
80001758:	00000000 	nop
8000175c:	26522222 	addiu	s2,s2,8738
80001760:	10000007 	b	80001780 <n81_bne_ex_ds_test+0x3d8>
80001764:	00000000 	nop
80001768:	26101111 	addiu	s0,s0,4369
8000176c:	15480004 	bne	t2,t0,80001780 <n81_bne_ex_ds_test+0x3d8>
80001770:	010aa022 	sub	s4,t0,t2
80001774:	26100002 	addiu	s0,s0,2
80001778:	26100002 	addiu	s0,s0,2
8000177c:	26100002 	addiu	s0,s0,2
80001780:	02129021 	addu	s2,s0,s2
80001784:	24141117 	li	s4,4375
80001788:	169200c9 	bne	s4,s2,80001ab0 <inst_error>
8000178c:	00000000 	nop
80001790:	3c144444 	lui	s4,0x4444
80001794:	168200c6 	bne	s4,v0,80001ab0 <inst_error>
80001798:	00000000 	nop
8000179c:	24020009 	li	v0,9
800017a0:	00008021 	move	s0,zero
800017a4:	00009021 	move	s2,zero
800017a8:	3c087fff 	lui	t0,0x7fff
800017ac:	3508ffff 	ori	t0,t0,0xffff
800017b0:	3c097fff 	lui	t1,0x7fff
800017b4:	3529ffff 	ori	t1,t1,0xffff
800017b8:	3c0a8002 	lui	t2,0x8002
800017bc:	354afff0 	ori	t2,t2,0xfff0
800017c0:	ad480000 	sw	t0,0(t2)
800017c4:	10000004 	b	800017d8 <n81_bne_ex_ds_test+0x430>
800017c8:	00000000 	nop
800017cc:	26522222 	addiu	s2,s2,8738
800017d0:	10000007 	b	800017f0 <n81_bne_ex_ds_test+0x448>
800017d4:	00000000 	nop
800017d8:	26101111 	addiu	s0,s0,4369
800017dc:	15280004 	bne	t1,t0,800017f0 <n81_bne_ex_ds_test+0x448>
800017e0:	010aa022 	sub	s4,t0,t2
800017e4:	26100002 	addiu	s0,s0,2
800017e8:	26100002 	addiu	s0,s0,2
800017ec:	26100002 	addiu	s0,s0,2
800017f0:	02129021 	addu	s2,s0,s2
800017f4:	24141117 	li	s4,4375
800017f8:	169200ad 	bne	s4,s2,80001ab0 <inst_error>
800017fc:	00000000 	nop
80001800:	3c144444 	lui	s4,0x4444
80001804:	168200aa 	bne	s4,v0,80001ab0 <inst_error>
80001808:	00000000 	nop
8000180c:	24020009 	li	v0,9
80001810:	00008021 	move	s0,zero
80001814:	00009021 	move	s2,zero
80001818:	3c087fff 	lui	t0,0x7fff
8000181c:	3508ffff 	ori	t0,t0,0xffff
80001820:	3c097fff 	lui	t1,0x7fff
80001824:	3529ffff 	ori	t1,t1,0xffff
80001828:	3c0a8002 	lui	t2,0x8002
8000182c:	354afff0 	ori	t2,t2,0xfff0
80001830:	ad480000 	sw	t0,0(t2)
80001834:	10000004 	b	80001848 <n81_bne_ex_ds_test+0x4a0>
80001838:	00000000 	nop
8000183c:	26522222 	addiu	s2,s2,8738
80001840:	10000007 	b	80001860 <n81_bne_ex_ds_test+0x4b8>
80001844:	00000000 	nop
80001848:	26101111 	addiu	s0,s0,4369
8000184c:	1548fffb 	bne	t2,t0,8000183c <n81_bne_ex_ds_test+0x494>
80001850:	010aa022 	sub	s4,t0,t2
80001854:	26100002 	addiu	s0,s0,2
80001858:	26100002 	addiu	s0,s0,2
8000185c:	26100002 	addiu	s0,s0,2
80001860:	02129021 	addu	s2,s0,s2
80001864:	24141117 	li	s4,4375
80001868:	16920091 	bne	s4,s2,80001ab0 <inst_error>
8000186c:	00000000 	nop
80001870:	3c144444 	lui	s4,0x4444
80001874:	1682008e 	bne	s4,v0,80001ab0 <inst_error>
80001878:	00000000 	nop
8000187c:	24020009 	li	v0,9
80001880:	00008021 	move	s0,zero
80001884:	00009021 	move	s2,zero
80001888:	3c087fff 	lui	t0,0x7fff
8000188c:	3508ffff 	ori	t0,t0,0xffff
80001890:	3c097fff 	lui	t1,0x7fff
80001894:	3529ffff 	ori	t1,t1,0xffff
80001898:	3c0a8002 	lui	t2,0x8002
8000189c:	354afff0 	ori	t2,t2,0xfff0
800018a0:	ad480000 	sw	t0,0(t2)
800018a4:	10000004 	b	800018b8 <n81_bne_ex_ds_test+0x510>
800018a8:	00000000 	nop
800018ac:	26522222 	addiu	s2,s2,8738
800018b0:	10000007 	b	800018d0 <n81_bne_ex_ds_test+0x528>
800018b4:	00000000 	nop
800018b8:	26101111 	addiu	s0,s0,4369
800018bc:	1528fffb 	bne	t1,t0,800018ac <n81_bne_ex_ds_test+0x504>
800018c0:	010aa022 	sub	s4,t0,t2
800018c4:	26100002 	addiu	s0,s0,2
800018c8:	26100002 	addiu	s0,s0,2
800018cc:	26100002 	addiu	s0,s0,2
800018d0:	02129021 	addu	s2,s0,s2
800018d4:	24141117 	li	s4,4375
800018d8:	16920075 	bne	s4,s2,80001ab0 <inst_error>
800018dc:	00000000 	nop
800018e0:	3c144444 	lui	s4,0x4444
800018e4:	16820072 	bne	s4,v0,80001ab0 <inst_error>
800018e8:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n81_bne_ex_ds.S:26
800018ec:	24020009 	li	v0,9
800018f0:	00008021 	move	s0,zero
800018f4:	00009021 	move	s2,zero
800018f8:	3c087fff 	lui	t0,0x7fff
800018fc:	3508ffff 	ori	t0,t0,0xffff
80001900:	3c097fff 	lui	t1,0x7fff
80001904:	3529ffff 	ori	t1,t1,0xffff
80001908:	3c0a8002 	lui	t2,0x8002
8000190c:	354afff0 	ori	t2,t2,0xfff0
80001910:	ad480000 	sw	t0,0(t2)
80001914:	10000004 	b	80001928 <n81_bne_ex_ds_test+0x580>
80001918:	00000000 	nop
8000191c:	26522222 	addiu	s2,s2,8738
80001920:	10000007 	b	80001940 <n81_bne_ex_ds_test+0x598>
80001924:	00000000 	nop
80001928:	26101111 	addiu	s0,s0,4369
8000192c:	15480004 	bne	t2,t0,80001940 <n81_bne_ex_ds_test+0x598>
80001930:	0000000c 	syscall
80001934:	26100002 	addiu	s0,s0,2
80001938:	26100002 	addiu	s0,s0,2
8000193c:	26100002 	addiu	s0,s0,2
80001940:	02129021 	addu	s2,s0,s2
80001944:	24141117 	li	s4,4375
80001948:	16920059 	bne	s4,s2,80001ab0 <inst_error>
8000194c:	00000000 	nop
80001950:	3c144444 	lui	s4,0x4444
80001954:	16820056 	bne	s4,v0,80001ab0 <inst_error>
80001958:	00000000 	nop
8000195c:	24020009 	li	v0,9
80001960:	00008021 	move	s0,zero
80001964:	00009021 	move	s2,zero
80001968:	3c087fff 	lui	t0,0x7fff
8000196c:	3508ffff 	ori	t0,t0,0xffff
80001970:	3c097fff 	lui	t1,0x7fff
80001974:	3529ffff 	ori	t1,t1,0xffff
80001978:	3c0a8002 	lui	t2,0x8002
8000197c:	354afff0 	ori	t2,t2,0xfff0
80001980:	ad480000 	sw	t0,0(t2)
80001984:	10000004 	b	80001998 <n81_bne_ex_ds_test+0x5f0>
80001988:	00000000 	nop
8000198c:	26522222 	addiu	s2,s2,8738
80001990:	10000007 	b	800019b0 <n81_bne_ex_ds_test+0x608>
80001994:	00000000 	nop
80001998:	26101111 	addiu	s0,s0,4369
8000199c:	15280004 	bne	t1,t0,800019b0 <n81_bne_ex_ds_test+0x608>
800019a0:	0000000c 	syscall
800019a4:	26100002 	addiu	s0,s0,2
800019a8:	26100002 	addiu	s0,s0,2
800019ac:	26100002 	addiu	s0,s0,2
800019b0:	02129021 	addu	s2,s0,s2
800019b4:	24141117 	li	s4,4375
800019b8:	1692003d 	bne	s4,s2,80001ab0 <inst_error>
800019bc:	00000000 	nop
800019c0:	3c144444 	lui	s4,0x4444
800019c4:	1682003a 	bne	s4,v0,80001ab0 <inst_error>
800019c8:	00000000 	nop
800019cc:	24020009 	li	v0,9
800019d0:	00008021 	move	s0,zero
800019d4:	00009021 	move	s2,zero
800019d8:	3c087fff 	lui	t0,0x7fff
800019dc:	3508ffff 	ori	t0,t0,0xffff
800019e0:	3c097fff 	lui	t1,0x7fff
800019e4:	3529ffff 	ori	t1,t1,0xffff
800019e8:	3c0a8002 	lui	t2,0x8002
800019ec:	354afff0 	ori	t2,t2,0xfff0
800019f0:	ad480000 	sw	t0,0(t2)
800019f4:	10000004 	b	80001a08 <n81_bne_ex_ds_test+0x660>
800019f8:	00000000 	nop
800019fc:	26522222 	addiu	s2,s2,8738
80001a00:	10000007 	b	80001a20 <n81_bne_ex_ds_test+0x678>
80001a04:	00000000 	nop
80001a08:	26101111 	addiu	s0,s0,4369
80001a0c:	1548fffb 	bne	t2,t0,800019fc <n81_bne_ex_ds_test+0x654>
80001a10:	0000000c 	syscall
80001a14:	26100002 	addiu	s0,s0,2
80001a18:	26100002 	addiu	s0,s0,2
80001a1c:	26100002 	addiu	s0,s0,2
80001a20:	02129021 	addu	s2,s0,s2
80001a24:	24141117 	li	s4,4375
80001a28:	16920021 	bne	s4,s2,80001ab0 <inst_error>
80001a2c:	00000000 	nop
80001a30:	3c144444 	lui	s4,0x4444
80001a34:	1682001e 	bne	s4,v0,80001ab0 <inst_error>
80001a38:	00000000 	nop
80001a3c:	24020009 	li	v0,9
80001a40:	00008021 	move	s0,zero
80001a44:	00009021 	move	s2,zero
80001a48:	3c087fff 	lui	t0,0x7fff
80001a4c:	3508ffff 	ori	t0,t0,0xffff
80001a50:	3c097fff 	lui	t1,0x7fff
80001a54:	3529ffff 	ori	t1,t1,0xffff
80001a58:	3c0a8002 	lui	t2,0x8002
80001a5c:	354afff0 	ori	t2,t2,0xfff0
80001a60:	ad480000 	sw	t0,0(t2)
80001a64:	10000004 	b	80001a78 <n81_bne_ex_ds_test+0x6d0>
80001a68:	00000000 	nop
80001a6c:	26522222 	addiu	s2,s2,8738
80001a70:	10000007 	b	80001a90 <n81_bne_ex_ds_test+0x6e8>
80001a74:	00000000 	nop
80001a78:	26101111 	addiu	s0,s0,4369
80001a7c:	1528fffb 	bne	t1,t0,80001a6c <n81_bne_ex_ds_test+0x6c4>
80001a80:	0000000c 	syscall
80001a84:	26100002 	addiu	s0,s0,2
80001a88:	26100002 	addiu	s0,s0,2
80001a8c:	26100002 	addiu	s0,s0,2
80001a90:	02129021 	addu	s2,s0,s2
80001a94:	24141117 	li	s4,4375
80001a98:	16920005 	bne	s4,s2,80001ab0 <inst_error>
80001a9c:	00000000 	nop
80001aa0:	3c144444 	lui	s4,0x4444
80001aa4:	16820002 	bne	s4,v0,80001ab0 <inst_error>
80001aa8:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n81_bne_ex_ds.S:33
80001aac:	26730001 	addiu	s3,s3,1

80001ab0 <inst_error>:
/home/ubuntu/functiontest/src/inst/n81_bne_ex_ds.S:36
80001ab0:	00934025 	or	t0,a0,s3
/home/ubuntu/functiontest/src/inst/n81_bne_ex_ds.S:37
80001ab4:	ae280000 	sw	t0,0(s1)
/home/ubuntu/functiontest/src/inst/n81_bne_ex_ds.S:38
80001ab8:	03e00008 	jr	ra
/home/ubuntu/functiontest/src/inst/n81_bne_ex_ds.S:39
80001abc:	00000000 	nop

80001ac0 <n84_blez_ex_ds_test>:
/home/ubuntu/functiontest/src/inst/n84_blez_ex_ds.S:14
80001ac0:	3c045400 	lui	a0,0x5400
/home/ubuntu/functiontest/src/inst/n84_blez_ex_ds.S:17
80001ac4:	24020009 	li	v0,9
80001ac8:	00008021 	move	s0,zero
80001acc:	00009021 	move	s2,zero
80001ad0:	3c087fff 	lui	t0,0x7fff
80001ad4:	3508ffff 	ori	t0,t0,0xffff
80001ad8:	3c097fff 	lui	t1,0x7fff
80001adc:	3529ffff 	ori	t1,t1,0xffff
80001ae0:	3c0a8002 	lui	t2,0x8002
80001ae4:	354afff0 	ori	t2,t2,0xfff0
80001ae8:	ad480000 	sw	t0,0(t2)
80001aec:	10000004 	b	80001b00 <n84_blez_ex_ds_test+0x40>
80001af0:	00000000 	nop
80001af4:	26522222 	addiu	s2,s2,8738
80001af8:	10000007 	b	80001b18 <n84_blez_ex_ds_test+0x58>
80001afc:	00000000 	nop
80001b00:	26101111 	addiu	s0,s0,4369
80001b04:	19400004 	blez	t2,80001b18 <n84_blez_ex_ds_test+0x58>
80001b08:	21147fff 	addi	s4,t0,32767
80001b0c:	26100002 	addiu	s0,s0,2
80001b10:	26100002 	addiu	s0,s0,2
80001b14:	26100002 	addiu	s0,s0,2
80001b18:	02129021 	addu	s2,s0,s2
80001b1c:	24141117 	li	s4,4375
80001b20:	169201a9 	bne	s4,s2,800021c8 <inst_error>
80001b24:	00000000 	nop
80001b28:	3c144444 	lui	s4,0x4444
80001b2c:	168201a6 	bne	s4,v0,800021c8 <inst_error>
80001b30:	00000000 	nop
80001b34:	24020009 	li	v0,9
80001b38:	00008021 	move	s0,zero
80001b3c:	00009021 	move	s2,zero
80001b40:	3c087fff 	lui	t0,0x7fff
80001b44:	3508ffff 	ori	t0,t0,0xffff
80001b48:	3c097fff 	lui	t1,0x7fff
80001b4c:	3529ffff 	ori	t1,t1,0xffff
80001b50:	3c0a8002 	lui	t2,0x8002
80001b54:	354afff0 	ori	t2,t2,0xfff0
80001b58:	ad480000 	sw	t0,0(t2)
80001b5c:	10000004 	b	80001b70 <n84_blez_ex_ds_test+0xb0>
80001b60:	00000000 	nop
80001b64:	26522222 	addiu	s2,s2,8738
80001b68:	10000007 	b	80001b88 <n84_blez_ex_ds_test+0xc8>
80001b6c:	00000000 	nop
80001b70:	26101111 	addiu	s0,s0,4369
80001b74:	19000004 	blez	t0,80001b88 <n84_blez_ex_ds_test+0xc8>
80001b78:	21147fff 	addi	s4,t0,32767
80001b7c:	26100002 	addiu	s0,s0,2
80001b80:	26100002 	addiu	s0,s0,2
80001b84:	26100002 	addiu	s0,s0,2
80001b88:	02129021 	addu	s2,s0,s2
80001b8c:	24141117 	li	s4,4375
80001b90:	1692018d 	bne	s4,s2,800021c8 <inst_error>
80001b94:	00000000 	nop
80001b98:	3c144444 	lui	s4,0x4444
80001b9c:	1682018a 	bne	s4,v0,800021c8 <inst_error>
80001ba0:	00000000 	nop
80001ba4:	24020009 	li	v0,9
80001ba8:	00008021 	move	s0,zero
80001bac:	00009021 	move	s2,zero
80001bb0:	3c087fff 	lui	t0,0x7fff
80001bb4:	3508ffff 	ori	t0,t0,0xffff
80001bb8:	3c097fff 	lui	t1,0x7fff
80001bbc:	3529ffff 	ori	t1,t1,0xffff
80001bc0:	3c0a8002 	lui	t2,0x8002
80001bc4:	354afff0 	ori	t2,t2,0xfff0
80001bc8:	ad480000 	sw	t0,0(t2)
80001bcc:	10000004 	b	80001be0 <n84_blez_ex_ds_test+0x120>
80001bd0:	00000000 	nop
80001bd4:	26522222 	addiu	s2,s2,8738
80001bd8:	10000007 	b	80001bf8 <n84_blez_ex_ds_test+0x138>
80001bdc:	00000000 	nop
80001be0:	26101111 	addiu	s0,s0,4369
80001be4:	1940fffb 	blez	t2,80001bd4 <n84_blez_ex_ds_test+0x114>
80001be8:	21147fff 	addi	s4,t0,32767
80001bec:	26100002 	addiu	s0,s0,2
80001bf0:	26100002 	addiu	s0,s0,2
80001bf4:	26100002 	addiu	s0,s0,2
80001bf8:	02129021 	addu	s2,s0,s2
80001bfc:	24141117 	li	s4,4375
80001c00:	16920171 	bne	s4,s2,800021c8 <inst_error>
80001c04:	00000000 	nop
80001c08:	3c144444 	lui	s4,0x4444
80001c0c:	1682016e 	bne	s4,v0,800021c8 <inst_error>
80001c10:	00000000 	nop
80001c14:	24020009 	li	v0,9
80001c18:	00008021 	move	s0,zero
80001c1c:	00009021 	move	s2,zero
80001c20:	3c087fff 	lui	t0,0x7fff
80001c24:	3508ffff 	ori	t0,t0,0xffff
80001c28:	3c097fff 	lui	t1,0x7fff
80001c2c:	3529ffff 	ori	t1,t1,0xffff
80001c30:	3c0a8002 	lui	t2,0x8002
80001c34:	354afff0 	ori	t2,t2,0xfff0
80001c38:	ad480000 	sw	t0,0(t2)
80001c3c:	10000004 	b	80001c50 <n84_blez_ex_ds_test+0x190>
80001c40:	00000000 	nop
80001c44:	26522222 	addiu	s2,s2,8738
80001c48:	10000007 	b	80001c68 <n84_blez_ex_ds_test+0x1a8>
80001c4c:	00000000 	nop
80001c50:	26101111 	addiu	s0,s0,4369
80001c54:	1900fffb 	blez	t0,80001c44 <n84_blez_ex_ds_test+0x184>
80001c58:	21147fff 	addi	s4,t0,32767
80001c5c:	26100002 	addiu	s0,s0,2
80001c60:	26100002 	addiu	s0,s0,2
80001c64:	26100002 	addiu	s0,s0,2
80001c68:	02129021 	addu	s2,s0,s2
80001c6c:	24141117 	li	s4,4375
80001c70:	16920155 	bne	s4,s2,800021c8 <inst_error>
80001c74:	00000000 	nop
80001c78:	3c144444 	lui	s4,0x4444
80001c7c:	16820152 	bne	s4,v0,800021c8 <inst_error>
80001c80:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n84_blez_ex_ds.S:18
80001c84:	24020009 	li	v0,9
80001c88:	00008021 	move	s0,zero
80001c8c:	00009021 	move	s2,zero
80001c90:	3c087fff 	lui	t0,0x7fff
80001c94:	3508ffff 	ori	t0,t0,0xffff
80001c98:	3c097fff 	lui	t1,0x7fff
80001c9c:	3529ffff 	ori	t1,t1,0xffff
80001ca0:	3c0a8002 	lui	t2,0x8002
80001ca4:	354afff0 	ori	t2,t2,0xfff0
80001ca8:	ad480000 	sw	t0,0(t2)
80001cac:	10000004 	b	80001cc0 <n84_blez_ex_ds_test+0x200>
80001cb0:	00000000 	nop
80001cb4:	26522222 	addiu	s2,s2,8738
80001cb8:	10000007 	b	80001cd8 <n84_blez_ex_ds_test+0x218>
80001cbc:	00000000 	nop
80001cc0:	26101111 	addiu	s0,s0,4369
80001cc4:	19400004 	blez	t2,80001cd8 <n84_blez_ex_ds_test+0x218>
80001cc8:	0109a020 	add	s4,t0,t1
80001ccc:	26100002 	addiu	s0,s0,2
80001cd0:	26100002 	addiu	s0,s0,2
80001cd4:	26100002 	addiu	s0,s0,2
80001cd8:	02129021 	addu	s2,s0,s2
80001cdc:	24141117 	li	s4,4375
80001ce0:	16920139 	bne	s4,s2,800021c8 <inst_error>
80001ce4:	00000000 	nop
80001ce8:	3c144444 	lui	s4,0x4444
80001cec:	16820136 	bne	s4,v0,800021c8 <inst_error>
80001cf0:	00000000 	nop
80001cf4:	24020009 	li	v0,9
80001cf8:	00008021 	move	s0,zero
80001cfc:	00009021 	move	s2,zero
80001d00:	3c087fff 	lui	t0,0x7fff
80001d04:	3508ffff 	ori	t0,t0,0xffff
80001d08:	3c097fff 	lui	t1,0x7fff
80001d0c:	3529ffff 	ori	t1,t1,0xffff
80001d10:	3c0a8002 	lui	t2,0x8002
80001d14:	354afff0 	ori	t2,t2,0xfff0
80001d18:	ad480000 	sw	t0,0(t2)
80001d1c:	10000004 	b	80001d30 <n84_blez_ex_ds_test+0x270>
80001d20:	00000000 	nop
80001d24:	26522222 	addiu	s2,s2,8738
80001d28:	10000007 	b	80001d48 <n84_blez_ex_ds_test+0x288>
80001d2c:	00000000 	nop
80001d30:	26101111 	addiu	s0,s0,4369
80001d34:	19000004 	blez	t0,80001d48 <n84_blez_ex_ds_test+0x288>
80001d38:	0109a020 	add	s4,t0,t1
80001d3c:	26100002 	addiu	s0,s0,2
80001d40:	26100002 	addiu	s0,s0,2
80001d44:	26100002 	addiu	s0,s0,2
80001d48:	02129021 	addu	s2,s0,s2
80001d4c:	24141117 	li	s4,4375
80001d50:	1692011d 	bne	s4,s2,800021c8 <inst_error>
80001d54:	00000000 	nop
80001d58:	3c144444 	lui	s4,0x4444
80001d5c:	1682011a 	bne	s4,v0,800021c8 <inst_error>
80001d60:	00000000 	nop
80001d64:	24020009 	li	v0,9
80001d68:	00008021 	move	s0,zero
80001d6c:	00009021 	move	s2,zero
80001d70:	3c087fff 	lui	t0,0x7fff
80001d74:	3508ffff 	ori	t0,t0,0xffff
80001d78:	3c097fff 	lui	t1,0x7fff
80001d7c:	3529ffff 	ori	t1,t1,0xffff
80001d80:	3c0a8002 	lui	t2,0x8002
80001d84:	354afff0 	ori	t2,t2,0xfff0
80001d88:	ad480000 	sw	t0,0(t2)
80001d8c:	10000004 	b	80001da0 <n84_blez_ex_ds_test+0x2e0>
80001d90:	00000000 	nop
80001d94:	26522222 	addiu	s2,s2,8738
80001d98:	10000007 	b	80001db8 <n84_blez_ex_ds_test+0x2f8>
80001d9c:	00000000 	nop
80001da0:	26101111 	addiu	s0,s0,4369
80001da4:	1940fffb 	blez	t2,80001d94 <n84_blez_ex_ds_test+0x2d4>
80001da8:	0109a020 	add	s4,t0,t1
80001dac:	26100002 	addiu	s0,s0,2
80001db0:	26100002 	addiu	s0,s0,2
80001db4:	26100002 	addiu	s0,s0,2
80001db8:	02129021 	addu	s2,s0,s2
80001dbc:	24141117 	li	s4,4375
80001dc0:	16920101 	bne	s4,s2,800021c8 <inst_error>
80001dc4:	00000000 	nop
80001dc8:	3c144444 	lui	s4,0x4444
80001dcc:	168200fe 	bne	s4,v0,800021c8 <inst_error>
80001dd0:	00000000 	nop
80001dd4:	24020009 	li	v0,9
80001dd8:	00008021 	move	s0,zero
80001ddc:	00009021 	move	s2,zero
80001de0:	3c087fff 	lui	t0,0x7fff
80001de4:	3508ffff 	ori	t0,t0,0xffff
80001de8:	3c097fff 	lui	t1,0x7fff
80001dec:	3529ffff 	ori	t1,t1,0xffff
80001df0:	3c0a8002 	lui	t2,0x8002
80001df4:	354afff0 	ori	t2,t2,0xfff0
80001df8:	ad480000 	sw	t0,0(t2)
80001dfc:	10000004 	b	80001e10 <n84_blez_ex_ds_test+0x350>
80001e00:	00000000 	nop
80001e04:	26522222 	addiu	s2,s2,8738
80001e08:	10000007 	b	80001e28 <n84_blez_ex_ds_test+0x368>
80001e0c:	00000000 	nop
80001e10:	26101111 	addiu	s0,s0,4369
80001e14:	1900fffb 	blez	t0,80001e04 <n84_blez_ex_ds_test+0x344>
80001e18:	0109a020 	add	s4,t0,t1
80001e1c:	26100002 	addiu	s0,s0,2
80001e20:	26100002 	addiu	s0,s0,2
80001e24:	26100002 	addiu	s0,s0,2
80001e28:	02129021 	addu	s2,s0,s2
80001e2c:	24141117 	li	s4,4375
80001e30:	169200e5 	bne	s4,s2,800021c8 <inst_error>
80001e34:	00000000 	nop
80001e38:	3c144444 	lui	s4,0x4444
80001e3c:	168200e2 	bne	s4,v0,800021c8 <inst_error>
80001e40:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n84_blez_ex_ds.S:19
80001e44:	24020009 	li	v0,9
80001e48:	00008021 	move	s0,zero
80001e4c:	00009021 	move	s2,zero
80001e50:	3c087fff 	lui	t0,0x7fff
80001e54:	3508ffff 	ori	t0,t0,0xffff
80001e58:	3c097fff 	lui	t1,0x7fff
80001e5c:	3529ffff 	ori	t1,t1,0xffff
80001e60:	3c0a8002 	lui	t2,0x8002
80001e64:	354afff0 	ori	t2,t2,0xfff0
80001e68:	ad480000 	sw	t0,0(t2)
80001e6c:	10000004 	b	80001e80 <n84_blez_ex_ds_test+0x3c0>
80001e70:	00000000 	nop
80001e74:	26522222 	addiu	s2,s2,8738
80001e78:	10000007 	b	80001e98 <n84_blez_ex_ds_test+0x3d8>
80001e7c:	00000000 	nop
80001e80:	26101111 	addiu	s0,s0,4369
80001e84:	19400004 	blez	t2,80001e98 <n84_blez_ex_ds_test+0x3d8>
80001e88:	010aa022 	sub	s4,t0,t2
80001e8c:	26100002 	addiu	s0,s0,2
80001e90:	26100002 	addiu	s0,s0,2
80001e94:	26100002 	addiu	s0,s0,2
80001e98:	02129021 	addu	s2,s0,s2
80001e9c:	24141117 	li	s4,4375
80001ea0:	169200c9 	bne	s4,s2,800021c8 <inst_error>
80001ea4:	00000000 	nop
80001ea8:	3c144444 	lui	s4,0x4444
80001eac:	168200c6 	bne	s4,v0,800021c8 <inst_error>
80001eb0:	00000000 	nop
80001eb4:	24020009 	li	v0,9
80001eb8:	00008021 	move	s0,zero
80001ebc:	00009021 	move	s2,zero
80001ec0:	3c087fff 	lui	t0,0x7fff
80001ec4:	3508ffff 	ori	t0,t0,0xffff
80001ec8:	3c097fff 	lui	t1,0x7fff
80001ecc:	3529ffff 	ori	t1,t1,0xffff
80001ed0:	3c0a8002 	lui	t2,0x8002
80001ed4:	354afff0 	ori	t2,t2,0xfff0
80001ed8:	ad480000 	sw	t0,0(t2)
80001edc:	10000004 	b	80001ef0 <n84_blez_ex_ds_test+0x430>
80001ee0:	00000000 	nop
80001ee4:	26522222 	addiu	s2,s2,8738
80001ee8:	10000007 	b	80001f08 <n84_blez_ex_ds_test+0x448>
80001eec:	00000000 	nop
80001ef0:	26101111 	addiu	s0,s0,4369
80001ef4:	19000004 	blez	t0,80001f08 <n84_blez_ex_ds_test+0x448>
80001ef8:	010aa022 	sub	s4,t0,t2
80001efc:	26100002 	addiu	s0,s0,2
80001f00:	26100002 	addiu	s0,s0,2
80001f04:	26100002 	addiu	s0,s0,2
80001f08:	02129021 	addu	s2,s0,s2
80001f0c:	24141117 	li	s4,4375
80001f10:	169200ad 	bne	s4,s2,800021c8 <inst_error>
80001f14:	00000000 	nop
80001f18:	3c144444 	lui	s4,0x4444
80001f1c:	168200aa 	bne	s4,v0,800021c8 <inst_error>
80001f20:	00000000 	nop
80001f24:	24020009 	li	v0,9
80001f28:	00008021 	move	s0,zero
80001f2c:	00009021 	move	s2,zero
80001f30:	3c087fff 	lui	t0,0x7fff
80001f34:	3508ffff 	ori	t0,t0,0xffff
80001f38:	3c097fff 	lui	t1,0x7fff
80001f3c:	3529ffff 	ori	t1,t1,0xffff
80001f40:	3c0a8002 	lui	t2,0x8002
80001f44:	354afff0 	ori	t2,t2,0xfff0
80001f48:	ad480000 	sw	t0,0(t2)
80001f4c:	10000004 	b	80001f60 <n84_blez_ex_ds_test+0x4a0>
80001f50:	00000000 	nop
80001f54:	26522222 	addiu	s2,s2,8738
80001f58:	10000007 	b	80001f78 <n84_blez_ex_ds_test+0x4b8>
80001f5c:	00000000 	nop
80001f60:	26101111 	addiu	s0,s0,4369
80001f64:	1940fffb 	blez	t2,80001f54 <n84_blez_ex_ds_test+0x494>
80001f68:	010aa022 	sub	s4,t0,t2
80001f6c:	26100002 	addiu	s0,s0,2
80001f70:	26100002 	addiu	s0,s0,2
80001f74:	26100002 	addiu	s0,s0,2
80001f78:	02129021 	addu	s2,s0,s2
80001f7c:	24141117 	li	s4,4375
80001f80:	16920091 	bne	s4,s2,800021c8 <inst_error>
80001f84:	00000000 	nop
80001f88:	3c144444 	lui	s4,0x4444
80001f8c:	1682008e 	bne	s4,v0,800021c8 <inst_error>
80001f90:	00000000 	nop
80001f94:	24020009 	li	v0,9
80001f98:	00008021 	move	s0,zero
80001f9c:	00009021 	move	s2,zero
80001fa0:	3c087fff 	lui	t0,0x7fff
80001fa4:	3508ffff 	ori	t0,t0,0xffff
80001fa8:	3c097fff 	lui	t1,0x7fff
80001fac:	3529ffff 	ori	t1,t1,0xffff
80001fb0:	3c0a8002 	lui	t2,0x8002
80001fb4:	354afff0 	ori	t2,t2,0xfff0
80001fb8:	ad480000 	sw	t0,0(t2)
80001fbc:	10000004 	b	80001fd0 <n84_blez_ex_ds_test+0x510>
80001fc0:	00000000 	nop
80001fc4:	26522222 	addiu	s2,s2,8738
80001fc8:	10000007 	b	80001fe8 <n84_blez_ex_ds_test+0x528>
80001fcc:	00000000 	nop
80001fd0:	26101111 	addiu	s0,s0,4369
80001fd4:	1900fffb 	blez	t0,80001fc4 <n84_blez_ex_ds_test+0x504>
80001fd8:	010aa022 	sub	s4,t0,t2
80001fdc:	26100002 	addiu	s0,s0,2
80001fe0:	26100002 	addiu	s0,s0,2
80001fe4:	26100002 	addiu	s0,s0,2
80001fe8:	02129021 	addu	s2,s0,s2
80001fec:	24141117 	li	s4,4375
80001ff0:	16920075 	bne	s4,s2,800021c8 <inst_error>
80001ff4:	00000000 	nop
80001ff8:	3c144444 	lui	s4,0x4444
80001ffc:	16820072 	bne	s4,v0,800021c8 <inst_error>
80002000:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n84_blez_ex_ds.S:26
80002004:	24020009 	li	v0,9
80002008:	00008021 	move	s0,zero
8000200c:	00009021 	move	s2,zero
80002010:	3c087fff 	lui	t0,0x7fff
80002014:	3508ffff 	ori	t0,t0,0xffff
80002018:	3c097fff 	lui	t1,0x7fff
8000201c:	3529ffff 	ori	t1,t1,0xffff
80002020:	3c0a8002 	lui	t2,0x8002
80002024:	354afff0 	ori	t2,t2,0xfff0
80002028:	ad480000 	sw	t0,0(t2)
8000202c:	10000004 	b	80002040 <n84_blez_ex_ds_test+0x580>
80002030:	00000000 	nop
80002034:	26522222 	addiu	s2,s2,8738
80002038:	10000007 	b	80002058 <n84_blez_ex_ds_test+0x598>
8000203c:	00000000 	nop
80002040:	26101111 	addiu	s0,s0,4369
80002044:	19400004 	blez	t2,80002058 <n84_blez_ex_ds_test+0x598>
80002048:	0000000c 	syscall
8000204c:	26100002 	addiu	s0,s0,2
80002050:	26100002 	addiu	s0,s0,2
80002054:	26100002 	addiu	s0,s0,2
80002058:	02129021 	addu	s2,s0,s2
8000205c:	24141117 	li	s4,4375
80002060:	16920059 	bne	s4,s2,800021c8 <inst_error>
80002064:	00000000 	nop
80002068:	3c144444 	lui	s4,0x4444
8000206c:	16820056 	bne	s4,v0,800021c8 <inst_error>
80002070:	00000000 	nop
80002074:	24020009 	li	v0,9
80002078:	00008021 	move	s0,zero
8000207c:	00009021 	move	s2,zero
80002080:	3c087fff 	lui	t0,0x7fff
80002084:	3508ffff 	ori	t0,t0,0xffff
80002088:	3c097fff 	lui	t1,0x7fff
8000208c:	3529ffff 	ori	t1,t1,0xffff
80002090:	3c0a8002 	lui	t2,0x8002
80002094:	354afff0 	ori	t2,t2,0xfff0
80002098:	ad480000 	sw	t0,0(t2)
8000209c:	10000004 	b	800020b0 <n84_blez_ex_ds_test+0x5f0>
800020a0:	00000000 	nop
800020a4:	26522222 	addiu	s2,s2,8738
800020a8:	10000007 	b	800020c8 <n84_blez_ex_ds_test+0x608>
800020ac:	00000000 	nop
800020b0:	26101111 	addiu	s0,s0,4369
800020b4:	19000004 	blez	t0,800020c8 <n84_blez_ex_ds_test+0x608>
800020b8:	0000000c 	syscall
800020bc:	26100002 	addiu	s0,s0,2
800020c0:	26100002 	addiu	s0,s0,2
800020c4:	26100002 	addiu	s0,s0,2
800020c8:	02129021 	addu	s2,s0,s2
800020cc:	24141117 	li	s4,4375
800020d0:	1692003d 	bne	s4,s2,800021c8 <inst_error>
800020d4:	00000000 	nop
800020d8:	3c144444 	lui	s4,0x4444
800020dc:	1682003a 	bne	s4,v0,800021c8 <inst_error>
800020e0:	00000000 	nop
800020e4:	24020009 	li	v0,9
800020e8:	00008021 	move	s0,zero
800020ec:	00009021 	move	s2,zero
800020f0:	3c087fff 	lui	t0,0x7fff
800020f4:	3508ffff 	ori	t0,t0,0xffff
800020f8:	3c097fff 	lui	t1,0x7fff
800020fc:	3529ffff 	ori	t1,t1,0xffff
80002100:	3c0a8002 	lui	t2,0x8002
80002104:	354afff0 	ori	t2,t2,0xfff0
80002108:	ad480000 	sw	t0,0(t2)
8000210c:	10000004 	b	80002120 <n84_blez_ex_ds_test+0x660>
80002110:	00000000 	nop
80002114:	26522222 	addiu	s2,s2,8738
80002118:	10000007 	b	80002138 <n84_blez_ex_ds_test+0x678>
8000211c:	00000000 	nop
80002120:	26101111 	addiu	s0,s0,4369
80002124:	1940fffb 	blez	t2,80002114 <n84_blez_ex_ds_test+0x654>
80002128:	0000000c 	syscall
8000212c:	26100002 	addiu	s0,s0,2
80002130:	26100002 	addiu	s0,s0,2
80002134:	26100002 	addiu	s0,s0,2
80002138:	02129021 	addu	s2,s0,s2
8000213c:	24141117 	li	s4,4375
80002140:	16920021 	bne	s4,s2,800021c8 <inst_error>
80002144:	00000000 	nop
80002148:	3c144444 	lui	s4,0x4444
8000214c:	1682001e 	bne	s4,v0,800021c8 <inst_error>
80002150:	00000000 	nop
80002154:	24020009 	li	v0,9
80002158:	00008021 	move	s0,zero
8000215c:	00009021 	move	s2,zero
80002160:	3c087fff 	lui	t0,0x7fff
80002164:	3508ffff 	ori	t0,t0,0xffff
80002168:	3c097fff 	lui	t1,0x7fff
8000216c:	3529ffff 	ori	t1,t1,0xffff
80002170:	3c0a8002 	lui	t2,0x8002
80002174:	354afff0 	ori	t2,t2,0xfff0
80002178:	ad480000 	sw	t0,0(t2)
8000217c:	10000004 	b	80002190 <n84_blez_ex_ds_test+0x6d0>
80002180:	00000000 	nop
80002184:	26522222 	addiu	s2,s2,8738
80002188:	10000007 	b	800021a8 <n84_blez_ex_ds_test+0x6e8>
8000218c:	00000000 	nop
80002190:	26101111 	addiu	s0,s0,4369
80002194:	1900fffb 	blez	t0,80002184 <n84_blez_ex_ds_test+0x6c4>
80002198:	0000000c 	syscall
8000219c:	26100002 	addiu	s0,s0,2
800021a0:	26100002 	addiu	s0,s0,2
800021a4:	26100002 	addiu	s0,s0,2
800021a8:	02129021 	addu	s2,s0,s2
800021ac:	24141117 	li	s4,4375
800021b0:	16920005 	bne	s4,s2,800021c8 <inst_error>
800021b4:	00000000 	nop
800021b8:	3c144444 	lui	s4,0x4444
800021bc:	16820002 	bne	s4,v0,800021c8 <inst_error>
800021c0:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n84_blez_ex_ds.S:33
800021c4:	26730001 	addiu	s3,s3,1

800021c8 <inst_error>:
/home/ubuntu/functiontest/src/inst/n84_blez_ex_ds.S:36
800021c8:	00934025 	or	t0,a0,s3
/home/ubuntu/functiontest/src/inst/n84_blez_ex_ds.S:37
800021cc:	ae280000 	sw	t0,0(s1)
/home/ubuntu/functiontest/src/inst/n84_blez_ex_ds.S:38
800021d0:	03e00008 	jr	ra
/home/ubuntu/functiontest/src/inst/n84_blez_ex_ds.S:39
800021d4:	00000000 	nop

800021d8 <n82_bgez_ex_ds_test>:
/home/ubuntu/functiontest/src/inst/n82_bgez_ex_ds.S:14
800021d8:	3c045200 	lui	a0,0x5200
/home/ubuntu/functiontest/src/inst/n82_bgez_ex_ds.S:17
800021dc:	24020009 	li	v0,9
800021e0:	00008021 	move	s0,zero
800021e4:	00009021 	move	s2,zero
800021e8:	3c087fff 	lui	t0,0x7fff
800021ec:	3508ffff 	ori	t0,t0,0xffff
800021f0:	3c097fff 	lui	t1,0x7fff
800021f4:	3529ffff 	ori	t1,t1,0xffff
800021f8:	3c0a8002 	lui	t2,0x8002
800021fc:	354afff0 	ori	t2,t2,0xfff0
80002200:	ad480000 	sw	t0,0(t2)
80002204:	10000004 	b	80002218 <n82_bgez_ex_ds_test+0x40>
80002208:	00000000 	nop
8000220c:	26522222 	addiu	s2,s2,8738
80002210:	10000007 	b	80002230 <n82_bgez_ex_ds_test+0x58>
80002214:	00000000 	nop
80002218:	26101111 	addiu	s0,s0,4369
8000221c:	05010004 	bgez	t0,80002230 <n82_bgez_ex_ds_test+0x58>
80002220:	21147fff 	addi	s4,t0,32767
80002224:	26100002 	addiu	s0,s0,2
80002228:	26100002 	addiu	s0,s0,2
8000222c:	26100002 	addiu	s0,s0,2
80002230:	02129021 	addu	s2,s0,s2
80002234:	24141117 	li	s4,4375
80002238:	169201a9 	bne	s4,s2,800028e0 <inst_error>
8000223c:	00000000 	nop
80002240:	3c144444 	lui	s4,0x4444
80002244:	168201a6 	bne	s4,v0,800028e0 <inst_error>
80002248:	00000000 	nop
8000224c:	24020009 	li	v0,9
80002250:	00008021 	move	s0,zero
80002254:	00009021 	move	s2,zero
80002258:	3c087fff 	lui	t0,0x7fff
8000225c:	3508ffff 	ori	t0,t0,0xffff
80002260:	3c097fff 	lui	t1,0x7fff
80002264:	3529ffff 	ori	t1,t1,0xffff
80002268:	3c0a8002 	lui	t2,0x8002
8000226c:	354afff0 	ori	t2,t2,0xfff0
80002270:	ad480000 	sw	t0,0(t2)
80002274:	10000004 	b	80002288 <n82_bgez_ex_ds_test+0xb0>
80002278:	00000000 	nop
8000227c:	26522222 	addiu	s2,s2,8738
80002280:	10000007 	b	800022a0 <n82_bgez_ex_ds_test+0xc8>
80002284:	00000000 	nop
80002288:	26101111 	addiu	s0,s0,4369
8000228c:	05410004 	bgez	t2,800022a0 <n82_bgez_ex_ds_test+0xc8>
80002290:	21147fff 	addi	s4,t0,32767
80002294:	26100002 	addiu	s0,s0,2
80002298:	26100002 	addiu	s0,s0,2
8000229c:	26100002 	addiu	s0,s0,2
800022a0:	02129021 	addu	s2,s0,s2
800022a4:	24141117 	li	s4,4375
800022a8:	1692018d 	bne	s4,s2,800028e0 <inst_error>
800022ac:	00000000 	nop
800022b0:	3c144444 	lui	s4,0x4444
800022b4:	1682018a 	bne	s4,v0,800028e0 <inst_error>
800022b8:	00000000 	nop
800022bc:	24020009 	li	v0,9
800022c0:	00008021 	move	s0,zero
800022c4:	00009021 	move	s2,zero
800022c8:	3c087fff 	lui	t0,0x7fff
800022cc:	3508ffff 	ori	t0,t0,0xffff
800022d0:	3c097fff 	lui	t1,0x7fff
800022d4:	3529ffff 	ori	t1,t1,0xffff
800022d8:	3c0a8002 	lui	t2,0x8002
800022dc:	354afff0 	ori	t2,t2,0xfff0
800022e0:	ad480000 	sw	t0,0(t2)
800022e4:	10000004 	b	800022f8 <n82_bgez_ex_ds_test+0x120>
800022e8:	00000000 	nop
800022ec:	26522222 	addiu	s2,s2,8738
800022f0:	10000007 	b	80002310 <n82_bgez_ex_ds_test+0x138>
800022f4:	00000000 	nop
800022f8:	26101111 	addiu	s0,s0,4369
800022fc:	0501fffb 	bgez	t0,800022ec <n82_bgez_ex_ds_test+0x114>
80002300:	21147fff 	addi	s4,t0,32767
80002304:	26100002 	addiu	s0,s0,2
80002308:	26100002 	addiu	s0,s0,2
8000230c:	26100002 	addiu	s0,s0,2
80002310:	02129021 	addu	s2,s0,s2
80002314:	24141117 	li	s4,4375
80002318:	16920171 	bne	s4,s2,800028e0 <inst_error>
8000231c:	00000000 	nop
80002320:	3c144444 	lui	s4,0x4444
80002324:	1682016e 	bne	s4,v0,800028e0 <inst_error>
80002328:	00000000 	nop
8000232c:	24020009 	li	v0,9
80002330:	00008021 	move	s0,zero
80002334:	00009021 	move	s2,zero
80002338:	3c087fff 	lui	t0,0x7fff
8000233c:	3508ffff 	ori	t0,t0,0xffff
80002340:	3c097fff 	lui	t1,0x7fff
80002344:	3529ffff 	ori	t1,t1,0xffff
80002348:	3c0a8002 	lui	t2,0x8002
8000234c:	354afff0 	ori	t2,t2,0xfff0
80002350:	ad480000 	sw	t0,0(t2)
80002354:	10000004 	b	80002368 <n82_bgez_ex_ds_test+0x190>
80002358:	00000000 	nop
8000235c:	26522222 	addiu	s2,s2,8738
80002360:	10000007 	b	80002380 <n82_bgez_ex_ds_test+0x1a8>
80002364:	00000000 	nop
80002368:	26101111 	addiu	s0,s0,4369
8000236c:	0541fffb 	bgez	t2,8000235c <n82_bgez_ex_ds_test+0x184>
80002370:	21147fff 	addi	s4,t0,32767
80002374:	26100002 	addiu	s0,s0,2
80002378:	26100002 	addiu	s0,s0,2
8000237c:	26100002 	addiu	s0,s0,2
80002380:	02129021 	addu	s2,s0,s2
80002384:	24141117 	li	s4,4375
80002388:	16920155 	bne	s4,s2,800028e0 <inst_error>
8000238c:	00000000 	nop
80002390:	3c144444 	lui	s4,0x4444
80002394:	16820152 	bne	s4,v0,800028e0 <inst_error>
80002398:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n82_bgez_ex_ds.S:18
8000239c:	24020009 	li	v0,9
800023a0:	00008021 	move	s0,zero
800023a4:	00009021 	move	s2,zero
800023a8:	3c087fff 	lui	t0,0x7fff
800023ac:	3508ffff 	ori	t0,t0,0xffff
800023b0:	3c097fff 	lui	t1,0x7fff
800023b4:	3529ffff 	ori	t1,t1,0xffff
800023b8:	3c0a8002 	lui	t2,0x8002
800023bc:	354afff0 	ori	t2,t2,0xfff0
800023c0:	ad480000 	sw	t0,0(t2)
800023c4:	10000004 	b	800023d8 <n82_bgez_ex_ds_test+0x200>
800023c8:	00000000 	nop
800023cc:	26522222 	addiu	s2,s2,8738
800023d0:	10000007 	b	800023f0 <n82_bgez_ex_ds_test+0x218>
800023d4:	00000000 	nop
800023d8:	26101111 	addiu	s0,s0,4369
800023dc:	05010004 	bgez	t0,800023f0 <n82_bgez_ex_ds_test+0x218>
800023e0:	0109a020 	add	s4,t0,t1
800023e4:	26100002 	addiu	s0,s0,2
800023e8:	26100002 	addiu	s0,s0,2
800023ec:	26100002 	addiu	s0,s0,2
800023f0:	02129021 	addu	s2,s0,s2
800023f4:	24141117 	li	s4,4375
800023f8:	16920139 	bne	s4,s2,800028e0 <inst_error>
800023fc:	00000000 	nop
80002400:	3c144444 	lui	s4,0x4444
80002404:	16820136 	bne	s4,v0,800028e0 <inst_error>
80002408:	00000000 	nop
8000240c:	24020009 	li	v0,9
80002410:	00008021 	move	s0,zero
80002414:	00009021 	move	s2,zero
80002418:	3c087fff 	lui	t0,0x7fff
8000241c:	3508ffff 	ori	t0,t0,0xffff
80002420:	3c097fff 	lui	t1,0x7fff
80002424:	3529ffff 	ori	t1,t1,0xffff
80002428:	3c0a8002 	lui	t2,0x8002
8000242c:	354afff0 	ori	t2,t2,0xfff0
80002430:	ad480000 	sw	t0,0(t2)
80002434:	10000004 	b	80002448 <n82_bgez_ex_ds_test+0x270>
80002438:	00000000 	nop
8000243c:	26522222 	addiu	s2,s2,8738
80002440:	10000007 	b	80002460 <n82_bgez_ex_ds_test+0x288>
80002444:	00000000 	nop
80002448:	26101111 	addiu	s0,s0,4369
8000244c:	05410004 	bgez	t2,80002460 <n82_bgez_ex_ds_test+0x288>
80002450:	0109a020 	add	s4,t0,t1
80002454:	26100002 	addiu	s0,s0,2
80002458:	26100002 	addiu	s0,s0,2
8000245c:	26100002 	addiu	s0,s0,2
80002460:	02129021 	addu	s2,s0,s2
80002464:	24141117 	li	s4,4375
80002468:	1692011d 	bne	s4,s2,800028e0 <inst_error>
8000246c:	00000000 	nop
80002470:	3c144444 	lui	s4,0x4444
80002474:	1682011a 	bne	s4,v0,800028e0 <inst_error>
80002478:	00000000 	nop
8000247c:	24020009 	li	v0,9
80002480:	00008021 	move	s0,zero
80002484:	00009021 	move	s2,zero
80002488:	3c087fff 	lui	t0,0x7fff
8000248c:	3508ffff 	ori	t0,t0,0xffff
80002490:	3c097fff 	lui	t1,0x7fff
80002494:	3529ffff 	ori	t1,t1,0xffff
80002498:	3c0a8002 	lui	t2,0x8002
8000249c:	354afff0 	ori	t2,t2,0xfff0
800024a0:	ad480000 	sw	t0,0(t2)
800024a4:	10000004 	b	800024b8 <n82_bgez_ex_ds_test+0x2e0>
800024a8:	00000000 	nop
800024ac:	26522222 	addiu	s2,s2,8738
800024b0:	10000007 	b	800024d0 <n82_bgez_ex_ds_test+0x2f8>
800024b4:	00000000 	nop
800024b8:	26101111 	addiu	s0,s0,4369
800024bc:	0501fffb 	bgez	t0,800024ac <n82_bgez_ex_ds_test+0x2d4>
800024c0:	0109a020 	add	s4,t0,t1
800024c4:	26100002 	addiu	s0,s0,2
800024c8:	26100002 	addiu	s0,s0,2
800024cc:	26100002 	addiu	s0,s0,2
800024d0:	02129021 	addu	s2,s0,s2
800024d4:	24141117 	li	s4,4375
800024d8:	16920101 	bne	s4,s2,800028e0 <inst_error>
800024dc:	00000000 	nop
800024e0:	3c144444 	lui	s4,0x4444
800024e4:	168200fe 	bne	s4,v0,800028e0 <inst_error>
800024e8:	00000000 	nop
800024ec:	24020009 	li	v0,9
800024f0:	00008021 	move	s0,zero
800024f4:	00009021 	move	s2,zero
800024f8:	3c087fff 	lui	t0,0x7fff
800024fc:	3508ffff 	ori	t0,t0,0xffff
80002500:	3c097fff 	lui	t1,0x7fff
80002504:	3529ffff 	ori	t1,t1,0xffff
80002508:	3c0a8002 	lui	t2,0x8002
8000250c:	354afff0 	ori	t2,t2,0xfff0
80002510:	ad480000 	sw	t0,0(t2)
80002514:	10000004 	b	80002528 <n82_bgez_ex_ds_test+0x350>
80002518:	00000000 	nop
8000251c:	26522222 	addiu	s2,s2,8738
80002520:	10000007 	b	80002540 <n82_bgez_ex_ds_test+0x368>
80002524:	00000000 	nop
80002528:	26101111 	addiu	s0,s0,4369
8000252c:	0541fffb 	bgez	t2,8000251c <n82_bgez_ex_ds_test+0x344>
80002530:	0109a020 	add	s4,t0,t1
80002534:	26100002 	addiu	s0,s0,2
80002538:	26100002 	addiu	s0,s0,2
8000253c:	26100002 	addiu	s0,s0,2
80002540:	02129021 	addu	s2,s0,s2
80002544:	24141117 	li	s4,4375
80002548:	169200e5 	bne	s4,s2,800028e0 <inst_error>
8000254c:	00000000 	nop
80002550:	3c144444 	lui	s4,0x4444
80002554:	168200e2 	bne	s4,v0,800028e0 <inst_error>
80002558:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n82_bgez_ex_ds.S:19
8000255c:	24020009 	li	v0,9
80002560:	00008021 	move	s0,zero
80002564:	00009021 	move	s2,zero
80002568:	3c087fff 	lui	t0,0x7fff
8000256c:	3508ffff 	ori	t0,t0,0xffff
80002570:	3c097fff 	lui	t1,0x7fff
80002574:	3529ffff 	ori	t1,t1,0xffff
80002578:	3c0a8002 	lui	t2,0x8002
8000257c:	354afff0 	ori	t2,t2,0xfff0
80002580:	ad480000 	sw	t0,0(t2)
80002584:	10000004 	b	80002598 <n82_bgez_ex_ds_test+0x3c0>
80002588:	00000000 	nop
8000258c:	26522222 	addiu	s2,s2,8738
80002590:	10000007 	b	800025b0 <n82_bgez_ex_ds_test+0x3d8>
80002594:	00000000 	nop
80002598:	26101111 	addiu	s0,s0,4369
8000259c:	05010004 	bgez	t0,800025b0 <n82_bgez_ex_ds_test+0x3d8>
800025a0:	010aa022 	sub	s4,t0,t2
800025a4:	26100002 	addiu	s0,s0,2
800025a8:	26100002 	addiu	s0,s0,2
800025ac:	26100002 	addiu	s0,s0,2
800025b0:	02129021 	addu	s2,s0,s2
800025b4:	24141117 	li	s4,4375
800025b8:	169200c9 	bne	s4,s2,800028e0 <inst_error>
800025bc:	00000000 	nop
800025c0:	3c144444 	lui	s4,0x4444
800025c4:	168200c6 	bne	s4,v0,800028e0 <inst_error>
800025c8:	00000000 	nop
800025cc:	24020009 	li	v0,9
800025d0:	00008021 	move	s0,zero
800025d4:	00009021 	move	s2,zero
800025d8:	3c087fff 	lui	t0,0x7fff
800025dc:	3508ffff 	ori	t0,t0,0xffff
800025e0:	3c097fff 	lui	t1,0x7fff
800025e4:	3529ffff 	ori	t1,t1,0xffff
800025e8:	3c0a8002 	lui	t2,0x8002
800025ec:	354afff0 	ori	t2,t2,0xfff0
800025f0:	ad480000 	sw	t0,0(t2)
800025f4:	10000004 	b	80002608 <n82_bgez_ex_ds_test+0x430>
800025f8:	00000000 	nop
800025fc:	26522222 	addiu	s2,s2,8738
80002600:	10000007 	b	80002620 <n82_bgez_ex_ds_test+0x448>
80002604:	00000000 	nop
80002608:	26101111 	addiu	s0,s0,4369
8000260c:	05410004 	bgez	t2,80002620 <n82_bgez_ex_ds_test+0x448>
80002610:	010aa022 	sub	s4,t0,t2
80002614:	26100002 	addiu	s0,s0,2
80002618:	26100002 	addiu	s0,s0,2
8000261c:	26100002 	addiu	s0,s0,2
80002620:	02129021 	addu	s2,s0,s2
80002624:	24141117 	li	s4,4375
80002628:	169200ad 	bne	s4,s2,800028e0 <inst_error>
8000262c:	00000000 	nop
80002630:	3c144444 	lui	s4,0x4444
80002634:	168200aa 	bne	s4,v0,800028e0 <inst_error>
80002638:	00000000 	nop
8000263c:	24020009 	li	v0,9
80002640:	00008021 	move	s0,zero
80002644:	00009021 	move	s2,zero
80002648:	3c087fff 	lui	t0,0x7fff
8000264c:	3508ffff 	ori	t0,t0,0xffff
80002650:	3c097fff 	lui	t1,0x7fff
80002654:	3529ffff 	ori	t1,t1,0xffff
80002658:	3c0a8002 	lui	t2,0x8002
8000265c:	354afff0 	ori	t2,t2,0xfff0
80002660:	ad480000 	sw	t0,0(t2)
80002664:	10000004 	b	80002678 <n82_bgez_ex_ds_test+0x4a0>
80002668:	00000000 	nop
8000266c:	26522222 	addiu	s2,s2,8738
80002670:	10000007 	b	80002690 <n82_bgez_ex_ds_test+0x4b8>
80002674:	00000000 	nop
80002678:	26101111 	addiu	s0,s0,4369
8000267c:	0501fffb 	bgez	t0,8000266c <n82_bgez_ex_ds_test+0x494>
80002680:	010aa022 	sub	s4,t0,t2
80002684:	26100002 	addiu	s0,s0,2
80002688:	26100002 	addiu	s0,s0,2
8000268c:	26100002 	addiu	s0,s0,2
80002690:	02129021 	addu	s2,s0,s2
80002694:	24141117 	li	s4,4375
80002698:	16920091 	bne	s4,s2,800028e0 <inst_error>
8000269c:	00000000 	nop
800026a0:	3c144444 	lui	s4,0x4444
800026a4:	1682008e 	bne	s4,v0,800028e0 <inst_error>
800026a8:	00000000 	nop
800026ac:	24020009 	li	v0,9
800026b0:	00008021 	move	s0,zero
800026b4:	00009021 	move	s2,zero
800026b8:	3c087fff 	lui	t0,0x7fff
800026bc:	3508ffff 	ori	t0,t0,0xffff
800026c0:	3c097fff 	lui	t1,0x7fff
800026c4:	3529ffff 	ori	t1,t1,0xffff
800026c8:	3c0a8002 	lui	t2,0x8002
800026cc:	354afff0 	ori	t2,t2,0xfff0
800026d0:	ad480000 	sw	t0,0(t2)
800026d4:	10000004 	b	800026e8 <n82_bgez_ex_ds_test+0x510>
800026d8:	00000000 	nop
800026dc:	26522222 	addiu	s2,s2,8738
800026e0:	10000007 	b	80002700 <n82_bgez_ex_ds_test+0x528>
800026e4:	00000000 	nop
800026e8:	26101111 	addiu	s0,s0,4369
800026ec:	0541fffb 	bgez	t2,800026dc <n82_bgez_ex_ds_test+0x504>
800026f0:	010aa022 	sub	s4,t0,t2
800026f4:	26100002 	addiu	s0,s0,2
800026f8:	26100002 	addiu	s0,s0,2
800026fc:	26100002 	addiu	s0,s0,2
80002700:	02129021 	addu	s2,s0,s2
80002704:	24141117 	li	s4,4375
80002708:	16920075 	bne	s4,s2,800028e0 <inst_error>
8000270c:	00000000 	nop
80002710:	3c144444 	lui	s4,0x4444
80002714:	16820072 	bne	s4,v0,800028e0 <inst_error>
80002718:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n82_bgez_ex_ds.S:26
8000271c:	24020009 	li	v0,9
80002720:	00008021 	move	s0,zero
80002724:	00009021 	move	s2,zero
80002728:	3c087fff 	lui	t0,0x7fff
8000272c:	3508ffff 	ori	t0,t0,0xffff
80002730:	3c097fff 	lui	t1,0x7fff
80002734:	3529ffff 	ori	t1,t1,0xffff
80002738:	3c0a8002 	lui	t2,0x8002
8000273c:	354afff0 	ori	t2,t2,0xfff0
80002740:	ad480000 	sw	t0,0(t2)
80002744:	10000004 	b	80002758 <n82_bgez_ex_ds_test+0x580>
80002748:	00000000 	nop
8000274c:	26522222 	addiu	s2,s2,8738
80002750:	10000007 	b	80002770 <n82_bgez_ex_ds_test+0x598>
80002754:	00000000 	nop
80002758:	26101111 	addiu	s0,s0,4369
8000275c:	05010004 	bgez	t0,80002770 <n82_bgez_ex_ds_test+0x598>
80002760:	0000000c 	syscall
80002764:	26100002 	addiu	s0,s0,2
80002768:	26100002 	addiu	s0,s0,2
8000276c:	26100002 	addiu	s0,s0,2
80002770:	02129021 	addu	s2,s0,s2
80002774:	24141117 	li	s4,4375
80002778:	16920059 	bne	s4,s2,800028e0 <inst_error>
8000277c:	00000000 	nop
80002780:	3c144444 	lui	s4,0x4444
80002784:	16820056 	bne	s4,v0,800028e0 <inst_error>
80002788:	00000000 	nop
8000278c:	24020009 	li	v0,9
80002790:	00008021 	move	s0,zero
80002794:	00009021 	move	s2,zero
80002798:	3c087fff 	lui	t0,0x7fff
8000279c:	3508ffff 	ori	t0,t0,0xffff
800027a0:	3c097fff 	lui	t1,0x7fff
800027a4:	3529ffff 	ori	t1,t1,0xffff
800027a8:	3c0a8002 	lui	t2,0x8002
800027ac:	354afff0 	ori	t2,t2,0xfff0
800027b0:	ad480000 	sw	t0,0(t2)
800027b4:	10000004 	b	800027c8 <n82_bgez_ex_ds_test+0x5f0>
800027b8:	00000000 	nop
800027bc:	26522222 	addiu	s2,s2,8738
800027c0:	10000007 	b	800027e0 <n82_bgez_ex_ds_test+0x608>
800027c4:	00000000 	nop
800027c8:	26101111 	addiu	s0,s0,4369
800027cc:	05410004 	bgez	t2,800027e0 <n82_bgez_ex_ds_test+0x608>
800027d0:	0000000c 	syscall
800027d4:	26100002 	addiu	s0,s0,2
800027d8:	26100002 	addiu	s0,s0,2
800027dc:	26100002 	addiu	s0,s0,2
800027e0:	02129021 	addu	s2,s0,s2
800027e4:	24141117 	li	s4,4375
800027e8:	1692003d 	bne	s4,s2,800028e0 <inst_error>
800027ec:	00000000 	nop
800027f0:	3c144444 	lui	s4,0x4444
800027f4:	1682003a 	bne	s4,v0,800028e0 <inst_error>
800027f8:	00000000 	nop
800027fc:	24020009 	li	v0,9
80002800:	00008021 	move	s0,zero
80002804:	00009021 	move	s2,zero
80002808:	3c087fff 	lui	t0,0x7fff
8000280c:	3508ffff 	ori	t0,t0,0xffff
80002810:	3c097fff 	lui	t1,0x7fff
80002814:	3529ffff 	ori	t1,t1,0xffff
80002818:	3c0a8002 	lui	t2,0x8002
8000281c:	354afff0 	ori	t2,t2,0xfff0
80002820:	ad480000 	sw	t0,0(t2)
80002824:	10000004 	b	80002838 <n82_bgez_ex_ds_test+0x660>
80002828:	00000000 	nop
8000282c:	26522222 	addiu	s2,s2,8738
80002830:	10000007 	b	80002850 <n82_bgez_ex_ds_test+0x678>
80002834:	00000000 	nop
80002838:	26101111 	addiu	s0,s0,4369
8000283c:	0501fffb 	bgez	t0,8000282c <n82_bgez_ex_ds_test+0x654>
80002840:	0000000c 	syscall
80002844:	26100002 	addiu	s0,s0,2
80002848:	26100002 	addiu	s0,s0,2
8000284c:	26100002 	addiu	s0,s0,2
80002850:	02129021 	addu	s2,s0,s2
80002854:	24141117 	li	s4,4375
80002858:	16920021 	bne	s4,s2,800028e0 <inst_error>
8000285c:	00000000 	nop
80002860:	3c144444 	lui	s4,0x4444
80002864:	1682001e 	bne	s4,v0,800028e0 <inst_error>
80002868:	00000000 	nop
8000286c:	24020009 	li	v0,9
80002870:	00008021 	move	s0,zero
80002874:	00009021 	move	s2,zero
80002878:	3c087fff 	lui	t0,0x7fff
8000287c:	3508ffff 	ori	t0,t0,0xffff
80002880:	3c097fff 	lui	t1,0x7fff
80002884:	3529ffff 	ori	t1,t1,0xffff
80002888:	3c0a8002 	lui	t2,0x8002
8000288c:	354afff0 	ori	t2,t2,0xfff0
80002890:	ad480000 	sw	t0,0(t2)
80002894:	10000004 	b	800028a8 <n82_bgez_ex_ds_test+0x6d0>
80002898:	00000000 	nop
8000289c:	26522222 	addiu	s2,s2,8738
800028a0:	10000007 	b	800028c0 <n82_bgez_ex_ds_test+0x6e8>
800028a4:	00000000 	nop
800028a8:	26101111 	addiu	s0,s0,4369
800028ac:	0541fffb 	bgez	t2,8000289c <n82_bgez_ex_ds_test+0x6c4>
800028b0:	0000000c 	syscall
800028b4:	26100002 	addiu	s0,s0,2
800028b8:	26100002 	addiu	s0,s0,2
800028bc:	26100002 	addiu	s0,s0,2
800028c0:	02129021 	addu	s2,s0,s2
800028c4:	24141117 	li	s4,4375
800028c8:	16920005 	bne	s4,s2,800028e0 <inst_error>
800028cc:	00000000 	nop
800028d0:	3c144444 	lui	s4,0x4444
800028d4:	16820002 	bne	s4,v0,800028e0 <inst_error>
800028d8:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n82_bgez_ex_ds.S:33
800028dc:	26730001 	addiu	s3,s3,1

800028e0 <inst_error>:
/home/ubuntu/functiontest/src/inst/n82_bgez_ex_ds.S:36
800028e0:	00934025 	or	t0,a0,s3
/home/ubuntu/functiontest/src/inst/n82_bgez_ex_ds.S:37
800028e4:	ae280000 	sw	t0,0(s1)
/home/ubuntu/functiontest/src/inst/n82_bgez_ex_ds.S:38
800028e8:	03e00008 	jr	ra
/home/ubuntu/functiontest/src/inst/n82_bgez_ex_ds.S:39
800028ec:	00000000 	nop

800028f0 <n80_beq_ex_ds_test>:
/home/ubuntu/functiontest/src/inst/n80_beq_ex_ds.S:14
800028f0:	3c045000 	lui	a0,0x5000
/home/ubuntu/functiontest/src/inst/n80_beq_ex_ds.S:17
800028f4:	24020009 	li	v0,9
800028f8:	00008021 	move	s0,zero
800028fc:	00009021 	move	s2,zero
80002900:	3c087fff 	lui	t0,0x7fff
80002904:	3508ffff 	ori	t0,t0,0xffff
80002908:	3c097fff 	lui	t1,0x7fff
8000290c:	3529ffff 	ori	t1,t1,0xffff
80002910:	3c0a8002 	lui	t2,0x8002
80002914:	354afff0 	ori	t2,t2,0xfff0
80002918:	ad480000 	sw	t0,0(t2)
8000291c:	10000004 	b	80002930 <n80_beq_ex_ds_test+0x40>
80002920:	00000000 	nop
80002924:	26522222 	addiu	s2,s2,8738
80002928:	10000007 	b	80002948 <n80_beq_ex_ds_test+0x58>
8000292c:	00000000 	nop
80002930:	26101111 	addiu	s0,s0,4369
80002934:	11280004 	beq	t1,t0,80002948 <n80_beq_ex_ds_test+0x58>
80002938:	21147fff 	addi	s4,t0,32767
8000293c:	26100002 	addiu	s0,s0,2
80002940:	26100002 	addiu	s0,s0,2
80002944:	26100002 	addiu	s0,s0,2
80002948:	02129021 	addu	s2,s0,s2
8000294c:	24141117 	li	s4,4375
80002950:	169201a9 	bne	s4,s2,80002ff8 <inst_error>
80002954:	00000000 	nop
80002958:	3c144444 	lui	s4,0x4444
8000295c:	168201a6 	bne	s4,v0,80002ff8 <inst_error>
80002960:	00000000 	nop
80002964:	24020009 	li	v0,9
80002968:	00008021 	move	s0,zero
8000296c:	00009021 	move	s2,zero
80002970:	3c087fff 	lui	t0,0x7fff
80002974:	3508ffff 	ori	t0,t0,0xffff
80002978:	3c097fff 	lui	t1,0x7fff
8000297c:	3529ffff 	ori	t1,t1,0xffff
80002980:	3c0a8002 	lui	t2,0x8002
80002984:	354afff0 	ori	t2,t2,0xfff0
80002988:	ad480000 	sw	t0,0(t2)
8000298c:	10000004 	b	800029a0 <n80_beq_ex_ds_test+0xb0>
80002990:	00000000 	nop
80002994:	26522222 	addiu	s2,s2,8738
80002998:	10000007 	b	800029b8 <n80_beq_ex_ds_test+0xc8>
8000299c:	00000000 	nop
800029a0:	26101111 	addiu	s0,s0,4369
800029a4:	11480004 	beq	t2,t0,800029b8 <n80_beq_ex_ds_test+0xc8>
800029a8:	21147fff 	addi	s4,t0,32767
800029ac:	26100002 	addiu	s0,s0,2
800029b0:	26100002 	addiu	s0,s0,2
800029b4:	26100002 	addiu	s0,s0,2
800029b8:	02129021 	addu	s2,s0,s2
800029bc:	24141117 	li	s4,4375
800029c0:	1692018d 	bne	s4,s2,80002ff8 <inst_error>
800029c4:	00000000 	nop
800029c8:	3c144444 	lui	s4,0x4444
800029cc:	1682018a 	bne	s4,v0,80002ff8 <inst_error>
800029d0:	00000000 	nop
800029d4:	24020009 	li	v0,9
800029d8:	00008021 	move	s0,zero
800029dc:	00009021 	move	s2,zero
800029e0:	3c087fff 	lui	t0,0x7fff
800029e4:	3508ffff 	ori	t0,t0,0xffff
800029e8:	3c097fff 	lui	t1,0x7fff
800029ec:	3529ffff 	ori	t1,t1,0xffff
800029f0:	3c0a8002 	lui	t2,0x8002
800029f4:	354afff0 	ori	t2,t2,0xfff0
800029f8:	ad480000 	sw	t0,0(t2)
800029fc:	10000004 	b	80002a10 <n80_beq_ex_ds_test+0x120>
80002a00:	00000000 	nop
80002a04:	26522222 	addiu	s2,s2,8738
80002a08:	10000007 	b	80002a28 <n80_beq_ex_ds_test+0x138>
80002a0c:	00000000 	nop
80002a10:	26101111 	addiu	s0,s0,4369
80002a14:	1128fffb 	beq	t1,t0,80002a04 <n80_beq_ex_ds_test+0x114>
80002a18:	21147fff 	addi	s4,t0,32767
80002a1c:	26100002 	addiu	s0,s0,2
80002a20:	26100002 	addiu	s0,s0,2
80002a24:	26100002 	addiu	s0,s0,2
80002a28:	02129021 	addu	s2,s0,s2
80002a2c:	24141117 	li	s4,4375
80002a30:	16920171 	bne	s4,s2,80002ff8 <inst_error>
80002a34:	00000000 	nop
80002a38:	3c144444 	lui	s4,0x4444
80002a3c:	1682016e 	bne	s4,v0,80002ff8 <inst_error>
80002a40:	00000000 	nop
80002a44:	24020009 	li	v0,9
80002a48:	00008021 	move	s0,zero
80002a4c:	00009021 	move	s2,zero
80002a50:	3c087fff 	lui	t0,0x7fff
80002a54:	3508ffff 	ori	t0,t0,0xffff
80002a58:	3c097fff 	lui	t1,0x7fff
80002a5c:	3529ffff 	ori	t1,t1,0xffff
80002a60:	3c0a8002 	lui	t2,0x8002
80002a64:	354afff0 	ori	t2,t2,0xfff0
80002a68:	ad480000 	sw	t0,0(t2)
80002a6c:	10000004 	b	80002a80 <n80_beq_ex_ds_test+0x190>
80002a70:	00000000 	nop
80002a74:	26522222 	addiu	s2,s2,8738
80002a78:	10000007 	b	80002a98 <n80_beq_ex_ds_test+0x1a8>
80002a7c:	00000000 	nop
80002a80:	26101111 	addiu	s0,s0,4369
80002a84:	1148fffb 	beq	t2,t0,80002a74 <n80_beq_ex_ds_test+0x184>
80002a88:	21147fff 	addi	s4,t0,32767
80002a8c:	26100002 	addiu	s0,s0,2
80002a90:	26100002 	addiu	s0,s0,2
80002a94:	26100002 	addiu	s0,s0,2
80002a98:	02129021 	addu	s2,s0,s2
80002a9c:	24141117 	li	s4,4375
80002aa0:	16920155 	bne	s4,s2,80002ff8 <inst_error>
80002aa4:	00000000 	nop
80002aa8:	3c144444 	lui	s4,0x4444
80002aac:	16820152 	bne	s4,v0,80002ff8 <inst_error>
80002ab0:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n80_beq_ex_ds.S:18
80002ab4:	24020009 	li	v0,9
80002ab8:	00008021 	move	s0,zero
80002abc:	00009021 	move	s2,zero
80002ac0:	3c087fff 	lui	t0,0x7fff
80002ac4:	3508ffff 	ori	t0,t0,0xffff
80002ac8:	3c097fff 	lui	t1,0x7fff
80002acc:	3529ffff 	ori	t1,t1,0xffff
80002ad0:	3c0a8002 	lui	t2,0x8002
80002ad4:	354afff0 	ori	t2,t2,0xfff0
80002ad8:	ad480000 	sw	t0,0(t2)
80002adc:	10000004 	b	80002af0 <n80_beq_ex_ds_test+0x200>
80002ae0:	00000000 	nop
80002ae4:	26522222 	addiu	s2,s2,8738
80002ae8:	10000007 	b	80002b08 <n80_beq_ex_ds_test+0x218>
80002aec:	00000000 	nop
80002af0:	26101111 	addiu	s0,s0,4369
80002af4:	11280004 	beq	t1,t0,80002b08 <n80_beq_ex_ds_test+0x218>
80002af8:	0109a020 	add	s4,t0,t1
80002afc:	26100002 	addiu	s0,s0,2
80002b00:	26100002 	addiu	s0,s0,2
80002b04:	26100002 	addiu	s0,s0,2
80002b08:	02129021 	addu	s2,s0,s2
80002b0c:	24141117 	li	s4,4375
80002b10:	16920139 	bne	s4,s2,80002ff8 <inst_error>
80002b14:	00000000 	nop
80002b18:	3c144444 	lui	s4,0x4444
80002b1c:	16820136 	bne	s4,v0,80002ff8 <inst_error>
80002b20:	00000000 	nop
80002b24:	24020009 	li	v0,9
80002b28:	00008021 	move	s0,zero
80002b2c:	00009021 	move	s2,zero
80002b30:	3c087fff 	lui	t0,0x7fff
80002b34:	3508ffff 	ori	t0,t0,0xffff
80002b38:	3c097fff 	lui	t1,0x7fff
80002b3c:	3529ffff 	ori	t1,t1,0xffff
80002b40:	3c0a8002 	lui	t2,0x8002
80002b44:	354afff0 	ori	t2,t2,0xfff0
80002b48:	ad480000 	sw	t0,0(t2)
80002b4c:	10000004 	b	80002b60 <n80_beq_ex_ds_test+0x270>
80002b50:	00000000 	nop
80002b54:	26522222 	addiu	s2,s2,8738
80002b58:	10000007 	b	80002b78 <n80_beq_ex_ds_test+0x288>
80002b5c:	00000000 	nop
80002b60:	26101111 	addiu	s0,s0,4369
80002b64:	11480004 	beq	t2,t0,80002b78 <n80_beq_ex_ds_test+0x288>
80002b68:	0109a020 	add	s4,t0,t1
80002b6c:	26100002 	addiu	s0,s0,2
80002b70:	26100002 	addiu	s0,s0,2
80002b74:	26100002 	addiu	s0,s0,2
80002b78:	02129021 	addu	s2,s0,s2
80002b7c:	24141117 	li	s4,4375
80002b80:	1692011d 	bne	s4,s2,80002ff8 <inst_error>
80002b84:	00000000 	nop
80002b88:	3c144444 	lui	s4,0x4444
80002b8c:	1682011a 	bne	s4,v0,80002ff8 <inst_error>
80002b90:	00000000 	nop
80002b94:	24020009 	li	v0,9
80002b98:	00008021 	move	s0,zero
80002b9c:	00009021 	move	s2,zero
80002ba0:	3c087fff 	lui	t0,0x7fff
80002ba4:	3508ffff 	ori	t0,t0,0xffff
80002ba8:	3c097fff 	lui	t1,0x7fff
80002bac:	3529ffff 	ori	t1,t1,0xffff
80002bb0:	3c0a8002 	lui	t2,0x8002
80002bb4:	354afff0 	ori	t2,t2,0xfff0
80002bb8:	ad480000 	sw	t0,0(t2)
80002bbc:	10000004 	b	80002bd0 <n80_beq_ex_ds_test+0x2e0>
80002bc0:	00000000 	nop
80002bc4:	26522222 	addiu	s2,s2,8738
80002bc8:	10000007 	b	80002be8 <n80_beq_ex_ds_test+0x2f8>
80002bcc:	00000000 	nop
80002bd0:	26101111 	addiu	s0,s0,4369
80002bd4:	1128fffb 	beq	t1,t0,80002bc4 <n80_beq_ex_ds_test+0x2d4>
80002bd8:	0109a020 	add	s4,t0,t1
80002bdc:	26100002 	addiu	s0,s0,2
80002be0:	26100002 	addiu	s0,s0,2
80002be4:	26100002 	addiu	s0,s0,2
80002be8:	02129021 	addu	s2,s0,s2
80002bec:	24141117 	li	s4,4375
80002bf0:	16920101 	bne	s4,s2,80002ff8 <inst_error>
80002bf4:	00000000 	nop
80002bf8:	3c144444 	lui	s4,0x4444
80002bfc:	168200fe 	bne	s4,v0,80002ff8 <inst_error>
80002c00:	00000000 	nop
80002c04:	24020009 	li	v0,9
80002c08:	00008021 	move	s0,zero
80002c0c:	00009021 	move	s2,zero
80002c10:	3c087fff 	lui	t0,0x7fff
80002c14:	3508ffff 	ori	t0,t0,0xffff
80002c18:	3c097fff 	lui	t1,0x7fff
80002c1c:	3529ffff 	ori	t1,t1,0xffff
80002c20:	3c0a8002 	lui	t2,0x8002
80002c24:	354afff0 	ori	t2,t2,0xfff0
80002c28:	ad480000 	sw	t0,0(t2)
80002c2c:	10000004 	b	80002c40 <n80_beq_ex_ds_test+0x350>
80002c30:	00000000 	nop
80002c34:	26522222 	addiu	s2,s2,8738
80002c38:	10000007 	b	80002c58 <n80_beq_ex_ds_test+0x368>
80002c3c:	00000000 	nop
80002c40:	26101111 	addiu	s0,s0,4369
80002c44:	1148fffb 	beq	t2,t0,80002c34 <n80_beq_ex_ds_test+0x344>
80002c48:	0109a020 	add	s4,t0,t1
80002c4c:	26100002 	addiu	s0,s0,2
80002c50:	26100002 	addiu	s0,s0,2
80002c54:	26100002 	addiu	s0,s0,2
80002c58:	02129021 	addu	s2,s0,s2
80002c5c:	24141117 	li	s4,4375
80002c60:	169200e5 	bne	s4,s2,80002ff8 <inst_error>
80002c64:	00000000 	nop
80002c68:	3c144444 	lui	s4,0x4444
80002c6c:	168200e2 	bne	s4,v0,80002ff8 <inst_error>
80002c70:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n80_beq_ex_ds.S:19
80002c74:	24020009 	li	v0,9
80002c78:	00008021 	move	s0,zero
80002c7c:	00009021 	move	s2,zero
80002c80:	3c087fff 	lui	t0,0x7fff
80002c84:	3508ffff 	ori	t0,t0,0xffff
80002c88:	3c097fff 	lui	t1,0x7fff
80002c8c:	3529ffff 	ori	t1,t1,0xffff
80002c90:	3c0a8002 	lui	t2,0x8002
80002c94:	354afff0 	ori	t2,t2,0xfff0
80002c98:	ad480000 	sw	t0,0(t2)
80002c9c:	10000004 	b	80002cb0 <n80_beq_ex_ds_test+0x3c0>
80002ca0:	00000000 	nop
80002ca4:	26522222 	addiu	s2,s2,8738
80002ca8:	10000007 	b	80002cc8 <n80_beq_ex_ds_test+0x3d8>
80002cac:	00000000 	nop
80002cb0:	26101111 	addiu	s0,s0,4369
80002cb4:	11280004 	beq	t1,t0,80002cc8 <n80_beq_ex_ds_test+0x3d8>
80002cb8:	010aa022 	sub	s4,t0,t2
80002cbc:	26100002 	addiu	s0,s0,2
80002cc0:	26100002 	addiu	s0,s0,2
80002cc4:	26100002 	addiu	s0,s0,2
80002cc8:	02129021 	addu	s2,s0,s2
80002ccc:	24141117 	li	s4,4375
80002cd0:	169200c9 	bne	s4,s2,80002ff8 <inst_error>
80002cd4:	00000000 	nop
80002cd8:	3c144444 	lui	s4,0x4444
80002cdc:	168200c6 	bne	s4,v0,80002ff8 <inst_error>
80002ce0:	00000000 	nop
80002ce4:	24020009 	li	v0,9
80002ce8:	00008021 	move	s0,zero
80002cec:	00009021 	move	s2,zero
80002cf0:	3c087fff 	lui	t0,0x7fff
80002cf4:	3508ffff 	ori	t0,t0,0xffff
80002cf8:	3c097fff 	lui	t1,0x7fff
80002cfc:	3529ffff 	ori	t1,t1,0xffff
80002d00:	3c0a8002 	lui	t2,0x8002
80002d04:	354afff0 	ori	t2,t2,0xfff0
80002d08:	ad480000 	sw	t0,0(t2)
80002d0c:	10000004 	b	80002d20 <n80_beq_ex_ds_test+0x430>
80002d10:	00000000 	nop
80002d14:	26522222 	addiu	s2,s2,8738
80002d18:	10000007 	b	80002d38 <n80_beq_ex_ds_test+0x448>
80002d1c:	00000000 	nop
80002d20:	26101111 	addiu	s0,s0,4369
80002d24:	11480004 	beq	t2,t0,80002d38 <n80_beq_ex_ds_test+0x448>
80002d28:	010aa022 	sub	s4,t0,t2
80002d2c:	26100002 	addiu	s0,s0,2
80002d30:	26100002 	addiu	s0,s0,2
80002d34:	26100002 	addiu	s0,s0,2
80002d38:	02129021 	addu	s2,s0,s2
80002d3c:	24141117 	li	s4,4375
80002d40:	169200ad 	bne	s4,s2,80002ff8 <inst_error>
80002d44:	00000000 	nop
80002d48:	3c144444 	lui	s4,0x4444
80002d4c:	168200aa 	bne	s4,v0,80002ff8 <inst_error>
80002d50:	00000000 	nop
80002d54:	24020009 	li	v0,9
80002d58:	00008021 	move	s0,zero
80002d5c:	00009021 	move	s2,zero
80002d60:	3c087fff 	lui	t0,0x7fff
80002d64:	3508ffff 	ori	t0,t0,0xffff
80002d68:	3c097fff 	lui	t1,0x7fff
80002d6c:	3529ffff 	ori	t1,t1,0xffff
80002d70:	3c0a8002 	lui	t2,0x8002
80002d74:	354afff0 	ori	t2,t2,0xfff0
80002d78:	ad480000 	sw	t0,0(t2)
80002d7c:	10000004 	b	80002d90 <n80_beq_ex_ds_test+0x4a0>
80002d80:	00000000 	nop
80002d84:	26522222 	addiu	s2,s2,8738
80002d88:	10000007 	b	80002da8 <n80_beq_ex_ds_test+0x4b8>
80002d8c:	00000000 	nop
80002d90:	26101111 	addiu	s0,s0,4369
80002d94:	1128fffb 	beq	t1,t0,80002d84 <n80_beq_ex_ds_test+0x494>
80002d98:	010aa022 	sub	s4,t0,t2
80002d9c:	26100002 	addiu	s0,s0,2
80002da0:	26100002 	addiu	s0,s0,2
80002da4:	26100002 	addiu	s0,s0,2
80002da8:	02129021 	addu	s2,s0,s2
80002dac:	24141117 	li	s4,4375
80002db0:	16920091 	bne	s4,s2,80002ff8 <inst_error>
80002db4:	00000000 	nop
80002db8:	3c144444 	lui	s4,0x4444
80002dbc:	1682008e 	bne	s4,v0,80002ff8 <inst_error>
80002dc0:	00000000 	nop
80002dc4:	24020009 	li	v0,9
80002dc8:	00008021 	move	s0,zero
80002dcc:	00009021 	move	s2,zero
80002dd0:	3c087fff 	lui	t0,0x7fff
80002dd4:	3508ffff 	ori	t0,t0,0xffff
80002dd8:	3c097fff 	lui	t1,0x7fff
80002ddc:	3529ffff 	ori	t1,t1,0xffff
80002de0:	3c0a8002 	lui	t2,0x8002
80002de4:	354afff0 	ori	t2,t2,0xfff0
80002de8:	ad480000 	sw	t0,0(t2)
80002dec:	10000004 	b	80002e00 <n80_beq_ex_ds_test+0x510>
80002df0:	00000000 	nop
80002df4:	26522222 	addiu	s2,s2,8738
80002df8:	10000007 	b	80002e18 <n80_beq_ex_ds_test+0x528>
80002dfc:	00000000 	nop
80002e00:	26101111 	addiu	s0,s0,4369
80002e04:	1148fffb 	beq	t2,t0,80002df4 <n80_beq_ex_ds_test+0x504>
80002e08:	010aa022 	sub	s4,t0,t2
80002e0c:	26100002 	addiu	s0,s0,2
80002e10:	26100002 	addiu	s0,s0,2
80002e14:	26100002 	addiu	s0,s0,2
80002e18:	02129021 	addu	s2,s0,s2
80002e1c:	24141117 	li	s4,4375
80002e20:	16920075 	bne	s4,s2,80002ff8 <inst_error>
80002e24:	00000000 	nop
80002e28:	3c144444 	lui	s4,0x4444
80002e2c:	16820072 	bne	s4,v0,80002ff8 <inst_error>
80002e30:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n80_beq_ex_ds.S:26
80002e34:	24020009 	li	v0,9
80002e38:	00008021 	move	s0,zero
80002e3c:	00009021 	move	s2,zero
80002e40:	3c087fff 	lui	t0,0x7fff
80002e44:	3508ffff 	ori	t0,t0,0xffff
80002e48:	3c097fff 	lui	t1,0x7fff
80002e4c:	3529ffff 	ori	t1,t1,0xffff
80002e50:	3c0a8002 	lui	t2,0x8002
80002e54:	354afff0 	ori	t2,t2,0xfff0
80002e58:	ad480000 	sw	t0,0(t2)
80002e5c:	10000004 	b	80002e70 <n80_beq_ex_ds_test+0x580>
80002e60:	00000000 	nop
80002e64:	26522222 	addiu	s2,s2,8738
80002e68:	10000007 	b	80002e88 <n80_beq_ex_ds_test+0x598>
80002e6c:	00000000 	nop
80002e70:	26101111 	addiu	s0,s0,4369
80002e74:	11280004 	beq	t1,t0,80002e88 <n80_beq_ex_ds_test+0x598>
80002e78:	0000000c 	syscall
80002e7c:	26100002 	addiu	s0,s0,2
80002e80:	26100002 	addiu	s0,s0,2
80002e84:	26100002 	addiu	s0,s0,2
80002e88:	02129021 	addu	s2,s0,s2
80002e8c:	24141117 	li	s4,4375
80002e90:	16920059 	bne	s4,s2,80002ff8 <inst_error>
80002e94:	00000000 	nop
80002e98:	3c144444 	lui	s4,0x4444
80002e9c:	16820056 	bne	s4,v0,80002ff8 <inst_error>
80002ea0:	00000000 	nop
80002ea4:	24020009 	li	v0,9
80002ea8:	00008021 	move	s0,zero
80002eac:	00009021 	move	s2,zero
80002eb0:	3c087fff 	lui	t0,0x7fff
80002eb4:	3508ffff 	ori	t0,t0,0xffff
80002eb8:	3c097fff 	lui	t1,0x7fff
80002ebc:	3529ffff 	ori	t1,t1,0xffff
80002ec0:	3c0a8002 	lui	t2,0x8002
80002ec4:	354afff0 	ori	t2,t2,0xfff0
80002ec8:	ad480000 	sw	t0,0(t2)
80002ecc:	10000004 	b	80002ee0 <n80_beq_ex_ds_test+0x5f0>
80002ed0:	00000000 	nop
80002ed4:	26522222 	addiu	s2,s2,8738
80002ed8:	10000007 	b	80002ef8 <n80_beq_ex_ds_test+0x608>
80002edc:	00000000 	nop
80002ee0:	26101111 	addiu	s0,s0,4369
80002ee4:	11480004 	beq	t2,t0,80002ef8 <n80_beq_ex_ds_test+0x608>
80002ee8:	0000000c 	syscall
80002eec:	26100002 	addiu	s0,s0,2
80002ef0:	26100002 	addiu	s0,s0,2
80002ef4:	26100002 	addiu	s0,s0,2
80002ef8:	02129021 	addu	s2,s0,s2
80002efc:	24141117 	li	s4,4375
80002f00:	1692003d 	bne	s4,s2,80002ff8 <inst_error>
80002f04:	00000000 	nop
80002f08:	3c144444 	lui	s4,0x4444
80002f0c:	1682003a 	bne	s4,v0,80002ff8 <inst_error>
80002f10:	00000000 	nop
80002f14:	24020009 	li	v0,9
80002f18:	00008021 	move	s0,zero
80002f1c:	00009021 	move	s2,zero
80002f20:	3c087fff 	lui	t0,0x7fff
80002f24:	3508ffff 	ori	t0,t0,0xffff
80002f28:	3c097fff 	lui	t1,0x7fff
80002f2c:	3529ffff 	ori	t1,t1,0xffff
80002f30:	3c0a8002 	lui	t2,0x8002
80002f34:	354afff0 	ori	t2,t2,0xfff0
80002f38:	ad480000 	sw	t0,0(t2)
80002f3c:	10000004 	b	80002f50 <n80_beq_ex_ds_test+0x660>
80002f40:	00000000 	nop
80002f44:	26522222 	addiu	s2,s2,8738
80002f48:	10000007 	b	80002f68 <n80_beq_ex_ds_test+0x678>
80002f4c:	00000000 	nop
80002f50:	26101111 	addiu	s0,s0,4369
80002f54:	1128fffb 	beq	t1,t0,80002f44 <n80_beq_ex_ds_test+0x654>
80002f58:	0000000c 	syscall
80002f5c:	26100002 	addiu	s0,s0,2
80002f60:	26100002 	addiu	s0,s0,2
80002f64:	26100002 	addiu	s0,s0,2
80002f68:	02129021 	addu	s2,s0,s2
80002f6c:	24141117 	li	s4,4375
80002f70:	16920021 	bne	s4,s2,80002ff8 <inst_error>
80002f74:	00000000 	nop
80002f78:	3c144444 	lui	s4,0x4444
80002f7c:	1682001e 	bne	s4,v0,80002ff8 <inst_error>
80002f80:	00000000 	nop
80002f84:	24020009 	li	v0,9
80002f88:	00008021 	move	s0,zero
80002f8c:	00009021 	move	s2,zero
80002f90:	3c087fff 	lui	t0,0x7fff
80002f94:	3508ffff 	ori	t0,t0,0xffff
80002f98:	3c097fff 	lui	t1,0x7fff
80002f9c:	3529ffff 	ori	t1,t1,0xffff
80002fa0:	3c0a8002 	lui	t2,0x8002
80002fa4:	354afff0 	ori	t2,t2,0xfff0
80002fa8:	ad480000 	sw	t0,0(t2)
80002fac:	10000004 	b	80002fc0 <n80_beq_ex_ds_test+0x6d0>
80002fb0:	00000000 	nop
80002fb4:	26522222 	addiu	s2,s2,8738
80002fb8:	10000007 	b	80002fd8 <n80_beq_ex_ds_test+0x6e8>
80002fbc:	00000000 	nop
80002fc0:	26101111 	addiu	s0,s0,4369
80002fc4:	1148fffb 	beq	t2,t0,80002fb4 <n80_beq_ex_ds_test+0x6c4>
80002fc8:	0000000c 	syscall
80002fcc:	26100002 	addiu	s0,s0,2
80002fd0:	26100002 	addiu	s0,s0,2
80002fd4:	26100002 	addiu	s0,s0,2
80002fd8:	02129021 	addu	s2,s0,s2
80002fdc:	24141117 	li	s4,4375
80002fe0:	16920005 	bne	s4,s2,80002ff8 <inst_error>
80002fe4:	00000000 	nop
80002fe8:	3c144444 	lui	s4,0x4444
80002fec:	16820002 	bne	s4,v0,80002ff8 <inst_error>
80002ff0:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n80_beq_ex_ds.S:33
80002ff4:	26730001 	addiu	s3,s3,1

80002ff8 <inst_error>:
/home/ubuntu/functiontest/src/inst/n80_beq_ex_ds.S:36
80002ff8:	00934025 	or	t0,a0,s3
/home/ubuntu/functiontest/src/inst/n80_beq_ex_ds.S:37
80002ffc:	ae280000 	sw	t0,0(s1)
/home/ubuntu/functiontest/src/inst/n80_beq_ex_ds.S:38
80003000:	03e00008 	jr	ra
/home/ubuntu/functiontest/src/inst/n80_beq_ex_ds.S:39
80003004:	00000000 	nop

80003008 <n83_bgtz_ex_ds_test>:
/home/ubuntu/functiontest/src/inst/n83_bgtz_ex_ds.S:14
80003008:	3c045300 	lui	a0,0x5300
/home/ubuntu/functiontest/src/inst/n83_bgtz_ex_ds.S:17
8000300c:	24020009 	li	v0,9
80003010:	00008021 	move	s0,zero
80003014:	00009021 	move	s2,zero
80003018:	3c087fff 	lui	t0,0x7fff
8000301c:	3508ffff 	ori	t0,t0,0xffff
80003020:	3c097fff 	lui	t1,0x7fff
80003024:	3529ffff 	ori	t1,t1,0xffff
80003028:	3c0a8002 	lui	t2,0x8002
8000302c:	354afff0 	ori	t2,t2,0xfff0
80003030:	ad480000 	sw	t0,0(t2)
80003034:	10000004 	b	80003048 <n83_bgtz_ex_ds_test+0x40>
80003038:	00000000 	nop
8000303c:	26522222 	addiu	s2,s2,8738
80003040:	10000007 	b	80003060 <n83_bgtz_ex_ds_test+0x58>
80003044:	00000000 	nop
80003048:	26101111 	addiu	s0,s0,4369
8000304c:	1d000004 	bgtz	t0,80003060 <n83_bgtz_ex_ds_test+0x58>
80003050:	21147fff 	addi	s4,t0,32767
80003054:	26100002 	addiu	s0,s0,2
80003058:	26100002 	addiu	s0,s0,2
8000305c:	26100002 	addiu	s0,s0,2
80003060:	02129021 	addu	s2,s0,s2
80003064:	24141117 	li	s4,4375
80003068:	169201a9 	bne	s4,s2,80003710 <inst_error>
8000306c:	00000000 	nop
80003070:	3c144444 	lui	s4,0x4444
80003074:	168201a6 	bne	s4,v0,80003710 <inst_error>
80003078:	00000000 	nop
8000307c:	24020009 	li	v0,9
80003080:	00008021 	move	s0,zero
80003084:	00009021 	move	s2,zero
80003088:	3c087fff 	lui	t0,0x7fff
8000308c:	3508ffff 	ori	t0,t0,0xffff
80003090:	3c097fff 	lui	t1,0x7fff
80003094:	3529ffff 	ori	t1,t1,0xffff
80003098:	3c0a8002 	lui	t2,0x8002
8000309c:	354afff0 	ori	t2,t2,0xfff0
800030a0:	ad480000 	sw	t0,0(t2)
800030a4:	10000004 	b	800030b8 <n83_bgtz_ex_ds_test+0xb0>
800030a8:	00000000 	nop
800030ac:	26522222 	addiu	s2,s2,8738
800030b0:	10000007 	b	800030d0 <n83_bgtz_ex_ds_test+0xc8>
800030b4:	00000000 	nop
800030b8:	26101111 	addiu	s0,s0,4369
800030bc:	1d400004 	bgtz	t2,800030d0 <n83_bgtz_ex_ds_test+0xc8>
800030c0:	21147fff 	addi	s4,t0,32767
800030c4:	26100002 	addiu	s0,s0,2
800030c8:	26100002 	addiu	s0,s0,2
800030cc:	26100002 	addiu	s0,s0,2
800030d0:	02129021 	addu	s2,s0,s2
800030d4:	24141117 	li	s4,4375
800030d8:	1692018d 	bne	s4,s2,80003710 <inst_error>
800030dc:	00000000 	nop
800030e0:	3c144444 	lui	s4,0x4444
800030e4:	1682018a 	bne	s4,v0,80003710 <inst_error>
800030e8:	00000000 	nop
800030ec:	24020009 	li	v0,9
800030f0:	00008021 	move	s0,zero
800030f4:	00009021 	move	s2,zero
800030f8:	3c087fff 	lui	t0,0x7fff
800030fc:	3508ffff 	ori	t0,t0,0xffff
80003100:	3c097fff 	lui	t1,0x7fff
80003104:	3529ffff 	ori	t1,t1,0xffff
80003108:	3c0a8002 	lui	t2,0x8002
8000310c:	354afff0 	ori	t2,t2,0xfff0
80003110:	ad480000 	sw	t0,0(t2)
80003114:	10000004 	b	80003128 <n83_bgtz_ex_ds_test+0x120>
80003118:	00000000 	nop
8000311c:	26522222 	addiu	s2,s2,8738
80003120:	10000007 	b	80003140 <n83_bgtz_ex_ds_test+0x138>
80003124:	00000000 	nop
80003128:	26101111 	addiu	s0,s0,4369
8000312c:	1d00fffb 	bgtz	t0,8000311c <n83_bgtz_ex_ds_test+0x114>
80003130:	21147fff 	addi	s4,t0,32767
80003134:	26100002 	addiu	s0,s0,2
80003138:	26100002 	addiu	s0,s0,2
8000313c:	26100002 	addiu	s0,s0,2
80003140:	02129021 	addu	s2,s0,s2
80003144:	24141117 	li	s4,4375
80003148:	16920171 	bne	s4,s2,80003710 <inst_error>
8000314c:	00000000 	nop
80003150:	3c144444 	lui	s4,0x4444
80003154:	1682016e 	bne	s4,v0,80003710 <inst_error>
80003158:	00000000 	nop
8000315c:	24020009 	li	v0,9
80003160:	00008021 	move	s0,zero
80003164:	00009021 	move	s2,zero
80003168:	3c087fff 	lui	t0,0x7fff
8000316c:	3508ffff 	ori	t0,t0,0xffff
80003170:	3c097fff 	lui	t1,0x7fff
80003174:	3529ffff 	ori	t1,t1,0xffff
80003178:	3c0a8002 	lui	t2,0x8002
8000317c:	354afff0 	ori	t2,t2,0xfff0
80003180:	ad480000 	sw	t0,0(t2)
80003184:	10000004 	b	80003198 <n83_bgtz_ex_ds_test+0x190>
80003188:	00000000 	nop
8000318c:	26522222 	addiu	s2,s2,8738
80003190:	10000007 	b	800031b0 <n83_bgtz_ex_ds_test+0x1a8>
80003194:	00000000 	nop
80003198:	26101111 	addiu	s0,s0,4369
8000319c:	1d40fffb 	bgtz	t2,8000318c <n83_bgtz_ex_ds_test+0x184>
800031a0:	21147fff 	addi	s4,t0,32767
800031a4:	26100002 	addiu	s0,s0,2
800031a8:	26100002 	addiu	s0,s0,2
800031ac:	26100002 	addiu	s0,s0,2
800031b0:	02129021 	addu	s2,s0,s2
800031b4:	24141117 	li	s4,4375
800031b8:	16920155 	bne	s4,s2,80003710 <inst_error>
800031bc:	00000000 	nop
800031c0:	3c144444 	lui	s4,0x4444
800031c4:	16820152 	bne	s4,v0,80003710 <inst_error>
800031c8:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n83_bgtz_ex_ds.S:18
800031cc:	24020009 	li	v0,9
800031d0:	00008021 	move	s0,zero
800031d4:	00009021 	move	s2,zero
800031d8:	3c087fff 	lui	t0,0x7fff
800031dc:	3508ffff 	ori	t0,t0,0xffff
800031e0:	3c097fff 	lui	t1,0x7fff
800031e4:	3529ffff 	ori	t1,t1,0xffff
800031e8:	3c0a8002 	lui	t2,0x8002
800031ec:	354afff0 	ori	t2,t2,0xfff0
800031f0:	ad480000 	sw	t0,0(t2)
800031f4:	10000004 	b	80003208 <n83_bgtz_ex_ds_test+0x200>
800031f8:	00000000 	nop
800031fc:	26522222 	addiu	s2,s2,8738
80003200:	10000007 	b	80003220 <n83_bgtz_ex_ds_test+0x218>
80003204:	00000000 	nop
80003208:	26101111 	addiu	s0,s0,4369
8000320c:	1d000004 	bgtz	t0,80003220 <n83_bgtz_ex_ds_test+0x218>
80003210:	0109a020 	add	s4,t0,t1
80003214:	26100002 	addiu	s0,s0,2
80003218:	26100002 	addiu	s0,s0,2
8000321c:	26100002 	addiu	s0,s0,2
80003220:	02129021 	addu	s2,s0,s2
80003224:	24141117 	li	s4,4375
80003228:	16920139 	bne	s4,s2,80003710 <inst_error>
8000322c:	00000000 	nop
80003230:	3c144444 	lui	s4,0x4444
80003234:	16820136 	bne	s4,v0,80003710 <inst_error>
80003238:	00000000 	nop
8000323c:	24020009 	li	v0,9
80003240:	00008021 	move	s0,zero
80003244:	00009021 	move	s2,zero
80003248:	3c087fff 	lui	t0,0x7fff
8000324c:	3508ffff 	ori	t0,t0,0xffff
80003250:	3c097fff 	lui	t1,0x7fff
80003254:	3529ffff 	ori	t1,t1,0xffff
80003258:	3c0a8002 	lui	t2,0x8002
8000325c:	354afff0 	ori	t2,t2,0xfff0
80003260:	ad480000 	sw	t0,0(t2)
80003264:	10000004 	b	80003278 <n83_bgtz_ex_ds_test+0x270>
80003268:	00000000 	nop
8000326c:	26522222 	addiu	s2,s2,8738
80003270:	10000007 	b	80003290 <n83_bgtz_ex_ds_test+0x288>
80003274:	00000000 	nop
80003278:	26101111 	addiu	s0,s0,4369
8000327c:	1d400004 	bgtz	t2,80003290 <n83_bgtz_ex_ds_test+0x288>
80003280:	0109a020 	add	s4,t0,t1
80003284:	26100002 	addiu	s0,s0,2
80003288:	26100002 	addiu	s0,s0,2
8000328c:	26100002 	addiu	s0,s0,2
80003290:	02129021 	addu	s2,s0,s2
80003294:	24141117 	li	s4,4375
80003298:	1692011d 	bne	s4,s2,80003710 <inst_error>
8000329c:	00000000 	nop
800032a0:	3c144444 	lui	s4,0x4444
800032a4:	1682011a 	bne	s4,v0,80003710 <inst_error>
800032a8:	00000000 	nop
800032ac:	24020009 	li	v0,9
800032b0:	00008021 	move	s0,zero
800032b4:	00009021 	move	s2,zero
800032b8:	3c087fff 	lui	t0,0x7fff
800032bc:	3508ffff 	ori	t0,t0,0xffff
800032c0:	3c097fff 	lui	t1,0x7fff
800032c4:	3529ffff 	ori	t1,t1,0xffff
800032c8:	3c0a8002 	lui	t2,0x8002
800032cc:	354afff0 	ori	t2,t2,0xfff0
800032d0:	ad480000 	sw	t0,0(t2)
800032d4:	10000004 	b	800032e8 <n83_bgtz_ex_ds_test+0x2e0>
800032d8:	00000000 	nop
800032dc:	26522222 	addiu	s2,s2,8738
800032e0:	10000007 	b	80003300 <n83_bgtz_ex_ds_test+0x2f8>
800032e4:	00000000 	nop
800032e8:	26101111 	addiu	s0,s0,4369
800032ec:	1d00fffb 	bgtz	t0,800032dc <n83_bgtz_ex_ds_test+0x2d4>
800032f0:	0109a020 	add	s4,t0,t1
800032f4:	26100002 	addiu	s0,s0,2
800032f8:	26100002 	addiu	s0,s0,2
800032fc:	26100002 	addiu	s0,s0,2
80003300:	02129021 	addu	s2,s0,s2
80003304:	24141117 	li	s4,4375
80003308:	16920101 	bne	s4,s2,80003710 <inst_error>
8000330c:	00000000 	nop
80003310:	3c144444 	lui	s4,0x4444
80003314:	168200fe 	bne	s4,v0,80003710 <inst_error>
80003318:	00000000 	nop
8000331c:	24020009 	li	v0,9
80003320:	00008021 	move	s0,zero
80003324:	00009021 	move	s2,zero
80003328:	3c087fff 	lui	t0,0x7fff
8000332c:	3508ffff 	ori	t0,t0,0xffff
80003330:	3c097fff 	lui	t1,0x7fff
80003334:	3529ffff 	ori	t1,t1,0xffff
80003338:	3c0a8002 	lui	t2,0x8002
8000333c:	354afff0 	ori	t2,t2,0xfff0
80003340:	ad480000 	sw	t0,0(t2)
80003344:	10000004 	b	80003358 <n83_bgtz_ex_ds_test+0x350>
80003348:	00000000 	nop
8000334c:	26522222 	addiu	s2,s2,8738
80003350:	10000007 	b	80003370 <n83_bgtz_ex_ds_test+0x368>
80003354:	00000000 	nop
80003358:	26101111 	addiu	s0,s0,4369
8000335c:	1d40fffb 	bgtz	t2,8000334c <n83_bgtz_ex_ds_test+0x344>
80003360:	0109a020 	add	s4,t0,t1
80003364:	26100002 	addiu	s0,s0,2
80003368:	26100002 	addiu	s0,s0,2
8000336c:	26100002 	addiu	s0,s0,2
80003370:	02129021 	addu	s2,s0,s2
80003374:	24141117 	li	s4,4375
80003378:	169200e5 	bne	s4,s2,80003710 <inst_error>
8000337c:	00000000 	nop
80003380:	3c144444 	lui	s4,0x4444
80003384:	168200e2 	bne	s4,v0,80003710 <inst_error>
80003388:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n83_bgtz_ex_ds.S:19
8000338c:	24020009 	li	v0,9
80003390:	00008021 	move	s0,zero
80003394:	00009021 	move	s2,zero
80003398:	3c087fff 	lui	t0,0x7fff
8000339c:	3508ffff 	ori	t0,t0,0xffff
800033a0:	3c097fff 	lui	t1,0x7fff
800033a4:	3529ffff 	ori	t1,t1,0xffff
800033a8:	3c0a8002 	lui	t2,0x8002
800033ac:	354afff0 	ori	t2,t2,0xfff0
800033b0:	ad480000 	sw	t0,0(t2)
800033b4:	10000004 	b	800033c8 <n83_bgtz_ex_ds_test+0x3c0>
800033b8:	00000000 	nop
800033bc:	26522222 	addiu	s2,s2,8738
800033c0:	10000007 	b	800033e0 <n83_bgtz_ex_ds_test+0x3d8>
800033c4:	00000000 	nop
800033c8:	26101111 	addiu	s0,s0,4369
800033cc:	1d000004 	bgtz	t0,800033e0 <n83_bgtz_ex_ds_test+0x3d8>
800033d0:	010aa022 	sub	s4,t0,t2
800033d4:	26100002 	addiu	s0,s0,2
800033d8:	26100002 	addiu	s0,s0,2
800033dc:	26100002 	addiu	s0,s0,2
800033e0:	02129021 	addu	s2,s0,s2
800033e4:	24141117 	li	s4,4375
800033e8:	169200c9 	bne	s4,s2,80003710 <inst_error>
800033ec:	00000000 	nop
800033f0:	3c144444 	lui	s4,0x4444
800033f4:	168200c6 	bne	s4,v0,80003710 <inst_error>
800033f8:	00000000 	nop
800033fc:	24020009 	li	v0,9
80003400:	00008021 	move	s0,zero
80003404:	00009021 	move	s2,zero
80003408:	3c087fff 	lui	t0,0x7fff
8000340c:	3508ffff 	ori	t0,t0,0xffff
80003410:	3c097fff 	lui	t1,0x7fff
80003414:	3529ffff 	ori	t1,t1,0xffff
80003418:	3c0a8002 	lui	t2,0x8002
8000341c:	354afff0 	ori	t2,t2,0xfff0
80003420:	ad480000 	sw	t0,0(t2)
80003424:	10000004 	b	80003438 <n83_bgtz_ex_ds_test+0x430>
80003428:	00000000 	nop
8000342c:	26522222 	addiu	s2,s2,8738
80003430:	10000007 	b	80003450 <n83_bgtz_ex_ds_test+0x448>
80003434:	00000000 	nop
80003438:	26101111 	addiu	s0,s0,4369
8000343c:	1d400004 	bgtz	t2,80003450 <n83_bgtz_ex_ds_test+0x448>
80003440:	010aa022 	sub	s4,t0,t2
80003444:	26100002 	addiu	s0,s0,2
80003448:	26100002 	addiu	s0,s0,2
8000344c:	26100002 	addiu	s0,s0,2
80003450:	02129021 	addu	s2,s0,s2
80003454:	24141117 	li	s4,4375
80003458:	169200ad 	bne	s4,s2,80003710 <inst_error>
8000345c:	00000000 	nop
80003460:	3c144444 	lui	s4,0x4444
80003464:	168200aa 	bne	s4,v0,80003710 <inst_error>
80003468:	00000000 	nop
8000346c:	24020009 	li	v0,9
80003470:	00008021 	move	s0,zero
80003474:	00009021 	move	s2,zero
80003478:	3c087fff 	lui	t0,0x7fff
8000347c:	3508ffff 	ori	t0,t0,0xffff
80003480:	3c097fff 	lui	t1,0x7fff
80003484:	3529ffff 	ori	t1,t1,0xffff
80003488:	3c0a8002 	lui	t2,0x8002
8000348c:	354afff0 	ori	t2,t2,0xfff0
80003490:	ad480000 	sw	t0,0(t2)
80003494:	10000004 	b	800034a8 <n83_bgtz_ex_ds_test+0x4a0>
80003498:	00000000 	nop
8000349c:	26522222 	addiu	s2,s2,8738
800034a0:	10000007 	b	800034c0 <n83_bgtz_ex_ds_test+0x4b8>
800034a4:	00000000 	nop
800034a8:	26101111 	addiu	s0,s0,4369
800034ac:	1d00fffb 	bgtz	t0,8000349c <n83_bgtz_ex_ds_test+0x494>
800034b0:	010aa022 	sub	s4,t0,t2
800034b4:	26100002 	addiu	s0,s0,2
800034b8:	26100002 	addiu	s0,s0,2
800034bc:	26100002 	addiu	s0,s0,2
800034c0:	02129021 	addu	s2,s0,s2
800034c4:	24141117 	li	s4,4375
800034c8:	16920091 	bne	s4,s2,80003710 <inst_error>
800034cc:	00000000 	nop
800034d0:	3c144444 	lui	s4,0x4444
800034d4:	1682008e 	bne	s4,v0,80003710 <inst_error>
800034d8:	00000000 	nop
800034dc:	24020009 	li	v0,9
800034e0:	00008021 	move	s0,zero
800034e4:	00009021 	move	s2,zero
800034e8:	3c087fff 	lui	t0,0x7fff
800034ec:	3508ffff 	ori	t0,t0,0xffff
800034f0:	3c097fff 	lui	t1,0x7fff
800034f4:	3529ffff 	ori	t1,t1,0xffff
800034f8:	3c0a8002 	lui	t2,0x8002
800034fc:	354afff0 	ori	t2,t2,0xfff0
80003500:	ad480000 	sw	t0,0(t2)
80003504:	10000004 	b	80003518 <n83_bgtz_ex_ds_test+0x510>
80003508:	00000000 	nop
8000350c:	26522222 	addiu	s2,s2,8738
80003510:	10000007 	b	80003530 <n83_bgtz_ex_ds_test+0x528>
80003514:	00000000 	nop
80003518:	26101111 	addiu	s0,s0,4369
8000351c:	1d40fffb 	bgtz	t2,8000350c <n83_bgtz_ex_ds_test+0x504>
80003520:	010aa022 	sub	s4,t0,t2
80003524:	26100002 	addiu	s0,s0,2
80003528:	26100002 	addiu	s0,s0,2
8000352c:	26100002 	addiu	s0,s0,2
80003530:	02129021 	addu	s2,s0,s2
80003534:	24141117 	li	s4,4375
80003538:	16920075 	bne	s4,s2,80003710 <inst_error>
8000353c:	00000000 	nop
80003540:	3c144444 	lui	s4,0x4444
80003544:	16820072 	bne	s4,v0,80003710 <inst_error>
80003548:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n83_bgtz_ex_ds.S:26
8000354c:	24020009 	li	v0,9
80003550:	00008021 	move	s0,zero
80003554:	00009021 	move	s2,zero
80003558:	3c087fff 	lui	t0,0x7fff
8000355c:	3508ffff 	ori	t0,t0,0xffff
80003560:	3c097fff 	lui	t1,0x7fff
80003564:	3529ffff 	ori	t1,t1,0xffff
80003568:	3c0a8002 	lui	t2,0x8002
8000356c:	354afff0 	ori	t2,t2,0xfff0
80003570:	ad480000 	sw	t0,0(t2)
80003574:	10000004 	b	80003588 <n83_bgtz_ex_ds_test+0x580>
80003578:	00000000 	nop
8000357c:	26522222 	addiu	s2,s2,8738
80003580:	10000007 	b	800035a0 <n83_bgtz_ex_ds_test+0x598>
80003584:	00000000 	nop
80003588:	26101111 	addiu	s0,s0,4369
8000358c:	1d000004 	bgtz	t0,800035a0 <n83_bgtz_ex_ds_test+0x598>
80003590:	0000000c 	syscall
80003594:	26100002 	addiu	s0,s0,2
80003598:	26100002 	addiu	s0,s0,2
8000359c:	26100002 	addiu	s0,s0,2
800035a0:	02129021 	addu	s2,s0,s2
800035a4:	24141117 	li	s4,4375
800035a8:	16920059 	bne	s4,s2,80003710 <inst_error>
800035ac:	00000000 	nop
800035b0:	3c144444 	lui	s4,0x4444
800035b4:	16820056 	bne	s4,v0,80003710 <inst_error>
800035b8:	00000000 	nop
800035bc:	24020009 	li	v0,9
800035c0:	00008021 	move	s0,zero
800035c4:	00009021 	move	s2,zero
800035c8:	3c087fff 	lui	t0,0x7fff
800035cc:	3508ffff 	ori	t0,t0,0xffff
800035d0:	3c097fff 	lui	t1,0x7fff
800035d4:	3529ffff 	ori	t1,t1,0xffff
800035d8:	3c0a8002 	lui	t2,0x8002
800035dc:	354afff0 	ori	t2,t2,0xfff0
800035e0:	ad480000 	sw	t0,0(t2)
800035e4:	10000004 	b	800035f8 <n83_bgtz_ex_ds_test+0x5f0>
800035e8:	00000000 	nop
800035ec:	26522222 	addiu	s2,s2,8738
800035f0:	10000007 	b	80003610 <n83_bgtz_ex_ds_test+0x608>
800035f4:	00000000 	nop
800035f8:	26101111 	addiu	s0,s0,4369
800035fc:	1d400004 	bgtz	t2,80003610 <n83_bgtz_ex_ds_test+0x608>
80003600:	0000000c 	syscall
80003604:	26100002 	addiu	s0,s0,2
80003608:	26100002 	addiu	s0,s0,2
8000360c:	26100002 	addiu	s0,s0,2
80003610:	02129021 	addu	s2,s0,s2
80003614:	24141117 	li	s4,4375
80003618:	1692003d 	bne	s4,s2,80003710 <inst_error>
8000361c:	00000000 	nop
80003620:	3c144444 	lui	s4,0x4444
80003624:	1682003a 	bne	s4,v0,80003710 <inst_error>
80003628:	00000000 	nop
8000362c:	24020009 	li	v0,9
80003630:	00008021 	move	s0,zero
80003634:	00009021 	move	s2,zero
80003638:	3c087fff 	lui	t0,0x7fff
8000363c:	3508ffff 	ori	t0,t0,0xffff
80003640:	3c097fff 	lui	t1,0x7fff
80003644:	3529ffff 	ori	t1,t1,0xffff
80003648:	3c0a8002 	lui	t2,0x8002
8000364c:	354afff0 	ori	t2,t2,0xfff0
80003650:	ad480000 	sw	t0,0(t2)
80003654:	10000004 	b	80003668 <n83_bgtz_ex_ds_test+0x660>
80003658:	00000000 	nop
8000365c:	26522222 	addiu	s2,s2,8738
80003660:	10000007 	b	80003680 <n83_bgtz_ex_ds_test+0x678>
80003664:	00000000 	nop
80003668:	26101111 	addiu	s0,s0,4369
8000366c:	1d00fffb 	bgtz	t0,8000365c <n83_bgtz_ex_ds_test+0x654>
80003670:	0000000c 	syscall
80003674:	26100002 	addiu	s0,s0,2
80003678:	26100002 	addiu	s0,s0,2
8000367c:	26100002 	addiu	s0,s0,2
80003680:	02129021 	addu	s2,s0,s2
80003684:	24141117 	li	s4,4375
80003688:	16920021 	bne	s4,s2,80003710 <inst_error>
8000368c:	00000000 	nop
80003690:	3c144444 	lui	s4,0x4444
80003694:	1682001e 	bne	s4,v0,80003710 <inst_error>
80003698:	00000000 	nop
8000369c:	24020009 	li	v0,9
800036a0:	00008021 	move	s0,zero
800036a4:	00009021 	move	s2,zero
800036a8:	3c087fff 	lui	t0,0x7fff
800036ac:	3508ffff 	ori	t0,t0,0xffff
800036b0:	3c097fff 	lui	t1,0x7fff
800036b4:	3529ffff 	ori	t1,t1,0xffff
800036b8:	3c0a8002 	lui	t2,0x8002
800036bc:	354afff0 	ori	t2,t2,0xfff0
800036c0:	ad480000 	sw	t0,0(t2)
800036c4:	10000004 	b	800036d8 <n83_bgtz_ex_ds_test+0x6d0>
800036c8:	00000000 	nop
800036cc:	26522222 	addiu	s2,s2,8738
800036d0:	10000007 	b	800036f0 <n83_bgtz_ex_ds_test+0x6e8>
800036d4:	00000000 	nop
800036d8:	26101111 	addiu	s0,s0,4369
800036dc:	1d40fffb 	bgtz	t2,800036cc <n83_bgtz_ex_ds_test+0x6c4>
800036e0:	0000000c 	syscall
800036e4:	26100002 	addiu	s0,s0,2
800036e8:	26100002 	addiu	s0,s0,2
800036ec:	26100002 	addiu	s0,s0,2
800036f0:	02129021 	addu	s2,s0,s2
800036f4:	24141117 	li	s4,4375
800036f8:	16920005 	bne	s4,s2,80003710 <inst_error>
800036fc:	00000000 	nop
80003700:	3c144444 	lui	s4,0x4444
80003704:	16820002 	bne	s4,v0,80003710 <inst_error>
80003708:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n83_bgtz_ex_ds.S:33
8000370c:	26730001 	addiu	s3,s3,1

80003710 <inst_error>:
/home/ubuntu/functiontest/src/inst/n83_bgtz_ex_ds.S:36
80003710:	00934025 	or	t0,a0,s3
/home/ubuntu/functiontest/src/inst/n83_bgtz_ex_ds.S:37
80003714:	ae280000 	sw	t0,0(s1)
/home/ubuntu/functiontest/src/inst/n83_bgtz_ex_ds.S:38
80003718:	03e00008 	jr	ra
/home/ubuntu/functiontest/src/inst/n83_bgtz_ex_ds.S:39
8000371c:	00000000 	nop

80003720 <n85_bltz_ex_ds_test>:
/home/ubuntu/functiontest/src/inst/n85_bltz_ex_ds.S:14
80003720:	3c045500 	lui	a0,0x5500
/home/ubuntu/functiontest/src/inst/n85_bltz_ex_ds.S:17
80003724:	24020009 	li	v0,9
80003728:	00008021 	move	s0,zero
8000372c:	00009021 	move	s2,zero
80003730:	3c087fff 	lui	t0,0x7fff
80003734:	3508ffff 	ori	t0,t0,0xffff
80003738:	3c097fff 	lui	t1,0x7fff
8000373c:	3529ffff 	ori	t1,t1,0xffff
80003740:	3c0a8002 	lui	t2,0x8002
80003744:	354afff0 	ori	t2,t2,0xfff0
80003748:	ad480000 	sw	t0,0(t2)
8000374c:	10000004 	b	80003760 <n85_bltz_ex_ds_test+0x40>
80003750:	00000000 	nop
80003754:	26522222 	addiu	s2,s2,8738
80003758:	10000007 	b	80003778 <n85_bltz_ex_ds_test+0x58>
8000375c:	00000000 	nop
80003760:	26101111 	addiu	s0,s0,4369
80003764:	05400004 	bltz	t2,80003778 <n85_bltz_ex_ds_test+0x58>
80003768:	21147fff 	addi	s4,t0,32767
8000376c:	26100002 	addiu	s0,s0,2
80003770:	26100002 	addiu	s0,s0,2
80003774:	26100002 	addiu	s0,s0,2
80003778:	02129021 	addu	s2,s0,s2
8000377c:	24141117 	li	s4,4375
80003780:	169201a9 	bne	s4,s2,80003e28 <inst_error>
80003784:	00000000 	nop
80003788:	3c144444 	lui	s4,0x4444
8000378c:	168201a6 	bne	s4,v0,80003e28 <inst_error>
80003790:	00000000 	nop
80003794:	24020009 	li	v0,9
80003798:	00008021 	move	s0,zero
8000379c:	00009021 	move	s2,zero
800037a0:	3c087fff 	lui	t0,0x7fff
800037a4:	3508ffff 	ori	t0,t0,0xffff
800037a8:	3c097fff 	lui	t1,0x7fff
800037ac:	3529ffff 	ori	t1,t1,0xffff
800037b0:	3c0a8002 	lui	t2,0x8002
800037b4:	354afff0 	ori	t2,t2,0xfff0
800037b8:	ad480000 	sw	t0,0(t2)
800037bc:	10000004 	b	800037d0 <n85_bltz_ex_ds_test+0xb0>
800037c0:	00000000 	nop
800037c4:	26522222 	addiu	s2,s2,8738
800037c8:	10000007 	b	800037e8 <n85_bltz_ex_ds_test+0xc8>
800037cc:	00000000 	nop
800037d0:	26101111 	addiu	s0,s0,4369
800037d4:	05000004 	bltz	t0,800037e8 <n85_bltz_ex_ds_test+0xc8>
800037d8:	21147fff 	addi	s4,t0,32767
800037dc:	26100002 	addiu	s0,s0,2
800037e0:	26100002 	addiu	s0,s0,2
800037e4:	26100002 	addiu	s0,s0,2
800037e8:	02129021 	addu	s2,s0,s2
800037ec:	24141117 	li	s4,4375
800037f0:	1692018d 	bne	s4,s2,80003e28 <inst_error>
800037f4:	00000000 	nop
800037f8:	3c144444 	lui	s4,0x4444
800037fc:	1682018a 	bne	s4,v0,80003e28 <inst_error>
80003800:	00000000 	nop
80003804:	24020009 	li	v0,9
80003808:	00008021 	move	s0,zero
8000380c:	00009021 	move	s2,zero
80003810:	3c087fff 	lui	t0,0x7fff
80003814:	3508ffff 	ori	t0,t0,0xffff
80003818:	3c097fff 	lui	t1,0x7fff
8000381c:	3529ffff 	ori	t1,t1,0xffff
80003820:	3c0a8002 	lui	t2,0x8002
80003824:	354afff0 	ori	t2,t2,0xfff0
80003828:	ad480000 	sw	t0,0(t2)
8000382c:	10000004 	b	80003840 <n85_bltz_ex_ds_test+0x120>
80003830:	00000000 	nop
80003834:	26522222 	addiu	s2,s2,8738
80003838:	10000007 	b	80003858 <n85_bltz_ex_ds_test+0x138>
8000383c:	00000000 	nop
80003840:	26101111 	addiu	s0,s0,4369
80003844:	0540fffb 	bltz	t2,80003834 <n85_bltz_ex_ds_test+0x114>
80003848:	21147fff 	addi	s4,t0,32767
8000384c:	26100002 	addiu	s0,s0,2
80003850:	26100002 	addiu	s0,s0,2
80003854:	26100002 	addiu	s0,s0,2
80003858:	02129021 	addu	s2,s0,s2
8000385c:	24141117 	li	s4,4375
80003860:	16920171 	bne	s4,s2,80003e28 <inst_error>
80003864:	00000000 	nop
80003868:	3c144444 	lui	s4,0x4444
8000386c:	1682016e 	bne	s4,v0,80003e28 <inst_error>
80003870:	00000000 	nop
80003874:	24020009 	li	v0,9
80003878:	00008021 	move	s0,zero
8000387c:	00009021 	move	s2,zero
80003880:	3c087fff 	lui	t0,0x7fff
80003884:	3508ffff 	ori	t0,t0,0xffff
80003888:	3c097fff 	lui	t1,0x7fff
8000388c:	3529ffff 	ori	t1,t1,0xffff
80003890:	3c0a8002 	lui	t2,0x8002
80003894:	354afff0 	ori	t2,t2,0xfff0
80003898:	ad480000 	sw	t0,0(t2)
8000389c:	10000004 	b	800038b0 <n85_bltz_ex_ds_test+0x190>
800038a0:	00000000 	nop
800038a4:	26522222 	addiu	s2,s2,8738
800038a8:	10000007 	b	800038c8 <n85_bltz_ex_ds_test+0x1a8>
800038ac:	00000000 	nop
800038b0:	26101111 	addiu	s0,s0,4369
800038b4:	0500fffb 	bltz	t0,800038a4 <n85_bltz_ex_ds_test+0x184>
800038b8:	21147fff 	addi	s4,t0,32767
800038bc:	26100002 	addiu	s0,s0,2
800038c0:	26100002 	addiu	s0,s0,2
800038c4:	26100002 	addiu	s0,s0,2
800038c8:	02129021 	addu	s2,s0,s2
800038cc:	24141117 	li	s4,4375
800038d0:	16920155 	bne	s4,s2,80003e28 <inst_error>
800038d4:	00000000 	nop
800038d8:	3c144444 	lui	s4,0x4444
800038dc:	16820152 	bne	s4,v0,80003e28 <inst_error>
800038e0:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n85_bltz_ex_ds.S:18
800038e4:	24020009 	li	v0,9
800038e8:	00008021 	move	s0,zero
800038ec:	00009021 	move	s2,zero
800038f0:	3c087fff 	lui	t0,0x7fff
800038f4:	3508ffff 	ori	t0,t0,0xffff
800038f8:	3c097fff 	lui	t1,0x7fff
800038fc:	3529ffff 	ori	t1,t1,0xffff
80003900:	3c0a8002 	lui	t2,0x8002
80003904:	354afff0 	ori	t2,t2,0xfff0
80003908:	ad480000 	sw	t0,0(t2)
8000390c:	10000004 	b	80003920 <n85_bltz_ex_ds_test+0x200>
80003910:	00000000 	nop
80003914:	26522222 	addiu	s2,s2,8738
80003918:	10000007 	b	80003938 <n85_bltz_ex_ds_test+0x218>
8000391c:	00000000 	nop
80003920:	26101111 	addiu	s0,s0,4369
80003924:	05400004 	bltz	t2,80003938 <n85_bltz_ex_ds_test+0x218>
80003928:	0109a020 	add	s4,t0,t1
8000392c:	26100002 	addiu	s0,s0,2
80003930:	26100002 	addiu	s0,s0,2
80003934:	26100002 	addiu	s0,s0,2
80003938:	02129021 	addu	s2,s0,s2
8000393c:	24141117 	li	s4,4375
80003940:	16920139 	bne	s4,s2,80003e28 <inst_error>
80003944:	00000000 	nop
80003948:	3c144444 	lui	s4,0x4444
8000394c:	16820136 	bne	s4,v0,80003e28 <inst_error>
80003950:	00000000 	nop
80003954:	24020009 	li	v0,9
80003958:	00008021 	move	s0,zero
8000395c:	00009021 	move	s2,zero
80003960:	3c087fff 	lui	t0,0x7fff
80003964:	3508ffff 	ori	t0,t0,0xffff
80003968:	3c097fff 	lui	t1,0x7fff
8000396c:	3529ffff 	ori	t1,t1,0xffff
80003970:	3c0a8002 	lui	t2,0x8002
80003974:	354afff0 	ori	t2,t2,0xfff0
80003978:	ad480000 	sw	t0,0(t2)
8000397c:	10000004 	b	80003990 <n85_bltz_ex_ds_test+0x270>
80003980:	00000000 	nop
80003984:	26522222 	addiu	s2,s2,8738
80003988:	10000007 	b	800039a8 <n85_bltz_ex_ds_test+0x288>
8000398c:	00000000 	nop
80003990:	26101111 	addiu	s0,s0,4369
80003994:	05000004 	bltz	t0,800039a8 <n85_bltz_ex_ds_test+0x288>
80003998:	0109a020 	add	s4,t0,t1
8000399c:	26100002 	addiu	s0,s0,2
800039a0:	26100002 	addiu	s0,s0,2
800039a4:	26100002 	addiu	s0,s0,2
800039a8:	02129021 	addu	s2,s0,s2
800039ac:	24141117 	li	s4,4375
800039b0:	1692011d 	bne	s4,s2,80003e28 <inst_error>
800039b4:	00000000 	nop
800039b8:	3c144444 	lui	s4,0x4444
800039bc:	1682011a 	bne	s4,v0,80003e28 <inst_error>
800039c0:	00000000 	nop
800039c4:	24020009 	li	v0,9
800039c8:	00008021 	move	s0,zero
800039cc:	00009021 	move	s2,zero
800039d0:	3c087fff 	lui	t0,0x7fff
800039d4:	3508ffff 	ori	t0,t0,0xffff
800039d8:	3c097fff 	lui	t1,0x7fff
800039dc:	3529ffff 	ori	t1,t1,0xffff
800039e0:	3c0a8002 	lui	t2,0x8002
800039e4:	354afff0 	ori	t2,t2,0xfff0
800039e8:	ad480000 	sw	t0,0(t2)
800039ec:	10000004 	b	80003a00 <n85_bltz_ex_ds_test+0x2e0>
800039f0:	00000000 	nop
800039f4:	26522222 	addiu	s2,s2,8738
800039f8:	10000007 	b	80003a18 <n85_bltz_ex_ds_test+0x2f8>
800039fc:	00000000 	nop
80003a00:	26101111 	addiu	s0,s0,4369
80003a04:	0540fffb 	bltz	t2,800039f4 <n85_bltz_ex_ds_test+0x2d4>
80003a08:	0109a020 	add	s4,t0,t1
80003a0c:	26100002 	addiu	s0,s0,2
80003a10:	26100002 	addiu	s0,s0,2
80003a14:	26100002 	addiu	s0,s0,2
80003a18:	02129021 	addu	s2,s0,s2
80003a1c:	24141117 	li	s4,4375
80003a20:	16920101 	bne	s4,s2,80003e28 <inst_error>
80003a24:	00000000 	nop
80003a28:	3c144444 	lui	s4,0x4444
80003a2c:	168200fe 	bne	s4,v0,80003e28 <inst_error>
80003a30:	00000000 	nop
80003a34:	24020009 	li	v0,9
80003a38:	00008021 	move	s0,zero
80003a3c:	00009021 	move	s2,zero
80003a40:	3c087fff 	lui	t0,0x7fff
80003a44:	3508ffff 	ori	t0,t0,0xffff
80003a48:	3c097fff 	lui	t1,0x7fff
80003a4c:	3529ffff 	ori	t1,t1,0xffff
80003a50:	3c0a8002 	lui	t2,0x8002
80003a54:	354afff0 	ori	t2,t2,0xfff0
80003a58:	ad480000 	sw	t0,0(t2)
80003a5c:	10000004 	b	80003a70 <n85_bltz_ex_ds_test+0x350>
80003a60:	00000000 	nop
80003a64:	26522222 	addiu	s2,s2,8738
80003a68:	10000007 	b	80003a88 <n85_bltz_ex_ds_test+0x368>
80003a6c:	00000000 	nop
80003a70:	26101111 	addiu	s0,s0,4369
80003a74:	0500fffb 	bltz	t0,80003a64 <n85_bltz_ex_ds_test+0x344>
80003a78:	0109a020 	add	s4,t0,t1
80003a7c:	26100002 	addiu	s0,s0,2
80003a80:	26100002 	addiu	s0,s0,2
80003a84:	26100002 	addiu	s0,s0,2
80003a88:	02129021 	addu	s2,s0,s2
80003a8c:	24141117 	li	s4,4375
80003a90:	169200e5 	bne	s4,s2,80003e28 <inst_error>
80003a94:	00000000 	nop
80003a98:	3c144444 	lui	s4,0x4444
80003a9c:	168200e2 	bne	s4,v0,80003e28 <inst_error>
80003aa0:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n85_bltz_ex_ds.S:19
80003aa4:	24020009 	li	v0,9
80003aa8:	00008021 	move	s0,zero
80003aac:	00009021 	move	s2,zero
80003ab0:	3c087fff 	lui	t0,0x7fff
80003ab4:	3508ffff 	ori	t0,t0,0xffff
80003ab8:	3c097fff 	lui	t1,0x7fff
80003abc:	3529ffff 	ori	t1,t1,0xffff
80003ac0:	3c0a8002 	lui	t2,0x8002
80003ac4:	354afff0 	ori	t2,t2,0xfff0
80003ac8:	ad480000 	sw	t0,0(t2)
80003acc:	10000004 	b	80003ae0 <n85_bltz_ex_ds_test+0x3c0>
80003ad0:	00000000 	nop
80003ad4:	26522222 	addiu	s2,s2,8738
80003ad8:	10000007 	b	80003af8 <n85_bltz_ex_ds_test+0x3d8>
80003adc:	00000000 	nop
80003ae0:	26101111 	addiu	s0,s0,4369
80003ae4:	05400004 	bltz	t2,80003af8 <n85_bltz_ex_ds_test+0x3d8>
80003ae8:	010aa022 	sub	s4,t0,t2
80003aec:	26100002 	addiu	s0,s0,2
80003af0:	26100002 	addiu	s0,s0,2
80003af4:	26100002 	addiu	s0,s0,2
80003af8:	02129021 	addu	s2,s0,s2
80003afc:	24141117 	li	s4,4375
80003b00:	169200c9 	bne	s4,s2,80003e28 <inst_error>
80003b04:	00000000 	nop
80003b08:	3c144444 	lui	s4,0x4444
80003b0c:	168200c6 	bne	s4,v0,80003e28 <inst_error>
80003b10:	00000000 	nop
80003b14:	24020009 	li	v0,9
80003b18:	00008021 	move	s0,zero
80003b1c:	00009021 	move	s2,zero
80003b20:	3c087fff 	lui	t0,0x7fff
80003b24:	3508ffff 	ori	t0,t0,0xffff
80003b28:	3c097fff 	lui	t1,0x7fff
80003b2c:	3529ffff 	ori	t1,t1,0xffff
80003b30:	3c0a8002 	lui	t2,0x8002
80003b34:	354afff0 	ori	t2,t2,0xfff0
80003b38:	ad480000 	sw	t0,0(t2)
80003b3c:	10000004 	b	80003b50 <n85_bltz_ex_ds_test+0x430>
80003b40:	00000000 	nop
80003b44:	26522222 	addiu	s2,s2,8738
80003b48:	10000007 	b	80003b68 <n85_bltz_ex_ds_test+0x448>
80003b4c:	00000000 	nop
80003b50:	26101111 	addiu	s0,s0,4369
80003b54:	05000004 	bltz	t0,80003b68 <n85_bltz_ex_ds_test+0x448>
80003b58:	010aa022 	sub	s4,t0,t2
80003b5c:	26100002 	addiu	s0,s0,2
80003b60:	26100002 	addiu	s0,s0,2
80003b64:	26100002 	addiu	s0,s0,2
80003b68:	02129021 	addu	s2,s0,s2
80003b6c:	24141117 	li	s4,4375
80003b70:	169200ad 	bne	s4,s2,80003e28 <inst_error>
80003b74:	00000000 	nop
80003b78:	3c144444 	lui	s4,0x4444
80003b7c:	168200aa 	bne	s4,v0,80003e28 <inst_error>
80003b80:	00000000 	nop
80003b84:	24020009 	li	v0,9
80003b88:	00008021 	move	s0,zero
80003b8c:	00009021 	move	s2,zero
80003b90:	3c087fff 	lui	t0,0x7fff
80003b94:	3508ffff 	ori	t0,t0,0xffff
80003b98:	3c097fff 	lui	t1,0x7fff
80003b9c:	3529ffff 	ori	t1,t1,0xffff
80003ba0:	3c0a8002 	lui	t2,0x8002
80003ba4:	354afff0 	ori	t2,t2,0xfff0
80003ba8:	ad480000 	sw	t0,0(t2)
80003bac:	10000004 	b	80003bc0 <n85_bltz_ex_ds_test+0x4a0>
80003bb0:	00000000 	nop
80003bb4:	26522222 	addiu	s2,s2,8738
80003bb8:	10000007 	b	80003bd8 <n85_bltz_ex_ds_test+0x4b8>
80003bbc:	00000000 	nop
80003bc0:	26101111 	addiu	s0,s0,4369
80003bc4:	0540fffb 	bltz	t2,80003bb4 <n85_bltz_ex_ds_test+0x494>
80003bc8:	010aa022 	sub	s4,t0,t2
80003bcc:	26100002 	addiu	s0,s0,2
80003bd0:	26100002 	addiu	s0,s0,2
80003bd4:	26100002 	addiu	s0,s0,2
80003bd8:	02129021 	addu	s2,s0,s2
80003bdc:	24141117 	li	s4,4375
80003be0:	16920091 	bne	s4,s2,80003e28 <inst_error>
80003be4:	00000000 	nop
80003be8:	3c144444 	lui	s4,0x4444
80003bec:	1682008e 	bne	s4,v0,80003e28 <inst_error>
80003bf0:	00000000 	nop
80003bf4:	24020009 	li	v0,9
80003bf8:	00008021 	move	s0,zero
80003bfc:	00009021 	move	s2,zero
80003c00:	3c087fff 	lui	t0,0x7fff
80003c04:	3508ffff 	ori	t0,t0,0xffff
80003c08:	3c097fff 	lui	t1,0x7fff
80003c0c:	3529ffff 	ori	t1,t1,0xffff
80003c10:	3c0a8002 	lui	t2,0x8002
80003c14:	354afff0 	ori	t2,t2,0xfff0
80003c18:	ad480000 	sw	t0,0(t2)
80003c1c:	10000004 	b	80003c30 <n85_bltz_ex_ds_test+0x510>
80003c20:	00000000 	nop
80003c24:	26522222 	addiu	s2,s2,8738
80003c28:	10000007 	b	80003c48 <n85_bltz_ex_ds_test+0x528>
80003c2c:	00000000 	nop
80003c30:	26101111 	addiu	s0,s0,4369
80003c34:	0500fffb 	bltz	t0,80003c24 <n85_bltz_ex_ds_test+0x504>
80003c38:	010aa022 	sub	s4,t0,t2
80003c3c:	26100002 	addiu	s0,s0,2
80003c40:	26100002 	addiu	s0,s0,2
80003c44:	26100002 	addiu	s0,s0,2
80003c48:	02129021 	addu	s2,s0,s2
80003c4c:	24141117 	li	s4,4375
80003c50:	16920075 	bne	s4,s2,80003e28 <inst_error>
80003c54:	00000000 	nop
80003c58:	3c144444 	lui	s4,0x4444
80003c5c:	16820072 	bne	s4,v0,80003e28 <inst_error>
80003c60:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n85_bltz_ex_ds.S:26
80003c64:	24020009 	li	v0,9
80003c68:	00008021 	move	s0,zero
80003c6c:	00009021 	move	s2,zero
80003c70:	3c087fff 	lui	t0,0x7fff
80003c74:	3508ffff 	ori	t0,t0,0xffff
80003c78:	3c097fff 	lui	t1,0x7fff
80003c7c:	3529ffff 	ori	t1,t1,0xffff
80003c80:	3c0a8002 	lui	t2,0x8002
80003c84:	354afff0 	ori	t2,t2,0xfff0
80003c88:	ad480000 	sw	t0,0(t2)
80003c8c:	10000004 	b	80003ca0 <n85_bltz_ex_ds_test+0x580>
80003c90:	00000000 	nop
80003c94:	26522222 	addiu	s2,s2,8738
80003c98:	10000007 	b	80003cb8 <n85_bltz_ex_ds_test+0x598>
80003c9c:	00000000 	nop
80003ca0:	26101111 	addiu	s0,s0,4369
80003ca4:	05400004 	bltz	t2,80003cb8 <n85_bltz_ex_ds_test+0x598>
80003ca8:	0000000c 	syscall
80003cac:	26100002 	addiu	s0,s0,2
80003cb0:	26100002 	addiu	s0,s0,2
80003cb4:	26100002 	addiu	s0,s0,2
80003cb8:	02129021 	addu	s2,s0,s2
80003cbc:	24141117 	li	s4,4375
80003cc0:	16920059 	bne	s4,s2,80003e28 <inst_error>
80003cc4:	00000000 	nop
80003cc8:	3c144444 	lui	s4,0x4444
80003ccc:	16820056 	bne	s4,v0,80003e28 <inst_error>
80003cd0:	00000000 	nop
80003cd4:	24020009 	li	v0,9
80003cd8:	00008021 	move	s0,zero
80003cdc:	00009021 	move	s2,zero
80003ce0:	3c087fff 	lui	t0,0x7fff
80003ce4:	3508ffff 	ori	t0,t0,0xffff
80003ce8:	3c097fff 	lui	t1,0x7fff
80003cec:	3529ffff 	ori	t1,t1,0xffff
80003cf0:	3c0a8002 	lui	t2,0x8002
80003cf4:	354afff0 	ori	t2,t2,0xfff0
80003cf8:	ad480000 	sw	t0,0(t2)
80003cfc:	10000004 	b	80003d10 <n85_bltz_ex_ds_test+0x5f0>
80003d00:	00000000 	nop
80003d04:	26522222 	addiu	s2,s2,8738
80003d08:	10000007 	b	80003d28 <n85_bltz_ex_ds_test+0x608>
80003d0c:	00000000 	nop
80003d10:	26101111 	addiu	s0,s0,4369
80003d14:	05000004 	bltz	t0,80003d28 <n85_bltz_ex_ds_test+0x608>
80003d18:	0000000c 	syscall
80003d1c:	26100002 	addiu	s0,s0,2
80003d20:	26100002 	addiu	s0,s0,2
80003d24:	26100002 	addiu	s0,s0,2
80003d28:	02129021 	addu	s2,s0,s2
80003d2c:	24141117 	li	s4,4375
80003d30:	1692003d 	bne	s4,s2,80003e28 <inst_error>
80003d34:	00000000 	nop
80003d38:	3c144444 	lui	s4,0x4444
80003d3c:	1682003a 	bne	s4,v0,80003e28 <inst_error>
80003d40:	00000000 	nop
80003d44:	24020009 	li	v0,9
80003d48:	00008021 	move	s0,zero
80003d4c:	00009021 	move	s2,zero
80003d50:	3c087fff 	lui	t0,0x7fff
80003d54:	3508ffff 	ori	t0,t0,0xffff
80003d58:	3c097fff 	lui	t1,0x7fff
80003d5c:	3529ffff 	ori	t1,t1,0xffff
80003d60:	3c0a8002 	lui	t2,0x8002
80003d64:	354afff0 	ori	t2,t2,0xfff0
80003d68:	ad480000 	sw	t0,0(t2)
80003d6c:	10000004 	b	80003d80 <n85_bltz_ex_ds_test+0x660>
80003d70:	00000000 	nop
80003d74:	26522222 	addiu	s2,s2,8738
80003d78:	10000007 	b	80003d98 <n85_bltz_ex_ds_test+0x678>
80003d7c:	00000000 	nop
80003d80:	26101111 	addiu	s0,s0,4369
80003d84:	0540fffb 	bltz	t2,80003d74 <n85_bltz_ex_ds_test+0x654>
80003d88:	0000000c 	syscall
80003d8c:	26100002 	addiu	s0,s0,2
80003d90:	26100002 	addiu	s0,s0,2
80003d94:	26100002 	addiu	s0,s0,2
80003d98:	02129021 	addu	s2,s0,s2
80003d9c:	24141117 	li	s4,4375
80003da0:	16920021 	bne	s4,s2,80003e28 <inst_error>
80003da4:	00000000 	nop
80003da8:	3c144444 	lui	s4,0x4444
80003dac:	1682001e 	bne	s4,v0,80003e28 <inst_error>
80003db0:	00000000 	nop
80003db4:	24020009 	li	v0,9
80003db8:	00008021 	move	s0,zero
80003dbc:	00009021 	move	s2,zero
80003dc0:	3c087fff 	lui	t0,0x7fff
80003dc4:	3508ffff 	ori	t0,t0,0xffff
80003dc8:	3c097fff 	lui	t1,0x7fff
80003dcc:	3529ffff 	ori	t1,t1,0xffff
80003dd0:	3c0a8002 	lui	t2,0x8002
80003dd4:	354afff0 	ori	t2,t2,0xfff0
80003dd8:	ad480000 	sw	t0,0(t2)
80003ddc:	10000004 	b	80003df0 <n85_bltz_ex_ds_test+0x6d0>
80003de0:	00000000 	nop
80003de4:	26522222 	addiu	s2,s2,8738
80003de8:	10000007 	b	80003e08 <n85_bltz_ex_ds_test+0x6e8>
80003dec:	00000000 	nop
80003df0:	26101111 	addiu	s0,s0,4369
80003df4:	0500fffb 	bltz	t0,80003de4 <n85_bltz_ex_ds_test+0x6c4>
80003df8:	0000000c 	syscall
80003dfc:	26100002 	addiu	s0,s0,2
80003e00:	26100002 	addiu	s0,s0,2
80003e04:	26100002 	addiu	s0,s0,2
80003e08:	02129021 	addu	s2,s0,s2
80003e0c:	24141117 	li	s4,4375
80003e10:	16920005 	bne	s4,s2,80003e28 <inst_error>
80003e14:	00000000 	nop
80003e18:	3c144444 	lui	s4,0x4444
80003e1c:	16820002 	bne	s4,v0,80003e28 <inst_error>
80003e20:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n85_bltz_ex_ds.S:33
80003e24:	26730001 	addiu	s3,s3,1

80003e28 <inst_error>:
/home/ubuntu/functiontest/src/inst/n85_bltz_ex_ds.S:36
80003e28:	00934025 	or	t0,a0,s3
/home/ubuntu/functiontest/src/inst/n85_bltz_ex_ds.S:37
80003e2c:	ae280000 	sw	t0,0(s1)
/home/ubuntu/functiontest/src/inst/n85_bltz_ex_ds.S:38
80003e30:	03e00008 	jr	ra
/home/ubuntu/functiontest/src/inst/n85_bltz_ex_ds.S:39
80003e34:	00000000 	nop

80003e38 <n89_jal_ex_ds_test>:
/home/ubuntu/functiontest/src/inst/n89_jal_ex_ds.S:14
80003e38:	3c045900 	lui	a0,0x5900
/home/ubuntu/functiontest/src/inst/n89_jal_ex_ds.S:17
80003e3c:	001f6021 	addu	t4,zero,ra
80003e40:	24020009 	li	v0,9
80003e44:	00008021 	move	s0,zero
80003e48:	00009021 	move	s2,zero
80003e4c:	3c087fff 	lui	t0,0x7fff
80003e50:	3508ffff 	ori	t0,t0,0xffff
80003e54:	3c097fff 	lui	t1,0x7fff
80003e58:	3529ffff 	ori	t1,t1,0xffff
80003e5c:	3c0a8002 	lui	t2,0x8002
80003e60:	354afff0 	ori	t2,t2,0xfff0
80003e64:	ad480000 	sw	t0,0(t2)
80003e68:	10000004 	b	80003e7c <n89_jal_ex_ds_test+0x44>
80003e6c:	00000000 	nop
80003e70:	26522222 	addiu	s2,s2,8738
80003e74:	10000007 	b	80003e94 <n89_jal_ex_ds_test+0x5c>
80003e78:	00000000 	nop
80003e7c:	26101111 	addiu	s0,s0,4369
80003e80:	0c000fa5 	jal	80003e94 <n89_jal_ex_ds_test+0x5c>
80003e84:	21147fff 	addi	s4,t0,32767
80003e88:	26100002 	addiu	s0,s0,2
80003e8c:	26100002 	addiu	s0,s0,2
80003e90:	26100002 	addiu	s0,s0,2
80003e94:	02129021 	addu	s2,s0,s2
80003e98:	0180f821 	move	ra,t4
80003e9c:	24141117 	li	s4,4375
80003ea0:	169200d3 	bne	s4,s2,800041f0 <inst_error>
80003ea4:	00000000 	nop
80003ea8:	3c144444 	lui	s4,0x4444
80003eac:	168200d0 	bne	s4,v0,800041f0 <inst_error>
80003eb0:	00000000 	nop
80003eb4:	24020009 	li	v0,9
80003eb8:	00008021 	move	s0,zero
80003ebc:	00009021 	move	s2,zero
80003ec0:	3c087fff 	lui	t0,0x7fff
80003ec4:	3508ffff 	ori	t0,t0,0xffff
80003ec8:	3c097fff 	lui	t1,0x7fff
80003ecc:	3529ffff 	ori	t1,t1,0xffff
80003ed0:	3c0a8002 	lui	t2,0x8002
80003ed4:	354afff0 	ori	t2,t2,0xfff0
80003ed8:	ad480000 	sw	t0,0(t2)
80003edc:	10000004 	b	80003ef0 <n89_jal_ex_ds_test+0xb8>
80003ee0:	00000000 	nop
80003ee4:	26522222 	addiu	s2,s2,8738
80003ee8:	10000007 	b	80003f08 <n89_jal_ex_ds_test+0xd0>
80003eec:	00000000 	nop
80003ef0:	26101111 	addiu	s0,s0,4369
80003ef4:	0c000fb9 	jal	80003ee4 <n89_jal_ex_ds_test+0xac>
80003ef8:	21147fff 	addi	s4,t0,32767
80003efc:	26100002 	addiu	s0,s0,2
80003f00:	26100002 	addiu	s0,s0,2
80003f04:	26100002 	addiu	s0,s0,2
80003f08:	02129021 	addu	s2,s0,s2
80003f0c:	0180f821 	move	ra,t4
80003f10:	24141117 	li	s4,4375
80003f14:	169200b6 	bne	s4,s2,800041f0 <inst_error>
80003f18:	00000000 	nop
80003f1c:	3c144444 	lui	s4,0x4444
80003f20:	168200b3 	bne	s4,v0,800041f0 <inst_error>
80003f24:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n89_jal_ex_ds.S:18
80003f28:	001f6021 	addu	t4,zero,ra
80003f2c:	24020009 	li	v0,9
80003f30:	00008021 	move	s0,zero
80003f34:	00009021 	move	s2,zero
80003f38:	3c087fff 	lui	t0,0x7fff
80003f3c:	3508ffff 	ori	t0,t0,0xffff
80003f40:	3c097fff 	lui	t1,0x7fff
80003f44:	3529ffff 	ori	t1,t1,0xffff
80003f48:	3c0a8002 	lui	t2,0x8002
80003f4c:	354afff0 	ori	t2,t2,0xfff0
80003f50:	ad480000 	sw	t0,0(t2)
80003f54:	10000004 	b	80003f68 <n89_jal_ex_ds_test+0x130>
80003f58:	00000000 	nop
80003f5c:	26522222 	addiu	s2,s2,8738
80003f60:	10000007 	b	80003f80 <n89_jal_ex_ds_test+0x148>
80003f64:	00000000 	nop
80003f68:	26101111 	addiu	s0,s0,4369
80003f6c:	0c000fe0 	jal	80003f80 <n89_jal_ex_ds_test+0x148>
80003f70:	0109a020 	add	s4,t0,t1
80003f74:	26100002 	addiu	s0,s0,2
80003f78:	26100002 	addiu	s0,s0,2
80003f7c:	26100002 	addiu	s0,s0,2
80003f80:	02129021 	addu	s2,s0,s2
80003f84:	0180f821 	move	ra,t4
80003f88:	24141117 	li	s4,4375
80003f8c:	16920098 	bne	s4,s2,800041f0 <inst_error>
80003f90:	00000000 	nop
80003f94:	3c144444 	lui	s4,0x4444
80003f98:	16820095 	bne	s4,v0,800041f0 <inst_error>
80003f9c:	00000000 	nop
80003fa0:	24020009 	li	v0,9
80003fa4:	00008021 	move	s0,zero
80003fa8:	00009021 	move	s2,zero
80003fac:	3c087fff 	lui	t0,0x7fff
80003fb0:	3508ffff 	ori	t0,t0,0xffff
80003fb4:	3c097fff 	lui	t1,0x7fff
80003fb8:	3529ffff 	ori	t1,t1,0xffff
80003fbc:	3c0a8002 	lui	t2,0x8002
80003fc0:	354afff0 	ori	t2,t2,0xfff0
80003fc4:	ad480000 	sw	t0,0(t2)
80003fc8:	10000004 	b	80003fdc <n89_jal_ex_ds_test+0x1a4>
80003fcc:	00000000 	nop
80003fd0:	26522222 	addiu	s2,s2,8738
80003fd4:	10000007 	b	80003ff4 <n89_jal_ex_ds_test+0x1bc>
80003fd8:	00000000 	nop
80003fdc:	26101111 	addiu	s0,s0,4369
80003fe0:	0c000ff4 	jal	80003fd0 <n89_jal_ex_ds_test+0x198>
80003fe4:	0109a020 	add	s4,t0,t1
80003fe8:	26100002 	addiu	s0,s0,2
80003fec:	26100002 	addiu	s0,s0,2
80003ff0:	26100002 	addiu	s0,s0,2
80003ff4:	02129021 	addu	s2,s0,s2
80003ff8:	0180f821 	move	ra,t4
80003ffc:	24141117 	li	s4,4375
80004000:	1692007b 	bne	s4,s2,800041f0 <inst_error>
80004004:	00000000 	nop
80004008:	3c144444 	lui	s4,0x4444
8000400c:	16820078 	bne	s4,v0,800041f0 <inst_error>
80004010:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n89_jal_ex_ds.S:19
80004014:	001f6021 	addu	t4,zero,ra
80004018:	24020009 	li	v0,9
8000401c:	00008021 	move	s0,zero
80004020:	00009021 	move	s2,zero
80004024:	3c087fff 	lui	t0,0x7fff
80004028:	3508ffff 	ori	t0,t0,0xffff
8000402c:	3c097fff 	lui	t1,0x7fff
80004030:	3529ffff 	ori	t1,t1,0xffff
80004034:	3c0a8002 	lui	t2,0x8002
80004038:	354afff0 	ori	t2,t2,0xfff0
8000403c:	ad480000 	sw	t0,0(t2)
80004040:	10000004 	b	80004054 <n89_jal_ex_ds_test+0x21c>
80004044:	00000000 	nop
80004048:	26522222 	addiu	s2,s2,8738
8000404c:	10000007 	b	8000406c <n89_jal_ex_ds_test+0x234>
80004050:	00000000 	nop
80004054:	26101111 	addiu	s0,s0,4369
80004058:	0c00101b 	jal	8000406c <n89_jal_ex_ds_test+0x234>
8000405c:	010aa022 	sub	s4,t0,t2
80004060:	26100002 	addiu	s0,s0,2
80004064:	26100002 	addiu	s0,s0,2
80004068:	26100002 	addiu	s0,s0,2
8000406c:	02129021 	addu	s2,s0,s2
80004070:	0180f821 	move	ra,t4
80004074:	24141117 	li	s4,4375
80004078:	1692005d 	bne	s4,s2,800041f0 <inst_error>
8000407c:	00000000 	nop
80004080:	3c144444 	lui	s4,0x4444
80004084:	1682005a 	bne	s4,v0,800041f0 <inst_error>
80004088:	00000000 	nop
8000408c:	24020009 	li	v0,9
80004090:	00008021 	move	s0,zero
80004094:	00009021 	move	s2,zero
80004098:	3c087fff 	lui	t0,0x7fff
8000409c:	3508ffff 	ori	t0,t0,0xffff
800040a0:	3c097fff 	lui	t1,0x7fff
800040a4:	3529ffff 	ori	t1,t1,0xffff
800040a8:	3c0a8002 	lui	t2,0x8002
800040ac:	354afff0 	ori	t2,t2,0xfff0
800040b0:	ad480000 	sw	t0,0(t2)
800040b4:	10000004 	b	800040c8 <n89_jal_ex_ds_test+0x290>
800040b8:	00000000 	nop
800040bc:	26522222 	addiu	s2,s2,8738
800040c0:	10000007 	b	800040e0 <n89_jal_ex_ds_test+0x2a8>
800040c4:	00000000 	nop
800040c8:	26101111 	addiu	s0,s0,4369
800040cc:	0c00102f 	jal	800040bc <n89_jal_ex_ds_test+0x284>
800040d0:	010aa022 	sub	s4,t0,t2
800040d4:	26100002 	addiu	s0,s0,2
800040d8:	26100002 	addiu	s0,s0,2
800040dc:	26100002 	addiu	s0,s0,2
800040e0:	02129021 	addu	s2,s0,s2
800040e4:	0180f821 	move	ra,t4
800040e8:	24141117 	li	s4,4375
800040ec:	16920040 	bne	s4,s2,800041f0 <inst_error>
800040f0:	00000000 	nop
800040f4:	3c144444 	lui	s4,0x4444
800040f8:	1682003d 	bne	s4,v0,800041f0 <inst_error>
800040fc:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n89_jal_ex_ds.S:26
80004100:	001f6021 	addu	t4,zero,ra
80004104:	24020009 	li	v0,9
80004108:	00008021 	move	s0,zero
8000410c:	00009021 	move	s2,zero
80004110:	3c087fff 	lui	t0,0x7fff
80004114:	3508ffff 	ori	t0,t0,0xffff
80004118:	3c097fff 	lui	t1,0x7fff
8000411c:	3529ffff 	ori	t1,t1,0xffff
80004120:	3c0a8002 	lui	t2,0x8002
80004124:	354afff0 	ori	t2,t2,0xfff0
80004128:	ad480000 	sw	t0,0(t2)
8000412c:	10000004 	b	80004140 <n89_jal_ex_ds_test+0x308>
80004130:	00000000 	nop
80004134:	26522222 	addiu	s2,s2,8738
80004138:	10000007 	b	80004158 <n89_jal_ex_ds_test+0x320>
8000413c:	00000000 	nop
80004140:	26101111 	addiu	s0,s0,4369
80004144:	0c001056 	jal	80004158 <n89_jal_ex_ds_test+0x320>
80004148:	0000000c 	syscall
8000414c:	26100002 	addiu	s0,s0,2
80004150:	26100002 	addiu	s0,s0,2
80004154:	26100002 	addiu	s0,s0,2
80004158:	02129021 	addu	s2,s0,s2
8000415c:	0180f821 	move	ra,t4
80004160:	24141117 	li	s4,4375
80004164:	16920022 	bne	s4,s2,800041f0 <inst_error>
80004168:	00000000 	nop
8000416c:	3c144444 	lui	s4,0x4444
80004170:	1682001f 	bne	s4,v0,800041f0 <inst_error>
80004174:	00000000 	nop
80004178:	24020009 	li	v0,9
8000417c:	00008021 	move	s0,zero
80004180:	00009021 	move	s2,zero
80004184:	3c087fff 	lui	t0,0x7fff
80004188:	3508ffff 	ori	t0,t0,0xffff
8000418c:	3c097fff 	lui	t1,0x7fff
80004190:	3529ffff 	ori	t1,t1,0xffff
80004194:	3c0a8002 	lui	t2,0x8002
80004198:	354afff0 	ori	t2,t2,0xfff0
8000419c:	ad480000 	sw	t0,0(t2)
800041a0:	10000004 	b	800041b4 <n89_jal_ex_ds_test+0x37c>
800041a4:	00000000 	nop
800041a8:	26522222 	addiu	s2,s2,8738
800041ac:	10000007 	b	800041cc <n89_jal_ex_ds_test+0x394>
800041b0:	00000000 	nop
800041b4:	26101111 	addiu	s0,s0,4369
800041b8:	0c00106a 	jal	800041a8 <n89_jal_ex_ds_test+0x370>
800041bc:	0000000c 	syscall
800041c0:	26100002 	addiu	s0,s0,2
800041c4:	26100002 	addiu	s0,s0,2
800041c8:	26100002 	addiu	s0,s0,2
800041cc:	02129021 	addu	s2,s0,s2
800041d0:	0180f821 	move	ra,t4
800041d4:	24141117 	li	s4,4375
800041d8:	16920005 	bne	s4,s2,800041f0 <inst_error>
800041dc:	00000000 	nop
800041e0:	3c144444 	lui	s4,0x4444
800041e4:	16820002 	bne	s4,v0,800041f0 <inst_error>
800041e8:	00000000 	nop
/home/ubuntu/functiontest/src/inst/n89_jal_ex_ds.S:33
800041ec:	26730001 	addiu	s3,s3,1

800041f0 <inst_error>:
/home/ubuntu/functiontest/src/inst/n89_jal_ex_ds.S:36
800041f0:	00934025 	or	t0,a0,s3
/home/ubuntu/functiontest/src/inst/n89_jal_ex_ds.S:37
800041f4:	ae280000 	sw	t0,0(s1)
/home/ubuntu/functiontest/src/inst/n89_jal_ex_ds.S:38
800041f8:	03e00008 	jr	ra
/home/ubuntu/functiontest/src/inst/n89_jal_ex_ds.S:39
800041fc:	00000000 	nop

80004200 <__CTOR_LIST__>:
	...

80004208 <__CTOR_END__>:
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	0x1c
   4:	00020000 	sll	zero,v0,0x0
   8:	00000400 	sll	zero,zero,0x10
   c:	00000000 	nop
  10:	80000000 	lb	zero,0(zero)
  14:	0000076c 	0x76c
	...
  20:	0000001c 	0x1c
  24:	00020000 	sll	zero,v0,0x0
  28:	004f0400 	0x4f0400
  2c:	00000000 	nop
  30:	80000770 	lb	zero,1904(zero)
  34:	0000002c 	0x2c
	...
  40:	0000001c 	0x1c
  44:	00020000 	sll	zero,v0,0x0
  48:	00a70400 	0xa70400
  4c:	00000000 	nop
  50:	80000830 	lb	zero,2096(zero)
  54:	000003d8 	0x3d8
	...
  60:	0000001c 	0x1c
  64:	00020000 	sll	zero,v0,0x0
  68:	01020400 	0x1020400
  6c:	00000000 	nop
  70:	80000c08 	lb	zero,3080(zero)
  74:	00000398 	0x398
	...
  80:	0000001c 	0x1c
  84:	00020000 	sll	zero,v0,0x0
  88:	015c0400 	0x15c0400
  8c:	00000000 	nop
  90:	80000fa0 	lb	zero,4000(zero)
  94:	00000408 	0x408
	...
  a0:	0000001c 	0x1c
  a4:	00020000 	sll	zero,v0,0x0
  a8:	01b90400 	0x1b90400
  ac:	00000000 	nop
  b0:	800013a8 	lb	zero,5032(zero)
  b4:	00000718 	0x718
	...
  c0:	0000001c 	0x1c
  c4:	00020000 	sll	zero,v0,0x0
  c8:	02150400 	0x2150400
  cc:	00000000 	nop
  d0:	80001ac0 	lb	zero,6848(zero)
  d4:	00000718 	0x718
	...
  e0:	0000001c 	0x1c
  e4:	00020000 	sll	zero,v0,0x0
  e8:	02720400 	0x2720400
  ec:	00000000 	nop
  f0:	800007a0 	lb	zero,1952(zero)
  f4:	0000002c 	0x2c
	...
 100:	0000001c 	0x1c
 104:	00020000 	sll	zero,v0,0x0
 108:	02cc0400 	0x2cc0400
 10c:	00000000 	nop
 110:	800021d8 	lb	zero,8664(zero)
 114:	00000718 	0x718
	...
 120:	0000001c 	0x1c
 124:	00020000 	sll	zero,v0,0x0
 128:	03290400 	0x3290400
 12c:	00000000 	nop
 130:	800028f0 	lb	zero,10480(zero)
 134:	00000718 	0x718
	...
 140:	0000001c 	0x1c
 144:	00020000 	sll	zero,v0,0x0
 148:	03850400 	0x3850400
 14c:	00000000 	nop
 150:	80003008 	lb	zero,12296(zero)
 154:	00000718 	0x718
	...
 160:	0000001c 	0x1c
 164:	00020000 	sll	zero,v0,0x0
 168:	03e20400 	0x3e20400
 16c:	00000000 	nop
 170:	80003720 	lb	zero,14112(zero)
 174:	00000718 	0x718
	...
 180:	0000001c 	0x1c
 184:	00020000 	sll	zero,v0,0x0
 188:	043f0400 	0x43f0400
 18c:	00000000 	nop
 190:	800007d0 	lb	zero,2000(zero)
 194:	00000044 	0x44
	...
 1a0:	0000001c 	0x1c
 1a4:	00020000 	sll	zero,v0,0x0
 1a8:	04960400 	0x4960400
 1ac:	00000000 	nop
 1b0:	80003e38 	lb	zero,15928(zero)
 1b4:	000003c8 	0x3c8
	...

Disassembly of section .pdr:

00000000 <.pdr>:
   0:	80000770 	lb	zero,1904(zero)
	...
  18:	0000001d 	0x1d
  1c:	0000001f 	0x1f
  20:	800007a0 	lb	zero,1952(zero)
	...
  38:	0000001d 	0x1d
  3c:	0000001f 	0x1f
  40:	800007d0 	lb	zero,2000(zero)
	...
  58:	0000001d 	0x1d
  5c:	0000001f 	0x1f

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000131 	0x131
   4:	00020000 	sll	zero,v0,0x0
   8:	001e0101 	0x1e0101
   c:	fb0e0d00 	0xfb0e0d00
  10:	01010101 	0x1010101
  14:	00000001 	0x1
  18:	00000100 	sll	zero,zero,0x4
  1c:	73746172 	0x73746172
  20:	742e5300 	jalx	b94c00 <data_size+0xb91220>
  24:	00000000 	nop
  28:	00050280 	sll	zero,a1,0xa
  2c:	00000003 	sra	zero,zero,0x0
  30:	c000014b 	lwc0	$0,331(zero)
  34:	4b4b8383 	c2	0x14b8383
  38:	4b4b4b4c 	c2	0x14b4b4c
  3c:	4b02d006 	c2	0x102d006
  40:	184b4b4b 	0x184b4b4b
  44:	4b4b4b4b 	c2	0x14b4b4b
  48:	4b4b4b4b 	c2	0x14b4b4b
  4c:	4b4b4b4b 	c2	0x14b4b4b
  50:	4b4b4b4b 	c2	0x14b4b4b
  54:	4b4b4b4b 	c2	0x14b4b4b
  58:	4b4b4b4b 	c2	0x14b4b4b
  5c:	4b4c4b4b 	c2	0x14c4b4b
  60:	834b4b4b 	lb	t3,19275(k0)
  64:	4b4b4b4b 	c2	0x14b4b4b
  68:	4b4b4b4b 	c2	0x14b4b4b
  6c:	4b4b4b4c 	c2	0x14b4b4c
  70:	4b4b834b 	c2	0x14b834b
  74:	4b4b4b4b 	c2	0x14b4b4b
  78:	4b4b4b4b 	c2	0x14b4b4b
  7c:	4b4b4b4b 	c2	0x14b4b4b
  80:	4b4c834b 	c2	0x14c834b
  84:	4b4b4c4b 	c2	0x14b4c4b
  88:	4b4b4b4b 	c2	0x14b4b4b
  8c:	4b4b4b4b 	c2	0x14b4b4b
  90:	4b4b4b4b 	c2	0x14b4b4b
  94:	4c4b4b4b 	0x4c4b4b4b
  98:	4b4b4b4b 	c2	0x14b4b4b
  9c:	4b4b4b4b 	c2	0x14b4b4b
  a0:	4b4b4c4b 	c2	0x14b4c4b
  a4:	4b4b4b4b 	c2	0x14b4b4b
  a8:	4b4b4b4b 	c2	0x14b4b4b
  ac:	4b4b4b4b 	c2	0x14b4b4b
  b0:	4c4b4b4b 	0x4c4b4b4b
  b4:	4b4b4b4b 	c2	0x14b4b4b
  b8:	4b4b4b4b 	c2	0x14b4b4b
  bc:	4b4b4b4c 	c2	0x14b4b4c
  c0:	4b4b4b4b 	c2	0x14b4b4b
  c4:	4b4b4b4b 	c2	0x14b4b4b
  c8:	4b4b4b4b 	c2	0x14b4b4b
  cc:	4b4c4b4b 	c2	0x14c4b4b
  d0:	4b4b4b4b 	c2	0x14b4b4b
  d4:	4c4b4b4b 	0x4c4b4b4b
  d8:	4b4b4b4b 	c2	0x14b4b4b
  dc:	4c4b4b4b 	0x4c4b4b4b
  e0:	4d4c4b4b 	0x4d4c4b4b
  e4:	504b834c 	0x504b834c
  e8:	834b03e5 	lb	t3,997(k0)
  ec:	024a834b 	0x24a834b
  f0:	4b4b4b83 	c2	0x14b4b83
  f4:	4b4b4b4b 	c2	0x14b4b4b
  f8:	834b4b4b 	lb	t3,19275(k0)
  fc:	4b834b4b 	c2	0x1834b4b
 100:	4b4b834b 	c2	0x14b834b
 104:	4b4b4b83 	c2	0x14b4b83
 108:	4b4b4b03 	c2	0x14b4b03
 10c:	0b4a834b 	j	d2a0d2c <data_size+0xd29d34c>
 110:	4b4b4b83 	c2	0x14b4b83
 114:	4b4b4b4b 	c2	0x14b4b4b
 118:	834b4b4b 	lb	t3,19275(k0)
 11c:	4b834b4b 	c2	0x1834b4b
 120:	4b4e4b4b 	c2	0x14e4b4b
 124:	4c4b4d83 	0x4c4b4d83
 128:	4c4b4e4c 	0x4c4b4e4c
 12c:	4b4b4b4b 	c2	0x14b4b4b
 130:	02040001 	0x2040001
 134:	01000000 	0x1000000
 138:	41000200 	bc0f	93c <data_size-0x30a4>
 13c:	00002201 	0x2201
 140:	01fb0e0d 	break	0x1fb,0x38
 144:	00010101 	0x10101
 148:	01000000 	0x1000000
 14c:	01000001 	0x1000001
 150:	006e3435 	0x6e3435
 154:	5f627265 	0x5f627265
 158:	616b2e53 	0x616b2e53
 15c:	00000000 	nop
 160:	00000502 	srl	zero,zero,0x14
 164:	80000770 	lb	zero,1904(zero)
 168:	030a014b 	0x30a014b
 16c:	4e4c4b4b 	c3	0x4c4b4b
 170:	4c4d4b4b 	0x4c4d4b4b
 174:	4b020400 	c2	0x1020400
 178:	01010000 	0x1010000
 17c:	004f0002 	0x4f0002
 180:	00000025 	move	zero,zero
 184:	0101fb0e 	0x101fb0e
 188:	0d000101 	jal	4000404 <data_size+0x3ffca24>
 18c:	01010000 	0x1010000
 190:	00010000 	sll	zero,at,0x0
 194:	01006e39 	0x1006e39
 198:	305f6a72 	andi	ra,v0,0x6a72
 19c:	5f65785f 	0x5f65785f
 1a0:	64732e53 	0x64732e53
 1a4:	00000000 	nop
 1a8:	00000502 	srl	zero,zero,0x14
 1ac:	80000830 	lb	zero,2096(zero)
 1b0:	030d014d 	break	0x30d,0x5
 1b4:	02f00113 	0x2f00113
 1b8:	02f00113 	0x2f00113
 1bc:	02f00119 	0x2f00119
 1c0:	02f00119 	0x2f00119
 1c4:	4d4b4b4b 	0x4d4b4b4b
 1c8:	02040001 	0x2040001
 1cc:	01000000 	0x1000000
 1d0:	4e000200 	c3	0x200
 1d4:	00002401 	0x2401
 1d8:	01fb0e0d 	break	0x1fb,0x38
 1dc:	00010101 	0x10101
 1e0:	01000000 	0x1000000
 1e4:	01000001 	0x1000001
 1e8:	006e3838 	0x6e3838
 1ec:	5f6a5f65 	0x5f6a5f65
 1f0:	785f6473 	0x785f6473
 1f4:	2e530000 	sltiu	s3,s2,0
 1f8:	00000000 	nop
 1fc:	05028000 	0x5028000
 200:	0c08030d 	jal	200c34 <data_size+0x1fd254>
 204:	014d02e0 	0x14d02e0
 208:	011302e0 	0x11302e0
 20c:	011302e0 	0x11302e0
 210:	011902e0 	0x11902e0
 214:	01194d4b 	0x1194d4b
 218:	4b4b0204 	c2	0x14b0204
 21c:	00010100 	sll	zero,at,0x4
 220:	00005100 	sll	t2,zero,0x4
 224:	02000000 	0x2000000
 228:	270101fb 	addiu	at,t8,507
 22c:	0e0d0001 	jal	8340004 <data_size+0x833c624>
 230:	01010100 	0x1010100
 234:	00000100 	sll	zero,zero,0x4
 238:	0001006e 	0x1006e
 23c:	39315f6a 	xori	s1,t1,0x5f6a
 240:	616c725f 	0x616c725f
 244:	65785f64 	0x65785f64
 248:	732e5300 	0x732e5300
 24c:	00000000 	nop
 250:	00050280 	sll	zero,a1,0xa
 254:	000fa003 	sra	s4,t7,0x0
 258:	0d014d02 	jal	4053408 <data_size+0x404fa28>
 25c:	fc011302 	0xfc011302
 260:	fc011302 	0xfc011302
 264:	fc011902 	0xfc011902
 268:	fc01194d 	0xfc01194d
 26c:	4b4b4b02 	c2	0x14b4b02
 270:	04000101 	bltz	zero,678 <data_size-0x3368>
 274:	00000050 	0x50
 278:	00020000 	sll	zero,v0,0x0
 27c:	00260101 	0x260101
 280:	fb0e0d00 	0xfb0e0d00
 284:	01010101 	0x1010101
 288:	00000001 	0x1
 28c:	00000100 	sll	zero,zero,0x4
 290:	6e38315f 	0x6e38315f
 294:	626e655f 	0x626e655f
 298:	65785f64 	0x65785f64
 29c:	732e5300 	0x732e5300
 2a0:	00000000 	nop
 2a4:	00050280 	sll	zero,a1,0xa
 2a8:	0013a803 	sra	s5,s3,0x0
 2ac:	0d014d02 	jal	4053408 <data_size+0x404fa28>
 2b0:	c0031302 	lwc0	$3,4866(zero)
 2b4:	c0031302 	lwc0	$3,4866(zero)
 2b8:	c0031902 	lwc0	$3,6402(zero)
 2bc:	c003194d 	lwc0	$3,6477(zero)
 2c0:	4b4b4b02 	c2	0x14b4b02
 2c4:	04000101 	bltz	zero,6cc <data_size-0x3314>
 2c8:	00000051 	0x51
 2cc:	00020000 	sll	zero,v0,0x0
 2d0:	00270101 	0x270101
 2d4:	fb0e0d00 	0xfb0e0d00
 2d8:	01010101 	0x1010101
 2dc:	00000001 	0x1
 2e0:	00000100 	sll	zero,zero,0x4
 2e4:	6e38345f 	0x6e38345f
 2e8:	626c657a 	0x626c657a
 2ec:	5f65785f 	0x5f65785f
 2f0:	64732e53 	0x64732e53
 2f4:	00000000 	nop
 2f8:	00000502 	srl	zero,zero,0x14
 2fc:	80001ac0 	lb	zero,6848(zero)
 300:	030d014d 	break	0x30d,0x5
 304:	02c00313 	0x2c00313
 308:	02c00313 	0x2c00313
 30c:	02c00319 	0x2c00319
 310:	02c00319 	0x2c00319
 314:	4d4b4b4b 	0x4d4b4b4b
 318:	02040001 	0x2040001
 31c:	01000000 	0x1000000
 320:	43000200 	c0	0x1000200
 324:	00002401 	0x2401
 328:	01fb0e0d 	break	0x1fb,0x38
 32c:	00010101 	0x10101
 330:	01000000 	0x1000000
 334:	01000001 	0x1000001
 338:	006e3436 	0x6e3436
 33c:	5f737973 	0x5f737973
 340:	63616c6c 	0x63616c6c
 344:	2e530000 	sltiu	s3,s2,0
 348:	00000000 	nop
 34c:	05028000 	0x5028000
 350:	07a0030a 	bltz	sp,f7c <data_size-0x2a64>
 354:	014b4e4c 	syscall	0x52d39
 358:	4b4b4c4d 	c2	0x14b4c4d
 35c:	4b4b4b02 	c2	0x14b4b02
 360:	04000101 	bltz	zero,768 <data_size-0x3278>
 364:	00000051 	0x51
 368:	00020000 	sll	zero,v0,0x0
 36c:	00270101 	0x270101
 370:	fb0e0d00 	0xfb0e0d00
 374:	01010101 	0x1010101
 378:	00000001 	0x1
 37c:	00000100 	sll	zero,zero,0x4
 380:	6e38325f 	0x6e38325f
 384:	6267657a 	0x6267657a
 388:	5f65785f 	0x5f65785f
 38c:	64732e53 	0x64732e53
 390:	00000000 	nop
 394:	00000502 	srl	zero,zero,0x14
 398:	800021d8 	lb	zero,8664(zero)
 39c:	030d014d 	break	0x30d,0x5
 3a0:	02c00313 	0x2c00313
 3a4:	02c00313 	0x2c00313
 3a8:	02c00319 	0x2c00319
 3ac:	02c00319 	0x2c00319
 3b0:	4d4b4b4b 	0x4d4b4b4b
 3b4:	02040001 	0x2040001
 3b8:	01000000 	0x1000000
 3bc:	50000200 	0x50000200
 3c0:	00002601 	0x2601
 3c4:	01fb0e0d 	break	0x1fb,0x38
 3c8:	00010101 	0x10101
 3cc:	01000000 	0x1000000
 3d0:	01000001 	0x1000001
 3d4:	006e3830 	0x6e3830
 3d8:	5f626571 	0x5f626571
 3dc:	5f65785f 	0x5f65785f
 3e0:	64732e53 	0x64732e53
 3e4:	00000000 	nop
 3e8:	00000502 	srl	zero,zero,0x14
 3ec:	800028f0 	lb	zero,10480(zero)
 3f0:	030d014d 	break	0x30d,0x5
 3f4:	02c00313 	0x2c00313
 3f8:	02c00313 	0x2c00313
 3fc:	02c00319 	0x2c00319
 400:	02c00319 	0x2c00319
 404:	4d4b4b4b 	0x4d4b4b4b
 408:	02040001 	0x2040001
 40c:	01000000 	0x1000000
 410:	51000200 	0x51000200
 414:	00002701 	0x2701
 418:	01fb0e0d 	break	0x1fb,0x38
 41c:	00010101 	0x10101
 420:	01000000 	0x1000000
 424:	01000001 	0x1000001
 428:	006e3833 	0x6e3833
 42c:	5f626774 	0x5f626774
 430:	7a5f6578 	0x7a5f6578
 434:	5f64732e 	0x5f64732e
 438:	53000000 	0x53000000
 43c:	00000005 	0x5
 440:	02800030 	0x2800030
 444:	08030d01 	j	c3404 <data_size+0xbfa24>
 448:	4d02c003 	0x4d02c003
 44c:	1302c003 	beq	t8,v0,ffff045c <_stack+0x7fdefc4c>
 450:	1302c003 	beq	t8,v0,ffff0460 <_stack+0x7fdefc50>
 454:	1902c003 	0x1902c003
 458:	194d4b4b 	0x194d4b4b
 45c:	4b020400 	c2	0x1020400
 460:	01010000 	0x1010000
 464:	00510002 	0x510002
 468:	00000027 	nor	zero,zero,zero
 46c:	0101fb0e 	0x101fb0e
 470:	0d000101 	jal	4000404 <data_size+0x3ffca24>
 474:	01010000 	0x1010000
 478:	00010000 	sll	zero,at,0x0
 47c:	01006e38 	0x1006e38
 480:	355f626c 	ori	ra,t2,0x626c
 484:	747a5f65 	jalx	1e97d94 <data_size+0x1e943b4>
 488:	785f6473 	0x785f6473
 48c:	2e530000 	sltiu	s3,s2,0
 490:	00000000 	nop
 494:	05028000 	0x5028000
 498:	3720030d 	ori	zero,t9,0x30d
 49c:	014d02c0 	0x14d02c0
 4a0:	031302c0 	0x31302c0
 4a4:	031302c0 	0x31302c0
 4a8:	031902c0 	0x31902c0
 4ac:	03194d4b 	0x3194d4b
 4b0:	4b4b0204 	c2	0x14b0204
 4b4:	00010100 	sll	zero,at,0x4
 4b8:	00004500 	sll	t0,zero,0x14
 4bc:	02000000 	0x2000000
 4c0:	210101fb 	addi	at,t0,507
 4c4:	0e0d0001 	jal	8340004 <data_size+0x833c624>
 4c8:	01010100 	0x1010100
 4cc:	00000100 	sll	zero,zero,0x4
 4d0:	0001006e 	0x1006e
 4d4:	35355f65 	ori	s5,t1,0x5f65
 4d8:	7265742e 	0x7265742e
 4dc:	53000000 	0x53000000
 4e0:	00000005 	0x5
 4e4:	02800007 	srav	zero,zero,s4
 4e8:	d0030a01 	0xd0030a01
 4ec:	4b4c834b 	c2	0x14c834b
 4f0:	4b4b4d4c 	c2	0x14b4d4c
 4f4:	4b4b4c4d 	c2	0x14b4c4d
 4f8:	4b4b4b02 	c2	0x14b4b02
 4fc:	04000101 	bltz	zero,904 <data_size-0x30dc>
 500:	00000050 	0x50
 504:	00020000 	sll	zero,v0,0x0
 508:	00260101 	0x260101
 50c:	fb0e0d00 	0xfb0e0d00
 510:	01010101 	0x1010101
 514:	00000001 	0x1
 518:	00000100 	sll	zero,zero,0x4
 51c:	6e38395f 	0x6e38395f
 520:	6a616c5f 	0x6a616c5f
 524:	65785f64 	0x65785f64
 528:	732e5300 	0x732e5300
 52c:	00000000 	nop
 530:	00050280 	sll	zero,a1,0xa
 534:	003e3803 	0x3e3803
 538:	0d014d02 	jal	4053408 <data_size+0x404fa28>
 53c:	ec011302 	swc3	$1,4866(zero)
 540:	ec011302 	swc3	$1,4866(zero)
 544:	ec011902 	swc3	$1,6402(zero)
 548:	ec01194d 	swc3	$1,6477(zero)
 54c:	4b4b4b02 	c2	0x14b4b02
 550:	04000101 	bltz	zero,958 <data_size-0x3088>

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	0000004b 	0x4b
   4:	00020000 	sll	zero,v0,0x0
   8:	00000401 	0x401
   c:	00000000 	nop
  10:	80000000 	lb	zero,0(zero)
  14:	8000076c 	lb	zero,1900(zero)
  18:	73746172 	0x73746172
  1c:	742e5300 	jalx	b94c00 <data_size+0xb91220>
  20:	2f686f6d 	sltiu	t0,k1,28525
  24:	652f7562 	0x652f7562
  28:	756e7475 	jalx	5b9d1d4 <data_size+0x5b997f4>
  2c:	2f66756e 	sltiu	a2,k1,30062
  30:	6374696f 	0x6374696f
  34:	6e746573 	0x6e746573
  38:	742f7372 	jalx	bdcdc8 <data_size+0xbd93e8>
  3c:	6300474e 	0x6300474e
  40:	55204153 	0x55204153
  44:	20322e32 	addi	s2,at,11826
  48:	312e3533 	andi	t6,t1,0x3533
  4c:	00800100 	0x800100
  50:	00005400 	sll	t2,zero,0x10
  54:	02000000 	0x2000000
  58:	14040100 	bne	zero,a0,45c <data_size-0x3584>
  5c:	00013580 	sll	a2,at,0x16
  60:	00077080 	sll	t6,a3,0x2
  64:	00079c6e 	0x79c6e
  68:	34355f62 	ori	s5,at,0x5f62
  6c:	7265616b 	0x7265616b
  70:	2e53002f 	sltiu	s3,s2,47
  74:	686f6d65 	0x686f6d65
  78:	2f756275 	sltiu	s5,k1,25205
  7c:	6e74752f 	0x6e74752f
  80:	66756e63 	0x66756e63
  84:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a583d8>
  88:	74657374 	jalx	195cdd0 <data_size+0x19593f0>
  8c:	2f737263 	sltiu	s3,k1,29283
  90:	2f696e73 	sltiu	t1,k1,28275
  94:	7400474e 	jalx	11d38 <data_size+0xe358>
  98:	55204153 	0x55204153
  9c:	20322e32 	addi	s2,at,11826
  a0:	312e3533 	andi	t6,t1,0x3533
  a4:	00800100 	0x800100
  a8:	00005700 	sll	t2,zero,0x1c
  ac:	02000000 	0x2000000
  b0:	28040100 	slti	a0,zero,256
  b4:	00017a80 	sll	t7,at,0xa
  b8:	00083080 	sll	a2,t0,0x2
  bc:	000c086e 	0xc086e
  c0:	39305f6a 	xori	s0,t1,0x5f6a
  c4:	725f6578 	0x725f6578
  c8:	5f64732e 	0x5f64732e
  cc:	53002f68 	0x53002f68
  d0:	6f6d652f 	0x6f6d652f
  d4:	7562756e 	jalx	589d5b8 <data_size+0x5899bd8>
  d8:	74752f66 	jalx	1d4bd98 <data_size+0x1d483b8>
  dc:	756e6374 	jalx	5b98dd0 <data_size+0x5b953f0>
  e0:	696f6e74 	0x696f6e74
  e4:	6573742f 	0x6573742f
  e8:	7372632f 	0x7372632f
  ec:	696e7374 	0x696e7374
  f0:	00474e55 	0x474e55
  f4:	20415320 	addi	at,v0,21280
  f8:	322e3231 	andi	t6,s1,0x3231
  fc:	2e353300 	sltiu	s5,s1,13056
 100:	80010000 	lb	at,0(zero)
 104:	00560002 	0x560002
 108:	0000003c 	0x3c
 10c:	04010000 	b	110 <data_size-0x38d0>
 110:	01cd8000 	0x1cd8000
 114:	0c088000 	jal	220000 <data_size+0x21c620>
 118:	0fa06e38 	jal	e81b8e0 <data_size+0xe817f00>
 11c:	385f6a5f 	xori	ra,v0,0x6a5f
 120:	65785f64 	0x65785f64
 124:	732e5300 	0x732e5300
 128:	2f686f6d 	sltiu	t0,k1,28525
 12c:	652f7562 	0x652f7562
 130:	756e7475 	jalx	5b9d1d4 <data_size+0x5b997f4>
 134:	2f66756e 	sltiu	a2,k1,30062
 138:	6374696f 	0x6374696f
 13c:	6e746573 	0x6e746573
 140:	742f7372 	jalx	bdcdc8 <data_size+0xbd93e8>
 144:	632f696e 	0x632f696e
 148:	73740047 	0x73740047
 14c:	4e552041 	c3	0x552041
 150:	5320322e 	0x5320322e
 154:	32312e35 	andi	s1,s1,0x2e35
 158:	33008001 	andi	zero,t8,0x8001
 15c:	00000059 	0x59
 160:	00020000 	sll	zero,v0,0x0
 164:	00500401 	0x500401
 168:	0000021f 	0x21f
 16c:	80000fa0 	lb	zero,4000(zero)
 170:	800013a8 	lb	zero,5032(zero)
 174:	6e39315f 	0x6e39315f
 178:	6a616c72 	0x6a616c72
 17c:	5f65785f 	0x5f65785f
 180:	64732e53 	0x64732e53
 184:	002f686f 	0x2f686f
 188:	6d652f75 	0x6d652f75
 18c:	62756e74 	0x62756e74
 190:	752f6675 	jalx	4bd99d4 <data_size+0x4bd5ff4>
 194:	6e637469 	0x6e637469
 198:	6f6e7465 	0x6f6e7465
 19c:	73742f73 	0x73742f73
 1a0:	72632f69 	0x72632f69
 1a4:	6e737400 	0x6e737400
 1a8:	474e5520 	c1	0x14e5520
 1ac:	41532032 	0x41532032
 1b0:	2e32312e 	sltiu	s2,s1,12590
 1b4:	35330080 	ori	s3,t1,0x80
 1b8:	01000000 	0x1000000
 1bc:	58000200 	0x58000200
 1c0:	00006404 	0x6404
 1c4:	01000002 	0x1000002
 1c8:	74800013 	jalx	200004c <data_size+0x1ffc66c>
 1cc:	a880001a 	swl	zero,26(a0)
 1d0:	c06e3831 	lwc0	$14,14385(v1)
 1d4:	5f626e65 	0x5f626e65
 1d8:	5f65785f 	0x5f65785f
 1dc:	64732e53 	0x64732e53
 1e0:	002f686f 	0x2f686f
 1e4:	6d652f75 	0x6d652f75
 1e8:	62756e74 	0x62756e74
 1ec:	752f6675 	jalx	4bd99d4 <data_size+0x4bd5ff4>
 1f0:	6e637469 	0x6e637469
 1f4:	6f6e7465 	0x6f6e7465
 1f8:	73742f73 	0x73742f73
 1fc:	72632f69 	0x72632f69
 200:	6e737400 	0x6e737400
 204:	474e5520 	c1	0x14e5520
 208:	41532032 	0x41532032
 20c:	2e32312e 	sltiu	s2,s1,12590
 210:	35330080 	ori	s3,t1,0x80
 214:	01000000 	0x1000000
 218:	59000200 	0x59000200
 21c:	00007804 	sllv	t7,zero,zero
 220:	01000002 	0x1000002
 224:	c880001a 	lwc2	$0,26(a0)
 228:	c0800021 	lwc0	$0,33(a0)
 22c:	d86e3834 	0xd86e3834
 230:	5f626c65 	0x5f626c65
 234:	7a5f6578 	0x7a5f6578
 238:	5f64732e 	0x5f64732e
 23c:	53002f68 	0x53002f68
 240:	6f6d652f 	0x6f6d652f
 244:	7562756e 	jalx	589d5b8 <data_size+0x5899bd8>
 248:	74752f66 	jalx	1d4bd98 <data_size+0x1d483b8>
 24c:	756e6374 	jalx	5b98dd0 <data_size+0x5b953f0>
 250:	696f6e74 	0x696f6e74
 254:	6573742f 	0x6573742f
 258:	7372632f 	0x7372632f
 25c:	696e7374 	0x696e7374
 260:	00474e55 	0x474e55
 264:	20415320 	addi	at,v0,21280
 268:	322e3231 	andi	t6,s1,0x3231
 26c:	2e353300 	sltiu	s5,s1,13056
 270:	80010000 	lb	at,0(zero)
 274:	00560002 	0x560002
 278:	0000008c 	syscall	0x2
 27c:	04010000 	b	280 <data_size-0x3760>
 280:	031d8000 	0x31d8000
 284:	07a08000 	bltz	sp,fffe0288 <_stack+0x7fddfa78>
 288:	07cc6e34 	0x7cc6e34
 28c:	365f7379 	ori	ra,s2,0x7379
 290:	7363616c 	0x7363616c
 294:	6c2e5300 	0x6c2e5300
 298:	2f686f6d 	sltiu	t0,k1,28525
 29c:	652f7562 	0x652f7562
 2a0:	756e7475 	jalx	5b9d1d4 <data_size+0x5b997f4>
 2a4:	2f66756e 	sltiu	a2,k1,30062
 2a8:	6374696f 	0x6374696f
 2ac:	6e746573 	0x6e746573
 2b0:	742f7372 	jalx	bdcdc8 <data_size+0xbd93e8>
 2b4:	632f696e 	0x632f696e
 2b8:	73740047 	0x73740047
 2bc:	4e552041 	c3	0x552041
 2c0:	5320322e 	0x5320322e
 2c4:	32312e35 	andi	s1,s1,0x2e35
 2c8:	33008001 	andi	zero,t8,0x8001
 2cc:	00000059 	0x59
 2d0:	00020000 	sll	zero,v0,0x0
 2d4:	00a00401 	0xa00401
 2d8:	00000364 	0x364
 2dc:	800021d8 	lb	zero,8664(zero)
 2e0:	800028f0 	lb	zero,10480(zero)
 2e4:	6e38325f 	0x6e38325f
 2e8:	6267657a 	0x6267657a
 2ec:	5f65785f 	0x5f65785f
 2f0:	64732e53 	0x64732e53
 2f4:	002f686f 	0x2f686f
 2f8:	6d652f75 	0x6d652f75
 2fc:	62756e74 	0x62756e74
 300:	752f6675 	jalx	4bd99d4 <data_size+0x4bd5ff4>
 304:	6e637469 	0x6e637469
 308:	6f6e7465 	0x6f6e7465
 30c:	73742f73 	0x73742f73
 310:	72632f69 	0x72632f69
 314:	6e737400 	0x6e737400
 318:	474e5520 	c1	0x14e5520
 31c:	41532032 	0x41532032
 320:	2e32312e 	sltiu	s2,s1,12590
 324:	35330080 	ori	s3,t1,0x80
 328:	01000000 	0x1000000
 32c:	58000200 	0x58000200
 330:	0000b404 	0xb404
 334:	01000003 	0x1000003
 338:	b9800028 	swr	zero,40(t4)
 33c:	f0800030 	0xf0800030
 340:	086e3830 	j	1b8e0c0 <data_size+0x1b8a6e0>
 344:	5f626571 	0x5f626571
 348:	5f65785f 	0x5f65785f
 34c:	64732e53 	0x64732e53
 350:	002f686f 	0x2f686f
 354:	6d652f75 	0x6d652f75
 358:	62756e74 	0x62756e74
 35c:	752f6675 	jalx	4bd99d4 <data_size+0x4bd5ff4>
 360:	6e637469 	0x6e637469
 364:	6f6e7465 	0x6f6e7465
 368:	73742f73 	0x73742f73
 36c:	72632f69 	0x72632f69
 370:	6e737400 	0x6e737400
 374:	474e5520 	c1	0x14e5520
 378:	41532032 	0x41532032
 37c:	2e32312e 	sltiu	s2,s1,12590
 380:	35330080 	ori	s3,t1,0x80
 384:	01000000 	0x1000000
 388:	59000200 	0x59000200
 38c:	0000c804 	sllv	t9,zero,zero
 390:	01000004 	sllv	zero,zero,t0
 394:	0d800030 	jal	60000c0 <data_size+0x5ffc6e0>
 398:	08800037 	j	20000dc <data_size+0x1ffc6fc>
 39c:	206e3833 	addi	t6,v1,14387
 3a0:	5f626774 	0x5f626774
 3a4:	7a5f6578 	0x7a5f6578
 3a8:	5f64732e 	0x5f64732e
 3ac:	53002f68 	0x53002f68
 3b0:	6f6d652f 	0x6f6d652f
 3b4:	7562756e 	jalx	589d5b8 <data_size+0x5899bd8>
 3b8:	74752f66 	jalx	1d4bd98 <data_size+0x1d483b8>
 3bc:	756e6374 	jalx	5b98dd0 <data_size+0x5b953f0>
 3c0:	696f6e74 	0x696f6e74
 3c4:	6573742f 	0x6573742f
 3c8:	7372632f 	0x7372632f
 3cc:	696e7374 	0x696e7374
 3d0:	00474e55 	0x474e55
 3d4:	20415320 	addi	at,v0,21280
 3d8:	322e3231 	andi	t6,s1,0x3231
 3dc:	2e353300 	sltiu	s5,s1,13056
 3e0:	80010000 	lb	at,0(zero)
 3e4:	00590002 	0x590002
 3e8:	000000dc 	0xdc
 3ec:	04010000 	b	3f0 <data_size-0x35f0>
 3f0:	04628000 	0x4628000
 3f4:	37208000 	ori	zero,t9,0x8000
 3f8:	3e386e38 	0x3e386e38
 3fc:	355f626c 	ori	ra,t2,0x626c
 400:	747a5f65 	jalx	1e97d94 <data_size+0x1e943b4>
 404:	785f6473 	0x785f6473
 408:	2e53002f 	sltiu	s3,s2,47
 40c:	686f6d65 	0x686f6d65
 410:	2f756275 	sltiu	s5,k1,25205
 414:	6e74752f 	0x6e74752f
 418:	66756e63 	0x66756e63
 41c:	74696f6e 	jalx	1a5bdb8 <data_size+0x1a583d8>
 420:	74657374 	jalx	195cdd0 <data_size+0x19593f0>
 424:	2f737263 	sltiu	s3,k1,29283
 428:	2f696e73 	sltiu	t1,k1,28275
 42c:	7400474e 	jalx	11d38 <data_size+0xe358>
 430:	55204153 	0x55204153
 434:	20322e32 	addi	s2,at,11826
 438:	312e3533 	andi	t6,t1,0x3533
 43c:	00800100 	0x800100
 440:	00005300 	sll	t2,zero,0xc
 444:	02000000 	0x2000000
 448:	f0040100 	0xf0040100
 44c:	0004b780 	sll	s6,a0,0x1e
 450:	0007d080 	sll	k0,a3,0x2
 454:	0008146e 	0x8146e
 458:	35355f65 	ori	s5,t1,0x5f65
 45c:	7265742e 	0x7265742e
 460:	53002f68 	0x53002f68
 464:	6f6d652f 	0x6f6d652f
 468:	7562756e 	jalx	589d5b8 <data_size+0x5899bd8>
 46c:	74752f66 	jalx	1d4bd98 <data_size+0x1d483b8>
 470:	756e6374 	jalx	5b98dd0 <data_size+0x5b953f0>
 474:	696f6e74 	0x696f6e74
 478:	6573742f 	0x6573742f
 47c:	7372632f 	0x7372632f
 480:	696e7374 	0x696e7374
 484:	00474e55 	0x474e55
 488:	20415320 	addi	at,v0,21280
 48c:	322e3231 	andi	t6,s1,0x3231
 490:	2e353300 	sltiu	s5,s1,13056
 494:	80010000 	lb	at,0(zero)
 498:	00580002 	0x580002
 49c:	00000104 	0x104
 4a0:	04010000 	b	4a4 <data_size-0x353c>
 4a4:	05008000 	bltz	t0,fffe04a8 <_stack+0x7fddfc98>
 4a8:	3e388000 	0x3e388000
 4ac:	42006e38 	c0	0x6e38
 4b0:	395f6a61 	xori	ra,t2,0x6a61
 4b4:	6c5f6578 	0x6c5f6578
 4b8:	5f64732e 	0x5f64732e
 4bc:	53002f68 	0x53002f68
 4c0:	6f6d652f 	0x6f6d652f
 4c4:	7562756e 	jalx	589d5b8 <data_size+0x5899bd8>
 4c8:	74752f66 	jalx	1d4bd98 <data_size+0x1d483b8>
 4cc:	756e6374 	jalx	5b98dd0 <data_size+0x5b953f0>
 4d0:	696f6e74 	0x696f6e74
 4d4:	6573742f 	0x6573742f
 4d8:	7372632f 	0x7372632f
 4dc:	696e7374 	0x696e7374
 4e0:	00474e55 	0x474e55
 4e4:	20415320 	addi	at,v0,21280
 4e8:	322e3231 	andi	t6,s1,0x3231
 4ec:	2e353300 	sltiu	s5,s1,13056
 4f0:	Address 0x00000000000004f0 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	01110010 	0x1110010
   4:	06110112 	bgezal	s0,450 <data_size-0x3590>
   8:	0103081b 	0x103081b
   c:	08250813 	j	94204c <data_size+0x93e66c>
  10:	05000000 	bltz	t0,14 <data_size-0x39cc>
  14:	01110010 	0x1110010
  18:	06110112 	bgezal	s0,464 <data_size-0x357c>
  1c:	0103081b 	0x103081b
  20:	08250813 	j	94204c <data_size+0x93e66c>
  24:	05000000 	bltz	t0,28 <data_size-0x39b8>
  28:	01110010 	0x1110010
  2c:	06110112 	bgezal	s0,478 <data_size-0x3568>
  30:	0103081b 	0x103081b
  34:	08250813 	j	94204c <data_size+0x93e66c>
  38:	05000000 	bltz	t0,3c <data_size-0x39a4>
  3c:	01110010 	0x1110010
  40:	06110112 	bgezal	s0,48c <data_size-0x3554>
  44:	0103081b 	0x103081b
  48:	08250813 	j	94204c <data_size+0x93e66c>
  4c:	05000000 	bltz	t0,50 <data_size-0x3990>
  50:	01110010 	0x1110010
  54:	06110112 	bgezal	s0,4a0 <data_size-0x3540>
  58:	0103081b 	0x103081b
  5c:	08250813 	j	94204c <data_size+0x93e66c>
  60:	05000000 	bltz	t0,64 <data_size-0x397c>
  64:	01110010 	0x1110010
  68:	06110112 	bgezal	s0,4b4 <data_size-0x352c>
  6c:	0103081b 	0x103081b
  70:	08250813 	j	94204c <data_size+0x93e66c>
  74:	05000000 	bltz	t0,78 <data_size-0x3968>
  78:	01110010 	0x1110010
  7c:	06110112 	bgezal	s0,4c8 <data_size-0x3518>
  80:	0103081b 	0x103081b
  84:	08250813 	j	94204c <data_size+0x93e66c>
  88:	05000000 	bltz	t0,8c <data_size-0x3954>
  8c:	01110010 	0x1110010
  90:	06110112 	bgezal	s0,4dc <data_size-0x3504>
  94:	0103081b 	0x103081b
  98:	08250813 	j	94204c <data_size+0x93e66c>
  9c:	05000000 	bltz	t0,a0 <data_size-0x3940>
  a0:	01110010 	0x1110010
  a4:	06110112 	bgezal	s0,4f0 <data_size-0x34f0>
  a8:	0103081b 	0x103081b
  ac:	08250813 	j	94204c <data_size+0x93e66c>
  b0:	05000000 	bltz	t0,b4 <data_size-0x392c>
  b4:	01110010 	0x1110010
  b8:	06110112 	bgezal	s0,504 <data_size-0x34dc>
  bc:	0103081b 	0x103081b
  c0:	08250813 	j	94204c <data_size+0x93e66c>
  c4:	05000000 	bltz	t0,c8 <data_size-0x3918>
  c8:	01110010 	0x1110010
  cc:	06110112 	bgezal	s0,518 <data_size-0x34c8>
  d0:	0103081b 	0x103081b
  d4:	08250813 	j	94204c <data_size+0x93e66c>
  d8:	05000000 	bltz	t0,dc <data_size-0x3904>
  dc:	01110010 	0x1110010
  e0:	06110112 	bgezal	s0,52c <data_size-0x34b4>
  e4:	0103081b 	0x103081b
  e8:	08250813 	j	94204c <data_size+0x93e66c>
  ec:	05000000 	bltz	t0,f0 <data_size-0x38f0>
  f0:	01110010 	0x1110010
  f4:	06110112 	bgezal	s0,540 <data_size-0x34a0>
  f8:	0103081b 	0x103081b
  fc:	08250813 	j	94204c <data_size+0x93e66c>
 100:	05000000 	bltz	t0,104 <data_size-0x38dc>
 104:	01110010 	0x1110010
 108:	06110112 	bgezal	s0,554 <data_size-0x348c>
 10c:	0103081b 	0x103081b
 110:	08250813 	j	94204c <data_size+0x93e66c>
 114:	05000000 	bltz	t0,118 <data_size-0x38c8>
