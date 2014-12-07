
ds18b02.o:     file format elf32-littlearm


Disassembly of section .text.RCC_ds18b02_init:

00000000 <RCC_ds18b02_init>:
   0:	2004      	movs	r0, #4
   2:	2101      	movs	r1, #1
   4:	f7ff bffe 	b.w	0 <RCC_APB2PeriphClockCmd>

Disassembly of section .text.GPIO_ds18b02_init:

00000000 <GPIO_ds18b02_init>:
   0:	b500      	push	{lr}
   2:	f240 0300 	movw	r3, #0
   6:	f2c0 0300 	movt	r3, #0
   a:	889a      	ldrh	r2, [r3, #4]
   c:	b083      	sub	sp, #12
   e:	6818      	ldr	r0, [r3, #0]
  10:	f8ad 2004 	strh.w	r2, [sp, #4]
  14:	2314      	movs	r3, #20
  16:	2202      	movs	r2, #2
  18:	a901      	add	r1, sp, #4
  1a:	f88d 3007 	strb.w	r3, [sp, #7]
  1e:	f88d 2006 	strb.w	r2, [sp, #6]
  22:	f7ff fffe 	bl	0 <GPIO_Init>
  26:	b003      	add	sp, #12
  28:	bd00      	pop	{pc}
  2a:	bf00      	nop

Disassembly of section .text.GPIO_ds18b02_setup_in:

00000000 <GPIO_ds18b02_setup_in>:
   0:	b500      	push	{lr}
   2:	f240 0300 	movw	r3, #0
   6:	f2c0 0300 	movt	r3, #0
   a:	889a      	ldrh	r2, [r3, #4]
   c:	b083      	sub	sp, #12
   e:	6818      	ldr	r0, [r3, #0]
  10:	f8ad 2004 	strh.w	r2, [sp, #4]
  14:	2348      	movs	r3, #72	; 0x48
  16:	2202      	movs	r2, #2
  18:	a901      	add	r1, sp, #4
  1a:	f88d 3007 	strb.w	r3, [sp, #7]
  1e:	f88d 2006 	strb.w	r2, [sp, #6]
  22:	f7ff fffe 	bl	0 <GPIO_Init>
  26:	b003      	add	sp, #12
  28:	bd00      	pop	{pc}
  2a:	bf00      	nop

Disassembly of section .text.ds18b02_init:

00000000 <ds18b02_init>:
   0:	b508      	push	{r3, lr}
   2:	f7ff fffe 	bl	0 <ds18b02_init>
   6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
   a:	f7ff bffe 	b.w	0 <ds18b02_init>
   e:	bf00      	nop

Disassembly of section .text.delay_:

00000000 <delay_>:
   0:	4770      	bx	lr
   2:	bf00      	nop

Disassembly of section .text.ds18b02_reset:

00000000 <ds18b02_reset>:
   0:	b538      	push	{r3, r4, r5, lr}
   2:	4c0f      	ldr	r4, [pc, #60]	; (40 <ds18b02_reset+0x40>)
   4:	6820      	ldr	r0, [r4, #0]
   6:	88a1      	ldrh	r1, [r4, #4]
   8:	f7ff fffe 	bl	0 <GPIO_SetBits>
   c:	6820      	ldr	r0, [r4, #0]
   e:	88a1      	ldrh	r1, [r4, #4]
  10:	f7ff fffe 	bl	0 <GPIO_ResetBits>
  14:	6820      	ldr	r0, [r4, #0]
  16:	88a1      	ldrh	r1, [r4, #4]
  18:	f7ff fffe 	bl	0 <GPIO_SetBits>
  1c:	f7ff fffe 	bl	0 <ds18b02_reset>
  20:	6820      	ldr	r0, [r4, #0]
  22:	88a1      	ldrh	r1, [r4, #4]
  24:	4d06      	ldr	r5, [pc, #24]	; (40 <ds18b02_reset+0x40>)
  26:	f7ff fffe 	bl	0 <GPIO_ReadInputDataBit>
  2a:	2800      	cmp	r0, #0
  2c:	d1f8      	bne.n	20 <ds18b02_reset+0x20>
  2e:	f7ff fffe 	bl	0 <ds18b02_reset>
  32:	6828      	ldr	r0, [r5, #0]
  34:	88a9      	ldrh	r1, [r5, #4]
  36:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
  3a:	f7ff bffe 	b.w	0 <GPIO_SetBits>
  3e:	bf00      	nop
  40:	00000000 	.word	0x00000000

Disassembly of section .text.read_bit:

00000000 <read_bit>:
   0:	b510      	push	{r4, lr}
   2:	f240 0400 	movw	r4, #0
   6:	f2c0 0400 	movt	r4, #0
   a:	6820      	ldr	r0, [r4, #0]
   c:	88a1      	ldrh	r1, [r4, #4]
   e:	f7ff fffe 	bl	0 <GPIO_SetBits>
  12:	6820      	ldr	r0, [r4, #0]
  14:	88a1      	ldrh	r1, [r4, #4]
  16:	f7ff fffe 	bl	0 <GPIO_ResetBits>
  1a:	6820      	ldr	r0, [r4, #0]
  1c:	88a1      	ldrh	r1, [r4, #4]
  1e:	f7ff fffe 	bl	0 <GPIO_SetBits>
  22:	f7ff fffe 	bl	0 <read_bit>
  26:	88a1      	ldrh	r1, [r4, #4]
  28:	6820      	ldr	r0, [r4, #0]
  2a:	f7ff fffe 	bl	0 <GPIO_ReadInputDataBit>
  2e:	4604      	mov	r4, r0
  30:	f7ff fffe 	bl	0 <read_bit>
  34:	4620      	mov	r0, r4
  36:	bd10      	pop	{r4, pc}

Disassembly of section .text.temp_read_byte:

00000000 <temp_read_byte>:
   0:	b538      	push	{r3, r4, r5, lr}
   2:	f7ff fffe 	bl	0 <temp_read_byte>
   6:	4604      	mov	r4, r0
   8:	f7ff fffe 	bl	0 <temp_read_byte>
   c:	01a1      	lsls	r1, r4, #6
   e:	f001 0240 	and.w	r2, r1, #64	; 0x40
  12:	ea42 10c0 	orr.w	r0, r2, r0, lsl #7
  16:	b2c5      	uxtb	r5, r0
  18:	f7ff fffe 	bl	0 <temp_read_byte>
  1c:	4604      	mov	r4, r0
  1e:	f7ff fffe 	bl	0 <temp_read_byte>
  22:	086b      	lsrs	r3, r5, #1
  24:	ea43 11c4 	orr.w	r1, r3, r4, lsl #7
  28:	b2ca      	uxtb	r2, r1
  2a:	01c0      	lsls	r0, r0, #7
  2c:	ea40 0552 	orr.w	r5, r0, r2, lsr #1
  30:	f7ff fffe 	bl	0 <temp_read_byte>
  34:	b2ec      	uxtb	r4, r5
  36:	01c3      	lsls	r3, r0, #7
  38:	ea43 0154 	orr.w	r1, r3, r4, lsr #1
  3c:	b2cd      	uxtb	r5, r1
  3e:	f7ff fffe 	bl	0 <temp_read_byte>
  42:	4604      	mov	r4, r0
  44:	f7ff fffe 	bl	0 <temp_read_byte>
  48:	086d      	lsrs	r5, r5, #1
  4a:	ea45 12c4 	orr.w	r2, r5, r4, lsl #7
  4e:	b2d3      	uxtb	r3, r2
  50:	01c0      	lsls	r0, r0, #7
  52:	ea40 0153 	orr.w	r1, r0, r3, lsr #1
  56:	b2cc      	uxtb	r4, r1
  58:	f7ff fffe 	bl	0 <temp_read_byte>
  5c:	01c2      	lsls	r2, r0, #7
  5e:	ea42 0354 	orr.w	r3, r2, r4, lsr #1
  62:	b2d8      	uxtb	r0, r3
  64:	bd38      	pop	{r3, r4, r5, pc}
  66:	bf00      	nop

Disassembly of section .text.temp_write_byte:

00000000 <temp_write_byte>:
   0:	b538      	push	{r3, r4, r5, lr}
   2:	4c25      	ldr	r4, [pc, #148]	; (98 <temp_write_byte+0x98>)
   4:	4605      	mov	r5, r0
   6:	88a1      	ldrh	r1, [r4, #4]
   8:	6820      	ldr	r0, [r4, #0]
   a:	f7ff fffe 	bl	0 <GPIO_SetBits>
   e:	6820      	ldr	r0, [r4, #0]
  10:	88a1      	ldrh	r1, [r4, #4]
  12:	f7ff fffe 	bl	0 <GPIO_ResetBits>
  16:	6820      	ldr	r0, [r4, #0]
  18:	88a1      	ldrh	r1, [r4, #4]
  1a:	f7ff fffe 	bl	0 <GPIO_SetBits>
  1e:	6820      	ldr	r0, [r4, #0]
  20:	88a1      	ldrh	r1, [r4, #4]
  22:	f7ff fffe 	bl	0 <GPIO_ResetBits>
  26:	6820      	ldr	r0, [r4, #0]
  28:	88a1      	ldrh	r1, [r4, #4]
  2a:	f7ff fffe 	bl	0 <GPIO_SetBits>
  2e:	6820      	ldr	r0, [r4, #0]
  30:	88a1      	ldrh	r1, [r4, #4]
  32:	f7ff fffe 	bl	0 <GPIO_ResetBits>
  36:	6820      	ldr	r0, [r4, #0]
  38:	88a1      	ldrh	r1, [r4, #4]
  3a:	f7ff fffe 	bl	0 <GPIO_SetBits>
  3e:	6820      	ldr	r0, [r4, #0]
  40:	88a1      	ldrh	r1, [r4, #4]
  42:	f7ff fffe 	bl	0 <GPIO_ResetBits>
  46:	6820      	ldr	r0, [r4, #0]
  48:	88a1      	ldrh	r1, [r4, #4]
  4a:	f7ff fffe 	bl	0 <GPIO_SetBits>
  4e:	6820      	ldr	r0, [r4, #0]
  50:	88a1      	ldrh	r1, [r4, #4]
  52:	f7ff fffe 	bl	0 <GPIO_ResetBits>
  56:	6820      	ldr	r0, [r4, #0]
  58:	88a1      	ldrh	r1, [r4, #4]
  5a:	f7ff fffe 	bl	0 <GPIO_SetBits>
  5e:	6820      	ldr	r0, [r4, #0]
  60:	88a1      	ldrh	r1, [r4, #4]
  62:	f7ff fffe 	bl	0 <GPIO_ResetBits>
  66:	6820      	ldr	r0, [r4, #0]
  68:	88a1      	ldrh	r1, [r4, #4]
  6a:	f7ff fffe 	bl	0 <GPIO_SetBits>
  6e:	6820      	ldr	r0, [r4, #0]
  70:	88a1      	ldrh	r1, [r4, #4]
  72:	f7ff fffe 	bl	0 <GPIO_ResetBits>
  76:	6820      	ldr	r0, [r4, #0]
  78:	88a1      	ldrh	r1, [r4, #4]
  7a:	f7ff fffe 	bl	0 <GPIO_SetBits>
  7e:	f005 0080 	and.w	r0, r5, #128	; 0x80
  82:	88a1      	ldrh	r1, [r4, #4]
  84:	b2c5      	uxtb	r5, r0
  86:	6820      	ldr	r0, [r4, #0]
  88:	f7ff fffe 	bl	0 <GPIO_ResetBits>
  8c:	6820      	ldr	r0, [r4, #0]
  8e:	88a1      	ldrh	r1, [r4, #4]
  90:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
  94:	f7ff bffe 	b.w	0 <GPIO_SetBits>
  98:	00000000 	.word	0x00000000

Disassembly of section .text.temp_trig:

00000000 <temp_trig>:
   0:	b508      	push	{r3, lr}
   2:	f7ff fffe 	bl	0 <temp_trig>
   6:	20cc      	movs	r0, #204	; 0xcc
   8:	f7ff fffe 	bl	0 <temp_trig>
   c:	2044      	movs	r0, #68	; 0x44
   e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
  12:	f7ff bffe 	b.w	0 <temp_trig>
  16:	bf00      	nop

Disassembly of section .text.get_temp_:

00000000 <get_temp_>:
   0:	b510      	push	{r4, lr}
   2:	f7ff fffe 	bl	0 <get_temp_>
   6:	f7ff fffe 	bl	0 <get_temp_>
   a:	20cc      	movs	r0, #204	; 0xcc
   c:	f7ff fffe 	bl	0 <get_temp_>
  10:	20be      	movs	r0, #190	; 0xbe
  12:	f7ff fffe 	bl	0 <get_temp_>
  16:	f7ff fffe 	bl	0 <get_temp_>
  1a:	4604      	mov	r4, r0
  1c:	f7ff fffe 	bl	0 <get_temp_>
  20:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
  24:	bd10      	pop	{r4, pc}
  26:	bf00      	nop
