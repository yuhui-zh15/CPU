
loader.bin:     file format binary


Disassembly of section .data:

00000000 <.data>:
   0:	00000000 	nop
   4:	01000010 	b	0xc
   8:	00000000 	nop
   c:	ffbe083c 	lui	t0,0xbeff
  10:	f8ff0835 	ori	t0,t0,0xfff8
  14:	ff000924 	li	t1,255
  18:	000009ad 	sw	t1,0(t0)
  1c:	00be103c 	lui	s0,0xbe00
  20:	00000f24 	li	t7,0
  24:	21780f02 	addu	t7,s0,t7
  28:	0000e98d 	lw	t1,0(t7)
  2c:	0400ef8d 	lw	t7,4(t7)
  30:	007c0f00 	sll	t7,t7,0x10
  34:	25482f01 	or	t1,t1,t7
  38:	4c46083c 	lui	t0,0x464c
  3c:	7f450835 	ori	t0,t0,0x457f
  40:	03000911 	beq	t0,t1,0x50
  44:	00000000 	nop
  48:	42000010 	b	0x154
  4c:	00000000 	nop
  50:	38000f24 	li	t7,56
  54:	21780f02 	addu	t7,s0,t7
  58:	0000f18d 	lw	s1,0(t7)
  5c:	0400ef8d 	lw	t7,4(t7)
  60:	007c0f00 	sll	t7,t7,0x10
  64:	25882f02 	or	s1,s1,t7
  68:	58000f24 	li	t7,88
  6c:	21780f02 	addu	t7,s0,t7
  70:	0000f28d 	lw	s2,0(t7)
  74:	0400ef8d 	lw	t7,4(t7)
  78:	007c0f00 	sll	t7,t7,0x10
  7c:	25904f02 	or	s2,s2,t7
  80:	ffff5232 	andi	s2,s2,0xffff
  84:	30000f24 	li	t7,48
  88:	21780f02 	addu	t7,s0,t7
  8c:	0000f38d 	lw	s3,0(t7)
  90:	0400ef8d 	lw	t7,4(t7)
  94:	007c0f00 	sll	t7,t7,0x10
  98:	25986f02 	or	s3,s3,t7
  9c:	08002f26 	addiu	t7,s1,8
  a0:	40780f00 	sll	t7,t7,0x1
  a4:	21780f02 	addu	t7,s0,t7
  a8:	0000f48d 	lw	s4,0(t7)
  ac:	0400ef8d 	lw	t7,4(t7)
  b0:	007c0f00 	sll	t7,t7,0x10
  b4:	25a08f02 	or	s4,s4,t7
  b8:	10002f26 	addiu	t7,s1,16
  bc:	40780f00 	sll	t7,t7,0x1
  c0:	21780f02 	addu	t7,s0,t7
  c4:	0000f58d 	lw	s5,0(t7)
  c8:	0400ef8d 	lw	t7,4(t7)
  cc:	007c0f00 	sll	t7,t7,0x10
  d0:	25a8af02 	or	s5,s5,t7
  d4:	04002f26 	addiu	t7,s1,4
  d8:	40780f00 	sll	t7,t7,0x1
  dc:	21780f02 	addu	t7,s0,t7
  e0:	0000f68d 	lw	s6,0(t7)
  e4:	0400ef8d 	lw	t7,4(t7)
  e8:	007c0f00 	sll	t7,t7,0x10
  ec:	25b0cf02 	or	s6,s6,t7
  f0:	10008012 	beqz	s4,0x134
  f4:	00000000 	nop
  f8:	0e00a012 	beqz	s5,0x134
  fc:	00000000 	nop
 100:	0000cf26 	addiu	t7,s6,0
 104:	40780f00 	sll	t7,t7,0x1
 108:	21780f02 	addu	t7,s0,t7
 10c:	0000e88d 	lw	t0,0(t7)
 110:	0400ef8d 	lw	t7,4(t7)
 114:	007c0f00 	sll	t7,t7,0x10
 118:	25400f01 	or	t0,t0,t7
 11c:	000088ae 	sw	t0,0(s4)
 120:	0400d626 	addiu	s6,s6,4
 124:	04009426 	addiu	s4,s4,4
 128:	fcffb526 	addiu	s5,s5,-4
 12c:	f4ffa01e 	bgtz	s5,0x100
 130:	00000000 	nop
 134:	20003126 	addiu	s1,s1,32
 138:	ffff5226 	addiu	s2,s2,-1
 13c:	d7ff401e 	bgtz	s2,0x9c
 140:	00000000 	nop
 144:	08006002 	jr	s3
 148:	00000000 	nop
 14c:	ffff0010 	b	0x14c
 150:	00000000 	nop
 154:	ffff0010 	b	0x154
 158:	00000000 	nop
