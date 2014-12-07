
rtthread-stm32.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <_stext>:
 8000000:	20000700 	.word	0x20000700
 8000004:	08002eed 	.word	0x08002eed
 8000008:	080003d5 	.word	0x080003d5
 800000c:	080001b1 	.word	0x080001b1
 8000010:	080003d9 	.word	0x080003d9
 8000014:	080003dd 	.word	0x080003dd
 8000018:	080003e1 	.word	0x080003e1
	...
 800002c:	080003e5 	.word	0x080003e5
 8000030:	080003e9 	.word	0x080003e9
 8000034:	00000000 	.word	0x00000000
 8000038:	0800013b 	.word	0x0800013b
 800003c:	0800036d 	.word	0x0800036d
 8000040:	08002f39 	.word	0x08002f39
 8000044:	08002f39 	.word	0x08002f39
 8000048:	08002f39 	.word	0x08002f39
 800004c:	08002f39 	.word	0x08002f39
 8000050:	08002f39 	.word	0x08002f39
 8000054:	08002f39 	.word	0x08002f39
 8000058:	08002f39 	.word	0x08002f39
 800005c:	08002f39 	.word	0x08002f39
 8000060:	08002f39 	.word	0x08002f39
 8000064:	08002f39 	.word	0x08002f39
 8000068:	08003ae1 	.word	0x08003ae1
 800006c:	08002f39 	.word	0x08002f39
 8000070:	08002f39 	.word	0x08002f39
 8000074:	08002f39 	.word	0x08002f39
 8000078:	08002f39 	.word	0x08002f39
 800007c:	08002f39 	.word	0x08002f39
 8000080:	08002f39 	.word	0x08002f39
 8000084:	08002f39 	.word	0x08002f39
 8000088:	08002f39 	.word	0x08002f39
 800008c:	08002f39 	.word	0x08002f39
 8000090:	080048dd 	.word	0x080048dd
 8000094:	08002f39 	.word	0x08002f39
 8000098:	08002f39 	.word	0x08002f39
 800009c:	08002f39 	.word	0x08002f39
 80000a0:	08002f39 	.word	0x08002f39
 80000a4:	08002f39 	.word	0x08002f39
 80000a8:	08002f39 	.word	0x08002f39
 80000ac:	08002f39 	.word	0x08002f39
 80000b0:	08002f39 	.word	0x08002f39
 80000b4:	08003975 	.word	0x08003975
 80000b8:	08002f39 	.word	0x08002f39
 80000bc:	08002f39 	.word	0x08002f39
 80000c0:	08002f39 	.word	0x08002f39
 80000c4:	08002f39 	.word	0x08002f39
 80000c8:	08002f39 	.word	0x08002f39
 80000cc:	08002f39 	.word	0x08002f39
 80000d0:	08002f39 	.word	0x08002f39
 80000d4:	08000621 	.word	0x08000621
 80000d8:	08000671 	.word	0x08000671
 80000dc:	080006c1 	.word	0x080006c1
 80000e0:	08003aa9 	.word	0x08003aa9
 80000e4:	08002f39 	.word	0x08002f39
 80000e8:	080048e1 	.word	0x080048e1
	...
 8000108:	f108f85f 	.word	0xf108f85f

0800010c <rt_hw_interrupt_disable>:
 800010c:	f3ef 8010 	mrs	r0, PRIMASK
 8000110:	b672      	cpsid	i
 8000112:	4770      	bx	lr

08000114 <rt_hw_interrupt_enable>:
 8000114:	f380 8810 	msr	PRIMASK, r0
 8000118:	4770      	bx	lr

0800011a <rt_hw_context_switch>:
 800011a:	4a34      	ldr	r2, [pc, #208]	; (80001ec <rt_hw_interrupt_check+0x8>)
 800011c:	6813      	ldr	r3, [r2, #0]
 800011e:	2b01      	cmp	r3, #1
 8000120:	f000 8005 	beq.w	800012e <_reswitch>
 8000124:	f04f 0301 	mov.w	r3, #1
 8000128:	6013      	str	r3, [r2, #0]
 800012a:	4a31      	ldr	r2, [pc, #196]	; (80001f0 <rt_hw_interrupt_check+0xc>)
 800012c:	6010      	str	r0, [r2, #0]

0800012e <_reswitch>:
 800012e:	4a31      	ldr	r2, [pc, #196]	; (80001f4 <rt_hw_interrupt_check+0x10>)
 8000130:	6011      	str	r1, [r2, #0]
 8000132:	4831      	ldr	r0, [pc, #196]	; (80001f8 <rt_hw_interrupt_check+0x14>)
 8000134:	4931      	ldr	r1, [pc, #196]	; (80001fc <rt_hw_interrupt_check+0x18>)
 8000136:	6001      	str	r1, [r0, #0]
 8000138:	4770      	bx	lr

0800013a <PendSV_Handler>:
 800013a:	f3ef 8210 	mrs	r2, PRIMASK
 800013e:	b672      	cpsid	i
 8000140:	482a      	ldr	r0, [pc, #168]	; (80001ec <rt_hw_interrupt_check+0x8>)
 8000142:	6801      	ldr	r1, [r0, #0]
 8000144:	b191      	cbz	r1, 800016c <pendsv_exit>
 8000146:	f04f 0100 	mov.w	r1, #0
 800014a:	6001      	str	r1, [r0, #0]
 800014c:	4828      	ldr	r0, [pc, #160]	; (80001f0 <rt_hw_interrupt_check+0xc>)
 800014e:	6801      	ldr	r1, [r0, #0]
 8000150:	b129      	cbz	r1, 800015e <swtich_to_thread>
 8000152:	f3ef 8109 	mrs	r1, PSP
 8000156:	e921 0ff0 	stmdb	r1!, {r4, r5, r6, r7, r8, r9, sl, fp}
 800015a:	6800      	ldr	r0, [r0, #0]
 800015c:	6001      	str	r1, [r0, #0]

0800015e <swtich_to_thread>:
 800015e:	4925      	ldr	r1, [pc, #148]	; (80001f4 <rt_hw_interrupt_check+0x10>)
 8000160:	6809      	ldr	r1, [r1, #0]
 8000162:	6809      	ldr	r1, [r1, #0]
 8000164:	e8b1 0ff0 	ldmia.w	r1!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8000168:	f381 8809 	msr	PSP, r1

0800016c <pendsv_exit>:
 800016c:	f382 8810 	msr	PRIMASK, r2
 8000170:	f04e 0e04 	orr.w	lr, lr, #4
 8000174:	4770      	bx	lr

08000176 <rt_hw_context_switch_to>:
 8000176:	491f      	ldr	r1, [pc, #124]	; (80001f4 <rt_hw_interrupt_check+0x10>)
 8000178:	6008      	str	r0, [r1, #0]
 800017a:	491d      	ldr	r1, [pc, #116]	; (80001f0 <rt_hw_interrupt_check+0xc>)
 800017c:	f04f 0000 	mov.w	r0, #0
 8000180:	6008      	str	r0, [r1, #0]
 8000182:	491a      	ldr	r1, [pc, #104]	; (80001ec <rt_hw_interrupt_check+0x8>)
 8000184:	f04f 0001 	mov.w	r0, #1
 8000188:	6008      	str	r0, [r1, #0]
 800018a:	481d      	ldr	r0, [pc, #116]	; (8000200 <rt_hw_interrupt_check+0x1c>)
 800018c:	491d      	ldr	r1, [pc, #116]	; (8000204 <rt_hw_interrupt_check+0x20>)
 800018e:	f8d0 2000 	ldr.w	r2, [r0]
 8000192:	ea41 0102 	orr.w	r1, r1, r2
 8000196:	6001      	str	r1, [r0, #0]
 8000198:	4817      	ldr	r0, [pc, #92]	; (80001f8 <rt_hw_interrupt_check+0x14>)
 800019a:	4918      	ldr	r1, [pc, #96]	; (80001fc <rt_hw_interrupt_check+0x18>)
 800019c:	6001      	str	r1, [r0, #0]
 800019e:	481a      	ldr	r0, [pc, #104]	; (8000208 <rt_hw_interrupt_check+0x24>)
 80001a0:	6800      	ldr	r0, [r0, #0]
 80001a2:	6800      	ldr	r0, [r0, #0]
 80001a4:	bf00      	nop
 80001a6:	f380 8808 	msr	MSP, r0
 80001aa:	b662      	cpsie	i

080001ac <rt_hw_interrupt_thread_switch>:
 80001ac:	4770      	bx	lr
 80001ae:	bf00      	nop

080001b0 <HardFault_Handler>:
 80001b0:	f3ef 8008 	mrs	r0, MSP
 80001b4:	f01e 0f04 	tst.w	lr, #4
 80001b8:	f000 8002 	beq.w	80001c0 <_get_sp_done>
 80001bc:	f3ef 8009 	mrs	r0, PSP

080001c0 <_get_sp_done>:
 80001c0:	e920 0ff0 	stmdb	r0!, {r4, r5, r6, r7, r8, r9, sl, fp}
 80001c4:	f840 ed04 	str.w	lr, [r0, #-4]!
 80001c8:	f01e 0f04 	tst.w	lr, #4
 80001cc:	f000 b802 	b.w	80001d4 <_update_done>

080001d0 <_update_msp>:
 80001d0:	f380 8808 	msr	MSP, r0

080001d4 <_update_done>:
 80001d4:	b500      	push	{lr}
 80001d6:	f007 fe73 	bl	8007ec0 <rt_hw_hard_fault_exception>
 80001da:	f85d eb04 	ldr.w	lr, [sp], #4
 80001de:	f04e 0e04 	orr.w	lr, lr, #4
 80001e2:	4770      	bx	lr

080001e4 <rt_hw_interrupt_check>:
 80001e4:	f3ef 8005 	mrs	r0, IPSR
 80001e8:	4770      	bx	lr
 80001ea:	0000      	.short	0x0000
 80001ec:	20001b58 	.word	0x20001b58
 80001f0:	20001b54 	.word	0x20001b54
 80001f4:	20001b50 	.word	0x20001b50
 80001f8:	e000ed04 	.word	0xe000ed04
 80001fc:	10000000 	.word	0x10000000
 8000200:	e000ed20 	.word	0xe000ed20
 8000204:	00ff0000 	.word	0x00ff0000
 8000208:	e000ed08 	.word	0xe000ed08

0800020c <rt_init_thread_entry>:
 800020c:	4770      	bx	lr
 800020e:	bf00      	nop

08000210 <rt_application_init>:
 8000210:	b500      	push	{lr}
 8000212:	4b27      	ldr	r3, [pc, #156]	; (80002b0 <rt_application_init+0xa0>)
 8000214:	b085      	sub	sp, #20
 8000216:	f44f 7000 	mov.w	r0, #512	; 0x200
 800021a:	2114      	movs	r1, #20
 800021c:	2205      	movs	r2, #5
 800021e:	9300      	str	r3, [sp, #0]
 8000220:	9001      	str	r0, [sp, #4]
 8000222:	9102      	str	r1, [sp, #8]
 8000224:	9203      	str	r2, [sp, #12]
 8000226:	4823      	ldr	r0, [pc, #140]	; (80002b4 <rt_application_init+0xa4>)
 8000228:	4923      	ldr	r1, [pc, #140]	; (80002b8 <rt_application_init+0xa8>)
 800022a:	4a24      	ldr	r2, [pc, #144]	; (80002bc <rt_application_init+0xac>)
 800022c:	2300      	movs	r3, #0
 800022e:	f007 fb0b 	bl	8007848 <rt_thread_init>
 8000232:	2800      	cmp	r0, #0
 8000234:	d02f      	beq.n	8000296 <rt_application_init+0x86>
 8000236:	4822      	ldr	r0, [pc, #136]	; (80002c0 <rt_application_init+0xb0>)
 8000238:	2305      	movs	r3, #5
 800023a:	f44f 7100 	mov.w	r1, #512	; 0x200
 800023e:	9000      	str	r0, [sp, #0]
 8000240:	9101      	str	r1, [sp, #4]
 8000242:	9302      	str	r3, [sp, #8]
 8000244:	9303      	str	r3, [sp, #12]
 8000246:	481f      	ldr	r0, [pc, #124]	; (80002c4 <rt_application_init+0xb4>)
 8000248:	491f      	ldr	r1, [pc, #124]	; (80002c8 <rt_application_init+0xb8>)
 800024a:	4a20      	ldr	r2, [pc, #128]	; (80002cc <rt_application_init+0xbc>)
 800024c:	2300      	movs	r3, #0
 800024e:	f007 fafb 	bl	8007848 <rt_thread_init>
 8000252:	2800      	cmp	r0, #0
 8000254:	d027      	beq.n	80002a6 <rt_application_init+0x96>
 8000256:	4a1e      	ldr	r2, [pc, #120]	; (80002d0 <rt_application_init+0xc0>)
 8000258:	2305      	movs	r3, #5
 800025a:	f44f 7000 	mov.w	r0, #512	; 0x200
 800025e:	9200      	str	r2, [sp, #0]
 8000260:	9001      	str	r0, [sp, #4]
 8000262:	9302      	str	r3, [sp, #8]
 8000264:	9303      	str	r3, [sp, #12]
 8000266:	481b      	ldr	r0, [pc, #108]	; (80002d4 <rt_application_init+0xc4>)
 8000268:	491b      	ldr	r1, [pc, #108]	; (80002d8 <rt_application_init+0xc8>)
 800026a:	4a1c      	ldr	r2, [pc, #112]	; (80002dc <rt_application_init+0xcc>)
 800026c:	2300      	movs	r3, #0
 800026e:	f007 faeb 	bl	8007848 <rt_thread_init>
 8000272:	b1a0      	cbz	r0, 800029e <rt_application_init+0x8e>
 8000274:	2208      	movs	r2, #8
 8000276:	2314      	movs	r3, #20
 8000278:	e88d 000c 	stmia.w	sp, {r2, r3}
 800027c:	4818      	ldr	r0, [pc, #96]	; (80002e0 <rt_application_init+0xd0>)
 800027e:	4919      	ldr	r1, [pc, #100]	; (80002e4 <rt_application_init+0xd4>)
 8000280:	2200      	movs	r2, #0
 8000282:	f44f 6300 	mov.w	r3, #2048	; 0x800
 8000286:	f007 fb29 	bl	80078dc <rt_thread_create>
 800028a:	b108      	cbz	r0, 8000290 <rt_application_init+0x80>
 800028c:	f007 fc1c 	bl	8007ac8 <rt_thread_startup>
 8000290:	2000      	movs	r0, #0
 8000292:	b005      	add	sp, #20
 8000294:	bd00      	pop	{pc}
 8000296:	4807      	ldr	r0, [pc, #28]	; (80002b4 <rt_application_init+0xa4>)
 8000298:	f007 fc16 	bl	8007ac8 <rt_thread_startup>
 800029c:	e7cb      	b.n	8000236 <rt_application_init+0x26>
 800029e:	480d      	ldr	r0, [pc, #52]	; (80002d4 <rt_application_init+0xc4>)
 80002a0:	f007 fc12 	bl	8007ac8 <rt_thread_startup>
 80002a4:	e7e6      	b.n	8000274 <rt_application_init+0x64>
 80002a6:	4807      	ldr	r0, [pc, #28]	; (80002c4 <rt_application_init+0xb4>)
 80002a8:	f007 fc0e 	bl	8007ac8 <rt_thread_startup>
 80002ac:	e7d3      	b.n	8000256 <rt_application_init+0x46>
 80002ae:	bf00      	nop
 80002b0:	200017ac 	.word	0x200017ac
 80002b4:	20001734 	.word	0x20001734
 80002b8:	08008994 	.word	0x08008994
 80002bc:	08003c89 	.word	0x08003c89
 80002c0:	20001534 	.word	0x20001534
 80002c4:	20001098 	.word	0x20001098
 80002c8:	0800899c 	.word	0x0800899c
 80002cc:	0800393d 	.word	0x0800393d
 80002d0:	20000d00 	.word	0x20000d00
 80002d4:	20000c88 	.word	0x20000c88
 80002d8:	080089a4 	.word	0x080089a4
 80002dc:	080035e5 	.word	0x080035e5
 80002e0:	080089ac 	.word	0x080089ac
 80002e4:	0800020d 	.word	0x0800020d

080002e8 <assert_failed>:
 80002e8:	b508      	push	{r3, lr}
 80002ea:	4605      	mov	r5, r0
 80002ec:	4806      	ldr	r0, [pc, #24]	; (8000308 <assert_failed+0x20>)
 80002ee:	460c      	mov	r4, r1
 80002f0:	f006 fc74 	bl	8006bdc <rt_kprintf>
 80002f4:	4805      	ldr	r0, [pc, #20]	; (800030c <assert_failed+0x24>)
 80002f6:	4629      	mov	r1, r5
 80002f8:	f006 fc70 	bl	8006bdc <rt_kprintf>
 80002fc:	4804      	ldr	r0, [pc, #16]	; (8000310 <assert_failed+0x28>)
 80002fe:	4621      	mov	r1, r4
 8000300:	f006 fc6c 	bl	8006bdc <rt_kprintf>
 8000304:	e7fe      	b.n	8000304 <assert_failed+0x1c>
 8000306:	bf00      	nop
 8000308:	080089b4 	.word	0x080089b4
 800030c:	080089dc 	.word	0x080089dc
 8000310:	080089f0 	.word	0x080089f0

08000314 <rtthread_startup>:
 8000314:	b508      	push	{r3, lr}
 8000316:	f000 f833 	bl	8000380 <rt_hw_board_init>
 800031a:	f006 fc8b 	bl	8006c34 <rt_show_version>
 800031e:	f44f 41a0 	mov.w	r1, #20480	; 0x5000
 8000322:	f641 305c 	movw	r0, #7004	; 0x1b5c
 8000326:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800032a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800032e:	f006 fd39 	bl	8006da4 <rt_system_heap_init>
 8000332:	f007 f877 	bl	8007424 <rt_system_scheduler_init>
 8000336:	f007 fd89 	bl	8007e4c <rt_system_timer_init>
 800033a:	f007 fd8f 	bl	8007e5c <rt_system_timer_thread_init>
 800033e:	f7ff ff67 	bl	8000210 <rt_application_init>
 8000342:	f005 fde9 	bl	8005f18 <rt_thread_idle_init>
 8000346:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800034a:	f007 b897 	b.w	800747c <rt_system_scheduler_start>
 800034e:	bf00      	nop

08000350 <main>:
 8000350:	b508      	push	{r3, lr}
 8000352:	f7ff fedb 	bl	800010c <rt_hw_interrupt_disable>
 8000356:	f7ff ffdd 	bl	8000314 <rtthread_startup>
 800035a:	2000      	movs	r0, #0
 800035c:	bd08      	pop	{r3, pc}
 800035e:	bf00      	nop

08000360 <NVIC_Configuration>:
 8000360:	f04f 6000 	mov.w	r0, #134217728	; 0x8000000
 8000364:	2100      	movs	r1, #0
 8000366:	f002 bd9d 	b.w	8002ea4 <NVIC_SetVectorTable>
 800036a:	bf00      	nop

0800036c <SysTick_Handler>:
 800036c:	b508      	push	{r3, lr}
 800036e:	f005 ff49 	bl	8006204 <rt_interrupt_enter>
 8000372:	f005 fc4d 	bl	8005c10 <rt_tick_increase>
 8000376:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800037a:	f005 bf53 	b.w	8006224 <rt_interrupt_leave>
 800037e:	bf00      	nop

08000380 <rt_hw_board_init>:
 8000380:	b508      	push	{r3, lr}
 8000382:	f7ff ffed 	bl	8000360 <NVIC_Configuration>
 8000386:	f240 0318 	movw	r3, #24
 800038a:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800038e:	6819      	ldr	r1, [r3, #0]
 8000390:	f641 10f1 	movw	r0, #6641	; 0x19f1
 8000394:	f2c0 5076 	movt	r0, #1398	; 0x576
 8000398:	fba0 2101 	umull	r2, r1, r0, r1
 800039c:	f24e 0310 	movw	r3, #57360	; 0xe010
 80003a0:	0988      	lsrs	r0, r1, #6
 80003a2:	f44f 426d 	mov.w	r2, #60672	; 0xed00
 80003a6:	f2ce 0300 	movt	r3, #57344	; 0xe000
 80003aa:	1e41      	subs	r1, r0, #1
 80003ac:	f2ce 0200 	movt	r2, #57344	; 0xe000
 80003b0:	20f0      	movs	r0, #240	; 0xf0
 80003b2:	6059      	str	r1, [r3, #4]
 80003b4:	f882 0023 	strb.w	r0, [r2, #35]	; 0x23
 80003b8:	2107      	movs	r1, #7
 80003ba:	2200      	movs	r2, #0
 80003bc:	609a      	str	r2, [r3, #8]
 80003be:	6019      	str	r1, [r3, #0]
 80003c0:	f000 f9a6 	bl	8000710 <rt_hw_usart_init>
 80003c4:	f648 2004 	movw	r0, #35332	; 0x8a04
 80003c8:	f6c0 0000 	movt	r0, #2048	; 0x800
 80003cc:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80003d0:	f006 bbee 	b.w	8006bb0 <rt_console_set_device>

080003d4 <NMI_Handler>:
 80003d4:	4770      	bx	lr
 80003d6:	bf00      	nop

080003d8 <MemManage_Handler>:
 80003d8:	e7fe      	b.n	80003d8 <MemManage_Handler>
 80003da:	bf00      	nop

080003dc <BusFault_Handler>:
 80003dc:	e7fe      	b.n	80003dc <BusFault_Handler>
 80003de:	bf00      	nop

080003e0 <UsageFault_Handler>:
 80003e0:	e7fe      	b.n	80003e0 <UsageFault_Handler>
 80003e2:	bf00      	nop

080003e4 <SVC_Handler>:
 80003e4:	4770      	bx	lr
 80003e6:	bf00      	nop

080003e8 <DebugMon_Handler>:
 80003e8:	4770      	bx	lr
 80003ea:	bf00      	nop

080003ec <rt_hw_led_on>:
 80003ec:	b930      	cbnz	r0, 80003fc <rt_hw_led_on+0x10>
 80003ee:	f44f 6040 	mov.w	r0, #3072	; 0xc00
 80003f2:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80003f6:	2180      	movs	r1, #128	; 0x80
 80003f8:	f001 bf62 	b.w	80022c0 <GPIO_SetBits>
 80003fc:	2801      	cmp	r0, #1
 80003fe:	d000      	beq.n	8000402 <rt_hw_led_on+0x16>
 8000400:	4770      	bx	lr
 8000402:	f44f 5080 	mov.w	r0, #4096	; 0x1000
 8000406:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800040a:	f44f 4180 	mov.w	r1, #16384	; 0x4000
 800040e:	f001 bf57 	b.w	80022c0 <GPIO_SetBits>
 8000412:	bf00      	nop

08000414 <rt_hw_led_off>:
 8000414:	b930      	cbnz	r0, 8000424 <rt_hw_led_off+0x10>
 8000416:	f44f 6040 	mov.w	r0, #3072	; 0xc00
 800041a:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800041e:	2180      	movs	r1, #128	; 0x80
 8000420:	f001 bf8a 	b.w	8002338 <GPIO_ResetBits>
 8000424:	2801      	cmp	r0, #1
 8000426:	d000      	beq.n	800042a <rt_hw_led_off+0x16>
 8000428:	4770      	bx	lr
 800042a:	f44f 5080 	mov.w	r0, #4096	; 0x1000
 800042e:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8000432:	f44f 4180 	mov.w	r1, #16384	; 0x4000
 8000436:	f001 bf7f 	b.w	8002338 <GPIO_ResetBits>
 800043a:	bf00      	nop

0800043c <stm32_getc>:
 800043c:	b510      	push	{r4, lr}
 800043e:	4604      	mov	r4, r0
 8000440:	b082      	sub	sp, #8
 8000442:	b160      	cbz	r0, 800045e <stm32_getc+0x22>
 8000444:	6be0      	ldr	r0, [r4, #60]	; 0x3c
 8000446:	6801      	ldr	r1, [r0, #0]
 8000448:	f04f 30ff 	mov.w	r0, #4294967295
 800044c:	880a      	ldrh	r2, [r1, #0]
 800044e:	f002 0320 	and.w	r3, r2, #32
 8000452:	b29a      	uxth	r2, r3
 8000454:	b10a      	cbz	r2, 800045a <stm32_getc+0x1e>
 8000456:	8888      	ldrh	r0, [r1, #4]
 8000458:	b2c0      	uxtb	r0, r0
 800045a:	b002      	add	sp, #8
 800045c:	bd10      	pop	{r4, pc}
 800045e:	4806      	ldr	r0, [pc, #24]	; (8000478 <stm32_getc+0x3c>)
 8000460:	4906      	ldr	r1, [pc, #24]	; (800047c <stm32_getc+0x40>)
 8000462:	4a07      	ldr	r2, [pc, #28]	; (8000480 <stm32_getc+0x44>)
 8000464:	2376      	movs	r3, #118	; 0x76
 8000466:	f88d 4007 	strb.w	r4, [sp, #7]
 800046a:	f006 fbb7 	bl	8006bdc <rt_kprintf>
 800046e:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8000472:	2b00      	cmp	r3, #0
 8000474:	d0fb      	beq.n	800046e <stm32_getc+0x32>
 8000476:	e7e5      	b.n	8000444 <stm32_getc+0x8>
 8000478:	08008a48 	.word	0x08008a48
 800047c:	08008a68 	.word	0x08008a68
 8000480:	08008a28 	.word	0x08008a28

08000484 <stm32_putc>:
 8000484:	b530      	push	{r4, r5, lr}
 8000486:	4604      	mov	r4, r0
 8000488:	b083      	sub	sp, #12
 800048a:	460d      	mov	r5, r1
 800048c:	b158      	cbz	r0, 80004a6 <stm32_putc+0x22>
 800048e:	6be0      	ldr	r0, [r4, #60]	; 0x3c
 8000490:	6802      	ldr	r2, [r0, #0]
 8000492:	8811      	ldrh	r1, [r2, #0]
 8000494:	f001 0380 	and.w	r3, r1, #128	; 0x80
 8000498:	b298      	uxth	r0, r3
 800049a:	2800      	cmp	r0, #0
 800049c:	d0f9      	beq.n	8000492 <stm32_putc+0xe>
 800049e:	8095      	strh	r5, [r2, #4]
 80004a0:	2001      	movs	r0, #1
 80004a2:	b003      	add	sp, #12
 80004a4:	bd30      	pop	{r4, r5, pc}
 80004a6:	4806      	ldr	r0, [pc, #24]	; (80004c0 <stm32_putc+0x3c>)
 80004a8:	4906      	ldr	r1, [pc, #24]	; (80004c4 <stm32_putc+0x40>)
 80004aa:	4a07      	ldr	r2, [pc, #28]	; (80004c8 <stm32_putc+0x44>)
 80004ac:	2368      	movs	r3, #104	; 0x68
 80004ae:	f88d 4007 	strb.w	r4, [sp, #7]
 80004b2:	f006 fb93 	bl	8006bdc <rt_kprintf>
 80004b6:	f89d 3007 	ldrb.w	r3, [sp, #7]
 80004ba:	2b00      	cmp	r3, #0
 80004bc:	d0fb      	beq.n	80004b6 <stm32_putc+0x32>
 80004be:	e7e6      	b.n	800048e <stm32_putc+0xa>
 80004c0:	08008a48 	.word	0x08008a48
 80004c4:	08008a68 	.word	0x08008a68
 80004c8:	08008a1c 	.word	0x08008a1c

080004cc <stm32_control>:
 80004cc:	b530      	push	{r4, r5, lr}
 80004ce:	4604      	mov	r4, r0
 80004d0:	b083      	sub	sp, #12
 80004d2:	460d      	mov	r5, r1
 80004d4:	b328      	cbz	r0, 8000522 <stm32_control+0x56>
 80004d6:	2d10      	cmp	r5, #16
 80004d8:	6be0      	ldr	r0, [r4, #60]	; 0x3c
 80004da:	d013      	beq.n	8000504 <stm32_control+0x38>
 80004dc:	2d11      	cmp	r5, #17
 80004de:	d10e      	bne.n	80004fe <stm32_control+0x32>
 80004e0:	7903      	ldrb	r3, [r0, #4]
 80004e2:	2101      	movs	r1, #1
 80004e4:	f003 021f 	and.w	r2, r3, #31
 80004e8:	fa01 f102 	lsl.w	r1, r1, r2
 80004ec:	b258      	sxtb	r0, r3
 80004ee:	0942      	lsrs	r2, r0, #5
 80004f0:	f44f 4361 	mov.w	r3, #57600	; 0xe100
 80004f4:	f2ce 0300 	movt	r3, #57344	; 0xe000
 80004f8:	3220      	adds	r2, #32
 80004fa:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80004fe:	2000      	movs	r0, #0
 8000500:	b003      	add	sp, #12
 8000502:	bd30      	pop	{r4, r5, pc}
 8000504:	7900      	ldrb	r0, [r0, #4]
 8000506:	2101      	movs	r1, #1
 8000508:	f000 021f 	and.w	r2, r0, #31
 800050c:	fa01 f102 	lsl.w	r1, r1, r2
 8000510:	b240      	sxtb	r0, r0
 8000512:	f44f 4361 	mov.w	r3, #57600	; 0xe100
 8000516:	0942      	lsrs	r2, r0, #5
 8000518:	f2ce 0300 	movt	r3, #57344	; 0xe000
 800051c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8000520:	e7ed      	b.n	80004fe <stm32_control+0x32>
 8000522:	4806      	ldr	r0, [pc, #24]	; (800053c <stm32_control+0x70>)
 8000524:	4906      	ldr	r1, [pc, #24]	; (8000540 <stm32_control+0x74>)
 8000526:	4a07      	ldr	r2, [pc, #28]	; (8000544 <stm32_control+0x78>)
 8000528:	2352      	movs	r3, #82	; 0x52
 800052a:	f88d 4007 	strb.w	r4, [sp, #7]
 800052e:	f006 fb55 	bl	8006bdc <rt_kprintf>
 8000532:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8000536:	2b00      	cmp	r3, #0
 8000538:	d0fb      	beq.n	8000532 <stm32_control+0x66>
 800053a:	e7cc      	b.n	80004d6 <stm32_control+0xa>
 800053c:	08008a48 	.word	0x08008a48
 8000540:	08008a68 	.word	0x08008a68
 8000544:	08008a0c 	.word	0x08008a0c

08000548 <stm32_configure>:
 8000548:	b530      	push	{r4, r5, lr}
 800054a:	4605      	mov	r5, r0
 800054c:	b087      	sub	sp, #28
 800054e:	460c      	mov	r4, r1
 8000550:	2800      	cmp	r0, #0
 8000552:	d030      	beq.n	80005b6 <stm32_configure+0x6e>
 8000554:	2c00      	cmp	r4, #0
 8000556:	d03b      	beq.n	80005d0 <stm32_configure+0x88>
 8000558:	7923      	ldrb	r3, [r4, #4]
 800055a:	6822      	ldr	r2, [r4, #0]
 800055c:	f003 010f 	and.w	r1, r3, #15
 8000560:	2908      	cmp	r1, #8
 8000562:	9202      	str	r2, [sp, #8]
 8000564:	6bed      	ldr	r5, [r5, #60]	; 0x3c
 8000566:	d022      	beq.n	80005ae <stm32_configure+0x66>
 8000568:	f013 0030 	ands.w	r0, r3, #48	; 0x30
 800056c:	d01c      	beq.n	80005a8 <stm32_configure+0x60>
 800056e:	2810      	cmp	r0, #16
 8000570:	d018      	beq.n	80005a4 <stm32_configure+0x5c>
 8000572:	6828      	ldr	r0, [r5, #0]
 8000574:	230c      	movs	r3, #12
 8000576:	2400      	movs	r4, #0
 8000578:	a902      	add	r1, sp, #8
 800057a:	f8ad 3012 	strh.w	r3, [sp, #18]
 800057e:	f8ad 4010 	strh.w	r4, [sp, #16]
 8000582:	f8ad 4014 	strh.w	r4, [sp, #20]
 8000586:	f001 ff13 	bl	80023b0 <USART_Init>
 800058a:	6828      	ldr	r0, [r5, #0]
 800058c:	2101      	movs	r1, #1
 800058e:	f002 f803 	bl	8002598 <USART_Cmd>
 8000592:	6828      	ldr	r0, [r5, #0]
 8000594:	f240 5125 	movw	r1, #1317	; 0x525
 8000598:	2201      	movs	r2, #1
 800059a:	f002 f83b 	bl	8002614 <USART_ITConfig>
 800059e:	4620      	mov	r0, r4
 80005a0:	b007      	add	sp, #28
 80005a2:	bd30      	pop	{r4, r5, pc}
 80005a4:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80005a8:	f8ad 000e 	strh.w	r0, [sp, #14]
 80005ac:	e7e1      	b.n	8000572 <stm32_configure+0x2a>
 80005ae:	2400      	movs	r4, #0
 80005b0:	f8ad 400c 	strh.w	r4, [sp, #12]
 80005b4:	e7d8      	b.n	8000568 <stm32_configure+0x20>
 80005b6:	480d      	ldr	r0, [pc, #52]	; (80005ec <stm32_configure+0xa4>)
 80005b8:	490d      	ldr	r1, [pc, #52]	; (80005f0 <stm32_configure+0xa8>)
 80005ba:	4a0e      	ldr	r2, [pc, #56]	; (80005f4 <stm32_configure+0xac>)
 80005bc:	2332      	movs	r3, #50	; 0x32
 80005be:	f88d 5006 	strb.w	r5, [sp, #6]
 80005c2:	f006 fb0b 	bl	8006bdc <rt_kprintf>
 80005c6:	f89d 3006 	ldrb.w	r3, [sp, #6]
 80005ca:	2b00      	cmp	r3, #0
 80005cc:	d0fb      	beq.n	80005c6 <stm32_configure+0x7e>
 80005ce:	e7c1      	b.n	8000554 <stm32_configure+0xc>
 80005d0:	4806      	ldr	r0, [pc, #24]	; (80005ec <stm32_configure+0xa4>)
 80005d2:	4909      	ldr	r1, [pc, #36]	; (80005f8 <stm32_configure+0xb0>)
 80005d4:	4a07      	ldr	r2, [pc, #28]	; (80005f4 <stm32_configure+0xac>)
 80005d6:	2333      	movs	r3, #51	; 0x33
 80005d8:	f88d 4007 	strb.w	r4, [sp, #7]
 80005dc:	f006 fafe 	bl	8006bdc <rt_kprintf>
 80005e0:	f89d 0007 	ldrb.w	r0, [sp, #7]
 80005e4:	2800      	cmp	r0, #0
 80005e6:	d0fb      	beq.n	80005e0 <stm32_configure+0x98>
 80005e8:	e7b6      	b.n	8000558 <stm32_configure+0x10>
 80005ea:	bf00      	nop
 80005ec:	08008a48 	.word	0x08008a48
 80005f0:	08008a68 	.word	0x08008a68
 80005f4:	08008a9c 	.word	0x08008a9c
 80005f8:	08008a7c 	.word	0x08008a7c

080005fc <NVIC_Configuration.isra.0>:
 80005fc:	b500      	push	{lr}
 80005fe:	b083      	sub	sp, #12
 8000600:	2300      	movs	r3, #0
 8000602:	f88d 0004 	strb.w	r0, [sp, #4]
 8000606:	2101      	movs	r1, #1
 8000608:	a801      	add	r0, sp, #4
 800060a:	f88d 3005 	strb.w	r3, [sp, #5]
 800060e:	f88d 3006 	strb.w	r3, [sp, #6]
 8000612:	f88d 1007 	strb.w	r1, [sp, #7]
 8000616:	f002 fbed 	bl	8002df4 <NVIC_Init>
 800061a:	b003      	add	sp, #12
 800061c:	bd00      	pop	{pc}
 800061e:	bf00      	nop

08000620 <USART1_IRQHandler>:
 8000620:	b510      	push	{r4, lr}
 8000622:	4c11      	ldr	r4, [pc, #68]	; (8000668 <USART1_IRQHandler+0x48>)
 8000624:	f005 fdee 	bl	8006204 <rt_interrupt_enter>
 8000628:	6820      	ldr	r0, [r4, #0]
 800062a:	f240 5125 	movw	r1, #1317	; 0x525
 800062e:	f002 f87d 	bl	800272c <USART_GetITStatus>
 8000632:	b978      	cbnz	r0, 8000654 <USART1_IRQHandler+0x34>
 8000634:	6820      	ldr	r0, [r4, #0]
 8000636:	f240 6126 	movw	r1, #1574	; 0x626
 800063a:	f002 f877 	bl	800272c <USART_GetITStatus>
 800063e:	b128      	cbz	r0, 800064c <USART1_IRQHandler+0x2c>
 8000640:	4b09      	ldr	r3, [pc, #36]	; (8000668 <USART1_IRQHandler+0x48>)
 8000642:	f240 6126 	movw	r1, #1574	; 0x626
 8000646:	6818      	ldr	r0, [r3, #0]
 8000648:	f002 f912 	bl	8002870 <USART_ClearITPendingBit>
 800064c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000650:	f005 bde8 	b.w	8006224 <rt_interrupt_leave>
 8000654:	4805      	ldr	r0, [pc, #20]	; (800066c <USART1_IRQHandler+0x4c>)
 8000656:	f007 ffcf 	bl	80085f8 <rt_hw_serial_isr>
 800065a:	6820      	ldr	r0, [r4, #0]
 800065c:	f240 5125 	movw	r1, #1317	; 0x525
 8000660:	f002 f906 	bl	8002870 <USART_ClearITPendingBit>
 8000664:	e7e6      	b.n	8000634 <USART1_IRQHandler+0x14>
 8000666:	bf00      	nop
 8000668:	20000010 	.word	0x20000010
 800066c:	200009d0 	.word	0x200009d0

08000670 <USART2_IRQHandler>:
 8000670:	b510      	push	{r4, lr}
 8000672:	4c11      	ldr	r4, [pc, #68]	; (80006b8 <USART2_IRQHandler+0x48>)
 8000674:	f005 fdc6 	bl	8006204 <rt_interrupt_enter>
 8000678:	6820      	ldr	r0, [r4, #0]
 800067a:	f240 5125 	movw	r1, #1317	; 0x525
 800067e:	f002 f855 	bl	800272c <USART_GetITStatus>
 8000682:	b978      	cbnz	r0, 80006a4 <USART2_IRQHandler+0x34>
 8000684:	6820      	ldr	r0, [r4, #0]
 8000686:	f240 6126 	movw	r1, #1574	; 0x626
 800068a:	f002 f84f 	bl	800272c <USART_GetITStatus>
 800068e:	b128      	cbz	r0, 800069c <USART2_IRQHandler+0x2c>
 8000690:	4b09      	ldr	r3, [pc, #36]	; (80006b8 <USART2_IRQHandler+0x48>)
 8000692:	f240 6126 	movw	r1, #1574	; 0x626
 8000696:	6818      	ldr	r0, [r3, #0]
 8000698:	f002 f8ea 	bl	8002870 <USART_ClearITPendingBit>
 800069c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80006a0:	f005 bdc0 	b.w	8006224 <rt_interrupt_leave>
 80006a4:	4805      	ldr	r0, [pc, #20]	; (80006bc <USART2_IRQHandler+0x4c>)
 80006a6:	f007 ffa7 	bl	80085f8 <rt_hw_serial_isr>
 80006aa:	6820      	ldr	r0, [r4, #0]
 80006ac:	f240 5125 	movw	r1, #1317	; 0x525
 80006b0:	f002 f8de 	bl	8002870 <USART_ClearITPendingBit>
 80006b4:	e7e6      	b.n	8000684 <USART2_IRQHandler+0x14>
 80006b6:	bf00      	nop
 80006b8:	20000000 	.word	0x20000000
 80006bc:	20000b50 	.word	0x20000b50

080006c0 <USART3_IRQHandler>:
 80006c0:	b510      	push	{r4, lr}
 80006c2:	4c11      	ldr	r4, [pc, #68]	; (8000708 <USART3_IRQHandler+0x48>)
 80006c4:	f005 fd9e 	bl	8006204 <rt_interrupt_enter>
 80006c8:	6820      	ldr	r0, [r4, #0]
 80006ca:	f240 5125 	movw	r1, #1317	; 0x525
 80006ce:	f002 f82d 	bl	800272c <USART_GetITStatus>
 80006d2:	b978      	cbnz	r0, 80006f4 <USART3_IRQHandler+0x34>
 80006d4:	6820      	ldr	r0, [r4, #0]
 80006d6:	f240 6126 	movw	r1, #1574	; 0x626
 80006da:	f002 f827 	bl	800272c <USART_GetITStatus>
 80006de:	b128      	cbz	r0, 80006ec <USART3_IRQHandler+0x2c>
 80006e0:	4b09      	ldr	r3, [pc, #36]	; (8000708 <USART3_IRQHandler+0x48>)
 80006e2:	f240 6126 	movw	r1, #1574	; 0x626
 80006e6:	6818      	ldr	r0, [r3, #0]
 80006e8:	f002 f8c2 	bl	8002870 <USART_ClearITPendingBit>
 80006ec:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80006f0:	f005 bd98 	b.w	8006224 <rt_interrupt_leave>
 80006f4:	4805      	ldr	r0, [pc, #20]	; (800070c <USART3_IRQHandler+0x4c>)
 80006f6:	f007 ff7f 	bl	80085f8 <rt_hw_serial_isr>
 80006fa:	6820      	ldr	r0, [r4, #0]
 80006fc:	f240 5125 	movw	r1, #1317	; 0x525
 8000700:	f002 f8b6 	bl	8002870 <USART_ClearITPendingBit>
 8000704:	e7e6      	b.n	80006d4 <USART3_IRQHandler+0x14>
 8000706:	bf00      	nop
 8000708:	20000008 	.word	0x20000008
 800070c:	20000a90 	.word	0x20000a90

08000710 <rt_hw_usart_init>:
 8000710:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000714:	f648 1364 	movw	r3, #35172	; 0x8964
 8000718:	b084      	sub	sp, #16
 800071a:	f6c0 0300 	movt	r3, #2048	; 0x800
 800071e:	ac02      	add	r4, sp, #8
 8000720:	e893 0003 	ldmia.w	r3, {r0, r1}
 8000724:	e884 0003 	stmia.w	r4, {r0, r1}
 8000728:	2004      	movs	r0, #4
 800072a:	2101      	movs	r1, #1
 800072c:	f000 fa0e 	bl	8000b4c <RCC_APB2PeriphClockCmd>
 8000730:	2101      	movs	r1, #1
 8000732:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8000736:	f000 fa09 	bl	8000b4c <RCC_APB2PeriphClockCmd>
 800073a:	2004      	movs	r0, #4
 800073c:	2101      	movs	r1, #1
 800073e:	f000 fa05 	bl	8000b4c <RCC_APB2PeriphClockCmd>
 8000742:	2101      	movs	r1, #1
 8000744:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8000748:	f000 fa2c 	bl	8000ba4 <RCC_APB1PeriphClockCmd>
 800074c:	2008      	movs	r0, #8
 800074e:	2101      	movs	r1, #1
 8000750:	ad04      	add	r5, sp, #16
 8000752:	f000 f9fb 	bl	8000b4c <RCC_APB2PeriphClockCmd>
 8000756:	f44f 6a80 	mov.w	sl, #1024	; 0x400
 800075a:	2101      	movs	r1, #1
 800075c:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8000760:	f44f 6600 	mov.w	r6, #2048	; 0x800
 8000764:	f000 fa1e 	bl	8000ba4 <RCC_APB1PeriphClockCmd>
 8000768:	f2c4 0601 	movt	r6, #16385	; 0x4001
 800076c:	f825 ad0c 	strh.w	sl, [r5, #-12]!
 8000770:	2704      	movs	r7, #4
 8000772:	2202      	movs	r2, #2
 8000774:	4630      	mov	r0, r6
 8000776:	4629      	mov	r1, r5
 8000778:	f04f 0818 	mov.w	r8, #24
 800077c:	f88d 2006 	strb.w	r2, [sp, #6]
 8000780:	f88d 7007 	strb.w	r7, [sp, #7]
 8000784:	f001 fb9a 	bl	8001ebc <GPIO_Init>
 8000788:	f44f 7300 	mov.w	r3, #512	; 0x200
 800078c:	4630      	mov	r0, r6
 800078e:	4629      	mov	r1, r5
 8000790:	f8ad 3004 	strh.w	r3, [sp, #4]
 8000794:	f88d 8007 	strb.w	r8, [sp, #7]
 8000798:	f44f 6940 	mov.w	r9, #3072	; 0xc00
 800079c:	f001 fb8e 	bl	8001ebc <GPIO_Init>
 80007a0:	2208      	movs	r2, #8
 80007a2:	4630      	mov	r0, r6
 80007a4:	4629      	mov	r1, r5
 80007a6:	f8ad 2004 	strh.w	r2, [sp, #4]
 80007aa:	f2c4 0901 	movt	r9, #16385	; 0x4001
 80007ae:	f88d 7007 	strb.w	r7, [sp, #7]
 80007b2:	f001 fb83 	bl	8001ebc <GPIO_Init>
 80007b6:	4630      	mov	r0, r6
 80007b8:	4629      	mov	r1, r5
 80007ba:	f88d 8007 	strb.w	r8, [sp, #7]
 80007be:	f8ad 7004 	strh.w	r7, [sp, #4]
 80007c2:	f44f 6600 	mov.w	r6, #2048	; 0x800
 80007c6:	f001 fb79 	bl	8001ebc <GPIO_Init>
 80007ca:	4648      	mov	r0, r9
 80007cc:	4629      	mov	r1, r5
 80007ce:	f88d 7007 	strb.w	r7, [sp, #7]
 80007d2:	f8ad 6004 	strh.w	r6, [sp, #4]
 80007d6:	f640 17d0 	movw	r7, #2512	; 0x9d0
 80007da:	f001 fb6f 	bl	8001ebc <GPIO_Init>
 80007de:	4648      	mov	r0, r9
 80007e0:	4629      	mov	r1, r5
 80007e2:	f2c2 0700 	movt	r7, #8192	; 0x2000
 80007e6:	f88d 8007 	strb.w	r8, [sp, #7]
 80007ea:	f8ad a004 	strh.w	sl, [sp, #4]
 80007ee:	f001 fb65 	bl	8001ebc <GPIO_Init>
 80007f2:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 80007f6:	f107 0344 	add.w	r3, r7, #68	; 0x44
 80007fa:	9002      	str	r0, [sp, #8]
 80007fc:	f240 0510 	movw	r5, #16
 8000800:	e894 0003 	ldmia.w	r4, {r0, r1}
 8000804:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8000808:	e883 0003 	stmia.w	r3, {r0, r1}
 800080c:	f648 2834 	movw	r8, #35380	; 0x8a34
 8000810:	f640 310c 	movw	r1, #2828	; 0xb0c
 8000814:	f6c0 0800 	movt	r8, #2048	; 0x800
 8000818:	f995 0004 	ldrsb.w	r0, [r5, #4]
 800081c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8000820:	f8c7 8040 	str.w	r8, [r7, #64]	; 0x40
 8000824:	64f9      	str	r1, [r7, #76]	; 0x4c
 8000826:	f640 3650 	movw	r6, #2896	; 0xb50
 800082a:	f7ff fee7 	bl	80005fc <NVIC_Configuration.isra.0>
 800082e:	f648 2104 	movw	r1, #35332	; 0x8a04
 8000832:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8000836:	462b      	mov	r3, r5
 8000838:	f240 1243 	movw	r2, #323	; 0x143
 800083c:	f6c0 0100 	movt	r1, #2048	; 0x800
 8000840:	4638      	mov	r0, r7
 8000842:	f240 0700 	movw	r7, #0
 8000846:	f007 fe97 	bl	8008578 <rt_hw_serial_register>
 800084a:	e894 0003 	ldmia.w	r4, {r0, r1}
 800084e:	f106 0244 	add.w	r2, r6, #68	; 0x44
 8000852:	f2c2 0700 	movt	r7, #8192	; 0x2000
 8000856:	f640 254c 	movw	r5, #2636	; 0xa4c
 800085a:	e882 0003 	stmia.w	r2, {r0, r1}
 800085e:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8000862:	f997 0004 	ldrsb.w	r0, [r7, #4]
 8000866:	f8c6 8040 	str.w	r8, [r6, #64]	; 0x40
 800086a:	64f5      	str	r5, [r6, #76]	; 0x4c
 800086c:	f7ff fec6 	bl	80005fc <NVIC_Configuration.isra.0>
 8000870:	f640 2590 	movw	r5, #2704	; 0xa90
 8000874:	f648 218c 	movw	r1, #35468	; 0x8a8c
 8000878:	f2c2 0500 	movt	r5, #8192	; 0x2000
 800087c:	f240 1203 	movw	r2, #259	; 0x103
 8000880:	463b      	mov	r3, r7
 8000882:	f6c0 0100 	movt	r1, #2048	; 0x800
 8000886:	4630      	mov	r0, r6
 8000888:	f007 fe76 	bl	8008578 <rt_hw_serial_register>
 800088c:	e894 0003 	ldmia.w	r4, {r0, r1}
 8000890:	f105 0344 	add.w	r3, r5, #68	; 0x44
 8000894:	f240 0608 	movw	r6, #8
 8000898:	e883 0003 	stmia.w	r3, {r0, r1}
 800089c:	f2c2 0600 	movt	r6, #8192	; 0x2000
 80008a0:	f640 118c 	movw	r1, #2444	; 0x98c
 80008a4:	f996 0004 	ldrsb.w	r0, [r6, #4]
 80008a8:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80008ac:	64e9      	str	r1, [r5, #76]	; 0x4c
 80008ae:	f8c5 8040 	str.w	r8, [r5, #64]	; 0x40
 80008b2:	f7ff fea3 	bl	80005fc <NVIC_Configuration.isra.0>
 80008b6:	f648 2194 	movw	r1, #35476	; 0x8a94
 80008ba:	4628      	mov	r0, r5
 80008bc:	f6c0 0100 	movt	r1, #2048	; 0x800
 80008c0:	f240 1203 	movw	r2, #259	; 0x103
 80008c4:	4633      	mov	r3, r6
 80008c6:	f007 fe57 	bl	8008578 <rt_hw_serial_register>
 80008ca:	b004      	add	sp, #16
 80008cc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

080008d0 <SystemInit>:
 80008d0:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80008d4:	f2c4 0302 	movt	r3, #16386	; 0x4002
 80008d8:	6819      	ldr	r1, [r3, #0]
 80008da:	2200      	movs	r2, #0
 80008dc:	f041 0001 	orr.w	r0, r1, #1
 80008e0:	6018      	str	r0, [r3, #0]
 80008e2:	6859      	ldr	r1, [r3, #4]
 80008e4:	f6cf 02ff 	movt	r2, #63743	; 0xf8ff
 80008e8:	400a      	ands	r2, r1
 80008ea:	605a      	str	r2, [r3, #4]
 80008ec:	681a      	ldr	r2, [r3, #0]
 80008ee:	2100      	movs	r1, #0
 80008f0:	f022 7084 	bic.w	r0, r2, #17301504	; 0x1080000
 80008f4:	f420 3280 	bic.w	r2, r0, #65536	; 0x10000
 80008f8:	601a      	str	r2, [r3, #0]
 80008fa:	6818      	ldr	r0, [r3, #0]
 80008fc:	b082      	sub	sp, #8
 80008fe:	f420 2280 	bic.w	r2, r0, #262144	; 0x40000
 8000902:	601a      	str	r2, [r3, #0]
 8000904:	6858      	ldr	r0, [r3, #4]
 8000906:	461a      	mov	r2, r3
 8000908:	f420 00fe 	bic.w	r0, r0, #8323072	; 0x7f0000
 800090c:	6058      	str	r0, [r3, #4]
 800090e:	f44f 001f 	mov.w	r0, #10420224	; 0x9f0000
 8000912:	6098      	str	r0, [r3, #8]
 8000914:	9100      	str	r1, [sp, #0]
 8000916:	9101      	str	r1, [sp, #4]
 8000918:	6819      	ldr	r1, [r3, #0]
 800091a:	f441 3080 	orr.w	r0, r1, #65536	; 0x10000
 800091e:	6018      	str	r0, [r3, #0]
 8000920:	e003      	b.n	800092a <SystemInit+0x5a>
 8000922:	9800      	ldr	r0, [sp, #0]
 8000924:	f5b0 6fa0 	cmp.w	r0, #1280	; 0x500
 8000928:	d009      	beq.n	800093e <SystemInit+0x6e>
 800092a:	6813      	ldr	r3, [r2, #0]
 800092c:	f403 3100 	and.w	r1, r3, #131072	; 0x20000
 8000930:	9101      	str	r1, [sp, #4]
 8000932:	9800      	ldr	r0, [sp, #0]
 8000934:	1c43      	adds	r3, r0, #1
 8000936:	9300      	str	r3, [sp, #0]
 8000938:	9901      	ldr	r1, [sp, #4]
 800093a:	2900      	cmp	r1, #0
 800093c:	d0f1      	beq.n	8000922 <SystemInit+0x52>
 800093e:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8000942:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8000946:	6813      	ldr	r3, [r2, #0]
 8000948:	f413 3100 	ands.w	r1, r3, #131072	; 0x20000
 800094c:	d00d      	beq.n	800096a <SystemInit+0x9a>
 800094e:	2001      	movs	r0, #1
 8000950:	9001      	str	r0, [sp, #4]
 8000952:	9a01      	ldr	r2, [sp, #4]
 8000954:	2a01      	cmp	r2, #1
 8000956:	d00c      	beq.n	8000972 <SystemInit+0xa2>
 8000958:	f44f 406d 	mov.w	r0, #60672	; 0xed00
 800095c:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8000960:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8000964:	6082      	str	r2, [r0, #8]
 8000966:	b002      	add	sp, #8
 8000968:	4770      	bx	lr
 800096a:	9101      	str	r1, [sp, #4]
 800096c:	9a01      	ldr	r2, [sp, #4]
 800096e:	2a01      	cmp	r2, #1
 8000970:	d1f2      	bne.n	8000958 <SystemInit+0x88>
 8000972:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8000976:	f2c4 0202 	movt	r2, #16386	; 0x4002
 800097a:	6811      	ldr	r1, [r2, #0]
 800097c:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8000980:	f041 0010 	orr.w	r0, r1, #16
 8000984:	6010      	str	r0, [r2, #0]
 8000986:	6811      	ldr	r1, [r2, #0]
 8000988:	f2c4 0302 	movt	r3, #16386	; 0x4002
 800098c:	f021 0003 	bic.w	r0, r1, #3
 8000990:	6010      	str	r0, [r2, #0]
 8000992:	6810      	ldr	r0, [r2, #0]
 8000994:	4619      	mov	r1, r3
 8000996:	f040 0002 	orr.w	r0, r0, #2
 800099a:	6010      	str	r0, [r2, #0]
 800099c:	685a      	ldr	r2, [r3, #4]
 800099e:	605a      	str	r2, [r3, #4]
 80009a0:	6858      	ldr	r0, [r3, #4]
 80009a2:	6058      	str	r0, [r3, #4]
 80009a4:	685a      	ldr	r2, [r3, #4]
 80009a6:	f442 6080 	orr.w	r0, r2, #1024	; 0x400
 80009aa:	6058      	str	r0, [r3, #4]
 80009ac:	685a      	ldr	r2, [r3, #4]
 80009ae:	f422 107c 	bic.w	r0, r2, #4128768	; 0x3f0000
 80009b2:	6058      	str	r0, [r3, #4]
 80009b4:	685a      	ldr	r2, [r3, #4]
 80009b6:	f442 10e8 	orr.w	r0, r2, #1900544	; 0x1d0000
 80009ba:	6058      	str	r0, [r3, #4]
 80009bc:	681a      	ldr	r2, [r3, #0]
 80009be:	f042 7080 	orr.w	r0, r2, #16777216	; 0x1000000
 80009c2:	6018      	str	r0, [r3, #0]
 80009c4:	680a      	ldr	r2, [r1, #0]
 80009c6:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80009ca:	0192      	lsls	r2, r2, #6
 80009cc:	f2c4 0302 	movt	r3, #16386	; 0x4002
 80009d0:	d5f8      	bpl.n	80009c4 <SystemInit+0xf4>
 80009d2:	6859      	ldr	r1, [r3, #4]
 80009d4:	4618      	mov	r0, r3
 80009d6:	f021 0203 	bic.w	r2, r1, #3
 80009da:	605a      	str	r2, [r3, #4]
 80009dc:	6859      	ldr	r1, [r3, #4]
 80009de:	f041 0202 	orr.w	r2, r1, #2
 80009e2:	605a      	str	r2, [r3, #4]
 80009e4:	6843      	ldr	r3, [r0, #4]
 80009e6:	f003 010c 	and.w	r1, r3, #12
 80009ea:	2908      	cmp	r1, #8
 80009ec:	d1fa      	bne.n	80009e4 <SystemInit+0x114>
 80009ee:	e7b3      	b.n	8000958 <SystemInit+0x88>

080009f0 <RCC_USBCLKConfig>:
 80009f0:	2801      	cmp	r0, #1
 80009f2:	b510      	push	{r4, lr}
 80009f4:	4604      	mov	r4, r0
 80009f6:	d904      	bls.n	8000a02 <RCC_USBCLKConfig+0x12>
 80009f8:	4804      	ldr	r0, [pc, #16]	; (8000a0c <RCC_USBCLKConfig+0x1c>)
 80009fa:	f240 21db 	movw	r1, #731	; 0x2db
 80009fe:	f7ff fc73 	bl	80002e8 <assert_failed>
 8000a02:	23d8      	movs	r3, #216	; 0xd8
 8000a04:	f2c4 2342 	movt	r3, #16962	; 0x4242
 8000a08:	601c      	str	r4, [r3, #0]
 8000a0a:	bd10      	pop	{r4, pc}
 8000a0c:	08008aac 	.word	0x08008aac

08000a10 <RCC_ADCCLKConfig>:
 8000a10:	b510      	push	{r4, lr}
 8000a12:	4604      	mov	r4, r0
 8000a14:	b168      	cbz	r0, 8000a32 <RCC_ADCCLKConfig+0x22>
 8000a16:	f5b0 4f80 	cmp.w	r0, #16384	; 0x4000
 8000a1a:	d00a      	beq.n	8000a32 <RCC_ADCCLKConfig+0x22>
 8000a1c:	f5b0 4f00 	cmp.w	r0, #32768	; 0x8000
 8000a20:	d007      	beq.n	8000a32 <RCC_ADCCLKConfig+0x22>
 8000a22:	f5b0 4f40 	cmp.w	r0, #49152	; 0xc000
 8000a26:	d004      	beq.n	8000a32 <RCC_ADCCLKConfig+0x22>
 8000a28:	4807      	ldr	r0, [pc, #28]	; (8000a48 <RCC_ADCCLKConfig+0x38>)
 8000a2a:	f240 3102 	movw	r1, #770	; 0x302
 8000a2e:	f7ff fc5b 	bl	80002e8 <assert_failed>
 8000a32:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8000a36:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8000a3a:	685a      	ldr	r2, [r3, #4]
 8000a3c:	f422 4040 	bic.w	r0, r2, #49152	; 0xc000
 8000a40:	4304      	orrs	r4, r0
 8000a42:	605c      	str	r4, [r3, #4]
 8000a44:	bd10      	pop	{r4, pc}
 8000a46:	bf00      	nop
 8000a48:	08008aac 	.word	0x08008aac

08000a4c <RCC_GetClocksFreq>:
 8000a4c:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8000a50:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8000a54:	685a      	ldr	r2, [r3, #4]
 8000a56:	b410      	push	{r4}
 8000a58:	f002 010c 	and.w	r1, r2, #12
 8000a5c:	2904      	cmp	r1, #4
 8000a5e:	d001      	beq.n	8000a64 <RCC_GetClocksFreq+0x18>
 8000a60:	2908      	cmp	r1, #8
 8000a62:	d028      	beq.n	8000ab6 <RCC_GetClocksFreq+0x6a>
 8000a64:	f44f 5290 	mov.w	r2, #4608	; 0x1200
 8000a68:	f2c0 027a 	movt	r2, #122	; 0x7a
 8000a6c:	6002      	str	r2, [r0, #0]
 8000a6e:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8000a72:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8000a76:	685c      	ldr	r4, [r3, #4]
 8000a78:	491c      	ldr	r1, [pc, #112]	; (8000aec <RCC_GetClocksFreq+0xa0>)
 8000a7a:	f3c4 1403 	ubfx	r4, r4, #4, #4
 8000a7e:	5d0c      	ldrb	r4, [r1, r4]
 8000a80:	fa22 f204 	lsr.w	r2, r2, r4
 8000a84:	6042      	str	r2, [r0, #4]
 8000a86:	685c      	ldr	r4, [r3, #4]
 8000a88:	f3c4 2402 	ubfx	r4, r4, #8, #3
 8000a8c:	5d0c      	ldrb	r4, [r1, r4]
 8000a8e:	fa22 f404 	lsr.w	r4, r2, r4
 8000a92:	6084      	str	r4, [r0, #8]
 8000a94:	685c      	ldr	r4, [r3, #4]
 8000a96:	f3c4 24c2 	ubfx	r4, r4, #11, #3
 8000a9a:	5d09      	ldrb	r1, [r1, r4]
 8000a9c:	fa22 f201 	lsr.w	r2, r2, r1
 8000aa0:	60c2      	str	r2, [r0, #12]
 8000aa2:	685b      	ldr	r3, [r3, #4]
 8000aa4:	4912      	ldr	r1, [pc, #72]	; (8000af0 <RCC_GetClocksFreq+0xa4>)
 8000aa6:	f3c3 3381 	ubfx	r3, r3, #14, #2
 8000aaa:	5ccb      	ldrb	r3, [r1, r3]
 8000aac:	fbb2 f2f3 	udiv	r2, r2, r3
 8000ab0:	6102      	str	r2, [r0, #16]
 8000ab2:	bc10      	pop	{r4}
 8000ab4:	4770      	bx	lr
 8000ab6:	685c      	ldr	r4, [r3, #4]
 8000ab8:	6859      	ldr	r1, [r3, #4]
 8000aba:	f3c4 4283 	ubfx	r2, r4, #18, #4
 8000abe:	3202      	adds	r2, #2
 8000ac0:	03c9      	lsls	r1, r1, #15
 8000ac2:	d50a      	bpl.n	8000ada <RCC_GetClocksFreq+0x8e>
 8000ac4:	685b      	ldr	r3, [r3, #4]
 8000ac6:	039b      	lsls	r3, r3, #14
 8000ac8:	d407      	bmi.n	8000ada <RCC_GetClocksFreq+0x8e>
 8000aca:	f44f 5490 	mov.w	r4, #4608	; 0x1200
 8000ace:	f2c0 047a 	movt	r4, #122	; 0x7a
 8000ad2:	fb04 f202 	mul.w	r2, r4, r2
 8000ad6:	6002      	str	r2, [r0, #0]
 8000ad8:	e7c9      	b.n	8000a6e <RCC_GetClocksFreq+0x22>
 8000ada:	f44f 6110 	mov.w	r1, #2304	; 0x900
 8000ade:	f2c0 013d 	movt	r1, #61	; 0x3d
 8000ae2:	fb01 f202 	mul.w	r2, r1, r2
 8000ae6:	6002      	str	r2, [r0, #0]
 8000ae8:	e7c1      	b.n	8000a6e <RCC_GetClocksFreq+0x22>
 8000aea:	bf00      	nop
 8000aec:	20000020 	.word	0x20000020
 8000af0:	2000001c 	.word	0x2000001c

08000af4 <RCC_AHBPeriphClockCmd>:
 8000af4:	b538      	push	{r3, r4, r5, lr}
 8000af6:	f420 63aa 	bic.w	r3, r0, #1360	; 0x550
 8000afa:	4604      	mov	r4, r0
 8000afc:	f023 0007 	bic.w	r0, r3, #7
 8000b00:	460d      	mov	r5, r1
 8000b02:	b978      	cbnz	r0, 8000b24 <RCC_AHBPeriphClockCmd+0x30>
 8000b04:	b174      	cbz	r4, 8000b24 <RCC_AHBPeriphClockCmd+0x30>
 8000b06:	2d01      	cmp	r5, #1
 8000b08:	d913      	bls.n	8000b32 <RCC_AHBPeriphClockCmd+0x3e>
 8000b0a:	480f      	ldr	r0, [pc, #60]	; (8000b48 <RCC_AHBPeriphClockCmd+0x54>)
 8000b0c:	f240 412c 	movw	r1, #1068	; 0x42c
 8000b10:	f7ff fbea 	bl	80002e8 <assert_failed>
 8000b14:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8000b18:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8000b1c:	6958      	ldr	r0, [r3, #20]
 8000b1e:	4304      	orrs	r4, r0
 8000b20:	615c      	str	r4, [r3, #20]
 8000b22:	bd38      	pop	{r3, r4, r5, pc}
 8000b24:	4808      	ldr	r0, [pc, #32]	; (8000b48 <RCC_AHBPeriphClockCmd+0x54>)
 8000b26:	f240 412b 	movw	r1, #1067	; 0x42b
 8000b2a:	f7ff fbdd 	bl	80002e8 <assert_failed>
 8000b2e:	2d01      	cmp	r5, #1
 8000b30:	d8eb      	bhi.n	8000b0a <RCC_AHBPeriphClockCmd+0x16>
 8000b32:	2d00      	cmp	r5, #0
 8000b34:	d1ee      	bne.n	8000b14 <RCC_AHBPeriphClockCmd+0x20>
 8000b36:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 8000b3a:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8000b3e:	694a      	ldr	r2, [r1, #20]
 8000b40:	ea22 0404 	bic.w	r4, r2, r4
 8000b44:	614c      	str	r4, [r1, #20]
 8000b46:	bd38      	pop	{r3, r4, r5, pc}
 8000b48:	08008aac 	.word	0x08008aac

08000b4c <RCC_APB2PeriphClockCmd>:
 8000b4c:	b538      	push	{r3, r4, r5, lr}
 8000b4e:	2302      	movs	r3, #2
 8000b50:	f6cf 73c0 	movt	r3, #65472	; 0xffc0
 8000b54:	4003      	ands	r3, r0
 8000b56:	4604      	mov	r4, r0
 8000b58:	460d      	mov	r5, r1
 8000b5a:	b97b      	cbnz	r3, 8000b7c <RCC_APB2PeriphClockCmd+0x30>
 8000b5c:	b170      	cbz	r0, 8000b7c <RCC_APB2PeriphClockCmd+0x30>
 8000b5e:	2d01      	cmp	r5, #1
 8000b60:	d913      	bls.n	8000b8a <RCC_APB2PeriphClockCmd+0x3e>
 8000b62:	480f      	ldr	r0, [pc, #60]	; (8000ba0 <RCC_APB2PeriphClockCmd+0x54>)
 8000b64:	f240 414b 	movw	r1, #1099	; 0x44b
 8000b68:	f7ff fbbe 	bl	80002e8 <assert_failed>
 8000b6c:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 8000b70:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8000b74:	698b      	ldr	r3, [r1, #24]
 8000b76:	431c      	orrs	r4, r3
 8000b78:	618c      	str	r4, [r1, #24]
 8000b7a:	bd38      	pop	{r3, r4, r5, pc}
 8000b7c:	4808      	ldr	r0, [pc, #32]	; (8000ba0 <RCC_APB2PeriphClockCmd+0x54>)
 8000b7e:	f240 414a 	movw	r1, #1098	; 0x44a
 8000b82:	f7ff fbb1 	bl	80002e8 <assert_failed>
 8000b86:	2d01      	cmp	r5, #1
 8000b88:	d8eb      	bhi.n	8000b62 <RCC_APB2PeriphClockCmd+0x16>
 8000b8a:	2d00      	cmp	r5, #0
 8000b8c:	d1ee      	bne.n	8000b6c <RCC_APB2PeriphClockCmd+0x20>
 8000b8e:	f44f 5080 	mov.w	r0, #4096	; 0x1000
 8000b92:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8000b96:	6982      	ldr	r2, [r0, #24]
 8000b98:	ea22 0404 	bic.w	r4, r2, r4
 8000b9c:	6184      	str	r4, [r0, #24]
 8000b9e:	bd38      	pop	{r3, r4, r5, pc}
 8000ba0:	08008aac 	.word	0x08008aac

08000ba4 <RCC_APB1PeriphClockCmd>:
 8000ba4:	b538      	push	{r3, r4, r5, lr}
 8000ba6:	f44f 5358 	mov.w	r3, #13824	; 0x3600
 8000baa:	f2c8 1301 	movt	r3, #33025	; 0x8101
 8000bae:	4003      	ands	r3, r0
 8000bb0:	4604      	mov	r4, r0
 8000bb2:	460d      	mov	r5, r1
 8000bb4:	b97b      	cbnz	r3, 8000bd6 <RCC_APB1PeriphClockCmd+0x32>
 8000bb6:	b170      	cbz	r0, 8000bd6 <RCC_APB1PeriphClockCmd+0x32>
 8000bb8:	2d01      	cmp	r5, #1
 8000bba:	d913      	bls.n	8000be4 <RCC_APB1PeriphClockCmd+0x40>
 8000bbc:	480f      	ldr	r0, [pc, #60]	; (8000bfc <RCC_APB1PeriphClockCmd+0x58>)
 8000bbe:	f240 416a 	movw	r1, #1130	; 0x46a
 8000bc2:	f7ff fb91 	bl	80002e8 <assert_failed>
 8000bc6:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 8000bca:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8000bce:	69cb      	ldr	r3, [r1, #28]
 8000bd0:	431c      	orrs	r4, r3
 8000bd2:	61cc      	str	r4, [r1, #28]
 8000bd4:	bd38      	pop	{r3, r4, r5, pc}
 8000bd6:	4809      	ldr	r0, [pc, #36]	; (8000bfc <RCC_APB1PeriphClockCmd+0x58>)
 8000bd8:	f240 4169 	movw	r1, #1129	; 0x469
 8000bdc:	f7ff fb84 	bl	80002e8 <assert_failed>
 8000be0:	2d01      	cmp	r5, #1
 8000be2:	d8eb      	bhi.n	8000bbc <RCC_APB1PeriphClockCmd+0x18>
 8000be4:	2d00      	cmp	r5, #0
 8000be6:	d1ee      	bne.n	8000bc6 <RCC_APB1PeriphClockCmd+0x22>
 8000be8:	f44f 5080 	mov.w	r0, #4096	; 0x1000
 8000bec:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8000bf0:	69c2      	ldr	r2, [r0, #28]
 8000bf2:	ea22 0404 	bic.w	r4, r2, r4
 8000bf6:	61c4      	str	r4, [r0, #28]
 8000bf8:	bd38      	pop	{r3, r4, r5, pc}
 8000bfa:	bf00      	nop
 8000bfc:	08008aac 	.word	0x08008aac

08000c00 <RCC_APB2PeriphResetCmd>:
 8000c00:	b538      	push	{r3, r4, r5, lr}
 8000c02:	2302      	movs	r3, #2
 8000c04:	f6cf 73c0 	movt	r3, #65472	; 0xffc0
 8000c08:	4003      	ands	r3, r0
 8000c0a:	4604      	mov	r4, r0
 8000c0c:	460d      	mov	r5, r1
 8000c0e:	b97b      	cbnz	r3, 8000c30 <RCC_APB2PeriphResetCmd+0x30>
 8000c10:	b170      	cbz	r0, 8000c30 <RCC_APB2PeriphResetCmd+0x30>
 8000c12:	2d01      	cmp	r5, #1
 8000c14:	d913      	bls.n	8000c3e <RCC_APB2PeriphResetCmd+0x3e>
 8000c16:	480f      	ldr	r0, [pc, #60]	; (8000c54 <RCC_APB2PeriphResetCmd+0x54>)
 8000c18:	f240 41a5 	movw	r1, #1189	; 0x4a5
 8000c1c:	f7ff fb64 	bl	80002e8 <assert_failed>
 8000c20:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 8000c24:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8000c28:	68cb      	ldr	r3, [r1, #12]
 8000c2a:	431c      	orrs	r4, r3
 8000c2c:	60cc      	str	r4, [r1, #12]
 8000c2e:	bd38      	pop	{r3, r4, r5, pc}
 8000c30:	4808      	ldr	r0, [pc, #32]	; (8000c54 <RCC_APB2PeriphResetCmd+0x54>)
 8000c32:	f240 41a4 	movw	r1, #1188	; 0x4a4
 8000c36:	f7ff fb57 	bl	80002e8 <assert_failed>
 8000c3a:	2d01      	cmp	r5, #1
 8000c3c:	d8eb      	bhi.n	8000c16 <RCC_APB2PeriphResetCmd+0x16>
 8000c3e:	2d00      	cmp	r5, #0
 8000c40:	d1ee      	bne.n	8000c20 <RCC_APB2PeriphResetCmd+0x20>
 8000c42:	f44f 5080 	mov.w	r0, #4096	; 0x1000
 8000c46:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8000c4a:	68c2      	ldr	r2, [r0, #12]
 8000c4c:	ea22 0404 	bic.w	r4, r2, r4
 8000c50:	60c4      	str	r4, [r0, #12]
 8000c52:	bd38      	pop	{r3, r4, r5, pc}
 8000c54:	08008aac 	.word	0x08008aac

08000c58 <RCC_APB1PeriphResetCmd>:
 8000c58:	b538      	push	{r3, r4, r5, lr}
 8000c5a:	f44f 5358 	mov.w	r3, #13824	; 0x3600
 8000c5e:	f2c8 1301 	movt	r3, #33025	; 0x8101
 8000c62:	4003      	ands	r3, r0
 8000c64:	4604      	mov	r4, r0
 8000c66:	460d      	mov	r5, r1
 8000c68:	b97b      	cbnz	r3, 8000c8a <RCC_APB1PeriphResetCmd+0x32>
 8000c6a:	b170      	cbz	r0, 8000c8a <RCC_APB1PeriphResetCmd+0x32>
 8000c6c:	2d01      	cmp	r5, #1
 8000c6e:	d913      	bls.n	8000c98 <RCC_APB1PeriphResetCmd+0x40>
 8000c70:	480f      	ldr	r0, [pc, #60]	; (8000cb0 <RCC_APB1PeriphResetCmd+0x58>)
 8000c72:	f240 41c4 	movw	r1, #1220	; 0x4c4
 8000c76:	f7ff fb37 	bl	80002e8 <assert_failed>
 8000c7a:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 8000c7e:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8000c82:	690b      	ldr	r3, [r1, #16]
 8000c84:	431c      	orrs	r4, r3
 8000c86:	610c      	str	r4, [r1, #16]
 8000c88:	bd38      	pop	{r3, r4, r5, pc}
 8000c8a:	4809      	ldr	r0, [pc, #36]	; (8000cb0 <RCC_APB1PeriphResetCmd+0x58>)
 8000c8c:	f240 41c3 	movw	r1, #1219	; 0x4c3
 8000c90:	f7ff fb2a 	bl	80002e8 <assert_failed>
 8000c94:	2d01      	cmp	r5, #1
 8000c96:	d8eb      	bhi.n	8000c70 <RCC_APB1PeriphResetCmd+0x18>
 8000c98:	2d00      	cmp	r5, #0
 8000c9a:	d1ee      	bne.n	8000c7a <RCC_APB1PeriphResetCmd+0x22>
 8000c9c:	f44f 5080 	mov.w	r0, #4096	; 0x1000
 8000ca0:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8000ca4:	6902      	ldr	r2, [r0, #16]
 8000ca6:	ea22 0404 	bic.w	r4, r2, r4
 8000caa:	6104      	str	r4, [r0, #16]
 8000cac:	bd38      	pop	{r3, r4, r5, pc}
 8000cae:	bf00      	nop
 8000cb0:	08008aac 	.word	0x08008aac

08000cb4 <EXTI_ClearITPendingBit>:
 8000cb4:	0d03      	lsrs	r3, r0, #20
 8000cb6:	b510      	push	{r4, lr}
 8000cb8:	4604      	mov	r4, r0
 8000cba:	d100      	bne.n	8000cbe <EXTI_ClearITPendingBit+0xa>
 8000cbc:	b918      	cbnz	r0, 8000cc6 <EXTI_ClearITPendingBit+0x12>
 8000cbe:	4805      	ldr	r0, [pc, #20]	; (8000cd4 <EXTI_ClearITPendingBit+0x20>)
 8000cc0:	21fc      	movs	r1, #252	; 0xfc
 8000cc2:	f7ff fb11 	bl	80002e8 <assert_failed>
 8000cc6:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8000cca:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8000cce:	615c      	str	r4, [r3, #20]
 8000cd0:	bd10      	pop	{r4, pc}
 8000cd2:	bf00      	nop
 8000cd4:	08008ae8 	.word	0x08008ae8

08000cd8 <ADC_Init>:
 8000cd8:	f44f 5310 	mov.w	r3, #9216	; 0x2400
 8000cdc:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8000ce0:	4298      	cmp	r0, r3
 8000ce2:	b570      	push	{r4, r5, r6, lr}
 8000ce4:	4605      	mov	r5, r0
 8000ce6:	460c      	mov	r4, r1
 8000ce8:	d00f      	beq.n	8000d0a <ADC_Init+0x32>
 8000cea:	f44f 5020 	mov.w	r0, #10240	; 0x2800
 8000cee:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8000cf2:	4285      	cmp	r5, r0
 8000cf4:	d009      	beq.n	8000d0a <ADC_Init+0x32>
 8000cf6:	f44f 5170 	mov.w	r1, #15360	; 0x3c00
 8000cfa:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8000cfe:	428d      	cmp	r5, r1
 8000d00:	d003      	beq.n	8000d0a <ADC_Init+0x32>
 8000d02:	4842      	ldr	r0, [pc, #264]	; (8000e0c <ADC_Init+0x134>)
 8000d04:	21df      	movs	r1, #223	; 0xdf
 8000d06:	f7ff faef 	bl	80002e8 <assert_failed>
 8000d0a:	6822      	ldr	r2, [r4, #0]
 8000d0c:	b1f2      	cbz	r2, 8000d4c <ADC_Init+0x74>
 8000d0e:	f5b2 3f80 	cmp.w	r2, #65536	; 0x10000
 8000d12:	d01b      	beq.n	8000d4c <ADC_Init+0x74>
 8000d14:	f5b2 3f00 	cmp.w	r2, #131072	; 0x20000
 8000d18:	d018      	beq.n	8000d4c <ADC_Init+0x74>
 8000d1a:	f5b2 3f40 	cmp.w	r2, #196608	; 0x30000
 8000d1e:	d015      	beq.n	8000d4c <ADC_Init+0x74>
 8000d20:	f5b2 2f80 	cmp.w	r2, #262144	; 0x40000
 8000d24:	d012      	beq.n	8000d4c <ADC_Init+0x74>
 8000d26:	f5b2 2fa0 	cmp.w	r2, #327680	; 0x50000
 8000d2a:	d00f      	beq.n	8000d4c <ADC_Init+0x74>
 8000d2c:	f5b2 2fc0 	cmp.w	r2, #393216	; 0x60000
 8000d30:	d00c      	beq.n	8000d4c <ADC_Init+0x74>
 8000d32:	f5b2 2fe0 	cmp.w	r2, #458752	; 0x70000
 8000d36:	d009      	beq.n	8000d4c <ADC_Init+0x74>
 8000d38:	f5b2 2f00 	cmp.w	r2, #524288	; 0x80000
 8000d3c:	d006      	beq.n	8000d4c <ADC_Init+0x74>
 8000d3e:	f5b2 2f10 	cmp.w	r2, #589824	; 0x90000
 8000d42:	d003      	beq.n	8000d4c <ADC_Init+0x74>
 8000d44:	4831      	ldr	r0, [pc, #196]	; (8000e0c <ADC_Init+0x134>)
 8000d46:	21e0      	movs	r1, #224	; 0xe0
 8000d48:	f7ff face 	bl	80002e8 <assert_failed>
 8000d4c:	7926      	ldrb	r6, [r4, #4]
 8000d4e:	2e01      	cmp	r6, #1
 8000d50:	d903      	bls.n	8000d5a <ADC_Init+0x82>
 8000d52:	482e      	ldr	r0, [pc, #184]	; (8000e0c <ADC_Init+0x134>)
 8000d54:	21e1      	movs	r1, #225	; 0xe1
 8000d56:	f7ff fac7 	bl	80002e8 <assert_failed>
 8000d5a:	7963      	ldrb	r3, [r4, #5]
 8000d5c:	2b01      	cmp	r3, #1
 8000d5e:	d903      	bls.n	8000d68 <ADC_Init+0x90>
 8000d60:	482a      	ldr	r0, [pc, #168]	; (8000e0c <ADC_Init+0x134>)
 8000d62:	21e2      	movs	r1, #226	; 0xe2
 8000d64:	f7ff fac0 	bl	80002e8 <assert_failed>
 8000d68:	68a0      	ldr	r0, [r4, #8]
 8000d6a:	b1c0      	cbz	r0, 8000d9e <ADC_Init+0xc6>
 8000d6c:	f5b0 3f00 	cmp.w	r0, #131072	; 0x20000
 8000d70:	d015      	beq.n	8000d9e <ADC_Init+0xc6>
 8000d72:	f5b0 2f80 	cmp.w	r0, #262144	; 0x40000
 8000d76:	d012      	beq.n	8000d9e <ADC_Init+0xc6>
 8000d78:	f5b0 2fc0 	cmp.w	r0, #393216	; 0x60000
 8000d7c:	d00f      	beq.n	8000d9e <ADC_Init+0xc6>
 8000d7e:	f5b0 2f00 	cmp.w	r0, #524288	; 0x80000
 8000d82:	d00c      	beq.n	8000d9e <ADC_Init+0xc6>
 8000d84:	f5b0 2f20 	cmp.w	r0, #655360	; 0xa0000
 8000d88:	d009      	beq.n	8000d9e <ADC_Init+0xc6>
 8000d8a:	f5b0 2f40 	cmp.w	r0, #786432	; 0xc0000
 8000d8e:	d006      	beq.n	8000d9e <ADC_Init+0xc6>
 8000d90:	f5b0 2f60 	cmp.w	r0, #917504	; 0xe0000
 8000d94:	d003      	beq.n	8000d9e <ADC_Init+0xc6>
 8000d96:	481d      	ldr	r0, [pc, #116]	; (8000e0c <ADC_Init+0x134>)
 8000d98:	21e3      	movs	r1, #227	; 0xe3
 8000d9a:	f7ff faa5 	bl	80002e8 <assert_failed>
 8000d9e:	68e1      	ldr	r1, [r4, #12]
 8000da0:	b131      	cbz	r1, 8000db0 <ADC_Init+0xd8>
 8000da2:	f5b1 6f00 	cmp.w	r1, #2048	; 0x800
 8000da6:	d003      	beq.n	8000db0 <ADC_Init+0xd8>
 8000da8:	4818      	ldr	r0, [pc, #96]	; (8000e0c <ADC_Init+0x134>)
 8000daa:	21e4      	movs	r1, #228	; 0xe4
 8000dac:	f7ff fa9c 	bl	80002e8 <assert_failed>
 8000db0:	7c22      	ldrb	r2, [r4, #16]
 8000db2:	1e56      	subs	r6, r2, #1
 8000db4:	2e0f      	cmp	r6, #15
 8000db6:	d903      	bls.n	8000dc0 <ADC_Init+0xe8>
 8000db8:	4814      	ldr	r0, [pc, #80]	; (8000e0c <ADC_Init+0x134>)
 8000dba:	21e5      	movs	r1, #229	; 0xe5
 8000dbc:	f7ff fa94 	bl	80002e8 <assert_failed>
 8000dc0:	6868      	ldr	r0, [r5, #4]
 8000dc2:	6823      	ldr	r3, [r4, #0]
 8000dc4:	f420 2170 	bic.w	r1, r0, #983040	; 0xf0000
 8000dc8:	7922      	ldrb	r2, [r4, #4]
 8000dca:	f421 7680 	bic.w	r6, r1, #256	; 0x100
 8000dce:	ea46 0003 	orr.w	r0, r6, r3
 8000dd2:	ea40 2302 	orr.w	r3, r0, r2, lsl #8
 8000dd6:	606b      	str	r3, [r5, #4]
 8000dd8:	68ae      	ldr	r6, [r5, #8]
 8000dda:	68e2      	ldr	r2, [r4, #12]
 8000ddc:	68a1      	ldr	r1, [r4, #8]
 8000dde:	f24f 73fd 	movw	r3, #63485	; 0xf7fd
 8000de2:	f6cf 73f1 	movt	r3, #65521	; 0xfff1
 8000de6:	7960      	ldrb	r0, [r4, #5]
 8000de8:	4311      	orrs	r1, r2
 8000dea:	4033      	ands	r3, r6
 8000dec:	ea41 0203 	orr.w	r2, r1, r3
 8000df0:	ea42 0340 	orr.w	r3, r2, r0, lsl #1
 8000df4:	60ab      	str	r3, [r5, #8]
 8000df6:	7c20      	ldrb	r0, [r4, #16]
 8000df8:	6ae9      	ldr	r1, [r5, #44]	; 0x2c
 8000dfa:	1e43      	subs	r3, r0, #1
 8000dfc:	f421 0270 	bic.w	r2, r1, #15728640	; 0xf00000
 8000e00:	b2d8      	uxtb	r0, r3
 8000e02:	ea42 5100 	orr.w	r1, r2, r0, lsl #20
 8000e06:	62e9      	str	r1, [r5, #44]	; 0x2c
 8000e08:	bd70      	pop	{r4, r5, r6, pc}
 8000e0a:	bf00      	nop
 8000e0c:	08008b24 	.word	0x08008b24

08000e10 <ADC_Cmd>:
 8000e10:	b538      	push	{r3, r4, r5, lr}
 8000e12:	f44f 5310 	mov.w	r3, #9216	; 0x2400
 8000e16:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8000e1a:	4298      	cmp	r0, r3
 8000e1c:	4604      	mov	r4, r0
 8000e1e:	460d      	mov	r5, r1
 8000e20:	d010      	beq.n	8000e44 <ADC_Cmd+0x34>
 8000e22:	f44f 5020 	mov.w	r0, #10240	; 0x2800
 8000e26:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8000e2a:	4284      	cmp	r4, r0
 8000e2c:	d00a      	beq.n	8000e44 <ADC_Cmd+0x34>
 8000e2e:	f44f 5170 	mov.w	r1, #15360	; 0x3c00
 8000e32:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8000e36:	428c      	cmp	r4, r1
 8000e38:	d004      	beq.n	8000e44 <ADC_Cmd+0x34>
 8000e3a:	480c      	ldr	r0, [pc, #48]	; (8000e6c <ADC_Cmd+0x5c>)
 8000e3c:	f44f 7197 	mov.w	r1, #302	; 0x12e
 8000e40:	f7ff fa52 	bl	80002e8 <assert_failed>
 8000e44:	2d01      	cmp	r5, #1
 8000e46:	d909      	bls.n	8000e5c <ADC_Cmd+0x4c>
 8000e48:	4808      	ldr	r0, [pc, #32]	; (8000e6c <ADC_Cmd+0x5c>)
 8000e4a:	f240 112f 	movw	r1, #303	; 0x12f
 8000e4e:	f7ff fa4b 	bl	80002e8 <assert_failed>
 8000e52:	68a0      	ldr	r0, [r4, #8]
 8000e54:	f040 0101 	orr.w	r1, r0, #1
 8000e58:	60a1      	str	r1, [r4, #8]
 8000e5a:	bd38      	pop	{r3, r4, r5, pc}
 8000e5c:	2d00      	cmp	r5, #0
 8000e5e:	d1f8      	bne.n	8000e52 <ADC_Cmd+0x42>
 8000e60:	68a2      	ldr	r2, [r4, #8]
 8000e62:	f022 0301 	bic.w	r3, r2, #1
 8000e66:	60a3      	str	r3, [r4, #8]
 8000e68:	bd38      	pop	{r3, r4, r5, pc}
 8000e6a:	bf00      	nop
 8000e6c:	08008b24 	.word	0x08008b24

08000e70 <ADC_DMACmd>:
 8000e70:	b538      	push	{r3, r4, r5, lr}
 8000e72:	f44f 5310 	mov.w	r3, #9216	; 0x2400
 8000e76:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8000e7a:	4298      	cmp	r0, r3
 8000e7c:	4604      	mov	r4, r0
 8000e7e:	460d      	mov	r5, r1
 8000e80:	d00a      	beq.n	8000e98 <ADC_DMACmd+0x28>
 8000e82:	f44f 5070 	mov.w	r0, #15360	; 0x3c00
 8000e86:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8000e8a:	4284      	cmp	r4, r0
 8000e8c:	d004      	beq.n	8000e98 <ADC_DMACmd+0x28>
 8000e8e:	480c      	ldr	r0, [pc, #48]	; (8000ec0 <ADC_DMACmd+0x50>)
 8000e90:	f240 1147 	movw	r1, #327	; 0x147
 8000e94:	f7ff fa28 	bl	80002e8 <assert_failed>
 8000e98:	2d01      	cmp	r5, #1
 8000e9a:	d909      	bls.n	8000eb0 <ADC_DMACmd+0x40>
 8000e9c:	4808      	ldr	r0, [pc, #32]	; (8000ec0 <ADC_DMACmd+0x50>)
 8000e9e:	f44f 71a4 	mov.w	r1, #328	; 0x148
 8000ea2:	f7ff fa21 	bl	80002e8 <assert_failed>
 8000ea6:	68a3      	ldr	r3, [r4, #8]
 8000ea8:	f443 7080 	orr.w	r0, r3, #256	; 0x100
 8000eac:	60a0      	str	r0, [r4, #8]
 8000eae:	bd38      	pop	{r3, r4, r5, pc}
 8000eb0:	2d00      	cmp	r5, #0
 8000eb2:	d1f8      	bne.n	8000ea6 <ADC_DMACmd+0x36>
 8000eb4:	68a1      	ldr	r1, [r4, #8]
 8000eb6:	f421 7280 	bic.w	r2, r1, #256	; 0x100
 8000eba:	60a2      	str	r2, [r4, #8]
 8000ebc:	bd38      	pop	{r3, r4, r5, pc}
 8000ebe:	bf00      	nop
 8000ec0:	08008b24 	.word	0x08008b24

08000ec4 <ADC_ResetCalibration>:
 8000ec4:	f44f 5310 	mov.w	r3, #9216	; 0x2400
 8000ec8:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8000ecc:	4298      	cmp	r0, r3
 8000ece:	b510      	push	{r4, lr}
 8000ed0:	4604      	mov	r4, r0
 8000ed2:	d010      	beq.n	8000ef6 <ADC_ResetCalibration+0x32>
 8000ed4:	f44f 5020 	mov.w	r0, #10240	; 0x2800
 8000ed8:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8000edc:	4284      	cmp	r4, r0
 8000ede:	d00a      	beq.n	8000ef6 <ADC_ResetCalibration+0x32>
 8000ee0:	f44f 5170 	mov.w	r1, #15360	; 0x3c00
 8000ee4:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8000ee8:	428c      	cmp	r4, r1
 8000eea:	d004      	beq.n	8000ef6 <ADC_ResetCalibration+0x32>
 8000eec:	4804      	ldr	r0, [pc, #16]	; (8000f00 <ADC_ResetCalibration+0x3c>)
 8000eee:	f44f 71bf 	mov.w	r1, #382	; 0x17e
 8000ef2:	f7ff f9f9 	bl	80002e8 <assert_failed>
 8000ef6:	68a2      	ldr	r2, [r4, #8]
 8000ef8:	f042 0308 	orr.w	r3, r2, #8
 8000efc:	60a3      	str	r3, [r4, #8]
 8000efe:	bd10      	pop	{r4, pc}
 8000f00:	08008b24 	.word	0x08008b24

08000f04 <ADC_GetResetCalibrationStatus>:
 8000f04:	f44f 5310 	mov.w	r3, #9216	; 0x2400
 8000f08:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8000f0c:	4298      	cmp	r0, r3
 8000f0e:	b510      	push	{r4, lr}
 8000f10:	4604      	mov	r4, r0
 8000f12:	d010      	beq.n	8000f36 <ADC_GetResetCalibrationStatus+0x32>
 8000f14:	f44f 5020 	mov.w	r0, #10240	; 0x2800
 8000f18:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8000f1c:	4284      	cmp	r4, r0
 8000f1e:	d00a      	beq.n	8000f36 <ADC_GetResetCalibrationStatus+0x32>
 8000f20:	f44f 5170 	mov.w	r1, #15360	; 0x3c00
 8000f24:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8000f28:	428c      	cmp	r4, r1
 8000f2a:	d004      	beq.n	8000f36 <ADC_GetResetCalibrationStatus+0x32>
 8000f2c:	4804      	ldr	r0, [pc, #16]	; (8000f40 <ADC_GetResetCalibrationStatus+0x3c>)
 8000f2e:	f44f 71c6 	mov.w	r1, #396	; 0x18c
 8000f32:	f7ff f9d9 	bl	80002e8 <assert_failed>
 8000f36:	68a2      	ldr	r2, [r4, #8]
 8000f38:	f3c2 00c0 	ubfx	r0, r2, #3, #1
 8000f3c:	bd10      	pop	{r4, pc}
 8000f3e:	bf00      	nop
 8000f40:	08008b24 	.word	0x08008b24

08000f44 <ADC_StartCalibration>:
 8000f44:	f44f 5310 	mov.w	r3, #9216	; 0x2400
 8000f48:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8000f4c:	4298      	cmp	r0, r3
 8000f4e:	b510      	push	{r4, lr}
 8000f50:	4604      	mov	r4, r0
 8000f52:	d010      	beq.n	8000f76 <ADC_StartCalibration+0x32>
 8000f54:	f44f 5020 	mov.w	r0, #10240	; 0x2800
 8000f58:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8000f5c:	4284      	cmp	r4, r0
 8000f5e:	d00a      	beq.n	8000f76 <ADC_StartCalibration+0x32>
 8000f60:	f44f 5170 	mov.w	r1, #15360	; 0x3c00
 8000f64:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8000f68:	428c      	cmp	r4, r1
 8000f6a:	d004      	beq.n	8000f76 <ADC_StartCalibration+0x32>
 8000f6c:	4804      	ldr	r0, [pc, #16]	; (8000f80 <ADC_StartCalibration+0x3c>)
 8000f6e:	f44f 71d2 	mov.w	r1, #420	; 0x1a4
 8000f72:	f7ff f9b9 	bl	80002e8 <assert_failed>
 8000f76:	68a2      	ldr	r2, [r4, #8]
 8000f78:	f042 0304 	orr.w	r3, r2, #4
 8000f7c:	60a3      	str	r3, [r4, #8]
 8000f7e:	bd10      	pop	{r4, pc}
 8000f80:	08008b24 	.word	0x08008b24

08000f84 <ADC_GetCalibrationStatus>:
 8000f84:	f44f 5310 	mov.w	r3, #9216	; 0x2400
 8000f88:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8000f8c:	4298      	cmp	r0, r3
 8000f8e:	b510      	push	{r4, lr}
 8000f90:	4604      	mov	r4, r0
 8000f92:	d010      	beq.n	8000fb6 <ADC_GetCalibrationStatus+0x32>
 8000f94:	f44f 5020 	mov.w	r0, #10240	; 0x2800
 8000f98:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8000f9c:	4284      	cmp	r4, r0
 8000f9e:	d00a      	beq.n	8000fb6 <ADC_GetCalibrationStatus+0x32>
 8000fa0:	f44f 5170 	mov.w	r1, #15360	; 0x3c00
 8000fa4:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8000fa8:	428c      	cmp	r4, r1
 8000faa:	d004      	beq.n	8000fb6 <ADC_GetCalibrationStatus+0x32>
 8000fac:	4804      	ldr	r0, [pc, #16]	; (8000fc0 <ADC_GetCalibrationStatus+0x3c>)
 8000fae:	f44f 71d9 	mov.w	r1, #434	; 0x1b2
 8000fb2:	f7ff f999 	bl	80002e8 <assert_failed>
 8000fb6:	68a2      	ldr	r2, [r4, #8]
 8000fb8:	f3c2 0080 	ubfx	r0, r2, #2, #1
 8000fbc:	bd10      	pop	{r4, pc}
 8000fbe:	bf00      	nop
 8000fc0:	08008b24 	.word	0x08008b24

08000fc4 <ADC_SoftwareStartConvCmd>:
 8000fc4:	b538      	push	{r3, r4, r5, lr}
 8000fc6:	f44f 5310 	mov.w	r3, #9216	; 0x2400
 8000fca:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8000fce:	4298      	cmp	r0, r3
 8000fd0:	4604      	mov	r4, r0
 8000fd2:	460d      	mov	r5, r1
 8000fd4:	d010      	beq.n	8000ff8 <ADC_SoftwareStartConvCmd+0x34>
 8000fd6:	f44f 5020 	mov.w	r0, #10240	; 0x2800
 8000fda:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8000fde:	4284      	cmp	r4, r0
 8000fe0:	d00a      	beq.n	8000ff8 <ADC_SoftwareStartConvCmd+0x34>
 8000fe2:	f44f 5170 	mov.w	r1, #15360	; 0x3c00
 8000fe6:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8000fea:	428c      	cmp	r4, r1
 8000fec:	d004      	beq.n	8000ff8 <ADC_SoftwareStartConvCmd+0x34>
 8000fee:	480c      	ldr	r0, [pc, #48]	; (8001020 <ADC_SoftwareStartConvCmd+0x5c>)
 8000ff0:	f44f 71e6 	mov.w	r1, #460	; 0x1cc
 8000ff4:	f7ff f978 	bl	80002e8 <assert_failed>
 8000ff8:	2d01      	cmp	r5, #1
 8000ffa:	d909      	bls.n	8001010 <ADC_SoftwareStartConvCmd+0x4c>
 8000ffc:	4808      	ldr	r0, [pc, #32]	; (8001020 <ADC_SoftwareStartConvCmd+0x5c>)
 8000ffe:	f240 11cd 	movw	r1, #461	; 0x1cd
 8001002:	f7ff f971 	bl	80002e8 <assert_failed>
 8001006:	68a0      	ldr	r0, [r4, #8]
 8001008:	f440 01a0 	orr.w	r1, r0, #5242880	; 0x500000
 800100c:	60a1      	str	r1, [r4, #8]
 800100e:	bd38      	pop	{r3, r4, r5, pc}
 8001010:	2d00      	cmp	r5, #0
 8001012:	d1f8      	bne.n	8001006 <ADC_SoftwareStartConvCmd+0x42>
 8001014:	68a2      	ldr	r2, [r4, #8]
 8001016:	f422 03a0 	bic.w	r3, r2, #5242880	; 0x500000
 800101a:	60a3      	str	r3, [r4, #8]
 800101c:	bd38      	pop	{r3, r4, r5, pc}
 800101e:	bf00      	nop
 8001020:	08008b24 	.word	0x08008b24

08001024 <ADC_RegularChannelConfig>:
 8001024:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001028:	f44f 5710 	mov.w	r7, #9216	; 0x2400
 800102c:	f2c4 0701 	movt	r7, #16385	; 0x4001
 8001030:	42b8      	cmp	r0, r7
 8001032:	4604      	mov	r4, r0
 8001034:	460d      	mov	r5, r1
 8001036:	4616      	mov	r6, r2
 8001038:	4698      	mov	r8, r3
 800103a:	d010      	beq.n	800105e <ADC_RegularChannelConfig+0x3a>
 800103c:	f44f 5320 	mov.w	r3, #10240	; 0x2800
 8001040:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001044:	4298      	cmp	r0, r3
 8001046:	d00a      	beq.n	800105e <ADC_RegularChannelConfig+0x3a>
 8001048:	f44f 5070 	mov.w	r0, #15360	; 0x3c00
 800104c:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001050:	4284      	cmp	r4, r0
 8001052:	d004      	beq.n	800105e <ADC_RegularChannelConfig+0x3a>
 8001054:	4835      	ldr	r0, [pc, #212]	; (800112c <ADC_RegularChannelConfig+0x108>)
 8001056:	f240 2152 	movw	r1, #594	; 0x252
 800105a:	f7ff f945 	bl	80002e8 <assert_failed>
 800105e:	2d11      	cmp	r5, #17
 8001060:	d85d      	bhi.n	800111e <ADC_RegularChannelConfig+0xfa>
 8001062:	1e77      	subs	r7, r6, #1
 8001064:	b2f9      	uxtb	r1, r7
 8001066:	290f      	cmp	r1, #15
 8001068:	d853      	bhi.n	8001112 <ADC_RegularChannelConfig+0xee>
 800106a:	f1b8 0f07 	cmp.w	r8, #7
 800106e:	d84a      	bhi.n	8001106 <ADC_RegularChannelConfig+0xe2>
 8001070:	2d09      	cmp	r5, #9
 8001072:	eb05 0245 	add.w	r2, r5, r5, lsl #1
 8001076:	d91e      	bls.n	80010b6 <ADC_RegularChannelConfig+0x92>
 8001078:	3a1e      	subs	r2, #30
 800107a:	2307      	movs	r3, #7
 800107c:	fa03 f302 	lsl.w	r3, r3, r2
 8001080:	fa08 f802 	lsl.w	r8, r8, r2
 8001084:	68e0      	ldr	r0, [r4, #12]
 8001086:	2e06      	cmp	r6, #6
 8001088:	ea20 0103 	bic.w	r1, r0, r3
 800108c:	ea41 0208 	orr.w	r2, r1, r8
 8001090:	60e2      	str	r2, [r4, #12]
 8001092:	d91d      	bls.n	80010d0 <ADC_RegularChannelConfig+0xac>
 8001094:	2e0c      	cmp	r6, #12
 8001096:	eb06 0686 	add.w	r6, r6, r6, lsl #2
 800109a:	d927      	bls.n	80010ec <ADC_RegularChannelConfig+0xc8>
 800109c:	3e41      	subs	r6, #65	; 0x41
 800109e:	201f      	movs	r0, #31
 80010a0:	fa00 f006 	lsl.w	r0, r0, r6
 80010a4:	fa05 f506 	lsl.w	r5, r5, r6
 80010a8:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 80010aa:	ea23 0600 	bic.w	r6, r3, r0
 80010ae:	432e      	orrs	r6, r5
 80010b0:	62e6      	str	r6, [r4, #44]	; 0x2c
 80010b2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80010b6:	2307      	movs	r3, #7
 80010b8:	fa03 f302 	lsl.w	r3, r3, r2
 80010bc:	fa08 f802 	lsl.w	r8, r8, r2
 80010c0:	6920      	ldr	r0, [r4, #16]
 80010c2:	2e06      	cmp	r6, #6
 80010c4:	ea20 0103 	bic.w	r1, r0, r3
 80010c8:	ea41 0208 	orr.w	r2, r1, r8
 80010cc:	6122      	str	r2, [r4, #16]
 80010ce:	d8e1      	bhi.n	8001094 <ADC_RegularChannelConfig+0x70>
 80010d0:	eb07 0787 	add.w	r7, r7, r7, lsl #2
 80010d4:	221f      	movs	r2, #31
 80010d6:	fa02 f207 	lsl.w	r2, r2, r7
 80010da:	fa05 f507 	lsl.w	r5, r5, r7
 80010de:	6b60      	ldr	r0, [r4, #52]	; 0x34
 80010e0:	ea20 0702 	bic.w	r7, r0, r2
 80010e4:	432f      	orrs	r7, r5
 80010e6:	6367      	str	r7, [r4, #52]	; 0x34
 80010e8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80010ec:	3e23      	subs	r6, #35	; 0x23
 80010ee:	211f      	movs	r1, #31
 80010f0:	fa01 f106 	lsl.w	r1, r1, r6
 80010f4:	fa05 f606 	lsl.w	r6, r5, r6
 80010f8:	6b25      	ldr	r5, [r4, #48]	; 0x30
 80010fa:	ea25 0501 	bic.w	r5, r5, r1
 80010fe:	4335      	orrs	r5, r6
 8001100:	6325      	str	r5, [r4, #48]	; 0x30
 8001102:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001106:	4809      	ldr	r0, [pc, #36]	; (800112c <ADC_RegularChannelConfig+0x108>)
 8001108:	f240 2155 	movw	r1, #597	; 0x255
 800110c:	f7ff f8ec 	bl	80002e8 <assert_failed>
 8001110:	e7ae      	b.n	8001070 <ADC_RegularChannelConfig+0x4c>
 8001112:	4806      	ldr	r0, [pc, #24]	; (800112c <ADC_RegularChannelConfig+0x108>)
 8001114:	f44f 7115 	mov.w	r1, #596	; 0x254
 8001118:	f7ff f8e6 	bl	80002e8 <assert_failed>
 800111c:	e7a5      	b.n	800106a <ADC_RegularChannelConfig+0x46>
 800111e:	4803      	ldr	r0, [pc, #12]	; (800112c <ADC_RegularChannelConfig+0x108>)
 8001120:	f240 2153 	movw	r1, #595	; 0x253
 8001124:	f7ff f8e0 	bl	80002e8 <assert_failed>
 8001128:	e79b      	b.n	8001062 <ADC_RegularChannelConfig+0x3e>
 800112a:	bf00      	nop
 800112c:	08008b24 	.word	0x08008b24

08001130 <TIM_DeInit>:
 8001130:	b508      	push	{r3, lr}
 8001132:	f44f 5330 	mov.w	r3, #11264	; 0x2c00
 8001136:	f2c4 0301 	movt	r3, #16385	; 0x4001
 800113a:	4298      	cmp	r0, r3
 800113c:	d07a      	beq.n	8001234 <TIM_DeInit+0x104>
 800113e:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001142:	f000 8083 	beq.w	800124c <TIM_DeInit+0x11c>
 8001146:	f44f 6180 	mov.w	r1, #1024	; 0x400
 800114a:	f2c4 0100 	movt	r1, #16384	; 0x4000
 800114e:	4288      	cmp	r0, r1
 8001150:	f000 8086 	beq.w	8001260 <TIM_DeInit+0x130>
 8001154:	f44f 6200 	mov.w	r2, #2048	; 0x800
 8001158:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800115c:	4290      	cmp	r0, r2
 800115e:	f000 8089 	beq.w	8001274 <TIM_DeInit+0x144>
 8001162:	f44f 6340 	mov.w	r3, #3072	; 0xc00
 8001166:	f2c4 0300 	movt	r3, #16384	; 0x4000
 800116a:	4298      	cmp	r0, r3
 800116c:	d058      	beq.n	8001220 <TIM_DeInit+0xf0>
 800116e:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 8001172:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001176:	4288      	cmp	r0, r1
 8001178:	f000 8086 	beq.w	8001288 <TIM_DeInit+0x158>
 800117c:	f44f 52a0 	mov.w	r2, #5120	; 0x1400
 8001180:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001184:	4290      	cmp	r0, r2
 8001186:	f000 8089 	beq.w	800129c <TIM_DeInit+0x16c>
 800118a:	f44f 5350 	mov.w	r3, #13312	; 0x3400
 800118e:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001192:	4298      	cmp	r0, r3
 8001194:	f000 8098 	beq.w	80012c8 <TIM_DeInit+0x198>
 8001198:	f44f 4198 	mov.w	r1, #19456	; 0x4c00
 800119c:	f2c4 0101 	movt	r1, #16385	; 0x4001
 80011a0:	4288      	cmp	r0, r1
 80011a2:	f000 809d 	beq.w	80012e0 <TIM_DeInit+0x1b0>
 80011a6:	f44f 42a0 	mov.w	r2, #20480	; 0x5000
 80011aa:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80011ae:	4290      	cmp	r0, r2
 80011b0:	d07e      	beq.n	80012b0 <TIM_DeInit+0x180>
 80011b2:	f44f 43a8 	mov.w	r3, #21504	; 0x5400
 80011b6:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80011ba:	4298      	cmp	r0, r3
 80011bc:	f000 809c 	beq.w	80012f8 <TIM_DeInit+0x1c8>
 80011c0:	f44f 51c0 	mov.w	r1, #6144	; 0x1800
 80011c4:	f2c4 0100 	movt	r1, #16384	; 0x4000
 80011c8:	4288      	cmp	r0, r1
 80011ca:	f000 80a1 	beq.w	8001310 <TIM_DeInit+0x1e0>
 80011ce:	f44f 52e0 	mov.w	r2, #7168	; 0x1c00
 80011d2:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80011d6:	4290      	cmp	r0, r2
 80011d8:	f000 80b0 	beq.w	800133c <TIM_DeInit+0x20c>
 80011dc:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 80011e0:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80011e4:	4298      	cmp	r0, r3
 80011e6:	f000 80b3 	beq.w	8001350 <TIM_DeInit+0x220>
 80011ea:	f44f 4180 	mov.w	r1, #16384	; 0x4000
 80011ee:	f2c4 0101 	movt	r1, #16385	; 0x4001
 80011f2:	4288      	cmp	r0, r1
 80011f4:	f000 80ba 	beq.w	800136c <TIM_DeInit+0x23c>
 80011f8:	f44f 4288 	mov.w	r2, #17408	; 0x4400
 80011fc:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001200:	4290      	cmp	r0, r2
 8001202:	f000 80bf 	beq.w	8001384 <TIM_DeInit+0x254>
 8001206:	f44f 4390 	mov.w	r3, #18432	; 0x4800
 800120a:	f2c4 0301 	movt	r3, #16385	; 0x4001
 800120e:	4298      	cmp	r0, r3
 8001210:	f000 8088 	beq.w	8001324 <TIM_DeInit+0x1f4>
 8001214:	4854      	ldr	r0, [pc, #336]	; (8001368 <TIM_DeInit+0x238>)
 8001216:	217d      	movs	r1, #125	; 0x7d
 8001218:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800121c:	f7ff b864 	b.w	80002e8 <assert_failed>
 8001220:	2008      	movs	r0, #8
 8001222:	2101      	movs	r1, #1
 8001224:	f7ff fd18 	bl	8000c58 <RCC_APB1PeriphResetCmd>
 8001228:	2008      	movs	r0, #8
 800122a:	2100      	movs	r1, #0
 800122c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001230:	f7ff bd12 	b.w	8000c58 <RCC_APB1PeriphResetCmd>
 8001234:	2101      	movs	r1, #1
 8001236:	f44f 6000 	mov.w	r0, #2048	; 0x800
 800123a:	f7ff fce1 	bl	8000c00 <RCC_APB2PeriphResetCmd>
 800123e:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8001242:	2100      	movs	r1, #0
 8001244:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001248:	f7ff bcda 	b.w	8000c00 <RCC_APB2PeriphResetCmd>
 800124c:	2001      	movs	r0, #1
 800124e:	4601      	mov	r1, r0
 8001250:	f7ff fd02 	bl	8000c58 <RCC_APB1PeriphResetCmd>
 8001254:	2001      	movs	r0, #1
 8001256:	2100      	movs	r1, #0
 8001258:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800125c:	f7ff bcfc 	b.w	8000c58 <RCC_APB1PeriphResetCmd>
 8001260:	2002      	movs	r0, #2
 8001262:	2101      	movs	r1, #1
 8001264:	f7ff fcf8 	bl	8000c58 <RCC_APB1PeriphResetCmd>
 8001268:	2002      	movs	r0, #2
 800126a:	2100      	movs	r1, #0
 800126c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001270:	f7ff bcf2 	b.w	8000c58 <RCC_APB1PeriphResetCmd>
 8001274:	2004      	movs	r0, #4
 8001276:	2101      	movs	r1, #1
 8001278:	f7ff fcee 	bl	8000c58 <RCC_APB1PeriphResetCmd>
 800127c:	2004      	movs	r0, #4
 800127e:	2100      	movs	r1, #0
 8001280:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001284:	f7ff bce8 	b.w	8000c58 <RCC_APB1PeriphResetCmd>
 8001288:	2010      	movs	r0, #16
 800128a:	2101      	movs	r1, #1
 800128c:	f7ff fce4 	bl	8000c58 <RCC_APB1PeriphResetCmd>
 8001290:	2010      	movs	r0, #16
 8001292:	2100      	movs	r1, #0
 8001294:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001298:	f7ff bcde 	b.w	8000c58 <RCC_APB1PeriphResetCmd>
 800129c:	2020      	movs	r0, #32
 800129e:	2101      	movs	r1, #1
 80012a0:	f7ff fcda 	bl	8000c58 <RCC_APB1PeriphResetCmd>
 80012a4:	2020      	movs	r0, #32
 80012a6:	2100      	movs	r1, #0
 80012a8:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80012ac:	f7ff bcd4 	b.w	8000c58 <RCC_APB1PeriphResetCmd>
 80012b0:	2101      	movs	r1, #1
 80012b2:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
 80012b6:	f7ff fca3 	bl	8000c00 <RCC_APB2PeriphResetCmd>
 80012ba:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
 80012be:	2100      	movs	r1, #0
 80012c0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80012c4:	f7ff bc9c 	b.w	8000c00 <RCC_APB2PeriphResetCmd>
 80012c8:	2101      	movs	r1, #1
 80012ca:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80012ce:	f7ff fc97 	bl	8000c00 <RCC_APB2PeriphResetCmd>
 80012d2:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80012d6:	2100      	movs	r1, #0
 80012d8:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80012dc:	f7ff bc90 	b.w	8000c00 <RCC_APB2PeriphResetCmd>
 80012e0:	2101      	movs	r1, #1
 80012e2:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 80012e6:	f7ff fc8b 	bl	8000c00 <RCC_APB2PeriphResetCmd>
 80012ea:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 80012ee:	2100      	movs	r1, #0
 80012f0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80012f4:	f7ff bc84 	b.w	8000c00 <RCC_APB2PeriphResetCmd>
 80012f8:	2101      	movs	r1, #1
 80012fa:	f44f 1000 	mov.w	r0, #2097152	; 0x200000
 80012fe:	f7ff fc7f 	bl	8000c00 <RCC_APB2PeriphResetCmd>
 8001302:	f44f 1000 	mov.w	r0, #2097152	; 0x200000
 8001306:	2100      	movs	r1, #0
 8001308:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800130c:	f7ff bc78 	b.w	8000c00 <RCC_APB2PeriphResetCmd>
 8001310:	2040      	movs	r0, #64	; 0x40
 8001312:	2101      	movs	r1, #1
 8001314:	f7ff fca0 	bl	8000c58 <RCC_APB1PeriphResetCmd>
 8001318:	2040      	movs	r0, #64	; 0x40
 800131a:	2100      	movs	r1, #0
 800131c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001320:	f7ff bc9a 	b.w	8000c58 <RCC_APB1PeriphResetCmd>
 8001324:	2101      	movs	r1, #1
 8001326:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 800132a:	f7ff fc69 	bl	8000c00 <RCC_APB2PeriphResetCmd>
 800132e:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001332:	2100      	movs	r1, #0
 8001334:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001338:	f7ff bc62 	b.w	8000c00 <RCC_APB2PeriphResetCmd>
 800133c:	2080      	movs	r0, #128	; 0x80
 800133e:	2101      	movs	r1, #1
 8001340:	f7ff fc8a 	bl	8000c58 <RCC_APB1PeriphResetCmd>
 8001344:	2080      	movs	r0, #128	; 0x80
 8001346:	2100      	movs	r1, #0
 8001348:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800134c:	f7ff bc84 	b.w	8000c58 <RCC_APB1PeriphResetCmd>
 8001350:	2101      	movs	r1, #1
 8001352:	f44f 7080 	mov.w	r0, #256	; 0x100
 8001356:	f7ff fc7f 	bl	8000c58 <RCC_APB1PeriphResetCmd>
 800135a:	f44f 7080 	mov.w	r0, #256	; 0x100
 800135e:	2100      	movs	r1, #0
 8001360:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001364:	f7ff bc78 	b.w	8000c58 <RCC_APB1PeriphResetCmd>
 8001368:	08008b60 	.word	0x08008b60
 800136c:	2101      	movs	r1, #1
 800136e:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 8001372:	f7ff fc45 	bl	8000c00 <RCC_APB2PeriphResetCmd>
 8001376:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 800137a:	2100      	movs	r1, #0
 800137c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001380:	f7ff bc3e 	b.w	8000c00 <RCC_APB2PeriphResetCmd>
 8001384:	2101      	movs	r1, #1
 8001386:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 800138a:	f7ff fc39 	bl	8000c00 <RCC_APB2PeriphResetCmd>
 800138e:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8001392:	2100      	movs	r1, #0
 8001394:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001398:	f7ff bc32 	b.w	8000c00 <RCC_APB2PeriphResetCmd>

0800139c <TIM_TimeBaseInit>:
 800139c:	f44f 5330 	mov.w	r3, #11264	; 0x2c00
 80013a0:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80013a4:	4298      	cmp	r0, r3
 80013a6:	b570      	push	{r4, r5, r6, lr}
 80013a8:	4604      	mov	r4, r0
 80013aa:	460d      	mov	r5, r1
 80013ac:	d060      	beq.n	8001470 <TIM_TimeBaseInit+0xd4>
 80013ae:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80013b2:	d05d      	beq.n	8001470 <TIM_TimeBaseInit+0xd4>
 80013b4:	f44f 6080 	mov.w	r0, #1024	; 0x400
 80013b8:	f2c4 0000 	movt	r0, #16384	; 0x4000
 80013bc:	4284      	cmp	r4, r0
 80013be:	d057      	beq.n	8001470 <TIM_TimeBaseInit+0xd4>
 80013c0:	f44f 6100 	mov.w	r1, #2048	; 0x800
 80013c4:	f2c4 0100 	movt	r1, #16384	; 0x4000
 80013c8:	428c      	cmp	r4, r1
 80013ca:	d051      	beq.n	8001470 <TIM_TimeBaseInit+0xd4>
 80013cc:	f44f 6240 	mov.w	r2, #3072	; 0xc00
 80013d0:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80013d4:	4294      	cmp	r4, r2
 80013d6:	d04b      	beq.n	8001470 <TIM_TimeBaseInit+0xd4>
 80013d8:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80013dc:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80013e0:	429c      	cmp	r4, r3
 80013e2:	d045      	beq.n	8001470 <TIM_TimeBaseInit+0xd4>
 80013e4:	f44f 50a0 	mov.w	r0, #5120	; 0x1400
 80013e8:	f2c4 0000 	movt	r0, #16384	; 0x4000
 80013ec:	4284      	cmp	r4, r0
 80013ee:	d03f      	beq.n	8001470 <TIM_TimeBaseInit+0xd4>
 80013f0:	f44f 5150 	mov.w	r1, #13312	; 0x3400
 80013f4:	f2c4 0101 	movt	r1, #16385	; 0x4001
 80013f8:	428c      	cmp	r4, r1
 80013fa:	d039      	beq.n	8001470 <TIM_TimeBaseInit+0xd4>
 80013fc:	f44f 4298 	mov.w	r2, #19456	; 0x4c00
 8001400:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001404:	4294      	cmp	r4, r2
 8001406:	d033      	beq.n	8001470 <TIM_TimeBaseInit+0xd4>
 8001408:	f44f 43a0 	mov.w	r3, #20480	; 0x5000
 800140c:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001410:	429c      	cmp	r4, r3
 8001412:	d02d      	beq.n	8001470 <TIM_TimeBaseInit+0xd4>
 8001414:	f44f 40a8 	mov.w	r0, #21504	; 0x5400
 8001418:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800141c:	4284      	cmp	r4, r0
 800141e:	d027      	beq.n	8001470 <TIM_TimeBaseInit+0xd4>
 8001420:	f44f 51c0 	mov.w	r1, #6144	; 0x1800
 8001424:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001428:	428c      	cmp	r4, r1
 800142a:	d021      	beq.n	8001470 <TIM_TimeBaseInit+0xd4>
 800142c:	f44f 52e0 	mov.w	r2, #7168	; 0x1c00
 8001430:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001434:	4294      	cmp	r4, r2
 8001436:	d01b      	beq.n	8001470 <TIM_TimeBaseInit+0xd4>
 8001438:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 800143c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001440:	429c      	cmp	r4, r3
 8001442:	d015      	beq.n	8001470 <TIM_TimeBaseInit+0xd4>
 8001444:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8001448:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800144c:	4284      	cmp	r4, r0
 800144e:	d00f      	beq.n	8001470 <TIM_TimeBaseInit+0xd4>
 8001450:	f44f 4188 	mov.w	r1, #17408	; 0x4400
 8001454:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001458:	428c      	cmp	r4, r1
 800145a:	d009      	beq.n	8001470 <TIM_TimeBaseInit+0xd4>
 800145c:	f44f 4290 	mov.w	r2, #18432	; 0x4800
 8001460:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001464:	4294      	cmp	r4, r2
 8001466:	d003      	beq.n	8001470 <TIM_TimeBaseInit+0xd4>
 8001468:	4843      	ldr	r0, [pc, #268]	; (8001578 <TIM_TimeBaseInit+0x1dc>)
 800146a:	21e7      	movs	r1, #231	; 0xe7
 800146c:	f7fe ff3c 	bl	80002e8 <assert_failed>
 8001470:	886b      	ldrh	r3, [r5, #2]
 8001472:	b15b      	cbz	r3, 800148c <TIM_TimeBaseInit+0xf0>
 8001474:	2b10      	cmp	r3, #16
 8001476:	d009      	beq.n	800148c <TIM_TimeBaseInit+0xf0>
 8001478:	2b20      	cmp	r3, #32
 800147a:	d007      	beq.n	800148c <TIM_TimeBaseInit+0xf0>
 800147c:	2b40      	cmp	r3, #64	; 0x40
 800147e:	d005      	beq.n	800148c <TIM_TimeBaseInit+0xf0>
 8001480:	2b60      	cmp	r3, #96	; 0x60
 8001482:	d003      	beq.n	800148c <TIM_TimeBaseInit+0xf0>
 8001484:	483c      	ldr	r0, [pc, #240]	; (8001578 <TIM_TimeBaseInit+0x1dc>)
 8001486:	21e8      	movs	r1, #232	; 0xe8
 8001488:	f7fe ff2e 	bl	80002e8 <assert_failed>
 800148c:	88e8      	ldrh	r0, [r5, #6]
 800148e:	b148      	cbz	r0, 80014a4 <TIM_TimeBaseInit+0x108>
 8001490:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 8001494:	d006      	beq.n	80014a4 <TIM_TimeBaseInit+0x108>
 8001496:	f5b0 7f00 	cmp.w	r0, #512	; 0x200
 800149a:	d003      	beq.n	80014a4 <TIM_TimeBaseInit+0x108>
 800149c:	4836      	ldr	r0, [pc, #216]	; (8001578 <TIM_TimeBaseInit+0x1dc>)
 800149e:	21e9      	movs	r1, #233	; 0xe9
 80014a0:	f7fe ff22 	bl	80002e8 <assert_failed>
 80014a4:	f44f 5230 	mov.w	r2, #11264	; 0x2c00
 80014a8:	8821      	ldrh	r1, [r4, #0]
 80014aa:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80014ae:	4294      	cmp	r4, r2
 80014b0:	b28b      	uxth	r3, r1
 80014b2:	d01a      	beq.n	80014ea <TIM_TimeBaseInit+0x14e>
 80014b4:	f44f 5050 	mov.w	r0, #13312	; 0x3400
 80014b8:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80014bc:	4284      	cmp	r4, r0
 80014be:	d014      	beq.n	80014ea <TIM_TimeBaseInit+0x14e>
 80014c0:	f1b4 4f80 	cmp.w	r4, #1073741824	; 0x40000000
 80014c4:	d011      	beq.n	80014ea <TIM_TimeBaseInit+0x14e>
 80014c6:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80014ca:	f2c4 0100 	movt	r1, #16384	; 0x4000
 80014ce:	428c      	cmp	r4, r1
 80014d0:	d00b      	beq.n	80014ea <TIM_TimeBaseInit+0x14e>
 80014d2:	f44f 6200 	mov.w	r2, #2048	; 0x800
 80014d6:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80014da:	4294      	cmp	r4, r2
 80014dc:	d005      	beq.n	80014ea <TIM_TimeBaseInit+0x14e>
 80014de:	f44f 6040 	mov.w	r0, #3072	; 0xc00
 80014e2:	f2c4 0000 	movt	r0, #16384	; 0x4000
 80014e6:	4284      	cmp	r4, r0
 80014e8:	d105      	bne.n	80014f6 <TIM_TimeBaseInit+0x15a>
 80014ea:	f64f 728f 	movw	r2, #65423	; 0xff8f
 80014ee:	8869      	ldrh	r1, [r5, #2]
 80014f0:	401a      	ands	r2, r3
 80014f2:	ea42 0301 	orr.w	r3, r2, r1
 80014f6:	f44f 5080 	mov.w	r0, #4096	; 0x1000
 80014fa:	f2c4 0000 	movt	r0, #16384	; 0x4000
 80014fe:	4284      	cmp	r4, r0
 8001500:	d033      	beq.n	800156a <TIM_TimeBaseInit+0x1ce>
 8001502:	f44f 52a0 	mov.w	r2, #5120	; 0x1400
 8001506:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800150a:	4294      	cmp	r4, r2
 800150c:	d02d      	beq.n	800156a <TIM_TimeBaseInit+0x1ce>
 800150e:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001512:	88ee      	ldrh	r6, [r5, #6]
 8001514:	401a      	ands	r2, r3
 8001516:	f44f 5330 	mov.w	r3, #11264	; 0x2c00
 800151a:	88a8      	ldrh	r0, [r5, #4]
 800151c:	8829      	ldrh	r1, [r5, #0]
 800151e:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001522:	4332      	orrs	r2, r6
 8001524:	429c      	cmp	r4, r3
 8001526:	8022      	strh	r2, [r4, #0]
 8001528:	85a0      	strh	r0, [r4, #44]	; 0x2c
 800152a:	8521      	strh	r1, [r4, #40]	; 0x28
 800152c:	d01a      	beq.n	8001564 <TIM_TimeBaseInit+0x1c8>
 800152e:	f44f 5250 	mov.w	r2, #13312	; 0x3400
 8001532:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001536:	4294      	cmp	r4, r2
 8001538:	d014      	beq.n	8001564 <TIM_TimeBaseInit+0x1c8>
 800153a:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 800153e:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001542:	4284      	cmp	r4, r0
 8001544:	d00e      	beq.n	8001564 <TIM_TimeBaseInit+0x1c8>
 8001546:	f44f 4188 	mov.w	r1, #17408	; 0x4400
 800154a:	f2c4 0101 	movt	r1, #16385	; 0x4001
 800154e:	428c      	cmp	r4, r1
 8001550:	d008      	beq.n	8001564 <TIM_TimeBaseInit+0x1c8>
 8001552:	f44f 4390 	mov.w	r3, #18432	; 0x4800
 8001556:	f2c4 0301 	movt	r3, #16385	; 0x4001
 800155a:	429c      	cmp	r4, r3
 800155c:	d002      	beq.n	8001564 <TIM_TimeBaseInit+0x1c8>
 800155e:	2001      	movs	r0, #1
 8001560:	82a0      	strh	r0, [r4, #20]
 8001562:	bd70      	pop	{r4, r5, r6, pc}
 8001564:	7a2a      	ldrb	r2, [r5, #8]
 8001566:	8622      	strh	r2, [r4, #48]	; 0x30
 8001568:	e7f9      	b.n	800155e <TIM_TimeBaseInit+0x1c2>
 800156a:	8023      	strh	r3, [r4, #0]
 800156c:	88a9      	ldrh	r1, [r5, #4]
 800156e:	85a1      	strh	r1, [r4, #44]	; 0x2c
 8001570:	882b      	ldrh	r3, [r5, #0]
 8001572:	8523      	strh	r3, [r4, #40]	; 0x28
 8001574:	e7f3      	b.n	800155e <TIM_TimeBaseInit+0x1c2>
 8001576:	bf00      	nop
 8001578:	08008b60 	.word	0x08008b60

0800157c <TIM_OC1Init>:
 800157c:	f44f 5330 	mov.w	r3, #11264	; 0x2c00
 8001580:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001584:	4298      	cmp	r0, r3
 8001586:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800158a:	4604      	mov	r4, r0
 800158c:	460d      	mov	r5, r1
 800158e:	d055      	beq.n	800163c <TIM_OC1Init+0xc0>
 8001590:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001594:	d052      	beq.n	800163c <TIM_OC1Init+0xc0>
 8001596:	f44f 6080 	mov.w	r0, #1024	; 0x400
 800159a:	f2c4 0000 	movt	r0, #16384	; 0x4000
 800159e:	4284      	cmp	r4, r0
 80015a0:	d04c      	beq.n	800163c <TIM_OC1Init+0xc0>
 80015a2:	f44f 6100 	mov.w	r1, #2048	; 0x800
 80015a6:	f2c4 0100 	movt	r1, #16384	; 0x4000
 80015aa:	428c      	cmp	r4, r1
 80015ac:	d046      	beq.n	800163c <TIM_OC1Init+0xc0>
 80015ae:	f44f 6240 	mov.w	r2, #3072	; 0xc00
 80015b2:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015b6:	4294      	cmp	r4, r2
 80015b8:	d040      	beq.n	800163c <TIM_OC1Init+0xc0>
 80015ba:	f44f 5650 	mov.w	r6, #13312	; 0x3400
 80015be:	f2c4 0601 	movt	r6, #16385	; 0x4001
 80015c2:	42b4      	cmp	r4, r6
 80015c4:	d03a      	beq.n	800163c <TIM_OC1Init+0xc0>
 80015c6:	f44f 4798 	mov.w	r7, #19456	; 0x4c00
 80015ca:	f2c4 0701 	movt	r7, #16385	; 0x4001
 80015ce:	42bc      	cmp	r4, r7
 80015d0:	d034      	beq.n	800163c <TIM_OC1Init+0xc0>
 80015d2:	f44f 43a0 	mov.w	r3, #20480	; 0x5000
 80015d6:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80015da:	429c      	cmp	r4, r3
 80015dc:	d02e      	beq.n	800163c <TIM_OC1Init+0xc0>
 80015de:	f44f 40a8 	mov.w	r0, #21504	; 0x5400
 80015e2:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80015e6:	4284      	cmp	r4, r0
 80015e8:	d028      	beq.n	800163c <TIM_OC1Init+0xc0>
 80015ea:	f44f 51c0 	mov.w	r1, #6144	; 0x1800
 80015ee:	f2c4 0100 	movt	r1, #16384	; 0x4000
 80015f2:	428c      	cmp	r4, r1
 80015f4:	d022      	beq.n	800163c <TIM_OC1Init+0xc0>
 80015f6:	f44f 52e0 	mov.w	r2, #7168	; 0x1c00
 80015fa:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015fe:	4294      	cmp	r4, r2
 8001600:	d01c      	beq.n	800163c <TIM_OC1Init+0xc0>
 8001602:	f44f 5600 	mov.w	r6, #8192	; 0x2000
 8001606:	f2c4 0600 	movt	r6, #16384	; 0x4000
 800160a:	42b4      	cmp	r4, r6
 800160c:	d016      	beq.n	800163c <TIM_OC1Init+0xc0>
 800160e:	f44f 4780 	mov.w	r7, #16384	; 0x4000
 8001612:	f2c4 0701 	movt	r7, #16385	; 0x4001
 8001616:	42bc      	cmp	r4, r7
 8001618:	d010      	beq.n	800163c <TIM_OC1Init+0xc0>
 800161a:	f44f 4388 	mov.w	r3, #17408	; 0x4400
 800161e:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001622:	429c      	cmp	r4, r3
 8001624:	d00a      	beq.n	800163c <TIM_OC1Init+0xc0>
 8001626:	f44f 4090 	mov.w	r0, #18432	; 0x4800
 800162a:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800162e:	4284      	cmp	r4, r0
 8001630:	d004      	beq.n	800163c <TIM_OC1Init+0xc0>
 8001632:	4855      	ldr	r0, [pc, #340]	; (8001788 <TIM_OC1Init+0x20c>)
 8001634:	f44f 718e 	mov.w	r1, #284	; 0x11c
 8001638:	f7fe fe56 	bl	80002e8 <assert_failed>
 800163c:	8829      	ldrh	r1, [r5, #0]
 800163e:	b171      	cbz	r1, 800165e <TIM_OC1Init+0xe2>
 8001640:	2910      	cmp	r1, #16
 8001642:	d00c      	beq.n	800165e <TIM_OC1Init+0xe2>
 8001644:	2920      	cmp	r1, #32
 8001646:	d00a      	beq.n	800165e <TIM_OC1Init+0xe2>
 8001648:	2930      	cmp	r1, #48	; 0x30
 800164a:	d008      	beq.n	800165e <TIM_OC1Init+0xe2>
 800164c:	2960      	cmp	r1, #96	; 0x60
 800164e:	d006      	beq.n	800165e <TIM_OC1Init+0xe2>
 8001650:	2970      	cmp	r1, #112	; 0x70
 8001652:	d004      	beq.n	800165e <TIM_OC1Init+0xe2>
 8001654:	484c      	ldr	r0, [pc, #304]	; (8001788 <TIM_OC1Init+0x20c>)
 8001656:	f240 111d 	movw	r1, #285	; 0x11d
 800165a:	f7fe fe45 	bl	80002e8 <assert_failed>
 800165e:	886a      	ldrh	r2, [r5, #2]
 8001660:	2a01      	cmp	r2, #1
 8001662:	d904      	bls.n	800166e <TIM_OC1Init+0xf2>
 8001664:	4848      	ldr	r0, [pc, #288]	; (8001788 <TIM_OC1Init+0x20c>)
 8001666:	f44f 718f 	mov.w	r1, #286	; 0x11e
 800166a:	f7fe fe3d 	bl	80002e8 <assert_failed>
 800166e:	892e      	ldrh	r6, [r5, #8]
 8001670:	b146      	cbz	r6, 8001684 <TIM_OC1Init+0x108>
 8001672:	2e02      	cmp	r6, #2
 8001674:	d006      	beq.n	8001684 <TIM_OC1Init+0x108>
 8001676:	4844      	ldr	r0, [pc, #272]	; (8001788 <TIM_OC1Init+0x20c>)
 8001678:	f240 111f 	movw	r1, #287	; 0x11f
 800167c:	f7fe fe34 	bl	80002e8 <assert_failed>
 8001680:	8928      	ldrh	r0, [r5, #8]
 8001682:	e000      	b.n	8001686 <TIM_OC1Init+0x10a>
 8001684:	4630      	mov	r0, r6
 8001686:	8c27      	ldrh	r7, [r4, #32]
 8001688:	886e      	ldrh	r6, [r5, #2]
 800168a:	f027 0301 	bic.w	r3, r7, #1
 800168e:	0419      	lsls	r1, r3, #16
 8001690:	0c0a      	lsrs	r2, r1, #16
 8001692:	8422      	strh	r2, [r4, #32]
 8001694:	8c21      	ldrh	r1, [r4, #32]
 8001696:	88a7      	ldrh	r7, [r4, #4]
 8001698:	8b23      	ldrh	r3, [r4, #24]
 800169a:	f021 0202 	bic.w	r2, r1, #2
 800169e:	f023 0173 	bic.w	r1, r3, #115	; 0x73
 80016a2:	040b      	lsls	r3, r1, #16
 80016a4:	0412      	lsls	r2, r2, #16
 80016a6:	f44f 5130 	mov.w	r1, #11264	; 0x2c00
 80016aa:	0c12      	lsrs	r2, r2, #16
 80016ac:	f8b5 8000 	ldrh.w	r8, [r5]
 80016b0:	f2c4 0101 	movt	r1, #16385	; 0x4001
 80016b4:	0c1b      	lsrs	r3, r3, #16
 80016b6:	4316      	orrs	r6, r2
 80016b8:	428c      	cmp	r4, r1
 80016ba:	b2bf      	uxth	r7, r7
 80016bc:	ea43 0808 	orr.w	r8, r3, r8
 80016c0:	ea46 0600 	orr.w	r6, r6, r0
 80016c4:	d01f      	beq.n	8001706 <TIM_OC1Init+0x18a>
 80016c6:	f44f 5050 	mov.w	r0, #13312	; 0x3400
 80016ca:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80016ce:	4284      	cmp	r4, r0
 80016d0:	d019      	beq.n	8001706 <TIM_OC1Init+0x18a>
 80016d2:	f44f 4280 	mov.w	r2, #16384	; 0x4000
 80016d6:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80016da:	4294      	cmp	r4, r2
 80016dc:	d013      	beq.n	8001706 <TIM_OC1Init+0x18a>
 80016de:	f44f 4188 	mov.w	r1, #17408	; 0x4400
 80016e2:	f2c4 0101 	movt	r1, #16385	; 0x4001
 80016e6:	428c      	cmp	r4, r1
 80016e8:	d00d      	beq.n	8001706 <TIM_OC1Init+0x18a>
 80016ea:	f44f 4390 	mov.w	r3, #18432	; 0x4800
 80016ee:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80016f2:	429c      	cmp	r4, r3
 80016f4:	d007      	beq.n	8001706 <TIM_OC1Init+0x18a>
 80016f6:	88eb      	ldrh	r3, [r5, #6]
 80016f8:	80a7      	strh	r7, [r4, #4]
 80016fa:	f8a4 8018 	strh.w	r8, [r4, #24]
 80016fe:	86a3      	strh	r3, [r4, #52]	; 0x34
 8001700:	8426      	strh	r6, [r4, #32]
 8001702:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001706:	88a8      	ldrh	r0, [r5, #4]
 8001708:	b130      	cbz	r0, 8001718 <TIM_OC1Init+0x19c>
 800170a:	2804      	cmp	r0, #4
 800170c:	d004      	beq.n	8001718 <TIM_OC1Init+0x19c>
 800170e:	481e      	ldr	r0, [pc, #120]	; (8001788 <TIM_OC1Init+0x20c>)
 8001710:	f44f 719e 	mov.w	r1, #316	; 0x13c
 8001714:	f7fe fde8 	bl	80002e8 <assert_failed>
 8001718:	896a      	ldrh	r2, [r5, #10]
 800171a:	b132      	cbz	r2, 800172a <TIM_OC1Init+0x1ae>
 800171c:	2a08      	cmp	r2, #8
 800171e:	d004      	beq.n	800172a <TIM_OC1Init+0x1ae>
 8001720:	4819      	ldr	r0, [pc, #100]	; (8001788 <TIM_OC1Init+0x20c>)
 8001722:	f240 113d 	movw	r1, #317	; 0x13d
 8001726:	f7fe fddf 	bl	80002e8 <assert_failed>
 800172a:	89e9      	ldrh	r1, [r5, #14]
 800172c:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8001730:	d000      	beq.n	8001734 <TIM_OC1Init+0x1b8>
 8001732:	b9c1      	cbnz	r1, 8001766 <TIM_OC1Init+0x1ea>
 8001734:	89ab      	ldrh	r3, [r5, #12]
 8001736:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 800173a:	d000      	beq.n	800173e <TIM_OC1Init+0x1c2>
 800173c:	b9eb      	cbnz	r3, 800177a <TIM_OC1Init+0x1fe>
 800173e:	f64f 72f7 	movw	r2, #65527	; 0xfff7
 8001742:	f8b5 c00a 	ldrh.w	ip, [r5, #10]
 8001746:	4032      	ands	r2, r6
 8001748:	f64f 41ff 	movw	r1, #64767	; 0xfcff
 800174c:	89e8      	ldrh	r0, [r5, #14]
 800174e:	4039      	ands	r1, r7
 8001750:	88ae      	ldrh	r6, [r5, #4]
 8001752:	ea42 070c 	orr.w	r7, r2, ip
 8001756:	f64f 72fb 	movw	r2, #65531	; 0xfffb
 800175a:	403a      	ands	r2, r7
 800175c:	ea41 0700 	orr.w	r7, r1, r0
 8001760:	4316      	orrs	r6, r2
 8001762:	431f      	orrs	r7, r3
 8001764:	e7c7      	b.n	80016f6 <TIM_OC1Init+0x17a>
 8001766:	4808      	ldr	r0, [pc, #32]	; (8001788 <TIM_OC1Init+0x20c>)
 8001768:	f44f 719f 	mov.w	r1, #318	; 0x13e
 800176c:	f7fe fdbc 	bl	80002e8 <assert_failed>
 8001770:	89ab      	ldrh	r3, [r5, #12]
 8001772:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8001776:	d1e1      	bne.n	800173c <TIM_OC1Init+0x1c0>
 8001778:	e7e1      	b.n	800173e <TIM_OC1Init+0x1c2>
 800177a:	4803      	ldr	r0, [pc, #12]	; (8001788 <TIM_OC1Init+0x20c>)
 800177c:	f240 113f 	movw	r1, #319	; 0x13f
 8001780:	f7fe fdb2 	bl	80002e8 <assert_failed>
 8001784:	89ab      	ldrh	r3, [r5, #12]
 8001786:	e7da      	b.n	800173e <TIM_OC1Init+0x1c2>
 8001788:	08008b60 	.word	0x08008b60

0800178c <TIM_Cmd>:
 800178c:	b538      	push	{r3, r4, r5, lr}
 800178e:	f44f 5330 	mov.w	r3, #11264	; 0x2c00
 8001792:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001796:	4298      	cmp	r0, r3
 8001798:	4604      	mov	r4, r0
 800179a:	460d      	mov	r5, r1
 800179c:	d061      	beq.n	8001862 <TIM_Cmd+0xd6>
 800179e:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80017a2:	d05e      	beq.n	8001862 <TIM_Cmd+0xd6>
 80017a4:	f44f 6080 	mov.w	r0, #1024	; 0x400
 80017a8:	f2c4 0000 	movt	r0, #16384	; 0x4000
 80017ac:	4284      	cmp	r4, r0
 80017ae:	d058      	beq.n	8001862 <TIM_Cmd+0xd6>
 80017b0:	f44f 6100 	mov.w	r1, #2048	; 0x800
 80017b4:	f2c4 0100 	movt	r1, #16384	; 0x4000
 80017b8:	428c      	cmp	r4, r1
 80017ba:	d052      	beq.n	8001862 <TIM_Cmd+0xd6>
 80017bc:	f44f 6240 	mov.w	r2, #3072	; 0xc00
 80017c0:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80017c4:	4294      	cmp	r4, r2
 80017c6:	d04c      	beq.n	8001862 <TIM_Cmd+0xd6>
 80017c8:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80017cc:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80017d0:	429c      	cmp	r4, r3
 80017d2:	d046      	beq.n	8001862 <TIM_Cmd+0xd6>
 80017d4:	f44f 50a0 	mov.w	r0, #5120	; 0x1400
 80017d8:	f2c4 0000 	movt	r0, #16384	; 0x4000
 80017dc:	4284      	cmp	r4, r0
 80017de:	d040      	beq.n	8001862 <TIM_Cmd+0xd6>
 80017e0:	f44f 5150 	mov.w	r1, #13312	; 0x3400
 80017e4:	f2c4 0101 	movt	r1, #16385	; 0x4001
 80017e8:	428c      	cmp	r4, r1
 80017ea:	d03a      	beq.n	8001862 <TIM_Cmd+0xd6>
 80017ec:	f44f 4298 	mov.w	r2, #19456	; 0x4c00
 80017f0:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80017f4:	4294      	cmp	r4, r2
 80017f6:	d034      	beq.n	8001862 <TIM_Cmd+0xd6>
 80017f8:	f44f 43a0 	mov.w	r3, #20480	; 0x5000
 80017fc:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001800:	429c      	cmp	r4, r3
 8001802:	d02e      	beq.n	8001862 <TIM_Cmd+0xd6>
 8001804:	f44f 40a8 	mov.w	r0, #21504	; 0x5400
 8001808:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800180c:	4284      	cmp	r4, r0
 800180e:	d028      	beq.n	8001862 <TIM_Cmd+0xd6>
 8001810:	f44f 51c0 	mov.w	r1, #6144	; 0x1800
 8001814:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001818:	428c      	cmp	r4, r1
 800181a:	d022      	beq.n	8001862 <TIM_Cmd+0xd6>
 800181c:	f44f 52e0 	mov.w	r2, #7168	; 0x1c00
 8001820:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001824:	4294      	cmp	r4, r2
 8001826:	d01c      	beq.n	8001862 <TIM_Cmd+0xd6>
 8001828:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 800182c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001830:	429c      	cmp	r4, r3
 8001832:	d016      	beq.n	8001862 <TIM_Cmd+0xd6>
 8001834:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8001838:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800183c:	4284      	cmp	r4, r0
 800183e:	d010      	beq.n	8001862 <TIM_Cmd+0xd6>
 8001840:	f44f 4188 	mov.w	r1, #17408	; 0x4400
 8001844:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001848:	428c      	cmp	r4, r1
 800184a:	d00a      	beq.n	8001862 <TIM_Cmd+0xd6>
 800184c:	f44f 4290 	mov.w	r2, #18432	; 0x4800
 8001850:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001854:	4294      	cmp	r4, r2
 8001856:	d004      	beq.n	8001862 <TIM_Cmd+0xd6>
 8001858:	480d      	ldr	r0, [pc, #52]	; (8001890 <TIM_Cmd+0x104>)
 800185a:	f240 3129 	movw	r1, #809	; 0x329
 800185e:	f7fe fd43 	bl	80002e8 <assert_failed>
 8001862:	2d01      	cmp	r5, #1
 8001864:	d90a      	bls.n	800187c <TIM_Cmd+0xf0>
 8001866:	480a      	ldr	r0, [pc, #40]	; (8001890 <TIM_Cmd+0x104>)
 8001868:	f240 312a 	movw	r1, #810	; 0x32a
 800186c:	f7fe fd3c 	bl	80002e8 <assert_failed>
 8001870:	8823      	ldrh	r3, [r4, #0]
 8001872:	b298      	uxth	r0, r3
 8001874:	f040 0101 	orr.w	r1, r0, #1
 8001878:	8021      	strh	r1, [r4, #0]
 800187a:	bd38      	pop	{r3, r4, r5, pc}
 800187c:	2d00      	cmp	r5, #0
 800187e:	d1f7      	bne.n	8001870 <TIM_Cmd+0xe4>
 8001880:	8823      	ldrh	r3, [r4, #0]
 8001882:	f023 0001 	bic.w	r0, r3, #1
 8001886:	0401      	lsls	r1, r0, #16
 8001888:	0c0a      	lsrs	r2, r1, #16
 800188a:	8022      	strh	r2, [r4, #0]
 800188c:	bd38      	pop	{r3, r4, r5, pc}
 800188e:	bf00      	nop
 8001890:	08008b60 	.word	0x08008b60

08001894 <TIM_OC1NPolarityConfig>:
 8001894:	b538      	push	{r3, r4, r5, lr}
 8001896:	f44f 5330 	mov.w	r3, #11264	; 0x2c00
 800189a:	f2c4 0301 	movt	r3, #16385	; 0x4001
 800189e:	4298      	cmp	r0, r3
 80018a0:	4604      	mov	r4, r0
 80018a2:	460d      	mov	r5, r1
 80018a4:	d01c      	beq.n	80018e0 <TIM_OC1NPolarityConfig+0x4c>
 80018a6:	f44f 5050 	mov.w	r0, #13312	; 0x3400
 80018aa:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80018ae:	4284      	cmp	r4, r0
 80018b0:	d016      	beq.n	80018e0 <TIM_OC1NPolarityConfig+0x4c>
 80018b2:	f44f 4180 	mov.w	r1, #16384	; 0x4000
 80018b6:	f2c4 0101 	movt	r1, #16385	; 0x4001
 80018ba:	428c      	cmp	r4, r1
 80018bc:	d010      	beq.n	80018e0 <TIM_OC1NPolarityConfig+0x4c>
 80018be:	f44f 4288 	mov.w	r2, #17408	; 0x4400
 80018c2:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80018c6:	4294      	cmp	r4, r2
 80018c8:	d00a      	beq.n	80018e0 <TIM_OC1NPolarityConfig+0x4c>
 80018ca:	f44f 4390 	mov.w	r3, #18432	; 0x4800
 80018ce:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80018d2:	429c      	cmp	r4, r3
 80018d4:	d004      	beq.n	80018e0 <TIM_OC1NPolarityConfig+0x4c>
 80018d6:	480b      	ldr	r0, [pc, #44]	; (8001904 <TIM_OC1NPolarityConfig+0x70>)
 80018d8:	f44f 61e5 	mov.w	r1, #1832	; 0x728
 80018dc:	f7fe fd04 	bl	80002e8 <assert_failed>
 80018e0:	b135      	cbz	r5, 80018f0 <TIM_OC1NPolarityConfig+0x5c>
 80018e2:	2d08      	cmp	r5, #8
 80018e4:	d004      	beq.n	80018f0 <TIM_OC1NPolarityConfig+0x5c>
 80018e6:	4807      	ldr	r0, [pc, #28]	; (8001904 <TIM_OC1NPolarityConfig+0x70>)
 80018e8:	f240 7129 	movw	r1, #1833	; 0x729
 80018ec:	f7fe fcfc 	bl	80002e8 <assert_failed>
 80018f0:	8c20      	ldrh	r0, [r4, #32]
 80018f2:	f020 0108 	bic.w	r1, r0, #8
 80018f6:	040a      	lsls	r2, r1, #16
 80018f8:	0c13      	lsrs	r3, r2, #16
 80018fa:	ea45 0003 	orr.w	r0, r5, r3
 80018fe:	8420      	strh	r0, [r4, #32]
 8001900:	bd38      	pop	{r3, r4, r5, pc}
 8001902:	bf00      	nop
 8001904:	08008b60 	.word	0x08008b60

08001908 <TIM_CCxCmd>:
 8001908:	f44f 5330 	mov.w	r3, #11264	; 0x2c00
 800190c:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001910:	4298      	cmp	r0, r3
 8001912:	b570      	push	{r4, r5, r6, lr}
 8001914:	4604      	mov	r4, r0
 8001916:	460d      	mov	r5, r1
 8001918:	4616      	mov	r6, r2
 800191a:	d055      	beq.n	80019c8 <TIM_CCxCmd+0xc0>
 800191c:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001920:	d052      	beq.n	80019c8 <TIM_CCxCmd+0xc0>
 8001922:	f44f 6080 	mov.w	r0, #1024	; 0x400
 8001926:	f2c4 0000 	movt	r0, #16384	; 0x4000
 800192a:	4284      	cmp	r4, r0
 800192c:	d04c      	beq.n	80019c8 <TIM_CCxCmd+0xc0>
 800192e:	f44f 6100 	mov.w	r1, #2048	; 0x800
 8001932:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001936:	428c      	cmp	r4, r1
 8001938:	d046      	beq.n	80019c8 <TIM_CCxCmd+0xc0>
 800193a:	f44f 6240 	mov.w	r2, #3072	; 0xc00
 800193e:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001942:	4294      	cmp	r4, r2
 8001944:	d040      	beq.n	80019c8 <TIM_CCxCmd+0xc0>
 8001946:	f44f 5350 	mov.w	r3, #13312	; 0x3400
 800194a:	f2c4 0301 	movt	r3, #16385	; 0x4001
 800194e:	429c      	cmp	r4, r3
 8001950:	d03a      	beq.n	80019c8 <TIM_CCxCmd+0xc0>
 8001952:	f44f 4098 	mov.w	r0, #19456	; 0x4c00
 8001956:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800195a:	4284      	cmp	r4, r0
 800195c:	d034      	beq.n	80019c8 <TIM_CCxCmd+0xc0>
 800195e:	f44f 41a0 	mov.w	r1, #20480	; 0x5000
 8001962:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001966:	428c      	cmp	r4, r1
 8001968:	d02e      	beq.n	80019c8 <TIM_CCxCmd+0xc0>
 800196a:	f44f 42a8 	mov.w	r2, #21504	; 0x5400
 800196e:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001972:	4294      	cmp	r4, r2
 8001974:	d028      	beq.n	80019c8 <TIM_CCxCmd+0xc0>
 8001976:	f44f 53c0 	mov.w	r3, #6144	; 0x1800
 800197a:	f2c4 0300 	movt	r3, #16384	; 0x4000
 800197e:	429c      	cmp	r4, r3
 8001980:	d022      	beq.n	80019c8 <TIM_CCxCmd+0xc0>
 8001982:	f44f 50e0 	mov.w	r0, #7168	; 0x1c00
 8001986:	f2c4 0000 	movt	r0, #16384	; 0x4000
 800198a:	4284      	cmp	r4, r0
 800198c:	d01c      	beq.n	80019c8 <TIM_CCxCmd+0xc0>
 800198e:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8001992:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001996:	428c      	cmp	r4, r1
 8001998:	d016      	beq.n	80019c8 <TIM_CCxCmd+0xc0>
 800199a:	f44f 4280 	mov.w	r2, #16384	; 0x4000
 800199e:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80019a2:	4294      	cmp	r4, r2
 80019a4:	d010      	beq.n	80019c8 <TIM_CCxCmd+0xc0>
 80019a6:	f44f 4388 	mov.w	r3, #17408	; 0x4400
 80019aa:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80019ae:	429c      	cmp	r4, r3
 80019b0:	d00a      	beq.n	80019c8 <TIM_CCxCmd+0xc0>
 80019b2:	f44f 4090 	mov.w	r0, #18432	; 0x4800
 80019b6:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80019ba:	4284      	cmp	r4, r0
 80019bc:	d004      	beq.n	80019c8 <TIM_CCxCmd+0xc0>
 80019be:	4813      	ldr	r0, [pc, #76]	; (8001a0c <TIM_CCxCmd+0x104>)
 80019c0:	f240 71bb 	movw	r1, #1979	; 0x7bb
 80019c4:	f7fe fc90 	bl	80002e8 <assert_failed>
 80019c8:	b155      	cbz	r5, 80019e0 <TIM_CCxCmd+0xd8>
 80019ca:	2d04      	cmp	r5, #4
 80019cc:	d008      	beq.n	80019e0 <TIM_CCxCmd+0xd8>
 80019ce:	2d08      	cmp	r5, #8
 80019d0:	d006      	beq.n	80019e0 <TIM_CCxCmd+0xd8>
 80019d2:	2d0c      	cmp	r5, #12
 80019d4:	d004      	beq.n	80019e0 <TIM_CCxCmd+0xd8>
 80019d6:	480d      	ldr	r0, [pc, #52]	; (8001a0c <TIM_CCxCmd+0x104>)
 80019d8:	f240 71bc 	movw	r1, #1980	; 0x7bc
 80019dc:	f7fe fc84 	bl	80002e8 <assert_failed>
 80019e0:	2e01      	cmp	r6, #1
 80019e2:	d904      	bls.n	80019ee <TIM_CCxCmd+0xe6>
 80019e4:	4809      	ldr	r0, [pc, #36]	; (8001a0c <TIM_CCxCmd+0x104>)
 80019e6:	f240 71bd 	movw	r1, #1981	; 0x7bd
 80019ea:	f7fe fc7d 	bl	80002e8 <assert_failed>
 80019ee:	2101      	movs	r1, #1
 80019f0:	fa01 f105 	lsl.w	r1, r1, r5
 80019f4:	fa06 f505 	lsl.w	r5, r6, r5
 80019f8:	8c22      	ldrh	r2, [r4, #32]
 80019fa:	b293      	uxth	r3, r2
 80019fc:	ea23 0301 	bic.w	r3, r3, r1
 8001a00:	8423      	strh	r3, [r4, #32]
 8001a02:	8c20      	ldrh	r0, [r4, #32]
 8001a04:	4305      	orrs	r5, r0
 8001a06:	b2ad      	uxth	r5, r5
 8001a08:	8425      	strh	r5, [r4, #32]
 8001a0a:	bd70      	pop	{r4, r5, r6, pc}
 8001a0c:	08008b60 	.word	0x08008b60

08001a10 <TIM_SetCounter>:
 8001a10:	b538      	push	{r3, r4, r5, lr}
 8001a12:	f44f 5330 	mov.w	r3, #11264	; 0x2c00
 8001a16:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001a1a:	4298      	cmp	r0, r3
 8001a1c:	4604      	mov	r4, r0
 8001a1e:	460d      	mov	r5, r1
 8001a20:	d061      	beq.n	8001ae6 <TIM_SetCounter+0xd6>
 8001a22:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001a26:	d05e      	beq.n	8001ae6 <TIM_SetCounter+0xd6>
 8001a28:	f44f 6080 	mov.w	r0, #1024	; 0x400
 8001a2c:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8001a30:	4284      	cmp	r4, r0
 8001a32:	d058      	beq.n	8001ae6 <TIM_SetCounter+0xd6>
 8001a34:	f44f 6100 	mov.w	r1, #2048	; 0x800
 8001a38:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001a3c:	428c      	cmp	r4, r1
 8001a3e:	d052      	beq.n	8001ae6 <TIM_SetCounter+0xd6>
 8001a40:	f44f 6240 	mov.w	r2, #3072	; 0xc00
 8001a44:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001a48:	4294      	cmp	r4, r2
 8001a4a:	d04c      	beq.n	8001ae6 <TIM_SetCounter+0xd6>
 8001a4c:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8001a50:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a54:	429c      	cmp	r4, r3
 8001a56:	d046      	beq.n	8001ae6 <TIM_SetCounter+0xd6>
 8001a58:	f44f 50a0 	mov.w	r0, #5120	; 0x1400
 8001a5c:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8001a60:	4284      	cmp	r4, r0
 8001a62:	d040      	beq.n	8001ae6 <TIM_SetCounter+0xd6>
 8001a64:	f44f 5150 	mov.w	r1, #13312	; 0x3400
 8001a68:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001a6c:	428c      	cmp	r4, r1
 8001a6e:	d03a      	beq.n	8001ae6 <TIM_SetCounter+0xd6>
 8001a70:	f44f 4298 	mov.w	r2, #19456	; 0x4c00
 8001a74:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001a78:	4294      	cmp	r4, r2
 8001a7a:	d034      	beq.n	8001ae6 <TIM_SetCounter+0xd6>
 8001a7c:	f44f 43a0 	mov.w	r3, #20480	; 0x5000
 8001a80:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001a84:	429c      	cmp	r4, r3
 8001a86:	d02e      	beq.n	8001ae6 <TIM_SetCounter+0xd6>
 8001a88:	f44f 40a8 	mov.w	r0, #21504	; 0x5400
 8001a8c:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001a90:	4284      	cmp	r4, r0
 8001a92:	d028      	beq.n	8001ae6 <TIM_SetCounter+0xd6>
 8001a94:	f44f 51c0 	mov.w	r1, #6144	; 0x1800
 8001a98:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001a9c:	428c      	cmp	r4, r1
 8001a9e:	d022      	beq.n	8001ae6 <TIM_SetCounter+0xd6>
 8001aa0:	f44f 52e0 	mov.w	r2, #7168	; 0x1c00
 8001aa4:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001aa8:	4294      	cmp	r4, r2
 8001aaa:	d01c      	beq.n	8001ae6 <TIM_SetCounter+0xd6>
 8001aac:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8001ab0:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001ab4:	429c      	cmp	r4, r3
 8001ab6:	d016      	beq.n	8001ae6 <TIM_SetCounter+0xd6>
 8001ab8:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8001abc:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001ac0:	4284      	cmp	r4, r0
 8001ac2:	d010      	beq.n	8001ae6 <TIM_SetCounter+0xd6>
 8001ac4:	f44f 4188 	mov.w	r1, #17408	; 0x4400
 8001ac8:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001acc:	428c      	cmp	r4, r1
 8001ace:	d00a      	beq.n	8001ae6 <TIM_SetCounter+0xd6>
 8001ad0:	f44f 4290 	mov.w	r2, #18432	; 0x4800
 8001ad4:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001ad8:	4294      	cmp	r4, r2
 8001ada:	d004      	beq.n	8001ae6 <TIM_SetCounter+0xd6>
 8001adc:	4803      	ldr	r0, [pc, #12]	; (8001aec <TIM_SetCounter+0xdc>)
 8001ade:	f640 01db 	movw	r1, #2267	; 0x8db
 8001ae2:	f7fe fc01 	bl	80002e8 <assert_failed>
 8001ae6:	84a5      	strh	r5, [r4, #36]	; 0x24
 8001ae8:	bd38      	pop	{r3, r4, r5, pc}
 8001aea:	bf00      	nop
 8001aec:	08008b60 	.word	0x08008b60

08001af0 <TIM_SetAutoreload>:
 8001af0:	b538      	push	{r3, r4, r5, lr}
 8001af2:	f44f 5330 	mov.w	r3, #11264	; 0x2c00
 8001af6:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001afa:	4298      	cmp	r0, r3
 8001afc:	4604      	mov	r4, r0
 8001afe:	460d      	mov	r5, r1
 8001b00:	d061      	beq.n	8001bc6 <TIM_SetAutoreload+0xd6>
 8001b02:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001b06:	d05e      	beq.n	8001bc6 <TIM_SetAutoreload+0xd6>
 8001b08:	f44f 6080 	mov.w	r0, #1024	; 0x400
 8001b0c:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8001b10:	4284      	cmp	r4, r0
 8001b12:	d058      	beq.n	8001bc6 <TIM_SetAutoreload+0xd6>
 8001b14:	f44f 6100 	mov.w	r1, #2048	; 0x800
 8001b18:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001b1c:	428c      	cmp	r4, r1
 8001b1e:	d052      	beq.n	8001bc6 <TIM_SetAutoreload+0xd6>
 8001b20:	f44f 6240 	mov.w	r2, #3072	; 0xc00
 8001b24:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001b28:	4294      	cmp	r4, r2
 8001b2a:	d04c      	beq.n	8001bc6 <TIM_SetAutoreload+0xd6>
 8001b2c:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8001b30:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001b34:	429c      	cmp	r4, r3
 8001b36:	d046      	beq.n	8001bc6 <TIM_SetAutoreload+0xd6>
 8001b38:	f44f 50a0 	mov.w	r0, #5120	; 0x1400
 8001b3c:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8001b40:	4284      	cmp	r4, r0
 8001b42:	d040      	beq.n	8001bc6 <TIM_SetAutoreload+0xd6>
 8001b44:	f44f 5150 	mov.w	r1, #13312	; 0x3400
 8001b48:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001b4c:	428c      	cmp	r4, r1
 8001b4e:	d03a      	beq.n	8001bc6 <TIM_SetAutoreload+0xd6>
 8001b50:	f44f 4298 	mov.w	r2, #19456	; 0x4c00
 8001b54:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001b58:	4294      	cmp	r4, r2
 8001b5a:	d034      	beq.n	8001bc6 <TIM_SetAutoreload+0xd6>
 8001b5c:	f44f 43a0 	mov.w	r3, #20480	; 0x5000
 8001b60:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001b64:	429c      	cmp	r4, r3
 8001b66:	d02e      	beq.n	8001bc6 <TIM_SetAutoreload+0xd6>
 8001b68:	f44f 40a8 	mov.w	r0, #21504	; 0x5400
 8001b6c:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001b70:	4284      	cmp	r4, r0
 8001b72:	d028      	beq.n	8001bc6 <TIM_SetAutoreload+0xd6>
 8001b74:	f44f 51c0 	mov.w	r1, #6144	; 0x1800
 8001b78:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001b7c:	428c      	cmp	r4, r1
 8001b7e:	d022      	beq.n	8001bc6 <TIM_SetAutoreload+0xd6>
 8001b80:	f44f 52e0 	mov.w	r2, #7168	; 0x1c00
 8001b84:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001b88:	4294      	cmp	r4, r2
 8001b8a:	d01c      	beq.n	8001bc6 <TIM_SetAutoreload+0xd6>
 8001b8c:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8001b90:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001b94:	429c      	cmp	r4, r3
 8001b96:	d016      	beq.n	8001bc6 <TIM_SetAutoreload+0xd6>
 8001b98:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8001b9c:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001ba0:	4284      	cmp	r4, r0
 8001ba2:	d010      	beq.n	8001bc6 <TIM_SetAutoreload+0xd6>
 8001ba4:	f44f 4188 	mov.w	r1, #17408	; 0x4400
 8001ba8:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001bac:	428c      	cmp	r4, r1
 8001bae:	d00a      	beq.n	8001bc6 <TIM_SetAutoreload+0xd6>
 8001bb0:	f44f 4290 	mov.w	r2, #18432	; 0x4800
 8001bb4:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001bb8:	4294      	cmp	r4, r2
 8001bba:	d004      	beq.n	8001bc6 <TIM_SetAutoreload+0xd6>
 8001bbc:	4803      	ldr	r0, [pc, #12]	; (8001bcc <TIM_SetAutoreload+0xdc>)
 8001bbe:	f640 01e9 	movw	r1, #2281	; 0x8e9
 8001bc2:	f7fe fb91 	bl	80002e8 <assert_failed>
 8001bc6:	85a5      	strh	r5, [r4, #44]	; 0x2c
 8001bc8:	bd38      	pop	{r3, r4, r5, pc}
 8001bca:	bf00      	nop
 8001bcc:	08008b60 	.word	0x08008b60

08001bd0 <TIM_SetCompare1>:
 8001bd0:	b538      	push	{r3, r4, r5, lr}
 8001bd2:	f44f 5330 	mov.w	r3, #11264	; 0x2c00
 8001bd6:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001bda:	4298      	cmp	r0, r3
 8001bdc:	4604      	mov	r4, r0
 8001bde:	460d      	mov	r5, r1
 8001be0:	d055      	beq.n	8001c8e <TIM_SetCompare1+0xbe>
 8001be2:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001be6:	d052      	beq.n	8001c8e <TIM_SetCompare1+0xbe>
 8001be8:	f44f 6080 	mov.w	r0, #1024	; 0x400
 8001bec:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8001bf0:	4284      	cmp	r4, r0
 8001bf2:	d04c      	beq.n	8001c8e <TIM_SetCompare1+0xbe>
 8001bf4:	f44f 6100 	mov.w	r1, #2048	; 0x800
 8001bf8:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001bfc:	428c      	cmp	r4, r1
 8001bfe:	d046      	beq.n	8001c8e <TIM_SetCompare1+0xbe>
 8001c00:	f44f 6240 	mov.w	r2, #3072	; 0xc00
 8001c04:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001c08:	4294      	cmp	r4, r2
 8001c0a:	d040      	beq.n	8001c8e <TIM_SetCompare1+0xbe>
 8001c0c:	f44f 5350 	mov.w	r3, #13312	; 0x3400
 8001c10:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001c14:	429c      	cmp	r4, r3
 8001c16:	d03a      	beq.n	8001c8e <TIM_SetCompare1+0xbe>
 8001c18:	f44f 4098 	mov.w	r0, #19456	; 0x4c00
 8001c1c:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001c20:	4284      	cmp	r4, r0
 8001c22:	d034      	beq.n	8001c8e <TIM_SetCompare1+0xbe>
 8001c24:	f44f 41a0 	mov.w	r1, #20480	; 0x5000
 8001c28:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001c2c:	428c      	cmp	r4, r1
 8001c2e:	d02e      	beq.n	8001c8e <TIM_SetCompare1+0xbe>
 8001c30:	f44f 42a8 	mov.w	r2, #21504	; 0x5400
 8001c34:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001c38:	4294      	cmp	r4, r2
 8001c3a:	d028      	beq.n	8001c8e <TIM_SetCompare1+0xbe>
 8001c3c:	f44f 53c0 	mov.w	r3, #6144	; 0x1800
 8001c40:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001c44:	429c      	cmp	r4, r3
 8001c46:	d022      	beq.n	8001c8e <TIM_SetCompare1+0xbe>
 8001c48:	f44f 50e0 	mov.w	r0, #7168	; 0x1c00
 8001c4c:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8001c50:	4284      	cmp	r4, r0
 8001c52:	d01c      	beq.n	8001c8e <TIM_SetCompare1+0xbe>
 8001c54:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8001c58:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001c5c:	428c      	cmp	r4, r1
 8001c5e:	d016      	beq.n	8001c8e <TIM_SetCompare1+0xbe>
 8001c60:	f44f 4280 	mov.w	r2, #16384	; 0x4000
 8001c64:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001c68:	4294      	cmp	r4, r2
 8001c6a:	d010      	beq.n	8001c8e <TIM_SetCompare1+0xbe>
 8001c6c:	f44f 4388 	mov.w	r3, #17408	; 0x4400
 8001c70:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001c74:	429c      	cmp	r4, r3
 8001c76:	d00a      	beq.n	8001c8e <TIM_SetCompare1+0xbe>
 8001c78:	f44f 4090 	mov.w	r0, #18432	; 0x4800
 8001c7c:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001c80:	4284      	cmp	r4, r0
 8001c82:	d004      	beq.n	8001c8e <TIM_SetCompare1+0xbe>
 8001c84:	4803      	ldr	r0, [pc, #12]	; (8001c94 <TIM_SetCompare1+0xc4>)
 8001c86:	f640 01f7 	movw	r1, #2295	; 0x8f7
 8001c8a:	f7fe fb2d 	bl	80002e8 <assert_failed>
 8001c8e:	86a5      	strh	r5, [r4, #52]	; 0x34
 8001c90:	bd38      	pop	{r3, r4, r5, pc}
 8001c92:	bf00      	nop
 8001c94:	08008b60 	.word	0x08008b60

08001c98 <TIM_ClearFlag>:
 8001c98:	b538      	push	{r3, r4, r5, lr}
 8001c9a:	f44f 5330 	mov.w	r3, #11264	; 0x2c00
 8001c9e:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001ca2:	4298      	cmp	r0, r3
 8001ca4:	4604      	mov	r4, r0
 8001ca6:	460d      	mov	r5, r1
 8001ca8:	d061      	beq.n	8001d6e <TIM_ClearFlag+0xd6>
 8001caa:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001cae:	d05e      	beq.n	8001d6e <TIM_ClearFlag+0xd6>
 8001cb0:	f44f 6080 	mov.w	r0, #1024	; 0x400
 8001cb4:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8001cb8:	4284      	cmp	r4, r0
 8001cba:	d058      	beq.n	8001d6e <TIM_ClearFlag+0xd6>
 8001cbc:	f44f 6100 	mov.w	r1, #2048	; 0x800
 8001cc0:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001cc4:	428c      	cmp	r4, r1
 8001cc6:	d052      	beq.n	8001d6e <TIM_ClearFlag+0xd6>
 8001cc8:	f44f 6240 	mov.w	r2, #3072	; 0xc00
 8001ccc:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001cd0:	4294      	cmp	r4, r2
 8001cd2:	d04c      	beq.n	8001d6e <TIM_ClearFlag+0xd6>
 8001cd4:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8001cd8:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001cdc:	429c      	cmp	r4, r3
 8001cde:	d046      	beq.n	8001d6e <TIM_ClearFlag+0xd6>
 8001ce0:	f44f 50a0 	mov.w	r0, #5120	; 0x1400
 8001ce4:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8001ce8:	4284      	cmp	r4, r0
 8001cea:	d040      	beq.n	8001d6e <TIM_ClearFlag+0xd6>
 8001cec:	f44f 5150 	mov.w	r1, #13312	; 0x3400
 8001cf0:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001cf4:	428c      	cmp	r4, r1
 8001cf6:	d03a      	beq.n	8001d6e <TIM_ClearFlag+0xd6>
 8001cf8:	f44f 4298 	mov.w	r2, #19456	; 0x4c00
 8001cfc:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001d00:	4294      	cmp	r4, r2
 8001d02:	d034      	beq.n	8001d6e <TIM_ClearFlag+0xd6>
 8001d04:	f44f 43a0 	mov.w	r3, #20480	; 0x5000
 8001d08:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001d0c:	429c      	cmp	r4, r3
 8001d0e:	d02e      	beq.n	8001d6e <TIM_ClearFlag+0xd6>
 8001d10:	f44f 40a8 	mov.w	r0, #21504	; 0x5400
 8001d14:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001d18:	4284      	cmp	r4, r0
 8001d1a:	d028      	beq.n	8001d6e <TIM_ClearFlag+0xd6>
 8001d1c:	f44f 51c0 	mov.w	r1, #6144	; 0x1800
 8001d20:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001d24:	428c      	cmp	r4, r1
 8001d26:	d022      	beq.n	8001d6e <TIM_ClearFlag+0xd6>
 8001d28:	f44f 52e0 	mov.w	r2, #7168	; 0x1c00
 8001d2c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001d30:	4294      	cmp	r4, r2
 8001d32:	d01c      	beq.n	8001d6e <TIM_ClearFlag+0xd6>
 8001d34:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8001d38:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001d3c:	429c      	cmp	r4, r3
 8001d3e:	d016      	beq.n	8001d6e <TIM_ClearFlag+0xd6>
 8001d40:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8001d44:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001d48:	4284      	cmp	r4, r0
 8001d4a:	d010      	beq.n	8001d6e <TIM_ClearFlag+0xd6>
 8001d4c:	f44f 4188 	mov.w	r1, #17408	; 0x4400
 8001d50:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001d54:	428c      	cmp	r4, r1
 8001d56:	d00a      	beq.n	8001d6e <TIM_ClearFlag+0xd6>
 8001d58:	f44f 4290 	mov.w	r2, #18432	; 0x4800
 8001d5c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001d60:	4294      	cmp	r4, r2
 8001d62:	d004      	beq.n	8001d6e <TIM_ClearFlag+0xd6>
 8001d64:	4808      	ldr	r0, [pc, #32]	; (8001d88 <TIM_ClearFlag+0xf0>)
 8001d66:	f640 212b 	movw	r1, #2603	; 0xa2b
 8001d6a:	f7fe fabd 	bl	80002e8 <assert_failed>
 8001d6e:	f415 4f61 	tst.w	r5, #57600	; 0xe100
 8001d72:	d100      	bne.n	8001d76 <TIM_ClearFlag+0xde>
 8001d74:	b925      	cbnz	r5, 8001d80 <TIM_ClearFlag+0xe8>
 8001d76:	4804      	ldr	r0, [pc, #16]	; (8001d88 <TIM_ClearFlag+0xf0>)
 8001d78:	f640 212c 	movw	r1, #2604	; 0xa2c
 8001d7c:	f7fe fab4 	bl	80002e8 <assert_failed>
 8001d80:	43ed      	mvns	r5, r5
 8001d82:	b2ad      	uxth	r5, r5
 8001d84:	8225      	strh	r5, [r4, #16]
 8001d86:	bd38      	pop	{r3, r4, r5, pc}
 8001d88:	08008b60 	.word	0x08008b60

08001d8c <FLASH_UnlockBank1>:
 8001d8c:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8001d90:	f240 1123 	movw	r1, #291	; 0x123
 8001d94:	f648 12ab 	movw	r2, #35243	; 0x89ab
 8001d98:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8001d9c:	f2c4 5167 	movt	r1, #17767	; 0x4567
 8001da0:	f6cc 52ef 	movt	r2, #52719	; 0xcdef
 8001da4:	6059      	str	r1, [r3, #4]
 8001da6:	605a      	str	r2, [r3, #4]
 8001da8:	4770      	bx	lr
 8001daa:	bf00      	nop

08001dac <FLASH_LockBank1>:
 8001dac:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8001db0:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8001db4:	691a      	ldr	r2, [r3, #16]
 8001db6:	f042 0080 	orr.w	r0, r2, #128	; 0x80
 8001dba:	6118      	str	r0, [r3, #16]
 8001dbc:	4770      	bx	lr
 8001dbe:	bf00      	nop

08001dc0 <FLASH_GetBank1Status>:
 8001dc0:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8001dc4:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8001dc8:	68da      	ldr	r2, [r3, #12]
 8001dca:	07d2      	lsls	r2, r2, #31
 8001dcc:	d40b      	bmi.n	8001de6 <FLASH_GetBank1Status+0x26>
 8001dce:	68d8      	ldr	r0, [r3, #12]
 8001dd0:	0740      	lsls	r0, r0, #29
 8001dd2:	d501      	bpl.n	8001dd8 <FLASH_GetBank1Status+0x18>
 8001dd4:	2002      	movs	r0, #2
 8001dd6:	4770      	bx	lr
 8001dd8:	68d9      	ldr	r1, [r3, #12]
 8001dda:	f011 0f10 	tst.w	r1, #16
 8001dde:	bf0c      	ite	eq
 8001de0:	2004      	moveq	r0, #4
 8001de2:	2003      	movne	r0, #3
 8001de4:	4770      	bx	lr
 8001de6:	2001      	movs	r0, #1
 8001de8:	4770      	bx	lr
 8001dea:	bf00      	nop

08001dec <FLASH_WaitForLastOperation>:
 8001dec:	b510      	push	{r4, lr}
 8001dee:	4604      	mov	r4, r0
 8001df0:	f7ff ffe6 	bl	8001dc0 <FLASH_GetBank1Status>
 8001df4:	2801      	cmp	r0, #1
 8001df6:	d115      	bne.n	8001e24 <FLASH_WaitForLastOperation+0x38>
 8001df8:	b1b4      	cbz	r4, 8001e28 <FLASH_WaitForLastOperation+0x3c>
 8001dfa:	f7ff ffe1 	bl	8001dc0 <FLASH_GetBank1Status>
 8001dfe:	3c01      	subs	r4, #1
 8001e00:	2801      	cmp	r0, #1
 8001e02:	f004 0301 	and.w	r3, r4, #1
 8001e06:	d10d      	bne.n	8001e24 <FLASH_WaitForLastOperation+0x38>
 8001e08:	b174      	cbz	r4, 8001e28 <FLASH_WaitForLastOperation+0x3c>
 8001e0a:	b10b      	cbz	r3, 8001e10 <FLASH_WaitForLastOperation+0x24>
 8001e0c:	e005      	b.n	8001e1a <FLASH_WaitForLastOperation+0x2e>
 8001e0e:	b15c      	cbz	r4, 8001e28 <FLASH_WaitForLastOperation+0x3c>
 8001e10:	f7ff ffd6 	bl	8001dc0 <FLASH_GetBank1Status>
 8001e14:	3c01      	subs	r4, #1
 8001e16:	2801      	cmp	r0, #1
 8001e18:	d104      	bne.n	8001e24 <FLASH_WaitForLastOperation+0x38>
 8001e1a:	f7ff ffd1 	bl	8001dc0 <FLASH_GetBank1Status>
 8001e1e:	3c01      	subs	r4, #1
 8001e20:	2801      	cmp	r0, #1
 8001e22:	d0f4      	beq.n	8001e0e <FLASH_WaitForLastOperation+0x22>
 8001e24:	b104      	cbz	r4, 8001e28 <FLASH_WaitForLastOperation+0x3c>
 8001e26:	bd10      	pop	{r4, pc}
 8001e28:	2005      	movs	r0, #5
 8001e2a:	bd10      	pop	{r4, pc}

08001e2c <FLASH_ProgramWord>:
 8001e2c:	b570      	push	{r4, r5, r6, lr}
 8001e2e:	f64f 73fe 	movw	r3, #65534	; 0xfffe
 8001e32:	f100 4278 	add.w	r2, r0, #4160749568	; 0xf8000000
 8001e36:	f2c0 030f 	movt	r3, #15
 8001e3a:	b082      	sub	sp, #8
 8001e3c:	4604      	mov	r4, r0
 8001e3e:	2000      	movs	r0, #0
 8001e40:	429a      	cmp	r2, r3
 8001e42:	9001      	str	r0, [sp, #4]
 8001e44:	460d      	mov	r5, r1
 8001e46:	d807      	bhi.n	8001e58 <FLASH_ProgramWord+0x2c>
 8001e48:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8001e4c:	f7ff ffce 	bl	8001dec <FLASH_WaitForLastOperation>
 8001e50:	2804      	cmp	r0, #4
 8001e52:	d00c      	beq.n	8001e6e <FLASH_ProgramWord+0x42>
 8001e54:	b002      	add	sp, #8
 8001e56:	bd70      	pop	{r4, r5, r6, pc}
 8001e58:	4817      	ldr	r0, [pc, #92]	; (8001eb8 <FLASH_ProgramWord+0x8c>)
 8001e5a:	f240 21af 	movw	r1, #687	; 0x2af
 8001e5e:	f7fe fa43 	bl	80002e8 <assert_failed>
 8001e62:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8001e66:	f7ff ffc1 	bl	8001dec <FLASH_WaitForLastOperation>
 8001e6a:	2804      	cmp	r0, #4
 8001e6c:	d1f2      	bne.n	8001e54 <FLASH_ProgramWord+0x28>
 8001e6e:	f44f 5600 	mov.w	r6, #8192	; 0x2000
 8001e72:	f2c4 0602 	movt	r6, #16386	; 0x4002
 8001e76:	6931      	ldr	r1, [r6, #16]
 8001e78:	b2ab      	uxth	r3, r5
 8001e7a:	f041 0201 	orr.w	r2, r1, #1
 8001e7e:	6132      	str	r2, [r6, #16]
 8001e80:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8001e84:	8023      	strh	r3, [r4, #0]
 8001e86:	f7ff ffb1 	bl	8001dec <FLASH_WaitForLastOperation>
 8001e8a:	2804      	cmp	r0, #4
 8001e8c:	d005      	beq.n	8001e9a <FLASH_ProgramWord+0x6e>
 8001e8e:	6931      	ldr	r1, [r6, #16]
 8001e90:	f641 73fe 	movw	r3, #8190	; 0x1ffe
 8001e94:	400b      	ands	r3, r1
 8001e96:	6133      	str	r3, [r6, #16]
 8001e98:	e7dc      	b.n	8001e54 <FLASH_ProgramWord+0x28>
 8001e9a:	3402      	adds	r4, #2
 8001e9c:	9401      	str	r4, [sp, #4]
 8001e9e:	9801      	ldr	r0, [sp, #4]
 8001ea0:	0c2d      	lsrs	r5, r5, #16
 8001ea2:	8005      	strh	r5, [r0, #0]
 8001ea4:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8001ea8:	f7ff ffa0 	bl	8001dec <FLASH_WaitForLastOperation>
 8001eac:	6932      	ldr	r2, [r6, #16]
 8001eae:	f641 71fe 	movw	r1, #8190	; 0x1ffe
 8001eb2:	4011      	ands	r1, r2
 8001eb4:	6131      	str	r1, [r6, #16]
 8001eb6:	e7cd      	b.n	8001e54 <FLASH_ProgramWord+0x28>
 8001eb8:	08008b9c 	.word	0x08008b9c

08001ebc <GPIO_Init>:
 8001ebc:	f44f 6300 	mov.w	r3, #2048	; 0x800
 8001ec0:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001ec4:	4298      	cmp	r0, r3
 8001ec6:	b570      	push	{r4, r5, r6, lr}
 8001ec8:	4604      	mov	r4, r0
 8001eca:	460d      	mov	r5, r1
 8001ecc:	d027      	beq.n	8001f1e <GPIO_Init+0x62>
 8001ece:	f44f 6040 	mov.w	r0, #3072	; 0xc00
 8001ed2:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001ed6:	4284      	cmp	r4, r0
 8001ed8:	d021      	beq.n	8001f1e <GPIO_Init+0x62>
 8001eda:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 8001ede:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001ee2:	428c      	cmp	r4, r1
 8001ee4:	d01b      	beq.n	8001f1e <GPIO_Init+0x62>
 8001ee6:	f44f 52a0 	mov.w	r2, #5120	; 0x1400
 8001eea:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001eee:	4294      	cmp	r4, r2
 8001ef0:	d015      	beq.n	8001f1e <GPIO_Init+0x62>
 8001ef2:	f44f 56c0 	mov.w	r6, #6144	; 0x1800
 8001ef6:	f2c4 0601 	movt	r6, #16385	; 0x4001
 8001efa:	42b4      	cmp	r4, r6
 8001efc:	d00f      	beq.n	8001f1e <GPIO_Init+0x62>
 8001efe:	f44f 53e0 	mov.w	r3, #7168	; 0x1c00
 8001f02:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001f06:	429c      	cmp	r4, r3
 8001f08:	d009      	beq.n	8001f1e <GPIO_Init+0x62>
 8001f0a:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8001f0e:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001f12:	4284      	cmp	r4, r0
 8001f14:	d003      	beq.n	8001f1e <GPIO_Init+0x62>
 8001f16:	48ae      	ldr	r0, [pc, #696]	; (80021d0 <GPIO_Init+0x314>)
 8001f18:	21b2      	movs	r1, #178	; 0xb2
 8001f1a:	f7fe f9e5 	bl	80002e8 <assert_failed>
 8001f1e:	78e9      	ldrb	r1, [r5, #3]
 8001f20:	b189      	cbz	r1, 8001f46 <GPIO_Init+0x8a>
 8001f22:	2904      	cmp	r1, #4
 8001f24:	d00f      	beq.n	8001f46 <GPIO_Init+0x8a>
 8001f26:	2928      	cmp	r1, #40	; 0x28
 8001f28:	d00d      	beq.n	8001f46 <GPIO_Init+0x8a>
 8001f2a:	2948      	cmp	r1, #72	; 0x48
 8001f2c:	d00b      	beq.n	8001f46 <GPIO_Init+0x8a>
 8001f2e:	2914      	cmp	r1, #20
 8001f30:	d009      	beq.n	8001f46 <GPIO_Init+0x8a>
 8001f32:	2910      	cmp	r1, #16
 8001f34:	d007      	beq.n	8001f46 <GPIO_Init+0x8a>
 8001f36:	291c      	cmp	r1, #28
 8001f38:	d005      	beq.n	8001f46 <GPIO_Init+0x8a>
 8001f3a:	2918      	cmp	r1, #24
 8001f3c:	d003      	beq.n	8001f46 <GPIO_Init+0x8a>
 8001f3e:	48a4      	ldr	r0, [pc, #656]	; (80021d0 <GPIO_Init+0x314>)
 8001f40:	21b3      	movs	r1, #179	; 0xb3
 8001f42:	f7fe f9d1 	bl	80002e8 <assert_failed>
 8001f46:	882a      	ldrh	r2, [r5, #0]
 8001f48:	2a00      	cmp	r2, #0
 8001f4a:	d06c      	beq.n	8002026 <GPIO_Init+0x16a>
 8001f4c:	78eb      	ldrb	r3, [r5, #3]
 8001f4e:	f003 060f 	and.w	r6, r3, #15
 8001f52:	06db      	lsls	r3, r3, #27
 8001f54:	d461      	bmi.n	800201a <GPIO_Init+0x15e>
 8001f56:	4631      	mov	r1, r6
 8001f58:	882b      	ldrh	r3, [r5, #0]
 8001f5a:	f013 0fff 	tst.w	r3, #255	; 0xff
 8001f5e:	d02f      	beq.n	8001fc0 <GPIO_Init+0x104>
 8001f60:	f013 0001 	ands.w	r0, r3, #1
 8001f64:	6822      	ldr	r2, [r4, #0]
 8001f66:	f040 8116 	bne.w	8002196 <GPIO_Init+0x2da>
 8001f6a:	f003 0002 	and.w	r0, r3, #2
 8001f6e:	b280      	uxth	r0, r0
 8001f70:	2800      	cmp	r0, #0
 8001f72:	f040 80d4 	bne.w	800211e <GPIO_Init+0x262>
 8001f76:	f003 0004 	and.w	r0, r3, #4
 8001f7a:	b280      	uxth	r0, r0
 8001f7c:	2800      	cmp	r0, #0
 8001f7e:	f040 80b9 	bne.w	80020f4 <GPIO_Init+0x238>
 8001f82:	f003 0008 	and.w	r0, r3, #8
 8001f86:	b280      	uxth	r0, r0
 8001f88:	2800      	cmp	r0, #0
 8001f8a:	f040 80e0 	bne.w	800214e <GPIO_Init+0x292>
 8001f8e:	f003 0010 	and.w	r0, r3, #16
 8001f92:	b280      	uxth	r0, r0
 8001f94:	2800      	cmp	r0, #0
 8001f96:	f040 80e6 	bne.w	8002166 <GPIO_Init+0x2aa>
 8001f9a:	f003 0020 	and.w	r0, r3, #32
 8001f9e:	b280      	uxth	r0, r0
 8001fa0:	2800      	cmp	r0, #0
 8001fa2:	f040 80ec 	bne.w	800217e <GPIO_Init+0x2c2>
 8001fa6:	f003 0040 	and.w	r0, r3, #64	; 0x40
 8001faa:	b280      	uxth	r0, r0
 8001fac:	2800      	cmp	r0, #0
 8001fae:	f040 80c2 	bne.w	8002136 <GPIO_Init+0x27a>
 8001fb2:	f003 0080 	and.w	r0, r3, #128	; 0x80
 8001fb6:	b280      	uxth	r0, r0
 8001fb8:	2800      	cmp	r0, #0
 8001fba:	f040 80a7 	bne.w	800210c <GPIO_Init+0x250>
 8001fbe:	6022      	str	r2, [r4, #0]
 8001fc0:	2bff      	cmp	r3, #255	; 0xff
 8001fc2:	d929      	bls.n	8002018 <GPIO_Init+0x15c>
 8001fc4:	f403 7280 	and.w	r2, r3, #256	; 0x100
 8001fc8:	b290      	uxth	r0, r2
 8001fca:	6862      	ldr	r2, [r4, #4]
 8001fcc:	2800      	cmp	r0, #0
 8001fce:	d12f      	bne.n	8002030 <GPIO_Init+0x174>
 8001fd0:	f403 7000 	and.w	r0, r3, #512	; 0x200
 8001fd4:	b280      	uxth	r0, r0
 8001fd6:	2800      	cmp	r0, #0
 8001fd8:	d136      	bne.n	8002048 <GPIO_Init+0x18c>
 8001fda:	f403 6080 	and.w	r0, r3, #1024	; 0x400
 8001fde:	b280      	uxth	r0, r0
 8001fe0:	2800      	cmp	r0, #0
 8001fe2:	d13d      	bne.n	8002060 <GPIO_Init+0x1a4>
 8001fe4:	f403 6000 	and.w	r0, r3, #2048	; 0x800
 8001fe8:	b280      	uxth	r0, r0
 8001fea:	2800      	cmp	r0, #0
 8001fec:	d144      	bne.n	8002078 <GPIO_Init+0x1bc>
 8001fee:	f403 5080 	and.w	r0, r3, #4096	; 0x1000
 8001ff2:	b280      	uxth	r0, r0
 8001ff4:	2800      	cmp	r0, #0
 8001ff6:	d14b      	bne.n	8002090 <GPIO_Init+0x1d4>
 8001ff8:	f403 5000 	and.w	r0, r3, #8192	; 0x2000
 8001ffc:	b280      	uxth	r0, r0
 8001ffe:	2800      	cmp	r0, #0
 8002000:	d152      	bne.n	80020a8 <GPIO_Init+0x1ec>
 8002002:	f403 4080 	and.w	r0, r3, #16384	; 0x4000
 8002006:	b280      	uxth	r0, r0
 8002008:	2800      	cmp	r0, #0
 800200a:	d158      	bne.n	80020be <GPIO_Init+0x202>
 800200c:	f403 4300 	and.w	r3, r3, #32768	; 0x8000
 8002010:	b29b      	uxth	r3, r3
 8002012:	2b00      	cmp	r3, #0
 8002014:	d15e      	bne.n	80020d4 <GPIO_Init+0x218>
 8002016:	6062      	str	r2, [r4, #4]
 8002018:	bd70      	pop	{r4, r5, r6, pc}
 800201a:	78a9      	ldrb	r1, [r5, #2]
 800201c:	1e48      	subs	r0, r1, #1
 800201e:	2802      	cmp	r0, #2
 8002020:	d861      	bhi.n	80020e6 <GPIO_Init+0x22a>
 8002022:	4331      	orrs	r1, r6
 8002024:	e798      	b.n	8001f58 <GPIO_Init+0x9c>
 8002026:	486a      	ldr	r0, [pc, #424]	; (80021d0 <GPIO_Init+0x314>)
 8002028:	21b4      	movs	r1, #180	; 0xb4
 800202a:	f7fe f95d 	bl	80002e8 <assert_failed>
 800202e:	e78d      	b.n	8001f4c <GPIO_Init+0x90>
 8002030:	78ee      	ldrb	r6, [r5, #3]
 8002032:	f022 020f 	bic.w	r2, r2, #15
 8002036:	2e28      	cmp	r6, #40	; 0x28
 8002038:	ea41 0202 	orr.w	r2, r1, r2
 800203c:	f000 80c5 	beq.w	80021ca <GPIO_Init+0x30e>
 8002040:	2e48      	cmp	r6, #72	; 0x48
 8002042:	d1c5      	bne.n	8001fd0 <GPIO_Init+0x114>
 8002044:	6120      	str	r0, [r4, #16]
 8002046:	e7c3      	b.n	8001fd0 <GPIO_Init+0x114>
 8002048:	78ee      	ldrb	r6, [r5, #3]
 800204a:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
 800204e:	2e28      	cmp	r6, #40	; 0x28
 8002050:	ea42 1201 	orr.w	r2, r2, r1, lsl #4
 8002054:	f000 80b7 	beq.w	80021c6 <GPIO_Init+0x30a>
 8002058:	2e48      	cmp	r6, #72	; 0x48
 800205a:	d1be      	bne.n	8001fda <GPIO_Init+0x11e>
 800205c:	6120      	str	r0, [r4, #16]
 800205e:	e7bc      	b.n	8001fda <GPIO_Init+0x11e>
 8002060:	78ee      	ldrb	r6, [r5, #3]
 8002062:	f422 6270 	bic.w	r2, r2, #3840	; 0xf00
 8002066:	2e28      	cmp	r6, #40	; 0x28
 8002068:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 800206c:	f000 80a9 	beq.w	80021c2 <GPIO_Init+0x306>
 8002070:	2e48      	cmp	r6, #72	; 0x48
 8002072:	d1b7      	bne.n	8001fe4 <GPIO_Init+0x128>
 8002074:	6120      	str	r0, [r4, #16]
 8002076:	e7b5      	b.n	8001fe4 <GPIO_Init+0x128>
 8002078:	78ee      	ldrb	r6, [r5, #3]
 800207a:	f422 4270 	bic.w	r2, r2, #61440	; 0xf000
 800207e:	2e28      	cmp	r6, #40	; 0x28
 8002080:	ea42 3201 	orr.w	r2, r2, r1, lsl #12
 8002084:	f000 809b 	beq.w	80021be <GPIO_Init+0x302>
 8002088:	2e48      	cmp	r6, #72	; 0x48
 800208a:	d1b0      	bne.n	8001fee <GPIO_Init+0x132>
 800208c:	6120      	str	r0, [r4, #16]
 800208e:	e7ae      	b.n	8001fee <GPIO_Init+0x132>
 8002090:	78ee      	ldrb	r6, [r5, #3]
 8002092:	f422 2270 	bic.w	r2, r2, #983040	; 0xf0000
 8002096:	2e28      	cmp	r6, #40	; 0x28
 8002098:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
 800209c:	f000 808d 	beq.w	80021ba <GPIO_Init+0x2fe>
 80020a0:	2e48      	cmp	r6, #72	; 0x48
 80020a2:	d1a9      	bne.n	8001ff8 <GPIO_Init+0x13c>
 80020a4:	6120      	str	r0, [r4, #16]
 80020a6:	e7a7      	b.n	8001ff8 <GPIO_Init+0x13c>
 80020a8:	78ee      	ldrb	r6, [r5, #3]
 80020aa:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 80020ae:	2e28      	cmp	r6, #40	; 0x28
 80020b0:	ea42 5201 	orr.w	r2, r2, r1, lsl #20
 80020b4:	d07f      	beq.n	80021b6 <GPIO_Init+0x2fa>
 80020b6:	2e48      	cmp	r6, #72	; 0x48
 80020b8:	d1a3      	bne.n	8002002 <GPIO_Init+0x146>
 80020ba:	6120      	str	r0, [r4, #16]
 80020bc:	e7a1      	b.n	8002002 <GPIO_Init+0x146>
 80020be:	78ee      	ldrb	r6, [r5, #3]
 80020c0:	f022 6270 	bic.w	r2, r2, #251658240	; 0xf000000
 80020c4:	2e28      	cmp	r6, #40	; 0x28
 80020c6:	ea42 6201 	orr.w	r2, r2, r1, lsl #24
 80020ca:	d072      	beq.n	80021b2 <GPIO_Init+0x2f6>
 80020cc:	2e48      	cmp	r6, #72	; 0x48
 80020ce:	d19d      	bne.n	800200c <GPIO_Init+0x150>
 80020d0:	6120      	str	r0, [r4, #16]
 80020d2:	e79b      	b.n	800200c <GPIO_Init+0x150>
 80020d4:	78e8      	ldrb	r0, [r5, #3]
 80020d6:	f361 721f 	bfi	r2, r1, #28, #4
 80020da:	2828      	cmp	r0, #40	; 0x28
 80020dc:	d067      	beq.n	80021ae <GPIO_Init+0x2f2>
 80020de:	2848      	cmp	r0, #72	; 0x48
 80020e0:	bf08      	it	eq
 80020e2:	6123      	streq	r3, [r4, #16]
 80020e4:	e797      	b.n	8002016 <GPIO_Init+0x15a>
 80020e6:	21bb      	movs	r1, #187	; 0xbb
 80020e8:	4839      	ldr	r0, [pc, #228]	; (80021d0 <GPIO_Init+0x314>)
 80020ea:	f7fe f8fd 	bl	80002e8 <assert_failed>
 80020ee:	78a9      	ldrb	r1, [r5, #2]
 80020f0:	4331      	orrs	r1, r6
 80020f2:	e731      	b.n	8001f58 <GPIO_Init+0x9c>
 80020f4:	78ee      	ldrb	r6, [r5, #3]
 80020f6:	f422 6270 	bic.w	r2, r2, #3840	; 0xf00
 80020fa:	2e28      	cmp	r6, #40	; 0x28
 80020fc:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8002100:	d068      	beq.n	80021d4 <GPIO_Init+0x318>
 8002102:	2e48      	cmp	r6, #72	; 0x48
 8002104:	f47f af3d 	bne.w	8001f82 <GPIO_Init+0xc6>
 8002108:	6120      	str	r0, [r4, #16]
 800210a:	e73a      	b.n	8001f82 <GPIO_Init+0xc6>
 800210c:	78ee      	ldrb	r6, [r5, #3]
 800210e:	f361 721f 	bfi	r2, r1, #28, #4
 8002112:	2e28      	cmp	r6, #40	; 0x28
 8002114:	d064      	beq.n	80021e0 <GPIO_Init+0x324>
 8002116:	2e48      	cmp	r6, #72	; 0x48
 8002118:	bf08      	it	eq
 800211a:	6120      	streq	r0, [r4, #16]
 800211c:	e74f      	b.n	8001fbe <GPIO_Init+0x102>
 800211e:	78ee      	ldrb	r6, [r5, #3]
 8002120:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
 8002124:	2e28      	cmp	r6, #40	; 0x28
 8002126:	ea42 1201 	orr.w	r2, r2, r1, lsl #4
 800212a:	d057      	beq.n	80021dc <GPIO_Init+0x320>
 800212c:	2e48      	cmp	r6, #72	; 0x48
 800212e:	f47f af22 	bne.w	8001f76 <GPIO_Init+0xba>
 8002132:	6120      	str	r0, [r4, #16]
 8002134:	e71f      	b.n	8001f76 <GPIO_Init+0xba>
 8002136:	78ee      	ldrb	r6, [r5, #3]
 8002138:	f022 6270 	bic.w	r2, r2, #251658240	; 0xf000000
 800213c:	2e28      	cmp	r6, #40	; 0x28
 800213e:	ea42 6201 	orr.w	r2, r2, r1, lsl #24
 8002142:	d055      	beq.n	80021f0 <GPIO_Init+0x334>
 8002144:	2e48      	cmp	r6, #72	; 0x48
 8002146:	f47f af34 	bne.w	8001fb2 <GPIO_Init+0xf6>
 800214a:	6120      	str	r0, [r4, #16]
 800214c:	e731      	b.n	8001fb2 <GPIO_Init+0xf6>
 800214e:	78ee      	ldrb	r6, [r5, #3]
 8002150:	f422 4270 	bic.w	r2, r2, #61440	; 0xf000
 8002154:	2e28      	cmp	r6, #40	; 0x28
 8002156:	ea42 3201 	orr.w	r2, r2, r1, lsl #12
 800215a:	d047      	beq.n	80021ec <GPIO_Init+0x330>
 800215c:	2e48      	cmp	r6, #72	; 0x48
 800215e:	f47f af16 	bne.w	8001f8e <GPIO_Init+0xd2>
 8002162:	6120      	str	r0, [r4, #16]
 8002164:	e713      	b.n	8001f8e <GPIO_Init+0xd2>
 8002166:	78ee      	ldrb	r6, [r5, #3]
 8002168:	f422 2270 	bic.w	r2, r2, #983040	; 0xf0000
 800216c:	2e28      	cmp	r6, #40	; 0x28
 800216e:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
 8002172:	d039      	beq.n	80021e8 <GPIO_Init+0x32c>
 8002174:	2e48      	cmp	r6, #72	; 0x48
 8002176:	f47f af10 	bne.w	8001f9a <GPIO_Init+0xde>
 800217a:	6120      	str	r0, [r4, #16]
 800217c:	e70d      	b.n	8001f9a <GPIO_Init+0xde>
 800217e:	78ee      	ldrb	r6, [r5, #3]
 8002180:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 8002184:	2e28      	cmp	r6, #40	; 0x28
 8002186:	ea42 5201 	orr.w	r2, r2, r1, lsl #20
 800218a:	d02b      	beq.n	80021e4 <GPIO_Init+0x328>
 800218c:	2e48      	cmp	r6, #72	; 0x48
 800218e:	f47f af0a 	bne.w	8001fa6 <GPIO_Init+0xea>
 8002192:	6120      	str	r0, [r4, #16]
 8002194:	e707      	b.n	8001fa6 <GPIO_Init+0xea>
 8002196:	78ee      	ldrb	r6, [r5, #3]
 8002198:	f022 020f 	bic.w	r2, r2, #15
 800219c:	2e28      	cmp	r6, #40	; 0x28
 800219e:	ea41 0202 	orr.w	r2, r1, r2
 80021a2:	d019      	beq.n	80021d8 <GPIO_Init+0x31c>
 80021a4:	2e48      	cmp	r6, #72	; 0x48
 80021a6:	f47f aee0 	bne.w	8001f6a <GPIO_Init+0xae>
 80021aa:	6120      	str	r0, [r4, #16]
 80021ac:	e6dd      	b.n	8001f6a <GPIO_Init+0xae>
 80021ae:	6163      	str	r3, [r4, #20]
 80021b0:	e731      	b.n	8002016 <GPIO_Init+0x15a>
 80021b2:	6160      	str	r0, [r4, #20]
 80021b4:	e72a      	b.n	800200c <GPIO_Init+0x150>
 80021b6:	6160      	str	r0, [r4, #20]
 80021b8:	e723      	b.n	8002002 <GPIO_Init+0x146>
 80021ba:	6160      	str	r0, [r4, #20]
 80021bc:	e71c      	b.n	8001ff8 <GPIO_Init+0x13c>
 80021be:	6160      	str	r0, [r4, #20]
 80021c0:	e715      	b.n	8001fee <GPIO_Init+0x132>
 80021c2:	6160      	str	r0, [r4, #20]
 80021c4:	e70e      	b.n	8001fe4 <GPIO_Init+0x128>
 80021c6:	6160      	str	r0, [r4, #20]
 80021c8:	e707      	b.n	8001fda <GPIO_Init+0x11e>
 80021ca:	6160      	str	r0, [r4, #20]
 80021cc:	e700      	b.n	8001fd0 <GPIO_Init+0x114>
 80021ce:	bf00      	nop
 80021d0:	08008bd8 	.word	0x08008bd8
 80021d4:	6160      	str	r0, [r4, #20]
 80021d6:	e6d4      	b.n	8001f82 <GPIO_Init+0xc6>
 80021d8:	6160      	str	r0, [r4, #20]
 80021da:	e6c6      	b.n	8001f6a <GPIO_Init+0xae>
 80021dc:	6160      	str	r0, [r4, #20]
 80021de:	e6ca      	b.n	8001f76 <GPIO_Init+0xba>
 80021e0:	6160      	str	r0, [r4, #20]
 80021e2:	e6ec      	b.n	8001fbe <GPIO_Init+0x102>
 80021e4:	6160      	str	r0, [r4, #20]
 80021e6:	e6de      	b.n	8001fa6 <GPIO_Init+0xea>
 80021e8:	6160      	str	r0, [r4, #20]
 80021ea:	e6d6      	b.n	8001f9a <GPIO_Init+0xde>
 80021ec:	6160      	str	r0, [r4, #20]
 80021ee:	e6ce      	b.n	8001f8e <GPIO_Init+0xd2>
 80021f0:	6160      	str	r0, [r4, #20]
 80021f2:	e6de      	b.n	8001fb2 <GPIO_Init+0xf6>

080021f4 <GPIO_ReadInputDataBit>:
 80021f4:	b538      	push	{r3, r4, r5, lr}
 80021f6:	f44f 6300 	mov.w	r3, #2048	; 0x800
 80021fa:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80021fe:	4298      	cmp	r0, r3
 8002200:	4604      	mov	r4, r0
 8002202:	460d      	mov	r5, r1
 8002204:	d028      	beq.n	8002258 <GPIO_ReadInputDataBit+0x64>
 8002206:	f44f 6040 	mov.w	r0, #3072	; 0xc00
 800220a:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800220e:	4284      	cmp	r4, r0
 8002210:	d022      	beq.n	8002258 <GPIO_ReadInputDataBit+0x64>
 8002212:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 8002216:	f2c4 0101 	movt	r1, #16385	; 0x4001
 800221a:	428c      	cmp	r4, r1
 800221c:	d01c      	beq.n	8002258 <GPIO_ReadInputDataBit+0x64>
 800221e:	f44f 52a0 	mov.w	r2, #5120	; 0x1400
 8002222:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8002226:	4294      	cmp	r4, r2
 8002228:	d016      	beq.n	8002258 <GPIO_ReadInputDataBit+0x64>
 800222a:	f44f 53c0 	mov.w	r3, #6144	; 0x1800
 800222e:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8002232:	429c      	cmp	r4, r3
 8002234:	d010      	beq.n	8002258 <GPIO_ReadInputDataBit+0x64>
 8002236:	f44f 50e0 	mov.w	r0, #7168	; 0x1c00
 800223a:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800223e:	4284      	cmp	r4, r0
 8002240:	d00a      	beq.n	8002258 <GPIO_ReadInputDataBit+0x64>
 8002242:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8002246:	f2c4 0101 	movt	r1, #16385	; 0x4001
 800224a:	428c      	cmp	r4, r1
 800224c:	d004      	beq.n	8002258 <GPIO_ReadInputDataBit+0x64>
 800224e:	481b      	ldr	r0, [pc, #108]	; (80022bc <GPIO_ReadInputDataBit+0xc8>)
 8002250:	f44f 718f 	mov.w	r1, #286	; 0x11e
 8002254:	f7fe f848 	bl	80002e8 <assert_failed>
 8002258:	1e6a      	subs	r2, r5, #1
 800225a:	2a01      	cmp	r2, #1
 800225c:	d928      	bls.n	80022b0 <GPIO_ReadInputDataBit+0xbc>
 800225e:	2d04      	cmp	r5, #4
 8002260:	d026      	beq.n	80022b0 <GPIO_ReadInputDataBit+0xbc>
 8002262:	2d08      	cmp	r5, #8
 8002264:	d024      	beq.n	80022b0 <GPIO_ReadInputDataBit+0xbc>
 8002266:	2d10      	cmp	r5, #16
 8002268:	d022      	beq.n	80022b0 <GPIO_ReadInputDataBit+0xbc>
 800226a:	2d20      	cmp	r5, #32
 800226c:	d020      	beq.n	80022b0 <GPIO_ReadInputDataBit+0xbc>
 800226e:	2d40      	cmp	r5, #64	; 0x40
 8002270:	d01e      	beq.n	80022b0 <GPIO_ReadInputDataBit+0xbc>
 8002272:	2d80      	cmp	r5, #128	; 0x80
 8002274:	d01c      	beq.n	80022b0 <GPIO_ReadInputDataBit+0xbc>
 8002276:	f5b5 7f80 	cmp.w	r5, #256	; 0x100
 800227a:	d019      	beq.n	80022b0 <GPIO_ReadInputDataBit+0xbc>
 800227c:	f5b5 7f00 	cmp.w	r5, #512	; 0x200
 8002280:	d016      	beq.n	80022b0 <GPIO_ReadInputDataBit+0xbc>
 8002282:	f5b5 6f80 	cmp.w	r5, #1024	; 0x400
 8002286:	d013      	beq.n	80022b0 <GPIO_ReadInputDataBit+0xbc>
 8002288:	f5b5 6f00 	cmp.w	r5, #2048	; 0x800
 800228c:	d010      	beq.n	80022b0 <GPIO_ReadInputDataBit+0xbc>
 800228e:	f5b5 5f80 	cmp.w	r5, #4096	; 0x1000
 8002292:	d00d      	beq.n	80022b0 <GPIO_ReadInputDataBit+0xbc>
 8002294:	f5b5 5f00 	cmp.w	r5, #8192	; 0x2000
 8002298:	d00a      	beq.n	80022b0 <GPIO_ReadInputDataBit+0xbc>
 800229a:	f5b5 4f80 	cmp.w	r5, #16384	; 0x4000
 800229e:	d007      	beq.n	80022b0 <GPIO_ReadInputDataBit+0xbc>
 80022a0:	f5b5 4f00 	cmp.w	r5, #32768	; 0x8000
 80022a4:	d004      	beq.n	80022b0 <GPIO_ReadInputDataBit+0xbc>
 80022a6:	4805      	ldr	r0, [pc, #20]	; (80022bc <GPIO_ReadInputDataBit+0xc8>)
 80022a8:	f240 111f 	movw	r1, #287	; 0x11f
 80022ac:	f7fe f81c 	bl	80002e8 <assert_failed>
 80022b0:	68a3      	ldr	r3, [r4, #8]
 80022b2:	421d      	tst	r5, r3
 80022b4:	bf0c      	ite	eq
 80022b6:	2000      	moveq	r0, #0
 80022b8:	2001      	movne	r0, #1
 80022ba:	bd38      	pop	{r3, r4, r5, pc}
 80022bc:	08008bd8 	.word	0x08008bd8

080022c0 <GPIO_SetBits>:
 80022c0:	b538      	push	{r3, r4, r5, lr}
 80022c2:	f44f 6300 	mov.w	r3, #2048	; 0x800
 80022c6:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80022ca:	4298      	cmp	r0, r3
 80022cc:	4604      	mov	r4, r0
 80022ce:	460d      	mov	r5, r1
 80022d0:	d028      	beq.n	8002324 <GPIO_SetBits+0x64>
 80022d2:	f44f 6040 	mov.w	r0, #3072	; 0xc00
 80022d6:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80022da:	4284      	cmp	r4, r0
 80022dc:	d022      	beq.n	8002324 <GPIO_SetBits+0x64>
 80022de:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 80022e2:	f2c4 0101 	movt	r1, #16385	; 0x4001
 80022e6:	428c      	cmp	r4, r1
 80022e8:	d01c      	beq.n	8002324 <GPIO_SetBits+0x64>
 80022ea:	f44f 52a0 	mov.w	r2, #5120	; 0x1400
 80022ee:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80022f2:	4294      	cmp	r4, r2
 80022f4:	d016      	beq.n	8002324 <GPIO_SetBits+0x64>
 80022f6:	f44f 53c0 	mov.w	r3, #6144	; 0x1800
 80022fa:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80022fe:	429c      	cmp	r4, r3
 8002300:	d010      	beq.n	8002324 <GPIO_SetBits+0x64>
 8002302:	f44f 50e0 	mov.w	r0, #7168	; 0x1c00
 8002306:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800230a:	4284      	cmp	r4, r0
 800230c:	d00a      	beq.n	8002324 <GPIO_SetBits+0x64>
 800230e:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8002312:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8002316:	428c      	cmp	r4, r1
 8002318:	d004      	beq.n	8002324 <GPIO_SetBits+0x64>
 800231a:	4806      	ldr	r0, [pc, #24]	; (8002334 <GPIO_SetBits+0x74>)
 800231c:	f240 1169 	movw	r1, #361	; 0x169
 8002320:	f7fd ffe2 	bl	80002e8 <assert_failed>
 8002324:	b925      	cbnz	r5, 8002330 <GPIO_SetBits+0x70>
 8002326:	4803      	ldr	r0, [pc, #12]	; (8002334 <GPIO_SetBits+0x74>)
 8002328:	f44f 71b5 	mov.w	r1, #362	; 0x16a
 800232c:	f7fd ffdc 	bl	80002e8 <assert_failed>
 8002330:	6125      	str	r5, [r4, #16]
 8002332:	bd38      	pop	{r3, r4, r5, pc}
 8002334:	08008bd8 	.word	0x08008bd8

08002338 <GPIO_ResetBits>:
 8002338:	b538      	push	{r3, r4, r5, lr}
 800233a:	f44f 6300 	mov.w	r3, #2048	; 0x800
 800233e:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8002342:	4298      	cmp	r0, r3
 8002344:	4604      	mov	r4, r0
 8002346:	460d      	mov	r5, r1
 8002348:	d028      	beq.n	800239c <GPIO_ResetBits+0x64>
 800234a:	f44f 6040 	mov.w	r0, #3072	; 0xc00
 800234e:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8002352:	4284      	cmp	r4, r0
 8002354:	d022      	beq.n	800239c <GPIO_ResetBits+0x64>
 8002356:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 800235a:	f2c4 0101 	movt	r1, #16385	; 0x4001
 800235e:	428c      	cmp	r4, r1
 8002360:	d01c      	beq.n	800239c <GPIO_ResetBits+0x64>
 8002362:	f44f 52a0 	mov.w	r2, #5120	; 0x1400
 8002366:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800236a:	4294      	cmp	r4, r2
 800236c:	d016      	beq.n	800239c <GPIO_ResetBits+0x64>
 800236e:	f44f 53c0 	mov.w	r3, #6144	; 0x1800
 8002372:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8002376:	429c      	cmp	r4, r3
 8002378:	d010      	beq.n	800239c <GPIO_ResetBits+0x64>
 800237a:	f44f 50e0 	mov.w	r0, #7168	; 0x1c00
 800237e:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8002382:	4284      	cmp	r4, r0
 8002384:	d00a      	beq.n	800239c <GPIO_ResetBits+0x64>
 8002386:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 800238a:	f2c4 0101 	movt	r1, #16385	; 0x4001
 800238e:	428c      	cmp	r4, r1
 8002390:	d004      	beq.n	800239c <GPIO_ResetBits+0x64>
 8002392:	4806      	ldr	r0, [pc, #24]	; (80023ac <GPIO_ResetBits+0x74>)
 8002394:	f240 1179 	movw	r1, #377	; 0x179
 8002398:	f7fd ffa6 	bl	80002e8 <assert_failed>
 800239c:	b925      	cbnz	r5, 80023a8 <GPIO_ResetBits+0x70>
 800239e:	4803      	ldr	r0, [pc, #12]	; (80023ac <GPIO_ResetBits+0x74>)
 80023a0:	f44f 71bd 	mov.w	r1, #378	; 0x17a
 80023a4:	f7fd ffa0 	bl	80002e8 <assert_failed>
 80023a8:	6165      	str	r5, [r4, #20]
 80023aa:	bd38      	pop	{r3, r4, r5, pc}
 80023ac:	08008bd8 	.word	0x08008bd8

080023b0 <USART_Init>:
 80023b0:	b570      	push	{r4, r5, r6, lr}
 80023b2:	f44f 5360 	mov.w	r3, #14336	; 0x3800
 80023b6:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80023ba:	4298      	cmp	r0, r3
 80023bc:	b086      	sub	sp, #24
 80023be:	4604      	mov	r4, r0
 80023c0:	460d      	mov	r5, r1
 80023c2:	d01b      	beq.n	80023fc <USART_Init+0x4c>
 80023c4:	f44f 4088 	mov.w	r0, #17408	; 0x4400
 80023c8:	f2c4 0000 	movt	r0, #16384	; 0x4000
 80023cc:	4284      	cmp	r4, r0
 80023ce:	d015      	beq.n	80023fc <USART_Init+0x4c>
 80023d0:	f44f 4190 	mov.w	r1, #18432	; 0x4800
 80023d4:	f2c4 0100 	movt	r1, #16384	; 0x4000
 80023d8:	428c      	cmp	r4, r1
 80023da:	d00f      	beq.n	80023fc <USART_Init+0x4c>
 80023dc:	f44f 4298 	mov.w	r2, #19456	; 0x4c00
 80023e0:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80023e4:	4294      	cmp	r4, r2
 80023e6:	d009      	beq.n	80023fc <USART_Init+0x4c>
 80023e8:	f44f 46a0 	mov.w	r6, #20480	; 0x5000
 80023ec:	f2c4 0600 	movt	r6, #16384	; 0x4000
 80023f0:	42b4      	cmp	r4, r6
 80023f2:	d003      	beq.n	80023fc <USART_Init+0x4c>
 80023f4:	4867      	ldr	r0, [pc, #412]	; (8002594 <USART_Init+0x1e4>)
 80023f6:	21b8      	movs	r1, #184	; 0xb8
 80023f8:	f7fd ff76 	bl	80002e8 <assert_failed>
 80023fc:	6828      	ldr	r0, [r5, #0]
 80023fe:	f64a 231f 	movw	r3, #43551	; 0xaa1f
 8002402:	1e41      	subs	r1, r0, #1
 8002404:	f2c0 0344 	movt	r3, #68	; 0x44
 8002408:	4299      	cmp	r1, r3
 800240a:	f200 80ac 	bhi.w	8002566 <USART_Init+0x1b6>
 800240e:	88aa      	ldrh	r2, [r5, #4]
 8002410:	b132      	cbz	r2, 8002420 <USART_Init+0x70>
 8002412:	f5b2 5f80 	cmp.w	r2, #4096	; 0x1000
 8002416:	d003      	beq.n	8002420 <USART_Init+0x70>
 8002418:	485e      	ldr	r0, [pc, #376]	; (8002594 <USART_Init+0x1e4>)
 800241a:	21ba      	movs	r1, #186	; 0xba
 800241c:	f7fd ff64 	bl	80002e8 <assert_failed>
 8002420:	88ee      	ldrh	r6, [r5, #6]
 8002422:	b166      	cbz	r6, 800243e <USART_Init+0x8e>
 8002424:	f5b6 5f80 	cmp.w	r6, #4096	; 0x1000
 8002428:	d009      	beq.n	800243e <USART_Init+0x8e>
 800242a:	f5b6 5f00 	cmp.w	r6, #8192	; 0x2000
 800242e:	d006      	beq.n	800243e <USART_Init+0x8e>
 8002430:	f5b6 5f40 	cmp.w	r6, #12288	; 0x3000
 8002434:	d003      	beq.n	800243e <USART_Init+0x8e>
 8002436:	4857      	ldr	r0, [pc, #348]	; (8002594 <USART_Init+0x1e4>)
 8002438:	21bb      	movs	r1, #187	; 0xbb
 800243a:	f7fd ff55 	bl	80002e8 <assert_failed>
 800243e:	8928      	ldrh	r0, [r5, #8]
 8002440:	b148      	cbz	r0, 8002456 <USART_Init+0xa6>
 8002442:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
 8002446:	d006      	beq.n	8002456 <USART_Init+0xa6>
 8002448:	f5b0 6fc0 	cmp.w	r0, #1536	; 0x600
 800244c:	d003      	beq.n	8002456 <USART_Init+0xa6>
 800244e:	4851      	ldr	r0, [pc, #324]	; (8002594 <USART_Init+0x1e4>)
 8002450:	21bc      	movs	r1, #188	; 0xbc
 8002452:	f7fd ff49 	bl	80002e8 <assert_failed>
 8002456:	8969      	ldrh	r1, [r5, #10]
 8002458:	f64f 73f3 	movw	r3, #65523	; 0xfff3
 800245c:	400b      	ands	r3, r1
 800245e:	bb4b      	cbnz	r3, 80024b4 <USART_Init+0x104>
 8002460:	b341      	cbz	r1, 80024b4 <USART_Init+0x104>
 8002462:	89ae      	ldrh	r6, [r5, #12]
 8002464:	b36e      	cbz	r6, 80024c2 <USART_Init+0x112>
 8002466:	f5b6 7f80 	cmp.w	r6, #256	; 0x100
 800246a:	d00b      	beq.n	8002484 <USART_Init+0xd4>
 800246c:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
 8002470:	d008      	beq.n	8002484 <USART_Init+0xd4>
 8002472:	f5b6 7f40 	cmp.w	r6, #768	; 0x300
 8002476:	d005      	beq.n	8002484 <USART_Init+0xd4>
 8002478:	4846      	ldr	r0, [pc, #280]	; (8002594 <USART_Init+0x1e4>)
 800247a:	21be      	movs	r1, #190	; 0xbe
 800247c:	f7fd ff34 	bl	80002e8 <assert_failed>
 8002480:	89ae      	ldrh	r6, [r5, #12]
 8002482:	b1f6      	cbz	r6, 80024c2 <USART_Init+0x112>
 8002484:	f44f 5260 	mov.w	r2, #14336	; 0x3800
 8002488:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800248c:	4294      	cmp	r4, r2
 800248e:	d018      	beq.n	80024c2 <USART_Init+0x112>
 8002490:	f44f 4088 	mov.w	r0, #17408	; 0x4400
 8002494:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8002498:	4284      	cmp	r4, r0
 800249a:	d012      	beq.n	80024c2 <USART_Init+0x112>
 800249c:	f44f 4190 	mov.w	r1, #18432	; 0x4800
 80024a0:	f2c4 0100 	movt	r1, #16384	; 0x4000
 80024a4:	428c      	cmp	r4, r1
 80024a6:	d00c      	beq.n	80024c2 <USART_Init+0x112>
 80024a8:	21c2      	movs	r1, #194	; 0xc2
 80024aa:	483a      	ldr	r0, [pc, #232]	; (8002594 <USART_Init+0x1e4>)
 80024ac:	f7fd ff1c 	bl	80002e8 <assert_failed>
 80024b0:	89a9      	ldrh	r1, [r5, #12]
 80024b2:	e007      	b.n	80024c4 <USART_Init+0x114>
 80024b4:	4837      	ldr	r0, [pc, #220]	; (8002594 <USART_Init+0x1e4>)
 80024b6:	21bd      	movs	r1, #189	; 0xbd
 80024b8:	f7fd ff16 	bl	80002e8 <assert_failed>
 80024bc:	89ae      	ldrh	r6, [r5, #12]
 80024be:	2e00      	cmp	r6, #0
 80024c0:	d1d1      	bne.n	8002466 <USART_Init+0xb6>
 80024c2:	4631      	mov	r1, r6
 80024c4:	8a26      	ldrh	r6, [r4, #16]
 80024c6:	88eb      	ldrh	r3, [r5, #6]
 80024c8:	f426 5240 	bic.w	r2, r6, #12288	; 0x3000
 80024cc:	0410      	lsls	r0, r2, #16
 80024ce:	0c06      	lsrs	r6, r0, #16
 80024d0:	431e      	orrs	r6, r3
 80024d2:	8226      	strh	r6, [r4, #16]
 80024d4:	89a3      	ldrh	r3, [r4, #12]
 80024d6:	88aa      	ldrh	r2, [r5, #4]
 80024d8:	892e      	ldrh	r6, [r5, #8]
 80024da:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 80024de:	8968      	ldrh	r0, [r5, #10]
 80024e0:	f023 030c 	bic.w	r3, r3, #12
 80024e4:	4316      	orrs	r6, r2
 80024e6:	041a      	lsls	r2, r3, #16
 80024e8:	4306      	orrs	r6, r0
 80024ea:	0c10      	lsrs	r0, r2, #16
 80024ec:	ea46 0300 	orr.w	r3, r6, r0
 80024f0:	b29e      	uxth	r6, r3
 80024f2:	81a6      	strh	r6, [r4, #12]
 80024f4:	8aa2      	ldrh	r2, [r4, #20]
 80024f6:	a801      	add	r0, sp, #4
 80024f8:	f422 7340 	bic.w	r3, r2, #768	; 0x300
 80024fc:	041e      	lsls	r6, r3, #16
 80024fe:	0c32      	lsrs	r2, r6, #16
 8002500:	4311      	orrs	r1, r2
 8002502:	b28b      	uxth	r3, r1
 8002504:	82a3      	strh	r3, [r4, #20]
 8002506:	f7fe faa1 	bl	8000a4c <RCC_GetClocksFreq>
 800250a:	f44f 5660 	mov.w	r6, #14336	; 0x3800
 800250e:	89a0      	ldrh	r0, [r4, #12]
 8002510:	f2c4 0601 	movt	r6, #16385	; 0x4001
 8002514:	42b4      	cmp	r4, r6
 8002516:	b202      	sxth	r2, r0
 8002518:	bf0c      	ite	eq
 800251a:	9e04      	ldreq	r6, [sp, #16]
 800251c:	9e03      	ldrne	r6, [sp, #12]
 800251e:	2a00      	cmp	r2, #0
 8002520:	db26      	blt.n	8002570 <USART_Init+0x1c0>
 8002522:	682d      	ldr	r5, [r5, #0]
 8002524:	eb06 0186 	add.w	r1, r6, r6, lsl #2
 8002528:	eb01 0381 	add.w	r3, r1, r1, lsl #2
 800252c:	00ae      	lsls	r6, r5, #2
 800252e:	fbb3 f1f6 	udiv	r1, r3, r6
 8002532:	f248 531f 	movw	r3, #34079	; 0x851f
 8002536:	f2c5 13eb 	movt	r3, #20971	; 0x51eb
 800253a:	fba3 0601 	umull	r0, r6, r3, r1
 800253e:	89a0      	ldrh	r0, [r4, #12]
 8002540:	0972      	lsrs	r2, r6, #5
 8002542:	b200      	sxth	r0, r0
 8002544:	2564      	movs	r5, #100	; 0x64
 8002546:	0116      	lsls	r6, r2, #4
 8002548:	2800      	cmp	r0, #0
 800254a:	fb02 1115 	mls	r1, r2, r5, r1
 800254e:	db18      	blt.n	8002582 <USART_Init+0x1d2>
 8002550:	010a      	lsls	r2, r1, #4
 8002552:	3232      	adds	r2, #50	; 0x32
 8002554:	fba3 0302 	umull	r0, r3, r3, r2
 8002558:	f3c3 1043 	ubfx	r0, r3, #5, #4
 800255c:	4330      	orrs	r0, r6
 800255e:	b283      	uxth	r3, r0
 8002560:	8123      	strh	r3, [r4, #8]
 8002562:	b006      	add	sp, #24
 8002564:	bd70      	pop	{r4, r5, r6, pc}
 8002566:	480b      	ldr	r0, [pc, #44]	; (8002594 <USART_Init+0x1e4>)
 8002568:	21b9      	movs	r1, #185	; 0xb9
 800256a:	f7fd febd 	bl	80002e8 <assert_failed>
 800256e:	e74e      	b.n	800240e <USART_Init+0x5e>
 8002570:	6828      	ldr	r0, [r5, #0]
 8002572:	eb06 0286 	add.w	r2, r6, r6, lsl #2
 8002576:	eb02 0582 	add.w	r5, r2, r2, lsl #2
 800257a:	0043      	lsls	r3, r0, #1
 800257c:	fbb5 f1f3 	udiv	r1, r5, r3
 8002580:	e7d7      	b.n	8002532 <USART_Init+0x182>
 8002582:	00c9      	lsls	r1, r1, #3
 8002584:	3132      	adds	r1, #50	; 0x32
 8002586:	fba3 1201 	umull	r1, r2, r3, r1
 800258a:	f3c2 1042 	ubfx	r0, r2, #5, #3
 800258e:	4330      	orrs	r0, r6
 8002590:	e7e5      	b.n	800255e <USART_Init+0x1ae>
 8002592:	bf00      	nop
 8002594:	08008c14 	.word	0x08008c14

08002598 <USART_Cmd>:
 8002598:	b538      	push	{r3, r4, r5, lr}
 800259a:	f44f 5360 	mov.w	r3, #14336	; 0x3800
 800259e:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80025a2:	4298      	cmp	r0, r3
 80025a4:	4604      	mov	r4, r0
 80025a6:	460d      	mov	r5, r1
 80025a8:	d01c      	beq.n	80025e4 <USART_Cmd+0x4c>
 80025aa:	f44f 4088 	mov.w	r0, #17408	; 0x4400
 80025ae:	f2c4 0000 	movt	r0, #16384	; 0x4000
 80025b2:	4284      	cmp	r4, r0
 80025b4:	d016      	beq.n	80025e4 <USART_Cmd+0x4c>
 80025b6:	f44f 4190 	mov.w	r1, #18432	; 0x4800
 80025ba:	f2c4 0100 	movt	r1, #16384	; 0x4000
 80025be:	428c      	cmp	r4, r1
 80025c0:	d010      	beq.n	80025e4 <USART_Cmd+0x4c>
 80025c2:	f44f 4298 	mov.w	r2, #19456	; 0x4c00
 80025c6:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80025ca:	4294      	cmp	r4, r2
 80025cc:	d00a      	beq.n	80025e4 <USART_Cmd+0x4c>
 80025ce:	f44f 43a0 	mov.w	r3, #20480	; 0x5000
 80025d2:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80025d6:	429c      	cmp	r4, r3
 80025d8:	d004      	beq.n	80025e4 <USART_Cmd+0x4c>
 80025da:	480d      	ldr	r0, [pc, #52]	; (8002610 <USART_Cmd+0x78>)
 80025dc:	f44f 71b1 	mov.w	r1, #354	; 0x162
 80025e0:	f7fd fe82 	bl	80002e8 <assert_failed>
 80025e4:	2d01      	cmp	r5, #1
 80025e6:	d90a      	bls.n	80025fe <USART_Cmd+0x66>
 80025e8:	4809      	ldr	r0, [pc, #36]	; (8002610 <USART_Cmd+0x78>)
 80025ea:	f240 1163 	movw	r1, #355	; 0x163
 80025ee:	f7fd fe7b 	bl	80002e8 <assert_failed>
 80025f2:	89a0      	ldrh	r0, [r4, #12]
 80025f4:	b281      	uxth	r1, r0
 80025f6:	f441 5200 	orr.w	r2, r1, #8192	; 0x2000
 80025fa:	81a2      	strh	r2, [r4, #12]
 80025fc:	bd38      	pop	{r3, r4, r5, pc}
 80025fe:	2d00      	cmp	r5, #0
 8002600:	d1f7      	bne.n	80025f2 <USART_Cmd+0x5a>
 8002602:	89a0      	ldrh	r0, [r4, #12]
 8002604:	f420 5100 	bic.w	r1, r0, #8192	; 0x2000
 8002608:	040a      	lsls	r2, r1, #16
 800260a:	0c13      	lsrs	r3, r2, #16
 800260c:	81a3      	strh	r3, [r4, #12]
 800260e:	bd38      	pop	{r3, r4, r5, pc}
 8002610:	08008c14 	.word	0x08008c14

08002614 <USART_ITConfig>:
 8002614:	f44f 5360 	mov.w	r3, #14336	; 0x3800
 8002618:	f2c4 0301 	movt	r3, #16385	; 0x4001
 800261c:	4298      	cmp	r0, r3
 800261e:	b570      	push	{r4, r5, r6, lr}
 8002620:	4605      	mov	r5, r0
 8002622:	460c      	mov	r4, r1
 8002624:	4616      	mov	r6, r2
 8002626:	d01c      	beq.n	8002662 <USART_ITConfig+0x4e>
 8002628:	f44f 4088 	mov.w	r0, #17408	; 0x4400
 800262c:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8002630:	4285      	cmp	r5, r0
 8002632:	d016      	beq.n	8002662 <USART_ITConfig+0x4e>
 8002634:	f44f 4190 	mov.w	r1, #18432	; 0x4800
 8002638:	f2c4 0100 	movt	r1, #16384	; 0x4000
 800263c:	428d      	cmp	r5, r1
 800263e:	d010      	beq.n	8002662 <USART_ITConfig+0x4e>
 8002640:	f44f 4298 	mov.w	r2, #19456	; 0x4c00
 8002644:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8002648:	4295      	cmp	r5, r2
 800264a:	d00a      	beq.n	8002662 <USART_ITConfig+0x4e>
 800264c:	f44f 43a0 	mov.w	r3, #20480	; 0x5000
 8002650:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8002654:	429d      	cmp	r5, r3
 8002656:	d004      	beq.n	8002662 <USART_ITConfig+0x4e>
 8002658:	4833      	ldr	r0, [pc, #204]	; (8002728 <USART_ITConfig+0x114>)
 800265a:	f240 1189 	movw	r1, #393	; 0x189
 800265e:	f7fd fe43 	bl	80002e8 <assert_failed>
 8002662:	2c28      	cmp	r4, #40	; 0x28
 8002664:	d01e      	beq.n	80026a4 <USART_ITConfig+0x90>
 8002666:	f240 7027 	movw	r0, #1831	; 0x727
 800266a:	4284      	cmp	r4, r0
 800266c:	d01a      	beq.n	80026a4 <USART_ITConfig+0x90>
 800266e:	f240 6126 	movw	r1, #1574	; 0x626
 8002672:	428c      	cmp	r4, r1
 8002674:	d016      	beq.n	80026a4 <USART_ITConfig+0x90>
 8002676:	f240 5225 	movw	r2, #1317	; 0x525
 800267a:	4294      	cmp	r4, r2
 800267c:	d012      	beq.n	80026a4 <USART_ITConfig+0x90>
 800267e:	f240 4324 	movw	r3, #1060	; 0x424
 8002682:	429c      	cmp	r4, r3
 8002684:	d00e      	beq.n	80026a4 <USART_ITConfig+0x90>
 8002686:	f640 0046 	movw	r0, #2118	; 0x846
 800268a:	4284      	cmp	r4, r0
 800268c:	d00a      	beq.n	80026a4 <USART_ITConfig+0x90>
 800268e:	f500 7192 	add.w	r1, r0, #292	; 0x124
 8002692:	428c      	cmp	r4, r1
 8002694:	d006      	beq.n	80026a4 <USART_ITConfig+0x90>
 8002696:	2c60      	cmp	r4, #96	; 0x60
 8002698:	d004      	beq.n	80026a4 <USART_ITConfig+0x90>
 800269a:	4823      	ldr	r0, [pc, #140]	; (8002728 <USART_ITConfig+0x114>)
 800269c:	f44f 71c5 	mov.w	r1, #394	; 0x18a
 80026a0:	f7fd fe22 	bl	80002e8 <assert_failed>
 80026a4:	2e01      	cmp	r6, #1
 80026a6:	d904      	bls.n	80026b2 <USART_ITConfig+0x9e>
 80026a8:	481f      	ldr	r0, [pc, #124]	; (8002728 <USART_ITConfig+0x114>)
 80026aa:	f240 118b 	movw	r1, #395	; 0x18b
 80026ae:	f7fd fe1b 	bl	80002e8 <assert_failed>
 80026b2:	f640 126a 	movw	r2, #2410	; 0x96a
 80026b6:	4294      	cmp	r4, r2
 80026b8:	d01b      	beq.n	80026f2 <USART_ITConfig+0xde>
 80026ba:	f004 031f 	and.w	r3, r4, #31
 80026be:	2001      	movs	r0, #1
 80026c0:	f3c4 1442 	ubfx	r4, r4, #5, #3
 80026c4:	4284      	cmp	r4, r0
 80026c6:	fa00 f103 	lsl.w	r1, r0, r3
 80026ca:	d010      	beq.n	80026ee <USART_ITConfig+0xda>
 80026cc:	2c02      	cmp	r4, #2
 80026ce:	d006      	beq.n	80026de <USART_ITConfig+0xca>
 80026d0:	3514      	adds	r5, #20
 80026d2:	6828      	ldr	r0, [r5, #0]
 80026d4:	b93e      	cbnz	r6, 80026e6 <USART_ITConfig+0xd2>
 80026d6:	ea20 0201 	bic.w	r2, r0, r1
 80026da:	602a      	str	r2, [r5, #0]
 80026dc:	bd70      	pop	{r4, r5, r6, pc}
 80026de:	3510      	adds	r5, #16
 80026e0:	6828      	ldr	r0, [r5, #0]
 80026e2:	2e00      	cmp	r6, #0
 80026e4:	d0f7      	beq.n	80026d6 <USART_ITConfig+0xc2>
 80026e6:	ea40 0301 	orr.w	r3, r0, r1
 80026ea:	602b      	str	r3, [r5, #0]
 80026ec:	bd70      	pop	{r4, r5, r6, pc}
 80026ee:	350c      	adds	r5, #12
 80026f0:	e7ef      	b.n	80026d2 <USART_ITConfig+0xbe>
 80026f2:	f44f 5160 	mov.w	r1, #14336	; 0x3800
 80026f6:	f2c4 0101 	movt	r1, #16385	; 0x4001
 80026fa:	428d      	cmp	r5, r1
 80026fc:	d010      	beq.n	8002720 <USART_ITConfig+0x10c>
 80026fe:	f44f 4288 	mov.w	r2, #17408	; 0x4400
 8002702:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8002706:	4295      	cmp	r5, r2
 8002708:	d00a      	beq.n	8002720 <USART_ITConfig+0x10c>
 800270a:	f44f 4390 	mov.w	r3, #18432	; 0x4800
 800270e:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8002712:	429d      	cmp	r5, r3
 8002714:	d004      	beq.n	8002720 <USART_ITConfig+0x10c>
 8002716:	4804      	ldr	r0, [pc, #16]	; (8002728 <USART_ITConfig+0x114>)
 8002718:	f240 118f 	movw	r1, #399	; 0x18f
 800271c:	f7fd fde4 	bl	80002e8 <assert_failed>
 8002720:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8002724:	e7d4      	b.n	80026d0 <USART_ITConfig+0xbc>
 8002726:	bf00      	nop
 8002728:	08008c14 	.word	0x08008c14

0800272c <USART_GetITStatus>:
 800272c:	b538      	push	{r3, r4, r5, lr}
 800272e:	f44f 5360 	mov.w	r3, #14336	; 0x3800
 8002732:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8002736:	4298      	cmp	r0, r3
 8002738:	4604      	mov	r4, r0
 800273a:	460d      	mov	r5, r1
 800273c:	d01c      	beq.n	8002778 <USART_GetITStatus+0x4c>
 800273e:	f44f 4088 	mov.w	r0, #17408	; 0x4400
 8002742:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8002746:	4284      	cmp	r4, r0
 8002748:	d016      	beq.n	8002778 <USART_GetITStatus+0x4c>
 800274a:	f44f 4190 	mov.w	r1, #18432	; 0x4800
 800274e:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8002752:	428c      	cmp	r4, r1
 8002754:	d010      	beq.n	8002778 <USART_GetITStatus+0x4c>
 8002756:	f44f 4298 	mov.w	r2, #19456	; 0x4c00
 800275a:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800275e:	4294      	cmp	r4, r2
 8002760:	d00a      	beq.n	8002778 <USART_GetITStatus+0x4c>
 8002762:	f44f 43a0 	mov.w	r3, #20480	; 0x5000
 8002766:	f2c4 0300 	movt	r3, #16384	; 0x4000
 800276a:	429c      	cmp	r4, r3
 800276c:	d004      	beq.n	8002778 <USART_GetITStatus+0x4c>
 800276e:	483f      	ldr	r0, [pc, #252]	; (800286c <USART_GetITStatus+0x140>)
 8002770:	f240 31c1 	movw	r1, #961	; 0x3c1
 8002774:	f7fd fdb8 	bl	80002e8 <assert_failed>
 8002778:	2d28      	cmp	r5, #40	; 0x28
 800277a:	d04c      	beq.n	8002816 <USART_GetITStatus+0xea>
 800277c:	f240 7027 	movw	r0, #1831	; 0x727
 8002780:	4285      	cmp	r5, r0
 8002782:	d03b      	beq.n	80027fc <USART_GetITStatus+0xd0>
 8002784:	f240 6126 	movw	r1, #1574	; 0x626
 8002788:	428d      	cmp	r5, r1
 800278a:	d037      	beq.n	80027fc <USART_GetITStatus+0xd0>
 800278c:	f240 5225 	movw	r2, #1317	; 0x525
 8002790:	4295      	cmp	r5, r2
 8002792:	d033      	beq.n	80027fc <USART_GetITStatus+0xd0>
 8002794:	f240 4324 	movw	r3, #1060	; 0x424
 8002798:	429d      	cmp	r5, r3
 800279a:	d02f      	beq.n	80027fc <USART_GetITStatus+0xd0>
 800279c:	f640 0246 	movw	r2, #2118	; 0x846
 80027a0:	4295      	cmp	r5, r2
 80027a2:	d044      	beq.n	800282e <USART_GetITStatus+0x102>
 80027a4:	f502 7392 	add.w	r3, r2, #292	; 0x124
 80027a8:	429d      	cmp	r5, r3
 80027aa:	d045      	beq.n	8002838 <USART_GetITStatus+0x10c>
 80027ac:	f5b5 7f58 	cmp.w	r5, #864	; 0x360
 80027b0:	d034      	beq.n	800281c <USART_GetITStatus+0xf0>
 80027b2:	f5b5 7f18 	cmp.w	r5, #608	; 0x260
 80027b6:	d031      	beq.n	800281c <USART_GetITStatus+0xf0>
 80027b8:	f5b5 7fb0 	cmp.w	r5, #352	; 0x160
 80027bc:	d02e      	beq.n	800281c <USART_GetITStatus+0xf0>
 80027be:	482b      	ldr	r0, [pc, #172]	; (800286c <USART_GetITStatus+0x140>)
 80027c0:	f240 31c2 	movw	r1, #962	; 0x3c2
 80027c4:	f7fd fd90 	bl	80002e8 <assert_failed>
 80027c8:	2001      	movs	r0, #1
 80027ca:	f3c5 1242 	ubfx	r2, r5, #5, #3
 80027ce:	f005 011f 	and.w	r1, r5, #31
 80027d2:	4282      	cmp	r2, r0
 80027d4:	fa00 f301 	lsl.w	r3, r0, r1
 80027d8:	d015      	beq.n	8002806 <USART_GetITStatus+0xda>
 80027da:	2a02      	cmp	r2, #2
 80027dc:	d028      	beq.n	8002830 <USART_GetITStatus+0x104>
 80027de:	8aa1      	ldrh	r1, [r4, #20]
 80027e0:	b288      	uxth	r0, r1
 80027e2:	4018      	ands	r0, r3
 80027e4:	8823      	ldrh	r3, [r4, #0]
 80027e6:	b299      	uxth	r1, r3
 80027e8:	b1a0      	cbz	r0, 8002814 <USART_GetITStatus+0xe8>
 80027ea:	2201      	movs	r2, #1
 80027ec:	0a2d      	lsrs	r5, r5, #8
 80027ee:	fa02 f505 	lsl.w	r5, r2, r5
 80027f2:	420d      	tst	r5, r1
 80027f4:	bf0c      	ite	eq
 80027f6:	2000      	moveq	r0, #0
 80027f8:	2001      	movne	r0, #1
 80027fa:	bd38      	pop	{r3, r4, r5, pc}
 80027fc:	f005 011f 	and.w	r1, r5, #31
 8002800:	2001      	movs	r0, #1
 8002802:	fa00 f301 	lsl.w	r3, r0, r1
 8002806:	89a0      	ldrh	r0, [r4, #12]
 8002808:	b280      	uxth	r0, r0
 800280a:	4018      	ands	r0, r3
 800280c:	8823      	ldrh	r3, [r4, #0]
 800280e:	b299      	uxth	r1, r3
 8002810:	2800      	cmp	r0, #0
 8002812:	d1ea      	bne.n	80027ea <USART_GetITStatus+0xbe>
 8002814:	bd38      	pop	{r3, r4, r5, pc}
 8002816:	f44f 7380 	mov.w	r3, #256	; 0x100
 800281a:	e7f4      	b.n	8002806 <USART_GetITStatus+0xda>
 800281c:	f005 031f 	and.w	r3, r5, #31
 8002820:	2101      	movs	r1, #1
 8002822:	fa01 f303 	lsl.w	r3, r1, r3
 8002826:	8aa1      	ldrh	r1, [r4, #20]
 8002828:	b288      	uxth	r0, r1
 800282a:	4018      	ands	r0, r3
 800282c:	e7da      	b.n	80027e4 <USART_GetITStatus+0xb8>
 800282e:	2340      	movs	r3, #64	; 0x40
 8002830:	8a22      	ldrh	r2, [r4, #16]
 8002832:	b290      	uxth	r0, r2
 8002834:	4018      	ands	r0, r3
 8002836:	e7d5      	b.n	80027e4 <USART_GetITStatus+0xb8>
 8002838:	f44f 5160 	mov.w	r1, #14336	; 0x3800
 800283c:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8002840:	428c      	cmp	r4, r1
 8002842:	d010      	beq.n	8002866 <USART_GetITStatus+0x13a>
 8002844:	f44f 4088 	mov.w	r0, #17408	; 0x4400
 8002848:	f2c4 0000 	movt	r0, #16384	; 0x4000
 800284c:	4284      	cmp	r4, r0
 800284e:	d00a      	beq.n	8002866 <USART_GetITStatus+0x13a>
 8002850:	f44f 4290 	mov.w	r2, #18432	; 0x4800
 8002854:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8002858:	4294      	cmp	r4, r2
 800285a:	d004      	beq.n	8002866 <USART_GetITStatus+0x13a>
 800285c:	4803      	ldr	r0, [pc, #12]	; (800286c <USART_GetITStatus+0x140>)
 800285e:	f240 31c6 	movw	r1, #966	; 0x3c6
 8002862:	f7fd fd41 	bl	80002e8 <assert_failed>
 8002866:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800286a:	e7dc      	b.n	8002826 <USART_GetITStatus+0xfa>
 800286c:	08008c14 	.word	0x08008c14

08002870 <USART_ClearITPendingBit>:
 8002870:	b538      	push	{r3, r4, r5, lr}
 8002872:	f44f 5360 	mov.w	r3, #14336	; 0x3800
 8002876:	f2c4 0301 	movt	r3, #16385	; 0x4001
 800287a:	4298      	cmp	r0, r3
 800287c:	4604      	mov	r4, r0
 800287e:	460d      	mov	r5, r1
 8002880:	d01c      	beq.n	80028bc <USART_ClearITPendingBit+0x4c>
 8002882:	f44f 4088 	mov.w	r0, #17408	; 0x4400
 8002886:	f2c4 0000 	movt	r0, #16384	; 0x4000
 800288a:	4284      	cmp	r4, r0
 800288c:	d016      	beq.n	80028bc <USART_ClearITPendingBit+0x4c>
 800288e:	f44f 4190 	mov.w	r1, #18432	; 0x4800
 8002892:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8002896:	428c      	cmp	r4, r1
 8002898:	d010      	beq.n	80028bc <USART_ClearITPendingBit+0x4c>
 800289a:	f44f 4298 	mov.w	r2, #19456	; 0x4c00
 800289e:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80028a2:	4294      	cmp	r4, r2
 80028a4:	d00a      	beq.n	80028bc <USART_ClearITPendingBit+0x4c>
 80028a6:	f44f 43a0 	mov.w	r3, #20480	; 0x5000
 80028aa:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80028ae:	429c      	cmp	r4, r3
 80028b0:	d004      	beq.n	80028bc <USART_ClearITPendingBit+0x4c>
 80028b2:	481d      	ldr	r0, [pc, #116]	; (8002928 <USART_ClearITPendingBit+0xb8>)
 80028b4:	f240 410a 	movw	r1, #1034	; 0x40a
 80028b8:	f7fd fd16 	bl	80002e8 <assert_failed>
 80028bc:	f240 6026 	movw	r0, #1574	; 0x626
 80028c0:	4285      	cmp	r5, r0
 80028c2:	d010      	beq.n	80028e6 <USART_ClearITPendingBit+0x76>
 80028c4:	f240 5125 	movw	r1, #1317	; 0x525
 80028c8:	428d      	cmp	r5, r1
 80028ca:	d00c      	beq.n	80028e6 <USART_ClearITPendingBit+0x76>
 80028cc:	f640 0246 	movw	r2, #2118	; 0x846
 80028d0:	4295      	cmp	r5, r2
 80028d2:	d008      	beq.n	80028e6 <USART_ClearITPendingBit+0x76>
 80028d4:	f502 7392 	add.w	r3, r2, #292	; 0x124
 80028d8:	429d      	cmp	r5, r3
 80028da:	d00c      	beq.n	80028f6 <USART_ClearITPendingBit+0x86>
 80028dc:	4812      	ldr	r0, [pc, #72]	; (8002928 <USART_ClearITPendingBit+0xb8>)
 80028de:	f240 410b 	movw	r1, #1035	; 0x40b
 80028e2:	f7fd fd01 	bl	80002e8 <assert_failed>
 80028e6:	0a28      	lsrs	r0, r5, #8
 80028e8:	2301      	movs	r3, #1
 80028ea:	fa03 f500 	lsl.w	r5, r3, r0
 80028ee:	43e9      	mvns	r1, r5
 80028f0:	b28d      	uxth	r5, r1
 80028f2:	8025      	strh	r5, [r4, #0]
 80028f4:	bd38      	pop	{r3, r4, r5, pc}
 80028f6:	f44f 5060 	mov.w	r0, #14336	; 0x3800
 80028fa:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80028fe:	4284      	cmp	r4, r0
 8002900:	d0f1      	beq.n	80028e6 <USART_ClearITPendingBit+0x76>
 8002902:	f44f 4188 	mov.w	r1, #17408	; 0x4400
 8002906:	f2c4 0100 	movt	r1, #16384	; 0x4000
 800290a:	428c      	cmp	r4, r1
 800290c:	d0eb      	beq.n	80028e6 <USART_ClearITPendingBit+0x76>
 800290e:	f44f 4290 	mov.w	r2, #18432	; 0x4800
 8002912:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8002916:	4294      	cmp	r4, r2
 8002918:	d0e5      	beq.n	80028e6 <USART_ClearITPendingBit+0x76>
 800291a:	4803      	ldr	r0, [pc, #12]	; (8002928 <USART_ClearITPendingBit+0xb8>)
 800291c:	f240 410f 	movw	r1, #1039	; 0x40f
 8002920:	f7fd fce2 	bl	80002e8 <assert_failed>
 8002924:	e7df      	b.n	80028e6 <USART_ClearITPendingBit+0x76>
 8002926:	bf00      	nop
 8002928:	08008c14 	.word	0x08008c14

0800292c <DMA_DeInit>:
 800292c:	2308      	movs	r3, #8
 800292e:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8002932:	4298      	cmp	r0, r3
 8002934:	b510      	push	{r4, lr}
 8002936:	4604      	mov	r4, r0
 8002938:	d064      	beq.n	8002a04 <DMA_DeInit+0xd8>
 800293a:	201c      	movs	r0, #28
 800293c:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8002940:	4284      	cmp	r4, r0
 8002942:	d071      	beq.n	8002a28 <DMA_DeInit+0xfc>
 8002944:	2130      	movs	r1, #48	; 0x30
 8002946:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800294a:	428c      	cmp	r4, r1
 800294c:	d07e      	beq.n	8002a4c <DMA_DeInit+0x120>
 800294e:	2344      	movs	r3, #68	; 0x44
 8002950:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8002954:	429c      	cmp	r4, r3
 8002956:	f000 808b 	beq.w	8002a70 <DMA_DeInit+0x144>
 800295a:	2358      	movs	r3, #88	; 0x58
 800295c:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8002960:	429c      	cmp	r4, r3
 8002962:	d03d      	beq.n	80029e0 <DMA_DeInit+0xb4>
 8002964:	206c      	movs	r0, #108	; 0x6c
 8002966:	f2c4 0002 	movt	r0, #16386	; 0x4002
 800296a:	4284      	cmp	r4, r0
 800296c:	f000 8092 	beq.w	8002a94 <DMA_DeInit+0x168>
 8002970:	2380      	movs	r3, #128	; 0x80
 8002972:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8002976:	429c      	cmp	r4, r3
 8002978:	f000 809e 	beq.w	8002ab8 <DMA_DeInit+0x18c>
 800297c:	f44f 6381 	mov.w	r3, #1032	; 0x408
 8002980:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8002984:	429c      	cmp	r4, r3
 8002986:	f000 80c8 	beq.w	8002b1a <DMA_DeInit+0x1ee>
 800298a:	f240 411c 	movw	r1, #1052	; 0x41c
 800298e:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002992:	428c      	cmp	r4, r1
 8002994:	f000 80c9 	beq.w	8002b2a <DMA_DeInit+0x1fe>
 8002998:	f44f 6386 	mov.w	r3, #1072	; 0x430
 800299c:	f2c4 0302 	movt	r3, #16386	; 0x4002
 80029a0:	429c      	cmp	r4, r3
 80029a2:	f000 80a3 	beq.w	8002aec <DMA_DeInit+0x1c0>
 80029a6:	f240 4244 	movw	r2, #1092	; 0x444
 80029aa:	f2c4 0202 	movt	r2, #16386	; 0x4002
 80029ae:	4294      	cmp	r4, r2
 80029b0:	f000 80c3 	beq.w	8002b3a <DMA_DeInit+0x20e>
 80029b4:	f44f 628b 	mov.w	r2, #1112	; 0x458
 80029b8:	f2c4 0202 	movt	r2, #16386	; 0x4002
 80029bc:	4294      	cmp	r4, r2
 80029be:	f000 808d 	beq.w	8002adc <DMA_DeInit+0x1b0>
 80029c2:	4862      	ldr	r0, [pc, #392]	; (8002b4c <DMA_DeInit+0x220>)
 80029c4:	216f      	movs	r1, #111	; 0x6f
 80029c6:	f7fd fc8f 	bl	80002e8 <assert_failed>
 80029ca:	6820      	ldr	r0, [r4, #0]
 80029cc:	f64f 72fe 	movw	r2, #65534	; 0xfffe
 80029d0:	2300      	movs	r3, #0
 80029d2:	4002      	ands	r2, r0
 80029d4:	6022      	str	r2, [r4, #0]
 80029d6:	6023      	str	r3, [r4, #0]
 80029d8:	6063      	str	r3, [r4, #4]
 80029da:	60a3      	str	r3, [r4, #8]
 80029dc:	60e3      	str	r3, [r4, #12]
 80029de:	bd10      	pop	{r4, pc}
 80029e0:	6820      	ldr	r0, [r4, #0]
 80029e2:	f64f 71fe 	movw	r1, #65534	; 0xfffe
 80029e6:	2300      	movs	r3, #0
 80029e8:	4001      	ands	r1, r0
 80029ea:	461a      	mov	r2, r3
 80029ec:	6021      	str	r1, [r4, #0]
 80029ee:	f2c4 0202 	movt	r2, #16386	; 0x4002
 80029f2:	6023      	str	r3, [r4, #0]
 80029f4:	6063      	str	r3, [r4, #4]
 80029f6:	60a3      	str	r3, [r4, #8]
 80029f8:	60e3      	str	r3, [r4, #12]
 80029fa:	6853      	ldr	r3, [r2, #4]
 80029fc:	f443 2170 	orr.w	r1, r3, #983040	; 0xf0000
 8002a00:	6051      	str	r1, [r2, #4]
 8002a02:	bd10      	pop	{r4, pc}
 8002a04:	6802      	ldr	r2, [r0, #0]
 8002a06:	2100      	movs	r1, #0
 8002a08:	f64f 70fe 	movw	r0, #65534	; 0xfffe
 8002a0c:	4010      	ands	r0, r2
 8002a0e:	460a      	mov	r2, r1
 8002a10:	6020      	str	r0, [r4, #0]
 8002a12:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8002a16:	6021      	str	r1, [r4, #0]
 8002a18:	6061      	str	r1, [r4, #4]
 8002a1a:	60a1      	str	r1, [r4, #8]
 8002a1c:	60e1      	str	r1, [r4, #12]
 8002a1e:	6853      	ldr	r3, [r2, #4]
 8002a20:	f043 000f 	orr.w	r0, r3, #15
 8002a24:	6050      	str	r0, [r2, #4]
 8002a26:	bd10      	pop	{r4, pc}
 8002a28:	6822      	ldr	r2, [r4, #0]
 8002a2a:	f64f 70fe 	movw	r0, #65534	; 0xfffe
 8002a2e:	2300      	movs	r3, #0
 8002a30:	4010      	ands	r0, r2
 8002a32:	4619      	mov	r1, r3
 8002a34:	6020      	str	r0, [r4, #0]
 8002a36:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002a3a:	6023      	str	r3, [r4, #0]
 8002a3c:	6063      	str	r3, [r4, #4]
 8002a3e:	60a3      	str	r3, [r4, #8]
 8002a40:	60e3      	str	r3, [r4, #12]
 8002a42:	684a      	ldr	r2, [r1, #4]
 8002a44:	f042 00f0 	orr.w	r0, r2, #240	; 0xf0
 8002a48:	6048      	str	r0, [r1, #4]
 8002a4a:	bd10      	pop	{r4, pc}
 8002a4c:	6820      	ldr	r0, [r4, #0]
 8002a4e:	2300      	movs	r3, #0
 8002a50:	f64f 71fe 	movw	r1, #65534	; 0xfffe
 8002a54:	4001      	ands	r1, r0
 8002a56:	461a      	mov	r2, r3
 8002a58:	6021      	str	r1, [r4, #0]
 8002a5a:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8002a5e:	6023      	str	r3, [r4, #0]
 8002a60:	6063      	str	r3, [r4, #4]
 8002a62:	60a3      	str	r3, [r4, #8]
 8002a64:	60e3      	str	r3, [r4, #12]
 8002a66:	6850      	ldr	r0, [r2, #4]
 8002a68:	f440 6170 	orr.w	r1, r0, #3840	; 0xf00
 8002a6c:	6051      	str	r1, [r2, #4]
 8002a6e:	bd10      	pop	{r4, pc}
 8002a70:	6822      	ldr	r2, [r4, #0]
 8002a72:	f64f 70fe 	movw	r0, #65534	; 0xfffe
 8002a76:	2100      	movs	r1, #0
 8002a78:	4010      	ands	r0, r2
 8002a7a:	460a      	mov	r2, r1
 8002a7c:	6020      	str	r0, [r4, #0]
 8002a7e:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8002a82:	6021      	str	r1, [r4, #0]
 8002a84:	6061      	str	r1, [r4, #4]
 8002a86:	60a1      	str	r1, [r4, #8]
 8002a88:	60e1      	str	r1, [r4, #12]
 8002a8a:	6851      	ldr	r1, [r2, #4]
 8002a8c:	f441 4070 	orr.w	r0, r1, #61440	; 0xf000
 8002a90:	6050      	str	r0, [r2, #4]
 8002a92:	bd10      	pop	{r4, pc}
 8002a94:	6822      	ldr	r2, [r4, #0]
 8002a96:	2300      	movs	r3, #0
 8002a98:	f64f 71fe 	movw	r1, #65534	; 0xfffe
 8002a9c:	4011      	ands	r1, r2
 8002a9e:	4618      	mov	r0, r3
 8002aa0:	6021      	str	r1, [r4, #0]
 8002aa2:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8002aa6:	6023      	str	r3, [r4, #0]
 8002aa8:	6063      	str	r3, [r4, #4]
 8002aaa:	60a3      	str	r3, [r4, #8]
 8002aac:	60e3      	str	r3, [r4, #12]
 8002aae:	6842      	ldr	r2, [r0, #4]
 8002ab0:	f442 0170 	orr.w	r1, r2, #15728640	; 0xf00000
 8002ab4:	6041      	str	r1, [r0, #4]
 8002ab6:	bd10      	pop	{r4, pc}
 8002ab8:	6820      	ldr	r0, [r4, #0]
 8002aba:	2300      	movs	r3, #0
 8002abc:	f64f 71fe 	movw	r1, #65534	; 0xfffe
 8002ac0:	4001      	ands	r1, r0
 8002ac2:	461a      	mov	r2, r3
 8002ac4:	6021      	str	r1, [r4, #0]
 8002ac6:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8002aca:	6023      	str	r3, [r4, #0]
 8002acc:	6063      	str	r3, [r4, #4]
 8002ace:	60a3      	str	r3, [r4, #8]
 8002ad0:	60e3      	str	r3, [r4, #12]
 8002ad2:	6850      	ldr	r0, [r2, #4]
 8002ad4:	f040 6170 	orr.w	r1, r0, #251658240	; 0xf000000
 8002ad8:	6051      	str	r1, [r2, #4]
 8002ada:	bd10      	pop	{r4, pc}
 8002adc:	6820      	ldr	r0, [r4, #0]
 8002ade:	f64f 71fe 	movw	r1, #65534	; 0xfffe
 8002ae2:	2300      	movs	r3, #0
 8002ae4:	4001      	ands	r1, r0
 8002ae6:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8002aea:	e77f      	b.n	80029ec <DMA_DeInit+0xc0>
 8002aec:	f44f 6386 	mov.w	r3, #1072	; 0x430
 8002af0:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8002af4:	6819      	ldr	r1, [r3, #0]
 8002af6:	f64f 70fe 	movw	r0, #65534	; 0xfffe
 8002afa:	2200      	movs	r2, #0
 8002afc:	4008      	ands	r0, r1
 8002afe:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8002b02:	6018      	str	r0, [r3, #0]
 8002b04:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002b08:	601a      	str	r2, [r3, #0]
 8002b0a:	605a      	str	r2, [r3, #4]
 8002b0c:	609a      	str	r2, [r3, #8]
 8002b0e:	60da      	str	r2, [r3, #12]
 8002b10:	684b      	ldr	r3, [r1, #4]
 8002b12:	f443 6070 	orr.w	r0, r3, #3840	; 0xf00
 8002b16:	6048      	str	r0, [r1, #4]
 8002b18:	bd10      	pop	{r4, pc}
 8002b1a:	6822      	ldr	r2, [r4, #0]
 8002b1c:	f64f 70fe 	movw	r0, #65534	; 0xfffe
 8002b20:	4010      	ands	r0, r2
 8002b22:	2100      	movs	r1, #0
 8002b24:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8002b28:	e772      	b.n	8002a10 <DMA_DeInit+0xe4>
 8002b2a:	6822      	ldr	r2, [r4, #0]
 8002b2c:	f64f 70fe 	movw	r0, #65534	; 0xfffe
 8002b30:	2300      	movs	r3, #0
 8002b32:	4010      	ands	r0, r2
 8002b34:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8002b38:	e77c      	b.n	8002a34 <DMA_DeInit+0x108>
 8002b3a:	6823      	ldr	r3, [r4, #0]
 8002b3c:	f64f 70fe 	movw	r0, #65534	; 0xfffe
 8002b40:	2100      	movs	r1, #0
 8002b42:	4018      	ands	r0, r3
 8002b44:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8002b48:	e798      	b.n	8002a7c <DMA_DeInit+0x150>
 8002b4a:	bf00      	nop
 8002b4c:	08008c50 	.word	0x08008c50

08002b50 <DMA_Init>:
 8002b50:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002b52:	2308      	movs	r3, #8
 8002b54:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8002b58:	4298      	cmp	r0, r3
 8002b5a:	4605      	mov	r5, r0
 8002b5c:	460c      	mov	r4, r1
 8002b5e:	d03f      	beq.n	8002be0 <DMA_Init+0x90>
 8002b60:	201c      	movs	r0, #28
 8002b62:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8002b66:	4285      	cmp	r5, r0
 8002b68:	d03a      	beq.n	8002be0 <DMA_Init+0x90>
 8002b6a:	2130      	movs	r1, #48	; 0x30
 8002b6c:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002b70:	428d      	cmp	r5, r1
 8002b72:	d035      	beq.n	8002be0 <DMA_Init+0x90>
 8002b74:	2244      	movs	r2, #68	; 0x44
 8002b76:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8002b7a:	4295      	cmp	r5, r2
 8002b7c:	d030      	beq.n	8002be0 <DMA_Init+0x90>
 8002b7e:	2658      	movs	r6, #88	; 0x58
 8002b80:	f2c4 0602 	movt	r6, #16386	; 0x4002
 8002b84:	42b5      	cmp	r5, r6
 8002b86:	d02b      	beq.n	8002be0 <DMA_Init+0x90>
 8002b88:	276c      	movs	r7, #108	; 0x6c
 8002b8a:	f2c4 0702 	movt	r7, #16386	; 0x4002
 8002b8e:	42bd      	cmp	r5, r7
 8002b90:	d026      	beq.n	8002be0 <DMA_Init+0x90>
 8002b92:	2380      	movs	r3, #128	; 0x80
 8002b94:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8002b98:	429d      	cmp	r5, r3
 8002b9a:	d021      	beq.n	8002be0 <DMA_Init+0x90>
 8002b9c:	f44f 6081 	mov.w	r0, #1032	; 0x408
 8002ba0:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8002ba4:	4285      	cmp	r5, r0
 8002ba6:	d01b      	beq.n	8002be0 <DMA_Init+0x90>
 8002ba8:	f240 411c 	movw	r1, #1052	; 0x41c
 8002bac:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002bb0:	428d      	cmp	r5, r1
 8002bb2:	d015      	beq.n	8002be0 <DMA_Init+0x90>
 8002bb4:	f44f 6286 	mov.w	r2, #1072	; 0x430
 8002bb8:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8002bbc:	4295      	cmp	r5, r2
 8002bbe:	d00f      	beq.n	8002be0 <DMA_Init+0x90>
 8002bc0:	f240 4644 	movw	r6, #1092	; 0x444
 8002bc4:	f2c4 0602 	movt	r6, #16386	; 0x4002
 8002bc8:	42b5      	cmp	r5, r6
 8002bca:	d009      	beq.n	8002be0 <DMA_Init+0x90>
 8002bcc:	f44f 678b 	mov.w	r7, #1112	; 0x458
 8002bd0:	f2c4 0702 	movt	r7, #16386	; 0x4002
 8002bd4:	42bd      	cmp	r5, r7
 8002bd6:	d003      	beq.n	8002be0 <DMA_Init+0x90>
 8002bd8:	4844      	ldr	r0, [pc, #272]	; (8002cec <DMA_Init+0x19c>)
 8002bda:	21cf      	movs	r1, #207	; 0xcf
 8002bdc:	f7fd fb84 	bl	80002e8 <assert_failed>
 8002be0:	68a3      	ldr	r3, [r4, #8]
 8002be2:	2b10      	cmp	r3, #16
 8002be4:	d001      	beq.n	8002bea <DMA_Init+0x9a>
 8002be6:	2b00      	cmp	r3, #0
 8002be8:	d16b      	bne.n	8002cc2 <DMA_Init+0x172>
 8002bea:	68e0      	ldr	r0, [r4, #12]
 8002bec:	f64f 72fe 	movw	r2, #65534	; 0xfffe
 8002bf0:	1e41      	subs	r1, r0, #1
 8002bf2:	4291      	cmp	r1, r2
 8002bf4:	d85b      	bhi.n	8002cae <DMA_Init+0x15e>
 8002bf6:	6926      	ldr	r6, [r4, #16]
 8002bf8:	2e40      	cmp	r6, #64	; 0x40
 8002bfa:	d001      	beq.n	8002c00 <DMA_Init+0xb0>
 8002bfc:	2e00      	cmp	r6, #0
 8002bfe:	d16a      	bne.n	8002cd6 <DMA_Init+0x186>
 8002c00:	6967      	ldr	r7, [r4, #20]
 8002c02:	2f80      	cmp	r7, #128	; 0x80
 8002c04:	d001      	beq.n	8002c0a <DMA_Init+0xba>
 8002c06:	2f00      	cmp	r7, #0
 8002c08:	d160      	bne.n	8002ccc <DMA_Init+0x17c>
 8002c0a:	69a3      	ldr	r3, [r4, #24]
 8002c0c:	b14b      	cbz	r3, 8002c22 <DMA_Init+0xd2>
 8002c0e:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8002c12:	d006      	beq.n	8002c22 <DMA_Init+0xd2>
 8002c14:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8002c18:	d003      	beq.n	8002c22 <DMA_Init+0xd2>
 8002c1a:	4834      	ldr	r0, [pc, #208]	; (8002cec <DMA_Init+0x19c>)
 8002c1c:	21d4      	movs	r1, #212	; 0xd4
 8002c1e:	f7fd fb63 	bl	80002e8 <assert_failed>
 8002c22:	69e0      	ldr	r0, [r4, #28]
 8002c24:	b148      	cbz	r0, 8002c3a <DMA_Init+0xea>
 8002c26:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
 8002c2a:	d006      	beq.n	8002c3a <DMA_Init+0xea>
 8002c2c:	f5b0 6f00 	cmp.w	r0, #2048	; 0x800
 8002c30:	d003      	beq.n	8002c3a <DMA_Init+0xea>
 8002c32:	482e      	ldr	r0, [pc, #184]	; (8002cec <DMA_Init+0x19c>)
 8002c34:	21d5      	movs	r1, #213	; 0xd5
 8002c36:	f7fd fb57 	bl	80002e8 <assert_failed>
 8002c3a:	6a21      	ldr	r1, [r4, #32]
 8002c3c:	2920      	cmp	r1, #32
 8002c3e:	d001      	beq.n	8002c44 <DMA_Init+0xf4>
 8002c40:	2900      	cmp	r1, #0
 8002c42:	d139      	bne.n	8002cb8 <DMA_Init+0x168>
 8002c44:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8002c46:	f5b2 5f40 	cmp.w	r2, #12288	; 0x3000
 8002c4a:	d007      	beq.n	8002c5c <DMA_Init+0x10c>
 8002c4c:	f5b2 5f00 	cmp.w	r2, #8192	; 0x2000
 8002c50:	d004      	beq.n	8002c5c <DMA_Init+0x10c>
 8002c52:	f5b2 5f80 	cmp.w	r2, #4096	; 0x1000
 8002c56:	d001      	beq.n	8002c5c <DMA_Init+0x10c>
 8002c58:	2a00      	cmp	r2, #0
 8002c5a:	d141      	bne.n	8002ce0 <DMA_Init+0x190>
 8002c5c:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 8002c5e:	f5b3 4f80 	cmp.w	r3, #16384	; 0x4000
 8002c62:	d000      	beq.n	8002c66 <DMA_Init+0x116>
 8002c64:	b9eb      	cbnz	r3, 8002ca2 <DMA_Init+0x152>
 8002c66:	68a0      	ldr	r0, [r4, #8]
 8002c68:	6a27      	ldr	r7, [r4, #32]
 8002c6a:	6921      	ldr	r1, [r4, #16]
 8002c6c:	6966      	ldr	r6, [r4, #20]
 8002c6e:	4307      	orrs	r7, r0
 8002c70:	ea47 0201 	orr.w	r2, r7, r1
 8002c74:	69a0      	ldr	r0, [r4, #24]
 8002c76:	682f      	ldr	r7, [r5, #0]
 8002c78:	69e1      	ldr	r1, [r4, #28]
 8002c7a:	4316      	orrs	r6, r2
 8002c7c:	4330      	orrs	r0, r6
 8002c7e:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8002c80:	4301      	orrs	r1, r0
 8002c82:	f427 4cff 	bic.w	ip, r7, #32640	; 0x7f80
 8002c86:	430a      	orrs	r2, r1
 8002c88:	f02c 0070 	bic.w	r0, ip, #112	; 0x70
 8002c8c:	68e6      	ldr	r6, [r4, #12]
 8002c8e:	6827      	ldr	r7, [r4, #0]
 8002c90:	ea42 0100 	orr.w	r1, r2, r0
 8002c94:	6864      	ldr	r4, [r4, #4]
 8002c96:	430b      	orrs	r3, r1
 8002c98:	602b      	str	r3, [r5, #0]
 8002c9a:	606e      	str	r6, [r5, #4]
 8002c9c:	60af      	str	r7, [r5, #8]
 8002c9e:	60ec      	str	r4, [r5, #12]
 8002ca0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8002ca2:	4812      	ldr	r0, [pc, #72]	; (8002cec <DMA_Init+0x19c>)
 8002ca4:	21d8      	movs	r1, #216	; 0xd8
 8002ca6:	f7fd fb1f 	bl	80002e8 <assert_failed>
 8002caa:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 8002cac:	e7db      	b.n	8002c66 <DMA_Init+0x116>
 8002cae:	480f      	ldr	r0, [pc, #60]	; (8002cec <DMA_Init+0x19c>)
 8002cb0:	21d1      	movs	r1, #209	; 0xd1
 8002cb2:	f7fd fb19 	bl	80002e8 <assert_failed>
 8002cb6:	e79e      	b.n	8002bf6 <DMA_Init+0xa6>
 8002cb8:	480c      	ldr	r0, [pc, #48]	; (8002cec <DMA_Init+0x19c>)
 8002cba:	21d6      	movs	r1, #214	; 0xd6
 8002cbc:	f7fd fb14 	bl	80002e8 <assert_failed>
 8002cc0:	e7c0      	b.n	8002c44 <DMA_Init+0xf4>
 8002cc2:	480a      	ldr	r0, [pc, #40]	; (8002cec <DMA_Init+0x19c>)
 8002cc4:	21d0      	movs	r1, #208	; 0xd0
 8002cc6:	f7fd fb0f 	bl	80002e8 <assert_failed>
 8002cca:	e78e      	b.n	8002bea <DMA_Init+0x9a>
 8002ccc:	4807      	ldr	r0, [pc, #28]	; (8002cec <DMA_Init+0x19c>)
 8002cce:	21d3      	movs	r1, #211	; 0xd3
 8002cd0:	f7fd fb0a 	bl	80002e8 <assert_failed>
 8002cd4:	e799      	b.n	8002c0a <DMA_Init+0xba>
 8002cd6:	4805      	ldr	r0, [pc, #20]	; (8002cec <DMA_Init+0x19c>)
 8002cd8:	21d2      	movs	r1, #210	; 0xd2
 8002cda:	f7fd fb05 	bl	80002e8 <assert_failed>
 8002cde:	e78f      	b.n	8002c00 <DMA_Init+0xb0>
 8002ce0:	4802      	ldr	r0, [pc, #8]	; (8002cec <DMA_Init+0x19c>)
 8002ce2:	21d7      	movs	r1, #215	; 0xd7
 8002ce4:	f7fd fb00 	bl	80002e8 <assert_failed>
 8002ce8:	e7b8      	b.n	8002c5c <DMA_Init+0x10c>
 8002cea:	bf00      	nop
 8002cec:	08008c50 	.word	0x08008c50

08002cf0 <DMA_Cmd>:
 8002cf0:	b538      	push	{r3, r4, r5, lr}
 8002cf2:	2308      	movs	r3, #8
 8002cf4:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8002cf8:	4298      	cmp	r0, r3
 8002cfa:	4604      	mov	r4, r0
 8002cfc:	460d      	mov	r5, r1
 8002cfe:	d040      	beq.n	8002d82 <DMA_Cmd+0x92>
 8002d00:	201c      	movs	r0, #28
 8002d02:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8002d06:	4284      	cmp	r4, r0
 8002d08:	d03b      	beq.n	8002d82 <DMA_Cmd+0x92>
 8002d0a:	2130      	movs	r1, #48	; 0x30
 8002d0c:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002d10:	428c      	cmp	r4, r1
 8002d12:	d036      	beq.n	8002d82 <DMA_Cmd+0x92>
 8002d14:	2244      	movs	r2, #68	; 0x44
 8002d16:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8002d1a:	4294      	cmp	r4, r2
 8002d1c:	d031      	beq.n	8002d82 <DMA_Cmd+0x92>
 8002d1e:	2358      	movs	r3, #88	; 0x58
 8002d20:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8002d24:	429c      	cmp	r4, r3
 8002d26:	d02c      	beq.n	8002d82 <DMA_Cmd+0x92>
 8002d28:	206c      	movs	r0, #108	; 0x6c
 8002d2a:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8002d2e:	4284      	cmp	r4, r0
 8002d30:	d027      	beq.n	8002d82 <DMA_Cmd+0x92>
 8002d32:	2180      	movs	r1, #128	; 0x80
 8002d34:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002d38:	428c      	cmp	r4, r1
 8002d3a:	d022      	beq.n	8002d82 <DMA_Cmd+0x92>
 8002d3c:	f44f 6281 	mov.w	r2, #1032	; 0x408
 8002d40:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8002d44:	4294      	cmp	r4, r2
 8002d46:	d01c      	beq.n	8002d82 <DMA_Cmd+0x92>
 8002d48:	f240 431c 	movw	r3, #1052	; 0x41c
 8002d4c:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8002d50:	429c      	cmp	r4, r3
 8002d52:	d016      	beq.n	8002d82 <DMA_Cmd+0x92>
 8002d54:	f44f 6086 	mov.w	r0, #1072	; 0x430
 8002d58:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8002d5c:	4284      	cmp	r4, r0
 8002d5e:	d010      	beq.n	8002d82 <DMA_Cmd+0x92>
 8002d60:	f240 4144 	movw	r1, #1092	; 0x444
 8002d64:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002d68:	428c      	cmp	r4, r1
 8002d6a:	d00a      	beq.n	8002d82 <DMA_Cmd+0x92>
 8002d6c:	f44f 628b 	mov.w	r2, #1112	; 0x458
 8002d70:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8002d74:	4294      	cmp	r4, r2
 8002d76:	d004      	beq.n	8002d82 <DMA_Cmd+0x92>
 8002d78:	480c      	ldr	r0, [pc, #48]	; (8002dac <DMA_Cmd+0xbc>)
 8002d7a:	f240 1129 	movw	r1, #297	; 0x129
 8002d7e:	f7fd fab3 	bl	80002e8 <assert_failed>
 8002d82:	2d01      	cmp	r5, #1
 8002d84:	d909      	bls.n	8002d9a <DMA_Cmd+0xaa>
 8002d86:	4809      	ldr	r0, [pc, #36]	; (8002dac <DMA_Cmd+0xbc>)
 8002d88:	f44f 7195 	mov.w	r1, #298	; 0x12a
 8002d8c:	f7fd faac 	bl	80002e8 <assert_failed>
 8002d90:	6821      	ldr	r1, [r4, #0]
 8002d92:	f041 0201 	orr.w	r2, r1, #1
 8002d96:	6022      	str	r2, [r4, #0]
 8002d98:	bd38      	pop	{r3, r4, r5, pc}
 8002d9a:	2d00      	cmp	r5, #0
 8002d9c:	d1f8      	bne.n	8002d90 <DMA_Cmd+0xa0>
 8002d9e:	6820      	ldr	r0, [r4, #0]
 8002da0:	f64f 73fe 	movw	r3, #65534	; 0xfffe
 8002da4:	4003      	ands	r3, r0
 8002da6:	6023      	str	r3, [r4, #0]
 8002da8:	bd38      	pop	{r3, r4, r5, pc}
 8002daa:	bf00      	nop
 8002dac:	08008c50 	.word	0x08008c50

08002db0 <NVIC_PriorityGroupConfig>:
 8002db0:	f5b0 6fe0 	cmp.w	r0, #1792	; 0x700
 8002db4:	b510      	push	{r4, lr}
 8002db6:	4604      	mov	r4, r0
 8002db8:	d00f      	beq.n	8002dda <NVIC_PriorityGroupConfig+0x2a>
 8002dba:	f5b0 6fc0 	cmp.w	r0, #1536	; 0x600
 8002dbe:	d00c      	beq.n	8002dda <NVIC_PriorityGroupConfig+0x2a>
 8002dc0:	f5b0 6fa0 	cmp.w	r0, #1280	; 0x500
 8002dc4:	d009      	beq.n	8002dda <NVIC_PriorityGroupConfig+0x2a>
 8002dc6:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
 8002dca:	d006      	beq.n	8002dda <NVIC_PriorityGroupConfig+0x2a>
 8002dcc:	f5b0 7f40 	cmp.w	r0, #768	; 0x300
 8002dd0:	d003      	beq.n	8002dda <NVIC_PriorityGroupConfig+0x2a>
 8002dd2:	4807      	ldr	r0, [pc, #28]	; (8002df0 <NVIC_PriorityGroupConfig+0x40>)
 8002dd4:	2163      	movs	r1, #99	; 0x63
 8002dd6:	f7fd fa87 	bl	80002e8 <assert_failed>
 8002dda:	f044 60bf 	orr.w	r0, r4, #100139008	; 0x5f80000
 8002dde:	f44f 436d 	mov.w	r3, #60672	; 0xed00
 8002de2:	f440 3400 	orr.w	r4, r0, #131072	; 0x20000
 8002de6:	f2ce 0300 	movt	r3, #57344	; 0xe000
 8002dea:	60dc      	str	r4, [r3, #12]
 8002dec:	bd10      	pop	{r4, pc}
 8002dee:	bf00      	nop
 8002df0:	08008c8c 	.word	0x08008c8c

08002df4 <NVIC_Init>:
 8002df4:	b538      	push	{r3, r4, r5, lr}
 8002df6:	78c3      	ldrb	r3, [r0, #3]
 8002df8:	4604      	mov	r4, r0
 8002dfa:	2b01      	cmp	r3, #1
 8002dfc:	d903      	bls.n	8002e06 <NVIC_Init+0x12>
 8002dfe:	4828      	ldr	r0, [pc, #160]	; (8002ea0 <NVIC_Init+0xac>)
 8002e00:	2175      	movs	r1, #117	; 0x75
 8002e02:	f7fd fa71 	bl	80002e8 <assert_failed>
 8002e06:	7860      	ldrb	r0, [r4, #1]
 8002e08:	280f      	cmp	r0, #15
 8002e0a:	d843      	bhi.n	8002e94 <NVIC_Init+0xa0>
 8002e0c:	78a1      	ldrb	r1, [r4, #2]
 8002e0e:	290f      	cmp	r1, #15
 8002e10:	d83b      	bhi.n	8002e8a <NVIC_Init+0x96>
 8002e12:	78e2      	ldrb	r2, [r4, #3]
 8002e14:	b972      	cbnz	r2, 8002e34 <NVIC_Init+0x40>
 8002e16:	7823      	ldrb	r3, [r4, #0]
 8002e18:	2101      	movs	r1, #1
 8002e1a:	f003 001f 	and.w	r0, r3, #31
 8002e1e:	fa01 f100 	lsl.w	r1, r1, r0
 8002e22:	095a      	lsrs	r2, r3, #5
 8002e24:	f44f 4361 	mov.w	r3, #57600	; 0xe100
 8002e28:	f2ce 0300 	movt	r3, #57344	; 0xe000
 8002e2c:	3220      	adds	r2, #32
 8002e2e:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8002e32:	bd38      	pop	{r3, r4, r5, pc}
 8002e34:	f44f 456d 	mov.w	r5, #60672	; 0xed00
 8002e38:	f2ce 0500 	movt	r5, #57344	; 0xe000
 8002e3c:	68e9      	ldr	r1, [r5, #12]
 8002e3e:	7860      	ldrb	r0, [r4, #1]
 8002e40:	43ca      	mvns	r2, r1
 8002e42:	f3c2 2302 	ubfx	r3, r2, #8, #3
 8002e46:	210f      	movs	r1, #15
 8002e48:	f1c3 0504 	rsb	r5, r3, #4
 8002e4c:	fa21 f203 	lsr.w	r2, r1, r3
 8002e50:	fa00 f005 	lsl.w	r0, r0, r5
 8002e54:	78a5      	ldrb	r5, [r4, #2]
 8002e56:	7823      	ldrb	r3, [r4, #0]
 8002e58:	ea02 0105 	and.w	r1, r2, r5
 8002e5c:	4301      	orrs	r1, r0
 8002e5e:	0108      	lsls	r0, r1, #4
 8002e60:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8002e64:	b2c2      	uxtb	r2, r0
 8002e66:	f503 4161 	add.w	r1, r3, #57600	; 0xe100
 8002e6a:	f881 2300 	strb.w	r2, [r1, #768]	; 0x300
 8002e6e:	7820      	ldrb	r0, [r4, #0]
 8002e70:	2101      	movs	r1, #1
 8002e72:	f000 031f 	and.w	r3, r0, #31
 8002e76:	fa01 f103 	lsl.w	r1, r1, r3
 8002e7a:	f44f 4361 	mov.w	r3, #57600	; 0xe100
 8002e7e:	f2ce 0300 	movt	r3, #57344	; 0xe000
 8002e82:	0942      	lsrs	r2, r0, #5
 8002e84:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8002e88:	bd38      	pop	{r3, r4, r5, pc}
 8002e8a:	4805      	ldr	r0, [pc, #20]	; (8002ea0 <NVIC_Init+0xac>)
 8002e8c:	2177      	movs	r1, #119	; 0x77
 8002e8e:	f7fd fa2b 	bl	80002e8 <assert_failed>
 8002e92:	e7be      	b.n	8002e12 <NVIC_Init+0x1e>
 8002e94:	4802      	ldr	r0, [pc, #8]	; (8002ea0 <NVIC_Init+0xac>)
 8002e96:	2176      	movs	r1, #118	; 0x76
 8002e98:	f7fd fa26 	bl	80002e8 <assert_failed>
 8002e9c:	e7b6      	b.n	8002e0c <NVIC_Init+0x18>
 8002e9e:	bf00      	nop
 8002ea0:	08008c8c 	.word	0x08008c8c

08002ea4 <NVIC_SetVectorTable>:
 8002ea4:	f1b0 5f00 	cmp.w	r0, #536870912	; 0x20000000
 8002ea8:	b538      	push	{r3, r4, r5, lr}
 8002eaa:	4604      	mov	r4, r0
 8002eac:	460d      	mov	r5, r1
 8002eae:	d006      	beq.n	8002ebe <NVIC_SetVectorTable+0x1a>
 8002eb0:	f1b0 6f00 	cmp.w	r0, #134217728	; 0x8000000
 8002eb4:	d003      	beq.n	8002ebe <NVIC_SetVectorTable+0x1a>
 8002eb6:	480c      	ldr	r0, [pc, #48]	; (8002ee8 <NVIC_SetVectorTable+0x44>)
 8002eb8:	219f      	movs	r1, #159	; 0x9f
 8002eba:	f7fd fa15 	bl	80002e8 <assert_failed>
 8002ebe:	f64f 73fe 	movw	r3, #65534	; 0xfffe
 8002ec2:	f2c0 030f 	movt	r3, #15
 8002ec6:	429d      	cmp	r5, r3
 8002ec8:	d903      	bls.n	8002ed2 <NVIC_SetVectorTable+0x2e>
 8002eca:	4807      	ldr	r0, [pc, #28]	; (8002ee8 <NVIC_SetVectorTable+0x44>)
 8002ecc:	21a0      	movs	r1, #160	; 0xa0
 8002ece:	f7fd fa0b 	bl	80002e8 <assert_failed>
 8002ed2:	f025 4060 	bic.w	r0, r5, #3758096384	; 0xe0000000
 8002ed6:	f020 057f 	bic.w	r5, r0, #127	; 0x7f
 8002eda:	f44f 416d 	mov.w	r1, #60672	; 0xed00
 8002ede:	432c      	orrs	r4, r5
 8002ee0:	f2ce 0100 	movt	r1, #57344	; 0xe000
 8002ee4:	608c      	str	r4, [r1, #8]
 8002ee6:	bd38      	pop	{r3, r4, r5, pc}
 8002ee8:	08008c8c 	.word	0x08008c8c

08002eec <Reset_Handler>:
 8002eec:	2100      	movs	r1, #0
 8002eee:	f000 b804 	b.w	8002efa <LoopCopyDataInit>

08002ef2 <CopyDataInit>:
 8002ef2:	4b0c      	ldr	r3, [pc, #48]	; (8002f24 <LoopFillZerobss+0x12>)
 8002ef4:	585b      	ldr	r3, [r3, r1]
 8002ef6:	5043      	str	r3, [r0, r1]
 8002ef8:	3104      	adds	r1, #4

08002efa <LoopCopyDataInit>:
 8002efa:	480b      	ldr	r0, [pc, #44]	; (8002f28 <LoopFillZerobss+0x16>)
 8002efc:	4b0b      	ldr	r3, [pc, #44]	; (8002f2c <LoopFillZerobss+0x1a>)
 8002efe:	1842      	adds	r2, r0, r1
 8002f00:	429a      	cmp	r2, r3
 8002f02:	f4ff aff6 	bcc.w	8002ef2 <CopyDataInit>
 8002f06:	4a0a      	ldr	r2, [pc, #40]	; (8002f30 <LoopFillZerobss+0x1e>)
 8002f08:	f000 b803 	b.w	8002f12 <LoopFillZerobss>

08002f0c <FillZerobss>:
 8002f0c:	2300      	movs	r3, #0
 8002f0e:	f842 3b04 	str.w	r3, [r2], #4

08002f12 <LoopFillZerobss>:
 8002f12:	4b08      	ldr	r3, [pc, #32]	; (8002f34 <LoopFillZerobss+0x22>)
 8002f14:	429a      	cmp	r2, r3
 8002f16:	f4ff aff9 	bcc.w	8002f0c <FillZerobss>
 8002f1a:	f7fd fcd9 	bl	80008d0 <SystemInit>
 8002f1e:	f7fd fa17 	bl	8000350 <main>
 8002f22:	4770      	bx	lr
 8002f24:	08009cc0 	.word	0x08009cc0
 8002f28:	20000000 	.word	0x20000000
 8002f2c:	20000300 	.word	0x20000300
 8002f30:	20000700 	.word	0x20000700
 8002f34:	20001b5c 	.word	0x20001b5c

08002f38 <ADC1_2_IRQHandler>:
 8002f38:	f7ff bffe 	b.w	8002f38 <ADC1_2_IRQHandler>

08002f3c <data_t_run>:
 8002f3c:	f640 33cc 	movw	r3, #3020	; 0xbcc
 8002f40:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002f44:	2201      	movs	r2, #1
 8002f46:	f8c3 208c 	str.w	r2, [r3, #140]	; 0x8c
 8002f4a:	4770      	bx	lr

08002f4c <data_t_stop>:
 8002f4c:	f640 33cc 	movw	r3, #3020	; 0xbcc
 8002f50:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002f54:	2200      	movs	r2, #0
 8002f56:	f8c3 208c 	str.w	r2, [r3, #140]	; 0x8c
 8002f5a:	4770      	bx	lr

08002f5c <data_t_set_manual>:
 8002f5c:	7803      	ldrb	r3, [r0, #0]
 8002f5e:	2b79      	cmp	r3, #121	; 0x79
 8002f60:	d00b      	beq.n	8002f7a <data_t_set_manual+0x1e>
 8002f62:	2b59      	cmp	r3, #89	; 0x59
 8002f64:	d009      	beq.n	8002f7a <data_t_set_manual+0x1e>
 8002f66:	2b6e      	cmp	r3, #110	; 0x6e
 8002f68:	d002      	beq.n	8002f70 <data_t_set_manual+0x14>
 8002f6a:	2b4e      	cmp	r3, #78	; 0x4e
 8002f6c:	d000      	beq.n	8002f70 <data_t_set_manual+0x14>
 8002f6e:	4770      	bx	lr
 8002f70:	4804      	ldr	r0, [pc, #16]	; (8002f84 <data_t_set_manual+0x28>)
 8002f72:	2200      	movs	r2, #0
 8002f74:	f8c0 2080 	str.w	r2, [r0, #128]	; 0x80
 8002f78:	4770      	bx	lr
 8002f7a:	4b02      	ldr	r3, [pc, #8]	; (8002f84 <data_t_set_manual+0x28>)
 8002f7c:	2101      	movs	r1, #1
 8002f7e:	f8c3 1080 	str.w	r1, [r3, #128]	; 0x80
 8002f82:	4770      	bx	lr
 8002f84:	20000bcc 	.word	0x20000bcc

08002f88 <data_t_sample>:
 8002f88:	b4f0      	push	{r4, r5, r6, r7}
 8002f8a:	4c33      	ldr	r4, [pc, #204]	; (8003058 <data_t_sample+0xd0>)
 8002f8c:	6fe3      	ldr	r3, [r4, #124]	; 0x7c
 8002f8e:	b933      	cbnz	r3, 8002f9e <data_t_sample+0x16>
 8002f90:	f8b4 204a 	ldrh.w	r2, [r4, #74]	; 0x4a
 8002f94:	f640 71fe 	movw	r1, #4094	; 0xffe
 8002f98:	b290      	uxth	r0, r2
 8002f9a:	4288      	cmp	r0, r1
 8002f9c:	d949      	bls.n	8003032 <data_t_sample+0xaa>
 8002f9e:	6fe6      	ldr	r6, [r4, #124]	; 0x7c
 8002fa0:	f04f 0c00 	mov.w	ip, #0
 8002fa4:	b2f6      	uxtb	r6, r6
 8002fa6:	492d      	ldr	r1, [pc, #180]	; (800305c <data_t_sample+0xd4>)
 8002fa8:	2500      	movs	r5, #0
 8002faa:	f501 77c8 	add.w	r7, r1, #400	; 0x190
 8002fae:	3624      	adds	r6, #36	; 0x24
 8002fb0:	f834 2016 	ldrh.w	r2, [r4, r6, lsl #1]
 8002fb4:	f834 3016 	ldrh.w	r3, [r4, r6, lsl #1]
 8002fb8:	0510      	lsls	r0, r2, #20
 8002fba:	0d02      	lsrs	r2, r0, #20
 8002fbc:	804a      	strh	r2, [r1, #2]
 8002fbe:	1c88      	adds	r0, r1, #2
 8002fc0:	051b      	lsls	r3, r3, #20
 8002fc2:	3104      	adds	r1, #4
 8002fc4:	0d1b      	lsrs	r3, r3, #20
 8002fc6:	18ad      	adds	r5, r5, r2
 8002fc8:	42b9      	cmp	r1, r7
 8002fca:	8043      	strh	r3, [r0, #2]
 8002fcc:	4a22      	ldr	r2, [pc, #136]	; (8003058 <data_t_sample+0xd0>)
 8002fce:	441d      	add	r5, r3
 8002fd0:	d1ee      	bne.n	8002fb0 <data_t_sample+0x28>
 8002fd2:	f248 501f 	movw	r0, #34079	; 0x851f
 8002fd6:	f2c5 10eb 	movt	r0, #20971	; 0x51eb
 8002fda:	fba0 1305 	umull	r1, r3, r0, r5
 8002fde:	6f91      	ldr	r1, [r2, #120]	; 0x78
 8002fe0:	f1bc 0f00 	cmp.w	ip, #0
 8002fe4:	d12f      	bne.n	8003046 <data_t_sample+0xbe>
 8002fe6:	3116      	adds	r1, #22
 8002fe8:	f3c3 108f 	ubfx	r0, r3, #6, #16
 8002fec:	eb02 0281 	add.w	r2, r2, r1, lsl #2
 8002ff0:	80d0      	strh	r0, [r2, #6]
 8002ff2:	f8d4 2080 	ldr.w	r2, [r4, #128]	; 0x80
 8002ff6:	4b18      	ldr	r3, [pc, #96]	; (8003058 <data_t_sample+0xd0>)
 8002ff8:	2a01      	cmp	r2, #1
 8002ffa:	d01d      	beq.n	8003038 <data_t_sample+0xb0>
 8002ffc:	6f98      	ldr	r0, [r3, #120]	; 0x78
 8002ffe:	6c19      	ldr	r1, [r3, #64]	; 0x40
 8003000:	3016      	adds	r0, #22
 8003002:	b28a      	uxth	r2, r1
 8003004:	eb03 0380 	add.w	r3, r3, r0, lsl #2
 8003008:	809a      	strh	r2, [r3, #4]
 800300a:	6fa3      	ldr	r3, [r4, #120]	; 0x78
 800300c:	1c58      	adds	r0, r3, #1
 800300e:	67a0      	str	r0, [r4, #120]	; 0x78
 8003010:	6fa1      	ldr	r1, [r4, #120]	; 0x78
 8003012:	2907      	cmp	r1, #7
 8003014:	d003      	beq.n	800301e <data_t_sample+0x96>
 8003016:	4a10      	ldr	r2, [pc, #64]	; (8003058 <data_t_sample+0xd0>)
 8003018:	f8d2 308c 	ldr.w	r3, [r2, #140]	; 0x8c
 800301c:	b923      	cbnz	r3, 8003028 <data_t_sample+0xa0>
 800301e:	2000      	movs	r0, #0
 8003020:	2101      	movs	r1, #1
 8003022:	67a0      	str	r0, [r4, #120]	; 0x78
 8003024:	f8c4 1088 	str.w	r1, [r4, #136]	; 0x88
 8003028:	2201      	movs	r2, #1
 800302a:	f8c4 2084 	str.w	r2, [r4, #132]	; 0x84
 800302e:	bcf0      	pop	{r4, r5, r6, r7}
 8003030:	4770      	bx	lr
 8003032:	2601      	movs	r6, #1
 8003034:	46b4      	mov	ip, r6
 8003036:	e7b6      	b.n	8002fa6 <data_t_sample+0x1e>
 8003038:	6f98      	ldr	r0, [r3, #120]	; 0x78
 800303a:	2200      	movs	r2, #0
 800303c:	3016      	adds	r0, #22
 800303e:	eb03 0180 	add.w	r1, r3, r0, lsl #2
 8003042:	808a      	strh	r2, [r1, #4]
 8003044:	e7e1      	b.n	800300a <data_t_sample+0x82>
 8003046:	f3c3 138e 	ubfx	r3, r3, #6, #15
 800304a:	3116      	adds	r1, #22
 800304c:	f443 4000 	orr.w	r0, r3, #32768	; 0x8000
 8003050:	eb02 0181 	add.w	r1, r2, r1, lsl #2
 8003054:	80c8      	strh	r0, [r1, #6]
 8003056:	e7cc      	b.n	8002ff2 <data_t_sample+0x6a>
 8003058:	20000bcc 	.word	0x20000bcc
 800305c:	20000efe 	.word	0x20000efe

08003060 <data_t_format>:
 8003060:	4b0e      	ldr	r3, [pc, #56]	; (800309c <data_t_format+0x3c>)
 8003062:	f8d3 208c 	ldr.w	r2, [r3, #140]	; 0x8c
 8003066:	2a01      	cmp	r2, #1
 8003068:	d00b      	beq.n	8003082 <data_t_format+0x22>
 800306a:	1cd8      	adds	r0, r3, #3
 800306c:	2200      	movs	r2, #0
 800306e:	3216      	adds	r2, #22
 8003070:	eb03 0382 	add.w	r3, r3, r2, lsl #2
 8003074:	889a      	ldrh	r2, [r3, #4]
 8003076:	88db      	ldrh	r3, [r3, #6]
 8003078:	4909      	ldr	r1, [pc, #36]	; (80030a0 <data_t_format+0x40>)
 800307a:	b292      	uxth	r2, r2
 800307c:	b29b      	uxth	r3, r3
 800307e:	f003 bd87 	b.w	8006b90 <rt_sprintf>
 8003082:	6f98      	ldr	r0, [r3, #120]	; 0x78
 8003084:	b128      	cbz	r0, 8003092 <data_t_format+0x32>
 8003086:	6f99      	ldr	r1, [r3, #120]	; 0x78
 8003088:	1e4a      	subs	r2, r1, #1
 800308a:	eb03 00c2 	add.w	r0, r3, r2, lsl #3
 800308e:	3003      	adds	r0, #3
 8003090:	e7ed      	b.n	800306e <data_t_format+0xe>
 8003092:	f103 0033 	add.w	r0, r3, #51	; 0x33
 8003096:	2206      	movs	r2, #6
 8003098:	e7e9      	b.n	800306e <data_t_format+0xe>
 800309a:	bf00      	nop
 800309c:	20000bcc 	.word	0x20000bcc
 80030a0:	08008cbc 	.word	0x08008cbc

080030a4 <get_temp>:
 80030a4:	b508      	push	{r3, lr}
 80030a6:	f001 fafb 	bl	80046a0 <get_temp_>
 80030aa:	f648 41c0 	movw	r1, #36032	; 0x8cc0
 80030ae:	4602      	mov	r2, r0
 80030b0:	f6c0 0100 	movt	r1, #2048	; 0x800
 80030b4:	4805      	ldr	r0, [pc, #20]	; (80030cc <get_temp+0x28>)
 80030b6:	f003 fd6b 	bl	8006b90 <rt_sprintf>
 80030ba:	f640 30cc 	movw	r0, #3020	; 0xbcc
 80030be:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80030c2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80030c6:	f003 bd89 	b.w	8006bdc <rt_kprintf>
 80030ca:	bf00      	nop
 80030cc:	20000bcf 	.word	0x20000bcf

080030d0 <data_t_upload>:
 80030d0:	f640 30cc 	movw	r0, #3020	; 0xbcc
 80030d4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80030d8:	f003 bd80 	b.w	8006bdc <rt_kprintf>

080030dc <data_t_reset>:
 80030dc:	2200      	movs	r2, #0
 80030de:	f640 33cc 	movw	r3, #3020	; 0xbcc
 80030e2:	f44f 6080 	mov.w	r0, #1024	; 0x400
 80030e6:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80030ea:	f2c4 0000 	movt	r0, #16384	; 0x4000
 80030ee:	4611      	mov	r1, r2
 80030f0:	641a      	str	r2, [r3, #64]	; 0x40
 80030f2:	679a      	str	r2, [r3, #120]	; 0x78
 80030f4:	f7fe bc8c 	b.w	8001a10 <TIM_SetCounter>

080030f8 <data_t_init>:
 80030f8:	b538      	push	{r3, r4, r5, lr}
 80030fa:	f243 10bd 	movw	r0, #12733	; 0x31bd
 80030fe:	f640 34cc 	movw	r4, #3020	; 0xbcc
 8003102:	f243 13c9 	movw	r3, #12745	; 0x31c9
 8003106:	f642 713d 	movw	r1, #12093	; 0x2f3d
 800310a:	f642 724d 	movw	r2, #12109	; 0x2f4d
 800310e:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8003112:	f6c0 0300 	movt	r3, #2048	; 0x800
 8003116:	f6c0 0000 	movt	r0, #2048	; 0x800
 800311a:	f6c0 0100 	movt	r1, #2048	; 0x800
 800311e:	f6c0 0200 	movt	r2, #2048	; 0x800
 8003122:	f8c4 30b0 	str.w	r3, [r4, #176]	; 0xb0
 8003126:	f8c4 00a0 	str.w	r0, [r4, #160]	; 0xa0
 800312a:	f8c4 1098 	str.w	r1, [r4, #152]	; 0x98
 800312e:	f8c4 209c 	str.w	r2, [r4, #156]	; 0x9c
 8003132:	f243 03d1 	movw	r3, #12497	; 0x30d1
 8003136:	f243 0061 	movw	r0, #12385	; 0x3061
 800313a:	f642 7189 	movw	r1, #12169	; 0x2f89
 800313e:	f243 02dd 	movw	r2, #12509	; 0x30dd
 8003142:	2500      	movs	r5, #0
 8003144:	f6c0 0300 	movt	r3, #2048	; 0x800
 8003148:	f6c0 0000 	movt	r0, #2048	; 0x800
 800314c:	f6c0 0100 	movt	r1, #2048	; 0x800
 8003150:	f6c0 0200 	movt	r2, #2048	; 0x800
 8003154:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
 8003158:	f8c4 00ac 	str.w	r0, [r4, #172]	; 0xac
 800315c:	f8c4 10a4 	str.w	r1, [r4, #164]	; 0xa4
 8003160:	f8c4 2094 	str.w	r2, [r4, #148]	; 0x94
 8003164:	67e5      	str	r5, [r4, #124]	; 0x7c
 8003166:	f7ff ffb9 	bl	80030dc <data_t_reset>
 800316a:	2301      	movs	r3, #1
 800316c:	2030      	movs	r0, #48	; 0x30
 800316e:	2178      	movs	r1, #120	; 0x78
 8003170:	223a      	movs	r2, #58	; 0x3a
 8003172:	6463      	str	r3, [r4, #68]	; 0x44
 8003174:	7020      	strb	r0, [r4, #0]
 8003176:	f8c4 5084 	str.w	r5, [r4, #132]	; 0x84
 800317a:	7061      	strb	r1, [r4, #1]
 800317c:	f8c4 5088 	str.w	r5, [r4, #136]	; 0x88
 8003180:	70a2      	strb	r2, [r4, #2]
 8003182:	f8c4 508c 	str.w	r5, [r4, #140]	; 0x8c
 8003186:	f8c4 5080 	str.w	r5, [r4, #128]	; 0x80
 800318a:	bd38      	pop	{r3, r4, r5, pc}

0800318c <data_t_set_channel>:
 800318c:	b508      	push	{r3, lr}
 800318e:	f005 fb65 	bl	800885c <atoi>
 8003192:	f640 33cc 	movw	r3, #3020	; 0xbcc
 8003196:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800319a:	67d8      	str	r0, [r3, #124]	; 0x7c
 800319c:	bd08      	pop	{r3, pc}
 800319e:	bf00      	nop

080031a0 <data_t_set_interval>:
 80031a0:	b508      	push	{r3, lr}
 80031a2:	f005 fb5b 	bl	800885c <atoi>
 80031a6:	f640 33cc 	movw	r3, #3020	; 0xbcc
 80031aa:	b280      	uxth	r0, r0
 80031ac:	f640 32b8 	movw	r2, #3000	; 0xbb8
 80031b0:	fb92 f1f0 	sdiv	r1, r2, r0
 80031b4:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80031b8:	6459      	str	r1, [r3, #68]	; 0x44
 80031ba:	bd08      	pop	{r3, pc}

080031bc <data_t_cfg>:
 80031bc:	f240 0170 	movw	r1, #112	; 0x70
 80031c0:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80031c4:	f000 bafa 	b.w	80037bc <deal_cmd__>

080031c8 <data_t_service>:
 80031c8:	b538      	push	{r3, r4, r5, lr}
 80031ca:	4c0a      	ldr	r4, [pc, #40]	; (80031f4 <data_t_service+0x2c>)
 80031cc:	f8d4 3084 	ldr.w	r3, [r4, #132]	; 0x84
 80031d0:	b903      	cbnz	r3, 80031d4 <data_t_service+0xc>
 80031d2:	bd38      	pop	{r3, r4, r5, pc}
 80031d4:	2500      	movs	r5, #0
 80031d6:	f8c4 5084 	str.w	r5, [r4, #132]	; 0x84
 80031da:	f8d4 00ac 	ldr.w	r0, [r4, #172]	; 0xac
 80031de:	4780      	blx	r0
 80031e0:	f8d4 1088 	ldr.w	r1, [r4, #136]	; 0x88
 80031e4:	2901      	cmp	r1, #1
 80031e6:	d1f4      	bne.n	80031d2 <data_t_service+0xa>
 80031e8:	f8c4 5088 	str.w	r5, [r4, #136]	; 0x88
 80031ec:	f8d4 20a8 	ldr.w	r2, [r4, #168]	; 0xa8
 80031f0:	4790      	blx	r2
 80031f2:	e7ee      	b.n	80031d2 <data_t_service+0xa>
 80031f4:	20000bcc 	.word	0x20000bcc

080031f8 <delay_loop>:
 80031f8:	b168      	cbz	r0, 8003216 <delay_loop+0x1e>
 80031fa:	1e43      	subs	r3, r0, #1
 80031fc:	f003 0201 	and.w	r2, r3, #1
 8003200:	bf00      	nop
 8003202:	b14b      	cbz	r3, 8003218 <delay_loop+0x20>
 8003204:	b112      	cbz	r2, 800320c <delay_loop+0x14>
 8003206:	bf00      	nop
 8003208:	3b01      	subs	r3, #1
 800320a:	d006      	beq.n	800321a <delay_loop+0x22>
 800320c:	bf00      	nop
 800320e:	1e58      	subs	r0, r3, #1
 8003210:	bf00      	nop
 8003212:	1e43      	subs	r3, r0, #1
 8003214:	d1fa      	bne.n	800320c <delay_loop+0x14>
 8003216:	4770      	bx	lr
 8003218:	4770      	bx	lr
 800321a:	4770      	bx	lr

0800321c <set_SW>:
 800321c:	2901      	cmp	r1, #1
 800321e:	d00a      	beq.n	8003236 <set_SW+0x1a>
 8003220:	2101      	movs	r1, #1
 8003222:	fa01 f100 	lsl.w	r1, r1, r0
 8003226:	4b08      	ldr	r3, [pc, #32]	; (8003248 <set_SW+0x2c>)
 8003228:	781a      	ldrb	r2, [r3, #0]
 800322a:	ea22 0101 	bic.w	r1, r2, r1
 800322e:	7019      	strb	r1, [r3, #0]
 8003230:	4806      	ldr	r0, [pc, #24]	; (800324c <set_SW+0x30>)
 8003232:	f000 bf09 	b.w	8004048 <write_sport>
 8003236:	fa01 f100 	lsl.w	r1, r1, r0
 800323a:	4803      	ldr	r0, [pc, #12]	; (8003248 <set_SW+0x2c>)
 800323c:	7803      	ldrb	r3, [r0, #0]
 800323e:	4319      	orrs	r1, r3
 8003240:	b2c9      	uxtb	r1, r1
 8003242:	7001      	strb	r1, [r0, #0]
 8003244:	e7f4      	b.n	8003230 <set_SW+0x14>
 8003246:	bf00      	nop
 8003248:	20000098 	.word	0x20000098
 800324c:	20000198 	.word	0x20000198

08003250 <switch_485>:
 8003250:	b508      	push	{r3, lr}
 8003252:	2002      	movs	r0, #2
 8003254:	2100      	movs	r1, #0
 8003256:	f7ff ffe1 	bl	800321c <set_SW>
 800325a:	2001      	movs	r0, #1
 800325c:	4601      	mov	r1, r0
 800325e:	f7ff ffdd 	bl	800321c <set_SW>
 8003262:	2003      	movs	r0, #3
 8003264:	2101      	movs	r1, #1
 8003266:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800326a:	f7ff bfd7 	b.w	800321c <set_SW>
 800326e:	bf00      	nop

08003270 <switch_232>:
 8003270:	b508      	push	{r3, lr}
 8003272:	2002      	movs	r0, #2
 8003274:	2100      	movs	r1, #0
 8003276:	f7ff ffd1 	bl	800321c <set_SW>
 800327a:	2001      	movs	r0, #1
 800327c:	4601      	mov	r1, r0
 800327e:	f7ff ffcd 	bl	800321c <set_SW>
 8003282:	2003      	movs	r0, #3
 8003284:	2100      	movs	r1, #0
 8003286:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800328a:	f7ff bfc7 	b.w	800321c <set_SW>
 800328e:	bf00      	nop

08003290 <switch_CAN>:
 8003290:	b508      	push	{r3, lr}
 8003292:	2002      	movs	r0, #2
 8003294:	2100      	movs	r1, #0
 8003296:	f7ff ffc1 	bl	800321c <set_SW>
 800329a:	2003      	movs	r0, #3
 800329c:	2101      	movs	r1, #1
 800329e:	f7ff ffbd 	bl	800321c <set_SW>
 80032a2:	2001      	movs	r0, #1
 80032a4:	2100      	movs	r1, #0
 80032a6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80032aa:	f7ff bfb7 	b.w	800321c <set_SW>
 80032ae:	bf00      	nop

080032b0 <switch_NTC>:
 80032b0:	b508      	push	{r3, lr}
 80032b2:	2002      	movs	r0, #2
 80032b4:	2101      	movs	r1, #1
 80032b6:	f7ff ffb1 	bl	800321c <set_SW>
 80032ba:	2001      	movs	r0, #1
 80032bc:	4601      	mov	r1, r0
 80032be:	f7ff ffad 	bl	800321c <set_SW>
 80032c2:	2003      	movs	r0, #3
 80032c4:	2101      	movs	r1, #1
 80032c6:	f7ff ffa9 	bl	800321c <set_SW>
 80032ca:	2000      	movs	r0, #0
 80032cc:	2101      	movs	r1, #1
 80032ce:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80032d2:	f7ff bfa3 	b.w	800321c <set_SW>
 80032d6:	bf00      	nop

080032d8 <switch_R>:
 80032d8:	b508      	push	{r3, lr}
 80032da:	2002      	movs	r0, #2
 80032dc:	2101      	movs	r1, #1
 80032de:	f7ff ff9d 	bl	800321c <set_SW>
 80032e2:	2001      	movs	r0, #1
 80032e4:	4601      	mov	r1, r0
 80032e6:	f7ff ff99 	bl	800321c <set_SW>
 80032ea:	2003      	movs	r0, #3
 80032ec:	2101      	movs	r1, #1
 80032ee:	f7ff ff95 	bl	800321c <set_SW>
 80032f2:	2000      	movs	r0, #0
 80032f4:	4601      	mov	r1, r0
 80032f6:	f7ff ff91 	bl	800321c <set_SW>
 80032fa:	f240 0390 	movw	r3, #144	; 0x90
 80032fe:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003302:	6818      	ldr	r0, [r3, #0]
 8003304:	8899      	ldrh	r1, [r3, #4]
 8003306:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800330a:	f7ff b815 	b.w	8002338 <GPIO_ResetBits>
 800330e:	bf00      	nop

08003310 <switch_UI>:
 8003310:	b508      	push	{r3, lr}
 8003312:	2002      	movs	r0, #2
 8003314:	2101      	movs	r1, #1
 8003316:	f7ff ff81 	bl	800321c <set_SW>
 800331a:	2001      	movs	r0, #1
 800331c:	4601      	mov	r1, r0
 800331e:	f7ff ff7d 	bl	800321c <set_SW>
 8003322:	2003      	movs	r0, #3
 8003324:	2101      	movs	r1, #1
 8003326:	f7ff ff79 	bl	800321c <set_SW>
 800332a:	2000      	movs	r0, #0
 800332c:	4601      	mov	r1, r0
 800332e:	f7ff ff75 	bl	800321c <set_SW>
 8003332:	f240 0390 	movw	r3, #144	; 0x90
 8003336:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800333a:	6818      	ldr	r0, [r3, #0]
 800333c:	8899      	ldrh	r1, [r3, #4]
 800333e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8003342:	f7fe bfbd 	b.w	80022c0 <GPIO_SetBits>
 8003346:	bf00      	nop

08003348 <switch_RAT>:
 8003348:	b510      	push	{r4, lr}
 800334a:	7803      	ldrb	r3, [r0, #0]
 800334c:	4604      	mov	r4, r0
 800334e:	3b32      	subs	r3, #50	; 0x32
 8003350:	2b23      	cmp	r3, #35	; 0x23
 8003352:	d82d      	bhi.n	80033b0 <switch_RAT+0x68>
 8003354:	e8df f003 	tbb	[pc, r3]
 8003358:	2c3d2c31 	.word	0x2c3d2c31
 800335c:	2c2c2c2c 	.word	0x2c2c2c2c
 8003360:	2c2c2c2c 	.word	0x2c2c2c2c
 8003364:	2c2c2c2c 	.word	0x2c2c2c2c
 8003368:	2c2c162c 	.word	0x2c2c162c
 800336c:	122c2c2c 	.word	0x122c2c2c
 8003370:	2c2c2c2c 	.word	0x2c2c2c2c
 8003374:	2c2c2c1c 	.word	0x2c2c2c1c
 8003378:	122c2c28 	.word	0x122c2c28
 800337c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8003380:	f7ff bfc6 	b.w	8003310 <switch_UI>
 8003384:	f7ff ff84 	bl	8003290 <switch_CAN>
 8003388:	7862      	ldrb	r2, [r4, #1]
 800338a:	2a41      	cmp	r2, #65	; 0x41
 800338c:	d02d      	beq.n	80033ea <switch_RAT+0xa2>
 800338e:	bd10      	pop	{r4, pc}
 8003390:	f7ff ff8e 	bl	80032b0 <switch_NTC>
 8003394:	7860      	ldrb	r0, [r4, #1]
 8003396:	2854      	cmp	r0, #84	; 0x54
 8003398:	d1f9      	bne.n	800338e <switch_RAT+0x46>
 800339a:	78a1      	ldrb	r1, [r4, #2]
 800339c:	2943      	cmp	r1, #67	; 0x43
 800339e:	d1f6      	bne.n	800338e <switch_RAT+0x46>
 80033a0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80033a4:	f7ff bf84 	b.w	80032b0 <switch_NTC>
 80033a8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80033ac:	f7ff bf94 	b.w	80032d8 <switch_R>
 80033b0:	4811      	ldr	r0, [pc, #68]	; (80033f8 <switch_RAT+0xb0>)
 80033b2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80033b6:	f003 bc11 	b.w	8006bdc <rt_kprintf>
 80033ba:	f7ff ff59 	bl	8003270 <switch_232>
 80033be:	7862      	ldrb	r2, [r4, #1]
 80033c0:	2a33      	cmp	r2, #51	; 0x33
 80033c2:	d1e4      	bne.n	800338e <switch_RAT+0x46>
 80033c4:	78a3      	ldrb	r3, [r4, #2]
 80033c6:	2b32      	cmp	r3, #50	; 0x32
 80033c8:	d1e1      	bne.n	800338e <switch_RAT+0x46>
 80033ca:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80033ce:	f7ff bf4f 	b.w	8003270 <switch_232>
 80033d2:	f7ff ff3d 	bl	8003250 <switch_485>
 80033d6:	7860      	ldrb	r0, [r4, #1]
 80033d8:	2838      	cmp	r0, #56	; 0x38
 80033da:	d1d8      	bne.n	800338e <switch_RAT+0x46>
 80033dc:	78a1      	ldrb	r1, [r4, #2]
 80033de:	2935      	cmp	r1, #53	; 0x35
 80033e0:	d1d5      	bne.n	800338e <switch_RAT+0x46>
 80033e2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80033e6:	f7ff bf33 	b.w	8003250 <switch_485>
 80033ea:	78a3      	ldrb	r3, [r4, #2]
 80033ec:	2b4e      	cmp	r3, #78	; 0x4e
 80033ee:	d1ce      	bne.n	800338e <switch_RAT+0x46>
 80033f0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80033f4:	f7ff bf4c 	b.w	8003290 <switch_CAN>
 80033f8:	08008cc8 	.word	0x08008cc8

080033fc <RCC_ADC_init>:
 80033fc:	2001      	movs	r0, #1
 80033fe:	b508      	push	{r3, lr}
 8003400:	4601      	mov	r1, r0
 8003402:	f7fd fb77 	bl	8000af4 <RCC_AHBPeriphClockCmd>
 8003406:	2101      	movs	r1, #1
 8003408:	f240 2005 	movw	r0, #517	; 0x205
 800340c:	f7fd fb9e 	bl	8000b4c <RCC_APB2PeriphClockCmd>
 8003410:	2001      	movs	r0, #1
 8003412:	f2c0 0002 	movt	r0, #2
 8003416:	2100      	movs	r1, #0
 8003418:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800341c:	f7fd bb96 	b.w	8000b4c <RCC_APB2PeriphClockCmd>

08003420 <swR_init>:
 8003420:	b500      	push	{lr}
 8003422:	2010      	movs	r0, #16
 8003424:	b083      	sub	sp, #12
 8003426:	2101      	movs	r1, #1
 8003428:	f7fd fb90 	bl	8000b4c <RCC_APB2PeriphClockCmd>
 800342c:	f240 0390 	movw	r3, #144	; 0x90
 8003430:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003434:	889a      	ldrh	r2, [r3, #4]
 8003436:	6818      	ldr	r0, [r3, #0]
 8003438:	f8ad 2004 	strh.w	r2, [sp, #4]
 800343c:	2310      	movs	r3, #16
 800343e:	2202      	movs	r2, #2
 8003440:	a901      	add	r1, sp, #4
 8003442:	f88d 3007 	strb.w	r3, [sp, #7]
 8003446:	f88d 2006 	strb.w	r2, [sp, #6]
 800344a:	f7fe fd37 	bl	8001ebc <GPIO_Init>
 800344e:	b003      	add	sp, #12
 8003450:	bd00      	pop	{pc}
 8003452:	bf00      	nop

08003454 <GPIO_ADC_init>:
 8003454:	b500      	push	{lr}
 8003456:	f44f 6000 	mov.w	r0, #2048	; 0x800
 800345a:	b083      	sub	sp, #12
 800345c:	233f      	movs	r3, #63	; 0x3f
 800345e:	2200      	movs	r2, #0
 8003460:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8003464:	a901      	add	r1, sp, #4
 8003466:	f8ad 3004 	strh.w	r3, [sp, #4]
 800346a:	f88d 2007 	strb.w	r2, [sp, #7]
 800346e:	f7fe fd25 	bl	8001ebc <GPIO_Init>
 8003472:	f000 fde1 	bl	8004038 <pga_init>
 8003476:	b003      	add	sp, #12
 8003478:	bd00      	pop	{pc}
 800347a:	bf00      	nop

0800347c <DMA_ADC_init>:
 800347c:	b510      	push	{r4, lr}
 800347e:	2408      	movs	r4, #8
 8003480:	f2c4 0402 	movt	r4, #16386	; 0x4002
 8003484:	b08c      	sub	sp, #48	; 0x30
 8003486:	4620      	mov	r0, r4
 8003488:	f7ff fa50 	bl	800292c <DMA_DeInit>
 800348c:	f242 424c 	movw	r2, #9292	; 0x244c
 8003490:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8003494:	9201      	str	r2, [sp, #4]
 8003496:	4a0f      	ldr	r2, [pc, #60]	; (80034d4 <DMA_ADC_init+0x58>)
 8003498:	2300      	movs	r3, #0
 800349a:	9202      	str	r2, [sp, #8]
 800349c:	2206      	movs	r2, #6
 800349e:	9204      	str	r2, [sp, #16]
 80034a0:	2280      	movs	r2, #128	; 0x80
 80034a2:	9206      	str	r2, [sp, #24]
 80034a4:	f44f 7280 	mov.w	r2, #256	; 0x100
 80034a8:	9207      	str	r2, [sp, #28]
 80034aa:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80034ae:	9208      	str	r2, [sp, #32]
 80034b0:	2220      	movs	r2, #32
 80034b2:	a901      	add	r1, sp, #4
 80034b4:	4620      	mov	r0, r4
 80034b6:	9209      	str	r2, [sp, #36]	; 0x24
 80034b8:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 80034bc:	9303      	str	r3, [sp, #12]
 80034be:	9305      	str	r3, [sp, #20]
 80034c0:	920a      	str	r2, [sp, #40]	; 0x28
 80034c2:	930b      	str	r3, [sp, #44]	; 0x2c
 80034c4:	f7ff fb44 	bl	8002b50 <DMA_Init>
 80034c8:	4620      	mov	r0, r4
 80034ca:	2101      	movs	r1, #1
 80034cc:	f7ff fc10 	bl	8002cf0 <DMA_Cmd>
 80034d0:	b00c      	add	sp, #48	; 0x30
 80034d2:	bd10      	pop	{r4, pc}
 80034d4:	20000c14 	.word	0x20000c14

080034d8 <adc_config>:
 80034d8:	b570      	push	{r4, r5, r6, lr}
 80034da:	4b40      	ldr	r3, [pc, #256]	; (80035dc <adc_config+0x104>)
 80034dc:	4a40      	ldr	r2, [pc, #256]	; (80035e0 <adc_config+0x108>)
 80034de:	b086      	sub	sp, #24
 80034e0:	f8c3 2090 	str.w	r2, [r3, #144]	; 0x90
 80034e4:	2604      	movs	r6, #4
 80034e6:	f7ff fe07 	bl	80030f8 <data_t_init>
 80034ea:	f7ff ff87 	bl	80033fc <RCC_ADC_init>
 80034ee:	f7ff ffb1 	bl	8003454 <GPIO_ADC_init>
 80034f2:	f7ff ffc3 	bl	800347c <DMA_ADC_init>
 80034f6:	f000 ff09 	bl	800430c <ds18b20_init>
 80034fa:	f000 fd9d 	bl	8004038 <pga_init>
 80034fe:	f7ff ff8f 	bl	8003420 <swR_init>
 8003502:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 8003506:	2401      	movs	r4, #1
 8003508:	2500      	movs	r5, #0
 800350a:	f44f 2260 	mov.w	r2, #917504	; 0xe0000
 800350e:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8003512:	eb0d 0106 	add.w	r1, sp, r6
 8003516:	9203      	str	r2, [sp, #12]
 8003518:	9501      	str	r5, [sp, #4]
 800351a:	f88d 4008 	strb.w	r4, [sp, #8]
 800351e:	f88d 4009 	strb.w	r4, [sp, #9]
 8003522:	9504      	str	r5, [sp, #16]
 8003524:	f88d 6014 	strb.w	r6, [sp, #20]
 8003528:	f7fd fbd6 	bl	8000cd8 <ADC_Init>
 800352c:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 8003530:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8003534:	4629      	mov	r1, r5
 8003536:	4622      	mov	r2, r4
 8003538:	2305      	movs	r3, #5
 800353a:	f7fd fd73 	bl	8001024 <ADC_RegularChannelConfig>
 800353e:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 8003542:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8003546:	4621      	mov	r1, r4
 8003548:	2202      	movs	r2, #2
 800354a:	2305      	movs	r3, #5
 800354c:	f7fd fd6a 	bl	8001024 <ADC_RegularChannelConfig>
 8003550:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 8003554:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8003558:	2102      	movs	r1, #2
 800355a:	2203      	movs	r2, #3
 800355c:	2305      	movs	r3, #5
 800355e:	f7fd fd61 	bl	8001024 <ADC_RegularChannelConfig>
 8003562:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 8003566:	4632      	mov	r2, r6
 8003568:	2305      	movs	r3, #5
 800356a:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800356e:	2103      	movs	r1, #3
 8003570:	f7fd fd58 	bl	8001024 <ADC_RegularChannelConfig>
 8003574:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 8003578:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800357c:	4621      	mov	r1, r4
 800357e:	f7fd fc77 	bl	8000e70 <ADC_DMACmd>
 8003582:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 8003586:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800358a:	4621      	mov	r1, r4
 800358c:	f7fd fc40 	bl	8000e10 <ADC_Cmd>
 8003590:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 8003594:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8003598:	f7fd fc94 	bl	8000ec4 <ADC_ResetCalibration>
 800359c:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 80035a0:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80035a4:	f7fd fcae 	bl	8000f04 <ADC_GetResetCalibrationStatus>
 80035a8:	2800      	cmp	r0, #0
 80035aa:	d1f7      	bne.n	800359c <adc_config+0xc4>
 80035ac:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 80035b0:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80035b4:	f7fd fcc6 	bl	8000f44 <ADC_StartCalibration>
 80035b8:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 80035bc:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80035c0:	f7fd fce0 	bl	8000f84 <ADC_GetCalibrationStatus>
 80035c4:	2800      	cmp	r0, #0
 80035c6:	d1f7      	bne.n	80035b8 <adc_config+0xe0>
 80035c8:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 80035cc:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80035d0:	2101      	movs	r1, #1
 80035d2:	f7fd fcf7 	bl	8000fc4 <ADC_SoftwareStartConvCmd>
 80035d6:	b006      	add	sp, #24
 80035d8:	bd70      	pop	{r4, r5, r6, pc}
 80035da:	bf00      	nop
 80035dc:	20000bcc 	.word	0x20000bcc
 80035e0:	080030f9 	.word	0x080030f9

080035e4 <ad_sample_thread_entry>:
 80035e4:	b538      	push	{r3, r4, r5, lr}
 80035e6:	4c07      	ldr	r4, [pc, #28]	; (8003604 <ad_sample_thread_entry+0x20>)
 80035e8:	4625      	mov	r5, r4
 80035ea:	e002      	b.n	80035f2 <ad_sample_thread_entry+0xe>
 80035ec:	6c60      	ldr	r0, [r4, #68]	; 0x44
 80035ee:	f004 fa31 	bl	8007a54 <rt_thread_delay>
 80035f2:	f8d4 308c 	ldr.w	r3, [r4, #140]	; 0x8c
 80035f6:	2b01      	cmp	r3, #1
 80035f8:	d1f8      	bne.n	80035ec <ad_sample_thread_entry+0x8>
 80035fa:	f8d5 00a4 	ldr.w	r0, [r5, #164]	; 0xa4
 80035fe:	4780      	blx	r0
 8003600:	e7f4      	b.n	80035ec <ad_sample_thread_entry+0x8>
 8003602:	bf00      	nop
 8003604:	20000bcc 	.word	0x20000bcc

08003608 <has_cmd_>:
 8003608:	f241 1310 	movw	r3, #4368	; 0x1110
 800360c:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003610:	f8d3 0208 	ldr.w	r0, [r3, #520]	; 0x208
 8003614:	f8d3 1414 	ldr.w	r1, [r3, #1044]	; 0x414
 8003618:	1840      	adds	r0, r0, r1
 800361a:	4770      	bx	lr

0800361c <append_>:
 800361c:	2901      	cmp	r1, #1
 800361e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003622:	4604      	mov	r4, r0
 8003624:	d005      	beq.n	8003632 <append_+0x16>
 8003626:	2902      	cmp	r1, #2
 8003628:	d028      	beq.n	800367c <append_+0x60>
 800362a:	f04f 30ff 	mov.w	r0, #4294967295
 800362e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8003632:	4918      	ldr	r1, [pc, #96]	; (8003694 <append_+0x78>)
 8003634:	f8d1 2200 	ldr.w	r2, [r1, #512]	; 0x200
 8003638:	f501 7602 	add.w	r6, r1, #520	; 0x208
 800363c:	eb01 1542 	add.w	r5, r1, r2, lsl #5
 8003640:	f501 7700 	add.w	r7, r1, #512	; 0x200
 8003644:	4620      	mov	r0, r4
 8003646:	f003 f837 	bl	80066b8 <rt_strlen>
 800364a:	281f      	cmp	r0, #31
 800364c:	bfb4      	ite	lt
 800364e:	4680      	movlt	r8, r0
 8003650:	f04f 081f 	movge.w	r8, #31
 8003654:	4621      	mov	r1, r4
 8003656:	4642      	mov	r2, r8
 8003658:	4628      	mov	r0, r5
 800365a:	f005 f92d 	bl	80088b8 <strncpy>
 800365e:	2300      	movs	r3, #0
 8003660:	f805 3008 	strb.w	r3, [r5, r8]
 8003664:	6839      	ldr	r1, [r7, #0]
 8003666:	2001      	movs	r0, #1
 8003668:	180a      	adds	r2, r1, r0
 800366a:	2a10      	cmp	r2, #16
 800366c:	bf08      	it	eq
 800366e:	2200      	moveq	r2, #0
 8003670:	603a      	str	r2, [r7, #0]
 8003672:	6833      	ldr	r3, [r6, #0]
 8003674:	1819      	adds	r1, r3, r0
 8003676:	6031      	str	r1, [r6, #0]
 8003678:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800367c:	4f05      	ldr	r7, [pc, #20]	; (8003694 <append_+0x78>)
 800367e:	f8d7 540c 	ldr.w	r5, [r7, #1036]	; 0x40c
 8003682:	f207 4614 	addw	r6, r7, #1044	; 0x414
 8003686:	eb07 1045 	add.w	r0, r7, r5, lsl #5
 800368a:	f500 7503 	add.w	r5, r0, #524	; 0x20c
 800368e:	f207 470c 	addw	r7, r7, #1036	; 0x40c
 8003692:	e7d7      	b.n	8003644 <append_+0x28>
 8003694:	20001110 	.word	0x20001110

08003698 <get_calibr>:
 8003698:	b500      	push	{lr}
 800369a:	b0a1      	sub	sp, #132	; 0x84
 800369c:	2100      	movs	r1, #0
 800369e:	2280      	movs	r2, #128	; 0x80
 80036a0:	4668      	mov	r0, sp
 80036a2:	f002 ff21 	bl	80064e8 <rt_memset>
 80036a6:	f44f 4340 	mov.w	r3, #49152	; 0xc000
 80036aa:	f6c0 0303 	movt	r3, #2051	; 0x803
 80036ae:	f648 5150 	movw	r1, #36176	; 0x8d50
 80036b2:	681a      	ldr	r2, [r3, #0]
 80036b4:	f6c0 0100 	movt	r1, #2048	; 0x800
 80036b8:	4668      	mov	r0, sp
 80036ba:	f003 fa69 	bl	8006b90 <rt_sprintf>
 80036be:	f241 0190 	movw	r1, #4240	; 0x1090
 80036c2:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80036c6:	4668      	mov	r0, sp
 80036c8:	680a      	ldr	r2, [r1, #0]
 80036ca:	4790      	blx	r2
 80036cc:	b021      	add	sp, #132	; 0x84
 80036ce:	bd00      	pop	{pc}

080036d0 <flash>:
 80036d0:	b510      	push	{r4, lr}
 80036d2:	b0a0      	sub	sp, #128	; 0x80
 80036d4:	4604      	mov	r4, r0
 80036d6:	2100      	movs	r1, #0
 80036d8:	2280      	movs	r2, #128	; 0x80
 80036da:	4668      	mov	r0, sp
 80036dc:	f002 ff04 	bl	80064e8 <rt_memset>
 80036e0:	f648 5164 	movw	r1, #36196	; 0x8d64
 80036e4:	4622      	mov	r2, r4
 80036e6:	f6c0 0100 	movt	r1, #2048	; 0x800
 80036ea:	4668      	mov	r0, sp
 80036ec:	f003 fa50 	bl	8006b90 <rt_sprintf>
 80036f0:	f241 0390 	movw	r3, #4240	; 0x1090
 80036f4:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80036f8:	4668      	mov	r0, sp
 80036fa:	6819      	ldr	r1, [r3, #0]
 80036fc:	4788      	blx	r1
 80036fe:	2001      	movs	r0, #1
 8003700:	b020      	add	sp, #128	; 0x80
 8003702:	bd10      	pop	{r4, pc}

08003704 <set_calibr>:
 8003704:	b510      	push	{r4, lr}
 8003706:	b0a0      	sub	sp, #128	; 0x80
 8003708:	2100      	movs	r1, #0
 800370a:	2280      	movs	r2, #128	; 0x80
 800370c:	4c0f      	ldr	r4, [pc, #60]	; (800374c <set_calibr+0x48>)
 800370e:	4668      	mov	r0, sp
 8003710:	f002 feea 	bl	80064e8 <rt_memset>
 8003714:	f648 5170 	movw	r1, #36208	; 0x8d70
 8003718:	4622      	mov	r2, r4
 800371a:	f6c0 0100 	movt	r1, #2048	; 0x800
 800371e:	4668      	mov	r0, sp
 8003720:	f003 fa36 	bl	8006b90 <rt_sprintf>
 8003724:	f241 0390 	movw	r3, #4240	; 0x1090
 8003728:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800372c:	6819      	ldr	r1, [r3, #0]
 800372e:	4668      	mov	r0, sp
 8003730:	4788      	blx	r1
 8003732:	f7fe fb2b 	bl	8001d8c <FLASH_UnlockBank1>
 8003736:	f44f 4070 	mov.w	r0, #61440	; 0xf000
 800373a:	4621      	mov	r1, r4
 800373c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003740:	f7fe fb74 	bl	8001e2c <FLASH_ProgramWord>
 8003744:	f7fe fb32 	bl	8001dac <FLASH_LockBank1>
 8003748:	b020      	add	sp, #128	; 0x80
 800374a:	bd10      	pop	{r4, pc}
 800374c:	20000c14 	.word	0x20000c14

08003750 <console_srv>:
 8003750:	b510      	push	{r4, lr}
 8003752:	4601      	mov	r1, r0
 8003754:	4604      	mov	r4, r0
 8003756:	2207      	movs	r2, #7
 8003758:	4810      	ldr	r0, [pc, #64]	; (800379c <console_srv+0x4c>)
 800375a:	f005 f8c1 	bl	80088e0 <strncmp>
 800375e:	b1a0      	cbz	r0, 800378a <console_srv+0x3a>
 8003760:	480f      	ldr	r0, [pc, #60]	; (80037a0 <console_srv+0x50>)
 8003762:	4621      	mov	r1, r4
 8003764:	2207      	movs	r2, #7
 8003766:	f005 f8bb 	bl	80088e0 <strncmp>
 800376a:	b128      	cbz	r0, 8003778 <console_srv+0x28>
 800376c:	4b0d      	ldr	r3, [pc, #52]	; (80037a4 <console_srv+0x54>)
 800376e:	480e      	ldr	r0, [pc, #56]	; (80037a8 <console_srv+0x58>)
 8003770:	6819      	ldr	r1, [r3, #0]
 8003772:	4788      	blx	r1
 8003774:	2001      	movs	r0, #1
 8003776:	bd10      	pop	{r4, pc}
 8003778:	4c0a      	ldr	r4, [pc, #40]	; (80037a4 <console_srv+0x54>)
 800377a:	480c      	ldr	r0, [pc, #48]	; (80037ac <console_srv+0x5c>)
 800377c:	6822      	ldr	r2, [r4, #0]
 800377e:	4790      	blx	r2
 8003780:	480b      	ldr	r0, [pc, #44]	; (80037b0 <console_srv+0x60>)
 8003782:	6060      	str	r0, [r4, #4]
 8003784:	6020      	str	r0, [r4, #0]
 8003786:	2001      	movs	r0, #1
 8003788:	bd10      	pop	{r4, pc}
 800378a:	4c06      	ldr	r4, [pc, #24]	; (80037a4 <console_srv+0x54>)
 800378c:	4809      	ldr	r0, [pc, #36]	; (80037b4 <console_srv+0x64>)
 800378e:	6823      	ldr	r3, [r4, #0]
 8003790:	4798      	blx	r3
 8003792:	4909      	ldr	r1, [pc, #36]	; (80037b8 <console_srv+0x68>)
 8003794:	2001      	movs	r0, #1
 8003796:	6061      	str	r1, [r4, #4]
 8003798:	6021      	str	r1, [r4, #0]
 800379a:	bd10      	pop	{r4, pc}
 800379c:	08008d88 	.word	0x08008d88
 80037a0:	08008db0 	.word	0x08008db0
 80037a4:	20001090 	.word	0x20001090
 80037a8:	08008ddc 	.word	0x08008ddc
 80037ac:	08008db8 	.word	0x08008db8
 80037b0:	08006bdd 	.word	0x08006bdd
 80037b4:	08008d90 	.word	0x08008d90
 80037b8:	08005259 	.word	0x08005259

080037bc <deal_cmd__>:
 80037bc:	b570      	push	{r4, r5, r6, lr}
 80037be:	460c      	mov	r4, r1
 80037c0:	213a      	movs	r1, #58	; 0x3a
 80037c2:	4605      	mov	r5, r0
 80037c4:	f005 f8ba 	bl	800893c <strchr>
 80037c8:	4606      	mov	r6, r0
 80037ca:	b1c0      	cbz	r0, 80037fe <deal_cmd__+0x42>
 80037cc:	2300      	movs	r3, #0
 80037ce:	7003      	strb	r3, [r0, #0]
 80037d0:	6821      	ldr	r1, [r4, #0]
 80037d2:	b919      	cbnz	r1, 80037dc <deal_cmd__+0x20>
 80037d4:	e00c      	b.n	80037f0 <deal_cmd__+0x34>
 80037d6:	f854 1f08 	ldr.w	r1, [r4, #8]!
 80037da:	b149      	cbz	r1, 80037f0 <deal_cmd__+0x34>
 80037dc:	4628      	mov	r0, r5
 80037de:	f005 f86d 	bl	80088bc <strcmp>
 80037e2:	2800      	cmp	r0, #0
 80037e4:	d1f7      	bne.n	80037d6 <deal_cmd__+0x1a>
 80037e6:	6863      	ldr	r3, [r4, #4]
 80037e8:	1c70      	adds	r0, r6, #1
 80037ea:	4798      	blx	r3
 80037ec:	2001      	movs	r0, #1
 80037ee:	bd70      	pop	{r4, r5, r6, pc}
 80037f0:	4906      	ldr	r1, [pc, #24]	; (800380c <deal_cmd__+0x50>)
 80037f2:	4807      	ldr	r0, [pc, #28]	; (8003810 <deal_cmd__+0x54>)
 80037f4:	680a      	ldr	r2, [r1, #0]
 80037f6:	4790      	blx	r2
 80037f8:	f04f 30ff 	mov.w	r0, #4294967295
 80037fc:	bd70      	pop	{r4, r5, r6, pc}
 80037fe:	4903      	ldr	r1, [pc, #12]	; (800380c <deal_cmd__+0x50>)
 8003800:	4804      	ldr	r0, [pc, #16]	; (8003814 <deal_cmd__+0x58>)
 8003802:	680a      	ldr	r2, [r1, #0]
 8003804:	4790      	blx	r2
 8003806:	f04f 30ff 	mov.w	r0, #4294967295
 800380a:	bd70      	pop	{r4, r5, r6, pc}
 800380c:	20001090 	.word	0x20001090
 8003810:	08008e0c 	.word	0x08008e0c
 8003814:	08008df4 	.word	0x08008df4

08003818 <deal_cmd_>:
 8003818:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800381c:	4d24      	ldr	r5, [pc, #144]	; (80038b0 <deal_cmd_+0x98>)
 800381e:	4c25      	ldr	r4, [pc, #148]	; (80038b4 <deal_cmd_+0x9c>)
 8003820:	682a      	ldr	r2, [r5, #0]
 8003822:	f8d4 3208 	ldr.w	r3, [r4, #520]	; 0x208
 8003826:	606a      	str	r2, [r5, #4]
 8003828:	b1db      	cbz	r3, 8003862 <deal_cmd_+0x4a>
 800382a:	f8df 8090 	ldr.w	r8, [pc, #144]	; 80038bc <deal_cmd_+0xa4>
 800382e:	4627      	mov	r7, r4
 8003830:	2600      	movs	r6, #0
 8003832:	f8d4 0204 	ldr.w	r0, [r4, #516]	; 0x204
 8003836:	4920      	ldr	r1, [pc, #128]	; (80038b8 <deal_cmd_+0xa0>)
 8003838:	eb04 1040 	add.w	r0, r4, r0, lsl #5
 800383c:	f8c5 8000 	str.w	r8, [r5]
 8003840:	f7ff ffbc 	bl	80037bc <deal_cmd__>
 8003844:	f8d4 1204 	ldr.w	r1, [r4, #516]	; 0x204
 8003848:	f8d4 3208 	ldr.w	r3, [r4, #520]	; 0x208
 800384c:	1c4a      	adds	r2, r1, #1
 800384e:	2a10      	cmp	r2, #16
 8003850:	bf08      	it	eq
 8003852:	4632      	moveq	r2, r6
 8003854:	1e58      	subs	r0, r3, #1
 8003856:	f8c7 2204 	str.w	r2, [r7, #516]	; 0x204
 800385a:	f8c4 0208 	str.w	r0, [r4, #520]	; 0x208
 800385e:	2800      	cmp	r0, #0
 8003860:	d1e7      	bne.n	8003832 <deal_cmd_+0x1a>
 8003862:	f8d4 1414 	ldr.w	r1, [r4, #1044]	; 0x414
 8003866:	b1e9      	cbz	r1, 80038a4 <deal_cmd_+0x8c>
 8003868:	f8df 8050 	ldr.w	r8, [pc, #80]	; 80038bc <deal_cmd_+0xa4>
 800386c:	4f11      	ldr	r7, [pc, #68]	; (80038b4 <deal_cmd_+0x9c>)
 800386e:	2600      	movs	r6, #0
 8003870:	f8d4 3410 	ldr.w	r3, [r4, #1040]	; 0x410
 8003874:	4910      	ldr	r1, [pc, #64]	; (80038b8 <deal_cmd_+0xa0>)
 8003876:	eb04 1243 	add.w	r2, r4, r3, lsl #5
 800387a:	f502 7003 	add.w	r0, r2, #524	; 0x20c
 800387e:	f8c5 8000 	str.w	r8, [r5]
 8003882:	f7ff ff9b 	bl	80037bc <deal_cmd__>
 8003886:	f8d4 0410 	ldr.w	r0, [r4, #1040]	; 0x410
 800388a:	f8d4 1414 	ldr.w	r1, [r4, #1044]	; 0x414
 800388e:	1c42      	adds	r2, r0, #1
 8003890:	2a10      	cmp	r2, #16
 8003892:	bf08      	it	eq
 8003894:	4632      	moveq	r2, r6
 8003896:	1e4b      	subs	r3, r1, #1
 8003898:	f8c7 2410 	str.w	r2, [r7, #1040]	; 0x410
 800389c:	f8c4 3414 	str.w	r3, [r4, #1044]	; 0x414
 80038a0:	2b00      	cmp	r3, #0
 80038a2:	d1e5      	bne.n	8003870 <deal_cmd_+0x58>
 80038a4:	6868      	ldr	r0, [r5, #4]
 80038a6:	6028      	str	r0, [r5, #0]
 80038a8:	2000      	movs	r0, #0
 80038aa:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80038ae:	bf00      	nop
 80038b0:	20001090 	.word	0x20001090
 80038b4:	20001110 	.word	0x20001110
 80038b8:	200000b4 	.word	0x200000b4
 80038bc:	08005259 	.word	0x08005259

080038c0 <vout_srv>:
 80038c0:	f240 1148 	movw	r1, #328	; 0x148
 80038c4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80038c8:	f7ff bf78 	b.w	80037bc <deal_cmd__>

080038cc <adc_srv>:
 80038cc:	f240 0130 	movw	r1, #48	; 0x30
 80038d0:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80038d4:	f7ff bf72 	b.w	80037bc <deal_cmd__>

080038d8 <motor_srv>:
 80038d8:	f240 01ec 	movw	r1, #236	; 0xec
 80038dc:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80038e0:	f7ff bf6c 	b.w	80037bc <deal_cmd__>

080038e4 <calib_srv>:
 80038e4:	f240 019c 	movw	r1, #156	; 0x9c
 80038e8:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80038ec:	f7ff bf66 	b.w	80037bc <deal_cmd__>

080038f0 <cmd_dealer_init>:
 80038f0:	b538      	push	{r3, r4, r5, lr}
 80038f2:	f241 1410 	movw	r4, #4368	; 0x1110
 80038f6:	f2c2 0400 	movt	r4, #8192	; 0x2000
 80038fa:	f44f 7503 	mov.w	r5, #524	; 0x20c
 80038fe:	2100      	movs	r1, #0
 8003900:	462a      	mov	r2, r5
 8003902:	4620      	mov	r0, r4
 8003904:	f002 fdf0 	bl	80064e8 <rt_memset>
 8003908:	2100      	movs	r1, #0
 800390a:	1960      	adds	r0, r4, r5
 800390c:	462a      	mov	r2, r5
 800390e:	f002 fdeb 	bl	80064e8 <rt_memset>
 8003912:	f243 6309 	movw	r3, #13833	; 0x3609
 8003916:	f643 0019 	movw	r0, #14361	; 0x3819
 800391a:	f243 611d 	movw	r1, #13853	; 0x361d
 800391e:	f6c0 0300 	movt	r3, #2048	; 0x800
 8003922:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003926:	f6c0 0100 	movt	r1, #2048	; 0x800
 800392a:	f8c4 041c 	str.w	r0, [r4, #1052]	; 0x41c
 800392e:	f8c4 3418 	str.w	r3, [r4, #1048]	; 0x418
 8003932:	f8c4 1420 	str.w	r1, [r4, #1056]	; 0x420
 8003936:	2000      	movs	r0, #0
 8003938:	bd38      	pop	{r3, r4, r5, pc}
 800393a:	bf00      	nop

0800393c <cmd_thread_entry>:
 800393c:	b538      	push	{r3, r4, r5, lr}
 800393e:	f7ff ffd7 	bl	80038f0 <cmd_dealer_init>
 8003942:	f000 f857 	bl	80039f4 <hardware_init>
 8003946:	4c0a      	ldr	r4, [pc, #40]	; (8003970 <cmd_thread_entry+0x34>)
 8003948:	4625      	mov	r5, r4
 800394a:	f8d4 3418 	ldr.w	r3, [r4, #1048]	; 0x418
 800394e:	4798      	blx	r3
 8003950:	b948      	cbnz	r0, 8003966 <cmd_thread_entry+0x2a>
 8003952:	f003 ffe9 	bl	8007928 <rt_thread_yield>
 8003956:	201e      	movs	r0, #30
 8003958:	f004 f87c 	bl	8007a54 <rt_thread_delay>
 800395c:	f8d4 3418 	ldr.w	r3, [r4, #1048]	; 0x418
 8003960:	4798      	blx	r3
 8003962:	2800      	cmp	r0, #0
 8003964:	d0f5      	beq.n	8003952 <cmd_thread_entry+0x16>
 8003966:	f8d5 041c 	ldr.w	r0, [r5, #1052]	; 0x41c
 800396a:	4780      	blx	r0
 800396c:	e7ed      	b.n	800394a <cmd_thread_entry+0xe>
 800396e:	bf00      	nop
 8003970:	20001110 	.word	0x20001110

08003974 <TIM3_IRQHandler>:
 8003974:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8003978:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800397c:	b508      	push	{r3, lr}
 800397e:	8a13      	ldrh	r3, [r2, #16]
 8003980:	4610      	mov	r0, r2
 8003982:	f023 0101 	bic.w	r1, r3, #1
 8003986:	040b      	lsls	r3, r1, #16
 8003988:	0c19      	lsrs	r1, r3, #16
 800398a:	8211      	strh	r1, [r2, #16]
 800398c:	2101      	movs	r1, #1
 800398e:	f7fe f983 	bl	8001c98 <TIM_ClearFlag>
 8003992:	4809      	ldr	r0, [pc, #36]	; (80039b8 <TIM3_IRQHandler+0x44>)
 8003994:	6a42      	ldr	r2, [r0, #36]	; 0x24
 8003996:	2a01      	cmp	r2, #1
 8003998:	d008      	beq.n	80039ac <TIM3_IRQHandler+0x38>
 800399a:	6a43      	ldr	r3, [r0, #36]	; 0x24
 800399c:	2b02      	cmp	r3, #2
 800399e:	d000      	beq.n	80039a2 <TIM3_IRQHandler+0x2e>
 80039a0:	bd08      	pop	{r3, pc}
 80039a2:	4906      	ldr	r1, [pc, #24]	; (80039bc <TIM3_IRQHandler+0x48>)
 80039a4:	6c08      	ldr	r0, [r1, #64]	; 0x40
 80039a6:	1e42      	subs	r2, r0, #1
 80039a8:	640a      	str	r2, [r1, #64]	; 0x40
 80039aa:	bd08      	pop	{r3, pc}
 80039ac:	4b03      	ldr	r3, [pc, #12]	; (80039bc <TIM3_IRQHandler+0x48>)
 80039ae:	6c19      	ldr	r1, [r3, #64]	; 0x40
 80039b0:	1c48      	adds	r0, r1, #1
 80039b2:	6418      	str	r0, [r3, #64]	; 0x40
 80039b4:	bd08      	pop	{r3, pc}
 80039b6:	bf00      	nop
 80039b8:	20000114 	.word	0x20000114
 80039bc:	20000bcc 	.word	0x20000bcc

080039c0 <RCC_Configuration_motor>:
 80039c0:	201d      	movs	r0, #29
 80039c2:	2101      	movs	r1, #1
 80039c4:	f7fd b8c2 	b.w	8000b4c <RCC_APB2PeriphClockCmd>

080039c8 <NVIC_Configuration_motor>:
 80039c8:	b500      	push	{lr}
 80039ca:	f44f 60e0 	mov.w	r0, #1792	; 0x700
 80039ce:	b083      	sub	sp, #12
 80039d0:	f7ff f9ee 	bl	8002db0 <NVIC_PriorityGroupConfig>
 80039d4:	2300      	movs	r3, #0
 80039d6:	221d      	movs	r2, #29
 80039d8:	2101      	movs	r1, #1
 80039da:	a801      	add	r0, sp, #4
 80039dc:	f88d 2004 	strb.w	r2, [sp, #4]
 80039e0:	f88d 3005 	strb.w	r3, [sp, #5]
 80039e4:	f88d 3006 	strb.w	r3, [sp, #6]
 80039e8:	f88d 1007 	strb.w	r1, [sp, #7]
 80039ec:	f7ff fa02 	bl	8002df4 <NVIC_Init>
 80039f0:	b003      	add	sp, #12
 80039f2:	bd00      	pop	{pc}

080039f4 <hardware_init>:
 80039f4:	b508      	push	{r3, lr}
 80039f6:	f7ff ffe3 	bl	80039c0 <RCC_Configuration_motor>
 80039fa:	f7ff ffe5 	bl	80039c8 <NVIC_Configuration_motor>
 80039fe:	f7ff fd6b 	bl	80034d8 <adc_config>
 8003a02:	f000 fa65 	bl	8003ed0 <vout_init>
 8003a06:	f000 fe5f 	bl	80046c8 <usb_init>
 8003a0a:	f648 6058 	movw	r0, #36440	; 0x8e58
 8003a0e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003a12:	f003 f8e3 	bl	8006bdc <rt_kprintf>
 8003a16:	2000      	movs	r0, #0
 8003a18:	bd08      	pop	{r3, pc}
 8003a1a:	bf00      	nop

08003a1c <motor_set_auto>:
 8003a1c:	b508      	push	{r3, lr}
 8003a1e:	7803      	ldrb	r3, [r0, #0]
 8003a20:	2b4e      	cmp	r3, #78	; 0x4e
 8003a22:	d007      	beq.n	8003a34 <motor_set_auto+0x18>
 8003a24:	2b59      	cmp	r3, #89	; 0x59
 8003a26:	d00a      	beq.n	8003a3e <motor_set_auto+0x22>
 8003a28:	4807      	ldr	r0, [pc, #28]	; (8003a48 <motor_set_auto+0x2c>)
 8003a2a:	f003 f8d7 	bl	8006bdc <rt_kprintf>
 8003a2e:	f04f 30ff 	mov.w	r0, #4294967295
 8003a32:	bd08      	pop	{r3, pc}
 8003a34:	4805      	ldr	r0, [pc, #20]	; (8003a4c <motor_set_auto+0x30>)
 8003a36:	2200      	movs	r2, #0
 8003a38:	6282      	str	r2, [r0, #40]	; 0x28
 8003a3a:	2001      	movs	r0, #1
 8003a3c:	bd08      	pop	{r3, pc}
 8003a3e:	4903      	ldr	r1, [pc, #12]	; (8003a4c <motor_set_auto+0x30>)
 8003a40:	2001      	movs	r0, #1
 8003a42:	6288      	str	r0, [r1, #40]	; 0x28
 8003a44:	bd08      	pop	{r3, pc}
 8003a46:	bf00      	nop
 8003a48:	08008e74 	.word	0x08008e74
 8003a4c:	20000114 	.word	0x20000114

08003a50 <motor_setup>:
 8003a50:	b508      	push	{r3, lr}
 8003a52:	f004 ff03 	bl	800885c <atoi>
 8003a56:	f240 1314 	movw	r3, #276	; 0x114
 8003a5a:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003a5e:	8598      	strh	r0, [r3, #44]	; 0x2c
 8003a60:	2001      	movs	r0, #1
 8003a62:	bd08      	pop	{r3, pc}

08003a64 <middle_Y_led>:
 8003a64:	2001      	movs	r0, #1
 8003a66:	f7fc bcd5 	b.w	8000414 <rt_hw_led_off>
 8003a6a:	bf00      	nop

08003a6c <middle_N_led>:
 8003a6c:	2001      	movs	r0, #1
 8003a6e:	f7fc bcbd 	b.w	80003ec <rt_hw_led_on>
 8003a72:	bf00      	nop

08003a74 <middle_status_update>:
 8003a74:	b538      	push	{r3, r4, r5, lr}
 8003a76:	4c0b      	ldr	r4, [pc, #44]	; (8003aa4 <middle_status_update+0x30>)
 8003a78:	8aa1      	ldrh	r1, [r4, #20]
 8003a7a:	6920      	ldr	r0, [r4, #16]
 8003a7c:	f7fe fbba 	bl	80021f4 <GPIO_ReadInputDataBit>
 8003a80:	8ba1      	ldrh	r1, [r4, #28]
 8003a82:	4605      	mov	r5, r0
 8003a84:	69a0      	ldr	r0, [r4, #24]
 8003a86:	f7fe fbb5 	bl	80021f4 <GPIO_ReadInputDataBit>
 8003a8a:	2d01      	cmp	r5, #1
 8003a8c:	d001      	beq.n	8003a92 <middle_status_update+0x1e>
 8003a8e:	2801      	cmp	r0, #1
 8003a90:	d103      	bne.n	8003a9a <middle_status_update+0x26>
 8003a92:	f7ff ffeb 	bl	8003a6c <middle_N_led>
 8003a96:	2000      	movs	r0, #0
 8003a98:	bd38      	pop	{r3, r4, r5, pc}
 8003a9a:	f7ff ffe3 	bl	8003a64 <middle_Y_led>
 8003a9e:	2001      	movs	r0, #1
 8003aa0:	bd38      	pop	{r3, r4, r5, pc}
 8003aa2:	bf00      	nop
 8003aa4:	20000114 	.word	0x20000114

08003aa8 <EXTI15_10_IRQHandler>:
 8003aa8:	b508      	push	{r3, lr}
 8003aaa:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8003aae:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8003ab2:	695a      	ldr	r2, [r3, #20]
 8003ab4:	0412      	lsls	r2, r2, #16
 8003ab6:	d400      	bmi.n	8003aba <EXTI15_10_IRQHandler+0x12>
 8003ab8:	bd08      	pop	{r3, pc}
 8003aba:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8003abe:	6158      	str	r0, [r3, #20]
 8003ac0:	4b05      	ldr	r3, [pc, #20]	; (8003ad8 <EXTI15_10_IRQHandler+0x30>)
 8003ac2:	2101      	movs	r1, #1
 8003ac4:	6019      	str	r1, [r3, #0]
 8003ac6:	f7ff ffd5 	bl	8003a74 <middle_status_update>
 8003aca:	2801      	cmp	r0, #1
 8003acc:	d1f4      	bne.n	8003ab8 <EXTI15_10_IRQHandler+0x10>
 8003ace:	4a03      	ldr	r2, [pc, #12]	; (8003adc <EXTI15_10_IRQHandler+0x34>)
 8003ad0:	f8d2 0094 	ldr.w	r0, [r2, #148]	; 0x94
 8003ad4:	4780      	blx	r0
 8003ad6:	e7ef      	b.n	8003ab8 <EXTI15_10_IRQHandler+0x10>
 8003ad8:	20000700 	.word	0x20000700
 8003adc:	20000bcc 	.word	0x20000bcc

08003ae0 <EXTI4_IRQHandler>:
 8003ae0:	b508      	push	{r3, lr}
 8003ae2:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8003ae6:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8003aea:	695a      	ldr	r2, [r3, #20]
 8003aec:	06d1      	lsls	r1, r2, #27
 8003aee:	d400      	bmi.n	8003af2 <EXTI4_IRQHandler+0x12>
 8003af0:	bd08      	pop	{r3, pc}
 8003af2:	2010      	movs	r0, #16
 8003af4:	6158      	str	r0, [r3, #20]
 8003af6:	4b06      	ldr	r3, [pc, #24]	; (8003b10 <EXTI4_IRQHandler+0x30>)
 8003af8:	2101      	movs	r1, #1
 8003afa:	6019      	str	r1, [r3, #0]
 8003afc:	f7ff ffba 	bl	8003a74 <middle_status_update>
 8003b00:	2801      	cmp	r0, #1
 8003b02:	d1f5      	bne.n	8003af0 <EXTI4_IRQHandler+0x10>
 8003b04:	4a03      	ldr	r2, [pc, #12]	; (8003b14 <EXTI4_IRQHandler+0x34>)
 8003b06:	f8d2 0094 	ldr.w	r0, [r2, #148]	; 0x94
 8003b0a:	4780      	blx	r0
 8003b0c:	e7f0      	b.n	8003af0 <EXTI4_IRQHandler+0x10>
 8003b0e:	bf00      	nop
 8003b10:	20000704 	.word	0x20000704
 8003b14:	20000bcc 	.word	0x20000bcc

08003b18 <pwm_accl>:
 8003b18:	4b09      	ldr	r3, [pc, #36]	; (8003b40 <pwm_accl+0x28>)
 8003b1a:	f246 6267 	movw	r2, #26215	; 0x6667
 8003b1e:	8dd9      	ldrh	r1, [r3, #46]	; 0x2e
 8003b20:	f2c6 6266 	movt	r2, #26214	; 0x6666
 8003b24:	00c8      	lsls	r0, r1, #3
 8003b26:	fb82 0100 	smull	r0, r1, r2, r0
 8003b2a:	8d9a      	ldrh	r2, [r3, #44]	; 0x2c
 8003b2c:	0889      	lsrs	r1, r1, #2
 8003b2e:	4291      	cmp	r1, r2
 8003b30:	6a18      	ldr	r0, [r3, #32]
 8003b32:	85d9      	strh	r1, [r3, #46]	; 0x2e
 8003b34:	bf3c      	itt	cc
 8003b36:	4611      	movcc	r1, r2
 8003b38:	85da      	strhcc	r2, [r3, #46]	; 0x2e
 8003b3a:	f7fd bfd9 	b.w	8001af0 <TIM_SetAutoreload>
 8003b3e:	bf00      	nop
 8003b40:	20000114 	.word	0x20000114

08003b44 <pwm_dccl>:
 8003b44:	4b07      	ldr	r3, [pc, #28]	; (8003b64 <pwm_dccl+0x20>)
 8003b46:	8dd9      	ldrh	r1, [r3, #46]	; 0x2e
 8003b48:	eb01 0081 	add.w	r0, r1, r1, lsl #2
 8003b4c:	f3c0 018f 	ubfx	r1, r0, #2, #16
 8003b50:	f5b1 7f7a 	cmp.w	r1, #1000	; 0x3e8
 8003b54:	6a18      	ldr	r0, [r3, #32]
 8003b56:	bf88      	it	hi
 8003b58:	f44f 717a 	movhi.w	r1, #1000	; 0x3e8
 8003b5c:	85d9      	strh	r1, [r3, #46]	; 0x2e
 8003b5e:	f7fd bfc7 	b.w	8001af0 <TIM_SetAutoreload>
 8003b62:	bf00      	nop
 8003b64:	20000114 	.word	0x20000114

08003b68 <motor_accl>:
 8003b68:	b508      	push	{r3, lr}
 8003b6a:	7803      	ldrb	r3, [r0, #0]
 8003b6c:	2b78      	cmp	r3, #120	; 0x78
 8003b6e:	d001      	beq.n	8003b74 <motor_accl+0xc>
 8003b70:	2001      	movs	r0, #1
 8003b72:	bd08      	pop	{r3, pc}
 8003b74:	7840      	ldrb	r0, [r0, #1]
 8003b76:	282b      	cmp	r0, #43	; 0x2b
 8003b78:	d007      	beq.n	8003b8a <motor_accl+0x22>
 8003b7a:	282d      	cmp	r0, #45	; 0x2d
 8003b7c:	d1f8      	bne.n	8003b70 <motor_accl+0x8>
 8003b7e:	f7ff ffe1 	bl	8003b44 <pwm_dccl>
 8003b82:	4805      	ldr	r0, [pc, #20]	; (8003b98 <motor_accl+0x30>)
 8003b84:	f003 f82a 	bl	8006bdc <rt_kprintf>
 8003b88:	e7f2      	b.n	8003b70 <motor_accl+0x8>
 8003b8a:	f7ff ffc5 	bl	8003b18 <pwm_accl>
 8003b8e:	4803      	ldr	r0, [pc, #12]	; (8003b9c <motor_accl+0x34>)
 8003b90:	f003 f824 	bl	8006bdc <rt_kprintf>
 8003b94:	e7ec      	b.n	8003b70 <motor_accl+0x8>
 8003b96:	bf00      	nop
 8003b98:	08008eb0 	.word	0x08008eb0
 8003b9c:	08008e98 	.word	0x08008e98

08003ba0 <pwm_stop>:
 8003ba0:	b510      	push	{r4, lr}
 8003ba2:	f240 1414 	movw	r4, #276	; 0x114
 8003ba6:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8003baa:	b082      	sub	sp, #8
 8003bac:	6a20      	ldr	r0, [r4, #32]
 8003bae:	2100      	movs	r1, #0
 8003bb0:	f7fd fdec 	bl	800178c <TIM_Cmd>
 8003bb4:	88a3      	ldrh	r3, [r4, #4]
 8003bb6:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
 8003bba:	85e2      	strh	r2, [r4, #46]	; 0x2e
 8003bbc:	2200      	movs	r2, #0
 8003bbe:	6820      	ldr	r0, [r4, #0]
 8003bc0:	a901      	add	r1, sp, #4
 8003bc2:	6262      	str	r2, [r4, #36]	; 0x24
 8003bc4:	f8ad 3004 	strh.w	r3, [sp, #4]
 8003bc8:	2203      	movs	r2, #3
 8003bca:	2310      	movs	r3, #16
 8003bcc:	f88d 3007 	strb.w	r3, [sp, #7]
 8003bd0:	f88d 2006 	strb.w	r2, [sp, #6]
 8003bd4:	f7fe f972 	bl	8001ebc <GPIO_Init>
 8003bd8:	6820      	ldr	r0, [r4, #0]
 8003bda:	88a1      	ldrh	r1, [r4, #4]
 8003bdc:	f7fe fbac 	bl	8002338 <GPIO_ResetBits>
 8003be0:	b002      	add	sp, #8
 8003be2:	bd10      	pop	{r4, pc}

08003be4 <motor_stop>:
 8003be4:	b508      	push	{r3, lr}
 8003be6:	f7ff ffdb 	bl	8003ba0 <pwm_stop>
 8003bea:	f648 60c8 	movw	r0, #36552	; 0x8ec8
 8003bee:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003bf2:	f002 fff3 	bl	8006bdc <rt_kprintf>
 8003bf6:	2001      	movs	r0, #1
 8003bf8:	bd08      	pop	{r3, pc}
 8003bfa:	bf00      	nop

08003bfc <pollar_service>:
 8003bfc:	b508      	push	{r3, lr}
 8003bfe:	4b19      	ldr	r3, [pc, #100]	; (8003c64 <pollar_service+0x68>)
 8003c00:	681a      	ldr	r2, [r3, #0]
 8003c02:	2a01      	cmp	r2, #1
 8003c04:	d019      	beq.n	8003c3a <pollar_service+0x3e>
 8003c06:	4918      	ldr	r1, [pc, #96]	; (8003c68 <pollar_service+0x6c>)
 8003c08:	680b      	ldr	r3, [r1, #0]
 8003c0a:	2b01      	cmp	r3, #1
 8003c0c:	d000      	beq.n	8003c10 <pollar_service+0x14>
 8003c0e:	bd08      	pop	{r3, pc}
 8003c10:	2200      	movs	r2, #0
 8003c12:	600a      	str	r2, [r1, #0]
 8003c14:	f7ff ff2e 	bl	8003a74 <middle_status_update>
 8003c18:	b9d0      	cbnz	r0, 8003c50 <pollar_service+0x54>
 8003c1a:	4814      	ldr	r0, [pc, #80]	; (8003c6c <pollar_service+0x70>)
 8003c1c:	f002 ffde 	bl	8006bdc <rt_kprintf>
 8003c20:	f7ff ffbe 	bl	8003ba0 <pwm_stop>
 8003c24:	4812      	ldr	r0, [pc, #72]	; (8003c70 <pollar_service+0x74>)
 8003c26:	6a81      	ldr	r1, [r0, #40]	; 0x28
 8003c28:	2901      	cmp	r1, #1
 8003c2a:	d1f0      	bne.n	8003c0e <pollar_service+0x12>
 8003c2c:	4b11      	ldr	r3, [pc, #68]	; (8003c74 <pollar_service+0x78>)
 8003c2e:	2102      	movs	r1, #2
 8003c30:	f8d3 2420 	ldr.w	r2, [r3, #1056]	; 0x420
 8003c34:	4810      	ldr	r0, [pc, #64]	; (8003c78 <pollar_service+0x7c>)
 8003c36:	4790      	blx	r2
 8003c38:	bd08      	pop	{r3, pc}
 8003c3a:	2000      	movs	r0, #0
 8003c3c:	6018      	str	r0, [r3, #0]
 8003c3e:	f7ff ff19 	bl	8003a74 <middle_status_update>
 8003c42:	b950      	cbnz	r0, 8003c5a <pollar_service+0x5e>
 8003c44:	480d      	ldr	r0, [pc, #52]	; (8003c7c <pollar_service+0x80>)
 8003c46:	f002 ffc9 	bl	8006bdc <rt_kprintf>
 8003c4a:	f7ff ffa9 	bl	8003ba0 <pwm_stop>
 8003c4e:	e7da      	b.n	8003c06 <pollar_service+0xa>
 8003c50:	480b      	ldr	r0, [pc, #44]	; (8003c80 <pollar_service+0x84>)
 8003c52:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8003c56:	f002 bfc1 	b.w	8006bdc <rt_kprintf>
 8003c5a:	480a      	ldr	r0, [pc, #40]	; (8003c84 <pollar_service+0x88>)
 8003c5c:	f002 ffbe 	bl	8006bdc <rt_kprintf>
 8003c60:	e7d1      	b.n	8003c06 <pollar_service+0xa>
 8003c62:	bf00      	nop
 8003c64:	20000704 	.word	0x20000704
 8003c68:	20000700 	.word	0x20000700
 8003c6c:	08008edc 	.word	0x08008edc
 8003c70:	20000114 	.word	0x20000114
 8003c74:	20001110 	.word	0x20001110
 8003c78:	08008ef4 	.word	0x08008ef4
 8003c7c:	0800896c 	.word	0x0800896c
 8003c80:	08008f04 	.word	0x08008f04
 8003c84:	08008980 	.word	0x08008980

08003c88 <event_thread_entry>:
 8003c88:	b510      	push	{r4, lr}
 8003c8a:	f7ff fef3 	bl	8003a74 <middle_status_update>
 8003c8e:	4c04      	ldr	r4, [pc, #16]	; (8003ca0 <event_thread_entry+0x18>)
 8003c90:	f7ff ffb4 	bl	8003bfc <pollar_service>
 8003c94:	f8d4 30b0 	ldr.w	r3, [r4, #176]	; 0xb0
 8003c98:	4798      	blx	r3
 8003c9a:	f003 fe45 	bl	8007928 <rt_thread_yield>
 8003c9e:	e7f7      	b.n	8003c90 <event_thread_entry+0x8>
 8003ca0:	20000bcc 	.word	0x20000bcc

08003ca4 <pwm_run>:
 8003ca4:	b510      	push	{r4, lr}
 8003ca6:	f240 1414 	movw	r4, #276	; 0x114
 8003caa:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8003cae:	88a3      	ldrh	r3, [r4, #4]
 8003cb0:	b082      	sub	sp, #8
 8003cb2:	6820      	ldr	r0, [r4, #0]
 8003cb4:	a901      	add	r1, sp, #4
 8003cb6:	f8ad 3004 	strh.w	r3, [sp, #4]
 8003cba:	2218      	movs	r2, #24
 8003cbc:	2303      	movs	r3, #3
 8003cbe:	f88d 2007 	strb.w	r2, [sp, #7]
 8003cc2:	f88d 3006 	strb.w	r3, [sp, #6]
 8003cc6:	f7fe f8f9 	bl	8001ebc <GPIO_Init>
 8003cca:	6a20      	ldr	r0, [r4, #32]
 8003ccc:	2101      	movs	r1, #1
 8003cce:	f7fd fd5d 	bl	800178c <TIM_Cmd>
 8003cd2:	b002      	add	sp, #8
 8003cd4:	bd10      	pop	{r4, pc}
 8003cd6:	bf00      	nop

08003cd8 <pwm_set_forward>:
 8003cd8:	f240 1314 	movw	r3, #276	; 0x114
 8003cdc:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003ce0:	6898      	ldr	r0, [r3, #8]
 8003ce2:	8999      	ldrh	r1, [r3, #12]
 8003ce4:	2201      	movs	r2, #1
 8003ce6:	625a      	str	r2, [r3, #36]	; 0x24
 8003ce8:	f7fe baea 	b.w	80022c0 <GPIO_SetBits>

08003cec <pwm_set_backward>:
 8003cec:	f240 1314 	movw	r3, #276	; 0x114
 8003cf0:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003cf4:	6898      	ldr	r0, [r3, #8]
 8003cf6:	8999      	ldrh	r1, [r3, #12]
 8003cf8:	2202      	movs	r2, #2
 8003cfa:	625a      	str	r2, [r3, #36]	; 0x24
 8003cfc:	f7fe bb1c 	b.w	8002338 <GPIO_ResetBits>

08003d00 <motor_run>:
 8003d00:	b510      	push	{r4, lr}
 8003d02:	4604      	mov	r4, r0
 8003d04:	f7ff ff4c 	bl	8003ba0 <pwm_stop>
 8003d08:	f44f 7096 	mov.w	r0, #300	; 0x12c
 8003d0c:	f003 fea2 	bl	8007a54 <rt_thread_delay>
 8003d10:	2c01      	cmp	r4, #1
 8003d12:	d007      	beq.n	8003d24 <motor_run+0x24>
 8003d14:	2c02      	cmp	r4, #2
 8003d16:	d019      	beq.n	8003d4c <motor_run+0x4c>
 8003d18:	480e      	ldr	r0, [pc, #56]	; (8003d54 <motor_run+0x54>)
 8003d1a:	f002 ff5f 	bl	8006bdc <rt_kprintf>
 8003d1e:	f04f 30ff 	mov.w	r0, #4294967295
 8003d22:	bd10      	pop	{r4, pc}
 8003d24:	f7ff ffd8 	bl	8003cd8 <pwm_set_forward>
 8003d28:	4c0b      	ldr	r4, [pc, #44]	; (8003d58 <motor_run+0x58>)
 8003d2a:	f7ff ffbb 	bl	8003ca4 <pwm_run>
 8003d2e:	8de2      	ldrh	r2, [r4, #46]	; 0x2e
 8003d30:	8da3      	ldrh	r3, [r4, #44]	; 0x2c
 8003d32:	429a      	cmp	r2, r3
 8003d34:	d908      	bls.n	8003d48 <motor_run+0x48>
 8003d36:	201e      	movs	r0, #30
 8003d38:	f003 fe8c 	bl	8007a54 <rt_thread_delay>
 8003d3c:	f7ff feec 	bl	8003b18 <pwm_accl>
 8003d40:	8de0      	ldrh	r0, [r4, #46]	; 0x2e
 8003d42:	8da1      	ldrh	r1, [r4, #44]	; 0x2c
 8003d44:	4288      	cmp	r0, r1
 8003d46:	d8f6      	bhi.n	8003d36 <motor_run+0x36>
 8003d48:	2001      	movs	r0, #1
 8003d4a:	bd10      	pop	{r4, pc}
 8003d4c:	f7ff ffce 	bl	8003cec <pwm_set_backward>
 8003d50:	e7ea      	b.n	8003d28 <motor_run+0x28>
 8003d52:	bf00      	nop
 8003d54:	08008f1c 	.word	0x08008f1c
 8003d58:	20000114 	.word	0x20000114

08003d5c <motor_move>:
 8003d5c:	b508      	push	{r3, lr}
 8003d5e:	7803      	ldrb	r3, [r0, #0]
 8003d60:	2b78      	cmp	r3, #120	; 0x78
 8003d62:	d005      	beq.n	8003d70 <motor_move+0x14>
 8003d64:	4818      	ldr	r0, [pc, #96]	; (8003dc8 <motor_move+0x6c>)
 8003d66:	f002 ff39 	bl	8006bdc <rt_kprintf>
 8003d6a:	f04f 30ff 	mov.w	r0, #4294967295
 8003d6e:	bd08      	pop	{r3, pc}
 8003d70:	7840      	ldrb	r0, [r0, #1]
 8003d72:	282b      	cmp	r0, #43	; 0x2b
 8003d74:	d00d      	beq.n	8003d92 <motor_move+0x36>
 8003d76:	282d      	cmp	r0, #45	; 0x2d
 8003d78:	d014      	beq.n	8003da4 <motor_move+0x48>
 8003d7a:	283e      	cmp	r0, #62	; 0x3e
 8003d7c:	d01b      	beq.n	8003db6 <motor_move+0x5a>
 8003d7e:	283c      	cmp	r0, #60	; 0x3c
 8003d80:	d1f0      	bne.n	8003d64 <motor_move+0x8>
 8003d82:	4812      	ldr	r0, [pc, #72]	; (8003dcc <motor_move+0x70>)
 8003d84:	f002 ff2a 	bl	8006bdc <rt_kprintf>
 8003d88:	2002      	movs	r0, #2
 8003d8a:	f7ff ffb9 	bl	8003d00 <motor_run>
 8003d8e:	2001      	movs	r0, #1
 8003d90:	bd08      	pop	{r3, pc}
 8003d92:	480f      	ldr	r0, [pc, #60]	; (8003dd0 <motor_move+0x74>)
 8003d94:	f002 ff22 	bl	8006bdc <rt_kprintf>
 8003d98:	f7ff ff9e 	bl	8003cd8 <pwm_set_forward>
 8003d9c:	f7ff ff82 	bl	8003ca4 <pwm_run>
 8003da0:	2001      	movs	r0, #1
 8003da2:	bd08      	pop	{r3, pc}
 8003da4:	480b      	ldr	r0, [pc, #44]	; (8003dd4 <motor_move+0x78>)
 8003da6:	f002 ff19 	bl	8006bdc <rt_kprintf>
 8003daa:	f7ff ff9f 	bl	8003cec <pwm_set_backward>
 8003dae:	f7ff ff79 	bl	8003ca4 <pwm_run>
 8003db2:	2001      	movs	r0, #1
 8003db4:	bd08      	pop	{r3, pc}
 8003db6:	4808      	ldr	r0, [pc, #32]	; (8003dd8 <motor_move+0x7c>)
 8003db8:	f002 ff10 	bl	8006bdc <rt_kprintf>
 8003dbc:	2001      	movs	r0, #1
 8003dbe:	f7ff ff9f 	bl	8003d00 <motor_run>
 8003dc2:	2001      	movs	r0, #1
 8003dc4:	bd08      	pop	{r3, pc}
 8003dc6:	bf00      	nop
 8003dc8:	08008fac 	.word	0x08008fac
 8003dcc:	08008f90 	.word	0x08008f90
 8003dd0:	08008f3c 	.word	0x08008f3c
 8003dd4:	08008f58 	.word	0x08008f58
 8003dd8:	08008f74 	.word	0x08008f74

08003ddc <vout_set>:
 8003ddc:	b510      	push	{r4, lr}
 8003dde:	4604      	mov	r4, r0
 8003de0:	f648 70e8 	movw	r0, #36840	; 0x8fe8
 8003de4:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003de8:	f002 fef8 	bl	8006bdc <rt_kprintf>
 8003dec:	4620      	mov	r0, r4
 8003dee:	f004 fd35 	bl	800885c <atoi>
 8003df2:	b281      	uxth	r1, r0
 8003df4:	f44f 5030 	mov.w	r0, #11264	; 0x2c00
 8003df8:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8003dfc:	f7fd fee8 	bl	8001bd0 <TIM_SetCompare1>
 8003e00:	2001      	movs	r0, #1
 8003e02:	bd10      	pop	{r4, pc}

08003e04 <RCC_vout_init>:
 8003e04:	2101      	movs	r1, #1
 8003e06:	b508      	push	{r3, lr}
 8003e08:	f640 000c 	movw	r0, #2060	; 0x80c
 8003e0c:	f7fc fe9e 	bl	8000b4c <RCC_APB2PeriphClockCmd>
 8003e10:	2001      	movs	r0, #1
 8003e12:	4601      	mov	r1, r0
 8003e14:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8003e18:	f7fc be98 	b.w	8000b4c <RCC_APB2PeriphClockCmd>

08003e1c <GPIO_vout_init>:
 8003e1c:	b500      	push	{lr}
 8003e1e:	f44f 7380 	mov.w	r3, #256	; 0x100
 8003e22:	b083      	sub	sp, #12
 8003e24:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8003e28:	f8ad 3004 	strh.w	r3, [sp, #4]
 8003e2c:	2218      	movs	r2, #24
 8003e2e:	2303      	movs	r3, #3
 8003e30:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8003e34:	a901      	add	r1, sp, #4
 8003e36:	f88d 2007 	strb.w	r2, [sp, #7]
 8003e3a:	f88d 3006 	strb.w	r3, [sp, #6]
 8003e3e:	f7fe f83d 	bl	8001ebc <GPIO_Init>
 8003e42:	b003      	add	sp, #12
 8003e44:	bd00      	pop	{pc}
 8003e46:	bf00      	nop

08003e48 <t1c1_init>:
 8003e48:	b5f0      	push	{r4, r5, r6, r7, lr}
 8003e4a:	f44f 5430 	mov.w	r4, #11264	; 0x2c00
 8003e4e:	f2c4 0401 	movt	r4, #16385	; 0x4001
 8003e52:	b089      	sub	sp, #36	; 0x24
 8003e54:	4620      	mov	r0, r4
 8003e56:	f7fd f96b 	bl	8001130 <TIM_DeInit>
 8003e5a:	2500      	movs	r5, #0
 8003e5c:	221e      	movs	r2, #30
 8003e5e:	f241 7370 	movw	r3, #6000	; 0x1770
 8003e62:	a901      	add	r1, sp, #4
 8003e64:	4620      	mov	r0, r4
 8003e66:	f8ad 3008 	strh.w	r3, [sp, #8]
 8003e6a:	f8ad 2004 	strh.w	r2, [sp, #4]
 8003e6e:	f8ad 500a 	strh.w	r5, [sp, #10]
 8003e72:	f8ad 5006 	strh.w	r5, [sp, #6]
 8003e76:	f7fd fa91 	bl	800139c <TIM_TimeBaseInit>
 8003e7a:	4620      	mov	r0, r4
 8003e7c:	2101      	movs	r1, #1
 8003e7e:	f7fd ff0b 	bl	8001c98 <TIM_ClearFlag>
 8003e82:	2601      	movs	r6, #1
 8003e84:	2204      	movs	r2, #4
 8003e86:	2360      	movs	r3, #96	; 0x60
 8003e88:	273a      	movs	r7, #58	; 0x3a
 8003e8a:	a904      	add	r1, sp, #16
 8003e8c:	4620      	mov	r0, r4
 8003e8e:	f8ad 2014 	strh.w	r2, [sp, #20]
 8003e92:	f8ad 3010 	strh.w	r3, [sp, #16]
 8003e96:	f8ad 501c 	strh.w	r5, [sp, #28]
 8003e9a:	f8ad 501e 	strh.w	r5, [sp, #30]
 8003e9e:	f8ad 501a 	strh.w	r5, [sp, #26]
 8003ea2:	f8ad 5018 	strh.w	r5, [sp, #24]
 8003ea6:	f8ad 6012 	strh.w	r6, [sp, #18]
 8003eaa:	f8ad 7016 	strh.w	r7, [sp, #22]
 8003eae:	f7fd fb65 	bl	800157c <TIM_OC1Init>
 8003eb2:	4620      	mov	r0, r4
 8003eb4:	2108      	movs	r1, #8
 8003eb6:	f7fd fced 	bl	8001894 <TIM_OC1NPolarityConfig>
 8003eba:	4620      	mov	r0, r4
 8003ebc:	4639      	mov	r1, r7
 8003ebe:	f7fd fe87 	bl	8001bd0 <TIM_SetCompare1>
 8003ec2:	4620      	mov	r0, r4
 8003ec4:	4629      	mov	r1, r5
 8003ec6:	4632      	mov	r2, r6
 8003ec8:	f7fd fd1e 	bl	8001908 <TIM_CCxCmd>
 8003ecc:	b009      	add	sp, #36	; 0x24
 8003ece:	bdf0      	pop	{r4, r5, r6, r7, pc}

08003ed0 <vout_init>:
 8003ed0:	b508      	push	{r3, lr}
 8003ed2:	f7ff ff97 	bl	8003e04 <RCC_vout_init>
 8003ed6:	f7ff ffa1 	bl	8003e1c <GPIO_vout_init>
 8003eda:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8003ede:	f7ff bfb3 	b.w	8003e48 <t1c1_init>
 8003ee2:	bf00      	nop

08003ee4 <delay>:
 8003ee4:	4770      	bx	lr
 8003ee6:	bf00      	nop

08003ee8 <vout_adj>:
 8003ee8:	b508      	push	{r3, lr}
 8003eea:	4b0d      	ldr	r3, [pc, #52]	; (8003f20 <vout_adj+0x38>)
 8003eec:	2801      	cmp	r0, #1
 8003eee:	681a      	ldr	r2, [r3, #0]
 8003ef0:	bf0c      	ite	eq
 8003ef2:	188a      	addeq	r2, r1, r2
 8003ef4:	ebc1 0202 	rsbne	r2, r1, r2
 8003ef8:	2a00      	cmp	r2, #0
 8003efa:	601a      	str	r2, [r3, #0]
 8003efc:	db0c      	blt.n	8003f18 <vout_adj+0x30>
 8003efe:	f241 7170 	movw	r1, #6000	; 0x1770
 8003f02:	428a      	cmp	r2, r1
 8003f04:	bfd4      	ite	le
 8003f06:	b291      	uxthle	r1, r2
 8003f08:	6019      	strgt	r1, [r3, #0]
 8003f0a:	f44f 5030 	mov.w	r0, #11264	; 0x2c00
 8003f0e:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8003f12:	f7fd fe5d 	bl	8001bd0 <TIM_SetCompare1>
 8003f16:	bd08      	pop	{r3, pc}
 8003f18:	2100      	movs	r1, #0
 8003f1a:	6019      	str	r1, [r3, #0]
 8003f1c:	e7f5      	b.n	8003f0a <vout_adj+0x22>
 8003f1e:	bf00      	nop
 8003f20:	20000708 	.word	0x20000708

08003f24 <vout_decrease>:
 8003f24:	b510      	push	{r4, lr}
 8003f26:	4604      	mov	r4, r0
 8003f28:	f249 0004 	movw	r0, #36868	; 0x9004
 8003f2c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003f30:	f002 fe54 	bl	8006bdc <rt_kprintf>
 8003f34:	4620      	mov	r0, r4
 8003f36:	f004 fc91 	bl	800885c <atoi>
 8003f3a:	b281      	uxth	r1, r0
 8003f3c:	2000      	movs	r0, #0
 8003f3e:	f7ff ffd3 	bl	8003ee8 <vout_adj>
 8003f42:	2001      	movs	r0, #1
 8003f44:	bd10      	pop	{r4, pc}
 8003f46:	bf00      	nop

08003f48 <vout_increase>:
 8003f48:	b510      	push	{r4, lr}
 8003f4a:	4604      	mov	r4, r0
 8003f4c:	f249 001c 	movw	r0, #36892	; 0x901c
 8003f50:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003f54:	f002 fe42 	bl	8006bdc <rt_kprintf>
 8003f58:	4620      	mov	r0, r4
 8003f5a:	f004 fc7f 	bl	800885c <atoi>
 8003f5e:	b281      	uxth	r1, r0
 8003f60:	2001      	movs	r0, #1
 8003f62:	f7ff ffc1 	bl	8003ee8 <vout_adj>
 8003f66:	2001      	movs	r0, #1
 8003f68:	bd10      	pop	{r4, pc}
 8003f6a:	bf00      	nop

08003f6c <RCC_pga_init>:
 8003f6c:	201c      	movs	r0, #28
 8003f6e:	2101      	movs	r1, #1
 8003f70:	f7fc bdec 	b.w	8000b4c <RCC_APB2PeriphClockCmd>

08003f74 <GPIO_pga_init>:
 8003f74:	b570      	push	{r4, r5, r6, lr}
 8003f76:	f240 1468 	movw	r4, #360	; 0x168
 8003f7a:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8003f7e:	b082      	sub	sp, #8
 8003f80:	88a3      	ldrh	r3, [r4, #4]
 8003f82:	2610      	movs	r6, #16
 8003f84:	2502      	movs	r5, #2
 8003f86:	6820      	ldr	r0, [r4, #0]
 8003f88:	a901      	add	r1, sp, #4
 8003f8a:	f8ad 3004 	strh.w	r3, [sp, #4]
 8003f8e:	f88d 6007 	strb.w	r6, [sp, #7]
 8003f92:	f88d 5006 	strb.w	r5, [sp, #6]
 8003f96:	f7fd ff91 	bl	8001ebc <GPIO_Init>
 8003f9a:	89a2      	ldrh	r2, [r4, #12]
 8003f9c:	68a0      	ldr	r0, [r4, #8]
 8003f9e:	a901      	add	r1, sp, #4
 8003fa0:	f8ad 2004 	strh.w	r2, [sp, #4]
 8003fa4:	f88d 6007 	strb.w	r6, [sp, #7]
 8003fa8:	f88d 5006 	strb.w	r5, [sp, #6]
 8003fac:	f7fd ff86 	bl	8001ebc <GPIO_Init>
 8003fb0:	8aa3      	ldrh	r3, [r4, #20]
 8003fb2:	6920      	ldr	r0, [r4, #16]
 8003fb4:	a901      	add	r1, sp, #4
 8003fb6:	f8ad 3004 	strh.w	r3, [sp, #4]
 8003fba:	f88d 6007 	strb.w	r6, [sp, #7]
 8003fbe:	f88d 5006 	strb.w	r5, [sp, #6]
 8003fc2:	f7fd ff7b 	bl	8001ebc <GPIO_Init>
 8003fc6:	8ba2      	ldrh	r2, [r4, #28]
 8003fc8:	69a0      	ldr	r0, [r4, #24]
 8003fca:	a901      	add	r1, sp, #4
 8003fcc:	f8ad 2004 	strh.w	r2, [sp, #4]
 8003fd0:	f88d 6007 	strb.w	r6, [sp, #7]
 8003fd4:	f88d 5006 	strb.w	r5, [sp, #6]
 8003fd8:	f7fd ff70 	bl	8001ebc <GPIO_Init>
 8003fdc:	8ca3      	ldrh	r3, [r4, #36]	; 0x24
 8003fde:	6a20      	ldr	r0, [r4, #32]
 8003fe0:	a901      	add	r1, sp, #4
 8003fe2:	f8ad 3004 	strh.w	r3, [sp, #4]
 8003fe6:	f88d 6007 	strb.w	r6, [sp, #7]
 8003fea:	f88d 5006 	strb.w	r5, [sp, #6]
 8003fee:	f7fd ff65 	bl	8001ebc <GPIO_Init>
 8003ff2:	8da2      	ldrh	r2, [r4, #44]	; 0x2c
 8003ff4:	6aa0      	ldr	r0, [r4, #40]	; 0x28
 8003ff6:	a901      	add	r1, sp, #4
 8003ff8:	f8ad 2004 	strh.w	r2, [sp, #4]
 8003ffc:	f88d 6007 	strb.w	r6, [sp, #7]
 8004000:	f88d 5006 	strb.w	r5, [sp, #6]
 8004004:	f7fd ff5a 	bl	8001ebc <GPIO_Init>
 8004008:	8ea3      	ldrh	r3, [r4, #52]	; 0x34
 800400a:	6b20      	ldr	r0, [r4, #48]	; 0x30
 800400c:	a901      	add	r1, sp, #4
 800400e:	f8ad 3004 	strh.w	r3, [sp, #4]
 8004012:	f88d 6007 	strb.w	r6, [sp, #7]
 8004016:	f88d 5006 	strb.w	r5, [sp, #6]
 800401a:	f7fd ff4f 	bl	8001ebc <GPIO_Init>
 800401e:	8fa2      	ldrh	r2, [r4, #60]	; 0x3c
 8004020:	6ba0      	ldr	r0, [r4, #56]	; 0x38
 8004022:	a901      	add	r1, sp, #4
 8004024:	f8ad 2004 	strh.w	r2, [sp, #4]
 8004028:	f88d 6007 	strb.w	r6, [sp, #7]
 800402c:	f88d 5006 	strb.w	r5, [sp, #6]
 8004030:	f7fd ff44 	bl	8001ebc <GPIO_Init>
 8004034:	b002      	add	sp, #8
 8004036:	bd70      	pop	{r4, r5, r6, pc}

08004038 <pga_init>:
 8004038:	b508      	push	{r3, lr}
 800403a:	f7ff ff97 	bl	8003f6c <RCC_pga_init>
 800403e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8004042:	f7ff bf97 	b.w	8003f74 <GPIO_pga_init>
 8004046:	bf00      	nop

08004048 <write_sport>:
 8004048:	b570      	push	{r4, r5, r6, lr}
 800404a:	4604      	mov	r4, r0
 800404c:	4d72      	ldr	r5, [pc, #456]	; (8004218 <write_sport+0x1d0>)
 800404e:	4873      	ldr	r0, [pc, #460]	; (800421c <write_sport+0x1d4>)
 8004050:	460e      	mov	r6, r1
 8004052:	f002 fdc3 	bl	8006bdc <rt_kprintf>
 8004056:	88a1      	ldrh	r1, [r4, #4]
 8004058:	6820      	ldr	r0, [r4, #0]
 800405a:	f7fe f96d 	bl	8002338 <GPIO_ResetBits>
 800405e:	6828      	ldr	r0, [r5, #0]
 8004060:	f7ff ff40 	bl	8003ee4 <delay>
 8004064:	0632      	lsls	r2, r6, #24
 8004066:	68a0      	ldr	r0, [r4, #8]
 8004068:	89a1      	ldrh	r1, [r4, #12]
 800406a:	f100 80bc 	bmi.w	80041e6 <write_sport+0x19e>
 800406e:	f7fe f963 	bl	8002338 <GPIO_ResetBits>
 8004072:	6828      	ldr	r0, [r5, #0]
 8004074:	f7ff ff36 	bl	8003ee4 <delay>
 8004078:	88a1      	ldrh	r1, [r4, #4]
 800407a:	6820      	ldr	r0, [r4, #0]
 800407c:	f7fe f920 	bl	80022c0 <GPIO_SetBits>
 8004080:	6828      	ldr	r0, [r5, #0]
 8004082:	f7ff ff2f 	bl	8003ee4 <delay>
 8004086:	0072      	lsls	r2, r6, #1
 8004088:	88a1      	ldrh	r1, [r4, #4]
 800408a:	6820      	ldr	r0, [r4, #0]
 800408c:	b2d6      	uxtb	r6, r2
 800408e:	f7fe f953 	bl	8002338 <GPIO_ResetBits>
 8004092:	6828      	ldr	r0, [r5, #0]
 8004094:	f7ff ff26 	bl	8003ee4 <delay>
 8004098:	0633      	lsls	r3, r6, #24
 800409a:	68a0      	ldr	r0, [r4, #8]
 800409c:	89a1      	ldrh	r1, [r4, #12]
 800409e:	f100 80b7 	bmi.w	8004210 <write_sport+0x1c8>
 80040a2:	f7fe f949 	bl	8002338 <GPIO_ResetBits>
 80040a6:	6828      	ldr	r0, [r5, #0]
 80040a8:	f7ff ff1c 	bl	8003ee4 <delay>
 80040ac:	88a1      	ldrh	r1, [r4, #4]
 80040ae:	6820      	ldr	r0, [r4, #0]
 80040b0:	f7fe f906 	bl	80022c0 <GPIO_SetBits>
 80040b4:	6828      	ldr	r0, [r5, #0]
 80040b6:	f7ff ff15 	bl	8003ee4 <delay>
 80040ba:	0073      	lsls	r3, r6, #1
 80040bc:	88a1      	ldrh	r1, [r4, #4]
 80040be:	6820      	ldr	r0, [r4, #0]
 80040c0:	b2de      	uxtb	r6, r3
 80040c2:	f7fe f939 	bl	8002338 <GPIO_ResetBits>
 80040c6:	6828      	ldr	r0, [r5, #0]
 80040c8:	f7ff ff0c 	bl	8003ee4 <delay>
 80040cc:	0632      	lsls	r2, r6, #24
 80040ce:	68a0      	ldr	r0, [r4, #8]
 80040d0:	89a1      	ldrh	r1, [r4, #12]
 80040d2:	f100 809a 	bmi.w	800420a <write_sport+0x1c2>
 80040d6:	f7fe f92f 	bl	8002338 <GPIO_ResetBits>
 80040da:	6828      	ldr	r0, [r5, #0]
 80040dc:	f7ff ff02 	bl	8003ee4 <delay>
 80040e0:	88a1      	ldrh	r1, [r4, #4]
 80040e2:	6820      	ldr	r0, [r4, #0]
 80040e4:	f7fe f8ec 	bl	80022c0 <GPIO_SetBits>
 80040e8:	6828      	ldr	r0, [r5, #0]
 80040ea:	f7ff fefb 	bl	8003ee4 <delay>
 80040ee:	0072      	lsls	r2, r6, #1
 80040f0:	88a1      	ldrh	r1, [r4, #4]
 80040f2:	6820      	ldr	r0, [r4, #0]
 80040f4:	b2d6      	uxtb	r6, r2
 80040f6:	f7fe f91f 	bl	8002338 <GPIO_ResetBits>
 80040fa:	6828      	ldr	r0, [r5, #0]
 80040fc:	f7ff fef2 	bl	8003ee4 <delay>
 8004100:	0633      	lsls	r3, r6, #24
 8004102:	68a0      	ldr	r0, [r4, #8]
 8004104:	89a1      	ldrh	r1, [r4, #12]
 8004106:	d47d      	bmi.n	8004204 <write_sport+0x1bc>
 8004108:	f7fe f916 	bl	8002338 <GPIO_ResetBits>
 800410c:	6828      	ldr	r0, [r5, #0]
 800410e:	f7ff fee9 	bl	8003ee4 <delay>
 8004112:	88a1      	ldrh	r1, [r4, #4]
 8004114:	6820      	ldr	r0, [r4, #0]
 8004116:	f7fe f8d3 	bl	80022c0 <GPIO_SetBits>
 800411a:	6828      	ldr	r0, [r5, #0]
 800411c:	f7ff fee2 	bl	8003ee4 <delay>
 8004120:	0073      	lsls	r3, r6, #1
 8004122:	88a1      	ldrh	r1, [r4, #4]
 8004124:	6820      	ldr	r0, [r4, #0]
 8004126:	b2de      	uxtb	r6, r3
 8004128:	f7fe f906 	bl	8002338 <GPIO_ResetBits>
 800412c:	6828      	ldr	r0, [r5, #0]
 800412e:	f7ff fed9 	bl	8003ee4 <delay>
 8004132:	0632      	lsls	r2, r6, #24
 8004134:	68a0      	ldr	r0, [r4, #8]
 8004136:	89a1      	ldrh	r1, [r4, #12]
 8004138:	d461      	bmi.n	80041fe <write_sport+0x1b6>
 800413a:	f7fe f8fd 	bl	8002338 <GPIO_ResetBits>
 800413e:	6828      	ldr	r0, [r5, #0]
 8004140:	f7ff fed0 	bl	8003ee4 <delay>
 8004144:	88a1      	ldrh	r1, [r4, #4]
 8004146:	6820      	ldr	r0, [r4, #0]
 8004148:	f7fe f8ba 	bl	80022c0 <GPIO_SetBits>
 800414c:	6828      	ldr	r0, [r5, #0]
 800414e:	f7ff fec9 	bl	8003ee4 <delay>
 8004152:	0072      	lsls	r2, r6, #1
 8004154:	88a1      	ldrh	r1, [r4, #4]
 8004156:	6820      	ldr	r0, [r4, #0]
 8004158:	b2d6      	uxtb	r6, r2
 800415a:	f7fe f8ed 	bl	8002338 <GPIO_ResetBits>
 800415e:	6828      	ldr	r0, [r5, #0]
 8004160:	f7ff fec0 	bl	8003ee4 <delay>
 8004164:	0633      	lsls	r3, r6, #24
 8004166:	68a0      	ldr	r0, [r4, #8]
 8004168:	89a1      	ldrh	r1, [r4, #12]
 800416a:	d445      	bmi.n	80041f8 <write_sport+0x1b0>
 800416c:	f7fe f8e4 	bl	8002338 <GPIO_ResetBits>
 8004170:	6828      	ldr	r0, [r5, #0]
 8004172:	f7ff feb7 	bl	8003ee4 <delay>
 8004176:	88a1      	ldrh	r1, [r4, #4]
 8004178:	6820      	ldr	r0, [r4, #0]
 800417a:	f7fe f8a1 	bl	80022c0 <GPIO_SetBits>
 800417e:	6828      	ldr	r0, [r5, #0]
 8004180:	f7ff feb0 	bl	8003ee4 <delay>
 8004184:	0073      	lsls	r3, r6, #1
 8004186:	88a1      	ldrh	r1, [r4, #4]
 8004188:	6820      	ldr	r0, [r4, #0]
 800418a:	b2de      	uxtb	r6, r3
 800418c:	f7fe f8d4 	bl	8002338 <GPIO_ResetBits>
 8004190:	6828      	ldr	r0, [r5, #0]
 8004192:	f7ff fea7 	bl	8003ee4 <delay>
 8004196:	0632      	lsls	r2, r6, #24
 8004198:	68a0      	ldr	r0, [r4, #8]
 800419a:	89a1      	ldrh	r1, [r4, #12]
 800419c:	d429      	bmi.n	80041f2 <write_sport+0x1aa>
 800419e:	f7fe f8cb 	bl	8002338 <GPIO_ResetBits>
 80041a2:	6828      	ldr	r0, [r5, #0]
 80041a4:	f7ff fe9e 	bl	8003ee4 <delay>
 80041a8:	88a1      	ldrh	r1, [r4, #4]
 80041aa:	6820      	ldr	r0, [r4, #0]
 80041ac:	f7fe f888 	bl	80022c0 <GPIO_SetBits>
 80041b0:	6828      	ldr	r0, [r5, #0]
 80041b2:	f7ff fe97 	bl	8003ee4 <delay>
 80041b6:	88a1      	ldrh	r1, [r4, #4]
 80041b8:	6820      	ldr	r0, [r4, #0]
 80041ba:	f7fe f8bd 	bl	8002338 <GPIO_ResetBits>
 80041be:	6828      	ldr	r0, [r5, #0]
 80041c0:	f7ff fe90 	bl	8003ee4 <delay>
 80041c4:	0673      	lsls	r3, r6, #25
 80041c6:	68a0      	ldr	r0, [r4, #8]
 80041c8:	89a1      	ldrh	r1, [r4, #12]
 80041ca:	d40f      	bmi.n	80041ec <write_sport+0x1a4>
 80041cc:	f7fe f8b4 	bl	8002338 <GPIO_ResetBits>
 80041d0:	6828      	ldr	r0, [r5, #0]
 80041d2:	f7ff fe87 	bl	8003ee4 <delay>
 80041d6:	6820      	ldr	r0, [r4, #0]
 80041d8:	88a1      	ldrh	r1, [r4, #4]
 80041da:	f7fe f871 	bl	80022c0 <GPIO_SetBits>
 80041de:	6828      	ldr	r0, [r5, #0]
 80041e0:	f7ff fe80 	bl	8003ee4 <delay>
 80041e4:	bd70      	pop	{r4, r5, r6, pc}
 80041e6:	f7fe f86b 	bl	80022c0 <GPIO_SetBits>
 80041ea:	e742      	b.n	8004072 <write_sport+0x2a>
 80041ec:	f7fe f868 	bl	80022c0 <GPIO_SetBits>
 80041f0:	e7ee      	b.n	80041d0 <write_sport+0x188>
 80041f2:	f7fe f865 	bl	80022c0 <GPIO_SetBits>
 80041f6:	e7d4      	b.n	80041a2 <write_sport+0x15a>
 80041f8:	f7fe f862 	bl	80022c0 <GPIO_SetBits>
 80041fc:	e7b8      	b.n	8004170 <write_sport+0x128>
 80041fe:	f7fe f85f 	bl	80022c0 <GPIO_SetBits>
 8004202:	e79c      	b.n	800413e <write_sport+0xf6>
 8004204:	f7fe f85c 	bl	80022c0 <GPIO_SetBits>
 8004208:	e780      	b.n	800410c <write_sport+0xc4>
 800420a:	f7fe f859 	bl	80022c0 <GPIO_SetBits>
 800420e:	e764      	b.n	80040da <write_sport+0x92>
 8004210:	f7fe f856 	bl	80022c0 <GPIO_SetBits>
 8004214:	e747      	b.n	80040a6 <write_sport+0x5e>
 8004216:	bf00      	nop
 8004218:	20000144 	.word	0x20000144
 800421c:	0800903c 	.word	0x0800903c

08004220 <pga_set>:
 8004220:	b570      	push	{r4, r5, r6, lr}
 8004222:	4604      	mov	r4, r0
 8004224:	3002      	adds	r0, #2
 8004226:	f004 fb19 	bl	800885c <atoi>
 800422a:	7823      	ldrb	r3, [r4, #0]
 800422c:	4605      	mov	r5, r0
 800422e:	3b41      	subs	r3, #65	; 0x41
 8004230:	2b12      	cmp	r3, #18
 8004232:	d824      	bhi.n	800427e <pga_set+0x5e>
 8004234:	e8df f003 	tbb	[pc, r3]
 8004238:	2323191e 	.word	0x2323191e
 800423c:	23232323 	.word	0x23232323
 8004240:	23232323 	.word	0x23232323
 8004244:	23232323 	.word	0x23232323
 8004248:	1423      	.short	0x1423
 800424a:	0a          	.byte	0x0a
 800424b:	00          	.byte	0x00
 800424c:	480e      	ldr	r0, [pc, #56]	; (8004288 <pga_set+0x68>)
 800424e:	f002 fcc5 	bl	8006bdc <rt_kprintf>
 8004252:	4e0e      	ldr	r6, [pc, #56]	; (800428c <pga_set+0x6c>)
 8004254:	4630      	mov	r0, r6
 8004256:	b2e9      	uxtb	r1, r5
 8004258:	f7ff fef6 	bl	8004048 <write_sport>
 800425c:	2001      	movs	r0, #1
 800425e:	bd70      	pop	{r4, r5, r6, pc}
 8004260:	480b      	ldr	r0, [pc, #44]	; (8004290 <pga_set+0x70>)
 8004262:	f002 fcbb 	bl	8006bdc <rt_kprintf>
 8004266:	4e0b      	ldr	r6, [pc, #44]	; (8004294 <pga_set+0x74>)
 8004268:	e7f4      	b.n	8004254 <pga_set+0x34>
 800426a:	480b      	ldr	r0, [pc, #44]	; (8004298 <pga_set+0x78>)
 800426c:	f002 fcb6 	bl	8006bdc <rt_kprintf>
 8004270:	4e0a      	ldr	r6, [pc, #40]	; (800429c <pga_set+0x7c>)
 8004272:	e7ef      	b.n	8004254 <pga_set+0x34>
 8004274:	480a      	ldr	r0, [pc, #40]	; (80042a0 <pga_set+0x80>)
 8004276:	f002 fcb1 	bl	8006bdc <rt_kprintf>
 800427a:	4e0a      	ldr	r6, [pc, #40]	; (80042a4 <pga_set+0x84>)
 800427c:	e7ea      	b.n	8004254 <pga_set+0x34>
 800427e:	480a      	ldr	r0, [pc, #40]	; (80042a8 <pga_set+0x88>)
 8004280:	f002 fcac 	bl	8006bdc <rt_kprintf>
 8004284:	e7e6      	b.n	8004254 <pga_set+0x34>
 8004286:	bf00      	nop
 8004288:	08009088 	.word	0x08009088
 800428c:	20000198 	.word	0x20000198
 8004290:	0800904c 	.word	0x0800904c
 8004294:	20000168 	.word	0x20000168
 8004298:	08009074 	.word	0x08009074
 800429c:	20000188 	.word	0x20000188
 80042a0:	08009060 	.word	0x08009060
 80042a4:	20000178 	.word	0x20000178
 80042a8:	0800909c 	.word	0x0800909c

080042ac <RCC_ds18b20_setup_out>:
 80042ac:	2004      	movs	r0, #4
 80042ae:	2101      	movs	r1, #1
 80042b0:	f7fc bc4c 	b.w	8000b4c <RCC_APB2PeriphClockCmd>

080042b4 <GPIO_ds18b20_setup_out>:
 80042b4:	b500      	push	{lr}
 80042b6:	f240 13a8 	movw	r3, #424	; 0x1a8
 80042ba:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80042be:	889a      	ldrh	r2, [r3, #4]
 80042c0:	b083      	sub	sp, #12
 80042c2:	6818      	ldr	r0, [r3, #0]
 80042c4:	f8ad 2004 	strh.w	r2, [sp, #4]
 80042c8:	2314      	movs	r3, #20
 80042ca:	2202      	movs	r2, #2
 80042cc:	a901      	add	r1, sp, #4
 80042ce:	f88d 3007 	strb.w	r3, [sp, #7]
 80042d2:	f88d 2006 	strb.w	r2, [sp, #6]
 80042d6:	f7fd fdf1 	bl	8001ebc <GPIO_Init>
 80042da:	b003      	add	sp, #12
 80042dc:	bd00      	pop	{pc}
 80042de:	bf00      	nop

080042e0 <GPIO_ds18b20_setup_in>:
 80042e0:	b500      	push	{lr}
 80042e2:	f240 13a8 	movw	r3, #424	; 0x1a8
 80042e6:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80042ea:	889a      	ldrh	r2, [r3, #4]
 80042ec:	b083      	sub	sp, #12
 80042ee:	6818      	ldr	r0, [r3, #0]
 80042f0:	f8ad 2004 	strh.w	r2, [sp, #4]
 80042f4:	2348      	movs	r3, #72	; 0x48
 80042f6:	2202      	movs	r2, #2
 80042f8:	a901      	add	r1, sp, #4
 80042fa:	f88d 3007 	strb.w	r3, [sp, #7]
 80042fe:	f88d 2006 	strb.w	r2, [sp, #6]
 8004302:	f7fd fddb 	bl	8001ebc <GPIO_Init>
 8004306:	b003      	add	sp, #12
 8004308:	bd00      	pop	{pc}
 800430a:	bf00      	nop

0800430c <ds18b20_init>:
 800430c:	b508      	push	{r3, lr}
 800430e:	f7ff ffcd 	bl	80042ac <RCC_ds18b20_setup_out>
 8004312:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8004316:	f7ff bfcd 	b.w	80042b4 <GPIO_ds18b20_setup_out>
 800431a:	bf00      	nop

0800431c <ds18b20_reset>:
 800431c:	b510      	push	{r4, lr}
 800431e:	4c17      	ldr	r4, [pc, #92]	; (800437c <ds18b20_reset+0x60>)
 8004320:	f7ff ffc8 	bl	80042b4 <GPIO_ds18b20_setup_out>
 8004324:	88a1      	ldrh	r1, [r4, #4]
 8004326:	6820      	ldr	r0, [r4, #0]
 8004328:	f7fd ffca 	bl	80022c0 <GPIO_SetBits>
 800432c:	2018      	movs	r0, #24
 800432e:	f7fe ff63 	bl	80031f8 <delay_loop>
 8004332:	6820      	ldr	r0, [r4, #0]
 8004334:	88a1      	ldrh	r1, [r4, #4]
 8004336:	f7fd ffff 	bl	8002338 <GPIO_ResetBits>
 800433a:	f44f 5016 	mov.w	r0, #9600	; 0x2580
 800433e:	f7fe ff5b 	bl	80031f8 <delay_loop>
 8004342:	f7ff ffcd 	bl	80042e0 <GPIO_ds18b20_setup_in>
 8004346:	e000      	b.n	800434a <ds18b20_reset+0x2e>
 8004348:	bf00      	nop
 800434a:	6820      	ldr	r0, [r4, #0]
 800434c:	88a1      	ldrh	r1, [r4, #4]
 800434e:	f7fd ff51 	bl	80021f4 <GPIO_ReadInputDataBit>
 8004352:	2800      	cmp	r0, #0
 8004354:	d1f8      	bne.n	8004348 <ds18b20_reset+0x2c>
 8004356:	6820      	ldr	r0, [r4, #0]
 8004358:	88a1      	ldrh	r1, [r4, #4]
 800435a:	f7fd ff4b 	bl	80021f4 <GPIO_ReadInputDataBit>
 800435e:	b930      	cbnz	r0, 800436e <ds18b20_reset+0x52>
 8004360:	bf00      	nop
 8004362:	6820      	ldr	r0, [r4, #0]
 8004364:	88a1      	ldrh	r1, [r4, #4]
 8004366:	f7fd ff45 	bl	80021f4 <GPIO_ReadInputDataBit>
 800436a:	2800      	cmp	r0, #0
 800436c:	d0f8      	beq.n	8004360 <ds18b20_reset+0x44>
 800436e:	f44f 7034 	mov.w	r0, #720	; 0x2d0
 8004372:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8004376:	f7fe bf3f 	b.w	80031f8 <delay_loop>
 800437a:	bf00      	nop
 800437c:	200001a8 	.word	0x200001a8

08004380 <read_bit>:
 8004380:	b510      	push	{r4, lr}
 8004382:	f240 14a8 	movw	r4, #424	; 0x1a8
 8004386:	f2c2 0400 	movt	r4, #8192	; 0x2000
 800438a:	f7ff ff93 	bl	80042b4 <GPIO_ds18b20_setup_out>
 800438e:	88a1      	ldrh	r1, [r4, #4]
 8004390:	6820      	ldr	r0, [r4, #0]
 8004392:	f7fd ff95 	bl	80022c0 <GPIO_SetBits>
 8004396:	203c      	movs	r0, #60	; 0x3c
 8004398:	f7fe ff2e 	bl	80031f8 <delay_loop>
 800439c:	88a1      	ldrh	r1, [r4, #4]
 800439e:	6820      	ldr	r0, [r4, #0]
 80043a0:	f7fd ffca 	bl	8002338 <GPIO_ResetBits>
 80043a4:	2024      	movs	r0, #36	; 0x24
 80043a6:	f7fe ff27 	bl	80031f8 <delay_loop>
 80043aa:	f7ff ff99 	bl	80042e0 <GPIO_ds18b20_setup_in>
 80043ae:	203c      	movs	r0, #60	; 0x3c
 80043b0:	f7fe ff22 	bl	80031f8 <delay_loop>
 80043b4:	88a1      	ldrh	r1, [r4, #4]
 80043b6:	6820      	ldr	r0, [r4, #0]
 80043b8:	f7fd ff1c 	bl	80021f4 <GPIO_ReadInputDataBit>
 80043bc:	4604      	mov	r4, r0
 80043be:	f44f 7096 	mov.w	r0, #300	; 0x12c
 80043c2:	f7fe ff19 	bl	80031f8 <delay_loop>
 80043c6:	4620      	mov	r0, r4
 80043c8:	bd10      	pop	{r4, pc}
 80043ca:	bf00      	nop

080043cc <temp_read_byte>:
 80043cc:	b538      	push	{r3, r4, r5, lr}
 80043ce:	f7ff ffd7 	bl	8004380 <read_bit>
 80043d2:	4604      	mov	r4, r0
 80043d4:	f7ff ffd4 	bl	8004380 <read_bit>
 80043d8:	01a1      	lsls	r1, r4, #6
 80043da:	f001 0240 	and.w	r2, r1, #64	; 0x40
 80043de:	ea42 10c0 	orr.w	r0, r2, r0, lsl #7
 80043e2:	b2c5      	uxtb	r5, r0
 80043e4:	f7ff ffcc 	bl	8004380 <read_bit>
 80043e8:	4604      	mov	r4, r0
 80043ea:	f7ff ffc9 	bl	8004380 <read_bit>
 80043ee:	086b      	lsrs	r3, r5, #1
 80043f0:	ea43 11c4 	orr.w	r1, r3, r4, lsl #7
 80043f4:	b2ca      	uxtb	r2, r1
 80043f6:	01c0      	lsls	r0, r0, #7
 80043f8:	ea40 0552 	orr.w	r5, r0, r2, lsr #1
 80043fc:	f7ff ffc0 	bl	8004380 <read_bit>
 8004400:	b2ec      	uxtb	r4, r5
 8004402:	01c3      	lsls	r3, r0, #7
 8004404:	ea43 0154 	orr.w	r1, r3, r4, lsr #1
 8004408:	b2cd      	uxtb	r5, r1
 800440a:	f7ff ffb9 	bl	8004380 <read_bit>
 800440e:	4604      	mov	r4, r0
 8004410:	f7ff ffb6 	bl	8004380 <read_bit>
 8004414:	086d      	lsrs	r5, r5, #1
 8004416:	ea45 12c4 	orr.w	r2, r5, r4, lsl #7
 800441a:	b2d3      	uxtb	r3, r2
 800441c:	01c0      	lsls	r0, r0, #7
 800441e:	ea40 0153 	orr.w	r1, r0, r3, lsr #1
 8004422:	b2cc      	uxtb	r4, r1
 8004424:	f7ff ffac 	bl	8004380 <read_bit>
 8004428:	01c2      	lsls	r2, r0, #7
 800442a:	ea42 0354 	orr.w	r3, r2, r4, lsr #1
 800442e:	b2d8      	uxtb	r0, r3
 8004430:	bd38      	pop	{r3, r4, r5, pc}
 8004432:	bf00      	nop

08004434 <temp_write_byte>:
 8004434:	b538      	push	{r3, r4, r5, lr}
 8004436:	4c90      	ldr	r4, [pc, #576]	; (8004678 <temp_write_byte+0x244>)
 8004438:	4605      	mov	r5, r0
 800443a:	f7ff ff3b 	bl	80042b4 <GPIO_ds18b20_setup_out>
 800443e:	88a1      	ldrh	r1, [r4, #4]
 8004440:	6820      	ldr	r0, [r4, #0]
 8004442:	f7fd ff3d 	bl	80022c0 <GPIO_SetBits>
 8004446:	2018      	movs	r0, #24
 8004448:	f7fe fed6 	bl	80031f8 <delay_loop>
 800444c:	07eb      	lsls	r3, r5, #31
 800444e:	88a1      	ldrh	r1, [r4, #4]
 8004450:	6820      	ldr	r0, [r4, #0]
 8004452:	f100 80a0 	bmi.w	8004596 <temp_write_byte+0x162>
 8004456:	f7fd ff6f 	bl	8002338 <GPIO_ResetBits>
 800445a:	f44f 7052 	mov.w	r0, #840	; 0x348
 800445e:	f7fe fecb 	bl	80031f8 <delay_loop>
 8004462:	6820      	ldr	r0, [r4, #0]
 8004464:	88a1      	ldrh	r1, [r4, #4]
 8004466:	f7fd ff2b 	bl	80022c0 <GPIO_SetBits>
 800446a:	203c      	movs	r0, #60	; 0x3c
 800446c:	f7fe fec4 	bl	80031f8 <delay_loop>
 8004470:	f005 0302 	and.w	r3, r5, #2
 8004474:	b2da      	uxtb	r2, r3
 8004476:	88a1      	ldrh	r1, [r4, #4]
 8004478:	6820      	ldr	r0, [r4, #0]
 800447a:	2a00      	cmp	r2, #0
 800447c:	f040 80ed 	bne.w	800465a <temp_write_byte+0x226>
 8004480:	f7fd ff5a 	bl	8002338 <GPIO_ResetBits>
 8004484:	f44f 7052 	mov.w	r0, #840	; 0x348
 8004488:	f7fe feb6 	bl	80031f8 <delay_loop>
 800448c:	6820      	ldr	r0, [r4, #0]
 800448e:	88a1      	ldrh	r1, [r4, #4]
 8004490:	f7fd ff16 	bl	80022c0 <GPIO_SetBits>
 8004494:	203c      	movs	r0, #60	; 0x3c
 8004496:	f7fe feaf 	bl	80031f8 <delay_loop>
 800449a:	f005 0004 	and.w	r0, r5, #4
 800449e:	b2c3      	uxtb	r3, r0
 80044a0:	88a1      	ldrh	r1, [r4, #4]
 80044a2:	6820      	ldr	r0, [r4, #0]
 80044a4:	2b00      	cmp	r3, #0
 80044a6:	f040 80ca 	bne.w	800463e <temp_write_byte+0x20a>
 80044aa:	f7fd ff45 	bl	8002338 <GPIO_ResetBits>
 80044ae:	f44f 7052 	mov.w	r0, #840	; 0x348
 80044b2:	f7fe fea1 	bl	80031f8 <delay_loop>
 80044b6:	6820      	ldr	r0, [r4, #0]
 80044b8:	88a1      	ldrh	r1, [r4, #4]
 80044ba:	f7fd ff01 	bl	80022c0 <GPIO_SetBits>
 80044be:	203c      	movs	r0, #60	; 0x3c
 80044c0:	f7fe fe9a 	bl	80031f8 <delay_loop>
 80044c4:	f005 0108 	and.w	r1, r5, #8
 80044c8:	b2ca      	uxtb	r2, r1
 80044ca:	6820      	ldr	r0, [r4, #0]
 80044cc:	88a1      	ldrh	r1, [r4, #4]
 80044ce:	2a00      	cmp	r2, #0
 80044d0:	f040 80a7 	bne.w	8004622 <temp_write_byte+0x1ee>
 80044d4:	f7fd ff30 	bl	8002338 <GPIO_ResetBits>
 80044d8:	f44f 7052 	mov.w	r0, #840	; 0x348
 80044dc:	f7fe fe8c 	bl	80031f8 <delay_loop>
 80044e0:	6820      	ldr	r0, [r4, #0]
 80044e2:	88a1      	ldrh	r1, [r4, #4]
 80044e4:	f7fd feec 	bl	80022c0 <GPIO_SetBits>
 80044e8:	203c      	movs	r0, #60	; 0x3c
 80044ea:	f7fe fe85 	bl	80031f8 <delay_loop>
 80044ee:	f005 0010 	and.w	r0, r5, #16
 80044f2:	b2c3      	uxtb	r3, r0
 80044f4:	88a1      	ldrh	r1, [r4, #4]
 80044f6:	6820      	ldr	r0, [r4, #0]
 80044f8:	2b00      	cmp	r3, #0
 80044fa:	f040 8084 	bne.w	8004606 <temp_write_byte+0x1d2>
 80044fe:	f7fd ff1b 	bl	8002338 <GPIO_ResetBits>
 8004502:	f44f 7052 	mov.w	r0, #840	; 0x348
 8004506:	f7fe fe77 	bl	80031f8 <delay_loop>
 800450a:	6820      	ldr	r0, [r4, #0]
 800450c:	88a1      	ldrh	r1, [r4, #4]
 800450e:	f7fd fed7 	bl	80022c0 <GPIO_SetBits>
 8004512:	203c      	movs	r0, #60	; 0x3c
 8004514:	f7fe fe70 	bl	80031f8 <delay_loop>
 8004518:	f005 0120 	and.w	r1, r5, #32
 800451c:	b2ca      	uxtb	r2, r1
 800451e:	6820      	ldr	r0, [r4, #0]
 8004520:	88a1      	ldrh	r1, [r4, #4]
 8004522:	2a00      	cmp	r2, #0
 8004524:	d161      	bne.n	80045ea <temp_write_byte+0x1b6>
 8004526:	f7fd ff07 	bl	8002338 <GPIO_ResetBits>
 800452a:	f44f 7052 	mov.w	r0, #840	; 0x348
 800452e:	f7fe fe63 	bl	80031f8 <delay_loop>
 8004532:	6820      	ldr	r0, [r4, #0]
 8004534:	88a1      	ldrh	r1, [r4, #4]
 8004536:	f7fd fec3 	bl	80022c0 <GPIO_SetBits>
 800453a:	203c      	movs	r0, #60	; 0x3c
 800453c:	f7fe fe5c 	bl	80031f8 <delay_loop>
 8004540:	f005 0040 	and.w	r0, r5, #64	; 0x40
 8004544:	b2c3      	uxtb	r3, r0
 8004546:	88a1      	ldrh	r1, [r4, #4]
 8004548:	6820      	ldr	r0, [r4, #0]
 800454a:	2b00      	cmp	r3, #0
 800454c:	d13f      	bne.n	80045ce <temp_write_byte+0x19a>
 800454e:	f7fd fef3 	bl	8002338 <GPIO_ResetBits>
 8004552:	f44f 7052 	mov.w	r0, #840	; 0x348
 8004556:	f7fe fe4f 	bl	80031f8 <delay_loop>
 800455a:	6820      	ldr	r0, [r4, #0]
 800455c:	88a1      	ldrh	r1, [r4, #4]
 800455e:	f7fd feaf 	bl	80022c0 <GPIO_SetBits>
 8004562:	203c      	movs	r0, #60	; 0x3c
 8004564:	f7fe fe48 	bl	80031f8 <delay_loop>
 8004568:	f005 0580 	and.w	r5, r5, #128	; 0x80
 800456c:	b2ed      	uxtb	r5, r5
 800456e:	88a1      	ldrh	r1, [r4, #4]
 8004570:	6820      	ldr	r0, [r4, #0]
 8004572:	b1f5      	cbz	r5, 80045b2 <temp_write_byte+0x17e>
 8004574:	f7fd fee0 	bl	8002338 <GPIO_ResetBits>
 8004578:	203c      	movs	r0, #60	; 0x3c
 800457a:	f7fe fe3d 	bl	80031f8 <delay_loop>
 800457e:	6820      	ldr	r0, [r4, #0]
 8004580:	88a1      	ldrh	r1, [r4, #4]
 8004582:	f7fd fe9d 	bl	80022c0 <GPIO_SetBits>
 8004586:	f44f 7052 	mov.w	r0, #840	; 0x348
 800458a:	f7fe fe35 	bl	80031f8 <delay_loop>
 800458e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8004592:	f7ff bea5 	b.w	80042e0 <GPIO_ds18b20_setup_in>
 8004596:	f7fd fecf 	bl	8002338 <GPIO_ResetBits>
 800459a:	203c      	movs	r0, #60	; 0x3c
 800459c:	f7fe fe2c 	bl	80031f8 <delay_loop>
 80045a0:	6820      	ldr	r0, [r4, #0]
 80045a2:	88a1      	ldrh	r1, [r4, #4]
 80045a4:	f7fd fe8c 	bl	80022c0 <GPIO_SetBits>
 80045a8:	f44f 7052 	mov.w	r0, #840	; 0x348
 80045ac:	f7fe fe24 	bl	80031f8 <delay_loop>
 80045b0:	e75e      	b.n	8004470 <temp_write_byte+0x3c>
 80045b2:	f7fd fec1 	bl	8002338 <GPIO_ResetBits>
 80045b6:	f44f 7052 	mov.w	r0, #840	; 0x348
 80045ba:	f7fe fe1d 	bl	80031f8 <delay_loop>
 80045be:	6820      	ldr	r0, [r4, #0]
 80045c0:	88a1      	ldrh	r1, [r4, #4]
 80045c2:	f7fd fe7d 	bl	80022c0 <GPIO_SetBits>
 80045c6:	203c      	movs	r0, #60	; 0x3c
 80045c8:	f7fe fe16 	bl	80031f8 <delay_loop>
 80045cc:	e7df      	b.n	800458e <temp_write_byte+0x15a>
 80045ce:	f7fd feb3 	bl	8002338 <GPIO_ResetBits>
 80045d2:	203c      	movs	r0, #60	; 0x3c
 80045d4:	f7fe fe10 	bl	80031f8 <delay_loop>
 80045d8:	6820      	ldr	r0, [r4, #0]
 80045da:	88a1      	ldrh	r1, [r4, #4]
 80045dc:	f7fd fe70 	bl	80022c0 <GPIO_SetBits>
 80045e0:	f44f 7052 	mov.w	r0, #840	; 0x348
 80045e4:	f7fe fe08 	bl	80031f8 <delay_loop>
 80045e8:	e7be      	b.n	8004568 <temp_write_byte+0x134>
 80045ea:	f7fd fea5 	bl	8002338 <GPIO_ResetBits>
 80045ee:	203c      	movs	r0, #60	; 0x3c
 80045f0:	f7fe fe02 	bl	80031f8 <delay_loop>
 80045f4:	6820      	ldr	r0, [r4, #0]
 80045f6:	88a1      	ldrh	r1, [r4, #4]
 80045f8:	f7fd fe62 	bl	80022c0 <GPIO_SetBits>
 80045fc:	f44f 7052 	mov.w	r0, #840	; 0x348
 8004600:	f7fe fdfa 	bl	80031f8 <delay_loop>
 8004604:	e79c      	b.n	8004540 <temp_write_byte+0x10c>
 8004606:	f7fd fe97 	bl	8002338 <GPIO_ResetBits>
 800460a:	203c      	movs	r0, #60	; 0x3c
 800460c:	f7fe fdf4 	bl	80031f8 <delay_loop>
 8004610:	6820      	ldr	r0, [r4, #0]
 8004612:	88a1      	ldrh	r1, [r4, #4]
 8004614:	f7fd fe54 	bl	80022c0 <GPIO_SetBits>
 8004618:	f44f 7052 	mov.w	r0, #840	; 0x348
 800461c:	f7fe fdec 	bl	80031f8 <delay_loop>
 8004620:	e77a      	b.n	8004518 <temp_write_byte+0xe4>
 8004622:	f7fd fe89 	bl	8002338 <GPIO_ResetBits>
 8004626:	203c      	movs	r0, #60	; 0x3c
 8004628:	f7fe fde6 	bl	80031f8 <delay_loop>
 800462c:	6820      	ldr	r0, [r4, #0]
 800462e:	88a1      	ldrh	r1, [r4, #4]
 8004630:	f7fd fe46 	bl	80022c0 <GPIO_SetBits>
 8004634:	f44f 7052 	mov.w	r0, #840	; 0x348
 8004638:	f7fe fdde 	bl	80031f8 <delay_loop>
 800463c:	e757      	b.n	80044ee <temp_write_byte+0xba>
 800463e:	f7fd fe7b 	bl	8002338 <GPIO_ResetBits>
 8004642:	203c      	movs	r0, #60	; 0x3c
 8004644:	f7fe fdd8 	bl	80031f8 <delay_loop>
 8004648:	6820      	ldr	r0, [r4, #0]
 800464a:	88a1      	ldrh	r1, [r4, #4]
 800464c:	f7fd fe38 	bl	80022c0 <GPIO_SetBits>
 8004650:	f44f 7052 	mov.w	r0, #840	; 0x348
 8004654:	f7fe fdd0 	bl	80031f8 <delay_loop>
 8004658:	e734      	b.n	80044c4 <temp_write_byte+0x90>
 800465a:	f7fd fe6d 	bl	8002338 <GPIO_ResetBits>
 800465e:	203c      	movs	r0, #60	; 0x3c
 8004660:	f7fe fdca 	bl	80031f8 <delay_loop>
 8004664:	6820      	ldr	r0, [r4, #0]
 8004666:	88a1      	ldrh	r1, [r4, #4]
 8004668:	f7fd fe2a 	bl	80022c0 <GPIO_SetBits>
 800466c:	f44f 7052 	mov.w	r0, #840	; 0x348
 8004670:	f7fe fdc2 	bl	80031f8 <delay_loop>
 8004674:	e711      	b.n	800449a <temp_write_byte+0x66>
 8004676:	bf00      	nop
 8004678:	200001a8 	.word	0x200001a8

0800467c <temp_trig>:
 800467c:	b508      	push	{r3, lr}
 800467e:	f7ff fe4d 	bl	800431c <ds18b20_reset>
 8004682:	20cc      	movs	r0, #204	; 0xcc
 8004684:	f7ff fed6 	bl	8004434 <temp_write_byte>
 8004688:	2044      	movs	r0, #68	; 0x44
 800468a:	f7ff fed3 	bl	8004434 <temp_write_byte>
 800468e:	f64c 3080 	movw	r0, #52096	; 0xcb80
 8004692:	f2c0 00a4 	movt	r0, #164	; 0xa4
 8004696:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800469a:	f7fe bdad 	b.w	80031f8 <delay_loop>
 800469e:	bf00      	nop

080046a0 <get_temp_>:
 80046a0:	b510      	push	{r4, lr}
 80046a2:	f7ff ffeb 	bl	800467c <temp_trig>
 80046a6:	f7ff fe39 	bl	800431c <ds18b20_reset>
 80046aa:	20cc      	movs	r0, #204	; 0xcc
 80046ac:	f7ff fec2 	bl	8004434 <temp_write_byte>
 80046b0:	20be      	movs	r0, #190	; 0xbe
 80046b2:	f7ff febf 	bl	8004434 <temp_write_byte>
 80046b6:	f7ff fe89 	bl	80043cc <temp_read_byte>
 80046ba:	4604      	mov	r4, r0
 80046bc:	f7ff fe86 	bl	80043cc <temp_read_byte>
 80046c0:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
 80046c4:	bd10      	pop	{r4, pc}
 80046c6:	bf00      	nop

080046c8 <usb_init>:
 80046c8:	b508      	push	{r3, lr}
 80046ca:	f000 f8bb 	bl	8004844 <Set_System>
 80046ce:	f000 f86d 	bl	80047ac <USB_Interrupts_Config>
 80046d2:	f000 f85f 	bl	8004794 <Set_USBClock>
 80046d6:	f000 fe1d 	bl	8005314 <USB_Init>
 80046da:	f249 00c8 	movw	r0, #37064	; 0x90c8
 80046de:	f6c0 0000 	movt	r0, #2048	; 0x800
 80046e2:	2101      	movs	r1, #1
 80046e4:	2200      	movs	r2, #0
 80046e6:	f001 fc63 	bl	8005fb0 <rt_sem_create>
 80046ea:	f240 7314 	movw	r3, #1812	; 0x714
 80046ee:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80046f2:	6018      	str	r0, [r3, #0]
 80046f4:	bd08      	pop	{r3, pc}
 80046f6:	bf00      	nop

080046f8 <Delay>:
 80046f8:	b082      	sub	sp, #8
 80046fa:	9001      	str	r0, [sp, #4]
 80046fc:	9a01      	ldr	r2, [sp, #4]
 80046fe:	4b06      	ldr	r3, [pc, #24]	; (8004718 <Delay+0x20>)
 8004700:	601a      	str	r2, [r3, #0]
 8004702:	9801      	ldr	r0, [sp, #4]
 8004704:	b128      	cbz	r0, 8004712 <Delay+0x1a>
 8004706:	9901      	ldr	r1, [sp, #4]
 8004708:	1e4a      	subs	r2, r1, #1
 800470a:	9201      	str	r2, [sp, #4]
 800470c:	9b01      	ldr	r3, [sp, #4]
 800470e:	2b00      	cmp	r3, #0
 8004710:	d1f9      	bne.n	8004706 <Delay+0xe>
 8004712:	b002      	add	sp, #8
 8004714:	4770      	bx	lr
 8004716:	bf00      	nop
 8004718:	2000070c 	.word	0x2000070c

0800471c <IntToUnicode>:
 800471c:	b470      	push	{r4, r5, r6}
 800471e:	b38a      	cbz	r2, 8004784 <IntToUnicode+0x68>
 8004720:	1e56      	subs	r6, r2, #1
 8004722:	b2f2      	uxtb	r2, r6
 8004724:	1c53      	adds	r3, r2, #1
 8004726:	005e      	lsls	r6, r3, #1
 8004728:	0f03      	lsrs	r3, r0, #28
 800472a:	1eb2      	subs	r2, r6, #2
 800472c:	2400      	movs	r4, #0
 800472e:	2b09      	cmp	r3, #9
 8004730:	f3c2 0240 	ubfx	r2, r2, #1, #1
 8004734:	d928      	bls.n	8004788 <IntToUnicode+0x6c>
 8004736:	3337      	adds	r3, #55	; 0x37
 8004738:	700b      	strb	r3, [r1, #0]
 800473a:	2302      	movs	r3, #2
 800473c:	0100      	lsls	r0, r0, #4
 800473e:	42b3      	cmp	r3, r6
 8004740:	704c      	strb	r4, [r1, #1]
 8004742:	d01f      	beq.n	8004784 <IntToUnicode+0x68>
 8004744:	b152      	cbz	r2, 800475c <IntToUnicode+0x40>
 8004746:	0f02      	lsrs	r2, r0, #28
 8004748:	2a09      	cmp	r2, #9
 800474a:	d913      	bls.n	8004774 <IntToUnicode+0x58>
 800474c:	3237      	adds	r2, #55	; 0x37
 800474e:	54ca      	strb	r2, [r1, r3]
 8004750:	18ca      	adds	r2, r1, r3
 8004752:	3302      	adds	r3, #2
 8004754:	0100      	lsls	r0, r0, #4
 8004756:	42b3      	cmp	r3, r6
 8004758:	7054      	strb	r4, [r2, #1]
 800475a:	d013      	beq.n	8004784 <IntToUnicode+0x68>
 800475c:	0f05      	lsrs	r5, r0, #28
 800475e:	2d09      	cmp	r5, #9
 8004760:	d815      	bhi.n	800478e <IntToUnicode+0x72>
 8004762:	3530      	adds	r5, #48	; 0x30
 8004764:	54cd      	strb	r5, [r1, r3]
 8004766:	0100      	lsls	r0, r0, #4
 8004768:	0f02      	lsrs	r2, r0, #28
 800476a:	18cd      	adds	r5, r1, r3
 800476c:	3302      	adds	r3, #2
 800476e:	2a09      	cmp	r2, #9
 8004770:	706c      	strb	r4, [r5, #1]
 8004772:	d8eb      	bhi.n	800474c <IntToUnicode+0x30>
 8004774:	3230      	adds	r2, #48	; 0x30
 8004776:	54ca      	strb	r2, [r1, r3]
 8004778:	18ca      	adds	r2, r1, r3
 800477a:	3302      	adds	r3, #2
 800477c:	0100      	lsls	r0, r0, #4
 800477e:	42b3      	cmp	r3, r6
 8004780:	7054      	strb	r4, [r2, #1]
 8004782:	d1eb      	bne.n	800475c <IntToUnicode+0x40>
 8004784:	bc70      	pop	{r4, r5, r6}
 8004786:	4770      	bx	lr
 8004788:	3330      	adds	r3, #48	; 0x30
 800478a:	700b      	strb	r3, [r1, #0]
 800478c:	e7d5      	b.n	800473a <IntToUnicode+0x1e>
 800478e:	3537      	adds	r5, #55	; 0x37
 8004790:	54cd      	strb	r5, [r1, r3]
 8004792:	e7e8      	b.n	8004766 <IntToUnicode+0x4a>

08004794 <Set_USBClock>:
 8004794:	2000      	movs	r0, #0
 8004796:	b508      	push	{r3, lr}
 8004798:	f7fc f92a 	bl	80009f0 <RCC_USBCLKConfig>
 800479c:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 80047a0:	2101      	movs	r1, #1
 80047a2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80047a6:	f7fc b9fd 	b.w	8000ba4 <RCC_APB1PeriphClockCmd>
 80047aa:	bf00      	nop

080047ac <USB_Interrupts_Config>:
 80047ac:	b530      	push	{r4, r5, lr}
 80047ae:	f44f 60a0 	mov.w	r0, #1280	; 0x500
 80047b2:	b083      	sub	sp, #12
 80047b4:	f7fe fafc 	bl	8002db0 <NVIC_PriorityGroupConfig>
 80047b8:	2401      	movs	r4, #1
 80047ba:	2500      	movs	r5, #0
 80047bc:	a801      	add	r0, sp, #4
 80047be:	2314      	movs	r3, #20
 80047c0:	f88d 3004 	strb.w	r3, [sp, #4]
 80047c4:	f88d 4005 	strb.w	r4, [sp, #5]
 80047c8:	f88d 5006 	strb.w	r5, [sp, #6]
 80047cc:	f88d 4007 	strb.w	r4, [sp, #7]
 80047d0:	f7fe fb10 	bl	8002df4 <NVIC_Init>
 80047d4:	212a      	movs	r1, #42	; 0x2a
 80047d6:	a801      	add	r0, sp, #4
 80047d8:	f88d 1004 	strb.w	r1, [sp, #4]
 80047dc:	f88d 5005 	strb.w	r5, [sp, #5]
 80047e0:	f88d 4007 	strb.w	r4, [sp, #7]
 80047e4:	f7fe fb06 	bl	8002df4 <NVIC_Init>
 80047e8:	b003      	add	sp, #12
 80047ea:	bd30      	pop	{r4, r5, pc}

080047ec <USB_Cable_Config>:
 80047ec:	b938      	cbnz	r0, 80047fe <USB_Cable_Config+0x12>
 80047ee:	f44f 50a0 	mov.w	r0, #5120	; 0x1400
 80047f2:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80047f6:	f44f 7100 	mov.w	r1, #512	; 0x200
 80047fa:	f7fd bd61 	b.w	80022c0 <GPIO_SetBits>
 80047fe:	f44f 50a0 	mov.w	r0, #5120	; 0x1400
 8004802:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8004806:	f44f 7100 	mov.w	r1, #512	; 0x200
 800480a:	f7fd bd95 	b.w	8002338 <GPIO_ResetBits>
 800480e:	bf00      	nop

08004810 <GPIO_Configuration>:
 8004810:	b500      	push	{lr}
 8004812:	2020      	movs	r0, #32
 8004814:	b083      	sub	sp, #12
 8004816:	2101      	movs	r1, #1
 8004818:	f7fc f998 	bl	8000b4c <RCC_APB2PeriphClockCmd>
 800481c:	f44f 7300 	mov.w	r3, #512	; 0x200
 8004820:	f44f 50a0 	mov.w	r0, #5120	; 0x1400
 8004824:	f8ad 3004 	strh.w	r3, [sp, #4]
 8004828:	2203      	movs	r2, #3
 800482a:	2314      	movs	r3, #20
 800482c:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8004830:	a901      	add	r1, sp, #4
 8004832:	f88d 2006 	strb.w	r2, [sp, #6]
 8004836:	f88d 3007 	strb.w	r3, [sp, #7]
 800483a:	f7fd fb3f 	bl	8001ebc <GPIO_Init>
 800483e:	b003      	add	sp, #12
 8004840:	bd00      	pop	{pc}
 8004842:	bf00      	nop

08004844 <Set_System>:
 8004844:	b508      	push	{r3, lr}
 8004846:	2020      	movs	r0, #32
 8004848:	2101      	movs	r1, #1
 800484a:	f7fc f97f 	bl	8000b4c <RCC_APB2PeriphClockCmd>
 800484e:	f44f 4040 	mov.w	r0, #49152	; 0xc000
 8004852:	f7fc f8dd 	bl	8000a10 <RCC_ADCCLKConfig>
 8004856:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800485a:	f7ff bfd9 	b.w	8004810 <GPIO_Configuration>
 800485e:	bf00      	nop

08004860 <Get_SerialNum>:
 8004860:	f24f 72e8 	movw	r2, #63464	; 0xf7e8
 8004864:	f24f 73f0 	movw	r3, #63472	; 0xf7f0
 8004868:	f6c1 72ff 	movt	r2, #8191	; 0x1fff
 800486c:	f6c1 73ff 	movt	r3, #8191	; 0x1fff
 8004870:	6810      	ldr	r0, [r2, #0]
 8004872:	681a      	ldr	r2, [r3, #0]
 8004874:	f24f 71ec 	movw	r1, #63468	; 0xf7ec
 8004878:	f6c1 71ff 	movt	r1, #8191	; 0x1fff
 800487c:	1880      	adds	r0, r0, r2
 800487e:	b510      	push	{r4, lr}
 8004880:	680c      	ldr	r4, [r1, #0]
 8004882:	d100      	bne.n	8004886 <Get_SerialNum+0x26>
 8004884:	bd10      	pop	{r4, pc}
 8004886:	2208      	movs	r2, #8
 8004888:	4904      	ldr	r1, [pc, #16]	; (800489c <Get_SerialNum+0x3c>)
 800488a:	f7ff ff47 	bl	800471c <IntToUnicode>
 800488e:	4904      	ldr	r1, [pc, #16]	; (80048a0 <Get_SerialNum+0x40>)
 8004890:	4620      	mov	r0, r4
 8004892:	2204      	movs	r2, #4
 8004894:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8004898:	f7ff bf40 	b.w	800471c <IntToUnicode>
 800489c:	200001c6 	.word	0x200001c6
 80048a0:	200001d6 	.word	0x200001d6

080048a4 <STM_EVAL_LEDOn>:
 80048a4:	f240 12b4 	movw	r2, #436	; 0x1b4
 80048a8:	f249 03cc 	movw	r3, #37068	; 0x90cc
 80048ac:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80048b0:	f6c0 0300 	movt	r3, #2048	; 0x800
 80048b4:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
 80048b8:	f833 0010 	ldrh.w	r0, [r3, r0, lsl #1]
 80048bc:	6108      	str	r0, [r1, #16]
 80048be:	4770      	bx	lr

080048c0 <STM_EVAL_LEDOff>:
 80048c0:	f240 12b4 	movw	r2, #436	; 0x1b4
 80048c4:	f249 03cc 	movw	r3, #37068	; 0x90cc
 80048c8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80048cc:	f6c0 0300 	movt	r3, #2048	; 0x800
 80048d0:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
 80048d4:	f833 0010 	ldrh.w	r0, [r3, r0, lsl #1]
 80048d8:	6148      	str	r0, [r1, #20]
 80048da:	4770      	bx	lr

080048dc <USB_LP_CAN1_RX0_IRQHandler>:
 80048dc:	f000 be16 	b.w	800550c <USB_Istr>

080048e0 <USBWakeUp_IRQHandler>:
 80048e0:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80048e4:	f7fc b9e6 	b.w	8000cb4 <EXTI_ClearITPendingBit>

080048e8 <Standard_GetConfiguration>:
 80048e8:	b508      	push	{r3, lr}
 80048ea:	b138      	cbz	r0, 80048fc <Standard_GetConfiguration+0x14>
 80048ec:	4b06      	ldr	r3, [pc, #24]	; (8004908 <Standard_GetConfiguration+0x20>)
 80048ee:	6818      	ldr	r0, [r3, #0]
 80048f0:	6801      	ldr	r1, [r0, #0]
 80048f2:	4788      	blx	r1
 80048f4:	4a05      	ldr	r2, [pc, #20]	; (800490c <Standard_GetConfiguration+0x24>)
 80048f6:	6810      	ldr	r0, [r2, #0]
 80048f8:	300a      	adds	r0, #10
 80048fa:	bd08      	pop	{r3, pc}
 80048fc:	4b03      	ldr	r3, [pc, #12]	; (800490c <Standard_GetConfiguration+0x24>)
 80048fe:	2201      	movs	r2, #1
 8004900:	6819      	ldr	r1, [r3, #0]
 8004902:	820a      	strh	r2, [r1, #16]
 8004904:	bd08      	pop	{r3, pc}
 8004906:	bf00      	nop
 8004908:	200019d8 	.word	0x200019d8
 800490c:	200019dc 	.word	0x200019dc

08004910 <Standard_GetInterface>:
 8004910:	b508      	push	{r3, lr}
 8004912:	b138      	cbz	r0, 8004924 <Standard_GetInterface+0x14>
 8004914:	4b06      	ldr	r3, [pc, #24]	; (8004930 <Standard_GetInterface+0x20>)
 8004916:	6818      	ldr	r0, [r3, #0]
 8004918:	6881      	ldr	r1, [r0, #8]
 800491a:	4788      	blx	r1
 800491c:	4a05      	ldr	r2, [pc, #20]	; (8004934 <Standard_GetInterface+0x24>)
 800491e:	6810      	ldr	r0, [r2, #0]
 8004920:	300c      	adds	r0, #12
 8004922:	bd08      	pop	{r3, pc}
 8004924:	4b03      	ldr	r3, [pc, #12]	; (8004934 <Standard_GetInterface+0x24>)
 8004926:	2201      	movs	r2, #1
 8004928:	6819      	ldr	r1, [r3, #0]
 800492a:	820a      	strh	r2, [r1, #16]
 800492c:	bd08      	pop	{r3, pc}
 800492e:	bf00      	nop
 8004930:	200019d8 	.word	0x200019d8
 8004934:	200019dc 	.word	0x200019dc

08004938 <Standard_GetStatus>:
 8004938:	b508      	push	{r3, lr}
 800493a:	2800      	cmp	r0, #0
 800493c:	d03b      	beq.n	80049b6 <Standard_GetStatus+0x7e>
 800493e:	4b23      	ldr	r3, [pc, #140]	; (80049cc <Standard_GetStatus+0x94>)
 8004940:	4823      	ldr	r0, [pc, #140]	; (80049d0 <Standard_GetStatus+0x98>)
 8004942:	2100      	movs	r1, #0
 8004944:	681a      	ldr	r2, [r3, #0]
 8004946:	8001      	strh	r1, [r0, #0]
 8004948:	7813      	ldrb	r3, [r2, #0]
 800494a:	f013 037f 	ands.w	r3, r3, #127	; 0x7f
 800494e:	d112      	bne.n	8004976 <Standard_GetStatus+0x3e>
 8004950:	7a53      	ldrb	r3, [r2, #9]
 8004952:	f003 0220 	and.w	r2, r3, #32
 8004956:	b2d1      	uxtb	r1, r2
 8004958:	bb59      	cbnz	r1, 80049b2 <Standard_GetStatus+0x7a>
 800495a:	7802      	ldrb	r2, [r0, #0]
 800495c:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8004960:	b2d9      	uxtb	r1, r3
 8004962:	b311      	cbz	r1, 80049aa <Standard_GetStatus+0x72>
 8004964:	f042 0301 	orr.w	r3, r2, #1
 8004968:	7003      	strb	r3, [r0, #0]
 800496a:	481a      	ldr	r0, [pc, #104]	; (80049d4 <Standard_GetStatus+0x9c>)
 800496c:	6801      	ldr	r1, [r0, #0]
 800496e:	690a      	ldr	r2, [r1, #16]
 8004970:	4790      	blx	r2
 8004972:	4817      	ldr	r0, [pc, #92]	; (80049d0 <Standard_GetStatus+0x98>)
 8004974:	bd08      	pop	{r3, pc}
 8004976:	2b01      	cmp	r3, #1
 8004978:	d016      	beq.n	80049a8 <Standard_GetStatus+0x70>
 800497a:	2b02      	cmp	r3, #2
 800497c:	d113      	bne.n	80049a6 <Standard_GetStatus+0x6e>
 800497e:	7951      	ldrb	r1, [r2, #5]
 8004980:	f001 020f 	and.w	r2, r1, #15
 8004984:	0093      	lsls	r3, r2, #2
 8004986:	f103 4280 	add.w	r2, r3, #1073741824	; 0x40000000
 800498a:	f502 43b8 	add.w	r3, r2, #23552	; 0x5c00
 800498e:	f011 0f80 	tst.w	r1, #128	; 0x80
 8004992:	6819      	ldr	r1, [r3, #0]
 8004994:	d114      	bne.n	80049c0 <Standard_GetStatus+0x88>
 8004996:	f401 5240 	and.w	r2, r1, #12288	; 0x3000
 800499a:	f5b2 5f80 	cmp.w	r2, #4096	; 0x1000
 800499e:	d1e4      	bne.n	800496a <Standard_GetStatus+0x32>
 80049a0:	2101      	movs	r1, #1
 80049a2:	7001      	strb	r1, [r0, #0]
 80049a4:	e7e1      	b.n	800496a <Standard_GetStatus+0x32>
 80049a6:	4608      	mov	r0, r1
 80049a8:	bd08      	pop	{r3, pc}
 80049aa:	f022 0201 	bic.w	r2, r2, #1
 80049ae:	7002      	strb	r2, [r0, #0]
 80049b0:	e7db      	b.n	800496a <Standard_GetStatus+0x32>
 80049b2:	2202      	movs	r2, #2
 80049b4:	e7d2      	b.n	800495c <Standard_GetStatus+0x24>
 80049b6:	4b05      	ldr	r3, [pc, #20]	; (80049cc <Standard_GetStatus+0x94>)
 80049b8:	2202      	movs	r2, #2
 80049ba:	6819      	ldr	r1, [r3, #0]
 80049bc:	820a      	strh	r2, [r1, #16]
 80049be:	bd08      	pop	{r3, pc}
 80049c0:	f001 0330 	and.w	r3, r1, #48	; 0x30
 80049c4:	2b10      	cmp	r3, #16
 80049c6:	d1d0      	bne.n	800496a <Standard_GetStatus+0x32>
 80049c8:	e7ea      	b.n	80049a0 <Standard_GetStatus+0x68>
 80049ca:	bf00      	nop
 80049cc:	200019dc 	.word	0x200019dc
 80049d0:	200019ac 	.word	0x200019ac
 80049d4:	200019d8 	.word	0x200019d8

080049d8 <DataStageIn>:
 80049d8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80049dc:	4e27      	ldr	r6, [pc, #156]	; (8004a7c <DataStageIn+0xa4>)
 80049de:	6834      	ldr	r4, [r6, #0]
 80049e0:	8a23      	ldrh	r3, [r4, #16]
 80049e2:	7a27      	ldrb	r7, [r4, #8]
 80049e4:	b923      	cbnz	r3, 80049f0 <DataStageIn+0x18>
 80049e6:	2f04      	cmp	r7, #4
 80049e8:	d02a      	beq.n	8004a40 <DataStageIn+0x68>
 80049ea:	8aa5      	ldrh	r5, [r4, #20]
 80049ec:	2704      	movs	r7, #4
 80049ee:	e003      	b.n	80049f8 <DataStageIn+0x20>
 80049f0:	8aa5      	ldrh	r5, [r4, #20]
 80049f2:	42ab      	cmp	r3, r5
 80049f4:	d9fa      	bls.n	80049ec <DataStageIn+0x14>
 80049f6:	2702      	movs	r7, #2
 80049f8:	429d      	cmp	r5, r3
 80049fa:	bf28      	it	cs
 80049fc:	461d      	movcs	r5, r3
 80049fe:	69a1      	ldr	r1, [r4, #24]
 8004a00:	4628      	mov	r0, r5
 8004a02:	4788      	blx	r1
 8004a04:	4680      	mov	r8, r0
 8004a06:	2000      	movs	r0, #0
 8004a08:	f001 f86a 	bl	8005ae0 <GetEPTxAddr>
 8004a0c:	462a      	mov	r2, r5
 8004a0e:	4601      	mov	r1, r0
 8004a10:	4640      	mov	r0, r8
 8004a12:	f000 fda7 	bl	8005564 <UserToPMABufferCopy>
 8004a16:	4629      	mov	r1, r5
 8004a18:	2000      	movs	r0, #0
 8004a1a:	f001 f881 	bl	8005b20 <SetEPTxCount>
 8004a1e:	8a20      	ldrh	r0, [r4, #16]
 8004a20:	8a62      	ldrh	r2, [r4, #18]
 8004a22:	1b43      	subs	r3, r0, r5
 8004a24:	8223      	strh	r3, [r4, #16]
 8004a26:	18ad      	adds	r5, r5, r2
 8004a28:	4815      	ldr	r0, [pc, #84]	; (8004a80 <DataStageIn+0xa8>)
 8004a2a:	4b16      	ldr	r3, [pc, #88]	; (8004a84 <DataStageIn+0xac>)
 8004a2c:	8265      	strh	r5, [r4, #18]
 8004a2e:	2130      	movs	r1, #48	; 0x30
 8004a30:	f44f 5240 	mov.w	r2, #12288	; 0x3000
 8004a34:	6834      	ldr	r4, [r6, #0]
 8004a36:	8001      	strh	r1, [r0, #0]
 8004a38:	801a      	strh	r2, [r3, #0]
 8004a3a:	7227      	strb	r7, [r4, #8]
 8004a3c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004a40:	4a11      	ldr	r2, [pc, #68]	; (8004a88 <DataStageIn+0xb0>)
 8004a42:	7811      	ldrb	r1, [r2, #0]
 8004a44:	2901      	cmp	r1, #1
 8004a46:	d006      	beq.n	8004a56 <DataStageIn+0x7e>
 8004a48:	480d      	ldr	r0, [pc, #52]	; (8004a80 <DataStageIn+0xa8>)
 8004a4a:	2710      	movs	r7, #16
 8004a4c:	8007      	strh	r7, [r0, #0]
 8004a4e:	2707      	movs	r7, #7
 8004a50:	7227      	strb	r7, [r4, #8]
 8004a52:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004a56:	f645 4150 	movw	r1, #23632	; 0x5c50
 8004a5a:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8004a5e:	6808      	ldr	r0, [r1, #0]
 8004a60:	f243 0102 	movw	r1, #12290	; 0x3002
 8004a64:	b280      	uxth	r0, r0
 8004a66:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004a6a:	1841      	adds	r1, r0, r1
 8004a6c:	0048      	lsls	r0, r1, #1
 8004a6e:	4904      	ldr	r1, [pc, #16]	; (8004a80 <DataStageIn+0xa8>)
 8004a70:	6003      	str	r3, [r0, #0]
 8004a72:	2030      	movs	r0, #48	; 0x30
 8004a74:	8008      	strh	r0, [r1, #0]
 8004a76:	7013      	strb	r3, [r2, #0]
 8004a78:	e7df      	b.n	8004a3a <DataStageIn+0x62>
 8004a7a:	bf00      	nop
 8004a7c:	200019dc 	.word	0x200019dc
 8004a80:	200019e4 	.word	0x200019e4
 8004a84:	200019e2 	.word	0x200019e2
 8004a88:	20000710 	.word	0x20000710

08004a8c <Standard_SetConfiguration>:
 8004a8c:	b510      	push	{r4, lr}
 8004a8e:	4b0b      	ldr	r3, [pc, #44]	; (8004abc <Standard_SetConfiguration+0x30>)
 8004a90:	4a0b      	ldr	r2, [pc, #44]	; (8004ac0 <Standard_SetConfiguration+0x34>)
 8004a92:	6818      	ldr	r0, [r3, #0]
 8004a94:	7851      	ldrb	r1, [r2, #1]
 8004a96:	78c3      	ldrb	r3, [r0, #3]
 8004a98:	4299      	cmp	r1, r3
 8004a9a:	d201      	bcs.n	8004aa0 <Standard_SetConfiguration+0x14>
 8004a9c:	2002      	movs	r0, #2
 8004a9e:	bd10      	pop	{r4, pc}
 8004aa0:	7882      	ldrb	r2, [r0, #2]
 8004aa2:	2a00      	cmp	r2, #0
 8004aa4:	d1fa      	bne.n	8004a9c <Standard_SetConfiguration+0x10>
 8004aa6:	8884      	ldrh	r4, [r0, #4]
 8004aa8:	2c00      	cmp	r4, #0
 8004aaa:	d1f7      	bne.n	8004a9c <Standard_SetConfiguration+0x10>
 8004aac:	7283      	strb	r3, [r0, #10]
 8004aae:	4805      	ldr	r0, [pc, #20]	; (8004ac4 <Standard_SetConfiguration+0x38>)
 8004ab0:	6801      	ldr	r1, [r0, #0]
 8004ab2:	684b      	ldr	r3, [r1, #4]
 8004ab4:	4798      	blx	r3
 8004ab6:	4620      	mov	r0, r4
 8004ab8:	bd10      	pop	{r4, pc}
 8004aba:	bf00      	nop
 8004abc:	200019dc 	.word	0x200019dc
 8004ac0:	200002ac 	.word	0x200002ac
 8004ac4:	200019d8 	.word	0x200019d8

08004ac8 <Standard_SetInterface>:
 8004ac8:	b538      	push	{r3, r4, r5, lr}
 8004aca:	4a10      	ldr	r2, [pc, #64]	; (8004b0c <Standard_SetInterface+0x44>)
 8004acc:	4c10      	ldr	r4, [pc, #64]	; (8004b10 <Standard_SetInterface+0x48>)
 8004ace:	6811      	ldr	r1, [r2, #0]
 8004ad0:	6823      	ldr	r3, [r4, #0]
 8004ad2:	698a      	ldr	r2, [r1, #24]
 8004ad4:	7958      	ldrb	r0, [r3, #5]
 8004ad6:	78d9      	ldrb	r1, [r3, #3]
 8004ad8:	4790      	blx	r2
 8004ada:	6823      	ldr	r3, [r4, #0]
 8004adc:	7a99      	ldrb	r1, [r3, #10]
 8004ade:	b909      	cbnz	r1, 8004ae4 <Standard_SetInterface+0x1c>
 8004ae0:	2002      	movs	r0, #2
 8004ae2:	bd38      	pop	{r3, r4, r5, pc}
 8004ae4:	2800      	cmp	r0, #0
 8004ae6:	d1fb      	bne.n	8004ae0 <Standard_SetInterface+0x18>
 8004ae8:	7918      	ldrb	r0, [r3, #4]
 8004aea:	2800      	cmp	r0, #0
 8004aec:	d1f8      	bne.n	8004ae0 <Standard_SetInterface+0x18>
 8004aee:	789d      	ldrb	r5, [r3, #2]
 8004af0:	2d00      	cmp	r5, #0
 8004af2:	d1f5      	bne.n	8004ae0 <Standard_SetInterface+0x18>
 8004af4:	4a07      	ldr	r2, [pc, #28]	; (8004b14 <Standard_SetInterface+0x4c>)
 8004af6:	6813      	ldr	r3, [r2, #0]
 8004af8:	68d9      	ldr	r1, [r3, #12]
 8004afa:	4788      	blx	r1
 8004afc:	6823      	ldr	r3, [r4, #0]
 8004afe:	4628      	mov	r0, r5
 8004b00:	7959      	ldrb	r1, [r3, #5]
 8004b02:	78da      	ldrb	r2, [r3, #3]
 8004b04:	72d9      	strb	r1, [r3, #11]
 8004b06:	731a      	strb	r2, [r3, #12]
 8004b08:	bd38      	pop	{r3, r4, r5, pc}
 8004b0a:	bf00      	nop
 8004b0c:	200019b4 	.word	0x200019b4
 8004b10:	200019dc 	.word	0x200019dc
 8004b14:	200019d8 	.word	0x200019d8

08004b18 <Standard_ClearFeature>:
 8004b18:	b538      	push	{r3, r4, r5, lr}
 8004b1a:	4b35      	ldr	r3, [pc, #212]	; (8004bf0 <Standard_ClearFeature+0xd8>)
 8004b1c:	681b      	ldr	r3, [r3, #0]
 8004b1e:	7818      	ldrb	r0, [r3, #0]
 8004b20:	f010 007f 	ands.w	r0, r0, #127	; 0x7f
 8004b24:	d003      	beq.n	8004b2e <Standard_ClearFeature+0x16>
 8004b26:	2802      	cmp	r0, #2
 8004b28:	d006      	beq.n	8004b38 <Standard_ClearFeature+0x20>
 8004b2a:	2002      	movs	r0, #2
 8004b2c:	bd38      	pop	{r3, r4, r5, pc}
 8004b2e:	7a5a      	ldrb	r2, [r3, #9]
 8004b30:	f022 0120 	bic.w	r1, r2, #32
 8004b34:	7259      	strb	r1, [r3, #9]
 8004b36:	bd38      	pop	{r3, r4, r5, pc}
 8004b38:	885a      	ldrh	r2, [r3, #2]
 8004b3a:	2a00      	cmp	r2, #0
 8004b3c:	d1f6      	bne.n	8004b2c <Standard_ClearFeature+0x14>
 8004b3e:	7919      	ldrb	r1, [r3, #4]
 8004b40:	2900      	cmp	r1, #0
 8004b42:	d1f3      	bne.n	8004b2c <Standard_ClearFeature+0x14>
 8004b44:	795a      	ldrb	r2, [r3, #5]
 8004b46:	f022 0080 	bic.w	r0, r2, #128	; 0x80
 8004b4a:	0081      	lsls	r1, r0, #2
 8004b4c:	f101 4480 	add.w	r4, r1, #1073741824	; 0x40000000
 8004b50:	0615      	lsls	r5, r2, #24
 8004b52:	f504 44b8 	add.w	r4, r4, #23552	; 0x5c00
 8004b56:	bf56      	itet	pl
 8004b58:	6824      	ldrpl	r4, [r4, #0]
 8004b5a:	6825      	ldrmi	r5, [r4, #0]
 8004b5c:	f404 5540 	andpl.w	r5, r4, #12288	; 0x3000
 8004b60:	4c24      	ldr	r4, [pc, #144]	; (8004bf4 <Standard_ClearFeature+0xdc>)
 8004b62:	bf48      	it	mi
 8004b64:	f005 0530 	andmi.w	r5, r5, #48	; 0x30
 8004b68:	7824      	ldrb	r4, [r4, #0]
 8004b6a:	42a0      	cmp	r0, r4
 8004b6c:	d2dd      	bcs.n	8004b2a <Standard_ClearFeature+0x12>
 8004b6e:	2d00      	cmp	r5, #0
 8004b70:	d0db      	beq.n	8004b2a <Standard_ClearFeature+0x12>
 8004b72:	7a9b      	ldrb	r3, [r3, #10]
 8004b74:	2b00      	cmp	r3, #0
 8004b76:	d0d8      	beq.n	8004b2a <Standard_ClearFeature+0x12>
 8004b78:	f002 0280 	and.w	r2, r2, #128	; 0x80
 8004b7c:	b2d3      	uxtb	r3, r2
 8004b7e:	b173      	cbz	r3, 8004b9e <Standard_ClearFeature+0x86>
 8004b80:	f101 4280 	add.w	r2, r1, #1073741824	; 0x40000000
 8004b84:	f502 43b8 	add.w	r3, r2, #23552	; 0x5c00
 8004b88:	6819      	ldr	r1, [r3, #0]
 8004b8a:	f001 0230 	and.w	r2, r1, #48	; 0x30
 8004b8e:	2a10      	cmp	r2, #16
 8004b90:	d021      	beq.n	8004bd6 <Standard_ClearFeature+0xbe>
 8004b92:	4819      	ldr	r0, [pc, #100]	; (8004bf8 <Standard_ClearFeature+0xe0>)
 8004b94:	6803      	ldr	r3, [r0, #0]
 8004b96:	6959      	ldr	r1, [r3, #20]
 8004b98:	4788      	blx	r1
 8004b9a:	2000      	movs	r0, #0
 8004b9c:	bd38      	pop	{r3, r4, r5, pc}
 8004b9e:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8004ba2:	f501 44b8 	add.w	r4, r1, #23552	; 0x5c00
 8004ba6:	6822      	ldr	r2, [r4, #0]
 8004ba8:	f402 5340 	and.w	r3, r2, #12288	; 0x3000
 8004bac:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 8004bb0:	d1ef      	bne.n	8004b92 <Standard_ClearFeature+0x7a>
 8004bb2:	b9c8      	cbnz	r0, 8004be8 <Standard_ClearFeature+0xd0>
 8004bb4:	4911      	ldr	r1, [pc, #68]	; (8004bfc <Standard_ClearFeature+0xe4>)
 8004bb6:	f891 102c 	ldrb.w	r1, [r1, #44]	; 0x2c
 8004bba:	f000 ffc1 	bl	8005b40 <SetEPRxCount>
 8004bbe:	6820      	ldr	r0, [r4, #0]
 8004bc0:	f64b 728f 	movw	r2, #49039	; 0xbf8f
 8004bc4:	4002      	ands	r2, r0
 8004bc6:	f482 5340 	eor.w	r3, r2, #12288	; 0x3000
 8004bca:	f443 4100 	orr.w	r1, r3, #32768	; 0x8000
 8004bce:	f041 0080 	orr.w	r0, r1, #128	; 0x80
 8004bd2:	6020      	str	r0, [r4, #0]
 8004bd4:	e7dd      	b.n	8004b92 <Standard_ClearFeature+0x7a>
 8004bd6:	b2c4      	uxtb	r4, r0
 8004bd8:	4620      	mov	r0, r4
 8004bda:	f000 ff49 	bl	8005a70 <ClearDTOG_TX>
 8004bde:	4620      	mov	r0, r4
 8004be0:	2130      	movs	r1, #48	; 0x30
 8004be2:	f000 febf 	bl	8005964 <SetEPTxStatus>
 8004be6:	e7d4      	b.n	8004b92 <Standard_ClearFeature+0x7a>
 8004be8:	f000 ff30 	bl	8005a4c <ClearDTOG_RX>
 8004bec:	e7e7      	b.n	8004bbe <Standard_ClearFeature+0xa6>
 8004bee:	bf00      	nop
 8004bf0:	200019dc 	.word	0x200019dc
 8004bf4:	200002ac 	.word	0x200002ac
 8004bf8:	200019d8 	.word	0x200019d8
 8004bfc:	20000220 	.word	0x20000220

08004c00 <Standard_SetEndPointFeature>:
 8004c00:	b538      	push	{r3, r4, r5, lr}
 8004c02:	4b22      	ldr	r3, [pc, #136]	; (8004c8c <Standard_SetEndPointFeature+0x8c>)
 8004c04:	6819      	ldr	r1, [r3, #0]
 8004c06:	794b      	ldrb	r3, [r1, #5]
 8004c08:	f023 0280 	bic.w	r2, r3, #128	; 0x80
 8004c0c:	0090      	lsls	r0, r2, #2
 8004c0e:	f100 4480 	add.w	r4, r0, #1073741824	; 0x40000000
 8004c12:	061d      	lsls	r5, r3, #24
 8004c14:	f504 44b8 	add.w	r4, r4, #23552	; 0x5c00
 8004c18:	bf56      	itet	pl
 8004c1a:	6824      	ldrpl	r4, [r4, #0]
 8004c1c:	6825      	ldrmi	r5, [r4, #0]
 8004c1e:	f404 5540 	andpl.w	r5, r4, #12288	; 0x3000
 8004c22:	4c1b      	ldr	r4, [pc, #108]	; (8004c90 <Standard_SetEndPointFeature+0x90>)
 8004c24:	bf48      	it	mi
 8004c26:	f005 0530 	andmi.w	r5, r5, #48	; 0x30
 8004c2a:	7824      	ldrb	r4, [r4, #0]
 8004c2c:	42a2      	cmp	r2, r4
 8004c2e:	d301      	bcc.n	8004c34 <Standard_SetEndPointFeature+0x34>
 8004c30:	2002      	movs	r0, #2
 8004c32:	bd38      	pop	{r3, r4, r5, pc}
 8004c34:	884a      	ldrh	r2, [r1, #2]
 8004c36:	2a00      	cmp	r2, #0
 8004c38:	d1fa      	bne.n	8004c30 <Standard_SetEndPointFeature+0x30>
 8004c3a:	2d00      	cmp	r5, #0
 8004c3c:	d0f8      	beq.n	8004c30 <Standard_SetEndPointFeature+0x30>
 8004c3e:	7a89      	ldrb	r1, [r1, #10]
 8004c40:	2900      	cmp	r1, #0
 8004c42:	d0f5      	beq.n	8004c30 <Standard_SetEndPointFeature+0x30>
 8004c44:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8004c48:	f100 4080 	add.w	r0, r0, #1073741824	; 0x40000000
 8004c4c:	f500 42b8 	add.w	r2, r0, #23552	; 0x5c00
 8004c50:	b2db      	uxtb	r3, r3
 8004c52:	6811      	ldr	r1, [r2, #0]
 8004c54:	b17b      	cbz	r3, 8004c76 <Standard_SetEndPointFeature+0x76>
 8004c56:	f648 70bf 	movw	r0, #36799	; 0x8fbf
 8004c5a:	4008      	ands	r0, r1
 8004c5c:	f080 0110 	eor.w	r1, r0, #16
 8004c60:	f441 4300 	orr.w	r3, r1, #32768	; 0x8000
 8004c64:	f043 0080 	orr.w	r0, r3, #128	; 0x80
 8004c68:	6010      	str	r0, [r2, #0]
 8004c6a:	4a0a      	ldr	r2, [pc, #40]	; (8004c94 <Standard_SetEndPointFeature+0x94>)
 8004c6c:	6811      	ldr	r1, [r2, #0]
 8004c6e:	698b      	ldr	r3, [r1, #24]
 8004c70:	4798      	blx	r3
 8004c72:	2000      	movs	r0, #0
 8004c74:	bd38      	pop	{r3, r4, r5, pc}
 8004c76:	f64b 738f 	movw	r3, #49039	; 0xbf8f
 8004c7a:	400b      	ands	r3, r1
 8004c7c:	f483 5080 	eor.w	r0, r3, #4096	; 0x1000
 8004c80:	f440 4100 	orr.w	r1, r0, #32768	; 0x8000
 8004c84:	f041 0380 	orr.w	r3, r1, #128	; 0x80
 8004c88:	6013      	str	r3, [r2, #0]
 8004c8a:	e7ee      	b.n	8004c6a <Standard_SetEndPointFeature+0x6a>
 8004c8c:	200019dc 	.word	0x200019dc
 8004c90:	200002ac 	.word	0x200002ac
 8004c94:	200019d8 	.word	0x200019d8

08004c98 <Standard_GetDescriptorData>:
 8004c98:	4b05      	ldr	r3, [pc, #20]	; (8004cb0 <Standard_GetDescriptorData+0x18>)
 8004c9a:	681b      	ldr	r3, [r3, #0]
 8004c9c:	8a5a      	ldrh	r2, [r3, #18]
 8004c9e:	b110      	cbz	r0, 8004ca6 <Standard_GetDescriptorData+0xe>
 8004ca0:	6808      	ldr	r0, [r1, #0]
 8004ca2:	1880      	adds	r0, r0, r2
 8004ca4:	4770      	bx	lr
 8004ca6:	8889      	ldrh	r1, [r1, #4]
 8004ca8:	1a8a      	subs	r2, r1, r2
 8004caa:	821a      	strh	r2, [r3, #16]
 8004cac:	4770      	bx	lr
 8004cae:	bf00      	nop
 8004cb0:	200019dc 	.word	0x200019dc

08004cb4 <Post0_Process>:
 8004cb4:	b508      	push	{r3, lr}
 8004cb6:	4b0c      	ldr	r3, [pc, #48]	; (8004ce8 <Post0_Process+0x34>)
 8004cb8:	2000      	movs	r0, #0
 8004cba:	f893 102c 	ldrb.w	r1, [r3, #44]	; 0x2c
 8004cbe:	f000 ff3f 	bl	8005b40 <SetEPRxCount>
 8004cc2:	480a      	ldr	r0, [pc, #40]	; (8004cec <Post0_Process+0x38>)
 8004cc4:	6801      	ldr	r1, [r0, #0]
 8004cc6:	7a08      	ldrb	r0, [r1, #8]
 8004cc8:	2808      	cmp	r0, #8
 8004cca:	d106      	bne.n	8004cda <Post0_Process+0x26>
 8004ccc:	4b08      	ldr	r3, [pc, #32]	; (8004cf0 <Post0_Process+0x3c>)
 8004cce:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8004cd2:	801a      	strh	r2, [r3, #0]
 8004cd4:	4a07      	ldr	r2, [pc, #28]	; (8004cf4 <Post0_Process+0x40>)
 8004cd6:	2110      	movs	r1, #16
 8004cd8:	8011      	strh	r1, [r2, #0]
 8004cda:	f1b0 0c09 	subs.w	ip, r0, #9
 8004cde:	f1dc 0000 	rsbs	r0, ip, #0
 8004ce2:	eb50 000c 	adcs.w	r0, r0, ip
 8004ce6:	bd08      	pop	{r3, pc}
 8004ce8:	20000220 	.word	0x20000220
 8004cec:	200019dc 	.word	0x200019dc
 8004cf0:	200019e2 	.word	0x200019e2
 8004cf4:	200019e4 	.word	0x200019e4

08004cf8 <Out0_Process>:
 8004cf8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8004cfa:	4d34      	ldr	r5, [pc, #208]	; (8004dcc <Out0_Process+0xd4>)
 8004cfc:	682c      	ldr	r4, [r5, #0]
 8004cfe:	7a23      	ldrb	r3, [r4, #8]
 8004d00:	2b02      	cmp	r3, #2
 8004d02:	d007      	beq.n	8004d14 <Out0_Process+0x1c>
 8004d04:	2b04      	cmp	r3, #4
 8004d06:	d005      	beq.n	8004d14 <Out0_Process+0x1c>
 8004d08:	2b03      	cmp	r3, #3
 8004d0a:	d009      	beq.n	8004d20 <Out0_Process+0x28>
 8004d0c:	2b05      	cmp	r3, #5
 8004d0e:	d007      	beq.n	8004d20 <Out0_Process+0x28>
 8004d10:	2b07      	cmp	r3, #7
 8004d12:	d00e      	beq.n	8004d32 <Out0_Process+0x3a>
 8004d14:	2208      	movs	r2, #8
 8004d16:	7222      	strb	r2, [r4, #8]
 8004d18:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8004d1c:	f7ff bfca 	b.w	8004cb4 <Post0_Process>
 8004d20:	69a1      	ldr	r1, [r4, #24]
 8004d22:	8a20      	ldrh	r0, [r4, #16]
 8004d24:	b311      	cbz	r1, 8004d6c <Out0_Process+0x74>
 8004d26:	b958      	cbnz	r0, 8004d40 <Out0_Process+0x48>
 8004d28:	8aa4      	ldrh	r4, [r4, #20]
 8004d2a:	2c00      	cmp	r4, #0
 8004d2c:	d045      	beq.n	8004dba <Out0_Process+0xc2>
 8004d2e:	4a28      	ldr	r2, [pc, #160]	; (8004dd0 <Out0_Process+0xd8>)
 8004d30:	e02e      	b.n	8004d90 <Out0_Process+0x98>
 8004d32:	4828      	ldr	r0, [pc, #160]	; (8004dd4 <Out0_Process+0xdc>)
 8004d34:	6801      	ldr	r1, [r0, #0]
 8004d36:	68ca      	ldr	r2, [r1, #12]
 8004d38:	4790      	blx	r2
 8004d3a:	682c      	ldr	r4, [r5, #0]
 8004d3c:	2208      	movs	r2, #8
 8004d3e:	e7ea      	b.n	8004d16 <Out0_Process+0x1e>
 8004d40:	8aa6      	ldrh	r6, [r4, #20]
 8004d42:	4286      	cmp	r6, r0
 8004d44:	bf28      	it	cs
 8004d46:	4606      	movcs	r6, r0
 8004d48:	4630      	mov	r0, r6
 8004d4a:	4788      	blx	r1
 8004d4c:	8a63      	ldrh	r3, [r4, #18]
 8004d4e:	4607      	mov	r7, r0
 8004d50:	8a20      	ldrh	r0, [r4, #16]
 8004d52:	18f1      	adds	r1, r6, r3
 8004d54:	1b82      	subs	r2, r0, r6
 8004d56:	8222      	strh	r2, [r4, #16]
 8004d58:	8261      	strh	r1, [r4, #18]
 8004d5a:	2000      	movs	r0, #0
 8004d5c:	f000 fed0 	bl	8005b00 <GetEPRxAddr>
 8004d60:	4632      	mov	r2, r6
 8004d62:	4601      	mov	r1, r0
 8004d64:	4638      	mov	r0, r7
 8004d66:	f000 fc39 	bl	80055dc <PMAToUserBufferCopy>
 8004d6a:	8a20      	ldrh	r0, [r4, #16]
 8004d6c:	2800      	cmp	r0, #0
 8004d6e:	d0db      	beq.n	8004d28 <Out0_Process+0x30>
 8004d70:	2000      	movs	r0, #0
 8004d72:	4b19      	ldr	r3, [pc, #100]	; (8004dd8 <Out0_Process+0xe0>)
 8004d74:	4601      	mov	r1, r0
 8004d76:	f44f 5240 	mov.w	r2, #12288	; 0x3000
 8004d7a:	801a      	strh	r2, [r3, #0]
 8004d7c:	f000 fed0 	bl	8005b20 <SetEPTxCount>
 8004d80:	8a23      	ldrh	r3, [r4, #16]
 8004d82:	8aa1      	ldrh	r1, [r4, #20]
 8004d84:	4a12      	ldr	r2, [pc, #72]	; (8004dd0 <Out0_Process+0xd8>)
 8004d86:	2030      	movs	r0, #48	; 0x30
 8004d88:	4299      	cmp	r1, r3
 8004d8a:	8010      	strh	r0, [r2, #0]
 8004d8c:	d915      	bls.n	8004dba <Out0_Process+0xc2>
 8004d8e:	b9c3      	cbnz	r3, 8004dc2 <Out0_Process+0xca>
 8004d90:	682c      	ldr	r4, [r5, #0]
 8004d92:	2106      	movs	r1, #6
 8004d94:	f645 4350 	movw	r3, #23632	; 0x5c50
 8004d98:	7221      	strb	r1, [r4, #8]
 8004d9a:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8004d9e:	6818      	ldr	r0, [r3, #0]
 8004da0:	f243 0302 	movw	r3, #12290	; 0x3002
 8004da4:	b281      	uxth	r1, r0
 8004da6:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8004daa:	18c8      	adds	r0, r1, r3
 8004dac:	0043      	lsls	r3, r0, #1
 8004dae:	2100      	movs	r1, #0
 8004db0:	6019      	str	r1, [r3, #0]
 8004db2:	2030      	movs	r0, #48	; 0x30
 8004db4:	8010      	strh	r0, [r2, #0]
 8004db6:	7a22      	ldrb	r2, [r4, #8]
 8004db8:	e7ad      	b.n	8004d16 <Out0_Process+0x1e>
 8004dba:	682c      	ldr	r4, [r5, #0]
 8004dbc:	2203      	movs	r2, #3
 8004dbe:	7222      	strb	r2, [r4, #8]
 8004dc0:	e7a9      	b.n	8004d16 <Out0_Process+0x1e>
 8004dc2:	682c      	ldr	r4, [r5, #0]
 8004dc4:	2205      	movs	r2, #5
 8004dc6:	7222      	strb	r2, [r4, #8]
 8004dc8:	e7a5      	b.n	8004d16 <Out0_Process+0x1e>
 8004dca:	bf00      	nop
 8004dcc:	200019dc 	.word	0x200019dc
 8004dd0:	200019e4 	.word	0x200019e4
 8004dd4:	200019b4 	.word	0x200019b4
 8004dd8:	200019e2 	.word	0x200019e2

08004ddc <Setup0_Process>:
 8004ddc:	b570      	push	{r4, r5, r6, lr}
 8004dde:	f645 4350 	movw	r3, #23632	; 0x5c50
 8004de2:	4d9f      	ldr	r5, [pc, #636]	; (8005060 <Setup0_Process+0x284>)
 8004de4:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8004de8:	681a      	ldr	r2, [r3, #0]
 8004dea:	682c      	ldr	r4, [r5, #0]
 8004dec:	f243 0004 	movw	r0, #12292	; 0x3004
 8004df0:	b291      	uxth	r1, r2
 8004df2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004df6:	7a22      	ldrb	r2, [r4, #8]
 8004df8:	180e      	adds	r6, r1, r0
 8004dfa:	0073      	lsls	r3, r6, #1
 8004dfc:	2a09      	cmp	r2, #9
 8004dfe:	b082      	sub	sp, #8
 8004e00:	681e      	ldr	r6, [r3, #0]
 8004e02:	d045      	beq.n	8004e90 <Setup0_Process+0xb4>
 8004e04:	b2b0      	uxth	r0, r6
 8004e06:	0041      	lsls	r1, r0, #1
 8004e08:	f101 4680 	add.w	r6, r1, #1073741824	; 0x40000000
 8004e0c:	f506 46c0 	add.w	r6, r6, #24576	; 0x6000
 8004e10:	7832      	ldrb	r2, [r6, #0]
 8004e12:	7022      	strb	r2, [r4, #0]
 8004e14:	7873      	ldrb	r3, [r6, #1]
 8004e16:	7063      	strb	r3, [r4, #1]
 8004e18:	88b0      	ldrh	r0, [r6, #4]
 8004e1a:	f000 fec5 	bl	8005ba8 <ByteSwap>
 8004e1e:	8060      	strh	r0, [r4, #2]
 8004e20:	8930      	ldrh	r0, [r6, #8]
 8004e22:	682c      	ldr	r4, [r5, #0]
 8004e24:	f000 fec0 	bl	8005ba8 <ByteSwap>
 8004e28:	80a0      	strh	r0, [r4, #4]
 8004e2a:	89b0      	ldrh	r0, [r6, #12]
 8004e2c:	682c      	ldr	r4, [r5, #0]
 8004e2e:	2101      	movs	r1, #1
 8004e30:	80e0      	strh	r0, [r4, #6]
 8004e32:	7221      	strb	r1, [r4, #8]
 8004e34:	2800      	cmp	r0, #0
 8004e36:	d030      	beq.n	8004e9a <Setup0_Process+0xbe>
 8004e38:	7861      	ldrb	r1, [r4, #1]
 8004e3a:	2906      	cmp	r1, #6
 8004e3c:	f000 8087 	beq.w	8004f4e <Setup0_Process+0x172>
 8004e40:	2900      	cmp	r1, #0
 8004e42:	d15e      	bne.n	8004f02 <Setup0_Process+0x126>
 8004e44:	8863      	ldrh	r3, [r4, #2]
 8004e46:	2b00      	cmp	r3, #0
 8004e48:	f000 8094 	beq.w	8004f74 <Setup0_Process+0x198>
 8004e4c:	4e85      	ldr	r6, [pc, #532]	; (8005064 <Setup0_Process+0x288>)
 8004e4e:	6833      	ldr	r3, [r6, #0]
 8004e50:	4608      	mov	r0, r1
 8004e52:	6919      	ldr	r1, [r3, #16]
 8004e54:	4788      	blx	r1
 8004e56:	2803      	cmp	r0, #3
 8004e58:	682b      	ldr	r3, [r5, #0]
 8004e5a:	d062      	beq.n	8004f22 <Setup0_Process+0x146>
 8004e5c:	8a1a      	ldrh	r2, [r3, #16]
 8004e5e:	f64f 71ff 	movw	r1, #65535	; 0xffff
 8004e62:	428a      	cmp	r2, r1
 8004e64:	d05d      	beq.n	8004f22 <Setup0_Process+0x146>
 8004e66:	2802      	cmp	r0, #2
 8004e68:	d00c      	beq.n	8004e84 <Setup0_Process+0xa8>
 8004e6a:	b15a      	cbz	r2, 8004e84 <Setup0_Process+0xa8>
 8004e6c:	f993 1000 	ldrsb.w	r1, [r3]
 8004e70:	2900      	cmp	r1, #0
 8004e72:	f2c0 80b5 	blt.w	8004fe0 <Setup0_Process+0x204>
 8004e76:	2203      	movs	r2, #3
 8004e78:	721a      	strb	r2, [r3, #8]
 8004e7a:	4b7b      	ldr	r3, [pc, #492]	; (8005068 <Setup0_Process+0x28c>)
 8004e7c:	f44f 5040 	mov.w	r0, #12288	; 0x3000
 8004e80:	8018      	strh	r0, [r3, #0]
 8004e82:	e001      	b.n	8004e88 <Setup0_Process+0xac>
 8004e84:	2008      	movs	r0, #8
 8004e86:	7218      	strb	r0, [r3, #8]
 8004e88:	f7ff ff14 	bl	8004cb4 <Post0_Process>
 8004e8c:	b002      	add	sp, #8
 8004e8e:	bd70      	pop	{r4, r5, r6, pc}
 8004e90:	88e0      	ldrh	r0, [r4, #6]
 8004e92:	2101      	movs	r1, #1
 8004e94:	7221      	strb	r1, [r4, #8]
 8004e96:	2800      	cmp	r0, #0
 8004e98:	d1ce      	bne.n	8004e38 <Setup0_Process+0x5c>
 8004e9a:	7823      	ldrb	r3, [r4, #0]
 8004e9c:	7866      	ldrb	r6, [r4, #1]
 8004e9e:	f013 027f 	ands.w	r2, r3, #127	; 0x7f
 8004ea2:	d141      	bne.n	8004f28 <Setup0_Process+0x14c>
 8004ea4:	2e09      	cmp	r6, #9
 8004ea6:	f000 80fd 	beq.w	80050a4 <Setup0_Process+0x2c8>
 8004eaa:	2e05      	cmp	r6, #5
 8004eac:	f000 80bf 	beq.w	800502e <Setup0_Process+0x252>
 8004eb0:	2e03      	cmp	r6, #3
 8004eb2:	f000 80e5 	beq.w	8005080 <Setup0_Process+0x2a4>
 8004eb6:	2e01      	cmp	r6, #1
 8004eb8:	d13b      	bne.n	8004f32 <Setup0_Process+0x156>
 8004eba:	78e0      	ldrb	r0, [r4, #3]
 8004ebc:	2801      	cmp	r0, #1
 8004ebe:	d138      	bne.n	8004f32 <Setup0_Process+0x156>
 8004ec0:	88a1      	ldrh	r1, [r4, #4]
 8004ec2:	2900      	cmp	r1, #0
 8004ec4:	d135      	bne.n	8004f32 <Setup0_Process+0x156>
 8004ec6:	7a64      	ldrb	r4, [r4, #9]
 8004ec8:	f004 0320 	and.w	r3, r4, #32
 8004ecc:	b2da      	uxtb	r2, r3
 8004ece:	2a00      	cmp	r2, #0
 8004ed0:	d02f      	beq.n	8004f32 <Setup0_Process+0x156>
 8004ed2:	f7ff fe21 	bl	8004b18 <Standard_ClearFeature>
 8004ed6:	bb60      	cbnz	r0, 8004f32 <Setup0_Process+0x156>
 8004ed8:	682c      	ldr	r4, [r5, #0]
 8004eda:	f645 4050 	movw	r0, #23632	; 0x5c50
 8004ede:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8004ee2:	6801      	ldr	r1, [r0, #0]
 8004ee4:	f243 0302 	movw	r3, #12290	; 0x3002
 8004ee8:	b28a      	uxth	r2, r1
 8004eea:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8004eee:	18d0      	adds	r0, r2, r3
 8004ef0:	0041      	lsls	r1, r0, #1
 8004ef2:	2300      	movs	r3, #0
 8004ef4:	4a5d      	ldr	r2, [pc, #372]	; (800506c <Setup0_Process+0x290>)
 8004ef6:	600b      	str	r3, [r1, #0]
 8004ef8:	2030      	movs	r0, #48	; 0x30
 8004efa:	2106      	movs	r1, #6
 8004efc:	8010      	strh	r0, [r2, #0]
 8004efe:	7221      	strb	r1, [r4, #8]
 8004f00:	e7c2      	b.n	8004e88 <Setup0_Process+0xac>
 8004f02:	2908      	cmp	r1, #8
 8004f04:	d148      	bne.n	8004f98 <Setup0_Process+0x1bc>
 8004f06:	7820      	ldrb	r0, [r4, #0]
 8004f08:	0643      	lsls	r3, r0, #25
 8004f0a:	d19f      	bne.n	8004e4c <Setup0_Process+0x70>
 8004f0c:	4a58      	ldr	r2, [pc, #352]	; (8005070 <Setup0_Process+0x294>)
 8004f0e:	2000      	movs	r0, #0
 8004f10:	61a2      	str	r2, [r4, #24]
 8004f12:	8260      	strh	r0, [r4, #18]
 8004f14:	4790      	blx	r2
 8004f16:	682b      	ldr	r3, [r5, #0]
 8004f18:	f64f 70ff 	movw	r0, #65535	; 0xffff
 8004f1c:	8a1a      	ldrh	r2, [r3, #16]
 8004f1e:	4282      	cmp	r2, r0
 8004f20:	d1a3      	bne.n	8004e6a <Setup0_Process+0x8e>
 8004f22:	2109      	movs	r1, #9
 8004f24:	7219      	strb	r1, [r3, #8]
 8004f26:	e7af      	b.n	8004e88 <Setup0_Process+0xac>
 8004f28:	2a01      	cmp	r2, #1
 8004f2a:	d071      	beq.n	8005010 <Setup0_Process+0x234>
 8004f2c:	2a02      	cmp	r2, #2
 8004f2e:	f000 808d 	beq.w	800504c <Setup0_Process+0x270>
 8004f32:	4c4c      	ldr	r4, [pc, #304]	; (8005064 <Setup0_Process+0x288>)
 8004f34:	4630      	mov	r0, r6
 8004f36:	6823      	ldr	r3, [r4, #0]
 8004f38:	695a      	ldr	r2, [r3, #20]
 8004f3a:	4790      	blx	r2
 8004f3c:	2803      	cmp	r0, #3
 8004f3e:	f000 80ba 	beq.w	80050b6 <Setup0_Process+0x2da>
 8004f42:	682c      	ldr	r4, [r5, #0]
 8004f44:	2800      	cmp	r0, #0
 8004f46:	d0c8      	beq.n	8004eda <Setup0_Process+0xfe>
 8004f48:	2108      	movs	r1, #8
 8004f4a:	7221      	strb	r1, [r4, #8]
 8004f4c:	e79c      	b.n	8004e88 <Setup0_Process+0xac>
 8004f4e:	7826      	ldrb	r6, [r4, #0]
 8004f50:	0673      	lsls	r3, r6, #25
 8004f52:	f47f af7b 	bne.w	8004e4c <Setup0_Process+0x70>
 8004f56:	78a2      	ldrb	r2, [r4, #2]
 8004f58:	4e42      	ldr	r6, [pc, #264]	; (8005064 <Setup0_Process+0x288>)
 8004f5a:	2a01      	cmp	r2, #1
 8004f5c:	f000 80a5 	beq.w	80050aa <Setup0_Process+0x2ce>
 8004f60:	2a02      	cmp	r2, #2
 8004f62:	d05e      	beq.n	8005022 <Setup0_Process+0x246>
 8004f64:	2a03      	cmp	r2, #3
 8004f66:	f47f af72 	bne.w	8004e4e <Setup0_Process+0x72>
 8004f6a:	6830      	ldr	r0, [r6, #0]
 8004f6c:	6a42      	ldr	r2, [r0, #36]	; 0x24
 8004f6e:	2a00      	cmp	r2, #0
 8004f70:	d1cd      	bne.n	8004f0e <Setup0_Process+0x132>
 8004f72:	e76c      	b.n	8004e4e <Setup0_Process+0x72>
 8004f74:	6860      	ldr	r0, [r4, #4]
 8004f76:	f420 427f 	bic.w	r2, r0, #65280	; 0xff00
 8004f7a:	f5b2 3f00 	cmp.w	r2, #131072	; 0x20000
 8004f7e:	f47f af65 	bne.w	8004e4c <Setup0_Process+0x70>
 8004f82:	7823      	ldrb	r3, [r4, #0]
 8004f84:	f013 007f 	ands.w	r0, r3, #127	; 0x7f
 8004f88:	f040 8099 	bne.w	80050be <Setup0_Process+0x2e2>
 8004f8c:	88a3      	ldrh	r3, [r4, #4]
 8004f8e:	2b00      	cmp	r3, #0
 8004f90:	f47f af5c 	bne.w	8004e4c <Setup0_Process+0x70>
 8004f94:	4a37      	ldr	r2, [pc, #220]	; (8005074 <Setup0_Process+0x298>)
 8004f96:	e7ba      	b.n	8004f0e <Setup0_Process+0x132>
 8004f98:	290a      	cmp	r1, #10
 8004f9a:	f47f af57 	bne.w	8004e4c <Setup0_Process+0x70>
 8004f9e:	7826      	ldrb	r6, [r4, #0]
 8004fa0:	f006 027f 	and.w	r2, r6, #127	; 0x7f
 8004fa4:	2a01      	cmp	r2, #1
 8004fa6:	f47f af51 	bne.w	8004e4c <Setup0_Process+0x70>
 8004faa:	7aa3      	ldrb	r3, [r4, #10]
 8004fac:	2b00      	cmp	r3, #0
 8004fae:	f43f af4d 	beq.w	8004e4c <Setup0_Process+0x70>
 8004fb2:	8863      	ldrh	r3, [r4, #2]
 8004fb4:	2b00      	cmp	r3, #0
 8004fb6:	f47f af49 	bne.w	8004e4c <Setup0_Process+0x70>
 8004fba:	6860      	ldr	r0, [r4, #4]
 8004fbc:	4e29      	ldr	r6, [pc, #164]	; (8005064 <Setup0_Process+0x288>)
 8004fbe:	f420 427f 	bic.w	r2, r0, #65280	; 0xff00
 8004fc2:	f5b2 3f80 	cmp.w	r2, #65536	; 0x10000
 8004fc6:	f47f af42 	bne.w	8004e4e <Setup0_Process+0x72>
 8004fca:	6832      	ldr	r2, [r6, #0]
 8004fcc:	4619      	mov	r1, r3
 8004fce:	7960      	ldrb	r0, [r4, #5]
 8004fd0:	6993      	ldr	r3, [r2, #24]
 8004fd2:	4798      	blx	r3
 8004fd4:	2800      	cmp	r0, #0
 8004fd6:	f040 80ad 	bne.w	8005134 <Setup0_Process+0x358>
 8004fda:	682c      	ldr	r4, [r5, #0]
 8004fdc:	4a26      	ldr	r2, [pc, #152]	; (8005078 <Setup0_Process+0x29c>)
 8004fde:	e796      	b.n	8004f0e <Setup0_Process+0x132>
 8004fe0:	88d9      	ldrh	r1, [r3, #6]
 8004fe2:	9101      	str	r1, [sp, #4]
 8004fe4:	9801      	ldr	r0, [sp, #4]
 8004fe6:	4282      	cmp	r2, r0
 8004fe8:	d817      	bhi.n	800501a <Setup0_Process+0x23e>
 8004fea:	428a      	cmp	r2, r1
 8004fec:	491d      	ldr	r1, [pc, #116]	; (8005064 <Setup0_Process+0x288>)
 8004fee:	d208      	bcs.n	8005002 <Setup0_Process+0x226>
 8004ff0:	6808      	ldr	r0, [r1, #0]
 8004ff2:	f890 002c 	ldrb.w	r0, [r0, #44]	; 0x2c
 8004ff6:	4282      	cmp	r2, r0
 8004ff8:	f080 8084 	bcs.w	8005104 <Setup0_Process+0x328>
 8004ffc:	4a1f      	ldr	r2, [pc, #124]	; (800507c <Setup0_Process+0x2a0>)
 8004ffe:	2000      	movs	r0, #0
 8005000:	7010      	strb	r0, [r2, #0]
 8005002:	6809      	ldr	r1, [r1, #0]
 8005004:	f891 202c 	ldrb.w	r2, [r1, #44]	; 0x2c
 8005008:	829a      	strh	r2, [r3, #20]
 800500a:	f7ff fce5 	bl	80049d8 <DataStageIn>
 800500e:	e73b      	b.n	8004e88 <Setup0_Process+0xac>
 8005010:	2e0b      	cmp	r6, #11
 8005012:	d18e      	bne.n	8004f32 <Setup0_Process+0x156>
 8005014:	f7ff fd58 	bl	8004ac8 <Standard_SetInterface>
 8005018:	e75d      	b.n	8004ed6 <Setup0_Process+0xfa>
 800501a:	9801      	ldr	r0, [sp, #4]
 800501c:	4911      	ldr	r1, [pc, #68]	; (8005064 <Setup0_Process+0x288>)
 800501e:	8218      	strh	r0, [r3, #16]
 8005020:	e7ef      	b.n	8005002 <Setup0_Process+0x226>
 8005022:	6833      	ldr	r3, [r6, #0]
 8005024:	6a1a      	ldr	r2, [r3, #32]
 8005026:	2a00      	cmp	r2, #0
 8005028:	f47f af71 	bne.w	8004f0e <Setup0_Process+0x132>
 800502c:	e70f      	b.n	8004e4e <Setup0_Process+0x72>
 800502e:	f994 3003 	ldrsb.w	r3, [r4, #3]
 8005032:	2b00      	cmp	r3, #0
 8005034:	db88      	blt.n	8004f48 <Setup0_Process+0x16c>
 8005036:	78a2      	ldrb	r2, [r4, #2]
 8005038:	2a00      	cmp	r2, #0
 800503a:	d185      	bne.n	8004f48 <Setup0_Process+0x16c>
 800503c:	88a0      	ldrh	r0, [r4, #4]
 800503e:	2800      	cmp	r0, #0
 8005040:	d182      	bne.n	8004f48 <Setup0_Process+0x16c>
 8005042:	7aa1      	ldrb	r1, [r4, #10]
 8005044:	2900      	cmp	r1, #0
 8005046:	f43f af48 	beq.w	8004eda <Setup0_Process+0xfe>
 800504a:	e77d      	b.n	8004f48 <Setup0_Process+0x16c>
 800504c:	2e01      	cmp	r6, #1
 800504e:	f43f af40 	beq.w	8004ed2 <Setup0_Process+0xf6>
 8005052:	2e03      	cmp	r6, #3
 8005054:	f47f af6d 	bne.w	8004f32 <Setup0_Process+0x156>
 8005058:	f7ff fdd2 	bl	8004c00 <Standard_SetEndPointFeature>
 800505c:	e73b      	b.n	8004ed6 <Setup0_Process+0xfa>
 800505e:	bf00      	nop
 8005060:	200019dc 	.word	0x200019dc
 8005064:	200019b4 	.word	0x200019b4
 8005068:	200019e2 	.word	0x200019e2
 800506c:	200019e4 	.word	0x200019e4
 8005070:	080048e9 	.word	0x080048e9
 8005074:	08004939 	.word	0x08004939
 8005078:	08004911 	.word	0x08004911
 800507c:	20000710 	.word	0x20000710
 8005080:	78e0      	ldrb	r0, [r4, #3]
 8005082:	2801      	cmp	r0, #1
 8005084:	f47f af55 	bne.w	8004f32 <Setup0_Process+0x156>
 8005088:	88a1      	ldrh	r1, [r4, #4]
 800508a:	2900      	cmp	r1, #0
 800508c:	f47f af51 	bne.w	8004f32 <Setup0_Process+0x156>
 8005090:	7a63      	ldrb	r3, [r4, #9]
 8005092:	482a      	ldr	r0, [pc, #168]	; (800513c <Setup0_Process+0x360>)
 8005094:	f043 0220 	orr.w	r2, r3, #32
 8005098:	6801      	ldr	r1, [r0, #0]
 800509a:	7262      	strb	r2, [r4, #9]
 800509c:	69cc      	ldr	r4, [r1, #28]
 800509e:	47a0      	blx	r4
 80050a0:	682c      	ldr	r4, [r5, #0]
 80050a2:	e71a      	b.n	8004eda <Setup0_Process+0xfe>
 80050a4:	f7ff fcf2 	bl	8004a8c <Standard_SetConfiguration>
 80050a8:	e715      	b.n	8004ed6 <Setup0_Process+0xfa>
 80050aa:	6832      	ldr	r2, [r6, #0]
 80050ac:	69d2      	ldr	r2, [r2, #28]
 80050ae:	2a00      	cmp	r2, #0
 80050b0:	f47f af2d 	bne.w	8004f0e <Setup0_Process+0x132>
 80050b4:	e6cb      	b.n	8004e4e <Setup0_Process+0x72>
 80050b6:	682c      	ldr	r4, [r5, #0]
 80050b8:	2109      	movs	r1, #9
 80050ba:	7221      	strb	r1, [r4, #8]
 80050bc:	e6e4      	b.n	8004e88 <Setup0_Process+0xac>
 80050be:	2801      	cmp	r0, #1
 80050c0:	d02b      	beq.n	800511a <Setup0_Process+0x33e>
 80050c2:	2802      	cmp	r0, #2
 80050c4:	f47f aec2 	bne.w	8004e4c <Setup0_Process+0x70>
 80050c8:	7963      	ldrb	r3, [r4, #5]
 80050ca:	f003 020f 	and.w	r2, r3, #15
 80050ce:	0096      	lsls	r6, r2, #2
 80050d0:	f106 4080 	add.w	r0, r6, #1073741824	; 0x40000000
 80050d4:	f500 40b8 	add.w	r0, r0, #23552	; 0x5c00
 80050d8:	061e      	lsls	r6, r3, #24
 80050da:	bf56      	itet	pl
 80050dc:	6800      	ldrpl	r0, [r0, #0]
 80050de:	6806      	ldrmi	r6, [r0, #0]
 80050e0:	f400 5640 	andpl.w	r6, r0, #12288	; 0x3000
 80050e4:	4816      	ldr	r0, [pc, #88]	; (8005140 <Setup0_Process+0x364>)
 80050e6:	bf48      	it	mi
 80050e8:	f006 0630 	andmi.w	r6, r6, #48	; 0x30
 80050ec:	7800      	ldrb	r0, [r0, #0]
 80050ee:	4282      	cmp	r2, r0
 80050f0:	f4bf aeac 	bcs.w	8004e4c <Setup0_Process+0x70>
 80050f4:	f013 0f70 	tst.w	r3, #112	; 0x70
 80050f8:	f47f aea8 	bne.w	8004e4c <Setup0_Process+0x70>
 80050fc:	2e00      	cmp	r6, #0
 80050fe:	f47f af49 	bne.w	8004f94 <Setup0_Process+0x1b8>
 8005102:	e6a3      	b.n	8004e4c <Setup0_Process+0x70>
 8005104:	fb92 f4f0 	sdiv	r4, r2, r0
 8005108:	fb00 2214 	mls	r2, r0, r4, r2
 800510c:	2a00      	cmp	r2, #0
 800510e:	f47f af78 	bne.w	8005002 <Setup0_Process+0x226>
 8005112:	4a0c      	ldr	r2, [pc, #48]	; (8005144 <Setup0_Process+0x368>)
 8005114:	2001      	movs	r0, #1
 8005116:	7010      	strb	r0, [r2, #0]
 8005118:	e773      	b.n	8005002 <Setup0_Process+0x226>
 800511a:	4e0b      	ldr	r6, [pc, #44]	; (8005148 <Setup0_Process+0x36c>)
 800511c:	7960      	ldrb	r0, [r4, #5]
 800511e:	6833      	ldr	r3, [r6, #0]
 8005120:	699a      	ldr	r2, [r3, #24]
 8005122:	4790      	blx	r2
 8005124:	b930      	cbnz	r0, 8005134 <Setup0_Process+0x358>
 8005126:	682c      	ldr	r4, [r5, #0]
 8005128:	7aa0      	ldrb	r0, [r4, #10]
 800512a:	2800      	cmp	r0, #0
 800512c:	f47f af32 	bne.w	8004f94 <Setup0_Process+0x1b8>
 8005130:	7861      	ldrb	r1, [r4, #1]
 8005132:	e68c      	b.n	8004e4e <Setup0_Process+0x72>
 8005134:	6829      	ldr	r1, [r5, #0]
 8005136:	7849      	ldrb	r1, [r1, #1]
 8005138:	e689      	b.n	8004e4e <Setup0_Process+0x72>
 800513a:	bf00      	nop
 800513c:	200019d8 	.word	0x200019d8
 8005140:	200002ac 	.word	0x200002ac
 8005144:	20000710 	.word	0x20000710
 8005148:	200019b4 	.word	0x200019b4

0800514c <SetDeviceAddress>:
 800514c:	b4f0      	push	{r4, r5, r6, r7}
 800514e:	4b28      	ldr	r3, [pc, #160]	; (80051f0 <SetDeviceAddress+0xa4>)
 8005150:	781e      	ldrb	r6, [r3, #0]
 8005152:	2e00      	cmp	r6, #0
 8005154:	d043      	beq.n	80051de <SetDeviceAddress+0x92>
 8005156:	f44f 42b8 	mov.w	r2, #23552	; 0x5c00
 800515a:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800515e:	6814      	ldr	r4, [r2, #0]
 8005160:	f640 710f 	movw	r1, #3855	; 0xf0f
 8005164:	4021      	ands	r1, r4
 8005166:	f441 4300 	orr.w	r3, r1, #32768	; 0x8000
 800516a:	f043 0180 	orr.w	r1, r3, #128	; 0x80
 800516e:	6011      	str	r1, [r2, #0]
 8005170:	2201      	movs	r2, #1
 8005172:	1e74      	subs	r4, r6, #1
 8005174:	f645 4304 	movw	r3, #23556	; 0x5c04
 8005178:	4296      	cmp	r6, r2
 800517a:	f004 0401 	and.w	r4, r4, #1
 800517e:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8005182:	d92c      	bls.n	80051de <SetDeviceAddress+0x92>
 8005184:	b17c      	cbz	r4, 80051a6 <SetDeviceAddress+0x5a>
 8005186:	6819      	ldr	r1, [r3, #0]
 8005188:	f640 720f 	movw	r2, #3855	; 0xf0f
 800518c:	400a      	ands	r2, r1
 800518e:	f442 4100 	orr.w	r1, r2, #32768	; 0x8000
 8005192:	f041 0281 	orr.w	r2, r1, #129	; 0x81
 8005196:	601a      	str	r2, [r3, #0]
 8005198:	2202      	movs	r2, #2
 800519a:	f645 4308 	movw	r3, #23560	; 0x5c08
 800519e:	4296      	cmp	r6, r2
 80051a0:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80051a4:	d91b      	bls.n	80051de <SetDeviceAddress+0x92>
 80051a6:	681f      	ldr	r7, [r3, #0]
 80051a8:	f442 4500 	orr.w	r5, r2, #32768	; 0x8000
 80051ac:	f640 740f 	movw	r4, #3855	; 0xf0f
 80051b0:	f045 0580 	orr.w	r5, r5, #128	; 0x80
 80051b4:	403c      	ands	r4, r7
 80051b6:	ea45 0704 	orr.w	r7, r5, r4
 80051ba:	4619      	mov	r1, r3
 80051bc:	f841 7b04 	str.w	r7, [r1], #4
 80051c0:	685f      	ldr	r7, [r3, #4]
 80051c2:	3201      	adds	r2, #1
 80051c4:	f442 4500 	orr.w	r5, r2, #32768	; 0x8000
 80051c8:	f640 740f 	movw	r4, #3855	; 0xf0f
 80051cc:	f045 0580 	orr.w	r5, r5, #128	; 0x80
 80051d0:	403c      	ands	r4, r7
 80051d2:	432c      	orrs	r4, r5
 80051d4:	3201      	adds	r2, #1
 80051d6:	605c      	str	r4, [r3, #4]
 80051d8:	1d0b      	adds	r3, r1, #4
 80051da:	4296      	cmp	r6, r2
 80051dc:	d8e3      	bhi.n	80051a6 <SetDeviceAddress+0x5a>
 80051de:	f645 434c 	movw	r3, #23628	; 0x5c4c
 80051e2:	f040 0080 	orr.w	r0, r0, #128	; 0x80
 80051e6:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80051ea:	6018      	str	r0, [r3, #0]
 80051ec:	bcf0      	pop	{r4, r5, r6, r7}
 80051ee:	4770      	bx	lr
 80051f0:	200002ac 	.word	0x200002ac

080051f4 <In0_Process>:
 80051f4:	b510      	push	{r4, lr}
 80051f6:	4c14      	ldr	r4, [pc, #80]	; (8005248 <In0_Process+0x54>)
 80051f8:	6823      	ldr	r3, [r4, #0]
 80051fa:	7a1a      	ldrb	r2, [r3, #8]
 80051fc:	2a02      	cmp	r2, #2
 80051fe:	d013      	beq.n	8005228 <In0_Process+0x34>
 8005200:	2a04      	cmp	r2, #4
 8005202:	d011      	beq.n	8005228 <In0_Process+0x34>
 8005204:	2a06      	cmp	r2, #6
 8005206:	d005      	beq.n	8005214 <In0_Process+0x20>
 8005208:	2008      	movs	r0, #8
 800520a:	7218      	strb	r0, [r3, #8]
 800520c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005210:	f7ff bd50 	b.w	8004cb4 <Post0_Process>
 8005214:	7859      	ldrb	r1, [r3, #1]
 8005216:	2905      	cmp	r1, #5
 8005218:	d00b      	beq.n	8005232 <In0_Process+0x3e>
 800521a:	4a0c      	ldr	r2, [pc, #48]	; (800524c <In0_Process+0x58>)
 800521c:	6813      	ldr	r3, [r2, #0]
 800521e:	6898      	ldr	r0, [r3, #8]
 8005220:	4780      	blx	r0
 8005222:	6823      	ldr	r3, [r4, #0]
 8005224:	2008      	movs	r0, #8
 8005226:	e7f0      	b.n	800520a <In0_Process+0x16>
 8005228:	f7ff fbd6 	bl	80049d8 <DataStageIn>
 800522c:	6823      	ldr	r3, [r4, #0]
 800522e:	7a18      	ldrb	r0, [r3, #8]
 8005230:	e7eb      	b.n	800520a <In0_Process+0x16>
 8005232:	781a      	ldrb	r2, [r3, #0]
 8005234:	0652      	lsls	r2, r2, #25
 8005236:	d1f0      	bne.n	800521a <In0_Process+0x26>
 8005238:	78d8      	ldrb	r0, [r3, #3]
 800523a:	f7ff ff87 	bl	800514c <SetDeviceAddress>
 800523e:	4b04      	ldr	r3, [pc, #16]	; (8005250 <In0_Process+0x5c>)
 8005240:	6818      	ldr	r0, [r3, #0]
 8005242:	6a01      	ldr	r1, [r0, #32]
 8005244:	4788      	blx	r1
 8005246:	e7e8      	b.n	800521a <In0_Process+0x26>
 8005248:	200019dc 	.word	0x200019dc
 800524c:	200019b4 	.word	0x200019b4
 8005250:	200019d8 	.word	0x200019d8

08005254 <NOP_Process>:
 8005254:	4770      	bx	lr
 8005256:	bf00      	nop

08005258 <print2usb>:
 8005258:	b5f0      	push	{r4, r5, r6, r7, lr}
 800525a:	4d1b      	ldr	r5, [pc, #108]	; (80052c8 <print2usb+0x70>)
 800525c:	b091      	sub	sp, #68	; 0x44
 800525e:	2240      	movs	r2, #64	; 0x40
 8005260:	4604      	mov	r4, r0
 8005262:	2100      	movs	r1, #0
 8005264:	4668      	mov	r0, sp
 8005266:	f001 f93f 	bl	80064e8 <rt_memset>
 800526a:	6828      	ldr	r0, [r5, #0]
 800526c:	f04f 31ff 	mov.w	r1, #4294967295
 8005270:	f000 fed6 	bl	8006020 <rt_sem_take>
 8005274:	7822      	ldrb	r2, [r4, #0]
 8005276:	b32a      	cbz	r2, 80052c4 <print2usb+0x6c>
 8005278:	f10d 0301 	add.w	r3, sp, #1
 800527c:	4620      	mov	r0, r4
 800527e:	af10      	add	r7, sp, #64	; 0x40
 8005280:	42bb      	cmp	r3, r7
 8005282:	f803 2c01 	strb.w	r2, [r3, #-1]
 8005286:	d011      	beq.n	80052ac <print2usb+0x54>
 8005288:	4602      	mov	r2, r0
 800528a:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 800528e:	1c5c      	adds	r4, r3, #1
 8005290:	b161      	cbz	r1, 80052ac <print2usb+0x54>
 8005292:	f812 6f01 	ldrb.w	r6, [r2, #1]!
 8005296:	f804 1c01 	strb.w	r1, [r4, #-1]
 800529a:	3401      	adds	r4, #1
 800529c:	b136      	cbz	r6, 80052ac <print2usb+0x54>
 800529e:	7852      	ldrb	r2, [r2, #1]
 80052a0:	f804 6c01 	strb.w	r6, [r4, #-1]
 80052a4:	3003      	adds	r0, #3
 80052a6:	3303      	adds	r3, #3
 80052a8:	2a00      	cmp	r2, #0
 80052aa:	d1e9      	bne.n	8005280 <print2usb+0x28>
 80052ac:	4668      	mov	r0, sp
 80052ae:	f44f 7194 	mov.w	r1, #296	; 0x128
 80052b2:	2240      	movs	r2, #64	; 0x40
 80052b4:	f000 f956 	bl	8005564 <UserToPMABufferCopy>
 80052b8:	2002      	movs	r0, #2
 80052ba:	f000 fb93 	bl	80059e4 <SetEPTxValid>
 80052be:	6828      	ldr	r0, [r5, #0]
 80052c0:	f000 ff7e 	bl	80061c0 <rt_sem_release>
 80052c4:	b011      	add	sp, #68	; 0x44
 80052c6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80052c8:	20000714 	.word	0x20000714

080052cc <EP1_OUT_Callback>:
 80052cc:	b500      	push	{lr}
 80052ce:	b091      	sub	sp, #68	; 0x44
 80052d0:	2240      	movs	r2, #64	; 0x40
 80052d2:	2100      	movs	r1, #0
 80052d4:	4668      	mov	r0, sp
 80052d6:	f001 f907 	bl	80064e8 <rt_memset>
 80052da:	4669      	mov	r1, sp
 80052dc:	2001      	movs	r0, #1
 80052de:	f000 fc7f 	bl	8005be0 <USB_SIL_Read>
 80052e2:	2001      	movs	r0, #1
 80052e4:	f44f 5140 	mov.w	r1, #12288	; 0x3000
 80052e8:	f000 fb5c 	bl	80059a4 <SetEPRxStatus>
 80052ec:	f241 1310 	movw	r3, #4368	; 0x1110
 80052f0:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80052f4:	f8d3 2420 	ldr.w	r2, [r3, #1056]	; 0x420
 80052f8:	4668      	mov	r0, sp
 80052fa:	2101      	movs	r1, #1
 80052fc:	4790      	blx	r2
 80052fe:	b011      	add	sp, #68	; 0x44
 8005300:	bd00      	pop	{pc}
 8005302:	bf00      	nop

08005304 <EP2_IN_Callback>:
 8005304:	f240 13b0 	movw	r3, #432	; 0x1b0
 8005308:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800530c:	2201      	movs	r2, #1
 800530e:	701a      	strb	r2, [r3, #0]
 8005310:	4770      	bx	lr
 8005312:	bf00      	nop

08005314 <USB_Init>:
 8005314:	b510      	push	{r4, lr}
 8005316:	f641 12bc 	movw	r2, #6588	; 0x19bc
 800531a:	f641 14dc 	movw	r4, #6620	; 0x19dc
 800531e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8005322:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8005326:	6022      	str	r2, [r4, #0]
 8005328:	2402      	movs	r4, #2
 800532a:	7214      	strb	r4, [r2, #8]
 800532c:	f641 10b4 	movw	r0, #6580	; 0x19b4
 8005330:	f240 2320 	movw	r3, #544	; 0x220
 8005334:	f641 11d8 	movw	r1, #6616	; 0x19d8
 8005338:	f240 2250 	movw	r2, #592	; 0x250
 800533c:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8005340:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8005344:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8005348:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800534c:	6003      	str	r3, [r0, #0]
 800534e:	600a      	str	r2, [r1, #0]
 8005350:	6818      	ldr	r0, [r3, #0]
 8005352:	4780      	blx	r0
 8005354:	bd10      	pop	{r4, pc}
 8005356:	bf00      	nop

08005358 <CTR_LP>:
 8005358:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800535c:	f8df a1a4 	ldr.w	sl, [pc, #420]	; 8005504 <CTR_LP+0x1ac>
 8005360:	b083      	sub	sp, #12
 8005362:	f645 4b44 	movw	fp, #23620	; 0x5c44
 8005366:	2300      	movs	r3, #0
 8005368:	f8df 919c 	ldr.w	r9, [pc, #412]	; 8005508 <CTR_LP+0x1b0>
 800536c:	4d63      	ldr	r5, [pc, #396]	; (80054fc <CTR_LP+0x1a4>)
 800536e:	f8ad 3006 	strh.w	r3, [sp, #6]
 8005372:	f2c4 0b00 	movt	fp, #16384	; 0x4000
 8005376:	46d0      	mov	r8, sl
 8005378:	f8db 0000 	ldr.w	r0, [fp]
 800537c:	f44f 44b8 	mov.w	r4, #23552	; 0x5c00
 8005380:	b282      	uxth	r2, r0
 8005382:	0403      	lsls	r3, r0, #16
 8005384:	f8aa 2000 	strh.w	r2, [sl]
 8005388:	f140 80ac 	bpl.w	80054e4 <CTR_LP+0x18c>
 800538c:	f8b8 3000 	ldrh.w	r3, [r8]
 8005390:	f2c4 0400 	movt	r4, #16384	; 0x4000
 8005394:	f003 020f 	and.w	r2, r3, #15
 8005398:	0090      	lsls	r0, r2, #2
 800539a:	f100 4080 	add.w	r0, r0, #1073741824	; 0x40000000
 800539e:	4e58      	ldr	r6, [pc, #352]	; (8005500 <CTR_LP+0x1a8>)
 80053a0:	f64b 71bf 	movw	r1, #49087	; 0xbfbf
 80053a4:	4f55      	ldr	r7, [pc, #340]	; (80054fc <CTR_LP+0x1a4>)
 80053a6:	4613      	mov	r3, r2
 80053a8:	f500 40b8 	add.w	r0, r0, #23552	; 0x5c00
 80053ac:	f889 2000 	strb.w	r2, [r9]
 80053b0:	2a00      	cmp	r2, #0
 80053b2:	d134      	bne.n	800541e <CTR_LP+0xc6>
 80053b4:	6822      	ldr	r2, [r4, #0]
 80053b6:	b290      	uxth	r0, r2
 80053b8:	8028      	strh	r0, [r5, #0]
 80053ba:	882b      	ldrh	r3, [r5, #0]
 80053bc:	f003 0230 	and.w	r2, r3, #48	; 0x30
 80053c0:	8032      	strh	r2, [r6, #0]
 80053c2:	8828      	ldrh	r0, [r5, #0]
 80053c4:	f400 5340 	and.w	r3, r0, #12288	; 0x3000
 80053c8:	802b      	strh	r3, [r5, #0]
 80053ca:	6822      	ldr	r2, [r4, #0]
 80053cc:	4011      	ands	r1, r2
 80053ce:	f481 5100 	eor.w	r1, r1, #8192	; 0x2000
 80053d2:	f081 0020 	eor.w	r0, r1, #32
 80053d6:	f440 4300 	orr.w	r3, r0, #32768	; 0x8000
 80053da:	f043 0280 	orr.w	r2, r3, #128	; 0x80
 80053de:	6022      	str	r2, [r4, #0]
 80053e0:	f8b8 1000 	ldrh.w	r1, [r8]
 80053e4:	f001 0010 	and.w	r0, r1, #16
 80053e8:	b283      	uxth	r3, r0
 80053ea:	2b00      	cmp	r3, #0
 80053ec:	d04a      	beq.n	8005484 <CTR_LP+0x12c>
 80053ee:	6822      	ldr	r2, [r4, #0]
 80053f0:	b291      	uxth	r1, r2
 80053f2:	f8ad 1006 	strh.w	r1, [sp, #6]
 80053f6:	f8bd 0006 	ldrh.w	r0, [sp, #6]
 80053fa:	f400 6300 	and.w	r3, r0, #2048	; 0x800
 80053fe:	b29a      	uxth	r2, r3
 8005400:	2a00      	cmp	r2, #0
 8005402:	d172      	bne.n	80054ea <CTR_LP+0x192>
 8005404:	f8bd 1006 	ldrh.w	r1, [sp, #6]
 8005408:	b208      	sxth	r0, r1
 800540a:	2800      	cmp	r0, #0
 800540c:	dab4      	bge.n	8005378 <CTR_LP+0x20>
 800540e:	6822      	ldr	r2, [r4, #0]
 8005410:	f640 738f 	movw	r3, #3983	; 0xf8f
 8005414:	4013      	ands	r3, r2
 8005416:	6023      	str	r3, [r4, #0]
 8005418:	f7ff fc6e 	bl	8004cf8 <Out0_Process>
 800541c:	e039      	b.n	8005492 <CTR_LP+0x13a>
 800541e:	6804      	ldr	r4, [r0, #0]
 8005420:	b2a1      	uxth	r1, r4
 8005422:	f8ad 1006 	strh.w	r1, [sp, #6]
 8005426:	f8bd 2006 	ldrh.w	r2, [sp, #6]
 800542a:	b214      	sxth	r4, r2
 800542c:	2c00      	cmp	r4, #0
 800542e:	db1b      	blt.n	8005468 <CTR_LP+0x110>
 8005430:	f8bd 1006 	ldrh.w	r1, [sp, #6]
 8005434:	f001 0280 	and.w	r2, r1, #128	; 0x80
 8005438:	b293      	uxth	r3, r2
 800543a:	2b00      	cmp	r3, #0
 800543c:	d09c      	beq.n	8005378 <CTR_LP+0x20>
 800543e:	f899 4000 	ldrb.w	r4, [r9]
 8005442:	f648 730f 	movw	r3, #36623	; 0x8f0f
 8005446:	00a0      	lsls	r0, r4, #2
 8005448:	f100 4180 	add.w	r1, r0, #1073741824	; 0x40000000
 800544c:	f501 42b8 	add.w	r2, r1, #23552	; 0x5c00
 8005450:	6810      	ldr	r0, [r2, #0]
 8005452:	3c01      	subs	r4, #1
 8005454:	4003      	ands	r3, r0
 8005456:	6013      	str	r3, [r2, #0]
 8005458:	f240 13e0 	movw	r3, #480	; 0x1e0
 800545c:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8005460:	f853 1024 	ldr.w	r1, [r3, r4, lsl #2]
 8005464:	4788      	blx	r1
 8005466:	e787      	b.n	8005378 <CTR_LP+0x20>
 8005468:	6801      	ldr	r1, [r0, #0]
 800546a:	f640 728f 	movw	r2, #3983	; 0xf8f
 800546e:	400a      	ands	r2, r1
 8005470:	6002      	str	r2, [r0, #0]
 8005472:	f240 10fc 	movw	r0, #508	; 0x1fc
 8005476:	3b01      	subs	r3, #1
 8005478:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800547c:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
 8005480:	47a0      	blx	r4
 8005482:	e7d5      	b.n	8005430 <CTR_LP+0xd8>
 8005484:	6822      	ldr	r2, [r4, #0]
 8005486:	f648 730f 	movw	r3, #36623	; 0x8f0f
 800548a:	4013      	ands	r3, r2
 800548c:	6023      	str	r3, [r4, #0]
 800548e:	f7ff feb1 	bl	80051f4 <In0_Process>
 8005492:	6821      	ldr	r1, [r4, #0]
 8005494:	8838      	ldrh	r0, [r7, #0]
 8005496:	f64b 73bf 	movw	r3, #49087	; 0xbfbf
 800549a:	f400 5280 	and.w	r2, r0, #4096	; 0x1000
 800549e:	b290      	uxth	r0, r2
 80054a0:	400b      	ands	r3, r1
 80054a2:	b108      	cbz	r0, 80054a8 <CTR_LP+0x150>
 80054a4:	f483 5380 	eor.w	r3, r3, #4096	; 0x1000
 80054a8:	8839      	ldrh	r1, [r7, #0]
 80054aa:	f401 5200 	and.w	r2, r1, #8192	; 0x2000
 80054ae:	b290      	uxth	r0, r2
 80054b0:	b108      	cbz	r0, 80054b6 <CTR_LP+0x15e>
 80054b2:	f483 5300 	eor.w	r3, r3, #8192	; 0x2000
 80054b6:	8831      	ldrh	r1, [r6, #0]
 80054b8:	f001 0210 	and.w	r2, r1, #16
 80054bc:	b290      	uxth	r0, r2
 80054be:	b108      	cbz	r0, 80054c4 <CTR_LP+0x16c>
 80054c0:	f083 0310 	eor.w	r3, r3, #16
 80054c4:	8831      	ldrh	r1, [r6, #0]
 80054c6:	f001 0220 	and.w	r2, r1, #32
 80054ca:	b290      	uxth	r0, r2
 80054cc:	b108      	cbz	r0, 80054d2 <CTR_LP+0x17a>
 80054ce:	f083 0320 	eor.w	r3, r3, #32
 80054d2:	f443 4100 	orr.w	r1, r3, #32768	; 0x8000
 80054d6:	f44f 42b8 	mov.w	r2, #23552	; 0x5c00
 80054da:	f041 0080 	orr.w	r0, r1, #128	; 0x80
 80054de:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80054e2:	6010      	str	r0, [r2, #0]
 80054e4:	b003      	add	sp, #12
 80054e6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80054ea:	6821      	ldr	r1, [r4, #0]
 80054ec:	f640 708f 	movw	r0, #3983	; 0xf8f
 80054f0:	4008      	ands	r0, r1
 80054f2:	6020      	str	r0, [r4, #0]
 80054f4:	f7ff fc72 	bl	8004ddc <Setup0_Process>
 80054f8:	e7cb      	b.n	8005492 <CTR_LP+0x13a>
 80054fa:	bf00      	nop
 80054fc:	200019e2 	.word	0x200019e2
 8005500:	200019e4 	.word	0x200019e4
 8005504:	200019e6 	.word	0x200019e6
 8005508:	200019b8 	.word	0x200019b8

0800550c <USB_Istr>:
 800550c:	b538      	push	{r3, r4, r5, lr}
 800550e:	f645 4344 	movw	r3, #23620	; 0x5c44
 8005512:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8005516:	6818      	ldr	r0, [r3, #0]
 8005518:	4c0f      	ldr	r4, [pc, #60]	; (8005558 <USB_Istr+0x4c>)
 800551a:	b281      	uxth	r1, r0
 800551c:	4d0f      	ldr	r5, [pc, #60]	; (800555c <USB_Istr+0x50>)
 800551e:	8021      	strh	r1, [r4, #0]
 8005520:	8822      	ldrh	r2, [r4, #0]
 8005522:	882b      	ldrh	r3, [r5, #0]
 8005524:	401a      	ands	r2, r3
 8005526:	f402 4000 	and.w	r0, r2, #32768	; 0x8000
 800552a:	b281      	uxth	r1, r0
 800552c:	b979      	cbnz	r1, 800554e <USB_Istr+0x42>
 800552e:	8822      	ldrh	r2, [r4, #0]
 8005530:	f402 6080 	and.w	r0, r2, #1024	; 0x400
 8005534:	4203      	tst	r3, r0
 8005536:	d009      	beq.n	800554c <USB_Istr+0x40>
 8005538:	f645 4144 	movw	r1, #23620	; 0x5c44
 800553c:	4a08      	ldr	r2, [pc, #32]	; (8005560 <USB_Istr+0x54>)
 800553e:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8005542:	f64f 33ff 	movw	r3, #64511	; 0xfbff
 8005546:	600b      	str	r3, [r1, #0]
 8005548:	6850      	ldr	r0, [r2, #4]
 800554a:	4780      	blx	r0
 800554c:	bd38      	pop	{r3, r4, r5, pc}
 800554e:	f7ff ff03 	bl	8005358 <CTR_LP>
 8005552:	882b      	ldrh	r3, [r5, #0]
 8005554:	e7eb      	b.n	800552e <USB_Istr+0x22>
 8005556:	bf00      	nop
 8005558:	200019e6 	.word	0x200019e6
 800555c:	200019e0 	.word	0x200019e0
 8005560:	20000220 	.word	0x20000220

08005564 <UserToPMABufferCopy>:
 8005564:	f101 5100 	add.w	r1, r1, #536870912	; 0x20000000
 8005568:	f501 5140 	add.w	r1, r1, #12288	; 0x3000
 800556c:	1c53      	adds	r3, r2, #1
 800556e:	004a      	lsls	r2, r1, #1
 8005570:	1059      	asrs	r1, r3, #1
 8005572:	b430      	push	{r4, r5}
 8005574:	d02f      	beq.n	80055d6 <UserToPMABufferCopy+0x72>
 8005576:	7845      	ldrb	r5, [r0, #1]
 8005578:	3002      	adds	r0, #2
 800557a:	f810 4c02 	ldrb.w	r4, [r0, #-2]
 800557e:	3901      	subs	r1, #1
 8005580:	ea44 2305 	orr.w	r3, r4, r5, lsl #8
 8005584:	f822 3b04 	strh.w	r3, [r2], #4
 8005588:	460b      	mov	r3, r1
 800558a:	3204      	adds	r2, #4
 800558c:	f001 0101 	and.w	r1, r1, #1
 8005590:	3002      	adds	r0, #2
 8005592:	b303      	cbz	r3, 80055d6 <UserToPMABufferCopy+0x72>
 8005594:	b159      	cbz	r1, 80055ae <UserToPMABufferCopy+0x4a>
 8005596:	f810 4c01 	ldrb.w	r4, [r0, #-1]
 800559a:	f810 1c02 	ldrb.w	r1, [r0, #-2]
 800559e:	3002      	adds	r0, #2
 80055a0:	ea41 2104 	orr.w	r1, r1, r4, lsl #8
 80055a4:	f822 1c04 	strh.w	r1, [r2, #-4]
 80055a8:	3204      	adds	r2, #4
 80055aa:	3b01      	subs	r3, #1
 80055ac:	d013      	beq.n	80055d6 <UserToPMABufferCopy+0x72>
 80055ae:	f810 1c02 	ldrb.w	r1, [r0, #-2]
 80055b2:	f810 4c01 	ldrb.w	r4, [r0, #-1]
 80055b6:	ea41 2404 	orr.w	r4, r1, r4, lsl #8
 80055ba:	f822 4c04 	strh.w	r4, [r2, #-4]
 80055be:	7844      	ldrb	r4, [r0, #1]
 80055c0:	3002      	adds	r0, #2
 80055c2:	f810 1c02 	ldrb.w	r1, [r0, #-2]
 80055c6:	3002      	adds	r0, #2
 80055c8:	ea41 2104 	orr.w	r1, r1, r4, lsl #8
 80055cc:	f822 1b04 	strh.w	r1, [r2], #4
 80055d0:	3204      	adds	r2, #4
 80055d2:	3b02      	subs	r3, #2
 80055d4:	d1eb      	bne.n	80055ae <UserToPMABufferCopy+0x4a>
 80055d6:	bc30      	pop	{r4, r5}
 80055d8:	4770      	bx	lr
 80055da:	bf00      	nop

080055dc <PMAToUserBufferCopy>:
 80055dc:	f101 5100 	add.w	r1, r1, #536870912	; 0x20000000
 80055e0:	f501 5340 	add.w	r3, r1, #12288	; 0x3000
 80055e4:	3201      	adds	r2, #1
 80055e6:	0059      	lsls	r1, r3, #1
 80055e8:	1052      	asrs	r2, r2, #1
 80055ea:	b430      	push	{r4, r5}
 80055ec:	d01c      	beq.n	8005628 <PMAToUserBufferCopy+0x4c>
 80055ee:	680b      	ldr	r3, [r1, #0]
 80055f0:	3a01      	subs	r2, #1
 80055f2:	f820 3b02 	strh.w	r3, [r0], #2
 80055f6:	4613      	mov	r3, r2
 80055f8:	3002      	adds	r0, #2
 80055fa:	f002 0201 	and.w	r2, r2, #1
 80055fe:	b19b      	cbz	r3, 8005628 <PMAToUserBufferCopy+0x4c>
 8005600:	b132      	cbz	r2, 8005610 <PMAToUserBufferCopy+0x34>
 8005602:	f851 2f04 	ldr.w	r2, [r1, #4]!
 8005606:	f820 2c02 	strh.w	r2, [r0, #-2]
 800560a:	3002      	adds	r0, #2
 800560c:	3b01      	subs	r3, #1
 800560e:	d00b      	beq.n	8005628 <PMAToUserBufferCopy+0x4c>
 8005610:	1d0c      	adds	r4, r1, #4
 8005612:	684d      	ldr	r5, [r1, #4]
 8005614:	6889      	ldr	r1, [r1, #8]
 8005616:	4602      	mov	r2, r0
 8005618:	f820 5c02 	strh.w	r5, [r0, #-2]
 800561c:	f822 1b02 	strh.w	r1, [r2], #2
 8005620:	1c90      	adds	r0, r2, #2
 8005622:	1d21      	adds	r1, r4, #4
 8005624:	3b02      	subs	r3, #2
 8005626:	d1f3      	bne.n	8005610 <PMAToUserBufferCopy+0x34>
 8005628:	bc30      	pop	{r4, r5}
 800562a:	4770      	bx	lr

0800562c <CustomHID_SetDeviceAddress>:
 800562c:	f240 731c 	movw	r3, #1820	; 0x71c
 8005630:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8005634:	2204      	movs	r2, #4
 8005636:	601a      	str	r2, [r3, #0]
 8005638:	4770      	bx	lr
 800563a:	bf00      	nop

0800563c <CustomHID_Status_Out>:
 800563c:	4770      	bx	lr
 800563e:	bf00      	nop

08005640 <CustomHID_Data_Setup>:
 8005640:	b510      	push	{r4, lr}
 8005642:	4b14      	ldr	r3, [pc, #80]	; (8005694 <CustomHID_Data_Setup+0x54>)
 8005644:	681b      	ldr	r3, [r3, #0]
 8005646:	889a      	ldrh	r2, [r3, #4]
 8005648:	b10a      	cbz	r2, 800564e <CustomHID_Data_Setup+0xe>
 800564a:	2002      	movs	r0, #2
 800564c:	bd10      	pop	{r4, pc}
 800564e:	7819      	ldrb	r1, [r3, #0]
 8005650:	2806      	cmp	r0, #6
 8005652:	f001 027f 	and.w	r2, r1, #127	; 0x7f
 8005656:	d009      	beq.n	800566c <CustomHID_Data_Setup+0x2c>
 8005658:	2a21      	cmp	r2, #33	; 0x21
 800565a:	d1f6      	bne.n	800564a <CustomHID_Data_Setup+0xa>
 800565c:	2803      	cmp	r0, #3
 800565e:	d014      	beq.n	800568a <CustomHID_Data_Setup+0x4a>
 8005660:	2809      	cmp	r0, #9
 8005662:	d1f2      	bne.n	800564a <CustomHID_Data_Setup+0xa>
 8005664:	4c0c      	ldr	r4, [pc, #48]	; (8005698 <CustomHID_Data_Setup+0x58>)
 8005666:	490d      	ldr	r1, [pc, #52]	; (800569c <CustomHID_Data_Setup+0x5c>)
 8005668:	7020      	strb	r0, [r4, #0]
 800566a:	e007      	b.n	800567c <CustomHID_Data_Setup+0x3c>
 800566c:	2a01      	cmp	r2, #1
 800566e:	d1ec      	bne.n	800564a <CustomHID_Data_Setup+0xa>
 8005670:	7898      	ldrb	r0, [r3, #2]
 8005672:	2822      	cmp	r0, #34	; 0x22
 8005674:	d00b      	beq.n	800568e <CustomHID_Data_Setup+0x4e>
 8005676:	2821      	cmp	r0, #33	; 0x21
 8005678:	d1e7      	bne.n	800564a <CustomHID_Data_Setup+0xa>
 800567a:	4909      	ldr	r1, [pc, #36]	; (80056a0 <CustomHID_Data_Setup+0x60>)
 800567c:	2400      	movs	r4, #0
 800567e:	4620      	mov	r0, r4
 8005680:	6199      	str	r1, [r3, #24]
 8005682:	825c      	strh	r4, [r3, #18]
 8005684:	4788      	blx	r1
 8005686:	4620      	mov	r0, r4
 8005688:	bd10      	pop	{r4, pc}
 800568a:	4906      	ldr	r1, [pc, #24]	; (80056a4 <CustomHID_Data_Setup+0x64>)
 800568c:	e7f6      	b.n	800567c <CustomHID_Data_Setup+0x3c>
 800568e:	4906      	ldr	r1, [pc, #24]	; (80056a8 <CustomHID_Data_Setup+0x68>)
 8005690:	e7f4      	b.n	800567c <CustomHID_Data_Setup+0x3c>
 8005692:	bf00      	nop
 8005694:	200019dc 	.word	0x200019dc
 8005698:	20000718 	.word	0x20000718
 800569c:	080056ad 	.word	0x080056ad
 80056a0:	08005711 	.word	0x08005711
 80056a4:	080056f9 	.word	0x080056f9
 80056a8:	0800571d 	.word	0x0800571d

080056ac <CustomHID_SetReport_Feature>:
 80056ac:	b108      	cbz	r0, 80056b2 <CustomHID_SetReport_Feature+0x6>
 80056ae:	4803      	ldr	r0, [pc, #12]	; (80056bc <CustomHID_SetReport_Feature+0x10>)
 80056b0:	4770      	bx	lr
 80056b2:	4b03      	ldr	r3, [pc, #12]	; (80056c0 <CustomHID_SetReport_Feature+0x14>)
 80056b4:	2202      	movs	r2, #2
 80056b6:	6819      	ldr	r1, [r3, #0]
 80056b8:	820a      	strh	r2, [r1, #16]
 80056ba:	4770      	bx	lr
 80056bc:	200019ec 	.word	0x200019ec
 80056c0:	200019dc 	.word	0x200019dc

080056c4 <CustomHID_NoData_Setup>:
 80056c4:	4b07      	ldr	r3, [pc, #28]	; (80056e4 <CustomHID_NoData_Setup+0x20>)
 80056c6:	6819      	ldr	r1, [r3, #0]
 80056c8:	780a      	ldrb	r2, [r1, #0]
 80056ca:	f002 037f 	and.w	r3, r2, #127	; 0x7f
 80056ce:	2b21      	cmp	r3, #33	; 0x21
 80056d0:	d001      	beq.n	80056d6 <CustomHID_NoData_Setup+0x12>
 80056d2:	2002      	movs	r0, #2
 80056d4:	4770      	bx	lr
 80056d6:	280b      	cmp	r0, #11
 80056d8:	d1fb      	bne.n	80056d2 <CustomHID_NoData_Setup+0xe>
 80056da:	78c9      	ldrb	r1, [r1, #3]
 80056dc:	4a02      	ldr	r2, [pc, #8]	; (80056e8 <CustomHID_NoData_Setup+0x24>)
 80056de:	2000      	movs	r0, #0
 80056e0:	6011      	str	r1, [r2, #0]
 80056e2:	4770      	bx	lr
 80056e4:	200019dc 	.word	0x200019dc
 80056e8:	200019e8 	.word	0x200019e8

080056ec <CustomHID_Get_Interface_Setting>:
 80056ec:	b109      	cbz	r1, 80056f2 <CustomHID_Get_Interface_Setting+0x6>
 80056ee:	2002      	movs	r0, #2
 80056f0:	4770      	bx	lr
 80056f2:	2800      	cmp	r0, #0
 80056f4:	d1fb      	bne.n	80056ee <CustomHID_Get_Interface_Setting+0x2>
 80056f6:	4770      	bx	lr

080056f8 <CustomHID_GetProtocolValue>:
 80056f8:	b108      	cbz	r0, 80056fe <CustomHID_GetProtocolValue+0x6>
 80056fa:	4803      	ldr	r0, [pc, #12]	; (8005708 <CustomHID_GetProtocolValue+0x10>)
 80056fc:	4770      	bx	lr
 80056fe:	4b03      	ldr	r3, [pc, #12]	; (800570c <CustomHID_GetProtocolValue+0x14>)
 8005700:	2201      	movs	r2, #1
 8005702:	6819      	ldr	r1, [r3, #0]
 8005704:	820a      	strh	r2, [r1, #16]
 8005706:	4770      	bx	lr
 8005708:	200019e8 	.word	0x200019e8
 800570c:	200019dc 	.word	0x200019dc

08005710 <CustomHID_GetHIDDescriptor>:
 8005710:	f240 21a4 	movw	r1, #676	; 0x2a4
 8005714:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8005718:	f7ff babe 	b.w	8004c98 <Standard_GetDescriptorData>

0800571c <CustomHID_GetReportDescriptor>:
 800571c:	f240 2174 	movw	r1, #628	; 0x274
 8005720:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8005724:	f7ff bab8 	b.w	8004c98 <Standard_GetDescriptorData>

08005728 <CustomHID_GetStringDescriptor>:
 8005728:	4b05      	ldr	r3, [pc, #20]	; (8005740 <CustomHID_GetStringDescriptor+0x18>)
 800572a:	6819      	ldr	r1, [r3, #0]
 800572c:	78ca      	ldrb	r2, [r1, #3]
 800572e:	2a04      	cmp	r2, #4
 8005730:	d804      	bhi.n	800573c <CustomHID_GetStringDescriptor+0x14>
 8005732:	4b04      	ldr	r3, [pc, #16]	; (8005744 <CustomHID_GetStringDescriptor+0x1c>)
 8005734:	eb03 01c2 	add.w	r1, r3, r2, lsl #3
 8005738:	f7ff baae 	b.w	8004c98 <Standard_GetDescriptorData>
 800573c:	2000      	movs	r0, #0
 800573e:	4770      	bx	lr
 8005740:	200019dc 	.word	0x200019dc
 8005744:	20000284 	.word	0x20000284

08005748 <CustomHID_GetConfigDescriptor>:
 8005748:	f240 2118 	movw	r1, #536	; 0x218
 800574c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8005750:	f7ff baa2 	b.w	8004c98 <Standard_GetDescriptorData>

08005754 <CustomHID_GetDeviceDescriptor>:
 8005754:	f240 217c 	movw	r1, #636	; 0x27c
 8005758:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800575c:	f7ff ba9c 	b.w	8004c98 <Standard_GetDescriptorData>

08005760 <CustomHID_Status_In>:
 8005760:	b508      	push	{r3, lr}
 8005762:	4a20      	ldr	r2, [pc, #128]	; (80057e4 <CustomHID_Status_In+0x84>)
 8005764:	7813      	ldrb	r3, [r2, #0]
 8005766:	7850      	ldrb	r0, [r2, #1]
 8005768:	1e59      	subs	r1, r3, #1
 800576a:	3000      	adds	r0, #0
 800576c:	bf18      	it	ne
 800576e:	2001      	movne	r0, #1
 8005770:	2903      	cmp	r1, #3
 8005772:	d818      	bhi.n	80057a6 <CustomHID_Status_In+0x46>
 8005774:	e8df f001 	tbb	[pc, r1]
 8005778:	02092110 	.word	0x02092110
 800577c:	2800      	cmp	r0, #0
 800577e:	d12c      	bne.n	80057da <CustomHID_Status_In+0x7a>
 8005780:	2003      	movs	r0, #3
 8005782:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8005786:	f7ff b89b 	b.w	80048c0 <STM_EVAL_LEDOff>
 800578a:	2800      	cmp	r0, #0
 800578c:	d020      	beq.n	80057d0 <CustomHID_Status_In+0x70>
 800578e:	2002      	movs	r0, #2
 8005790:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8005794:	f7ff b886 	b.w	80048a4 <STM_EVAL_LEDOn>
 8005798:	2800      	cmp	r0, #0
 800579a:	d0f2      	beq.n	8005782 <CustomHID_Status_In+0x22>
 800579c:	2000      	movs	r0, #0
 800579e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80057a2:	f7ff b87f 	b.w	80048a4 <STM_EVAL_LEDOn>
 80057a6:	2000      	movs	r0, #0
 80057a8:	f7ff f88a 	bl	80048c0 <STM_EVAL_LEDOff>
 80057ac:	2001      	movs	r0, #1
 80057ae:	f7ff f887 	bl	80048c0 <STM_EVAL_LEDOff>
 80057b2:	2002      	movs	r0, #2
 80057b4:	f7ff f884 	bl	80048c0 <STM_EVAL_LEDOff>
 80057b8:	e7e2      	b.n	8005780 <CustomHID_Status_In+0x20>
 80057ba:	b120      	cbz	r0, 80057c6 <CustomHID_Status_In+0x66>
 80057bc:	2001      	movs	r0, #1
 80057be:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80057c2:	f7ff b86f 	b.w	80048a4 <STM_EVAL_LEDOn>
 80057c6:	2001      	movs	r0, #1
 80057c8:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80057cc:	f7ff b878 	b.w	80048c0 <STM_EVAL_LEDOff>
 80057d0:	2002      	movs	r0, #2
 80057d2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80057d6:	f7ff b873 	b.w	80048c0 <STM_EVAL_LEDOff>
 80057da:	2003      	movs	r0, #3
 80057dc:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80057e0:	f7ff b860 	b.w	80048a4 <STM_EVAL_LEDOn>
 80057e4:	200019ec 	.word	0x200019ec

080057e8 <CustomHID_Reset>:
 80057e8:	f641 13dc 	movw	r3, #6620	; 0x19dc
 80057ec:	f249 12d4 	movw	r2, #37332	; 0x91d4
 80057f0:	f6c0 0200 	movt	r2, #2048	; 0x800
 80057f4:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80057f8:	79d1      	ldrb	r1, [r2, #7]
 80057fa:	6818      	ldr	r0, [r3, #0]
 80057fc:	b510      	push	{r4, lr}
 80057fe:	2400      	movs	r4, #0
 8005800:	7241      	strb	r1, [r0, #9]
 8005802:	7284      	strb	r4, [r0, #10]
 8005804:	72c4      	strb	r4, [r0, #11]
 8005806:	4620      	mov	r0, r4
 8005808:	f000 f896 	bl	8005938 <SetBTABLE>
 800580c:	4620      	mov	r0, r4
 800580e:	f44f 7100 	mov.w	r1, #512	; 0x200
 8005812:	f000 f89b 	bl	800594c <SetEPType>
 8005816:	2110      	movs	r1, #16
 8005818:	4620      	mov	r0, r4
 800581a:	f000 f8a3 	bl	8005964 <SetEPTxStatus>
 800581e:	2118      	movs	r1, #24
 8005820:	4620      	mov	r0, r4
 8005822:	f000 f949 	bl	8005ab8 <SetEPRxAddr>
 8005826:	2158      	movs	r1, #88	; 0x58
 8005828:	4620      	mov	r0, r4
 800582a:	f000 f933 	bl	8005a94 <SetEPTxAddr>
 800582e:	4620      	mov	r0, r4
 8005830:	f000 f8fc 	bl	8005a2c <Clear_Status_Out>
 8005834:	f240 2320 	movw	r3, #544	; 0x220
 8005838:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800583c:	f893 102c 	ldrb.w	r1, [r3, #44]	; 0x2c
 8005840:	4620      	mov	r0, r4
 8005842:	f000 f97d 	bl	8005b40 <SetEPRxCount>
 8005846:	4620      	mov	r0, r4
 8005848:	f000 f8de 	bl	8005a08 <SetEPRxValid>
 800584c:	2001      	movs	r0, #1
 800584e:	f44f 61c0 	mov.w	r1, #1536	; 0x600
 8005852:	f000 f87b 	bl	800594c <SetEPType>
 8005856:	2001      	movs	r0, #1
 8005858:	21d8      	movs	r1, #216	; 0xd8
 800585a:	f000 f92d 	bl	8005ab8 <SetEPRxAddr>
 800585e:	2001      	movs	r0, #1
 8005860:	2140      	movs	r1, #64	; 0x40
 8005862:	f000 f96d 	bl	8005b40 <SetEPRxCount>
 8005866:	2001      	movs	r0, #1
 8005868:	f44f 5140 	mov.w	r1, #12288	; 0x3000
 800586c:	f000 f89a 	bl	80059a4 <SetEPRxStatus>
 8005870:	2002      	movs	r0, #2
 8005872:	f44f 61c0 	mov.w	r1, #1536	; 0x600
 8005876:	f000 f869 	bl	800594c <SetEPType>
 800587a:	2002      	movs	r0, #2
 800587c:	f44f 7194 	mov.w	r1, #296	; 0x128
 8005880:	f000 f908 	bl	8005a94 <SetEPTxAddr>
 8005884:	2002      	movs	r0, #2
 8005886:	2140      	movs	r1, #64	; 0x40
 8005888:	f000 f94a 	bl	8005b20 <SetEPTxCount>
 800588c:	2120      	movs	r1, #32
 800588e:	2002      	movs	r0, #2
 8005890:	f000 f868 	bl	8005964 <SetEPTxStatus>
 8005894:	4620      	mov	r0, r4
 8005896:	f7ff fc59 	bl	800514c <SetDeviceAddress>
 800589a:	f240 701c 	movw	r0, #1820	; 0x71c
 800589e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80058a2:	2201      	movs	r2, #1
 80058a4:	6002      	str	r2, [r0, #0]
 80058a6:	bd10      	pop	{r4, pc}

080058a8 <CustomHID_init>:
 80058a8:	b510      	push	{r4, lr}
 80058aa:	f7fe ffd9 	bl	8004860 <Get_SerialNum>
 80058ae:	f641 13dc 	movw	r3, #6620	; 0x19dc
 80058b2:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80058b6:	6818      	ldr	r0, [r3, #0]
 80058b8:	2400      	movs	r4, #0
 80058ba:	7284      	strb	r4, [r0, #10]
 80058bc:	f000 f81c 	bl	80058f8 <PowerOn>
 80058c0:	f000 f978 	bl	8005bb4 <USB_SIL_Init>
 80058c4:	f240 711c 	movw	r1, #1820	; 0x71c
 80058c8:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80058cc:	600c      	str	r4, [r1, #0]
 80058ce:	bd10      	pop	{r4, pc}

080058d0 <CustomHID_SetConfiguration>:
 80058d0:	4b07      	ldr	r3, [pc, #28]	; (80058f0 <CustomHID_SetConfiguration+0x20>)
 80058d2:	6818      	ldr	r0, [r3, #0]
 80058d4:	7a81      	ldrb	r1, [r0, #10]
 80058d6:	b901      	cbnz	r1, 80058da <CustomHID_SetConfiguration+0xa>
 80058d8:	4770      	bx	lr
 80058da:	4b06      	ldr	r3, [pc, #24]	; (80058f4 <CustomHID_SetConfiguration+0x24>)
 80058dc:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 80058e0:	2205      	movs	r2, #5
 80058e2:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80058e6:	2101      	movs	r1, #1
 80058e8:	601a      	str	r2, [r3, #0]
 80058ea:	f7fb bb6b 	b.w	8000fc4 <ADC_SoftwareStartConvCmd>
 80058ee:	bf00      	nop
 80058f0:	200019dc 	.word	0x200019dc
 80058f4:	2000071c 	.word	0x2000071c

080058f8 <PowerOn>:
 80058f8:	b538      	push	{r3, r4, r5, lr}
 80058fa:	2001      	movs	r0, #1
 80058fc:	f645 4440 	movw	r4, #23616	; 0x5c40
 8005900:	f7fe ff74 	bl	80047ec <USB_Cable_Config>
 8005904:	f2c4 0400 	movt	r4, #16384	; 0x4000
 8005908:	2301      	movs	r3, #1
 800590a:	6023      	str	r3, [r4, #0]
 800590c:	f44f 60fa 	mov.w	r0, #2000	; 0x7d0
 8005910:	f7fe fef2 	bl	80046f8 <Delay>
 8005914:	f645 4544 	movw	r5, #23620	; 0x5c44
 8005918:	f641 13e0 	movw	r3, #6624	; 0x19e0
 800591c:	2200      	movs	r2, #0
 800591e:	f44f 51e0 	mov.w	r1, #7168	; 0x1c00
 8005922:	f2c4 0500 	movt	r5, #16384	; 0x4000
 8005926:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800592a:	6022      	str	r2, [r4, #0]
 800592c:	4610      	mov	r0, r2
 800592e:	602a      	str	r2, [r5, #0]
 8005930:	8019      	strh	r1, [r3, #0]
 8005932:	6021      	str	r1, [r4, #0]
 8005934:	bd38      	pop	{r3, r4, r5, pc}
 8005936:	bf00      	nop

08005938 <SetBTABLE>:
 8005938:	f64f 73f8 	movw	r3, #65528	; 0xfff8
 800593c:	f645 4250 	movw	r2, #23632	; 0x5c50
 8005940:	4003      	ands	r3, r0
 8005942:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8005946:	6013      	str	r3, [r2, #0]
 8005948:	4770      	bx	lr
 800594a:	bf00      	nop

0800594c <SetEPType>:
 800594c:	0080      	lsls	r0, r0, #2
 800594e:	f100 4280 	add.w	r2, r0, #1073741824	; 0x40000000
 8005952:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 8005956:	6810      	ldr	r0, [r2, #0]
 8005958:	f648 138f 	movw	r3, #35215	; 0x898f
 800595c:	4003      	ands	r3, r0
 800595e:	4319      	orrs	r1, r3
 8005960:	6011      	str	r1, [r2, #0]
 8005962:	4770      	bx	lr

08005964 <SetEPTxStatus>:
 8005964:	0080      	lsls	r0, r0, #2
 8005966:	f100 4280 	add.w	r2, r0, #1073741824	; 0x40000000
 800596a:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 800596e:	b410      	push	{r4}
 8005970:	f001 0010 	and.w	r0, r1, #16
 8005974:	6814      	ldr	r4, [r2, #0]
 8005976:	f648 73bf 	movw	r3, #36799	; 0x8fbf
 800597a:	b280      	uxth	r0, r0
 800597c:	4023      	ands	r3, r4
 800597e:	b968      	cbnz	r0, 800599c <SetEPTxStatus+0x38>
 8005980:	b29b      	uxth	r3, r3
 8005982:	f001 0120 	and.w	r1, r1, #32
 8005986:	b288      	uxth	r0, r1
 8005988:	b108      	cbz	r0, 800598e <SetEPTxStatus+0x2a>
 800598a:	f083 0320 	eor.w	r3, r3, #32
 800598e:	f443 4100 	orr.w	r1, r3, #32768	; 0x8000
 8005992:	f041 0080 	orr.w	r0, r1, #128	; 0x80
 8005996:	6010      	str	r0, [r2, #0]
 8005998:	bc10      	pop	{r4}
 800599a:	4770      	bx	lr
 800599c:	f083 0310 	eor.w	r3, r3, #16
 80059a0:	e7ef      	b.n	8005982 <SetEPTxStatus+0x1e>
 80059a2:	bf00      	nop

080059a4 <SetEPRxStatus>:
 80059a4:	0080      	lsls	r0, r0, #2
 80059a6:	f100 4280 	add.w	r2, r0, #1073741824	; 0x40000000
 80059aa:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 80059ae:	b410      	push	{r4}
 80059b0:	f401 5080 	and.w	r0, r1, #4096	; 0x1000
 80059b4:	6814      	ldr	r4, [r2, #0]
 80059b6:	f64b 738f 	movw	r3, #49039	; 0xbf8f
 80059ba:	b280      	uxth	r0, r0
 80059bc:	4023      	ands	r3, r4
 80059be:	b968      	cbnz	r0, 80059dc <SetEPRxStatus+0x38>
 80059c0:	b29b      	uxth	r3, r3
 80059c2:	f401 5100 	and.w	r1, r1, #8192	; 0x2000
 80059c6:	b288      	uxth	r0, r1
 80059c8:	b108      	cbz	r0, 80059ce <SetEPRxStatus+0x2a>
 80059ca:	f483 5300 	eor.w	r3, r3, #8192	; 0x2000
 80059ce:	f443 4100 	orr.w	r1, r3, #32768	; 0x8000
 80059d2:	f041 0080 	orr.w	r0, r1, #128	; 0x80
 80059d6:	6010      	str	r0, [r2, #0]
 80059d8:	bc10      	pop	{r4}
 80059da:	4770      	bx	lr
 80059dc:	f483 5380 	eor.w	r3, r3, #4096	; 0x1000
 80059e0:	e7ef      	b.n	80059c2 <SetEPRxStatus+0x1e>
 80059e2:	bf00      	nop

080059e4 <SetEPTxValid>:
 80059e4:	0080      	lsls	r0, r0, #2
 80059e6:	f100 4280 	add.w	r2, r0, #1073741824	; 0x40000000
 80059ea:	f502 40b8 	add.w	r0, r2, #23552	; 0x5c00
 80059ee:	6801      	ldr	r1, [r0, #0]
 80059f0:	f648 73bf 	movw	r3, #36799	; 0x8fbf
 80059f4:	400b      	ands	r3, r1
 80059f6:	f083 0230 	eor.w	r2, r3, #48	; 0x30
 80059fa:	f442 4100 	orr.w	r1, r2, #32768	; 0x8000
 80059fe:	f041 0380 	orr.w	r3, r1, #128	; 0x80
 8005a02:	6003      	str	r3, [r0, #0]
 8005a04:	4770      	bx	lr
 8005a06:	bf00      	nop

08005a08 <SetEPRxValid>:
 8005a08:	0080      	lsls	r0, r0, #2
 8005a0a:	f100 4280 	add.w	r2, r0, #1073741824	; 0x40000000
 8005a0e:	f502 40b8 	add.w	r0, r2, #23552	; 0x5c00
 8005a12:	6801      	ldr	r1, [r0, #0]
 8005a14:	f64b 738f 	movw	r3, #49039	; 0xbf8f
 8005a18:	400b      	ands	r3, r1
 8005a1a:	f483 5240 	eor.w	r2, r3, #12288	; 0x3000
 8005a1e:	f442 4100 	orr.w	r1, r2, #32768	; 0x8000
 8005a22:	f041 0380 	orr.w	r3, r1, #128	; 0x80
 8005a26:	6003      	str	r3, [r0, #0]
 8005a28:	4770      	bx	lr
 8005a2a:	bf00      	nop

08005a2c <Clear_Status_Out>:
 8005a2c:	0080      	lsls	r0, r0, #2
 8005a2e:	f100 4280 	add.w	r2, r0, #1073741824	; 0x40000000
 8005a32:	f502 40b8 	add.w	r0, r2, #23552	; 0x5c00
 8005a36:	6801      	ldr	r1, [r0, #0]
 8005a38:	f640 630f 	movw	r3, #3599	; 0xe0f
 8005a3c:	400b      	ands	r3, r1
 8005a3e:	f443 4200 	orr.w	r2, r3, #32768	; 0x8000
 8005a42:	f042 0180 	orr.w	r1, r2, #128	; 0x80
 8005a46:	6001      	str	r1, [r0, #0]
 8005a48:	4770      	bx	lr
 8005a4a:	bf00      	nop

08005a4c <ClearDTOG_RX>:
 8005a4c:	0080      	lsls	r0, r0, #2
 8005a4e:	f100 4380 	add.w	r3, r0, #1073741824	; 0x40000000
 8005a52:	f503 40b8 	add.w	r0, r3, #23552	; 0x5c00
 8005a56:	6802      	ldr	r2, [r0, #0]
 8005a58:	0451      	lsls	r1, r2, #17
 8005a5a:	d508      	bpl.n	8005a6e <ClearDTOG_RX+0x22>
 8005a5c:	6801      	ldr	r1, [r0, #0]
 8005a5e:	f640 730f 	movw	r3, #3855	; 0xf0f
 8005a62:	400b      	ands	r3, r1
 8005a64:	f443 4240 	orr.w	r2, r3, #49152	; 0xc000
 8005a68:	f042 0180 	orr.w	r1, r2, #128	; 0x80
 8005a6c:	6001      	str	r1, [r0, #0]
 8005a6e:	4770      	bx	lr

08005a70 <ClearDTOG_TX>:
 8005a70:	0080      	lsls	r0, r0, #2
 8005a72:	f100 4380 	add.w	r3, r0, #1073741824	; 0x40000000
 8005a76:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8005a7a:	681a      	ldr	r2, [r3, #0]
 8005a7c:	0650      	lsls	r0, r2, #25
 8005a7e:	d508      	bpl.n	8005a92 <ClearDTOG_TX+0x22>
 8005a80:	6819      	ldr	r1, [r3, #0]
 8005a82:	f640 700f 	movw	r0, #3855	; 0xf0f
 8005a86:	4008      	ands	r0, r1
 8005a88:	f440 4200 	orr.w	r2, r0, #32768	; 0x8000
 8005a8c:	f042 01c0 	orr.w	r1, r2, #192	; 0xc0
 8005a90:	6019      	str	r1, [r3, #0]
 8005a92:	4770      	bx	lr

08005a94 <SetEPTxAddr>:
 8005a94:	f645 4350 	movw	r3, #23632	; 0x5c50
 8005a98:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8005a9c:	681a      	ldr	r2, [r3, #0]
 8005a9e:	f64f 73fe 	movw	r3, #65534	; 0xfffe
 8005aa2:	b292      	uxth	r2, r2
 8005aa4:	eb02 00c0 	add.w	r0, r2, r0, lsl #3
 8005aa8:	f100 5200 	add.w	r2, r0, #536870912	; 0x20000000
 8005aac:	f502 5040 	add.w	r0, r2, #12288	; 0x3000
 8005ab0:	0042      	lsls	r2, r0, #1
 8005ab2:	400b      	ands	r3, r1
 8005ab4:	6013      	str	r3, [r2, #0]
 8005ab6:	4770      	bx	lr

08005ab8 <SetEPRxAddr>:
 8005ab8:	f645 4350 	movw	r3, #23632	; 0x5c50
 8005abc:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8005ac0:	681a      	ldr	r2, [r3, #0]
 8005ac2:	f243 0304 	movw	r3, #12292	; 0x3004
 8005ac6:	b292      	uxth	r2, r2
 8005ac8:	eb02 00c0 	add.w	r0, r2, r0, lsl #3
 8005acc:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8005ad0:	18c3      	adds	r3, r0, r3
 8005ad2:	f64f 72fe 	movw	r2, #65534	; 0xfffe
 8005ad6:	0058      	lsls	r0, r3, #1
 8005ad8:	400a      	ands	r2, r1
 8005ada:	6002      	str	r2, [r0, #0]
 8005adc:	4770      	bx	lr
 8005ade:	bf00      	nop

08005ae0 <GetEPTxAddr>:
 8005ae0:	f645 4350 	movw	r3, #23632	; 0x5c50
 8005ae4:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8005ae8:	6819      	ldr	r1, [r3, #0]
 8005aea:	b28a      	uxth	r2, r1
 8005aec:	eb02 00c0 	add.w	r0, r2, r0, lsl #3
 8005af0:	f100 5300 	add.w	r3, r0, #536870912	; 0x20000000
 8005af4:	f503 5140 	add.w	r1, r3, #12288	; 0x3000
 8005af8:	004a      	lsls	r2, r1, #1
 8005afa:	8810      	ldrh	r0, [r2, #0]
 8005afc:	4770      	bx	lr
 8005afe:	bf00      	nop

08005b00 <GetEPRxAddr>:
 8005b00:	f645 4350 	movw	r3, #23632	; 0x5c50
 8005b04:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8005b08:	681a      	ldr	r2, [r3, #0]
 8005b0a:	f243 0104 	movw	r1, #12292	; 0x3004
 8005b0e:	b293      	uxth	r3, r2
 8005b10:	eb03 00c0 	add.w	r0, r3, r0, lsl #3
 8005b14:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8005b18:	1842      	adds	r2, r0, r1
 8005b1a:	0051      	lsls	r1, r2, #1
 8005b1c:	8808      	ldrh	r0, [r1, #0]
 8005b1e:	4770      	bx	lr

08005b20 <SetEPTxCount>:
 8005b20:	f645 4350 	movw	r3, #23632	; 0x5c50
 8005b24:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8005b28:	681a      	ldr	r2, [r3, #0]
 8005b2a:	f243 0302 	movw	r3, #12290	; 0x3002
 8005b2e:	b292      	uxth	r2, r2
 8005b30:	eb02 00c0 	add.w	r0, r2, r0, lsl #3
 8005b34:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8005b38:	18c3      	adds	r3, r0, r3
 8005b3a:	005a      	lsls	r2, r3, #1
 8005b3c:	6011      	str	r1, [r2, #0]
 8005b3e:	4770      	bx	lr

08005b40 <SetEPRxCount>:
 8005b40:	f645 4350 	movw	r3, #23632	; 0x5c50
 8005b44:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8005b48:	681a      	ldr	r2, [r3, #0]
 8005b4a:	f243 0306 	movw	r3, #12294	; 0x3006
 8005b4e:	b292      	uxth	r2, r2
 8005b50:	eb02 00c0 	add.w	r0, r2, r0, lsl #3
 8005b54:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8005b58:	18c3      	adds	r3, r0, r3
 8005b5a:	005b      	lsls	r3, r3, #1
 8005b5c:	293e      	cmp	r1, #62	; 0x3e
 8005b5e:	d909      	bls.n	8005b74 <SetEPRxCount+0x34>
 8005b60:	094a      	lsrs	r2, r1, #5
 8005b62:	06c9      	lsls	r1, r1, #27
 8005b64:	d101      	bne.n	8005b6a <SetEPRxCount+0x2a>
 8005b66:	1e50      	subs	r0, r2, #1
 8005b68:	b282      	uxth	r2, r0
 8005b6a:	0291      	lsls	r1, r2, #10
 8005b6c:	f441 4000 	orr.w	r0, r1, #32768	; 0x8000
 8005b70:	6018      	str	r0, [r3, #0]
 8005b72:	4770      	bx	lr
 8005b74:	084a      	lsrs	r2, r1, #1
 8005b76:	07c8      	lsls	r0, r1, #31
 8005b78:	bf48      	it	mi
 8005b7a:	3201      	addmi	r2, #1
 8005b7c:	0291      	lsls	r1, r2, #10
 8005b7e:	6019      	str	r1, [r3, #0]
 8005b80:	4770      	bx	lr
 8005b82:	bf00      	nop

08005b84 <GetEPRxCount>:
 8005b84:	f645 4350 	movw	r3, #23632	; 0x5c50
 8005b88:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8005b8c:	681a      	ldr	r2, [r3, #0]
 8005b8e:	f243 0106 	movw	r1, #12294	; 0x3006
 8005b92:	b293      	uxth	r3, r2
 8005b94:	eb03 00c0 	add.w	r0, r3, r0, lsl #3
 8005b98:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8005b9c:	1842      	adds	r2, r0, r1
 8005b9e:	0051      	lsls	r1, r2, #1
 8005ba0:	680b      	ldr	r3, [r1, #0]
 8005ba2:	0598      	lsls	r0, r3, #22
 8005ba4:	0d80      	lsrs	r0, r0, #22
 8005ba6:	4770      	bx	lr

08005ba8 <ByteSwap>:
 8005ba8:	b2c3      	uxtb	r3, r0
 8005baa:	0a00      	lsrs	r0, r0, #8
 8005bac:	ea40 2003 	orr.w	r0, r0, r3, lsl #8
 8005bb0:	4770      	bx	lr
 8005bb2:	bf00      	nop

08005bb4 <USB_SIL_Init>:
 8005bb4:	b410      	push	{r4}
 8005bb6:	f641 13e0 	movw	r3, #6624	; 0x19e0
 8005bba:	f645 4444 	movw	r4, #23620	; 0x5c44
 8005bbe:	f645 4240 	movw	r2, #23616	; 0x5c40
 8005bc2:	f44f 4104 	mov.w	r1, #33792	; 0x8400
 8005bc6:	2000      	movs	r0, #0
 8005bc8:	f2c4 0400 	movt	r4, #16384	; 0x4000
 8005bcc:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8005bd0:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8005bd4:	6020      	str	r0, [r4, #0]
 8005bd6:	8019      	strh	r1, [r3, #0]
 8005bd8:	6011      	str	r1, [r2, #0]
 8005bda:	bc10      	pop	{r4}
 8005bdc:	4770      	bx	lr
 8005bde:	bf00      	nop

08005be0 <USB_SIL_Read>:
 8005be0:	b570      	push	{r4, r5, r6, lr}
 8005be2:	f000 057f 	and.w	r5, r0, #127	; 0x7f
 8005be6:	4628      	mov	r0, r5
 8005be8:	460e      	mov	r6, r1
 8005bea:	f7ff ffcb 	bl	8005b84 <GetEPRxCount>
 8005bee:	4604      	mov	r4, r0
 8005bf0:	4628      	mov	r0, r5
 8005bf2:	f7ff ff85 	bl	8005b00 <GetEPRxAddr>
 8005bf6:	4622      	mov	r2, r4
 8005bf8:	4601      	mov	r1, r0
 8005bfa:	4630      	mov	r0, r6
 8005bfc:	f7ff fcee 	bl	80055dc <PMAToUserBufferCopy>
 8005c00:	4620      	mov	r0, r4
 8005c02:	bd70      	pop	{r4, r5, r6, pc}

08005c04 <rt_tick_get>:
 8005c04:	f240 7320 	movw	r3, #1824	; 0x720
 8005c08:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8005c0c:	6818      	ldr	r0, [r3, #0]
 8005c0e:	4770      	bx	lr

08005c10 <rt_tick_increase>:
 8005c10:	b508      	push	{r3, lr}
 8005c12:	4b09      	ldr	r3, [pc, #36]	; (8005c38 <rt_tick_increase+0x28>)
 8005c14:	681a      	ldr	r2, [r3, #0]
 8005c16:	1c50      	adds	r0, r2, #1
 8005c18:	6018      	str	r0, [r3, #0]
 8005c1a:	f001 fe59 	bl	80078d0 <rt_thread_self>
 8005c1e:	6c01      	ldr	r1, [r0, #64]	; 0x40
 8005c20:	1e4b      	subs	r3, r1, #1
 8005c22:	6403      	str	r3, [r0, #64]	; 0x40
 8005c24:	b91b      	cbnz	r3, 8005c2e <rt_tick_increase+0x1e>
 8005c26:	6bc2      	ldr	r2, [r0, #60]	; 0x3c
 8005c28:	6402      	str	r2, [r0, #64]	; 0x40
 8005c2a:	f001 fe7d 	bl	8007928 <rt_thread_yield>
 8005c2e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8005c32:	f002 b8c3 	b.w	8007dbc <rt_timer_check>
 8005c36:	bf00      	nop
 8005c38:	20000720 	.word	0x20000720

08005c3c <rt_device_find>:
 8005c3c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005c3e:	4607      	mov	r7, r0
 8005c40:	f001 fe46 	bl	80078d0 <rt_thread_self>
 8005c44:	b108      	cbz	r0, 8005c4a <rt_device_find+0xe>
 8005c46:	f001 fd17 	bl	8007678 <rt_enter_critical>
 8005c4a:	4e12      	ldr	r6, [pc, #72]	; (8005c94 <rt_device_find+0x58>)
 8005c4c:	f856 4f34 	ldr.w	r4, [r6, #52]!
 8005c50:	42b4      	cmp	r4, r6
 8005c52:	d103      	bne.n	8005c5c <rt_device_find+0x20>
 8005c54:	e012      	b.n	8005c7c <rt_device_find+0x40>
 8005c56:	6824      	ldr	r4, [r4, #0]
 8005c58:	42b4      	cmp	r4, r6
 8005c5a:	d00f      	beq.n	8005c7c <rt_device_find+0x40>
 8005c5c:	f1a4 050c 	sub.w	r5, r4, #12
 8005c60:	4628      	mov	r0, r5
 8005c62:	4639      	mov	r1, r7
 8005c64:	2208      	movs	r2, #8
 8005c66:	f000 fcf9 	bl	800665c <rt_strncmp>
 8005c6a:	2800      	cmp	r0, #0
 8005c6c:	d1f3      	bne.n	8005c56 <rt_device_find+0x1a>
 8005c6e:	f001 fe2f 	bl	80078d0 <rt_thread_self>
 8005c72:	b108      	cbz	r0, 8005c78 <rt_device_find+0x3c>
 8005c74:	f001 fd0e 	bl	8007694 <rt_exit_critical>
 8005c78:	4628      	mov	r0, r5
 8005c7a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005c7c:	f001 fe28 	bl	80078d0 <rt_thread_self>
 8005c80:	b120      	cbz	r0, 8005c8c <rt_device_find+0x50>
 8005c82:	2500      	movs	r5, #0
 8005c84:	f001 fd06 	bl	8007694 <rt_exit_critical>
 8005c88:	4628      	mov	r0, r5
 8005c8a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005c8c:	4605      	mov	r5, r0
 8005c8e:	4628      	mov	r0, r5
 8005c90:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005c92:	bf00      	nop
 8005c94:	200002b0 	.word	0x200002b0

08005c98 <rt_device_register>:
 8005c98:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005c9a:	4604      	mov	r4, r0
 8005c9c:	460e      	mov	r6, r1
 8005c9e:	4617      	mov	r7, r2
 8005ca0:	b168      	cbz	r0, 8005cbe <rt_device_register+0x26>
 8005ca2:	4608      	mov	r0, r1
 8005ca4:	f7ff ffca 	bl	8005c3c <rt_device_find>
 8005ca8:	4605      	mov	r5, r0
 8005caa:	b940      	cbnz	r0, 8005cbe <rt_device_register+0x26>
 8005cac:	4620      	mov	r0, r4
 8005cae:	2103      	movs	r1, #3
 8005cb0:	4632      	mov	r2, r6
 8005cb2:	f001 faad 	bl	8007210 <rt_object_init>
 8005cb6:	82e7      	strh	r7, [r4, #22]
 8005cb8:	76a5      	strb	r5, [r4, #26]
 8005cba:	4628      	mov	r0, r5
 8005cbc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005cbe:	f04f 30ff 	mov.w	r0, #4294967295
 8005cc2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

08005cc4 <rt_device_open>:
 8005cc4:	b570      	push	{r4, r5, r6, lr}
 8005cc6:	4604      	mov	r4, r0
 8005cc8:	b082      	sub	sp, #8
 8005cca:	460e      	mov	r6, r1
 8005ccc:	2800      	cmp	r0, #0
 8005cce:	d043      	beq.n	8005d58 <rt_device_open+0x94>
 8005cd0:	8ae5      	ldrh	r5, [r4, #22]
 8005cd2:	f005 0210 	and.w	r2, r5, #16
 8005cd6:	b290      	uxth	r0, r2
 8005cd8:	b950      	cbnz	r0, 8005cf0 <rt_device_open+0x2c>
 8005cda:	6a61      	ldr	r1, [r4, #36]	; 0x24
 8005cdc:	b129      	cbz	r1, 8005cea <rt_device_open+0x26>
 8005cde:	4620      	mov	r0, r4
 8005ce0:	4788      	blx	r1
 8005ce2:	4605      	mov	r5, r0
 8005ce4:	2800      	cmp	r0, #0
 8005ce6:	d131      	bne.n	8005d4c <rt_device_open+0x88>
 8005ce8:	8ae5      	ldrh	r5, [r4, #22]
 8005cea:	f045 0510 	orr.w	r5, r5, #16
 8005cee:	82e5      	strh	r5, [r4, #22]
 8005cf0:	f005 0308 	and.w	r3, r5, #8
 8005cf4:	b29a      	uxth	r2, r3
 8005cf6:	b99a      	cbnz	r2, 8005d20 <rt_device_open+0x5c>
 8005cf8:	7ea3      	ldrb	r3, [r4, #26]
 8005cfa:	1c5a      	adds	r2, r3, #1
 8005cfc:	b2d5      	uxtb	r5, r2
 8005cfe:	76a5      	strb	r5, [r4, #26]
 8005d00:	b1bd      	cbz	r5, 8005d32 <rt_device_open+0x6e>
 8005d02:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005d04:	b135      	cbz	r5, 8005d14 <rt_device_open+0x50>
 8005d06:	4620      	mov	r0, r4
 8005d08:	4631      	mov	r1, r6
 8005d0a:	47a8      	blx	r5
 8005d0c:	4605      	mov	r5, r0
 8005d0e:	b108      	cbz	r0, 8005d14 <rt_device_open+0x50>
 8005d10:	1d83      	adds	r3, r0, #6
 8005d12:	d102      	bne.n	8005d1a <rt_device_open+0x56>
 8005d14:	f046 0608 	orr.w	r6, r6, #8
 8005d18:	8326      	strh	r6, [r4, #24]
 8005d1a:	4628      	mov	r0, r5
 8005d1c:	b002      	add	sp, #8
 8005d1e:	bd70      	pop	{r4, r5, r6, pc}
 8005d20:	8b20      	ldrh	r0, [r4, #24]
 8005d22:	f000 0108 	and.w	r1, r0, #8
 8005d26:	b28d      	uxth	r5, r1
 8005d28:	2d00      	cmp	r5, #0
 8005d2a:	d0e5      	beq.n	8005cf8 <rt_device_open+0x34>
 8005d2c:	f06f 0506 	mvn.w	r5, #6
 8005d30:	e7f3      	b.n	8005d1a <rt_device_open+0x56>
 8005d32:	4810      	ldr	r0, [pc, #64]	; (8005d74 <rt_device_open+0xb0>)
 8005d34:	4910      	ldr	r1, [pc, #64]	; (8005d78 <rt_device_open+0xb4>)
 8005d36:	4a11      	ldr	r2, [pc, #68]	; (8005d7c <rt_device_open+0xb8>)
 8005d38:	23f5      	movs	r3, #245	; 0xf5
 8005d3a:	f88d 5007 	strb.w	r5, [sp, #7]
 8005d3e:	f000 ff4d 	bl	8006bdc <rt_kprintf>
 8005d42:	f89d 0007 	ldrb.w	r0, [sp, #7]
 8005d46:	2800      	cmp	r0, #0
 8005d48:	d0fb      	beq.n	8005d42 <rt_device_open+0x7e>
 8005d4a:	e7da      	b.n	8005d02 <rt_device_open+0x3e>
 8005d4c:	480c      	ldr	r0, [pc, #48]	; (8005d80 <rt_device_open+0xbc>)
 8005d4e:	4621      	mov	r1, r4
 8005d50:	462a      	mov	r2, r5
 8005d52:	f000 ff43 	bl	8006bdc <rt_kprintf>
 8005d56:	e7e0      	b.n	8005d1a <rt_device_open+0x56>
 8005d58:	4806      	ldr	r0, [pc, #24]	; (8005d74 <rt_device_open+0xb0>)
 8005d5a:	490a      	ldr	r1, [pc, #40]	; (8005d84 <rt_device_open+0xc0>)
 8005d5c:	4a07      	ldr	r2, [pc, #28]	; (8005d7c <rt_device_open+0xb8>)
 8005d5e:	23d7      	movs	r3, #215	; 0xd7
 8005d60:	f88d 4006 	strb.w	r4, [sp, #6]
 8005d64:	f000 ff3a 	bl	8006bdc <rt_kprintf>
 8005d68:	f89d 3006 	ldrb.w	r3, [sp, #6]
 8005d6c:	2b00      	cmp	r3, #0
 8005d6e:	d0fb      	beq.n	8005d68 <rt_device_open+0xa4>
 8005d70:	e7ae      	b.n	8005cd0 <rt_device_open+0xc>
 8005d72:	bf00      	nop
 8005d74:	08008a48 	.word	0x08008a48
 8005d78:	0800925c 	.word	0x0800925c
 8005d7c:	08009280 	.word	0x08009280
 8005d80:	08009224 	.word	0x08009224
 8005d84:	08009214 	.word	0x08009214

08005d88 <rt_device_close>:
 8005d88:	b510      	push	{r4, lr}
 8005d8a:	4604      	mov	r4, r0
 8005d8c:	b082      	sub	sp, #8
 8005d8e:	b1a8      	cbz	r0, 8005dbc <rt_device_close+0x34>
 8005d90:	7ea0      	ldrb	r0, [r4, #26]
 8005d92:	2800      	cmp	r0, #0
 8005d94:	d020      	beq.n	8005dd8 <rt_device_close+0x50>
 8005d96:	1e41      	subs	r1, r0, #1
 8005d98:	b2ca      	uxtb	r2, r1
 8005d9a:	76a2      	strb	r2, [r4, #26]
 8005d9c:	b962      	cbnz	r2, 8005db8 <rt_device_close+0x30>
 8005d9e:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8005da0:	b133      	cbz	r3, 8005db0 <rt_device_close+0x28>
 8005da2:	4620      	mov	r0, r4
 8005da4:	4798      	blx	r3
 8005da6:	b120      	cbz	r0, 8005db2 <rt_device_close+0x2a>
 8005da8:	1d82      	adds	r2, r0, #6
 8005daa:	d002      	beq.n	8005db2 <rt_device_close+0x2a>
 8005dac:	b002      	add	sp, #8
 8005dae:	bd10      	pop	{r4, pc}
 8005db0:	4618      	mov	r0, r3
 8005db2:	2100      	movs	r1, #0
 8005db4:	8321      	strh	r1, [r4, #24]
 8005db6:	e7f9      	b.n	8005dac <rt_device_close+0x24>
 8005db8:	2000      	movs	r0, #0
 8005dba:	e7f7      	b.n	8005dac <rt_device_close+0x24>
 8005dbc:	4808      	ldr	r0, [pc, #32]	; (8005de0 <rt_device_close+0x58>)
 8005dbe:	4909      	ldr	r1, [pc, #36]	; (8005de4 <rt_device_close+0x5c>)
 8005dc0:	4a09      	ldr	r2, [pc, #36]	; (8005de8 <rt_device_close+0x60>)
 8005dc2:	f44f 7388 	mov.w	r3, #272	; 0x110
 8005dc6:	f88d 4007 	strb.w	r4, [sp, #7]
 8005dca:	f000 ff07 	bl	8006bdc <rt_kprintf>
 8005dce:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8005dd2:	2b00      	cmp	r3, #0
 8005dd4:	d0fb      	beq.n	8005dce <rt_device_close+0x46>
 8005dd6:	e7db      	b.n	8005d90 <rt_device_close+0x8>
 8005dd8:	f04f 30ff 	mov.w	r0, #4294967295
 8005ddc:	e7e6      	b.n	8005dac <rt_device_close+0x24>
 8005dde:	bf00      	nop
 8005de0:	08008a48 	.word	0x08008a48
 8005de4:	08009214 	.word	0x08009214
 8005de8:	08009204 	.word	0x08009204

08005dec <rt_device_write>:
 8005dec:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005df0:	4604      	mov	r4, r0
 8005df2:	b082      	sub	sp, #8
 8005df4:	4688      	mov	r8, r1
 8005df6:	4617      	mov	r7, r2
 8005df8:	461e      	mov	r6, r3
 8005dfa:	b1b8      	cbz	r0, 8005e2c <rt_device_write+0x40>
 8005dfc:	7ea5      	ldrb	r5, [r4, #26]
 8005dfe:	b14d      	cbz	r5, 8005e14 <rt_device_write+0x28>
 8005e00:	6b65      	ldr	r5, [r4, #52]	; 0x34
 8005e02:	b16d      	cbz	r5, 8005e20 <rt_device_write+0x34>
 8005e04:	4620      	mov	r0, r4
 8005e06:	4641      	mov	r1, r8
 8005e08:	463a      	mov	r2, r7
 8005e0a:	4633      	mov	r3, r6
 8005e0c:	47a8      	blx	r5
 8005e0e:	b002      	add	sp, #8
 8005e10:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005e14:	f04f 30ff 	mov.w	r0, #4294967295
 8005e18:	f000 fb56 	bl	80064c8 <rt_set_errno>
 8005e1c:	4628      	mov	r0, r5
 8005e1e:	e7f6      	b.n	8005e0e <rt_device_write+0x22>
 8005e20:	f06f 0005 	mvn.w	r0, #5
 8005e24:	f000 fb50 	bl	80064c8 <rt_set_errno>
 8005e28:	4628      	mov	r0, r5
 8005e2a:	e7f0      	b.n	8005e0e <rt_device_write+0x22>
 8005e2c:	4806      	ldr	r0, [pc, #24]	; (8005e48 <rt_device_write+0x5c>)
 8005e2e:	4907      	ldr	r1, [pc, #28]	; (8005e4c <rt_device_write+0x60>)
 8005e30:	4a07      	ldr	r2, [pc, #28]	; (8005e50 <rt_device_write+0x64>)
 8005e32:	f240 135f 	movw	r3, #351	; 0x15f
 8005e36:	f88d 4007 	strb.w	r4, [sp, #7]
 8005e3a:	f000 fecf 	bl	8006bdc <rt_kprintf>
 8005e3e:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8005e42:	2b00      	cmp	r3, #0
 8005e44:	d0fb      	beq.n	8005e3e <rt_device_write+0x52>
 8005e46:	e7d9      	b.n	8005dfc <rt_device_write+0x10>
 8005e48:	08008a48 	.word	0x08008a48
 8005e4c:	08009214 	.word	0x08009214
 8005e50:	08009270 	.word	0x08009270

08005e54 <rt_thread_idle_excute>:
 8005e54:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005e58:	4d25      	ldr	r5, [pc, #148]	; (8005ef0 <rt_thread_idle_excute+0x9c>)
 8005e5a:	b082      	sub	sp, #8
 8005e5c:	682b      	ldr	r3, [r5, #0]
 8005e5e:	42ab      	cmp	r3, r5
 8005e60:	d042      	beq.n	8005ee8 <rt_thread_idle_excute+0x94>
 8005e62:	2700      	movs	r7, #0
 8005e64:	e026      	b.n	8005eb4 <rt_thread_idle_excute+0x60>
 8005e66:	4620      	mov	r0, r4
 8005e68:	f7fa f954 	bl	8000114 <rt_hw_interrupt_enable>
 8005e6c:	f7fa f94e 	bl	800010c <rt_hw_interrupt_disable>
 8005e70:	682c      	ldr	r4, [r5, #0]
 8005e72:	4680      	mov	r8, r0
 8005e74:	42ac      	cmp	r4, r5
 8005e76:	d035      	beq.n	8005ee4 <rt_thread_idle_excute+0x90>
 8005e78:	6823      	ldr	r3, [r4, #0]
 8005e7a:	6861      	ldr	r1, [r4, #4]
 8005e7c:	6de2      	ldr	r2, [r4, #92]	; 0x5c
 8005e7e:	6059      	str	r1, [r3, #4]
 8005e80:	6860      	ldr	r0, [r4, #4]
 8005e82:	f1a4 0614 	sub.w	r6, r4, #20
 8005e86:	6003      	str	r3, [r0, #0]
 8005e88:	6064      	str	r4, [r4, #4]
 8005e8a:	6024      	str	r4, [r4, #0]
 8005e8c:	b10a      	cbz	r2, 8005e92 <rt_thread_idle_excute+0x3e>
 8005e8e:	4630      	mov	r0, r6
 8005e90:	4790      	blx	r2
 8005e92:	4630      	mov	r0, r6
 8005e94:	f001 faa8 	bl	80073e8 <rt_object_is_systemobject>
 8005e98:	2801      	cmp	r0, #1
 8005e9a:	4640      	mov	r0, r8
 8005e9c:	d022      	beq.n	8005ee4 <rt_thread_idle_excute+0x90>
 8005e9e:	f7fa f939 	bl	8000114 <rt_hw_interrupt_enable>
 8005ea2:	6960      	ldr	r0, [r4, #20]
 8005ea4:	f001 f8fa 	bl	800709c <rt_free>
 8005ea8:	4630      	mov	r0, r6
 8005eaa:	f001 fa55 	bl	8007358 <rt_object_delete>
 8005eae:	682b      	ldr	r3, [r5, #0]
 8005eb0:	42ab      	cmp	r3, r5
 8005eb2:	d019      	beq.n	8005ee8 <rt_thread_idle_excute+0x94>
 8005eb4:	f7fa f92a 	bl	800010c <rt_hw_interrupt_disable>
 8005eb8:	4604      	mov	r4, r0
 8005eba:	f000 f9c3 	bl	8006244 <rt_interrupt_get_nest>
 8005ebe:	2800      	cmp	r0, #0
 8005ec0:	d0d1      	beq.n	8005e66 <rt_thread_idle_excute+0x12>
 8005ec2:	480c      	ldr	r0, [pc, #48]	; (8005ef4 <rt_thread_idle_excute+0xa0>)
 8005ec4:	490c      	ldr	r1, [pc, #48]	; (8005ef8 <rt_thread_idle_excute+0xa4>)
 8005ec6:	f000 fe89 	bl	8006bdc <rt_kprintf>
 8005eca:	480c      	ldr	r0, [pc, #48]	; (8005efc <rt_thread_idle_excute+0xa8>)
 8005ecc:	490c      	ldr	r1, [pc, #48]	; (8005f00 <rt_thread_idle_excute+0xac>)
 8005ece:	4a0a      	ldr	r2, [pc, #40]	; (8005ef8 <rt_thread_idle_excute+0xa4>)
 8005ed0:	2356      	movs	r3, #86	; 0x56
 8005ed2:	f88d 7007 	strb.w	r7, [sp, #7]
 8005ed6:	f000 fe81 	bl	8006bdc <rt_kprintf>
 8005eda:	f89d 0007 	ldrb.w	r0, [sp, #7]
 8005ede:	2800      	cmp	r0, #0
 8005ee0:	d0fb      	beq.n	8005eda <rt_thread_idle_excute+0x86>
 8005ee2:	e7c0      	b.n	8005e66 <rt_thread_idle_excute+0x12>
 8005ee4:	f7fa f916 	bl	8000114 <rt_hw_interrupt_enable>
 8005ee8:	b002      	add	sp, #8
 8005eea:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005eee:	bf00      	nop
 8005ef0:	20001b48 	.word	0x20001b48
 8005ef4:	080092a8 	.word	0x080092a8
 8005ef8:	08009290 	.word	0x08009290
 8005efc:	08008a48 	.word	0x08008a48
 8005f00:	08009684 	.word	0x08009684

08005f04 <rt_thread_idle_entry>:
 8005f04:	b510      	push	{r4, lr}
 8005f06:	4c03      	ldr	r4, [pc, #12]	; (8005f14 <rt_thread_idle_entry+0x10>)
 8005f08:	6823      	ldr	r3, [r4, #0]
 8005f0a:	b103      	cbz	r3, 8005f0e <rt_thread_idle_entry+0xa>
 8005f0c:	4798      	blx	r3
 8005f0e:	f7ff ffa1 	bl	8005e54 <rt_thread_idle_excute>
 8005f12:	e7f9      	b.n	8005f08 <rt_thread_idle_entry+0x4>
 8005f14:	2000079c 	.word	0x2000079c

08005f18 <rt_thread_idle_init>:
 8005f18:	b510      	push	{r4, lr}
 8005f1a:	211f      	movs	r1, #31
 8005f1c:	b084      	sub	sp, #16
 8005f1e:	2220      	movs	r2, #32
 8005f20:	f240 7424 	movw	r4, #1828	; 0x724
 8005f24:	f240 73a0 	movw	r3, #1952	; 0x7a0
 8005f28:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8005f2c:	9102      	str	r1, [sp, #8]
 8005f2e:	9203      	str	r2, [sp, #12]
 8005f30:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8005f34:	f44f 7080 	mov.w	r0, #256	; 0x100
 8005f38:	f249 21cc 	movw	r1, #37580	; 0x92cc
 8005f3c:	f645 7205 	movw	r2, #24325	; 0x5f05
 8005f40:	9300      	str	r3, [sp, #0]
 8005f42:	9001      	str	r0, [sp, #4]
 8005f44:	f6c0 0100 	movt	r1, #2048	; 0x800
 8005f48:	4620      	mov	r0, r4
 8005f4a:	f6c0 0200 	movt	r2, #2048	; 0x800
 8005f4e:	2300      	movs	r3, #0
 8005f50:	f001 fc7a 	bl	8007848 <rt_thread_init>
 8005f54:	4620      	mov	r0, r4
 8005f56:	b004      	add	sp, #16
 8005f58:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005f5c:	f001 bdb4 	b.w	8007ac8 <rt_thread_startup>

08005f60 <rt_sem_init>:
 8005f60:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005f62:	4604      	mov	r4, r0
 8005f64:	b083      	sub	sp, #12
 8005f66:	460f      	mov	r7, r1
 8005f68:	4615      	mov	r5, r2
 8005f6a:	461e      	mov	r6, r3
 8005f6c:	b168      	cbz	r0, 8005f8a <rt_sem_init+0x2a>
 8005f6e:	4620      	mov	r0, r4
 8005f70:	2101      	movs	r1, #1
 8005f72:	463a      	mov	r2, r7
 8005f74:	f001 f94c 	bl	8007210 <rt_object_init>
 8005f78:	f104 0114 	add.w	r1, r4, #20
 8005f7c:	61a1      	str	r1, [r4, #24]
 8005f7e:	6161      	str	r1, [r4, #20]
 8005f80:	83a5      	strh	r5, [r4, #28]
 8005f82:	7266      	strb	r6, [r4, #9]
 8005f84:	2000      	movs	r0, #0
 8005f86:	b003      	add	sp, #12
 8005f88:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005f8a:	4806      	ldr	r0, [pc, #24]	; (8005fa4 <rt_sem_init+0x44>)
 8005f8c:	4906      	ldr	r1, [pc, #24]	; (8005fa8 <rt_sem_init+0x48>)
 8005f8e:	4a07      	ldr	r2, [pc, #28]	; (8005fac <rt_sem_init+0x4c>)
 8005f90:	23d8      	movs	r3, #216	; 0xd8
 8005f92:	f88d 4007 	strb.w	r4, [sp, #7]
 8005f96:	f000 fe21 	bl	8006bdc <rt_kprintf>
 8005f9a:	f89d 0007 	ldrb.w	r0, [sp, #7]
 8005f9e:	2800      	cmp	r0, #0
 8005fa0:	d0fb      	beq.n	8005f9a <rt_sem_init+0x3a>
 8005fa2:	e7e4      	b.n	8005f6e <rt_sem_init+0xe>
 8005fa4:	08008a48 	.word	0x08008a48
 8005fa8:	080092e4 	.word	0x080092e4
 8005fac:	08009338 	.word	0x08009338

08005fb0 <rt_sem_create>:
 8005fb0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005fb2:	b083      	sub	sp, #12
 8005fb4:	4605      	mov	r5, r0
 8005fb6:	460f      	mov	r7, r1
 8005fb8:	4616      	mov	r6, r2
 8005fba:	f7fa f8a7 	bl	800010c <rt_hw_interrupt_disable>
 8005fbe:	4604      	mov	r4, r0
 8005fc0:	f000 f940 	bl	8006244 <rt_interrupt_get_nest>
 8005fc4:	b978      	cbnz	r0, 8005fe6 <rt_sem_create+0x36>
 8005fc6:	4620      	mov	r0, r4
 8005fc8:	f7fa f8a4 	bl	8000114 <rt_hw_interrupt_enable>
 8005fcc:	2001      	movs	r0, #1
 8005fce:	4629      	mov	r1, r5
 8005fd0:	f001 f972 	bl	80072b8 <rt_object_allocate>
 8005fd4:	b128      	cbz	r0, 8005fe2 <rt_sem_create+0x32>
 8005fd6:	f100 0114 	add.w	r1, r0, #20
 8005fda:	6181      	str	r1, [r0, #24]
 8005fdc:	6141      	str	r1, [r0, #20]
 8005fde:	8387      	strh	r7, [r0, #28]
 8005fe0:	7246      	strb	r6, [r0, #9]
 8005fe2:	b003      	add	sp, #12
 8005fe4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005fe6:	480a      	ldr	r0, [pc, #40]	; (8006010 <rt_sem_create+0x60>)
 8005fe8:	490a      	ldr	r1, [pc, #40]	; (8006014 <rt_sem_create+0x64>)
 8005fea:	f000 fdf7 	bl	8006bdc <rt_kprintf>
 8005fee:	f04f 0e00 	mov.w	lr, #0
 8005ff2:	4809      	ldr	r0, [pc, #36]	; (8006018 <rt_sem_create+0x68>)
 8005ff4:	4909      	ldr	r1, [pc, #36]	; (800601c <rt_sem_create+0x6c>)
 8005ff6:	4a07      	ldr	r2, [pc, #28]	; (8006014 <rt_sem_create+0x64>)
 8005ff8:	f240 1311 	movw	r3, #273	; 0x111
 8005ffc:	f88d e007 	strb.w	lr, [sp, #7]
 8006000:	f000 fdec 	bl	8006bdc <rt_kprintf>
 8006004:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8006008:	2b00      	cmp	r3, #0
 800600a:	d0fb      	beq.n	8006004 <rt_sem_create+0x54>
 800600c:	e7db      	b.n	8005fc6 <rt_sem_create+0x16>
 800600e:	bf00      	nop
 8006010:	080092a8 	.word	0x080092a8
 8006014:	080092d4 	.word	0x080092d4
 8006018:	08008a48 	.word	0x08008a48
 800601c:	08009684 	.word	0x08009684

08006020 <rt_sem_take>:
 8006020:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006024:	b084      	sub	sp, #16
 8006026:	4604      	mov	r4, r0
 8006028:	9101      	str	r1, [sp, #4]
 800602a:	2800      	cmp	r0, #0
 800602c:	f000 8092 	beq.w	8006154 <rt_sem_take+0x134>
 8006030:	485b      	ldr	r0, [pc, #364]	; (80061a0 <rt_sem_take+0x180>)
 8006032:	6801      	ldr	r1, [r0, #0]
 8006034:	b109      	cbz	r1, 800603a <rt_sem_take+0x1a>
 8006036:	4620      	mov	r0, r4
 8006038:	4788      	blx	r1
 800603a:	f7fa f867 	bl	800010c <rt_hw_interrupt_disable>
 800603e:	8ba2      	ldrh	r2, [r4, #28]
 8006040:	4607      	mov	r7, r0
 8006042:	2a00      	cmp	r2, #0
 8006044:	d160      	bne.n	8006108 <rt_sem_take+0xe8>
 8006046:	9b01      	ldr	r3, [sp, #4]
 8006048:	2b00      	cmp	r3, #0
 800604a:	f000 80a3 	beq.w	8006194 <rt_sem_take+0x174>
 800604e:	f7fa f85d 	bl	800010c <rt_hw_interrupt_disable>
 8006052:	4606      	mov	r6, r0
 8006054:	f001 fc3c 	bl	80078d0 <rt_thread_self>
 8006058:	4605      	mov	r5, r0
 800605a:	2800      	cmp	r0, #0
 800605c:	f000 8088 	beq.w	8006170 <rt_sem_take+0x150>
 8006060:	f7fa f854 	bl	800010c <rt_hw_interrupt_disable>
 8006064:	4605      	mov	r5, r0
 8006066:	f000 f8ed 	bl	8006244 <rt_interrupt_get_nest>
 800606a:	2800      	cmp	r0, #0
 800606c:	d156      	bne.n	800611c <rt_sem_take+0xfc>
 800606e:	4628      	mov	r0, r5
 8006070:	f7fa f850 	bl	8000114 <rt_hw_interrupt_enable>
 8006074:	4630      	mov	r0, r6
 8006076:	f7fa f84d 	bl	8000114 <rt_hw_interrupt_enable>
 800607a:	f001 fc29 	bl	80078d0 <rt_thread_self>
 800607e:	2200      	movs	r2, #0
 8006080:	6302      	str	r2, [r0, #48]	; 0x30
 8006082:	f894 8009 	ldrb.w	r8, [r4, #9]
 8006086:	4605      	mov	r5, r0
 8006088:	f104 0614 	add.w	r6, r4, #20
 800608c:	f001 fc7a 	bl	8007984 <rt_thread_suspend>
 8006090:	f1b8 0f00 	cmp.w	r8, #0
 8006094:	d123      	bne.n	80060de <rt_sem_take+0xbe>
 8006096:	69a2      	ldr	r2, [r4, #24]
 8006098:	f105 0314 	add.w	r3, r5, #20
 800609c:	6013      	str	r3, [r2, #0]
 800609e:	61aa      	str	r2, [r5, #24]
 80060a0:	616e      	str	r6, [r5, #20]
 80060a2:	61a3      	str	r3, [r4, #24]
 80060a4:	9801      	ldr	r0, [sp, #4]
 80060a6:	2800      	cmp	r0, #0
 80060a8:	dd09      	ble.n	80060be <rt_sem_take+0x9e>
 80060aa:	f105 0644 	add.w	r6, r5, #68	; 0x44
 80060ae:	4630      	mov	r0, r6
 80060b0:	2100      	movs	r1, #0
 80060b2:	aa01      	add	r2, sp, #4
 80060b4:	f001 fe50 	bl	8007d58 <rt_timer_control>
 80060b8:	4630      	mov	r0, r6
 80060ba:	f001 fda3 	bl	8007c04 <rt_timer_start>
 80060be:	4638      	mov	r0, r7
 80060c0:	f7fa f828 	bl	8000114 <rt_hw_interrupt_enable>
 80060c4:	f001 f9f6 	bl	80074b4 <rt_schedule>
 80060c8:	6b28      	ldr	r0, [r5, #48]	; 0x30
 80060ca:	b928      	cbnz	r0, 80060d8 <rt_sem_take+0xb8>
 80060cc:	4a35      	ldr	r2, [pc, #212]	; (80061a4 <rt_sem_take+0x184>)
 80060ce:	6813      	ldr	r3, [r2, #0]
 80060d0:	b313      	cbz	r3, 8006118 <rt_sem_take+0xf8>
 80060d2:	4620      	mov	r0, r4
 80060d4:	4798      	blx	r3
 80060d6:	2000      	movs	r0, #0
 80060d8:	b004      	add	sp, #16
 80060da:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80060de:	f1b8 0f01 	cmp.w	r8, #1
 80060e2:	d1df      	bne.n	80060a4 <rt_sem_take+0x84>
 80060e4:	6963      	ldr	r3, [r4, #20]
 80060e6:	429e      	cmp	r6, r3
 80060e8:	d0d5      	beq.n	8006096 <rt_sem_take+0x76>
 80060ea:	f895 1035 	ldrb.w	r1, [r5, #53]	; 0x35
 80060ee:	f893 0021 	ldrb.w	r0, [r3, #33]	; 0x21
 80060f2:	4288      	cmp	r0, r1
 80060f4:	d904      	bls.n	8006100 <rt_sem_take+0xe0>
 80060f6:	e025      	b.n	8006144 <rt_sem_take+0x124>
 80060f8:	f893 2021 	ldrb.w	r2, [r3, #33]	; 0x21
 80060fc:	428a      	cmp	r2, r1
 80060fe:	d821      	bhi.n	8006144 <rt_sem_take+0x124>
 8006100:	681b      	ldr	r3, [r3, #0]
 8006102:	429e      	cmp	r6, r3
 8006104:	d1f8      	bne.n	80060f8 <rt_sem_take+0xd8>
 8006106:	e7c6      	b.n	8006096 <rt_sem_take+0x76>
 8006108:	1e51      	subs	r1, r2, #1
 800610a:	83a1      	strh	r1, [r4, #28]
 800610c:	f7fa f802 	bl	8000114 <rt_hw_interrupt_enable>
 8006110:	4a24      	ldr	r2, [pc, #144]	; (80061a4 <rt_sem_take+0x184>)
 8006112:	6813      	ldr	r3, [r2, #0]
 8006114:	2b00      	cmp	r3, #0
 8006116:	d1dc      	bne.n	80060d2 <rt_sem_take+0xb2>
 8006118:	4618      	mov	r0, r3
 800611a:	e7dd      	b.n	80060d8 <rt_sem_take+0xb8>
 800611c:	4822      	ldr	r0, [pc, #136]	; (80061a8 <rt_sem_take+0x188>)
 800611e:	4923      	ldr	r1, [pc, #140]	; (80061ac <rt_sem_take+0x18c>)
 8006120:	f000 fd5c 	bl	8006bdc <rt_kprintf>
 8006124:	f04f 0e00 	mov.w	lr, #0
 8006128:	4821      	ldr	r0, [pc, #132]	; (80061b0 <rt_sem_take+0x190>)
 800612a:	4922      	ldr	r1, [pc, #136]	; (80061b4 <rt_sem_take+0x194>)
 800612c:	4a1f      	ldr	r2, [pc, #124]	; (80061ac <rt_sem_take+0x18c>)
 800612e:	f240 136d 	movw	r3, #365	; 0x16d
 8006132:	f88d e00f 	strb.w	lr, [sp, #15]
 8006136:	f000 fd51 	bl	8006bdc <rt_kprintf>
 800613a:	f89d 100f 	ldrb.w	r1, [sp, #15]
 800613e:	2900      	cmp	r1, #0
 8006140:	d0fb      	beq.n	800613a <rt_sem_take+0x11a>
 8006142:	e794      	b.n	800606e <rt_sem_take+0x4e>
 8006144:	6858      	ldr	r0, [r3, #4]
 8006146:	f105 0114 	add.w	r1, r5, #20
 800614a:	6001      	str	r1, [r0, #0]
 800614c:	61a8      	str	r0, [r5, #24]
 800614e:	616b      	str	r3, [r5, #20]
 8006150:	6059      	str	r1, [r3, #4]
 8006152:	e7a7      	b.n	80060a4 <rt_sem_take+0x84>
 8006154:	4816      	ldr	r0, [pc, #88]	; (80061b0 <rt_sem_take+0x190>)
 8006156:	4918      	ldr	r1, [pc, #96]	; (80061b8 <rt_sem_take+0x198>)
 8006158:	4a14      	ldr	r2, [pc, #80]	; (80061ac <rt_sem_take+0x18c>)
 800615a:	f240 134d 	movw	r3, #333	; 0x14d
 800615e:	f88d 400d 	strb.w	r4, [sp, #13]
 8006162:	f000 fd3b 	bl	8006bdc <rt_kprintf>
 8006166:	f89d 300d 	ldrb.w	r3, [sp, #13]
 800616a:	2b00      	cmp	r3, #0
 800616c:	d0fb      	beq.n	8006166 <rt_sem_take+0x146>
 800616e:	e75f      	b.n	8006030 <rt_sem_take+0x10>
 8006170:	4812      	ldr	r0, [pc, #72]	; (80061bc <rt_sem_take+0x19c>)
 8006172:	490e      	ldr	r1, [pc, #56]	; (80061ac <rt_sem_take+0x18c>)
 8006174:	f000 fd32 	bl	8006bdc <rt_kprintf>
 8006178:	480d      	ldr	r0, [pc, #52]	; (80061b0 <rt_sem_take+0x190>)
 800617a:	490e      	ldr	r1, [pc, #56]	; (80061b4 <rt_sem_take+0x194>)
 800617c:	4a0b      	ldr	r2, [pc, #44]	; (80061ac <rt_sem_take+0x18c>)
 800617e:	f240 136d 	movw	r3, #365	; 0x16d
 8006182:	f88d 500e 	strb.w	r5, [sp, #14]
 8006186:	f000 fd29 	bl	8006bdc <rt_kprintf>
 800618a:	f89d 000e 	ldrb.w	r0, [sp, #14]
 800618e:	2800      	cmp	r0, #0
 8006190:	d0fb      	beq.n	800618a <rt_sem_take+0x16a>
 8006192:	e765      	b.n	8006060 <rt_sem_take+0x40>
 8006194:	f7f9 ffbe 	bl	8000114 <rt_hw_interrupt_enable>
 8006198:	f06f 0001 	mvn.w	r0, #1
 800619c:	e79c      	b.n	80060d8 <rt_sem_take+0xb8>
 800619e:	bf00      	nop
 80061a0:	20001a38 	.word	0x20001a38
 80061a4:	20001a34 	.word	0x20001a34
 80061a8:	080092a8 	.word	0x080092a8
 80061ac:	0800932c 	.word	0x0800932c
 80061b0:	08008a48 	.word	0x08008a48
 80061b4:	08009684 	.word	0x08009684
 80061b8:	080092e4 	.word	0x080092e4
 80061bc:	080092f4 	.word	0x080092f4

080061c0 <rt_sem_release>:
 80061c0:	b538      	push	{r3, r4, r5, lr}
 80061c2:	4b0f      	ldr	r3, [pc, #60]	; (8006200 <rt_sem_release+0x40>)
 80061c4:	4604      	mov	r4, r0
 80061c6:	6819      	ldr	r1, [r3, #0]
 80061c8:	b101      	cbz	r1, 80061cc <rt_sem_release+0xc>
 80061ca:	4788      	blx	r1
 80061cc:	f7f9 ff9e 	bl	800010c <rt_hw_interrupt_disable>
 80061d0:	4623      	mov	r3, r4
 80061d2:	f853 2f14 	ldr.w	r2, [r3, #20]!
 80061d6:	4605      	mov	r5, r0
 80061d8:	429a      	cmp	r2, r3
 80061da:	d00a      	beq.n	80061f2 <rt_sem_release+0x32>
 80061dc:	f1a2 0014 	sub.w	r0, r2, #20
 80061e0:	f001 fc3a 	bl	8007a58 <rt_thread_resume>
 80061e4:	4628      	mov	r0, r5
 80061e6:	f7f9 ff95 	bl	8000114 <rt_hw_interrupt_enable>
 80061ea:	f001 f963 	bl	80074b4 <rt_schedule>
 80061ee:	2000      	movs	r0, #0
 80061f0:	bd38      	pop	{r3, r4, r5, pc}
 80061f2:	8ba1      	ldrh	r1, [r4, #28]
 80061f4:	1c4b      	adds	r3, r1, #1
 80061f6:	83a3      	strh	r3, [r4, #28]
 80061f8:	f7f9 ff8c 	bl	8000114 <rt_hw_interrupt_enable>
 80061fc:	2000      	movs	r0, #0
 80061fe:	bd38      	pop	{r3, r4, r5, pc}
 8006200:	20001a30 	.word	0x20001a30

08006204 <rt_interrupt_enter>:
 8006204:	b508      	push	{r3, lr}
 8006206:	f7f9 ff81 	bl	800010c <rt_hw_interrupt_disable>
 800620a:	f641 232d 	movw	r3, #6701	; 0x1a2d
 800620e:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8006212:	781a      	ldrb	r2, [r3, #0]
 8006214:	1c51      	adds	r1, r2, #1
 8006216:	b2ca      	uxtb	r2, r1
 8006218:	701a      	strb	r2, [r3, #0]
 800621a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800621e:	f7f9 bf79 	b.w	8000114 <rt_hw_interrupt_enable>
 8006222:	bf00      	nop

08006224 <rt_interrupt_leave>:
 8006224:	b508      	push	{r3, lr}
 8006226:	f7f9 ff71 	bl	800010c <rt_hw_interrupt_disable>
 800622a:	f641 232d 	movw	r3, #6701	; 0x1a2d
 800622e:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8006232:	781a      	ldrb	r2, [r3, #0]
 8006234:	1e51      	subs	r1, r2, #1
 8006236:	b2ca      	uxtb	r2, r1
 8006238:	701a      	strb	r2, [r3, #0]
 800623a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800623e:	f7f9 bf69 	b.w	8000114 <rt_hw_interrupt_enable>
 8006242:	bf00      	nop

08006244 <rt_interrupt_get_nest>:
 8006244:	f641 232d 	movw	r3, #6701	; 0x1a2d
 8006248:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800624c:	7818      	ldrb	r0, [r3, #0]
 800624e:	4770      	bx	lr

08006250 <print_number>:
 8006250:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8006254:	b084      	sub	sp, #16
 8006256:	9e0e      	ldr	r6, [sp, #56]	; 0x38
 8006258:	4c99      	ldr	r4, [pc, #612]	; (80064c0 <print_number+0x270>)
 800625a:	4f9a      	ldr	r7, [pc, #616]	; (80064c4 <print_number+0x274>)
 800625c:	f016 0f40 	tst.w	r6, #64	; 0x40
 8006260:	bf18      	it	ne
 8006262:	4627      	movne	r7, r4
 8006264:	f016 0910 	ands.w	r9, r6, #16
 8006268:	bf18      	it	ne
 800626a:	f026 0601 	bicne.w	r6, r6, #1
 800626e:	f016 0f01 	tst.w	r6, #1
 8006272:	bf0c      	ite	eq
 8006274:	f04f 0c20 	moveq.w	ip, #32
 8006278:	f04f 0c30 	movne.w	ip, #48	; 0x30
 800627c:	f016 0802 	ands.w	r8, r6, #2
 8006280:	d007      	beq.n	8006292 <print_number+0x42>
 8006282:	2a00      	cmp	r2, #0
 8006284:	f2c0 80e3 	blt.w	800644e <print_number+0x1fe>
 8006288:	0774      	lsls	r4, r6, #29
 800628a:	f140 8108 	bpl.w	800649e <print_number+0x24e>
 800628e:	f04f 082b 	mov.w	r8, #43	; 0x2b
 8006292:	2a00      	cmp	r2, #0
 8006294:	f040 80de 	bne.w	8006454 <print_number+0x204>
 8006298:	2330      	movs	r3, #48	; 0x30
 800629a:	f88d 3000 	strb.w	r3, [sp]
 800629e:	2401      	movs	r4, #1
 80062a0:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80062a2:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 80062a4:	429c      	cmp	r4, r3
 80062a6:	bfa8      	it	ge
 80062a8:	4623      	movge	r3, r4
 80062aa:	f016 0f11 	tst.w	r6, #17
 80062ae:	ebc3 0707 	rsb	r7, r3, r7
 80062b2:	d126      	bne.n	8006302 <print_number+0xb2>
 80062b4:	f1b8 0f00 	cmp.w	r8, #0
 80062b8:	f040 80bd 	bne.w	8006436 <print_number+0x1e6>
 80062bc:	1e7d      	subs	r5, r7, #1
 80062be:	2f00      	cmp	r7, #0
 80062c0:	f340 80f7 	ble.w	80064b2 <print_number+0x262>
 80062c4:	43c6      	mvns	r6, r0
 80062c6:	19c7      	adds	r7, r0, r7
 80062c8:	19bd      	adds	r5, r7, r6
 80062ca:	2620      	movs	r6, #32
 80062cc:	4281      	cmp	r1, r0
 80062ce:	f005 0501 	and.w	r5, r5, #1
 80062d2:	d300      	bcc.n	80062d6 <print_number+0x86>
 80062d4:	7006      	strb	r6, [r0, #0]
 80062d6:	3001      	adds	r0, #1
 80062d8:	42b8      	cmp	r0, r7
 80062da:	d010      	beq.n	80062fe <print_number+0xae>
 80062dc:	b12d      	cbz	r5, 80062ea <print_number+0x9a>
 80062de:	4281      	cmp	r1, r0
 80062e0:	bf28      	it	cs
 80062e2:	7006      	strbcs	r6, [r0, #0]
 80062e4:	3001      	adds	r0, #1
 80062e6:	42b8      	cmp	r0, r7
 80062e8:	d009      	beq.n	80062fe <print_number+0xae>
 80062ea:	1c45      	adds	r5, r0, #1
 80062ec:	4281      	cmp	r1, r0
 80062ee:	bf28      	it	cs
 80062f0:	7006      	strbcs	r6, [r0, #0]
 80062f2:	42a9      	cmp	r1, r5
 80062f4:	d300      	bcc.n	80062f8 <print_number+0xa8>
 80062f6:	7046      	strb	r6, [r0, #1]
 80062f8:	1c68      	adds	r0, r5, #1
 80062fa:	42b8      	cmp	r0, r7
 80062fc:	d1f5      	bne.n	80062ea <print_number+0x9a>
 80062fe:	f04f 37ff 	mov.w	r7, #4294967295
 8006302:	f1b8 0f00 	cmp.w	r8, #0
 8006306:	f040 809b 	bne.w	8006440 <print_number+0x1f0>
 800630a:	f1b9 0f00 	cmp.w	r9, #0
 800630e:	d125      	bne.n	800635c <print_number+0x10c>
 8006310:	1e7d      	subs	r5, r7, #1
 8006312:	2f00      	cmp	r7, #0
 8006314:	f340 80cb 	ble.w	80064ae <print_number+0x25e>
 8006318:	43c5      	mvns	r5, r0
 800631a:	19c7      	adds	r7, r0, r7
 800631c:	197d      	adds	r5, r7, r5
 800631e:	4281      	cmp	r1, r0
 8006320:	f005 0501 	and.w	r5, r5, #1
 8006324:	d301      	bcc.n	800632a <print_number+0xda>
 8006326:	f880 c000 	strb.w	ip, [r0]
 800632a:	3001      	adds	r0, #1
 800632c:	42b8      	cmp	r0, r7
 800632e:	d013      	beq.n	8006358 <print_number+0x108>
 8006330:	b135      	cbz	r5, 8006340 <print_number+0xf0>
 8006332:	4281      	cmp	r1, r0
 8006334:	bf28      	it	cs
 8006336:	f880 c000 	strbcs.w	ip, [r0]
 800633a:	3001      	adds	r0, #1
 800633c:	42b8      	cmp	r0, r7
 800633e:	d00b      	beq.n	8006358 <print_number+0x108>
 8006340:	1c45      	adds	r5, r0, #1
 8006342:	4281      	cmp	r1, r0
 8006344:	bf28      	it	cs
 8006346:	f880 c000 	strbcs.w	ip, [r0]
 800634a:	42a9      	cmp	r1, r5
 800634c:	d301      	bcc.n	8006352 <print_number+0x102>
 800634e:	f880 c001 	strb.w	ip, [r0, #1]
 8006352:	1c68      	adds	r0, r5, #1
 8006354:	42b8      	cmp	r0, r7
 8006356:	d1f3      	bne.n	8006340 <print_number+0xf0>
 8006358:	f04f 37ff 	mov.w	r7, #4294967295
 800635c:	429c      	cmp	r4, r3
 800635e:	da1d      	bge.n	800639c <print_number+0x14c>
 8006360:	1b1d      	subs	r5, r3, r4
 8006362:	1944      	adds	r4, r0, r5
 8006364:	43c3      	mvns	r3, r0
 8006366:	18e3      	adds	r3, r4, r3
 8006368:	2530      	movs	r5, #48	; 0x30
 800636a:	4281      	cmp	r1, r0
 800636c:	f003 0301 	and.w	r3, r3, #1
 8006370:	f080 8093 	bcs.w	800649a <print_number+0x24a>
 8006374:	3001      	adds	r0, #1
 8006376:	42a0      	cmp	r0, r4
 8006378:	d010      	beq.n	800639c <print_number+0x14c>
 800637a:	b12b      	cbz	r3, 8006388 <print_number+0x138>
 800637c:	4281      	cmp	r1, r0
 800637e:	bf28      	it	cs
 8006380:	7005      	strbcs	r5, [r0, #0]
 8006382:	3001      	adds	r0, #1
 8006384:	42a0      	cmp	r0, r4
 8006386:	d009      	beq.n	800639c <print_number+0x14c>
 8006388:	1c43      	adds	r3, r0, #1
 800638a:	4281      	cmp	r1, r0
 800638c:	bf28      	it	cs
 800638e:	7005      	strbcs	r5, [r0, #0]
 8006390:	4299      	cmp	r1, r3
 8006392:	d300      	bcc.n	8006396 <print_number+0x146>
 8006394:	7045      	strb	r5, [r0, #1]
 8006396:	1c58      	adds	r0, r3, #1
 8006398:	42a0      	cmp	r0, r4
 800639a:	d1f5      	bne.n	8006388 <print_number+0x138>
 800639c:	4288      	cmp	r0, r1
 800639e:	f002 0401 	and.w	r4, r2, #1
 80063a2:	d802      	bhi.n	80063aa <print_number+0x15a>
 80063a4:	f81d 5002 	ldrb.w	r5, [sp, r2]
 80063a8:	7005      	strb	r5, [r0, #0]
 80063aa:	1c43      	adds	r3, r0, #1
 80063ac:	1e55      	subs	r5, r2, #1
 80063ae:	2a00      	cmp	r2, #0
 80063b0:	dd1b      	ble.n	80063ea <print_number+0x19a>
 80063b2:	b14c      	cbz	r4, 80063c8 <print_number+0x178>
 80063b4:	428b      	cmp	r3, r1
 80063b6:	bf9c      	itt	ls
 80063b8:	f81d 4005 	ldrbls.w	r4, [sp, r5]
 80063bc:	701c      	strbls	r4, [r3, #0]
 80063be:	3d01      	subs	r5, #1
 80063c0:	1c6c      	adds	r4, r5, #1
 80063c2:	3301      	adds	r3, #1
 80063c4:	2c00      	cmp	r4, #0
 80063c6:	dd10      	ble.n	80063ea <print_number+0x19a>
 80063c8:	1c5e      	adds	r6, r3, #1
 80063ca:	428b      	cmp	r3, r1
 80063cc:	f105 34ff 	add.w	r4, r5, #4294967295
 80063d0:	bf9c      	itt	ls
 80063d2:	f81d 5005 	ldrbls.w	r5, [sp, r5]
 80063d6:	701d      	strbls	r5, [r3, #0]
 80063d8:	428e      	cmp	r6, r1
 80063da:	d802      	bhi.n	80063e2 <print_number+0x192>
 80063dc:	f81d 5004 	ldrb.w	r5, [sp, r4]
 80063e0:	705d      	strb	r5, [r3, #1]
 80063e2:	1c73      	adds	r3, r6, #1
 80063e4:	1e65      	subs	r5, r4, #1
 80063e6:	2c00      	cmp	r4, #0
 80063e8:	dcee      	bgt.n	80063c8 <print_number+0x178>
 80063ea:	ea22 72e2 	bic.w	r2, r2, r2, asr #31
 80063ee:	1c53      	adds	r3, r2, #1
 80063f0:	2f00      	cmp	r7, #0
 80063f2:	4418      	add	r0, r3
 80063f4:	dd1b      	ble.n	800642e <print_number+0x1de>
 80063f6:	43c2      	mvns	r2, r0
 80063f8:	19c7      	adds	r7, r0, r7
 80063fa:	18bb      	adds	r3, r7, r2
 80063fc:	2220      	movs	r2, #32
 80063fe:	4288      	cmp	r0, r1
 8006400:	f003 0301 	and.w	r3, r3, #1
 8006404:	d947      	bls.n	8006496 <print_number+0x246>
 8006406:	3001      	adds	r0, #1
 8006408:	42b8      	cmp	r0, r7
 800640a:	d010      	beq.n	800642e <print_number+0x1de>
 800640c:	b12b      	cbz	r3, 800641a <print_number+0x1ca>
 800640e:	4288      	cmp	r0, r1
 8006410:	bf98      	it	ls
 8006412:	7002      	strbls	r2, [r0, #0]
 8006414:	3001      	adds	r0, #1
 8006416:	42b8      	cmp	r0, r7
 8006418:	d009      	beq.n	800642e <print_number+0x1de>
 800641a:	1c43      	adds	r3, r0, #1
 800641c:	4288      	cmp	r0, r1
 800641e:	bf98      	it	ls
 8006420:	7002      	strbls	r2, [r0, #0]
 8006422:	428b      	cmp	r3, r1
 8006424:	d800      	bhi.n	8006428 <print_number+0x1d8>
 8006426:	7042      	strb	r2, [r0, #1]
 8006428:	1c58      	adds	r0, r3, #1
 800642a:	42b8      	cmp	r0, r7
 800642c:	d1f5      	bne.n	800641a <print_number+0x1ca>
 800642e:	b004      	add	sp, #16
 8006430:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8006434:	4770      	bx	lr
 8006436:	2f00      	cmp	r7, #0
 8006438:	f107 37ff 	add.w	r7, r7, #4294967295
 800643c:	f73f af3e 	bgt.w	80062bc <print_number+0x6c>
 8006440:	4281      	cmp	r1, r0
 8006442:	bf24      	itt	cs
 8006444:	f880 8000 	strbcs.w	r8, [r0]
 8006448:	3f01      	subcs	r7, #1
 800644a:	3001      	adds	r0, #1
 800644c:	e75d      	b.n	800630a <print_number+0xba>
 800644e:	4252      	negs	r2, r2
 8006450:	f04f 082d 	mov.w	r8, #45	; 0x2d
 8006454:	f64c 4acd 	movw	sl, #52429	; 0xcccd
 8006458:	2400      	movs	r4, #0
 800645a:	f6cc 4acc 	movt	sl, #52428	; 0xcccc
 800645e:	e007      	b.n	8006470 <print_number+0x220>
 8006460:	f002 050f 	and.w	r5, r2, #15
 8006464:	5d7d      	ldrb	r5, [r7, r5]
 8006466:	0912      	lsrs	r2, r2, #4
 8006468:	f80d 5004 	strb.w	r5, [sp, r4]
 800646c:	3401      	adds	r4, #1
 800646e:	b182      	cbz	r2, 8006492 <print_number+0x242>
 8006470:	2b0a      	cmp	r3, #10
 8006472:	d1f5      	bne.n	8006460 <print_number+0x210>
 8006474:	fbaa 5b02 	umull	r5, fp, sl, r2
 8006478:	ea4f 0bdb 	mov.w	fp, fp, lsr #3
 800647c:	eb0b 058b 	add.w	r5, fp, fp, lsl #2
 8006480:	eba2 0545 	sub.w	r5, r2, r5, lsl #1
 8006484:	5d7d      	ldrb	r5, [r7, r5]
 8006486:	465a      	mov	r2, fp
 8006488:	f80d 5004 	strb.w	r5, [sp, r4]
 800648c:	3401      	adds	r4, #1
 800648e:	2a00      	cmp	r2, #0
 8006490:	d1ee      	bne.n	8006470 <print_number+0x220>
 8006492:	1e62      	subs	r2, r4, #1
 8006494:	e704      	b.n	80062a0 <print_number+0x50>
 8006496:	7002      	strb	r2, [r0, #0]
 8006498:	e7b5      	b.n	8006406 <print_number+0x1b6>
 800649a:	7005      	strb	r5, [r0, #0]
 800649c:	e76a      	b.n	8006374 <print_number+0x124>
 800649e:	f016 0f08 	tst.w	r6, #8
 80064a2:	bf0c      	ite	eq
 80064a4:	f04f 0800 	moveq.w	r8, #0
 80064a8:	f04f 0820 	movne.w	r8, #32
 80064ac:	e6f1      	b.n	8006292 <print_number+0x42>
 80064ae:	462f      	mov	r7, r5
 80064b0:	e754      	b.n	800635c <print_number+0x10c>
 80064b2:	462f      	mov	r7, r5
 80064b4:	f1b8 0f00 	cmp.w	r8, #0
 80064b8:	f43f af27 	beq.w	800630a <print_number+0xba>
 80064bc:	e7c0      	b.n	8006440 <print_number+0x1f0>
 80064be:	bf00      	nop
 80064c0:	08009358 	.word	0x08009358
 80064c4:	08009344 	.word	0x08009344

080064c8 <rt_set_errno>:
 80064c8:	b510      	push	{r4, lr}
 80064ca:	4604      	mov	r4, r0
 80064cc:	f7ff feba 	bl	8006244 <rt_interrupt_get_nest>
 80064d0:	b110      	cbz	r0, 80064d8 <rt_set_errno+0x10>
 80064d2:	4b04      	ldr	r3, [pc, #16]	; (80064e4 <rt_set_errno+0x1c>)
 80064d4:	601c      	str	r4, [r3, #0]
 80064d6:	bd10      	pop	{r4, pc}
 80064d8:	f001 f9fa 	bl	80078d0 <rt_thread_self>
 80064dc:	2800      	cmp	r0, #0
 80064de:	d0f8      	beq.n	80064d2 <rt_set_errno+0xa>
 80064e0:	6304      	str	r4, [r0, #48]	; 0x30
 80064e2:	bd10      	pop	{r4, pc}
 80064e4:	200008a0 	.word	0x200008a0

080064e8 <rt_memset>:
 80064e8:	2a03      	cmp	r2, #3
 80064ea:	b4f0      	push	{r4, r5, r6, r7}
 80064ec:	b2c9      	uxtb	r1, r1
 80064ee:	d96c      	bls.n	80065ca <rt_memset+0xe2>
 80064f0:	0783      	lsls	r3, r0, #30
 80064f2:	d16c      	bne.n	80065ce <rt_memset+0xe6>
 80064f4:	ea41 2401 	orr.w	r4, r1, r1, lsl #8
 80064f8:	2a0f      	cmp	r2, #15
 80064fa:	ea44 4404 	orr.w	r4, r4, r4, lsl #16
 80064fe:	d968      	bls.n	80065d2 <rt_memset+0xea>
 8006500:	f1a2 0510 	sub.w	r5, r2, #16
 8006504:	462e      	mov	r6, r5
 8006506:	2e0f      	cmp	r6, #15
 8006508:	6004      	str	r4, [r0, #0]
 800650a:	6044      	str	r4, [r0, #4]
 800650c:	6084      	str	r4, [r0, #8]
 800650e:	60c4      	str	r4, [r0, #12]
 8006510:	f3c5 1500 	ubfx	r5, r5, #4, #1
 8006514:	f100 0310 	add.w	r3, r0, #16
 8006518:	d916      	bls.n	8006548 <rt_memset+0x60>
 800651a:	b13d      	cbz	r5, 800652c <rt_memset+0x44>
 800651c:	3e10      	subs	r6, #16
 800651e:	601c      	str	r4, [r3, #0]
 8006520:	605c      	str	r4, [r3, #4]
 8006522:	609c      	str	r4, [r3, #8]
 8006524:	60dc      	str	r4, [r3, #12]
 8006526:	3310      	adds	r3, #16
 8006528:	2e0f      	cmp	r6, #15
 800652a:	d90d      	bls.n	8006548 <rt_memset+0x60>
 800652c:	3e20      	subs	r6, #32
 800652e:	f103 0510 	add.w	r5, r3, #16
 8006532:	601c      	str	r4, [r3, #0]
 8006534:	605c      	str	r4, [r3, #4]
 8006536:	609c      	str	r4, [r3, #8]
 8006538:	60dc      	str	r4, [r3, #12]
 800653a:	611c      	str	r4, [r3, #16]
 800653c:	615c      	str	r4, [r3, #20]
 800653e:	619c      	str	r4, [r3, #24]
 8006540:	61dc      	str	r4, [r3, #28]
 8006542:	3320      	adds	r3, #32
 8006544:	2e0f      	cmp	r6, #15
 8006546:	d8f1      	bhi.n	800652c <rt_memset+0x44>
 8006548:	f1a2 0310 	sub.w	r3, r2, #16
 800654c:	f023 030f 	bic.w	r3, r3, #15
 8006550:	f002 020f 	and.w	r2, r2, #15
 8006554:	3310      	adds	r3, #16
 8006556:	2a03      	cmp	r2, #3
 8006558:	4403      	add	r3, r0
 800655a:	d91d      	bls.n	8006598 <rt_memset+0xb0>
 800655c:	1f17      	subs	r7, r2, #4
 800655e:	463e      	mov	r6, r7
 8006560:	461d      	mov	r5, r3
 8006562:	2e03      	cmp	r6, #3
 8006564:	f845 4b04 	str.w	r4, [r5], #4
 8006568:	f3c7 0780 	ubfx	r7, r7, #2, #1
 800656c:	d90d      	bls.n	800658a <rt_memset+0xa2>
 800656e:	b127      	cbz	r7, 800657a <rt_memset+0x92>
 8006570:	3e04      	subs	r6, #4
 8006572:	2e03      	cmp	r6, #3
 8006574:	f845 4b04 	str.w	r4, [r5], #4
 8006578:	d907      	bls.n	800658a <rt_memset+0xa2>
 800657a:	462f      	mov	r7, r5
 800657c:	f847 4b04 	str.w	r4, [r7], #4
 8006580:	3e08      	subs	r6, #8
 8006582:	606c      	str	r4, [r5, #4]
 8006584:	1d3d      	adds	r5, r7, #4
 8006586:	2e03      	cmp	r6, #3
 8006588:	d8f7      	bhi.n	800657a <rt_memset+0x92>
 800658a:	1f14      	subs	r4, r2, #4
 800658c:	f024 0403 	bic.w	r4, r4, #3
 8006590:	3404      	adds	r4, #4
 8006592:	f002 0203 	and.w	r2, r2, #3
 8006596:	191b      	adds	r3, r3, r4
 8006598:	b1aa      	cbz	r2, 80065c6 <rt_memset+0xde>
 800659a:	b2cc      	uxtb	r4, r1
 800659c:	189a      	adds	r2, r3, r2
 800659e:	43d9      	mvns	r1, r3
 80065a0:	f803 4b01 	strb.w	r4, [r3], #1
 80065a4:	1851      	adds	r1, r2, r1
 80065a6:	4293      	cmp	r3, r2
 80065a8:	f001 0101 	and.w	r1, r1, #1
 80065ac:	d00b      	beq.n	80065c6 <rt_memset+0xde>
 80065ae:	b119      	cbz	r1, 80065b8 <rt_memset+0xd0>
 80065b0:	f803 4b01 	strb.w	r4, [r3], #1
 80065b4:	4293      	cmp	r3, r2
 80065b6:	d006      	beq.n	80065c6 <rt_memset+0xde>
 80065b8:	4619      	mov	r1, r3
 80065ba:	f801 4b01 	strb.w	r4, [r1], #1
 80065be:	705c      	strb	r4, [r3, #1]
 80065c0:	1c4b      	adds	r3, r1, #1
 80065c2:	4293      	cmp	r3, r2
 80065c4:	d1f8      	bne.n	80065b8 <rt_memset+0xd0>
 80065c6:	bcf0      	pop	{r4, r5, r6, r7}
 80065c8:	4770      	bx	lr
 80065ca:	4603      	mov	r3, r0
 80065cc:	e7e4      	b.n	8006598 <rt_memset+0xb0>
 80065ce:	4603      	mov	r3, r0
 80065d0:	e7e3      	b.n	800659a <rt_memset+0xb2>
 80065d2:	4603      	mov	r3, r0
 80065d4:	e7c2      	b.n	800655c <rt_memset+0x74>
 80065d6:	bf00      	nop

080065d8 <rt_strncpy>:
 80065d8:	b4f0      	push	{r4, r5, r6, r7}
 80065da:	2a00      	cmp	r2, #0
 80065dc:	d03b      	beq.n	8006656 <rt_strncpy+0x7e>
 80065de:	780c      	ldrb	r4, [r1, #0]
 80065e0:	4603      	mov	r3, r0
 80065e2:	1e56      	subs	r6, r2, #1
 80065e4:	f803 4b01 	strb.w	r4, [r3], #1
 80065e8:	f006 0701 	and.w	r7, r6, #1
 80065ec:	461d      	mov	r5, r3
 80065ee:	b1cc      	cbz	r4, 8006624 <rt_strncpy+0x4c>
 80065f0:	4632      	mov	r2, r6
 80065f2:	b386      	cbz	r6, 8006656 <rt_strncpy+0x7e>
 80065f4:	b13f      	cbz	r7, 8006606 <rt_strncpy+0x2e>
 80065f6:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 80065fa:	f803 4b01 	strb.w	r4, [r3], #1
 80065fe:	461d      	mov	r5, r3
 8006600:	b184      	cbz	r4, 8006624 <rt_strncpy+0x4c>
 8006602:	3a01      	subs	r2, #1
 8006604:	d027      	beq.n	8006656 <rt_strncpy+0x7e>
 8006606:	784e      	ldrb	r6, [r1, #1]
 8006608:	461c      	mov	r4, r3
 800660a:	f804 6b01 	strb.w	r6, [r4], #1
 800660e:	3101      	adds	r1, #1
 8006610:	4625      	mov	r5, r4
 8006612:	b13e      	cbz	r6, 8006624 <rt_strncpy+0x4c>
 8006614:	784e      	ldrb	r6, [r1, #1]
 8006616:	3a01      	subs	r2, #1
 8006618:	705e      	strb	r6, [r3, #1]
 800661a:	1c63      	adds	r3, r4, #1
 800661c:	3101      	adds	r1, #1
 800661e:	461d      	mov	r5, r3
 8006620:	2e00      	cmp	r6, #0
 8006622:	d1ee      	bne.n	8006602 <rt_strncpy+0x2a>
 8006624:	2a01      	cmp	r2, #1
 8006626:	d016      	beq.n	8006656 <rt_strncpy+0x7e>
 8006628:	3a01      	subs	r2, #1
 800662a:	2100      	movs	r1, #0
 800662c:	18aa      	adds	r2, r5, r2
 800662e:	43eb      	mvns	r3, r5
 8006630:	f805 1b01 	strb.w	r1, [r5], #1
 8006634:	18d3      	adds	r3, r2, r3
 8006636:	4295      	cmp	r5, r2
 8006638:	f003 0301 	and.w	r3, r3, #1
 800663c:	d00b      	beq.n	8006656 <rt_strncpy+0x7e>
 800663e:	b11b      	cbz	r3, 8006648 <rt_strncpy+0x70>
 8006640:	f805 1b01 	strb.w	r1, [r5], #1
 8006644:	4295      	cmp	r5, r2
 8006646:	d006      	beq.n	8006656 <rt_strncpy+0x7e>
 8006648:	462b      	mov	r3, r5
 800664a:	f803 1b01 	strb.w	r1, [r3], #1
 800664e:	7069      	strb	r1, [r5, #1]
 8006650:	1c5d      	adds	r5, r3, #1
 8006652:	4295      	cmp	r5, r2
 8006654:	d1f8      	bne.n	8006648 <rt_strncpy+0x70>
 8006656:	bcf0      	pop	{r4, r5, r6, r7}
 8006658:	4770      	bx	lr
 800665a:	bf00      	nop

0800665c <rt_strncmp>:
 800665c:	b430      	push	{r4, r5}
 800665e:	2a00      	cmp	r2, #0
 8006660:	d027      	beq.n	80066b2 <rt_strncmp+0x56>
 8006662:	7803      	ldrb	r3, [r0, #0]
 8006664:	780c      	ldrb	r4, [r1, #0]
 8006666:	1b1c      	subs	r4, r3, r4
 8006668:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 800666c:	bf18      	it	ne
 800666e:	b260      	sxtbne	r0, r4
 8006670:	d11d      	bne.n	80066ae <rt_strncmp+0x52>
 8006672:	b1f3      	cbz	r3, 80066b2 <rt_strncmp+0x56>
 8006674:	1e43      	subs	r3, r0, #1
 8006676:	189a      	adds	r2, r3, r2
 8006678:	1a13      	subs	r3, r2, r0
 800667a:	07db      	lsls	r3, r3, #31
 800667c:	d501      	bpl.n	8006682 <rt_strncmp+0x26>
 800667e:	e00d      	b.n	800669c <rt_strncmp+0x40>
 8006680:	b1bc      	cbz	r4, 80066b2 <rt_strncmp+0x56>
 8006682:	4290      	cmp	r0, r2
 8006684:	4603      	mov	r3, r0
 8006686:	d014      	beq.n	80066b2 <rt_strncmp+0x56>
 8006688:	f813 4f01 	ldrb.w	r4, [r3, #1]!
 800668c:	f811 5f01 	ldrb.w	r5, [r1, #1]!
 8006690:	4618      	mov	r0, r3
 8006692:	1b63      	subs	r3, r4, r5
 8006694:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
 8006698:	d108      	bne.n	80066ac <rt_strncmp+0x50>
 800669a:	b154      	cbz	r4, 80066b2 <rt_strncmp+0x56>
 800669c:	f810 4f01 	ldrb.w	r4, [r0, #1]!
 80066a0:	f811 3f01 	ldrb.w	r3, [r1, #1]!
 80066a4:	1ae3      	subs	r3, r4, r3
 80066a6:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
 80066aa:	d0e9      	beq.n	8006680 <rt_strncmp+0x24>
 80066ac:	b258      	sxtb	r0, r3
 80066ae:	bc30      	pop	{r4, r5}
 80066b0:	4770      	bx	lr
 80066b2:	2000      	movs	r0, #0
 80066b4:	e7fb      	b.n	80066ae <rt_strncmp+0x52>
 80066b6:	bf00      	nop

080066b8 <rt_strlen>:
 80066b8:	7802      	ldrb	r2, [r0, #0]
 80066ba:	b13a      	cbz	r2, 80066cc <rt_strlen+0x14>
 80066bc:	1c43      	adds	r3, r0, #1
 80066be:	7819      	ldrb	r1, [r3, #0]
 80066c0:	461a      	mov	r2, r3
 80066c2:	3301      	adds	r3, #1
 80066c4:	2900      	cmp	r1, #0
 80066c6:	d1fa      	bne.n	80066be <rt_strlen+0x6>
 80066c8:	1a10      	subs	r0, r2, r0
 80066ca:	4770      	bx	lr
 80066cc:	4610      	mov	r0, r2
 80066ce:	4770      	bx	lr

080066d0 <rt_vsnprintf>:
 80066d0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80066d4:	3901      	subs	r1, #1
 80066d6:	4614      	mov	r4, r2
 80066d8:	7812      	ldrb	r2, [r2, #0]
 80066da:	4681      	mov	r9, r0
 80066dc:	1840      	adds	r0, r0, r1
 80066de:	bf34      	ite	cc
 80066e0:	4607      	movcc	r7, r0
 80066e2:	f04f 37ff 	movcs.w	r7, #4294967295
 80066e6:	b085      	sub	sp, #20
 80066e8:	469a      	mov	sl, r3
 80066ea:	4648      	mov	r0, r9
 80066ec:	2a00      	cmp	r2, #0
 80066ee:	f000 80d7 	beq.w	80068a0 <rt_vsnprintf+0x1d0>
 80066f2:	f04f 0825 	mov.w	r8, #37	; 0x25
 80066f6:	e008      	b.n	800670a <rt_vsnprintf+0x3a>
 80066f8:	4287      	cmp	r7, r0
 80066fa:	d300      	bcc.n	80066fe <rt_vsnprintf+0x2e>
 80066fc:	7002      	strb	r2, [r0, #0]
 80066fe:	7862      	ldrb	r2, [r4, #1]
 8006700:	3001      	adds	r0, #1
 8006702:	3401      	adds	r4, #1
 8006704:	2a00      	cmp	r2, #0
 8006706:	f000 80c9 	beq.w	800689c <rt_vsnprintf+0x1cc>
 800670a:	2a25      	cmp	r2, #37	; 0x25
 800670c:	d1f4      	bne.n	80066f8 <rt_vsnprintf+0x28>
 800670e:	2500      	movs	r5, #0
 8006710:	e00a      	b.n	8006728 <rt_vsnprintf+0x58>
 8006712:	2b2b      	cmp	r3, #43	; 0x2b
 8006714:	d00f      	beq.n	8006736 <rt_vsnprintf+0x66>
 8006716:	2b20      	cmp	r3, #32
 8006718:	d010      	beq.n	800673c <rt_vsnprintf+0x6c>
 800671a:	2b23      	cmp	r3, #35	; 0x23
 800671c:	d011      	beq.n	8006742 <rt_vsnprintf+0x72>
 800671e:	2b30      	cmp	r3, #48	; 0x30
 8006720:	d112      	bne.n	8006748 <rt_vsnprintf+0x78>
 8006722:	f045 0501 	orr.w	r5, r5, #1
 8006726:	4614      	mov	r4, r2
 8006728:	7863      	ldrb	r3, [r4, #1]
 800672a:	1c62      	adds	r2, r4, #1
 800672c:	2b2d      	cmp	r3, #45	; 0x2d
 800672e:	d1f0      	bne.n	8006712 <rt_vsnprintf+0x42>
 8006730:	f045 0510 	orr.w	r5, r5, #16
 8006734:	e7f7      	b.n	8006726 <rt_vsnprintf+0x56>
 8006736:	f045 0504 	orr.w	r5, r5, #4
 800673a:	e7f4      	b.n	8006726 <rt_vsnprintf+0x56>
 800673c:	f045 0508 	orr.w	r5, r5, #8
 8006740:	e7f1      	b.n	8006726 <rt_vsnprintf+0x56>
 8006742:	f045 0520 	orr.w	r5, r5, #32
 8006746:	e7ee      	b.n	8006726 <rt_vsnprintf+0x56>
 8006748:	f1a3 0130 	sub.w	r1, r3, #48	; 0x30
 800674c:	2909      	cmp	r1, #9
 800674e:	461e      	mov	r6, r3
 8006750:	d872      	bhi.n	8006838 <rt_vsnprintf+0x168>
 8006752:	2100      	movs	r1, #0
 8006754:	f812 3f01 	ldrb.w	r3, [r2, #1]!
 8006758:	eb01 0481 	add.w	r4, r1, r1, lsl #2
 800675c:	eb06 0144 	add.w	r1, r6, r4, lsl #1
 8006760:	f1a3 0430 	sub.w	r4, r3, #48	; 0x30
 8006764:	3930      	subs	r1, #48	; 0x30
 8006766:	2c09      	cmp	r4, #9
 8006768:	461e      	mov	r6, r3
 800676a:	d9f3      	bls.n	8006754 <rt_vsnprintf+0x84>
 800676c:	2b2e      	cmp	r3, #46	; 0x2e
 800676e:	4614      	mov	r4, r2
 8006770:	d06a      	beq.n	8006848 <rt_vsnprintf+0x178>
 8006772:	f04f 36ff 	mov.w	r6, #4294967295
 8006776:	2b68      	cmp	r3, #104	; 0x68
 8006778:	f000 8081 	beq.w	800687e <rt_vsnprintf+0x1ae>
 800677c:	2b6c      	cmp	r3, #108	; 0x6c
 800677e:	d07e      	beq.n	800687e <rt_vsnprintf+0x1ae>
 8006780:	f04f 0c00 	mov.w	ip, #0
 8006784:	f1a3 0225 	sub.w	r2, r3, #37	; 0x25
 8006788:	2a53      	cmp	r2, #83	; 0x53
 800678a:	d87d      	bhi.n	8006888 <rt_vsnprintf+0x1b8>
 800678c:	e8df f012 	tbh	[pc, r2, lsl #1]
 8006790:	007c01b5 	.word	0x007c01b5
 8006794:	007c007c 	.word	0x007c007c
 8006798:	007c007c 	.word	0x007c007c
 800679c:	007c007c 	.word	0x007c007c
 80067a0:	007c007c 	.word	0x007c007c
 80067a4:	007c007c 	.word	0x007c007c
 80067a8:	007c007c 	.word	0x007c007c
 80067ac:	007c007c 	.word	0x007c007c
 80067b0:	007c007c 	.word	0x007c007c
 80067b4:	007c007c 	.word	0x007c007c
 80067b8:	007c007c 	.word	0x007c007c
 80067bc:	007c007c 	.word	0x007c007c
 80067c0:	007c007c 	.word	0x007c007c
 80067c4:	007c007c 	.word	0x007c007c
 80067c8:	007c007c 	.word	0x007c007c
 80067cc:	007c007c 	.word	0x007c007c
 80067d0:	007c007c 	.word	0x007c007c
 80067d4:	007c007c 	.word	0x007c007c
 80067d8:	007c007c 	.word	0x007c007c
 80067dc:	007c007c 	.word	0x007c007c
 80067e0:	007c007c 	.word	0x007c007c
 80067e4:	007c007c 	.word	0x007c007c
 80067e8:	007c007c 	.word	0x007c007c
 80067ec:	007c007c 	.word	0x007c007c
 80067f0:	007c007c 	.word	0x007c007c
 80067f4:	01b1007c 	.word	0x01b1007c
 80067f8:	007c007c 	.word	0x007c007c
 80067fc:	007c007c 	.word	0x007c007c
 8006800:	007c007c 	.word	0x007c007c
 8006804:	007c007c 	.word	0x007c007c
 8006808:	007c007c 	.word	0x007c007c
 800680c:	0159015d 	.word	0x0159015d
 8006810:	007c007c 	.word	0x007c007c
 8006814:	007c007c 	.word	0x007c007c
 8006818:	007c0159 	.word	0x007c0159
 800681c:	007c007c 	.word	0x007c007c
 8006820:	007c007c 	.word	0x007c007c
 8006824:	01450157 	.word	0x01450157
 8006828:	007c007c 	.word	0x007c007c
 800682c:	007c00ad 	.word	0x007c00ad
 8006830:	007c00ab 	.word	0x007c00ab
 8006834:	0097007c 	.word	0x0097007c
 8006838:	2b2a      	cmp	r3, #42	; 0x2a
 800683a:	f000 8163 	beq.w	8006b04 <rt_vsnprintf+0x434>
 800683e:	2b2e      	cmp	r3, #46	; 0x2e
 8006840:	4614      	mov	r4, r2
 8006842:	f04f 31ff 	mov.w	r1, #4294967295
 8006846:	d194      	bne.n	8006772 <rt_vsnprintf+0xa2>
 8006848:	7862      	ldrb	r2, [r4, #1]
 800684a:	f104 0c01 	add.w	ip, r4, #1
 800684e:	f1a2 0630 	sub.w	r6, r2, #48	; 0x30
 8006852:	2e09      	cmp	r6, #9
 8006854:	4613      	mov	r3, r2
 8006856:	d82c      	bhi.n	80068b2 <rt_vsnprintf+0x1e2>
 8006858:	2600      	movs	r6, #0
 800685a:	eb06 0486 	add.w	r4, r6, r6, lsl #2
 800685e:	eb02 0644 	add.w	r6, r2, r4, lsl #1
 8006862:	f81c 2f01 	ldrb.w	r2, [ip, #1]!
 8006866:	3e30      	subs	r6, #48	; 0x30
 8006868:	f1a2 0430 	sub.w	r4, r2, #48	; 0x30
 800686c:	2c09      	cmp	r4, #9
 800686e:	4613      	mov	r3, r2
 8006870:	d9f3      	bls.n	800685a <rt_vsnprintf+0x18a>
 8006872:	2e00      	cmp	r6, #0
 8006874:	4664      	mov	r4, ip
 8006876:	f6bf af7e 	bge.w	8006776 <rt_vsnprintf+0xa6>
 800687a:	2600      	movs	r6, #0
 800687c:	e77b      	b.n	8006776 <rt_vsnprintf+0xa6>
 800687e:	7862      	ldrb	r2, [r4, #1]
 8006880:	469c      	mov	ip, r3
 8006882:	3401      	adds	r4, #1
 8006884:	4613      	mov	r3, r2
 8006886:	e77d      	b.n	8006784 <rt_vsnprintf+0xb4>
 8006888:	4287      	cmp	r7, r0
 800688a:	bf24      	itt	cs
 800688c:	f880 8000 	strbcs.w	r8, [r0]
 8006890:	7823      	ldrbcs	r3, [r4, #0]
 8006892:	1c42      	adds	r2, r0, #1
 8006894:	2b00      	cmp	r3, #0
 8006896:	f040 8150 	bne.w	8006b3a <rt_vsnprintf+0x46a>
 800689a:	4610      	mov	r0, r2
 800689c:	ebc9 0200 	rsb	r2, r9, r0
 80068a0:	2300      	movs	r3, #0
 80068a2:	4287      	cmp	r7, r0
 80068a4:	bf2c      	ite	cs
 80068a6:	7003      	strbcs	r3, [r0, #0]
 80068a8:	703b      	strbcc	r3, [r7, #0]
 80068aa:	4610      	mov	r0, r2
 80068ac:	b005      	add	sp, #20
 80068ae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80068b2:	2a2a      	cmp	r2, #42	; 0x2a
 80068b4:	f000 8150 	beq.w	8006b58 <rt_vsnprintf+0x488>
 80068b8:	4664      	mov	r4, ip
 80068ba:	2600      	movs	r6, #0
 80068bc:	e75b      	b.n	8006776 <rt_vsnprintf+0xa6>
 80068be:	2310      	movs	r3, #16
 80068c0:	f1bc 0f6c 	cmp.w	ip, #108	; 0x6c
 80068c4:	d003      	beq.n	80068ce <rt_vsnprintf+0x1fe>
 80068c6:	f1bc 0f68 	cmp.w	ip, #104	; 0x68
 80068ca:	f000 8128 	beq.w	8006b1e <rt_vsnprintf+0x44e>
 80068ce:	f8da 2000 	ldr.w	r2, [sl]
 80068d2:	f10a 0a04 	add.w	sl, sl, #4
 80068d6:	e88d 0042 	stmia.w	sp, {r1, r6}
 80068da:	9502      	str	r5, [sp, #8]
 80068dc:	4639      	mov	r1, r7
 80068de:	f7ff fcb7 	bl	8006250 <print_number>
 80068e2:	7862      	ldrb	r2, [r4, #1]
 80068e4:	e70d      	b.n	8006702 <rt_vsnprintf+0x32>
 80068e6:	230a      	movs	r3, #10
 80068e8:	e7ea      	b.n	80068c0 <rt_vsnprintf+0x1f0>
 80068ea:	f8da 3000 	ldr.w	r3, [sl]
 80068ee:	f249 3b6c 	movw	fp, #37740	; 0x936c
 80068f2:	f6c0 0b00 	movt	fp, #2048	; 0x800
 80068f6:	2b00      	cmp	r3, #0
 80068f8:	bf18      	it	ne
 80068fa:	469b      	movne	fp, r3
 80068fc:	f89b 2000 	ldrb.w	r2, [fp]
 8006900:	f10a 0a04 	add.w	sl, sl, #4
 8006904:	b152      	cbz	r2, 800691c <rt_vsnprintf+0x24c>
 8006906:	f10b 0301 	add.w	r3, fp, #1
 800690a:	468c      	mov	ip, r1
 800690c:	7819      	ldrb	r1, [r3, #0]
 800690e:	461a      	mov	r2, r3
 8006910:	3301      	adds	r3, #1
 8006912:	2900      	cmp	r1, #0
 8006914:	d1fa      	bne.n	800690c <rt_vsnprintf+0x23c>
 8006916:	4661      	mov	r1, ip
 8006918:	ebcb 0202 	rsb	r2, fp, r2
 800691c:	2e00      	cmp	r6, #0
 800691e:	dd02      	ble.n	8006926 <rt_vsnprintf+0x256>
 8006920:	42b2      	cmp	r2, r6
 8006922:	bfa8      	it	ge
 8006924:	4632      	movge	r2, r6
 8006926:	f005 0310 	and.w	r3, r5, #16
 800692a:	b2db      	uxtb	r3, r3
 800692c:	bb33      	cbnz	r3, 800697c <rt_vsnprintf+0x2ac>
 800692e:	1e4b      	subs	r3, r1, #1
 8006930:	428a      	cmp	r2, r1
 8006932:	f280 8121 	bge.w	8006b78 <rt_vsnprintf+0x4a8>
 8006936:	1a8d      	subs	r5, r1, r2
 8006938:	43c6      	mvns	r6, r0
 800693a:	1945      	adds	r5, r0, r5
 800693c:	19ab      	adds	r3, r5, r6
 800693e:	2620      	movs	r6, #32
 8006940:	4287      	cmp	r7, r0
 8006942:	f003 0301 	and.w	r3, r3, #1
 8006946:	d300      	bcc.n	800694a <rt_vsnprintf+0x27a>
 8006948:	7006      	strb	r6, [r0, #0]
 800694a:	3001      	adds	r0, #1
 800694c:	42a8      	cmp	r0, r5
 800694e:	d010      	beq.n	8006972 <rt_vsnprintf+0x2a2>
 8006950:	b12b      	cbz	r3, 800695e <rt_vsnprintf+0x28e>
 8006952:	4287      	cmp	r7, r0
 8006954:	bf28      	it	cs
 8006956:	7006      	strbcs	r6, [r0, #0]
 8006958:	3001      	adds	r0, #1
 800695a:	42a8      	cmp	r0, r5
 800695c:	d009      	beq.n	8006972 <rt_vsnprintf+0x2a2>
 800695e:	1c43      	adds	r3, r0, #1
 8006960:	4287      	cmp	r7, r0
 8006962:	bf28      	it	cs
 8006964:	7006      	strbcs	r6, [r0, #0]
 8006966:	429f      	cmp	r7, r3
 8006968:	d300      	bcc.n	800696c <rt_vsnprintf+0x29c>
 800696a:	7046      	strb	r6, [r0, #1]
 800696c:	1c58      	adds	r0, r3, #1
 800696e:	42a8      	cmp	r0, r5
 8006970:	d1f5      	bne.n	800695e <rt_vsnprintf+0x28e>
 8006972:	f1c1 0301 	rsb	r3, r1, #1
 8006976:	189b      	adds	r3, r3, r2
 8006978:	3902      	subs	r1, #2
 800697a:	18c9      	adds	r1, r1, r3
 800697c:	2a00      	cmp	r2, #0
 800697e:	dd29      	ble.n	80069d4 <rt_vsnprintf+0x304>
 8006980:	43c5      	mvns	r5, r0
 8006982:	eb00 0c02 	add.w	ip, r0, r2
 8006986:	4465      	add	r5, ip
 8006988:	4287      	cmp	r7, r0
 800698a:	f10b 0301 	add.w	r3, fp, #1
 800698e:	f005 0501 	and.w	r5, r5, #1
 8006992:	f080 80dd 	bcs.w	8006b50 <rt_vsnprintf+0x480>
 8006996:	3001      	adds	r0, #1
 8006998:	3301      	adds	r3, #1
 800699a:	4560      	cmp	r0, ip
 800699c:	d01a      	beq.n	80069d4 <rt_vsnprintf+0x304>
 800699e:	b145      	cbz	r5, 80069b2 <rt_vsnprintf+0x2e2>
 80069a0:	4287      	cmp	r7, r0
 80069a2:	bf24      	itt	cs
 80069a4:	f813 5c01 	ldrbcs.w	r5, [r3, #-1]
 80069a8:	7005      	strbcs	r5, [r0, #0]
 80069aa:	3001      	adds	r0, #1
 80069ac:	3301      	adds	r3, #1
 80069ae:	4560      	cmp	r0, ip
 80069b0:	d010      	beq.n	80069d4 <rt_vsnprintf+0x304>
 80069b2:	1c45      	adds	r5, r0, #1
 80069b4:	4287      	cmp	r7, r0
 80069b6:	f103 0601 	add.w	r6, r3, #1
 80069ba:	bf24      	itt	cs
 80069bc:	f813 3c01 	ldrbcs.w	r3, [r3, #-1]
 80069c0:	7003      	strbcs	r3, [r0, #0]
 80069c2:	42af      	cmp	r7, r5
 80069c4:	d302      	bcc.n	80069cc <rt_vsnprintf+0x2fc>
 80069c6:	f816 3c01 	ldrb.w	r3, [r6, #-1]
 80069ca:	7043      	strb	r3, [r0, #1]
 80069cc:	1c68      	adds	r0, r5, #1
 80069ce:	1c73      	adds	r3, r6, #1
 80069d0:	4560      	cmp	r0, ip
 80069d2:	d1ee      	bne.n	80069b2 <rt_vsnprintf+0x2e2>
 80069d4:	428a      	cmp	r2, r1
 80069d6:	da84      	bge.n	80068e2 <rt_vsnprintf+0x212>
 80069d8:	1a8a      	subs	r2, r1, r2
 80069da:	1882      	adds	r2, r0, r2
 80069dc:	43c1      	mvns	r1, r0
 80069de:	1853      	adds	r3, r2, r1
 80069e0:	2120      	movs	r1, #32
 80069e2:	4287      	cmp	r7, r0
 80069e4:	f003 0301 	and.w	r3, r3, #1
 80069e8:	f080 80ad 	bcs.w	8006b46 <rt_vsnprintf+0x476>
 80069ec:	3001      	adds	r0, #1
 80069ee:	4290      	cmp	r0, r2
 80069f0:	f43f af77 	beq.w	80068e2 <rt_vsnprintf+0x212>
 80069f4:	b133      	cbz	r3, 8006a04 <rt_vsnprintf+0x334>
 80069f6:	4287      	cmp	r7, r0
 80069f8:	bf28      	it	cs
 80069fa:	7001      	strbcs	r1, [r0, #0]
 80069fc:	3001      	adds	r0, #1
 80069fe:	4290      	cmp	r0, r2
 8006a00:	f43f af6f 	beq.w	80068e2 <rt_vsnprintf+0x212>
 8006a04:	1c43      	adds	r3, r0, #1
 8006a06:	4287      	cmp	r7, r0
 8006a08:	bf28      	it	cs
 8006a0a:	7001      	strbcs	r1, [r0, #0]
 8006a0c:	429f      	cmp	r7, r3
 8006a0e:	d300      	bcc.n	8006a12 <rt_vsnprintf+0x342>
 8006a10:	7041      	strb	r1, [r0, #1]
 8006a12:	1c58      	adds	r0, r3, #1
 8006a14:	4290      	cmp	r0, r2
 8006a16:	d1f5      	bne.n	8006a04 <rt_vsnprintf+0x334>
 8006a18:	e763      	b.n	80068e2 <rt_vsnprintf+0x212>
 8006a1a:	1c4a      	adds	r2, r1, #1
 8006a1c:	bf04      	itt	eq
 8006a1e:	f045 0501 	orreq.w	r5, r5, #1
 8006a22:	2108      	moveq	r1, #8
 8006a24:	f8da 2000 	ldr.w	r2, [sl]
 8006a28:	2310      	movs	r3, #16
 8006a2a:	e88d 0042 	stmia.w	sp, {r1, r6}
 8006a2e:	9502      	str	r5, [sp, #8]
 8006a30:	4639      	mov	r1, r7
 8006a32:	f7ff fc0d 	bl	8006250 <print_number>
 8006a36:	f10a 0a04 	add.w	sl, sl, #4
 8006a3a:	7862      	ldrb	r2, [r4, #1]
 8006a3c:	e661      	b.n	8006702 <rt_vsnprintf+0x32>
 8006a3e:	2308      	movs	r3, #8
 8006a40:	e73e      	b.n	80068c0 <rt_vsnprintf+0x1f0>
 8006a42:	f045 0502 	orr.w	r5, r5, #2
 8006a46:	230a      	movs	r3, #10
 8006a48:	e73a      	b.n	80068c0 <rt_vsnprintf+0x1f0>
 8006a4a:	f005 0610 	and.w	r6, r5, #16
 8006a4e:	b2f5      	uxtb	r5, r6
 8006a50:	bb05      	cbnz	r5, 8006a94 <rt_vsnprintf+0x3c4>
 8006a52:	3901      	subs	r1, #1
 8006a54:	2900      	cmp	r1, #0
 8006a56:	dd1d      	ble.n	8006a94 <rt_vsnprintf+0x3c4>
 8006a58:	1842      	adds	r2, r0, r1
 8006a5a:	43c1      	mvns	r1, r0
 8006a5c:	1853      	adds	r3, r2, r1
 8006a5e:	2620      	movs	r6, #32
 8006a60:	4287      	cmp	r7, r0
 8006a62:	f003 0501 	and.w	r5, r3, #1
 8006a66:	d300      	bcc.n	8006a6a <rt_vsnprintf+0x39a>
 8006a68:	7006      	strb	r6, [r0, #0]
 8006a6a:	3001      	adds	r0, #1
 8006a6c:	4290      	cmp	r0, r2
 8006a6e:	d010      	beq.n	8006a92 <rt_vsnprintf+0x3c2>
 8006a70:	b12d      	cbz	r5, 8006a7e <rt_vsnprintf+0x3ae>
 8006a72:	4287      	cmp	r7, r0
 8006a74:	bf28      	it	cs
 8006a76:	7006      	strbcs	r6, [r0, #0]
 8006a78:	3001      	adds	r0, #1
 8006a7a:	4290      	cmp	r0, r2
 8006a7c:	d009      	beq.n	8006a92 <rt_vsnprintf+0x3c2>
 8006a7e:	1c41      	adds	r1, r0, #1
 8006a80:	4287      	cmp	r7, r0
 8006a82:	bf28      	it	cs
 8006a84:	7006      	strbcs	r6, [r0, #0]
 8006a86:	428f      	cmp	r7, r1
 8006a88:	d300      	bcc.n	8006a8c <rt_vsnprintf+0x3bc>
 8006a8a:	7046      	strb	r6, [r0, #1]
 8006a8c:	1c48      	adds	r0, r1, #1
 8006a8e:	4290      	cmp	r0, r2
 8006a90:	d1f5      	bne.n	8006a7e <rt_vsnprintf+0x3ae>
 8006a92:	2100      	movs	r1, #0
 8006a94:	f8da 2000 	ldr.w	r2, [sl]
 8006a98:	42b8      	cmp	r0, r7
 8006a9a:	bf98      	it	ls
 8006a9c:	7002      	strbls	r2, [r0, #0]
 8006a9e:	1c45      	adds	r5, r0, #1
 8006aa0:	2901      	cmp	r1, #1
 8006aa2:	f10a 0604 	add.w	r6, sl, #4
 8006aa6:	dd63      	ble.n	8006b70 <rt_vsnprintf+0x4a0>
 8006aa8:	43eb      	mvns	r3, r5
 8006aaa:	1840      	adds	r0, r0, r1
 8006aac:	18c2      	adds	r2, r0, r3
 8006aae:	42af      	cmp	r7, r5
 8006ab0:	f04f 0a20 	mov.w	sl, #32
 8006ab4:	f002 0201 	and.w	r2, r2, #1
 8006ab8:	d247      	bcs.n	8006b4a <rt_vsnprintf+0x47a>
 8006aba:	1c6b      	adds	r3, r5, #1
 8006abc:	4283      	cmp	r3, r0
 8006abe:	d013      	beq.n	8006ae8 <rt_vsnprintf+0x418>
 8006ac0:	b132      	cbz	r2, 8006ad0 <rt_vsnprintf+0x400>
 8006ac2:	429f      	cmp	r7, r3
 8006ac4:	bf28      	it	cs
 8006ac6:	f885 a001 	strbcs.w	sl, [r5, #1]
 8006aca:	3301      	adds	r3, #1
 8006acc:	4283      	cmp	r3, r0
 8006ace:	d00b      	beq.n	8006ae8 <rt_vsnprintf+0x418>
 8006ad0:	1c5a      	adds	r2, r3, #1
 8006ad2:	429f      	cmp	r7, r3
 8006ad4:	bf28      	it	cs
 8006ad6:	f883 a000 	strbcs.w	sl, [r3]
 8006ada:	4297      	cmp	r7, r2
 8006adc:	d301      	bcc.n	8006ae2 <rt_vsnprintf+0x412>
 8006ade:	f883 a001 	strb.w	sl, [r3, #1]
 8006ae2:	1c53      	adds	r3, r2, #1
 8006ae4:	4283      	cmp	r3, r0
 8006ae6:	d1f3      	bne.n	8006ad0 <rt_vsnprintf+0x400>
 8006ae8:	3901      	subs	r1, #1
 8006aea:	1868      	adds	r0, r5, r1
 8006aec:	7862      	ldrb	r2, [r4, #1]
 8006aee:	46b2      	mov	sl, r6
 8006af0:	e607      	b.n	8006702 <rt_vsnprintf+0x32>
 8006af2:	f045 0540 	orr.w	r5, r5, #64	; 0x40
 8006af6:	2310      	movs	r3, #16
 8006af8:	e6e2      	b.n	80068c0 <rt_vsnprintf+0x1f0>
 8006afa:	4287      	cmp	r7, r0
 8006afc:	bf28      	it	cs
 8006afe:	f880 8000 	strbcs.w	r8, [r0]
 8006b02:	e5fc      	b.n	80066fe <rt_vsnprintf+0x2e>
 8006b04:	f8da 1000 	ldr.w	r1, [sl]
 8006b08:	1ca2      	adds	r2, r4, #2
 8006b0a:	2900      	cmp	r1, #0
 8006b0c:	f10a 0a04 	add.w	sl, sl, #4
 8006b10:	78a3      	ldrb	r3, [r4, #2]
 8006b12:	f6bf ae2b 	bge.w	800676c <rt_vsnprintf+0x9c>
 8006b16:	4249      	negs	r1, r1
 8006b18:	f045 0510 	orr.w	r5, r5, #16
 8006b1c:	e626      	b.n	800676c <rt_vsnprintf+0x9c>
 8006b1e:	f005 0b02 	and.w	fp, r5, #2
 8006b22:	fa5f fc8b 	uxtb.w	ip, fp
 8006b26:	f10a 0e04 	add.w	lr, sl, #4
 8006b2a:	f8ba 2000 	ldrh.w	r2, [sl]
 8006b2e:	f1bc 0f00 	cmp.w	ip, #0
 8006b32:	d000      	beq.n	8006b36 <rt_vsnprintf+0x466>
 8006b34:	b212      	sxth	r2, r2
 8006b36:	46f2      	mov	sl, lr
 8006b38:	e6cd      	b.n	80068d6 <rt_vsnprintf+0x206>
 8006b3a:	42ba      	cmp	r2, r7
 8006b3c:	bf98      	it	ls
 8006b3e:	7043      	strbls	r3, [r0, #1]
 8006b40:	7862      	ldrb	r2, [r4, #1]
 8006b42:	3002      	adds	r0, #2
 8006b44:	e5dd      	b.n	8006702 <rt_vsnprintf+0x32>
 8006b46:	7001      	strb	r1, [r0, #0]
 8006b48:	e750      	b.n	80069ec <rt_vsnprintf+0x31c>
 8006b4a:	f885 a000 	strb.w	sl, [r5]
 8006b4e:	e7b4      	b.n	8006aba <rt_vsnprintf+0x3ea>
 8006b50:	f813 6c01 	ldrb.w	r6, [r3, #-1]
 8006b54:	7006      	strb	r6, [r0, #0]
 8006b56:	e71e      	b.n	8006996 <rt_vsnprintf+0x2c6>
 8006b58:	f8da 6000 	ldr.w	r6, [sl]
 8006b5c:	f104 0c02 	add.w	ip, r4, #2
 8006b60:	2e00      	cmp	r6, #0
 8006b62:	78a3      	ldrb	r3, [r4, #2]
 8006b64:	f10a 0a04 	add.w	sl, sl, #4
 8006b68:	4664      	mov	r4, ip
 8006b6a:	f6bf ae04 	bge.w	8006776 <rt_vsnprintf+0xa6>
 8006b6e:	e684      	b.n	800687a <rt_vsnprintf+0x1aa>
 8006b70:	7862      	ldrb	r2, [r4, #1]
 8006b72:	46b2      	mov	sl, r6
 8006b74:	4628      	mov	r0, r5
 8006b76:	e5c4      	b.n	8006702 <rt_vsnprintf+0x32>
 8006b78:	4619      	mov	r1, r3
 8006b7a:	e6ff      	b.n	800697c <rt_vsnprintf+0x2ac>

08006b7c <rt_vsprintf>:
 8006b7c:	b410      	push	{r4}
 8006b7e:	460c      	mov	r4, r1
 8006b80:	4613      	mov	r3, r2
 8006b82:	f04f 31ff 	mov.w	r1, #4294967295
 8006b86:	4622      	mov	r2, r4
 8006b88:	bc10      	pop	{r4}
 8006b8a:	f7ff bda1 	b.w	80066d0 <rt_vsnprintf>
 8006b8e:	bf00      	nop

08006b90 <rt_sprintf>:
 8006b90:	b40e      	push	{r1, r2, r3}
 8006b92:	b500      	push	{lr}
 8006b94:	b082      	sub	sp, #8
 8006b96:	ab03      	add	r3, sp, #12
 8006b98:	f853 1b04 	ldr.w	r1, [r3], #4
 8006b9c:	461a      	mov	r2, r3
 8006b9e:	9301      	str	r3, [sp, #4]
 8006ba0:	f7ff ffec 	bl	8006b7c <rt_vsprintf>
 8006ba4:	b002      	add	sp, #8
 8006ba6:	f85d eb04 	ldr.w	lr, [sp], #4
 8006baa:	b003      	add	sp, #12
 8006bac:	4770      	bx	lr
 8006bae:	bf00      	nop

08006bb0 <rt_console_set_device>:
 8006bb0:	b570      	push	{r4, r5, r6, lr}
 8006bb2:	4c08      	ldr	r4, [pc, #32]	; (8006bd4 <rt_console_set_device+0x24>)
 8006bb4:	6826      	ldr	r6, [r4, #0]
 8006bb6:	f7ff f841 	bl	8005c3c <rt_device_find>
 8006bba:	4605      	mov	r5, r0
 8006bbc:	b140      	cbz	r0, 8006bd0 <rt_console_set_device+0x20>
 8006bbe:	6820      	ldr	r0, [r4, #0]
 8006bc0:	b108      	cbz	r0, 8006bc6 <rt_console_set_device+0x16>
 8006bc2:	f7ff f8e1 	bl	8005d88 <rt_device_close>
 8006bc6:	4628      	mov	r0, r5
 8006bc8:	2103      	movs	r1, #3
 8006bca:	6025      	str	r5, [r4, #0]
 8006bcc:	f7ff f87a 	bl	8005cc4 <rt_device_open>
 8006bd0:	4630      	mov	r0, r6
 8006bd2:	bd70      	pop	{r4, r5, r6, pc}
 8006bd4:	20000924 	.word	0x20000924

08006bd8 <rt_hw_console_output>:
 8006bd8:	4770      	bx	lr
 8006bda:	bf00      	nop

08006bdc <rt_kprintf>:
 8006bdc:	b40f      	push	{r0, r1, r2, r3}
 8006bde:	b530      	push	{r4, r5, lr}
 8006be0:	b083      	sub	sp, #12
 8006be2:	ac06      	add	r4, sp, #24
 8006be4:	f854 2b04 	ldr.w	r2, [r4], #4
 8006be8:	4810      	ldr	r0, [pc, #64]	; (8006c2c <rt_kprintf+0x50>)
 8006bea:	4623      	mov	r3, r4
 8006bec:	217f      	movs	r1, #127	; 0x7f
 8006bee:	9401      	str	r4, [sp, #4]
 8006bf0:	f7ff fd6e 	bl	80066d0 <rt_vsnprintf>
 8006bf4:	4c0e      	ldr	r4, [pc, #56]	; (8006c30 <rt_kprintf+0x54>)
 8006bf6:	287f      	cmp	r0, #127	; 0x7f
 8006bf8:	bf34      	ite	cc
 8006bfa:	4603      	movcc	r3, r0
 8006bfc:	237f      	movcs	r3, #127	; 0x7f
 8006bfe:	6822      	ldr	r2, [r4, #0]
 8006c00:	b17a      	cbz	r2, 8006c22 <rt_kprintf+0x46>
 8006c02:	8ad5      	ldrh	r5, [r2, #22]
 8006c04:	4610      	mov	r0, r2
 8006c06:	f045 0140 	orr.w	r1, r5, #64	; 0x40
 8006c0a:	82d1      	strh	r1, [r2, #22]
 8006c0c:	2100      	movs	r1, #0
 8006c0e:	4a07      	ldr	r2, [pc, #28]	; (8006c2c <rt_kprintf+0x50>)
 8006c10:	f7ff f8ec 	bl	8005dec <rt_device_write>
 8006c14:	6823      	ldr	r3, [r4, #0]
 8006c16:	82dd      	strh	r5, [r3, #22]
 8006c18:	b003      	add	sp, #12
 8006c1a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 8006c1e:	b004      	add	sp, #16
 8006c20:	4770      	bx	lr
 8006c22:	4802      	ldr	r0, [pc, #8]	; (8006c2c <rt_kprintf+0x50>)
 8006c24:	f7ff ffd8 	bl	8006bd8 <rt_hw_console_output>
 8006c28:	e7f6      	b.n	8006c18 <rt_kprintf+0x3c>
 8006c2a:	bf00      	nop
 8006c2c:	200008a4 	.word	0x200008a4
 8006c30:	20000924 	.word	0x20000924

08006c34 <rt_show_version>:
 8006c34:	b500      	push	{lr}
 8006c36:	f249 3074 	movw	r0, #37748	; 0x9374
 8006c3a:	b083      	sub	sp, #12
 8006c3c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8006c40:	f7ff ffcc 	bl	8006bdc <rt_kprintf>
 8006c44:	f249 3080 	movw	r0, #37760	; 0x9380
 8006c48:	f6c0 0000 	movt	r0, #2048	; 0x800
 8006c4c:	f7ff ffc6 	bl	8006bdc <rt_kprintf>
 8006c50:	f249 33c4 	movw	r3, #37828	; 0x93c4
 8006c54:	f6c0 0300 	movt	r3, #2048	; 0x800
 8006c58:	f249 30a4 	movw	r0, #37796	; 0x93a4
 8006c5c:	9300      	str	r3, [sp, #0]
 8006c5e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8006c62:	2101      	movs	r1, #1
 8006c64:	2202      	movs	r2, #2
 8006c66:	2300      	movs	r3, #0
 8006c68:	f7ff ffb8 	bl	8006bdc <rt_kprintf>
 8006c6c:	f249 30d0 	movw	r0, #37840	; 0x93d0
 8006c70:	f6c0 0000 	movt	r0, #2048	; 0x800
 8006c74:	b003      	add	sp, #12
 8006c76:	f85d eb04 	ldr.w	lr, [sp], #4
 8006c7a:	f7ff bfaf 	b.w	8006bdc <rt_kprintf>
 8006c7e:	bf00      	nop

08006c80 <__rt_ffs>:
 8006c80:	b160      	cbz	r0, 8006c9c <__rt_ffs+0x1c>
 8006c82:	f010 03ff 	ands.w	r3, r0, #255	; 0xff
 8006c86:	d10a      	bne.n	8006c9e <__rt_ffs+0x1e>
 8006c88:	f410 417f 	ands.w	r1, r0, #65280	; 0xff00
 8006c8c:	d110      	bne.n	8006cb0 <__rt_ffs+0x30>
 8006c8e:	f410 027f 	ands.w	r2, r0, #16711680	; 0xff0000
 8006c92:	d108      	bne.n	8006ca6 <__rt_ffs+0x26>
 8006c94:	4b09      	ldr	r3, [pc, #36]	; (8006cbc <__rt_ffs+0x3c>)
 8006c96:	0e00      	lsrs	r0, r0, #24
 8006c98:	5c18      	ldrb	r0, [r3, r0]
 8006c9a:	3019      	adds	r0, #25
 8006c9c:	4770      	bx	lr
 8006c9e:	4907      	ldr	r1, [pc, #28]	; (8006cbc <__rt_ffs+0x3c>)
 8006ca0:	5cca      	ldrb	r2, [r1, r3]
 8006ca2:	1c50      	adds	r0, r2, #1
 8006ca4:	4770      	bx	lr
 8006ca6:	1411      	asrs	r1, r2, #16
 8006ca8:	4a04      	ldr	r2, [pc, #16]	; (8006cbc <__rt_ffs+0x3c>)
 8006caa:	5c50      	ldrb	r0, [r2, r1]
 8006cac:	3011      	adds	r0, #17
 8006cae:	4770      	bx	lr
 8006cb0:	4b02      	ldr	r3, [pc, #8]	; (8006cbc <__rt_ffs+0x3c>)
 8006cb2:	1208      	asrs	r0, r1, #8
 8006cb4:	5c18      	ldrb	r0, [r3, r0]
 8006cb6:	3009      	adds	r0, #9
 8006cb8:	4770      	bx	lr
 8006cba:	bf00      	nop
 8006cbc:	080093fc 	.word	0x080093fc

08006cc0 <plug_holes>:
 8006cc0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006cc2:	4d30      	ldr	r5, [pc, #192]	; (8006d84 <plug_holes+0xc4>)
 8006cc4:	b083      	sub	sp, #12
 8006cc6:	682b      	ldr	r3, [r5, #0]
 8006cc8:	4604      	mov	r4, r0
 8006cca:	4283      	cmp	r3, r0
 8006ccc:	d84b      	bhi.n	8006d66 <plug_holes+0xa6>
 8006cce:	4e2e      	ldr	r6, [pc, #184]	; (8006d88 <plug_holes+0xc8>)
 8006cd0:	6831      	ldr	r1, [r6, #0]
 8006cd2:	428c      	cmp	r4, r1
 8006cd4:	d239      	bcs.n	8006d4a <plug_holes+0x8a>
 8006cd6:	8863      	ldrh	r3, [r4, #2]
 8006cd8:	2b00      	cmp	r3, #0
 8006cda:	d128      	bne.n	8006d2e <plug_holes+0x6e>
 8006cdc:	682b      	ldr	r3, [r5, #0]
 8006cde:	6861      	ldr	r1, [r4, #4]
 8006ce0:	185a      	adds	r2, r3, r1
 8006ce2:	4294      	cmp	r4, r2
 8006ce4:	d001      	beq.n	8006cea <plug_holes+0x2a>
 8006ce6:	8850      	ldrh	r0, [r2, #2]
 8006ce8:	b190      	cbz	r0, 8006d10 <plug_holes+0x50>
 8006cea:	68a0      	ldr	r0, [r4, #8]
 8006cec:	181a      	adds	r2, r3, r0
 8006cee:	42a2      	cmp	r2, r4
 8006cf0:	d00c      	beq.n	8006d0c <plug_holes+0x4c>
 8006cf2:	8851      	ldrh	r1, [r2, #2]
 8006cf4:	b951      	cbnz	r1, 8006d0c <plug_holes+0x4c>
 8006cf6:	4925      	ldr	r1, [pc, #148]	; (8006d8c <plug_holes+0xcc>)
 8006cf8:	6808      	ldr	r0, [r1, #0]
 8006cfa:	42a0      	cmp	r0, r4
 8006cfc:	bf08      	it	eq
 8006cfe:	600a      	streq	r2, [r1, #0]
 8006d00:	6861      	ldr	r1, [r4, #4]
 8006d02:	1ad0      	subs	r0, r2, r3
 8006d04:	6051      	str	r1, [r2, #4]
 8006d06:	6862      	ldr	r2, [r4, #4]
 8006d08:	189b      	adds	r3, r3, r2
 8006d0a:	6098      	str	r0, [r3, #8]
 8006d0c:	b003      	add	sp, #12
 8006d0e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006d10:	6831      	ldr	r1, [r6, #0]
 8006d12:	428a      	cmp	r2, r1
 8006d14:	d0e9      	beq.n	8006cea <plug_holes+0x2a>
 8006d16:	491d      	ldr	r1, [pc, #116]	; (8006d8c <plug_holes+0xcc>)
 8006d18:	6808      	ldr	r0, [r1, #0]
 8006d1a:	4290      	cmp	r0, r2
 8006d1c:	bf08      	it	eq
 8006d1e:	600c      	streq	r4, [r1, #0]
 8006d20:	6851      	ldr	r1, [r2, #4]
 8006d22:	1ae0      	subs	r0, r4, r3
 8006d24:	6061      	str	r1, [r4, #4]
 8006d26:	6852      	ldr	r2, [r2, #4]
 8006d28:	1899      	adds	r1, r3, r2
 8006d2a:	6088      	str	r0, [r1, #8]
 8006d2c:	e7dd      	b.n	8006cea <plug_holes+0x2a>
 8006d2e:	2700      	movs	r7, #0
 8006d30:	4817      	ldr	r0, [pc, #92]	; (8006d90 <plug_holes+0xd0>)
 8006d32:	4918      	ldr	r1, [pc, #96]	; (8006d94 <plug_holes+0xd4>)
 8006d34:	4a18      	ldr	r2, [pc, #96]	; (8006d98 <plug_holes+0xd8>)
 8006d36:	238f      	movs	r3, #143	; 0x8f
 8006d38:	f88d 7007 	strb.w	r7, [sp, #7]
 8006d3c:	f7ff ff4e 	bl	8006bdc <rt_kprintf>
 8006d40:	f89d 0007 	ldrb.w	r0, [sp, #7]
 8006d44:	2800      	cmp	r0, #0
 8006d46:	d0fb      	beq.n	8006d40 <plug_holes+0x80>
 8006d48:	e7c8      	b.n	8006cdc <plug_holes+0x1c>
 8006d4a:	2700      	movs	r7, #0
 8006d4c:	4810      	ldr	r0, [pc, #64]	; (8006d90 <plug_holes+0xd0>)
 8006d4e:	4913      	ldr	r1, [pc, #76]	; (8006d9c <plug_holes+0xdc>)
 8006d50:	4a11      	ldr	r2, [pc, #68]	; (8006d98 <plug_holes+0xd8>)
 8006d52:	238e      	movs	r3, #142	; 0x8e
 8006d54:	f88d 7006 	strb.w	r7, [sp, #6]
 8006d58:	f7ff ff40 	bl	8006bdc <rt_kprintf>
 8006d5c:	f89d 2006 	ldrb.w	r2, [sp, #6]
 8006d60:	2a00      	cmp	r2, #0
 8006d62:	d0fb      	beq.n	8006d5c <plug_holes+0x9c>
 8006d64:	e7b7      	b.n	8006cd6 <plug_holes+0x16>
 8006d66:	2600      	movs	r6, #0
 8006d68:	4809      	ldr	r0, [pc, #36]	; (8006d90 <plug_holes+0xd0>)
 8006d6a:	490d      	ldr	r1, [pc, #52]	; (8006da0 <plug_holes+0xe0>)
 8006d6c:	4a0a      	ldr	r2, [pc, #40]	; (8006d98 <plug_holes+0xd8>)
 8006d6e:	238d      	movs	r3, #141	; 0x8d
 8006d70:	f88d 6005 	strb.w	r6, [sp, #5]
 8006d74:	f7ff ff32 	bl	8006bdc <rt_kprintf>
 8006d78:	f89d 0005 	ldrb.w	r0, [sp, #5]
 8006d7c:	2800      	cmp	r0, #0
 8006d7e:	d0fb      	beq.n	8006d78 <plug_holes+0xb8>
 8006d80:	e7a5      	b.n	8006cce <plug_holes+0xe>
 8006d82:	bf00      	nop
 8006d84:	20000960 	.word	0x20000960
 8006d88:	20000938 	.word	0x20000938
 8006d8c:	20000928 	.word	0x20000928
 8006d90:	08008a48 	.word	0x08008a48
 8006d94:	08009570 	.word	0x08009570
 8006d98:	0800973c 	.word	0x0800973c
 8006d9c:	08009544 	.word	0x08009544
 8006da0:	08009524 	.word	0x08009524

08006da4 <rt_system_heap_init>:
 8006da4:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006da6:	b083      	sub	sp, #12
 8006da8:	460d      	mov	r5, r1
 8006daa:	4607      	mov	r7, r0
 8006dac:	f021 0403 	bic.w	r4, r1, #3
 8006db0:	f7f9 f9ac 	bl	800010c <rt_hw_interrupt_disable>
 8006db4:	4606      	mov	r6, r0
 8006db6:	f7ff fa45 	bl	8006244 <rt_interrupt_get_nest>
 8006dba:	b990      	cbnz	r0, 8006de2 <rt_system_heap_init+0x3e>
 8006dbc:	4630      	mov	r0, r6
 8006dbe:	f7f9 f9a9 	bl	8000114 <rt_hw_interrupt_enable>
 8006dc2:	2c18      	cmp	r4, #24
 8006dc4:	d906      	bls.n	8006dd4 <rt_system_heap_init+0x30>
 8006dc6:	1cfe      	adds	r6, r7, #3
 8006dc8:	f026 0603 	bic.w	r6, r6, #3
 8006dcc:	f1a4 0018 	sub.w	r0, r4, #24
 8006dd0:	4286      	cmp	r6, r0
 8006dd2:	d919      	bls.n	8006e08 <rt_system_heap_init+0x64>
 8006dd4:	481d      	ldr	r0, [pc, #116]	; (8006e4c <rt_system_heap_init+0xa8>)
 8006dd6:	4639      	mov	r1, r7
 8006dd8:	462a      	mov	r2, r5
 8006dda:	f7ff feff 	bl	8006bdc <rt_kprintf>
 8006dde:	b003      	add	sp, #12
 8006de0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006de2:	481b      	ldr	r0, [pc, #108]	; (8006e50 <rt_system_heap_init+0xac>)
 8006de4:	491b      	ldr	r1, [pc, #108]	; (8006e54 <rt_system_heap_init+0xb0>)
 8006de6:	f7ff fef9 	bl	8006bdc <rt_kprintf>
 8006dea:	f04f 0e00 	mov.w	lr, #0
 8006dee:	481a      	ldr	r0, [pc, #104]	; (8006e58 <rt_system_heap_init+0xb4>)
 8006df0:	491a      	ldr	r1, [pc, #104]	; (8006e5c <rt_system_heap_init+0xb8>)
 8006df2:	4a18      	ldr	r2, [pc, #96]	; (8006e54 <rt_system_heap_init+0xb0>)
 8006df4:	23be      	movs	r3, #190	; 0xbe
 8006df6:	f88d e007 	strb.w	lr, [sp, #7]
 8006dfa:	f7ff feef 	bl	8006bdc <rt_kprintf>
 8006dfe:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8006e02:	2b00      	cmp	r3, #0
 8006e04:	d0fb      	beq.n	8006dfe <rt_system_heap_init+0x5a>
 8006e06:	e7d9      	b.n	8006dbc <rt_system_heap_init+0x18>
 8006e08:	1ba4      	subs	r4, r4, r6
 8006e0a:	f1a4 010c 	sub.w	r1, r4, #12
 8006e0e:	f1a4 0c18 	sub.w	ip, r4, #24
 8006e12:	4c13      	ldr	r4, [pc, #76]	; (8006e60 <rt_system_heap_init+0xbc>)
 8006e14:	1875      	adds	r5, r6, r1
 8006e16:	2300      	movs	r3, #0
 8006e18:	f44f 50f5 	mov.w	r0, #7840	; 0x1ea0
 8006e1c:	2201      	movs	r2, #1
 8006e1e:	f8c4 c000 	str.w	ip, [r4]
 8006e22:	4f10      	ldr	r7, [pc, #64]	; (8006e64 <rt_system_heap_init+0xc0>)
 8006e24:	4c10      	ldr	r4, [pc, #64]	; (8006e68 <rt_system_heap_init+0xc4>)
 8006e26:	8030      	strh	r0, [r6, #0]
 8006e28:	6071      	str	r1, [r6, #4]
 8006e2a:	60b3      	str	r3, [r6, #8]
 8006e2c:	8073      	strh	r3, [r6, #2]
 8006e2e:	5270      	strh	r0, [r6, r1]
 8006e30:	806a      	strh	r2, [r5, #2]
 8006e32:	6069      	str	r1, [r5, #4]
 8006e34:	60a9      	str	r1, [r5, #8]
 8006e36:	480d      	ldr	r0, [pc, #52]	; (8006e6c <rt_system_heap_init+0xc8>)
 8006e38:	490d      	ldr	r1, [pc, #52]	; (8006e70 <rt_system_heap_init+0xcc>)
 8006e3a:	603e      	str	r6, [r7, #0]
 8006e3c:	6025      	str	r5, [r4, #0]
 8006e3e:	f7ff f88f 	bl	8005f60 <rt_sem_init>
 8006e42:	683a      	ldr	r2, [r7, #0]
 8006e44:	4b0b      	ldr	r3, [pc, #44]	; (8006e74 <rt_system_heap_init+0xd0>)
 8006e46:	601a      	str	r2, [r3, #0]
 8006e48:	e7c9      	b.n	8006dde <rt_system_heap_init+0x3a>
 8006e4a:	bf00      	nop
 8006e4c:	08009588 	.word	0x08009588
 8006e50:	080092a8 	.word	0x080092a8
 8006e54:	080094fc 	.word	0x080094fc
 8006e58:	08008a48 	.word	0x08008a48
 8006e5c:	08009684 	.word	0x08009684
 8006e60:	20000934 	.word	0x20000934
 8006e64:	20000960 	.word	0x20000960
 8006e68:	20000938 	.word	0x20000938
 8006e6c:	2000093c 	.word	0x2000093c
 8006e70:	08009580 	.word	0x08009580
 8006e74:	20000928 	.word	0x20000928

08006e78 <rt_malloc>:
 8006e78:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006e7c:	b082      	sub	sp, #8
 8006e7e:	4604      	mov	r4, r0
 8006e80:	f7f9 f944 	bl	800010c <rt_hw_interrupt_disable>
 8006e84:	4605      	mov	r5, r0
 8006e86:	f7ff f9dd 	bl	8006244 <rt_interrupt_get_nest>
 8006e8a:	2800      	cmp	r0, #0
 8006e8c:	d13f      	bne.n	8006f0e <rt_malloc+0x96>
 8006e8e:	4628      	mov	r0, r5
 8006e90:	f7f9 f940 	bl	8000114 <rt_hw_interrupt_enable>
 8006e94:	2c00      	cmp	r4, #0
 8006e96:	d050      	beq.n	8006f3a <rt_malloc+0xc2>
 8006e98:	4e71      	ldr	r6, [pc, #452]	; (8007060 <rt_malloc+0x1e8>)
 8006e9a:	f104 0803 	add.w	r8, r4, #3
 8006e9e:	6830      	ldr	r0, [r6, #0]
 8006ea0:	f028 0803 	bic.w	r8, r8, #3
 8006ea4:	4580      	cmp	r8, r0
 8006ea6:	f200 8098 	bhi.w	8006fda <rt_malloc+0x162>
 8006eaa:	f04f 31ff 	mov.w	r1, #4294967295
 8006eae:	486d      	ldr	r0, [pc, #436]	; (8007064 <rt_malloc+0x1ec>)
 8006eb0:	f7ff f8b6 	bl	8006020 <rt_sem_take>
 8006eb4:	f8df 91dc 	ldr.w	r9, [pc, #476]	; 8007094 <rt_malloc+0x21c>
 8006eb8:	f8df c1dc 	ldr.w	ip, [pc, #476]	; 8007098 <rt_malloc+0x220>
 8006ebc:	f8d9 1000 	ldr.w	r1, [r9]
 8006ec0:	f8dc 5000 	ldr.w	r5, [ip]
 8006ec4:	f8d6 e000 	ldr.w	lr, [r6]
 8006ec8:	f1b8 0f0b 	cmp.w	r8, #11
 8006ecc:	bf98      	it	ls
 8006ece:	f04f 080c 	movls.w	r8, #12
 8006ed2:	1b4b      	subs	r3, r1, r5
 8006ed4:	ebc8 060e 	rsb	r6, r8, lr
 8006ed8:	42b3      	cmp	r3, r6
 8006eda:	d309      	bcc.n	8006ef0 <rt_malloc+0x78>
 8006edc:	e00f      	b.n	8006efe <rt_malloc+0x86>
 8006ede:	6860      	ldr	r0, [r4, #4]
 8006ee0:	f1a0 070c 	sub.w	r7, r0, #12
 8006ee4:	1aff      	subs	r7, r7, r3
 8006ee6:	45b8      	cmp	r8, r7
 8006ee8:	d929      	bls.n	8006f3e <rt_malloc+0xc6>
 8006eea:	4603      	mov	r3, r0
 8006eec:	429e      	cmp	r6, r3
 8006eee:	d906      	bls.n	8006efe <rt_malloc+0x86>
 8006ef0:	18ec      	adds	r4, r5, r3
 8006ef2:	8862      	ldrh	r2, [r4, #2]
 8006ef4:	2a00      	cmp	r2, #0
 8006ef6:	d0f2      	beq.n	8006ede <rt_malloc+0x66>
 8006ef8:	6863      	ldr	r3, [r4, #4]
 8006efa:	429e      	cmp	r6, r3
 8006efc:	d8f8      	bhi.n	8006ef0 <rt_malloc+0x78>
 8006efe:	4859      	ldr	r0, [pc, #356]	; (8007064 <rt_malloc+0x1ec>)
 8006f00:	f7ff f95e 	bl	80061c0 <rt_sem_release>
 8006f04:	2500      	movs	r5, #0
 8006f06:	4628      	mov	r0, r5
 8006f08:	b002      	add	sp, #8
 8006f0a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006f0e:	4856      	ldr	r0, [pc, #344]	; (8007068 <rt_malloc+0x1f0>)
 8006f10:	4956      	ldr	r1, [pc, #344]	; (800706c <rt_malloc+0x1f4>)
 8006f12:	f7ff fe63 	bl	8006bdc <rt_kprintf>
 8006f16:	2600      	movs	r6, #0
 8006f18:	4855      	ldr	r0, [pc, #340]	; (8007070 <rt_malloc+0x1f8>)
 8006f1a:	4956      	ldr	r1, [pc, #344]	; (8007074 <rt_malloc+0x1fc>)
 8006f1c:	4a53      	ldr	r2, [pc, #332]	; (800706c <rt_malloc+0x1f4>)
 8006f1e:	23fb      	movs	r3, #251	; 0xfb
 8006f20:	f88d 6004 	strb.w	r6, [sp, #4]
 8006f24:	f7ff fe5a 	bl	8006bdc <rt_kprintf>
 8006f28:	f89d 3004 	ldrb.w	r3, [sp, #4]
 8006f2c:	2b00      	cmp	r3, #0
 8006f2e:	d0fb      	beq.n	8006f28 <rt_malloc+0xb0>
 8006f30:	4628      	mov	r0, r5
 8006f32:	f7f9 f8ef 	bl	8000114 <rt_hw_interrupt_enable>
 8006f36:	2c00      	cmp	r4, #0
 8006f38:	d1ae      	bne.n	8006e98 <rt_malloc+0x20>
 8006f3a:	4625      	mov	r5, r4
 8006f3c:	e7e3      	b.n	8006f06 <rt_malloc+0x8e>
 8006f3e:	f108 0618 	add.w	r6, r8, #24
 8006f42:	42be      	cmp	r6, r7
 8006f44:	d929      	bls.n	8006f9a <rt_malloc+0x122>
 8006f46:	4e4c      	ldr	r6, [pc, #304]	; (8007078 <rt_malloc+0x200>)
 8006f48:	4f4c      	ldr	r7, [pc, #304]	; (800707c <rt_malloc+0x204>)
 8006f4a:	6832      	ldr	r2, [r6, #0]
 8006f4c:	1b2d      	subs	r5, r5, r4
 8006f4e:	1883      	adds	r3, r0, r2
 8006f50:	6838      	ldr	r0, [r7, #0]
 8006f52:	195d      	adds	r5, r3, r5
 8006f54:	2201      	movs	r2, #1
 8006f56:	4285      	cmp	r5, r0
 8006f58:	6035      	str	r5, [r6, #0]
 8006f5a:	8062      	strh	r2, [r4, #2]
 8006f5c:	bf88      	it	hi
 8006f5e:	603d      	strhi	r5, [r7, #0]
 8006f60:	f108 060c 	add.w	r6, r8, #12
 8006f64:	f44f 50f5 	mov.w	r0, #7840	; 0x1ea0
 8006f68:	42a1      	cmp	r1, r4
 8006f6a:	8020      	strh	r0, [r4, #0]
 8006f6c:	d064      	beq.n	8007038 <rt_malloc+0x1c0>
 8006f6e:	4d44      	ldr	r5, [pc, #272]	; (8007080 <rt_malloc+0x208>)
 8006f70:	483c      	ldr	r0, [pc, #240]	; (8007064 <rt_malloc+0x1ec>)
 8006f72:	f7ff f925 	bl	80061c0 <rt_sem_release>
 8006f76:	682d      	ldr	r5, [r5, #0]
 8006f78:	1936      	adds	r6, r6, r4
 8006f7a:	42b5      	cmp	r5, r6
 8006f7c:	d34d      	bcc.n	800701a <rt_malloc+0x1a2>
 8006f7e:	f104 050c 	add.w	r5, r4, #12
 8006f82:	07aa      	lsls	r2, r5, #30
 8006f84:	d13a      	bne.n	8006ffc <rt_malloc+0x184>
 8006f86:	07a3      	lsls	r3, r4, #30
 8006f88:	d129      	bne.n	8006fde <rt_malloc+0x166>
 8006f8a:	4b3e      	ldr	r3, [pc, #248]	; (8007084 <rt_malloc+0x20c>)
 8006f8c:	681a      	ldr	r2, [r3, #0]
 8006f8e:	2a00      	cmp	r2, #0
 8006f90:	d0b9      	beq.n	8006f06 <rt_malloc+0x8e>
 8006f92:	4628      	mov	r0, r5
 8006f94:	4641      	mov	r1, r8
 8006f96:	4790      	blx	r2
 8006f98:	e7b5      	b.n	8006f06 <rt_malloc+0x8e>
 8006f9a:	f108 060c 	add.w	r6, r8, #12
 8006f9e:	eb03 0a06 	add.w	sl, r3, r6
 8006fa2:	eb05 070a 	add.w	r7, r5, sl
 8006fa6:	6078      	str	r0, [r7, #4]
 8006fa8:	f8c4 a004 	str.w	sl, [r4, #4]
 8006fac:	6878      	ldr	r0, [r7, #4]
 8006fae:	f10e 0e0c 	add.w	lr, lr, #12
 8006fb2:	60bb      	str	r3, [r7, #8]
 8006fb4:	2301      	movs	r3, #1
 8006fb6:	4570      	cmp	r0, lr
 8006fb8:	bf1c      	itt	ne
 8006fba:	1828      	addne	r0, r5, r0
 8006fbc:	f8c0 a008 	strne.w	sl, [r0, #8]
 8006fc0:	482d      	ldr	r0, [pc, #180]	; (8007078 <rt_malloc+0x200>)
 8006fc2:	807a      	strh	r2, [r7, #2]
 8006fc4:	4d2d      	ldr	r5, [pc, #180]	; (800707c <rt_malloc+0x204>)
 8006fc6:	8063      	strh	r3, [r4, #2]
 8006fc8:	6803      	ldr	r3, [r0, #0]
 8006fca:	682a      	ldr	r2, [r5, #0]
 8006fcc:	330c      	adds	r3, #12
 8006fce:	4443      	add	r3, r8
 8006fd0:	4293      	cmp	r3, r2
 8006fd2:	6003      	str	r3, [r0, #0]
 8006fd4:	d9c6      	bls.n	8006f64 <rt_malloc+0xec>
 8006fd6:	602b      	str	r3, [r5, #0]
 8006fd8:	e7c4      	b.n	8006f64 <rt_malloc+0xec>
 8006fda:	2500      	movs	r5, #0
 8006fdc:	e793      	b.n	8006f06 <rt_malloc+0x8e>
 8006fde:	2400      	movs	r4, #0
 8006fe0:	4823      	ldr	r0, [pc, #140]	; (8007070 <rt_malloc+0x1f8>)
 8006fe2:	4929      	ldr	r1, [pc, #164]	; (8007088 <rt_malloc+0x210>)
 8006fe4:	4a21      	ldr	r2, [pc, #132]	; (800706c <rt_malloc+0x1f4>)
 8006fe6:	f44f 73b2 	mov.w	r3, #356	; 0x164
 8006fea:	f88d 4007 	strb.w	r4, [sp, #7]
 8006fee:	f7ff fdf5 	bl	8006bdc <rt_kprintf>
 8006ff2:	f89d 1007 	ldrb.w	r1, [sp, #7]
 8006ff6:	2900      	cmp	r1, #0
 8006ff8:	d0fb      	beq.n	8006ff2 <rt_malloc+0x17a>
 8006ffa:	e7c6      	b.n	8006f8a <rt_malloc+0x112>
 8006ffc:	2600      	movs	r6, #0
 8006ffe:	481c      	ldr	r0, [pc, #112]	; (8007070 <rt_malloc+0x1f8>)
 8007000:	4922      	ldr	r1, [pc, #136]	; (800708c <rt_malloc+0x214>)
 8007002:	4a1a      	ldr	r2, [pc, #104]	; (800706c <rt_malloc+0x1f4>)
 8007004:	f240 1363 	movw	r3, #355	; 0x163
 8007008:	f88d 6006 	strb.w	r6, [sp, #6]
 800700c:	f7ff fde6 	bl	8006bdc <rt_kprintf>
 8007010:	f89d 0006 	ldrb.w	r0, [sp, #6]
 8007014:	2800      	cmp	r0, #0
 8007016:	d0fb      	beq.n	8007010 <rt_malloc+0x198>
 8007018:	e7b5      	b.n	8006f86 <rt_malloc+0x10e>
 800701a:	2500      	movs	r5, #0
 800701c:	4814      	ldr	r0, [pc, #80]	; (8007070 <rt_malloc+0x1f8>)
 800701e:	491c      	ldr	r1, [pc, #112]	; (8007090 <rt_malloc+0x218>)
 8007020:	4a12      	ldr	r2, [pc, #72]	; (800706c <rt_malloc+0x1f4>)
 8007022:	f44f 73b1 	mov.w	r3, #354	; 0x162
 8007026:	f88d 5005 	strb.w	r5, [sp, #5]
 800702a:	f7ff fdd7 	bl	8006bdc <rt_kprintf>
 800702e:	f89d 2005 	ldrb.w	r2, [sp, #5]
 8007032:	2a00      	cmp	r2, #0
 8007034:	d0fb      	beq.n	800702e <rt_malloc+0x1b6>
 8007036:	e7a2      	b.n	8006f7e <rt_malloc+0x106>
 8007038:	884d      	ldrh	r5, [r1, #2]
 800703a:	2d00      	cmp	r5, #0
 800703c:	d097      	beq.n	8006f6e <rt_malloc+0xf6>
 800703e:	4d10      	ldr	r5, [pc, #64]	; (8007080 <rt_malloc+0x208>)
 8007040:	682a      	ldr	r2, [r5, #0]
 8007042:	4291      	cmp	r1, r2
 8007044:	d094      	beq.n	8006f70 <rt_malloc+0xf8>
 8007046:	f8dc 0000 	ldr.w	r0, [ip]
 800704a:	e001      	b.n	8007050 <rt_malloc+0x1d8>
 800704c:	4291      	cmp	r1, r2
 800704e:	d004      	beq.n	800705a <rt_malloc+0x1e2>
 8007050:	6849      	ldr	r1, [r1, #4]
 8007052:	1841      	adds	r1, r0, r1
 8007054:	884b      	ldrh	r3, [r1, #2]
 8007056:	2b00      	cmp	r3, #0
 8007058:	d1f8      	bne.n	800704c <rt_malloc+0x1d4>
 800705a:	f8c9 1000 	str.w	r1, [r9]
 800705e:	e787      	b.n	8006f70 <rt_malloc+0xf8>
 8007060:	20000934 	.word	0x20000934
 8007064:	2000093c 	.word	0x2000093c
 8007068:	080092a8 	.word	0x080092a8
 800706c:	08009510 	.word	0x08009510
 8007070:	08008a48 	.word	0x08008a48
 8007074:	08009684 	.word	0x08009684
 8007078:	2000092c 	.word	0x2000092c
 800707c:	20000964 	.word	0x20000964
 8007080:	20000938 	.word	0x20000938
 8007084:	20000930 	.word	0x20000930
 8007088:	08009658 	.word	0x08009658
 800708c:	0800960c 	.word	0x0800960c
 8007090:	080095c4 	.word	0x080095c4
 8007094:	20000928 	.word	0x20000928
 8007098:	20000960 	.word	0x20000960

0800709c <rt_free>:
 800709c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800709e:	b083      	sub	sp, #12
 80070a0:	4604      	mov	r4, r0
 80070a2:	f7f9 f833 	bl	800010c <rt_hw_interrupt_disable>
 80070a6:	4605      	mov	r5, r0
 80070a8:	f7ff f8cc 	bl	8006244 <rt_interrupt_get_nest>
 80070ac:	2800      	cmp	r0, #0
 80070ae:	d162      	bne.n	8007176 <rt_free+0xda>
 80070b0:	4628      	mov	r0, r5
 80070b2:	f7f9 f82f 	bl	8000114 <rt_hw_interrupt_enable>
 80070b6:	b1ac      	cbz	r4, 80070e4 <rt_free+0x48>
 80070b8:	07a1      	lsls	r1, r4, #30
 80070ba:	d16f      	bne.n	800719c <rt_free+0x100>
 80070bc:	4d46      	ldr	r5, [pc, #280]	; (80071d8 <rt_free+0x13c>)
 80070be:	6829      	ldr	r1, [r5, #0]
 80070c0:	428c      	cmp	r4, r1
 80070c2:	d311      	bcc.n	80070e8 <rt_free+0x4c>
 80070c4:	4a45      	ldr	r2, [pc, #276]	; (80071dc <rt_free+0x140>)
 80070c6:	6813      	ldr	r3, [r2, #0]
 80070c8:	429c      	cmp	r4, r3
 80070ca:	d20d      	bcs.n	80070e8 <rt_free+0x4c>
 80070cc:	4944      	ldr	r1, [pc, #272]	; (80071e0 <rt_free+0x144>)
 80070ce:	680a      	ldr	r2, [r1, #0]
 80070d0:	b10a      	cbz	r2, 80070d6 <rt_free+0x3a>
 80070d2:	4620      	mov	r0, r4
 80070d4:	4790      	blx	r2
 80070d6:	682b      	ldr	r3, [r5, #0]
 80070d8:	429c      	cmp	r4, r3
 80070da:	d303      	bcc.n	80070e4 <rt_free+0x48>
 80070dc:	483f      	ldr	r0, [pc, #252]	; (80071dc <rt_free+0x140>)
 80070de:	6801      	ldr	r1, [r0, #0]
 80070e0:	428c      	cmp	r4, r1
 80070e2:	d310      	bcc.n	8007106 <rt_free+0x6a>
 80070e4:	b003      	add	sp, #12
 80070e6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80070e8:	2600      	movs	r6, #0
 80070ea:	483e      	ldr	r0, [pc, #248]	; (80071e4 <rt_free+0x148>)
 80070ec:	493e      	ldr	r1, [pc, #248]	; (80071e8 <rt_free+0x14c>)
 80070ee:	4a3f      	ldr	r2, [pc, #252]	; (80071ec <rt_free+0x150>)
 80070f0:	f240 2302 	movw	r3, #514	; 0x202
 80070f4:	f88d 6005 	strb.w	r6, [sp, #5]
 80070f8:	f7ff fd70 	bl	8006bdc <rt_kprintf>
 80070fc:	f89d 0005 	ldrb.w	r0, [sp, #5]
 8007100:	2800      	cmp	r0, #0
 8007102:	d0fb      	beq.n	80070fc <rt_free+0x60>
 8007104:	e7e2      	b.n	80070cc <rt_free+0x30>
 8007106:	483a      	ldr	r0, [pc, #232]	; (80071f0 <rt_free+0x154>)
 8007108:	f04f 31ff 	mov.w	r1, #4294967295
 800710c:	f7fe ff88 	bl	8006020 <rt_sem_take>
 8007110:	f834 7c0a 	ldrh.w	r7, [r4, #-10]
 8007114:	f1a4 060c 	sub.w	r6, r4, #12
 8007118:	2f00      	cmp	r7, #0
 800711a:	d04e      	beq.n	80071ba <rt_free+0x11e>
 800711c:	f834 3c0c 	ldrh.w	r3, [r4, #-12]
 8007120:	f5b3 5ff5 	cmp.w	r3, #7840	; 0x1ea0
 8007124:	d00d      	beq.n	8007142 <rt_free+0xa6>
 8007126:	2700      	movs	r7, #0
 8007128:	482e      	ldr	r0, [pc, #184]	; (80071e4 <rt_free+0x148>)
 800712a:	4932      	ldr	r1, [pc, #200]	; (80071f4 <rt_free+0x158>)
 800712c:	4a2f      	ldr	r2, [pc, #188]	; (80071ec <rt_free+0x150>)
 800712e:	f44f 7307 	mov.w	r3, #540	; 0x21c
 8007132:	f88d 7007 	strb.w	r7, [sp, #7]
 8007136:	f7ff fd51 	bl	8006bdc <rt_kprintf>
 800713a:	f89d 0007 	ldrb.w	r0, [sp, #7]
 800713e:	2800      	cmp	r0, #0
 8007140:	d0fb      	beq.n	800713a <rt_free+0x9e>
 8007142:	4a2d      	ldr	r2, [pc, #180]	; (80071f8 <rt_free+0x15c>)
 8007144:	2300      	movs	r3, #0
 8007146:	6811      	ldr	r1, [r2, #0]
 8007148:	f824 3c0a 	strh.w	r3, [r4, #-10]
 800714c:	428e      	cmp	r6, r1
 800714e:	f824 3c0c 	strh.w	r3, [r4, #-12]
 8007152:	d200      	bcs.n	8007156 <rt_free+0xba>
 8007154:	6016      	str	r6, [r2, #0]
 8007156:	4b29      	ldr	r3, [pc, #164]	; (80071fc <rt_free+0x160>)
 8007158:	6829      	ldr	r1, [r5, #0]
 800715a:	681a      	ldr	r2, [r3, #0]
 800715c:	f854 0c08 	ldr.w	r0, [r4, #-8]
 8007160:	1a10      	subs	r0, r2, r0
 8007162:	1b8a      	subs	r2, r1, r6
 8007164:	1a81      	subs	r1, r0, r2
 8007166:	4630      	mov	r0, r6
 8007168:	6019      	str	r1, [r3, #0]
 800716a:	f7ff fda9 	bl	8006cc0 <plug_holes>
 800716e:	4820      	ldr	r0, [pc, #128]	; (80071f0 <rt_free+0x154>)
 8007170:	f7ff f826 	bl	80061c0 <rt_sem_release>
 8007174:	e7b6      	b.n	80070e4 <rt_free+0x48>
 8007176:	4822      	ldr	r0, [pc, #136]	; (8007200 <rt_free+0x164>)
 8007178:	491c      	ldr	r1, [pc, #112]	; (80071ec <rt_free+0x150>)
 800717a:	f7ff fd2f 	bl	8006bdc <rt_kprintf>
 800717e:	2600      	movs	r6, #0
 8007180:	4818      	ldr	r0, [pc, #96]	; (80071e4 <rt_free+0x148>)
 8007182:	4920      	ldr	r1, [pc, #128]	; (8007204 <rt_free+0x168>)
 8007184:	4a19      	ldr	r2, [pc, #100]	; (80071ec <rt_free+0x150>)
 8007186:	f44f 73fe 	mov.w	r3, #508	; 0x1fc
 800718a:	f88d 6003 	strb.w	r6, [sp, #3]
 800718e:	f7ff fd25 	bl	8006bdc <rt_kprintf>
 8007192:	f89d 3003 	ldrb.w	r3, [sp, #3]
 8007196:	2b00      	cmp	r3, #0
 8007198:	d0fb      	beq.n	8007192 <rt_free+0xf6>
 800719a:	e789      	b.n	80070b0 <rt_free+0x14>
 800719c:	2500      	movs	r5, #0
 800719e:	4811      	ldr	r0, [pc, #68]	; (80071e4 <rt_free+0x148>)
 80071a0:	4919      	ldr	r1, [pc, #100]	; (8007208 <rt_free+0x16c>)
 80071a2:	4a12      	ldr	r2, [pc, #72]	; (80071ec <rt_free+0x150>)
 80071a4:	f44f 7300 	mov.w	r3, #512	; 0x200
 80071a8:	f88d 5004 	strb.w	r5, [sp, #4]
 80071ac:	f7ff fd16 	bl	8006bdc <rt_kprintf>
 80071b0:	f89d 0004 	ldrb.w	r0, [sp, #4]
 80071b4:	2800      	cmp	r0, #0
 80071b6:	d0fb      	beq.n	80071b0 <rt_free+0x114>
 80071b8:	e780      	b.n	80070bc <rt_free+0x20>
 80071ba:	480a      	ldr	r0, [pc, #40]	; (80071e4 <rt_free+0x148>)
 80071bc:	4913      	ldr	r1, [pc, #76]	; (800720c <rt_free+0x170>)
 80071be:	4a0b      	ldr	r2, [pc, #44]	; (80071ec <rt_free+0x150>)
 80071c0:	f240 231b 	movw	r3, #539	; 0x21b
 80071c4:	f88d 7006 	strb.w	r7, [sp, #6]
 80071c8:	f7ff fd08 	bl	8006bdc <rt_kprintf>
 80071cc:	f89d 2006 	ldrb.w	r2, [sp, #6]
 80071d0:	2a00      	cmp	r2, #0
 80071d2:	d0fb      	beq.n	80071cc <rt_free+0x130>
 80071d4:	e7a2      	b.n	800711c <rt_free+0x80>
 80071d6:	bf00      	nop
 80071d8:	20000960 	.word	0x20000960
 80071dc:	20000938 	.word	0x20000938
 80071e0:	2000095c 	.word	0x2000095c
 80071e4:	08008a48 	.word	0x08008a48
 80071e8:	080096b8 	.word	0x080096b8
 80071ec:	0800951c 	.word	0x0800951c
 80071f0:	2000093c 	.word	0x2000093c
 80071f4:	08009720 	.word	0x08009720
 80071f8:	20000928 	.word	0x20000928
 80071fc:	2000092c 	.word	0x2000092c
 8007200:	080092a8 	.word	0x080092a8
 8007204:	08009684 	.word	0x08009684
 8007208:	08009688 	.word	0x08009688
 800720c:	08009714 	.word	0x08009714

08007210 <rt_object_init>:
 8007210:	b538      	push	{r3, r4, r5, lr}
 8007212:	f061 057f 	orn	r5, r1, #127	; 0x7f
 8007216:	7205      	strb	r5, [r0, #8]
 8007218:	4d0e      	ldr	r5, [pc, #56]	; (8007254 <rt_object_init+0x44>)
 800721a:	460b      	mov	r3, r1
 800721c:	4611      	mov	r1, r2
 800721e:	2208      	movs	r2, #8
 8007220:	4604      	mov	r4, r0
 8007222:	eb05 1503 	add.w	r5, r5, r3, lsl #4
 8007226:	f7ff f9d7 	bl	80065d8 <rt_strncpy>
 800722a:	480b      	ldr	r0, [pc, #44]	; (8007258 <rt_object_init+0x48>)
 800722c:	6801      	ldr	r1, [r0, #0]
 800722e:	b109      	cbz	r1, 8007234 <rt_object_init+0x24>
 8007230:	4620      	mov	r0, r4
 8007232:	4788      	blx	r1
 8007234:	f7f8 ff6a 	bl	800010c <rt_hw_interrupt_disable>
 8007238:	686b      	ldr	r3, [r5, #4]
 800723a:	f104 020c 	add.w	r2, r4, #12
 800723e:	4629      	mov	r1, r5
 8007240:	60e3      	str	r3, [r4, #12]
 8007242:	f841 2f04 	str.w	r2, [r1, #4]!
 8007246:	605a      	str	r2, [r3, #4]
 8007248:	6121      	str	r1, [r4, #16]
 800724a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800724e:	f7f8 bf61 	b.w	8000114 <rt_hw_interrupt_enable>
 8007252:	bf00      	nop
 8007254:	200002b0 	.word	0x200002b0
 8007258:	20000968 	.word	0x20000968

0800725c <rt_object_detach>:
 800725c:	b510      	push	{r4, lr}
 800725e:	4604      	mov	r4, r0
 8007260:	b082      	sub	sp, #8
 8007262:	b198      	cbz	r0, 800728c <rt_object_detach+0x30>
 8007264:	4810      	ldr	r0, [pc, #64]	; (80072a8 <rt_object_detach+0x4c>)
 8007266:	6801      	ldr	r1, [r0, #0]
 8007268:	b109      	cbz	r1, 800726e <rt_object_detach+0x12>
 800726a:	4620      	mov	r0, r4
 800726c:	4788      	blx	r1
 800726e:	f7f8 ff4d 	bl	800010c <rt_hw_interrupt_disable>
 8007272:	68e2      	ldr	r2, [r4, #12]
 8007274:	6921      	ldr	r1, [r4, #16]
 8007276:	f104 030c 	add.w	r3, r4, #12
 800727a:	6051      	str	r1, [r2, #4]
 800727c:	6921      	ldr	r1, [r4, #16]
 800727e:	6123      	str	r3, [r4, #16]
 8007280:	600a      	str	r2, [r1, #0]
 8007282:	60e3      	str	r3, [r4, #12]
 8007284:	f7f8 ff46 	bl	8000114 <rt_hw_interrupt_enable>
 8007288:	b002      	add	sp, #8
 800728a:	bd10      	pop	{r4, pc}
 800728c:	4807      	ldr	r0, [pc, #28]	; (80072ac <rt_object_detach+0x50>)
 800728e:	4908      	ldr	r1, [pc, #32]	; (80072b0 <rt_object_detach+0x54>)
 8007290:	4a08      	ldr	r2, [pc, #32]	; (80072b4 <rt_object_detach+0x58>)
 8007292:	23fb      	movs	r3, #251	; 0xfb
 8007294:	f88d 4007 	strb.w	r4, [sp, #7]
 8007298:	f7ff fca0 	bl	8006bdc <rt_kprintf>
 800729c:	f89d 3007 	ldrb.w	r3, [sp, #7]
 80072a0:	2b00      	cmp	r3, #0
 80072a2:	d0fb      	beq.n	800729c <rt_object_detach+0x40>
 80072a4:	e7de      	b.n	8007264 <rt_object_detach+0x8>
 80072a6:	bf00      	nop
 80072a8:	2000096c 	.word	0x2000096c
 80072ac:	08008a48 	.word	0x08008a48
 80072b0:	08009770 	.word	0x08009770
 80072b4:	080097cc 	.word	0x080097cc

080072b8 <rt_object_allocate>:
 80072b8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80072ba:	b083      	sub	sp, #12
 80072bc:	4606      	mov	r6, r0
 80072be:	460f      	mov	r7, r1
 80072c0:	f7f8 ff24 	bl	800010c <rt_hw_interrupt_disable>
 80072c4:	4604      	mov	r4, r0
 80072c6:	f7fe ffbd 	bl	8006244 <rt_interrupt_get_nest>
 80072ca:	2800      	cmp	r0, #0
 80072cc:	d125      	bne.n	800731a <rt_object_allocate+0x62>
 80072ce:	4620      	mov	r0, r4
 80072d0:	f7f8 ff20 	bl	8000114 <rt_hw_interrupt_enable>
 80072d4:	481a      	ldr	r0, [pc, #104]	; (8007340 <rt_object_allocate+0x88>)
 80072d6:	eb00 1506 	add.w	r5, r0, r6, lsl #4
 80072da:	68e8      	ldr	r0, [r5, #12]
 80072dc:	f7ff fdcc 	bl	8006e78 <rt_malloc>
 80072e0:	4604      	mov	r4, r0
 80072e2:	b1b8      	cbz	r0, 8007314 <rt_object_allocate+0x5c>
 80072e4:	2100      	movs	r1, #0
 80072e6:	7241      	strb	r1, [r0, #9]
 80072e8:	2208      	movs	r2, #8
 80072ea:	7206      	strb	r6, [r0, #8]
 80072ec:	4639      	mov	r1, r7
 80072ee:	f7ff f973 	bl	80065d8 <rt_strncpy>
 80072f2:	4a14      	ldr	r2, [pc, #80]	; (8007344 <rt_object_allocate+0x8c>)
 80072f4:	6813      	ldr	r3, [r2, #0]
 80072f6:	b10b      	cbz	r3, 80072fc <rt_object_allocate+0x44>
 80072f8:	4620      	mov	r0, r4
 80072fa:	4798      	blx	r3
 80072fc:	f7f8 ff06 	bl	800010c <rt_hw_interrupt_disable>
 8007300:	6869      	ldr	r1, [r5, #4]
 8007302:	f104 020c 	add.w	r2, r4, #12
 8007306:	60e1      	str	r1, [r4, #12]
 8007308:	f845 2f04 	str.w	r2, [r5, #4]!
 800730c:	604a      	str	r2, [r1, #4]
 800730e:	6125      	str	r5, [r4, #16]
 8007310:	f7f8 ff00 	bl	8000114 <rt_hw_interrupt_enable>
 8007314:	4620      	mov	r0, r4
 8007316:	b003      	add	sp, #12
 8007318:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800731a:	480b      	ldr	r0, [pc, #44]	; (8007348 <rt_object_allocate+0x90>)
 800731c:	490b      	ldr	r1, [pc, #44]	; (800734c <rt_object_allocate+0x94>)
 800731e:	f7ff fc5d 	bl	8006bdc <rt_kprintf>
 8007322:	2500      	movs	r5, #0
 8007324:	480a      	ldr	r0, [pc, #40]	; (8007350 <rt_object_allocate+0x98>)
 8007326:	490b      	ldr	r1, [pc, #44]	; (8007354 <rt_object_allocate+0x9c>)
 8007328:	4a08      	ldr	r2, [pc, #32]	; (800734c <rt_object_allocate+0x94>)
 800732a:	f44f 738c 	mov.w	r3, #280	; 0x118
 800732e:	f88d 5007 	strb.w	r5, [sp, #7]
 8007332:	f7ff fc53 	bl	8006bdc <rt_kprintf>
 8007336:	f89d 3007 	ldrb.w	r3, [sp, #7]
 800733a:	2b00      	cmp	r3, #0
 800733c:	d0fb      	beq.n	8007336 <rt_object_allocate+0x7e>
 800733e:	e7c6      	b.n	80072ce <rt_object_allocate+0x16>
 8007340:	200002b0 	.word	0x200002b0
 8007344:	20000968 	.word	0x20000968
 8007348:	080092a8 	.word	0x080092a8
 800734c:	08009748 	.word	0x08009748
 8007350:	08008a48 	.word	0x08008a48
 8007354:	08009684 	.word	0x08009684

08007358 <rt_object_delete>:
 8007358:	b530      	push	{r4, r5, lr}
 800735a:	4604      	mov	r4, r0
 800735c:	b083      	sub	sp, #12
 800735e:	2800      	cmp	r0, #0
 8007360:	d029      	beq.n	80073b6 <rt_object_delete+0x5e>
 8007362:	f994 0008 	ldrsb.w	r0, [r4, #8]
 8007366:	2800      	cmp	r0, #0
 8007368:	db16      	blt.n	8007398 <rt_object_delete+0x40>
 800736a:	4a1a      	ldr	r2, [pc, #104]	; (80073d4 <rt_object_delete+0x7c>)
 800736c:	6813      	ldr	r3, [r2, #0]
 800736e:	b10b      	cbz	r3, 8007374 <rt_object_delete+0x1c>
 8007370:	4620      	mov	r0, r4
 8007372:	4798      	blx	r3
 8007374:	f7f8 feca 	bl	800010c <rt_hw_interrupt_disable>
 8007378:	68e2      	ldr	r2, [r4, #12]
 800737a:	6921      	ldr	r1, [r4, #16]
 800737c:	f104 030c 	add.w	r3, r4, #12
 8007380:	6051      	str	r1, [r2, #4]
 8007382:	6921      	ldr	r1, [r4, #16]
 8007384:	6123      	str	r3, [r4, #16]
 8007386:	600a      	str	r2, [r1, #0]
 8007388:	60e3      	str	r3, [r4, #12]
 800738a:	f7f8 fec3 	bl	8000114 <rt_hw_interrupt_enable>
 800738e:	4620      	mov	r0, r4
 8007390:	f7ff fe84 	bl	800709c <rt_free>
 8007394:	b003      	add	sp, #12
 8007396:	bd30      	pop	{r4, r5, pc}
 8007398:	2500      	movs	r5, #0
 800739a:	480f      	ldr	r0, [pc, #60]	; (80073d8 <rt_object_delete+0x80>)
 800739c:	490f      	ldr	r1, [pc, #60]	; (80073dc <rt_object_delete+0x84>)
 800739e:	4a10      	ldr	r2, [pc, #64]	; (80073e0 <rt_object_delete+0x88>)
 80073a0:	f44f 73ad 	mov.w	r3, #346	; 0x15a
 80073a4:	f88d 5007 	strb.w	r5, [sp, #7]
 80073a8:	f7ff fc18 	bl	8006bdc <rt_kprintf>
 80073ac:	f89d 1007 	ldrb.w	r1, [sp, #7]
 80073b0:	2900      	cmp	r1, #0
 80073b2:	d0fb      	beq.n	80073ac <rt_object_delete+0x54>
 80073b4:	e7d9      	b.n	800736a <rt_object_delete+0x12>
 80073b6:	4808      	ldr	r0, [pc, #32]	; (80073d8 <rt_object_delete+0x80>)
 80073b8:	490a      	ldr	r1, [pc, #40]	; (80073e4 <rt_object_delete+0x8c>)
 80073ba:	4a09      	ldr	r2, [pc, #36]	; (80073e0 <rt_object_delete+0x88>)
 80073bc:	f240 1359 	movw	r3, #345	; 0x159
 80073c0:	f88d 4006 	strb.w	r4, [sp, #6]
 80073c4:	f7ff fc0a 	bl	8006bdc <rt_kprintf>
 80073c8:	f89d 3006 	ldrb.w	r3, [sp, #6]
 80073cc:	2b00      	cmp	r3, #0
 80073ce:	d0fb      	beq.n	80073c8 <rt_object_delete+0x70>
 80073d0:	e7c7      	b.n	8007362 <rt_object_delete+0xa>
 80073d2:	bf00      	nop
 80073d4:	2000096c 	.word	0x2000096c
 80073d8:	08008a48 	.word	0x08008a48
 80073dc:	08009784 	.word	0x08009784
 80073e0:	0800975c 	.word	0x0800975c
 80073e4:	08009770 	.word	0x08009770

080073e8 <rt_object_is_systemobject>:
 80073e8:	b510      	push	{r4, lr}
 80073ea:	4604      	mov	r4, r0
 80073ec:	b082      	sub	sp, #8
 80073ee:	b120      	cbz	r0, 80073fa <rt_object_is_systemobject+0x12>
 80073f0:	f994 0008 	ldrsb.w	r0, [r4, #8]
 80073f4:	0fc0      	lsrs	r0, r0, #31
 80073f6:	b002      	add	sp, #8
 80073f8:	bd10      	pop	{r4, pc}
 80073fa:	4807      	ldr	r0, [pc, #28]	; (8007418 <rt_object_is_systemobject+0x30>)
 80073fc:	4907      	ldr	r1, [pc, #28]	; (800741c <rt_object_is_systemobject+0x34>)
 80073fe:	4a08      	ldr	r2, [pc, #32]	; (8007420 <rt_object_is_systemobject+0x38>)
 8007400:	f44f 73bf 	mov.w	r3, #382	; 0x17e
 8007404:	f88d 4007 	strb.w	r4, [sp, #7]
 8007408:	f7ff fbe8 	bl	8006bdc <rt_kprintf>
 800740c:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8007410:	2b00      	cmp	r3, #0
 8007412:	d0fb      	beq.n	800740c <rt_object_is_systemobject+0x24>
 8007414:	e7ec      	b.n	80073f0 <rt_object_is_systemobject+0x8>
 8007416:	bf00      	nop
 8007418:	08008a48 	.word	0x08008a48
 800741c:	08009770 	.word	0x08009770
 8007420:	080097b0 	.word	0x080097b0

08007424 <rt_system_scheduler_init>:
 8007424:	490f      	ldr	r1, [pc, #60]	; (8007464 <rt_system_scheduler_init+0x40>)
 8007426:	2300      	movs	r3, #0
 8007428:	4a0f      	ldr	r2, [pc, #60]	; (8007468 <rt_system_scheduler_init+0x44>)
 800742a:	b410      	push	{r4}
 800742c:	800b      	strh	r3, [r1, #0]
 800742e:	eb02 04c3 	add.w	r4, r2, r3, lsl #3
 8007432:	1c58      	adds	r0, r3, #1
 8007434:	f842 4033 	str.w	r4, [r2, r3, lsl #3]
 8007438:	3302      	adds	r3, #2
 800743a:	eb02 01c0 	add.w	r1, r2, r0, lsl #3
 800743e:	2b20      	cmp	r3, #32
 8007440:	6064      	str	r4, [r4, #4]
 8007442:	f842 1030 	str.w	r1, [r2, r0, lsl #3]
 8007446:	6049      	str	r1, [r1, #4]
 8007448:	d1f1      	bne.n	800742e <rt_system_scheduler_init+0xa>
 800744a:	4908      	ldr	r1, [pc, #32]	; (800746c <rt_system_scheduler_init+0x48>)
 800744c:	201f      	movs	r0, #31
 800744e:	7008      	strb	r0, [r1, #0]
 8007450:	4b07      	ldr	r3, [pc, #28]	; (8007470 <rt_system_scheduler_init+0x4c>)
 8007452:	4808      	ldr	r0, [pc, #32]	; (8007474 <rt_system_scheduler_init+0x50>)
 8007454:	4908      	ldr	r1, [pc, #32]	; (8007478 <rt_system_scheduler_init+0x54>)
 8007456:	2200      	movs	r2, #0
 8007458:	6002      	str	r2, [r0, #0]
 800745a:	600a      	str	r2, [r1, #0]
 800745c:	605b      	str	r3, [r3, #4]
 800745e:	601b      	str	r3, [r3, #0]
 8007460:	bc10      	pop	{r4}
 8007462:	4770      	bx	lr
 8007464:	20000970 	.word	0x20000970
 8007468:	20001a3c 	.word	0x20001a3c
 800746c:	20001b3c 	.word	0x20001b3c
 8007470:	20001b48 	.word	0x20001b48
 8007474:	20001b40 	.word	0x20001b40
 8007478:	20001b44 	.word	0x20001b44

0800747c <rt_system_scheduler_start>:
 800747c:	b508      	push	{r3, lr}
 800747e:	f641 3344 	movw	r3, #6980	; 0x1b44
 8007482:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8007486:	6818      	ldr	r0, [r3, #0]
 8007488:	f7ff fbfa 	bl	8006c80 <__rt_ffs>
 800748c:	f641 213c 	movw	r1, #6716	; 0x1a3c
 8007490:	3801      	subs	r0, #1
 8007492:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8007496:	f851 0030 	ldr.w	r0, [r1, r0, lsl #3]
 800749a:	f641 3340 	movw	r3, #6976	; 0x1b40
 800749e:	f1a0 0214 	sub.w	r2, r0, #20
 80074a2:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80074a6:	3008      	adds	r0, #8
 80074a8:	601a      	str	r2, [r3, #0]
 80074aa:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80074ae:	f7f8 be62 	b.w	8000176 <rt_hw_context_switch_to>
 80074b2:	bf00      	nop

080074b4 <rt_schedule>:
 80074b4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80074b6:	b083      	sub	sp, #12
 80074b8:	f7f8 fe28 	bl	800010c <rt_hw_interrupt_disable>
 80074bc:	4b29      	ldr	r3, [pc, #164]	; (8007564 <rt_schedule+0xb0>)
 80074be:	4606      	mov	r6, r0
 80074c0:	f9b3 0000 	ldrsh.w	r0, [r3]
 80074c4:	b120      	cbz	r0, 80074d0 <rt_schedule+0x1c>
 80074c6:	4630      	mov	r0, r6
 80074c8:	f7f8 fe24 	bl	8000114 <rt_hw_interrupt_enable>
 80074cc:	b003      	add	sp, #12
 80074ce:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80074d0:	4925      	ldr	r1, [pc, #148]	; (8007568 <rt_schedule+0xb4>)
 80074d2:	6808      	ldr	r0, [r1, #0]
 80074d4:	f7ff fbd4 	bl	8006c80 <__rt_ffs>
 80074d8:	4a24      	ldr	r2, [pc, #144]	; (800756c <rt_schedule+0xb8>)
 80074da:	3801      	subs	r0, #1
 80074dc:	4b24      	ldr	r3, [pc, #144]	; (8007570 <rt_schedule+0xbc>)
 80074de:	f852 4030 	ldr.w	r4, [r2, r0, lsl #3]
 80074e2:	681f      	ldr	r7, [r3, #0]
 80074e4:	f1a4 0514 	sub.w	r5, r4, #20
 80074e8:	42bd      	cmp	r5, r7
 80074ea:	d0ec      	beq.n	80074c6 <rt_schedule+0x12>
 80074ec:	4921      	ldr	r1, [pc, #132]	; (8007574 <rt_schedule+0xc0>)
 80074ee:	601d      	str	r5, [r3, #0]
 80074f0:	680a      	ldr	r2, [r1, #0]
 80074f2:	4921      	ldr	r1, [pc, #132]	; (8007578 <rt_schedule+0xc4>)
 80074f4:	7008      	strb	r0, [r1, #0]
 80074f6:	b112      	cbz	r2, 80074fe <rt_schedule+0x4a>
 80074f8:	4638      	mov	r0, r7
 80074fa:	4629      	mov	r1, r5
 80074fc:	4790      	blx	r2
 80074fe:	b31d      	cbz	r5, 8007548 <rt_schedule+0x94>
 8007500:	68a3      	ldr	r3, [r4, #8]
 8007502:	6962      	ldr	r2, [r4, #20]
 8007504:	4293      	cmp	r3, r2
 8007506:	d903      	bls.n	8007510 <rt_schedule+0x5c>
 8007508:	8b21      	ldrh	r1, [r4, #24]
 800750a:	1888      	adds	r0, r1, r2
 800750c:	4283      	cmp	r3, r0
 800750e:	d907      	bls.n	8007520 <rt_schedule+0x6c>
 8007510:	481a      	ldr	r0, [pc, #104]	; (800757c <rt_schedule+0xc8>)
 8007512:	4629      	mov	r1, r5
 8007514:	f7ff fb62 	bl	8006bdc <rt_kprintf>
 8007518:	f7f8 fdf8 	bl	800010c <rt_hw_interrupt_disable>
 800751c:	b138      	cbz	r0, 800752e <rt_schedule+0x7a>
 800751e:	e7fe      	b.n	800751e <rt_schedule+0x6a>
 8007520:	3220      	adds	r2, #32
 8007522:	4293      	cmp	r3, r2
 8007524:	d803      	bhi.n	800752e <rt_schedule+0x7a>
 8007526:	4816      	ldr	r0, [pc, #88]	; (8007580 <rt_schedule+0xcc>)
 8007528:	4629      	mov	r1, r5
 800752a:	f7ff fb57 	bl	8006bdc <rt_kprintf>
 800752e:	4b15      	ldr	r3, [pc, #84]	; (8007584 <rt_schedule+0xd0>)
 8007530:	f107 001c 	add.w	r0, r7, #28
 8007534:	781a      	ldrb	r2, [r3, #0]
 8007536:	f104 0108 	add.w	r1, r4, #8
 800753a:	b112      	cbz	r2, 8007542 <rt_schedule+0x8e>
 800753c:	f7f8 fded 	bl	800011a <rt_hw_context_switch>
 8007540:	e7c1      	b.n	80074c6 <rt_schedule+0x12>
 8007542:	f7f8 fdea 	bl	800011a <rt_hw_context_switch>
 8007546:	e7be      	b.n	80074c6 <rt_schedule+0x12>
 8007548:	480f      	ldr	r0, [pc, #60]	; (8007588 <rt_schedule+0xd4>)
 800754a:	4910      	ldr	r1, [pc, #64]	; (800758c <rt_schedule+0xd8>)
 800754c:	4a10      	ldr	r2, [pc, #64]	; (8007590 <rt_schedule+0xdc>)
 800754e:	235a      	movs	r3, #90	; 0x5a
 8007550:	f88d 5007 	strb.w	r5, [sp, #7]
 8007554:	f7ff fb42 	bl	8006bdc <rt_kprintf>
 8007558:	f89d 0007 	ldrb.w	r0, [sp, #7]
 800755c:	2800      	cmp	r0, #0
 800755e:	d0fb      	beq.n	8007558 <rt_schedule+0xa4>
 8007560:	e7ce      	b.n	8007500 <rt_schedule+0x4c>
 8007562:	bf00      	nop
 8007564:	20000970 	.word	0x20000970
 8007568:	20001b44 	.word	0x20001b44
 800756c:	20001a3c 	.word	0x20001a3c
 8007570:	20001b40 	.word	0x20001b40
 8007574:	20000974 	.word	0x20000974
 8007578:	20001b3c 	.word	0x20001b3c
 800757c:	08009848 	.word	0x08009848
 8007580:	08009864 	.word	0x08009864
 8007584:	20001a2d 	.word	0x20001a2d
 8007588:	08008a48 	.word	0x08008a48
 800758c:	08009834 	.word	0x08009834
 8007590:	08009818 	.word	0x08009818

08007594 <rt_schedule_insert_thread>:
 8007594:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007596:	4604      	mov	r4, r0
 8007598:	b083      	sub	sp, #12
 800759a:	b1c8      	cbz	r0, 80075d0 <rt_schedule_insert_thread+0x3c>
 800759c:	f7f8 fdb6 	bl	800010c <rt_hw_interrupt_disable>
 80075a0:	4e12      	ldr	r6, [pc, #72]	; (80075ec <rt_schedule_insert_thread+0x58>)
 80075a2:	f894 1035 	ldrb.w	r1, [r4, #53]	; 0x35
 80075a6:	4a12      	ldr	r2, [pc, #72]	; (80075f0 <rt_schedule_insert_thread+0x5c>)
 80075a8:	2501      	movs	r5, #1
 80075aa:	eb06 03c1 	add.w	r3, r6, r1, lsl #3
 80075ae:	f884 5034 	strb.w	r5, [r4, #52]	; 0x34
 80075b2:	685d      	ldr	r5, [r3, #4]
 80075b4:	6817      	ldr	r7, [r2, #0]
 80075b6:	6ba6      	ldr	r6, [r4, #56]	; 0x38
 80075b8:	f104 0114 	add.w	r1, r4, #20
 80075bc:	6029      	str	r1, [r5, #0]
 80075be:	61a5      	str	r5, [r4, #24]
 80075c0:	433e      	orrs	r6, r7
 80075c2:	6163      	str	r3, [r4, #20]
 80075c4:	6059      	str	r1, [r3, #4]
 80075c6:	6016      	str	r6, [r2, #0]
 80075c8:	f7f8 fda4 	bl	8000114 <rt_hw_interrupt_enable>
 80075cc:	b003      	add	sp, #12
 80075ce:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80075d0:	4808      	ldr	r0, [pc, #32]	; (80075f4 <rt_schedule_insert_thread+0x60>)
 80075d2:	4909      	ldr	r1, [pc, #36]	; (80075f8 <rt_schedule_insert_thread+0x64>)
 80075d4:	4a09      	ldr	r2, [pc, #36]	; (80075fc <rt_schedule_insert_thread+0x68>)
 80075d6:	f240 130f 	movw	r3, #271	; 0x10f
 80075da:	f88d 4007 	strb.w	r4, [sp, #7]
 80075de:	f7ff fafd 	bl	8006bdc <rt_kprintf>
 80075e2:	f89d 3007 	ldrb.w	r3, [sp, #7]
 80075e6:	2b00      	cmp	r3, #0
 80075e8:	d0fb      	beq.n	80075e2 <rt_schedule_insert_thread+0x4e>
 80075ea:	e7d7      	b.n	800759c <rt_schedule_insert_thread+0x8>
 80075ec:	20001a3c 	.word	0x20001a3c
 80075f0:	20001b44 	.word	0x20001b44
 80075f4:	08008a48 	.word	0x08008a48
 80075f8:	08009834 	.word	0x08009834
 80075fc:	080097e0 	.word	0x080097e0

08007600 <rt_schedule_remove_thread>:
 8007600:	b530      	push	{r4, r5, lr}
 8007602:	4604      	mov	r4, r0
 8007604:	b083      	sub	sp, #12
 8007606:	b1f0      	cbz	r0, 8007646 <rt_schedule_remove_thread+0x46>
 8007608:	f7f8 fd80 	bl	800010c <rt_hw_interrupt_disable>
 800760c:	6961      	ldr	r1, [r4, #20]
 800760e:	69a2      	ldr	r2, [r4, #24]
 8007610:	f104 0314 	add.w	r3, r4, #20
 8007614:	604a      	str	r2, [r1, #4]
 8007616:	69a5      	ldr	r5, [r4, #24]
 8007618:	4a12      	ldr	r2, [pc, #72]	; (8007664 <rt_schedule_remove_thread+0x64>)
 800761a:	6029      	str	r1, [r5, #0]
 800761c:	f894 1035 	ldrb.w	r1, [r4, #53]	; 0x35
 8007620:	6163      	str	r3, [r4, #20]
 8007622:	f852 5031 	ldr.w	r5, [r2, r1, lsl #3]
 8007626:	eb02 02c1 	add.w	r2, r2, r1, lsl #3
 800762a:	42aa      	cmp	r2, r5
 800762c:	61a3      	str	r3, [r4, #24]
 800762e:	d003      	beq.n	8007638 <rt_schedule_remove_thread+0x38>
 8007630:	f7f8 fd70 	bl	8000114 <rt_hw_interrupt_enable>
 8007634:	b003      	add	sp, #12
 8007636:	bd30      	pop	{r4, r5, pc}
 8007638:	4b0b      	ldr	r3, [pc, #44]	; (8007668 <rt_schedule_remove_thread+0x68>)
 800763a:	6ba1      	ldr	r1, [r4, #56]	; 0x38
 800763c:	681a      	ldr	r2, [r3, #0]
 800763e:	ea22 0201 	bic.w	r2, r2, r1
 8007642:	601a      	str	r2, [r3, #0]
 8007644:	e7f4      	b.n	8007630 <rt_schedule_remove_thread+0x30>
 8007646:	4809      	ldr	r0, [pc, #36]	; (800766c <rt_schedule_remove_thread+0x6c>)
 8007648:	4909      	ldr	r1, [pc, #36]	; (8007670 <rt_schedule_remove_thread+0x70>)
 800764a:	4a0a      	ldr	r2, [pc, #40]	; (8007674 <rt_schedule_remove_thread+0x74>)
 800764c:	f240 133d 	movw	r3, #317	; 0x13d
 8007650:	f88d 4007 	strb.w	r4, [sp, #7]
 8007654:	f7ff fac2 	bl	8006bdc <rt_kprintf>
 8007658:	f89d 3007 	ldrb.w	r3, [sp, #7]
 800765c:	2b00      	cmp	r3, #0
 800765e:	d0fb      	beq.n	8007658 <rt_schedule_remove_thread+0x58>
 8007660:	e7d2      	b.n	8007608 <rt_schedule_remove_thread+0x8>
 8007662:	bf00      	nop
 8007664:	20001a3c 	.word	0x20001a3c
 8007668:	20001b44 	.word	0x20001b44
 800766c:	08008a48 	.word	0x08008a48
 8007670:	08009834 	.word	0x08009834
 8007674:	080097fc 	.word	0x080097fc

08007678 <rt_enter_critical>:
 8007678:	b508      	push	{r3, lr}
 800767a:	f7f8 fd47 	bl	800010c <rt_hw_interrupt_disable>
 800767e:	f640 1370 	movw	r3, #2416	; 0x970
 8007682:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8007686:	881a      	ldrh	r2, [r3, #0]
 8007688:	1c51      	adds	r1, r2, #1
 800768a:	8019      	strh	r1, [r3, #0]
 800768c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8007690:	f7f8 bd40 	b.w	8000114 <rt_hw_interrupt_enable>

08007694 <rt_exit_critical>:
 8007694:	b508      	push	{r3, lr}
 8007696:	f7f8 fd39 	bl	800010c <rt_hw_interrupt_disable>
 800769a:	4b0a      	ldr	r3, [pc, #40]	; (80076c4 <rt_exit_critical+0x30>)
 800769c:	881a      	ldrh	r2, [r3, #0]
 800769e:	1e51      	subs	r1, r2, #1
 80076a0:	b28a      	uxth	r2, r1
 80076a2:	b211      	sxth	r1, r2
 80076a4:	2900      	cmp	r1, #0
 80076a6:	801a      	strh	r2, [r3, #0]
 80076a8:	dd03      	ble.n	80076b2 <rt_exit_critical+0x1e>
 80076aa:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80076ae:	f7f8 bd31 	b.w	8000114 <rt_hw_interrupt_enable>
 80076b2:	2200      	movs	r2, #0
 80076b4:	801a      	strh	r2, [r3, #0]
 80076b6:	f7f8 fd2d 	bl	8000114 <rt_hw_interrupt_enable>
 80076ba:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80076be:	f7ff bef9 	b.w	80074b4 <rt_schedule>
 80076c2:	bf00      	nop
 80076c4:	20000970 	.word	0x20000970

080076c8 <rt_thread_timeout>:
 80076c8:	b530      	push	{r4, r5, lr}
 80076ca:	4604      	mov	r4, r0
 80076cc:	b083      	sub	sp, #12
 80076ce:	2800      	cmp	r0, #0
 80076d0:	d024      	beq.n	800771c <rt_thread_timeout+0x54>
 80076d2:	f894 0034 	ldrb.w	r0, [r4, #52]	; 0x34
 80076d6:	2802      	cmp	r0, #2
 80076d8:	d00d      	beq.n	80076f6 <rt_thread_timeout+0x2e>
 80076da:	2500      	movs	r5, #0
 80076dc:	4816      	ldr	r0, [pc, #88]	; (8007738 <rt_thread_timeout+0x70>)
 80076de:	4917      	ldr	r1, [pc, #92]	; (800773c <rt_thread_timeout+0x74>)
 80076e0:	4a17      	ldr	r2, [pc, #92]	; (8007740 <rt_thread_timeout+0x78>)
 80076e2:	f240 2381 	movw	r3, #641	; 0x281
 80076e6:	f88d 5007 	strb.w	r5, [sp, #7]
 80076ea:	f7ff fa77 	bl	8006bdc <rt_kprintf>
 80076ee:	f89d 1007 	ldrb.w	r1, [sp, #7]
 80076f2:	2900      	cmp	r1, #0
 80076f4:	d0fb      	beq.n	80076ee <rt_thread_timeout+0x26>
 80076f6:	6962      	ldr	r2, [r4, #20]
 80076f8:	69a3      	ldr	r3, [r4, #24]
 80076fa:	f06f 0001 	mvn.w	r0, #1
 80076fe:	6320      	str	r0, [r4, #48]	; 0x30
 8007700:	6053      	str	r3, [r2, #4]
 8007702:	69a1      	ldr	r1, [r4, #24]
 8007704:	f104 0314 	add.w	r3, r4, #20
 8007708:	600a      	str	r2, [r1, #0]
 800770a:	4620      	mov	r0, r4
 800770c:	61a3      	str	r3, [r4, #24]
 800770e:	6163      	str	r3, [r4, #20]
 8007710:	f7ff ff40 	bl	8007594 <rt_schedule_insert_thread>
 8007714:	f7ff fece 	bl	80074b4 <rt_schedule>
 8007718:	b003      	add	sp, #12
 800771a:	bd30      	pop	{r4, r5, pc}
 800771c:	4806      	ldr	r0, [pc, #24]	; (8007738 <rt_thread_timeout+0x70>)
 800771e:	4909      	ldr	r1, [pc, #36]	; (8007744 <rt_thread_timeout+0x7c>)
 8007720:	4a07      	ldr	r2, [pc, #28]	; (8007740 <rt_thread_timeout+0x78>)
 8007722:	f44f 7320 	mov.w	r3, #640	; 0x280
 8007726:	f88d 4006 	strb.w	r4, [sp, #6]
 800772a:	f7ff fa57 	bl	8006bdc <rt_kprintf>
 800772e:	f89d 3006 	ldrb.w	r3, [sp, #6]
 8007732:	2b00      	cmp	r3, #0
 8007734:	d0fb      	beq.n	800772e <rt_thread_timeout+0x66>
 8007736:	e7cc      	b.n	80076d2 <rt_thread_timeout+0xa>
 8007738:	08008a48 	.word	0x08008a48
 800773c:	080098d4 	.word	0x080098d4
 8007740:	08009974 	.word	0x08009974
 8007744:	08009834 	.word	0x08009834

08007748 <rt_thread_exit>:
 8007748:	b538      	push	{r3, r4, r5, lr}
 800774a:	4b15      	ldr	r3, [pc, #84]	; (80077a0 <rt_thread_exit+0x58>)
 800774c:	681c      	ldr	r4, [r3, #0]
 800774e:	f7f8 fcdd 	bl	800010c <rt_hw_interrupt_disable>
 8007752:	4605      	mov	r5, r0
 8007754:	4620      	mov	r0, r4
 8007756:	f7ff ff53 	bl	8007600 <rt_schedule_remove_thread>
 800775a:	2004      	movs	r0, #4
 800775c:	f884 0034 	strb.w	r0, [r4, #52]	; 0x34
 8007760:	f104 0044 	add.w	r0, r4, #68	; 0x44
 8007764:	f000 fa24 	bl	8007bb0 <rt_timer_detach>
 8007768:	4620      	mov	r0, r4
 800776a:	f7ff fe3d 	bl	80073e8 <rt_object_is_systemobject>
 800776e:	2801      	cmp	r0, #1
 8007770:	d00e      	beq.n	8007790 <rt_thread_exit+0x48>
 8007772:	4b0c      	ldr	r3, [pc, #48]	; (80077a4 <rt_thread_exit+0x5c>)
 8007774:	f104 0014 	add.w	r0, r4, #20
 8007778:	681a      	ldr	r2, [r3, #0]
 800777a:	6018      	str	r0, [r3, #0]
 800777c:	6050      	str	r0, [r2, #4]
 800777e:	6162      	str	r2, [r4, #20]
 8007780:	61a3      	str	r3, [r4, #24]
 8007782:	4628      	mov	r0, r5
 8007784:	f7f8 fcc6 	bl	8000114 <rt_hw_interrupt_enable>
 8007788:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800778c:	f7ff be92 	b.w	80074b4 <rt_schedule>
 8007790:	6f21      	ldr	r1, [r4, #112]	; 0x70
 8007792:	2900      	cmp	r1, #0
 8007794:	d1ed      	bne.n	8007772 <rt_thread_exit+0x2a>
 8007796:	4620      	mov	r0, r4
 8007798:	f7ff fd60 	bl	800725c <rt_object_detach>
 800779c:	e7f1      	b.n	8007782 <rt_thread_exit+0x3a>
 800779e:	bf00      	nop
 80077a0:	20001b40 	.word	0x20001b40
 80077a4:	20001b48 	.word	0x20001b48

080077a8 <_rt_thread_init.isra.0>:
 80077a8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80077aa:	b085      	sub	sp, #20
 80077ac:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 80077ae:	4604      	mov	r4, r0
 80077b0:	f100 0014 	add.w	r0, r0, #20
 80077b4:	6221      	str	r1, [r4, #32]
 80077b6:	6262      	str	r2, [r4, #36]	; 0x24
 80077b8:	2123      	movs	r1, #35	; 0x23
 80077ba:	b2aa      	uxth	r2, r5
 80077bc:	61a0      	str	r0, [r4, #24]
 80077be:	6160      	str	r0, [r4, #20]
 80077c0:	62a3      	str	r3, [r4, #40]	; 0x28
 80077c2:	85a5      	strh	r5, [r4, #44]	; 0x2c
 80077c4:	4618      	mov	r0, r3
 80077c6:	f89d 602c 	ldrb.w	r6, [sp, #44]	; 0x2c
 80077ca:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 80077cc:	f7fe fe8c 	bl	80064e8 <rt_memset>
 80077d0:	8da2      	ldrh	r2, [r4, #44]	; 0x2c
 80077d2:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 80077d4:	1f15      	subs	r5, r2, #4
 80077d6:	195a      	adds	r2, r3, r5
 80077d8:	6a20      	ldr	r0, [r4, #32]
 80077da:	6a61      	ldr	r1, [r4, #36]	; 0x24
 80077dc:	4b15      	ldr	r3, [pc, #84]	; (8007834 <_rt_thread_init.isra.0+0x8c>)
 80077de:	f000 fb3f 	bl	8007e60 <rt_hw_stack_init>
 80077e2:	2e1f      	cmp	r6, #31
 80077e4:	61e0      	str	r0, [r4, #28]
 80077e6:	d817      	bhi.n	8007818 <_rt_thread_init.isra.0+0x70>
 80077e8:	2500      	movs	r5, #0
 80077ea:	f884 6036 	strb.w	r6, [r4, #54]	; 0x36
 80077ee:	f884 6035 	strb.w	r6, [r4, #53]	; 0x35
 80077f2:	63e7      	str	r7, [r4, #60]	; 0x3c
 80077f4:	6427      	str	r7, [r4, #64]	; 0x40
 80077f6:	6325      	str	r5, [r4, #48]	; 0x30
 80077f8:	f884 5034 	strb.w	r5, [r4, #52]	; 0x34
 80077fc:	6725      	str	r5, [r4, #112]	; 0x70
 80077fe:	6765      	str	r5, [r4, #116]	; 0x74
 8007800:	f104 0044 	add.w	r0, r4, #68	; 0x44
 8007804:	4621      	mov	r1, r4
 8007806:	9500      	str	r5, [sp, #0]
 8007808:	9501      	str	r5, [sp, #4]
 800780a:	4a0b      	ldr	r2, [pc, #44]	; (8007838 <_rt_thread_init.isra.0+0x90>)
 800780c:	4623      	mov	r3, r4
 800780e:	f000 f99f 	bl	8007b50 <rt_timer_init>
 8007812:	4628      	mov	r0, r5
 8007814:	b005      	add	sp, #20
 8007816:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007818:	2500      	movs	r5, #0
 800781a:	4808      	ldr	r0, [pc, #32]	; (800783c <_rt_thread_init.isra.0+0x94>)
 800781c:	4908      	ldr	r1, [pc, #32]	; (8007840 <_rt_thread_init.isra.0+0x98>)
 800781e:	4a09      	ldr	r2, [pc, #36]	; (8007844 <_rt_thread_init.isra.0+0x9c>)
 8007820:	236e      	movs	r3, #110	; 0x6e
 8007822:	f88d 500f 	strb.w	r5, [sp, #15]
 8007826:	f7ff f9d9 	bl	8006bdc <rt_kprintf>
 800782a:	f89d 100f 	ldrb.w	r1, [sp, #15]
 800782e:	2900      	cmp	r1, #0
 8007830:	d0fb      	beq.n	800782a <_rt_thread_init.isra.0+0x82>
 8007832:	e7d9      	b.n	80077e8 <_rt_thread_init.isra.0+0x40>
 8007834:	08007749 	.word	0x08007749
 8007838:	080076c9 	.word	0x080076c9
 800783c:	08008a48 	.word	0x08008a48
 8007840:	080098f8 	.word	0x080098f8
 8007844:	080098c4 	.word	0x080098c4

08007848 <rt_thread_init>:
 8007848:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800784c:	b086      	sub	sp, #24
 800784e:	4604      	mov	r4, r0
 8007850:	4688      	mov	r8, r1
 8007852:	4616      	mov	r6, r2
 8007854:	461f      	mov	r7, r3
 8007856:	9d0c      	ldr	r5, [sp, #48]	; 0x30
 8007858:	b1b0      	cbz	r0, 8007888 <rt_thread_init+0x40>
 800785a:	2d00      	cmp	r5, #0
 800785c:	d022      	beq.n	80078a4 <rt_thread_init+0x5c>
 800785e:	4620      	mov	r0, r4
 8007860:	4642      	mov	r2, r8
 8007862:	2100      	movs	r1, #0
 8007864:	f7ff fcd4 	bl	8007210 <rt_object_init>
 8007868:	990d      	ldr	r1, [sp, #52]	; 0x34
 800786a:	f89d 2038 	ldrb.w	r2, [sp, #56]	; 0x38
 800786e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8007870:	9100      	str	r1, [sp, #0]
 8007872:	9201      	str	r2, [sp, #4]
 8007874:	9302      	str	r3, [sp, #8]
 8007876:	4620      	mov	r0, r4
 8007878:	4631      	mov	r1, r6
 800787a:	463a      	mov	r2, r7
 800787c:	462b      	mov	r3, r5
 800787e:	f7ff ff93 	bl	80077a8 <_rt_thread_init.isra.0>
 8007882:	b006      	add	sp, #24
 8007884:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8007888:	480d      	ldr	r0, [pc, #52]	; (80078c0 <rt_thread_init+0x78>)
 800788a:	490e      	ldr	r1, [pc, #56]	; (80078c4 <rt_thread_init+0x7c>)
 800788c:	4a0e      	ldr	r2, [pc, #56]	; (80078c8 <rt_thread_init+0x80>)
 800788e:	23a8      	movs	r3, #168	; 0xa8
 8007890:	f88d 4016 	strb.w	r4, [sp, #22]
 8007894:	f7ff f9a2 	bl	8006bdc <rt_kprintf>
 8007898:	f89d 3016 	ldrb.w	r3, [sp, #22]
 800789c:	2b00      	cmp	r3, #0
 800789e:	d0fb      	beq.n	8007898 <rt_thread_init+0x50>
 80078a0:	2d00      	cmp	r5, #0
 80078a2:	d1dc      	bne.n	800785e <rt_thread_init+0x16>
 80078a4:	4806      	ldr	r0, [pc, #24]	; (80078c0 <rt_thread_init+0x78>)
 80078a6:	4909      	ldr	r1, [pc, #36]	; (80078cc <rt_thread_init+0x84>)
 80078a8:	4a07      	ldr	r2, [pc, #28]	; (80078c8 <rt_thread_init+0x80>)
 80078aa:	23a9      	movs	r3, #169	; 0xa9
 80078ac:	f88d 5017 	strb.w	r5, [sp, #23]
 80078b0:	f7ff f994 	bl	8006bdc <rt_kprintf>
 80078b4:	f89d 0017 	ldrb.w	r0, [sp, #23]
 80078b8:	2800      	cmp	r0, #0
 80078ba:	d0fb      	beq.n	80078b4 <rt_thread_init+0x6c>
 80078bc:	e7cf      	b.n	800785e <rt_thread_init+0x16>
 80078be:	bf00      	nop
 80078c0:	08008a48 	.word	0x08008a48
 80078c4:	08009834 	.word	0x08009834
 80078c8:	08009954 	.word	0x08009954
 80078cc:	0800991c 	.word	0x0800991c

080078d0 <rt_thread_self>:
 80078d0:	f641 3340 	movw	r3, #6976	; 0x1b40
 80078d4:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80078d8:	6818      	ldr	r0, [r3, #0]
 80078da:	4770      	bx	lr

080078dc <rt_thread_create>:
 80078dc:	b5f0      	push	{r4, r5, r6, r7, lr}
 80078de:	4604      	mov	r4, r0
 80078e0:	b087      	sub	sp, #28
 80078e2:	460f      	mov	r7, r1
 80078e4:	2000      	movs	r0, #0
 80078e6:	4621      	mov	r1, r4
 80078e8:	4616      	mov	r6, r2
 80078ea:	461d      	mov	r5, r3
 80078ec:	f7ff fce4 	bl	80072b8 <rt_object_allocate>
 80078f0:	4604      	mov	r4, r0
 80078f2:	b178      	cbz	r0, 8007914 <rt_thread_create+0x38>
 80078f4:	4628      	mov	r0, r5
 80078f6:	f7ff fabf 	bl	8006e78 <rt_malloc>
 80078fa:	4603      	mov	r3, r0
 80078fc:	b168      	cbz	r0, 800791a <rt_thread_create+0x3e>
 80078fe:	f89d 2030 	ldrb.w	r2, [sp, #48]	; 0x30
 8007902:	980d      	ldr	r0, [sp, #52]	; 0x34
 8007904:	9201      	str	r2, [sp, #4]
 8007906:	9002      	str	r0, [sp, #8]
 8007908:	9500      	str	r5, [sp, #0]
 800790a:	4620      	mov	r0, r4
 800790c:	4639      	mov	r1, r7
 800790e:	4632      	mov	r2, r6
 8007910:	f7ff ff4a 	bl	80077a8 <_rt_thread_init.isra.0>
 8007914:	4620      	mov	r0, r4
 8007916:	b007      	add	sp, #28
 8007918:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800791a:	4620      	mov	r0, r4
 800791c:	9305      	str	r3, [sp, #20]
 800791e:	f7ff fd1b 	bl	8007358 <rt_object_delete>
 8007922:	9b05      	ldr	r3, [sp, #20]
 8007924:	461c      	mov	r4, r3
 8007926:	e7f5      	b.n	8007914 <rt_thread_create+0x38>

08007928 <rt_thread_yield>:
 8007928:	b510      	push	{r4, lr}
 800792a:	f7f8 fbef 	bl	800010c <rt_hw_interrupt_disable>
 800792e:	4b13      	ldr	r3, [pc, #76]	; (800797c <rt_thread_yield+0x54>)
 8007930:	4601      	mov	r1, r0
 8007932:	681b      	ldr	r3, [r3, #0]
 8007934:	f893 2034 	ldrb.w	r2, [r3, #52]	; 0x34
 8007938:	2a01      	cmp	r2, #1
 800793a:	d004      	beq.n	8007946 <rt_thread_yield+0x1e>
 800793c:	4608      	mov	r0, r1
 800793e:	f7f8 fbe9 	bl	8000114 <rt_hw_interrupt_enable>
 8007942:	2000      	movs	r0, #0
 8007944:	bd10      	pop	{r4, pc}
 8007946:	695a      	ldr	r2, [r3, #20]
 8007948:	699c      	ldr	r4, [r3, #24]
 800794a:	42a2      	cmp	r2, r4
 800794c:	d0f6      	beq.n	800793c <rt_thread_yield+0x14>
 800794e:	6054      	str	r4, [r2, #4]
 8007950:	699c      	ldr	r4, [r3, #24]
 8007952:	f103 0114 	add.w	r1, r3, #20
 8007956:	6022      	str	r2, [r4, #0]
 8007958:	f893 4035 	ldrb.w	r4, [r3, #53]	; 0x35
 800795c:	4a08      	ldr	r2, [pc, #32]	; (8007980 <rt_thread_yield+0x58>)
 800795e:	6199      	str	r1, [r3, #24]
 8007960:	eb02 02c4 	add.w	r2, r2, r4, lsl #3
 8007964:	6854      	ldr	r4, [r2, #4]
 8007966:	6021      	str	r1, [r4, #0]
 8007968:	619c      	str	r4, [r3, #24]
 800796a:	615a      	str	r2, [r3, #20]
 800796c:	6051      	str	r1, [r2, #4]
 800796e:	f7f8 fbd1 	bl	8000114 <rt_hw_interrupt_enable>
 8007972:	f7ff fd9f 	bl	80074b4 <rt_schedule>
 8007976:	2000      	movs	r0, #0
 8007978:	bd10      	pop	{r4, pc}
 800797a:	bf00      	nop
 800797c:	20001b40 	.word	0x20001b40
 8007980:	20001a3c 	.word	0x20001a3c

08007984 <rt_thread_suspend>:
 8007984:	b530      	push	{r4, r5, lr}
 8007986:	4604      	mov	r4, r0
 8007988:	b083      	sub	sp, #12
 800798a:	b1a8      	cbz	r0, 80079b8 <rt_thread_suspend+0x34>
 800798c:	f894 0034 	ldrb.w	r0, [r4, #52]	; 0x34
 8007990:	2801      	cmp	r0, #1
 8007992:	d10e      	bne.n	80079b2 <rt_thread_suspend+0x2e>
 8007994:	f7f8 fbba 	bl	800010c <rt_hw_interrupt_disable>
 8007998:	2102      	movs	r1, #2
 800799a:	4605      	mov	r5, r0
 800799c:	f884 1034 	strb.w	r1, [r4, #52]	; 0x34
 80079a0:	4620      	mov	r0, r4
 80079a2:	f7ff fe2d 	bl	8007600 <rt_schedule_remove_thread>
 80079a6:	4628      	mov	r0, r5
 80079a8:	f7f8 fbb4 	bl	8000114 <rt_hw_interrupt_enable>
 80079ac:	2000      	movs	r0, #0
 80079ae:	b003      	add	sp, #12
 80079b0:	bd30      	pop	{r4, r5, pc}
 80079b2:	f04f 30ff 	mov.w	r0, #4294967295
 80079b6:	e7fa      	b.n	80079ae <rt_thread_suspend+0x2a>
 80079b8:	4806      	ldr	r0, [pc, #24]	; (80079d4 <rt_thread_suspend+0x50>)
 80079ba:	4907      	ldr	r1, [pc, #28]	; (80079d8 <rt_thread_suspend+0x54>)
 80079bc:	4a07      	ldr	r2, [pc, #28]	; (80079dc <rt_thread_suspend+0x58>)
 80079be:	f240 232f 	movw	r3, #559	; 0x22f
 80079c2:	f88d 4007 	strb.w	r4, [sp, #7]
 80079c6:	f7ff f909 	bl	8006bdc <rt_kprintf>
 80079ca:	f89d 3007 	ldrb.w	r3, [sp, #7]
 80079ce:	2b00      	cmp	r3, #0
 80079d0:	d0fb      	beq.n	80079ca <rt_thread_suspend+0x46>
 80079d2:	e7db      	b.n	800798c <rt_thread_suspend+0x8>
 80079d4:	08008a48 	.word	0x08008a48
 80079d8:	08009834 	.word	0x08009834
 80079dc:	080098b0 	.word	0x080098b0

080079e0 <rt_thread_sleep>:
 80079e0:	b570      	push	{r4, r5, r6, lr}
 80079e2:	b084      	sub	sp, #16
 80079e4:	9001      	str	r0, [sp, #4]
 80079e6:	f7f8 fb91 	bl	800010c <rt_hw_interrupt_disable>
 80079ea:	4b16      	ldr	r3, [pc, #88]	; (8007a44 <rt_thread_sleep+0x64>)
 80079ec:	4606      	mov	r6, r0
 80079ee:	681c      	ldr	r4, [r3, #0]
 80079f0:	b1cc      	cbz	r4, 8007a26 <rt_thread_sleep+0x46>
 80079f2:	f104 0544 	add.w	r5, r4, #68	; 0x44
 80079f6:	4620      	mov	r0, r4
 80079f8:	f7ff ffc4 	bl	8007984 <rt_thread_suspend>
 80079fc:	2100      	movs	r1, #0
 80079fe:	aa01      	add	r2, sp, #4
 8007a00:	4628      	mov	r0, r5
 8007a02:	f000 f9a9 	bl	8007d58 <rt_timer_control>
 8007a06:	4628      	mov	r0, r5
 8007a08:	f000 f8fc 	bl	8007c04 <rt_timer_start>
 8007a0c:	4630      	mov	r0, r6
 8007a0e:	f7f8 fb81 	bl	8000114 <rt_hw_interrupt_enable>
 8007a12:	f7ff fd4f 	bl	80074b4 <rt_schedule>
 8007a16:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8007a18:	1c8b      	adds	r3, r1, #2
 8007a1a:	d101      	bne.n	8007a20 <rt_thread_sleep+0x40>
 8007a1c:	2200      	movs	r2, #0
 8007a1e:	6322      	str	r2, [r4, #48]	; 0x30
 8007a20:	2000      	movs	r0, #0
 8007a22:	b004      	add	sp, #16
 8007a24:	bd70      	pop	{r4, r5, r6, pc}
 8007a26:	4808      	ldr	r0, [pc, #32]	; (8007a48 <rt_thread_sleep+0x68>)
 8007a28:	4908      	ldr	r1, [pc, #32]	; (8007a4c <rt_thread_sleep+0x6c>)
 8007a2a:	4a09      	ldr	r2, [pc, #36]	; (8007a50 <rt_thread_sleep+0x70>)
 8007a2c:	f44f 73d7 	mov.w	r3, #430	; 0x1ae
 8007a30:	f88d 400f 	strb.w	r4, [sp, #15]
 8007a34:	f7ff f8d2 	bl	8006bdc <rt_kprintf>
 8007a38:	f89d 000f 	ldrb.w	r0, [sp, #15]
 8007a3c:	2800      	cmp	r0, #0
 8007a3e:	d0fb      	beq.n	8007a38 <rt_thread_sleep+0x58>
 8007a40:	e7d7      	b.n	80079f2 <rt_thread_sleep+0x12>
 8007a42:	bf00      	nop
 8007a44:	20001b40 	.word	0x20001b40
 8007a48:	08008a48 	.word	0x08008a48
 8007a4c:	08009834 	.word	0x08009834
 8007a50:	08009964 	.word	0x08009964

08007a54 <rt_thread_delay>:
 8007a54:	f7ff bfc4 	b.w	80079e0 <rt_thread_sleep>

08007a58 <rt_thread_resume>:
 8007a58:	b530      	push	{r4, r5, lr}
 8007a5a:	4604      	mov	r4, r0
 8007a5c:	b083      	sub	sp, #12
 8007a5e:	b1f8      	cbz	r0, 8007aa0 <rt_thread_resume+0x48>
 8007a60:	f894 0034 	ldrb.w	r0, [r4, #52]	; 0x34
 8007a64:	2802      	cmp	r0, #2
 8007a66:	d118      	bne.n	8007a9a <rt_thread_resume+0x42>
 8007a68:	f7f8 fb50 	bl	800010c <rt_hw_interrupt_disable>
 8007a6c:	6962      	ldr	r2, [r4, #20]
 8007a6e:	69a1      	ldr	r1, [r4, #24]
 8007a70:	f104 0314 	add.w	r3, r4, #20
 8007a74:	6051      	str	r1, [r2, #4]
 8007a76:	69a1      	ldr	r1, [r4, #24]
 8007a78:	4605      	mov	r5, r0
 8007a7a:	600a      	str	r2, [r1, #0]
 8007a7c:	61a3      	str	r3, [r4, #24]
 8007a7e:	6163      	str	r3, [r4, #20]
 8007a80:	f104 0044 	add.w	r0, r4, #68	; 0x44
 8007a84:	f000 f92e 	bl	8007ce4 <rt_timer_stop>
 8007a88:	4628      	mov	r0, r5
 8007a8a:	f7f8 fb43 	bl	8000114 <rt_hw_interrupt_enable>
 8007a8e:	4620      	mov	r0, r4
 8007a90:	f7ff fd80 	bl	8007594 <rt_schedule_insert_thread>
 8007a94:	2000      	movs	r0, #0
 8007a96:	b003      	add	sp, #12
 8007a98:	bd30      	pop	{r4, r5, pc}
 8007a9a:	f04f 30ff 	mov.w	r0, #4294967295
 8007a9e:	e7fa      	b.n	8007a96 <rt_thread_resume+0x3e>
 8007aa0:	4806      	ldr	r0, [pc, #24]	; (8007abc <rt_thread_resume+0x64>)
 8007aa2:	4907      	ldr	r1, [pc, #28]	; (8007ac0 <rt_thread_resume+0x68>)
 8007aa4:	4a07      	ldr	r2, [pc, #28]	; (8007ac4 <rt_thread_resume+0x6c>)
 8007aa6:	f240 2355 	movw	r3, #597	; 0x255
 8007aaa:	f88d 4007 	strb.w	r4, [sp, #7]
 8007aae:	f7ff f895 	bl	8006bdc <rt_kprintf>
 8007ab2:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8007ab6:	2b00      	cmp	r3, #0
 8007ab8:	d0fb      	beq.n	8007ab2 <rt_thread_resume+0x5a>
 8007aba:	e7d1      	b.n	8007a60 <rt_thread_resume+0x8>
 8007abc:	08008a48 	.word	0x08008a48
 8007ac0:	08009834 	.word	0x08009834
 8007ac4:	08009988 	.word	0x08009988

08007ac8 <rt_thread_startup>:
 8007ac8:	b530      	push	{r4, r5, lr}
 8007aca:	4604      	mov	r4, r0
 8007acc:	b083      	sub	sp, #12
 8007ace:	2800      	cmp	r0, #0
 8007ad0:	d026      	beq.n	8007b20 <rt_thread_startup+0x58>
 8007ad2:	f894 0034 	ldrb.w	r0, [r4, #52]	; 0x34
 8007ad6:	b9a8      	cbnz	r0, 8007b04 <rt_thread_startup+0x3c>
 8007ad8:	f894 3036 	ldrb.w	r3, [r4, #54]	; 0x36
 8007adc:	2201      	movs	r2, #1
 8007ade:	fa02 f203 	lsl.w	r2, r2, r3
 8007ae2:	2002      	movs	r0, #2
 8007ae4:	f884 3035 	strb.w	r3, [r4, #53]	; 0x35
 8007ae8:	f884 0034 	strb.w	r0, [r4, #52]	; 0x34
 8007aec:	63a2      	str	r2, [r4, #56]	; 0x38
 8007aee:	4620      	mov	r0, r4
 8007af0:	f7ff ffb2 	bl	8007a58 <rt_thread_resume>
 8007af4:	4911      	ldr	r1, [pc, #68]	; (8007b3c <rt_thread_startup+0x74>)
 8007af6:	680b      	ldr	r3, [r1, #0]
 8007af8:	b10b      	cbz	r3, 8007afe <rt_thread_startup+0x36>
 8007afa:	f7ff fcdb 	bl	80074b4 <rt_schedule>
 8007afe:	2000      	movs	r0, #0
 8007b00:	b003      	add	sp, #12
 8007b02:	bd30      	pop	{r4, r5, pc}
 8007b04:	2500      	movs	r5, #0
 8007b06:	480e      	ldr	r0, [pc, #56]	; (8007b40 <rt_thread_startup+0x78>)
 8007b08:	490e      	ldr	r1, [pc, #56]	; (8007b44 <rt_thread_startup+0x7c>)
 8007b0a:	4a0f      	ldr	r2, [pc, #60]	; (8007b48 <rt_thread_startup+0x80>)
 8007b0c:	23cf      	movs	r3, #207	; 0xcf
 8007b0e:	f88d 5007 	strb.w	r5, [sp, #7]
 8007b12:	f7ff f863 	bl	8006bdc <rt_kprintf>
 8007b16:	f89d 1007 	ldrb.w	r1, [sp, #7]
 8007b1a:	2900      	cmp	r1, #0
 8007b1c:	d0fb      	beq.n	8007b16 <rt_thread_startup+0x4e>
 8007b1e:	e7db      	b.n	8007ad8 <rt_thread_startup+0x10>
 8007b20:	4807      	ldr	r0, [pc, #28]	; (8007b40 <rt_thread_startup+0x78>)
 8007b22:	490a      	ldr	r1, [pc, #40]	; (8007b4c <rt_thread_startup+0x84>)
 8007b24:	4a08      	ldr	r2, [pc, #32]	; (8007b48 <rt_thread_startup+0x80>)
 8007b26:	23ce      	movs	r3, #206	; 0xce
 8007b28:	f88d 4006 	strb.w	r4, [sp, #6]
 8007b2c:	f7ff f856 	bl	8006bdc <rt_kprintf>
 8007b30:	f89d 3006 	ldrb.w	r3, [sp, #6]
 8007b34:	2b00      	cmp	r3, #0
 8007b36:	d0fb      	beq.n	8007b30 <rt_thread_startup+0x68>
 8007b38:	e7cb      	b.n	8007ad2 <rt_thread_startup+0xa>
 8007b3a:	bf00      	nop
 8007b3c:	20001b40 	.word	0x20001b40
 8007b40:	08008a48 	.word	0x08008a48
 8007b44:	08009934 	.word	0x08009934
 8007b48:	0800989c 	.word	0x0800989c
 8007b4c:	08009834 	.word	0x08009834

08007b50 <rt_timer_init>:
 8007b50:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007b52:	4604      	mov	r4, r0
 8007b54:	b083      	sub	sp, #12
 8007b56:	460f      	mov	r7, r1
 8007b58:	4615      	mov	r5, r2
 8007b5a:	461e      	mov	r6, r3
 8007b5c:	b1a8      	cbz	r0, 8007b8a <rt_timer_init+0x3a>
 8007b5e:	4620      	mov	r0, r4
 8007b60:	2104      	movs	r1, #4
 8007b62:	463a      	mov	r2, r7
 8007b64:	f7ff fb54 	bl	8007210 <rt_object_init>
 8007b68:	f89d 0024 	ldrb.w	r0, [sp, #36]	; 0x24
 8007b6c:	f104 0114 	add.w	r1, r4, #20
 8007b70:	f020 0201 	bic.w	r2, r0, #1
 8007b74:	9808      	ldr	r0, [sp, #32]
 8007b76:	2300      	movs	r3, #0
 8007b78:	7262      	strb	r2, [r4, #9]
 8007b7a:	61e5      	str	r5, [r4, #28]
 8007b7c:	6226      	str	r6, [r4, #32]
 8007b7e:	62a3      	str	r3, [r4, #40]	; 0x28
 8007b80:	6260      	str	r0, [r4, #36]	; 0x24
 8007b82:	61a1      	str	r1, [r4, #24]
 8007b84:	6161      	str	r1, [r4, #20]
 8007b86:	b003      	add	sp, #12
 8007b88:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007b8a:	4806      	ldr	r0, [pc, #24]	; (8007ba4 <rt_timer_init+0x54>)
 8007b8c:	4906      	ldr	r1, [pc, #24]	; (8007ba8 <rt_timer_init+0x58>)
 8007b8e:	4a07      	ldr	r2, [pc, #28]	; (8007bac <rt_timer_init+0x5c>)
 8007b90:	23b8      	movs	r3, #184	; 0xb8
 8007b92:	f88d 4007 	strb.w	r4, [sp, #7]
 8007b96:	f7ff f821 	bl	8006bdc <rt_kprintf>
 8007b9a:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8007b9e:	2b00      	cmp	r3, #0
 8007ba0:	d0fb      	beq.n	8007b9a <rt_timer_init+0x4a>
 8007ba2:	e7dc      	b.n	8007b5e <rt_timer_init+0xe>
 8007ba4:	08008a48 	.word	0x08008a48
 8007ba8:	080099e4 	.word	0x080099e4
 8007bac:	0800999c 	.word	0x0800999c

08007bb0 <rt_timer_detach>:
 8007bb0:	b510      	push	{r4, lr}
 8007bb2:	4604      	mov	r4, r0
 8007bb4:	b082      	sub	sp, #8
 8007bb6:	b190      	cbz	r0, 8007bde <rt_timer_detach+0x2e>
 8007bb8:	f7f8 faa8 	bl	800010c <rt_hw_interrupt_disable>
 8007bbc:	6962      	ldr	r2, [r4, #20]
 8007bbe:	69a1      	ldr	r1, [r4, #24]
 8007bc0:	f104 0314 	add.w	r3, r4, #20
 8007bc4:	6051      	str	r1, [r2, #4]
 8007bc6:	69a1      	ldr	r1, [r4, #24]
 8007bc8:	61a3      	str	r3, [r4, #24]
 8007bca:	600a      	str	r2, [r1, #0]
 8007bcc:	6163      	str	r3, [r4, #20]
 8007bce:	f7f8 faa1 	bl	8000114 <rt_hw_interrupt_enable>
 8007bd2:	4620      	mov	r0, r4
 8007bd4:	f7ff fb42 	bl	800725c <rt_object_detach>
 8007bd8:	2000      	movs	r0, #0
 8007bda:	b002      	add	sp, #8
 8007bdc:	bd10      	pop	{r4, pc}
 8007bde:	4806      	ldr	r0, [pc, #24]	; (8007bf8 <rt_timer_detach+0x48>)
 8007be0:	4906      	ldr	r1, [pc, #24]	; (8007bfc <rt_timer_detach+0x4c>)
 8007be2:	4a07      	ldr	r2, [pc, #28]	; (8007c00 <rt_timer_detach+0x50>)
 8007be4:	23cd      	movs	r3, #205	; 0xcd
 8007be6:	f88d 4007 	strb.w	r4, [sp, #7]
 8007bea:	f7fe fff7 	bl	8006bdc <rt_kprintf>
 8007bee:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8007bf2:	2b00      	cmp	r3, #0
 8007bf4:	d0fb      	beq.n	8007bee <rt_timer_detach+0x3e>
 8007bf6:	e7df      	b.n	8007bb8 <rt_timer_detach+0x8>
 8007bf8:	08008a48 	.word	0x08008a48
 8007bfc:	080099e4 	.word	0x080099e4
 8007c00:	080099ac 	.word	0x080099ac

08007c04 <rt_timer_start>:
 8007c04:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007c06:	4605      	mov	r5, r0
 8007c08:	b083      	sub	sp, #12
 8007c0a:	2800      	cmp	r0, #0
 8007c0c:	d04a      	beq.n	8007ca4 <rt_timer_start+0xa0>
 8007c0e:	7a68      	ldrb	r0, [r5, #9]
 8007c10:	07c3      	lsls	r3, r0, #31
 8007c12:	d455      	bmi.n	8007cc0 <rt_timer_start+0xbc>
 8007c14:	492c      	ldr	r1, [pc, #176]	; (8007cc8 <rt_timer_start+0xc4>)
 8007c16:	680a      	ldr	r2, [r1, #0]
 8007c18:	b10a      	cbz	r2, 8007c1e <rt_timer_start+0x1a>
 8007c1a:	4628      	mov	r0, r5
 8007c1c:	4790      	blx	r2
 8007c1e:	f64f 74fe 	movw	r4, #65534	; 0xfffe
 8007c22:	6a6f      	ldr	r7, [r5, #36]	; 0x24
 8007c24:	f6c7 74ff 	movt	r4, #32767	; 0x7fff
 8007c28:	42a7      	cmp	r7, r4
 8007c2a:	d82c      	bhi.n	8007c86 <rt_timer_start+0x82>
 8007c2c:	f7fd ffea 	bl	8005c04 <rt_tick_get>
 8007c30:	6a69      	ldr	r1, [r5, #36]	; 0x24
 8007c32:	1840      	adds	r0, r0, r1
 8007c34:	62a8      	str	r0, [r5, #40]	; 0x28
 8007c36:	f7f8 fa69 	bl	800010c <rt_hw_interrupt_disable>
 8007c3a:	4b24      	ldr	r3, [pc, #144]	; (8007ccc <rt_timer_start+0xc8>)
 8007c3c:	f64f 7efe 	movw	lr, #65534	; 0xfffe
 8007c40:	685f      	ldr	r7, [r3, #4]
 8007c42:	f6c7 7eff 	movt	lr, #32767	; 0x7fff
 8007c46:	e008      	b.n	8007c5a <rt_timer_start+0x56>
 8007c48:	6aa9      	ldr	r1, [r5, #40]	; 0x28
 8007c4a:	6954      	ldr	r4, [r2, #20]
 8007c4c:	428c      	cmp	r4, r1
 8007c4e:	ebc1 0604 	rsb	r6, r1, r4
 8007c52:	d001      	beq.n	8007c58 <rt_timer_start+0x54>
 8007c54:	4576      	cmp	r6, lr
 8007c56:	d903      	bls.n	8007c60 <rt_timer_start+0x5c>
 8007c58:	4613      	mov	r3, r2
 8007c5a:	429f      	cmp	r7, r3
 8007c5c:	681a      	ldr	r2, [r3, #0]
 8007c5e:	d1f3      	bne.n	8007c48 <rt_timer_start+0x44>
 8007c60:	f105 0414 	add.w	r4, r5, #20
 8007c64:	6054      	str	r4, [r2, #4]
 8007c66:	491a      	ldr	r1, [pc, #104]	; (8007cd0 <rt_timer_start+0xcc>)
 8007c68:	616a      	str	r2, [r5, #20]
 8007c6a:	601c      	str	r4, [r3, #0]
 8007c6c:	7a6c      	ldrb	r4, [r5, #9]
 8007c6e:	680a      	ldr	r2, [r1, #0]
 8007c70:	f044 0401 	orr.w	r4, r4, #1
 8007c74:	3201      	adds	r2, #1
 8007c76:	61ab      	str	r3, [r5, #24]
 8007c78:	726c      	strb	r4, [r5, #9]
 8007c7a:	600a      	str	r2, [r1, #0]
 8007c7c:	f7f8 fa4a 	bl	8000114 <rt_hw_interrupt_enable>
 8007c80:	2000      	movs	r0, #0
 8007c82:	b003      	add	sp, #12
 8007c84:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007c86:	2400      	movs	r4, #0
 8007c88:	4812      	ldr	r0, [pc, #72]	; (8007cd4 <rt_timer_start+0xd0>)
 8007c8a:	4913      	ldr	r1, [pc, #76]	; (8007cd8 <rt_timer_start+0xd4>)
 8007c8c:	4a13      	ldr	r2, [pc, #76]	; (8007cdc <rt_timer_start+0xd8>)
 8007c8e:	f44f 739b 	mov.w	r3, #310	; 0x136
 8007c92:	f88d 4007 	strb.w	r4, [sp, #7]
 8007c96:	f7fe ffa1 	bl	8006bdc <rt_kprintf>
 8007c9a:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8007c9e:	2b00      	cmp	r3, #0
 8007ca0:	d0fb      	beq.n	8007c9a <rt_timer_start+0x96>
 8007ca2:	e7c3      	b.n	8007c2c <rt_timer_start+0x28>
 8007ca4:	480b      	ldr	r0, [pc, #44]	; (8007cd4 <rt_timer_start+0xd0>)
 8007ca6:	490e      	ldr	r1, [pc, #56]	; (8007ce0 <rt_timer_start+0xdc>)
 8007ca8:	4a0c      	ldr	r2, [pc, #48]	; (8007cdc <rt_timer_start+0xd8>)
 8007caa:	f44f 7396 	mov.w	r3, #300	; 0x12c
 8007cae:	f88d 5006 	strb.w	r5, [sp, #6]
 8007cb2:	f7fe ff93 	bl	8006bdc <rt_kprintf>
 8007cb6:	f89d 3006 	ldrb.w	r3, [sp, #6]
 8007cba:	2b00      	cmp	r3, #0
 8007cbc:	d0fb      	beq.n	8007cb6 <rt_timer_start+0xb2>
 8007cbe:	e7a6      	b.n	8007c0e <rt_timer_start+0xa>
 8007cc0:	f04f 30ff 	mov.w	r0, #4294967295
 8007cc4:	e7dd      	b.n	8007c82 <rt_timer_start+0x7e>
 8007cc6:	bf00      	nop
 8007cc8:	20001a34 	.word	0x20001a34
 8007ccc:	20000978 	.word	0x20000978
 8007cd0:	20000980 	.word	0x20000980
 8007cd4:	08008a48 	.word	0x08008a48
 8007cd8:	080099f8 	.word	0x080099f8
 8007cdc:	08009a1c 	.word	0x08009a1c
 8007ce0:	080099e4 	.word	0x080099e4

08007ce4 <rt_timer_stop>:
 8007ce4:	b510      	push	{r4, lr}
 8007ce6:	4604      	mov	r4, r0
 8007ce8:	b082      	sub	sp, #8
 8007cea:	b1d8      	cbz	r0, 8007d24 <rt_timer_stop+0x40>
 8007cec:	7a60      	ldrb	r0, [r4, #9]
 8007cee:	07c2      	lsls	r2, r0, #31
 8007cf0:	d526      	bpl.n	8007d40 <rt_timer_stop+0x5c>
 8007cf2:	4915      	ldr	r1, [pc, #84]	; (8007d48 <rt_timer_stop+0x64>)
 8007cf4:	680a      	ldr	r2, [r1, #0]
 8007cf6:	b10a      	cbz	r2, 8007cfc <rt_timer_stop+0x18>
 8007cf8:	4620      	mov	r0, r4
 8007cfa:	4790      	blx	r2
 8007cfc:	f7f8 fa06 	bl	800010c <rt_hw_interrupt_disable>
 8007d00:	6962      	ldr	r2, [r4, #20]
 8007d02:	69a1      	ldr	r1, [r4, #24]
 8007d04:	f104 0314 	add.w	r3, r4, #20
 8007d08:	6051      	str	r1, [r2, #4]
 8007d0a:	69a1      	ldr	r1, [r4, #24]
 8007d0c:	61a3      	str	r3, [r4, #24]
 8007d0e:	600a      	str	r2, [r1, #0]
 8007d10:	6163      	str	r3, [r4, #20]
 8007d12:	f7f8 f9ff 	bl	8000114 <rt_hw_interrupt_enable>
 8007d16:	7a62      	ldrb	r2, [r4, #9]
 8007d18:	2000      	movs	r0, #0
 8007d1a:	f022 0301 	bic.w	r3, r2, #1
 8007d1e:	7263      	strb	r3, [r4, #9]
 8007d20:	b002      	add	sp, #8
 8007d22:	bd10      	pop	{r4, pc}
 8007d24:	4809      	ldr	r0, [pc, #36]	; (8007d4c <rt_timer_stop+0x68>)
 8007d26:	490a      	ldr	r1, [pc, #40]	; (8007d50 <rt_timer_stop+0x6c>)
 8007d28:	4a0a      	ldr	r2, [pc, #40]	; (8007d54 <rt_timer_stop+0x70>)
 8007d2a:	f44f 73cf 	mov.w	r3, #414	; 0x19e
 8007d2e:	f88d 4007 	strb.w	r4, [sp, #7]
 8007d32:	f7fe ff53 	bl	8006bdc <rt_kprintf>
 8007d36:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8007d3a:	2b00      	cmp	r3, #0
 8007d3c:	d0fb      	beq.n	8007d36 <rt_timer_stop+0x52>
 8007d3e:	e7d5      	b.n	8007cec <rt_timer_stop+0x8>
 8007d40:	f04f 30ff 	mov.w	r0, #4294967295
 8007d44:	e7ec      	b.n	8007d20 <rt_timer_stop+0x3c>
 8007d46:	bf00      	nop
 8007d48:	20001a30 	.word	0x20001a30
 8007d4c:	08008a48 	.word	0x08008a48
 8007d50:	080099e4 	.word	0x080099e4
 8007d54:	080099bc 	.word	0x080099bc

08007d58 <rt_timer_control>:
 8007d58:	b570      	push	{r4, r5, r6, lr}
 8007d5a:	4604      	mov	r4, r0
 8007d5c:	b082      	sub	sp, #8
 8007d5e:	460d      	mov	r5, r1
 8007d60:	4616      	mov	r6, r2
 8007d62:	b1b8      	cbz	r0, 8007d94 <rt_timer_control+0x3c>
 8007d64:	2d03      	cmp	r5, #3
 8007d66:	d807      	bhi.n	8007d78 <rt_timer_control+0x20>
 8007d68:	e8df f005 	tbb	[pc, r5]
 8007d6c:	02090e11 	.word	0x02090e11
 8007d70:	7a60      	ldrb	r0, [r4, #9]
 8007d72:	f040 0102 	orr.w	r1, r0, #2
 8007d76:	7261      	strb	r1, [r4, #9]
 8007d78:	2000      	movs	r0, #0
 8007d7a:	b002      	add	sp, #8
 8007d7c:	bd70      	pop	{r4, r5, r6, pc}
 8007d7e:	7a62      	ldrb	r2, [r4, #9]
 8007d80:	f022 0302 	bic.w	r3, r2, #2
 8007d84:	7263      	strb	r3, [r4, #9]
 8007d86:	e7f7      	b.n	8007d78 <rt_timer_control+0x20>
 8007d88:	6a60      	ldr	r0, [r4, #36]	; 0x24
 8007d8a:	6030      	str	r0, [r6, #0]
 8007d8c:	e7f4      	b.n	8007d78 <rt_timer_control+0x20>
 8007d8e:	6831      	ldr	r1, [r6, #0]
 8007d90:	6261      	str	r1, [r4, #36]	; 0x24
 8007d92:	e7f1      	b.n	8007d78 <rt_timer_control+0x20>
 8007d94:	4806      	ldr	r0, [pc, #24]	; (8007db0 <rt_timer_control+0x58>)
 8007d96:	4907      	ldr	r1, [pc, #28]	; (8007db4 <rt_timer_control+0x5c>)
 8007d98:	4a07      	ldr	r2, [pc, #28]	; (8007db8 <rt_timer_control+0x60>)
 8007d9a:	f240 13bf 	movw	r3, #447	; 0x1bf
 8007d9e:	f88d 4007 	strb.w	r4, [sp, #7]
 8007da2:	f7fe ff1b 	bl	8006bdc <rt_kprintf>
 8007da6:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8007daa:	2b00      	cmp	r3, #0
 8007dac:	d0fb      	beq.n	8007da6 <rt_timer_control+0x4e>
 8007dae:	e7d9      	b.n	8007d64 <rt_timer_control+0xc>
 8007db0:	08008a48 	.word	0x08008a48
 8007db4:	080099e4 	.word	0x080099e4
 8007db8:	080099cc 	.word	0x080099cc

08007dbc <rt_timer_check>:
 8007dbc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8007dc0:	f7fd ff20 	bl	8005c04 <rt_tick_get>
 8007dc4:	4682      	mov	sl, r0
 8007dc6:	f7f8 f9a1 	bl	800010c <rt_hw_interrupt_disable>
 8007dca:	f64f 77fe 	movw	r7, #65534	; 0xfffe
 8007dce:	4e1d      	ldr	r6, [pc, #116]	; (8007e44 <rt_timer_check+0x88>)
 8007dd0:	f8df 8074 	ldr.w	r8, [pc, #116]	; 8007e48 <rt_timer_check+0x8c>
 8007dd4:	4681      	mov	r9, r0
 8007dd6:	f6c7 77ff 	movt	r7, #32767	; 0x7fff
 8007dda:	6834      	ldr	r4, [r6, #0]
 8007ddc:	f1a4 0514 	sub.w	r5, r4, #20
 8007de0:	42b4      	cmp	r4, r6
 8007de2:	4628      	mov	r0, r5
 8007de4:	d028      	beq.n	8007e38 <rt_timer_check+0x7c>
 8007de6:	6963      	ldr	r3, [r4, #20]
 8007de8:	ebc3 010a 	rsb	r1, r3, sl
 8007dec:	42b9      	cmp	r1, r7
 8007dee:	d823      	bhi.n	8007e38 <rt_timer_check+0x7c>
 8007df0:	f8d8 2000 	ldr.w	r2, [r8]
 8007df4:	b102      	cbz	r2, 8007df8 <rt_timer_check+0x3c>
 8007df6:	4790      	blx	r2
 8007df8:	e894 000a 	ldmia.w	r4, {r1, r3}
 8007dfc:	68e0      	ldr	r0, [r4, #12]
 8007dfe:	604b      	str	r3, [r1, #4]
 8007e00:	6862      	ldr	r2, [r4, #4]
 8007e02:	68a3      	ldr	r3, [r4, #8]
 8007e04:	6064      	str	r4, [r4, #4]
 8007e06:	6011      	str	r1, [r2, #0]
 8007e08:	6024      	str	r4, [r4, #0]
 8007e0a:	4798      	blx	r3
 8007e0c:	f7fd fefa 	bl	8005c04 <rt_tick_get>
 8007e10:	4682      	mov	sl, r0
 8007e12:	f814 0c0b 	ldrb.w	r0, [r4, #-11]
 8007e16:	f000 0103 	and.w	r1, r0, #3
 8007e1a:	f020 0201 	bic.w	r2, r0, #1
 8007e1e:	2903      	cmp	r1, #3
 8007e20:	f804 2c0b 	strb.w	r2, [r4, #-11]
 8007e24:	d1d9      	bne.n	8007dda <rt_timer_check+0x1e>
 8007e26:	4628      	mov	r0, r5
 8007e28:	f7ff feec 	bl	8007c04 <rt_timer_start>
 8007e2c:	6834      	ldr	r4, [r6, #0]
 8007e2e:	f1a4 0514 	sub.w	r5, r4, #20
 8007e32:	42b4      	cmp	r4, r6
 8007e34:	4628      	mov	r0, r5
 8007e36:	d1d6      	bne.n	8007de6 <rt_timer_check+0x2a>
 8007e38:	4648      	mov	r0, r9
 8007e3a:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8007e3e:	f7f8 b969 	b.w	8000114 <rt_hw_interrupt_enable>
 8007e42:	bf00      	nop
 8007e44:	20000978 	.word	0x20000978
 8007e48:	20000984 	.word	0x20000984

08007e4c <rt_system_timer_init>:
 8007e4c:	f640 1378 	movw	r3, #2424	; 0x978
 8007e50:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8007e54:	605b      	str	r3, [r3, #4]
 8007e56:	601b      	str	r3, [r3, #0]
 8007e58:	4770      	bx	lr
 8007e5a:	bf00      	nop

08007e5c <rt_system_timer_thread_init>:
 8007e5c:	4770      	bx	lr
 8007e5e:	bf00      	nop

08007e60 <rt_hw_stack_init>:
 8007e60:	3204      	adds	r2, #4
 8007e62:	b430      	push	{r4, r5}
 8007e64:	f022 0207 	bic.w	r2, r2, #7
 8007e68:	f64b 64ef 	movw	r4, #48879	; 0xbeef
 8007e6c:	f6cd 64ad 	movt	r4, #57005	; 0xdead
 8007e70:	2500      	movs	r5, #0
 8007e72:	f842 3c0c 	str.w	r3, [r2, #-12]
 8007e76:	f04f 7380 	mov.w	r3, #16777216	; 0x1000000
 8007e7a:	f842 0c08 	str.w	r0, [r2, #-8]
 8007e7e:	f842 4c40 	str.w	r4, [r2, #-64]
 8007e82:	f842 4c3c 	str.w	r4, [r2, #-60]
 8007e86:	f842 4c38 	str.w	r4, [r2, #-56]
 8007e8a:	f842 4c34 	str.w	r4, [r2, #-52]
 8007e8e:	f842 4c30 	str.w	r4, [r2, #-48]
 8007e92:	f842 4c2c 	str.w	r4, [r2, #-44]
 8007e96:	f842 4c28 	str.w	r4, [r2, #-40]
 8007e9a:	f842 4c24 	str.w	r4, [r2, #-36]
 8007e9e:	f842 1c20 	str.w	r1, [r2, #-32]
 8007ea2:	f842 5c1c 	str.w	r5, [r2, #-28]
 8007ea6:	f842 5c18 	str.w	r5, [r2, #-24]
 8007eaa:	f842 5c14 	str.w	r5, [r2, #-20]
 8007eae:	f842 5c10 	str.w	r5, [r2, #-16]
 8007eb2:	f842 3c04 	str.w	r3, [r2, #-4]
 8007eb6:	f1a2 0040 	sub.w	r0, r2, #64	; 0x40
 8007eba:	bc30      	pop	{r4, r5}
 8007ebc:	4770      	bx	lr
 8007ebe:	bf00      	nop

08007ec0 <rt_hw_hard_fault_exception>:
 8007ec0:	4b2b      	ldr	r3, [pc, #172]	; (8007f70 <rt_hw_hard_fault_exception+0xb0>)
 8007ec2:	b510      	push	{r4, lr}
 8007ec4:	6819      	ldr	r1, [r3, #0]
 8007ec6:	4604      	mov	r4, r0
 8007ec8:	b111      	cbz	r1, 8007ed0 <rt_hw_hard_fault_exception+0x10>
 8007eca:	4788      	blx	r1
 8007ecc:	2800      	cmp	r0, #0
 8007ece:	d04d      	beq.n	8007f6c <rt_hw_hard_fault_exception+0xac>
 8007ed0:	4828      	ldr	r0, [pc, #160]	; (8007f74 <rt_hw_hard_fault_exception+0xb4>)
 8007ed2:	6c21      	ldr	r1, [r4, #64]	; 0x40
 8007ed4:	f7fe fe82 	bl	8006bdc <rt_kprintf>
 8007ed8:	4827      	ldr	r0, [pc, #156]	; (8007f78 <rt_hw_hard_fault_exception+0xb8>)
 8007eda:	6a61      	ldr	r1, [r4, #36]	; 0x24
 8007edc:	f7fe fe7e 	bl	8006bdc <rt_kprintf>
 8007ee0:	4826      	ldr	r0, [pc, #152]	; (8007f7c <rt_hw_hard_fault_exception+0xbc>)
 8007ee2:	6aa1      	ldr	r1, [r4, #40]	; 0x28
 8007ee4:	f7fe fe7a 	bl	8006bdc <rt_kprintf>
 8007ee8:	4825      	ldr	r0, [pc, #148]	; (8007f80 <rt_hw_hard_fault_exception+0xc0>)
 8007eea:	6ae1      	ldr	r1, [r4, #44]	; 0x2c
 8007eec:	f7fe fe76 	bl	8006bdc <rt_kprintf>
 8007ef0:	4824      	ldr	r0, [pc, #144]	; (8007f84 <rt_hw_hard_fault_exception+0xc4>)
 8007ef2:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8007ef4:	f7fe fe72 	bl	8006bdc <rt_kprintf>
 8007ef8:	4823      	ldr	r0, [pc, #140]	; (8007f88 <rt_hw_hard_fault_exception+0xc8>)
 8007efa:	6861      	ldr	r1, [r4, #4]
 8007efc:	f7fe fe6e 	bl	8006bdc <rt_kprintf>
 8007f00:	4822      	ldr	r0, [pc, #136]	; (8007f8c <rt_hw_hard_fault_exception+0xcc>)
 8007f02:	68a1      	ldr	r1, [r4, #8]
 8007f04:	f7fe fe6a 	bl	8006bdc <rt_kprintf>
 8007f08:	4821      	ldr	r0, [pc, #132]	; (8007f90 <rt_hw_hard_fault_exception+0xd0>)
 8007f0a:	68e1      	ldr	r1, [r4, #12]
 8007f0c:	f7fe fe66 	bl	8006bdc <rt_kprintf>
 8007f10:	4820      	ldr	r0, [pc, #128]	; (8007f94 <rt_hw_hard_fault_exception+0xd4>)
 8007f12:	6921      	ldr	r1, [r4, #16]
 8007f14:	f7fe fe62 	bl	8006bdc <rt_kprintf>
 8007f18:	481f      	ldr	r0, [pc, #124]	; (8007f98 <rt_hw_hard_fault_exception+0xd8>)
 8007f1a:	6961      	ldr	r1, [r4, #20]
 8007f1c:	f7fe fe5e 	bl	8006bdc <rt_kprintf>
 8007f20:	481e      	ldr	r0, [pc, #120]	; (8007f9c <rt_hw_hard_fault_exception+0xdc>)
 8007f22:	69a1      	ldr	r1, [r4, #24]
 8007f24:	f7fe fe5a 	bl	8006bdc <rt_kprintf>
 8007f28:	481d      	ldr	r0, [pc, #116]	; (8007fa0 <rt_hw_hard_fault_exception+0xe0>)
 8007f2a:	69e1      	ldr	r1, [r4, #28]
 8007f2c:	f7fe fe56 	bl	8006bdc <rt_kprintf>
 8007f30:	481c      	ldr	r0, [pc, #112]	; (8007fa4 <rt_hw_hard_fault_exception+0xe4>)
 8007f32:	6a21      	ldr	r1, [r4, #32]
 8007f34:	f7fe fe52 	bl	8006bdc <rt_kprintf>
 8007f38:	481b      	ldr	r0, [pc, #108]	; (8007fa8 <rt_hw_hard_fault_exception+0xe8>)
 8007f3a:	6b61      	ldr	r1, [r4, #52]	; 0x34
 8007f3c:	f7fe fe4e 	bl	8006bdc <rt_kprintf>
 8007f40:	481a      	ldr	r0, [pc, #104]	; (8007fac <rt_hw_hard_fault_exception+0xec>)
 8007f42:	6ba1      	ldr	r1, [r4, #56]	; 0x38
 8007f44:	f7fe fe4a 	bl	8006bdc <rt_kprintf>
 8007f48:	4819      	ldr	r0, [pc, #100]	; (8007fb0 <rt_hw_hard_fault_exception+0xf0>)
 8007f4a:	6be1      	ldr	r1, [r4, #60]	; 0x3c
 8007f4c:	f7fe fe46 	bl	8006bdc <rt_kprintf>
 8007f50:	6820      	ldr	r0, [r4, #0]
 8007f52:	0743      	lsls	r3, r0, #29
 8007f54:	d506      	bpl.n	8007f64 <rt_hw_hard_fault_exception+0xa4>
 8007f56:	f7ff fcbb 	bl	80078d0 <rt_thread_self>
 8007f5a:	4601      	mov	r1, r0
 8007f5c:	4815      	ldr	r0, [pc, #84]	; (8007fb4 <rt_hw_hard_fault_exception+0xf4>)
 8007f5e:	f7fe fe3d 	bl	8006bdc <rt_kprintf>
 8007f62:	e7fe      	b.n	8007f62 <rt_hw_hard_fault_exception+0xa2>
 8007f64:	4814      	ldr	r0, [pc, #80]	; (8007fb8 <rt_hw_hard_fault_exception+0xf8>)
 8007f66:	f7fe fe39 	bl	8006bdc <rt_kprintf>
 8007f6a:	e7fa      	b.n	8007f62 <rt_hw_hard_fault_exception+0xa2>
 8007f6c:	bd10      	pop	{r4, pc}
 8007f6e:	bf00      	nop
 8007f70:	20000988 	.word	0x20000988
 8007f74:	08009a2c 	.word	0x08009a2c
 8007f78:	08009a3c 	.word	0x08009a3c
 8007f7c:	08009a4c 	.word	0x08009a4c
 8007f80:	08009a5c 	.word	0x08009a5c
 8007f84:	08009a6c 	.word	0x08009a6c
 8007f88:	08009a7c 	.word	0x08009a7c
 8007f8c:	08009a8c 	.word	0x08009a8c
 8007f90:	08009a9c 	.word	0x08009a9c
 8007f94:	08009aac 	.word	0x08009aac
 8007f98:	08009abc 	.word	0x08009abc
 8007f9c:	08009acc 	.word	0x08009acc
 8007fa0:	08009adc 	.word	0x08009adc
 8007fa4:	08009aec 	.word	0x08009aec
 8007fa8:	08009afc 	.word	0x08009afc
 8007fac:	08009b0c 	.word	0x08009b0c
 8007fb0:	08009b1c 	.word	0x08009b1c
 8007fb4:	08009b2c 	.word	0x08009b2c
 8007fb8:	08009b4c 	.word	0x08009b4c

08007fbc <rt_serial_close>:
 8007fbc:	b510      	push	{r4, lr}
 8007fbe:	4604      	mov	r4, r0
 8007fc0:	b082      	sub	sp, #8
 8007fc2:	b1a0      	cbz	r0, 8007fee <rt_serial_close+0x32>
 8007fc4:	8ae2      	ldrh	r2, [r4, #22]
 8007fc6:	f402 6080 	and.w	r0, r2, #1024	; 0x400
 8007fca:	b281      	uxth	r1, r0
 8007fcc:	f3c2 2300 	ubfx	r3, r2, #8, #1
 8007fd0:	b149      	cbz	r1, 8007fe6 <rt_serial_close+0x2a>
 8007fd2:	f043 0202 	orr.w	r2, r3, #2
 8007fd6:	6c21      	ldr	r1, [r4, #64]	; 0x40
 8007fd8:	4620      	mov	r0, r4
 8007fda:	684b      	ldr	r3, [r1, #4]
 8007fdc:	2111      	movs	r1, #17
 8007fde:	4798      	blx	r3
 8007fe0:	2000      	movs	r0, #0
 8007fe2:	b002      	add	sp, #8
 8007fe4:	bd10      	pop	{r4, pc}
 8007fe6:	2b00      	cmp	r3, #0
 8007fe8:	d0fa      	beq.n	8007fe0 <rt_serial_close+0x24>
 8007fea:	2201      	movs	r2, #1
 8007fec:	e7f3      	b.n	8007fd6 <rt_serial_close+0x1a>
 8007fee:	4806      	ldr	r0, [pc, #24]	; (8008008 <rt_serial_close+0x4c>)
 8007ff0:	4906      	ldr	r1, [pc, #24]	; (800800c <rt_serial_close+0x50>)
 8007ff2:	4a07      	ldr	r2, [pc, #28]	; (8008010 <rt_serial_close+0x54>)
 8007ff4:	23c7      	movs	r3, #199	; 0xc7
 8007ff6:	f88d 4007 	strb.w	r4, [sp, #7]
 8007ffa:	f7fe fdef 	bl	8006bdc <rt_kprintf>
 8007ffe:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8008002:	2b00      	cmp	r3, #0
 8008004:	d0fb      	beq.n	8007ffe <rt_serial_close+0x42>
 8008006:	e7dd      	b.n	8007fc4 <rt_serial_close+0x8>
 8008008:	08008a48 	.word	0x08008a48
 800800c:	08009214 	.word	0x08009214
 8008010:	08009c50 	.word	0x08009c50

08008014 <rt_serial_open>:
 8008014:	b510      	push	{r4, lr}
 8008016:	4604      	mov	r4, r0
 8008018:	b082      	sub	sp, #8
 800801a:	b1a0      	cbz	r0, 8008046 <rt_serial_open+0x32>
 800801c:	8ae2      	ldrh	r2, [r4, #22]
 800801e:	f402 6080 	and.w	r0, r2, #1024	; 0x400
 8008022:	b281      	uxth	r1, r0
 8008024:	f3c2 2300 	ubfx	r3, r2, #8, #1
 8008028:	b149      	cbz	r1, 800803e <rt_serial_open+0x2a>
 800802a:	f043 0202 	orr.w	r2, r3, #2
 800802e:	6c21      	ldr	r1, [r4, #64]	; 0x40
 8008030:	4620      	mov	r0, r4
 8008032:	684b      	ldr	r3, [r1, #4]
 8008034:	2110      	movs	r1, #16
 8008036:	4798      	blx	r3
 8008038:	2000      	movs	r0, #0
 800803a:	b002      	add	sp, #8
 800803c:	bd10      	pop	{r4, pc}
 800803e:	2b00      	cmp	r3, #0
 8008040:	d0fa      	beq.n	8008038 <rt_serial_open+0x24>
 8008042:	2201      	movs	r2, #1
 8008044:	e7f3      	b.n	800802e <rt_serial_open+0x1a>
 8008046:	4806      	ldr	r0, [pc, #24]	; (8008060 <rt_serial_open+0x4c>)
 8008048:	4906      	ldr	r1, [pc, #24]	; (8008064 <rt_serial_open+0x50>)
 800804a:	4a07      	ldr	r2, [pc, #28]	; (8008068 <rt_serial_open+0x54>)
 800804c:	23b2      	movs	r3, #178	; 0xb2
 800804e:	f88d 4007 	strb.w	r4, [sp, #7]
 8008052:	f7fe fdc3 	bl	8006bdc <rt_kprintf>
 8008056:	f89d 3007 	ldrb.w	r3, [sp, #7]
 800805a:	2b00      	cmp	r3, #0
 800805c:	d0fb      	beq.n	8008056 <rt_serial_open+0x42>
 800805e:	e7dd      	b.n	800801c <rt_serial_open+0x8>
 8008060:	08008a48 	.word	0x08008a48
 8008064:	08009214 	.word	0x08009214
 8008068:	08009b98 	.word	0x08009b98

0800806c <rt_serial_init>:
 800806c:	b530      	push	{r4, r5, lr}
 800806e:	4604      	mov	r4, r0
 8008070:	b083      	sub	sp, #12
 8008072:	2800      	cmp	r0, #0
 8008074:	d033      	beq.n	80080de <rt_serial_init+0x72>
 8008076:	8ae3      	ldrh	r3, [r4, #22]
 8008078:	f003 0210 	and.w	r2, r3, #16
 800807c:	b290      	uxth	r0, r2
 800807e:	b998      	cbnz	r0, 80080a8 <rt_serial_init+0x3c>
 8008080:	6c21      	ldr	r1, [r4, #64]	; 0x40
 8008082:	680a      	ldr	r2, [r1, #0]
 8008084:	b12a      	cbz	r2, 8008092 <rt_serial_init+0x26>
 8008086:	4620      	mov	r0, r4
 8008088:	f104 0144 	add.w	r1, r4, #68	; 0x44
 800808c:	4790      	blx	r2
 800808e:	b960      	cbnz	r0, 80080aa <rt_serial_init+0x3e>
 8008090:	8ae3      	ldrh	r3, [r4, #22]
 8008092:	f403 7080 	and.w	r0, r3, #256	; 0x100
 8008096:	b281      	uxth	r1, r0
 8008098:	b9a1      	cbnz	r1, 80080c4 <rt_serial_init+0x58>
 800809a:	f403 6000 	and.w	r0, r3, #2048	; 0x800
 800809e:	b281      	uxth	r1, r0
 80080a0:	b929      	cbnz	r1, 80080ae <rt_serial_init+0x42>
 80080a2:	f043 0210 	orr.w	r2, r3, #16
 80080a6:	82e2      	strh	r2, [r4, #22]
 80080a8:	2000      	movs	r0, #0
 80080aa:	b003      	add	sp, #12
 80080ac:	bd30      	pop	{r4, r5, pc}
 80080ae:	2300      	movs	r3, #0
 80080b0:	67a3      	str	r3, [r4, #120]	; 0x78
 80080b2:	f104 0054 	add.w	r0, r4, #84	; 0x54
 80080b6:	f44f 6100 	mov.w	r1, #2048	; 0x800
 80080ba:	221e      	movs	r2, #30
 80080bc:	f000 faea 	bl	8008694 <rt_data_queue_init>
 80080c0:	8ae3      	ldrh	r3, [r4, #22]
 80080c2:	e7ee      	b.n	80080a2 <rt_serial_init+0x36>
 80080c4:	6ce5      	ldr	r5, [r4, #76]	; 0x4c
 80080c6:	2240      	movs	r2, #64	; 0x40
 80080c8:	2100      	movs	r1, #0
 80080ca:	4628      	mov	r0, r5
 80080cc:	f7fe fa0c 	bl	80064e8 <rt_memset>
 80080d0:	2200      	movs	r2, #0
 80080d2:	8ae3      	ldrh	r3, [r4, #22]
 80080d4:	f8a5 2040 	strh.w	r2, [r5, #64]	; 0x40
 80080d8:	f8a5 2042 	strh.w	r2, [r5, #66]	; 0x42
 80080dc:	e7dd      	b.n	800809a <rt_serial_init+0x2e>
 80080de:	4806      	ldr	r0, [pc, #24]	; (80080f8 <rt_serial_init+0x8c>)
 80080e0:	4906      	ldr	r1, [pc, #24]	; (80080fc <rt_serial_init+0x90>)
 80080e2:	4a07      	ldr	r2, [pc, #28]	; (8008100 <rt_serial_init+0x94>)
 80080e4:	2384      	movs	r3, #132	; 0x84
 80080e6:	f88d 4007 	strb.w	r4, [sp, #7]
 80080ea:	f7fe fd77 	bl	8006bdc <rt_kprintf>
 80080ee:	f89d 3007 	ldrb.w	r3, [sp, #7]
 80080f2:	2b00      	cmp	r3, #0
 80080f4:	d0fb      	beq.n	80080ee <rt_serial_init+0x82>
 80080f6:	e7be      	b.n	8008076 <rt_serial_init+0xa>
 80080f8:	08008a48 	.word	0x08008a48
 80080fc:	08009214 	.word	0x08009214
 8008100:	08009b88 	.word	0x08009b88

08008104 <rt_serial_control>:
 8008104:	b570      	push	{r4, r5, r6, lr}
 8008106:	4604      	mov	r4, r0
 8008108:	b082      	sub	sp, #8
 800810a:	460d      	mov	r5, r1
 800810c:	4616      	mov	r6, r2
 800810e:	b1c0      	cbz	r0, 8008142 <rt_serial_control+0x3e>
 8008110:	2d02      	cmp	r5, #2
 8008112:	d011      	beq.n	8008138 <rt_serial_control+0x34>
 8008114:	2d03      	cmp	r5, #3
 8008116:	d009      	beq.n	800812c <rt_serial_control+0x28>
 8008118:	2d01      	cmp	r5, #1
 800811a:	d002      	beq.n	8008122 <rt_serial_control+0x1e>
 800811c:	2000      	movs	r0, #0
 800811e:	b002      	add	sp, #8
 8008120:	bd70      	pop	{r4, r5, r6, pc}
 8008122:	8ae0      	ldrh	r0, [r4, #22]
 8008124:	f020 0120 	bic.w	r1, r0, #32
 8008128:	82e1      	strh	r1, [r4, #22]
 800812a:	e7f7      	b.n	800811c <rt_serial_control+0x18>
 800812c:	6c22      	ldr	r2, [r4, #64]	; 0x40
 800812e:	4620      	mov	r0, r4
 8008130:	6813      	ldr	r3, [r2, #0]
 8008132:	4631      	mov	r1, r6
 8008134:	4798      	blx	r3
 8008136:	e7f1      	b.n	800811c <rt_serial_control+0x18>
 8008138:	8ae0      	ldrh	r0, [r4, #22]
 800813a:	f040 0120 	orr.w	r1, r0, #32
 800813e:	82e1      	strh	r1, [r4, #22]
 8008140:	e7ec      	b.n	800811c <rt_serial_control+0x18>
 8008142:	4807      	ldr	r0, [pc, #28]	; (8008160 <rt_serial_control+0x5c>)
 8008144:	4907      	ldr	r1, [pc, #28]	; (8008164 <rt_serial_control+0x60>)
 8008146:	4a08      	ldr	r2, [pc, #32]	; (8008168 <rt_serial_control+0x64>)
 8008148:	f44f 73b7 	mov.w	r3, #366	; 0x16e
 800814c:	f88d 4007 	strb.w	r4, [sp, #7]
 8008150:	f7fe fd44 	bl	8006bdc <rt_kprintf>
 8008154:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8008158:	2b00      	cmp	r3, #0
 800815a:	d0fb      	beq.n	8008154 <rt_serial_control+0x50>
 800815c:	e7d8      	b.n	8008110 <rt_serial_control+0xc>
 800815e:	bf00      	nop
 8008160:	08008a48 	.word	0x08008a48
 8008164:	08009214 	.word	0x08009214
 8008168:	08009ba8 	.word	0x08009ba8

0800816c <rt_serial_write>:
 800816c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8008170:	4604      	mov	r4, r0
 8008172:	b082      	sub	sp, #8
 8008174:	4690      	mov	r8, r2
 8008176:	461d      	mov	r5, r3
 8008178:	2800      	cmp	r0, #0
 800817a:	f000 80ce 	beq.w	800831a <rt_serial_write+0x1ae>
 800817e:	2d00      	cmp	r5, #0
 8008180:	d05a      	beq.n	8008238 <rt_serial_write+0xcc>
 8008182:	8ae0      	ldrh	r0, [r4, #22]
 8008184:	f400 6680 	and.w	r6, r0, #1024	; 0x400
 8008188:	b2b6      	uxth	r6, r6
 800818a:	2e00      	cmp	r6, #0
 800818c:	d058      	beq.n	8008240 <rt_serial_write+0xd4>
 800818e:	6d26      	ldr	r6, [r4, #80]	; 0x50
 8008190:	f898 a000 	ldrb.w	sl, [r8]
 8008194:	f7f7 ffba 	bl	800010c <rt_hw_interrupt_disable>
 8008198:	f8b6 2040 	ldrh.w	r2, [r6, #64]	; 0x40
 800819c:	f8b6 1042 	ldrh.w	r1, [r6, #66]	; 0x42
 80081a0:	1c57      	adds	r7, r2, #1
 80081a2:	f007 033f 	and.w	r3, r7, #63	; 0x3f
 80081a6:	f105 39ff 	add.w	r9, r5, #4294967295
 80081aa:	4299      	cmp	r1, r3
 80081ac:	4645      	mov	r5, r8
 80081ae:	f009 0701 	and.w	r7, r9, #1
 80081b2:	f000 80d8 	beq.w	8008366 <rt_serial_write+0x1fa>
 80081b6:	f806 a002 	strb.w	sl, [r6, r2]
 80081ba:	f8a6 3040 	strh.w	r3, [r6, #64]	; 0x40
 80081be:	f7f7 ffa9 	bl	8000114 <rt_hw_interrupt_enable>
 80081c2:	f108 0501 	add.w	r5, r8, #1
 80081c6:	f1b9 0f00 	cmp.w	r9, #0
 80081ca:	d032      	beq.n	8008232 <rt_serial_write+0xc6>
 80081cc:	b117      	cbz	r7, 80081d4 <rt_serial_write+0x68>
 80081ce:	6d26      	ldr	r6, [r4, #80]	; 0x50
 80081d0:	782f      	ldrb	r7, [r5, #0]
 80081d2:	e019      	b.n	8008208 <rt_serial_write+0x9c>
 80081d4:	6d26      	ldr	r6, [r4, #80]	; 0x50
 80081d6:	f895 a000 	ldrb.w	sl, [r5]
 80081da:	f7f7 ff97 	bl	800010c <rt_hw_interrupt_disable>
 80081de:	f8b6 7040 	ldrh.w	r7, [r6, #64]	; 0x40
 80081e2:	f8b6 2042 	ldrh.w	r2, [r6, #66]	; 0x42
 80081e6:	1c79      	adds	r1, r7, #1
 80081e8:	f001 033f 	and.w	r3, r1, #63	; 0x3f
 80081ec:	429a      	cmp	r2, r3
 80081ee:	f109 39ff 	add.w	r9, r9, #4294967295
 80081f2:	f000 80b8 	beq.w	8008366 <rt_serial_write+0x1fa>
 80081f6:	f806 a007 	strb.w	sl, [r6, r7]
 80081fa:	f8a6 3040 	strh.w	r3, [r6, #64]	; 0x40
 80081fe:	f7f7 ff89 	bl	8000114 <rt_hw_interrupt_enable>
 8008202:	6d26      	ldr	r6, [r4, #80]	; 0x50
 8008204:	f815 7f01 	ldrb.w	r7, [r5, #1]!
 8008208:	f7f7 ff80 	bl	800010c <rt_hw_interrupt_disable>
 800820c:	f8b6 2040 	ldrh.w	r2, [r6, #64]	; 0x40
 8008210:	f8b6 1042 	ldrh.w	r1, [r6, #66]	; 0x42
 8008214:	1c53      	adds	r3, r2, #1
 8008216:	f003 033f 	and.w	r3, r3, #63	; 0x3f
 800821a:	4299      	cmp	r1, r3
 800821c:	f000 80a3 	beq.w	8008366 <rt_serial_write+0x1fa>
 8008220:	54b7      	strb	r7, [r6, r2]
 8008222:	f8a6 3040 	strh.w	r3, [r6, #64]	; 0x40
 8008226:	f7f7 ff75 	bl	8000114 <rt_hw_interrupt_enable>
 800822a:	3501      	adds	r5, #1
 800822c:	f1b9 0901 	subs.w	r9, r9, #1
 8008230:	d1d0      	bne.n	80081d4 <rt_serial_write+0x68>
 8008232:	ebb5 0508 	subs.w	r5, r5, r8
 8008236:	d06b      	beq.n	8008310 <rt_serial_write+0x1a4>
 8008238:	4628      	mov	r0, r5
 800823a:	b002      	add	sp, #8
 800823c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8008240:	f400 6200 	and.w	r2, r0, #2048	; 0x800
 8008244:	b291      	uxth	r1, r2
 8008246:	2900      	cmp	r1, #0
 8008248:	d144      	bne.n	80082d4 <rt_serial_write+0x168>
 800824a:	4647      	mov	r7, r8
 800824c:	f817 1b01 	ldrb.w	r1, [r7], #1
 8008250:	1e6b      	subs	r3, r5, #1
 8008252:	290a      	cmp	r1, #10
 8008254:	f003 0601 	and.w	r6, r3, #1
 8008258:	f000 8099 	beq.w	800838e <rt_serial_write+0x222>
 800825c:	6c22      	ldr	r2, [r4, #64]	; 0x40
 800825e:	4620      	mov	r0, r4
 8008260:	6893      	ldr	r3, [r2, #8]
 8008262:	4798      	blx	r3
 8008264:	3701      	adds	r7, #1
 8008266:	f1b5 0901 	subs.w	r9, r5, #1
 800826a:	d072      	beq.n	8008352 <rt_serial_write+0x1e6>
 800826c:	b1ee      	cbz	r6, 80082aa <rt_serial_write+0x13e>
 800826e:	f817 1c01 	ldrb.w	r1, [r7, #-1]
 8008272:	290a      	cmp	r1, #10
 8008274:	f000 8099 	beq.w	80083aa <rt_serial_write+0x23e>
 8008278:	6c23      	ldr	r3, [r4, #64]	; 0x40
 800827a:	4620      	mov	r0, r4
 800827c:	689a      	ldr	r2, [r3, #8]
 800827e:	4790      	blx	r2
 8008280:	3701      	adds	r7, #1
 8008282:	f1b9 0901 	subs.w	r9, r9, #1
 8008286:	d110      	bne.n	80082aa <rt_serial_write+0x13e>
 8008288:	e063      	b.n	8008352 <rt_serial_write+0x1e6>
 800828a:	6c27      	ldr	r7, [r4, #64]	; 0x40
 800828c:	4620      	mov	r0, r4
 800828e:	68ba      	ldr	r2, [r7, #8]
 8008290:	4790      	blx	r2
 8008292:	f816 1b01 	ldrb.w	r1, [r6], #1
 8008296:	290a      	cmp	r1, #10
 8008298:	d04d      	beq.n	8008336 <rt_serial_write+0x1ca>
 800829a:	6c27      	ldr	r7, [r4, #64]	; 0x40
 800829c:	4620      	mov	r0, r4
 800829e:	68ba      	ldr	r2, [r7, #8]
 80082a0:	4790      	blx	r2
 80082a2:	1c77      	adds	r7, r6, #1
 80082a4:	f1b9 0901 	subs.w	r9, r9, #1
 80082a8:	d053      	beq.n	8008352 <rt_serial_write+0x1e6>
 80082aa:	f817 1c01 	ldrb.w	r1, [r7, #-1]
 80082ae:	463e      	mov	r6, r7
 80082b0:	290a      	cmp	r1, #10
 80082b2:	f109 39ff 	add.w	r9, r9, #4294967295
 80082b6:	d1e8      	bne.n	800828a <rt_serial_write+0x11e>
 80082b8:	8ae0      	ldrh	r0, [r4, #22]
 80082ba:	f000 0340 	and.w	r3, r0, #64	; 0x40
 80082be:	b29a      	uxth	r2, r3
 80082c0:	2a00      	cmp	r2, #0
 80082c2:	d0e2      	beq.n	800828a <rt_serial_write+0x11e>
 80082c4:	6c21      	ldr	r1, [r4, #64]	; 0x40
 80082c6:	4620      	mov	r0, r4
 80082c8:	688b      	ldr	r3, [r1, #8]
 80082ca:	210d      	movs	r1, #13
 80082cc:	4798      	blx	r3
 80082ce:	f817 1c01 	ldrb.w	r1, [r7, #-1]
 80082d2:	e7da      	b.n	800828a <rt_serial_write+0x11e>
 80082d4:	f000 0140 	and.w	r1, r0, #64	; 0x40
 80082d8:	b288      	uxth	r0, r1
 80082da:	2800      	cmp	r0, #0
 80082dc:	d149      	bne.n	8008372 <rt_serial_write+0x206>
 80082de:	f104 0054 	add.w	r0, r4, #84	; 0x54
 80082e2:	4641      	mov	r1, r8
 80082e4:	462a      	mov	r2, r5
 80082e6:	2314      	movs	r3, #20
 80082e8:	f000 fa0c 	bl	8008704 <rt_data_queue_push>
 80082ec:	2800      	cmp	r0, #0
 80082ee:	d136      	bne.n	800835e <rt_serial_write+0x1f2>
 80082f0:	f7f7 ff0c 	bl	800010c <rt_hw_interrupt_disable>
 80082f4:	6fa2      	ldr	r2, [r4, #120]	; 0x78
 80082f6:	2a00      	cmp	r2, #0
 80082f8:	d138      	bne.n	800836c <rt_serial_write+0x200>
 80082fa:	2101      	movs	r1, #1
 80082fc:	67a1      	str	r1, [r4, #120]	; 0x78
 80082fe:	f7f7 ff09 	bl	8000114 <rt_hw_interrupt_enable>
 8008302:	6c23      	ldr	r3, [r4, #64]	; 0x40
 8008304:	4620      	mov	r0, r4
 8008306:	691b      	ldr	r3, [r3, #16]
 8008308:	4641      	mov	r1, r8
 800830a:	462a      	mov	r2, r5
 800830c:	4798      	blx	r3
 800830e:	e793      	b.n	8008238 <rt_serial_write+0xcc>
 8008310:	f06f 0002 	mvn.w	r0, #2
 8008314:	f7fe f8d8 	bl	80064c8 <rt_set_errno>
 8008318:	e78e      	b.n	8008238 <rt_serial_write+0xcc>
 800831a:	482b      	ldr	r0, [pc, #172]	; (80083c8 <rt_serial_write+0x25c>)
 800831c:	492b      	ldr	r1, [pc, #172]	; (80083cc <rt_serial_write+0x260>)
 800831e:	4a2c      	ldr	r2, [pc, #176]	; (80083d0 <rt_serial_write+0x264>)
 8008320:	f44f 738b 	mov.w	r3, #278	; 0x116
 8008324:	f88d 4006 	strb.w	r4, [sp, #6]
 8008328:	f7fe fc58 	bl	8006bdc <rt_kprintf>
 800832c:	f89d 3006 	ldrb.w	r3, [sp, #6]
 8008330:	2b00      	cmp	r3, #0
 8008332:	d0fb      	beq.n	800832c <rt_serial_write+0x1c0>
 8008334:	e723      	b.n	800817e <rt_serial_write+0x12>
 8008336:	8ae0      	ldrh	r0, [r4, #22]
 8008338:	f000 0340 	and.w	r3, r0, #64	; 0x40
 800833c:	b29f      	uxth	r7, r3
 800833e:	2f00      	cmp	r7, #0
 8008340:	d0ab      	beq.n	800829a <rt_serial_write+0x12e>
 8008342:	6c22      	ldr	r2, [r4, #64]	; 0x40
 8008344:	210d      	movs	r1, #13
 8008346:	6893      	ldr	r3, [r2, #8]
 8008348:	4620      	mov	r0, r4
 800834a:	4798      	blx	r3
 800834c:	f816 1c01 	ldrb.w	r1, [r6, #-1]
 8008350:	e7a3      	b.n	800829a <rt_serial_write+0x12e>
 8008352:	4445      	add	r5, r8
 8008354:	ebb5 0508 	subs.w	r5, r5, r8
 8008358:	f47f af6e 	bne.w	8008238 <rt_serial_write+0xcc>
 800835c:	e7d8      	b.n	8008310 <rt_serial_write+0x1a4>
 800835e:	f7fe f8b3 	bl	80064c8 <rt_set_errno>
 8008362:	2500      	movs	r5, #0
 8008364:	e768      	b.n	8008238 <rt_serial_write+0xcc>
 8008366:	f7f7 fed5 	bl	8000114 <rt_hw_interrupt_enable>
 800836a:	e762      	b.n	8008232 <rt_serial_write+0xc6>
 800836c:	f7f7 fed2 	bl	8000114 <rt_hw_interrupt_enable>
 8008370:	e762      	b.n	8008238 <rt_serial_write+0xcc>
 8008372:	4815      	ldr	r0, [pc, #84]	; (80083c8 <rt_serial_write+0x25c>)
 8008374:	4917      	ldr	r1, [pc, #92]	; (80083d4 <rt_serial_write+0x268>)
 8008376:	4a16      	ldr	r2, [pc, #88]	; (80083d0 <rt_serial_write+0x264>)
 8008378:	f44f 7399 	mov.w	r3, #306	; 0x132
 800837c:	f88d 6007 	strb.w	r6, [sp, #7]
 8008380:	f7fe fc2c 	bl	8006bdc <rt_kprintf>
 8008384:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8008388:	2b00      	cmp	r3, #0
 800838a:	d0fb      	beq.n	8008384 <rt_serial_write+0x218>
 800838c:	e7a7      	b.n	80082de <rt_serial_write+0x172>
 800838e:	f000 0040 	and.w	r0, r0, #64	; 0x40
 8008392:	b282      	uxth	r2, r0
 8008394:	2a00      	cmp	r2, #0
 8008396:	f43f af61 	beq.w	800825c <rt_serial_write+0xf0>
 800839a:	6c21      	ldr	r1, [r4, #64]	; 0x40
 800839c:	4620      	mov	r0, r4
 800839e:	688b      	ldr	r3, [r1, #8]
 80083a0:	210d      	movs	r1, #13
 80083a2:	4798      	blx	r3
 80083a4:	f817 1c01 	ldrb.w	r1, [r7, #-1]
 80083a8:	e758      	b.n	800825c <rt_serial_write+0xf0>
 80083aa:	8ae0      	ldrh	r0, [r4, #22]
 80083ac:	f000 0240 	and.w	r2, r0, #64	; 0x40
 80083b0:	b293      	uxth	r3, r2
 80083b2:	2b00      	cmp	r3, #0
 80083b4:	f43f af60 	beq.w	8008278 <rt_serial_write+0x10c>
 80083b8:	6c21      	ldr	r1, [r4, #64]	; 0x40
 80083ba:	4620      	mov	r0, r4
 80083bc:	688a      	ldr	r2, [r1, #8]
 80083be:	210d      	movs	r1, #13
 80083c0:	4790      	blx	r2
 80083c2:	f817 1c01 	ldrb.w	r1, [r7, #-1]
 80083c6:	e757      	b.n	8008278 <rt_serial_write+0x10c>
 80083c8:	08008a48 	.word	0x08008a48
 80083cc:	08009214 	.word	0x08009214
 80083d0:	08009b78 	.word	0x08009b78
 80083d4:	08009bbc 	.word	0x08009bbc

080083d8 <rt_serial_read>:
 80083d8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80083dc:	4604      	mov	r4, r0
 80083de:	b082      	sub	sp, #8
 80083e0:	4617      	mov	r7, r2
 80083e2:	461e      	mov	r6, r3
 80083e4:	2800      	cmp	r0, #0
 80083e6:	f000 80b0 	beq.w	800854a <rt_serial_read+0x172>
 80083ea:	2e00      	cmp	r6, #0
 80083ec:	f000 80ab 	beq.w	8008546 <rt_serial_read+0x16e>
 80083f0:	8ae0      	ldrh	r0, [r4, #22]
 80083f2:	f400 7180 	and.w	r1, r0, #256	; 0x100
 80083f6:	b28a      	uxth	r2, r1
 80083f8:	2a00      	cmp	r2, #0
 80083fa:	d138      	bne.n	800846e <rt_serial_read+0x96>
 80083fc:	6c25      	ldr	r5, [r4, #64]	; 0x40
 80083fe:	f107 0901 	add.w	r9, r7, #1
 8008402:	eb07 0806 	add.w	r8, r7, r6
 8008406:	ebc9 0108 	rsb	r1, r9, r8
 800840a:	68eb      	ldr	r3, [r5, #12]
 800840c:	4620      	mov	r0, r4
 800840e:	f001 0a01 	and.w	sl, r1, #1
 8008412:	4798      	blx	r3
 8008414:	f108 0801 	add.w	r8, r8, #1
 8008418:	f109 0501 	add.w	r5, r9, #1
 800841c:	4545      	cmp	r5, r8
 800841e:	f809 0c01 	strb.w	r0, [r9, #-1]
 8008422:	d01a      	beq.n	800845a <rt_serial_read+0x82>
 8008424:	f1ba 0f00 	cmp.w	sl, #0
 8008428:	d008      	beq.n	800843c <rt_serial_read+0x64>
 800842a:	6c22      	ldr	r2, [r4, #64]	; 0x40
 800842c:	4620      	mov	r0, r4
 800842e:	68d1      	ldr	r1, [r2, #12]
 8008430:	4788      	blx	r1
 8008432:	f805 0c01 	strb.w	r0, [r5, #-1]
 8008436:	3501      	adds	r5, #1
 8008438:	4545      	cmp	r5, r8
 800843a:	d00e      	beq.n	800845a <rt_serial_read+0x82>
 800843c:	6c23      	ldr	r3, [r4, #64]	; 0x40
 800843e:	4620      	mov	r0, r4
 8008440:	68da      	ldr	r2, [r3, #12]
 8008442:	4790      	blx	r2
 8008444:	f805 0c01 	strb.w	r0, [r5, #-1]
 8008448:	6c21      	ldr	r1, [r4, #64]	; 0x40
 800844a:	4620      	mov	r0, r4
 800844c:	68cb      	ldr	r3, [r1, #12]
 800844e:	4798      	blx	r3
 8008450:	f805 0b01 	strb.w	r0, [r5], #1
 8008454:	3501      	adds	r5, #1
 8008456:	4545      	cmp	r5, r8
 8008458:	d1f0      	bne.n	800843c <rt_serial_read+0x64>
 800845a:	3e01      	subs	r6, #1
 800845c:	1bf0      	subs	r0, r6, r7
 800845e:	eb09 0700 	add.w	r7, r9, r0
 8008462:	2f00      	cmp	r7, #0
 8008464:	d06a      	beq.n	800853c <rt_serial_read+0x164>
 8008466:	4638      	mov	r0, r7
 8008468:	b002      	add	sp, #8
 800846a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800846e:	6ce5      	ldr	r5, [r4, #76]	; 0x4c
 8008470:	f7f7 fe4c 	bl	800010c <rt_hw_interrupt_disable>
 8008474:	f8b5 1042 	ldrh.w	r1, [r5, #66]	; 0x42
 8008478:	f8b5 2040 	ldrh.w	r2, [r5, #64]	; 0x40
 800847c:	f106 38ff 	add.w	r8, r6, #4294967295
 8008480:	428a      	cmp	r2, r1
 8008482:	463e      	mov	r6, r7
 8008484:	f008 0901 	and.w	r9, r8, #1
 8008488:	d06c      	beq.n	8008564 <rt_serial_read+0x18c>
 800848a:	1c4e      	adds	r6, r1, #1
 800848c:	f006 033f 	and.w	r3, r6, #63	; 0x3f
 8008490:	f815 a001 	ldrb.w	sl, [r5, r1]
 8008494:	f8a5 3042 	strh.w	r3, [r5, #66]	; 0x42
 8008498:	463e      	mov	r6, r7
 800849a:	f7f7 fe3b 	bl	8000114 <rt_hw_interrupt_enable>
 800849e:	f806 ab01 	strb.w	sl, [r6], #1
 80084a2:	f1b8 0f00 	cmp.w	r8, #0
 80084a6:	d046      	beq.n	8008536 <rt_serial_read+0x15e>
 80084a8:	f1b9 0f00 	cmp.w	r9, #0
 80084ac:	d016      	beq.n	80084dc <rt_serial_read+0x104>
 80084ae:	6ce5      	ldr	r5, [r4, #76]	; 0x4c
 80084b0:	f7f7 fe2c 	bl	800010c <rt_hw_interrupt_disable>
 80084b4:	f8b5 1042 	ldrh.w	r1, [r5, #66]	; 0x42
 80084b8:	f8b5 2040 	ldrh.w	r2, [r5, #64]	; 0x40
 80084bc:	428a      	cmp	r2, r1
 80084be:	d051      	beq.n	8008564 <rt_serial_read+0x18c>
 80084c0:	1c4b      	adds	r3, r1, #1
 80084c2:	f815 9001 	ldrb.w	r9, [r5, r1]
 80084c6:	f003 013f 	and.w	r1, r3, #63	; 0x3f
 80084ca:	f8a5 1042 	strh.w	r1, [r5, #66]	; 0x42
 80084ce:	f7f7 fe21 	bl	8000114 <rt_hw_interrupt_enable>
 80084d2:	f1b8 0801 	subs.w	r8, r8, #1
 80084d6:	f806 9b01 	strb.w	r9, [r6], #1
 80084da:	d02c      	beq.n	8008536 <rt_serial_read+0x15e>
 80084dc:	6ce5      	ldr	r5, [r4, #76]	; 0x4c
 80084de:	f7f7 fe15 	bl	800010c <rt_hw_interrupt_disable>
 80084e2:	f8b5 1042 	ldrh.w	r1, [r5, #66]	; 0x42
 80084e6:	f8b5 3040 	ldrh.w	r3, [r5, #64]	; 0x40
 80084ea:	1c4a      	adds	r2, r1, #1
 80084ec:	428b      	cmp	r3, r1
 80084ee:	f002 023f 	and.w	r2, r2, #63	; 0x3f
 80084f2:	f108 38ff 	add.w	r8, r8, #4294967295
 80084f6:	d035      	beq.n	8008564 <rt_serial_read+0x18c>
 80084f8:	f815 9001 	ldrb.w	r9, [r5, r1]
 80084fc:	f8a5 2042 	strh.w	r2, [r5, #66]	; 0x42
 8008500:	f7f7 fe08 	bl	8000114 <rt_hw_interrupt_enable>
 8008504:	f806 9b01 	strb.w	r9, [r6], #1
 8008508:	6ce5      	ldr	r5, [r4, #76]	; 0x4c
 800850a:	f7f7 fdff 	bl	800010c <rt_hw_interrupt_disable>
 800850e:	f8b5 1042 	ldrh.w	r1, [r5, #66]	; 0x42
 8008512:	f8b5 3040 	ldrh.w	r3, [r5, #64]	; 0x40
 8008516:	1c4a      	adds	r2, r1, #1
 8008518:	428b      	cmp	r3, r1
 800851a:	f002 023f 	and.w	r2, r2, #63	; 0x3f
 800851e:	d021      	beq.n	8008564 <rt_serial_read+0x18c>
 8008520:	f815 9001 	ldrb.w	r9, [r5, r1]
 8008524:	f8a5 2042 	strh.w	r2, [r5, #66]	; 0x42
 8008528:	f7f7 fdf4 	bl	8000114 <rt_hw_interrupt_enable>
 800852c:	f1b8 0801 	subs.w	r8, r8, #1
 8008530:	f806 9b01 	strb.w	r9, [r6], #1
 8008534:	d1d2      	bne.n	80084dc <rt_serial_read+0x104>
 8008536:	1bf7      	subs	r7, r6, r7
 8008538:	2f00      	cmp	r7, #0
 800853a:	d194      	bne.n	8008466 <rt_serial_read+0x8e>
 800853c:	f06f 0003 	mvn.w	r0, #3
 8008540:	f7fd ffc2 	bl	80064c8 <rt_set_errno>
 8008544:	e78f      	b.n	8008466 <rt_serial_read+0x8e>
 8008546:	4637      	mov	r7, r6
 8008548:	e78d      	b.n	8008466 <rt_serial_read+0x8e>
 800854a:	4808      	ldr	r0, [pc, #32]	; (800856c <rt_serial_read+0x194>)
 800854c:	4908      	ldr	r1, [pc, #32]	; (8008570 <rt_serial_read+0x198>)
 800854e:	4a09      	ldr	r2, [pc, #36]	; (8008574 <rt_serial_read+0x19c>)
 8008550:	23e0      	movs	r3, #224	; 0xe0
 8008552:	f88d 4007 	strb.w	r4, [sp, #7]
 8008556:	f7fe fb41 	bl	8006bdc <rt_kprintf>
 800855a:	f89d 3007 	ldrb.w	r3, [sp, #7]
 800855e:	2b00      	cmp	r3, #0
 8008560:	d0fb      	beq.n	800855a <rt_serial_read+0x182>
 8008562:	e742      	b.n	80083ea <rt_serial_read+0x12>
 8008564:	f7f7 fdd6 	bl	8000114 <rt_hw_interrupt_enable>
 8008568:	e7e5      	b.n	8008536 <rt_serial_read+0x15e>
 800856a:	bf00      	nop
 800856c:	08008a48 	.word	0x08008a48
 8008570:	08009214 	.word	0x08009214
 8008574:	08009c14 	.word	0x08009c14

08008578 <rt_hw_serial_register>:
 8008578:	b5f0      	push	{r4, r5, r6, r7, lr}
 800857a:	4604      	mov	r4, r0
 800857c:	b083      	sub	sp, #12
 800857e:	460d      	mov	r5, r1
 8008580:	4616      	mov	r6, r2
 8008582:	461f      	mov	r7, r3
 8008584:	b1b8      	cbz	r0, 80085b6 <rt_hw_serial_register+0x3e>
 8008586:	4b13      	ldr	r3, [pc, #76]	; (80085d4 <rt_hw_serial_register+0x5c>)
 8008588:	4a13      	ldr	r2, [pc, #76]	; (80085d8 <rt_hw_serial_register+0x60>)
 800858a:	2100      	movs	r1, #0
 800858c:	7521      	strb	r1, [r4, #20]
 800858e:	61e1      	str	r1, [r4, #28]
 8008590:	6221      	str	r1, [r4, #32]
 8008592:	6263      	str	r3, [r4, #36]	; 0x24
 8008594:	62a2      	str	r2, [r4, #40]	; 0x28
 8008596:	4811      	ldr	r0, [pc, #68]	; (80085dc <rt_hw_serial_register+0x64>)
 8008598:	4911      	ldr	r1, [pc, #68]	; (80085e0 <rt_hw_serial_register+0x68>)
 800859a:	4b12      	ldr	r3, [pc, #72]	; (80085e4 <rt_hw_serial_register+0x6c>)
 800859c:	4a12      	ldr	r2, [pc, #72]	; (80085e8 <rt_hw_serial_register+0x70>)
 800859e:	62e0      	str	r0, [r4, #44]	; 0x2c
 80085a0:	6321      	str	r1, [r4, #48]	; 0x30
 80085a2:	63a2      	str	r2, [r4, #56]	; 0x38
 80085a4:	6363      	str	r3, [r4, #52]	; 0x34
 80085a6:	63e7      	str	r7, [r4, #60]	; 0x3c
 80085a8:	4620      	mov	r0, r4
 80085aa:	4629      	mov	r1, r5
 80085ac:	b2b2      	uxth	r2, r6
 80085ae:	f7fd fb73 	bl	8005c98 <rt_device_register>
 80085b2:	b003      	add	sp, #12
 80085b4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80085b6:	480d      	ldr	r0, [pc, #52]	; (80085ec <rt_hw_serial_register+0x74>)
 80085b8:	490d      	ldr	r1, [pc, #52]	; (80085f0 <rt_hw_serial_register+0x78>)
 80085ba:	4a0e      	ldr	r2, [pc, #56]	; (80085f4 <rt_hw_serial_register+0x7c>)
 80085bc:	f240 138f 	movw	r3, #399	; 0x18f
 80085c0:	f88d 4007 	strb.w	r4, [sp, #7]
 80085c4:	f7fe fb0a 	bl	8006bdc <rt_kprintf>
 80085c8:	f89d 0007 	ldrb.w	r0, [sp, #7]
 80085cc:	2800      	cmp	r0, #0
 80085ce:	d0fb      	beq.n	80085c8 <rt_hw_serial_register+0x50>
 80085d0:	e7d9      	b.n	8008586 <rt_hw_serial_register+0xe>
 80085d2:	bf00      	nop
 80085d4:	0800806d 	.word	0x0800806d
 80085d8:	08008015 	.word	0x08008015
 80085dc:	08007fbd 	.word	0x08007fbd
 80085e0:	080083d9 	.word	0x080083d9
 80085e4:	0800816d 	.word	0x0800816d
 80085e8:	08008105 	.word	0x08008105
 80085ec:	08008a48 	.word	0x08008a48
 80085f0:	08008a68 	.word	0x08008a68
 80085f4:	08009c24 	.word	0x08009c24

080085f8 <rt_hw_serial_isr>:
 80085f8:	b570      	push	{r4, r5, r6, lr}
 80085fa:	8ac4      	ldrh	r4, [r0, #22]
 80085fc:	4605      	mov	r5, r0
 80085fe:	f404 7080 	and.w	r0, r4, #256	; 0x100
 8008602:	b284      	uxth	r4, r0
 8008604:	b082      	sub	sp, #8
 8008606:	b9b4      	cbnz	r4, 8008636 <rt_hw_serial_isr+0x3e>
 8008608:	e030      	b.n	800866c <rt_hw_serial_isr+0x74>
 800860a:	6cec      	ldr	r4, [r5, #76]	; 0x4c
 800860c:	f7f7 fd7e 	bl	800010c <rt_hw_interrupt_disable>
 8008610:	f8b4 2040 	ldrh.w	r2, [r4, #64]	; 0x40
 8008614:	f8b4 1042 	ldrh.w	r1, [r4, #66]	; 0x42
 8008618:	1c53      	adds	r3, r2, #1
 800861a:	f003 033f 	and.w	r3, r3, #63	; 0x3f
 800861e:	4299      	cmp	r1, r3
 8008620:	54a6      	strb	r6, [r4, r2]
 8008622:	f8a4 3040 	strh.w	r3, [r4, #64]	; 0x40
 8008626:	d104      	bne.n	8008632 <rt_hw_serial_isr+0x3a>
 8008628:	1c4e      	adds	r6, r1, #1
 800862a:	f006 023f 	and.w	r2, r6, #63	; 0x3f
 800862e:	f8a4 2042 	strh.w	r2, [r4, #66]	; 0x42
 8008632:	f7f7 fd6f 	bl	8000114 <rt_hw_interrupt_enable>
 8008636:	6c29      	ldr	r1, [r5, #64]	; 0x40
 8008638:	4628      	mov	r0, r5
 800863a:	68ca      	ldr	r2, [r1, #12]
 800863c:	4790      	blx	r2
 800863e:	1c43      	adds	r3, r0, #1
 8008640:	4606      	mov	r6, r0
 8008642:	d1e2      	bne.n	800860a <rt_hw_serial_isr+0x12>
 8008644:	69e8      	ldr	r0, [r5, #28]
 8008646:	b178      	cbz	r0, 8008668 <rt_hw_serial_isr+0x70>
 8008648:	6cec      	ldr	r4, [r5, #76]	; 0x4c
 800864a:	f7f7 fd5f 	bl	800010c <rt_hw_interrupt_disable>
 800864e:	f8b4 1040 	ldrh.w	r1, [r4, #64]	; 0x40
 8008652:	f8b4 3042 	ldrh.w	r3, [r4, #66]	; 0x42
 8008656:	1aca      	subs	r2, r1, r3
 8008658:	f002 043f 	and.w	r4, r2, #63	; 0x3f
 800865c:	f7f7 fd5a 	bl	8000114 <rt_hw_interrupt_enable>
 8008660:	69eb      	ldr	r3, [r5, #28]
 8008662:	4628      	mov	r0, r5
 8008664:	4621      	mov	r1, r4
 8008666:	4798      	blx	r3
 8008668:	b002      	add	sp, #8
 800866a:	bd70      	pop	{r4, r5, r6, pc}
 800866c:	4806      	ldr	r0, [pc, #24]	; (8008688 <rt_hw_serial_isr+0x90>)
 800866e:	4907      	ldr	r1, [pc, #28]	; (800868c <rt_hw_serial_isr+0x94>)
 8008670:	4a07      	ldr	r2, [pc, #28]	; (8008690 <rt_hw_serial_isr+0x98>)
 8008672:	f240 13a9 	movw	r3, #425	; 0x1a9
 8008676:	f88d 4007 	strb.w	r4, [sp, #7]
 800867a:	f7fe faaf 	bl	8006bdc <rt_kprintf>
 800867e:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8008682:	2b00      	cmp	r3, #0
 8008684:	d0fb      	beq.n	800867e <rt_hw_serial_isr+0x86>
 8008686:	e7d6      	b.n	8008636 <rt_hw_serial_isr+0x3e>
 8008688:	08008a48 	.word	0x08008a48
 800868c:	08009be8 	.word	0x08009be8
 8008690:	08009c3c 	.word	0x08009c3c

08008694 <rt_data_queue_init>:
 8008694:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8008698:	4604      	mov	r4, r0
 800869a:	b082      	sub	sp, #8
 800869c:	460e      	mov	r6, r1
 800869e:	4617      	mov	r7, r2
 80086a0:	4698      	mov	r8, r3
 80086a2:	b1d8      	cbz	r0, 80086dc <rt_data_queue_init+0x48>
 80086a4:	2500      	movs	r5, #0
 80086a6:	f104 0010 	add.w	r0, r4, #16
 80086aa:	f104 0118 	add.w	r1, r4, #24
 80086ae:	6160      	str	r0, [r4, #20]
 80086b0:	6120      	str	r0, [r4, #16]
 80086b2:	f8c4 8020 	str.w	r8, [r4, #32]
 80086b6:	00f0      	lsls	r0, r6, #3
 80086b8:	8026      	strh	r6, [r4, #0]
 80086ba:	8067      	strh	r7, [r4, #2]
 80086bc:	6065      	str	r5, [r4, #4]
 80086be:	8125      	strh	r5, [r4, #8]
 80086c0:	8165      	strh	r5, [r4, #10]
 80086c2:	61e1      	str	r1, [r4, #28]
 80086c4:	61a1      	str	r1, [r4, #24]
 80086c6:	f7fe fbd7 	bl	8006e78 <rt_malloc>
 80086ca:	42a8      	cmp	r0, r5
 80086cc:	60e0      	str	r0, [r4, #12]
 80086ce:	bf0c      	ite	eq
 80086d0:	f06f 0004 	mvneq.w	r0, #4
 80086d4:	4628      	movne	r0, r5
 80086d6:	b002      	add	sp, #8
 80086d8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80086dc:	4806      	ldr	r0, [pc, #24]	; (80086f8 <rt_data_queue_init+0x64>)
 80086de:	4907      	ldr	r1, [pc, #28]	; (80086fc <rt_data_queue_init+0x68>)
 80086e0:	4a07      	ldr	r2, [pc, #28]	; (8008700 <rt_data_queue_init+0x6c>)
 80086e2:	2329      	movs	r3, #41	; 0x29
 80086e4:	f88d 4007 	strb.w	r4, [sp, #7]
 80086e8:	f7fe fa78 	bl	8006bdc <rt_kprintf>
 80086ec:	f89d 3007 	ldrb.w	r3, [sp, #7]
 80086f0:	2b00      	cmp	r3, #0
 80086f2:	d0fb      	beq.n	80086ec <rt_data_queue_init+0x58>
 80086f4:	e7d6      	b.n	80086a4 <rt_data_queue_init+0x10>
 80086f6:	bf00      	nop
 80086f8:	08008a48 	.word	0x08008a48
 80086fc:	08009c74 	.word	0x08009c74
 8008700:	08009cac 	.word	0x08009cac

08008704 <rt_data_queue_push>:
 8008704:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008708:	b085      	sub	sp, #20
 800870a:	4681      	mov	r9, r0
 800870c:	468a      	mov	sl, r1
 800870e:	e88d 000c 	stmia.w	sp, {r2, r3}
 8008712:	2800      	cmp	r0, #0
 8008714:	d07f      	beq.n	8008816 <rt_data_queue_push+0x112>
 8008716:	f7ff f8db 	bl	80078d0 <rt_thread_self>
 800871a:	f8b9 b000 	ldrh.w	fp, [r9]
 800871e:	4604      	mov	r4, r0
 8008720:	f7f7 fcf4 	bl	800010c <rt_hw_interrupt_disable>
 8008724:	f04f 0801 	mov.w	r8, #1
 8008728:	4605      	mov	r5, r0
 800872a:	2700      	movs	r7, #0
 800872c:	e028      	b.n	8008780 <rt_data_queue_push+0x7c>
 800872e:	4630      	mov	r0, r6
 8008730:	f7f7 fcf0 	bl	8000114 <rt_hw_interrupt_enable>
 8008734:	6327      	str	r7, [r4, #48]	; 0x30
 8008736:	4620      	mov	r0, r4
 8008738:	f7ff f924 	bl	8007984 <rt_thread_suspend>
 800873c:	9e01      	ldr	r6, [sp, #4]
 800873e:	f8d9 0014 	ldr.w	r0, [r9, #20]
 8008742:	f104 0314 	add.w	r3, r4, #20
 8008746:	f109 0110 	add.w	r1, r9, #16
 800874a:	2e00      	cmp	r6, #0
 800874c:	6003      	str	r3, [r0, #0]
 800874e:	61a0      	str	r0, [r4, #24]
 8008750:	6161      	str	r1, [r4, #20]
 8008752:	f8c9 3014 	str.w	r3, [r9, #20]
 8008756:	dd09      	ble.n	800876c <rt_data_queue_push+0x68>
 8008758:	f104 0644 	add.w	r6, r4, #68	; 0x44
 800875c:	4630      	mov	r0, r6
 800875e:	2100      	movs	r1, #0
 8008760:	aa01      	add	r2, sp, #4
 8008762:	f7ff faf9 	bl	8007d58 <rt_timer_control>
 8008766:	4630      	mov	r0, r6
 8008768:	f7ff fa4c 	bl	8007c04 <rt_timer_start>
 800876c:	4628      	mov	r0, r5
 800876e:	f7f7 fcd1 	bl	8000114 <rt_hw_interrupt_enable>
 8008772:	f7fe fe9f 	bl	80074b4 <rt_schedule>
 8008776:	6b26      	ldr	r6, [r4, #48]	; 0x30
 8008778:	f7f7 fcc8 	bl	800010c <rt_hw_interrupt_disable>
 800877c:	4605      	mov	r5, r0
 800877e:	bb36      	cbnz	r6, 80087ce <rt_data_queue_push+0xca>
 8008780:	f8b9 300a 	ldrh.w	r3, [r9, #10]
 8008784:	f8b9 1008 	ldrh.w	r1, [r9, #8]
 8008788:	f8b9 2000 	ldrh.w	r2, [r9]
 800878c:	1a58      	subs	r0, r3, r1
 800878e:	4290      	cmp	r0, r2
 8008790:	d124      	bne.n	80087dc <rt_data_queue_push+0xd8>
 8008792:	9801      	ldr	r0, [sp, #4]
 8008794:	f8c9 8004 	str.w	r8, [r9, #4]
 8008798:	b1b8      	cbz	r0, 80087ca <rt_data_queue_push+0xc6>
 800879a:	f7f7 fcb7 	bl	800010c <rt_hw_interrupt_disable>
 800879e:	4606      	mov	r6, r0
 80087a0:	f7fd fd50 	bl	8006244 <rt_interrupt_get_nest>
 80087a4:	2800      	cmp	r0, #0
 80087a6:	d0c2      	beq.n	800872e <rt_data_queue_push+0x2a>
 80087a8:	4827      	ldr	r0, [pc, #156]	; (8008848 <rt_data_queue_push+0x144>)
 80087aa:	4928      	ldr	r1, [pc, #160]	; (800884c <rt_data_queue_push+0x148>)
 80087ac:	f7fe fa16 	bl	8006bdc <rt_kprintf>
 80087b0:	4827      	ldr	r0, [pc, #156]	; (8008850 <rt_data_queue_push+0x14c>)
 80087b2:	4928      	ldr	r1, [pc, #160]	; (8008854 <rt_data_queue_push+0x150>)
 80087b4:	4a25      	ldr	r2, [pc, #148]	; (800884c <rt_data_queue_push+0x148>)
 80087b6:	235f      	movs	r3, #95	; 0x5f
 80087b8:	f88d 700f 	strb.w	r7, [sp, #15]
 80087bc:	f7fe fa0e 	bl	8006bdc <rt_kprintf>
 80087c0:	f89d 200f 	ldrb.w	r2, [sp, #15]
 80087c4:	2a00      	cmp	r2, #0
 80087c6:	d0fb      	beq.n	80087c0 <rt_data_queue_push+0xbc>
 80087c8:	e7b1      	b.n	800872e <rt_data_queue_push+0x2a>
 80087ca:	f06f 0601 	mvn.w	r6, #1
 80087ce:	4628      	mov	r0, r5
 80087d0:	f7f7 fca0 	bl	8000114 <rt_hw_interrupt_enable>
 80087d4:	4630      	mov	r0, r6
 80087d6:	b005      	add	sp, #20
 80087d8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80087dc:	f8d9 100c 	ldr.w	r1, [r9, #12]
 80087e0:	464a      	mov	r2, r9
 80087e2:	f10b 34ff 	add.w	r4, fp, #4294967295
 80087e6:	f852 0f18 	ldr.w	r0, [r2, #24]!
 80087ea:	401c      	ands	r4, r3
 80087ec:	eb01 06c4 	add.w	r6, r1, r4, lsl #3
 80087f0:	f841 a034 	str.w	sl, [r1, r4, lsl #3]
 80087f4:	9900      	ldr	r1, [sp, #0]
 80087f6:	3301      	adds	r3, #1
 80087f8:	4290      	cmp	r0, r2
 80087fa:	6071      	str	r1, [r6, #4]
 80087fc:	f8a9 300a 	strh.w	r3, [r9, #10]
 8008800:	d016      	beq.n	8008830 <rt_data_queue_push+0x12c>
 8008802:	3814      	subs	r0, #20
 8008804:	f7ff f928 	bl	8007a58 <rt_thread_resume>
 8008808:	4628      	mov	r0, r5
 800880a:	f7f7 fc83 	bl	8000114 <rt_hw_interrupt_enable>
 800880e:	2600      	movs	r6, #0
 8008810:	f7fe fe50 	bl	80074b4 <rt_schedule>
 8008814:	e7de      	b.n	80087d4 <rt_data_queue_push+0xd0>
 8008816:	480e      	ldr	r0, [pc, #56]	; (8008850 <rt_data_queue_push+0x14c>)
 8008818:	490f      	ldr	r1, [pc, #60]	; (8008858 <rt_data_queue_push+0x154>)
 800881a:	4a0c      	ldr	r2, [pc, #48]	; (800884c <rt_data_queue_push+0x148>)
 800881c:	234b      	movs	r3, #75	; 0x4b
 800881e:	f88d 900e 	strb.w	r9, [sp, #14]
 8008822:	f7fe f9db 	bl	8006bdc <rt_kprintf>
 8008826:	f89d 300e 	ldrb.w	r3, [sp, #14]
 800882a:	2b00      	cmp	r3, #0
 800882c:	d0fb      	beq.n	8008826 <rt_data_queue_push+0x122>
 800882e:	e772      	b.n	8008716 <rt_data_queue_push+0x12>
 8008830:	4628      	mov	r0, r5
 8008832:	f7f7 fc6f 	bl	8000114 <rt_hw_interrupt_enable>
 8008836:	f8d9 6020 	ldr.w	r6, [r9, #32]
 800883a:	2e00      	cmp	r6, #0
 800883c:	d0ca      	beq.n	80087d4 <rt_data_queue_push+0xd0>
 800883e:	4648      	mov	r0, r9
 8008840:	2102      	movs	r1, #2
 8008842:	47b0      	blx	r6
 8008844:	2600      	movs	r6, #0
 8008846:	e7c5      	b.n	80087d4 <rt_data_queue_push+0xd0>
 8008848:	080092a8 	.word	0x080092a8
 800884c:	08009c60 	.word	0x08009c60
 8008850:	08008a48 	.word	0x08008a48
 8008854:	08009684 	.word	0x08009684
 8008858:	08009c74 	.word	0x08009c74

0800885c <atoi>:
 800885c:	b410      	push	{r4}
 800885e:	7801      	ldrb	r1, [r0, #0]
 8008860:	4602      	mov	r2, r0
 8008862:	3001      	adds	r0, #1
 8008864:	2920      	cmp	r1, #32
 8008866:	460b      	mov	r3, r1
 8008868:	f1a1 0409 	sub.w	r4, r1, #9
 800886c:	d0f7      	beq.n	800885e <atoi+0x2>
 800886e:	2c04      	cmp	r4, #4
 8008870:	d9f5      	bls.n	800885e <atoi+0x2>
 8008872:	292b      	cmp	r1, #43	; 0x2b
 8008874:	4610      	mov	r0, r2
 8008876:	d017      	beq.n	80088a8 <atoi+0x4c>
 8008878:	292d      	cmp	r1, #45	; 0x2d
 800887a:	d019      	beq.n	80088b0 <atoi+0x54>
 800887c:	2401      	movs	r4, #1
 800887e:	f1a3 0130 	sub.w	r1, r3, #48	; 0x30
 8008882:	2000      	movs	r0, #0
 8008884:	2909      	cmp	r1, #9
 8008886:	d80a      	bhi.n	800889e <atoi+0x42>
 8008888:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 800888c:	eb03 0040 	add.w	r0, r3, r0, lsl #1
 8008890:	f812 3f01 	ldrb.w	r3, [r2, #1]!
 8008894:	3830      	subs	r0, #48	; 0x30
 8008896:	f1a3 0130 	sub.w	r1, r3, #48	; 0x30
 800889a:	2909      	cmp	r1, #9
 800889c:	d9f4      	bls.n	8008888 <atoi+0x2c>
 800889e:	1c63      	adds	r3, r4, #1
 80088a0:	bf08      	it	eq
 80088a2:	4240      	negeq	r0, r0
 80088a4:	bc10      	pop	{r4}
 80088a6:	4770      	bx	lr
 80088a8:	2401      	movs	r4, #1
 80088aa:	3201      	adds	r2, #1
 80088ac:	7843      	ldrb	r3, [r0, #1]
 80088ae:	e7e6      	b.n	800887e <atoi+0x22>
 80088b0:	f04f 34ff 	mov.w	r4, #4294967295
 80088b4:	e7f9      	b.n	80088aa <atoi+0x4e>
 80088b6:	bf00      	nop

080088b8 <strncpy>:
 80088b8:	f7fd be8e 	b.w	80065d8 <rt_strncpy>

080088bc <strcmp>:
 80088bc:	7803      	ldrb	r3, [r0, #0]
 80088be:	780a      	ldrb	r2, [r1, #0]
 80088c0:	b92b      	cbnz	r3, 80088ce <strcmp+0x12>
 80088c2:	e006      	b.n	80088d2 <strcmp+0x16>
 80088c4:	f810 3f01 	ldrb.w	r3, [r0, #1]!
 80088c8:	b133      	cbz	r3, 80088d8 <strcmp+0x1c>
 80088ca:	f811 2f01 	ldrb.w	r2, [r1, #1]!
 80088ce:	4293      	cmp	r3, r2
 80088d0:	d0f8      	beq.n	80088c4 <strcmp+0x8>
 80088d2:	4618      	mov	r0, r3
 80088d4:	1a80      	subs	r0, r0, r2
 80088d6:	4770      	bx	lr
 80088d8:	784a      	ldrb	r2, [r1, #1]
 80088da:	4618      	mov	r0, r3
 80088dc:	1a80      	subs	r0, r0, r2
 80088de:	4770      	bx	lr

080088e0 <strncmp>:
 80088e0:	b430      	push	{r4, r5}
 80088e2:	2a00      	cmp	r2, #0
 80088e4:	d027      	beq.n	8008936 <strncmp+0x56>
 80088e6:	7803      	ldrb	r3, [r0, #0]
 80088e8:	780c      	ldrb	r4, [r1, #0]
 80088ea:	1b1c      	subs	r4, r3, r4
 80088ec:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 80088f0:	bf18      	it	ne
 80088f2:	b260      	sxtbne	r0, r4
 80088f4:	d11d      	bne.n	8008932 <strncmp+0x52>
 80088f6:	b1f3      	cbz	r3, 8008936 <strncmp+0x56>
 80088f8:	1e43      	subs	r3, r0, #1
 80088fa:	189a      	adds	r2, r3, r2
 80088fc:	1a13      	subs	r3, r2, r0
 80088fe:	07db      	lsls	r3, r3, #31
 8008900:	d501      	bpl.n	8008906 <strncmp+0x26>
 8008902:	e00d      	b.n	8008920 <strncmp+0x40>
 8008904:	b1bc      	cbz	r4, 8008936 <strncmp+0x56>
 8008906:	4290      	cmp	r0, r2
 8008908:	4603      	mov	r3, r0
 800890a:	d014      	beq.n	8008936 <strncmp+0x56>
 800890c:	f813 4f01 	ldrb.w	r4, [r3, #1]!
 8008910:	f811 5f01 	ldrb.w	r5, [r1, #1]!
 8008914:	4618      	mov	r0, r3
 8008916:	1b63      	subs	r3, r4, r5
 8008918:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
 800891c:	d108      	bne.n	8008930 <strncmp+0x50>
 800891e:	b154      	cbz	r4, 8008936 <strncmp+0x56>
 8008920:	f810 4f01 	ldrb.w	r4, [r0, #1]!
 8008924:	f811 3f01 	ldrb.w	r3, [r1, #1]!
 8008928:	1ae3      	subs	r3, r4, r3
 800892a:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
 800892e:	d0e9      	beq.n	8008904 <strncmp+0x24>
 8008930:	b258      	sxtb	r0, r3
 8008932:	bc30      	pop	{r4, r5}
 8008934:	4770      	bx	lr
 8008936:	2000      	movs	r0, #0
 8008938:	e7fb      	b.n	8008932 <strncmp+0x52>
 800893a:	bf00      	nop

0800893c <strchr>:
 800893c:	7803      	ldrb	r3, [r0, #0]
 800893e:	b2c9      	uxtb	r1, r1
 8008940:	b153      	cbz	r3, 8008958 <strchr+0x1c>
 8008942:	4299      	cmp	r1, r3
 8008944:	d00b      	beq.n	800895e <strchr+0x22>
 8008946:	1c43      	adds	r3, r0, #1
 8008948:	e001      	b.n	800894e <strchr+0x12>
 800894a:	4291      	cmp	r1, r2
 800894c:	d008      	beq.n	8008960 <strchr+0x24>
 800894e:	4618      	mov	r0, r3
 8008950:	f813 2b01 	ldrb.w	r2, [r3], #1
 8008954:	2a00      	cmp	r2, #0
 8008956:	d1f8      	bne.n	800894a <strchr+0xe>
 8008958:	2900      	cmp	r1, #0
 800895a:	bf18      	it	ne
 800895c:	2000      	movne	r0, #0
 800895e:	4770      	bx	lr
 8008960:	4770      	bx	lr
 8008962:	bf00      	nop
 8008964:	0001c200 	.word	0x0001c200
 8008968:	00000008 	.word	0x00000008
 800896c:	3a706572 	.word	0x3a706572
 8008970:	7a5f6f74 	.word	0x7a5f6f74
 8008974:	206f7265 	.word	0x206f7265
 8008978:	2e2e2e2e 	.word	0x2e2e2e2e
 800897c:	00002e2e 	.word	0x00002e2e
 8008980:	3a706572 	.word	0x3a706572
 8008984:	7a5f7266 	.word	0x7a5f7266
 8008988:	206f7265 	.word	0x206f7265
 800898c:	2e2e2e2e 	.word	0x2e2e2e2e
 8008990:	00002e2e 	.word	0x00002e2e
 8008994:	5f747665 	.word	0x5f747665
 8008998:	00000064 	.word	0x00000064
 800899c:	5f646d63 	.word	0x5f646d63
 80089a0:	00000064 	.word	0x00000064
 80089a4:	5f736461 	.word	0x5f736461
 80089a8:	00000064 	.word	0x00000064
 80089ac:	74696e69 	.word	0x74696e69
 80089b0:	00000000 	.word	0x00000000
 80089b4:	57200d0a 	.word	0x57200d0a
 80089b8:	676e6f72 	.word	0x676e6f72
 80089bc:	72617020 	.word	0x72617020
 80089c0:	74656d61 	.word	0x74656d61
 80089c4:	76207265 	.word	0x76207265
 80089c8:	65756c61 	.word	0x65756c61
 80089cc:	74656420 	.word	0x74656420
 80089d0:	65746365 	.word	0x65746365
 80089d4:	6e6f2064 	.word	0x6e6f2064
 80089d8:	00000a0d 	.word	0x00000a0d
 80089dc:	20202020 	.word	0x20202020
 80089e0:	66202020 	.word	0x66202020
 80089e4:	20656c69 	.word	0x20656c69
 80089e8:	0d732520 	.word	0x0d732520
 80089ec:	0000000a 	.word	0x0000000a
 80089f0:	20202020 	.word	0x20202020
 80089f4:	6c202020 	.word	0x6c202020
 80089f8:	20656e69 	.word	0x20656e69
 80089fc:	0d642520 	.word	0x0d642520
 8008a00:	0000000a 	.word	0x0000000a
 8008a04:	74726175 	.word	0x74726175
 8008a08:	00000031 	.word	0x00000031

08008a0c <__FUNCTION__.7400>:
 8008a0c:	336d7473 6f635f32 6f72746e 0000006c     stm32_control...

08008a1c <__FUNCTION__.7413>:
 8008a1c:	336d7473 75705f32 00006374              stm32_putc..

08008a28 <__FUNCTION__.7426>:
 8008a28:	336d7473 65675f32 00006374              stm32_getc..

08008a34 <stm32_uart_ops>:
 8008a34:	08000549 080004cd 08000485 0800043d     I...........=...
 8008a44:	00000000 29732528 73736120 20747265     ....(%s) assert 
 8008a54:	6c696166 61206465 73252074 2064253a     failed at %s:%d 
 8008a64:	0000000a 69726573 21206c61 5452203d     ....serial != RT
 8008a74:	4c554e5f 0000004c 20676663 52203d21     _NULL...cfg != R
 8008a84:	554e5f54 00004c4c 74726175 00000032     T_NULL..uart2...
 8008a94:	74726175 00000033                       uart3...

08008a9c <__FUNCTION__.7385>:
 8008a9c:	336d7473 6f635f32 6769666e 00657275     stm32_configure.
 8008aac:	7262694c 65697261 54535c73 4632334d     Libraries\STM32F
 8008abc:	5f783031 50647453 70697265 72445f68     10x_StdPeriph_Dr
 8008acc:	72657669 6372735c 6d74735c 31663233     iver\src\stm32f1
 8008adc:	725f7830 632e6363 00000000 7262694c     0x_rcc.c....Libr
 8008aec:	65697261 54535c73 4632334d 5f783031     aries\STM32F10x_
 8008afc:	50647453 70697265 72445f68 72657669     StdPeriph_Driver
 8008b0c:	6372735c 6d74735c 31663233 655f7830     \src\stm32f10x_e
 8008b1c:	2e697478 00000063 7262694c 65697261     xti.c...Librarie
 8008b2c:	54535c73 4632334d 5f783031 50647453     s\STM32F10x_StdP
 8008b3c:	70697265 72445f68 72657669 6372735c     eriph_Driver\src
 8008b4c:	6d74735c 31663233 615f7830 632e6364     \stm32f10x_adc.c
 8008b5c:	00000000 7262694c 65697261 54535c73     ....Libraries\ST
 8008b6c:	4632334d 5f783031 50647453 70697265     M32F10x_StdPerip
 8008b7c:	72445f68 72657669 6372735c 6d74735c     h_Driver\src\stm
 8008b8c:	31663233 745f7830 632e6d69 00000000     32f10x_tim.c....
 8008b9c:	7262694c 65697261 54535c73 4632334d     Libraries\STM32F
 8008bac:	5f783031 50647453 70697265 72445f68     10x_StdPeriph_Dr
 8008bbc:	72657669 6372735c 6d74735c 31663233     iver\src\stm32f1
 8008bcc:	665f7830 6873616c 0000632e 7262694c     0x_flash.c..Libr
 8008bdc:	65697261 54535c73 4632334d 5f783031     aries\STM32F10x_
 8008bec:	50647453 70697265 72445f68 72657669     StdPeriph_Driver
 8008bfc:	6372735c 6d74735c 31663233 675f7830     \src\stm32f10x_g
 8008c0c:	2e6f6970 00000063 7262694c 65697261     pio.c...Librarie
 8008c1c:	54535c73 4632334d 5f783031 50647453     s\STM32F10x_StdP
 8008c2c:	70697265 72445f68 72657669 6372735c     eriph_Driver\src
 8008c3c:	6d74735c 31663233 755f7830 74726173     \stm32f10x_usart
 8008c4c:	0000632e 7262694c 65697261 54535c73     .c..Libraries\ST
 8008c5c:	4632334d 5f783031 50647453 70697265     M32F10x_StdPerip
 8008c6c:	72445f68 72657669 6372735c 6d74735c     h_Driver\src\stm
 8008c7c:	31663233 645f7830 632e616d 00000000     32f10x_dma.c....
 8008c8c:	7262694c 65697261 54535c73 4632334d     Libraries\STM32F
 8008c9c:	5f783031 50647453 70697265 72445f68     10x_StdPeriph_Dr
 8008cac:	72657669 6372735c 73696d5c 00632e63     iver\src\misc.c.
 8008cbc:	78343025 78343025 00000000 74697773     %04x%04x....swit
 8008ccc:	525f6863 62205441 70206461 6d617261     ch_RAT bad param
 8008cdc:	72657465 2e2e2e20 68732021 646c756f     eter ...! should
 8008cec:	20656220 7c557c52 544e7c49 41437c43      be R|U|I|NTC|CA
 8008cfc:	38347c4e 33327c35 0a0d2032 00000000     N|485|232 ......
 8008d0c:	706d6173 0000656c 006e7572 706f7473     sample..run.stop
 8008d1c:	00000000 00676663 00747773 00616770     ....cfg.swt.pga.
 8008d2c:	706d6574 00000000 756e616d 00006c61     temp....manual..
 8008d3c:	65746e69 6c617672 00000000 6e616863     interval....chan
 8008d4c:	006c656e 5f636461 756c6176 65722065     nel.adc_value re
 8008d5c:	253a6461 000d0a78 64616572 0a73253a     ad:%x...read:%s.
 8008d6c:	0000000d 5f636461 756c6176 72772065     ....adc_value wr
 8008d7c:	3a657469 0d0a7825 00000000 3a746573     ite:%x......set:
 8008d8c:	00627375 63200a0d 6f736e6f 7320656c     usb... console s
 8008d9c:	74207465 7375206f 6f6e2062 2e2e2e77     et to usb now...
 8008dac:	000a0d2e 3a746573 00726573 63200a0d     ....set:ser... c
 8008dbc:	6f736e6f 7320656c 74207465 6573206f     onsole set to se
 8008dcc:	6c616972 6f6e2031 2e2e2e77 000a0d2e     rial1 now.......
 8008ddc:	72650a0d 75203a72 6f6e6b6e 6f632077     ..err: unknow co
 8008dec:	6c6f736e 000a0d65 3e3e0d0a 6e755f5f     nsole.....>>__un
 8008dfc:	776f6e6b 6f63206e 6e616d6d 000d0a64     known command...
 8008e0c:	3e3e0d0a 6e6b6e75 206e776f 6d6d6f63     ..>>unknown comm
 8008e1c:	5f646e61 000d0a5f 736e6f63 00656c6f     and__...console.
 8008e2c:	73616c66 00000068 696c6163 00000062     flash...calib...
 8008e3c:	6f746f6d 00000072 00636461 74756f76     motor...adc.vout
 8008e4c:	00000000 00746573 00746567 20434441     ....set.get.ADC 
 8008e5c:	74737953 69206d65 6974696e 7a696c61     System initializ
 8008e6c:	0d216465 0000000a 3a706572 5f727265     ed!.....rep:err_
 8008e7c:	6f6b6e75 61206e77 206f7475 6d6d6f63     unkown auto comm
 8008e8c:	21646e61 0d2e2e2e 0000000a 3a706572     and!........rep:
 8008e9c:	65636361 6172616c 2e2e6574 2e2e2e2e     accelarate......
 8008eac:	00000a0d 3a706572 65636364 6172616c     ....rep:dccelara
 8008ebc:	2e2e6574 2e2e2e2e 00000a0d 3a706572     te..........rep:
 8008ecc:	706f7473 2e2e2e2e 0a0d2e2e 00000000     stop............
 8008edc:	3a706572 705f6f74 616c6c6f 2e2e2072     rep:to_pollar ..
 8008eec:	2e2e2e2e 00000a0d 6f746f6d 6f6d3a72     ........motor:mo
 8008efc:	783a6576 00003a3c 3a706572 705f7266     ve:x<:..rep:fr_p
 8008f0c:	616c6c6f 2e2e2072 2e2e2e2e 00000a0d     ollar ..........
 8008f1c:	3a706572 5f727265 6f6b6e75 64206e77     rep:err_unkown d
 8008f2c:	63657269 6e6f6974 0d2e2e2e 0000000a     irection........
 8008f3c:	3a706572 65766f6d 66207820 6177726f     rep:move x forwa
 8008f4c:	2e2e6472 2e2e2e2e 00000a0d 3a706572     rd..........rep:
 8008f5c:	65766f6d 62207820 776b6361 2e647261     move x backward.
 8008f6c:	2e2e2e2e 000a0d2e 3a706572 206e7572     ........rep:run 
 8008f7c:	6f662078 72617772 2e2e2e64 0d2e2e2e     x forward.......
 8008f8c:	0000000a 3a706572 206e7572 61622078     ....rep:run x ba
 8008f9c:	61776b63 2e2e6472 2e2e2e2e 00000a0d     ckward..........
 8008fac:	3a706572 5f727265 6f6b6e75 64206e77     rep:err_unkown d
 8008fbc:	63657269 6e6f6974 000a0d2e 65766f6d     irection....move
 8008fcc:	00000000 6c636361 00000000 75746573     ....accl....setu
 8008fdc:	00000070 6f747561 00000000 62617473     p...auto....stab
 8008fec:	7420656c 20656d69 74746573 2e2e6465     le time setted..
 8008ffc:	0a0d212e 00000000 74756f76 63656420     .!......vout dec
 800900c:	73616572 2e2e6465 0a0d212e 00000000     reased...!......
 800901c:	74756f76 636e6920 73616572 2e2e6465     vout increased..
 800902c:	0a0d212e 00000000 00636e69 00636564     .!......inc.dec.
 800903c:	20616770 74697277 2e2e6465 000a0d21     pga writed..!...
 800904c:	5f616770 65732052 64657474 212e2e2e     pga_R setted...!
 800905c:	00000a0d 5f616770 65732041 64657474     ....pga_A setted
 800906c:	212e2e2e 00000a0d 5f616770 65732042     ...!....pga_B se
 800907c:	64657474 212e2e2e 00000a0d 5f616770     tted...!....pga_
 800908c:	65732053 64657474 212e2e2e 00000a0d     S setted...!....
 800909c:	20616770 20646162 61726170 6574656d     pga bad paramete
 80090ac:	2e2e2072 7320212e 6c756f68 65622064     r ...! should be
 80090bc:	417c5220 0d20427c 0000000a 006d6573      R|A|B .....sem.

080090cc <GPIO_PIN>:
 80090cc:	00800100 02000100                       ........

080090d4 <CustomHID_DeviceDescriptor>:
 80090d4:	02000112 40000000 57500483 02010200     .......@..PW....
 80090e4:	00000103                                ....

080090e8 <CustomHID_StringProduct>:
 80090e8:	00530320 004d0054 00320033 00430020      .S.T.M.3.2. .C.
 80090f8:	00730075 006d0074 00480020 00440049     u.s.t.m. .H.I.D.

08009108 <CustomHID_StringVendor>:
 8009108:	00530326 004d0054 00630069 006f0072     &.S.T.M.i.c.r.o.
 8009118:	006c0065 00630065 00720074 006e006f     e.l.e.c.t.r.o.n.
 8009128:	00630069 00000073                       i.c.s...

08009130 <CustomHID_ReportDescriptor>:
 8009130:	0900ff06 8501a101 15010901 75012500     .............%.u
 8009140:	b1019508 09018582 85829101 15020902     ................
 8009150:	75012500 b1019508 09028582 85829102     .%.u............
 8009160:	15030903 75012500 b1019508 09038582     .....%.u........
 8009170:	85829103 15040904 75012500 b1019508     .........%.u....
 8009180:	09048582 05829104 a1ff09ff 19010501     ................
 8009190:	15ff2900 75ff2500 81409508 19020502     .)...%.u..@.....
 80091a0:	15ff2900 95ff2500 91407508 0000c002     .)...%...u@.....
	...

080091d4 <CustomHID_ConfigDescriptor>:
 80091d4:	00290209 c0000101 00040932 00030200     ..).....2.......
 80091e4:	21090000 01000110 0700a322 40038205     ...!...."......@
 80091f4:	05070100 00400301 00000005              ......@.....

08009200 <CustomHID_StringLangID>:
 8009200:	04090304                                ....

08009204 <__FUNCTION__.4689>:
 8009204:	645f7472 63697665 6c635f65 0065736f     rt_device_close.
 8009214:	20766564 52203d21 554e5f54 00004c4c     dev != RT_NULL..
 8009224:	69206f54 6974696e 7a696c61 65642065     To initialize de
 8009234:	65636976 2073253a 6c696166 202e6465     vice:%s failed. 
 8009244:	20656854 6f727265 6f632072 69206564     The error code i
 8009254:	64252073 0000000a 2d766564 6665723e     s %d....dev->ref
 8009264:	756f635f 2120746e 0030203d              _count != 0.

08009270 <__FUNCTION__.4711>:
 8009270:	645f7472 63697665 72775f65 00657469     rt_device_write.

08009280 <__FUNCTION__.4676>:
 8009280:	645f7472 63697665 706f5f65 00006e65     rt_device_open..

08009290 <__FUNCTION__.4698>:
 8009290:	745f7472 61657268 64695f64 655f656c     rt_thread_idle_e
 80092a0:	74756378 00000065 636e7546 6e6f6974     xcute...Function
 80092b0:	5d73255b 61687320 6e206c6c 7520746f     [%s] shall not u
 80092c0:	20646573 49206e69 000a5253 6c646974     sed in ISR..tidl
 80092d0:	00000065                                e...

080092d4 <__FUNCTION__.4744>:
 80092d4:	735f7472 635f6d65 74616572 00000065     rt_sem_create...
 80092e4:	206d6573 52203d21 554e5f54 00004c4c     sem != RT_NULL..
 80092f4:	636e7546 6e6f6974 5d73255b 61687320     Function[%s] sha
 8009304:	6e206c6c 6220746f 73752065 62206465     ll not be used b
 8009314:	726f6665 63732065 75646568 2072656c     efore scheduler 
 8009324:	72617473 00000a74                       start...

0800932c <__FUNCTION__.4769>:
 800932c:	735f7472 745f6d65 00656b61              rt_sem_take.

08009338 <__FUNCTION__.4725>:
 8009338:	735f7472 695f6d65 0074696e              rt_sem_init.

08009344 <small_digits.4848>:
 8009344:	33323130 37363534 62613938 66656463     0123456789abcdef
 8009354:	00000000                                ....

08009358 <large_digits.4849>:
 8009358:	33323130 37363534 42413938 46454443     0123456789ABCDEF
 8009368:	00000000 4c554e28 0000294c 205c200a     ....(NULL)... \ 
 8009378:	0a2f207c 00000000 5452202d 20202d20     | /.....- RT -  
 8009388:	54202020 61657268 704f2064 74617265        Thread Operat
 8009398:	20676e69 74737953 000a6d65 7c202f20     ing System.. / |
 80093a8:	20205c20 25202020 64252e64 2064252e      \     %d.%d.%d 
 80093b8:	6c697562 73252064 0000000a 2074634f     build %s....Oct 
 80093c8:	32203632 00343130 30303220 202d2036     26 2014. 2006 - 
 80093d8:	33313032 706f4320 67697279 62207468     2013 Copyright b
 80093e8:	74722079 7268742d 20646165 6d616574     y rt-thread team
 80093f8:	0000000a                                ....

080093fc <__lowest_bit_bitmap>:
 80093fc:	00010000 00010002 00010003 00010002     ................
 800940c:	00010004 00010002 00010003 00010002     ................
 800941c:	00010005 00010002 00010003 00010002     ................
 800942c:	00010004 00010002 00010003 00010002     ................
 800943c:	00010006 00010002 00010003 00010002     ................
 800944c:	00010004 00010002 00010003 00010002     ................
 800945c:	00010005 00010002 00010003 00010002     ................
 800946c:	00010004 00010002 00010003 00010002     ................
 800947c:	00010007 00010002 00010003 00010002     ................
 800948c:	00010004 00010002 00010003 00010002     ................
 800949c:	00010005 00010002 00010003 00010002     ................
 80094ac:	00010004 00010002 00010003 00010002     ................
 80094bc:	00010006 00010002 00010003 00010002     ................
 80094cc:	00010004 00010002 00010003 00010002     ................
 80094dc:	00010005 00010002 00010003 00010002     ................
 80094ec:	00010004 00010002 00010003 00010002     ................

080094fc <__FUNCTION__.4736>:
 80094fc:	735f7472 65747379 65685f6d 695f7061     rt_system_heap_i
 800950c:	0074696e                                nit.

08009510 <__FUNCTION__.4749>:
 8009510:	6d5f7472 6f6c6c61 00000063              rt_malloc...

0800951c <__FUNCTION__.4808>:
 800951c:	665f7472 00656572 5f747228 746e6975     rt_free.(rt_uint
 800952c:	20745f38 656d292a 3d3e206d 61656820     8_t *)mem >= hea
 800953c:	74705f70 00000072 5f747228 746e6975     p_ptr...(rt_uint
 800954c:	20745f38 656d292a 203c206d 5f747228     8_t *)mem < (rt_
 800955c:	746e6975 20745f38 6568292a 655f7061     uint8_t *)heap_e
 800956c:	0000646e 2d6d656d 6573753e 3d3d2064     nd..mem->used ==
 800957c:	00003020 70616568 00000000 206d656d      0..heap....mem 
 800958c:	74696e69 7265202c 20726f72 69676562     init, error begi
 800959c:	6461206e 73657264 78302073 202c7825     n address 0x%x, 
 80095ac:	20646e61 20646e65 72646461 20737365     and end address 
 80095bc:	78257830 0000000a 5f747228 746e6975     0x%x....(rt_uint
 80095cc:	745f3233 6d656d29 53202b20 4f455a49     32_t)mem + SIZEO
 80095dc:	54535f46 54435552 4d454d5f 73202b20     F_STRUCT_MEM + s
 80095ec:	20657a69 28203d3c 755f7472 33746e69     ize <= (rt_uint3
 80095fc:	29745f32 70616568 646e655f 00000000     2_t)heap_end....
 800960c:	5f747228 746e6975 745f3233 72282829     (rt_uint32_t)((r
 800961c:	69755f74 5f38746e 292a2074 206d656d     t_uint8_t *)mem 
 800962c:	4953202b 464f455a 5254535f 5f544355     + SIZEOF_STRUCT_
 800963c:	294d454d 52202520 4c415f54 5f4e4749     MEM) % RT_ALIGN_
 800964c:	455a4953 203d3d20 00000030 72282828     SIZE == 0...(((r
 800965c:	69755f74 3233746e 6d29745f 20296d65     t_uint32_t)mem) 
 800966c:	52282026 4c415f54 5f4e4749 455a4953     & (RT_ALIGN_SIZE
 800967c:	2929312d 203d3d20 00000030 72282828     -1)) == 0...(((r
 800968c:	69755f74 3233746e 7229745f 296d656d     t_uint32_t)rmem)
 800969c:	28202620 415f5452 4e47494c 5a49535f      & (RT_ALIGN_SIZ
 80096ac:	29312d45 3d3d2029 00003020 5f747228     E-1)) == 0..(rt_
 80096bc:	746e6975 20745f38 6d72292a 3e206d65     uint8_t *)rmem >
 80096cc:	7228203d 69755f74 5f38746e 292a2074     = (rt_uint8_t *)
 80096dc:	70616568 7274705f 20262620 5f747228     heap_ptr && (rt_
 80096ec:	746e6975 20745f38 6d72292a 3c206d65     uint8_t *)rmem <
 80096fc:	74722820 6e69755f 745f3874 68292a20      (rt_uint8_t *)h
 800970c:	5f706165 00646e65 2d6d656d 6573753e     eap_end.mem->use
 800971c:	00000064 2d6d656d 67616d3e 3d206369     d...mem->magic =
 800972c:	4548203d 4d5f5041 43494741 00000000     = HEAP_MAGIC....

0800973c <__FUNCTION__.4716>:
 800973c:	67756c70 6c6f685f 00007365              plug_holes..

08009748 <__FUNCTION__.4745>:
 8009748:	6f5f7472 63656a62 6c615f74 61636f6c     rt_object_alloca
 8009758:	00006574                                te..

0800975c <__FUNCTION__.4755>:
 800975c:	6f5f7472 63656a62 65645f74 6574656c     rt_object_delete
 800976c:	00000000 656a626f 21207463 5452203d     ....object != RT
 800977c:	4c554e5f 0000004c 626f2821 7463656a     _NULL...!(object
 800978c:	79743e2d 26206570 5f545220 656a624f     ->type & RT_Obje
 800979c:	435f7463 7373616c 6174535f 29636974     ct_Class_Static)
 80097ac:	00000000                                ....

080097b0 <__FUNCTION__.4767>:
 80097b0:	6f5f7472 63656a62 73695f74 7379735f     rt_object_is_sys
 80097c0:	6f6d6574 63656a62 00000074              temobject...

080097cc <__FUNCTION__.4733>:
 80097cc:	6f5f7472 63656a62 65645f74 68636174     rt_object_detach
 80097dc:	00000000                                ....

080097e0 <__FUNCTION__.4737>:
 80097e0:	735f7472 64656863 5f656c75 65736e69     rt_schedule_inse
 80097f0:	745f7472 61657268 00000064              rt_thread...

080097fc <__FUNCTION__.4746>:
 80097fc:	735f7472 64656863 5f656c75 6f6d6572     rt_schedule_remo
 800980c:	745f6576 61657268 00000064              ve_thread...

08009818 <__FUNCTION__.4705>:
 8009818:	5f74725f 65686373 656c7564 74735f72     _rt_scheduler_st
 8009828:	5f6b6361 63656863 0000006b 65726874     ack_check...thre
 8009838:	21206461 5452203d 4c554e5f 0000004c     ad != RT_NULL...
 8009848:	65726874 253a6461 74732073 206b6361     thread:%s stack 
 8009858:	7265766f 776f6c66 0000000a 6e726177     overflow....warn
 8009868:	3a676e69 20732520 63617473 7369206b     ing: %s stack is
 8009878:	6f6c6320 74206573 6e65206f 666f2064      close to end of
 8009888:	61747320 61206b63 65726464 0a2e7373      stack address..
 8009898:	00000000                                ....

0800989c <__FUNCTION__.4735>:
 800989c:	745f7472 61657268 74735f64 75747261     rt_thread_startu
 80098ac:	00000070                                p...

080098b0 <__FUNCTION__.4811>:
 80098b0:	745f7472 61657268 75735f64 6e657073     rt_thread_suspen
 80098c0:	00000064                                d...

080098c4 <__FUNCTION__.4704>:
 80098c4:	5f74725f 65726874 695f6461 0074696e     _rt_thread_init.
 80098d4:	65726874 3e2d6461 74617473 203d3d20     thread->stat == 
 80098e4:	545f5452 41455248 55535f44 4e455053     RT_THREAD_SUSPEN
 80098f4:	00000044 6f697270 79746972 52203c20     D...priority < R
 8009904:	48545f54 44414552 4952505f 5449524f     T_THREAD_PRIORIT
 8009914:	414d5f59 00000058 63617473 74735f6b     Y_MAX...stack_st
 8009924:	20747261 52203d21 554e5f54 00004c4c     art != RT_NULL..
 8009934:	65726874 3e2d6461 74617473 203d3d20     thread->stat == 
 8009944:	545f5452 41455248 4e495f44 00005449     RT_THREAD_INIT..

08009954 <__FUNCTION__.4720>:
 8009954:	745f7472 61657268 6e695f64 00007469     rt_thread_init..

08009964 <__FUNCTION__.4783>:
 8009964:	745f7472 61657268 6c735f64 00706565     rt_thread_sleep.

08009974 <__FUNCTION__.4829>:
 8009974:	745f7472 61657268 69745f64 756f656d     rt_thread_timeou
 8009984:	00000074                                t...

08009988 <__FUNCTION__.4820>:
 8009988:	745f7472 61657268 65725f64 656d7573     rt_thread_resume
 8009998:	00000000                                ....

0800999c <__FUNCTION__.4744>:
 800999c:	745f7472 72656d69 696e695f 00000074     rt_timer_init...

080099ac <__FUNCTION__.4753>:
 80099ac:	745f7472 72656d69 7465645f 00686361     rt_timer_detach.

080099bc <__FUNCTION__.4810>:
 80099bc:	745f7472 72656d69 6f74735f 00000070     rt_timer_stop...

080099cc <__FUNCTION__.4820>:
 80099cc:	745f7472 72656d69 6e6f635f 6c6f7274     rt_timer_control
 80099dc:	00000000 00006425 656d6974 3d212072     ....%d..timer !=
 80099ec:	5f545220 4c4c554e 00000000 656d6974      RT_NULL....time
 80099fc:	693e2d72 5f74696e 6b636974 52203c20     r->init_tick < R
 8009a0c:	49545f54 4d5f4b43 2f205841 00003220     T_TICK_MAX / 2..

08009a1c <__FUNCTION__.4785>:
 8009a1c:	745f7472 72656d69 6174735f 00007472     rt_timer_start..
 8009a2c:	3a727370 25783020 0a783830 00000000     psr: 0x%08x.....
 8009a3c:	3a303072 25783020 0a783830 00000000     r00: 0x%08x.....
 8009a4c:	3a313072 25783020 0a783830 00000000     r01: 0x%08x.....
 8009a5c:	3a323072 25783020 0a783830 00000000     r02: 0x%08x.....
 8009a6c:	3a333072 25783020 0a783830 00000000     r03: 0x%08x.....
 8009a7c:	3a343072 25783020 0a783830 00000000     r04: 0x%08x.....
 8009a8c:	3a353072 25783020 0a783830 00000000     r05: 0x%08x.....
 8009a9c:	3a363072 25783020 0a783830 00000000     r06: 0x%08x.....
 8009aac:	3a373072 25783020 0a783830 00000000     r07: 0x%08x.....
 8009abc:	3a383072 25783020 0a783830 00000000     r08: 0x%08x.....
 8009acc:	3a393072 25783020 0a783830 00000000     r09: 0x%08x.....
 8009adc:	3a303172 25783020 0a783830 00000000     r10: 0x%08x.....
 8009aec:	3a313172 25783020 0a783830 00000000     r11: 0x%08x.....
 8009afc:	3a323172 25783020 0a783830 00000000     r12: 0x%08x.....
 8009b0c:	3a726c20 25783020 0a783830 00000000      lr: 0x%08x.....
 8009b1c:	3a637020 25783020 0a783830 00000000      pc: 0x%08x.....
 8009b2c:	64726168 75616620 6f20746c 6874206e     hard fault on th
 8009b3c:	64616572 7325203a 0a0d0a0d 00000000     read: %s........
 8009b4c:	64726168 75616620 6f20746c 6168206e     hard fault on ha
 8009b5c:	656c646e 0d0a0d72 0000000a 74756873     ndler.......shut
 8009b6c:	6e776f64 0a2e2e2e 00000000              down........

08009b78 <__FUNCTION__.4963>:
 8009b78:	735f7472 61697265 72775f6c 00657469     rt_serial_write.

08009b88 <__FUNCTION__.4907>:
 8009b88:	735f7472 61697265 6e695f6c 00007469     rt_serial_init..

08009b98 <__FUNCTION__.4918>:
 8009b98:	735f7472 61697265 706f5f6c 00006e65     rt_serial_open..

08009ba8 <__FUNCTION__.4986>:
 8009ba8:	735f7472 61697265 6f635f6c 6f72746e     rt_serial_contro
 8009bb8:	0000006c 3d3d2030 65642820 663e2d76     l...0 == (dev->f
 8009bc8:	2067616c 54522026 5645445f 5f454349     lag & RT_DEVICE_
 8009bd8:	47414c46 5254535f 294d4145 00000000     FLAG_STREAM)....
 8009be8:	69726573 3e2d6c61 65726170 662e746e     serial->parent.f
 8009bf8:	2067616c 54522026 5645445f 5f454349     lag & RT_DEVICE_
 8009c08:	47414c46 544e495f 0058525f              FLAG_INT_RX.

08009c14 <__FUNCTION__.4942>:
 8009c14:	735f7472 61697265 65725f6c 00006461     rt_serial_read..

08009c24 <__FUNCTION__.5002>:
 8009c24:	685f7472 65735f77 6c616972 6765725f     rt_hw_serial_reg
 8009c34:	65747369 00000072                       ister...

08009c3c <__FUNCTION__.5011>:
 8009c3c:	685f7472 65735f77 6c616972 7273695f     rt_hw_serial_isr
 8009c4c:	00000000                                ....

08009c50 <__FUNCTION__.4928>:
 8009c50:	735f7472 61697265 6c635f6c 0065736f     rt_serial_close.

08009c60 <__FUNCTION__.4903>:
 8009c60:	645f7472 5f617461 75657571 75705f65     rt_data_queue_pu
 8009c70:	00006873 75657571 3d212065 5f545220     sh..queue != RT_
 8009c80:	4c4c554e 00000000 61746164 7274705f     NULL....data_ptr
 8009c90:	203d2120 4e5f5452 004c4c55 657a6973      != RT_NULL.size
 8009ca0:	203d2120 4e5f5452 004c4c55               != RT_NULL.

08009cac <__FUNCTION__.4888>:
 8009cac:	645f7472 5f617461 75657571 6e695f65     rt_data_queue_in
 8009cbc:	00007469                                it..
