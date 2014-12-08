
rtthread-stm32.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <_stext>:
 8000000:	20000704 	.word	0x20000704
 8000004:	08003085 	.word	0x08003085
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
 8000040:	080030d1 	.word	0x080030d1
 8000044:	080030d1 	.word	0x080030d1
 8000048:	080030d1 	.word	0x080030d1
 800004c:	080030d1 	.word	0x080030d1
 8000050:	080030d1 	.word	0x080030d1
 8000054:	080030d1 	.word	0x080030d1
 8000058:	080030d1 	.word	0x080030d1
 800005c:	080030d1 	.word	0x080030d1
 8000060:	080030d1 	.word	0x080030d1
 8000064:	080030d1 	.word	0x080030d1
 8000068:	08003d05 	.word	0x08003d05
 800006c:	080030d1 	.word	0x080030d1
 8000070:	080030d1 	.word	0x080030d1
 8000074:	080030d1 	.word	0x080030d1
 8000078:	080030d1 	.word	0x080030d1
 800007c:	080030d1 	.word	0x080030d1
 8000080:	080030d1 	.word	0x080030d1
 8000084:	080030d1 	.word	0x080030d1
 8000088:	080030d1 	.word	0x080030d1
 800008c:	080030d1 	.word	0x080030d1
 8000090:	080049a5 	.word	0x080049a5
 8000094:	080030d1 	.word	0x080030d1
 8000098:	080030d1 	.word	0x080030d1
 800009c:	080030d1 	.word	0x080030d1
 80000a0:	080030d1 	.word	0x080030d1
 80000a4:	080030d1 	.word	0x080030d1
 80000a8:	080030d1 	.word	0x080030d1
 80000ac:	080030d1 	.word	0x080030d1
 80000b0:	080030d1 	.word	0x080030d1
 80000b4:	08003b99 	.word	0x08003b99
 80000b8:	080030d1 	.word	0x080030d1
 80000bc:	080030d1 	.word	0x080030d1
 80000c0:	080030d1 	.word	0x080030d1
 80000c4:	080030d1 	.word	0x080030d1
 80000c8:	080030d1 	.word	0x080030d1
 80000cc:	080030d1 	.word	0x080030d1
 80000d0:	080030d1 	.word	0x080030d1
 80000d4:	08000621 	.word	0x08000621
 80000d8:	08000671 	.word	0x08000671
 80000dc:	080006c1 	.word	0x080006c1
 80000e0:	08003ccd 	.word	0x08003ccd
 80000e4:	080030d1 	.word	0x080030d1
 80000e8:	080049a9 	.word	0x080049a9
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
 80001d6:	f007 fed7 	bl	8007f88 <rt_hw_hard_fault_exception>
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
 800022e:	f007 fb6f 	bl	8007910 <rt_thread_init>
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
 800024e:	f007 fb5f 	bl	8007910 <rt_thread_init>
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
 800026e:	f007 fb4f 	bl	8007910 <rt_thread_init>
 8000272:	b1a0      	cbz	r0, 800029e <rt_application_init+0x8e>
 8000274:	2208      	movs	r2, #8
 8000276:	2314      	movs	r3, #20
 8000278:	e88d 000c 	stmia.w	sp, {r2, r3}
 800027c:	4818      	ldr	r0, [pc, #96]	; (80002e0 <rt_application_init+0xd0>)
 800027e:	4919      	ldr	r1, [pc, #100]	; (80002e4 <rt_application_init+0xd4>)
 8000280:	2200      	movs	r2, #0
 8000282:	f44f 6300 	mov.w	r3, #2048	; 0x800
 8000286:	f007 fb8d 	bl	80079a4 <rt_thread_create>
 800028a:	b108      	cbz	r0, 8000290 <rt_application_init+0x80>
 800028c:	f007 fc80 	bl	8007b90 <rt_thread_startup>
 8000290:	2000      	movs	r0, #0
 8000292:	b005      	add	sp, #20
 8000294:	bd00      	pop	{pc}
 8000296:	4807      	ldr	r0, [pc, #28]	; (80002b4 <rt_application_init+0xa4>)
 8000298:	f007 fc7a 	bl	8007b90 <rt_thread_startup>
 800029c:	e7cb      	b.n	8000236 <rt_application_init+0x26>
 800029e:	480d      	ldr	r0, [pc, #52]	; (80002d4 <rt_application_init+0xc4>)
 80002a0:	f007 fc76 	bl	8007b90 <rt_thread_startup>
 80002a4:	e7e6      	b.n	8000274 <rt_application_init+0x64>
 80002a6:	4807      	ldr	r0, [pc, #28]	; (80002c4 <rt_application_init+0xb4>)
 80002a8:	f007 fc72 	bl	8007b90 <rt_thread_startup>
 80002ac:	e7d3      	b.n	8000256 <rt_application_init+0x46>
 80002ae:	bf00      	nop
 80002b0:	200017ac 	.word	0x200017ac
 80002b4:	20001734 	.word	0x20001734
 80002b8:	08008a5c 	.word	0x08008a5c
 80002bc:	08003ead 	.word	0x08003ead
 80002c0:	20001534 	.word	0x20001534
 80002c4:	20001098 	.word	0x20001098
 80002c8:	08008a64 	.word	0x08008a64
 80002cc:	08003b61 	.word	0x08003b61
 80002d0:	20000d00 	.word	0x20000d00
 80002d4:	20000c88 	.word	0x20000c88
 80002d8:	08008a6c 	.word	0x08008a6c
 80002dc:	08003809 	.word	0x08003809
 80002e0:	08008a74 	.word	0x08008a74
 80002e4:	0800020d 	.word	0x0800020d

080002e8 <assert_failed>:
 80002e8:	b508      	push	{r3, lr}
 80002ea:	4605      	mov	r5, r0
 80002ec:	4806      	ldr	r0, [pc, #24]	; (8000308 <assert_failed+0x20>)
 80002ee:	460c      	mov	r4, r1
 80002f0:	f006 fcd8 	bl	8006ca4 <rt_kprintf>
 80002f4:	4805      	ldr	r0, [pc, #20]	; (800030c <assert_failed+0x24>)
 80002f6:	4629      	mov	r1, r5
 80002f8:	f006 fcd4 	bl	8006ca4 <rt_kprintf>
 80002fc:	4804      	ldr	r0, [pc, #16]	; (8000310 <assert_failed+0x28>)
 80002fe:	4621      	mov	r1, r4
 8000300:	f006 fcd0 	bl	8006ca4 <rt_kprintf>
 8000304:	e7fe      	b.n	8000304 <assert_failed+0x1c>
 8000306:	bf00      	nop
 8000308:	08008a7c 	.word	0x08008a7c
 800030c:	08008aa4 	.word	0x08008aa4
 8000310:	08008ab8 	.word	0x08008ab8

08000314 <rtthread_startup>:
 8000314:	b508      	push	{r3, lr}
 8000316:	f000 f833 	bl	8000380 <rt_hw_board_init>
 800031a:	f006 fcef 	bl	8006cfc <rt_show_version>
 800031e:	f44f 41a0 	mov.w	r1, #20480	; 0x5000
 8000322:	f641 305c 	movw	r0, #7004	; 0x1b5c
 8000326:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800032a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800032e:	f006 fd9d 	bl	8006e6c <rt_system_heap_init>
 8000332:	f007 f8db 	bl	80074ec <rt_system_scheduler_init>
 8000336:	f007 fded 	bl	8007f14 <rt_system_timer_init>
 800033a:	f007 fdf3 	bl	8007f24 <rt_system_timer_thread_init>
 800033e:	f7ff ff67 	bl	8000210 <rt_application_init>
 8000342:	f005 fe4d 	bl	8005fe0 <rt_thread_idle_init>
 8000346:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800034a:	f007 b8fb 	b.w	8007544 <rt_system_scheduler_start>
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
 8000366:	f002 be69 	b.w	800303c <NVIC_SetVectorTable>
 800036a:	bf00      	nop

0800036c <SysTick_Handler>:
 800036c:	b508      	push	{r3, lr}
 800036e:	f005 ffad 	bl	80062cc <rt_interrupt_enter>
 8000372:	f005 fcb1 	bl	8005cd8 <rt_tick_increase>
 8000376:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800037a:	f005 bfb7 	b.w	80062ec <rt_interrupt_leave>
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
 80003c4:	f648 20cc 	movw	r0, #35532	; 0x8acc
 80003c8:	f6c0 0000 	movt	r0, #2048	; 0x800
 80003cc:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80003d0:	f006 bc52 	b.w	8006c78 <rt_console_set_device>

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
 80003f8:	f002 b82e 	b.w	8002458 <GPIO_SetBits>
 80003fc:	2801      	cmp	r0, #1
 80003fe:	d000      	beq.n	8000402 <rt_hw_led_on+0x16>
 8000400:	4770      	bx	lr
 8000402:	f44f 5080 	mov.w	r0, #4096	; 0x1000
 8000406:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800040a:	f44f 4180 	mov.w	r1, #16384	; 0x4000
 800040e:	f002 b823 	b.w	8002458 <GPIO_SetBits>
 8000412:	bf00      	nop

08000414 <rt_hw_led_off>:
 8000414:	b930      	cbnz	r0, 8000424 <rt_hw_led_off+0x10>
 8000416:	f44f 6040 	mov.w	r0, #3072	; 0xc00
 800041a:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800041e:	2180      	movs	r1, #128	; 0x80
 8000420:	f002 b856 	b.w	80024d0 <GPIO_ResetBits>
 8000424:	2801      	cmp	r0, #1
 8000426:	d000      	beq.n	800042a <rt_hw_led_off+0x16>
 8000428:	4770      	bx	lr
 800042a:	f44f 5080 	mov.w	r0, #4096	; 0x1000
 800042e:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8000432:	f44f 4180 	mov.w	r1, #16384	; 0x4000
 8000436:	f002 b84b 	b.w	80024d0 <GPIO_ResetBits>
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
 800046a:	f006 fc1b 	bl	8006ca4 <rt_kprintf>
 800046e:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8000472:	2b00      	cmp	r3, #0
 8000474:	d0fb      	beq.n	800046e <stm32_getc+0x32>
 8000476:	e7e5      	b.n	8000444 <stm32_getc+0x8>
 8000478:	08008b10 	.word	0x08008b10
 800047c:	08008b30 	.word	0x08008b30
 8000480:	08008af0 	.word	0x08008af0

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
 80004b2:	f006 fbf7 	bl	8006ca4 <rt_kprintf>
 80004b6:	f89d 3007 	ldrb.w	r3, [sp, #7]
 80004ba:	2b00      	cmp	r3, #0
 80004bc:	d0fb      	beq.n	80004b6 <stm32_putc+0x32>
 80004be:	e7e6      	b.n	800048e <stm32_putc+0xa>
 80004c0:	08008b10 	.word	0x08008b10
 80004c4:	08008b30 	.word	0x08008b30
 80004c8:	08008ae4 	.word	0x08008ae4

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
 800052e:	f006 fbb9 	bl	8006ca4 <rt_kprintf>
 8000532:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8000536:	2b00      	cmp	r3, #0
 8000538:	d0fb      	beq.n	8000532 <stm32_control+0x66>
 800053a:	e7cc      	b.n	80004d6 <stm32_control+0xa>
 800053c:	08008b10 	.word	0x08008b10
 8000540:	08008b30 	.word	0x08008b30
 8000544:	08008ad4 	.word	0x08008ad4

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
 8000586:	f001 ffdf 	bl	8002548 <USART_Init>
 800058a:	6828      	ldr	r0, [r5, #0]
 800058c:	2101      	movs	r1, #1
 800058e:	f002 f8cf 	bl	8002730 <USART_Cmd>
 8000592:	6828      	ldr	r0, [r5, #0]
 8000594:	f240 5125 	movw	r1, #1317	; 0x525
 8000598:	2201      	movs	r2, #1
 800059a:	f002 f907 	bl	80027ac <USART_ITConfig>
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
 80005c2:	f006 fb6f 	bl	8006ca4 <rt_kprintf>
 80005c6:	f89d 3006 	ldrb.w	r3, [sp, #6]
 80005ca:	2b00      	cmp	r3, #0
 80005cc:	d0fb      	beq.n	80005c6 <stm32_configure+0x7e>
 80005ce:	e7c1      	b.n	8000554 <stm32_configure+0xc>
 80005d0:	4806      	ldr	r0, [pc, #24]	; (80005ec <stm32_configure+0xa4>)
 80005d2:	4909      	ldr	r1, [pc, #36]	; (80005f8 <stm32_configure+0xb0>)
 80005d4:	4a07      	ldr	r2, [pc, #28]	; (80005f4 <stm32_configure+0xac>)
 80005d6:	2333      	movs	r3, #51	; 0x33
 80005d8:	f88d 4007 	strb.w	r4, [sp, #7]
 80005dc:	f006 fb62 	bl	8006ca4 <rt_kprintf>
 80005e0:	f89d 0007 	ldrb.w	r0, [sp, #7]
 80005e4:	2800      	cmp	r0, #0
 80005e6:	d0fb      	beq.n	80005e0 <stm32_configure+0x98>
 80005e8:	e7b6      	b.n	8000558 <stm32_configure+0x10>
 80005ea:	bf00      	nop
 80005ec:	08008b10 	.word	0x08008b10
 80005f0:	08008b30 	.word	0x08008b30
 80005f4:	08008b64 	.word	0x08008b64
 80005f8:	08008b44 	.word	0x08008b44

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
 8000616:	f002 fcb9 	bl	8002f8c <NVIC_Init>
 800061a:	b003      	add	sp, #12
 800061c:	bd00      	pop	{pc}
 800061e:	bf00      	nop

08000620 <USART1_IRQHandler>:
 8000620:	b510      	push	{r4, lr}
 8000622:	4c11      	ldr	r4, [pc, #68]	; (8000668 <USART1_IRQHandler+0x48>)
 8000624:	f005 fe52 	bl	80062cc <rt_interrupt_enter>
 8000628:	6820      	ldr	r0, [r4, #0]
 800062a:	f240 5125 	movw	r1, #1317	; 0x525
 800062e:	f002 f949 	bl	80028c4 <USART_GetITStatus>
 8000632:	b978      	cbnz	r0, 8000654 <USART1_IRQHandler+0x34>
 8000634:	6820      	ldr	r0, [r4, #0]
 8000636:	f240 6126 	movw	r1, #1574	; 0x626
 800063a:	f002 f943 	bl	80028c4 <USART_GetITStatus>
 800063e:	b128      	cbz	r0, 800064c <USART1_IRQHandler+0x2c>
 8000640:	4b09      	ldr	r3, [pc, #36]	; (8000668 <USART1_IRQHandler+0x48>)
 8000642:	f240 6126 	movw	r1, #1574	; 0x626
 8000646:	6818      	ldr	r0, [r3, #0]
 8000648:	f002 f9de 	bl	8002a08 <USART_ClearITPendingBit>
 800064c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000650:	f005 be4c 	b.w	80062ec <rt_interrupt_leave>
 8000654:	4805      	ldr	r0, [pc, #20]	; (800066c <USART1_IRQHandler+0x4c>)
 8000656:	f008 f833 	bl	80086c0 <rt_hw_serial_isr>
 800065a:	6820      	ldr	r0, [r4, #0]
 800065c:	f240 5125 	movw	r1, #1317	; 0x525
 8000660:	f002 f9d2 	bl	8002a08 <USART_ClearITPendingBit>
 8000664:	e7e6      	b.n	8000634 <USART1_IRQHandler+0x14>
 8000666:	bf00      	nop
 8000668:	20000010 	.word	0x20000010
 800066c:	200009d0 	.word	0x200009d0

08000670 <USART2_IRQHandler>:
 8000670:	b510      	push	{r4, lr}
 8000672:	4c11      	ldr	r4, [pc, #68]	; (80006b8 <USART2_IRQHandler+0x48>)
 8000674:	f005 fe2a 	bl	80062cc <rt_interrupt_enter>
 8000678:	6820      	ldr	r0, [r4, #0]
 800067a:	f240 5125 	movw	r1, #1317	; 0x525
 800067e:	f002 f921 	bl	80028c4 <USART_GetITStatus>
 8000682:	b978      	cbnz	r0, 80006a4 <USART2_IRQHandler+0x34>
 8000684:	6820      	ldr	r0, [r4, #0]
 8000686:	f240 6126 	movw	r1, #1574	; 0x626
 800068a:	f002 f91b 	bl	80028c4 <USART_GetITStatus>
 800068e:	b128      	cbz	r0, 800069c <USART2_IRQHandler+0x2c>
 8000690:	4b09      	ldr	r3, [pc, #36]	; (80006b8 <USART2_IRQHandler+0x48>)
 8000692:	f240 6126 	movw	r1, #1574	; 0x626
 8000696:	6818      	ldr	r0, [r3, #0]
 8000698:	f002 f9b6 	bl	8002a08 <USART_ClearITPendingBit>
 800069c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80006a0:	f005 be24 	b.w	80062ec <rt_interrupt_leave>
 80006a4:	4805      	ldr	r0, [pc, #20]	; (80006bc <USART2_IRQHandler+0x4c>)
 80006a6:	f008 f80b 	bl	80086c0 <rt_hw_serial_isr>
 80006aa:	6820      	ldr	r0, [r4, #0]
 80006ac:	f240 5125 	movw	r1, #1317	; 0x525
 80006b0:	f002 f9aa 	bl	8002a08 <USART_ClearITPendingBit>
 80006b4:	e7e6      	b.n	8000684 <USART2_IRQHandler+0x14>
 80006b6:	bf00      	nop
 80006b8:	20000000 	.word	0x20000000
 80006bc:	20000b50 	.word	0x20000b50

080006c0 <USART3_IRQHandler>:
 80006c0:	b510      	push	{r4, lr}
 80006c2:	4c11      	ldr	r4, [pc, #68]	; (8000708 <USART3_IRQHandler+0x48>)
 80006c4:	f005 fe02 	bl	80062cc <rt_interrupt_enter>
 80006c8:	6820      	ldr	r0, [r4, #0]
 80006ca:	f240 5125 	movw	r1, #1317	; 0x525
 80006ce:	f002 f8f9 	bl	80028c4 <USART_GetITStatus>
 80006d2:	b978      	cbnz	r0, 80006f4 <USART3_IRQHandler+0x34>
 80006d4:	6820      	ldr	r0, [r4, #0]
 80006d6:	f240 6126 	movw	r1, #1574	; 0x626
 80006da:	f002 f8f3 	bl	80028c4 <USART_GetITStatus>
 80006de:	b128      	cbz	r0, 80006ec <USART3_IRQHandler+0x2c>
 80006e0:	4b09      	ldr	r3, [pc, #36]	; (8000708 <USART3_IRQHandler+0x48>)
 80006e2:	f240 6126 	movw	r1, #1574	; 0x626
 80006e6:	6818      	ldr	r0, [r3, #0]
 80006e8:	f002 f98e 	bl	8002a08 <USART_ClearITPendingBit>
 80006ec:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80006f0:	f005 bdfc 	b.w	80062ec <rt_interrupt_leave>
 80006f4:	4805      	ldr	r0, [pc, #20]	; (800070c <USART3_IRQHandler+0x4c>)
 80006f6:	f007 ffe3 	bl	80086c0 <rt_hw_serial_isr>
 80006fa:	6820      	ldr	r0, [r4, #0]
 80006fc:	f240 5125 	movw	r1, #1317	; 0x525
 8000700:	f002 f982 	bl	8002a08 <USART_ClearITPendingBit>
 8000704:	e7e6      	b.n	80006d4 <USART3_IRQHandler+0x14>
 8000706:	bf00      	nop
 8000708:	20000008 	.word	0x20000008
 800070c:	20000a90 	.word	0x20000a90

08000710 <rt_hw_usart_init>:
 8000710:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000714:	f648 232c 	movw	r3, #35372	; 0x8a2c
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
 8000784:	f001 fc66 	bl	8002054 <GPIO_Init>
 8000788:	f44f 7300 	mov.w	r3, #512	; 0x200
 800078c:	4630      	mov	r0, r6
 800078e:	4629      	mov	r1, r5
 8000790:	f8ad 3004 	strh.w	r3, [sp, #4]
 8000794:	f88d 8007 	strb.w	r8, [sp, #7]
 8000798:	f44f 6940 	mov.w	r9, #3072	; 0xc00
 800079c:	f001 fc5a 	bl	8002054 <GPIO_Init>
 80007a0:	2208      	movs	r2, #8
 80007a2:	4630      	mov	r0, r6
 80007a4:	4629      	mov	r1, r5
 80007a6:	f8ad 2004 	strh.w	r2, [sp, #4]
 80007aa:	f2c4 0901 	movt	r9, #16385	; 0x4001
 80007ae:	f88d 7007 	strb.w	r7, [sp, #7]
 80007b2:	f001 fc4f 	bl	8002054 <GPIO_Init>
 80007b6:	4630      	mov	r0, r6
 80007b8:	4629      	mov	r1, r5
 80007ba:	f88d 8007 	strb.w	r8, [sp, #7]
 80007be:	f8ad 7004 	strh.w	r7, [sp, #4]
 80007c2:	f44f 6600 	mov.w	r6, #2048	; 0x800
 80007c6:	f001 fc45 	bl	8002054 <GPIO_Init>
 80007ca:	4648      	mov	r0, r9
 80007cc:	4629      	mov	r1, r5
 80007ce:	f88d 7007 	strb.w	r7, [sp, #7]
 80007d2:	f8ad 6004 	strh.w	r6, [sp, #4]
 80007d6:	f640 17d0 	movw	r7, #2512	; 0x9d0
 80007da:	f001 fc3b 	bl	8002054 <GPIO_Init>
 80007de:	4648      	mov	r0, r9
 80007e0:	4629      	mov	r1, r5
 80007e2:	f2c2 0700 	movt	r7, #8192	; 0x2000
 80007e6:	f88d 8007 	strb.w	r8, [sp, #7]
 80007ea:	f8ad a004 	strh.w	sl, [sp, #4]
 80007ee:	f001 fc31 	bl	8002054 <GPIO_Init>
 80007f2:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 80007f6:	f107 0344 	add.w	r3, r7, #68	; 0x44
 80007fa:	9002      	str	r0, [sp, #8]
 80007fc:	f240 0510 	movw	r5, #16
 8000800:	e894 0003 	ldmia.w	r4, {r0, r1}
 8000804:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8000808:	e883 0003 	stmia.w	r3, {r0, r1}
 800080c:	f648 28fc 	movw	r8, #35580	; 0x8afc
 8000810:	f640 310c 	movw	r1, #2828	; 0xb0c
 8000814:	f6c0 0800 	movt	r8, #2048	; 0x800
 8000818:	f995 0004 	ldrsb.w	r0, [r5, #4]
 800081c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8000820:	f8c7 8040 	str.w	r8, [r7, #64]	; 0x40
 8000824:	64f9      	str	r1, [r7, #76]	; 0x4c
 8000826:	f640 3650 	movw	r6, #2896	; 0xb50
 800082a:	f7ff fee7 	bl	80005fc <NVIC_Configuration.isra.0>
 800082e:	f648 21cc 	movw	r1, #35532	; 0x8acc
 8000832:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8000836:	462b      	mov	r3, r5
 8000838:	f240 1243 	movw	r2, #323	; 0x143
 800083c:	f6c0 0100 	movt	r1, #2048	; 0x800
 8000840:	4638      	mov	r0, r7
 8000842:	f240 0700 	movw	r7, #0
 8000846:	f007 fefb 	bl	8008640 <rt_hw_serial_register>
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
 8000874:	f648 3154 	movw	r1, #35668	; 0x8b54
 8000878:	f2c2 0500 	movt	r5, #8192	; 0x2000
 800087c:	f240 1203 	movw	r2, #259	; 0x103
 8000880:	463b      	mov	r3, r7
 8000882:	f6c0 0100 	movt	r1, #2048	; 0x800
 8000886:	4630      	mov	r0, r6
 8000888:	f007 feda 	bl	8008640 <rt_hw_serial_register>
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
 80008b6:	f648 315c 	movw	r1, #35676	; 0x8b5c
 80008ba:	4628      	mov	r0, r5
 80008bc:	f6c0 0100 	movt	r1, #2048	; 0x800
 80008c0:	f240 1203 	movw	r2, #259	; 0x103
 80008c4:	4633      	mov	r3, r6
 80008c6:	f007 febb 	bl	8008640 <rt_hw_serial_register>
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
 8000a0c:	08008b74 	.word	0x08008b74

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
 8000a48:	08008b74 	.word	0x08008b74

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
 8000b48:	08008b74 	.word	0x08008b74

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
 8000ba0:	08008b74 	.word	0x08008b74

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
 8000bfc:	08008b74 	.word	0x08008b74

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
 8000c54:	08008b74 	.word	0x08008b74

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
 8000cb0:	08008b74 	.word	0x08008b74

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
 8000cd4:	08008bb0 	.word	0x08008bb0

08000cd8 <ADC_DeInit>:
 8000cd8:	b508      	push	{r3, lr}
 8000cda:	f44f 5310 	mov.w	r3, #9216	; 0x2400
 8000cde:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8000ce2:	4298      	cmp	r0, r3
 8000ce4:	d01d      	beq.n	8000d22 <ADC_DeInit+0x4a>
 8000ce6:	f44f 5120 	mov.w	r1, #10240	; 0x2800
 8000cea:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8000cee:	4288      	cmp	r0, r1
 8000cf0:	d023      	beq.n	8000d3a <ADC_DeInit+0x62>
 8000cf2:	f44f 5270 	mov.w	r2, #15360	; 0x3c00
 8000cf6:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8000cfa:	4290      	cmp	r0, r2
 8000cfc:	d005      	beq.n	8000d0a <ADC_DeInit+0x32>
 8000cfe:	4815      	ldr	r0, [pc, #84]	; (8000d54 <ADC_DeInit+0x7c>)
 8000d00:	21b6      	movs	r1, #182	; 0xb6
 8000d02:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000d06:	f7ff baef 	b.w	80002e8 <assert_failed>
 8000d0a:	2101      	movs	r1, #1
 8000d0c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000d10:	f7ff ff76 	bl	8000c00 <RCC_APB2PeriphResetCmd>
 8000d14:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000d18:	2100      	movs	r1, #0
 8000d1a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000d1e:	f7ff bf6f 	b.w	8000c00 <RCC_APB2PeriphResetCmd>
 8000d22:	2101      	movs	r1, #1
 8000d24:	f44f 7000 	mov.w	r0, #512	; 0x200
 8000d28:	f7ff ff6a 	bl	8000c00 <RCC_APB2PeriphResetCmd>
 8000d2c:	f44f 7000 	mov.w	r0, #512	; 0x200
 8000d30:	2100      	movs	r1, #0
 8000d32:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000d36:	f7ff bf63 	b.w	8000c00 <RCC_APB2PeriphResetCmd>
 8000d3a:	2101      	movs	r1, #1
 8000d3c:	f44f 6080 	mov.w	r0, #1024	; 0x400
 8000d40:	f7ff ff5e 	bl	8000c00 <RCC_APB2PeriphResetCmd>
 8000d44:	f44f 6080 	mov.w	r0, #1024	; 0x400
 8000d48:	2100      	movs	r1, #0
 8000d4a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000d4e:	f7ff bf57 	b.w	8000c00 <RCC_APB2PeriphResetCmd>
 8000d52:	bf00      	nop
 8000d54:	08008bec 	.word	0x08008bec

08000d58 <ADC_Init>:
 8000d58:	f44f 5310 	mov.w	r3, #9216	; 0x2400
 8000d5c:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8000d60:	4298      	cmp	r0, r3
 8000d62:	b570      	push	{r4, r5, r6, lr}
 8000d64:	4605      	mov	r5, r0
 8000d66:	460c      	mov	r4, r1
 8000d68:	d00f      	beq.n	8000d8a <ADC_Init+0x32>
 8000d6a:	f44f 5020 	mov.w	r0, #10240	; 0x2800
 8000d6e:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8000d72:	4285      	cmp	r5, r0
 8000d74:	d009      	beq.n	8000d8a <ADC_Init+0x32>
 8000d76:	f44f 5170 	mov.w	r1, #15360	; 0x3c00
 8000d7a:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8000d7e:	428d      	cmp	r5, r1
 8000d80:	d003      	beq.n	8000d8a <ADC_Init+0x32>
 8000d82:	4842      	ldr	r0, [pc, #264]	; (8000e8c <ADC_Init+0x134>)
 8000d84:	21df      	movs	r1, #223	; 0xdf
 8000d86:	f7ff faaf 	bl	80002e8 <assert_failed>
 8000d8a:	6822      	ldr	r2, [r4, #0]
 8000d8c:	b1f2      	cbz	r2, 8000dcc <ADC_Init+0x74>
 8000d8e:	f5b2 3f80 	cmp.w	r2, #65536	; 0x10000
 8000d92:	d01b      	beq.n	8000dcc <ADC_Init+0x74>
 8000d94:	f5b2 3f00 	cmp.w	r2, #131072	; 0x20000
 8000d98:	d018      	beq.n	8000dcc <ADC_Init+0x74>
 8000d9a:	f5b2 3f40 	cmp.w	r2, #196608	; 0x30000
 8000d9e:	d015      	beq.n	8000dcc <ADC_Init+0x74>
 8000da0:	f5b2 2f80 	cmp.w	r2, #262144	; 0x40000
 8000da4:	d012      	beq.n	8000dcc <ADC_Init+0x74>
 8000da6:	f5b2 2fa0 	cmp.w	r2, #327680	; 0x50000
 8000daa:	d00f      	beq.n	8000dcc <ADC_Init+0x74>
 8000dac:	f5b2 2fc0 	cmp.w	r2, #393216	; 0x60000
 8000db0:	d00c      	beq.n	8000dcc <ADC_Init+0x74>
 8000db2:	f5b2 2fe0 	cmp.w	r2, #458752	; 0x70000
 8000db6:	d009      	beq.n	8000dcc <ADC_Init+0x74>
 8000db8:	f5b2 2f00 	cmp.w	r2, #524288	; 0x80000
 8000dbc:	d006      	beq.n	8000dcc <ADC_Init+0x74>
 8000dbe:	f5b2 2f10 	cmp.w	r2, #589824	; 0x90000
 8000dc2:	d003      	beq.n	8000dcc <ADC_Init+0x74>
 8000dc4:	4831      	ldr	r0, [pc, #196]	; (8000e8c <ADC_Init+0x134>)
 8000dc6:	21e0      	movs	r1, #224	; 0xe0
 8000dc8:	f7ff fa8e 	bl	80002e8 <assert_failed>
 8000dcc:	7926      	ldrb	r6, [r4, #4]
 8000dce:	2e01      	cmp	r6, #1
 8000dd0:	d903      	bls.n	8000dda <ADC_Init+0x82>
 8000dd2:	482e      	ldr	r0, [pc, #184]	; (8000e8c <ADC_Init+0x134>)
 8000dd4:	21e1      	movs	r1, #225	; 0xe1
 8000dd6:	f7ff fa87 	bl	80002e8 <assert_failed>
 8000dda:	7963      	ldrb	r3, [r4, #5]
 8000ddc:	2b01      	cmp	r3, #1
 8000dde:	d903      	bls.n	8000de8 <ADC_Init+0x90>
 8000de0:	482a      	ldr	r0, [pc, #168]	; (8000e8c <ADC_Init+0x134>)
 8000de2:	21e2      	movs	r1, #226	; 0xe2
 8000de4:	f7ff fa80 	bl	80002e8 <assert_failed>
 8000de8:	68a0      	ldr	r0, [r4, #8]
 8000dea:	b1c0      	cbz	r0, 8000e1e <ADC_Init+0xc6>
 8000dec:	f5b0 3f00 	cmp.w	r0, #131072	; 0x20000
 8000df0:	d015      	beq.n	8000e1e <ADC_Init+0xc6>
 8000df2:	f5b0 2f80 	cmp.w	r0, #262144	; 0x40000
 8000df6:	d012      	beq.n	8000e1e <ADC_Init+0xc6>
 8000df8:	f5b0 2fc0 	cmp.w	r0, #393216	; 0x60000
 8000dfc:	d00f      	beq.n	8000e1e <ADC_Init+0xc6>
 8000dfe:	f5b0 2f00 	cmp.w	r0, #524288	; 0x80000
 8000e02:	d00c      	beq.n	8000e1e <ADC_Init+0xc6>
 8000e04:	f5b0 2f20 	cmp.w	r0, #655360	; 0xa0000
 8000e08:	d009      	beq.n	8000e1e <ADC_Init+0xc6>
 8000e0a:	f5b0 2f40 	cmp.w	r0, #786432	; 0xc0000
 8000e0e:	d006      	beq.n	8000e1e <ADC_Init+0xc6>
 8000e10:	f5b0 2f60 	cmp.w	r0, #917504	; 0xe0000
 8000e14:	d003      	beq.n	8000e1e <ADC_Init+0xc6>
 8000e16:	481d      	ldr	r0, [pc, #116]	; (8000e8c <ADC_Init+0x134>)
 8000e18:	21e3      	movs	r1, #227	; 0xe3
 8000e1a:	f7ff fa65 	bl	80002e8 <assert_failed>
 8000e1e:	68e1      	ldr	r1, [r4, #12]
 8000e20:	b131      	cbz	r1, 8000e30 <ADC_Init+0xd8>
 8000e22:	f5b1 6f00 	cmp.w	r1, #2048	; 0x800
 8000e26:	d003      	beq.n	8000e30 <ADC_Init+0xd8>
 8000e28:	4818      	ldr	r0, [pc, #96]	; (8000e8c <ADC_Init+0x134>)
 8000e2a:	21e4      	movs	r1, #228	; 0xe4
 8000e2c:	f7ff fa5c 	bl	80002e8 <assert_failed>
 8000e30:	7c22      	ldrb	r2, [r4, #16]
 8000e32:	1e56      	subs	r6, r2, #1
 8000e34:	2e0f      	cmp	r6, #15
 8000e36:	d903      	bls.n	8000e40 <ADC_Init+0xe8>
 8000e38:	4814      	ldr	r0, [pc, #80]	; (8000e8c <ADC_Init+0x134>)
 8000e3a:	21e5      	movs	r1, #229	; 0xe5
 8000e3c:	f7ff fa54 	bl	80002e8 <assert_failed>
 8000e40:	6868      	ldr	r0, [r5, #4]
 8000e42:	6823      	ldr	r3, [r4, #0]
 8000e44:	f420 2170 	bic.w	r1, r0, #983040	; 0xf0000
 8000e48:	7922      	ldrb	r2, [r4, #4]
 8000e4a:	f421 7680 	bic.w	r6, r1, #256	; 0x100
 8000e4e:	ea46 0003 	orr.w	r0, r6, r3
 8000e52:	ea40 2302 	orr.w	r3, r0, r2, lsl #8
 8000e56:	606b      	str	r3, [r5, #4]
 8000e58:	68ae      	ldr	r6, [r5, #8]
 8000e5a:	68e2      	ldr	r2, [r4, #12]
 8000e5c:	68a1      	ldr	r1, [r4, #8]
 8000e5e:	f24f 73fd 	movw	r3, #63485	; 0xf7fd
 8000e62:	f6cf 73f1 	movt	r3, #65521	; 0xfff1
 8000e66:	7960      	ldrb	r0, [r4, #5]
 8000e68:	4311      	orrs	r1, r2
 8000e6a:	4033      	ands	r3, r6
 8000e6c:	ea41 0203 	orr.w	r2, r1, r3
 8000e70:	ea42 0340 	orr.w	r3, r2, r0, lsl #1
 8000e74:	60ab      	str	r3, [r5, #8]
 8000e76:	7c20      	ldrb	r0, [r4, #16]
 8000e78:	6ae9      	ldr	r1, [r5, #44]	; 0x2c
 8000e7a:	1e43      	subs	r3, r0, #1
 8000e7c:	f421 0270 	bic.w	r2, r1, #15728640	; 0xf00000
 8000e80:	b2d8      	uxtb	r0, r3
 8000e82:	ea42 5100 	orr.w	r1, r2, r0, lsl #20
 8000e86:	62e9      	str	r1, [r5, #44]	; 0x2c
 8000e88:	bd70      	pop	{r4, r5, r6, pc}
 8000e8a:	bf00      	nop
 8000e8c:	08008bec 	.word	0x08008bec

08000e90 <ADC_Cmd>:
 8000e90:	b538      	push	{r3, r4, r5, lr}
 8000e92:	f44f 5310 	mov.w	r3, #9216	; 0x2400
 8000e96:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8000e9a:	4298      	cmp	r0, r3
 8000e9c:	4604      	mov	r4, r0
 8000e9e:	460d      	mov	r5, r1
 8000ea0:	d010      	beq.n	8000ec4 <ADC_Cmd+0x34>
 8000ea2:	f44f 5020 	mov.w	r0, #10240	; 0x2800
 8000ea6:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8000eaa:	4284      	cmp	r4, r0
 8000eac:	d00a      	beq.n	8000ec4 <ADC_Cmd+0x34>
 8000eae:	f44f 5170 	mov.w	r1, #15360	; 0x3c00
 8000eb2:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8000eb6:	428c      	cmp	r4, r1
 8000eb8:	d004      	beq.n	8000ec4 <ADC_Cmd+0x34>
 8000eba:	480c      	ldr	r0, [pc, #48]	; (8000eec <ADC_Cmd+0x5c>)
 8000ebc:	f44f 7197 	mov.w	r1, #302	; 0x12e
 8000ec0:	f7ff fa12 	bl	80002e8 <assert_failed>
 8000ec4:	2d01      	cmp	r5, #1
 8000ec6:	d909      	bls.n	8000edc <ADC_Cmd+0x4c>
 8000ec8:	4808      	ldr	r0, [pc, #32]	; (8000eec <ADC_Cmd+0x5c>)
 8000eca:	f240 112f 	movw	r1, #303	; 0x12f
 8000ece:	f7ff fa0b 	bl	80002e8 <assert_failed>
 8000ed2:	68a0      	ldr	r0, [r4, #8]
 8000ed4:	f040 0101 	orr.w	r1, r0, #1
 8000ed8:	60a1      	str	r1, [r4, #8]
 8000eda:	bd38      	pop	{r3, r4, r5, pc}
 8000edc:	2d00      	cmp	r5, #0
 8000ede:	d1f8      	bne.n	8000ed2 <ADC_Cmd+0x42>
 8000ee0:	68a2      	ldr	r2, [r4, #8]
 8000ee2:	f022 0301 	bic.w	r3, r2, #1
 8000ee6:	60a3      	str	r3, [r4, #8]
 8000ee8:	bd38      	pop	{r3, r4, r5, pc}
 8000eea:	bf00      	nop
 8000eec:	08008bec 	.word	0x08008bec

08000ef0 <ADC_DMACmd>:
 8000ef0:	b538      	push	{r3, r4, r5, lr}
 8000ef2:	f44f 5310 	mov.w	r3, #9216	; 0x2400
 8000ef6:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8000efa:	4298      	cmp	r0, r3
 8000efc:	4604      	mov	r4, r0
 8000efe:	460d      	mov	r5, r1
 8000f00:	d00a      	beq.n	8000f18 <ADC_DMACmd+0x28>
 8000f02:	f44f 5070 	mov.w	r0, #15360	; 0x3c00
 8000f06:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8000f0a:	4284      	cmp	r4, r0
 8000f0c:	d004      	beq.n	8000f18 <ADC_DMACmd+0x28>
 8000f0e:	480c      	ldr	r0, [pc, #48]	; (8000f40 <ADC_DMACmd+0x50>)
 8000f10:	f240 1147 	movw	r1, #327	; 0x147
 8000f14:	f7ff f9e8 	bl	80002e8 <assert_failed>
 8000f18:	2d01      	cmp	r5, #1
 8000f1a:	d909      	bls.n	8000f30 <ADC_DMACmd+0x40>
 8000f1c:	4808      	ldr	r0, [pc, #32]	; (8000f40 <ADC_DMACmd+0x50>)
 8000f1e:	f44f 71a4 	mov.w	r1, #328	; 0x148
 8000f22:	f7ff f9e1 	bl	80002e8 <assert_failed>
 8000f26:	68a3      	ldr	r3, [r4, #8]
 8000f28:	f443 7080 	orr.w	r0, r3, #256	; 0x100
 8000f2c:	60a0      	str	r0, [r4, #8]
 8000f2e:	bd38      	pop	{r3, r4, r5, pc}
 8000f30:	2d00      	cmp	r5, #0
 8000f32:	d1f8      	bne.n	8000f26 <ADC_DMACmd+0x36>
 8000f34:	68a1      	ldr	r1, [r4, #8]
 8000f36:	f421 7280 	bic.w	r2, r1, #256	; 0x100
 8000f3a:	60a2      	str	r2, [r4, #8]
 8000f3c:	bd38      	pop	{r3, r4, r5, pc}
 8000f3e:	bf00      	nop
 8000f40:	08008bec 	.word	0x08008bec

08000f44 <ADC_ResetCalibration>:
 8000f44:	f44f 5310 	mov.w	r3, #9216	; 0x2400
 8000f48:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8000f4c:	4298      	cmp	r0, r3
 8000f4e:	b510      	push	{r4, lr}
 8000f50:	4604      	mov	r4, r0
 8000f52:	d010      	beq.n	8000f76 <ADC_ResetCalibration+0x32>
 8000f54:	f44f 5020 	mov.w	r0, #10240	; 0x2800
 8000f58:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8000f5c:	4284      	cmp	r4, r0
 8000f5e:	d00a      	beq.n	8000f76 <ADC_ResetCalibration+0x32>
 8000f60:	f44f 5170 	mov.w	r1, #15360	; 0x3c00
 8000f64:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8000f68:	428c      	cmp	r4, r1
 8000f6a:	d004      	beq.n	8000f76 <ADC_ResetCalibration+0x32>
 8000f6c:	4804      	ldr	r0, [pc, #16]	; (8000f80 <ADC_ResetCalibration+0x3c>)
 8000f6e:	f44f 71bf 	mov.w	r1, #382	; 0x17e
 8000f72:	f7ff f9b9 	bl	80002e8 <assert_failed>
 8000f76:	68a2      	ldr	r2, [r4, #8]
 8000f78:	f042 0308 	orr.w	r3, r2, #8
 8000f7c:	60a3      	str	r3, [r4, #8]
 8000f7e:	bd10      	pop	{r4, pc}
 8000f80:	08008bec 	.word	0x08008bec

08000f84 <ADC_GetResetCalibrationStatus>:
 8000f84:	f44f 5310 	mov.w	r3, #9216	; 0x2400
 8000f88:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8000f8c:	4298      	cmp	r0, r3
 8000f8e:	b510      	push	{r4, lr}
 8000f90:	4604      	mov	r4, r0
 8000f92:	d010      	beq.n	8000fb6 <ADC_GetResetCalibrationStatus+0x32>
 8000f94:	f44f 5020 	mov.w	r0, #10240	; 0x2800
 8000f98:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8000f9c:	4284      	cmp	r4, r0
 8000f9e:	d00a      	beq.n	8000fb6 <ADC_GetResetCalibrationStatus+0x32>
 8000fa0:	f44f 5170 	mov.w	r1, #15360	; 0x3c00
 8000fa4:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8000fa8:	428c      	cmp	r4, r1
 8000faa:	d004      	beq.n	8000fb6 <ADC_GetResetCalibrationStatus+0x32>
 8000fac:	4804      	ldr	r0, [pc, #16]	; (8000fc0 <ADC_GetResetCalibrationStatus+0x3c>)
 8000fae:	f44f 71c6 	mov.w	r1, #396	; 0x18c
 8000fb2:	f7ff f999 	bl	80002e8 <assert_failed>
 8000fb6:	68a2      	ldr	r2, [r4, #8]
 8000fb8:	f3c2 00c0 	ubfx	r0, r2, #3, #1
 8000fbc:	bd10      	pop	{r4, pc}
 8000fbe:	bf00      	nop
 8000fc0:	08008bec 	.word	0x08008bec

08000fc4 <ADC_StartCalibration>:
 8000fc4:	f44f 5310 	mov.w	r3, #9216	; 0x2400
 8000fc8:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8000fcc:	4298      	cmp	r0, r3
 8000fce:	b510      	push	{r4, lr}
 8000fd0:	4604      	mov	r4, r0
 8000fd2:	d010      	beq.n	8000ff6 <ADC_StartCalibration+0x32>
 8000fd4:	f44f 5020 	mov.w	r0, #10240	; 0x2800
 8000fd8:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8000fdc:	4284      	cmp	r4, r0
 8000fde:	d00a      	beq.n	8000ff6 <ADC_StartCalibration+0x32>
 8000fe0:	f44f 5170 	mov.w	r1, #15360	; 0x3c00
 8000fe4:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8000fe8:	428c      	cmp	r4, r1
 8000fea:	d004      	beq.n	8000ff6 <ADC_StartCalibration+0x32>
 8000fec:	4804      	ldr	r0, [pc, #16]	; (8001000 <ADC_StartCalibration+0x3c>)
 8000fee:	f44f 71d2 	mov.w	r1, #420	; 0x1a4
 8000ff2:	f7ff f979 	bl	80002e8 <assert_failed>
 8000ff6:	68a2      	ldr	r2, [r4, #8]
 8000ff8:	f042 0304 	orr.w	r3, r2, #4
 8000ffc:	60a3      	str	r3, [r4, #8]
 8000ffe:	bd10      	pop	{r4, pc}
 8001000:	08008bec 	.word	0x08008bec

08001004 <ADC_GetCalibrationStatus>:
 8001004:	f44f 5310 	mov.w	r3, #9216	; 0x2400
 8001008:	f2c4 0301 	movt	r3, #16385	; 0x4001
 800100c:	4298      	cmp	r0, r3
 800100e:	b510      	push	{r4, lr}
 8001010:	4604      	mov	r4, r0
 8001012:	d010      	beq.n	8001036 <ADC_GetCalibrationStatus+0x32>
 8001014:	f44f 5020 	mov.w	r0, #10240	; 0x2800
 8001018:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800101c:	4284      	cmp	r4, r0
 800101e:	d00a      	beq.n	8001036 <ADC_GetCalibrationStatus+0x32>
 8001020:	f44f 5170 	mov.w	r1, #15360	; 0x3c00
 8001024:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001028:	428c      	cmp	r4, r1
 800102a:	d004      	beq.n	8001036 <ADC_GetCalibrationStatus+0x32>
 800102c:	4804      	ldr	r0, [pc, #16]	; (8001040 <ADC_GetCalibrationStatus+0x3c>)
 800102e:	f44f 71d9 	mov.w	r1, #434	; 0x1b2
 8001032:	f7ff f959 	bl	80002e8 <assert_failed>
 8001036:	68a2      	ldr	r2, [r4, #8]
 8001038:	f3c2 0080 	ubfx	r0, r2, #2, #1
 800103c:	bd10      	pop	{r4, pc}
 800103e:	bf00      	nop
 8001040:	08008bec 	.word	0x08008bec

08001044 <ADC_SoftwareStartConvCmd>:
 8001044:	b538      	push	{r3, r4, r5, lr}
 8001046:	f44f 5310 	mov.w	r3, #9216	; 0x2400
 800104a:	f2c4 0301 	movt	r3, #16385	; 0x4001
 800104e:	4298      	cmp	r0, r3
 8001050:	4604      	mov	r4, r0
 8001052:	460d      	mov	r5, r1
 8001054:	d010      	beq.n	8001078 <ADC_SoftwareStartConvCmd+0x34>
 8001056:	f44f 5020 	mov.w	r0, #10240	; 0x2800
 800105a:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800105e:	4284      	cmp	r4, r0
 8001060:	d00a      	beq.n	8001078 <ADC_SoftwareStartConvCmd+0x34>
 8001062:	f44f 5170 	mov.w	r1, #15360	; 0x3c00
 8001066:	f2c4 0101 	movt	r1, #16385	; 0x4001
 800106a:	428c      	cmp	r4, r1
 800106c:	d004      	beq.n	8001078 <ADC_SoftwareStartConvCmd+0x34>
 800106e:	480c      	ldr	r0, [pc, #48]	; (80010a0 <ADC_SoftwareStartConvCmd+0x5c>)
 8001070:	f44f 71e6 	mov.w	r1, #460	; 0x1cc
 8001074:	f7ff f938 	bl	80002e8 <assert_failed>
 8001078:	2d01      	cmp	r5, #1
 800107a:	d909      	bls.n	8001090 <ADC_SoftwareStartConvCmd+0x4c>
 800107c:	4808      	ldr	r0, [pc, #32]	; (80010a0 <ADC_SoftwareStartConvCmd+0x5c>)
 800107e:	f240 11cd 	movw	r1, #461	; 0x1cd
 8001082:	f7ff f931 	bl	80002e8 <assert_failed>
 8001086:	68a0      	ldr	r0, [r4, #8]
 8001088:	f440 01a0 	orr.w	r1, r0, #5242880	; 0x500000
 800108c:	60a1      	str	r1, [r4, #8]
 800108e:	bd38      	pop	{r3, r4, r5, pc}
 8001090:	2d00      	cmp	r5, #0
 8001092:	d1f8      	bne.n	8001086 <ADC_SoftwareStartConvCmd+0x42>
 8001094:	68a2      	ldr	r2, [r4, #8]
 8001096:	f422 03a0 	bic.w	r3, r2, #5242880	; 0x500000
 800109a:	60a3      	str	r3, [r4, #8]
 800109c:	bd38      	pop	{r3, r4, r5, pc}
 800109e:	bf00      	nop
 80010a0:	08008bec 	.word	0x08008bec

080010a4 <ADC_RegularChannelConfig>:
 80010a4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80010a8:	f44f 5710 	mov.w	r7, #9216	; 0x2400
 80010ac:	f2c4 0701 	movt	r7, #16385	; 0x4001
 80010b0:	42b8      	cmp	r0, r7
 80010b2:	4604      	mov	r4, r0
 80010b4:	460d      	mov	r5, r1
 80010b6:	4616      	mov	r6, r2
 80010b8:	4698      	mov	r8, r3
 80010ba:	d010      	beq.n	80010de <ADC_RegularChannelConfig+0x3a>
 80010bc:	f44f 5320 	mov.w	r3, #10240	; 0x2800
 80010c0:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80010c4:	4298      	cmp	r0, r3
 80010c6:	d00a      	beq.n	80010de <ADC_RegularChannelConfig+0x3a>
 80010c8:	f44f 5070 	mov.w	r0, #15360	; 0x3c00
 80010cc:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80010d0:	4284      	cmp	r4, r0
 80010d2:	d004      	beq.n	80010de <ADC_RegularChannelConfig+0x3a>
 80010d4:	4835      	ldr	r0, [pc, #212]	; (80011ac <ADC_RegularChannelConfig+0x108>)
 80010d6:	f240 2152 	movw	r1, #594	; 0x252
 80010da:	f7ff f905 	bl	80002e8 <assert_failed>
 80010de:	2d11      	cmp	r5, #17
 80010e0:	d85d      	bhi.n	800119e <ADC_RegularChannelConfig+0xfa>
 80010e2:	1e77      	subs	r7, r6, #1
 80010e4:	b2f9      	uxtb	r1, r7
 80010e6:	290f      	cmp	r1, #15
 80010e8:	d853      	bhi.n	8001192 <ADC_RegularChannelConfig+0xee>
 80010ea:	f1b8 0f07 	cmp.w	r8, #7
 80010ee:	d84a      	bhi.n	8001186 <ADC_RegularChannelConfig+0xe2>
 80010f0:	2d09      	cmp	r5, #9
 80010f2:	eb05 0245 	add.w	r2, r5, r5, lsl #1
 80010f6:	d91e      	bls.n	8001136 <ADC_RegularChannelConfig+0x92>
 80010f8:	3a1e      	subs	r2, #30
 80010fa:	2307      	movs	r3, #7
 80010fc:	fa03 f302 	lsl.w	r3, r3, r2
 8001100:	fa08 f802 	lsl.w	r8, r8, r2
 8001104:	68e0      	ldr	r0, [r4, #12]
 8001106:	2e06      	cmp	r6, #6
 8001108:	ea20 0103 	bic.w	r1, r0, r3
 800110c:	ea41 0208 	orr.w	r2, r1, r8
 8001110:	60e2      	str	r2, [r4, #12]
 8001112:	d91d      	bls.n	8001150 <ADC_RegularChannelConfig+0xac>
 8001114:	2e0c      	cmp	r6, #12
 8001116:	eb06 0686 	add.w	r6, r6, r6, lsl #2
 800111a:	d927      	bls.n	800116c <ADC_RegularChannelConfig+0xc8>
 800111c:	3e41      	subs	r6, #65	; 0x41
 800111e:	201f      	movs	r0, #31
 8001120:	fa00 f006 	lsl.w	r0, r0, r6
 8001124:	fa05 f506 	lsl.w	r5, r5, r6
 8001128:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800112a:	ea23 0600 	bic.w	r6, r3, r0
 800112e:	432e      	orrs	r6, r5
 8001130:	62e6      	str	r6, [r4, #44]	; 0x2c
 8001132:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001136:	2307      	movs	r3, #7
 8001138:	fa03 f302 	lsl.w	r3, r3, r2
 800113c:	fa08 f802 	lsl.w	r8, r8, r2
 8001140:	6920      	ldr	r0, [r4, #16]
 8001142:	2e06      	cmp	r6, #6
 8001144:	ea20 0103 	bic.w	r1, r0, r3
 8001148:	ea41 0208 	orr.w	r2, r1, r8
 800114c:	6122      	str	r2, [r4, #16]
 800114e:	d8e1      	bhi.n	8001114 <ADC_RegularChannelConfig+0x70>
 8001150:	eb07 0787 	add.w	r7, r7, r7, lsl #2
 8001154:	221f      	movs	r2, #31
 8001156:	fa02 f207 	lsl.w	r2, r2, r7
 800115a:	fa05 f507 	lsl.w	r5, r5, r7
 800115e:	6b60      	ldr	r0, [r4, #52]	; 0x34
 8001160:	ea20 0702 	bic.w	r7, r0, r2
 8001164:	432f      	orrs	r7, r5
 8001166:	6367      	str	r7, [r4, #52]	; 0x34
 8001168:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800116c:	3e23      	subs	r6, #35	; 0x23
 800116e:	211f      	movs	r1, #31
 8001170:	fa01 f106 	lsl.w	r1, r1, r6
 8001174:	fa05 f606 	lsl.w	r6, r5, r6
 8001178:	6b25      	ldr	r5, [r4, #48]	; 0x30
 800117a:	ea25 0501 	bic.w	r5, r5, r1
 800117e:	4335      	orrs	r5, r6
 8001180:	6325      	str	r5, [r4, #48]	; 0x30
 8001182:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001186:	4809      	ldr	r0, [pc, #36]	; (80011ac <ADC_RegularChannelConfig+0x108>)
 8001188:	f240 2155 	movw	r1, #597	; 0x255
 800118c:	f7ff f8ac 	bl	80002e8 <assert_failed>
 8001190:	e7ae      	b.n	80010f0 <ADC_RegularChannelConfig+0x4c>
 8001192:	4806      	ldr	r0, [pc, #24]	; (80011ac <ADC_RegularChannelConfig+0x108>)
 8001194:	f44f 7115 	mov.w	r1, #596	; 0x254
 8001198:	f7ff f8a6 	bl	80002e8 <assert_failed>
 800119c:	e7a5      	b.n	80010ea <ADC_RegularChannelConfig+0x46>
 800119e:	4803      	ldr	r0, [pc, #12]	; (80011ac <ADC_RegularChannelConfig+0x108>)
 80011a0:	f240 2153 	movw	r1, #595	; 0x253
 80011a4:	f7ff f8a0 	bl	80002e8 <assert_failed>
 80011a8:	e79b      	b.n	80010e2 <ADC_RegularChannelConfig+0x3e>
 80011aa:	bf00      	nop
 80011ac:	08008bec 	.word	0x08008bec

080011b0 <TIM_DeInit>:
 80011b0:	b508      	push	{r3, lr}
 80011b2:	f44f 5330 	mov.w	r3, #11264	; 0x2c00
 80011b6:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80011ba:	4298      	cmp	r0, r3
 80011bc:	d07a      	beq.n	80012b4 <TIM_DeInit+0x104>
 80011be:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80011c2:	f000 8083 	beq.w	80012cc <TIM_DeInit+0x11c>
 80011c6:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80011ca:	f2c4 0100 	movt	r1, #16384	; 0x4000
 80011ce:	4288      	cmp	r0, r1
 80011d0:	f000 8086 	beq.w	80012e0 <TIM_DeInit+0x130>
 80011d4:	f44f 6200 	mov.w	r2, #2048	; 0x800
 80011d8:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80011dc:	4290      	cmp	r0, r2
 80011de:	f000 8089 	beq.w	80012f4 <TIM_DeInit+0x144>
 80011e2:	f44f 6340 	mov.w	r3, #3072	; 0xc00
 80011e6:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80011ea:	4298      	cmp	r0, r3
 80011ec:	d058      	beq.n	80012a0 <TIM_DeInit+0xf0>
 80011ee:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 80011f2:	f2c4 0100 	movt	r1, #16384	; 0x4000
 80011f6:	4288      	cmp	r0, r1
 80011f8:	f000 8086 	beq.w	8001308 <TIM_DeInit+0x158>
 80011fc:	f44f 52a0 	mov.w	r2, #5120	; 0x1400
 8001200:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001204:	4290      	cmp	r0, r2
 8001206:	f000 8089 	beq.w	800131c <TIM_DeInit+0x16c>
 800120a:	f44f 5350 	mov.w	r3, #13312	; 0x3400
 800120e:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001212:	4298      	cmp	r0, r3
 8001214:	f000 8098 	beq.w	8001348 <TIM_DeInit+0x198>
 8001218:	f44f 4198 	mov.w	r1, #19456	; 0x4c00
 800121c:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001220:	4288      	cmp	r0, r1
 8001222:	f000 809d 	beq.w	8001360 <TIM_DeInit+0x1b0>
 8001226:	f44f 42a0 	mov.w	r2, #20480	; 0x5000
 800122a:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800122e:	4290      	cmp	r0, r2
 8001230:	d07e      	beq.n	8001330 <TIM_DeInit+0x180>
 8001232:	f44f 43a8 	mov.w	r3, #21504	; 0x5400
 8001236:	f2c4 0301 	movt	r3, #16385	; 0x4001
 800123a:	4298      	cmp	r0, r3
 800123c:	f000 809c 	beq.w	8001378 <TIM_DeInit+0x1c8>
 8001240:	f44f 51c0 	mov.w	r1, #6144	; 0x1800
 8001244:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001248:	4288      	cmp	r0, r1
 800124a:	f000 80a1 	beq.w	8001390 <TIM_DeInit+0x1e0>
 800124e:	f44f 52e0 	mov.w	r2, #7168	; 0x1c00
 8001252:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001256:	4290      	cmp	r0, r2
 8001258:	f000 80b0 	beq.w	80013bc <TIM_DeInit+0x20c>
 800125c:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8001260:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001264:	4298      	cmp	r0, r3
 8001266:	f000 80b3 	beq.w	80013d0 <TIM_DeInit+0x220>
 800126a:	f44f 4180 	mov.w	r1, #16384	; 0x4000
 800126e:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001272:	4288      	cmp	r0, r1
 8001274:	f000 80ba 	beq.w	80013ec <TIM_DeInit+0x23c>
 8001278:	f44f 4288 	mov.w	r2, #17408	; 0x4400
 800127c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001280:	4290      	cmp	r0, r2
 8001282:	f000 80bf 	beq.w	8001404 <TIM_DeInit+0x254>
 8001286:	f44f 4390 	mov.w	r3, #18432	; 0x4800
 800128a:	f2c4 0301 	movt	r3, #16385	; 0x4001
 800128e:	4298      	cmp	r0, r3
 8001290:	f000 8088 	beq.w	80013a4 <TIM_DeInit+0x1f4>
 8001294:	4854      	ldr	r0, [pc, #336]	; (80013e8 <TIM_DeInit+0x238>)
 8001296:	217d      	movs	r1, #125	; 0x7d
 8001298:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800129c:	f7ff b824 	b.w	80002e8 <assert_failed>
 80012a0:	2008      	movs	r0, #8
 80012a2:	2101      	movs	r1, #1
 80012a4:	f7ff fcd8 	bl	8000c58 <RCC_APB1PeriphResetCmd>
 80012a8:	2008      	movs	r0, #8
 80012aa:	2100      	movs	r1, #0
 80012ac:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80012b0:	f7ff bcd2 	b.w	8000c58 <RCC_APB1PeriphResetCmd>
 80012b4:	2101      	movs	r1, #1
 80012b6:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80012ba:	f7ff fca1 	bl	8000c00 <RCC_APB2PeriphResetCmd>
 80012be:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80012c2:	2100      	movs	r1, #0
 80012c4:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80012c8:	f7ff bc9a 	b.w	8000c00 <RCC_APB2PeriphResetCmd>
 80012cc:	2001      	movs	r0, #1
 80012ce:	4601      	mov	r1, r0
 80012d0:	f7ff fcc2 	bl	8000c58 <RCC_APB1PeriphResetCmd>
 80012d4:	2001      	movs	r0, #1
 80012d6:	2100      	movs	r1, #0
 80012d8:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80012dc:	f7ff bcbc 	b.w	8000c58 <RCC_APB1PeriphResetCmd>
 80012e0:	2002      	movs	r0, #2
 80012e2:	2101      	movs	r1, #1
 80012e4:	f7ff fcb8 	bl	8000c58 <RCC_APB1PeriphResetCmd>
 80012e8:	2002      	movs	r0, #2
 80012ea:	2100      	movs	r1, #0
 80012ec:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80012f0:	f7ff bcb2 	b.w	8000c58 <RCC_APB1PeriphResetCmd>
 80012f4:	2004      	movs	r0, #4
 80012f6:	2101      	movs	r1, #1
 80012f8:	f7ff fcae 	bl	8000c58 <RCC_APB1PeriphResetCmd>
 80012fc:	2004      	movs	r0, #4
 80012fe:	2100      	movs	r1, #0
 8001300:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001304:	f7ff bca8 	b.w	8000c58 <RCC_APB1PeriphResetCmd>
 8001308:	2010      	movs	r0, #16
 800130a:	2101      	movs	r1, #1
 800130c:	f7ff fca4 	bl	8000c58 <RCC_APB1PeriphResetCmd>
 8001310:	2010      	movs	r0, #16
 8001312:	2100      	movs	r1, #0
 8001314:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001318:	f7ff bc9e 	b.w	8000c58 <RCC_APB1PeriphResetCmd>
 800131c:	2020      	movs	r0, #32
 800131e:	2101      	movs	r1, #1
 8001320:	f7ff fc9a 	bl	8000c58 <RCC_APB1PeriphResetCmd>
 8001324:	2020      	movs	r0, #32
 8001326:	2100      	movs	r1, #0
 8001328:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800132c:	f7ff bc94 	b.w	8000c58 <RCC_APB1PeriphResetCmd>
 8001330:	2101      	movs	r1, #1
 8001332:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
 8001336:	f7ff fc63 	bl	8000c00 <RCC_APB2PeriphResetCmd>
 800133a:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
 800133e:	2100      	movs	r1, #0
 8001340:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001344:	f7ff bc5c 	b.w	8000c00 <RCC_APB2PeriphResetCmd>
 8001348:	2101      	movs	r1, #1
 800134a:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 800134e:	f7ff fc57 	bl	8000c00 <RCC_APB2PeriphResetCmd>
 8001352:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8001356:	2100      	movs	r1, #0
 8001358:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800135c:	f7ff bc50 	b.w	8000c00 <RCC_APB2PeriphResetCmd>
 8001360:	2101      	movs	r1, #1
 8001362:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8001366:	f7ff fc4b 	bl	8000c00 <RCC_APB2PeriphResetCmd>
 800136a:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 800136e:	2100      	movs	r1, #0
 8001370:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001374:	f7ff bc44 	b.w	8000c00 <RCC_APB2PeriphResetCmd>
 8001378:	2101      	movs	r1, #1
 800137a:	f44f 1000 	mov.w	r0, #2097152	; 0x200000
 800137e:	f7ff fc3f 	bl	8000c00 <RCC_APB2PeriphResetCmd>
 8001382:	f44f 1000 	mov.w	r0, #2097152	; 0x200000
 8001386:	2100      	movs	r1, #0
 8001388:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800138c:	f7ff bc38 	b.w	8000c00 <RCC_APB2PeriphResetCmd>
 8001390:	2040      	movs	r0, #64	; 0x40
 8001392:	2101      	movs	r1, #1
 8001394:	f7ff fc60 	bl	8000c58 <RCC_APB1PeriphResetCmd>
 8001398:	2040      	movs	r0, #64	; 0x40
 800139a:	2100      	movs	r1, #0
 800139c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80013a0:	f7ff bc5a 	b.w	8000c58 <RCC_APB1PeriphResetCmd>
 80013a4:	2101      	movs	r1, #1
 80013a6:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80013aa:	f7ff fc29 	bl	8000c00 <RCC_APB2PeriphResetCmd>
 80013ae:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80013b2:	2100      	movs	r1, #0
 80013b4:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80013b8:	f7ff bc22 	b.w	8000c00 <RCC_APB2PeriphResetCmd>
 80013bc:	2080      	movs	r0, #128	; 0x80
 80013be:	2101      	movs	r1, #1
 80013c0:	f7ff fc4a 	bl	8000c58 <RCC_APB1PeriphResetCmd>
 80013c4:	2080      	movs	r0, #128	; 0x80
 80013c6:	2100      	movs	r1, #0
 80013c8:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80013cc:	f7ff bc44 	b.w	8000c58 <RCC_APB1PeriphResetCmd>
 80013d0:	2101      	movs	r1, #1
 80013d2:	f44f 7080 	mov.w	r0, #256	; 0x100
 80013d6:	f7ff fc3f 	bl	8000c58 <RCC_APB1PeriphResetCmd>
 80013da:	f44f 7080 	mov.w	r0, #256	; 0x100
 80013de:	2100      	movs	r1, #0
 80013e0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80013e4:	f7ff bc38 	b.w	8000c58 <RCC_APB1PeriphResetCmd>
 80013e8:	08008c28 	.word	0x08008c28
 80013ec:	2101      	movs	r1, #1
 80013ee:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 80013f2:	f7ff fc05 	bl	8000c00 <RCC_APB2PeriphResetCmd>
 80013f6:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 80013fa:	2100      	movs	r1, #0
 80013fc:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001400:	f7ff bbfe 	b.w	8000c00 <RCC_APB2PeriphResetCmd>
 8001404:	2101      	movs	r1, #1
 8001406:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 800140a:	f7ff fbf9 	bl	8000c00 <RCC_APB2PeriphResetCmd>
 800140e:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8001412:	2100      	movs	r1, #0
 8001414:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001418:	f7ff bbf2 	b.w	8000c00 <RCC_APB2PeriphResetCmd>

0800141c <TIM_TimeBaseInit>:
 800141c:	f44f 5330 	mov.w	r3, #11264	; 0x2c00
 8001420:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001424:	4298      	cmp	r0, r3
 8001426:	b570      	push	{r4, r5, r6, lr}
 8001428:	4604      	mov	r4, r0
 800142a:	460d      	mov	r5, r1
 800142c:	d060      	beq.n	80014f0 <TIM_TimeBaseInit+0xd4>
 800142e:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001432:	d05d      	beq.n	80014f0 <TIM_TimeBaseInit+0xd4>
 8001434:	f44f 6080 	mov.w	r0, #1024	; 0x400
 8001438:	f2c4 0000 	movt	r0, #16384	; 0x4000
 800143c:	4284      	cmp	r4, r0
 800143e:	d057      	beq.n	80014f0 <TIM_TimeBaseInit+0xd4>
 8001440:	f44f 6100 	mov.w	r1, #2048	; 0x800
 8001444:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001448:	428c      	cmp	r4, r1
 800144a:	d051      	beq.n	80014f0 <TIM_TimeBaseInit+0xd4>
 800144c:	f44f 6240 	mov.w	r2, #3072	; 0xc00
 8001450:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001454:	4294      	cmp	r4, r2
 8001456:	d04b      	beq.n	80014f0 <TIM_TimeBaseInit+0xd4>
 8001458:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 800145c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001460:	429c      	cmp	r4, r3
 8001462:	d045      	beq.n	80014f0 <TIM_TimeBaseInit+0xd4>
 8001464:	f44f 50a0 	mov.w	r0, #5120	; 0x1400
 8001468:	f2c4 0000 	movt	r0, #16384	; 0x4000
 800146c:	4284      	cmp	r4, r0
 800146e:	d03f      	beq.n	80014f0 <TIM_TimeBaseInit+0xd4>
 8001470:	f44f 5150 	mov.w	r1, #13312	; 0x3400
 8001474:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001478:	428c      	cmp	r4, r1
 800147a:	d039      	beq.n	80014f0 <TIM_TimeBaseInit+0xd4>
 800147c:	f44f 4298 	mov.w	r2, #19456	; 0x4c00
 8001480:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001484:	4294      	cmp	r4, r2
 8001486:	d033      	beq.n	80014f0 <TIM_TimeBaseInit+0xd4>
 8001488:	f44f 43a0 	mov.w	r3, #20480	; 0x5000
 800148c:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001490:	429c      	cmp	r4, r3
 8001492:	d02d      	beq.n	80014f0 <TIM_TimeBaseInit+0xd4>
 8001494:	f44f 40a8 	mov.w	r0, #21504	; 0x5400
 8001498:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800149c:	4284      	cmp	r4, r0
 800149e:	d027      	beq.n	80014f0 <TIM_TimeBaseInit+0xd4>
 80014a0:	f44f 51c0 	mov.w	r1, #6144	; 0x1800
 80014a4:	f2c4 0100 	movt	r1, #16384	; 0x4000
 80014a8:	428c      	cmp	r4, r1
 80014aa:	d021      	beq.n	80014f0 <TIM_TimeBaseInit+0xd4>
 80014ac:	f44f 52e0 	mov.w	r2, #7168	; 0x1c00
 80014b0:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80014b4:	4294      	cmp	r4, r2
 80014b6:	d01b      	beq.n	80014f0 <TIM_TimeBaseInit+0xd4>
 80014b8:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 80014bc:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80014c0:	429c      	cmp	r4, r3
 80014c2:	d015      	beq.n	80014f0 <TIM_TimeBaseInit+0xd4>
 80014c4:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 80014c8:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80014cc:	4284      	cmp	r4, r0
 80014ce:	d00f      	beq.n	80014f0 <TIM_TimeBaseInit+0xd4>
 80014d0:	f44f 4188 	mov.w	r1, #17408	; 0x4400
 80014d4:	f2c4 0101 	movt	r1, #16385	; 0x4001
 80014d8:	428c      	cmp	r4, r1
 80014da:	d009      	beq.n	80014f0 <TIM_TimeBaseInit+0xd4>
 80014dc:	f44f 4290 	mov.w	r2, #18432	; 0x4800
 80014e0:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80014e4:	4294      	cmp	r4, r2
 80014e6:	d003      	beq.n	80014f0 <TIM_TimeBaseInit+0xd4>
 80014e8:	4843      	ldr	r0, [pc, #268]	; (80015f8 <TIM_TimeBaseInit+0x1dc>)
 80014ea:	21e7      	movs	r1, #231	; 0xe7
 80014ec:	f7fe fefc 	bl	80002e8 <assert_failed>
 80014f0:	886b      	ldrh	r3, [r5, #2]
 80014f2:	b15b      	cbz	r3, 800150c <TIM_TimeBaseInit+0xf0>
 80014f4:	2b10      	cmp	r3, #16
 80014f6:	d009      	beq.n	800150c <TIM_TimeBaseInit+0xf0>
 80014f8:	2b20      	cmp	r3, #32
 80014fa:	d007      	beq.n	800150c <TIM_TimeBaseInit+0xf0>
 80014fc:	2b40      	cmp	r3, #64	; 0x40
 80014fe:	d005      	beq.n	800150c <TIM_TimeBaseInit+0xf0>
 8001500:	2b60      	cmp	r3, #96	; 0x60
 8001502:	d003      	beq.n	800150c <TIM_TimeBaseInit+0xf0>
 8001504:	483c      	ldr	r0, [pc, #240]	; (80015f8 <TIM_TimeBaseInit+0x1dc>)
 8001506:	21e8      	movs	r1, #232	; 0xe8
 8001508:	f7fe feee 	bl	80002e8 <assert_failed>
 800150c:	88e8      	ldrh	r0, [r5, #6]
 800150e:	b148      	cbz	r0, 8001524 <TIM_TimeBaseInit+0x108>
 8001510:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 8001514:	d006      	beq.n	8001524 <TIM_TimeBaseInit+0x108>
 8001516:	f5b0 7f00 	cmp.w	r0, #512	; 0x200
 800151a:	d003      	beq.n	8001524 <TIM_TimeBaseInit+0x108>
 800151c:	4836      	ldr	r0, [pc, #216]	; (80015f8 <TIM_TimeBaseInit+0x1dc>)
 800151e:	21e9      	movs	r1, #233	; 0xe9
 8001520:	f7fe fee2 	bl	80002e8 <assert_failed>
 8001524:	f44f 5230 	mov.w	r2, #11264	; 0x2c00
 8001528:	8821      	ldrh	r1, [r4, #0]
 800152a:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800152e:	4294      	cmp	r4, r2
 8001530:	b28b      	uxth	r3, r1
 8001532:	d01a      	beq.n	800156a <TIM_TimeBaseInit+0x14e>
 8001534:	f44f 5050 	mov.w	r0, #13312	; 0x3400
 8001538:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800153c:	4284      	cmp	r4, r0
 800153e:	d014      	beq.n	800156a <TIM_TimeBaseInit+0x14e>
 8001540:	f1b4 4f80 	cmp.w	r4, #1073741824	; 0x40000000
 8001544:	d011      	beq.n	800156a <TIM_TimeBaseInit+0x14e>
 8001546:	f44f 6180 	mov.w	r1, #1024	; 0x400
 800154a:	f2c4 0100 	movt	r1, #16384	; 0x4000
 800154e:	428c      	cmp	r4, r1
 8001550:	d00b      	beq.n	800156a <TIM_TimeBaseInit+0x14e>
 8001552:	f44f 6200 	mov.w	r2, #2048	; 0x800
 8001556:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800155a:	4294      	cmp	r4, r2
 800155c:	d005      	beq.n	800156a <TIM_TimeBaseInit+0x14e>
 800155e:	f44f 6040 	mov.w	r0, #3072	; 0xc00
 8001562:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8001566:	4284      	cmp	r4, r0
 8001568:	d105      	bne.n	8001576 <TIM_TimeBaseInit+0x15a>
 800156a:	f64f 728f 	movw	r2, #65423	; 0xff8f
 800156e:	8869      	ldrh	r1, [r5, #2]
 8001570:	401a      	ands	r2, r3
 8001572:	ea42 0301 	orr.w	r3, r2, r1
 8001576:	f44f 5080 	mov.w	r0, #4096	; 0x1000
 800157a:	f2c4 0000 	movt	r0, #16384	; 0x4000
 800157e:	4284      	cmp	r4, r0
 8001580:	d033      	beq.n	80015ea <TIM_TimeBaseInit+0x1ce>
 8001582:	f44f 52a0 	mov.w	r2, #5120	; 0x1400
 8001586:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800158a:	4294      	cmp	r4, r2
 800158c:	d02d      	beq.n	80015ea <TIM_TimeBaseInit+0x1ce>
 800158e:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001592:	88ee      	ldrh	r6, [r5, #6]
 8001594:	401a      	ands	r2, r3
 8001596:	f44f 5330 	mov.w	r3, #11264	; 0x2c00
 800159a:	88a8      	ldrh	r0, [r5, #4]
 800159c:	8829      	ldrh	r1, [r5, #0]
 800159e:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80015a2:	4332      	orrs	r2, r6
 80015a4:	429c      	cmp	r4, r3
 80015a6:	8022      	strh	r2, [r4, #0]
 80015a8:	85a0      	strh	r0, [r4, #44]	; 0x2c
 80015aa:	8521      	strh	r1, [r4, #40]	; 0x28
 80015ac:	d01a      	beq.n	80015e4 <TIM_TimeBaseInit+0x1c8>
 80015ae:	f44f 5250 	mov.w	r2, #13312	; 0x3400
 80015b2:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015b6:	4294      	cmp	r4, r2
 80015b8:	d014      	beq.n	80015e4 <TIM_TimeBaseInit+0x1c8>
 80015ba:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 80015be:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80015c2:	4284      	cmp	r4, r0
 80015c4:	d00e      	beq.n	80015e4 <TIM_TimeBaseInit+0x1c8>
 80015c6:	f44f 4188 	mov.w	r1, #17408	; 0x4400
 80015ca:	f2c4 0101 	movt	r1, #16385	; 0x4001
 80015ce:	428c      	cmp	r4, r1
 80015d0:	d008      	beq.n	80015e4 <TIM_TimeBaseInit+0x1c8>
 80015d2:	f44f 4390 	mov.w	r3, #18432	; 0x4800
 80015d6:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80015da:	429c      	cmp	r4, r3
 80015dc:	d002      	beq.n	80015e4 <TIM_TimeBaseInit+0x1c8>
 80015de:	2001      	movs	r0, #1
 80015e0:	82a0      	strh	r0, [r4, #20]
 80015e2:	bd70      	pop	{r4, r5, r6, pc}
 80015e4:	7a2a      	ldrb	r2, [r5, #8]
 80015e6:	8622      	strh	r2, [r4, #48]	; 0x30
 80015e8:	e7f9      	b.n	80015de <TIM_TimeBaseInit+0x1c2>
 80015ea:	8023      	strh	r3, [r4, #0]
 80015ec:	88a9      	ldrh	r1, [r5, #4]
 80015ee:	85a1      	strh	r1, [r4, #44]	; 0x2c
 80015f0:	882b      	ldrh	r3, [r5, #0]
 80015f2:	8523      	strh	r3, [r4, #40]	; 0x28
 80015f4:	e7f3      	b.n	80015de <TIM_TimeBaseInit+0x1c2>
 80015f6:	bf00      	nop
 80015f8:	08008c28 	.word	0x08008c28

080015fc <TIM_OC1Init>:
 80015fc:	f44f 5330 	mov.w	r3, #11264	; 0x2c00
 8001600:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001604:	4298      	cmp	r0, r3
 8001606:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800160a:	4604      	mov	r4, r0
 800160c:	460d      	mov	r5, r1
 800160e:	d055      	beq.n	80016bc <TIM_OC1Init+0xc0>
 8001610:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001614:	d052      	beq.n	80016bc <TIM_OC1Init+0xc0>
 8001616:	f44f 6080 	mov.w	r0, #1024	; 0x400
 800161a:	f2c4 0000 	movt	r0, #16384	; 0x4000
 800161e:	4284      	cmp	r4, r0
 8001620:	d04c      	beq.n	80016bc <TIM_OC1Init+0xc0>
 8001622:	f44f 6100 	mov.w	r1, #2048	; 0x800
 8001626:	f2c4 0100 	movt	r1, #16384	; 0x4000
 800162a:	428c      	cmp	r4, r1
 800162c:	d046      	beq.n	80016bc <TIM_OC1Init+0xc0>
 800162e:	f44f 6240 	mov.w	r2, #3072	; 0xc00
 8001632:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001636:	4294      	cmp	r4, r2
 8001638:	d040      	beq.n	80016bc <TIM_OC1Init+0xc0>
 800163a:	f44f 5650 	mov.w	r6, #13312	; 0x3400
 800163e:	f2c4 0601 	movt	r6, #16385	; 0x4001
 8001642:	42b4      	cmp	r4, r6
 8001644:	d03a      	beq.n	80016bc <TIM_OC1Init+0xc0>
 8001646:	f44f 4798 	mov.w	r7, #19456	; 0x4c00
 800164a:	f2c4 0701 	movt	r7, #16385	; 0x4001
 800164e:	42bc      	cmp	r4, r7
 8001650:	d034      	beq.n	80016bc <TIM_OC1Init+0xc0>
 8001652:	f44f 43a0 	mov.w	r3, #20480	; 0x5000
 8001656:	f2c4 0301 	movt	r3, #16385	; 0x4001
 800165a:	429c      	cmp	r4, r3
 800165c:	d02e      	beq.n	80016bc <TIM_OC1Init+0xc0>
 800165e:	f44f 40a8 	mov.w	r0, #21504	; 0x5400
 8001662:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001666:	4284      	cmp	r4, r0
 8001668:	d028      	beq.n	80016bc <TIM_OC1Init+0xc0>
 800166a:	f44f 51c0 	mov.w	r1, #6144	; 0x1800
 800166e:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001672:	428c      	cmp	r4, r1
 8001674:	d022      	beq.n	80016bc <TIM_OC1Init+0xc0>
 8001676:	f44f 52e0 	mov.w	r2, #7168	; 0x1c00
 800167a:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800167e:	4294      	cmp	r4, r2
 8001680:	d01c      	beq.n	80016bc <TIM_OC1Init+0xc0>
 8001682:	f44f 5600 	mov.w	r6, #8192	; 0x2000
 8001686:	f2c4 0600 	movt	r6, #16384	; 0x4000
 800168a:	42b4      	cmp	r4, r6
 800168c:	d016      	beq.n	80016bc <TIM_OC1Init+0xc0>
 800168e:	f44f 4780 	mov.w	r7, #16384	; 0x4000
 8001692:	f2c4 0701 	movt	r7, #16385	; 0x4001
 8001696:	42bc      	cmp	r4, r7
 8001698:	d010      	beq.n	80016bc <TIM_OC1Init+0xc0>
 800169a:	f44f 4388 	mov.w	r3, #17408	; 0x4400
 800169e:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80016a2:	429c      	cmp	r4, r3
 80016a4:	d00a      	beq.n	80016bc <TIM_OC1Init+0xc0>
 80016a6:	f44f 4090 	mov.w	r0, #18432	; 0x4800
 80016aa:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80016ae:	4284      	cmp	r4, r0
 80016b0:	d004      	beq.n	80016bc <TIM_OC1Init+0xc0>
 80016b2:	4855      	ldr	r0, [pc, #340]	; (8001808 <TIM_OC1Init+0x20c>)
 80016b4:	f44f 718e 	mov.w	r1, #284	; 0x11c
 80016b8:	f7fe fe16 	bl	80002e8 <assert_failed>
 80016bc:	8829      	ldrh	r1, [r5, #0]
 80016be:	b171      	cbz	r1, 80016de <TIM_OC1Init+0xe2>
 80016c0:	2910      	cmp	r1, #16
 80016c2:	d00c      	beq.n	80016de <TIM_OC1Init+0xe2>
 80016c4:	2920      	cmp	r1, #32
 80016c6:	d00a      	beq.n	80016de <TIM_OC1Init+0xe2>
 80016c8:	2930      	cmp	r1, #48	; 0x30
 80016ca:	d008      	beq.n	80016de <TIM_OC1Init+0xe2>
 80016cc:	2960      	cmp	r1, #96	; 0x60
 80016ce:	d006      	beq.n	80016de <TIM_OC1Init+0xe2>
 80016d0:	2970      	cmp	r1, #112	; 0x70
 80016d2:	d004      	beq.n	80016de <TIM_OC1Init+0xe2>
 80016d4:	484c      	ldr	r0, [pc, #304]	; (8001808 <TIM_OC1Init+0x20c>)
 80016d6:	f240 111d 	movw	r1, #285	; 0x11d
 80016da:	f7fe fe05 	bl	80002e8 <assert_failed>
 80016de:	886a      	ldrh	r2, [r5, #2]
 80016e0:	2a01      	cmp	r2, #1
 80016e2:	d904      	bls.n	80016ee <TIM_OC1Init+0xf2>
 80016e4:	4848      	ldr	r0, [pc, #288]	; (8001808 <TIM_OC1Init+0x20c>)
 80016e6:	f44f 718f 	mov.w	r1, #286	; 0x11e
 80016ea:	f7fe fdfd 	bl	80002e8 <assert_failed>
 80016ee:	892e      	ldrh	r6, [r5, #8]
 80016f0:	b146      	cbz	r6, 8001704 <TIM_OC1Init+0x108>
 80016f2:	2e02      	cmp	r6, #2
 80016f4:	d006      	beq.n	8001704 <TIM_OC1Init+0x108>
 80016f6:	4844      	ldr	r0, [pc, #272]	; (8001808 <TIM_OC1Init+0x20c>)
 80016f8:	f240 111f 	movw	r1, #287	; 0x11f
 80016fc:	f7fe fdf4 	bl	80002e8 <assert_failed>
 8001700:	8928      	ldrh	r0, [r5, #8]
 8001702:	e000      	b.n	8001706 <TIM_OC1Init+0x10a>
 8001704:	4630      	mov	r0, r6
 8001706:	8c27      	ldrh	r7, [r4, #32]
 8001708:	886e      	ldrh	r6, [r5, #2]
 800170a:	f027 0301 	bic.w	r3, r7, #1
 800170e:	0419      	lsls	r1, r3, #16
 8001710:	0c0a      	lsrs	r2, r1, #16
 8001712:	8422      	strh	r2, [r4, #32]
 8001714:	8c21      	ldrh	r1, [r4, #32]
 8001716:	88a7      	ldrh	r7, [r4, #4]
 8001718:	8b23      	ldrh	r3, [r4, #24]
 800171a:	f021 0202 	bic.w	r2, r1, #2
 800171e:	f023 0173 	bic.w	r1, r3, #115	; 0x73
 8001722:	040b      	lsls	r3, r1, #16
 8001724:	0412      	lsls	r2, r2, #16
 8001726:	f44f 5130 	mov.w	r1, #11264	; 0x2c00
 800172a:	0c12      	lsrs	r2, r2, #16
 800172c:	f8b5 8000 	ldrh.w	r8, [r5]
 8001730:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001734:	0c1b      	lsrs	r3, r3, #16
 8001736:	4316      	orrs	r6, r2
 8001738:	428c      	cmp	r4, r1
 800173a:	b2bf      	uxth	r7, r7
 800173c:	ea43 0808 	orr.w	r8, r3, r8
 8001740:	ea46 0600 	orr.w	r6, r6, r0
 8001744:	d01f      	beq.n	8001786 <TIM_OC1Init+0x18a>
 8001746:	f44f 5050 	mov.w	r0, #13312	; 0x3400
 800174a:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800174e:	4284      	cmp	r4, r0
 8001750:	d019      	beq.n	8001786 <TIM_OC1Init+0x18a>
 8001752:	f44f 4280 	mov.w	r2, #16384	; 0x4000
 8001756:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800175a:	4294      	cmp	r4, r2
 800175c:	d013      	beq.n	8001786 <TIM_OC1Init+0x18a>
 800175e:	f44f 4188 	mov.w	r1, #17408	; 0x4400
 8001762:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001766:	428c      	cmp	r4, r1
 8001768:	d00d      	beq.n	8001786 <TIM_OC1Init+0x18a>
 800176a:	f44f 4390 	mov.w	r3, #18432	; 0x4800
 800176e:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001772:	429c      	cmp	r4, r3
 8001774:	d007      	beq.n	8001786 <TIM_OC1Init+0x18a>
 8001776:	88eb      	ldrh	r3, [r5, #6]
 8001778:	80a7      	strh	r7, [r4, #4]
 800177a:	f8a4 8018 	strh.w	r8, [r4, #24]
 800177e:	86a3      	strh	r3, [r4, #52]	; 0x34
 8001780:	8426      	strh	r6, [r4, #32]
 8001782:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001786:	88a8      	ldrh	r0, [r5, #4]
 8001788:	b130      	cbz	r0, 8001798 <TIM_OC1Init+0x19c>
 800178a:	2804      	cmp	r0, #4
 800178c:	d004      	beq.n	8001798 <TIM_OC1Init+0x19c>
 800178e:	481e      	ldr	r0, [pc, #120]	; (8001808 <TIM_OC1Init+0x20c>)
 8001790:	f44f 719e 	mov.w	r1, #316	; 0x13c
 8001794:	f7fe fda8 	bl	80002e8 <assert_failed>
 8001798:	896a      	ldrh	r2, [r5, #10]
 800179a:	b132      	cbz	r2, 80017aa <TIM_OC1Init+0x1ae>
 800179c:	2a08      	cmp	r2, #8
 800179e:	d004      	beq.n	80017aa <TIM_OC1Init+0x1ae>
 80017a0:	4819      	ldr	r0, [pc, #100]	; (8001808 <TIM_OC1Init+0x20c>)
 80017a2:	f240 113d 	movw	r1, #317	; 0x13d
 80017a6:	f7fe fd9f 	bl	80002e8 <assert_failed>
 80017aa:	89e9      	ldrh	r1, [r5, #14]
 80017ac:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 80017b0:	d000      	beq.n	80017b4 <TIM_OC1Init+0x1b8>
 80017b2:	b9c1      	cbnz	r1, 80017e6 <TIM_OC1Init+0x1ea>
 80017b4:	89ab      	ldrh	r3, [r5, #12]
 80017b6:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 80017ba:	d000      	beq.n	80017be <TIM_OC1Init+0x1c2>
 80017bc:	b9eb      	cbnz	r3, 80017fa <TIM_OC1Init+0x1fe>
 80017be:	f64f 72f7 	movw	r2, #65527	; 0xfff7
 80017c2:	f8b5 c00a 	ldrh.w	ip, [r5, #10]
 80017c6:	4032      	ands	r2, r6
 80017c8:	f64f 41ff 	movw	r1, #64767	; 0xfcff
 80017cc:	89e8      	ldrh	r0, [r5, #14]
 80017ce:	4039      	ands	r1, r7
 80017d0:	88ae      	ldrh	r6, [r5, #4]
 80017d2:	ea42 070c 	orr.w	r7, r2, ip
 80017d6:	f64f 72fb 	movw	r2, #65531	; 0xfffb
 80017da:	403a      	ands	r2, r7
 80017dc:	ea41 0700 	orr.w	r7, r1, r0
 80017e0:	4316      	orrs	r6, r2
 80017e2:	431f      	orrs	r7, r3
 80017e4:	e7c7      	b.n	8001776 <TIM_OC1Init+0x17a>
 80017e6:	4808      	ldr	r0, [pc, #32]	; (8001808 <TIM_OC1Init+0x20c>)
 80017e8:	f44f 719f 	mov.w	r1, #318	; 0x13e
 80017ec:	f7fe fd7c 	bl	80002e8 <assert_failed>
 80017f0:	89ab      	ldrh	r3, [r5, #12]
 80017f2:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 80017f6:	d1e1      	bne.n	80017bc <TIM_OC1Init+0x1c0>
 80017f8:	e7e1      	b.n	80017be <TIM_OC1Init+0x1c2>
 80017fa:	4803      	ldr	r0, [pc, #12]	; (8001808 <TIM_OC1Init+0x20c>)
 80017fc:	f240 113f 	movw	r1, #319	; 0x13f
 8001800:	f7fe fd72 	bl	80002e8 <assert_failed>
 8001804:	89ab      	ldrh	r3, [r5, #12]
 8001806:	e7da      	b.n	80017be <TIM_OC1Init+0x1c2>
 8001808:	08008c28 	.word	0x08008c28

0800180c <TIM_Cmd>:
 800180c:	b538      	push	{r3, r4, r5, lr}
 800180e:	f44f 5330 	mov.w	r3, #11264	; 0x2c00
 8001812:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001816:	4298      	cmp	r0, r3
 8001818:	4604      	mov	r4, r0
 800181a:	460d      	mov	r5, r1
 800181c:	d061      	beq.n	80018e2 <TIM_Cmd+0xd6>
 800181e:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001822:	d05e      	beq.n	80018e2 <TIM_Cmd+0xd6>
 8001824:	f44f 6080 	mov.w	r0, #1024	; 0x400
 8001828:	f2c4 0000 	movt	r0, #16384	; 0x4000
 800182c:	4284      	cmp	r4, r0
 800182e:	d058      	beq.n	80018e2 <TIM_Cmd+0xd6>
 8001830:	f44f 6100 	mov.w	r1, #2048	; 0x800
 8001834:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001838:	428c      	cmp	r4, r1
 800183a:	d052      	beq.n	80018e2 <TIM_Cmd+0xd6>
 800183c:	f44f 6240 	mov.w	r2, #3072	; 0xc00
 8001840:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001844:	4294      	cmp	r4, r2
 8001846:	d04c      	beq.n	80018e2 <TIM_Cmd+0xd6>
 8001848:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 800184c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001850:	429c      	cmp	r4, r3
 8001852:	d046      	beq.n	80018e2 <TIM_Cmd+0xd6>
 8001854:	f44f 50a0 	mov.w	r0, #5120	; 0x1400
 8001858:	f2c4 0000 	movt	r0, #16384	; 0x4000
 800185c:	4284      	cmp	r4, r0
 800185e:	d040      	beq.n	80018e2 <TIM_Cmd+0xd6>
 8001860:	f44f 5150 	mov.w	r1, #13312	; 0x3400
 8001864:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001868:	428c      	cmp	r4, r1
 800186a:	d03a      	beq.n	80018e2 <TIM_Cmd+0xd6>
 800186c:	f44f 4298 	mov.w	r2, #19456	; 0x4c00
 8001870:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001874:	4294      	cmp	r4, r2
 8001876:	d034      	beq.n	80018e2 <TIM_Cmd+0xd6>
 8001878:	f44f 43a0 	mov.w	r3, #20480	; 0x5000
 800187c:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001880:	429c      	cmp	r4, r3
 8001882:	d02e      	beq.n	80018e2 <TIM_Cmd+0xd6>
 8001884:	f44f 40a8 	mov.w	r0, #21504	; 0x5400
 8001888:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800188c:	4284      	cmp	r4, r0
 800188e:	d028      	beq.n	80018e2 <TIM_Cmd+0xd6>
 8001890:	f44f 51c0 	mov.w	r1, #6144	; 0x1800
 8001894:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001898:	428c      	cmp	r4, r1
 800189a:	d022      	beq.n	80018e2 <TIM_Cmd+0xd6>
 800189c:	f44f 52e0 	mov.w	r2, #7168	; 0x1c00
 80018a0:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80018a4:	4294      	cmp	r4, r2
 80018a6:	d01c      	beq.n	80018e2 <TIM_Cmd+0xd6>
 80018a8:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 80018ac:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80018b0:	429c      	cmp	r4, r3
 80018b2:	d016      	beq.n	80018e2 <TIM_Cmd+0xd6>
 80018b4:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 80018b8:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80018bc:	4284      	cmp	r4, r0
 80018be:	d010      	beq.n	80018e2 <TIM_Cmd+0xd6>
 80018c0:	f44f 4188 	mov.w	r1, #17408	; 0x4400
 80018c4:	f2c4 0101 	movt	r1, #16385	; 0x4001
 80018c8:	428c      	cmp	r4, r1
 80018ca:	d00a      	beq.n	80018e2 <TIM_Cmd+0xd6>
 80018cc:	f44f 4290 	mov.w	r2, #18432	; 0x4800
 80018d0:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80018d4:	4294      	cmp	r4, r2
 80018d6:	d004      	beq.n	80018e2 <TIM_Cmd+0xd6>
 80018d8:	480d      	ldr	r0, [pc, #52]	; (8001910 <TIM_Cmd+0x104>)
 80018da:	f240 3129 	movw	r1, #809	; 0x329
 80018de:	f7fe fd03 	bl	80002e8 <assert_failed>
 80018e2:	2d01      	cmp	r5, #1
 80018e4:	d90a      	bls.n	80018fc <TIM_Cmd+0xf0>
 80018e6:	480a      	ldr	r0, [pc, #40]	; (8001910 <TIM_Cmd+0x104>)
 80018e8:	f240 312a 	movw	r1, #810	; 0x32a
 80018ec:	f7fe fcfc 	bl	80002e8 <assert_failed>
 80018f0:	8823      	ldrh	r3, [r4, #0]
 80018f2:	b298      	uxth	r0, r3
 80018f4:	f040 0101 	orr.w	r1, r0, #1
 80018f8:	8021      	strh	r1, [r4, #0]
 80018fa:	bd38      	pop	{r3, r4, r5, pc}
 80018fc:	2d00      	cmp	r5, #0
 80018fe:	d1f7      	bne.n	80018f0 <TIM_Cmd+0xe4>
 8001900:	8823      	ldrh	r3, [r4, #0]
 8001902:	f023 0001 	bic.w	r0, r3, #1
 8001906:	0401      	lsls	r1, r0, #16
 8001908:	0c0a      	lsrs	r2, r1, #16
 800190a:	8022      	strh	r2, [r4, #0]
 800190c:	bd38      	pop	{r3, r4, r5, pc}
 800190e:	bf00      	nop
 8001910:	08008c28 	.word	0x08008c28

08001914 <TIM_CtrlPWMOutputs>:
 8001914:	b538      	push	{r3, r4, r5, lr}
 8001916:	f44f 5330 	mov.w	r3, #11264	; 0x2c00
 800191a:	f2c4 0301 	movt	r3, #16385	; 0x4001
 800191e:	4298      	cmp	r0, r3
 8001920:	4604      	mov	r4, r0
 8001922:	460d      	mov	r5, r1
 8001924:	d01c      	beq.n	8001960 <TIM_CtrlPWMOutputs+0x4c>
 8001926:	f44f 5050 	mov.w	r0, #13312	; 0x3400
 800192a:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800192e:	4284      	cmp	r4, r0
 8001930:	d016      	beq.n	8001960 <TIM_CtrlPWMOutputs+0x4c>
 8001932:	f44f 4180 	mov.w	r1, #16384	; 0x4000
 8001936:	f2c4 0101 	movt	r1, #16385	; 0x4001
 800193a:	428c      	cmp	r4, r1
 800193c:	d010      	beq.n	8001960 <TIM_CtrlPWMOutputs+0x4c>
 800193e:	f44f 4288 	mov.w	r2, #17408	; 0x4400
 8001942:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001946:	4294      	cmp	r4, r2
 8001948:	d00a      	beq.n	8001960 <TIM_CtrlPWMOutputs+0x4c>
 800194a:	f44f 4390 	mov.w	r3, #18432	; 0x4800
 800194e:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001952:	429c      	cmp	r4, r3
 8001954:	d004      	beq.n	8001960 <TIM_CtrlPWMOutputs+0x4c>
 8001956:	480f      	ldr	r0, [pc, #60]	; (8001994 <TIM_CtrlPWMOutputs+0x80>)
 8001958:	f240 3142 	movw	r1, #834	; 0x342
 800195c:	f7fe fcc4 	bl	80002e8 <assert_failed>
 8001960:	2d01      	cmp	r5, #1
 8001962:	d90e      	bls.n	8001982 <TIM_CtrlPWMOutputs+0x6e>
 8001964:	480b      	ldr	r0, [pc, #44]	; (8001994 <TIM_CtrlPWMOutputs+0x80>)
 8001966:	f240 3143 	movw	r1, #835	; 0x343
 800196a:	f7fe fcbd 	bl	80002e8 <assert_failed>
 800196e:	f8b4 3044 	ldrh.w	r3, [r4, #68]	; 0x44
 8001972:	ea6f 4043 	mvn.w	r0, r3, lsl #17
 8001976:	ea6f 4150 	mvn.w	r1, r0, lsr #17
 800197a:	b28a      	uxth	r2, r1
 800197c:	f8a4 2044 	strh.w	r2, [r4, #68]	; 0x44
 8001980:	bd38      	pop	{r3, r4, r5, pc}
 8001982:	2d00      	cmp	r5, #0
 8001984:	d1f3      	bne.n	800196e <TIM_CtrlPWMOutputs+0x5a>
 8001986:	f8b4 0044 	ldrh.w	r0, [r4, #68]	; 0x44
 800198a:	0441      	lsls	r1, r0, #17
 800198c:	0c4a      	lsrs	r2, r1, #17
 800198e:	f8a4 2044 	strh.w	r2, [r4, #68]	; 0x44
 8001992:	bd38      	pop	{r3, r4, r5, pc}
 8001994:	08008c28 	.word	0x08008c28

08001998 <TIM_ARRPreloadConfig>:
 8001998:	b538      	push	{r3, r4, r5, lr}
 800199a:	f44f 5330 	mov.w	r3, #11264	; 0x2c00
 800199e:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80019a2:	4298      	cmp	r0, r3
 80019a4:	4604      	mov	r4, r0
 80019a6:	460d      	mov	r5, r1
 80019a8:	d061      	beq.n	8001a6e <TIM_ARRPreloadConfig+0xd6>
 80019aa:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80019ae:	d05e      	beq.n	8001a6e <TIM_ARRPreloadConfig+0xd6>
 80019b0:	f44f 6080 	mov.w	r0, #1024	; 0x400
 80019b4:	f2c4 0000 	movt	r0, #16384	; 0x4000
 80019b8:	4284      	cmp	r4, r0
 80019ba:	d058      	beq.n	8001a6e <TIM_ARRPreloadConfig+0xd6>
 80019bc:	f44f 6100 	mov.w	r1, #2048	; 0x800
 80019c0:	f2c4 0100 	movt	r1, #16384	; 0x4000
 80019c4:	428c      	cmp	r4, r1
 80019c6:	d052      	beq.n	8001a6e <TIM_ARRPreloadConfig+0xd6>
 80019c8:	f44f 6240 	mov.w	r2, #3072	; 0xc00
 80019cc:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80019d0:	4294      	cmp	r4, r2
 80019d2:	d04c      	beq.n	8001a6e <TIM_ARRPreloadConfig+0xd6>
 80019d4:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80019d8:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019dc:	429c      	cmp	r4, r3
 80019de:	d046      	beq.n	8001a6e <TIM_ARRPreloadConfig+0xd6>
 80019e0:	f44f 50a0 	mov.w	r0, #5120	; 0x1400
 80019e4:	f2c4 0000 	movt	r0, #16384	; 0x4000
 80019e8:	4284      	cmp	r4, r0
 80019ea:	d040      	beq.n	8001a6e <TIM_ARRPreloadConfig+0xd6>
 80019ec:	f44f 5150 	mov.w	r1, #13312	; 0x3400
 80019f0:	f2c4 0101 	movt	r1, #16385	; 0x4001
 80019f4:	428c      	cmp	r4, r1
 80019f6:	d03a      	beq.n	8001a6e <TIM_ARRPreloadConfig+0xd6>
 80019f8:	f44f 4298 	mov.w	r2, #19456	; 0x4c00
 80019fc:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001a00:	4294      	cmp	r4, r2
 8001a02:	d034      	beq.n	8001a6e <TIM_ARRPreloadConfig+0xd6>
 8001a04:	f44f 43a0 	mov.w	r3, #20480	; 0x5000
 8001a08:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001a0c:	429c      	cmp	r4, r3
 8001a0e:	d02e      	beq.n	8001a6e <TIM_ARRPreloadConfig+0xd6>
 8001a10:	f44f 40a8 	mov.w	r0, #21504	; 0x5400
 8001a14:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001a18:	4284      	cmp	r4, r0
 8001a1a:	d028      	beq.n	8001a6e <TIM_ARRPreloadConfig+0xd6>
 8001a1c:	f44f 51c0 	mov.w	r1, #6144	; 0x1800
 8001a20:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001a24:	428c      	cmp	r4, r1
 8001a26:	d022      	beq.n	8001a6e <TIM_ARRPreloadConfig+0xd6>
 8001a28:	f44f 52e0 	mov.w	r2, #7168	; 0x1c00
 8001a2c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001a30:	4294      	cmp	r4, r2
 8001a32:	d01c      	beq.n	8001a6e <TIM_ARRPreloadConfig+0xd6>
 8001a34:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8001a38:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a3c:	429c      	cmp	r4, r3
 8001a3e:	d016      	beq.n	8001a6e <TIM_ARRPreloadConfig+0xd6>
 8001a40:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8001a44:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001a48:	4284      	cmp	r4, r0
 8001a4a:	d010      	beq.n	8001a6e <TIM_ARRPreloadConfig+0xd6>
 8001a4c:	f44f 4188 	mov.w	r1, #17408	; 0x4400
 8001a50:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001a54:	428c      	cmp	r4, r1
 8001a56:	d00a      	beq.n	8001a6e <TIM_ARRPreloadConfig+0xd6>
 8001a58:	f44f 4290 	mov.w	r2, #18432	; 0x4800
 8001a5c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001a60:	4294      	cmp	r4, r2
 8001a62:	d004      	beq.n	8001a6e <TIM_ARRPreloadConfig+0xd6>
 8001a64:	480d      	ldr	r0, [pc, #52]	; (8001a9c <TIM_ARRPreloadConfig+0x104>)
 8001a66:	f240 5184 	movw	r1, #1412	; 0x584
 8001a6a:	f7fe fc3d 	bl	80002e8 <assert_failed>
 8001a6e:	2d01      	cmp	r5, #1
 8001a70:	d90a      	bls.n	8001a88 <TIM_ARRPreloadConfig+0xf0>
 8001a72:	480a      	ldr	r0, [pc, #40]	; (8001a9c <TIM_ARRPreloadConfig+0x104>)
 8001a74:	f240 5185 	movw	r1, #1413	; 0x585
 8001a78:	f7fe fc36 	bl	80002e8 <assert_failed>
 8001a7c:	8823      	ldrh	r3, [r4, #0]
 8001a7e:	b298      	uxth	r0, r3
 8001a80:	f040 0180 	orr.w	r1, r0, #128	; 0x80
 8001a84:	8021      	strh	r1, [r4, #0]
 8001a86:	bd38      	pop	{r3, r4, r5, pc}
 8001a88:	2d00      	cmp	r5, #0
 8001a8a:	d1f7      	bne.n	8001a7c <TIM_ARRPreloadConfig+0xe4>
 8001a8c:	8823      	ldrh	r3, [r4, #0]
 8001a8e:	f023 0080 	bic.w	r0, r3, #128	; 0x80
 8001a92:	0401      	lsls	r1, r0, #16
 8001a94:	0c0a      	lsrs	r2, r1, #16
 8001a96:	8022      	strh	r2, [r4, #0]
 8001a98:	bd38      	pop	{r3, r4, r5, pc}
 8001a9a:	bf00      	nop
 8001a9c:	08008c28 	.word	0x08008c28

08001aa0 <TIM_CCxCmd>:
 8001aa0:	f44f 5330 	mov.w	r3, #11264	; 0x2c00
 8001aa4:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001aa8:	4298      	cmp	r0, r3
 8001aaa:	b570      	push	{r4, r5, r6, lr}
 8001aac:	4604      	mov	r4, r0
 8001aae:	460d      	mov	r5, r1
 8001ab0:	4616      	mov	r6, r2
 8001ab2:	d055      	beq.n	8001b60 <TIM_CCxCmd+0xc0>
 8001ab4:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001ab8:	d052      	beq.n	8001b60 <TIM_CCxCmd+0xc0>
 8001aba:	f44f 6080 	mov.w	r0, #1024	; 0x400
 8001abe:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8001ac2:	4284      	cmp	r4, r0
 8001ac4:	d04c      	beq.n	8001b60 <TIM_CCxCmd+0xc0>
 8001ac6:	f44f 6100 	mov.w	r1, #2048	; 0x800
 8001aca:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001ace:	428c      	cmp	r4, r1
 8001ad0:	d046      	beq.n	8001b60 <TIM_CCxCmd+0xc0>
 8001ad2:	f44f 6240 	mov.w	r2, #3072	; 0xc00
 8001ad6:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001ada:	4294      	cmp	r4, r2
 8001adc:	d040      	beq.n	8001b60 <TIM_CCxCmd+0xc0>
 8001ade:	f44f 5350 	mov.w	r3, #13312	; 0x3400
 8001ae2:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001ae6:	429c      	cmp	r4, r3
 8001ae8:	d03a      	beq.n	8001b60 <TIM_CCxCmd+0xc0>
 8001aea:	f44f 4098 	mov.w	r0, #19456	; 0x4c00
 8001aee:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001af2:	4284      	cmp	r4, r0
 8001af4:	d034      	beq.n	8001b60 <TIM_CCxCmd+0xc0>
 8001af6:	f44f 41a0 	mov.w	r1, #20480	; 0x5000
 8001afa:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001afe:	428c      	cmp	r4, r1
 8001b00:	d02e      	beq.n	8001b60 <TIM_CCxCmd+0xc0>
 8001b02:	f44f 42a8 	mov.w	r2, #21504	; 0x5400
 8001b06:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001b0a:	4294      	cmp	r4, r2
 8001b0c:	d028      	beq.n	8001b60 <TIM_CCxCmd+0xc0>
 8001b0e:	f44f 53c0 	mov.w	r3, #6144	; 0x1800
 8001b12:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001b16:	429c      	cmp	r4, r3
 8001b18:	d022      	beq.n	8001b60 <TIM_CCxCmd+0xc0>
 8001b1a:	f44f 50e0 	mov.w	r0, #7168	; 0x1c00
 8001b1e:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8001b22:	4284      	cmp	r4, r0
 8001b24:	d01c      	beq.n	8001b60 <TIM_CCxCmd+0xc0>
 8001b26:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8001b2a:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001b2e:	428c      	cmp	r4, r1
 8001b30:	d016      	beq.n	8001b60 <TIM_CCxCmd+0xc0>
 8001b32:	f44f 4280 	mov.w	r2, #16384	; 0x4000
 8001b36:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001b3a:	4294      	cmp	r4, r2
 8001b3c:	d010      	beq.n	8001b60 <TIM_CCxCmd+0xc0>
 8001b3e:	f44f 4388 	mov.w	r3, #17408	; 0x4400
 8001b42:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001b46:	429c      	cmp	r4, r3
 8001b48:	d00a      	beq.n	8001b60 <TIM_CCxCmd+0xc0>
 8001b4a:	f44f 4090 	mov.w	r0, #18432	; 0x4800
 8001b4e:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001b52:	4284      	cmp	r4, r0
 8001b54:	d004      	beq.n	8001b60 <TIM_CCxCmd+0xc0>
 8001b56:	4813      	ldr	r0, [pc, #76]	; (8001ba4 <TIM_CCxCmd+0x104>)
 8001b58:	f240 71bb 	movw	r1, #1979	; 0x7bb
 8001b5c:	f7fe fbc4 	bl	80002e8 <assert_failed>
 8001b60:	b155      	cbz	r5, 8001b78 <TIM_CCxCmd+0xd8>
 8001b62:	2d04      	cmp	r5, #4
 8001b64:	d008      	beq.n	8001b78 <TIM_CCxCmd+0xd8>
 8001b66:	2d08      	cmp	r5, #8
 8001b68:	d006      	beq.n	8001b78 <TIM_CCxCmd+0xd8>
 8001b6a:	2d0c      	cmp	r5, #12
 8001b6c:	d004      	beq.n	8001b78 <TIM_CCxCmd+0xd8>
 8001b6e:	480d      	ldr	r0, [pc, #52]	; (8001ba4 <TIM_CCxCmd+0x104>)
 8001b70:	f240 71bc 	movw	r1, #1980	; 0x7bc
 8001b74:	f7fe fbb8 	bl	80002e8 <assert_failed>
 8001b78:	2e01      	cmp	r6, #1
 8001b7a:	d904      	bls.n	8001b86 <TIM_CCxCmd+0xe6>
 8001b7c:	4809      	ldr	r0, [pc, #36]	; (8001ba4 <TIM_CCxCmd+0x104>)
 8001b7e:	f240 71bd 	movw	r1, #1981	; 0x7bd
 8001b82:	f7fe fbb1 	bl	80002e8 <assert_failed>
 8001b86:	2101      	movs	r1, #1
 8001b88:	fa01 f105 	lsl.w	r1, r1, r5
 8001b8c:	fa06 f505 	lsl.w	r5, r6, r5
 8001b90:	8c22      	ldrh	r2, [r4, #32]
 8001b92:	b293      	uxth	r3, r2
 8001b94:	ea23 0301 	bic.w	r3, r3, r1
 8001b98:	8423      	strh	r3, [r4, #32]
 8001b9a:	8c20      	ldrh	r0, [r4, #32]
 8001b9c:	4305      	orrs	r5, r0
 8001b9e:	b2ad      	uxth	r5, r5
 8001ba0:	8425      	strh	r5, [r4, #32]
 8001ba2:	bd70      	pop	{r4, r5, r6, pc}
 8001ba4:	08008c28 	.word	0x08008c28

08001ba8 <TIM_SetCounter>:
 8001ba8:	b538      	push	{r3, r4, r5, lr}
 8001baa:	f44f 5330 	mov.w	r3, #11264	; 0x2c00
 8001bae:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001bb2:	4298      	cmp	r0, r3
 8001bb4:	4604      	mov	r4, r0
 8001bb6:	460d      	mov	r5, r1
 8001bb8:	d061      	beq.n	8001c7e <TIM_SetCounter+0xd6>
 8001bba:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001bbe:	d05e      	beq.n	8001c7e <TIM_SetCounter+0xd6>
 8001bc0:	f44f 6080 	mov.w	r0, #1024	; 0x400
 8001bc4:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8001bc8:	4284      	cmp	r4, r0
 8001bca:	d058      	beq.n	8001c7e <TIM_SetCounter+0xd6>
 8001bcc:	f44f 6100 	mov.w	r1, #2048	; 0x800
 8001bd0:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001bd4:	428c      	cmp	r4, r1
 8001bd6:	d052      	beq.n	8001c7e <TIM_SetCounter+0xd6>
 8001bd8:	f44f 6240 	mov.w	r2, #3072	; 0xc00
 8001bdc:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001be0:	4294      	cmp	r4, r2
 8001be2:	d04c      	beq.n	8001c7e <TIM_SetCounter+0xd6>
 8001be4:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8001be8:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001bec:	429c      	cmp	r4, r3
 8001bee:	d046      	beq.n	8001c7e <TIM_SetCounter+0xd6>
 8001bf0:	f44f 50a0 	mov.w	r0, #5120	; 0x1400
 8001bf4:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8001bf8:	4284      	cmp	r4, r0
 8001bfa:	d040      	beq.n	8001c7e <TIM_SetCounter+0xd6>
 8001bfc:	f44f 5150 	mov.w	r1, #13312	; 0x3400
 8001c00:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001c04:	428c      	cmp	r4, r1
 8001c06:	d03a      	beq.n	8001c7e <TIM_SetCounter+0xd6>
 8001c08:	f44f 4298 	mov.w	r2, #19456	; 0x4c00
 8001c0c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001c10:	4294      	cmp	r4, r2
 8001c12:	d034      	beq.n	8001c7e <TIM_SetCounter+0xd6>
 8001c14:	f44f 43a0 	mov.w	r3, #20480	; 0x5000
 8001c18:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001c1c:	429c      	cmp	r4, r3
 8001c1e:	d02e      	beq.n	8001c7e <TIM_SetCounter+0xd6>
 8001c20:	f44f 40a8 	mov.w	r0, #21504	; 0x5400
 8001c24:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001c28:	4284      	cmp	r4, r0
 8001c2a:	d028      	beq.n	8001c7e <TIM_SetCounter+0xd6>
 8001c2c:	f44f 51c0 	mov.w	r1, #6144	; 0x1800
 8001c30:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001c34:	428c      	cmp	r4, r1
 8001c36:	d022      	beq.n	8001c7e <TIM_SetCounter+0xd6>
 8001c38:	f44f 52e0 	mov.w	r2, #7168	; 0x1c00
 8001c3c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001c40:	4294      	cmp	r4, r2
 8001c42:	d01c      	beq.n	8001c7e <TIM_SetCounter+0xd6>
 8001c44:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8001c48:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001c4c:	429c      	cmp	r4, r3
 8001c4e:	d016      	beq.n	8001c7e <TIM_SetCounter+0xd6>
 8001c50:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8001c54:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001c58:	4284      	cmp	r4, r0
 8001c5a:	d010      	beq.n	8001c7e <TIM_SetCounter+0xd6>
 8001c5c:	f44f 4188 	mov.w	r1, #17408	; 0x4400
 8001c60:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001c64:	428c      	cmp	r4, r1
 8001c66:	d00a      	beq.n	8001c7e <TIM_SetCounter+0xd6>
 8001c68:	f44f 4290 	mov.w	r2, #18432	; 0x4800
 8001c6c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001c70:	4294      	cmp	r4, r2
 8001c72:	d004      	beq.n	8001c7e <TIM_SetCounter+0xd6>
 8001c74:	4803      	ldr	r0, [pc, #12]	; (8001c84 <TIM_SetCounter+0xdc>)
 8001c76:	f640 01db 	movw	r1, #2267	; 0x8db
 8001c7a:	f7fe fb35 	bl	80002e8 <assert_failed>
 8001c7e:	84a5      	strh	r5, [r4, #36]	; 0x24
 8001c80:	bd38      	pop	{r3, r4, r5, pc}
 8001c82:	bf00      	nop
 8001c84:	08008c28 	.word	0x08008c28

08001c88 <TIM_SetAutoreload>:
 8001c88:	b538      	push	{r3, r4, r5, lr}
 8001c8a:	f44f 5330 	mov.w	r3, #11264	; 0x2c00
 8001c8e:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001c92:	4298      	cmp	r0, r3
 8001c94:	4604      	mov	r4, r0
 8001c96:	460d      	mov	r5, r1
 8001c98:	d061      	beq.n	8001d5e <TIM_SetAutoreload+0xd6>
 8001c9a:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001c9e:	d05e      	beq.n	8001d5e <TIM_SetAutoreload+0xd6>
 8001ca0:	f44f 6080 	mov.w	r0, #1024	; 0x400
 8001ca4:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8001ca8:	4284      	cmp	r4, r0
 8001caa:	d058      	beq.n	8001d5e <TIM_SetAutoreload+0xd6>
 8001cac:	f44f 6100 	mov.w	r1, #2048	; 0x800
 8001cb0:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001cb4:	428c      	cmp	r4, r1
 8001cb6:	d052      	beq.n	8001d5e <TIM_SetAutoreload+0xd6>
 8001cb8:	f44f 6240 	mov.w	r2, #3072	; 0xc00
 8001cbc:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001cc0:	4294      	cmp	r4, r2
 8001cc2:	d04c      	beq.n	8001d5e <TIM_SetAutoreload+0xd6>
 8001cc4:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8001cc8:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001ccc:	429c      	cmp	r4, r3
 8001cce:	d046      	beq.n	8001d5e <TIM_SetAutoreload+0xd6>
 8001cd0:	f44f 50a0 	mov.w	r0, #5120	; 0x1400
 8001cd4:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8001cd8:	4284      	cmp	r4, r0
 8001cda:	d040      	beq.n	8001d5e <TIM_SetAutoreload+0xd6>
 8001cdc:	f44f 5150 	mov.w	r1, #13312	; 0x3400
 8001ce0:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001ce4:	428c      	cmp	r4, r1
 8001ce6:	d03a      	beq.n	8001d5e <TIM_SetAutoreload+0xd6>
 8001ce8:	f44f 4298 	mov.w	r2, #19456	; 0x4c00
 8001cec:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001cf0:	4294      	cmp	r4, r2
 8001cf2:	d034      	beq.n	8001d5e <TIM_SetAutoreload+0xd6>
 8001cf4:	f44f 43a0 	mov.w	r3, #20480	; 0x5000
 8001cf8:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001cfc:	429c      	cmp	r4, r3
 8001cfe:	d02e      	beq.n	8001d5e <TIM_SetAutoreload+0xd6>
 8001d00:	f44f 40a8 	mov.w	r0, #21504	; 0x5400
 8001d04:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001d08:	4284      	cmp	r4, r0
 8001d0a:	d028      	beq.n	8001d5e <TIM_SetAutoreload+0xd6>
 8001d0c:	f44f 51c0 	mov.w	r1, #6144	; 0x1800
 8001d10:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001d14:	428c      	cmp	r4, r1
 8001d16:	d022      	beq.n	8001d5e <TIM_SetAutoreload+0xd6>
 8001d18:	f44f 52e0 	mov.w	r2, #7168	; 0x1c00
 8001d1c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001d20:	4294      	cmp	r4, r2
 8001d22:	d01c      	beq.n	8001d5e <TIM_SetAutoreload+0xd6>
 8001d24:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8001d28:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001d2c:	429c      	cmp	r4, r3
 8001d2e:	d016      	beq.n	8001d5e <TIM_SetAutoreload+0xd6>
 8001d30:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8001d34:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001d38:	4284      	cmp	r4, r0
 8001d3a:	d010      	beq.n	8001d5e <TIM_SetAutoreload+0xd6>
 8001d3c:	f44f 4188 	mov.w	r1, #17408	; 0x4400
 8001d40:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001d44:	428c      	cmp	r4, r1
 8001d46:	d00a      	beq.n	8001d5e <TIM_SetAutoreload+0xd6>
 8001d48:	f44f 4290 	mov.w	r2, #18432	; 0x4800
 8001d4c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001d50:	4294      	cmp	r4, r2
 8001d52:	d004      	beq.n	8001d5e <TIM_SetAutoreload+0xd6>
 8001d54:	4803      	ldr	r0, [pc, #12]	; (8001d64 <TIM_SetAutoreload+0xdc>)
 8001d56:	f640 01e9 	movw	r1, #2281	; 0x8e9
 8001d5a:	f7fe fac5 	bl	80002e8 <assert_failed>
 8001d5e:	85a5      	strh	r5, [r4, #44]	; 0x2c
 8001d60:	bd38      	pop	{r3, r4, r5, pc}
 8001d62:	bf00      	nop
 8001d64:	08008c28 	.word	0x08008c28

08001d68 <TIM_SetCompare1>:
 8001d68:	b538      	push	{r3, r4, r5, lr}
 8001d6a:	f44f 5330 	mov.w	r3, #11264	; 0x2c00
 8001d6e:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001d72:	4298      	cmp	r0, r3
 8001d74:	4604      	mov	r4, r0
 8001d76:	460d      	mov	r5, r1
 8001d78:	d055      	beq.n	8001e26 <TIM_SetCompare1+0xbe>
 8001d7a:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001d7e:	d052      	beq.n	8001e26 <TIM_SetCompare1+0xbe>
 8001d80:	f44f 6080 	mov.w	r0, #1024	; 0x400
 8001d84:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8001d88:	4284      	cmp	r4, r0
 8001d8a:	d04c      	beq.n	8001e26 <TIM_SetCompare1+0xbe>
 8001d8c:	f44f 6100 	mov.w	r1, #2048	; 0x800
 8001d90:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001d94:	428c      	cmp	r4, r1
 8001d96:	d046      	beq.n	8001e26 <TIM_SetCompare1+0xbe>
 8001d98:	f44f 6240 	mov.w	r2, #3072	; 0xc00
 8001d9c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001da0:	4294      	cmp	r4, r2
 8001da2:	d040      	beq.n	8001e26 <TIM_SetCompare1+0xbe>
 8001da4:	f44f 5350 	mov.w	r3, #13312	; 0x3400
 8001da8:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001dac:	429c      	cmp	r4, r3
 8001dae:	d03a      	beq.n	8001e26 <TIM_SetCompare1+0xbe>
 8001db0:	f44f 4098 	mov.w	r0, #19456	; 0x4c00
 8001db4:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001db8:	4284      	cmp	r4, r0
 8001dba:	d034      	beq.n	8001e26 <TIM_SetCompare1+0xbe>
 8001dbc:	f44f 41a0 	mov.w	r1, #20480	; 0x5000
 8001dc0:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001dc4:	428c      	cmp	r4, r1
 8001dc6:	d02e      	beq.n	8001e26 <TIM_SetCompare1+0xbe>
 8001dc8:	f44f 42a8 	mov.w	r2, #21504	; 0x5400
 8001dcc:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001dd0:	4294      	cmp	r4, r2
 8001dd2:	d028      	beq.n	8001e26 <TIM_SetCompare1+0xbe>
 8001dd4:	f44f 53c0 	mov.w	r3, #6144	; 0x1800
 8001dd8:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001ddc:	429c      	cmp	r4, r3
 8001dde:	d022      	beq.n	8001e26 <TIM_SetCompare1+0xbe>
 8001de0:	f44f 50e0 	mov.w	r0, #7168	; 0x1c00
 8001de4:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8001de8:	4284      	cmp	r4, r0
 8001dea:	d01c      	beq.n	8001e26 <TIM_SetCompare1+0xbe>
 8001dec:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8001df0:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001df4:	428c      	cmp	r4, r1
 8001df6:	d016      	beq.n	8001e26 <TIM_SetCompare1+0xbe>
 8001df8:	f44f 4280 	mov.w	r2, #16384	; 0x4000
 8001dfc:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001e00:	4294      	cmp	r4, r2
 8001e02:	d010      	beq.n	8001e26 <TIM_SetCompare1+0xbe>
 8001e04:	f44f 4388 	mov.w	r3, #17408	; 0x4400
 8001e08:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001e0c:	429c      	cmp	r4, r3
 8001e0e:	d00a      	beq.n	8001e26 <TIM_SetCompare1+0xbe>
 8001e10:	f44f 4090 	mov.w	r0, #18432	; 0x4800
 8001e14:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001e18:	4284      	cmp	r4, r0
 8001e1a:	d004      	beq.n	8001e26 <TIM_SetCompare1+0xbe>
 8001e1c:	4803      	ldr	r0, [pc, #12]	; (8001e2c <TIM_SetCompare1+0xc4>)
 8001e1e:	f640 01f7 	movw	r1, #2295	; 0x8f7
 8001e22:	f7fe fa61 	bl	80002e8 <assert_failed>
 8001e26:	86a5      	strh	r5, [r4, #52]	; 0x34
 8001e28:	bd38      	pop	{r3, r4, r5, pc}
 8001e2a:	bf00      	nop
 8001e2c:	08008c28 	.word	0x08008c28

08001e30 <TIM_ClearFlag>:
 8001e30:	b538      	push	{r3, r4, r5, lr}
 8001e32:	f44f 5330 	mov.w	r3, #11264	; 0x2c00
 8001e36:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001e3a:	4298      	cmp	r0, r3
 8001e3c:	4604      	mov	r4, r0
 8001e3e:	460d      	mov	r5, r1
 8001e40:	d061      	beq.n	8001f06 <TIM_ClearFlag+0xd6>
 8001e42:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001e46:	d05e      	beq.n	8001f06 <TIM_ClearFlag+0xd6>
 8001e48:	f44f 6080 	mov.w	r0, #1024	; 0x400
 8001e4c:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8001e50:	4284      	cmp	r4, r0
 8001e52:	d058      	beq.n	8001f06 <TIM_ClearFlag+0xd6>
 8001e54:	f44f 6100 	mov.w	r1, #2048	; 0x800
 8001e58:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001e5c:	428c      	cmp	r4, r1
 8001e5e:	d052      	beq.n	8001f06 <TIM_ClearFlag+0xd6>
 8001e60:	f44f 6240 	mov.w	r2, #3072	; 0xc00
 8001e64:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001e68:	4294      	cmp	r4, r2
 8001e6a:	d04c      	beq.n	8001f06 <TIM_ClearFlag+0xd6>
 8001e6c:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8001e70:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001e74:	429c      	cmp	r4, r3
 8001e76:	d046      	beq.n	8001f06 <TIM_ClearFlag+0xd6>
 8001e78:	f44f 50a0 	mov.w	r0, #5120	; 0x1400
 8001e7c:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8001e80:	4284      	cmp	r4, r0
 8001e82:	d040      	beq.n	8001f06 <TIM_ClearFlag+0xd6>
 8001e84:	f44f 5150 	mov.w	r1, #13312	; 0x3400
 8001e88:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001e8c:	428c      	cmp	r4, r1
 8001e8e:	d03a      	beq.n	8001f06 <TIM_ClearFlag+0xd6>
 8001e90:	f44f 4298 	mov.w	r2, #19456	; 0x4c00
 8001e94:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001e98:	4294      	cmp	r4, r2
 8001e9a:	d034      	beq.n	8001f06 <TIM_ClearFlag+0xd6>
 8001e9c:	f44f 43a0 	mov.w	r3, #20480	; 0x5000
 8001ea0:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001ea4:	429c      	cmp	r4, r3
 8001ea6:	d02e      	beq.n	8001f06 <TIM_ClearFlag+0xd6>
 8001ea8:	f44f 40a8 	mov.w	r0, #21504	; 0x5400
 8001eac:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001eb0:	4284      	cmp	r4, r0
 8001eb2:	d028      	beq.n	8001f06 <TIM_ClearFlag+0xd6>
 8001eb4:	f44f 51c0 	mov.w	r1, #6144	; 0x1800
 8001eb8:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8001ebc:	428c      	cmp	r4, r1
 8001ebe:	d022      	beq.n	8001f06 <TIM_ClearFlag+0xd6>
 8001ec0:	f44f 52e0 	mov.w	r2, #7168	; 0x1c00
 8001ec4:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001ec8:	4294      	cmp	r4, r2
 8001eca:	d01c      	beq.n	8001f06 <TIM_ClearFlag+0xd6>
 8001ecc:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8001ed0:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001ed4:	429c      	cmp	r4, r3
 8001ed6:	d016      	beq.n	8001f06 <TIM_ClearFlag+0xd6>
 8001ed8:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8001edc:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001ee0:	4284      	cmp	r4, r0
 8001ee2:	d010      	beq.n	8001f06 <TIM_ClearFlag+0xd6>
 8001ee4:	f44f 4188 	mov.w	r1, #17408	; 0x4400
 8001ee8:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8001eec:	428c      	cmp	r4, r1
 8001eee:	d00a      	beq.n	8001f06 <TIM_ClearFlag+0xd6>
 8001ef0:	f44f 4290 	mov.w	r2, #18432	; 0x4800
 8001ef4:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001ef8:	4294      	cmp	r4, r2
 8001efa:	d004      	beq.n	8001f06 <TIM_ClearFlag+0xd6>
 8001efc:	4808      	ldr	r0, [pc, #32]	; (8001f20 <TIM_ClearFlag+0xf0>)
 8001efe:	f640 212b 	movw	r1, #2603	; 0xa2b
 8001f02:	f7fe f9f1 	bl	80002e8 <assert_failed>
 8001f06:	f415 4f61 	tst.w	r5, #57600	; 0xe100
 8001f0a:	d100      	bne.n	8001f0e <TIM_ClearFlag+0xde>
 8001f0c:	b925      	cbnz	r5, 8001f18 <TIM_ClearFlag+0xe8>
 8001f0e:	4804      	ldr	r0, [pc, #16]	; (8001f20 <TIM_ClearFlag+0xf0>)
 8001f10:	f640 212c 	movw	r1, #2604	; 0xa2c
 8001f14:	f7fe f9e8 	bl	80002e8 <assert_failed>
 8001f18:	43ed      	mvns	r5, r5
 8001f1a:	b2ad      	uxth	r5, r5
 8001f1c:	8225      	strh	r5, [r4, #16]
 8001f1e:	bd38      	pop	{r3, r4, r5, pc}
 8001f20:	08008c28 	.word	0x08008c28

08001f24 <FLASH_UnlockBank1>:
 8001f24:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8001f28:	f240 1123 	movw	r1, #291	; 0x123
 8001f2c:	f648 12ab 	movw	r2, #35243	; 0x89ab
 8001f30:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8001f34:	f2c4 5167 	movt	r1, #17767	; 0x4567
 8001f38:	f6cc 52ef 	movt	r2, #52719	; 0xcdef
 8001f3c:	6059      	str	r1, [r3, #4]
 8001f3e:	605a      	str	r2, [r3, #4]
 8001f40:	4770      	bx	lr
 8001f42:	bf00      	nop

08001f44 <FLASH_LockBank1>:
 8001f44:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8001f48:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8001f4c:	691a      	ldr	r2, [r3, #16]
 8001f4e:	f042 0080 	orr.w	r0, r2, #128	; 0x80
 8001f52:	6118      	str	r0, [r3, #16]
 8001f54:	4770      	bx	lr
 8001f56:	bf00      	nop

08001f58 <FLASH_GetBank1Status>:
 8001f58:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8001f5c:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8001f60:	68da      	ldr	r2, [r3, #12]
 8001f62:	07d2      	lsls	r2, r2, #31
 8001f64:	d40b      	bmi.n	8001f7e <FLASH_GetBank1Status+0x26>
 8001f66:	68d8      	ldr	r0, [r3, #12]
 8001f68:	0740      	lsls	r0, r0, #29
 8001f6a:	d501      	bpl.n	8001f70 <FLASH_GetBank1Status+0x18>
 8001f6c:	2002      	movs	r0, #2
 8001f6e:	4770      	bx	lr
 8001f70:	68d9      	ldr	r1, [r3, #12]
 8001f72:	f011 0f10 	tst.w	r1, #16
 8001f76:	bf0c      	ite	eq
 8001f78:	2004      	moveq	r0, #4
 8001f7a:	2003      	movne	r0, #3
 8001f7c:	4770      	bx	lr
 8001f7e:	2001      	movs	r0, #1
 8001f80:	4770      	bx	lr
 8001f82:	bf00      	nop

08001f84 <FLASH_WaitForLastOperation>:
 8001f84:	b510      	push	{r4, lr}
 8001f86:	4604      	mov	r4, r0
 8001f88:	f7ff ffe6 	bl	8001f58 <FLASH_GetBank1Status>
 8001f8c:	2801      	cmp	r0, #1
 8001f8e:	d115      	bne.n	8001fbc <FLASH_WaitForLastOperation+0x38>
 8001f90:	b1b4      	cbz	r4, 8001fc0 <FLASH_WaitForLastOperation+0x3c>
 8001f92:	f7ff ffe1 	bl	8001f58 <FLASH_GetBank1Status>
 8001f96:	3c01      	subs	r4, #1
 8001f98:	2801      	cmp	r0, #1
 8001f9a:	f004 0301 	and.w	r3, r4, #1
 8001f9e:	d10d      	bne.n	8001fbc <FLASH_WaitForLastOperation+0x38>
 8001fa0:	b174      	cbz	r4, 8001fc0 <FLASH_WaitForLastOperation+0x3c>
 8001fa2:	b10b      	cbz	r3, 8001fa8 <FLASH_WaitForLastOperation+0x24>
 8001fa4:	e005      	b.n	8001fb2 <FLASH_WaitForLastOperation+0x2e>
 8001fa6:	b15c      	cbz	r4, 8001fc0 <FLASH_WaitForLastOperation+0x3c>
 8001fa8:	f7ff ffd6 	bl	8001f58 <FLASH_GetBank1Status>
 8001fac:	3c01      	subs	r4, #1
 8001fae:	2801      	cmp	r0, #1
 8001fb0:	d104      	bne.n	8001fbc <FLASH_WaitForLastOperation+0x38>
 8001fb2:	f7ff ffd1 	bl	8001f58 <FLASH_GetBank1Status>
 8001fb6:	3c01      	subs	r4, #1
 8001fb8:	2801      	cmp	r0, #1
 8001fba:	d0f4      	beq.n	8001fa6 <FLASH_WaitForLastOperation+0x22>
 8001fbc:	b104      	cbz	r4, 8001fc0 <FLASH_WaitForLastOperation+0x3c>
 8001fbe:	bd10      	pop	{r4, pc}
 8001fc0:	2005      	movs	r0, #5
 8001fc2:	bd10      	pop	{r4, pc}

08001fc4 <FLASH_ProgramWord>:
 8001fc4:	b570      	push	{r4, r5, r6, lr}
 8001fc6:	f64f 73fe 	movw	r3, #65534	; 0xfffe
 8001fca:	f100 4278 	add.w	r2, r0, #4160749568	; 0xf8000000
 8001fce:	f2c0 030f 	movt	r3, #15
 8001fd2:	b082      	sub	sp, #8
 8001fd4:	4604      	mov	r4, r0
 8001fd6:	2000      	movs	r0, #0
 8001fd8:	429a      	cmp	r2, r3
 8001fda:	9001      	str	r0, [sp, #4]
 8001fdc:	460d      	mov	r5, r1
 8001fde:	d807      	bhi.n	8001ff0 <FLASH_ProgramWord+0x2c>
 8001fe0:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8001fe4:	f7ff ffce 	bl	8001f84 <FLASH_WaitForLastOperation>
 8001fe8:	2804      	cmp	r0, #4
 8001fea:	d00c      	beq.n	8002006 <FLASH_ProgramWord+0x42>
 8001fec:	b002      	add	sp, #8
 8001fee:	bd70      	pop	{r4, r5, r6, pc}
 8001ff0:	4817      	ldr	r0, [pc, #92]	; (8002050 <FLASH_ProgramWord+0x8c>)
 8001ff2:	f240 21af 	movw	r1, #687	; 0x2af
 8001ff6:	f7fe f977 	bl	80002e8 <assert_failed>
 8001ffa:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8001ffe:	f7ff ffc1 	bl	8001f84 <FLASH_WaitForLastOperation>
 8002002:	2804      	cmp	r0, #4
 8002004:	d1f2      	bne.n	8001fec <FLASH_ProgramWord+0x28>
 8002006:	f44f 5600 	mov.w	r6, #8192	; 0x2000
 800200a:	f2c4 0602 	movt	r6, #16386	; 0x4002
 800200e:	6931      	ldr	r1, [r6, #16]
 8002010:	b2ab      	uxth	r3, r5
 8002012:	f041 0201 	orr.w	r2, r1, #1
 8002016:	6132      	str	r2, [r6, #16]
 8002018:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 800201c:	8023      	strh	r3, [r4, #0]
 800201e:	f7ff ffb1 	bl	8001f84 <FLASH_WaitForLastOperation>
 8002022:	2804      	cmp	r0, #4
 8002024:	d005      	beq.n	8002032 <FLASH_ProgramWord+0x6e>
 8002026:	6931      	ldr	r1, [r6, #16]
 8002028:	f641 73fe 	movw	r3, #8190	; 0x1ffe
 800202c:	400b      	ands	r3, r1
 800202e:	6133      	str	r3, [r6, #16]
 8002030:	e7dc      	b.n	8001fec <FLASH_ProgramWord+0x28>
 8002032:	3402      	adds	r4, #2
 8002034:	9401      	str	r4, [sp, #4]
 8002036:	9801      	ldr	r0, [sp, #4]
 8002038:	0c2d      	lsrs	r5, r5, #16
 800203a:	8005      	strh	r5, [r0, #0]
 800203c:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002040:	f7ff ffa0 	bl	8001f84 <FLASH_WaitForLastOperation>
 8002044:	6932      	ldr	r2, [r6, #16]
 8002046:	f641 71fe 	movw	r1, #8190	; 0x1ffe
 800204a:	4011      	ands	r1, r2
 800204c:	6131      	str	r1, [r6, #16]
 800204e:	e7cd      	b.n	8001fec <FLASH_ProgramWord+0x28>
 8002050:	08008c64 	.word	0x08008c64

08002054 <GPIO_Init>:
 8002054:	f44f 6300 	mov.w	r3, #2048	; 0x800
 8002058:	f2c4 0301 	movt	r3, #16385	; 0x4001
 800205c:	4298      	cmp	r0, r3
 800205e:	b570      	push	{r4, r5, r6, lr}
 8002060:	4604      	mov	r4, r0
 8002062:	460d      	mov	r5, r1
 8002064:	d027      	beq.n	80020b6 <GPIO_Init+0x62>
 8002066:	f44f 6040 	mov.w	r0, #3072	; 0xc00
 800206a:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800206e:	4284      	cmp	r4, r0
 8002070:	d021      	beq.n	80020b6 <GPIO_Init+0x62>
 8002072:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 8002076:	f2c4 0101 	movt	r1, #16385	; 0x4001
 800207a:	428c      	cmp	r4, r1
 800207c:	d01b      	beq.n	80020b6 <GPIO_Init+0x62>
 800207e:	f44f 52a0 	mov.w	r2, #5120	; 0x1400
 8002082:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8002086:	4294      	cmp	r4, r2
 8002088:	d015      	beq.n	80020b6 <GPIO_Init+0x62>
 800208a:	f44f 56c0 	mov.w	r6, #6144	; 0x1800
 800208e:	f2c4 0601 	movt	r6, #16385	; 0x4001
 8002092:	42b4      	cmp	r4, r6
 8002094:	d00f      	beq.n	80020b6 <GPIO_Init+0x62>
 8002096:	f44f 53e0 	mov.w	r3, #7168	; 0x1c00
 800209a:	f2c4 0301 	movt	r3, #16385	; 0x4001
 800209e:	429c      	cmp	r4, r3
 80020a0:	d009      	beq.n	80020b6 <GPIO_Init+0x62>
 80020a2:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80020a6:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80020aa:	4284      	cmp	r4, r0
 80020ac:	d003      	beq.n	80020b6 <GPIO_Init+0x62>
 80020ae:	48ae      	ldr	r0, [pc, #696]	; (8002368 <GPIO_Init+0x314>)
 80020b0:	21b2      	movs	r1, #178	; 0xb2
 80020b2:	f7fe f919 	bl	80002e8 <assert_failed>
 80020b6:	78e9      	ldrb	r1, [r5, #3]
 80020b8:	b189      	cbz	r1, 80020de <GPIO_Init+0x8a>
 80020ba:	2904      	cmp	r1, #4
 80020bc:	d00f      	beq.n	80020de <GPIO_Init+0x8a>
 80020be:	2928      	cmp	r1, #40	; 0x28
 80020c0:	d00d      	beq.n	80020de <GPIO_Init+0x8a>
 80020c2:	2948      	cmp	r1, #72	; 0x48
 80020c4:	d00b      	beq.n	80020de <GPIO_Init+0x8a>
 80020c6:	2914      	cmp	r1, #20
 80020c8:	d009      	beq.n	80020de <GPIO_Init+0x8a>
 80020ca:	2910      	cmp	r1, #16
 80020cc:	d007      	beq.n	80020de <GPIO_Init+0x8a>
 80020ce:	291c      	cmp	r1, #28
 80020d0:	d005      	beq.n	80020de <GPIO_Init+0x8a>
 80020d2:	2918      	cmp	r1, #24
 80020d4:	d003      	beq.n	80020de <GPIO_Init+0x8a>
 80020d6:	48a4      	ldr	r0, [pc, #656]	; (8002368 <GPIO_Init+0x314>)
 80020d8:	21b3      	movs	r1, #179	; 0xb3
 80020da:	f7fe f905 	bl	80002e8 <assert_failed>
 80020de:	882a      	ldrh	r2, [r5, #0]
 80020e0:	2a00      	cmp	r2, #0
 80020e2:	d06c      	beq.n	80021be <GPIO_Init+0x16a>
 80020e4:	78eb      	ldrb	r3, [r5, #3]
 80020e6:	f003 060f 	and.w	r6, r3, #15
 80020ea:	06db      	lsls	r3, r3, #27
 80020ec:	d461      	bmi.n	80021b2 <GPIO_Init+0x15e>
 80020ee:	4631      	mov	r1, r6
 80020f0:	882b      	ldrh	r3, [r5, #0]
 80020f2:	f013 0fff 	tst.w	r3, #255	; 0xff
 80020f6:	d02f      	beq.n	8002158 <GPIO_Init+0x104>
 80020f8:	f013 0001 	ands.w	r0, r3, #1
 80020fc:	6822      	ldr	r2, [r4, #0]
 80020fe:	f040 8116 	bne.w	800232e <GPIO_Init+0x2da>
 8002102:	f003 0002 	and.w	r0, r3, #2
 8002106:	b280      	uxth	r0, r0
 8002108:	2800      	cmp	r0, #0
 800210a:	f040 80d4 	bne.w	80022b6 <GPIO_Init+0x262>
 800210e:	f003 0004 	and.w	r0, r3, #4
 8002112:	b280      	uxth	r0, r0
 8002114:	2800      	cmp	r0, #0
 8002116:	f040 80b9 	bne.w	800228c <GPIO_Init+0x238>
 800211a:	f003 0008 	and.w	r0, r3, #8
 800211e:	b280      	uxth	r0, r0
 8002120:	2800      	cmp	r0, #0
 8002122:	f040 80e0 	bne.w	80022e6 <GPIO_Init+0x292>
 8002126:	f003 0010 	and.w	r0, r3, #16
 800212a:	b280      	uxth	r0, r0
 800212c:	2800      	cmp	r0, #0
 800212e:	f040 80e6 	bne.w	80022fe <GPIO_Init+0x2aa>
 8002132:	f003 0020 	and.w	r0, r3, #32
 8002136:	b280      	uxth	r0, r0
 8002138:	2800      	cmp	r0, #0
 800213a:	f040 80ec 	bne.w	8002316 <GPIO_Init+0x2c2>
 800213e:	f003 0040 	and.w	r0, r3, #64	; 0x40
 8002142:	b280      	uxth	r0, r0
 8002144:	2800      	cmp	r0, #0
 8002146:	f040 80c2 	bne.w	80022ce <GPIO_Init+0x27a>
 800214a:	f003 0080 	and.w	r0, r3, #128	; 0x80
 800214e:	b280      	uxth	r0, r0
 8002150:	2800      	cmp	r0, #0
 8002152:	f040 80a7 	bne.w	80022a4 <GPIO_Init+0x250>
 8002156:	6022      	str	r2, [r4, #0]
 8002158:	2bff      	cmp	r3, #255	; 0xff
 800215a:	d929      	bls.n	80021b0 <GPIO_Init+0x15c>
 800215c:	f403 7280 	and.w	r2, r3, #256	; 0x100
 8002160:	b290      	uxth	r0, r2
 8002162:	6862      	ldr	r2, [r4, #4]
 8002164:	2800      	cmp	r0, #0
 8002166:	d12f      	bne.n	80021c8 <GPIO_Init+0x174>
 8002168:	f403 7000 	and.w	r0, r3, #512	; 0x200
 800216c:	b280      	uxth	r0, r0
 800216e:	2800      	cmp	r0, #0
 8002170:	d136      	bne.n	80021e0 <GPIO_Init+0x18c>
 8002172:	f403 6080 	and.w	r0, r3, #1024	; 0x400
 8002176:	b280      	uxth	r0, r0
 8002178:	2800      	cmp	r0, #0
 800217a:	d13d      	bne.n	80021f8 <GPIO_Init+0x1a4>
 800217c:	f403 6000 	and.w	r0, r3, #2048	; 0x800
 8002180:	b280      	uxth	r0, r0
 8002182:	2800      	cmp	r0, #0
 8002184:	d144      	bne.n	8002210 <GPIO_Init+0x1bc>
 8002186:	f403 5080 	and.w	r0, r3, #4096	; 0x1000
 800218a:	b280      	uxth	r0, r0
 800218c:	2800      	cmp	r0, #0
 800218e:	d14b      	bne.n	8002228 <GPIO_Init+0x1d4>
 8002190:	f403 5000 	and.w	r0, r3, #8192	; 0x2000
 8002194:	b280      	uxth	r0, r0
 8002196:	2800      	cmp	r0, #0
 8002198:	d152      	bne.n	8002240 <GPIO_Init+0x1ec>
 800219a:	f403 4080 	and.w	r0, r3, #16384	; 0x4000
 800219e:	b280      	uxth	r0, r0
 80021a0:	2800      	cmp	r0, #0
 80021a2:	d158      	bne.n	8002256 <GPIO_Init+0x202>
 80021a4:	f403 4300 	and.w	r3, r3, #32768	; 0x8000
 80021a8:	b29b      	uxth	r3, r3
 80021aa:	2b00      	cmp	r3, #0
 80021ac:	d15e      	bne.n	800226c <GPIO_Init+0x218>
 80021ae:	6062      	str	r2, [r4, #4]
 80021b0:	bd70      	pop	{r4, r5, r6, pc}
 80021b2:	78a9      	ldrb	r1, [r5, #2]
 80021b4:	1e48      	subs	r0, r1, #1
 80021b6:	2802      	cmp	r0, #2
 80021b8:	d861      	bhi.n	800227e <GPIO_Init+0x22a>
 80021ba:	4331      	orrs	r1, r6
 80021bc:	e798      	b.n	80020f0 <GPIO_Init+0x9c>
 80021be:	486a      	ldr	r0, [pc, #424]	; (8002368 <GPIO_Init+0x314>)
 80021c0:	21b4      	movs	r1, #180	; 0xb4
 80021c2:	f7fe f891 	bl	80002e8 <assert_failed>
 80021c6:	e78d      	b.n	80020e4 <GPIO_Init+0x90>
 80021c8:	78ee      	ldrb	r6, [r5, #3]
 80021ca:	f022 020f 	bic.w	r2, r2, #15
 80021ce:	2e28      	cmp	r6, #40	; 0x28
 80021d0:	ea41 0202 	orr.w	r2, r1, r2
 80021d4:	f000 80c5 	beq.w	8002362 <GPIO_Init+0x30e>
 80021d8:	2e48      	cmp	r6, #72	; 0x48
 80021da:	d1c5      	bne.n	8002168 <GPIO_Init+0x114>
 80021dc:	6120      	str	r0, [r4, #16]
 80021de:	e7c3      	b.n	8002168 <GPIO_Init+0x114>
 80021e0:	78ee      	ldrb	r6, [r5, #3]
 80021e2:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
 80021e6:	2e28      	cmp	r6, #40	; 0x28
 80021e8:	ea42 1201 	orr.w	r2, r2, r1, lsl #4
 80021ec:	f000 80b7 	beq.w	800235e <GPIO_Init+0x30a>
 80021f0:	2e48      	cmp	r6, #72	; 0x48
 80021f2:	d1be      	bne.n	8002172 <GPIO_Init+0x11e>
 80021f4:	6120      	str	r0, [r4, #16]
 80021f6:	e7bc      	b.n	8002172 <GPIO_Init+0x11e>
 80021f8:	78ee      	ldrb	r6, [r5, #3]
 80021fa:	f422 6270 	bic.w	r2, r2, #3840	; 0xf00
 80021fe:	2e28      	cmp	r6, #40	; 0x28
 8002200:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8002204:	f000 80a9 	beq.w	800235a <GPIO_Init+0x306>
 8002208:	2e48      	cmp	r6, #72	; 0x48
 800220a:	d1b7      	bne.n	800217c <GPIO_Init+0x128>
 800220c:	6120      	str	r0, [r4, #16]
 800220e:	e7b5      	b.n	800217c <GPIO_Init+0x128>
 8002210:	78ee      	ldrb	r6, [r5, #3]
 8002212:	f422 4270 	bic.w	r2, r2, #61440	; 0xf000
 8002216:	2e28      	cmp	r6, #40	; 0x28
 8002218:	ea42 3201 	orr.w	r2, r2, r1, lsl #12
 800221c:	f000 809b 	beq.w	8002356 <GPIO_Init+0x302>
 8002220:	2e48      	cmp	r6, #72	; 0x48
 8002222:	d1b0      	bne.n	8002186 <GPIO_Init+0x132>
 8002224:	6120      	str	r0, [r4, #16]
 8002226:	e7ae      	b.n	8002186 <GPIO_Init+0x132>
 8002228:	78ee      	ldrb	r6, [r5, #3]
 800222a:	f422 2270 	bic.w	r2, r2, #983040	; 0xf0000
 800222e:	2e28      	cmp	r6, #40	; 0x28
 8002230:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
 8002234:	f000 808d 	beq.w	8002352 <GPIO_Init+0x2fe>
 8002238:	2e48      	cmp	r6, #72	; 0x48
 800223a:	d1a9      	bne.n	8002190 <GPIO_Init+0x13c>
 800223c:	6120      	str	r0, [r4, #16]
 800223e:	e7a7      	b.n	8002190 <GPIO_Init+0x13c>
 8002240:	78ee      	ldrb	r6, [r5, #3]
 8002242:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 8002246:	2e28      	cmp	r6, #40	; 0x28
 8002248:	ea42 5201 	orr.w	r2, r2, r1, lsl #20
 800224c:	d07f      	beq.n	800234e <GPIO_Init+0x2fa>
 800224e:	2e48      	cmp	r6, #72	; 0x48
 8002250:	d1a3      	bne.n	800219a <GPIO_Init+0x146>
 8002252:	6120      	str	r0, [r4, #16]
 8002254:	e7a1      	b.n	800219a <GPIO_Init+0x146>
 8002256:	78ee      	ldrb	r6, [r5, #3]
 8002258:	f022 6270 	bic.w	r2, r2, #251658240	; 0xf000000
 800225c:	2e28      	cmp	r6, #40	; 0x28
 800225e:	ea42 6201 	orr.w	r2, r2, r1, lsl #24
 8002262:	d072      	beq.n	800234a <GPIO_Init+0x2f6>
 8002264:	2e48      	cmp	r6, #72	; 0x48
 8002266:	d19d      	bne.n	80021a4 <GPIO_Init+0x150>
 8002268:	6120      	str	r0, [r4, #16]
 800226a:	e79b      	b.n	80021a4 <GPIO_Init+0x150>
 800226c:	78e8      	ldrb	r0, [r5, #3]
 800226e:	f361 721f 	bfi	r2, r1, #28, #4
 8002272:	2828      	cmp	r0, #40	; 0x28
 8002274:	d067      	beq.n	8002346 <GPIO_Init+0x2f2>
 8002276:	2848      	cmp	r0, #72	; 0x48
 8002278:	bf08      	it	eq
 800227a:	6123      	streq	r3, [r4, #16]
 800227c:	e797      	b.n	80021ae <GPIO_Init+0x15a>
 800227e:	21bb      	movs	r1, #187	; 0xbb
 8002280:	4839      	ldr	r0, [pc, #228]	; (8002368 <GPIO_Init+0x314>)
 8002282:	f7fe f831 	bl	80002e8 <assert_failed>
 8002286:	78a9      	ldrb	r1, [r5, #2]
 8002288:	4331      	orrs	r1, r6
 800228a:	e731      	b.n	80020f0 <GPIO_Init+0x9c>
 800228c:	78ee      	ldrb	r6, [r5, #3]
 800228e:	f422 6270 	bic.w	r2, r2, #3840	; 0xf00
 8002292:	2e28      	cmp	r6, #40	; 0x28
 8002294:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
 8002298:	d068      	beq.n	800236c <GPIO_Init+0x318>
 800229a:	2e48      	cmp	r6, #72	; 0x48
 800229c:	f47f af3d 	bne.w	800211a <GPIO_Init+0xc6>
 80022a0:	6120      	str	r0, [r4, #16]
 80022a2:	e73a      	b.n	800211a <GPIO_Init+0xc6>
 80022a4:	78ee      	ldrb	r6, [r5, #3]
 80022a6:	f361 721f 	bfi	r2, r1, #28, #4
 80022aa:	2e28      	cmp	r6, #40	; 0x28
 80022ac:	d064      	beq.n	8002378 <GPIO_Init+0x324>
 80022ae:	2e48      	cmp	r6, #72	; 0x48
 80022b0:	bf08      	it	eq
 80022b2:	6120      	streq	r0, [r4, #16]
 80022b4:	e74f      	b.n	8002156 <GPIO_Init+0x102>
 80022b6:	78ee      	ldrb	r6, [r5, #3]
 80022b8:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
 80022bc:	2e28      	cmp	r6, #40	; 0x28
 80022be:	ea42 1201 	orr.w	r2, r2, r1, lsl #4
 80022c2:	d057      	beq.n	8002374 <GPIO_Init+0x320>
 80022c4:	2e48      	cmp	r6, #72	; 0x48
 80022c6:	f47f af22 	bne.w	800210e <GPIO_Init+0xba>
 80022ca:	6120      	str	r0, [r4, #16]
 80022cc:	e71f      	b.n	800210e <GPIO_Init+0xba>
 80022ce:	78ee      	ldrb	r6, [r5, #3]
 80022d0:	f022 6270 	bic.w	r2, r2, #251658240	; 0xf000000
 80022d4:	2e28      	cmp	r6, #40	; 0x28
 80022d6:	ea42 6201 	orr.w	r2, r2, r1, lsl #24
 80022da:	d055      	beq.n	8002388 <GPIO_Init+0x334>
 80022dc:	2e48      	cmp	r6, #72	; 0x48
 80022de:	f47f af34 	bne.w	800214a <GPIO_Init+0xf6>
 80022e2:	6120      	str	r0, [r4, #16]
 80022e4:	e731      	b.n	800214a <GPIO_Init+0xf6>
 80022e6:	78ee      	ldrb	r6, [r5, #3]
 80022e8:	f422 4270 	bic.w	r2, r2, #61440	; 0xf000
 80022ec:	2e28      	cmp	r6, #40	; 0x28
 80022ee:	ea42 3201 	orr.w	r2, r2, r1, lsl #12
 80022f2:	d047      	beq.n	8002384 <GPIO_Init+0x330>
 80022f4:	2e48      	cmp	r6, #72	; 0x48
 80022f6:	f47f af16 	bne.w	8002126 <GPIO_Init+0xd2>
 80022fa:	6120      	str	r0, [r4, #16]
 80022fc:	e713      	b.n	8002126 <GPIO_Init+0xd2>
 80022fe:	78ee      	ldrb	r6, [r5, #3]
 8002300:	f422 2270 	bic.w	r2, r2, #983040	; 0xf0000
 8002304:	2e28      	cmp	r6, #40	; 0x28
 8002306:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
 800230a:	d039      	beq.n	8002380 <GPIO_Init+0x32c>
 800230c:	2e48      	cmp	r6, #72	; 0x48
 800230e:	f47f af10 	bne.w	8002132 <GPIO_Init+0xde>
 8002312:	6120      	str	r0, [r4, #16]
 8002314:	e70d      	b.n	8002132 <GPIO_Init+0xde>
 8002316:	78ee      	ldrb	r6, [r5, #3]
 8002318:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 800231c:	2e28      	cmp	r6, #40	; 0x28
 800231e:	ea42 5201 	orr.w	r2, r2, r1, lsl #20
 8002322:	d02b      	beq.n	800237c <GPIO_Init+0x328>
 8002324:	2e48      	cmp	r6, #72	; 0x48
 8002326:	f47f af0a 	bne.w	800213e <GPIO_Init+0xea>
 800232a:	6120      	str	r0, [r4, #16]
 800232c:	e707      	b.n	800213e <GPIO_Init+0xea>
 800232e:	78ee      	ldrb	r6, [r5, #3]
 8002330:	f022 020f 	bic.w	r2, r2, #15
 8002334:	2e28      	cmp	r6, #40	; 0x28
 8002336:	ea41 0202 	orr.w	r2, r1, r2
 800233a:	d019      	beq.n	8002370 <GPIO_Init+0x31c>
 800233c:	2e48      	cmp	r6, #72	; 0x48
 800233e:	f47f aee0 	bne.w	8002102 <GPIO_Init+0xae>
 8002342:	6120      	str	r0, [r4, #16]
 8002344:	e6dd      	b.n	8002102 <GPIO_Init+0xae>
 8002346:	6163      	str	r3, [r4, #20]
 8002348:	e731      	b.n	80021ae <GPIO_Init+0x15a>
 800234a:	6160      	str	r0, [r4, #20]
 800234c:	e72a      	b.n	80021a4 <GPIO_Init+0x150>
 800234e:	6160      	str	r0, [r4, #20]
 8002350:	e723      	b.n	800219a <GPIO_Init+0x146>
 8002352:	6160      	str	r0, [r4, #20]
 8002354:	e71c      	b.n	8002190 <GPIO_Init+0x13c>
 8002356:	6160      	str	r0, [r4, #20]
 8002358:	e715      	b.n	8002186 <GPIO_Init+0x132>
 800235a:	6160      	str	r0, [r4, #20]
 800235c:	e70e      	b.n	800217c <GPIO_Init+0x128>
 800235e:	6160      	str	r0, [r4, #20]
 8002360:	e707      	b.n	8002172 <GPIO_Init+0x11e>
 8002362:	6160      	str	r0, [r4, #20]
 8002364:	e700      	b.n	8002168 <GPIO_Init+0x114>
 8002366:	bf00      	nop
 8002368:	08008ca0 	.word	0x08008ca0
 800236c:	6160      	str	r0, [r4, #20]
 800236e:	e6d4      	b.n	800211a <GPIO_Init+0xc6>
 8002370:	6160      	str	r0, [r4, #20]
 8002372:	e6c6      	b.n	8002102 <GPIO_Init+0xae>
 8002374:	6160      	str	r0, [r4, #20]
 8002376:	e6ca      	b.n	800210e <GPIO_Init+0xba>
 8002378:	6160      	str	r0, [r4, #20]
 800237a:	e6ec      	b.n	8002156 <GPIO_Init+0x102>
 800237c:	6160      	str	r0, [r4, #20]
 800237e:	e6de      	b.n	800213e <GPIO_Init+0xea>
 8002380:	6160      	str	r0, [r4, #20]
 8002382:	e6d6      	b.n	8002132 <GPIO_Init+0xde>
 8002384:	6160      	str	r0, [r4, #20]
 8002386:	e6ce      	b.n	8002126 <GPIO_Init+0xd2>
 8002388:	6160      	str	r0, [r4, #20]
 800238a:	e6de      	b.n	800214a <GPIO_Init+0xf6>

0800238c <GPIO_ReadInputDataBit>:
 800238c:	b538      	push	{r3, r4, r5, lr}
 800238e:	f44f 6300 	mov.w	r3, #2048	; 0x800
 8002392:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8002396:	4298      	cmp	r0, r3
 8002398:	4604      	mov	r4, r0
 800239a:	460d      	mov	r5, r1
 800239c:	d028      	beq.n	80023f0 <GPIO_ReadInputDataBit+0x64>
 800239e:	f44f 6040 	mov.w	r0, #3072	; 0xc00
 80023a2:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80023a6:	4284      	cmp	r4, r0
 80023a8:	d022      	beq.n	80023f0 <GPIO_ReadInputDataBit+0x64>
 80023aa:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 80023ae:	f2c4 0101 	movt	r1, #16385	; 0x4001
 80023b2:	428c      	cmp	r4, r1
 80023b4:	d01c      	beq.n	80023f0 <GPIO_ReadInputDataBit+0x64>
 80023b6:	f44f 52a0 	mov.w	r2, #5120	; 0x1400
 80023ba:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80023be:	4294      	cmp	r4, r2
 80023c0:	d016      	beq.n	80023f0 <GPIO_ReadInputDataBit+0x64>
 80023c2:	f44f 53c0 	mov.w	r3, #6144	; 0x1800
 80023c6:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80023ca:	429c      	cmp	r4, r3
 80023cc:	d010      	beq.n	80023f0 <GPIO_ReadInputDataBit+0x64>
 80023ce:	f44f 50e0 	mov.w	r0, #7168	; 0x1c00
 80023d2:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80023d6:	4284      	cmp	r4, r0
 80023d8:	d00a      	beq.n	80023f0 <GPIO_ReadInputDataBit+0x64>
 80023da:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 80023de:	f2c4 0101 	movt	r1, #16385	; 0x4001
 80023e2:	428c      	cmp	r4, r1
 80023e4:	d004      	beq.n	80023f0 <GPIO_ReadInputDataBit+0x64>
 80023e6:	481b      	ldr	r0, [pc, #108]	; (8002454 <GPIO_ReadInputDataBit+0xc8>)
 80023e8:	f44f 718f 	mov.w	r1, #286	; 0x11e
 80023ec:	f7fd ff7c 	bl	80002e8 <assert_failed>
 80023f0:	1e6a      	subs	r2, r5, #1
 80023f2:	2a01      	cmp	r2, #1
 80023f4:	d928      	bls.n	8002448 <GPIO_ReadInputDataBit+0xbc>
 80023f6:	2d04      	cmp	r5, #4
 80023f8:	d026      	beq.n	8002448 <GPIO_ReadInputDataBit+0xbc>
 80023fa:	2d08      	cmp	r5, #8
 80023fc:	d024      	beq.n	8002448 <GPIO_ReadInputDataBit+0xbc>
 80023fe:	2d10      	cmp	r5, #16
 8002400:	d022      	beq.n	8002448 <GPIO_ReadInputDataBit+0xbc>
 8002402:	2d20      	cmp	r5, #32
 8002404:	d020      	beq.n	8002448 <GPIO_ReadInputDataBit+0xbc>
 8002406:	2d40      	cmp	r5, #64	; 0x40
 8002408:	d01e      	beq.n	8002448 <GPIO_ReadInputDataBit+0xbc>
 800240a:	2d80      	cmp	r5, #128	; 0x80
 800240c:	d01c      	beq.n	8002448 <GPIO_ReadInputDataBit+0xbc>
 800240e:	f5b5 7f80 	cmp.w	r5, #256	; 0x100
 8002412:	d019      	beq.n	8002448 <GPIO_ReadInputDataBit+0xbc>
 8002414:	f5b5 7f00 	cmp.w	r5, #512	; 0x200
 8002418:	d016      	beq.n	8002448 <GPIO_ReadInputDataBit+0xbc>
 800241a:	f5b5 6f80 	cmp.w	r5, #1024	; 0x400
 800241e:	d013      	beq.n	8002448 <GPIO_ReadInputDataBit+0xbc>
 8002420:	f5b5 6f00 	cmp.w	r5, #2048	; 0x800
 8002424:	d010      	beq.n	8002448 <GPIO_ReadInputDataBit+0xbc>
 8002426:	f5b5 5f80 	cmp.w	r5, #4096	; 0x1000
 800242a:	d00d      	beq.n	8002448 <GPIO_ReadInputDataBit+0xbc>
 800242c:	f5b5 5f00 	cmp.w	r5, #8192	; 0x2000
 8002430:	d00a      	beq.n	8002448 <GPIO_ReadInputDataBit+0xbc>
 8002432:	f5b5 4f80 	cmp.w	r5, #16384	; 0x4000
 8002436:	d007      	beq.n	8002448 <GPIO_ReadInputDataBit+0xbc>
 8002438:	f5b5 4f00 	cmp.w	r5, #32768	; 0x8000
 800243c:	d004      	beq.n	8002448 <GPIO_ReadInputDataBit+0xbc>
 800243e:	4805      	ldr	r0, [pc, #20]	; (8002454 <GPIO_ReadInputDataBit+0xc8>)
 8002440:	f240 111f 	movw	r1, #287	; 0x11f
 8002444:	f7fd ff50 	bl	80002e8 <assert_failed>
 8002448:	68a3      	ldr	r3, [r4, #8]
 800244a:	421d      	tst	r5, r3
 800244c:	bf0c      	ite	eq
 800244e:	2000      	moveq	r0, #0
 8002450:	2001      	movne	r0, #1
 8002452:	bd38      	pop	{r3, r4, r5, pc}
 8002454:	08008ca0 	.word	0x08008ca0

08002458 <GPIO_SetBits>:
 8002458:	b538      	push	{r3, r4, r5, lr}
 800245a:	f44f 6300 	mov.w	r3, #2048	; 0x800
 800245e:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8002462:	4298      	cmp	r0, r3
 8002464:	4604      	mov	r4, r0
 8002466:	460d      	mov	r5, r1
 8002468:	d028      	beq.n	80024bc <GPIO_SetBits+0x64>
 800246a:	f44f 6040 	mov.w	r0, #3072	; 0xc00
 800246e:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8002472:	4284      	cmp	r4, r0
 8002474:	d022      	beq.n	80024bc <GPIO_SetBits+0x64>
 8002476:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 800247a:	f2c4 0101 	movt	r1, #16385	; 0x4001
 800247e:	428c      	cmp	r4, r1
 8002480:	d01c      	beq.n	80024bc <GPIO_SetBits+0x64>
 8002482:	f44f 52a0 	mov.w	r2, #5120	; 0x1400
 8002486:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800248a:	4294      	cmp	r4, r2
 800248c:	d016      	beq.n	80024bc <GPIO_SetBits+0x64>
 800248e:	f44f 53c0 	mov.w	r3, #6144	; 0x1800
 8002492:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8002496:	429c      	cmp	r4, r3
 8002498:	d010      	beq.n	80024bc <GPIO_SetBits+0x64>
 800249a:	f44f 50e0 	mov.w	r0, #7168	; 0x1c00
 800249e:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80024a2:	4284      	cmp	r4, r0
 80024a4:	d00a      	beq.n	80024bc <GPIO_SetBits+0x64>
 80024a6:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 80024aa:	f2c4 0101 	movt	r1, #16385	; 0x4001
 80024ae:	428c      	cmp	r4, r1
 80024b0:	d004      	beq.n	80024bc <GPIO_SetBits+0x64>
 80024b2:	4806      	ldr	r0, [pc, #24]	; (80024cc <GPIO_SetBits+0x74>)
 80024b4:	f240 1169 	movw	r1, #361	; 0x169
 80024b8:	f7fd ff16 	bl	80002e8 <assert_failed>
 80024bc:	b925      	cbnz	r5, 80024c8 <GPIO_SetBits+0x70>
 80024be:	4803      	ldr	r0, [pc, #12]	; (80024cc <GPIO_SetBits+0x74>)
 80024c0:	f44f 71b5 	mov.w	r1, #362	; 0x16a
 80024c4:	f7fd ff10 	bl	80002e8 <assert_failed>
 80024c8:	6125      	str	r5, [r4, #16]
 80024ca:	bd38      	pop	{r3, r4, r5, pc}
 80024cc:	08008ca0 	.word	0x08008ca0

080024d0 <GPIO_ResetBits>:
 80024d0:	b538      	push	{r3, r4, r5, lr}
 80024d2:	f44f 6300 	mov.w	r3, #2048	; 0x800
 80024d6:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80024da:	4298      	cmp	r0, r3
 80024dc:	4604      	mov	r4, r0
 80024de:	460d      	mov	r5, r1
 80024e0:	d028      	beq.n	8002534 <GPIO_ResetBits+0x64>
 80024e2:	f44f 6040 	mov.w	r0, #3072	; 0xc00
 80024e6:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80024ea:	4284      	cmp	r4, r0
 80024ec:	d022      	beq.n	8002534 <GPIO_ResetBits+0x64>
 80024ee:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 80024f2:	f2c4 0101 	movt	r1, #16385	; 0x4001
 80024f6:	428c      	cmp	r4, r1
 80024f8:	d01c      	beq.n	8002534 <GPIO_ResetBits+0x64>
 80024fa:	f44f 52a0 	mov.w	r2, #5120	; 0x1400
 80024fe:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8002502:	4294      	cmp	r4, r2
 8002504:	d016      	beq.n	8002534 <GPIO_ResetBits+0x64>
 8002506:	f44f 53c0 	mov.w	r3, #6144	; 0x1800
 800250a:	f2c4 0301 	movt	r3, #16385	; 0x4001
 800250e:	429c      	cmp	r4, r3
 8002510:	d010      	beq.n	8002534 <GPIO_ResetBits+0x64>
 8002512:	f44f 50e0 	mov.w	r0, #7168	; 0x1c00
 8002516:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800251a:	4284      	cmp	r4, r0
 800251c:	d00a      	beq.n	8002534 <GPIO_ResetBits+0x64>
 800251e:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8002522:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8002526:	428c      	cmp	r4, r1
 8002528:	d004      	beq.n	8002534 <GPIO_ResetBits+0x64>
 800252a:	4806      	ldr	r0, [pc, #24]	; (8002544 <GPIO_ResetBits+0x74>)
 800252c:	f240 1179 	movw	r1, #377	; 0x179
 8002530:	f7fd feda 	bl	80002e8 <assert_failed>
 8002534:	b925      	cbnz	r5, 8002540 <GPIO_ResetBits+0x70>
 8002536:	4803      	ldr	r0, [pc, #12]	; (8002544 <GPIO_ResetBits+0x74>)
 8002538:	f44f 71bd 	mov.w	r1, #378	; 0x17a
 800253c:	f7fd fed4 	bl	80002e8 <assert_failed>
 8002540:	6165      	str	r5, [r4, #20]
 8002542:	bd38      	pop	{r3, r4, r5, pc}
 8002544:	08008ca0 	.word	0x08008ca0

08002548 <USART_Init>:
 8002548:	b570      	push	{r4, r5, r6, lr}
 800254a:	f44f 5360 	mov.w	r3, #14336	; 0x3800
 800254e:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8002552:	4298      	cmp	r0, r3
 8002554:	b086      	sub	sp, #24
 8002556:	4604      	mov	r4, r0
 8002558:	460d      	mov	r5, r1
 800255a:	d01b      	beq.n	8002594 <USART_Init+0x4c>
 800255c:	f44f 4088 	mov.w	r0, #17408	; 0x4400
 8002560:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8002564:	4284      	cmp	r4, r0
 8002566:	d015      	beq.n	8002594 <USART_Init+0x4c>
 8002568:	f44f 4190 	mov.w	r1, #18432	; 0x4800
 800256c:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8002570:	428c      	cmp	r4, r1
 8002572:	d00f      	beq.n	8002594 <USART_Init+0x4c>
 8002574:	f44f 4298 	mov.w	r2, #19456	; 0x4c00
 8002578:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800257c:	4294      	cmp	r4, r2
 800257e:	d009      	beq.n	8002594 <USART_Init+0x4c>
 8002580:	f44f 46a0 	mov.w	r6, #20480	; 0x5000
 8002584:	f2c4 0600 	movt	r6, #16384	; 0x4000
 8002588:	42b4      	cmp	r4, r6
 800258a:	d003      	beq.n	8002594 <USART_Init+0x4c>
 800258c:	4867      	ldr	r0, [pc, #412]	; (800272c <USART_Init+0x1e4>)
 800258e:	21b8      	movs	r1, #184	; 0xb8
 8002590:	f7fd feaa 	bl	80002e8 <assert_failed>
 8002594:	6828      	ldr	r0, [r5, #0]
 8002596:	f64a 231f 	movw	r3, #43551	; 0xaa1f
 800259a:	1e41      	subs	r1, r0, #1
 800259c:	f2c0 0344 	movt	r3, #68	; 0x44
 80025a0:	4299      	cmp	r1, r3
 80025a2:	f200 80ac 	bhi.w	80026fe <USART_Init+0x1b6>
 80025a6:	88aa      	ldrh	r2, [r5, #4]
 80025a8:	b132      	cbz	r2, 80025b8 <USART_Init+0x70>
 80025aa:	f5b2 5f80 	cmp.w	r2, #4096	; 0x1000
 80025ae:	d003      	beq.n	80025b8 <USART_Init+0x70>
 80025b0:	485e      	ldr	r0, [pc, #376]	; (800272c <USART_Init+0x1e4>)
 80025b2:	21ba      	movs	r1, #186	; 0xba
 80025b4:	f7fd fe98 	bl	80002e8 <assert_failed>
 80025b8:	88ee      	ldrh	r6, [r5, #6]
 80025ba:	b166      	cbz	r6, 80025d6 <USART_Init+0x8e>
 80025bc:	f5b6 5f80 	cmp.w	r6, #4096	; 0x1000
 80025c0:	d009      	beq.n	80025d6 <USART_Init+0x8e>
 80025c2:	f5b6 5f00 	cmp.w	r6, #8192	; 0x2000
 80025c6:	d006      	beq.n	80025d6 <USART_Init+0x8e>
 80025c8:	f5b6 5f40 	cmp.w	r6, #12288	; 0x3000
 80025cc:	d003      	beq.n	80025d6 <USART_Init+0x8e>
 80025ce:	4857      	ldr	r0, [pc, #348]	; (800272c <USART_Init+0x1e4>)
 80025d0:	21bb      	movs	r1, #187	; 0xbb
 80025d2:	f7fd fe89 	bl	80002e8 <assert_failed>
 80025d6:	8928      	ldrh	r0, [r5, #8]
 80025d8:	b148      	cbz	r0, 80025ee <USART_Init+0xa6>
 80025da:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
 80025de:	d006      	beq.n	80025ee <USART_Init+0xa6>
 80025e0:	f5b0 6fc0 	cmp.w	r0, #1536	; 0x600
 80025e4:	d003      	beq.n	80025ee <USART_Init+0xa6>
 80025e6:	4851      	ldr	r0, [pc, #324]	; (800272c <USART_Init+0x1e4>)
 80025e8:	21bc      	movs	r1, #188	; 0xbc
 80025ea:	f7fd fe7d 	bl	80002e8 <assert_failed>
 80025ee:	8969      	ldrh	r1, [r5, #10]
 80025f0:	f64f 73f3 	movw	r3, #65523	; 0xfff3
 80025f4:	400b      	ands	r3, r1
 80025f6:	bb4b      	cbnz	r3, 800264c <USART_Init+0x104>
 80025f8:	b341      	cbz	r1, 800264c <USART_Init+0x104>
 80025fa:	89ae      	ldrh	r6, [r5, #12]
 80025fc:	b36e      	cbz	r6, 800265a <USART_Init+0x112>
 80025fe:	f5b6 7f80 	cmp.w	r6, #256	; 0x100
 8002602:	d00b      	beq.n	800261c <USART_Init+0xd4>
 8002604:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
 8002608:	d008      	beq.n	800261c <USART_Init+0xd4>
 800260a:	f5b6 7f40 	cmp.w	r6, #768	; 0x300
 800260e:	d005      	beq.n	800261c <USART_Init+0xd4>
 8002610:	4846      	ldr	r0, [pc, #280]	; (800272c <USART_Init+0x1e4>)
 8002612:	21be      	movs	r1, #190	; 0xbe
 8002614:	f7fd fe68 	bl	80002e8 <assert_failed>
 8002618:	89ae      	ldrh	r6, [r5, #12]
 800261a:	b1f6      	cbz	r6, 800265a <USART_Init+0x112>
 800261c:	f44f 5260 	mov.w	r2, #14336	; 0x3800
 8002620:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8002624:	4294      	cmp	r4, r2
 8002626:	d018      	beq.n	800265a <USART_Init+0x112>
 8002628:	f44f 4088 	mov.w	r0, #17408	; 0x4400
 800262c:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8002630:	4284      	cmp	r4, r0
 8002632:	d012      	beq.n	800265a <USART_Init+0x112>
 8002634:	f44f 4190 	mov.w	r1, #18432	; 0x4800
 8002638:	f2c4 0100 	movt	r1, #16384	; 0x4000
 800263c:	428c      	cmp	r4, r1
 800263e:	d00c      	beq.n	800265a <USART_Init+0x112>
 8002640:	21c2      	movs	r1, #194	; 0xc2
 8002642:	483a      	ldr	r0, [pc, #232]	; (800272c <USART_Init+0x1e4>)
 8002644:	f7fd fe50 	bl	80002e8 <assert_failed>
 8002648:	89a9      	ldrh	r1, [r5, #12]
 800264a:	e007      	b.n	800265c <USART_Init+0x114>
 800264c:	4837      	ldr	r0, [pc, #220]	; (800272c <USART_Init+0x1e4>)
 800264e:	21bd      	movs	r1, #189	; 0xbd
 8002650:	f7fd fe4a 	bl	80002e8 <assert_failed>
 8002654:	89ae      	ldrh	r6, [r5, #12]
 8002656:	2e00      	cmp	r6, #0
 8002658:	d1d1      	bne.n	80025fe <USART_Init+0xb6>
 800265a:	4631      	mov	r1, r6
 800265c:	8a26      	ldrh	r6, [r4, #16]
 800265e:	88eb      	ldrh	r3, [r5, #6]
 8002660:	f426 5240 	bic.w	r2, r6, #12288	; 0x3000
 8002664:	0410      	lsls	r0, r2, #16
 8002666:	0c06      	lsrs	r6, r0, #16
 8002668:	431e      	orrs	r6, r3
 800266a:	8226      	strh	r6, [r4, #16]
 800266c:	89a3      	ldrh	r3, [r4, #12]
 800266e:	88aa      	ldrh	r2, [r5, #4]
 8002670:	892e      	ldrh	r6, [r5, #8]
 8002672:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8002676:	8968      	ldrh	r0, [r5, #10]
 8002678:	f023 030c 	bic.w	r3, r3, #12
 800267c:	4316      	orrs	r6, r2
 800267e:	041a      	lsls	r2, r3, #16
 8002680:	4306      	orrs	r6, r0
 8002682:	0c10      	lsrs	r0, r2, #16
 8002684:	ea46 0300 	orr.w	r3, r6, r0
 8002688:	b29e      	uxth	r6, r3
 800268a:	81a6      	strh	r6, [r4, #12]
 800268c:	8aa2      	ldrh	r2, [r4, #20]
 800268e:	a801      	add	r0, sp, #4
 8002690:	f422 7340 	bic.w	r3, r2, #768	; 0x300
 8002694:	041e      	lsls	r6, r3, #16
 8002696:	0c32      	lsrs	r2, r6, #16
 8002698:	4311      	orrs	r1, r2
 800269a:	b28b      	uxth	r3, r1
 800269c:	82a3      	strh	r3, [r4, #20]
 800269e:	f7fe f9d5 	bl	8000a4c <RCC_GetClocksFreq>
 80026a2:	f44f 5660 	mov.w	r6, #14336	; 0x3800
 80026a6:	89a0      	ldrh	r0, [r4, #12]
 80026a8:	f2c4 0601 	movt	r6, #16385	; 0x4001
 80026ac:	42b4      	cmp	r4, r6
 80026ae:	b202      	sxth	r2, r0
 80026b0:	bf0c      	ite	eq
 80026b2:	9e04      	ldreq	r6, [sp, #16]
 80026b4:	9e03      	ldrne	r6, [sp, #12]
 80026b6:	2a00      	cmp	r2, #0
 80026b8:	db26      	blt.n	8002708 <USART_Init+0x1c0>
 80026ba:	682d      	ldr	r5, [r5, #0]
 80026bc:	eb06 0186 	add.w	r1, r6, r6, lsl #2
 80026c0:	eb01 0381 	add.w	r3, r1, r1, lsl #2
 80026c4:	00ae      	lsls	r6, r5, #2
 80026c6:	fbb3 f1f6 	udiv	r1, r3, r6
 80026ca:	f248 531f 	movw	r3, #34079	; 0x851f
 80026ce:	f2c5 13eb 	movt	r3, #20971	; 0x51eb
 80026d2:	fba3 0601 	umull	r0, r6, r3, r1
 80026d6:	89a0      	ldrh	r0, [r4, #12]
 80026d8:	0972      	lsrs	r2, r6, #5
 80026da:	b200      	sxth	r0, r0
 80026dc:	2564      	movs	r5, #100	; 0x64
 80026de:	0116      	lsls	r6, r2, #4
 80026e0:	2800      	cmp	r0, #0
 80026e2:	fb02 1115 	mls	r1, r2, r5, r1
 80026e6:	db18      	blt.n	800271a <USART_Init+0x1d2>
 80026e8:	010a      	lsls	r2, r1, #4
 80026ea:	3232      	adds	r2, #50	; 0x32
 80026ec:	fba3 0302 	umull	r0, r3, r3, r2
 80026f0:	f3c3 1043 	ubfx	r0, r3, #5, #4
 80026f4:	4330      	orrs	r0, r6
 80026f6:	b283      	uxth	r3, r0
 80026f8:	8123      	strh	r3, [r4, #8]
 80026fa:	b006      	add	sp, #24
 80026fc:	bd70      	pop	{r4, r5, r6, pc}
 80026fe:	480b      	ldr	r0, [pc, #44]	; (800272c <USART_Init+0x1e4>)
 8002700:	21b9      	movs	r1, #185	; 0xb9
 8002702:	f7fd fdf1 	bl	80002e8 <assert_failed>
 8002706:	e74e      	b.n	80025a6 <USART_Init+0x5e>
 8002708:	6828      	ldr	r0, [r5, #0]
 800270a:	eb06 0286 	add.w	r2, r6, r6, lsl #2
 800270e:	eb02 0582 	add.w	r5, r2, r2, lsl #2
 8002712:	0043      	lsls	r3, r0, #1
 8002714:	fbb5 f1f3 	udiv	r1, r5, r3
 8002718:	e7d7      	b.n	80026ca <USART_Init+0x182>
 800271a:	00c9      	lsls	r1, r1, #3
 800271c:	3132      	adds	r1, #50	; 0x32
 800271e:	fba3 1201 	umull	r1, r2, r3, r1
 8002722:	f3c2 1042 	ubfx	r0, r2, #5, #3
 8002726:	4330      	orrs	r0, r6
 8002728:	e7e5      	b.n	80026f6 <USART_Init+0x1ae>
 800272a:	bf00      	nop
 800272c:	08008cdc 	.word	0x08008cdc

08002730 <USART_Cmd>:
 8002730:	b538      	push	{r3, r4, r5, lr}
 8002732:	f44f 5360 	mov.w	r3, #14336	; 0x3800
 8002736:	f2c4 0301 	movt	r3, #16385	; 0x4001
 800273a:	4298      	cmp	r0, r3
 800273c:	4604      	mov	r4, r0
 800273e:	460d      	mov	r5, r1
 8002740:	d01c      	beq.n	800277c <USART_Cmd+0x4c>
 8002742:	f44f 4088 	mov.w	r0, #17408	; 0x4400
 8002746:	f2c4 0000 	movt	r0, #16384	; 0x4000
 800274a:	4284      	cmp	r4, r0
 800274c:	d016      	beq.n	800277c <USART_Cmd+0x4c>
 800274e:	f44f 4190 	mov.w	r1, #18432	; 0x4800
 8002752:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8002756:	428c      	cmp	r4, r1
 8002758:	d010      	beq.n	800277c <USART_Cmd+0x4c>
 800275a:	f44f 4298 	mov.w	r2, #19456	; 0x4c00
 800275e:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8002762:	4294      	cmp	r4, r2
 8002764:	d00a      	beq.n	800277c <USART_Cmd+0x4c>
 8002766:	f44f 43a0 	mov.w	r3, #20480	; 0x5000
 800276a:	f2c4 0300 	movt	r3, #16384	; 0x4000
 800276e:	429c      	cmp	r4, r3
 8002770:	d004      	beq.n	800277c <USART_Cmd+0x4c>
 8002772:	480d      	ldr	r0, [pc, #52]	; (80027a8 <USART_Cmd+0x78>)
 8002774:	f44f 71b1 	mov.w	r1, #354	; 0x162
 8002778:	f7fd fdb6 	bl	80002e8 <assert_failed>
 800277c:	2d01      	cmp	r5, #1
 800277e:	d90a      	bls.n	8002796 <USART_Cmd+0x66>
 8002780:	4809      	ldr	r0, [pc, #36]	; (80027a8 <USART_Cmd+0x78>)
 8002782:	f240 1163 	movw	r1, #355	; 0x163
 8002786:	f7fd fdaf 	bl	80002e8 <assert_failed>
 800278a:	89a0      	ldrh	r0, [r4, #12]
 800278c:	b281      	uxth	r1, r0
 800278e:	f441 5200 	orr.w	r2, r1, #8192	; 0x2000
 8002792:	81a2      	strh	r2, [r4, #12]
 8002794:	bd38      	pop	{r3, r4, r5, pc}
 8002796:	2d00      	cmp	r5, #0
 8002798:	d1f7      	bne.n	800278a <USART_Cmd+0x5a>
 800279a:	89a0      	ldrh	r0, [r4, #12]
 800279c:	f420 5100 	bic.w	r1, r0, #8192	; 0x2000
 80027a0:	040a      	lsls	r2, r1, #16
 80027a2:	0c13      	lsrs	r3, r2, #16
 80027a4:	81a3      	strh	r3, [r4, #12]
 80027a6:	bd38      	pop	{r3, r4, r5, pc}
 80027a8:	08008cdc 	.word	0x08008cdc

080027ac <USART_ITConfig>:
 80027ac:	f44f 5360 	mov.w	r3, #14336	; 0x3800
 80027b0:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80027b4:	4298      	cmp	r0, r3
 80027b6:	b570      	push	{r4, r5, r6, lr}
 80027b8:	4605      	mov	r5, r0
 80027ba:	460c      	mov	r4, r1
 80027bc:	4616      	mov	r6, r2
 80027be:	d01c      	beq.n	80027fa <USART_ITConfig+0x4e>
 80027c0:	f44f 4088 	mov.w	r0, #17408	; 0x4400
 80027c4:	f2c4 0000 	movt	r0, #16384	; 0x4000
 80027c8:	4285      	cmp	r5, r0
 80027ca:	d016      	beq.n	80027fa <USART_ITConfig+0x4e>
 80027cc:	f44f 4190 	mov.w	r1, #18432	; 0x4800
 80027d0:	f2c4 0100 	movt	r1, #16384	; 0x4000
 80027d4:	428d      	cmp	r5, r1
 80027d6:	d010      	beq.n	80027fa <USART_ITConfig+0x4e>
 80027d8:	f44f 4298 	mov.w	r2, #19456	; 0x4c00
 80027dc:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80027e0:	4295      	cmp	r5, r2
 80027e2:	d00a      	beq.n	80027fa <USART_ITConfig+0x4e>
 80027e4:	f44f 43a0 	mov.w	r3, #20480	; 0x5000
 80027e8:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80027ec:	429d      	cmp	r5, r3
 80027ee:	d004      	beq.n	80027fa <USART_ITConfig+0x4e>
 80027f0:	4833      	ldr	r0, [pc, #204]	; (80028c0 <USART_ITConfig+0x114>)
 80027f2:	f240 1189 	movw	r1, #393	; 0x189
 80027f6:	f7fd fd77 	bl	80002e8 <assert_failed>
 80027fa:	2c28      	cmp	r4, #40	; 0x28
 80027fc:	d01e      	beq.n	800283c <USART_ITConfig+0x90>
 80027fe:	f240 7027 	movw	r0, #1831	; 0x727
 8002802:	4284      	cmp	r4, r0
 8002804:	d01a      	beq.n	800283c <USART_ITConfig+0x90>
 8002806:	f240 6126 	movw	r1, #1574	; 0x626
 800280a:	428c      	cmp	r4, r1
 800280c:	d016      	beq.n	800283c <USART_ITConfig+0x90>
 800280e:	f240 5225 	movw	r2, #1317	; 0x525
 8002812:	4294      	cmp	r4, r2
 8002814:	d012      	beq.n	800283c <USART_ITConfig+0x90>
 8002816:	f240 4324 	movw	r3, #1060	; 0x424
 800281a:	429c      	cmp	r4, r3
 800281c:	d00e      	beq.n	800283c <USART_ITConfig+0x90>
 800281e:	f640 0046 	movw	r0, #2118	; 0x846
 8002822:	4284      	cmp	r4, r0
 8002824:	d00a      	beq.n	800283c <USART_ITConfig+0x90>
 8002826:	f500 7192 	add.w	r1, r0, #292	; 0x124
 800282a:	428c      	cmp	r4, r1
 800282c:	d006      	beq.n	800283c <USART_ITConfig+0x90>
 800282e:	2c60      	cmp	r4, #96	; 0x60
 8002830:	d004      	beq.n	800283c <USART_ITConfig+0x90>
 8002832:	4823      	ldr	r0, [pc, #140]	; (80028c0 <USART_ITConfig+0x114>)
 8002834:	f44f 71c5 	mov.w	r1, #394	; 0x18a
 8002838:	f7fd fd56 	bl	80002e8 <assert_failed>
 800283c:	2e01      	cmp	r6, #1
 800283e:	d904      	bls.n	800284a <USART_ITConfig+0x9e>
 8002840:	481f      	ldr	r0, [pc, #124]	; (80028c0 <USART_ITConfig+0x114>)
 8002842:	f240 118b 	movw	r1, #395	; 0x18b
 8002846:	f7fd fd4f 	bl	80002e8 <assert_failed>
 800284a:	f640 126a 	movw	r2, #2410	; 0x96a
 800284e:	4294      	cmp	r4, r2
 8002850:	d01b      	beq.n	800288a <USART_ITConfig+0xde>
 8002852:	f004 031f 	and.w	r3, r4, #31
 8002856:	2001      	movs	r0, #1
 8002858:	f3c4 1442 	ubfx	r4, r4, #5, #3
 800285c:	4284      	cmp	r4, r0
 800285e:	fa00 f103 	lsl.w	r1, r0, r3
 8002862:	d010      	beq.n	8002886 <USART_ITConfig+0xda>
 8002864:	2c02      	cmp	r4, #2
 8002866:	d006      	beq.n	8002876 <USART_ITConfig+0xca>
 8002868:	3514      	adds	r5, #20
 800286a:	6828      	ldr	r0, [r5, #0]
 800286c:	b93e      	cbnz	r6, 800287e <USART_ITConfig+0xd2>
 800286e:	ea20 0201 	bic.w	r2, r0, r1
 8002872:	602a      	str	r2, [r5, #0]
 8002874:	bd70      	pop	{r4, r5, r6, pc}
 8002876:	3510      	adds	r5, #16
 8002878:	6828      	ldr	r0, [r5, #0]
 800287a:	2e00      	cmp	r6, #0
 800287c:	d0f7      	beq.n	800286e <USART_ITConfig+0xc2>
 800287e:	ea40 0301 	orr.w	r3, r0, r1
 8002882:	602b      	str	r3, [r5, #0]
 8002884:	bd70      	pop	{r4, r5, r6, pc}
 8002886:	350c      	adds	r5, #12
 8002888:	e7ef      	b.n	800286a <USART_ITConfig+0xbe>
 800288a:	f44f 5160 	mov.w	r1, #14336	; 0x3800
 800288e:	f2c4 0101 	movt	r1, #16385	; 0x4001
 8002892:	428d      	cmp	r5, r1
 8002894:	d010      	beq.n	80028b8 <USART_ITConfig+0x10c>
 8002896:	f44f 4288 	mov.w	r2, #17408	; 0x4400
 800289a:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800289e:	4295      	cmp	r5, r2
 80028a0:	d00a      	beq.n	80028b8 <USART_ITConfig+0x10c>
 80028a2:	f44f 4390 	mov.w	r3, #18432	; 0x4800
 80028a6:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80028aa:	429d      	cmp	r5, r3
 80028ac:	d004      	beq.n	80028b8 <USART_ITConfig+0x10c>
 80028ae:	4804      	ldr	r0, [pc, #16]	; (80028c0 <USART_ITConfig+0x114>)
 80028b0:	f240 118f 	movw	r1, #399	; 0x18f
 80028b4:	f7fd fd18 	bl	80002e8 <assert_failed>
 80028b8:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80028bc:	e7d4      	b.n	8002868 <USART_ITConfig+0xbc>
 80028be:	bf00      	nop
 80028c0:	08008cdc 	.word	0x08008cdc

080028c4 <USART_GetITStatus>:
 80028c4:	b538      	push	{r3, r4, r5, lr}
 80028c6:	f44f 5360 	mov.w	r3, #14336	; 0x3800
 80028ca:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80028ce:	4298      	cmp	r0, r3
 80028d0:	4604      	mov	r4, r0
 80028d2:	460d      	mov	r5, r1
 80028d4:	d01c      	beq.n	8002910 <USART_GetITStatus+0x4c>
 80028d6:	f44f 4088 	mov.w	r0, #17408	; 0x4400
 80028da:	f2c4 0000 	movt	r0, #16384	; 0x4000
 80028de:	4284      	cmp	r4, r0
 80028e0:	d016      	beq.n	8002910 <USART_GetITStatus+0x4c>
 80028e2:	f44f 4190 	mov.w	r1, #18432	; 0x4800
 80028e6:	f2c4 0100 	movt	r1, #16384	; 0x4000
 80028ea:	428c      	cmp	r4, r1
 80028ec:	d010      	beq.n	8002910 <USART_GetITStatus+0x4c>
 80028ee:	f44f 4298 	mov.w	r2, #19456	; 0x4c00
 80028f2:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80028f6:	4294      	cmp	r4, r2
 80028f8:	d00a      	beq.n	8002910 <USART_GetITStatus+0x4c>
 80028fa:	f44f 43a0 	mov.w	r3, #20480	; 0x5000
 80028fe:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8002902:	429c      	cmp	r4, r3
 8002904:	d004      	beq.n	8002910 <USART_GetITStatus+0x4c>
 8002906:	483f      	ldr	r0, [pc, #252]	; (8002a04 <USART_GetITStatus+0x140>)
 8002908:	f240 31c1 	movw	r1, #961	; 0x3c1
 800290c:	f7fd fcec 	bl	80002e8 <assert_failed>
 8002910:	2d28      	cmp	r5, #40	; 0x28
 8002912:	d04c      	beq.n	80029ae <USART_GetITStatus+0xea>
 8002914:	f240 7027 	movw	r0, #1831	; 0x727
 8002918:	4285      	cmp	r5, r0
 800291a:	d03b      	beq.n	8002994 <USART_GetITStatus+0xd0>
 800291c:	f240 6126 	movw	r1, #1574	; 0x626
 8002920:	428d      	cmp	r5, r1
 8002922:	d037      	beq.n	8002994 <USART_GetITStatus+0xd0>
 8002924:	f240 5225 	movw	r2, #1317	; 0x525
 8002928:	4295      	cmp	r5, r2
 800292a:	d033      	beq.n	8002994 <USART_GetITStatus+0xd0>
 800292c:	f240 4324 	movw	r3, #1060	; 0x424
 8002930:	429d      	cmp	r5, r3
 8002932:	d02f      	beq.n	8002994 <USART_GetITStatus+0xd0>
 8002934:	f640 0246 	movw	r2, #2118	; 0x846
 8002938:	4295      	cmp	r5, r2
 800293a:	d044      	beq.n	80029c6 <USART_GetITStatus+0x102>
 800293c:	f502 7392 	add.w	r3, r2, #292	; 0x124
 8002940:	429d      	cmp	r5, r3
 8002942:	d045      	beq.n	80029d0 <USART_GetITStatus+0x10c>
 8002944:	f5b5 7f58 	cmp.w	r5, #864	; 0x360
 8002948:	d034      	beq.n	80029b4 <USART_GetITStatus+0xf0>
 800294a:	f5b5 7f18 	cmp.w	r5, #608	; 0x260
 800294e:	d031      	beq.n	80029b4 <USART_GetITStatus+0xf0>
 8002950:	f5b5 7fb0 	cmp.w	r5, #352	; 0x160
 8002954:	d02e      	beq.n	80029b4 <USART_GetITStatus+0xf0>
 8002956:	482b      	ldr	r0, [pc, #172]	; (8002a04 <USART_GetITStatus+0x140>)
 8002958:	f240 31c2 	movw	r1, #962	; 0x3c2
 800295c:	f7fd fcc4 	bl	80002e8 <assert_failed>
 8002960:	2001      	movs	r0, #1
 8002962:	f3c5 1242 	ubfx	r2, r5, #5, #3
 8002966:	f005 011f 	and.w	r1, r5, #31
 800296a:	4282      	cmp	r2, r0
 800296c:	fa00 f301 	lsl.w	r3, r0, r1
 8002970:	d015      	beq.n	800299e <USART_GetITStatus+0xda>
 8002972:	2a02      	cmp	r2, #2
 8002974:	d028      	beq.n	80029c8 <USART_GetITStatus+0x104>
 8002976:	8aa1      	ldrh	r1, [r4, #20]
 8002978:	b288      	uxth	r0, r1
 800297a:	4018      	ands	r0, r3
 800297c:	8823      	ldrh	r3, [r4, #0]
 800297e:	b299      	uxth	r1, r3
 8002980:	b1a0      	cbz	r0, 80029ac <USART_GetITStatus+0xe8>
 8002982:	2201      	movs	r2, #1
 8002984:	0a2d      	lsrs	r5, r5, #8
 8002986:	fa02 f505 	lsl.w	r5, r2, r5
 800298a:	420d      	tst	r5, r1
 800298c:	bf0c      	ite	eq
 800298e:	2000      	moveq	r0, #0
 8002990:	2001      	movne	r0, #1
 8002992:	bd38      	pop	{r3, r4, r5, pc}
 8002994:	f005 011f 	and.w	r1, r5, #31
 8002998:	2001      	movs	r0, #1
 800299a:	fa00 f301 	lsl.w	r3, r0, r1
 800299e:	89a0      	ldrh	r0, [r4, #12]
 80029a0:	b280      	uxth	r0, r0
 80029a2:	4018      	ands	r0, r3
 80029a4:	8823      	ldrh	r3, [r4, #0]
 80029a6:	b299      	uxth	r1, r3
 80029a8:	2800      	cmp	r0, #0
 80029aa:	d1ea      	bne.n	8002982 <USART_GetITStatus+0xbe>
 80029ac:	bd38      	pop	{r3, r4, r5, pc}
 80029ae:	f44f 7380 	mov.w	r3, #256	; 0x100
 80029b2:	e7f4      	b.n	800299e <USART_GetITStatus+0xda>
 80029b4:	f005 031f 	and.w	r3, r5, #31
 80029b8:	2101      	movs	r1, #1
 80029ba:	fa01 f303 	lsl.w	r3, r1, r3
 80029be:	8aa1      	ldrh	r1, [r4, #20]
 80029c0:	b288      	uxth	r0, r1
 80029c2:	4018      	ands	r0, r3
 80029c4:	e7da      	b.n	800297c <USART_GetITStatus+0xb8>
 80029c6:	2340      	movs	r3, #64	; 0x40
 80029c8:	8a22      	ldrh	r2, [r4, #16]
 80029ca:	b290      	uxth	r0, r2
 80029cc:	4018      	ands	r0, r3
 80029ce:	e7d5      	b.n	800297c <USART_GetITStatus+0xb8>
 80029d0:	f44f 5160 	mov.w	r1, #14336	; 0x3800
 80029d4:	f2c4 0101 	movt	r1, #16385	; 0x4001
 80029d8:	428c      	cmp	r4, r1
 80029da:	d010      	beq.n	80029fe <USART_GetITStatus+0x13a>
 80029dc:	f44f 4088 	mov.w	r0, #17408	; 0x4400
 80029e0:	f2c4 0000 	movt	r0, #16384	; 0x4000
 80029e4:	4284      	cmp	r4, r0
 80029e6:	d00a      	beq.n	80029fe <USART_GetITStatus+0x13a>
 80029e8:	f44f 4290 	mov.w	r2, #18432	; 0x4800
 80029ec:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80029f0:	4294      	cmp	r4, r2
 80029f2:	d004      	beq.n	80029fe <USART_GetITStatus+0x13a>
 80029f4:	4803      	ldr	r0, [pc, #12]	; (8002a04 <USART_GetITStatus+0x140>)
 80029f6:	f240 31c6 	movw	r1, #966	; 0x3c6
 80029fa:	f7fd fc75 	bl	80002e8 <assert_failed>
 80029fe:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8002a02:	e7dc      	b.n	80029be <USART_GetITStatus+0xfa>
 8002a04:	08008cdc 	.word	0x08008cdc

08002a08 <USART_ClearITPendingBit>:
 8002a08:	b538      	push	{r3, r4, r5, lr}
 8002a0a:	f44f 5360 	mov.w	r3, #14336	; 0x3800
 8002a0e:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8002a12:	4298      	cmp	r0, r3
 8002a14:	4604      	mov	r4, r0
 8002a16:	460d      	mov	r5, r1
 8002a18:	d01c      	beq.n	8002a54 <USART_ClearITPendingBit+0x4c>
 8002a1a:	f44f 4088 	mov.w	r0, #17408	; 0x4400
 8002a1e:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8002a22:	4284      	cmp	r4, r0
 8002a24:	d016      	beq.n	8002a54 <USART_ClearITPendingBit+0x4c>
 8002a26:	f44f 4190 	mov.w	r1, #18432	; 0x4800
 8002a2a:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8002a2e:	428c      	cmp	r4, r1
 8002a30:	d010      	beq.n	8002a54 <USART_ClearITPendingBit+0x4c>
 8002a32:	f44f 4298 	mov.w	r2, #19456	; 0x4c00
 8002a36:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8002a3a:	4294      	cmp	r4, r2
 8002a3c:	d00a      	beq.n	8002a54 <USART_ClearITPendingBit+0x4c>
 8002a3e:	f44f 43a0 	mov.w	r3, #20480	; 0x5000
 8002a42:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8002a46:	429c      	cmp	r4, r3
 8002a48:	d004      	beq.n	8002a54 <USART_ClearITPendingBit+0x4c>
 8002a4a:	481d      	ldr	r0, [pc, #116]	; (8002ac0 <USART_ClearITPendingBit+0xb8>)
 8002a4c:	f240 410a 	movw	r1, #1034	; 0x40a
 8002a50:	f7fd fc4a 	bl	80002e8 <assert_failed>
 8002a54:	f240 6026 	movw	r0, #1574	; 0x626
 8002a58:	4285      	cmp	r5, r0
 8002a5a:	d010      	beq.n	8002a7e <USART_ClearITPendingBit+0x76>
 8002a5c:	f240 5125 	movw	r1, #1317	; 0x525
 8002a60:	428d      	cmp	r5, r1
 8002a62:	d00c      	beq.n	8002a7e <USART_ClearITPendingBit+0x76>
 8002a64:	f640 0246 	movw	r2, #2118	; 0x846
 8002a68:	4295      	cmp	r5, r2
 8002a6a:	d008      	beq.n	8002a7e <USART_ClearITPendingBit+0x76>
 8002a6c:	f502 7392 	add.w	r3, r2, #292	; 0x124
 8002a70:	429d      	cmp	r5, r3
 8002a72:	d00c      	beq.n	8002a8e <USART_ClearITPendingBit+0x86>
 8002a74:	4812      	ldr	r0, [pc, #72]	; (8002ac0 <USART_ClearITPendingBit+0xb8>)
 8002a76:	f240 410b 	movw	r1, #1035	; 0x40b
 8002a7a:	f7fd fc35 	bl	80002e8 <assert_failed>
 8002a7e:	0a28      	lsrs	r0, r5, #8
 8002a80:	2301      	movs	r3, #1
 8002a82:	fa03 f500 	lsl.w	r5, r3, r0
 8002a86:	43e9      	mvns	r1, r5
 8002a88:	b28d      	uxth	r5, r1
 8002a8a:	8025      	strh	r5, [r4, #0]
 8002a8c:	bd38      	pop	{r3, r4, r5, pc}
 8002a8e:	f44f 5060 	mov.w	r0, #14336	; 0x3800
 8002a92:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8002a96:	4284      	cmp	r4, r0
 8002a98:	d0f1      	beq.n	8002a7e <USART_ClearITPendingBit+0x76>
 8002a9a:	f44f 4188 	mov.w	r1, #17408	; 0x4400
 8002a9e:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8002aa2:	428c      	cmp	r4, r1
 8002aa4:	d0eb      	beq.n	8002a7e <USART_ClearITPendingBit+0x76>
 8002aa6:	f44f 4290 	mov.w	r2, #18432	; 0x4800
 8002aaa:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8002aae:	4294      	cmp	r4, r2
 8002ab0:	d0e5      	beq.n	8002a7e <USART_ClearITPendingBit+0x76>
 8002ab2:	4803      	ldr	r0, [pc, #12]	; (8002ac0 <USART_ClearITPendingBit+0xb8>)
 8002ab4:	f240 410f 	movw	r1, #1039	; 0x40f
 8002ab8:	f7fd fc16 	bl	80002e8 <assert_failed>
 8002abc:	e7df      	b.n	8002a7e <USART_ClearITPendingBit+0x76>
 8002abe:	bf00      	nop
 8002ac0:	08008cdc 	.word	0x08008cdc

08002ac4 <DMA_DeInit>:
 8002ac4:	2308      	movs	r3, #8
 8002ac6:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8002aca:	4298      	cmp	r0, r3
 8002acc:	b510      	push	{r4, lr}
 8002ace:	4604      	mov	r4, r0
 8002ad0:	d064      	beq.n	8002b9c <DMA_DeInit+0xd8>
 8002ad2:	201c      	movs	r0, #28
 8002ad4:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8002ad8:	4284      	cmp	r4, r0
 8002ada:	d071      	beq.n	8002bc0 <DMA_DeInit+0xfc>
 8002adc:	2130      	movs	r1, #48	; 0x30
 8002ade:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002ae2:	428c      	cmp	r4, r1
 8002ae4:	d07e      	beq.n	8002be4 <DMA_DeInit+0x120>
 8002ae6:	2344      	movs	r3, #68	; 0x44
 8002ae8:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8002aec:	429c      	cmp	r4, r3
 8002aee:	f000 808b 	beq.w	8002c08 <DMA_DeInit+0x144>
 8002af2:	2358      	movs	r3, #88	; 0x58
 8002af4:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8002af8:	429c      	cmp	r4, r3
 8002afa:	d03d      	beq.n	8002b78 <DMA_DeInit+0xb4>
 8002afc:	206c      	movs	r0, #108	; 0x6c
 8002afe:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8002b02:	4284      	cmp	r4, r0
 8002b04:	f000 8092 	beq.w	8002c2c <DMA_DeInit+0x168>
 8002b08:	2380      	movs	r3, #128	; 0x80
 8002b0a:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8002b0e:	429c      	cmp	r4, r3
 8002b10:	f000 809e 	beq.w	8002c50 <DMA_DeInit+0x18c>
 8002b14:	f44f 6381 	mov.w	r3, #1032	; 0x408
 8002b18:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8002b1c:	429c      	cmp	r4, r3
 8002b1e:	f000 80c8 	beq.w	8002cb2 <DMA_DeInit+0x1ee>
 8002b22:	f240 411c 	movw	r1, #1052	; 0x41c
 8002b26:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002b2a:	428c      	cmp	r4, r1
 8002b2c:	f000 80c9 	beq.w	8002cc2 <DMA_DeInit+0x1fe>
 8002b30:	f44f 6386 	mov.w	r3, #1072	; 0x430
 8002b34:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8002b38:	429c      	cmp	r4, r3
 8002b3a:	f000 80a3 	beq.w	8002c84 <DMA_DeInit+0x1c0>
 8002b3e:	f240 4244 	movw	r2, #1092	; 0x444
 8002b42:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8002b46:	4294      	cmp	r4, r2
 8002b48:	f000 80c3 	beq.w	8002cd2 <DMA_DeInit+0x20e>
 8002b4c:	f44f 628b 	mov.w	r2, #1112	; 0x458
 8002b50:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8002b54:	4294      	cmp	r4, r2
 8002b56:	f000 808d 	beq.w	8002c74 <DMA_DeInit+0x1b0>
 8002b5a:	4862      	ldr	r0, [pc, #392]	; (8002ce4 <DMA_DeInit+0x220>)
 8002b5c:	216f      	movs	r1, #111	; 0x6f
 8002b5e:	f7fd fbc3 	bl	80002e8 <assert_failed>
 8002b62:	6820      	ldr	r0, [r4, #0]
 8002b64:	f64f 72fe 	movw	r2, #65534	; 0xfffe
 8002b68:	2300      	movs	r3, #0
 8002b6a:	4002      	ands	r2, r0
 8002b6c:	6022      	str	r2, [r4, #0]
 8002b6e:	6023      	str	r3, [r4, #0]
 8002b70:	6063      	str	r3, [r4, #4]
 8002b72:	60a3      	str	r3, [r4, #8]
 8002b74:	60e3      	str	r3, [r4, #12]
 8002b76:	bd10      	pop	{r4, pc}
 8002b78:	6820      	ldr	r0, [r4, #0]
 8002b7a:	f64f 71fe 	movw	r1, #65534	; 0xfffe
 8002b7e:	2300      	movs	r3, #0
 8002b80:	4001      	ands	r1, r0
 8002b82:	461a      	mov	r2, r3
 8002b84:	6021      	str	r1, [r4, #0]
 8002b86:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8002b8a:	6023      	str	r3, [r4, #0]
 8002b8c:	6063      	str	r3, [r4, #4]
 8002b8e:	60a3      	str	r3, [r4, #8]
 8002b90:	60e3      	str	r3, [r4, #12]
 8002b92:	6853      	ldr	r3, [r2, #4]
 8002b94:	f443 2170 	orr.w	r1, r3, #983040	; 0xf0000
 8002b98:	6051      	str	r1, [r2, #4]
 8002b9a:	bd10      	pop	{r4, pc}
 8002b9c:	6802      	ldr	r2, [r0, #0]
 8002b9e:	2100      	movs	r1, #0
 8002ba0:	f64f 70fe 	movw	r0, #65534	; 0xfffe
 8002ba4:	4010      	ands	r0, r2
 8002ba6:	460a      	mov	r2, r1
 8002ba8:	6020      	str	r0, [r4, #0]
 8002baa:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8002bae:	6021      	str	r1, [r4, #0]
 8002bb0:	6061      	str	r1, [r4, #4]
 8002bb2:	60a1      	str	r1, [r4, #8]
 8002bb4:	60e1      	str	r1, [r4, #12]
 8002bb6:	6853      	ldr	r3, [r2, #4]
 8002bb8:	f043 000f 	orr.w	r0, r3, #15
 8002bbc:	6050      	str	r0, [r2, #4]
 8002bbe:	bd10      	pop	{r4, pc}
 8002bc0:	6822      	ldr	r2, [r4, #0]
 8002bc2:	f64f 70fe 	movw	r0, #65534	; 0xfffe
 8002bc6:	2300      	movs	r3, #0
 8002bc8:	4010      	ands	r0, r2
 8002bca:	4619      	mov	r1, r3
 8002bcc:	6020      	str	r0, [r4, #0]
 8002bce:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002bd2:	6023      	str	r3, [r4, #0]
 8002bd4:	6063      	str	r3, [r4, #4]
 8002bd6:	60a3      	str	r3, [r4, #8]
 8002bd8:	60e3      	str	r3, [r4, #12]
 8002bda:	684a      	ldr	r2, [r1, #4]
 8002bdc:	f042 00f0 	orr.w	r0, r2, #240	; 0xf0
 8002be0:	6048      	str	r0, [r1, #4]
 8002be2:	bd10      	pop	{r4, pc}
 8002be4:	6820      	ldr	r0, [r4, #0]
 8002be6:	2300      	movs	r3, #0
 8002be8:	f64f 71fe 	movw	r1, #65534	; 0xfffe
 8002bec:	4001      	ands	r1, r0
 8002bee:	461a      	mov	r2, r3
 8002bf0:	6021      	str	r1, [r4, #0]
 8002bf2:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8002bf6:	6023      	str	r3, [r4, #0]
 8002bf8:	6063      	str	r3, [r4, #4]
 8002bfa:	60a3      	str	r3, [r4, #8]
 8002bfc:	60e3      	str	r3, [r4, #12]
 8002bfe:	6850      	ldr	r0, [r2, #4]
 8002c00:	f440 6170 	orr.w	r1, r0, #3840	; 0xf00
 8002c04:	6051      	str	r1, [r2, #4]
 8002c06:	bd10      	pop	{r4, pc}
 8002c08:	6822      	ldr	r2, [r4, #0]
 8002c0a:	f64f 70fe 	movw	r0, #65534	; 0xfffe
 8002c0e:	2100      	movs	r1, #0
 8002c10:	4010      	ands	r0, r2
 8002c12:	460a      	mov	r2, r1
 8002c14:	6020      	str	r0, [r4, #0]
 8002c16:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8002c1a:	6021      	str	r1, [r4, #0]
 8002c1c:	6061      	str	r1, [r4, #4]
 8002c1e:	60a1      	str	r1, [r4, #8]
 8002c20:	60e1      	str	r1, [r4, #12]
 8002c22:	6851      	ldr	r1, [r2, #4]
 8002c24:	f441 4070 	orr.w	r0, r1, #61440	; 0xf000
 8002c28:	6050      	str	r0, [r2, #4]
 8002c2a:	bd10      	pop	{r4, pc}
 8002c2c:	6822      	ldr	r2, [r4, #0]
 8002c2e:	2300      	movs	r3, #0
 8002c30:	f64f 71fe 	movw	r1, #65534	; 0xfffe
 8002c34:	4011      	ands	r1, r2
 8002c36:	4618      	mov	r0, r3
 8002c38:	6021      	str	r1, [r4, #0]
 8002c3a:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8002c3e:	6023      	str	r3, [r4, #0]
 8002c40:	6063      	str	r3, [r4, #4]
 8002c42:	60a3      	str	r3, [r4, #8]
 8002c44:	60e3      	str	r3, [r4, #12]
 8002c46:	6842      	ldr	r2, [r0, #4]
 8002c48:	f442 0170 	orr.w	r1, r2, #15728640	; 0xf00000
 8002c4c:	6041      	str	r1, [r0, #4]
 8002c4e:	bd10      	pop	{r4, pc}
 8002c50:	6820      	ldr	r0, [r4, #0]
 8002c52:	2300      	movs	r3, #0
 8002c54:	f64f 71fe 	movw	r1, #65534	; 0xfffe
 8002c58:	4001      	ands	r1, r0
 8002c5a:	461a      	mov	r2, r3
 8002c5c:	6021      	str	r1, [r4, #0]
 8002c5e:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8002c62:	6023      	str	r3, [r4, #0]
 8002c64:	6063      	str	r3, [r4, #4]
 8002c66:	60a3      	str	r3, [r4, #8]
 8002c68:	60e3      	str	r3, [r4, #12]
 8002c6a:	6850      	ldr	r0, [r2, #4]
 8002c6c:	f040 6170 	orr.w	r1, r0, #251658240	; 0xf000000
 8002c70:	6051      	str	r1, [r2, #4]
 8002c72:	bd10      	pop	{r4, pc}
 8002c74:	6820      	ldr	r0, [r4, #0]
 8002c76:	f64f 71fe 	movw	r1, #65534	; 0xfffe
 8002c7a:	2300      	movs	r3, #0
 8002c7c:	4001      	ands	r1, r0
 8002c7e:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8002c82:	e77f      	b.n	8002b84 <DMA_DeInit+0xc0>
 8002c84:	f44f 6386 	mov.w	r3, #1072	; 0x430
 8002c88:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8002c8c:	6819      	ldr	r1, [r3, #0]
 8002c8e:	f64f 70fe 	movw	r0, #65534	; 0xfffe
 8002c92:	2200      	movs	r2, #0
 8002c94:	4008      	ands	r0, r1
 8002c96:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8002c9a:	6018      	str	r0, [r3, #0]
 8002c9c:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002ca0:	601a      	str	r2, [r3, #0]
 8002ca2:	605a      	str	r2, [r3, #4]
 8002ca4:	609a      	str	r2, [r3, #8]
 8002ca6:	60da      	str	r2, [r3, #12]
 8002ca8:	684b      	ldr	r3, [r1, #4]
 8002caa:	f443 6070 	orr.w	r0, r3, #3840	; 0xf00
 8002cae:	6048      	str	r0, [r1, #4]
 8002cb0:	bd10      	pop	{r4, pc}
 8002cb2:	6822      	ldr	r2, [r4, #0]
 8002cb4:	f64f 70fe 	movw	r0, #65534	; 0xfffe
 8002cb8:	4010      	ands	r0, r2
 8002cba:	2100      	movs	r1, #0
 8002cbc:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8002cc0:	e772      	b.n	8002ba8 <DMA_DeInit+0xe4>
 8002cc2:	6822      	ldr	r2, [r4, #0]
 8002cc4:	f64f 70fe 	movw	r0, #65534	; 0xfffe
 8002cc8:	2300      	movs	r3, #0
 8002cca:	4010      	ands	r0, r2
 8002ccc:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8002cd0:	e77c      	b.n	8002bcc <DMA_DeInit+0x108>
 8002cd2:	6823      	ldr	r3, [r4, #0]
 8002cd4:	f64f 70fe 	movw	r0, #65534	; 0xfffe
 8002cd8:	2100      	movs	r1, #0
 8002cda:	4018      	ands	r0, r3
 8002cdc:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8002ce0:	e798      	b.n	8002c14 <DMA_DeInit+0x150>
 8002ce2:	bf00      	nop
 8002ce4:	08008d18 	.word	0x08008d18

08002ce8 <DMA_Init>:
 8002ce8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002cea:	2308      	movs	r3, #8
 8002cec:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8002cf0:	4298      	cmp	r0, r3
 8002cf2:	4605      	mov	r5, r0
 8002cf4:	460c      	mov	r4, r1
 8002cf6:	d03f      	beq.n	8002d78 <DMA_Init+0x90>
 8002cf8:	201c      	movs	r0, #28
 8002cfa:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8002cfe:	4285      	cmp	r5, r0
 8002d00:	d03a      	beq.n	8002d78 <DMA_Init+0x90>
 8002d02:	2130      	movs	r1, #48	; 0x30
 8002d04:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002d08:	428d      	cmp	r5, r1
 8002d0a:	d035      	beq.n	8002d78 <DMA_Init+0x90>
 8002d0c:	2244      	movs	r2, #68	; 0x44
 8002d0e:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8002d12:	4295      	cmp	r5, r2
 8002d14:	d030      	beq.n	8002d78 <DMA_Init+0x90>
 8002d16:	2658      	movs	r6, #88	; 0x58
 8002d18:	f2c4 0602 	movt	r6, #16386	; 0x4002
 8002d1c:	42b5      	cmp	r5, r6
 8002d1e:	d02b      	beq.n	8002d78 <DMA_Init+0x90>
 8002d20:	276c      	movs	r7, #108	; 0x6c
 8002d22:	f2c4 0702 	movt	r7, #16386	; 0x4002
 8002d26:	42bd      	cmp	r5, r7
 8002d28:	d026      	beq.n	8002d78 <DMA_Init+0x90>
 8002d2a:	2380      	movs	r3, #128	; 0x80
 8002d2c:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8002d30:	429d      	cmp	r5, r3
 8002d32:	d021      	beq.n	8002d78 <DMA_Init+0x90>
 8002d34:	f44f 6081 	mov.w	r0, #1032	; 0x408
 8002d38:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8002d3c:	4285      	cmp	r5, r0
 8002d3e:	d01b      	beq.n	8002d78 <DMA_Init+0x90>
 8002d40:	f240 411c 	movw	r1, #1052	; 0x41c
 8002d44:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002d48:	428d      	cmp	r5, r1
 8002d4a:	d015      	beq.n	8002d78 <DMA_Init+0x90>
 8002d4c:	f44f 6286 	mov.w	r2, #1072	; 0x430
 8002d50:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8002d54:	4295      	cmp	r5, r2
 8002d56:	d00f      	beq.n	8002d78 <DMA_Init+0x90>
 8002d58:	f240 4644 	movw	r6, #1092	; 0x444
 8002d5c:	f2c4 0602 	movt	r6, #16386	; 0x4002
 8002d60:	42b5      	cmp	r5, r6
 8002d62:	d009      	beq.n	8002d78 <DMA_Init+0x90>
 8002d64:	f44f 678b 	mov.w	r7, #1112	; 0x458
 8002d68:	f2c4 0702 	movt	r7, #16386	; 0x4002
 8002d6c:	42bd      	cmp	r5, r7
 8002d6e:	d003      	beq.n	8002d78 <DMA_Init+0x90>
 8002d70:	4844      	ldr	r0, [pc, #272]	; (8002e84 <DMA_Init+0x19c>)
 8002d72:	21cf      	movs	r1, #207	; 0xcf
 8002d74:	f7fd fab8 	bl	80002e8 <assert_failed>
 8002d78:	68a3      	ldr	r3, [r4, #8]
 8002d7a:	2b10      	cmp	r3, #16
 8002d7c:	d001      	beq.n	8002d82 <DMA_Init+0x9a>
 8002d7e:	2b00      	cmp	r3, #0
 8002d80:	d16b      	bne.n	8002e5a <DMA_Init+0x172>
 8002d82:	68e0      	ldr	r0, [r4, #12]
 8002d84:	f64f 72fe 	movw	r2, #65534	; 0xfffe
 8002d88:	1e41      	subs	r1, r0, #1
 8002d8a:	4291      	cmp	r1, r2
 8002d8c:	d85b      	bhi.n	8002e46 <DMA_Init+0x15e>
 8002d8e:	6926      	ldr	r6, [r4, #16]
 8002d90:	2e40      	cmp	r6, #64	; 0x40
 8002d92:	d001      	beq.n	8002d98 <DMA_Init+0xb0>
 8002d94:	2e00      	cmp	r6, #0
 8002d96:	d16a      	bne.n	8002e6e <DMA_Init+0x186>
 8002d98:	6967      	ldr	r7, [r4, #20]
 8002d9a:	2f80      	cmp	r7, #128	; 0x80
 8002d9c:	d001      	beq.n	8002da2 <DMA_Init+0xba>
 8002d9e:	2f00      	cmp	r7, #0
 8002da0:	d160      	bne.n	8002e64 <DMA_Init+0x17c>
 8002da2:	69a3      	ldr	r3, [r4, #24]
 8002da4:	b14b      	cbz	r3, 8002dba <DMA_Init+0xd2>
 8002da6:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8002daa:	d006      	beq.n	8002dba <DMA_Init+0xd2>
 8002dac:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8002db0:	d003      	beq.n	8002dba <DMA_Init+0xd2>
 8002db2:	4834      	ldr	r0, [pc, #208]	; (8002e84 <DMA_Init+0x19c>)
 8002db4:	21d4      	movs	r1, #212	; 0xd4
 8002db6:	f7fd fa97 	bl	80002e8 <assert_failed>
 8002dba:	69e0      	ldr	r0, [r4, #28]
 8002dbc:	b148      	cbz	r0, 8002dd2 <DMA_Init+0xea>
 8002dbe:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
 8002dc2:	d006      	beq.n	8002dd2 <DMA_Init+0xea>
 8002dc4:	f5b0 6f00 	cmp.w	r0, #2048	; 0x800
 8002dc8:	d003      	beq.n	8002dd2 <DMA_Init+0xea>
 8002dca:	482e      	ldr	r0, [pc, #184]	; (8002e84 <DMA_Init+0x19c>)
 8002dcc:	21d5      	movs	r1, #213	; 0xd5
 8002dce:	f7fd fa8b 	bl	80002e8 <assert_failed>
 8002dd2:	6a21      	ldr	r1, [r4, #32]
 8002dd4:	2920      	cmp	r1, #32
 8002dd6:	d001      	beq.n	8002ddc <DMA_Init+0xf4>
 8002dd8:	2900      	cmp	r1, #0
 8002dda:	d139      	bne.n	8002e50 <DMA_Init+0x168>
 8002ddc:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8002dde:	f5b2 5f40 	cmp.w	r2, #12288	; 0x3000
 8002de2:	d007      	beq.n	8002df4 <DMA_Init+0x10c>
 8002de4:	f5b2 5f00 	cmp.w	r2, #8192	; 0x2000
 8002de8:	d004      	beq.n	8002df4 <DMA_Init+0x10c>
 8002dea:	f5b2 5f80 	cmp.w	r2, #4096	; 0x1000
 8002dee:	d001      	beq.n	8002df4 <DMA_Init+0x10c>
 8002df0:	2a00      	cmp	r2, #0
 8002df2:	d141      	bne.n	8002e78 <DMA_Init+0x190>
 8002df4:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 8002df6:	f5b3 4f80 	cmp.w	r3, #16384	; 0x4000
 8002dfa:	d000      	beq.n	8002dfe <DMA_Init+0x116>
 8002dfc:	b9eb      	cbnz	r3, 8002e3a <DMA_Init+0x152>
 8002dfe:	68a0      	ldr	r0, [r4, #8]
 8002e00:	6a27      	ldr	r7, [r4, #32]
 8002e02:	6921      	ldr	r1, [r4, #16]
 8002e04:	6966      	ldr	r6, [r4, #20]
 8002e06:	4307      	orrs	r7, r0
 8002e08:	ea47 0201 	orr.w	r2, r7, r1
 8002e0c:	69a0      	ldr	r0, [r4, #24]
 8002e0e:	682f      	ldr	r7, [r5, #0]
 8002e10:	69e1      	ldr	r1, [r4, #28]
 8002e12:	4316      	orrs	r6, r2
 8002e14:	4330      	orrs	r0, r6
 8002e16:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8002e18:	4301      	orrs	r1, r0
 8002e1a:	f427 4cff 	bic.w	ip, r7, #32640	; 0x7f80
 8002e1e:	430a      	orrs	r2, r1
 8002e20:	f02c 0070 	bic.w	r0, ip, #112	; 0x70
 8002e24:	68e6      	ldr	r6, [r4, #12]
 8002e26:	6827      	ldr	r7, [r4, #0]
 8002e28:	ea42 0100 	orr.w	r1, r2, r0
 8002e2c:	6864      	ldr	r4, [r4, #4]
 8002e2e:	430b      	orrs	r3, r1
 8002e30:	602b      	str	r3, [r5, #0]
 8002e32:	606e      	str	r6, [r5, #4]
 8002e34:	60af      	str	r7, [r5, #8]
 8002e36:	60ec      	str	r4, [r5, #12]
 8002e38:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8002e3a:	4812      	ldr	r0, [pc, #72]	; (8002e84 <DMA_Init+0x19c>)
 8002e3c:	21d8      	movs	r1, #216	; 0xd8
 8002e3e:	f7fd fa53 	bl	80002e8 <assert_failed>
 8002e42:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 8002e44:	e7db      	b.n	8002dfe <DMA_Init+0x116>
 8002e46:	480f      	ldr	r0, [pc, #60]	; (8002e84 <DMA_Init+0x19c>)
 8002e48:	21d1      	movs	r1, #209	; 0xd1
 8002e4a:	f7fd fa4d 	bl	80002e8 <assert_failed>
 8002e4e:	e79e      	b.n	8002d8e <DMA_Init+0xa6>
 8002e50:	480c      	ldr	r0, [pc, #48]	; (8002e84 <DMA_Init+0x19c>)
 8002e52:	21d6      	movs	r1, #214	; 0xd6
 8002e54:	f7fd fa48 	bl	80002e8 <assert_failed>
 8002e58:	e7c0      	b.n	8002ddc <DMA_Init+0xf4>
 8002e5a:	480a      	ldr	r0, [pc, #40]	; (8002e84 <DMA_Init+0x19c>)
 8002e5c:	21d0      	movs	r1, #208	; 0xd0
 8002e5e:	f7fd fa43 	bl	80002e8 <assert_failed>
 8002e62:	e78e      	b.n	8002d82 <DMA_Init+0x9a>
 8002e64:	4807      	ldr	r0, [pc, #28]	; (8002e84 <DMA_Init+0x19c>)
 8002e66:	21d3      	movs	r1, #211	; 0xd3
 8002e68:	f7fd fa3e 	bl	80002e8 <assert_failed>
 8002e6c:	e799      	b.n	8002da2 <DMA_Init+0xba>
 8002e6e:	4805      	ldr	r0, [pc, #20]	; (8002e84 <DMA_Init+0x19c>)
 8002e70:	21d2      	movs	r1, #210	; 0xd2
 8002e72:	f7fd fa39 	bl	80002e8 <assert_failed>
 8002e76:	e78f      	b.n	8002d98 <DMA_Init+0xb0>
 8002e78:	4802      	ldr	r0, [pc, #8]	; (8002e84 <DMA_Init+0x19c>)
 8002e7a:	21d7      	movs	r1, #215	; 0xd7
 8002e7c:	f7fd fa34 	bl	80002e8 <assert_failed>
 8002e80:	e7b8      	b.n	8002df4 <DMA_Init+0x10c>
 8002e82:	bf00      	nop
 8002e84:	08008d18 	.word	0x08008d18

08002e88 <DMA_Cmd>:
 8002e88:	b538      	push	{r3, r4, r5, lr}
 8002e8a:	2308      	movs	r3, #8
 8002e8c:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8002e90:	4298      	cmp	r0, r3
 8002e92:	4604      	mov	r4, r0
 8002e94:	460d      	mov	r5, r1
 8002e96:	d040      	beq.n	8002f1a <DMA_Cmd+0x92>
 8002e98:	201c      	movs	r0, #28
 8002e9a:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8002e9e:	4284      	cmp	r4, r0
 8002ea0:	d03b      	beq.n	8002f1a <DMA_Cmd+0x92>
 8002ea2:	2130      	movs	r1, #48	; 0x30
 8002ea4:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002ea8:	428c      	cmp	r4, r1
 8002eaa:	d036      	beq.n	8002f1a <DMA_Cmd+0x92>
 8002eac:	2244      	movs	r2, #68	; 0x44
 8002eae:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8002eb2:	4294      	cmp	r4, r2
 8002eb4:	d031      	beq.n	8002f1a <DMA_Cmd+0x92>
 8002eb6:	2358      	movs	r3, #88	; 0x58
 8002eb8:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8002ebc:	429c      	cmp	r4, r3
 8002ebe:	d02c      	beq.n	8002f1a <DMA_Cmd+0x92>
 8002ec0:	206c      	movs	r0, #108	; 0x6c
 8002ec2:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8002ec6:	4284      	cmp	r4, r0
 8002ec8:	d027      	beq.n	8002f1a <DMA_Cmd+0x92>
 8002eca:	2180      	movs	r1, #128	; 0x80
 8002ecc:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002ed0:	428c      	cmp	r4, r1
 8002ed2:	d022      	beq.n	8002f1a <DMA_Cmd+0x92>
 8002ed4:	f44f 6281 	mov.w	r2, #1032	; 0x408
 8002ed8:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8002edc:	4294      	cmp	r4, r2
 8002ede:	d01c      	beq.n	8002f1a <DMA_Cmd+0x92>
 8002ee0:	f240 431c 	movw	r3, #1052	; 0x41c
 8002ee4:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8002ee8:	429c      	cmp	r4, r3
 8002eea:	d016      	beq.n	8002f1a <DMA_Cmd+0x92>
 8002eec:	f44f 6086 	mov.w	r0, #1072	; 0x430
 8002ef0:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8002ef4:	4284      	cmp	r4, r0
 8002ef6:	d010      	beq.n	8002f1a <DMA_Cmd+0x92>
 8002ef8:	f240 4144 	movw	r1, #1092	; 0x444
 8002efc:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002f00:	428c      	cmp	r4, r1
 8002f02:	d00a      	beq.n	8002f1a <DMA_Cmd+0x92>
 8002f04:	f44f 628b 	mov.w	r2, #1112	; 0x458
 8002f08:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8002f0c:	4294      	cmp	r4, r2
 8002f0e:	d004      	beq.n	8002f1a <DMA_Cmd+0x92>
 8002f10:	480c      	ldr	r0, [pc, #48]	; (8002f44 <DMA_Cmd+0xbc>)
 8002f12:	f240 1129 	movw	r1, #297	; 0x129
 8002f16:	f7fd f9e7 	bl	80002e8 <assert_failed>
 8002f1a:	2d01      	cmp	r5, #1
 8002f1c:	d909      	bls.n	8002f32 <DMA_Cmd+0xaa>
 8002f1e:	4809      	ldr	r0, [pc, #36]	; (8002f44 <DMA_Cmd+0xbc>)
 8002f20:	f44f 7195 	mov.w	r1, #298	; 0x12a
 8002f24:	f7fd f9e0 	bl	80002e8 <assert_failed>
 8002f28:	6821      	ldr	r1, [r4, #0]
 8002f2a:	f041 0201 	orr.w	r2, r1, #1
 8002f2e:	6022      	str	r2, [r4, #0]
 8002f30:	bd38      	pop	{r3, r4, r5, pc}
 8002f32:	2d00      	cmp	r5, #0
 8002f34:	d1f8      	bne.n	8002f28 <DMA_Cmd+0xa0>
 8002f36:	6820      	ldr	r0, [r4, #0]
 8002f38:	f64f 73fe 	movw	r3, #65534	; 0xfffe
 8002f3c:	4003      	ands	r3, r0
 8002f3e:	6023      	str	r3, [r4, #0]
 8002f40:	bd38      	pop	{r3, r4, r5, pc}
 8002f42:	bf00      	nop
 8002f44:	08008d18 	.word	0x08008d18

08002f48 <NVIC_PriorityGroupConfig>:
 8002f48:	f5b0 6fe0 	cmp.w	r0, #1792	; 0x700
 8002f4c:	b510      	push	{r4, lr}
 8002f4e:	4604      	mov	r4, r0
 8002f50:	d00f      	beq.n	8002f72 <NVIC_PriorityGroupConfig+0x2a>
 8002f52:	f5b0 6fc0 	cmp.w	r0, #1536	; 0x600
 8002f56:	d00c      	beq.n	8002f72 <NVIC_PriorityGroupConfig+0x2a>
 8002f58:	f5b0 6fa0 	cmp.w	r0, #1280	; 0x500
 8002f5c:	d009      	beq.n	8002f72 <NVIC_PriorityGroupConfig+0x2a>
 8002f5e:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
 8002f62:	d006      	beq.n	8002f72 <NVIC_PriorityGroupConfig+0x2a>
 8002f64:	f5b0 7f40 	cmp.w	r0, #768	; 0x300
 8002f68:	d003      	beq.n	8002f72 <NVIC_PriorityGroupConfig+0x2a>
 8002f6a:	4807      	ldr	r0, [pc, #28]	; (8002f88 <NVIC_PriorityGroupConfig+0x40>)
 8002f6c:	2163      	movs	r1, #99	; 0x63
 8002f6e:	f7fd f9bb 	bl	80002e8 <assert_failed>
 8002f72:	f044 60bf 	orr.w	r0, r4, #100139008	; 0x5f80000
 8002f76:	f44f 436d 	mov.w	r3, #60672	; 0xed00
 8002f7a:	f440 3400 	orr.w	r4, r0, #131072	; 0x20000
 8002f7e:	f2ce 0300 	movt	r3, #57344	; 0xe000
 8002f82:	60dc      	str	r4, [r3, #12]
 8002f84:	bd10      	pop	{r4, pc}
 8002f86:	bf00      	nop
 8002f88:	08008d54 	.word	0x08008d54

08002f8c <NVIC_Init>:
 8002f8c:	b538      	push	{r3, r4, r5, lr}
 8002f8e:	78c3      	ldrb	r3, [r0, #3]
 8002f90:	4604      	mov	r4, r0
 8002f92:	2b01      	cmp	r3, #1
 8002f94:	d903      	bls.n	8002f9e <NVIC_Init+0x12>
 8002f96:	4828      	ldr	r0, [pc, #160]	; (8003038 <NVIC_Init+0xac>)
 8002f98:	2175      	movs	r1, #117	; 0x75
 8002f9a:	f7fd f9a5 	bl	80002e8 <assert_failed>
 8002f9e:	7860      	ldrb	r0, [r4, #1]
 8002fa0:	280f      	cmp	r0, #15
 8002fa2:	d843      	bhi.n	800302c <NVIC_Init+0xa0>
 8002fa4:	78a1      	ldrb	r1, [r4, #2]
 8002fa6:	290f      	cmp	r1, #15
 8002fa8:	d83b      	bhi.n	8003022 <NVIC_Init+0x96>
 8002faa:	78e2      	ldrb	r2, [r4, #3]
 8002fac:	b972      	cbnz	r2, 8002fcc <NVIC_Init+0x40>
 8002fae:	7823      	ldrb	r3, [r4, #0]
 8002fb0:	2101      	movs	r1, #1
 8002fb2:	f003 001f 	and.w	r0, r3, #31
 8002fb6:	fa01 f100 	lsl.w	r1, r1, r0
 8002fba:	095a      	lsrs	r2, r3, #5
 8002fbc:	f44f 4361 	mov.w	r3, #57600	; 0xe100
 8002fc0:	f2ce 0300 	movt	r3, #57344	; 0xe000
 8002fc4:	3220      	adds	r2, #32
 8002fc6:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8002fca:	bd38      	pop	{r3, r4, r5, pc}
 8002fcc:	f44f 456d 	mov.w	r5, #60672	; 0xed00
 8002fd0:	f2ce 0500 	movt	r5, #57344	; 0xe000
 8002fd4:	68e9      	ldr	r1, [r5, #12]
 8002fd6:	7860      	ldrb	r0, [r4, #1]
 8002fd8:	43ca      	mvns	r2, r1
 8002fda:	f3c2 2302 	ubfx	r3, r2, #8, #3
 8002fde:	210f      	movs	r1, #15
 8002fe0:	f1c3 0504 	rsb	r5, r3, #4
 8002fe4:	fa21 f203 	lsr.w	r2, r1, r3
 8002fe8:	fa00 f005 	lsl.w	r0, r0, r5
 8002fec:	78a5      	ldrb	r5, [r4, #2]
 8002fee:	7823      	ldrb	r3, [r4, #0]
 8002ff0:	ea02 0105 	and.w	r1, r2, r5
 8002ff4:	4301      	orrs	r1, r0
 8002ff6:	0108      	lsls	r0, r1, #4
 8002ff8:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8002ffc:	b2c2      	uxtb	r2, r0
 8002ffe:	f503 4161 	add.w	r1, r3, #57600	; 0xe100
 8003002:	f881 2300 	strb.w	r2, [r1, #768]	; 0x300
 8003006:	7820      	ldrb	r0, [r4, #0]
 8003008:	2101      	movs	r1, #1
 800300a:	f000 031f 	and.w	r3, r0, #31
 800300e:	fa01 f103 	lsl.w	r1, r1, r3
 8003012:	f44f 4361 	mov.w	r3, #57600	; 0xe100
 8003016:	f2ce 0300 	movt	r3, #57344	; 0xe000
 800301a:	0942      	lsrs	r2, r0, #5
 800301c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8003020:	bd38      	pop	{r3, r4, r5, pc}
 8003022:	4805      	ldr	r0, [pc, #20]	; (8003038 <NVIC_Init+0xac>)
 8003024:	2177      	movs	r1, #119	; 0x77
 8003026:	f7fd f95f 	bl	80002e8 <assert_failed>
 800302a:	e7be      	b.n	8002faa <NVIC_Init+0x1e>
 800302c:	4802      	ldr	r0, [pc, #8]	; (8003038 <NVIC_Init+0xac>)
 800302e:	2176      	movs	r1, #118	; 0x76
 8003030:	f7fd f95a 	bl	80002e8 <assert_failed>
 8003034:	e7b6      	b.n	8002fa4 <NVIC_Init+0x18>
 8003036:	bf00      	nop
 8003038:	08008d54 	.word	0x08008d54

0800303c <NVIC_SetVectorTable>:
 800303c:	f1b0 5f00 	cmp.w	r0, #536870912	; 0x20000000
 8003040:	b538      	push	{r3, r4, r5, lr}
 8003042:	4604      	mov	r4, r0
 8003044:	460d      	mov	r5, r1
 8003046:	d006      	beq.n	8003056 <NVIC_SetVectorTable+0x1a>
 8003048:	f1b0 6f00 	cmp.w	r0, #134217728	; 0x8000000
 800304c:	d003      	beq.n	8003056 <NVIC_SetVectorTable+0x1a>
 800304e:	480c      	ldr	r0, [pc, #48]	; (8003080 <NVIC_SetVectorTable+0x44>)
 8003050:	219f      	movs	r1, #159	; 0x9f
 8003052:	f7fd f949 	bl	80002e8 <assert_failed>
 8003056:	f64f 73fe 	movw	r3, #65534	; 0xfffe
 800305a:	f2c0 030f 	movt	r3, #15
 800305e:	429d      	cmp	r5, r3
 8003060:	d903      	bls.n	800306a <NVIC_SetVectorTable+0x2e>
 8003062:	4807      	ldr	r0, [pc, #28]	; (8003080 <NVIC_SetVectorTable+0x44>)
 8003064:	21a0      	movs	r1, #160	; 0xa0
 8003066:	f7fd f93f 	bl	80002e8 <assert_failed>
 800306a:	f025 4060 	bic.w	r0, r5, #3758096384	; 0xe0000000
 800306e:	f020 057f 	bic.w	r5, r0, #127	; 0x7f
 8003072:	f44f 416d 	mov.w	r1, #60672	; 0xed00
 8003076:	432c      	orrs	r4, r5
 8003078:	f2ce 0100 	movt	r1, #57344	; 0xe000
 800307c:	608c      	str	r4, [r1, #8]
 800307e:	bd38      	pop	{r3, r4, r5, pc}
 8003080:	08008d54 	.word	0x08008d54

08003084 <Reset_Handler>:
 8003084:	2100      	movs	r1, #0
 8003086:	f000 b804 	b.w	8003092 <LoopCopyDataInit>

0800308a <CopyDataInit>:
 800308a:	4b0c      	ldr	r3, [pc, #48]	; (80030bc <LoopFillZerobss+0x12>)
 800308c:	585b      	ldr	r3, [r3, r1]
 800308e:	5043      	str	r3, [r0, r1]
 8003090:	3104      	adds	r1, #4

08003092 <LoopCopyDataInit>:
 8003092:	480b      	ldr	r0, [pc, #44]	; (80030c0 <LoopFillZerobss+0x16>)
 8003094:	4b0b      	ldr	r3, [pc, #44]	; (80030c4 <LoopFillZerobss+0x1a>)
 8003096:	1842      	adds	r2, r0, r1
 8003098:	429a      	cmp	r2, r3
 800309a:	f4ff aff6 	bcc.w	800308a <CopyDataInit>
 800309e:	4a0a      	ldr	r2, [pc, #40]	; (80030c8 <LoopFillZerobss+0x1e>)
 80030a0:	f000 b803 	b.w	80030aa <LoopFillZerobss>

080030a4 <FillZerobss>:
 80030a4:	2300      	movs	r3, #0
 80030a6:	f842 3b04 	str.w	r3, [r2], #4

080030aa <LoopFillZerobss>:
 80030aa:	4b08      	ldr	r3, [pc, #32]	; (80030cc <LoopFillZerobss+0x22>)
 80030ac:	429a      	cmp	r2, r3
 80030ae:	f4ff aff9 	bcc.w	80030a4 <FillZerobss>
 80030b2:	f7fd fc0d 	bl	80008d0 <SystemInit>
 80030b6:	f7fd f94b 	bl	8000350 <main>
 80030ba:	4770      	bx	lr
 80030bc:	08009d88 	.word	0x08009d88
 80030c0:	20000000 	.word	0x20000000
 80030c4:	20000304 	.word	0x20000304
 80030c8:	20000704 	.word	0x20000704
 80030cc:	20001b5c 	.word	0x20001b5c

080030d0 <ADC1_2_IRQHandler>:
 80030d0:	f7ff bffe 	b.w	80030d0 <ADC1_2_IRQHandler>

080030d4 <data_t_run>:
 80030d4:	f640 33cc 	movw	r3, #3020	; 0xbcc
 80030d8:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80030dc:	2201      	movs	r2, #1
 80030de:	f8c3 208c 	str.w	r2, [r3, #140]	; 0x8c
 80030e2:	4770      	bx	lr

080030e4 <data_t_stop>:
 80030e4:	f640 33cc 	movw	r3, #3020	; 0xbcc
 80030e8:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80030ec:	2200      	movs	r2, #0
 80030ee:	f8c3 208c 	str.w	r2, [r3, #140]	; 0x8c
 80030f2:	4770      	bx	lr

080030f4 <data_t_set_manual>:
 80030f4:	7803      	ldrb	r3, [r0, #0]
 80030f6:	2b79      	cmp	r3, #121	; 0x79
 80030f8:	d00b      	beq.n	8003112 <data_t_set_manual+0x1e>
 80030fa:	2b59      	cmp	r3, #89	; 0x59
 80030fc:	d009      	beq.n	8003112 <data_t_set_manual+0x1e>
 80030fe:	2b6e      	cmp	r3, #110	; 0x6e
 8003100:	d002      	beq.n	8003108 <data_t_set_manual+0x14>
 8003102:	2b4e      	cmp	r3, #78	; 0x4e
 8003104:	d000      	beq.n	8003108 <data_t_set_manual+0x14>
 8003106:	4770      	bx	lr
 8003108:	4804      	ldr	r0, [pc, #16]	; (800311c <data_t_set_manual+0x28>)
 800310a:	2200      	movs	r2, #0
 800310c:	f8c0 2080 	str.w	r2, [r0, #128]	; 0x80
 8003110:	4770      	bx	lr
 8003112:	4b02      	ldr	r3, [pc, #8]	; (800311c <data_t_set_manual+0x28>)
 8003114:	2101      	movs	r1, #1
 8003116:	f8c3 1080 	str.w	r1, [r3, #128]	; 0x80
 800311a:	4770      	bx	lr
 800311c:	20000bcc 	.word	0x20000bcc

08003120 <data_t_sample>:
 8003120:	b4f0      	push	{r4, r5, r6, r7}
 8003122:	4c33      	ldr	r4, [pc, #204]	; (80031f0 <data_t_sample+0xd0>)
 8003124:	6fe3      	ldr	r3, [r4, #124]	; 0x7c
 8003126:	b933      	cbnz	r3, 8003136 <data_t_sample+0x16>
 8003128:	f8b4 204a 	ldrh.w	r2, [r4, #74]	; 0x4a
 800312c:	f640 71fe 	movw	r1, #4094	; 0xffe
 8003130:	b290      	uxth	r0, r2
 8003132:	4288      	cmp	r0, r1
 8003134:	d949      	bls.n	80031ca <data_t_sample+0xaa>
 8003136:	6fe6      	ldr	r6, [r4, #124]	; 0x7c
 8003138:	f04f 0c00 	mov.w	ip, #0
 800313c:	b2f6      	uxtb	r6, r6
 800313e:	492d      	ldr	r1, [pc, #180]	; (80031f4 <data_t_sample+0xd4>)
 8003140:	2500      	movs	r5, #0
 8003142:	f501 77c8 	add.w	r7, r1, #400	; 0x190
 8003146:	3624      	adds	r6, #36	; 0x24
 8003148:	f834 2016 	ldrh.w	r2, [r4, r6, lsl #1]
 800314c:	f834 3016 	ldrh.w	r3, [r4, r6, lsl #1]
 8003150:	0510      	lsls	r0, r2, #20
 8003152:	0d02      	lsrs	r2, r0, #20
 8003154:	804a      	strh	r2, [r1, #2]
 8003156:	1c88      	adds	r0, r1, #2
 8003158:	051b      	lsls	r3, r3, #20
 800315a:	3104      	adds	r1, #4
 800315c:	0d1b      	lsrs	r3, r3, #20
 800315e:	18ad      	adds	r5, r5, r2
 8003160:	42b9      	cmp	r1, r7
 8003162:	8043      	strh	r3, [r0, #2]
 8003164:	4a22      	ldr	r2, [pc, #136]	; (80031f0 <data_t_sample+0xd0>)
 8003166:	441d      	add	r5, r3
 8003168:	d1ee      	bne.n	8003148 <data_t_sample+0x28>
 800316a:	f248 501f 	movw	r0, #34079	; 0x851f
 800316e:	f2c5 10eb 	movt	r0, #20971	; 0x51eb
 8003172:	fba0 1305 	umull	r1, r3, r0, r5
 8003176:	6f91      	ldr	r1, [r2, #120]	; 0x78
 8003178:	f1bc 0f00 	cmp.w	ip, #0
 800317c:	d12f      	bne.n	80031de <data_t_sample+0xbe>
 800317e:	3116      	adds	r1, #22
 8003180:	f3c3 108f 	ubfx	r0, r3, #6, #16
 8003184:	eb02 0281 	add.w	r2, r2, r1, lsl #2
 8003188:	80d0      	strh	r0, [r2, #6]
 800318a:	f8d4 2080 	ldr.w	r2, [r4, #128]	; 0x80
 800318e:	4b18      	ldr	r3, [pc, #96]	; (80031f0 <data_t_sample+0xd0>)
 8003190:	2a01      	cmp	r2, #1
 8003192:	d01d      	beq.n	80031d0 <data_t_sample+0xb0>
 8003194:	6f98      	ldr	r0, [r3, #120]	; 0x78
 8003196:	6c19      	ldr	r1, [r3, #64]	; 0x40
 8003198:	3016      	adds	r0, #22
 800319a:	b28a      	uxth	r2, r1
 800319c:	eb03 0380 	add.w	r3, r3, r0, lsl #2
 80031a0:	809a      	strh	r2, [r3, #4]
 80031a2:	6fa3      	ldr	r3, [r4, #120]	; 0x78
 80031a4:	1c58      	adds	r0, r3, #1
 80031a6:	67a0      	str	r0, [r4, #120]	; 0x78
 80031a8:	6fa1      	ldr	r1, [r4, #120]	; 0x78
 80031aa:	2907      	cmp	r1, #7
 80031ac:	d003      	beq.n	80031b6 <data_t_sample+0x96>
 80031ae:	4a10      	ldr	r2, [pc, #64]	; (80031f0 <data_t_sample+0xd0>)
 80031b0:	f8d2 308c 	ldr.w	r3, [r2, #140]	; 0x8c
 80031b4:	b923      	cbnz	r3, 80031c0 <data_t_sample+0xa0>
 80031b6:	2000      	movs	r0, #0
 80031b8:	2101      	movs	r1, #1
 80031ba:	67a0      	str	r0, [r4, #120]	; 0x78
 80031bc:	f8c4 1088 	str.w	r1, [r4, #136]	; 0x88
 80031c0:	2201      	movs	r2, #1
 80031c2:	f8c4 2084 	str.w	r2, [r4, #132]	; 0x84
 80031c6:	bcf0      	pop	{r4, r5, r6, r7}
 80031c8:	4770      	bx	lr
 80031ca:	2601      	movs	r6, #1
 80031cc:	46b4      	mov	ip, r6
 80031ce:	e7b6      	b.n	800313e <data_t_sample+0x1e>
 80031d0:	6f98      	ldr	r0, [r3, #120]	; 0x78
 80031d2:	2200      	movs	r2, #0
 80031d4:	3016      	adds	r0, #22
 80031d6:	eb03 0180 	add.w	r1, r3, r0, lsl #2
 80031da:	808a      	strh	r2, [r1, #4]
 80031dc:	e7e1      	b.n	80031a2 <data_t_sample+0x82>
 80031de:	f3c3 138e 	ubfx	r3, r3, #6, #15
 80031e2:	3116      	adds	r1, #22
 80031e4:	f443 4000 	orr.w	r0, r3, #32768	; 0x8000
 80031e8:	eb02 0181 	add.w	r1, r2, r1, lsl #2
 80031ec:	80c8      	strh	r0, [r1, #6]
 80031ee:	e7cc      	b.n	800318a <data_t_sample+0x6a>
 80031f0:	20000bcc 	.word	0x20000bcc
 80031f4:	20000efe 	.word	0x20000efe

080031f8 <data_t_format>:
 80031f8:	4b0e      	ldr	r3, [pc, #56]	; (8003234 <data_t_format+0x3c>)
 80031fa:	f8d3 208c 	ldr.w	r2, [r3, #140]	; 0x8c
 80031fe:	2a01      	cmp	r2, #1
 8003200:	d00b      	beq.n	800321a <data_t_format+0x22>
 8003202:	1cd8      	adds	r0, r3, #3
 8003204:	2200      	movs	r2, #0
 8003206:	3216      	adds	r2, #22
 8003208:	eb03 0382 	add.w	r3, r3, r2, lsl #2
 800320c:	889a      	ldrh	r2, [r3, #4]
 800320e:	88db      	ldrh	r3, [r3, #6]
 8003210:	4909      	ldr	r1, [pc, #36]	; (8003238 <data_t_format+0x40>)
 8003212:	b292      	uxth	r2, r2
 8003214:	b29b      	uxth	r3, r3
 8003216:	f003 bd1f 	b.w	8006c58 <rt_sprintf>
 800321a:	6f98      	ldr	r0, [r3, #120]	; 0x78
 800321c:	b128      	cbz	r0, 800322a <data_t_format+0x32>
 800321e:	6f99      	ldr	r1, [r3, #120]	; 0x78
 8003220:	1e4a      	subs	r2, r1, #1
 8003222:	eb03 00c2 	add.w	r0, r3, r2, lsl #3
 8003226:	3003      	adds	r0, #3
 8003228:	e7ed      	b.n	8003206 <data_t_format+0xe>
 800322a:	f103 0033 	add.w	r0, r3, #51	; 0x33
 800322e:	2206      	movs	r2, #6
 8003230:	e7e9      	b.n	8003206 <data_t_format+0xe>
 8003232:	bf00      	nop
 8003234:	20000bcc 	.word	0x20000bcc
 8003238:	08008d84 	.word	0x08008d84

0800323c <get_temp>:
 800323c:	b508      	push	{r3, lr}
 800323e:	f001 fa93 	bl	8004768 <get_temp_>
 8003242:	f648 5188 	movw	r1, #36232	; 0x8d88
 8003246:	4602      	mov	r2, r0
 8003248:	f6c0 0100 	movt	r1, #2048	; 0x800
 800324c:	4805      	ldr	r0, [pc, #20]	; (8003264 <get_temp+0x28>)
 800324e:	f003 fd03 	bl	8006c58 <rt_sprintf>
 8003252:	f640 30cc 	movw	r0, #3020	; 0xbcc
 8003256:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800325a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800325e:	f003 bd21 	b.w	8006ca4 <rt_kprintf>
 8003262:	bf00      	nop
 8003264:	20000bcf 	.word	0x20000bcf

08003268 <data_t_reset>:
 8003268:	2200      	movs	r2, #0
 800326a:	f640 33cc 	movw	r3, #3020	; 0xbcc
 800326e:	f44f 6080 	mov.w	r0, #1024	; 0x400
 8003272:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003276:	f2c4 0000 	movt	r0, #16384	; 0x4000
 800327a:	4611      	mov	r1, r2
 800327c:	641a      	str	r2, [r3, #64]	; 0x40
 800327e:	679a      	str	r2, [r3, #120]	; 0x78
 8003280:	f7fe bc92 	b.w	8001ba8 <TIM_SetCounter>

08003284 <data_t_init>:
 8003284:	b538      	push	{r3, r4, r5, lr}
 8003286:	f243 3049 	movw	r0, #13129	; 0x3349
 800328a:	f640 34cc 	movw	r4, #3020	; 0xbcc
 800328e:	f243 3361 	movw	r3, #13153	; 0x3361
 8003292:	f243 01d5 	movw	r1, #12501	; 0x30d5
 8003296:	f243 02e5 	movw	r2, #12517	; 0x30e5
 800329a:	f2c2 0400 	movt	r4, #8192	; 0x2000
 800329e:	f6c0 0300 	movt	r3, #2048	; 0x800
 80032a2:	f6c0 0000 	movt	r0, #2048	; 0x800
 80032a6:	f6c0 0100 	movt	r1, #2048	; 0x800
 80032aa:	f6c0 0200 	movt	r2, #2048	; 0x800
 80032ae:	f8c4 30b0 	str.w	r3, [r4, #176]	; 0xb0
 80032b2:	f8c4 00a0 	str.w	r0, [r4, #160]	; 0xa0
 80032b6:	f8c4 1098 	str.w	r1, [r4, #152]	; 0x98
 80032ba:	f8c4 209c 	str.w	r2, [r4, #156]	; 0x9c
 80032be:	f243 3355 	movw	r3, #13141	; 0x3355
 80032c2:	f243 10f9 	movw	r0, #12793	; 0x31f9
 80032c6:	f243 1121 	movw	r1, #12577	; 0x3121
 80032ca:	f243 2269 	movw	r2, #12905	; 0x3269
 80032ce:	2500      	movs	r5, #0
 80032d0:	f6c0 0300 	movt	r3, #2048	; 0x800
 80032d4:	f6c0 0000 	movt	r0, #2048	; 0x800
 80032d8:	f6c0 0100 	movt	r1, #2048	; 0x800
 80032dc:	f6c0 0200 	movt	r2, #2048	; 0x800
 80032e0:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
 80032e4:	f8c4 00ac 	str.w	r0, [r4, #172]	; 0xac
 80032e8:	f8c4 10a4 	str.w	r1, [r4, #164]	; 0xa4
 80032ec:	f8c4 2094 	str.w	r2, [r4, #148]	; 0x94
 80032f0:	67e5      	str	r5, [r4, #124]	; 0x7c
 80032f2:	f7ff ffb9 	bl	8003268 <data_t_reset>
 80032f6:	2301      	movs	r3, #1
 80032f8:	2030      	movs	r0, #48	; 0x30
 80032fa:	2178      	movs	r1, #120	; 0x78
 80032fc:	223a      	movs	r2, #58	; 0x3a
 80032fe:	6463      	str	r3, [r4, #68]	; 0x44
 8003300:	7020      	strb	r0, [r4, #0]
 8003302:	f8c4 5084 	str.w	r5, [r4, #132]	; 0x84
 8003306:	7061      	strb	r1, [r4, #1]
 8003308:	f8c4 5088 	str.w	r5, [r4, #136]	; 0x88
 800330c:	70a2      	strb	r2, [r4, #2]
 800330e:	f8c4 508c 	str.w	r5, [r4, #140]	; 0x8c
 8003312:	f8c4 5080 	str.w	r5, [r4, #128]	; 0x80
 8003316:	bd38      	pop	{r3, r4, r5, pc}

08003318 <data_t_set_channel>:
 8003318:	b508      	push	{r3, lr}
 800331a:	f005 fb03 	bl	8008924 <atoi>
 800331e:	f640 33cc 	movw	r3, #3020	; 0xbcc
 8003322:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003326:	67d8      	str	r0, [r3, #124]	; 0x7c
 8003328:	bd08      	pop	{r3, pc}
 800332a:	bf00      	nop

0800332c <data_t_set_interval>:
 800332c:	b508      	push	{r3, lr}
 800332e:	f005 faf9 	bl	8008924 <atoi>
 8003332:	f640 33cc 	movw	r3, #3020	; 0xbcc
 8003336:	b280      	uxth	r0, r0
 8003338:	f640 32b8 	movw	r2, #3000	; 0xbb8
 800333c:	fb92 f1f0 	sdiv	r1, r2, r0
 8003340:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003344:	6459      	str	r1, [r3, #68]	; 0x44
 8003346:	bd08      	pop	{r3, pc}

08003348 <data_t_cfg>:
 8003348:	f240 0174 	movw	r1, #116	; 0x74
 800334c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003350:	f000 bb46 	b.w	80039e0 <deal_cmd__>

08003354 <data_t_upload>:
 8003354:	f640 30cc 	movw	r0, #3020	; 0xbcc
 8003358:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800335c:	f001 bfe0 	b.w	8005320 <print2usb>

08003360 <data_t_service>:
 8003360:	b538      	push	{r3, r4, r5, lr}
 8003362:	4c0a      	ldr	r4, [pc, #40]	; (800338c <data_t_service+0x2c>)
 8003364:	f8d4 3084 	ldr.w	r3, [r4, #132]	; 0x84
 8003368:	b903      	cbnz	r3, 800336c <data_t_service+0xc>
 800336a:	bd38      	pop	{r3, r4, r5, pc}
 800336c:	2500      	movs	r5, #0
 800336e:	f8c4 5084 	str.w	r5, [r4, #132]	; 0x84
 8003372:	f8d4 00ac 	ldr.w	r0, [r4, #172]	; 0xac
 8003376:	4780      	blx	r0
 8003378:	f8d4 1088 	ldr.w	r1, [r4, #136]	; 0x88
 800337c:	2901      	cmp	r1, #1
 800337e:	d1f4      	bne.n	800336a <data_t_service+0xa>
 8003380:	f8c4 5088 	str.w	r5, [r4, #136]	; 0x88
 8003384:	f8d4 20a8 	ldr.w	r2, [r4, #168]	; 0xa8
 8003388:	4790      	blx	r2
 800338a:	e7ee      	b.n	800336a <data_t_service+0xa>
 800338c:	20000bcc 	.word	0x20000bcc

08003390 <delay_loop>:
 8003390:	b168      	cbz	r0, 80033ae <delay_loop+0x1e>
 8003392:	1e43      	subs	r3, r0, #1
 8003394:	f003 0201 	and.w	r2, r3, #1
 8003398:	bf00      	nop
 800339a:	b14b      	cbz	r3, 80033b0 <delay_loop+0x20>
 800339c:	b112      	cbz	r2, 80033a4 <delay_loop+0x14>
 800339e:	bf00      	nop
 80033a0:	3b01      	subs	r3, #1
 80033a2:	d006      	beq.n	80033b2 <delay_loop+0x22>
 80033a4:	bf00      	nop
 80033a6:	1e58      	subs	r0, r3, #1
 80033a8:	bf00      	nop
 80033aa:	1e43      	subs	r3, r0, #1
 80033ac:	d1fa      	bne.n	80033a4 <delay_loop+0x14>
 80033ae:	4770      	bx	lr
 80033b0:	4770      	bx	lr
 80033b2:	4770      	bx	lr

080033b4 <set_SW>:
 80033b4:	2901      	cmp	r1, #1
 80033b6:	d00a      	beq.n	80033ce <set_SW+0x1a>
 80033b8:	2101      	movs	r1, #1
 80033ba:	fa01 f100 	lsl.w	r1, r1, r0
 80033be:	4b08      	ldr	r3, [pc, #32]	; (80033e0 <set_SW+0x2c>)
 80033c0:	781a      	ldrb	r2, [r3, #0]
 80033c2:	ea22 0101 	bic.w	r1, r2, r1
 80033c6:	7019      	strb	r1, [r3, #0]
 80033c8:	4806      	ldr	r0, [pc, #24]	; (80033e4 <set_SW+0x30>)
 80033ca:	f000 bf4d 	b.w	8004268 <write_sport>
 80033ce:	fa01 f100 	lsl.w	r1, r1, r0
 80033d2:	4803      	ldr	r0, [pc, #12]	; (80033e0 <set_SW+0x2c>)
 80033d4:	7803      	ldrb	r3, [r0, #0]
 80033d6:	4319      	orrs	r1, r3
 80033d8:	b2c9      	uxtb	r1, r1
 80033da:	7001      	strb	r1, [r0, #0]
 80033dc:	e7f4      	b.n	80033c8 <set_SW+0x14>
 80033de:	bf00      	nop
 80033e0:	20000030 	.word	0x20000030
 80033e4:	2000019c 	.word	0x2000019c

080033e8 <switch_485>:
 80033e8:	b508      	push	{r3, lr}
 80033ea:	2002      	movs	r0, #2
 80033ec:	2100      	movs	r1, #0
 80033ee:	f7ff ffe1 	bl	80033b4 <set_SW>
 80033f2:	2001      	movs	r0, #1
 80033f4:	4601      	mov	r1, r0
 80033f6:	f7ff ffdd 	bl	80033b4 <set_SW>
 80033fa:	2003      	movs	r0, #3
 80033fc:	2101      	movs	r1, #1
 80033fe:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8003402:	f7ff bfd7 	b.w	80033b4 <set_SW>
 8003406:	bf00      	nop

08003408 <switch_232>:
 8003408:	b508      	push	{r3, lr}
 800340a:	2002      	movs	r0, #2
 800340c:	2100      	movs	r1, #0
 800340e:	f7ff ffd1 	bl	80033b4 <set_SW>
 8003412:	2001      	movs	r0, #1
 8003414:	4601      	mov	r1, r0
 8003416:	f7ff ffcd 	bl	80033b4 <set_SW>
 800341a:	2003      	movs	r0, #3
 800341c:	2100      	movs	r1, #0
 800341e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8003422:	f7ff bfc7 	b.w	80033b4 <set_SW>
 8003426:	bf00      	nop

08003428 <switch_CAN>:
 8003428:	b508      	push	{r3, lr}
 800342a:	2002      	movs	r0, #2
 800342c:	2100      	movs	r1, #0
 800342e:	f7ff ffc1 	bl	80033b4 <set_SW>
 8003432:	2003      	movs	r0, #3
 8003434:	2101      	movs	r1, #1
 8003436:	f7ff ffbd 	bl	80033b4 <set_SW>
 800343a:	2001      	movs	r0, #1
 800343c:	2100      	movs	r1, #0
 800343e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8003442:	f7ff bfb7 	b.w	80033b4 <set_SW>
 8003446:	bf00      	nop

08003448 <switch_NTC>:
 8003448:	b508      	push	{r3, lr}
 800344a:	2002      	movs	r0, #2
 800344c:	2101      	movs	r1, #1
 800344e:	f7ff ffb1 	bl	80033b4 <set_SW>
 8003452:	2001      	movs	r0, #1
 8003454:	4601      	mov	r1, r0
 8003456:	f7ff ffad 	bl	80033b4 <set_SW>
 800345a:	2003      	movs	r0, #3
 800345c:	2101      	movs	r1, #1
 800345e:	f7ff ffa9 	bl	80033b4 <set_SW>
 8003462:	2000      	movs	r0, #0
 8003464:	2101      	movs	r1, #1
 8003466:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800346a:	f7ff bfa3 	b.w	80033b4 <set_SW>
 800346e:	bf00      	nop

08003470 <switch_R>:
 8003470:	b508      	push	{r3, lr}
 8003472:	2002      	movs	r0, #2
 8003474:	2101      	movs	r1, #1
 8003476:	f7ff ff9d 	bl	80033b4 <set_SW>
 800347a:	2001      	movs	r0, #1
 800347c:	4601      	mov	r1, r0
 800347e:	f7ff ff99 	bl	80033b4 <set_SW>
 8003482:	2003      	movs	r0, #3
 8003484:	2101      	movs	r1, #1
 8003486:	f7ff ff95 	bl	80033b4 <set_SW>
 800348a:	2000      	movs	r0, #0
 800348c:	4601      	mov	r1, r0
 800348e:	f7ff ff91 	bl	80033b4 <set_SW>
 8003492:	f240 0394 	movw	r3, #148	; 0x94
 8003496:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800349a:	6818      	ldr	r0, [r3, #0]
 800349c:	8899      	ldrh	r1, [r3, #4]
 800349e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80034a2:	f7ff b815 	b.w	80024d0 <GPIO_ResetBits>
 80034a6:	bf00      	nop

080034a8 <switch_UI>:
 80034a8:	b508      	push	{r3, lr}
 80034aa:	2002      	movs	r0, #2
 80034ac:	2101      	movs	r1, #1
 80034ae:	f7ff ff81 	bl	80033b4 <set_SW>
 80034b2:	2001      	movs	r0, #1
 80034b4:	4601      	mov	r1, r0
 80034b6:	f7ff ff7d 	bl	80033b4 <set_SW>
 80034ba:	2003      	movs	r0, #3
 80034bc:	2101      	movs	r1, #1
 80034be:	f7ff ff79 	bl	80033b4 <set_SW>
 80034c2:	2000      	movs	r0, #0
 80034c4:	4601      	mov	r1, r0
 80034c6:	f7ff ff75 	bl	80033b4 <set_SW>
 80034ca:	f240 0394 	movw	r3, #148	; 0x94
 80034ce:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80034d2:	6818      	ldr	r0, [r3, #0]
 80034d4:	8899      	ldrh	r1, [r3, #4]
 80034d6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80034da:	f7fe bfbd 	b.w	8002458 <GPIO_SetBits>
 80034de:	bf00      	nop

080034e0 <switch_RAT>:
 80034e0:	b510      	push	{r4, lr}
 80034e2:	7803      	ldrb	r3, [r0, #0]
 80034e4:	4604      	mov	r4, r0
 80034e6:	3b32      	subs	r3, #50	; 0x32
 80034e8:	2b23      	cmp	r3, #35	; 0x23
 80034ea:	d82d      	bhi.n	8003548 <switch_RAT+0x68>
 80034ec:	e8df f003 	tbb	[pc, r3]
 80034f0:	2c3d2c31 	.word	0x2c3d2c31
 80034f4:	2c2c2c2c 	.word	0x2c2c2c2c
 80034f8:	2c2c2c2c 	.word	0x2c2c2c2c
 80034fc:	2c2c2c2c 	.word	0x2c2c2c2c
 8003500:	2c2c162c 	.word	0x2c2c162c
 8003504:	122c2c2c 	.word	0x122c2c2c
 8003508:	2c2c2c2c 	.word	0x2c2c2c2c
 800350c:	2c2c2c1c 	.word	0x2c2c2c1c
 8003510:	122c2c28 	.word	0x122c2c28
 8003514:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8003518:	f7ff bfc6 	b.w	80034a8 <switch_UI>
 800351c:	f7ff ff84 	bl	8003428 <switch_CAN>
 8003520:	7862      	ldrb	r2, [r4, #1]
 8003522:	2a41      	cmp	r2, #65	; 0x41
 8003524:	d02d      	beq.n	8003582 <switch_RAT+0xa2>
 8003526:	bd10      	pop	{r4, pc}
 8003528:	f7ff ff8e 	bl	8003448 <switch_NTC>
 800352c:	7860      	ldrb	r0, [r4, #1]
 800352e:	2854      	cmp	r0, #84	; 0x54
 8003530:	d1f9      	bne.n	8003526 <switch_RAT+0x46>
 8003532:	78a1      	ldrb	r1, [r4, #2]
 8003534:	2943      	cmp	r1, #67	; 0x43
 8003536:	d1f6      	bne.n	8003526 <switch_RAT+0x46>
 8003538:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800353c:	f7ff bf84 	b.w	8003448 <switch_NTC>
 8003540:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8003544:	f7ff bf94 	b.w	8003470 <switch_R>
 8003548:	4811      	ldr	r0, [pc, #68]	; (8003590 <switch_RAT+0xb0>)
 800354a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800354e:	f003 bba9 	b.w	8006ca4 <rt_kprintf>
 8003552:	f7ff ff59 	bl	8003408 <switch_232>
 8003556:	7862      	ldrb	r2, [r4, #1]
 8003558:	2a33      	cmp	r2, #51	; 0x33
 800355a:	d1e4      	bne.n	8003526 <switch_RAT+0x46>
 800355c:	78a3      	ldrb	r3, [r4, #2]
 800355e:	2b32      	cmp	r3, #50	; 0x32
 8003560:	d1e1      	bne.n	8003526 <switch_RAT+0x46>
 8003562:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8003566:	f7ff bf4f 	b.w	8003408 <switch_232>
 800356a:	f7ff ff3d 	bl	80033e8 <switch_485>
 800356e:	7860      	ldrb	r0, [r4, #1]
 8003570:	2838      	cmp	r0, #56	; 0x38
 8003572:	d1d8      	bne.n	8003526 <switch_RAT+0x46>
 8003574:	78a1      	ldrb	r1, [r4, #2]
 8003576:	2935      	cmp	r1, #53	; 0x35
 8003578:	d1d5      	bne.n	8003526 <switch_RAT+0x46>
 800357a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800357e:	f7ff bf33 	b.w	80033e8 <switch_485>
 8003582:	78a3      	ldrb	r3, [r4, #2]
 8003584:	2b4e      	cmp	r3, #78	; 0x4e
 8003586:	d1ce      	bne.n	8003526 <switch_RAT+0x46>
 8003588:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800358c:	f7ff bf4c 	b.w	8003428 <switch_CAN>
 8003590:	08008d90 	.word	0x08008d90

08003594 <RCC_ADC_init>:
 8003594:	2001      	movs	r0, #1
 8003596:	b508      	push	{r3, lr}
 8003598:	4601      	mov	r1, r0
 800359a:	f7fd faab 	bl	8000af4 <RCC_AHBPeriphClockCmd>
 800359e:	2101      	movs	r1, #1
 80035a0:	f240 2005 	movw	r0, #517	; 0x205
 80035a4:	f7fd fad2 	bl	8000b4c <RCC_APB2PeriphClockCmd>
 80035a8:	2001      	movs	r0, #1
 80035aa:	2100      	movs	r1, #0
 80035ac:	f2c0 0002 	movt	r0, #2
 80035b0:	f7fd facc 	bl	8000b4c <RCC_APB2PeriphClockCmd>
 80035b4:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 80035b8:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80035bc:	f7fd fb8c 	bl	8000cd8 <ADC_DeInit>
 80035c0:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80035c4:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80035c8:	f7fd ba22 	b.w	8000a10 <RCC_ADCCLKConfig>

080035cc <swR_init>:
 80035cc:	b500      	push	{lr}
 80035ce:	2010      	movs	r0, #16
 80035d0:	b083      	sub	sp, #12
 80035d2:	2101      	movs	r1, #1
 80035d4:	f7fd faba 	bl	8000b4c <RCC_APB2PeriphClockCmd>
 80035d8:	f240 0394 	movw	r3, #148	; 0x94
 80035dc:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80035e0:	889a      	ldrh	r2, [r3, #4]
 80035e2:	6818      	ldr	r0, [r3, #0]
 80035e4:	f8ad 2004 	strh.w	r2, [sp, #4]
 80035e8:	2310      	movs	r3, #16
 80035ea:	2202      	movs	r2, #2
 80035ec:	a901      	add	r1, sp, #4
 80035ee:	f88d 3007 	strb.w	r3, [sp, #7]
 80035f2:	f88d 2006 	strb.w	r2, [sp, #6]
 80035f6:	f7fe fd2d 	bl	8002054 <GPIO_Init>
 80035fa:	b003      	add	sp, #12
 80035fc:	bd00      	pop	{pc}
 80035fe:	bf00      	nop

08003600 <GPIO_ADC_init>:
 8003600:	b530      	push	{r4, r5, lr}
 8003602:	f44f 6400 	mov.w	r4, #2048	; 0x800
 8003606:	b083      	sub	sp, #12
 8003608:	f2c4 0401 	movt	r4, #16385	; 0x4001
 800360c:	2500      	movs	r5, #0
 800360e:	2301      	movs	r3, #1
 8003610:	4620      	mov	r0, r4
 8003612:	a901      	add	r1, sp, #4
 8003614:	f8ad 3004 	strh.w	r3, [sp, #4]
 8003618:	f88d 5007 	strb.w	r5, [sp, #7]
 800361c:	f7fe fd1a 	bl	8002054 <GPIO_Init>
 8003620:	2202      	movs	r2, #2
 8003622:	4620      	mov	r0, r4
 8003624:	a901      	add	r1, sp, #4
 8003626:	f8ad 2004 	strh.w	r2, [sp, #4]
 800362a:	f88d 5007 	strb.w	r5, [sp, #7]
 800362e:	f7fe fd11 	bl	8002054 <GPIO_Init>
 8003632:	2304      	movs	r3, #4
 8003634:	4620      	mov	r0, r4
 8003636:	a901      	add	r1, sp, #4
 8003638:	f8ad 3004 	strh.w	r3, [sp, #4]
 800363c:	f88d 5007 	strb.w	r5, [sp, #7]
 8003640:	f7fe fd08 	bl	8002054 <GPIO_Init>
 8003644:	2208      	movs	r2, #8
 8003646:	4620      	mov	r0, r4
 8003648:	a901      	add	r1, sp, #4
 800364a:	f8ad 2004 	strh.w	r2, [sp, #4]
 800364e:	f88d 5007 	strb.w	r5, [sp, #7]
 8003652:	f7fe fcff 	bl	8002054 <GPIO_Init>
 8003656:	2310      	movs	r3, #16
 8003658:	4620      	mov	r0, r4
 800365a:	a901      	add	r1, sp, #4
 800365c:	f8ad 3004 	strh.w	r3, [sp, #4]
 8003660:	f88d 5007 	strb.w	r5, [sp, #7]
 8003664:	f7fe fcf6 	bl	8002054 <GPIO_Init>
 8003668:	2220      	movs	r2, #32
 800366a:	4620      	mov	r0, r4
 800366c:	a901      	add	r1, sp, #4
 800366e:	f8ad 2004 	strh.w	r2, [sp, #4]
 8003672:	f88d 5007 	strb.w	r5, [sp, #7]
 8003676:	f7fe fced 	bl	8002054 <GPIO_Init>
 800367a:	f000 fded 	bl	8004258 <pga_init>
 800367e:	b003      	add	sp, #12
 8003680:	bd30      	pop	{r4, r5, pc}
 8003682:	bf00      	nop

08003684 <DMA_ADC_init>:
 8003684:	b510      	push	{r4, lr}
 8003686:	2408      	movs	r4, #8
 8003688:	f2c4 0402 	movt	r4, #16386	; 0x4002
 800368c:	b08c      	sub	sp, #48	; 0x30
 800368e:	4620      	mov	r0, r4
 8003690:	f7ff fa18 	bl	8002ac4 <DMA_DeInit>
 8003694:	f242 424c 	movw	r2, #9292	; 0x244c
 8003698:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800369c:	9201      	str	r2, [sp, #4]
 800369e:	4a0f      	ldr	r2, [pc, #60]	; (80036dc <DMA_ADC_init+0x58>)
 80036a0:	2300      	movs	r3, #0
 80036a2:	9202      	str	r2, [sp, #8]
 80036a4:	2206      	movs	r2, #6
 80036a6:	9204      	str	r2, [sp, #16]
 80036a8:	2280      	movs	r2, #128	; 0x80
 80036aa:	9206      	str	r2, [sp, #24]
 80036ac:	f44f 7280 	mov.w	r2, #256	; 0x100
 80036b0:	9207      	str	r2, [sp, #28]
 80036b2:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80036b6:	9208      	str	r2, [sp, #32]
 80036b8:	2220      	movs	r2, #32
 80036ba:	a901      	add	r1, sp, #4
 80036bc:	4620      	mov	r0, r4
 80036be:	9209      	str	r2, [sp, #36]	; 0x24
 80036c0:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 80036c4:	9303      	str	r3, [sp, #12]
 80036c6:	9305      	str	r3, [sp, #20]
 80036c8:	920a      	str	r2, [sp, #40]	; 0x28
 80036ca:	930b      	str	r3, [sp, #44]	; 0x2c
 80036cc:	f7ff fb0c 	bl	8002ce8 <DMA_Init>
 80036d0:	4620      	mov	r0, r4
 80036d2:	2101      	movs	r1, #1
 80036d4:	f7ff fbd8 	bl	8002e88 <DMA_Cmd>
 80036d8:	b00c      	add	sp, #48	; 0x30
 80036da:	bd10      	pop	{r4, pc}
 80036dc:	20000c14 	.word	0x20000c14

080036e0 <adc_config>:
 80036e0:	b570      	push	{r4, r5, r6, lr}
 80036e2:	4b47      	ldr	r3, [pc, #284]	; (8003800 <adc_config+0x120>)
 80036e4:	4a47      	ldr	r2, [pc, #284]	; (8003804 <adc_config+0x124>)
 80036e6:	b086      	sub	sp, #24
 80036e8:	f8c3 2090 	str.w	r2, [r3, #144]	; 0x90
 80036ec:	f7ff fdca 	bl	8003284 <data_t_init>
 80036f0:	f7ff ff50 	bl	8003594 <RCC_ADC_init>
 80036f4:	f7ff ff84 	bl	8003600 <GPIO_ADC_init>
 80036f8:	f7ff ffc4 	bl	8003684 <DMA_ADC_init>
 80036fc:	f000 fdac 	bl	8004258 <pga_init>
 8003700:	f7ff ff64 	bl	80035cc <swR_init>
 8003704:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 8003708:	2401      	movs	r4, #1
 800370a:	2500      	movs	r5, #0
 800370c:	f44f 2260 	mov.w	r2, #917504	; 0xe0000
 8003710:	2606      	movs	r6, #6
 8003712:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8003716:	a901      	add	r1, sp, #4
 8003718:	9203      	str	r2, [sp, #12]
 800371a:	9501      	str	r5, [sp, #4]
 800371c:	f88d 4008 	strb.w	r4, [sp, #8]
 8003720:	f88d 4009 	strb.w	r4, [sp, #9]
 8003724:	9504      	str	r5, [sp, #16]
 8003726:	f88d 6014 	strb.w	r6, [sp, #20]
 800372a:	f7fd fb15 	bl	8000d58 <ADC_Init>
 800372e:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 8003732:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8003736:	4629      	mov	r1, r5
 8003738:	4622      	mov	r2, r4
 800373a:	2305      	movs	r3, #5
 800373c:	f7fd fcb2 	bl	80010a4 <ADC_RegularChannelConfig>
 8003740:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 8003744:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8003748:	4621      	mov	r1, r4
 800374a:	2202      	movs	r2, #2
 800374c:	2305      	movs	r3, #5
 800374e:	f7fd fca9 	bl	80010a4 <ADC_RegularChannelConfig>
 8003752:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 8003756:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800375a:	2102      	movs	r1, #2
 800375c:	2203      	movs	r2, #3
 800375e:	2305      	movs	r3, #5
 8003760:	f7fd fca0 	bl	80010a4 <ADC_RegularChannelConfig>
 8003764:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 8003768:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800376c:	2103      	movs	r1, #3
 800376e:	2204      	movs	r2, #4
 8003770:	2305      	movs	r3, #5
 8003772:	f7fd fc97 	bl	80010a4 <ADC_RegularChannelConfig>
 8003776:	2205      	movs	r2, #5
 8003778:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 800377c:	4613      	mov	r3, r2
 800377e:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8003782:	2104      	movs	r1, #4
 8003784:	f7fd fc8e 	bl	80010a4 <ADC_RegularChannelConfig>
 8003788:	2105      	movs	r1, #5
 800378a:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 800378e:	460b      	mov	r3, r1
 8003790:	4632      	mov	r2, r6
 8003792:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8003796:	f7fd fc85 	bl	80010a4 <ADC_RegularChannelConfig>
 800379a:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 800379e:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80037a2:	4621      	mov	r1, r4
 80037a4:	f7fd fba4 	bl	8000ef0 <ADC_DMACmd>
 80037a8:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 80037ac:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80037b0:	4621      	mov	r1, r4
 80037b2:	f7fd fb6d 	bl	8000e90 <ADC_Cmd>
 80037b6:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 80037ba:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80037be:	f7fd fbc1 	bl	8000f44 <ADC_ResetCalibration>
 80037c2:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 80037c6:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80037ca:	f7fd fbdb 	bl	8000f84 <ADC_GetResetCalibrationStatus>
 80037ce:	2800      	cmp	r0, #0
 80037d0:	d1f7      	bne.n	80037c2 <adc_config+0xe2>
 80037d2:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 80037d6:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80037da:	f7fd fbf3 	bl	8000fc4 <ADC_StartCalibration>
 80037de:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 80037e2:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80037e6:	f7fd fc0d 	bl	8001004 <ADC_GetCalibrationStatus>
 80037ea:	2800      	cmp	r0, #0
 80037ec:	d1f7      	bne.n	80037de <adc_config+0xfe>
 80037ee:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 80037f2:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80037f6:	2101      	movs	r1, #1
 80037f8:	f7fd fc24 	bl	8001044 <ADC_SoftwareStartConvCmd>
 80037fc:	b006      	add	sp, #24
 80037fe:	bd70      	pop	{r4, r5, r6, pc}
 8003800:	20000bcc 	.word	0x20000bcc
 8003804:	08003285 	.word	0x08003285

08003808 <ad_sample_thread_entry>:
 8003808:	b538      	push	{r3, r4, r5, lr}
 800380a:	4c07      	ldr	r4, [pc, #28]	; (8003828 <ad_sample_thread_entry+0x20>)
 800380c:	4625      	mov	r5, r4
 800380e:	e002      	b.n	8003816 <ad_sample_thread_entry+0xe>
 8003810:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8003812:	f004 f983 	bl	8007b1c <rt_thread_delay>
 8003816:	f8d4 308c 	ldr.w	r3, [r4, #140]	; 0x8c
 800381a:	2b01      	cmp	r3, #1
 800381c:	d1f8      	bne.n	8003810 <ad_sample_thread_entry+0x8>
 800381e:	f8d5 00a4 	ldr.w	r0, [r5, #164]	; 0xa4
 8003822:	4780      	blx	r0
 8003824:	e7f4      	b.n	8003810 <ad_sample_thread_entry+0x8>
 8003826:	bf00      	nop
 8003828:	20000bcc 	.word	0x20000bcc

0800382c <has_cmd_>:
 800382c:	f241 1310 	movw	r3, #4368	; 0x1110
 8003830:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003834:	f8d3 0208 	ldr.w	r0, [r3, #520]	; 0x208
 8003838:	f8d3 1414 	ldr.w	r1, [r3, #1044]	; 0x414
 800383c:	1840      	adds	r0, r0, r1
 800383e:	4770      	bx	lr

08003840 <append_>:
 8003840:	2901      	cmp	r1, #1
 8003842:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003846:	4604      	mov	r4, r0
 8003848:	d005      	beq.n	8003856 <append_+0x16>
 800384a:	2902      	cmp	r1, #2
 800384c:	d028      	beq.n	80038a0 <append_+0x60>
 800384e:	f04f 30ff 	mov.w	r0, #4294967295
 8003852:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8003856:	4918      	ldr	r1, [pc, #96]	; (80038b8 <append_+0x78>)
 8003858:	f8d1 2200 	ldr.w	r2, [r1, #512]	; 0x200
 800385c:	f501 7602 	add.w	r6, r1, #520	; 0x208
 8003860:	eb01 1542 	add.w	r5, r1, r2, lsl #5
 8003864:	f501 7700 	add.w	r7, r1, #512	; 0x200
 8003868:	4620      	mov	r0, r4
 800386a:	f002 ff89 	bl	8006780 <rt_strlen>
 800386e:	281f      	cmp	r0, #31
 8003870:	bfb4      	ite	lt
 8003872:	4680      	movlt	r8, r0
 8003874:	f04f 081f 	movge.w	r8, #31
 8003878:	4621      	mov	r1, r4
 800387a:	4642      	mov	r2, r8
 800387c:	4628      	mov	r0, r5
 800387e:	f005 f87f 	bl	8008980 <strncpy>
 8003882:	2300      	movs	r3, #0
 8003884:	f805 3008 	strb.w	r3, [r5, r8]
 8003888:	6839      	ldr	r1, [r7, #0]
 800388a:	2001      	movs	r0, #1
 800388c:	180a      	adds	r2, r1, r0
 800388e:	2a10      	cmp	r2, #16
 8003890:	bf08      	it	eq
 8003892:	2200      	moveq	r2, #0
 8003894:	603a      	str	r2, [r7, #0]
 8003896:	6833      	ldr	r3, [r6, #0]
 8003898:	1819      	adds	r1, r3, r0
 800389a:	6031      	str	r1, [r6, #0]
 800389c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80038a0:	4f05      	ldr	r7, [pc, #20]	; (80038b8 <append_+0x78>)
 80038a2:	f8d7 540c 	ldr.w	r5, [r7, #1036]	; 0x40c
 80038a6:	f207 4614 	addw	r6, r7, #1044	; 0x414
 80038aa:	eb07 1045 	add.w	r0, r7, r5, lsl #5
 80038ae:	f500 7503 	add.w	r5, r0, #524	; 0x20c
 80038b2:	f207 470c 	addw	r7, r7, #1036	; 0x40c
 80038b6:	e7d7      	b.n	8003868 <append_+0x28>
 80038b8:	20001110 	.word	0x20001110

080038bc <get_calibr>:
 80038bc:	b500      	push	{lr}
 80038be:	b0a1      	sub	sp, #132	; 0x84
 80038c0:	2100      	movs	r1, #0
 80038c2:	2280      	movs	r2, #128	; 0x80
 80038c4:	4668      	mov	r0, sp
 80038c6:	f002 fe73 	bl	80065b0 <rt_memset>
 80038ca:	f44f 4340 	mov.w	r3, #49152	; 0xc000
 80038ce:	f6c0 0303 	movt	r3, #2051	; 0x803
 80038d2:	f648 6118 	movw	r1, #36376	; 0x8e18
 80038d6:	681a      	ldr	r2, [r3, #0]
 80038d8:	f6c0 0100 	movt	r1, #2048	; 0x800
 80038dc:	4668      	mov	r0, sp
 80038de:	f003 f9bb 	bl	8006c58 <rt_sprintf>
 80038e2:	f241 0190 	movw	r1, #4240	; 0x1090
 80038e6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80038ea:	4668      	mov	r0, sp
 80038ec:	680a      	ldr	r2, [r1, #0]
 80038ee:	4790      	blx	r2
 80038f0:	b021      	add	sp, #132	; 0x84
 80038f2:	bd00      	pop	{pc}

080038f4 <flash>:
 80038f4:	b510      	push	{r4, lr}
 80038f6:	b0a0      	sub	sp, #128	; 0x80
 80038f8:	4604      	mov	r4, r0
 80038fa:	2100      	movs	r1, #0
 80038fc:	2280      	movs	r2, #128	; 0x80
 80038fe:	4668      	mov	r0, sp
 8003900:	f002 fe56 	bl	80065b0 <rt_memset>
 8003904:	f648 612c 	movw	r1, #36396	; 0x8e2c
 8003908:	4622      	mov	r2, r4
 800390a:	f6c0 0100 	movt	r1, #2048	; 0x800
 800390e:	4668      	mov	r0, sp
 8003910:	f003 f9a2 	bl	8006c58 <rt_sprintf>
 8003914:	f241 0390 	movw	r3, #4240	; 0x1090
 8003918:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800391c:	4668      	mov	r0, sp
 800391e:	6819      	ldr	r1, [r3, #0]
 8003920:	4788      	blx	r1
 8003922:	2001      	movs	r0, #1
 8003924:	b020      	add	sp, #128	; 0x80
 8003926:	bd10      	pop	{r4, pc}

08003928 <set_calibr>:
 8003928:	b510      	push	{r4, lr}
 800392a:	b0a0      	sub	sp, #128	; 0x80
 800392c:	2100      	movs	r1, #0
 800392e:	2280      	movs	r2, #128	; 0x80
 8003930:	4c0f      	ldr	r4, [pc, #60]	; (8003970 <set_calibr+0x48>)
 8003932:	4668      	mov	r0, sp
 8003934:	f002 fe3c 	bl	80065b0 <rt_memset>
 8003938:	f648 6138 	movw	r1, #36408	; 0x8e38
 800393c:	4622      	mov	r2, r4
 800393e:	f6c0 0100 	movt	r1, #2048	; 0x800
 8003942:	4668      	mov	r0, sp
 8003944:	f003 f988 	bl	8006c58 <rt_sprintf>
 8003948:	f241 0390 	movw	r3, #4240	; 0x1090
 800394c:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003950:	6819      	ldr	r1, [r3, #0]
 8003952:	4668      	mov	r0, sp
 8003954:	4788      	blx	r1
 8003956:	f7fe fae5 	bl	8001f24 <FLASH_UnlockBank1>
 800395a:	f44f 4070 	mov.w	r0, #61440	; 0xf000
 800395e:	4621      	mov	r1, r4
 8003960:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003964:	f7fe fb2e 	bl	8001fc4 <FLASH_ProgramWord>
 8003968:	f7fe faec 	bl	8001f44 <FLASH_LockBank1>
 800396c:	b020      	add	sp, #128	; 0x80
 800396e:	bd10      	pop	{r4, pc}
 8003970:	20000c14 	.word	0x20000c14

08003974 <console_srv>:
 8003974:	b510      	push	{r4, lr}
 8003976:	4601      	mov	r1, r0
 8003978:	4604      	mov	r4, r0
 800397a:	2207      	movs	r2, #7
 800397c:	4810      	ldr	r0, [pc, #64]	; (80039c0 <console_srv+0x4c>)
 800397e:	f005 f813 	bl	80089a8 <strncmp>
 8003982:	b1a0      	cbz	r0, 80039ae <console_srv+0x3a>
 8003984:	480f      	ldr	r0, [pc, #60]	; (80039c4 <console_srv+0x50>)
 8003986:	4621      	mov	r1, r4
 8003988:	2207      	movs	r2, #7
 800398a:	f005 f80d 	bl	80089a8 <strncmp>
 800398e:	b128      	cbz	r0, 800399c <console_srv+0x28>
 8003990:	4b0d      	ldr	r3, [pc, #52]	; (80039c8 <console_srv+0x54>)
 8003992:	480e      	ldr	r0, [pc, #56]	; (80039cc <console_srv+0x58>)
 8003994:	6819      	ldr	r1, [r3, #0]
 8003996:	4788      	blx	r1
 8003998:	2001      	movs	r0, #1
 800399a:	bd10      	pop	{r4, pc}
 800399c:	4c0a      	ldr	r4, [pc, #40]	; (80039c8 <console_srv+0x54>)
 800399e:	480c      	ldr	r0, [pc, #48]	; (80039d0 <console_srv+0x5c>)
 80039a0:	6822      	ldr	r2, [r4, #0]
 80039a2:	4790      	blx	r2
 80039a4:	480b      	ldr	r0, [pc, #44]	; (80039d4 <console_srv+0x60>)
 80039a6:	6060      	str	r0, [r4, #4]
 80039a8:	6020      	str	r0, [r4, #0]
 80039aa:	2001      	movs	r0, #1
 80039ac:	bd10      	pop	{r4, pc}
 80039ae:	4c06      	ldr	r4, [pc, #24]	; (80039c8 <console_srv+0x54>)
 80039b0:	4809      	ldr	r0, [pc, #36]	; (80039d8 <console_srv+0x64>)
 80039b2:	6823      	ldr	r3, [r4, #0]
 80039b4:	4798      	blx	r3
 80039b6:	4909      	ldr	r1, [pc, #36]	; (80039dc <console_srv+0x68>)
 80039b8:	2001      	movs	r0, #1
 80039ba:	6061      	str	r1, [r4, #4]
 80039bc:	6021      	str	r1, [r4, #0]
 80039be:	bd10      	pop	{r4, pc}
 80039c0:	08008e50 	.word	0x08008e50
 80039c4:	08008e78 	.word	0x08008e78
 80039c8:	20001090 	.word	0x20001090
 80039cc:	08008ea4 	.word	0x08008ea4
 80039d0:	08008e80 	.word	0x08008e80
 80039d4:	08006ca5 	.word	0x08006ca5
 80039d8:	08008e58 	.word	0x08008e58
 80039dc:	08005321 	.word	0x08005321

080039e0 <deal_cmd__>:
 80039e0:	b570      	push	{r4, r5, r6, lr}
 80039e2:	460c      	mov	r4, r1
 80039e4:	213a      	movs	r1, #58	; 0x3a
 80039e6:	4605      	mov	r5, r0
 80039e8:	f005 f80c 	bl	8008a04 <strchr>
 80039ec:	4606      	mov	r6, r0
 80039ee:	b1c0      	cbz	r0, 8003a22 <deal_cmd__+0x42>
 80039f0:	2300      	movs	r3, #0
 80039f2:	7003      	strb	r3, [r0, #0]
 80039f4:	6821      	ldr	r1, [r4, #0]
 80039f6:	b919      	cbnz	r1, 8003a00 <deal_cmd__+0x20>
 80039f8:	e00c      	b.n	8003a14 <deal_cmd__+0x34>
 80039fa:	f854 1f08 	ldr.w	r1, [r4, #8]!
 80039fe:	b149      	cbz	r1, 8003a14 <deal_cmd__+0x34>
 8003a00:	4628      	mov	r0, r5
 8003a02:	f004 ffbf 	bl	8008984 <strcmp>
 8003a06:	2800      	cmp	r0, #0
 8003a08:	d1f7      	bne.n	80039fa <deal_cmd__+0x1a>
 8003a0a:	6863      	ldr	r3, [r4, #4]
 8003a0c:	1c70      	adds	r0, r6, #1
 8003a0e:	4798      	blx	r3
 8003a10:	2001      	movs	r0, #1
 8003a12:	bd70      	pop	{r4, r5, r6, pc}
 8003a14:	4906      	ldr	r1, [pc, #24]	; (8003a30 <deal_cmd__+0x50>)
 8003a16:	4807      	ldr	r0, [pc, #28]	; (8003a34 <deal_cmd__+0x54>)
 8003a18:	680a      	ldr	r2, [r1, #0]
 8003a1a:	4790      	blx	r2
 8003a1c:	f04f 30ff 	mov.w	r0, #4294967295
 8003a20:	bd70      	pop	{r4, r5, r6, pc}
 8003a22:	4903      	ldr	r1, [pc, #12]	; (8003a30 <deal_cmd__+0x50>)
 8003a24:	4804      	ldr	r0, [pc, #16]	; (8003a38 <deal_cmd__+0x58>)
 8003a26:	680a      	ldr	r2, [r1, #0]
 8003a28:	4790      	blx	r2
 8003a2a:	f04f 30ff 	mov.w	r0, #4294967295
 8003a2e:	bd70      	pop	{r4, r5, r6, pc}
 8003a30:	20001090 	.word	0x20001090
 8003a34:	08008ed4 	.word	0x08008ed4
 8003a38:	08008ebc 	.word	0x08008ebc

08003a3c <deal_cmd_>:
 8003a3c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003a40:	4d24      	ldr	r5, [pc, #144]	; (8003ad4 <deal_cmd_+0x98>)
 8003a42:	4c25      	ldr	r4, [pc, #148]	; (8003ad8 <deal_cmd_+0x9c>)
 8003a44:	682a      	ldr	r2, [r5, #0]
 8003a46:	f8d4 3208 	ldr.w	r3, [r4, #520]	; 0x208
 8003a4a:	606a      	str	r2, [r5, #4]
 8003a4c:	b1db      	cbz	r3, 8003a86 <deal_cmd_+0x4a>
 8003a4e:	f8df 8090 	ldr.w	r8, [pc, #144]	; 8003ae0 <deal_cmd_+0xa4>
 8003a52:	4627      	mov	r7, r4
 8003a54:	2600      	movs	r6, #0
 8003a56:	f8d4 0204 	ldr.w	r0, [r4, #516]	; 0x204
 8003a5a:	4920      	ldr	r1, [pc, #128]	; (8003adc <deal_cmd_+0xa0>)
 8003a5c:	eb04 1040 	add.w	r0, r4, r0, lsl #5
 8003a60:	f8c5 8000 	str.w	r8, [r5]
 8003a64:	f7ff ffbc 	bl	80039e0 <deal_cmd__>
 8003a68:	f8d4 1204 	ldr.w	r1, [r4, #516]	; 0x204
 8003a6c:	f8d4 3208 	ldr.w	r3, [r4, #520]	; 0x208
 8003a70:	1c4a      	adds	r2, r1, #1
 8003a72:	2a10      	cmp	r2, #16
 8003a74:	bf08      	it	eq
 8003a76:	4632      	moveq	r2, r6
 8003a78:	1e58      	subs	r0, r3, #1
 8003a7a:	f8c7 2204 	str.w	r2, [r7, #516]	; 0x204
 8003a7e:	f8c4 0208 	str.w	r0, [r4, #520]	; 0x208
 8003a82:	2800      	cmp	r0, #0
 8003a84:	d1e7      	bne.n	8003a56 <deal_cmd_+0x1a>
 8003a86:	f8d4 1414 	ldr.w	r1, [r4, #1044]	; 0x414
 8003a8a:	b1e9      	cbz	r1, 8003ac8 <deal_cmd_+0x8c>
 8003a8c:	f8df 8050 	ldr.w	r8, [pc, #80]	; 8003ae0 <deal_cmd_+0xa4>
 8003a90:	4f11      	ldr	r7, [pc, #68]	; (8003ad8 <deal_cmd_+0x9c>)
 8003a92:	2600      	movs	r6, #0
 8003a94:	f8d4 3410 	ldr.w	r3, [r4, #1040]	; 0x410
 8003a98:	4910      	ldr	r1, [pc, #64]	; (8003adc <deal_cmd_+0xa0>)
 8003a9a:	eb04 1243 	add.w	r2, r4, r3, lsl #5
 8003a9e:	f502 7003 	add.w	r0, r2, #524	; 0x20c
 8003aa2:	f8c5 8000 	str.w	r8, [r5]
 8003aa6:	f7ff ff9b 	bl	80039e0 <deal_cmd__>
 8003aaa:	f8d4 0410 	ldr.w	r0, [r4, #1040]	; 0x410
 8003aae:	f8d4 1414 	ldr.w	r1, [r4, #1044]	; 0x414
 8003ab2:	1c42      	adds	r2, r0, #1
 8003ab4:	2a10      	cmp	r2, #16
 8003ab6:	bf08      	it	eq
 8003ab8:	4632      	moveq	r2, r6
 8003aba:	1e4b      	subs	r3, r1, #1
 8003abc:	f8c7 2410 	str.w	r2, [r7, #1040]	; 0x410
 8003ac0:	f8c4 3414 	str.w	r3, [r4, #1044]	; 0x414
 8003ac4:	2b00      	cmp	r3, #0
 8003ac6:	d1e5      	bne.n	8003a94 <deal_cmd_+0x58>
 8003ac8:	6868      	ldr	r0, [r5, #4]
 8003aca:	6028      	str	r0, [r5, #0]
 8003acc:	2000      	movs	r0, #0
 8003ace:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8003ad2:	bf00      	nop
 8003ad4:	20001090 	.word	0x20001090
 8003ad8:	20001110 	.word	0x20001110
 8003adc:	200000b4 	.word	0x200000b4
 8003ae0:	08005321 	.word	0x08005321

08003ae4 <vout_srv>:
 8003ae4:	f240 1144 	movw	r1, #324	; 0x144
 8003ae8:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003aec:	f7ff bf78 	b.w	80039e0 <deal_cmd__>

08003af0 <adc_srv>:
 8003af0:	f240 0134 	movw	r1, #52	; 0x34
 8003af4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003af8:	f7ff bf72 	b.w	80039e0 <deal_cmd__>

08003afc <motor_srv>:
 8003afc:	f240 01ec 	movw	r1, #236	; 0xec
 8003b00:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003b04:	f7ff bf6c 	b.w	80039e0 <deal_cmd__>

08003b08 <calib_srv>:
 8003b08:	f240 019c 	movw	r1, #156	; 0x9c
 8003b0c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003b10:	f7ff bf66 	b.w	80039e0 <deal_cmd__>

08003b14 <cmd_dealer_init>:
 8003b14:	b538      	push	{r3, r4, r5, lr}
 8003b16:	f241 1410 	movw	r4, #4368	; 0x1110
 8003b1a:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8003b1e:	f44f 7503 	mov.w	r5, #524	; 0x20c
 8003b22:	2100      	movs	r1, #0
 8003b24:	462a      	mov	r2, r5
 8003b26:	4620      	mov	r0, r4
 8003b28:	f002 fd42 	bl	80065b0 <rt_memset>
 8003b2c:	2100      	movs	r1, #0
 8003b2e:	1960      	adds	r0, r4, r5
 8003b30:	462a      	mov	r2, r5
 8003b32:	f002 fd3d 	bl	80065b0 <rt_memset>
 8003b36:	f643 032d 	movw	r3, #14381	; 0x382d
 8003b3a:	f643 203d 	movw	r0, #14909	; 0x3a3d
 8003b3e:	f643 0141 	movw	r1, #14401	; 0x3841
 8003b42:	f6c0 0300 	movt	r3, #2048	; 0x800
 8003b46:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003b4a:	f6c0 0100 	movt	r1, #2048	; 0x800
 8003b4e:	f8c4 041c 	str.w	r0, [r4, #1052]	; 0x41c
 8003b52:	f8c4 3418 	str.w	r3, [r4, #1048]	; 0x418
 8003b56:	f8c4 1420 	str.w	r1, [r4, #1056]	; 0x420
 8003b5a:	2000      	movs	r0, #0
 8003b5c:	bd38      	pop	{r3, r4, r5, pc}
 8003b5e:	bf00      	nop

08003b60 <cmd_thread_entry>:
 8003b60:	b538      	push	{r3, r4, r5, lr}
 8003b62:	f7ff ffd7 	bl	8003b14 <cmd_dealer_init>
 8003b66:	f000 f857 	bl	8003c18 <hardware_init>
 8003b6a:	4c0a      	ldr	r4, [pc, #40]	; (8003b94 <cmd_thread_entry+0x34>)
 8003b6c:	4625      	mov	r5, r4
 8003b6e:	f8d4 3418 	ldr.w	r3, [r4, #1048]	; 0x418
 8003b72:	4798      	blx	r3
 8003b74:	b948      	cbnz	r0, 8003b8a <cmd_thread_entry+0x2a>
 8003b76:	f003 ff3b 	bl	80079f0 <rt_thread_yield>
 8003b7a:	201e      	movs	r0, #30
 8003b7c:	f003 ffce 	bl	8007b1c <rt_thread_delay>
 8003b80:	f8d4 3418 	ldr.w	r3, [r4, #1048]	; 0x418
 8003b84:	4798      	blx	r3
 8003b86:	2800      	cmp	r0, #0
 8003b88:	d0f5      	beq.n	8003b76 <cmd_thread_entry+0x16>
 8003b8a:	f8d5 041c 	ldr.w	r0, [r5, #1052]	; 0x41c
 8003b8e:	4780      	blx	r0
 8003b90:	e7ed      	b.n	8003b6e <cmd_thread_entry+0xe>
 8003b92:	bf00      	nop
 8003b94:	20001110 	.word	0x20001110

08003b98 <TIM3_IRQHandler>:
 8003b98:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8003b9c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8003ba0:	b508      	push	{r3, lr}
 8003ba2:	8a13      	ldrh	r3, [r2, #16]
 8003ba4:	4610      	mov	r0, r2
 8003ba6:	f023 0101 	bic.w	r1, r3, #1
 8003baa:	040b      	lsls	r3, r1, #16
 8003bac:	0c19      	lsrs	r1, r3, #16
 8003bae:	8211      	strh	r1, [r2, #16]
 8003bb0:	2101      	movs	r1, #1
 8003bb2:	f7fe f93d 	bl	8001e30 <TIM_ClearFlag>
 8003bb6:	4809      	ldr	r0, [pc, #36]	; (8003bdc <TIM3_IRQHandler+0x44>)
 8003bb8:	6a42      	ldr	r2, [r0, #36]	; 0x24
 8003bba:	2a01      	cmp	r2, #1
 8003bbc:	d008      	beq.n	8003bd0 <TIM3_IRQHandler+0x38>
 8003bbe:	6a43      	ldr	r3, [r0, #36]	; 0x24
 8003bc0:	2b02      	cmp	r3, #2
 8003bc2:	d000      	beq.n	8003bc6 <TIM3_IRQHandler+0x2e>
 8003bc4:	bd08      	pop	{r3, pc}
 8003bc6:	4906      	ldr	r1, [pc, #24]	; (8003be0 <TIM3_IRQHandler+0x48>)
 8003bc8:	6c08      	ldr	r0, [r1, #64]	; 0x40
 8003bca:	1e42      	subs	r2, r0, #1
 8003bcc:	640a      	str	r2, [r1, #64]	; 0x40
 8003bce:	bd08      	pop	{r3, pc}
 8003bd0:	4b03      	ldr	r3, [pc, #12]	; (8003be0 <TIM3_IRQHandler+0x48>)
 8003bd2:	6c19      	ldr	r1, [r3, #64]	; 0x40
 8003bd4:	1c48      	adds	r0, r1, #1
 8003bd6:	6418      	str	r0, [r3, #64]	; 0x40
 8003bd8:	bd08      	pop	{r3, pc}
 8003bda:	bf00      	nop
 8003bdc:	20000114 	.word	0x20000114
 8003be0:	20000bcc 	.word	0x20000bcc

08003be4 <RCC_Configuration_motor>:
 8003be4:	201d      	movs	r0, #29
 8003be6:	2101      	movs	r1, #1
 8003be8:	f7fc bfb0 	b.w	8000b4c <RCC_APB2PeriphClockCmd>

08003bec <NVIC_Configuration_motor>:
 8003bec:	b500      	push	{lr}
 8003bee:	f44f 60e0 	mov.w	r0, #1792	; 0x700
 8003bf2:	b083      	sub	sp, #12
 8003bf4:	f7ff f9a8 	bl	8002f48 <NVIC_PriorityGroupConfig>
 8003bf8:	2300      	movs	r3, #0
 8003bfa:	221d      	movs	r2, #29
 8003bfc:	2101      	movs	r1, #1
 8003bfe:	a801      	add	r0, sp, #4
 8003c00:	f88d 2004 	strb.w	r2, [sp, #4]
 8003c04:	f88d 3005 	strb.w	r3, [sp, #5]
 8003c08:	f88d 3006 	strb.w	r3, [sp, #6]
 8003c0c:	f88d 1007 	strb.w	r1, [sp, #7]
 8003c10:	f7ff f9bc 	bl	8002f8c <NVIC_Init>
 8003c14:	b003      	add	sp, #12
 8003c16:	bd00      	pop	{pc}

08003c18 <hardware_init>:
 8003c18:	b508      	push	{r3, lr}
 8003c1a:	f7ff ffe3 	bl	8003be4 <RCC_Configuration_motor>
 8003c1e:	f7ff ffe5 	bl	8003bec <NVIC_Configuration_motor>
 8003c22:	f7ff fd5d 	bl	80036e0 <adc_config>
 8003c26:	f000 fa65 	bl	80040f4 <vout_init>
 8003c2a:	f000 fdb1 	bl	8004790 <usb_init>
 8003c2e:	f648 7020 	movw	r0, #36640	; 0x8f20
 8003c32:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003c36:	f003 f835 	bl	8006ca4 <rt_kprintf>
 8003c3a:	2000      	movs	r0, #0
 8003c3c:	bd08      	pop	{r3, pc}
 8003c3e:	bf00      	nop

08003c40 <motor_set_auto>:
 8003c40:	b508      	push	{r3, lr}
 8003c42:	7803      	ldrb	r3, [r0, #0]
 8003c44:	2b4e      	cmp	r3, #78	; 0x4e
 8003c46:	d007      	beq.n	8003c58 <motor_set_auto+0x18>
 8003c48:	2b59      	cmp	r3, #89	; 0x59
 8003c4a:	d00a      	beq.n	8003c62 <motor_set_auto+0x22>
 8003c4c:	4807      	ldr	r0, [pc, #28]	; (8003c6c <motor_set_auto+0x2c>)
 8003c4e:	f003 f829 	bl	8006ca4 <rt_kprintf>
 8003c52:	f04f 30ff 	mov.w	r0, #4294967295
 8003c56:	bd08      	pop	{r3, pc}
 8003c58:	4805      	ldr	r0, [pc, #20]	; (8003c70 <motor_set_auto+0x30>)
 8003c5a:	2200      	movs	r2, #0
 8003c5c:	6282      	str	r2, [r0, #40]	; 0x28
 8003c5e:	2001      	movs	r0, #1
 8003c60:	bd08      	pop	{r3, pc}
 8003c62:	4903      	ldr	r1, [pc, #12]	; (8003c70 <motor_set_auto+0x30>)
 8003c64:	2001      	movs	r0, #1
 8003c66:	6288      	str	r0, [r1, #40]	; 0x28
 8003c68:	bd08      	pop	{r3, pc}
 8003c6a:	bf00      	nop
 8003c6c:	08008f3c 	.word	0x08008f3c
 8003c70:	20000114 	.word	0x20000114

08003c74 <motor_setup>:
 8003c74:	b508      	push	{r3, lr}
 8003c76:	f004 fe55 	bl	8008924 <atoi>
 8003c7a:	f240 1314 	movw	r3, #276	; 0x114
 8003c7e:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003c82:	8598      	strh	r0, [r3, #44]	; 0x2c
 8003c84:	2001      	movs	r0, #1
 8003c86:	bd08      	pop	{r3, pc}

08003c88 <middle_Y_led>:
 8003c88:	2001      	movs	r0, #1
 8003c8a:	f7fc bbc3 	b.w	8000414 <rt_hw_led_off>
 8003c8e:	bf00      	nop

08003c90 <middle_N_led>:
 8003c90:	2001      	movs	r0, #1
 8003c92:	f7fc bbab 	b.w	80003ec <rt_hw_led_on>
 8003c96:	bf00      	nop

08003c98 <middle_status_update>:
 8003c98:	b538      	push	{r3, r4, r5, lr}
 8003c9a:	4c0b      	ldr	r4, [pc, #44]	; (8003cc8 <middle_status_update+0x30>)
 8003c9c:	8aa1      	ldrh	r1, [r4, #20]
 8003c9e:	6920      	ldr	r0, [r4, #16]
 8003ca0:	f7fe fb74 	bl	800238c <GPIO_ReadInputDataBit>
 8003ca4:	8ba1      	ldrh	r1, [r4, #28]
 8003ca6:	4605      	mov	r5, r0
 8003ca8:	69a0      	ldr	r0, [r4, #24]
 8003caa:	f7fe fb6f 	bl	800238c <GPIO_ReadInputDataBit>
 8003cae:	2d01      	cmp	r5, #1
 8003cb0:	d001      	beq.n	8003cb6 <middle_status_update+0x1e>
 8003cb2:	2801      	cmp	r0, #1
 8003cb4:	d103      	bne.n	8003cbe <middle_status_update+0x26>
 8003cb6:	f7ff ffeb 	bl	8003c90 <middle_N_led>
 8003cba:	2000      	movs	r0, #0
 8003cbc:	bd38      	pop	{r3, r4, r5, pc}
 8003cbe:	f7ff ffe3 	bl	8003c88 <middle_Y_led>
 8003cc2:	2001      	movs	r0, #1
 8003cc4:	bd38      	pop	{r3, r4, r5, pc}
 8003cc6:	bf00      	nop
 8003cc8:	20000114 	.word	0x20000114

08003ccc <EXTI15_10_IRQHandler>:
 8003ccc:	b508      	push	{r3, lr}
 8003cce:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8003cd2:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8003cd6:	695a      	ldr	r2, [r3, #20]
 8003cd8:	0412      	lsls	r2, r2, #16
 8003cda:	d400      	bmi.n	8003cde <EXTI15_10_IRQHandler+0x12>
 8003cdc:	bd08      	pop	{r3, pc}
 8003cde:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8003ce2:	6158      	str	r0, [r3, #20]
 8003ce4:	4b05      	ldr	r3, [pc, #20]	; (8003cfc <EXTI15_10_IRQHandler+0x30>)
 8003ce6:	2101      	movs	r1, #1
 8003ce8:	6019      	str	r1, [r3, #0]
 8003cea:	f7ff ffd5 	bl	8003c98 <middle_status_update>
 8003cee:	2801      	cmp	r0, #1
 8003cf0:	d1f4      	bne.n	8003cdc <EXTI15_10_IRQHandler+0x10>
 8003cf2:	4a03      	ldr	r2, [pc, #12]	; (8003d00 <EXTI15_10_IRQHandler+0x34>)
 8003cf4:	f8d2 0094 	ldr.w	r0, [r2, #148]	; 0x94
 8003cf8:	4780      	blx	r0
 8003cfa:	e7ef      	b.n	8003cdc <EXTI15_10_IRQHandler+0x10>
 8003cfc:	20000704 	.word	0x20000704
 8003d00:	20000bcc 	.word	0x20000bcc

08003d04 <EXTI4_IRQHandler>:
 8003d04:	b508      	push	{r3, lr}
 8003d06:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8003d0a:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8003d0e:	695a      	ldr	r2, [r3, #20]
 8003d10:	06d1      	lsls	r1, r2, #27
 8003d12:	d400      	bmi.n	8003d16 <EXTI4_IRQHandler+0x12>
 8003d14:	bd08      	pop	{r3, pc}
 8003d16:	2010      	movs	r0, #16
 8003d18:	6158      	str	r0, [r3, #20]
 8003d1a:	4b06      	ldr	r3, [pc, #24]	; (8003d34 <EXTI4_IRQHandler+0x30>)
 8003d1c:	2101      	movs	r1, #1
 8003d1e:	6019      	str	r1, [r3, #0]
 8003d20:	f7ff ffba 	bl	8003c98 <middle_status_update>
 8003d24:	2801      	cmp	r0, #1
 8003d26:	d1f5      	bne.n	8003d14 <EXTI4_IRQHandler+0x10>
 8003d28:	4a03      	ldr	r2, [pc, #12]	; (8003d38 <EXTI4_IRQHandler+0x34>)
 8003d2a:	f8d2 0094 	ldr.w	r0, [r2, #148]	; 0x94
 8003d2e:	4780      	blx	r0
 8003d30:	e7f0      	b.n	8003d14 <EXTI4_IRQHandler+0x10>
 8003d32:	bf00      	nop
 8003d34:	20000708 	.word	0x20000708
 8003d38:	20000bcc 	.word	0x20000bcc

08003d3c <pwm_accl>:
 8003d3c:	4b09      	ldr	r3, [pc, #36]	; (8003d64 <pwm_accl+0x28>)
 8003d3e:	f246 6267 	movw	r2, #26215	; 0x6667
 8003d42:	8dd9      	ldrh	r1, [r3, #46]	; 0x2e
 8003d44:	f2c6 6266 	movt	r2, #26214	; 0x6666
 8003d48:	00c8      	lsls	r0, r1, #3
 8003d4a:	fb82 0100 	smull	r0, r1, r2, r0
 8003d4e:	8d9a      	ldrh	r2, [r3, #44]	; 0x2c
 8003d50:	0889      	lsrs	r1, r1, #2
 8003d52:	4291      	cmp	r1, r2
 8003d54:	6a18      	ldr	r0, [r3, #32]
 8003d56:	85d9      	strh	r1, [r3, #46]	; 0x2e
 8003d58:	bf3c      	itt	cc
 8003d5a:	4611      	movcc	r1, r2
 8003d5c:	85da      	strhcc	r2, [r3, #46]	; 0x2e
 8003d5e:	f7fd bf93 	b.w	8001c88 <TIM_SetAutoreload>
 8003d62:	bf00      	nop
 8003d64:	20000114 	.word	0x20000114

08003d68 <pwm_dccl>:
 8003d68:	4b07      	ldr	r3, [pc, #28]	; (8003d88 <pwm_dccl+0x20>)
 8003d6a:	8dd9      	ldrh	r1, [r3, #46]	; 0x2e
 8003d6c:	eb01 0081 	add.w	r0, r1, r1, lsl #2
 8003d70:	f3c0 018f 	ubfx	r1, r0, #2, #16
 8003d74:	f5b1 7f7a 	cmp.w	r1, #1000	; 0x3e8
 8003d78:	6a18      	ldr	r0, [r3, #32]
 8003d7a:	bf88      	it	hi
 8003d7c:	f44f 717a 	movhi.w	r1, #1000	; 0x3e8
 8003d80:	85d9      	strh	r1, [r3, #46]	; 0x2e
 8003d82:	f7fd bf81 	b.w	8001c88 <TIM_SetAutoreload>
 8003d86:	bf00      	nop
 8003d88:	20000114 	.word	0x20000114

08003d8c <motor_accl>:
 8003d8c:	b508      	push	{r3, lr}
 8003d8e:	7803      	ldrb	r3, [r0, #0]
 8003d90:	2b78      	cmp	r3, #120	; 0x78
 8003d92:	d001      	beq.n	8003d98 <motor_accl+0xc>
 8003d94:	2001      	movs	r0, #1
 8003d96:	bd08      	pop	{r3, pc}
 8003d98:	7840      	ldrb	r0, [r0, #1]
 8003d9a:	282b      	cmp	r0, #43	; 0x2b
 8003d9c:	d007      	beq.n	8003dae <motor_accl+0x22>
 8003d9e:	282d      	cmp	r0, #45	; 0x2d
 8003da0:	d1f8      	bne.n	8003d94 <motor_accl+0x8>
 8003da2:	f7ff ffe1 	bl	8003d68 <pwm_dccl>
 8003da6:	4805      	ldr	r0, [pc, #20]	; (8003dbc <motor_accl+0x30>)
 8003da8:	f002 ff7c 	bl	8006ca4 <rt_kprintf>
 8003dac:	e7f2      	b.n	8003d94 <motor_accl+0x8>
 8003dae:	f7ff ffc5 	bl	8003d3c <pwm_accl>
 8003db2:	4803      	ldr	r0, [pc, #12]	; (8003dc0 <motor_accl+0x34>)
 8003db4:	f002 ff76 	bl	8006ca4 <rt_kprintf>
 8003db8:	e7ec      	b.n	8003d94 <motor_accl+0x8>
 8003dba:	bf00      	nop
 8003dbc:	08008f78 	.word	0x08008f78
 8003dc0:	08008f60 	.word	0x08008f60

08003dc4 <pwm_stop>:
 8003dc4:	b510      	push	{r4, lr}
 8003dc6:	f240 1414 	movw	r4, #276	; 0x114
 8003dca:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8003dce:	b082      	sub	sp, #8
 8003dd0:	6a20      	ldr	r0, [r4, #32]
 8003dd2:	2100      	movs	r1, #0
 8003dd4:	f7fd fd1a 	bl	800180c <TIM_Cmd>
 8003dd8:	88a3      	ldrh	r3, [r4, #4]
 8003dda:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
 8003dde:	85e2      	strh	r2, [r4, #46]	; 0x2e
 8003de0:	2200      	movs	r2, #0
 8003de2:	6820      	ldr	r0, [r4, #0]
 8003de4:	a901      	add	r1, sp, #4
 8003de6:	6262      	str	r2, [r4, #36]	; 0x24
 8003de8:	f8ad 3004 	strh.w	r3, [sp, #4]
 8003dec:	2203      	movs	r2, #3
 8003dee:	2310      	movs	r3, #16
 8003df0:	f88d 3007 	strb.w	r3, [sp, #7]
 8003df4:	f88d 2006 	strb.w	r2, [sp, #6]
 8003df8:	f7fe f92c 	bl	8002054 <GPIO_Init>
 8003dfc:	6820      	ldr	r0, [r4, #0]
 8003dfe:	88a1      	ldrh	r1, [r4, #4]
 8003e00:	f7fe fb66 	bl	80024d0 <GPIO_ResetBits>
 8003e04:	b002      	add	sp, #8
 8003e06:	bd10      	pop	{r4, pc}

08003e08 <motor_stop>:
 8003e08:	b508      	push	{r3, lr}
 8003e0a:	f7ff ffdb 	bl	8003dc4 <pwm_stop>
 8003e0e:	f648 7090 	movw	r0, #36752	; 0x8f90
 8003e12:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003e16:	f002 ff45 	bl	8006ca4 <rt_kprintf>
 8003e1a:	2001      	movs	r0, #1
 8003e1c:	bd08      	pop	{r3, pc}
 8003e1e:	bf00      	nop

08003e20 <pollar_service>:
 8003e20:	b508      	push	{r3, lr}
 8003e22:	4b19      	ldr	r3, [pc, #100]	; (8003e88 <pollar_service+0x68>)
 8003e24:	681a      	ldr	r2, [r3, #0]
 8003e26:	2a01      	cmp	r2, #1
 8003e28:	d019      	beq.n	8003e5e <pollar_service+0x3e>
 8003e2a:	4918      	ldr	r1, [pc, #96]	; (8003e8c <pollar_service+0x6c>)
 8003e2c:	680b      	ldr	r3, [r1, #0]
 8003e2e:	2b01      	cmp	r3, #1
 8003e30:	d000      	beq.n	8003e34 <pollar_service+0x14>
 8003e32:	bd08      	pop	{r3, pc}
 8003e34:	2200      	movs	r2, #0
 8003e36:	600a      	str	r2, [r1, #0]
 8003e38:	f7ff ff2e 	bl	8003c98 <middle_status_update>
 8003e3c:	b9d0      	cbnz	r0, 8003e74 <pollar_service+0x54>
 8003e3e:	4814      	ldr	r0, [pc, #80]	; (8003e90 <pollar_service+0x70>)
 8003e40:	f002 ff30 	bl	8006ca4 <rt_kprintf>
 8003e44:	f7ff ffbe 	bl	8003dc4 <pwm_stop>
 8003e48:	4812      	ldr	r0, [pc, #72]	; (8003e94 <pollar_service+0x74>)
 8003e4a:	6a81      	ldr	r1, [r0, #40]	; 0x28
 8003e4c:	2901      	cmp	r1, #1
 8003e4e:	d1f0      	bne.n	8003e32 <pollar_service+0x12>
 8003e50:	4b11      	ldr	r3, [pc, #68]	; (8003e98 <pollar_service+0x78>)
 8003e52:	2102      	movs	r1, #2
 8003e54:	f8d3 2420 	ldr.w	r2, [r3, #1056]	; 0x420
 8003e58:	4810      	ldr	r0, [pc, #64]	; (8003e9c <pollar_service+0x7c>)
 8003e5a:	4790      	blx	r2
 8003e5c:	bd08      	pop	{r3, pc}
 8003e5e:	2000      	movs	r0, #0
 8003e60:	6018      	str	r0, [r3, #0]
 8003e62:	f7ff ff19 	bl	8003c98 <middle_status_update>
 8003e66:	b950      	cbnz	r0, 8003e7e <pollar_service+0x5e>
 8003e68:	480d      	ldr	r0, [pc, #52]	; (8003ea0 <pollar_service+0x80>)
 8003e6a:	f002 ff1b 	bl	8006ca4 <rt_kprintf>
 8003e6e:	f7ff ffa9 	bl	8003dc4 <pwm_stop>
 8003e72:	e7da      	b.n	8003e2a <pollar_service+0xa>
 8003e74:	480b      	ldr	r0, [pc, #44]	; (8003ea4 <pollar_service+0x84>)
 8003e76:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8003e7a:	f002 bf13 	b.w	8006ca4 <rt_kprintf>
 8003e7e:	480a      	ldr	r0, [pc, #40]	; (8003ea8 <pollar_service+0x88>)
 8003e80:	f002 ff10 	bl	8006ca4 <rt_kprintf>
 8003e84:	e7d1      	b.n	8003e2a <pollar_service+0xa>
 8003e86:	bf00      	nop
 8003e88:	20000708 	.word	0x20000708
 8003e8c:	20000704 	.word	0x20000704
 8003e90:	08008fa4 	.word	0x08008fa4
 8003e94:	20000114 	.word	0x20000114
 8003e98:	20001110 	.word	0x20001110
 8003e9c:	08008fbc 	.word	0x08008fbc
 8003ea0:	08008a34 	.word	0x08008a34
 8003ea4:	08008fcc 	.word	0x08008fcc
 8003ea8:	08008a48 	.word	0x08008a48

08003eac <event_thread_entry>:
 8003eac:	b510      	push	{r4, lr}
 8003eae:	f7ff fef3 	bl	8003c98 <middle_status_update>
 8003eb2:	4c04      	ldr	r4, [pc, #16]	; (8003ec4 <event_thread_entry+0x18>)
 8003eb4:	f7ff ffb4 	bl	8003e20 <pollar_service>
 8003eb8:	f8d4 30b0 	ldr.w	r3, [r4, #176]	; 0xb0
 8003ebc:	4798      	blx	r3
 8003ebe:	f003 fd97 	bl	80079f0 <rt_thread_yield>
 8003ec2:	e7f7      	b.n	8003eb4 <event_thread_entry+0x8>
 8003ec4:	20000bcc 	.word	0x20000bcc

08003ec8 <pwm_run>:
 8003ec8:	b510      	push	{r4, lr}
 8003eca:	f240 1414 	movw	r4, #276	; 0x114
 8003ece:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8003ed2:	88a3      	ldrh	r3, [r4, #4]
 8003ed4:	b082      	sub	sp, #8
 8003ed6:	6820      	ldr	r0, [r4, #0]
 8003ed8:	a901      	add	r1, sp, #4
 8003eda:	f8ad 3004 	strh.w	r3, [sp, #4]
 8003ede:	2218      	movs	r2, #24
 8003ee0:	2303      	movs	r3, #3
 8003ee2:	f88d 2007 	strb.w	r2, [sp, #7]
 8003ee6:	f88d 3006 	strb.w	r3, [sp, #6]
 8003eea:	f7fe f8b3 	bl	8002054 <GPIO_Init>
 8003eee:	6a20      	ldr	r0, [r4, #32]
 8003ef0:	2101      	movs	r1, #1
 8003ef2:	f7fd fc8b 	bl	800180c <TIM_Cmd>
 8003ef6:	b002      	add	sp, #8
 8003ef8:	bd10      	pop	{r4, pc}
 8003efa:	bf00      	nop

08003efc <pwm_set_forward>:
 8003efc:	f240 1314 	movw	r3, #276	; 0x114
 8003f00:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003f04:	6898      	ldr	r0, [r3, #8]
 8003f06:	8999      	ldrh	r1, [r3, #12]
 8003f08:	2201      	movs	r2, #1
 8003f0a:	625a      	str	r2, [r3, #36]	; 0x24
 8003f0c:	f7fe baa4 	b.w	8002458 <GPIO_SetBits>

08003f10 <pwm_set_backward>:
 8003f10:	f240 1314 	movw	r3, #276	; 0x114
 8003f14:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003f18:	6898      	ldr	r0, [r3, #8]
 8003f1a:	8999      	ldrh	r1, [r3, #12]
 8003f1c:	2202      	movs	r2, #2
 8003f1e:	625a      	str	r2, [r3, #36]	; 0x24
 8003f20:	f7fe bad6 	b.w	80024d0 <GPIO_ResetBits>

08003f24 <motor_run>:
 8003f24:	b510      	push	{r4, lr}
 8003f26:	4604      	mov	r4, r0
 8003f28:	f7ff ff4c 	bl	8003dc4 <pwm_stop>
 8003f2c:	f44f 7096 	mov.w	r0, #300	; 0x12c
 8003f30:	f003 fdf4 	bl	8007b1c <rt_thread_delay>
 8003f34:	2c01      	cmp	r4, #1
 8003f36:	d007      	beq.n	8003f48 <motor_run+0x24>
 8003f38:	2c02      	cmp	r4, #2
 8003f3a:	d019      	beq.n	8003f70 <motor_run+0x4c>
 8003f3c:	480e      	ldr	r0, [pc, #56]	; (8003f78 <motor_run+0x54>)
 8003f3e:	f002 feb1 	bl	8006ca4 <rt_kprintf>
 8003f42:	f04f 30ff 	mov.w	r0, #4294967295
 8003f46:	bd10      	pop	{r4, pc}
 8003f48:	f7ff ffd8 	bl	8003efc <pwm_set_forward>
 8003f4c:	4c0b      	ldr	r4, [pc, #44]	; (8003f7c <motor_run+0x58>)
 8003f4e:	f7ff ffbb 	bl	8003ec8 <pwm_run>
 8003f52:	8de2      	ldrh	r2, [r4, #46]	; 0x2e
 8003f54:	8da3      	ldrh	r3, [r4, #44]	; 0x2c
 8003f56:	429a      	cmp	r2, r3
 8003f58:	d908      	bls.n	8003f6c <motor_run+0x48>
 8003f5a:	201e      	movs	r0, #30
 8003f5c:	f003 fdde 	bl	8007b1c <rt_thread_delay>
 8003f60:	f7ff feec 	bl	8003d3c <pwm_accl>
 8003f64:	8de0      	ldrh	r0, [r4, #46]	; 0x2e
 8003f66:	8da1      	ldrh	r1, [r4, #44]	; 0x2c
 8003f68:	4288      	cmp	r0, r1
 8003f6a:	d8f6      	bhi.n	8003f5a <motor_run+0x36>
 8003f6c:	2001      	movs	r0, #1
 8003f6e:	bd10      	pop	{r4, pc}
 8003f70:	f7ff ffce 	bl	8003f10 <pwm_set_backward>
 8003f74:	e7ea      	b.n	8003f4c <motor_run+0x28>
 8003f76:	bf00      	nop
 8003f78:	08008fe4 	.word	0x08008fe4
 8003f7c:	20000114 	.word	0x20000114

08003f80 <motor_move>:
 8003f80:	b508      	push	{r3, lr}
 8003f82:	7803      	ldrb	r3, [r0, #0]
 8003f84:	2b78      	cmp	r3, #120	; 0x78
 8003f86:	d005      	beq.n	8003f94 <motor_move+0x14>
 8003f88:	4818      	ldr	r0, [pc, #96]	; (8003fec <motor_move+0x6c>)
 8003f8a:	f002 fe8b 	bl	8006ca4 <rt_kprintf>
 8003f8e:	f04f 30ff 	mov.w	r0, #4294967295
 8003f92:	bd08      	pop	{r3, pc}
 8003f94:	7840      	ldrb	r0, [r0, #1]
 8003f96:	282b      	cmp	r0, #43	; 0x2b
 8003f98:	d00d      	beq.n	8003fb6 <motor_move+0x36>
 8003f9a:	282d      	cmp	r0, #45	; 0x2d
 8003f9c:	d014      	beq.n	8003fc8 <motor_move+0x48>
 8003f9e:	283e      	cmp	r0, #62	; 0x3e
 8003fa0:	d01b      	beq.n	8003fda <motor_move+0x5a>
 8003fa2:	283c      	cmp	r0, #60	; 0x3c
 8003fa4:	d1f0      	bne.n	8003f88 <motor_move+0x8>
 8003fa6:	4812      	ldr	r0, [pc, #72]	; (8003ff0 <motor_move+0x70>)
 8003fa8:	f002 fe7c 	bl	8006ca4 <rt_kprintf>
 8003fac:	2002      	movs	r0, #2
 8003fae:	f7ff ffb9 	bl	8003f24 <motor_run>
 8003fb2:	2001      	movs	r0, #1
 8003fb4:	bd08      	pop	{r3, pc}
 8003fb6:	480f      	ldr	r0, [pc, #60]	; (8003ff4 <motor_move+0x74>)
 8003fb8:	f002 fe74 	bl	8006ca4 <rt_kprintf>
 8003fbc:	f7ff ff9e 	bl	8003efc <pwm_set_forward>
 8003fc0:	f7ff ff82 	bl	8003ec8 <pwm_run>
 8003fc4:	2001      	movs	r0, #1
 8003fc6:	bd08      	pop	{r3, pc}
 8003fc8:	480b      	ldr	r0, [pc, #44]	; (8003ff8 <motor_move+0x78>)
 8003fca:	f002 fe6b 	bl	8006ca4 <rt_kprintf>
 8003fce:	f7ff ff9f 	bl	8003f10 <pwm_set_backward>
 8003fd2:	f7ff ff79 	bl	8003ec8 <pwm_run>
 8003fd6:	2001      	movs	r0, #1
 8003fd8:	bd08      	pop	{r3, pc}
 8003fda:	4808      	ldr	r0, [pc, #32]	; (8003ffc <motor_move+0x7c>)
 8003fdc:	f002 fe62 	bl	8006ca4 <rt_kprintf>
 8003fe0:	2001      	movs	r0, #1
 8003fe2:	f7ff ff9f 	bl	8003f24 <motor_run>
 8003fe6:	2001      	movs	r0, #1
 8003fe8:	bd08      	pop	{r3, pc}
 8003fea:	bf00      	nop
 8003fec:	08009074 	.word	0x08009074
 8003ff0:	08009058 	.word	0x08009058
 8003ff4:	08009004 	.word	0x08009004
 8003ff8:	08009020 	.word	0x08009020
 8003ffc:	0800903c 	.word	0x0800903c

08004000 <vout_set>:
 8004000:	b510      	push	{r4, lr}
 8004002:	4604      	mov	r4, r0
 8004004:	f249 00b0 	movw	r0, #37040	; 0x90b0
 8004008:	f6c0 0000 	movt	r0, #2048	; 0x800
 800400c:	f002 fe4a 	bl	8006ca4 <rt_kprintf>
 8004010:	4620      	mov	r0, r4
 8004012:	f004 fc87 	bl	8008924 <atoi>
 8004016:	4604      	mov	r4, r0
 8004018:	f44f 5030 	mov.w	r0, #11264	; 0x2c00
 800401c:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8004020:	b2a1      	uxth	r1, r4
 8004022:	f7fd fea1 	bl	8001d68 <TIM_SetCompare1>
 8004026:	f240 1364 	movw	r3, #356	; 0x164
 800402a:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800402e:	601c      	str	r4, [r3, #0]
 8004030:	2001      	movs	r0, #1
 8004032:	bd10      	pop	{r4, pc}

08004034 <RCC_vout_init>:
 8004034:	f640 0001 	movw	r0, #2049	; 0x801
 8004038:	2101      	movs	r1, #1
 800403a:	f7fc bd87 	b.w	8000b4c <RCC_APB2PeriphClockCmd>
 800403e:	bf00      	nop

08004040 <GPIO_vout_init>:
 8004040:	b500      	push	{lr}
 8004042:	f44f 7380 	mov.w	r3, #256	; 0x100
 8004046:	b083      	sub	sp, #12
 8004048:	f44f 6000 	mov.w	r0, #2048	; 0x800
 800404c:	f8ad 3004 	strh.w	r3, [sp, #4]
 8004050:	2218      	movs	r2, #24
 8004052:	2303      	movs	r3, #3
 8004054:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8004058:	a901      	add	r1, sp, #4
 800405a:	f88d 2007 	strb.w	r2, [sp, #7]
 800405e:	f88d 3006 	strb.w	r3, [sp, #6]
 8004062:	f7fd fff7 	bl	8002054 <GPIO_Init>
 8004066:	b003      	add	sp, #12
 8004068:	bd00      	pop	{pc}
 800406a:	bf00      	nop

0800406c <t1c1_init>:
 800406c:	b570      	push	{r4, r5, r6, lr}
 800406e:	f44f 5430 	mov.w	r4, #11264	; 0x2c00
 8004072:	f2c4 0401 	movt	r4, #16385	; 0x4001
 8004076:	b088      	sub	sp, #32
 8004078:	4620      	mov	r0, r4
 800407a:	f7fd f899 	bl	80011b0 <TIM_DeInit>
 800407e:	2500      	movs	r5, #0
 8004080:	2280      	movs	r2, #128	; 0x80
 8004082:	f241 7370 	movw	r3, #6000	; 0x1770
 8004086:	a901      	add	r1, sp, #4
 8004088:	4620      	mov	r0, r4
 800408a:	f8ad 3008 	strh.w	r3, [sp, #8]
 800408e:	f8ad 2004 	strh.w	r2, [sp, #4]
 8004092:	f8ad 500a 	strh.w	r5, [sp, #10]
 8004096:	f8ad 5006 	strh.w	r5, [sp, #6]
 800409a:	f7fd f9bf 	bl	800141c <TIM_TimeBaseInit>
 800409e:	4620      	mov	r0, r4
 80040a0:	2101      	movs	r1, #1
 80040a2:	f7fd fc79 	bl	8001998 <TIM_ARRPreloadConfig>
 80040a6:	2601      	movs	r6, #1
 80040a8:	2360      	movs	r3, #96	; 0x60
 80040aa:	4620      	mov	r0, r4
 80040ac:	a904      	add	r1, sp, #16
 80040ae:	f44f 62fa 	mov.w	r2, #2000	; 0x7d0
 80040b2:	f8ad 3010 	strh.w	r3, [sp, #16]
 80040b6:	f8ad 2016 	strh.w	r2, [sp, #22]
 80040ba:	f8ad 501c 	strh.w	r5, [sp, #28]
 80040be:	f8ad 501e 	strh.w	r5, [sp, #30]
 80040c2:	f8ad 5018 	strh.w	r5, [sp, #24]
 80040c6:	f8ad 501a 	strh.w	r5, [sp, #26]
 80040ca:	f8ad 6012 	strh.w	r6, [sp, #18]
 80040ce:	f8ad 5014 	strh.w	r5, [sp, #20]
 80040d2:	f7fd fa93 	bl	80015fc <TIM_OC1Init>
 80040d6:	4620      	mov	r0, r4
 80040d8:	4629      	mov	r1, r5
 80040da:	4632      	mov	r2, r6
 80040dc:	f7fd fce0 	bl	8001aa0 <TIM_CCxCmd>
 80040e0:	4620      	mov	r0, r4
 80040e2:	4631      	mov	r1, r6
 80040e4:	f7fd fb92 	bl	800180c <TIM_Cmd>
 80040e8:	4620      	mov	r0, r4
 80040ea:	4631      	mov	r1, r6
 80040ec:	f7fd fc12 	bl	8001914 <TIM_CtrlPWMOutputs>
 80040f0:	b008      	add	sp, #32
 80040f2:	bd70      	pop	{r4, r5, r6, pc}

080040f4 <vout_init>:
 80040f4:	b508      	push	{r3, lr}
 80040f6:	f7ff ff9d 	bl	8004034 <RCC_vout_init>
 80040fa:	f7ff ffa1 	bl	8004040 <GPIO_vout_init>
 80040fe:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8004102:	f7ff bfb3 	b.w	800406c <t1c1_init>
 8004106:	bf00      	nop

08004108 <vout_adj>:
 8004108:	b508      	push	{r3, lr}
 800410a:	4b0d      	ldr	r3, [pc, #52]	; (8004140 <vout_adj+0x38>)
 800410c:	2801      	cmp	r0, #1
 800410e:	681a      	ldr	r2, [r3, #0]
 8004110:	bf0c      	ite	eq
 8004112:	188a      	addeq	r2, r1, r2
 8004114:	ebc1 0202 	rsbne	r2, r1, r2
 8004118:	2a00      	cmp	r2, #0
 800411a:	601a      	str	r2, [r3, #0]
 800411c:	db0c      	blt.n	8004138 <vout_adj+0x30>
 800411e:	f241 7170 	movw	r1, #6000	; 0x1770
 8004122:	428a      	cmp	r2, r1
 8004124:	bfd4      	ite	le
 8004126:	b291      	uxthle	r1, r2
 8004128:	6019      	strgt	r1, [r3, #0]
 800412a:	f44f 5030 	mov.w	r0, #11264	; 0x2c00
 800412e:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8004132:	f7fd fe19 	bl	8001d68 <TIM_SetCompare1>
 8004136:	bd08      	pop	{r3, pc}
 8004138:	2100      	movs	r1, #0
 800413a:	6019      	str	r1, [r3, #0]
 800413c:	e7f5      	b.n	800412a <vout_adj+0x22>
 800413e:	bf00      	nop
 8004140:	20000164 	.word	0x20000164

08004144 <vout_decrease>:
 8004144:	b510      	push	{r4, lr}
 8004146:	4604      	mov	r4, r0
 8004148:	f249 00cc 	movw	r0, #37068	; 0x90cc
 800414c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8004150:	f002 fda8 	bl	8006ca4 <rt_kprintf>
 8004154:	4620      	mov	r0, r4
 8004156:	f004 fbe5 	bl	8008924 <atoi>
 800415a:	b281      	uxth	r1, r0
 800415c:	2000      	movs	r0, #0
 800415e:	f7ff ffd3 	bl	8004108 <vout_adj>
 8004162:	2001      	movs	r0, #1
 8004164:	bd10      	pop	{r4, pc}
 8004166:	bf00      	nop

08004168 <vout_increase>:
 8004168:	b510      	push	{r4, lr}
 800416a:	4604      	mov	r4, r0
 800416c:	f249 00e4 	movw	r0, #37092	; 0x90e4
 8004170:	f6c0 0000 	movt	r0, #2048	; 0x800
 8004174:	f002 fd96 	bl	8006ca4 <rt_kprintf>
 8004178:	4620      	mov	r0, r4
 800417a:	f004 fbd3 	bl	8008924 <atoi>
 800417e:	b281      	uxth	r1, r0
 8004180:	2001      	movs	r0, #1
 8004182:	f7ff ffc1 	bl	8004108 <vout_adj>
 8004186:	2001      	movs	r0, #1
 8004188:	bd10      	pop	{r4, pc}
 800418a:	bf00      	nop

0800418c <RCC_pga_init>:
 800418c:	201c      	movs	r0, #28
 800418e:	2101      	movs	r1, #1
 8004190:	f7fc bcdc 	b.w	8000b4c <RCC_APB2PeriphClockCmd>

08004194 <GPIO_pga_init>:
 8004194:	b570      	push	{r4, r5, r6, lr}
 8004196:	f240 146c 	movw	r4, #364	; 0x16c
 800419a:	f2c2 0400 	movt	r4, #8192	; 0x2000
 800419e:	b082      	sub	sp, #8
 80041a0:	88a3      	ldrh	r3, [r4, #4]
 80041a2:	2610      	movs	r6, #16
 80041a4:	2502      	movs	r5, #2
 80041a6:	6820      	ldr	r0, [r4, #0]
 80041a8:	a901      	add	r1, sp, #4
 80041aa:	f8ad 3004 	strh.w	r3, [sp, #4]
 80041ae:	f88d 6007 	strb.w	r6, [sp, #7]
 80041b2:	f88d 5006 	strb.w	r5, [sp, #6]
 80041b6:	f7fd ff4d 	bl	8002054 <GPIO_Init>
 80041ba:	89a2      	ldrh	r2, [r4, #12]
 80041bc:	68a0      	ldr	r0, [r4, #8]
 80041be:	a901      	add	r1, sp, #4
 80041c0:	f8ad 2004 	strh.w	r2, [sp, #4]
 80041c4:	f88d 6007 	strb.w	r6, [sp, #7]
 80041c8:	f88d 5006 	strb.w	r5, [sp, #6]
 80041cc:	f7fd ff42 	bl	8002054 <GPIO_Init>
 80041d0:	8aa3      	ldrh	r3, [r4, #20]
 80041d2:	6920      	ldr	r0, [r4, #16]
 80041d4:	a901      	add	r1, sp, #4
 80041d6:	f8ad 3004 	strh.w	r3, [sp, #4]
 80041da:	f88d 6007 	strb.w	r6, [sp, #7]
 80041de:	f88d 5006 	strb.w	r5, [sp, #6]
 80041e2:	f7fd ff37 	bl	8002054 <GPIO_Init>
 80041e6:	8ba2      	ldrh	r2, [r4, #28]
 80041e8:	69a0      	ldr	r0, [r4, #24]
 80041ea:	a901      	add	r1, sp, #4
 80041ec:	f8ad 2004 	strh.w	r2, [sp, #4]
 80041f0:	f88d 6007 	strb.w	r6, [sp, #7]
 80041f4:	f88d 5006 	strb.w	r5, [sp, #6]
 80041f8:	f7fd ff2c 	bl	8002054 <GPIO_Init>
 80041fc:	8ca3      	ldrh	r3, [r4, #36]	; 0x24
 80041fe:	6a20      	ldr	r0, [r4, #32]
 8004200:	a901      	add	r1, sp, #4
 8004202:	f8ad 3004 	strh.w	r3, [sp, #4]
 8004206:	f88d 6007 	strb.w	r6, [sp, #7]
 800420a:	f88d 5006 	strb.w	r5, [sp, #6]
 800420e:	f7fd ff21 	bl	8002054 <GPIO_Init>
 8004212:	8da2      	ldrh	r2, [r4, #44]	; 0x2c
 8004214:	6aa0      	ldr	r0, [r4, #40]	; 0x28
 8004216:	a901      	add	r1, sp, #4
 8004218:	f8ad 2004 	strh.w	r2, [sp, #4]
 800421c:	f88d 6007 	strb.w	r6, [sp, #7]
 8004220:	f88d 5006 	strb.w	r5, [sp, #6]
 8004224:	f7fd ff16 	bl	8002054 <GPIO_Init>
 8004228:	8ea3      	ldrh	r3, [r4, #52]	; 0x34
 800422a:	6b20      	ldr	r0, [r4, #48]	; 0x30
 800422c:	a901      	add	r1, sp, #4
 800422e:	f8ad 3004 	strh.w	r3, [sp, #4]
 8004232:	f88d 6007 	strb.w	r6, [sp, #7]
 8004236:	f88d 5006 	strb.w	r5, [sp, #6]
 800423a:	f7fd ff0b 	bl	8002054 <GPIO_Init>
 800423e:	8fa2      	ldrh	r2, [r4, #60]	; 0x3c
 8004240:	6ba0      	ldr	r0, [r4, #56]	; 0x38
 8004242:	a901      	add	r1, sp, #4
 8004244:	f8ad 2004 	strh.w	r2, [sp, #4]
 8004248:	f88d 6007 	strb.w	r6, [sp, #7]
 800424c:	f88d 5006 	strb.w	r5, [sp, #6]
 8004250:	f7fd ff00 	bl	8002054 <GPIO_Init>
 8004254:	b002      	add	sp, #8
 8004256:	bd70      	pop	{r4, r5, r6, pc}

08004258 <pga_init>:
 8004258:	b508      	push	{r3, lr}
 800425a:	f7ff ff97 	bl	800418c <RCC_pga_init>
 800425e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8004262:	f7ff bf97 	b.w	8004194 <GPIO_pga_init>
 8004266:	bf00      	nop

08004268 <write_sport>:
 8004268:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800426a:	4604      	mov	r4, r0
 800426c:	4822      	ldr	r0, [pc, #136]	; (80042f8 <write_sport+0x90>)
 800426e:	460f      	mov	r7, r1
 8004270:	f002 fd18 	bl	8006ca4 <rt_kprintf>
 8004274:	4e21      	ldr	r6, [pc, #132]	; (80042fc <write_sport+0x94>)
 8004276:	2508      	movs	r5, #8
 8004278:	6820      	ldr	r0, [r4, #0]
 800427a:	88a1      	ldrh	r1, [r4, #4]
 800427c:	f7fe f928 	bl	80024d0 <GPIO_ResetBits>
 8004280:	6833      	ldr	r3, [r6, #0]
 8004282:	2b00      	cmp	r3, #0
 8004284:	dd0a      	ble.n	800429c <write_sport+0x34>
 8004286:	1e58      	subs	r0, r3, #1
 8004288:	f000 0201 	and.w	r2, r0, #1
 800428c:	bf00      	nop
 800428e:	b128      	cbz	r0, 800429c <write_sport+0x34>
 8004290:	b90a      	cbnz	r2, 8004296 <write_sport+0x2e>
 8004292:	bf00      	nop
 8004294:	3801      	subs	r0, #1
 8004296:	bf00      	nop
 8004298:	3801      	subs	r0, #1
 800429a:	d1fa      	bne.n	8004292 <write_sport+0x2a>
 800429c:	063b      	lsls	r3, r7, #24
 800429e:	68a0      	ldr	r0, [r4, #8]
 80042a0:	89a1      	ldrh	r1, [r4, #12]
 80042a2:	d426      	bmi.n	80042f2 <write_sport+0x8a>
 80042a4:	f7fe f914 	bl	80024d0 <GPIO_ResetBits>
 80042a8:	6831      	ldr	r1, [r6, #0]
 80042aa:	2900      	cmp	r1, #0
 80042ac:	dd0a      	ble.n	80042c4 <write_sport+0x5c>
 80042ae:	1e4b      	subs	r3, r1, #1
 80042b0:	f003 0001 	and.w	r0, r3, #1
 80042b4:	bf00      	nop
 80042b6:	b12b      	cbz	r3, 80042c4 <write_sport+0x5c>
 80042b8:	b908      	cbnz	r0, 80042be <write_sport+0x56>
 80042ba:	bf00      	nop
 80042bc:	3b01      	subs	r3, #1
 80042be:	bf00      	nop
 80042c0:	3b01      	subs	r3, #1
 80042c2:	d1fa      	bne.n	80042ba <write_sport+0x52>
 80042c4:	6820      	ldr	r0, [r4, #0]
 80042c6:	88a1      	ldrh	r1, [r4, #4]
 80042c8:	f7fe f8c6 	bl	8002458 <GPIO_SetBits>
 80042cc:	6832      	ldr	r2, [r6, #0]
 80042ce:	2a00      	cmp	r2, #0
 80042d0:	dd0a      	ble.n	80042e8 <write_sport+0x80>
 80042d2:	1e51      	subs	r1, r2, #1
 80042d4:	f001 0301 	and.w	r3, r1, #1
 80042d8:	bf00      	nop
 80042da:	b129      	cbz	r1, 80042e8 <write_sport+0x80>
 80042dc:	b90b      	cbnz	r3, 80042e2 <write_sport+0x7a>
 80042de:	bf00      	nop
 80042e0:	3901      	subs	r1, #1
 80042e2:	bf00      	nop
 80042e4:	3901      	subs	r1, #1
 80042e6:	d1fa      	bne.n	80042de <write_sport+0x76>
 80042e8:	007f      	lsls	r7, r7, #1
 80042ea:	3d01      	subs	r5, #1
 80042ec:	b2ff      	uxtb	r7, r7
 80042ee:	d1c3      	bne.n	8004278 <write_sport+0x10>
 80042f0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80042f2:	f7fe f8b1 	bl	8002458 <GPIO_SetBits>
 80042f6:	e7d7      	b.n	80042a8 <write_sport+0x40>
 80042f8:	08009104 	.word	0x08009104
 80042fc:	20000168 	.word	0x20000168

08004300 <pga_set>:
 8004300:	b570      	push	{r4, r5, r6, lr}
 8004302:	4604      	mov	r4, r0
 8004304:	3002      	adds	r0, #2
 8004306:	f004 fb0d 	bl	8008924 <atoi>
 800430a:	7823      	ldrb	r3, [r4, #0]
 800430c:	4605      	mov	r5, r0
 800430e:	3b41      	subs	r3, #65	; 0x41
 8004310:	2b12      	cmp	r3, #18
 8004312:	d824      	bhi.n	800435e <pga_set+0x5e>
 8004314:	e8df f003 	tbb	[pc, r3]
 8004318:	2323191e 	.word	0x2323191e
 800431c:	23232323 	.word	0x23232323
 8004320:	23232323 	.word	0x23232323
 8004324:	23232323 	.word	0x23232323
 8004328:	1423      	.short	0x1423
 800432a:	0a          	.byte	0x0a
 800432b:	00          	.byte	0x00
 800432c:	480e      	ldr	r0, [pc, #56]	; (8004368 <pga_set+0x68>)
 800432e:	f002 fcb9 	bl	8006ca4 <rt_kprintf>
 8004332:	4e0e      	ldr	r6, [pc, #56]	; (800436c <pga_set+0x6c>)
 8004334:	4630      	mov	r0, r6
 8004336:	b2e9      	uxtb	r1, r5
 8004338:	f7ff ff96 	bl	8004268 <write_sport>
 800433c:	2001      	movs	r0, #1
 800433e:	bd70      	pop	{r4, r5, r6, pc}
 8004340:	480b      	ldr	r0, [pc, #44]	; (8004370 <pga_set+0x70>)
 8004342:	f002 fcaf 	bl	8006ca4 <rt_kprintf>
 8004346:	4e0b      	ldr	r6, [pc, #44]	; (8004374 <pga_set+0x74>)
 8004348:	e7f4      	b.n	8004334 <pga_set+0x34>
 800434a:	480b      	ldr	r0, [pc, #44]	; (8004378 <pga_set+0x78>)
 800434c:	f002 fcaa 	bl	8006ca4 <rt_kprintf>
 8004350:	4e0a      	ldr	r6, [pc, #40]	; (800437c <pga_set+0x7c>)
 8004352:	e7ef      	b.n	8004334 <pga_set+0x34>
 8004354:	480a      	ldr	r0, [pc, #40]	; (8004380 <pga_set+0x80>)
 8004356:	f002 fca5 	bl	8006ca4 <rt_kprintf>
 800435a:	4e0a      	ldr	r6, [pc, #40]	; (8004384 <pga_set+0x84>)
 800435c:	e7ea      	b.n	8004334 <pga_set+0x34>
 800435e:	480a      	ldr	r0, [pc, #40]	; (8004388 <pga_set+0x88>)
 8004360:	f002 fca0 	bl	8006ca4 <rt_kprintf>
 8004364:	e7e6      	b.n	8004334 <pga_set+0x34>
 8004366:	bf00      	nop
 8004368:	08009150 	.word	0x08009150
 800436c:	2000019c 	.word	0x2000019c
 8004370:	08009114 	.word	0x08009114
 8004374:	2000016c 	.word	0x2000016c
 8004378:	0800913c 	.word	0x0800913c
 800437c:	2000018c 	.word	0x2000018c
 8004380:	08009128 	.word	0x08009128
 8004384:	2000017c 	.word	0x2000017c
 8004388:	08009164 	.word	0x08009164

0800438c <GPIO_ds18b20_setup_out>:
 800438c:	b500      	push	{lr}
 800438e:	f240 13ac 	movw	r3, #428	; 0x1ac
 8004392:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8004396:	889a      	ldrh	r2, [r3, #4]
 8004398:	b083      	sub	sp, #12
 800439a:	6818      	ldr	r0, [r3, #0]
 800439c:	f8ad 2004 	strh.w	r2, [sp, #4]
 80043a0:	2314      	movs	r3, #20
 80043a2:	2202      	movs	r2, #2
 80043a4:	a901      	add	r1, sp, #4
 80043a6:	f88d 3007 	strb.w	r3, [sp, #7]
 80043aa:	f88d 2006 	strb.w	r2, [sp, #6]
 80043ae:	f7fd fe51 	bl	8002054 <GPIO_Init>
 80043b2:	b003      	add	sp, #12
 80043b4:	bd00      	pop	{pc}
 80043b6:	bf00      	nop

080043b8 <GPIO_ds18b20_setup_in>:
 80043b8:	b500      	push	{lr}
 80043ba:	f240 13ac 	movw	r3, #428	; 0x1ac
 80043be:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80043c2:	889a      	ldrh	r2, [r3, #4]
 80043c4:	b083      	sub	sp, #12
 80043c6:	6818      	ldr	r0, [r3, #0]
 80043c8:	f8ad 2004 	strh.w	r2, [sp, #4]
 80043cc:	2348      	movs	r3, #72	; 0x48
 80043ce:	2202      	movs	r2, #2
 80043d0:	a901      	add	r1, sp, #4
 80043d2:	f88d 3007 	strb.w	r3, [sp, #7]
 80043d6:	f88d 2006 	strb.w	r2, [sp, #6]
 80043da:	f7fd fe3b 	bl	8002054 <GPIO_Init>
 80043de:	b003      	add	sp, #12
 80043e0:	bd00      	pop	{pc}
 80043e2:	bf00      	nop

080043e4 <ds18b20_reset>:
 80043e4:	b510      	push	{r4, lr}
 80043e6:	4c17      	ldr	r4, [pc, #92]	; (8004444 <ds18b20_reset+0x60>)
 80043e8:	f7ff ffd0 	bl	800438c <GPIO_ds18b20_setup_out>
 80043ec:	88a1      	ldrh	r1, [r4, #4]
 80043ee:	6820      	ldr	r0, [r4, #0]
 80043f0:	f7fe f832 	bl	8002458 <GPIO_SetBits>
 80043f4:	2018      	movs	r0, #24
 80043f6:	f7fe ffcb 	bl	8003390 <delay_loop>
 80043fa:	6820      	ldr	r0, [r4, #0]
 80043fc:	88a1      	ldrh	r1, [r4, #4]
 80043fe:	f7fe f867 	bl	80024d0 <GPIO_ResetBits>
 8004402:	f44f 5016 	mov.w	r0, #9600	; 0x2580
 8004406:	f7fe ffc3 	bl	8003390 <delay_loop>
 800440a:	f7ff ffd5 	bl	80043b8 <GPIO_ds18b20_setup_in>
 800440e:	e000      	b.n	8004412 <ds18b20_reset+0x2e>
 8004410:	bf00      	nop
 8004412:	6820      	ldr	r0, [r4, #0]
 8004414:	88a1      	ldrh	r1, [r4, #4]
 8004416:	f7fd ffb9 	bl	800238c <GPIO_ReadInputDataBit>
 800441a:	2800      	cmp	r0, #0
 800441c:	d1f8      	bne.n	8004410 <ds18b20_reset+0x2c>
 800441e:	6820      	ldr	r0, [r4, #0]
 8004420:	88a1      	ldrh	r1, [r4, #4]
 8004422:	f7fd ffb3 	bl	800238c <GPIO_ReadInputDataBit>
 8004426:	b930      	cbnz	r0, 8004436 <ds18b20_reset+0x52>
 8004428:	bf00      	nop
 800442a:	6820      	ldr	r0, [r4, #0]
 800442c:	88a1      	ldrh	r1, [r4, #4]
 800442e:	f7fd ffad 	bl	800238c <GPIO_ReadInputDataBit>
 8004432:	2800      	cmp	r0, #0
 8004434:	d0f8      	beq.n	8004428 <ds18b20_reset+0x44>
 8004436:	f44f 7034 	mov.w	r0, #720	; 0x2d0
 800443a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800443e:	f7fe bfa7 	b.w	8003390 <delay_loop>
 8004442:	bf00      	nop
 8004444:	200001ac 	.word	0x200001ac

08004448 <read_bit>:
 8004448:	b510      	push	{r4, lr}
 800444a:	f240 14ac 	movw	r4, #428	; 0x1ac
 800444e:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8004452:	f7ff ff9b 	bl	800438c <GPIO_ds18b20_setup_out>
 8004456:	88a1      	ldrh	r1, [r4, #4]
 8004458:	6820      	ldr	r0, [r4, #0]
 800445a:	f7fd fffd 	bl	8002458 <GPIO_SetBits>
 800445e:	203c      	movs	r0, #60	; 0x3c
 8004460:	f7fe ff96 	bl	8003390 <delay_loop>
 8004464:	88a1      	ldrh	r1, [r4, #4]
 8004466:	6820      	ldr	r0, [r4, #0]
 8004468:	f7fe f832 	bl	80024d0 <GPIO_ResetBits>
 800446c:	2024      	movs	r0, #36	; 0x24
 800446e:	f7fe ff8f 	bl	8003390 <delay_loop>
 8004472:	f7ff ffa1 	bl	80043b8 <GPIO_ds18b20_setup_in>
 8004476:	203c      	movs	r0, #60	; 0x3c
 8004478:	f7fe ff8a 	bl	8003390 <delay_loop>
 800447c:	88a1      	ldrh	r1, [r4, #4]
 800447e:	6820      	ldr	r0, [r4, #0]
 8004480:	f7fd ff84 	bl	800238c <GPIO_ReadInputDataBit>
 8004484:	4604      	mov	r4, r0
 8004486:	f44f 7096 	mov.w	r0, #300	; 0x12c
 800448a:	f7fe ff81 	bl	8003390 <delay_loop>
 800448e:	4620      	mov	r0, r4
 8004490:	bd10      	pop	{r4, pc}
 8004492:	bf00      	nop

08004494 <temp_read_byte>:
 8004494:	b538      	push	{r3, r4, r5, lr}
 8004496:	f7ff ffd7 	bl	8004448 <read_bit>
 800449a:	4604      	mov	r4, r0
 800449c:	f7ff ffd4 	bl	8004448 <read_bit>
 80044a0:	01a1      	lsls	r1, r4, #6
 80044a2:	f001 0240 	and.w	r2, r1, #64	; 0x40
 80044a6:	ea42 10c0 	orr.w	r0, r2, r0, lsl #7
 80044aa:	b2c5      	uxtb	r5, r0
 80044ac:	f7ff ffcc 	bl	8004448 <read_bit>
 80044b0:	4604      	mov	r4, r0
 80044b2:	f7ff ffc9 	bl	8004448 <read_bit>
 80044b6:	086b      	lsrs	r3, r5, #1
 80044b8:	ea43 11c4 	orr.w	r1, r3, r4, lsl #7
 80044bc:	b2ca      	uxtb	r2, r1
 80044be:	01c0      	lsls	r0, r0, #7
 80044c0:	ea40 0552 	orr.w	r5, r0, r2, lsr #1
 80044c4:	f7ff ffc0 	bl	8004448 <read_bit>
 80044c8:	b2ec      	uxtb	r4, r5
 80044ca:	01c3      	lsls	r3, r0, #7
 80044cc:	ea43 0154 	orr.w	r1, r3, r4, lsr #1
 80044d0:	b2cd      	uxtb	r5, r1
 80044d2:	f7ff ffb9 	bl	8004448 <read_bit>
 80044d6:	4604      	mov	r4, r0
 80044d8:	f7ff ffb6 	bl	8004448 <read_bit>
 80044dc:	086d      	lsrs	r5, r5, #1
 80044de:	ea45 12c4 	orr.w	r2, r5, r4, lsl #7
 80044e2:	b2d3      	uxtb	r3, r2
 80044e4:	01c0      	lsls	r0, r0, #7
 80044e6:	ea40 0153 	orr.w	r1, r0, r3, lsr #1
 80044ea:	b2cc      	uxtb	r4, r1
 80044ec:	f7ff ffac 	bl	8004448 <read_bit>
 80044f0:	01c2      	lsls	r2, r0, #7
 80044f2:	ea42 0354 	orr.w	r3, r2, r4, lsr #1
 80044f6:	b2d8      	uxtb	r0, r3
 80044f8:	bd38      	pop	{r3, r4, r5, pc}
 80044fa:	bf00      	nop

080044fc <temp_write_byte>:
 80044fc:	b538      	push	{r3, r4, r5, lr}
 80044fe:	4c90      	ldr	r4, [pc, #576]	; (8004740 <temp_write_byte+0x244>)
 8004500:	4605      	mov	r5, r0
 8004502:	f7ff ff43 	bl	800438c <GPIO_ds18b20_setup_out>
 8004506:	88a1      	ldrh	r1, [r4, #4]
 8004508:	6820      	ldr	r0, [r4, #0]
 800450a:	f7fd ffa5 	bl	8002458 <GPIO_SetBits>
 800450e:	2018      	movs	r0, #24
 8004510:	f7fe ff3e 	bl	8003390 <delay_loop>
 8004514:	07eb      	lsls	r3, r5, #31
 8004516:	88a1      	ldrh	r1, [r4, #4]
 8004518:	6820      	ldr	r0, [r4, #0]
 800451a:	f100 80a0 	bmi.w	800465e <temp_write_byte+0x162>
 800451e:	f7fd ffd7 	bl	80024d0 <GPIO_ResetBits>
 8004522:	f44f 7052 	mov.w	r0, #840	; 0x348
 8004526:	f7fe ff33 	bl	8003390 <delay_loop>
 800452a:	6820      	ldr	r0, [r4, #0]
 800452c:	88a1      	ldrh	r1, [r4, #4]
 800452e:	f7fd ff93 	bl	8002458 <GPIO_SetBits>
 8004532:	203c      	movs	r0, #60	; 0x3c
 8004534:	f7fe ff2c 	bl	8003390 <delay_loop>
 8004538:	f005 0302 	and.w	r3, r5, #2
 800453c:	b2da      	uxtb	r2, r3
 800453e:	88a1      	ldrh	r1, [r4, #4]
 8004540:	6820      	ldr	r0, [r4, #0]
 8004542:	2a00      	cmp	r2, #0
 8004544:	f040 80ed 	bne.w	8004722 <temp_write_byte+0x226>
 8004548:	f7fd ffc2 	bl	80024d0 <GPIO_ResetBits>
 800454c:	f44f 7052 	mov.w	r0, #840	; 0x348
 8004550:	f7fe ff1e 	bl	8003390 <delay_loop>
 8004554:	6820      	ldr	r0, [r4, #0]
 8004556:	88a1      	ldrh	r1, [r4, #4]
 8004558:	f7fd ff7e 	bl	8002458 <GPIO_SetBits>
 800455c:	203c      	movs	r0, #60	; 0x3c
 800455e:	f7fe ff17 	bl	8003390 <delay_loop>
 8004562:	f005 0004 	and.w	r0, r5, #4
 8004566:	b2c3      	uxtb	r3, r0
 8004568:	88a1      	ldrh	r1, [r4, #4]
 800456a:	6820      	ldr	r0, [r4, #0]
 800456c:	2b00      	cmp	r3, #0
 800456e:	f040 80ca 	bne.w	8004706 <temp_write_byte+0x20a>
 8004572:	f7fd ffad 	bl	80024d0 <GPIO_ResetBits>
 8004576:	f44f 7052 	mov.w	r0, #840	; 0x348
 800457a:	f7fe ff09 	bl	8003390 <delay_loop>
 800457e:	6820      	ldr	r0, [r4, #0]
 8004580:	88a1      	ldrh	r1, [r4, #4]
 8004582:	f7fd ff69 	bl	8002458 <GPIO_SetBits>
 8004586:	203c      	movs	r0, #60	; 0x3c
 8004588:	f7fe ff02 	bl	8003390 <delay_loop>
 800458c:	f005 0108 	and.w	r1, r5, #8
 8004590:	b2ca      	uxtb	r2, r1
 8004592:	6820      	ldr	r0, [r4, #0]
 8004594:	88a1      	ldrh	r1, [r4, #4]
 8004596:	2a00      	cmp	r2, #0
 8004598:	f040 80a7 	bne.w	80046ea <temp_write_byte+0x1ee>
 800459c:	f7fd ff98 	bl	80024d0 <GPIO_ResetBits>
 80045a0:	f44f 7052 	mov.w	r0, #840	; 0x348
 80045a4:	f7fe fef4 	bl	8003390 <delay_loop>
 80045a8:	6820      	ldr	r0, [r4, #0]
 80045aa:	88a1      	ldrh	r1, [r4, #4]
 80045ac:	f7fd ff54 	bl	8002458 <GPIO_SetBits>
 80045b0:	203c      	movs	r0, #60	; 0x3c
 80045b2:	f7fe feed 	bl	8003390 <delay_loop>
 80045b6:	f005 0010 	and.w	r0, r5, #16
 80045ba:	b2c3      	uxtb	r3, r0
 80045bc:	88a1      	ldrh	r1, [r4, #4]
 80045be:	6820      	ldr	r0, [r4, #0]
 80045c0:	2b00      	cmp	r3, #0
 80045c2:	f040 8084 	bne.w	80046ce <temp_write_byte+0x1d2>
 80045c6:	f7fd ff83 	bl	80024d0 <GPIO_ResetBits>
 80045ca:	f44f 7052 	mov.w	r0, #840	; 0x348
 80045ce:	f7fe fedf 	bl	8003390 <delay_loop>
 80045d2:	6820      	ldr	r0, [r4, #0]
 80045d4:	88a1      	ldrh	r1, [r4, #4]
 80045d6:	f7fd ff3f 	bl	8002458 <GPIO_SetBits>
 80045da:	203c      	movs	r0, #60	; 0x3c
 80045dc:	f7fe fed8 	bl	8003390 <delay_loop>
 80045e0:	f005 0120 	and.w	r1, r5, #32
 80045e4:	b2ca      	uxtb	r2, r1
 80045e6:	6820      	ldr	r0, [r4, #0]
 80045e8:	88a1      	ldrh	r1, [r4, #4]
 80045ea:	2a00      	cmp	r2, #0
 80045ec:	d161      	bne.n	80046b2 <temp_write_byte+0x1b6>
 80045ee:	f7fd ff6f 	bl	80024d0 <GPIO_ResetBits>
 80045f2:	f44f 7052 	mov.w	r0, #840	; 0x348
 80045f6:	f7fe fecb 	bl	8003390 <delay_loop>
 80045fa:	6820      	ldr	r0, [r4, #0]
 80045fc:	88a1      	ldrh	r1, [r4, #4]
 80045fe:	f7fd ff2b 	bl	8002458 <GPIO_SetBits>
 8004602:	203c      	movs	r0, #60	; 0x3c
 8004604:	f7fe fec4 	bl	8003390 <delay_loop>
 8004608:	f005 0040 	and.w	r0, r5, #64	; 0x40
 800460c:	b2c3      	uxtb	r3, r0
 800460e:	88a1      	ldrh	r1, [r4, #4]
 8004610:	6820      	ldr	r0, [r4, #0]
 8004612:	2b00      	cmp	r3, #0
 8004614:	d13f      	bne.n	8004696 <temp_write_byte+0x19a>
 8004616:	f7fd ff5b 	bl	80024d0 <GPIO_ResetBits>
 800461a:	f44f 7052 	mov.w	r0, #840	; 0x348
 800461e:	f7fe feb7 	bl	8003390 <delay_loop>
 8004622:	6820      	ldr	r0, [r4, #0]
 8004624:	88a1      	ldrh	r1, [r4, #4]
 8004626:	f7fd ff17 	bl	8002458 <GPIO_SetBits>
 800462a:	203c      	movs	r0, #60	; 0x3c
 800462c:	f7fe feb0 	bl	8003390 <delay_loop>
 8004630:	f005 0580 	and.w	r5, r5, #128	; 0x80
 8004634:	b2ed      	uxtb	r5, r5
 8004636:	88a1      	ldrh	r1, [r4, #4]
 8004638:	6820      	ldr	r0, [r4, #0]
 800463a:	b1f5      	cbz	r5, 800467a <temp_write_byte+0x17e>
 800463c:	f7fd ff48 	bl	80024d0 <GPIO_ResetBits>
 8004640:	203c      	movs	r0, #60	; 0x3c
 8004642:	f7fe fea5 	bl	8003390 <delay_loop>
 8004646:	6820      	ldr	r0, [r4, #0]
 8004648:	88a1      	ldrh	r1, [r4, #4]
 800464a:	f7fd ff05 	bl	8002458 <GPIO_SetBits>
 800464e:	f44f 7052 	mov.w	r0, #840	; 0x348
 8004652:	f7fe fe9d 	bl	8003390 <delay_loop>
 8004656:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800465a:	f7ff bead 	b.w	80043b8 <GPIO_ds18b20_setup_in>
 800465e:	f7fd ff37 	bl	80024d0 <GPIO_ResetBits>
 8004662:	203c      	movs	r0, #60	; 0x3c
 8004664:	f7fe fe94 	bl	8003390 <delay_loop>
 8004668:	6820      	ldr	r0, [r4, #0]
 800466a:	88a1      	ldrh	r1, [r4, #4]
 800466c:	f7fd fef4 	bl	8002458 <GPIO_SetBits>
 8004670:	f44f 7052 	mov.w	r0, #840	; 0x348
 8004674:	f7fe fe8c 	bl	8003390 <delay_loop>
 8004678:	e75e      	b.n	8004538 <temp_write_byte+0x3c>
 800467a:	f7fd ff29 	bl	80024d0 <GPIO_ResetBits>
 800467e:	f44f 7052 	mov.w	r0, #840	; 0x348
 8004682:	f7fe fe85 	bl	8003390 <delay_loop>
 8004686:	6820      	ldr	r0, [r4, #0]
 8004688:	88a1      	ldrh	r1, [r4, #4]
 800468a:	f7fd fee5 	bl	8002458 <GPIO_SetBits>
 800468e:	203c      	movs	r0, #60	; 0x3c
 8004690:	f7fe fe7e 	bl	8003390 <delay_loop>
 8004694:	e7df      	b.n	8004656 <temp_write_byte+0x15a>
 8004696:	f7fd ff1b 	bl	80024d0 <GPIO_ResetBits>
 800469a:	203c      	movs	r0, #60	; 0x3c
 800469c:	f7fe fe78 	bl	8003390 <delay_loop>
 80046a0:	6820      	ldr	r0, [r4, #0]
 80046a2:	88a1      	ldrh	r1, [r4, #4]
 80046a4:	f7fd fed8 	bl	8002458 <GPIO_SetBits>
 80046a8:	f44f 7052 	mov.w	r0, #840	; 0x348
 80046ac:	f7fe fe70 	bl	8003390 <delay_loop>
 80046b0:	e7be      	b.n	8004630 <temp_write_byte+0x134>
 80046b2:	f7fd ff0d 	bl	80024d0 <GPIO_ResetBits>
 80046b6:	203c      	movs	r0, #60	; 0x3c
 80046b8:	f7fe fe6a 	bl	8003390 <delay_loop>
 80046bc:	6820      	ldr	r0, [r4, #0]
 80046be:	88a1      	ldrh	r1, [r4, #4]
 80046c0:	f7fd feca 	bl	8002458 <GPIO_SetBits>
 80046c4:	f44f 7052 	mov.w	r0, #840	; 0x348
 80046c8:	f7fe fe62 	bl	8003390 <delay_loop>
 80046cc:	e79c      	b.n	8004608 <temp_write_byte+0x10c>
 80046ce:	f7fd feff 	bl	80024d0 <GPIO_ResetBits>
 80046d2:	203c      	movs	r0, #60	; 0x3c
 80046d4:	f7fe fe5c 	bl	8003390 <delay_loop>
 80046d8:	6820      	ldr	r0, [r4, #0]
 80046da:	88a1      	ldrh	r1, [r4, #4]
 80046dc:	f7fd febc 	bl	8002458 <GPIO_SetBits>
 80046e0:	f44f 7052 	mov.w	r0, #840	; 0x348
 80046e4:	f7fe fe54 	bl	8003390 <delay_loop>
 80046e8:	e77a      	b.n	80045e0 <temp_write_byte+0xe4>
 80046ea:	f7fd fef1 	bl	80024d0 <GPIO_ResetBits>
 80046ee:	203c      	movs	r0, #60	; 0x3c
 80046f0:	f7fe fe4e 	bl	8003390 <delay_loop>
 80046f4:	6820      	ldr	r0, [r4, #0]
 80046f6:	88a1      	ldrh	r1, [r4, #4]
 80046f8:	f7fd feae 	bl	8002458 <GPIO_SetBits>
 80046fc:	f44f 7052 	mov.w	r0, #840	; 0x348
 8004700:	f7fe fe46 	bl	8003390 <delay_loop>
 8004704:	e757      	b.n	80045b6 <temp_write_byte+0xba>
 8004706:	f7fd fee3 	bl	80024d0 <GPIO_ResetBits>
 800470a:	203c      	movs	r0, #60	; 0x3c
 800470c:	f7fe fe40 	bl	8003390 <delay_loop>
 8004710:	6820      	ldr	r0, [r4, #0]
 8004712:	88a1      	ldrh	r1, [r4, #4]
 8004714:	f7fd fea0 	bl	8002458 <GPIO_SetBits>
 8004718:	f44f 7052 	mov.w	r0, #840	; 0x348
 800471c:	f7fe fe38 	bl	8003390 <delay_loop>
 8004720:	e734      	b.n	800458c <temp_write_byte+0x90>
 8004722:	f7fd fed5 	bl	80024d0 <GPIO_ResetBits>
 8004726:	203c      	movs	r0, #60	; 0x3c
 8004728:	f7fe fe32 	bl	8003390 <delay_loop>
 800472c:	6820      	ldr	r0, [r4, #0]
 800472e:	88a1      	ldrh	r1, [r4, #4]
 8004730:	f7fd fe92 	bl	8002458 <GPIO_SetBits>
 8004734:	f44f 7052 	mov.w	r0, #840	; 0x348
 8004738:	f7fe fe2a 	bl	8003390 <delay_loop>
 800473c:	e711      	b.n	8004562 <temp_write_byte+0x66>
 800473e:	bf00      	nop
 8004740:	200001ac 	.word	0x200001ac

08004744 <temp_trig>:
 8004744:	b508      	push	{r3, lr}
 8004746:	f7ff fe4d 	bl	80043e4 <ds18b20_reset>
 800474a:	20cc      	movs	r0, #204	; 0xcc
 800474c:	f7ff fed6 	bl	80044fc <temp_write_byte>
 8004750:	2044      	movs	r0, #68	; 0x44
 8004752:	f7ff fed3 	bl	80044fc <temp_write_byte>
 8004756:	f64c 3080 	movw	r0, #52096	; 0xcb80
 800475a:	f2c0 00a4 	movt	r0, #164	; 0xa4
 800475e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8004762:	f7fe be15 	b.w	8003390 <delay_loop>
 8004766:	bf00      	nop

08004768 <get_temp_>:
 8004768:	b510      	push	{r4, lr}
 800476a:	f7ff ffeb 	bl	8004744 <temp_trig>
 800476e:	f7ff fe39 	bl	80043e4 <ds18b20_reset>
 8004772:	20cc      	movs	r0, #204	; 0xcc
 8004774:	f7ff fec2 	bl	80044fc <temp_write_byte>
 8004778:	20be      	movs	r0, #190	; 0xbe
 800477a:	f7ff febf 	bl	80044fc <temp_write_byte>
 800477e:	f7ff fe89 	bl	8004494 <temp_read_byte>
 8004782:	4604      	mov	r4, r0
 8004784:	f7ff fe86 	bl	8004494 <temp_read_byte>
 8004788:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
 800478c:	bd10      	pop	{r4, pc}
 800478e:	bf00      	nop

08004790 <usb_init>:
 8004790:	b508      	push	{r3, lr}
 8004792:	f000 f8bb 	bl	800490c <Set_System>
 8004796:	f000 f86d 	bl	8004874 <USB_Interrupts_Config>
 800479a:	f000 f85f 	bl	800485c <Set_USBClock>
 800479e:	f000 fe1d 	bl	80053dc <USB_Init>
 80047a2:	f249 1090 	movw	r0, #37264	; 0x9190
 80047a6:	f6c0 0000 	movt	r0, #2048	; 0x800
 80047aa:	2101      	movs	r1, #1
 80047ac:	2200      	movs	r2, #0
 80047ae:	f001 fc63 	bl	8006078 <rt_sem_create>
 80047b2:	f240 7314 	movw	r3, #1812	; 0x714
 80047b6:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80047ba:	6018      	str	r0, [r3, #0]
 80047bc:	bd08      	pop	{r3, pc}
 80047be:	bf00      	nop

080047c0 <Delay>:
 80047c0:	b082      	sub	sp, #8
 80047c2:	9001      	str	r0, [sp, #4]
 80047c4:	9a01      	ldr	r2, [sp, #4]
 80047c6:	4b06      	ldr	r3, [pc, #24]	; (80047e0 <Delay+0x20>)
 80047c8:	601a      	str	r2, [r3, #0]
 80047ca:	9801      	ldr	r0, [sp, #4]
 80047cc:	b128      	cbz	r0, 80047da <Delay+0x1a>
 80047ce:	9901      	ldr	r1, [sp, #4]
 80047d0:	1e4a      	subs	r2, r1, #1
 80047d2:	9201      	str	r2, [sp, #4]
 80047d4:	9b01      	ldr	r3, [sp, #4]
 80047d6:	2b00      	cmp	r3, #0
 80047d8:	d1f9      	bne.n	80047ce <Delay+0xe>
 80047da:	b002      	add	sp, #8
 80047dc:	4770      	bx	lr
 80047de:	bf00      	nop
 80047e0:	2000070c 	.word	0x2000070c

080047e4 <IntToUnicode>:
 80047e4:	b470      	push	{r4, r5, r6}
 80047e6:	b38a      	cbz	r2, 800484c <IntToUnicode+0x68>
 80047e8:	1e56      	subs	r6, r2, #1
 80047ea:	b2f2      	uxtb	r2, r6
 80047ec:	1c53      	adds	r3, r2, #1
 80047ee:	005e      	lsls	r6, r3, #1
 80047f0:	0f03      	lsrs	r3, r0, #28
 80047f2:	1eb2      	subs	r2, r6, #2
 80047f4:	2400      	movs	r4, #0
 80047f6:	2b09      	cmp	r3, #9
 80047f8:	f3c2 0240 	ubfx	r2, r2, #1, #1
 80047fc:	d928      	bls.n	8004850 <IntToUnicode+0x6c>
 80047fe:	3337      	adds	r3, #55	; 0x37
 8004800:	700b      	strb	r3, [r1, #0]
 8004802:	2302      	movs	r3, #2
 8004804:	0100      	lsls	r0, r0, #4
 8004806:	42b3      	cmp	r3, r6
 8004808:	704c      	strb	r4, [r1, #1]
 800480a:	d01f      	beq.n	800484c <IntToUnicode+0x68>
 800480c:	b152      	cbz	r2, 8004824 <IntToUnicode+0x40>
 800480e:	0f02      	lsrs	r2, r0, #28
 8004810:	2a09      	cmp	r2, #9
 8004812:	d913      	bls.n	800483c <IntToUnicode+0x58>
 8004814:	3237      	adds	r2, #55	; 0x37
 8004816:	54ca      	strb	r2, [r1, r3]
 8004818:	18ca      	adds	r2, r1, r3
 800481a:	3302      	adds	r3, #2
 800481c:	0100      	lsls	r0, r0, #4
 800481e:	42b3      	cmp	r3, r6
 8004820:	7054      	strb	r4, [r2, #1]
 8004822:	d013      	beq.n	800484c <IntToUnicode+0x68>
 8004824:	0f05      	lsrs	r5, r0, #28
 8004826:	2d09      	cmp	r5, #9
 8004828:	d815      	bhi.n	8004856 <IntToUnicode+0x72>
 800482a:	3530      	adds	r5, #48	; 0x30
 800482c:	54cd      	strb	r5, [r1, r3]
 800482e:	0100      	lsls	r0, r0, #4
 8004830:	0f02      	lsrs	r2, r0, #28
 8004832:	18cd      	adds	r5, r1, r3
 8004834:	3302      	adds	r3, #2
 8004836:	2a09      	cmp	r2, #9
 8004838:	706c      	strb	r4, [r5, #1]
 800483a:	d8eb      	bhi.n	8004814 <IntToUnicode+0x30>
 800483c:	3230      	adds	r2, #48	; 0x30
 800483e:	54ca      	strb	r2, [r1, r3]
 8004840:	18ca      	adds	r2, r1, r3
 8004842:	3302      	adds	r3, #2
 8004844:	0100      	lsls	r0, r0, #4
 8004846:	42b3      	cmp	r3, r6
 8004848:	7054      	strb	r4, [r2, #1]
 800484a:	d1eb      	bne.n	8004824 <IntToUnicode+0x40>
 800484c:	bc70      	pop	{r4, r5, r6}
 800484e:	4770      	bx	lr
 8004850:	3330      	adds	r3, #48	; 0x30
 8004852:	700b      	strb	r3, [r1, #0]
 8004854:	e7d5      	b.n	8004802 <IntToUnicode+0x1e>
 8004856:	3537      	adds	r5, #55	; 0x37
 8004858:	54cd      	strb	r5, [r1, r3]
 800485a:	e7e8      	b.n	800482e <IntToUnicode+0x4a>

0800485c <Set_USBClock>:
 800485c:	2000      	movs	r0, #0
 800485e:	b508      	push	{r3, lr}
 8004860:	f7fc f8c6 	bl	80009f0 <RCC_USBCLKConfig>
 8004864:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8004868:	2101      	movs	r1, #1
 800486a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800486e:	f7fc b999 	b.w	8000ba4 <RCC_APB1PeriphClockCmd>
 8004872:	bf00      	nop

08004874 <USB_Interrupts_Config>:
 8004874:	b530      	push	{r4, r5, lr}
 8004876:	f44f 60a0 	mov.w	r0, #1280	; 0x500
 800487a:	b083      	sub	sp, #12
 800487c:	f7fe fb64 	bl	8002f48 <NVIC_PriorityGroupConfig>
 8004880:	2401      	movs	r4, #1
 8004882:	2500      	movs	r5, #0
 8004884:	a801      	add	r0, sp, #4
 8004886:	2314      	movs	r3, #20
 8004888:	f88d 3004 	strb.w	r3, [sp, #4]
 800488c:	f88d 4005 	strb.w	r4, [sp, #5]
 8004890:	f88d 5006 	strb.w	r5, [sp, #6]
 8004894:	f88d 4007 	strb.w	r4, [sp, #7]
 8004898:	f7fe fb78 	bl	8002f8c <NVIC_Init>
 800489c:	212a      	movs	r1, #42	; 0x2a
 800489e:	a801      	add	r0, sp, #4
 80048a0:	f88d 1004 	strb.w	r1, [sp, #4]
 80048a4:	f88d 5005 	strb.w	r5, [sp, #5]
 80048a8:	f88d 4007 	strb.w	r4, [sp, #7]
 80048ac:	f7fe fb6e 	bl	8002f8c <NVIC_Init>
 80048b0:	b003      	add	sp, #12
 80048b2:	bd30      	pop	{r4, r5, pc}

080048b4 <USB_Cable_Config>:
 80048b4:	b938      	cbnz	r0, 80048c6 <USB_Cable_Config+0x12>
 80048b6:	f44f 50a0 	mov.w	r0, #5120	; 0x1400
 80048ba:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80048be:	f44f 7100 	mov.w	r1, #512	; 0x200
 80048c2:	f7fd bdc9 	b.w	8002458 <GPIO_SetBits>
 80048c6:	f44f 50a0 	mov.w	r0, #5120	; 0x1400
 80048ca:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80048ce:	f44f 7100 	mov.w	r1, #512	; 0x200
 80048d2:	f7fd bdfd 	b.w	80024d0 <GPIO_ResetBits>
 80048d6:	bf00      	nop

080048d8 <GPIO_Configuration>:
 80048d8:	b500      	push	{lr}
 80048da:	2020      	movs	r0, #32
 80048dc:	b083      	sub	sp, #12
 80048de:	2101      	movs	r1, #1
 80048e0:	f7fc f934 	bl	8000b4c <RCC_APB2PeriphClockCmd>
 80048e4:	f44f 7300 	mov.w	r3, #512	; 0x200
 80048e8:	f44f 50a0 	mov.w	r0, #5120	; 0x1400
 80048ec:	f8ad 3004 	strh.w	r3, [sp, #4]
 80048f0:	2203      	movs	r2, #3
 80048f2:	2314      	movs	r3, #20
 80048f4:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80048f8:	a901      	add	r1, sp, #4
 80048fa:	f88d 2006 	strb.w	r2, [sp, #6]
 80048fe:	f88d 3007 	strb.w	r3, [sp, #7]
 8004902:	f7fd fba7 	bl	8002054 <GPIO_Init>
 8004906:	b003      	add	sp, #12
 8004908:	bd00      	pop	{pc}
 800490a:	bf00      	nop

0800490c <Set_System>:
 800490c:	b508      	push	{r3, lr}
 800490e:	2020      	movs	r0, #32
 8004910:	2101      	movs	r1, #1
 8004912:	f7fc f91b 	bl	8000b4c <RCC_APB2PeriphClockCmd>
 8004916:	f44f 4040 	mov.w	r0, #49152	; 0xc000
 800491a:	f7fc f879 	bl	8000a10 <RCC_ADCCLKConfig>
 800491e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8004922:	f7ff bfd9 	b.w	80048d8 <GPIO_Configuration>
 8004926:	bf00      	nop

08004928 <Get_SerialNum>:
 8004928:	f24f 72e8 	movw	r2, #63464	; 0xf7e8
 800492c:	f24f 73f0 	movw	r3, #63472	; 0xf7f0
 8004930:	f6c1 72ff 	movt	r2, #8191	; 0x1fff
 8004934:	f6c1 73ff 	movt	r3, #8191	; 0x1fff
 8004938:	6810      	ldr	r0, [r2, #0]
 800493a:	681a      	ldr	r2, [r3, #0]
 800493c:	f24f 71ec 	movw	r1, #63468	; 0xf7ec
 8004940:	f6c1 71ff 	movt	r1, #8191	; 0x1fff
 8004944:	1880      	adds	r0, r0, r2
 8004946:	b510      	push	{r4, lr}
 8004948:	680c      	ldr	r4, [r1, #0]
 800494a:	d100      	bne.n	800494e <Get_SerialNum+0x26>
 800494c:	bd10      	pop	{r4, pc}
 800494e:	2208      	movs	r2, #8
 8004950:	4904      	ldr	r1, [pc, #16]	; (8004964 <Get_SerialNum+0x3c>)
 8004952:	f7ff ff47 	bl	80047e4 <IntToUnicode>
 8004956:	4904      	ldr	r1, [pc, #16]	; (8004968 <Get_SerialNum+0x40>)
 8004958:	4620      	mov	r0, r4
 800495a:	2204      	movs	r2, #4
 800495c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8004960:	f7ff bf40 	b.w	80047e4 <IntToUnicode>
 8004964:	200001ca 	.word	0x200001ca
 8004968:	200001da 	.word	0x200001da

0800496c <STM_EVAL_LEDOn>:
 800496c:	f240 12b8 	movw	r2, #440	; 0x1b8
 8004970:	f249 1394 	movw	r3, #37268	; 0x9194
 8004974:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004978:	f6c0 0300 	movt	r3, #2048	; 0x800
 800497c:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
 8004980:	f833 0010 	ldrh.w	r0, [r3, r0, lsl #1]
 8004984:	6108      	str	r0, [r1, #16]
 8004986:	4770      	bx	lr

08004988 <STM_EVAL_LEDOff>:
 8004988:	f240 12b8 	movw	r2, #440	; 0x1b8
 800498c:	f249 1394 	movw	r3, #37268	; 0x9194
 8004990:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004994:	f6c0 0300 	movt	r3, #2048	; 0x800
 8004998:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
 800499c:	f833 0010 	ldrh.w	r0, [r3, r0, lsl #1]
 80049a0:	6148      	str	r0, [r1, #20]
 80049a2:	4770      	bx	lr

080049a4 <USB_LP_CAN1_RX0_IRQHandler>:
 80049a4:	f000 be16 	b.w	80055d4 <USB_Istr>

080049a8 <USBWakeUp_IRQHandler>:
 80049a8:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80049ac:	f7fc b982 	b.w	8000cb4 <EXTI_ClearITPendingBit>

080049b0 <Standard_GetConfiguration>:
 80049b0:	b508      	push	{r3, lr}
 80049b2:	b138      	cbz	r0, 80049c4 <Standard_GetConfiguration+0x14>
 80049b4:	4b06      	ldr	r3, [pc, #24]	; (80049d0 <Standard_GetConfiguration+0x20>)
 80049b6:	6818      	ldr	r0, [r3, #0]
 80049b8:	6801      	ldr	r1, [r0, #0]
 80049ba:	4788      	blx	r1
 80049bc:	4a05      	ldr	r2, [pc, #20]	; (80049d4 <Standard_GetConfiguration+0x24>)
 80049be:	6810      	ldr	r0, [r2, #0]
 80049c0:	300a      	adds	r0, #10
 80049c2:	bd08      	pop	{r3, pc}
 80049c4:	4b03      	ldr	r3, [pc, #12]	; (80049d4 <Standard_GetConfiguration+0x24>)
 80049c6:	2201      	movs	r2, #1
 80049c8:	6819      	ldr	r1, [r3, #0]
 80049ca:	820a      	strh	r2, [r1, #16]
 80049cc:	bd08      	pop	{r3, pc}
 80049ce:	bf00      	nop
 80049d0:	200019d8 	.word	0x200019d8
 80049d4:	200019dc 	.word	0x200019dc

080049d8 <Standard_GetInterface>:
 80049d8:	b508      	push	{r3, lr}
 80049da:	b138      	cbz	r0, 80049ec <Standard_GetInterface+0x14>
 80049dc:	4b06      	ldr	r3, [pc, #24]	; (80049f8 <Standard_GetInterface+0x20>)
 80049de:	6818      	ldr	r0, [r3, #0]
 80049e0:	6881      	ldr	r1, [r0, #8]
 80049e2:	4788      	blx	r1
 80049e4:	4a05      	ldr	r2, [pc, #20]	; (80049fc <Standard_GetInterface+0x24>)
 80049e6:	6810      	ldr	r0, [r2, #0]
 80049e8:	300c      	adds	r0, #12
 80049ea:	bd08      	pop	{r3, pc}
 80049ec:	4b03      	ldr	r3, [pc, #12]	; (80049fc <Standard_GetInterface+0x24>)
 80049ee:	2201      	movs	r2, #1
 80049f0:	6819      	ldr	r1, [r3, #0]
 80049f2:	820a      	strh	r2, [r1, #16]
 80049f4:	bd08      	pop	{r3, pc}
 80049f6:	bf00      	nop
 80049f8:	200019d8 	.word	0x200019d8
 80049fc:	200019dc 	.word	0x200019dc

08004a00 <Standard_GetStatus>:
 8004a00:	b508      	push	{r3, lr}
 8004a02:	2800      	cmp	r0, #0
 8004a04:	d03b      	beq.n	8004a7e <Standard_GetStatus+0x7e>
 8004a06:	4b23      	ldr	r3, [pc, #140]	; (8004a94 <Standard_GetStatus+0x94>)
 8004a08:	4823      	ldr	r0, [pc, #140]	; (8004a98 <Standard_GetStatus+0x98>)
 8004a0a:	2100      	movs	r1, #0
 8004a0c:	681a      	ldr	r2, [r3, #0]
 8004a0e:	8001      	strh	r1, [r0, #0]
 8004a10:	7813      	ldrb	r3, [r2, #0]
 8004a12:	f013 037f 	ands.w	r3, r3, #127	; 0x7f
 8004a16:	d112      	bne.n	8004a3e <Standard_GetStatus+0x3e>
 8004a18:	7a53      	ldrb	r3, [r2, #9]
 8004a1a:	f003 0220 	and.w	r2, r3, #32
 8004a1e:	b2d1      	uxtb	r1, r2
 8004a20:	bb59      	cbnz	r1, 8004a7a <Standard_GetStatus+0x7a>
 8004a22:	7802      	ldrb	r2, [r0, #0]
 8004a24:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8004a28:	b2d9      	uxtb	r1, r3
 8004a2a:	b311      	cbz	r1, 8004a72 <Standard_GetStatus+0x72>
 8004a2c:	f042 0301 	orr.w	r3, r2, #1
 8004a30:	7003      	strb	r3, [r0, #0]
 8004a32:	481a      	ldr	r0, [pc, #104]	; (8004a9c <Standard_GetStatus+0x9c>)
 8004a34:	6801      	ldr	r1, [r0, #0]
 8004a36:	690a      	ldr	r2, [r1, #16]
 8004a38:	4790      	blx	r2
 8004a3a:	4817      	ldr	r0, [pc, #92]	; (8004a98 <Standard_GetStatus+0x98>)
 8004a3c:	bd08      	pop	{r3, pc}
 8004a3e:	2b01      	cmp	r3, #1
 8004a40:	d016      	beq.n	8004a70 <Standard_GetStatus+0x70>
 8004a42:	2b02      	cmp	r3, #2
 8004a44:	d113      	bne.n	8004a6e <Standard_GetStatus+0x6e>
 8004a46:	7951      	ldrb	r1, [r2, #5]
 8004a48:	f001 020f 	and.w	r2, r1, #15
 8004a4c:	0093      	lsls	r3, r2, #2
 8004a4e:	f103 4280 	add.w	r2, r3, #1073741824	; 0x40000000
 8004a52:	f502 43b8 	add.w	r3, r2, #23552	; 0x5c00
 8004a56:	f011 0f80 	tst.w	r1, #128	; 0x80
 8004a5a:	6819      	ldr	r1, [r3, #0]
 8004a5c:	d114      	bne.n	8004a88 <Standard_GetStatus+0x88>
 8004a5e:	f401 5240 	and.w	r2, r1, #12288	; 0x3000
 8004a62:	f5b2 5f80 	cmp.w	r2, #4096	; 0x1000
 8004a66:	d1e4      	bne.n	8004a32 <Standard_GetStatus+0x32>
 8004a68:	2101      	movs	r1, #1
 8004a6a:	7001      	strb	r1, [r0, #0]
 8004a6c:	e7e1      	b.n	8004a32 <Standard_GetStatus+0x32>
 8004a6e:	4608      	mov	r0, r1
 8004a70:	bd08      	pop	{r3, pc}
 8004a72:	f022 0201 	bic.w	r2, r2, #1
 8004a76:	7002      	strb	r2, [r0, #0]
 8004a78:	e7db      	b.n	8004a32 <Standard_GetStatus+0x32>
 8004a7a:	2202      	movs	r2, #2
 8004a7c:	e7d2      	b.n	8004a24 <Standard_GetStatus+0x24>
 8004a7e:	4b05      	ldr	r3, [pc, #20]	; (8004a94 <Standard_GetStatus+0x94>)
 8004a80:	2202      	movs	r2, #2
 8004a82:	6819      	ldr	r1, [r3, #0]
 8004a84:	820a      	strh	r2, [r1, #16]
 8004a86:	bd08      	pop	{r3, pc}
 8004a88:	f001 0330 	and.w	r3, r1, #48	; 0x30
 8004a8c:	2b10      	cmp	r3, #16
 8004a8e:	d1d0      	bne.n	8004a32 <Standard_GetStatus+0x32>
 8004a90:	e7ea      	b.n	8004a68 <Standard_GetStatus+0x68>
 8004a92:	bf00      	nop
 8004a94:	200019dc 	.word	0x200019dc
 8004a98:	200019ac 	.word	0x200019ac
 8004a9c:	200019d8 	.word	0x200019d8

08004aa0 <DataStageIn>:
 8004aa0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004aa4:	4e27      	ldr	r6, [pc, #156]	; (8004b44 <DataStageIn+0xa4>)
 8004aa6:	6834      	ldr	r4, [r6, #0]
 8004aa8:	8a23      	ldrh	r3, [r4, #16]
 8004aaa:	7a27      	ldrb	r7, [r4, #8]
 8004aac:	b923      	cbnz	r3, 8004ab8 <DataStageIn+0x18>
 8004aae:	2f04      	cmp	r7, #4
 8004ab0:	d02a      	beq.n	8004b08 <DataStageIn+0x68>
 8004ab2:	8aa5      	ldrh	r5, [r4, #20]
 8004ab4:	2704      	movs	r7, #4
 8004ab6:	e003      	b.n	8004ac0 <DataStageIn+0x20>
 8004ab8:	8aa5      	ldrh	r5, [r4, #20]
 8004aba:	42ab      	cmp	r3, r5
 8004abc:	d9fa      	bls.n	8004ab4 <DataStageIn+0x14>
 8004abe:	2702      	movs	r7, #2
 8004ac0:	429d      	cmp	r5, r3
 8004ac2:	bf28      	it	cs
 8004ac4:	461d      	movcs	r5, r3
 8004ac6:	69a1      	ldr	r1, [r4, #24]
 8004ac8:	4628      	mov	r0, r5
 8004aca:	4788      	blx	r1
 8004acc:	4680      	mov	r8, r0
 8004ace:	2000      	movs	r0, #0
 8004ad0:	f001 f86a 	bl	8005ba8 <GetEPTxAddr>
 8004ad4:	462a      	mov	r2, r5
 8004ad6:	4601      	mov	r1, r0
 8004ad8:	4640      	mov	r0, r8
 8004ada:	f000 fda7 	bl	800562c <UserToPMABufferCopy>
 8004ade:	4629      	mov	r1, r5
 8004ae0:	2000      	movs	r0, #0
 8004ae2:	f001 f881 	bl	8005be8 <SetEPTxCount>
 8004ae6:	8a20      	ldrh	r0, [r4, #16]
 8004ae8:	8a62      	ldrh	r2, [r4, #18]
 8004aea:	1b43      	subs	r3, r0, r5
 8004aec:	8223      	strh	r3, [r4, #16]
 8004aee:	18ad      	adds	r5, r5, r2
 8004af0:	4815      	ldr	r0, [pc, #84]	; (8004b48 <DataStageIn+0xa8>)
 8004af2:	4b16      	ldr	r3, [pc, #88]	; (8004b4c <DataStageIn+0xac>)
 8004af4:	8265      	strh	r5, [r4, #18]
 8004af6:	2130      	movs	r1, #48	; 0x30
 8004af8:	f44f 5240 	mov.w	r2, #12288	; 0x3000
 8004afc:	6834      	ldr	r4, [r6, #0]
 8004afe:	8001      	strh	r1, [r0, #0]
 8004b00:	801a      	strh	r2, [r3, #0]
 8004b02:	7227      	strb	r7, [r4, #8]
 8004b04:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004b08:	4a11      	ldr	r2, [pc, #68]	; (8004b50 <DataStageIn+0xb0>)
 8004b0a:	7811      	ldrb	r1, [r2, #0]
 8004b0c:	2901      	cmp	r1, #1
 8004b0e:	d006      	beq.n	8004b1e <DataStageIn+0x7e>
 8004b10:	480d      	ldr	r0, [pc, #52]	; (8004b48 <DataStageIn+0xa8>)
 8004b12:	2710      	movs	r7, #16
 8004b14:	8007      	strh	r7, [r0, #0]
 8004b16:	2707      	movs	r7, #7
 8004b18:	7227      	strb	r7, [r4, #8]
 8004b1a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004b1e:	f645 4150 	movw	r1, #23632	; 0x5c50
 8004b22:	f2c4 0100 	movt	r1, #16384	; 0x4000
 8004b26:	6808      	ldr	r0, [r1, #0]
 8004b28:	f243 0102 	movw	r1, #12290	; 0x3002
 8004b2c:	b280      	uxth	r0, r0
 8004b2e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004b32:	1841      	adds	r1, r0, r1
 8004b34:	0048      	lsls	r0, r1, #1
 8004b36:	4904      	ldr	r1, [pc, #16]	; (8004b48 <DataStageIn+0xa8>)
 8004b38:	6003      	str	r3, [r0, #0]
 8004b3a:	2030      	movs	r0, #48	; 0x30
 8004b3c:	8008      	strh	r0, [r1, #0]
 8004b3e:	7013      	strb	r3, [r2, #0]
 8004b40:	e7df      	b.n	8004b02 <DataStageIn+0x62>
 8004b42:	bf00      	nop
 8004b44:	200019dc 	.word	0x200019dc
 8004b48:	200019e4 	.word	0x200019e4
 8004b4c:	200019e2 	.word	0x200019e2
 8004b50:	20000710 	.word	0x20000710

08004b54 <Standard_SetConfiguration>:
 8004b54:	b510      	push	{r4, lr}
 8004b56:	4b0b      	ldr	r3, [pc, #44]	; (8004b84 <Standard_SetConfiguration+0x30>)
 8004b58:	4a0b      	ldr	r2, [pc, #44]	; (8004b88 <Standard_SetConfiguration+0x34>)
 8004b5a:	6818      	ldr	r0, [r3, #0]
 8004b5c:	7851      	ldrb	r1, [r2, #1]
 8004b5e:	78c3      	ldrb	r3, [r0, #3]
 8004b60:	4299      	cmp	r1, r3
 8004b62:	d201      	bcs.n	8004b68 <Standard_SetConfiguration+0x14>
 8004b64:	2002      	movs	r0, #2
 8004b66:	bd10      	pop	{r4, pc}
 8004b68:	7882      	ldrb	r2, [r0, #2]
 8004b6a:	2a00      	cmp	r2, #0
 8004b6c:	d1fa      	bne.n	8004b64 <Standard_SetConfiguration+0x10>
 8004b6e:	8884      	ldrh	r4, [r0, #4]
 8004b70:	2c00      	cmp	r4, #0
 8004b72:	d1f7      	bne.n	8004b64 <Standard_SetConfiguration+0x10>
 8004b74:	7283      	strb	r3, [r0, #10]
 8004b76:	4805      	ldr	r0, [pc, #20]	; (8004b8c <Standard_SetConfiguration+0x38>)
 8004b78:	6801      	ldr	r1, [r0, #0]
 8004b7a:	684b      	ldr	r3, [r1, #4]
 8004b7c:	4798      	blx	r3
 8004b7e:	4620      	mov	r0, r4
 8004b80:	bd10      	pop	{r4, pc}
 8004b82:	bf00      	nop
 8004b84:	200019dc 	.word	0x200019dc
 8004b88:	200002b0 	.word	0x200002b0
 8004b8c:	200019d8 	.word	0x200019d8

08004b90 <Standard_SetInterface>:
 8004b90:	b538      	push	{r3, r4, r5, lr}
 8004b92:	4a10      	ldr	r2, [pc, #64]	; (8004bd4 <Standard_SetInterface+0x44>)
 8004b94:	4c10      	ldr	r4, [pc, #64]	; (8004bd8 <Standard_SetInterface+0x48>)
 8004b96:	6811      	ldr	r1, [r2, #0]
 8004b98:	6823      	ldr	r3, [r4, #0]
 8004b9a:	698a      	ldr	r2, [r1, #24]
 8004b9c:	7958      	ldrb	r0, [r3, #5]
 8004b9e:	78d9      	ldrb	r1, [r3, #3]
 8004ba0:	4790      	blx	r2
 8004ba2:	6823      	ldr	r3, [r4, #0]
 8004ba4:	7a99      	ldrb	r1, [r3, #10]
 8004ba6:	b909      	cbnz	r1, 8004bac <Standard_SetInterface+0x1c>
 8004ba8:	2002      	movs	r0, #2
 8004baa:	bd38      	pop	{r3, r4, r5, pc}
 8004bac:	2800      	cmp	r0, #0
 8004bae:	d1fb      	bne.n	8004ba8 <Standard_SetInterface+0x18>
 8004bb0:	7918      	ldrb	r0, [r3, #4]
 8004bb2:	2800      	cmp	r0, #0
 8004bb4:	d1f8      	bne.n	8004ba8 <Standard_SetInterface+0x18>
 8004bb6:	789d      	ldrb	r5, [r3, #2]
 8004bb8:	2d00      	cmp	r5, #0
 8004bba:	d1f5      	bne.n	8004ba8 <Standard_SetInterface+0x18>
 8004bbc:	4a07      	ldr	r2, [pc, #28]	; (8004bdc <Standard_SetInterface+0x4c>)
 8004bbe:	6813      	ldr	r3, [r2, #0]
 8004bc0:	68d9      	ldr	r1, [r3, #12]
 8004bc2:	4788      	blx	r1
 8004bc4:	6823      	ldr	r3, [r4, #0]
 8004bc6:	4628      	mov	r0, r5
 8004bc8:	7959      	ldrb	r1, [r3, #5]
 8004bca:	78da      	ldrb	r2, [r3, #3]
 8004bcc:	72d9      	strb	r1, [r3, #11]
 8004bce:	731a      	strb	r2, [r3, #12]
 8004bd0:	bd38      	pop	{r3, r4, r5, pc}
 8004bd2:	bf00      	nop
 8004bd4:	200019b4 	.word	0x200019b4
 8004bd8:	200019dc 	.word	0x200019dc
 8004bdc:	200019d8 	.word	0x200019d8

08004be0 <Standard_ClearFeature>:
 8004be0:	b538      	push	{r3, r4, r5, lr}
 8004be2:	4b35      	ldr	r3, [pc, #212]	; (8004cb8 <Standard_ClearFeature+0xd8>)
 8004be4:	681b      	ldr	r3, [r3, #0]
 8004be6:	7818      	ldrb	r0, [r3, #0]
 8004be8:	f010 007f 	ands.w	r0, r0, #127	; 0x7f
 8004bec:	d003      	beq.n	8004bf6 <Standard_ClearFeature+0x16>
 8004bee:	2802      	cmp	r0, #2
 8004bf0:	d006      	beq.n	8004c00 <Standard_ClearFeature+0x20>
 8004bf2:	2002      	movs	r0, #2
 8004bf4:	bd38      	pop	{r3, r4, r5, pc}
 8004bf6:	7a5a      	ldrb	r2, [r3, #9]
 8004bf8:	f022 0120 	bic.w	r1, r2, #32
 8004bfc:	7259      	strb	r1, [r3, #9]
 8004bfe:	bd38      	pop	{r3, r4, r5, pc}
 8004c00:	885a      	ldrh	r2, [r3, #2]
 8004c02:	2a00      	cmp	r2, #0
 8004c04:	d1f6      	bne.n	8004bf4 <Standard_ClearFeature+0x14>
 8004c06:	7919      	ldrb	r1, [r3, #4]
 8004c08:	2900      	cmp	r1, #0
 8004c0a:	d1f3      	bne.n	8004bf4 <Standard_ClearFeature+0x14>
 8004c0c:	795a      	ldrb	r2, [r3, #5]
 8004c0e:	f022 0080 	bic.w	r0, r2, #128	; 0x80
 8004c12:	0081      	lsls	r1, r0, #2
 8004c14:	f101 4480 	add.w	r4, r1, #1073741824	; 0x40000000
 8004c18:	0615      	lsls	r5, r2, #24
 8004c1a:	f504 44b8 	add.w	r4, r4, #23552	; 0x5c00
 8004c1e:	bf56      	itet	pl
 8004c20:	6824      	ldrpl	r4, [r4, #0]
 8004c22:	6825      	ldrmi	r5, [r4, #0]
 8004c24:	f404 5540 	andpl.w	r5, r4, #12288	; 0x3000
 8004c28:	4c24      	ldr	r4, [pc, #144]	; (8004cbc <Standard_ClearFeature+0xdc>)
 8004c2a:	bf48      	it	mi
 8004c2c:	f005 0530 	andmi.w	r5, r5, #48	; 0x30
 8004c30:	7824      	ldrb	r4, [r4, #0]
 8004c32:	42a0      	cmp	r0, r4
 8004c34:	d2dd      	bcs.n	8004bf2 <Standard_ClearFeature+0x12>
 8004c36:	2d00      	cmp	r5, #0
 8004c38:	d0db      	beq.n	8004bf2 <Standard_ClearFeature+0x12>
 8004c3a:	7a9b      	ldrb	r3, [r3, #10]
 8004c3c:	2b00      	cmp	r3, #0
 8004c3e:	d0d8      	beq.n	8004bf2 <Standard_ClearFeature+0x12>
 8004c40:	f002 0280 	and.w	r2, r2, #128	; 0x80
 8004c44:	b2d3      	uxtb	r3, r2
 8004c46:	b173      	cbz	r3, 8004c66 <Standard_ClearFeature+0x86>
 8004c48:	f101 4280 	add.w	r2, r1, #1073741824	; 0x40000000
 8004c4c:	f502 43b8 	add.w	r3, r2, #23552	; 0x5c00
 8004c50:	6819      	ldr	r1, [r3, #0]
 8004c52:	f001 0230 	and.w	r2, r1, #48	; 0x30
 8004c56:	2a10      	cmp	r2, #16
 8004c58:	d021      	beq.n	8004c9e <Standard_ClearFeature+0xbe>
 8004c5a:	4819      	ldr	r0, [pc, #100]	; (8004cc0 <Standard_ClearFeature+0xe0>)
 8004c5c:	6803      	ldr	r3, [r0, #0]
 8004c5e:	6959      	ldr	r1, [r3, #20]
 8004c60:	4788      	blx	r1
 8004c62:	2000      	movs	r0, #0
 8004c64:	bd38      	pop	{r3, r4, r5, pc}
 8004c66:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8004c6a:	f501 44b8 	add.w	r4, r1, #23552	; 0x5c00
 8004c6e:	6822      	ldr	r2, [r4, #0]
 8004c70:	f402 5340 	and.w	r3, r2, #12288	; 0x3000
 8004c74:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 8004c78:	d1ef      	bne.n	8004c5a <Standard_ClearFeature+0x7a>
 8004c7a:	b9c8      	cbnz	r0, 8004cb0 <Standard_ClearFeature+0xd0>
 8004c7c:	4911      	ldr	r1, [pc, #68]	; (8004cc4 <Standard_ClearFeature+0xe4>)
 8004c7e:	f891 102c 	ldrb.w	r1, [r1, #44]	; 0x2c
 8004c82:	f000 ffc1 	bl	8005c08 <SetEPRxCount>
 8004c86:	6820      	ldr	r0, [r4, #0]
 8004c88:	f64b 728f 	movw	r2, #49039	; 0xbf8f
 8004c8c:	4002      	ands	r2, r0
 8004c8e:	f482 5340 	eor.w	r3, r2, #12288	; 0x3000
 8004c92:	f443 4100 	orr.w	r1, r3, #32768	; 0x8000
 8004c96:	f041 0080 	orr.w	r0, r1, #128	; 0x80
 8004c9a:	6020      	str	r0, [r4, #0]
 8004c9c:	e7dd      	b.n	8004c5a <Standard_ClearFeature+0x7a>
 8004c9e:	b2c4      	uxtb	r4, r0
 8004ca0:	4620      	mov	r0, r4
 8004ca2:	f000 ff49 	bl	8005b38 <ClearDTOG_TX>
 8004ca6:	4620      	mov	r0, r4
 8004ca8:	2130      	movs	r1, #48	; 0x30
 8004caa:	f000 febf 	bl	8005a2c <SetEPTxStatus>
 8004cae:	e7d4      	b.n	8004c5a <Standard_ClearFeature+0x7a>
 8004cb0:	f000 ff30 	bl	8005b14 <ClearDTOG_RX>
 8004cb4:	e7e7      	b.n	8004c86 <Standard_ClearFeature+0xa6>
 8004cb6:	bf00      	nop
 8004cb8:	200019dc 	.word	0x200019dc
 8004cbc:	200002b0 	.word	0x200002b0
 8004cc0:	200019d8 	.word	0x200019d8
 8004cc4:	20000224 	.word	0x20000224

08004cc8 <Standard_SetEndPointFeature>:
 8004cc8:	b538      	push	{r3, r4, r5, lr}
 8004cca:	4b22      	ldr	r3, [pc, #136]	; (8004d54 <Standard_SetEndPointFeature+0x8c>)
 8004ccc:	6819      	ldr	r1, [r3, #0]
 8004cce:	794b      	ldrb	r3, [r1, #5]
 8004cd0:	f023 0280 	bic.w	r2, r3, #128	; 0x80
 8004cd4:	0090      	lsls	r0, r2, #2
 8004cd6:	f100 4480 	add.w	r4, r0, #1073741824	; 0x40000000
 8004cda:	061d      	lsls	r5, r3, #24
 8004cdc:	f504 44b8 	add.w	r4, r4, #23552	; 0x5c00
 8004ce0:	bf56      	itet	pl
 8004ce2:	6824      	ldrpl	r4, [r4, #0]
 8004ce4:	6825      	ldrmi	r5, [r4, #0]
 8004ce6:	f404 5540 	andpl.w	r5, r4, #12288	; 0x3000
 8004cea:	4c1b      	ldr	r4, [pc, #108]	; (8004d58 <Standard_SetEndPointFeature+0x90>)
 8004cec:	bf48      	it	mi
 8004cee:	f005 0530 	andmi.w	r5, r5, #48	; 0x30
 8004cf2:	7824      	ldrb	r4, [r4, #0]
 8004cf4:	42a2      	cmp	r2, r4
 8004cf6:	d301      	bcc.n	8004cfc <Standard_SetEndPointFeature+0x34>
 8004cf8:	2002      	movs	r0, #2
 8004cfa:	bd38      	pop	{r3, r4, r5, pc}
 8004cfc:	884a      	ldrh	r2, [r1, #2]
 8004cfe:	2a00      	cmp	r2, #0
 8004d00:	d1fa      	bne.n	8004cf8 <Standard_SetEndPointFeature+0x30>
 8004d02:	2d00      	cmp	r5, #0
 8004d04:	d0f8      	beq.n	8004cf8 <Standard_SetEndPointFeature+0x30>
 8004d06:	7a89      	ldrb	r1, [r1, #10]
 8004d08:	2900      	cmp	r1, #0
 8004d0a:	d0f5      	beq.n	8004cf8 <Standard_SetEndPointFeature+0x30>
 8004d0c:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8004d10:	f100 4080 	add.w	r0, r0, #1073741824	; 0x40000000
 8004d14:	f500 42b8 	add.w	r2, r0, #23552	; 0x5c00
 8004d18:	b2db      	uxtb	r3, r3
 8004d1a:	6811      	ldr	r1, [r2, #0]
 8004d1c:	b17b      	cbz	r3, 8004d3e <Standard_SetEndPointFeature+0x76>
 8004d1e:	f648 70bf 	movw	r0, #36799	; 0x8fbf
 8004d22:	4008      	ands	r0, r1
 8004d24:	f080 0110 	eor.w	r1, r0, #16
 8004d28:	f441 4300 	orr.w	r3, r1, #32768	; 0x8000
 8004d2c:	f043 0080 	orr.w	r0, r3, #128	; 0x80
 8004d30:	6010      	str	r0, [r2, #0]
 8004d32:	4a0a      	ldr	r2, [pc, #40]	; (8004d5c <Standard_SetEndPointFeature+0x94>)
 8004d34:	6811      	ldr	r1, [r2, #0]
 8004d36:	698b      	ldr	r3, [r1, #24]
 8004d38:	4798      	blx	r3
 8004d3a:	2000      	movs	r0, #0
 8004d3c:	bd38      	pop	{r3, r4, r5, pc}
 8004d3e:	f64b 738f 	movw	r3, #49039	; 0xbf8f
 8004d42:	400b      	ands	r3, r1
 8004d44:	f483 5080 	eor.w	r0, r3, #4096	; 0x1000
 8004d48:	f440 4100 	orr.w	r1, r0, #32768	; 0x8000
 8004d4c:	f041 0380 	orr.w	r3, r1, #128	; 0x80
 8004d50:	6013      	str	r3, [r2, #0]
 8004d52:	e7ee      	b.n	8004d32 <Standard_SetEndPointFeature+0x6a>
 8004d54:	200019dc 	.word	0x200019dc
 8004d58:	200002b0 	.word	0x200002b0
 8004d5c:	200019d8 	.word	0x200019d8

08004d60 <Standard_GetDescriptorData>:
 8004d60:	4b05      	ldr	r3, [pc, #20]	; (8004d78 <Standard_GetDescriptorData+0x18>)
 8004d62:	681b      	ldr	r3, [r3, #0]
 8004d64:	8a5a      	ldrh	r2, [r3, #18]
 8004d66:	b110      	cbz	r0, 8004d6e <Standard_GetDescriptorData+0xe>
 8004d68:	6808      	ldr	r0, [r1, #0]
 8004d6a:	1880      	adds	r0, r0, r2
 8004d6c:	4770      	bx	lr
 8004d6e:	8889      	ldrh	r1, [r1, #4]
 8004d70:	1a8a      	subs	r2, r1, r2
 8004d72:	821a      	strh	r2, [r3, #16]
 8004d74:	4770      	bx	lr
 8004d76:	bf00      	nop
 8004d78:	200019dc 	.word	0x200019dc

08004d7c <Post0_Process>:
 8004d7c:	b508      	push	{r3, lr}
 8004d7e:	4b0c      	ldr	r3, [pc, #48]	; (8004db0 <Post0_Process+0x34>)
 8004d80:	2000      	movs	r0, #0
 8004d82:	f893 102c 	ldrb.w	r1, [r3, #44]	; 0x2c
 8004d86:	f000 ff3f 	bl	8005c08 <SetEPRxCount>
 8004d8a:	480a      	ldr	r0, [pc, #40]	; (8004db4 <Post0_Process+0x38>)
 8004d8c:	6801      	ldr	r1, [r0, #0]
 8004d8e:	7a08      	ldrb	r0, [r1, #8]
 8004d90:	2808      	cmp	r0, #8
 8004d92:	d106      	bne.n	8004da2 <Post0_Process+0x26>
 8004d94:	4b08      	ldr	r3, [pc, #32]	; (8004db8 <Post0_Process+0x3c>)
 8004d96:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8004d9a:	801a      	strh	r2, [r3, #0]
 8004d9c:	4a07      	ldr	r2, [pc, #28]	; (8004dbc <Post0_Process+0x40>)
 8004d9e:	2110      	movs	r1, #16
 8004da0:	8011      	strh	r1, [r2, #0]
 8004da2:	f1b0 0c09 	subs.w	ip, r0, #9
 8004da6:	f1dc 0000 	rsbs	r0, ip, #0
 8004daa:	eb50 000c 	adcs.w	r0, r0, ip
 8004dae:	bd08      	pop	{r3, pc}
 8004db0:	20000224 	.word	0x20000224
 8004db4:	200019dc 	.word	0x200019dc
 8004db8:	200019e2 	.word	0x200019e2
 8004dbc:	200019e4 	.word	0x200019e4

08004dc0 <Out0_Process>:
 8004dc0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8004dc2:	4d34      	ldr	r5, [pc, #208]	; (8004e94 <Out0_Process+0xd4>)
 8004dc4:	682c      	ldr	r4, [r5, #0]
 8004dc6:	7a23      	ldrb	r3, [r4, #8]
 8004dc8:	2b02      	cmp	r3, #2
 8004dca:	d007      	beq.n	8004ddc <Out0_Process+0x1c>
 8004dcc:	2b04      	cmp	r3, #4
 8004dce:	d005      	beq.n	8004ddc <Out0_Process+0x1c>
 8004dd0:	2b03      	cmp	r3, #3
 8004dd2:	d009      	beq.n	8004de8 <Out0_Process+0x28>
 8004dd4:	2b05      	cmp	r3, #5
 8004dd6:	d007      	beq.n	8004de8 <Out0_Process+0x28>
 8004dd8:	2b07      	cmp	r3, #7
 8004dda:	d00e      	beq.n	8004dfa <Out0_Process+0x3a>
 8004ddc:	2208      	movs	r2, #8
 8004dde:	7222      	strb	r2, [r4, #8]
 8004de0:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8004de4:	f7ff bfca 	b.w	8004d7c <Post0_Process>
 8004de8:	69a1      	ldr	r1, [r4, #24]
 8004dea:	8a20      	ldrh	r0, [r4, #16]
 8004dec:	b311      	cbz	r1, 8004e34 <Out0_Process+0x74>
 8004dee:	b958      	cbnz	r0, 8004e08 <Out0_Process+0x48>
 8004df0:	8aa4      	ldrh	r4, [r4, #20]
 8004df2:	2c00      	cmp	r4, #0
 8004df4:	d045      	beq.n	8004e82 <Out0_Process+0xc2>
 8004df6:	4a28      	ldr	r2, [pc, #160]	; (8004e98 <Out0_Process+0xd8>)
 8004df8:	e02e      	b.n	8004e58 <Out0_Process+0x98>
 8004dfa:	4828      	ldr	r0, [pc, #160]	; (8004e9c <Out0_Process+0xdc>)
 8004dfc:	6801      	ldr	r1, [r0, #0]
 8004dfe:	68ca      	ldr	r2, [r1, #12]
 8004e00:	4790      	blx	r2
 8004e02:	682c      	ldr	r4, [r5, #0]
 8004e04:	2208      	movs	r2, #8
 8004e06:	e7ea      	b.n	8004dde <Out0_Process+0x1e>
 8004e08:	8aa6      	ldrh	r6, [r4, #20]
 8004e0a:	4286      	cmp	r6, r0
 8004e0c:	bf28      	it	cs
 8004e0e:	4606      	movcs	r6, r0
 8004e10:	4630      	mov	r0, r6
 8004e12:	4788      	blx	r1
 8004e14:	8a63      	ldrh	r3, [r4, #18]
 8004e16:	4607      	mov	r7, r0
 8004e18:	8a20      	ldrh	r0, [r4, #16]
 8004e1a:	18f1      	adds	r1, r6, r3
 8004e1c:	1b82      	subs	r2, r0, r6
 8004e1e:	8222      	strh	r2, [r4, #16]
 8004e20:	8261      	strh	r1, [r4, #18]
 8004e22:	2000      	movs	r0, #0
 8004e24:	f000 fed0 	bl	8005bc8 <GetEPRxAddr>
 8004e28:	4632      	mov	r2, r6
 8004e2a:	4601      	mov	r1, r0
 8004e2c:	4638      	mov	r0, r7
 8004e2e:	f000 fc39 	bl	80056a4 <PMAToUserBufferCopy>
 8004e32:	8a20      	ldrh	r0, [r4, #16]
 8004e34:	2800      	cmp	r0, #0
 8004e36:	d0db      	beq.n	8004df0 <Out0_Process+0x30>
 8004e38:	2000      	movs	r0, #0
 8004e3a:	4b19      	ldr	r3, [pc, #100]	; (8004ea0 <Out0_Process+0xe0>)
 8004e3c:	4601      	mov	r1, r0
 8004e3e:	f44f 5240 	mov.w	r2, #12288	; 0x3000
 8004e42:	801a      	strh	r2, [r3, #0]
 8004e44:	f000 fed0 	bl	8005be8 <SetEPTxCount>
 8004e48:	8a23      	ldrh	r3, [r4, #16]
 8004e4a:	8aa1      	ldrh	r1, [r4, #20]
 8004e4c:	4a12      	ldr	r2, [pc, #72]	; (8004e98 <Out0_Process+0xd8>)
 8004e4e:	2030      	movs	r0, #48	; 0x30
 8004e50:	4299      	cmp	r1, r3
 8004e52:	8010      	strh	r0, [r2, #0]
 8004e54:	d915      	bls.n	8004e82 <Out0_Process+0xc2>
 8004e56:	b9c3      	cbnz	r3, 8004e8a <Out0_Process+0xca>
 8004e58:	682c      	ldr	r4, [r5, #0]
 8004e5a:	2106      	movs	r1, #6
 8004e5c:	f645 4350 	movw	r3, #23632	; 0x5c50
 8004e60:	7221      	strb	r1, [r4, #8]
 8004e62:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8004e66:	6818      	ldr	r0, [r3, #0]
 8004e68:	f243 0302 	movw	r3, #12290	; 0x3002
 8004e6c:	b281      	uxth	r1, r0
 8004e6e:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8004e72:	18c8      	adds	r0, r1, r3
 8004e74:	0043      	lsls	r3, r0, #1
 8004e76:	2100      	movs	r1, #0
 8004e78:	6019      	str	r1, [r3, #0]
 8004e7a:	2030      	movs	r0, #48	; 0x30
 8004e7c:	8010      	strh	r0, [r2, #0]
 8004e7e:	7a22      	ldrb	r2, [r4, #8]
 8004e80:	e7ad      	b.n	8004dde <Out0_Process+0x1e>
 8004e82:	682c      	ldr	r4, [r5, #0]
 8004e84:	2203      	movs	r2, #3
 8004e86:	7222      	strb	r2, [r4, #8]
 8004e88:	e7a9      	b.n	8004dde <Out0_Process+0x1e>
 8004e8a:	682c      	ldr	r4, [r5, #0]
 8004e8c:	2205      	movs	r2, #5
 8004e8e:	7222      	strb	r2, [r4, #8]
 8004e90:	e7a5      	b.n	8004dde <Out0_Process+0x1e>
 8004e92:	bf00      	nop
 8004e94:	200019dc 	.word	0x200019dc
 8004e98:	200019e4 	.word	0x200019e4
 8004e9c:	200019b4 	.word	0x200019b4
 8004ea0:	200019e2 	.word	0x200019e2

08004ea4 <Setup0_Process>:
 8004ea4:	b570      	push	{r4, r5, r6, lr}
 8004ea6:	f645 4350 	movw	r3, #23632	; 0x5c50
 8004eaa:	4d9f      	ldr	r5, [pc, #636]	; (8005128 <Setup0_Process+0x284>)
 8004eac:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8004eb0:	681a      	ldr	r2, [r3, #0]
 8004eb2:	682c      	ldr	r4, [r5, #0]
 8004eb4:	f243 0004 	movw	r0, #12292	; 0x3004
 8004eb8:	b291      	uxth	r1, r2
 8004eba:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004ebe:	7a22      	ldrb	r2, [r4, #8]
 8004ec0:	180e      	adds	r6, r1, r0
 8004ec2:	0073      	lsls	r3, r6, #1
 8004ec4:	2a09      	cmp	r2, #9
 8004ec6:	b082      	sub	sp, #8
 8004ec8:	681e      	ldr	r6, [r3, #0]
 8004eca:	d045      	beq.n	8004f58 <Setup0_Process+0xb4>
 8004ecc:	b2b0      	uxth	r0, r6
 8004ece:	0041      	lsls	r1, r0, #1
 8004ed0:	f101 4680 	add.w	r6, r1, #1073741824	; 0x40000000
 8004ed4:	f506 46c0 	add.w	r6, r6, #24576	; 0x6000
 8004ed8:	7832      	ldrb	r2, [r6, #0]
 8004eda:	7022      	strb	r2, [r4, #0]
 8004edc:	7873      	ldrb	r3, [r6, #1]
 8004ede:	7063      	strb	r3, [r4, #1]
 8004ee0:	88b0      	ldrh	r0, [r6, #4]
 8004ee2:	f000 fec5 	bl	8005c70 <ByteSwap>
 8004ee6:	8060      	strh	r0, [r4, #2]
 8004ee8:	8930      	ldrh	r0, [r6, #8]
 8004eea:	682c      	ldr	r4, [r5, #0]
 8004eec:	f000 fec0 	bl	8005c70 <ByteSwap>
 8004ef0:	80a0      	strh	r0, [r4, #4]
 8004ef2:	89b0      	ldrh	r0, [r6, #12]
 8004ef4:	682c      	ldr	r4, [r5, #0]
 8004ef6:	2101      	movs	r1, #1
 8004ef8:	80e0      	strh	r0, [r4, #6]
 8004efa:	7221      	strb	r1, [r4, #8]
 8004efc:	2800      	cmp	r0, #0
 8004efe:	d030      	beq.n	8004f62 <Setup0_Process+0xbe>
 8004f00:	7861      	ldrb	r1, [r4, #1]
 8004f02:	2906      	cmp	r1, #6
 8004f04:	f000 8087 	beq.w	8005016 <Setup0_Process+0x172>
 8004f08:	2900      	cmp	r1, #0
 8004f0a:	d15e      	bne.n	8004fca <Setup0_Process+0x126>
 8004f0c:	8863      	ldrh	r3, [r4, #2]
 8004f0e:	2b00      	cmp	r3, #0
 8004f10:	f000 8094 	beq.w	800503c <Setup0_Process+0x198>
 8004f14:	4e85      	ldr	r6, [pc, #532]	; (800512c <Setup0_Process+0x288>)
 8004f16:	6833      	ldr	r3, [r6, #0]
 8004f18:	4608      	mov	r0, r1
 8004f1a:	6919      	ldr	r1, [r3, #16]
 8004f1c:	4788      	blx	r1
 8004f1e:	2803      	cmp	r0, #3
 8004f20:	682b      	ldr	r3, [r5, #0]
 8004f22:	d062      	beq.n	8004fea <Setup0_Process+0x146>
 8004f24:	8a1a      	ldrh	r2, [r3, #16]
 8004f26:	f64f 71ff 	movw	r1, #65535	; 0xffff
 8004f2a:	428a      	cmp	r2, r1
 8004f2c:	d05d      	beq.n	8004fea <Setup0_Process+0x146>
 8004f2e:	2802      	cmp	r0, #2
 8004f30:	d00c      	beq.n	8004f4c <Setup0_Process+0xa8>
 8004f32:	b15a      	cbz	r2, 8004f4c <Setup0_Process+0xa8>
 8004f34:	f993 1000 	ldrsb.w	r1, [r3]
 8004f38:	2900      	cmp	r1, #0
 8004f3a:	f2c0 80b5 	blt.w	80050a8 <Setup0_Process+0x204>
 8004f3e:	2203      	movs	r2, #3
 8004f40:	721a      	strb	r2, [r3, #8]
 8004f42:	4b7b      	ldr	r3, [pc, #492]	; (8005130 <Setup0_Process+0x28c>)
 8004f44:	f44f 5040 	mov.w	r0, #12288	; 0x3000
 8004f48:	8018      	strh	r0, [r3, #0]
 8004f4a:	e001      	b.n	8004f50 <Setup0_Process+0xac>
 8004f4c:	2008      	movs	r0, #8
 8004f4e:	7218      	strb	r0, [r3, #8]
 8004f50:	f7ff ff14 	bl	8004d7c <Post0_Process>
 8004f54:	b002      	add	sp, #8
 8004f56:	bd70      	pop	{r4, r5, r6, pc}
 8004f58:	88e0      	ldrh	r0, [r4, #6]
 8004f5a:	2101      	movs	r1, #1
 8004f5c:	7221      	strb	r1, [r4, #8]
 8004f5e:	2800      	cmp	r0, #0
 8004f60:	d1ce      	bne.n	8004f00 <Setup0_Process+0x5c>
 8004f62:	7823      	ldrb	r3, [r4, #0]
 8004f64:	7866      	ldrb	r6, [r4, #1]
 8004f66:	f013 027f 	ands.w	r2, r3, #127	; 0x7f
 8004f6a:	d141      	bne.n	8004ff0 <Setup0_Process+0x14c>
 8004f6c:	2e09      	cmp	r6, #9
 8004f6e:	f000 80fd 	beq.w	800516c <Setup0_Process+0x2c8>
 8004f72:	2e05      	cmp	r6, #5
 8004f74:	f000 80bf 	beq.w	80050f6 <Setup0_Process+0x252>
 8004f78:	2e03      	cmp	r6, #3
 8004f7a:	f000 80e5 	beq.w	8005148 <Setup0_Process+0x2a4>
 8004f7e:	2e01      	cmp	r6, #1
 8004f80:	d13b      	bne.n	8004ffa <Setup0_Process+0x156>
 8004f82:	78e0      	ldrb	r0, [r4, #3]
 8004f84:	2801      	cmp	r0, #1
 8004f86:	d138      	bne.n	8004ffa <Setup0_Process+0x156>
 8004f88:	88a1      	ldrh	r1, [r4, #4]
 8004f8a:	2900      	cmp	r1, #0
 8004f8c:	d135      	bne.n	8004ffa <Setup0_Process+0x156>
 8004f8e:	7a64      	ldrb	r4, [r4, #9]
 8004f90:	f004 0320 	and.w	r3, r4, #32
 8004f94:	b2da      	uxtb	r2, r3
 8004f96:	2a00      	cmp	r2, #0
 8004f98:	d02f      	beq.n	8004ffa <Setup0_Process+0x156>
 8004f9a:	f7ff fe21 	bl	8004be0 <Standard_ClearFeature>
 8004f9e:	bb60      	cbnz	r0, 8004ffa <Setup0_Process+0x156>
 8004fa0:	682c      	ldr	r4, [r5, #0]
 8004fa2:	f645 4050 	movw	r0, #23632	; 0x5c50
 8004fa6:	f2c4 0000 	movt	r0, #16384	; 0x4000
 8004faa:	6801      	ldr	r1, [r0, #0]
 8004fac:	f243 0302 	movw	r3, #12290	; 0x3002
 8004fb0:	b28a      	uxth	r2, r1
 8004fb2:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8004fb6:	18d0      	adds	r0, r2, r3
 8004fb8:	0041      	lsls	r1, r0, #1
 8004fba:	2300      	movs	r3, #0
 8004fbc:	4a5d      	ldr	r2, [pc, #372]	; (8005134 <Setup0_Process+0x290>)
 8004fbe:	600b      	str	r3, [r1, #0]
 8004fc0:	2030      	movs	r0, #48	; 0x30
 8004fc2:	2106      	movs	r1, #6
 8004fc4:	8010      	strh	r0, [r2, #0]
 8004fc6:	7221      	strb	r1, [r4, #8]
 8004fc8:	e7c2      	b.n	8004f50 <Setup0_Process+0xac>
 8004fca:	2908      	cmp	r1, #8
 8004fcc:	d148      	bne.n	8005060 <Setup0_Process+0x1bc>
 8004fce:	7820      	ldrb	r0, [r4, #0]
 8004fd0:	0643      	lsls	r3, r0, #25
 8004fd2:	d19f      	bne.n	8004f14 <Setup0_Process+0x70>
 8004fd4:	4a58      	ldr	r2, [pc, #352]	; (8005138 <Setup0_Process+0x294>)
 8004fd6:	2000      	movs	r0, #0
 8004fd8:	61a2      	str	r2, [r4, #24]
 8004fda:	8260      	strh	r0, [r4, #18]
 8004fdc:	4790      	blx	r2
 8004fde:	682b      	ldr	r3, [r5, #0]
 8004fe0:	f64f 70ff 	movw	r0, #65535	; 0xffff
 8004fe4:	8a1a      	ldrh	r2, [r3, #16]
 8004fe6:	4282      	cmp	r2, r0
 8004fe8:	d1a3      	bne.n	8004f32 <Setup0_Process+0x8e>
 8004fea:	2109      	movs	r1, #9
 8004fec:	7219      	strb	r1, [r3, #8]
 8004fee:	e7af      	b.n	8004f50 <Setup0_Process+0xac>
 8004ff0:	2a01      	cmp	r2, #1
 8004ff2:	d071      	beq.n	80050d8 <Setup0_Process+0x234>
 8004ff4:	2a02      	cmp	r2, #2
 8004ff6:	f000 808d 	beq.w	8005114 <Setup0_Process+0x270>
 8004ffa:	4c4c      	ldr	r4, [pc, #304]	; (800512c <Setup0_Process+0x288>)
 8004ffc:	4630      	mov	r0, r6
 8004ffe:	6823      	ldr	r3, [r4, #0]
 8005000:	695a      	ldr	r2, [r3, #20]
 8005002:	4790      	blx	r2
 8005004:	2803      	cmp	r0, #3
 8005006:	f000 80ba 	beq.w	800517e <Setup0_Process+0x2da>
 800500a:	682c      	ldr	r4, [r5, #0]
 800500c:	2800      	cmp	r0, #0
 800500e:	d0c8      	beq.n	8004fa2 <Setup0_Process+0xfe>
 8005010:	2108      	movs	r1, #8
 8005012:	7221      	strb	r1, [r4, #8]
 8005014:	e79c      	b.n	8004f50 <Setup0_Process+0xac>
 8005016:	7826      	ldrb	r6, [r4, #0]
 8005018:	0673      	lsls	r3, r6, #25
 800501a:	f47f af7b 	bne.w	8004f14 <Setup0_Process+0x70>
 800501e:	78a2      	ldrb	r2, [r4, #2]
 8005020:	4e42      	ldr	r6, [pc, #264]	; (800512c <Setup0_Process+0x288>)
 8005022:	2a01      	cmp	r2, #1
 8005024:	f000 80a5 	beq.w	8005172 <Setup0_Process+0x2ce>
 8005028:	2a02      	cmp	r2, #2
 800502a:	d05e      	beq.n	80050ea <Setup0_Process+0x246>
 800502c:	2a03      	cmp	r2, #3
 800502e:	f47f af72 	bne.w	8004f16 <Setup0_Process+0x72>
 8005032:	6830      	ldr	r0, [r6, #0]
 8005034:	6a42      	ldr	r2, [r0, #36]	; 0x24
 8005036:	2a00      	cmp	r2, #0
 8005038:	d1cd      	bne.n	8004fd6 <Setup0_Process+0x132>
 800503a:	e76c      	b.n	8004f16 <Setup0_Process+0x72>
 800503c:	6860      	ldr	r0, [r4, #4]
 800503e:	f420 427f 	bic.w	r2, r0, #65280	; 0xff00
 8005042:	f5b2 3f00 	cmp.w	r2, #131072	; 0x20000
 8005046:	f47f af65 	bne.w	8004f14 <Setup0_Process+0x70>
 800504a:	7823      	ldrb	r3, [r4, #0]
 800504c:	f013 007f 	ands.w	r0, r3, #127	; 0x7f
 8005050:	f040 8099 	bne.w	8005186 <Setup0_Process+0x2e2>
 8005054:	88a3      	ldrh	r3, [r4, #4]
 8005056:	2b00      	cmp	r3, #0
 8005058:	f47f af5c 	bne.w	8004f14 <Setup0_Process+0x70>
 800505c:	4a37      	ldr	r2, [pc, #220]	; (800513c <Setup0_Process+0x298>)
 800505e:	e7ba      	b.n	8004fd6 <Setup0_Process+0x132>
 8005060:	290a      	cmp	r1, #10
 8005062:	f47f af57 	bne.w	8004f14 <Setup0_Process+0x70>
 8005066:	7826      	ldrb	r6, [r4, #0]
 8005068:	f006 027f 	and.w	r2, r6, #127	; 0x7f
 800506c:	2a01      	cmp	r2, #1
 800506e:	f47f af51 	bne.w	8004f14 <Setup0_Process+0x70>
 8005072:	7aa3      	ldrb	r3, [r4, #10]
 8005074:	2b00      	cmp	r3, #0
 8005076:	f43f af4d 	beq.w	8004f14 <Setup0_Process+0x70>
 800507a:	8863      	ldrh	r3, [r4, #2]
 800507c:	2b00      	cmp	r3, #0
 800507e:	f47f af49 	bne.w	8004f14 <Setup0_Process+0x70>
 8005082:	6860      	ldr	r0, [r4, #4]
 8005084:	4e29      	ldr	r6, [pc, #164]	; (800512c <Setup0_Process+0x288>)
 8005086:	f420 427f 	bic.w	r2, r0, #65280	; 0xff00
 800508a:	f5b2 3f80 	cmp.w	r2, #65536	; 0x10000
 800508e:	f47f af42 	bne.w	8004f16 <Setup0_Process+0x72>
 8005092:	6832      	ldr	r2, [r6, #0]
 8005094:	4619      	mov	r1, r3
 8005096:	7960      	ldrb	r0, [r4, #5]
 8005098:	6993      	ldr	r3, [r2, #24]
 800509a:	4798      	blx	r3
 800509c:	2800      	cmp	r0, #0
 800509e:	f040 80ad 	bne.w	80051fc <Setup0_Process+0x358>
 80050a2:	682c      	ldr	r4, [r5, #0]
 80050a4:	4a26      	ldr	r2, [pc, #152]	; (8005140 <Setup0_Process+0x29c>)
 80050a6:	e796      	b.n	8004fd6 <Setup0_Process+0x132>
 80050a8:	88d9      	ldrh	r1, [r3, #6]
 80050aa:	9101      	str	r1, [sp, #4]
 80050ac:	9801      	ldr	r0, [sp, #4]
 80050ae:	4282      	cmp	r2, r0
 80050b0:	d817      	bhi.n	80050e2 <Setup0_Process+0x23e>
 80050b2:	428a      	cmp	r2, r1
 80050b4:	491d      	ldr	r1, [pc, #116]	; (800512c <Setup0_Process+0x288>)
 80050b6:	d208      	bcs.n	80050ca <Setup0_Process+0x226>
 80050b8:	6808      	ldr	r0, [r1, #0]
 80050ba:	f890 002c 	ldrb.w	r0, [r0, #44]	; 0x2c
 80050be:	4282      	cmp	r2, r0
 80050c0:	f080 8084 	bcs.w	80051cc <Setup0_Process+0x328>
 80050c4:	4a1f      	ldr	r2, [pc, #124]	; (8005144 <Setup0_Process+0x2a0>)
 80050c6:	2000      	movs	r0, #0
 80050c8:	7010      	strb	r0, [r2, #0]
 80050ca:	6809      	ldr	r1, [r1, #0]
 80050cc:	f891 202c 	ldrb.w	r2, [r1, #44]	; 0x2c
 80050d0:	829a      	strh	r2, [r3, #20]
 80050d2:	f7ff fce5 	bl	8004aa0 <DataStageIn>
 80050d6:	e73b      	b.n	8004f50 <Setup0_Process+0xac>
 80050d8:	2e0b      	cmp	r6, #11
 80050da:	d18e      	bne.n	8004ffa <Setup0_Process+0x156>
 80050dc:	f7ff fd58 	bl	8004b90 <Standard_SetInterface>
 80050e0:	e75d      	b.n	8004f9e <Setup0_Process+0xfa>
 80050e2:	9801      	ldr	r0, [sp, #4]
 80050e4:	4911      	ldr	r1, [pc, #68]	; (800512c <Setup0_Process+0x288>)
 80050e6:	8218      	strh	r0, [r3, #16]
 80050e8:	e7ef      	b.n	80050ca <Setup0_Process+0x226>
 80050ea:	6833      	ldr	r3, [r6, #0]
 80050ec:	6a1a      	ldr	r2, [r3, #32]
 80050ee:	2a00      	cmp	r2, #0
 80050f0:	f47f af71 	bne.w	8004fd6 <Setup0_Process+0x132>
 80050f4:	e70f      	b.n	8004f16 <Setup0_Process+0x72>
 80050f6:	f994 3003 	ldrsb.w	r3, [r4, #3]
 80050fa:	2b00      	cmp	r3, #0
 80050fc:	db88      	blt.n	8005010 <Setup0_Process+0x16c>
 80050fe:	78a2      	ldrb	r2, [r4, #2]
 8005100:	2a00      	cmp	r2, #0
 8005102:	d185      	bne.n	8005010 <Setup0_Process+0x16c>
 8005104:	88a0      	ldrh	r0, [r4, #4]
 8005106:	2800      	cmp	r0, #0
 8005108:	d182      	bne.n	8005010 <Setup0_Process+0x16c>
 800510a:	7aa1      	ldrb	r1, [r4, #10]
 800510c:	2900      	cmp	r1, #0
 800510e:	f43f af48 	beq.w	8004fa2 <Setup0_Process+0xfe>
 8005112:	e77d      	b.n	8005010 <Setup0_Process+0x16c>
 8005114:	2e01      	cmp	r6, #1
 8005116:	f43f af40 	beq.w	8004f9a <Setup0_Process+0xf6>
 800511a:	2e03      	cmp	r6, #3
 800511c:	f47f af6d 	bne.w	8004ffa <Setup0_Process+0x156>
 8005120:	f7ff fdd2 	bl	8004cc8 <Standard_SetEndPointFeature>
 8005124:	e73b      	b.n	8004f9e <Setup0_Process+0xfa>
 8005126:	bf00      	nop
 8005128:	200019dc 	.word	0x200019dc
 800512c:	200019b4 	.word	0x200019b4
 8005130:	200019e2 	.word	0x200019e2
 8005134:	200019e4 	.word	0x200019e4
 8005138:	080049b1 	.word	0x080049b1
 800513c:	08004a01 	.word	0x08004a01
 8005140:	080049d9 	.word	0x080049d9
 8005144:	20000710 	.word	0x20000710
 8005148:	78e0      	ldrb	r0, [r4, #3]
 800514a:	2801      	cmp	r0, #1
 800514c:	f47f af55 	bne.w	8004ffa <Setup0_Process+0x156>
 8005150:	88a1      	ldrh	r1, [r4, #4]
 8005152:	2900      	cmp	r1, #0
 8005154:	f47f af51 	bne.w	8004ffa <Setup0_Process+0x156>
 8005158:	7a63      	ldrb	r3, [r4, #9]
 800515a:	482a      	ldr	r0, [pc, #168]	; (8005204 <Setup0_Process+0x360>)
 800515c:	f043 0220 	orr.w	r2, r3, #32
 8005160:	6801      	ldr	r1, [r0, #0]
 8005162:	7262      	strb	r2, [r4, #9]
 8005164:	69cc      	ldr	r4, [r1, #28]
 8005166:	47a0      	blx	r4
 8005168:	682c      	ldr	r4, [r5, #0]
 800516a:	e71a      	b.n	8004fa2 <Setup0_Process+0xfe>
 800516c:	f7ff fcf2 	bl	8004b54 <Standard_SetConfiguration>
 8005170:	e715      	b.n	8004f9e <Setup0_Process+0xfa>
 8005172:	6832      	ldr	r2, [r6, #0]
 8005174:	69d2      	ldr	r2, [r2, #28]
 8005176:	2a00      	cmp	r2, #0
 8005178:	f47f af2d 	bne.w	8004fd6 <Setup0_Process+0x132>
 800517c:	e6cb      	b.n	8004f16 <Setup0_Process+0x72>
 800517e:	682c      	ldr	r4, [r5, #0]
 8005180:	2109      	movs	r1, #9
 8005182:	7221      	strb	r1, [r4, #8]
 8005184:	e6e4      	b.n	8004f50 <Setup0_Process+0xac>
 8005186:	2801      	cmp	r0, #1
 8005188:	d02b      	beq.n	80051e2 <Setup0_Process+0x33e>
 800518a:	2802      	cmp	r0, #2
 800518c:	f47f aec2 	bne.w	8004f14 <Setup0_Process+0x70>
 8005190:	7963      	ldrb	r3, [r4, #5]
 8005192:	f003 020f 	and.w	r2, r3, #15
 8005196:	0096      	lsls	r6, r2, #2
 8005198:	f106 4080 	add.w	r0, r6, #1073741824	; 0x40000000
 800519c:	f500 40b8 	add.w	r0, r0, #23552	; 0x5c00
 80051a0:	061e      	lsls	r6, r3, #24
 80051a2:	bf56      	itet	pl
 80051a4:	6800      	ldrpl	r0, [r0, #0]
 80051a6:	6806      	ldrmi	r6, [r0, #0]
 80051a8:	f400 5640 	andpl.w	r6, r0, #12288	; 0x3000
 80051ac:	4816      	ldr	r0, [pc, #88]	; (8005208 <Setup0_Process+0x364>)
 80051ae:	bf48      	it	mi
 80051b0:	f006 0630 	andmi.w	r6, r6, #48	; 0x30
 80051b4:	7800      	ldrb	r0, [r0, #0]
 80051b6:	4282      	cmp	r2, r0
 80051b8:	f4bf aeac 	bcs.w	8004f14 <Setup0_Process+0x70>
 80051bc:	f013 0f70 	tst.w	r3, #112	; 0x70
 80051c0:	f47f aea8 	bne.w	8004f14 <Setup0_Process+0x70>
 80051c4:	2e00      	cmp	r6, #0
 80051c6:	f47f af49 	bne.w	800505c <Setup0_Process+0x1b8>
 80051ca:	e6a3      	b.n	8004f14 <Setup0_Process+0x70>
 80051cc:	fb92 f4f0 	sdiv	r4, r2, r0
 80051d0:	fb00 2214 	mls	r2, r0, r4, r2
 80051d4:	2a00      	cmp	r2, #0
 80051d6:	f47f af78 	bne.w	80050ca <Setup0_Process+0x226>
 80051da:	4a0c      	ldr	r2, [pc, #48]	; (800520c <Setup0_Process+0x368>)
 80051dc:	2001      	movs	r0, #1
 80051de:	7010      	strb	r0, [r2, #0]
 80051e0:	e773      	b.n	80050ca <Setup0_Process+0x226>
 80051e2:	4e0b      	ldr	r6, [pc, #44]	; (8005210 <Setup0_Process+0x36c>)
 80051e4:	7960      	ldrb	r0, [r4, #5]
 80051e6:	6833      	ldr	r3, [r6, #0]
 80051e8:	699a      	ldr	r2, [r3, #24]
 80051ea:	4790      	blx	r2
 80051ec:	b930      	cbnz	r0, 80051fc <Setup0_Process+0x358>
 80051ee:	682c      	ldr	r4, [r5, #0]
 80051f0:	7aa0      	ldrb	r0, [r4, #10]
 80051f2:	2800      	cmp	r0, #0
 80051f4:	f47f af32 	bne.w	800505c <Setup0_Process+0x1b8>
 80051f8:	7861      	ldrb	r1, [r4, #1]
 80051fa:	e68c      	b.n	8004f16 <Setup0_Process+0x72>
 80051fc:	6829      	ldr	r1, [r5, #0]
 80051fe:	7849      	ldrb	r1, [r1, #1]
 8005200:	e689      	b.n	8004f16 <Setup0_Process+0x72>
 8005202:	bf00      	nop
 8005204:	200019d8 	.word	0x200019d8
 8005208:	200002b0 	.word	0x200002b0
 800520c:	20000710 	.word	0x20000710
 8005210:	200019b4 	.word	0x200019b4

08005214 <SetDeviceAddress>:
 8005214:	b4f0      	push	{r4, r5, r6, r7}
 8005216:	4b28      	ldr	r3, [pc, #160]	; (80052b8 <SetDeviceAddress+0xa4>)
 8005218:	781e      	ldrb	r6, [r3, #0]
 800521a:	2e00      	cmp	r6, #0
 800521c:	d043      	beq.n	80052a6 <SetDeviceAddress+0x92>
 800521e:	f44f 42b8 	mov.w	r2, #23552	; 0x5c00
 8005222:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8005226:	6814      	ldr	r4, [r2, #0]
 8005228:	f640 710f 	movw	r1, #3855	; 0xf0f
 800522c:	4021      	ands	r1, r4
 800522e:	f441 4300 	orr.w	r3, r1, #32768	; 0x8000
 8005232:	f043 0180 	orr.w	r1, r3, #128	; 0x80
 8005236:	6011      	str	r1, [r2, #0]
 8005238:	2201      	movs	r2, #1
 800523a:	1e74      	subs	r4, r6, #1
 800523c:	f645 4304 	movw	r3, #23556	; 0x5c04
 8005240:	4296      	cmp	r6, r2
 8005242:	f004 0401 	and.w	r4, r4, #1
 8005246:	f2c4 0300 	movt	r3, #16384	; 0x4000
 800524a:	d92c      	bls.n	80052a6 <SetDeviceAddress+0x92>
 800524c:	b17c      	cbz	r4, 800526e <SetDeviceAddress+0x5a>
 800524e:	6819      	ldr	r1, [r3, #0]
 8005250:	f640 720f 	movw	r2, #3855	; 0xf0f
 8005254:	400a      	ands	r2, r1
 8005256:	f442 4100 	orr.w	r1, r2, #32768	; 0x8000
 800525a:	f041 0281 	orr.w	r2, r1, #129	; 0x81
 800525e:	601a      	str	r2, [r3, #0]
 8005260:	2202      	movs	r2, #2
 8005262:	f645 4308 	movw	r3, #23560	; 0x5c08
 8005266:	4296      	cmp	r6, r2
 8005268:	f2c4 0300 	movt	r3, #16384	; 0x4000
 800526c:	d91b      	bls.n	80052a6 <SetDeviceAddress+0x92>
 800526e:	681f      	ldr	r7, [r3, #0]
 8005270:	f442 4500 	orr.w	r5, r2, #32768	; 0x8000
 8005274:	f640 740f 	movw	r4, #3855	; 0xf0f
 8005278:	f045 0580 	orr.w	r5, r5, #128	; 0x80
 800527c:	403c      	ands	r4, r7
 800527e:	ea45 0704 	orr.w	r7, r5, r4
 8005282:	4619      	mov	r1, r3
 8005284:	f841 7b04 	str.w	r7, [r1], #4
 8005288:	685f      	ldr	r7, [r3, #4]
 800528a:	3201      	adds	r2, #1
 800528c:	f442 4500 	orr.w	r5, r2, #32768	; 0x8000
 8005290:	f640 740f 	movw	r4, #3855	; 0xf0f
 8005294:	f045 0580 	orr.w	r5, r5, #128	; 0x80
 8005298:	403c      	ands	r4, r7
 800529a:	432c      	orrs	r4, r5
 800529c:	3201      	adds	r2, #1
 800529e:	605c      	str	r4, [r3, #4]
 80052a0:	1d0b      	adds	r3, r1, #4
 80052a2:	4296      	cmp	r6, r2
 80052a4:	d8e3      	bhi.n	800526e <SetDeviceAddress+0x5a>
 80052a6:	f645 434c 	movw	r3, #23628	; 0x5c4c
 80052aa:	f040 0080 	orr.w	r0, r0, #128	; 0x80
 80052ae:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80052b2:	6018      	str	r0, [r3, #0]
 80052b4:	bcf0      	pop	{r4, r5, r6, r7}
 80052b6:	4770      	bx	lr
 80052b8:	200002b0 	.word	0x200002b0

080052bc <In0_Process>:
 80052bc:	b510      	push	{r4, lr}
 80052be:	4c14      	ldr	r4, [pc, #80]	; (8005310 <In0_Process+0x54>)
 80052c0:	6823      	ldr	r3, [r4, #0]
 80052c2:	7a1a      	ldrb	r2, [r3, #8]
 80052c4:	2a02      	cmp	r2, #2
 80052c6:	d013      	beq.n	80052f0 <In0_Process+0x34>
 80052c8:	2a04      	cmp	r2, #4
 80052ca:	d011      	beq.n	80052f0 <In0_Process+0x34>
 80052cc:	2a06      	cmp	r2, #6
 80052ce:	d005      	beq.n	80052dc <In0_Process+0x20>
 80052d0:	2008      	movs	r0, #8
 80052d2:	7218      	strb	r0, [r3, #8]
 80052d4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80052d8:	f7ff bd50 	b.w	8004d7c <Post0_Process>
 80052dc:	7859      	ldrb	r1, [r3, #1]
 80052de:	2905      	cmp	r1, #5
 80052e0:	d00b      	beq.n	80052fa <In0_Process+0x3e>
 80052e2:	4a0c      	ldr	r2, [pc, #48]	; (8005314 <In0_Process+0x58>)
 80052e4:	6813      	ldr	r3, [r2, #0]
 80052e6:	6898      	ldr	r0, [r3, #8]
 80052e8:	4780      	blx	r0
 80052ea:	6823      	ldr	r3, [r4, #0]
 80052ec:	2008      	movs	r0, #8
 80052ee:	e7f0      	b.n	80052d2 <In0_Process+0x16>
 80052f0:	f7ff fbd6 	bl	8004aa0 <DataStageIn>
 80052f4:	6823      	ldr	r3, [r4, #0]
 80052f6:	7a18      	ldrb	r0, [r3, #8]
 80052f8:	e7eb      	b.n	80052d2 <In0_Process+0x16>
 80052fa:	781a      	ldrb	r2, [r3, #0]
 80052fc:	0652      	lsls	r2, r2, #25
 80052fe:	d1f0      	bne.n	80052e2 <In0_Process+0x26>
 8005300:	78d8      	ldrb	r0, [r3, #3]
 8005302:	f7ff ff87 	bl	8005214 <SetDeviceAddress>
 8005306:	4b04      	ldr	r3, [pc, #16]	; (8005318 <In0_Process+0x5c>)
 8005308:	6818      	ldr	r0, [r3, #0]
 800530a:	6a01      	ldr	r1, [r0, #32]
 800530c:	4788      	blx	r1
 800530e:	e7e8      	b.n	80052e2 <In0_Process+0x26>
 8005310:	200019dc 	.word	0x200019dc
 8005314:	200019b4 	.word	0x200019b4
 8005318:	200019d8 	.word	0x200019d8

0800531c <NOP_Process>:
 800531c:	4770      	bx	lr
 800531e:	bf00      	nop

08005320 <print2usb>:
 8005320:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005322:	4d1b      	ldr	r5, [pc, #108]	; (8005390 <print2usb+0x70>)
 8005324:	b091      	sub	sp, #68	; 0x44
 8005326:	2240      	movs	r2, #64	; 0x40
 8005328:	4604      	mov	r4, r0
 800532a:	2100      	movs	r1, #0
 800532c:	4668      	mov	r0, sp
 800532e:	f001 f93f 	bl	80065b0 <rt_memset>
 8005332:	6828      	ldr	r0, [r5, #0]
 8005334:	f04f 31ff 	mov.w	r1, #4294967295
 8005338:	f000 fed6 	bl	80060e8 <rt_sem_take>
 800533c:	7822      	ldrb	r2, [r4, #0]
 800533e:	b32a      	cbz	r2, 800538c <print2usb+0x6c>
 8005340:	f10d 0301 	add.w	r3, sp, #1
 8005344:	4620      	mov	r0, r4
 8005346:	af10      	add	r7, sp, #64	; 0x40
 8005348:	42bb      	cmp	r3, r7
 800534a:	f803 2c01 	strb.w	r2, [r3, #-1]
 800534e:	d011      	beq.n	8005374 <print2usb+0x54>
 8005350:	4602      	mov	r2, r0
 8005352:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8005356:	1c5c      	adds	r4, r3, #1
 8005358:	b161      	cbz	r1, 8005374 <print2usb+0x54>
 800535a:	f812 6f01 	ldrb.w	r6, [r2, #1]!
 800535e:	f804 1c01 	strb.w	r1, [r4, #-1]
 8005362:	3401      	adds	r4, #1
 8005364:	b136      	cbz	r6, 8005374 <print2usb+0x54>
 8005366:	7852      	ldrb	r2, [r2, #1]
 8005368:	f804 6c01 	strb.w	r6, [r4, #-1]
 800536c:	3003      	adds	r0, #3
 800536e:	3303      	adds	r3, #3
 8005370:	2a00      	cmp	r2, #0
 8005372:	d1e9      	bne.n	8005348 <print2usb+0x28>
 8005374:	4668      	mov	r0, sp
 8005376:	f44f 7194 	mov.w	r1, #296	; 0x128
 800537a:	2240      	movs	r2, #64	; 0x40
 800537c:	f000 f956 	bl	800562c <UserToPMABufferCopy>
 8005380:	2002      	movs	r0, #2
 8005382:	f000 fb93 	bl	8005aac <SetEPTxValid>
 8005386:	6828      	ldr	r0, [r5, #0]
 8005388:	f000 ff7e 	bl	8006288 <rt_sem_release>
 800538c:	b011      	add	sp, #68	; 0x44
 800538e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005390:	20000714 	.word	0x20000714

08005394 <EP1_OUT_Callback>:
 8005394:	b500      	push	{lr}
 8005396:	b091      	sub	sp, #68	; 0x44
 8005398:	2240      	movs	r2, #64	; 0x40
 800539a:	2100      	movs	r1, #0
 800539c:	4668      	mov	r0, sp
 800539e:	f001 f907 	bl	80065b0 <rt_memset>
 80053a2:	4669      	mov	r1, sp
 80053a4:	2001      	movs	r0, #1
 80053a6:	f000 fc7f 	bl	8005ca8 <USB_SIL_Read>
 80053aa:	2001      	movs	r0, #1
 80053ac:	f44f 5140 	mov.w	r1, #12288	; 0x3000
 80053b0:	f000 fb5c 	bl	8005a6c <SetEPRxStatus>
 80053b4:	f241 1310 	movw	r3, #4368	; 0x1110
 80053b8:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80053bc:	f8d3 2420 	ldr.w	r2, [r3, #1056]	; 0x420
 80053c0:	4668      	mov	r0, sp
 80053c2:	2101      	movs	r1, #1
 80053c4:	4790      	blx	r2
 80053c6:	b011      	add	sp, #68	; 0x44
 80053c8:	bd00      	pop	{pc}
 80053ca:	bf00      	nop

080053cc <EP2_IN_Callback>:
 80053cc:	f240 13b4 	movw	r3, #436	; 0x1b4
 80053d0:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80053d4:	2201      	movs	r2, #1
 80053d6:	701a      	strb	r2, [r3, #0]
 80053d8:	4770      	bx	lr
 80053da:	bf00      	nop

080053dc <USB_Init>:
 80053dc:	b510      	push	{r4, lr}
 80053de:	f641 12bc 	movw	r2, #6588	; 0x19bc
 80053e2:	f641 14dc 	movw	r4, #6620	; 0x19dc
 80053e6:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80053ea:	f2c2 0400 	movt	r4, #8192	; 0x2000
 80053ee:	6022      	str	r2, [r4, #0]
 80053f0:	2402      	movs	r4, #2
 80053f2:	7214      	strb	r4, [r2, #8]
 80053f4:	f641 10b4 	movw	r0, #6580	; 0x19b4
 80053f8:	f240 2324 	movw	r3, #548	; 0x224
 80053fc:	f641 11d8 	movw	r1, #6616	; 0x19d8
 8005400:	f240 2254 	movw	r2, #596	; 0x254
 8005404:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8005408:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800540c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8005410:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8005414:	6003      	str	r3, [r0, #0]
 8005416:	600a      	str	r2, [r1, #0]
 8005418:	6818      	ldr	r0, [r3, #0]
 800541a:	4780      	blx	r0
 800541c:	bd10      	pop	{r4, pc}
 800541e:	bf00      	nop

08005420 <CTR_LP>:
 8005420:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005424:	f8df a1a4 	ldr.w	sl, [pc, #420]	; 80055cc <CTR_LP+0x1ac>
 8005428:	b083      	sub	sp, #12
 800542a:	f645 4b44 	movw	fp, #23620	; 0x5c44
 800542e:	2300      	movs	r3, #0
 8005430:	f8df 919c 	ldr.w	r9, [pc, #412]	; 80055d0 <CTR_LP+0x1b0>
 8005434:	4d63      	ldr	r5, [pc, #396]	; (80055c4 <CTR_LP+0x1a4>)
 8005436:	f8ad 3006 	strh.w	r3, [sp, #6]
 800543a:	f2c4 0b00 	movt	fp, #16384	; 0x4000
 800543e:	46d0      	mov	r8, sl
 8005440:	f8db 0000 	ldr.w	r0, [fp]
 8005444:	f44f 44b8 	mov.w	r4, #23552	; 0x5c00
 8005448:	b282      	uxth	r2, r0
 800544a:	0403      	lsls	r3, r0, #16
 800544c:	f8aa 2000 	strh.w	r2, [sl]
 8005450:	f140 80ac 	bpl.w	80055ac <CTR_LP+0x18c>
 8005454:	f8b8 3000 	ldrh.w	r3, [r8]
 8005458:	f2c4 0400 	movt	r4, #16384	; 0x4000
 800545c:	f003 020f 	and.w	r2, r3, #15
 8005460:	0090      	lsls	r0, r2, #2
 8005462:	f100 4080 	add.w	r0, r0, #1073741824	; 0x40000000
 8005466:	4e58      	ldr	r6, [pc, #352]	; (80055c8 <CTR_LP+0x1a8>)
 8005468:	f64b 71bf 	movw	r1, #49087	; 0xbfbf
 800546c:	4f55      	ldr	r7, [pc, #340]	; (80055c4 <CTR_LP+0x1a4>)
 800546e:	4613      	mov	r3, r2
 8005470:	f500 40b8 	add.w	r0, r0, #23552	; 0x5c00
 8005474:	f889 2000 	strb.w	r2, [r9]
 8005478:	2a00      	cmp	r2, #0
 800547a:	d134      	bne.n	80054e6 <CTR_LP+0xc6>
 800547c:	6822      	ldr	r2, [r4, #0]
 800547e:	b290      	uxth	r0, r2
 8005480:	8028      	strh	r0, [r5, #0]
 8005482:	882b      	ldrh	r3, [r5, #0]
 8005484:	f003 0230 	and.w	r2, r3, #48	; 0x30
 8005488:	8032      	strh	r2, [r6, #0]
 800548a:	8828      	ldrh	r0, [r5, #0]
 800548c:	f400 5340 	and.w	r3, r0, #12288	; 0x3000
 8005490:	802b      	strh	r3, [r5, #0]
 8005492:	6822      	ldr	r2, [r4, #0]
 8005494:	4011      	ands	r1, r2
 8005496:	f481 5100 	eor.w	r1, r1, #8192	; 0x2000
 800549a:	f081 0020 	eor.w	r0, r1, #32
 800549e:	f440 4300 	orr.w	r3, r0, #32768	; 0x8000
 80054a2:	f043 0280 	orr.w	r2, r3, #128	; 0x80
 80054a6:	6022      	str	r2, [r4, #0]
 80054a8:	f8b8 1000 	ldrh.w	r1, [r8]
 80054ac:	f001 0010 	and.w	r0, r1, #16
 80054b0:	b283      	uxth	r3, r0
 80054b2:	2b00      	cmp	r3, #0
 80054b4:	d04a      	beq.n	800554c <CTR_LP+0x12c>
 80054b6:	6822      	ldr	r2, [r4, #0]
 80054b8:	b291      	uxth	r1, r2
 80054ba:	f8ad 1006 	strh.w	r1, [sp, #6]
 80054be:	f8bd 0006 	ldrh.w	r0, [sp, #6]
 80054c2:	f400 6300 	and.w	r3, r0, #2048	; 0x800
 80054c6:	b29a      	uxth	r2, r3
 80054c8:	2a00      	cmp	r2, #0
 80054ca:	d172      	bne.n	80055b2 <CTR_LP+0x192>
 80054cc:	f8bd 1006 	ldrh.w	r1, [sp, #6]
 80054d0:	b208      	sxth	r0, r1
 80054d2:	2800      	cmp	r0, #0
 80054d4:	dab4      	bge.n	8005440 <CTR_LP+0x20>
 80054d6:	6822      	ldr	r2, [r4, #0]
 80054d8:	f640 738f 	movw	r3, #3983	; 0xf8f
 80054dc:	4013      	ands	r3, r2
 80054de:	6023      	str	r3, [r4, #0]
 80054e0:	f7ff fc6e 	bl	8004dc0 <Out0_Process>
 80054e4:	e039      	b.n	800555a <CTR_LP+0x13a>
 80054e6:	6804      	ldr	r4, [r0, #0]
 80054e8:	b2a1      	uxth	r1, r4
 80054ea:	f8ad 1006 	strh.w	r1, [sp, #6]
 80054ee:	f8bd 2006 	ldrh.w	r2, [sp, #6]
 80054f2:	b214      	sxth	r4, r2
 80054f4:	2c00      	cmp	r4, #0
 80054f6:	db1b      	blt.n	8005530 <CTR_LP+0x110>
 80054f8:	f8bd 1006 	ldrh.w	r1, [sp, #6]
 80054fc:	f001 0280 	and.w	r2, r1, #128	; 0x80
 8005500:	b293      	uxth	r3, r2
 8005502:	2b00      	cmp	r3, #0
 8005504:	d09c      	beq.n	8005440 <CTR_LP+0x20>
 8005506:	f899 4000 	ldrb.w	r4, [r9]
 800550a:	f648 730f 	movw	r3, #36623	; 0x8f0f
 800550e:	00a0      	lsls	r0, r4, #2
 8005510:	f100 4180 	add.w	r1, r0, #1073741824	; 0x40000000
 8005514:	f501 42b8 	add.w	r2, r1, #23552	; 0x5c00
 8005518:	6810      	ldr	r0, [r2, #0]
 800551a:	3c01      	subs	r4, #1
 800551c:	4003      	ands	r3, r0
 800551e:	6013      	str	r3, [r2, #0]
 8005520:	f240 13e4 	movw	r3, #484	; 0x1e4
 8005524:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8005528:	f853 1024 	ldr.w	r1, [r3, r4, lsl #2]
 800552c:	4788      	blx	r1
 800552e:	e787      	b.n	8005440 <CTR_LP+0x20>
 8005530:	6801      	ldr	r1, [r0, #0]
 8005532:	f640 728f 	movw	r2, #3983	; 0xf8f
 8005536:	400a      	ands	r2, r1
 8005538:	6002      	str	r2, [r0, #0]
 800553a:	f240 2000 	movw	r0, #512	; 0x200
 800553e:	3b01      	subs	r3, #1
 8005540:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8005544:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
 8005548:	47a0      	blx	r4
 800554a:	e7d5      	b.n	80054f8 <CTR_LP+0xd8>
 800554c:	6822      	ldr	r2, [r4, #0]
 800554e:	f648 730f 	movw	r3, #36623	; 0x8f0f
 8005552:	4013      	ands	r3, r2
 8005554:	6023      	str	r3, [r4, #0]
 8005556:	f7ff feb1 	bl	80052bc <In0_Process>
 800555a:	6821      	ldr	r1, [r4, #0]
 800555c:	8838      	ldrh	r0, [r7, #0]
 800555e:	f64b 73bf 	movw	r3, #49087	; 0xbfbf
 8005562:	f400 5280 	and.w	r2, r0, #4096	; 0x1000
 8005566:	b290      	uxth	r0, r2
 8005568:	400b      	ands	r3, r1
 800556a:	b108      	cbz	r0, 8005570 <CTR_LP+0x150>
 800556c:	f483 5380 	eor.w	r3, r3, #4096	; 0x1000
 8005570:	8839      	ldrh	r1, [r7, #0]
 8005572:	f401 5200 	and.w	r2, r1, #8192	; 0x2000
 8005576:	b290      	uxth	r0, r2
 8005578:	b108      	cbz	r0, 800557e <CTR_LP+0x15e>
 800557a:	f483 5300 	eor.w	r3, r3, #8192	; 0x2000
 800557e:	8831      	ldrh	r1, [r6, #0]
 8005580:	f001 0210 	and.w	r2, r1, #16
 8005584:	b290      	uxth	r0, r2
 8005586:	b108      	cbz	r0, 800558c <CTR_LP+0x16c>
 8005588:	f083 0310 	eor.w	r3, r3, #16
 800558c:	8831      	ldrh	r1, [r6, #0]
 800558e:	f001 0220 	and.w	r2, r1, #32
 8005592:	b290      	uxth	r0, r2
 8005594:	b108      	cbz	r0, 800559a <CTR_LP+0x17a>
 8005596:	f083 0320 	eor.w	r3, r3, #32
 800559a:	f443 4100 	orr.w	r1, r3, #32768	; 0x8000
 800559e:	f44f 42b8 	mov.w	r2, #23552	; 0x5c00
 80055a2:	f041 0080 	orr.w	r0, r1, #128	; 0x80
 80055a6:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80055aa:	6010      	str	r0, [r2, #0]
 80055ac:	b003      	add	sp, #12
 80055ae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80055b2:	6821      	ldr	r1, [r4, #0]
 80055b4:	f640 708f 	movw	r0, #3983	; 0xf8f
 80055b8:	4008      	ands	r0, r1
 80055ba:	6020      	str	r0, [r4, #0]
 80055bc:	f7ff fc72 	bl	8004ea4 <Setup0_Process>
 80055c0:	e7cb      	b.n	800555a <CTR_LP+0x13a>
 80055c2:	bf00      	nop
 80055c4:	200019e2 	.word	0x200019e2
 80055c8:	200019e4 	.word	0x200019e4
 80055cc:	200019e6 	.word	0x200019e6
 80055d0:	200019b8 	.word	0x200019b8

080055d4 <USB_Istr>:
 80055d4:	b538      	push	{r3, r4, r5, lr}
 80055d6:	f645 4344 	movw	r3, #23620	; 0x5c44
 80055da:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80055de:	6818      	ldr	r0, [r3, #0]
 80055e0:	4c0f      	ldr	r4, [pc, #60]	; (8005620 <USB_Istr+0x4c>)
 80055e2:	b281      	uxth	r1, r0
 80055e4:	4d0f      	ldr	r5, [pc, #60]	; (8005624 <USB_Istr+0x50>)
 80055e6:	8021      	strh	r1, [r4, #0]
 80055e8:	8822      	ldrh	r2, [r4, #0]
 80055ea:	882b      	ldrh	r3, [r5, #0]
 80055ec:	401a      	ands	r2, r3
 80055ee:	f402 4000 	and.w	r0, r2, #32768	; 0x8000
 80055f2:	b281      	uxth	r1, r0
 80055f4:	b979      	cbnz	r1, 8005616 <USB_Istr+0x42>
 80055f6:	8822      	ldrh	r2, [r4, #0]
 80055f8:	f402 6080 	and.w	r0, r2, #1024	; 0x400
 80055fc:	4203      	tst	r3, r0
 80055fe:	d009      	beq.n	8005614 <USB_Istr+0x40>
 8005600:	f645 4144 	movw	r1, #23620	; 0x5c44
 8005604:	4a08      	ldr	r2, [pc, #32]	; (8005628 <USB_Istr+0x54>)
 8005606:	f2c4 0100 	movt	r1, #16384	; 0x4000
 800560a:	f64f 33ff 	movw	r3, #64511	; 0xfbff
 800560e:	600b      	str	r3, [r1, #0]
 8005610:	6850      	ldr	r0, [r2, #4]
 8005612:	4780      	blx	r0
 8005614:	bd38      	pop	{r3, r4, r5, pc}
 8005616:	f7ff ff03 	bl	8005420 <CTR_LP>
 800561a:	882b      	ldrh	r3, [r5, #0]
 800561c:	e7eb      	b.n	80055f6 <USB_Istr+0x22>
 800561e:	bf00      	nop
 8005620:	200019e6 	.word	0x200019e6
 8005624:	200019e0 	.word	0x200019e0
 8005628:	20000224 	.word	0x20000224

0800562c <UserToPMABufferCopy>:
 800562c:	f101 5100 	add.w	r1, r1, #536870912	; 0x20000000
 8005630:	f501 5140 	add.w	r1, r1, #12288	; 0x3000
 8005634:	1c53      	adds	r3, r2, #1
 8005636:	004a      	lsls	r2, r1, #1
 8005638:	1059      	asrs	r1, r3, #1
 800563a:	b430      	push	{r4, r5}
 800563c:	d02f      	beq.n	800569e <UserToPMABufferCopy+0x72>
 800563e:	7845      	ldrb	r5, [r0, #1]
 8005640:	3002      	adds	r0, #2
 8005642:	f810 4c02 	ldrb.w	r4, [r0, #-2]
 8005646:	3901      	subs	r1, #1
 8005648:	ea44 2305 	orr.w	r3, r4, r5, lsl #8
 800564c:	f822 3b04 	strh.w	r3, [r2], #4
 8005650:	460b      	mov	r3, r1
 8005652:	3204      	adds	r2, #4
 8005654:	f001 0101 	and.w	r1, r1, #1
 8005658:	3002      	adds	r0, #2
 800565a:	b303      	cbz	r3, 800569e <UserToPMABufferCopy+0x72>
 800565c:	b159      	cbz	r1, 8005676 <UserToPMABufferCopy+0x4a>
 800565e:	f810 4c01 	ldrb.w	r4, [r0, #-1]
 8005662:	f810 1c02 	ldrb.w	r1, [r0, #-2]
 8005666:	3002      	adds	r0, #2
 8005668:	ea41 2104 	orr.w	r1, r1, r4, lsl #8
 800566c:	f822 1c04 	strh.w	r1, [r2, #-4]
 8005670:	3204      	adds	r2, #4
 8005672:	3b01      	subs	r3, #1
 8005674:	d013      	beq.n	800569e <UserToPMABufferCopy+0x72>
 8005676:	f810 1c02 	ldrb.w	r1, [r0, #-2]
 800567a:	f810 4c01 	ldrb.w	r4, [r0, #-1]
 800567e:	ea41 2404 	orr.w	r4, r1, r4, lsl #8
 8005682:	f822 4c04 	strh.w	r4, [r2, #-4]
 8005686:	7844      	ldrb	r4, [r0, #1]
 8005688:	3002      	adds	r0, #2
 800568a:	f810 1c02 	ldrb.w	r1, [r0, #-2]
 800568e:	3002      	adds	r0, #2
 8005690:	ea41 2104 	orr.w	r1, r1, r4, lsl #8
 8005694:	f822 1b04 	strh.w	r1, [r2], #4
 8005698:	3204      	adds	r2, #4
 800569a:	3b02      	subs	r3, #2
 800569c:	d1eb      	bne.n	8005676 <UserToPMABufferCopy+0x4a>
 800569e:	bc30      	pop	{r4, r5}
 80056a0:	4770      	bx	lr
 80056a2:	bf00      	nop

080056a4 <PMAToUserBufferCopy>:
 80056a4:	f101 5100 	add.w	r1, r1, #536870912	; 0x20000000
 80056a8:	f501 5340 	add.w	r3, r1, #12288	; 0x3000
 80056ac:	3201      	adds	r2, #1
 80056ae:	0059      	lsls	r1, r3, #1
 80056b0:	1052      	asrs	r2, r2, #1
 80056b2:	b430      	push	{r4, r5}
 80056b4:	d01c      	beq.n	80056f0 <PMAToUserBufferCopy+0x4c>
 80056b6:	680b      	ldr	r3, [r1, #0]
 80056b8:	3a01      	subs	r2, #1
 80056ba:	f820 3b02 	strh.w	r3, [r0], #2
 80056be:	4613      	mov	r3, r2
 80056c0:	3002      	adds	r0, #2
 80056c2:	f002 0201 	and.w	r2, r2, #1
 80056c6:	b19b      	cbz	r3, 80056f0 <PMAToUserBufferCopy+0x4c>
 80056c8:	b132      	cbz	r2, 80056d8 <PMAToUserBufferCopy+0x34>
 80056ca:	f851 2f04 	ldr.w	r2, [r1, #4]!
 80056ce:	f820 2c02 	strh.w	r2, [r0, #-2]
 80056d2:	3002      	adds	r0, #2
 80056d4:	3b01      	subs	r3, #1
 80056d6:	d00b      	beq.n	80056f0 <PMAToUserBufferCopy+0x4c>
 80056d8:	1d0c      	adds	r4, r1, #4
 80056da:	684d      	ldr	r5, [r1, #4]
 80056dc:	6889      	ldr	r1, [r1, #8]
 80056de:	4602      	mov	r2, r0
 80056e0:	f820 5c02 	strh.w	r5, [r0, #-2]
 80056e4:	f822 1b02 	strh.w	r1, [r2], #2
 80056e8:	1c90      	adds	r0, r2, #2
 80056ea:	1d21      	adds	r1, r4, #4
 80056ec:	3b02      	subs	r3, #2
 80056ee:	d1f3      	bne.n	80056d8 <PMAToUserBufferCopy+0x34>
 80056f0:	bc30      	pop	{r4, r5}
 80056f2:	4770      	bx	lr

080056f4 <CustomHID_SetDeviceAddress>:
 80056f4:	f240 731c 	movw	r3, #1820	; 0x71c
 80056f8:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80056fc:	2204      	movs	r2, #4
 80056fe:	601a      	str	r2, [r3, #0]
 8005700:	4770      	bx	lr
 8005702:	bf00      	nop

08005704 <CustomHID_Status_Out>:
 8005704:	4770      	bx	lr
 8005706:	bf00      	nop

08005708 <CustomHID_Data_Setup>:
 8005708:	b510      	push	{r4, lr}
 800570a:	4b14      	ldr	r3, [pc, #80]	; (800575c <CustomHID_Data_Setup+0x54>)
 800570c:	681b      	ldr	r3, [r3, #0]
 800570e:	889a      	ldrh	r2, [r3, #4]
 8005710:	b10a      	cbz	r2, 8005716 <CustomHID_Data_Setup+0xe>
 8005712:	2002      	movs	r0, #2
 8005714:	bd10      	pop	{r4, pc}
 8005716:	7819      	ldrb	r1, [r3, #0]
 8005718:	2806      	cmp	r0, #6
 800571a:	f001 027f 	and.w	r2, r1, #127	; 0x7f
 800571e:	d009      	beq.n	8005734 <CustomHID_Data_Setup+0x2c>
 8005720:	2a21      	cmp	r2, #33	; 0x21
 8005722:	d1f6      	bne.n	8005712 <CustomHID_Data_Setup+0xa>
 8005724:	2803      	cmp	r0, #3
 8005726:	d014      	beq.n	8005752 <CustomHID_Data_Setup+0x4a>
 8005728:	2809      	cmp	r0, #9
 800572a:	d1f2      	bne.n	8005712 <CustomHID_Data_Setup+0xa>
 800572c:	4c0c      	ldr	r4, [pc, #48]	; (8005760 <CustomHID_Data_Setup+0x58>)
 800572e:	490d      	ldr	r1, [pc, #52]	; (8005764 <CustomHID_Data_Setup+0x5c>)
 8005730:	7020      	strb	r0, [r4, #0]
 8005732:	e007      	b.n	8005744 <CustomHID_Data_Setup+0x3c>
 8005734:	2a01      	cmp	r2, #1
 8005736:	d1ec      	bne.n	8005712 <CustomHID_Data_Setup+0xa>
 8005738:	7898      	ldrb	r0, [r3, #2]
 800573a:	2822      	cmp	r0, #34	; 0x22
 800573c:	d00b      	beq.n	8005756 <CustomHID_Data_Setup+0x4e>
 800573e:	2821      	cmp	r0, #33	; 0x21
 8005740:	d1e7      	bne.n	8005712 <CustomHID_Data_Setup+0xa>
 8005742:	4909      	ldr	r1, [pc, #36]	; (8005768 <CustomHID_Data_Setup+0x60>)
 8005744:	2400      	movs	r4, #0
 8005746:	4620      	mov	r0, r4
 8005748:	6199      	str	r1, [r3, #24]
 800574a:	825c      	strh	r4, [r3, #18]
 800574c:	4788      	blx	r1
 800574e:	4620      	mov	r0, r4
 8005750:	bd10      	pop	{r4, pc}
 8005752:	4906      	ldr	r1, [pc, #24]	; (800576c <CustomHID_Data_Setup+0x64>)
 8005754:	e7f6      	b.n	8005744 <CustomHID_Data_Setup+0x3c>
 8005756:	4906      	ldr	r1, [pc, #24]	; (8005770 <CustomHID_Data_Setup+0x68>)
 8005758:	e7f4      	b.n	8005744 <CustomHID_Data_Setup+0x3c>
 800575a:	bf00      	nop
 800575c:	200019dc 	.word	0x200019dc
 8005760:	20000718 	.word	0x20000718
 8005764:	08005775 	.word	0x08005775
 8005768:	080057d9 	.word	0x080057d9
 800576c:	080057c1 	.word	0x080057c1
 8005770:	080057e5 	.word	0x080057e5

08005774 <CustomHID_SetReport_Feature>:
 8005774:	b108      	cbz	r0, 800577a <CustomHID_SetReport_Feature+0x6>
 8005776:	4803      	ldr	r0, [pc, #12]	; (8005784 <CustomHID_SetReport_Feature+0x10>)
 8005778:	4770      	bx	lr
 800577a:	4b03      	ldr	r3, [pc, #12]	; (8005788 <CustomHID_SetReport_Feature+0x14>)
 800577c:	2202      	movs	r2, #2
 800577e:	6819      	ldr	r1, [r3, #0]
 8005780:	820a      	strh	r2, [r1, #16]
 8005782:	4770      	bx	lr
 8005784:	200019ec 	.word	0x200019ec
 8005788:	200019dc 	.word	0x200019dc

0800578c <CustomHID_NoData_Setup>:
 800578c:	4b07      	ldr	r3, [pc, #28]	; (80057ac <CustomHID_NoData_Setup+0x20>)
 800578e:	6819      	ldr	r1, [r3, #0]
 8005790:	780a      	ldrb	r2, [r1, #0]
 8005792:	f002 037f 	and.w	r3, r2, #127	; 0x7f
 8005796:	2b21      	cmp	r3, #33	; 0x21
 8005798:	d001      	beq.n	800579e <CustomHID_NoData_Setup+0x12>
 800579a:	2002      	movs	r0, #2
 800579c:	4770      	bx	lr
 800579e:	280b      	cmp	r0, #11
 80057a0:	d1fb      	bne.n	800579a <CustomHID_NoData_Setup+0xe>
 80057a2:	78c9      	ldrb	r1, [r1, #3]
 80057a4:	4a02      	ldr	r2, [pc, #8]	; (80057b0 <CustomHID_NoData_Setup+0x24>)
 80057a6:	2000      	movs	r0, #0
 80057a8:	6011      	str	r1, [r2, #0]
 80057aa:	4770      	bx	lr
 80057ac:	200019dc 	.word	0x200019dc
 80057b0:	200019e8 	.word	0x200019e8

080057b4 <CustomHID_Get_Interface_Setting>:
 80057b4:	b109      	cbz	r1, 80057ba <CustomHID_Get_Interface_Setting+0x6>
 80057b6:	2002      	movs	r0, #2
 80057b8:	4770      	bx	lr
 80057ba:	2800      	cmp	r0, #0
 80057bc:	d1fb      	bne.n	80057b6 <CustomHID_Get_Interface_Setting+0x2>
 80057be:	4770      	bx	lr

080057c0 <CustomHID_GetProtocolValue>:
 80057c0:	b108      	cbz	r0, 80057c6 <CustomHID_GetProtocolValue+0x6>
 80057c2:	4803      	ldr	r0, [pc, #12]	; (80057d0 <CustomHID_GetProtocolValue+0x10>)
 80057c4:	4770      	bx	lr
 80057c6:	4b03      	ldr	r3, [pc, #12]	; (80057d4 <CustomHID_GetProtocolValue+0x14>)
 80057c8:	2201      	movs	r2, #1
 80057ca:	6819      	ldr	r1, [r3, #0]
 80057cc:	820a      	strh	r2, [r1, #16]
 80057ce:	4770      	bx	lr
 80057d0:	200019e8 	.word	0x200019e8
 80057d4:	200019dc 	.word	0x200019dc

080057d8 <CustomHID_GetHIDDescriptor>:
 80057d8:	f240 21a8 	movw	r1, #680	; 0x2a8
 80057dc:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80057e0:	f7ff babe 	b.w	8004d60 <Standard_GetDescriptorData>

080057e4 <CustomHID_GetReportDescriptor>:
 80057e4:	f240 2178 	movw	r1, #632	; 0x278
 80057e8:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80057ec:	f7ff bab8 	b.w	8004d60 <Standard_GetDescriptorData>

080057f0 <CustomHID_GetStringDescriptor>:
 80057f0:	4b05      	ldr	r3, [pc, #20]	; (8005808 <CustomHID_GetStringDescriptor+0x18>)
 80057f2:	6819      	ldr	r1, [r3, #0]
 80057f4:	78ca      	ldrb	r2, [r1, #3]
 80057f6:	2a04      	cmp	r2, #4
 80057f8:	d804      	bhi.n	8005804 <CustomHID_GetStringDescriptor+0x14>
 80057fa:	4b04      	ldr	r3, [pc, #16]	; (800580c <CustomHID_GetStringDescriptor+0x1c>)
 80057fc:	eb03 01c2 	add.w	r1, r3, r2, lsl #3
 8005800:	f7ff baae 	b.w	8004d60 <Standard_GetDescriptorData>
 8005804:	2000      	movs	r0, #0
 8005806:	4770      	bx	lr
 8005808:	200019dc 	.word	0x200019dc
 800580c:	20000288 	.word	0x20000288

08005810 <CustomHID_GetConfigDescriptor>:
 8005810:	f240 211c 	movw	r1, #540	; 0x21c
 8005814:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8005818:	f7ff baa2 	b.w	8004d60 <Standard_GetDescriptorData>

0800581c <CustomHID_GetDeviceDescriptor>:
 800581c:	f240 2180 	movw	r1, #640	; 0x280
 8005820:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8005824:	f7ff ba9c 	b.w	8004d60 <Standard_GetDescriptorData>

08005828 <CustomHID_Status_In>:
 8005828:	b508      	push	{r3, lr}
 800582a:	4a20      	ldr	r2, [pc, #128]	; (80058ac <CustomHID_Status_In+0x84>)
 800582c:	7813      	ldrb	r3, [r2, #0]
 800582e:	7850      	ldrb	r0, [r2, #1]
 8005830:	1e59      	subs	r1, r3, #1
 8005832:	3000      	adds	r0, #0
 8005834:	bf18      	it	ne
 8005836:	2001      	movne	r0, #1
 8005838:	2903      	cmp	r1, #3
 800583a:	d818      	bhi.n	800586e <CustomHID_Status_In+0x46>
 800583c:	e8df f001 	tbb	[pc, r1]
 8005840:	02092110 	.word	0x02092110
 8005844:	2800      	cmp	r0, #0
 8005846:	d12c      	bne.n	80058a2 <CustomHID_Status_In+0x7a>
 8005848:	2003      	movs	r0, #3
 800584a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800584e:	f7ff b89b 	b.w	8004988 <STM_EVAL_LEDOff>
 8005852:	2800      	cmp	r0, #0
 8005854:	d020      	beq.n	8005898 <CustomHID_Status_In+0x70>
 8005856:	2002      	movs	r0, #2
 8005858:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800585c:	f7ff b886 	b.w	800496c <STM_EVAL_LEDOn>
 8005860:	2800      	cmp	r0, #0
 8005862:	d0f2      	beq.n	800584a <CustomHID_Status_In+0x22>
 8005864:	2000      	movs	r0, #0
 8005866:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800586a:	f7ff b87f 	b.w	800496c <STM_EVAL_LEDOn>
 800586e:	2000      	movs	r0, #0
 8005870:	f7ff f88a 	bl	8004988 <STM_EVAL_LEDOff>
 8005874:	2001      	movs	r0, #1
 8005876:	f7ff f887 	bl	8004988 <STM_EVAL_LEDOff>
 800587a:	2002      	movs	r0, #2
 800587c:	f7ff f884 	bl	8004988 <STM_EVAL_LEDOff>
 8005880:	e7e2      	b.n	8005848 <CustomHID_Status_In+0x20>
 8005882:	b120      	cbz	r0, 800588e <CustomHID_Status_In+0x66>
 8005884:	2001      	movs	r0, #1
 8005886:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800588a:	f7ff b86f 	b.w	800496c <STM_EVAL_LEDOn>
 800588e:	2001      	movs	r0, #1
 8005890:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8005894:	f7ff b878 	b.w	8004988 <STM_EVAL_LEDOff>
 8005898:	2002      	movs	r0, #2
 800589a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800589e:	f7ff b873 	b.w	8004988 <STM_EVAL_LEDOff>
 80058a2:	2003      	movs	r0, #3
 80058a4:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80058a8:	f7ff b860 	b.w	800496c <STM_EVAL_LEDOn>
 80058ac:	200019ec 	.word	0x200019ec

080058b0 <CustomHID_Reset>:
 80058b0:	f641 13dc 	movw	r3, #6620	; 0x19dc
 80058b4:	f249 229c 	movw	r2, #37532	; 0x929c
 80058b8:	f6c0 0200 	movt	r2, #2048	; 0x800
 80058bc:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80058c0:	79d1      	ldrb	r1, [r2, #7]
 80058c2:	6818      	ldr	r0, [r3, #0]
 80058c4:	b510      	push	{r4, lr}
 80058c6:	2400      	movs	r4, #0
 80058c8:	7241      	strb	r1, [r0, #9]
 80058ca:	7284      	strb	r4, [r0, #10]
 80058cc:	72c4      	strb	r4, [r0, #11]
 80058ce:	4620      	mov	r0, r4
 80058d0:	f000 f896 	bl	8005a00 <SetBTABLE>
 80058d4:	4620      	mov	r0, r4
 80058d6:	f44f 7100 	mov.w	r1, #512	; 0x200
 80058da:	f000 f89b 	bl	8005a14 <SetEPType>
 80058de:	2110      	movs	r1, #16
 80058e0:	4620      	mov	r0, r4
 80058e2:	f000 f8a3 	bl	8005a2c <SetEPTxStatus>
 80058e6:	2118      	movs	r1, #24
 80058e8:	4620      	mov	r0, r4
 80058ea:	f000 f949 	bl	8005b80 <SetEPRxAddr>
 80058ee:	2158      	movs	r1, #88	; 0x58
 80058f0:	4620      	mov	r0, r4
 80058f2:	f000 f933 	bl	8005b5c <SetEPTxAddr>
 80058f6:	4620      	mov	r0, r4
 80058f8:	f000 f8fc 	bl	8005af4 <Clear_Status_Out>
 80058fc:	f240 2324 	movw	r3, #548	; 0x224
 8005900:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8005904:	f893 102c 	ldrb.w	r1, [r3, #44]	; 0x2c
 8005908:	4620      	mov	r0, r4
 800590a:	f000 f97d 	bl	8005c08 <SetEPRxCount>
 800590e:	4620      	mov	r0, r4
 8005910:	f000 f8de 	bl	8005ad0 <SetEPRxValid>
 8005914:	2001      	movs	r0, #1
 8005916:	f44f 61c0 	mov.w	r1, #1536	; 0x600
 800591a:	f000 f87b 	bl	8005a14 <SetEPType>
 800591e:	2001      	movs	r0, #1
 8005920:	21d8      	movs	r1, #216	; 0xd8
 8005922:	f000 f92d 	bl	8005b80 <SetEPRxAddr>
 8005926:	2001      	movs	r0, #1
 8005928:	2140      	movs	r1, #64	; 0x40
 800592a:	f000 f96d 	bl	8005c08 <SetEPRxCount>
 800592e:	2001      	movs	r0, #1
 8005930:	f44f 5140 	mov.w	r1, #12288	; 0x3000
 8005934:	f000 f89a 	bl	8005a6c <SetEPRxStatus>
 8005938:	2002      	movs	r0, #2
 800593a:	f44f 61c0 	mov.w	r1, #1536	; 0x600
 800593e:	f000 f869 	bl	8005a14 <SetEPType>
 8005942:	2002      	movs	r0, #2
 8005944:	f44f 7194 	mov.w	r1, #296	; 0x128
 8005948:	f000 f908 	bl	8005b5c <SetEPTxAddr>
 800594c:	2002      	movs	r0, #2
 800594e:	2140      	movs	r1, #64	; 0x40
 8005950:	f000 f94a 	bl	8005be8 <SetEPTxCount>
 8005954:	2120      	movs	r1, #32
 8005956:	2002      	movs	r0, #2
 8005958:	f000 f868 	bl	8005a2c <SetEPTxStatus>
 800595c:	4620      	mov	r0, r4
 800595e:	f7ff fc59 	bl	8005214 <SetDeviceAddress>
 8005962:	f240 701c 	movw	r0, #1820	; 0x71c
 8005966:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800596a:	2201      	movs	r2, #1
 800596c:	6002      	str	r2, [r0, #0]
 800596e:	bd10      	pop	{r4, pc}

08005970 <CustomHID_init>:
 8005970:	b510      	push	{r4, lr}
 8005972:	f7fe ffd9 	bl	8004928 <Get_SerialNum>
 8005976:	f641 13dc 	movw	r3, #6620	; 0x19dc
 800597a:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800597e:	6818      	ldr	r0, [r3, #0]
 8005980:	2400      	movs	r4, #0
 8005982:	7284      	strb	r4, [r0, #10]
 8005984:	f000 f81c 	bl	80059c0 <PowerOn>
 8005988:	f000 f978 	bl	8005c7c <USB_SIL_Init>
 800598c:	f240 711c 	movw	r1, #1820	; 0x71c
 8005990:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8005994:	600c      	str	r4, [r1, #0]
 8005996:	bd10      	pop	{r4, pc}

08005998 <CustomHID_SetConfiguration>:
 8005998:	4b07      	ldr	r3, [pc, #28]	; (80059b8 <CustomHID_SetConfiguration+0x20>)
 800599a:	6818      	ldr	r0, [r3, #0]
 800599c:	7a81      	ldrb	r1, [r0, #10]
 800599e:	b901      	cbnz	r1, 80059a2 <CustomHID_SetConfiguration+0xa>
 80059a0:	4770      	bx	lr
 80059a2:	4b06      	ldr	r3, [pc, #24]	; (80059bc <CustomHID_SetConfiguration+0x24>)
 80059a4:	f44f 5010 	mov.w	r0, #9216	; 0x2400
 80059a8:	2205      	movs	r2, #5
 80059aa:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80059ae:	2101      	movs	r1, #1
 80059b0:	601a      	str	r2, [r3, #0]
 80059b2:	f7fb bb47 	b.w	8001044 <ADC_SoftwareStartConvCmd>
 80059b6:	bf00      	nop
 80059b8:	200019dc 	.word	0x200019dc
 80059bc:	2000071c 	.word	0x2000071c

080059c0 <PowerOn>:
 80059c0:	b538      	push	{r3, r4, r5, lr}
 80059c2:	2001      	movs	r0, #1
 80059c4:	f645 4440 	movw	r4, #23616	; 0x5c40
 80059c8:	f7fe ff74 	bl	80048b4 <USB_Cable_Config>
 80059cc:	f2c4 0400 	movt	r4, #16384	; 0x4000
 80059d0:	2301      	movs	r3, #1
 80059d2:	6023      	str	r3, [r4, #0]
 80059d4:	f44f 60fa 	mov.w	r0, #2000	; 0x7d0
 80059d8:	f7fe fef2 	bl	80047c0 <Delay>
 80059dc:	f645 4544 	movw	r5, #23620	; 0x5c44
 80059e0:	f641 13e0 	movw	r3, #6624	; 0x19e0
 80059e4:	2200      	movs	r2, #0
 80059e6:	f44f 51e0 	mov.w	r1, #7168	; 0x1c00
 80059ea:	f2c4 0500 	movt	r5, #16384	; 0x4000
 80059ee:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80059f2:	6022      	str	r2, [r4, #0]
 80059f4:	4610      	mov	r0, r2
 80059f6:	602a      	str	r2, [r5, #0]
 80059f8:	8019      	strh	r1, [r3, #0]
 80059fa:	6021      	str	r1, [r4, #0]
 80059fc:	bd38      	pop	{r3, r4, r5, pc}
 80059fe:	bf00      	nop

08005a00 <SetBTABLE>:
 8005a00:	f64f 73f8 	movw	r3, #65528	; 0xfff8
 8005a04:	f645 4250 	movw	r2, #23632	; 0x5c50
 8005a08:	4003      	ands	r3, r0
 8005a0a:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8005a0e:	6013      	str	r3, [r2, #0]
 8005a10:	4770      	bx	lr
 8005a12:	bf00      	nop

08005a14 <SetEPType>:
 8005a14:	0080      	lsls	r0, r0, #2
 8005a16:	f100 4280 	add.w	r2, r0, #1073741824	; 0x40000000
 8005a1a:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 8005a1e:	6810      	ldr	r0, [r2, #0]
 8005a20:	f648 138f 	movw	r3, #35215	; 0x898f
 8005a24:	4003      	ands	r3, r0
 8005a26:	4319      	orrs	r1, r3
 8005a28:	6011      	str	r1, [r2, #0]
 8005a2a:	4770      	bx	lr

08005a2c <SetEPTxStatus>:
 8005a2c:	0080      	lsls	r0, r0, #2
 8005a2e:	f100 4280 	add.w	r2, r0, #1073741824	; 0x40000000
 8005a32:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 8005a36:	b410      	push	{r4}
 8005a38:	f001 0010 	and.w	r0, r1, #16
 8005a3c:	6814      	ldr	r4, [r2, #0]
 8005a3e:	f648 73bf 	movw	r3, #36799	; 0x8fbf
 8005a42:	b280      	uxth	r0, r0
 8005a44:	4023      	ands	r3, r4
 8005a46:	b968      	cbnz	r0, 8005a64 <SetEPTxStatus+0x38>
 8005a48:	b29b      	uxth	r3, r3
 8005a4a:	f001 0120 	and.w	r1, r1, #32
 8005a4e:	b288      	uxth	r0, r1
 8005a50:	b108      	cbz	r0, 8005a56 <SetEPTxStatus+0x2a>
 8005a52:	f083 0320 	eor.w	r3, r3, #32
 8005a56:	f443 4100 	orr.w	r1, r3, #32768	; 0x8000
 8005a5a:	f041 0080 	orr.w	r0, r1, #128	; 0x80
 8005a5e:	6010      	str	r0, [r2, #0]
 8005a60:	bc10      	pop	{r4}
 8005a62:	4770      	bx	lr
 8005a64:	f083 0310 	eor.w	r3, r3, #16
 8005a68:	e7ef      	b.n	8005a4a <SetEPTxStatus+0x1e>
 8005a6a:	bf00      	nop

08005a6c <SetEPRxStatus>:
 8005a6c:	0080      	lsls	r0, r0, #2
 8005a6e:	f100 4280 	add.w	r2, r0, #1073741824	; 0x40000000
 8005a72:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 8005a76:	b410      	push	{r4}
 8005a78:	f401 5080 	and.w	r0, r1, #4096	; 0x1000
 8005a7c:	6814      	ldr	r4, [r2, #0]
 8005a7e:	f64b 738f 	movw	r3, #49039	; 0xbf8f
 8005a82:	b280      	uxth	r0, r0
 8005a84:	4023      	ands	r3, r4
 8005a86:	b968      	cbnz	r0, 8005aa4 <SetEPRxStatus+0x38>
 8005a88:	b29b      	uxth	r3, r3
 8005a8a:	f401 5100 	and.w	r1, r1, #8192	; 0x2000
 8005a8e:	b288      	uxth	r0, r1
 8005a90:	b108      	cbz	r0, 8005a96 <SetEPRxStatus+0x2a>
 8005a92:	f483 5300 	eor.w	r3, r3, #8192	; 0x2000
 8005a96:	f443 4100 	orr.w	r1, r3, #32768	; 0x8000
 8005a9a:	f041 0080 	orr.w	r0, r1, #128	; 0x80
 8005a9e:	6010      	str	r0, [r2, #0]
 8005aa0:	bc10      	pop	{r4}
 8005aa2:	4770      	bx	lr
 8005aa4:	f483 5380 	eor.w	r3, r3, #4096	; 0x1000
 8005aa8:	e7ef      	b.n	8005a8a <SetEPRxStatus+0x1e>
 8005aaa:	bf00      	nop

08005aac <SetEPTxValid>:
 8005aac:	0080      	lsls	r0, r0, #2
 8005aae:	f100 4280 	add.w	r2, r0, #1073741824	; 0x40000000
 8005ab2:	f502 40b8 	add.w	r0, r2, #23552	; 0x5c00
 8005ab6:	6801      	ldr	r1, [r0, #0]
 8005ab8:	f648 73bf 	movw	r3, #36799	; 0x8fbf
 8005abc:	400b      	ands	r3, r1
 8005abe:	f083 0230 	eor.w	r2, r3, #48	; 0x30
 8005ac2:	f442 4100 	orr.w	r1, r2, #32768	; 0x8000
 8005ac6:	f041 0380 	orr.w	r3, r1, #128	; 0x80
 8005aca:	6003      	str	r3, [r0, #0]
 8005acc:	4770      	bx	lr
 8005ace:	bf00      	nop

08005ad0 <SetEPRxValid>:
 8005ad0:	0080      	lsls	r0, r0, #2
 8005ad2:	f100 4280 	add.w	r2, r0, #1073741824	; 0x40000000
 8005ad6:	f502 40b8 	add.w	r0, r2, #23552	; 0x5c00
 8005ada:	6801      	ldr	r1, [r0, #0]
 8005adc:	f64b 738f 	movw	r3, #49039	; 0xbf8f
 8005ae0:	400b      	ands	r3, r1
 8005ae2:	f483 5240 	eor.w	r2, r3, #12288	; 0x3000
 8005ae6:	f442 4100 	orr.w	r1, r2, #32768	; 0x8000
 8005aea:	f041 0380 	orr.w	r3, r1, #128	; 0x80
 8005aee:	6003      	str	r3, [r0, #0]
 8005af0:	4770      	bx	lr
 8005af2:	bf00      	nop

08005af4 <Clear_Status_Out>:
 8005af4:	0080      	lsls	r0, r0, #2
 8005af6:	f100 4280 	add.w	r2, r0, #1073741824	; 0x40000000
 8005afa:	f502 40b8 	add.w	r0, r2, #23552	; 0x5c00
 8005afe:	6801      	ldr	r1, [r0, #0]
 8005b00:	f640 630f 	movw	r3, #3599	; 0xe0f
 8005b04:	400b      	ands	r3, r1
 8005b06:	f443 4200 	orr.w	r2, r3, #32768	; 0x8000
 8005b0a:	f042 0180 	orr.w	r1, r2, #128	; 0x80
 8005b0e:	6001      	str	r1, [r0, #0]
 8005b10:	4770      	bx	lr
 8005b12:	bf00      	nop

08005b14 <ClearDTOG_RX>:
 8005b14:	0080      	lsls	r0, r0, #2
 8005b16:	f100 4380 	add.w	r3, r0, #1073741824	; 0x40000000
 8005b1a:	f503 40b8 	add.w	r0, r3, #23552	; 0x5c00
 8005b1e:	6802      	ldr	r2, [r0, #0]
 8005b20:	0451      	lsls	r1, r2, #17
 8005b22:	d508      	bpl.n	8005b36 <ClearDTOG_RX+0x22>
 8005b24:	6801      	ldr	r1, [r0, #0]
 8005b26:	f640 730f 	movw	r3, #3855	; 0xf0f
 8005b2a:	400b      	ands	r3, r1
 8005b2c:	f443 4240 	orr.w	r2, r3, #49152	; 0xc000
 8005b30:	f042 0180 	orr.w	r1, r2, #128	; 0x80
 8005b34:	6001      	str	r1, [r0, #0]
 8005b36:	4770      	bx	lr

08005b38 <ClearDTOG_TX>:
 8005b38:	0080      	lsls	r0, r0, #2
 8005b3a:	f100 4380 	add.w	r3, r0, #1073741824	; 0x40000000
 8005b3e:	f503 43b8 	add.w	r3, r3, #23552	; 0x5c00
 8005b42:	681a      	ldr	r2, [r3, #0]
 8005b44:	0650      	lsls	r0, r2, #25
 8005b46:	d508      	bpl.n	8005b5a <ClearDTOG_TX+0x22>
 8005b48:	6819      	ldr	r1, [r3, #0]
 8005b4a:	f640 700f 	movw	r0, #3855	; 0xf0f
 8005b4e:	4008      	ands	r0, r1
 8005b50:	f440 4200 	orr.w	r2, r0, #32768	; 0x8000
 8005b54:	f042 01c0 	orr.w	r1, r2, #192	; 0xc0
 8005b58:	6019      	str	r1, [r3, #0]
 8005b5a:	4770      	bx	lr

08005b5c <SetEPTxAddr>:
 8005b5c:	f645 4350 	movw	r3, #23632	; 0x5c50
 8005b60:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8005b64:	681a      	ldr	r2, [r3, #0]
 8005b66:	f64f 73fe 	movw	r3, #65534	; 0xfffe
 8005b6a:	b292      	uxth	r2, r2
 8005b6c:	eb02 00c0 	add.w	r0, r2, r0, lsl #3
 8005b70:	f100 5200 	add.w	r2, r0, #536870912	; 0x20000000
 8005b74:	f502 5040 	add.w	r0, r2, #12288	; 0x3000
 8005b78:	0042      	lsls	r2, r0, #1
 8005b7a:	400b      	ands	r3, r1
 8005b7c:	6013      	str	r3, [r2, #0]
 8005b7e:	4770      	bx	lr

08005b80 <SetEPRxAddr>:
 8005b80:	f645 4350 	movw	r3, #23632	; 0x5c50
 8005b84:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8005b88:	681a      	ldr	r2, [r3, #0]
 8005b8a:	f243 0304 	movw	r3, #12292	; 0x3004
 8005b8e:	b292      	uxth	r2, r2
 8005b90:	eb02 00c0 	add.w	r0, r2, r0, lsl #3
 8005b94:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8005b98:	18c3      	adds	r3, r0, r3
 8005b9a:	f64f 72fe 	movw	r2, #65534	; 0xfffe
 8005b9e:	0058      	lsls	r0, r3, #1
 8005ba0:	400a      	ands	r2, r1
 8005ba2:	6002      	str	r2, [r0, #0]
 8005ba4:	4770      	bx	lr
 8005ba6:	bf00      	nop

08005ba8 <GetEPTxAddr>:
 8005ba8:	f645 4350 	movw	r3, #23632	; 0x5c50
 8005bac:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8005bb0:	6819      	ldr	r1, [r3, #0]
 8005bb2:	b28a      	uxth	r2, r1
 8005bb4:	eb02 00c0 	add.w	r0, r2, r0, lsl #3
 8005bb8:	f100 5300 	add.w	r3, r0, #536870912	; 0x20000000
 8005bbc:	f503 5140 	add.w	r1, r3, #12288	; 0x3000
 8005bc0:	004a      	lsls	r2, r1, #1
 8005bc2:	8810      	ldrh	r0, [r2, #0]
 8005bc4:	4770      	bx	lr
 8005bc6:	bf00      	nop

08005bc8 <GetEPRxAddr>:
 8005bc8:	f645 4350 	movw	r3, #23632	; 0x5c50
 8005bcc:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8005bd0:	681a      	ldr	r2, [r3, #0]
 8005bd2:	f243 0104 	movw	r1, #12292	; 0x3004
 8005bd6:	b293      	uxth	r3, r2
 8005bd8:	eb03 00c0 	add.w	r0, r3, r0, lsl #3
 8005bdc:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8005be0:	1842      	adds	r2, r0, r1
 8005be2:	0051      	lsls	r1, r2, #1
 8005be4:	8808      	ldrh	r0, [r1, #0]
 8005be6:	4770      	bx	lr

08005be8 <SetEPTxCount>:
 8005be8:	f645 4350 	movw	r3, #23632	; 0x5c50
 8005bec:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8005bf0:	681a      	ldr	r2, [r3, #0]
 8005bf2:	f243 0302 	movw	r3, #12290	; 0x3002
 8005bf6:	b292      	uxth	r2, r2
 8005bf8:	eb02 00c0 	add.w	r0, r2, r0, lsl #3
 8005bfc:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8005c00:	18c3      	adds	r3, r0, r3
 8005c02:	005a      	lsls	r2, r3, #1
 8005c04:	6011      	str	r1, [r2, #0]
 8005c06:	4770      	bx	lr

08005c08 <SetEPRxCount>:
 8005c08:	f645 4350 	movw	r3, #23632	; 0x5c50
 8005c0c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8005c10:	681a      	ldr	r2, [r3, #0]
 8005c12:	f243 0306 	movw	r3, #12294	; 0x3006
 8005c16:	b292      	uxth	r2, r2
 8005c18:	eb02 00c0 	add.w	r0, r2, r0, lsl #3
 8005c1c:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8005c20:	18c3      	adds	r3, r0, r3
 8005c22:	005b      	lsls	r3, r3, #1
 8005c24:	293e      	cmp	r1, #62	; 0x3e
 8005c26:	d909      	bls.n	8005c3c <SetEPRxCount+0x34>
 8005c28:	094a      	lsrs	r2, r1, #5
 8005c2a:	06c9      	lsls	r1, r1, #27
 8005c2c:	d101      	bne.n	8005c32 <SetEPRxCount+0x2a>
 8005c2e:	1e50      	subs	r0, r2, #1
 8005c30:	b282      	uxth	r2, r0
 8005c32:	0291      	lsls	r1, r2, #10
 8005c34:	f441 4000 	orr.w	r0, r1, #32768	; 0x8000
 8005c38:	6018      	str	r0, [r3, #0]
 8005c3a:	4770      	bx	lr
 8005c3c:	084a      	lsrs	r2, r1, #1
 8005c3e:	07c8      	lsls	r0, r1, #31
 8005c40:	bf48      	it	mi
 8005c42:	3201      	addmi	r2, #1
 8005c44:	0291      	lsls	r1, r2, #10
 8005c46:	6019      	str	r1, [r3, #0]
 8005c48:	4770      	bx	lr
 8005c4a:	bf00      	nop

08005c4c <GetEPRxCount>:
 8005c4c:	f645 4350 	movw	r3, #23632	; 0x5c50
 8005c50:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8005c54:	681a      	ldr	r2, [r3, #0]
 8005c56:	f243 0106 	movw	r1, #12294	; 0x3006
 8005c5a:	b293      	uxth	r3, r2
 8005c5c:	eb03 00c0 	add.w	r0, r3, r0, lsl #3
 8005c60:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8005c64:	1842      	adds	r2, r0, r1
 8005c66:	0051      	lsls	r1, r2, #1
 8005c68:	680b      	ldr	r3, [r1, #0]
 8005c6a:	0598      	lsls	r0, r3, #22
 8005c6c:	0d80      	lsrs	r0, r0, #22
 8005c6e:	4770      	bx	lr

08005c70 <ByteSwap>:
 8005c70:	b2c3      	uxtb	r3, r0
 8005c72:	0a00      	lsrs	r0, r0, #8
 8005c74:	ea40 2003 	orr.w	r0, r0, r3, lsl #8
 8005c78:	4770      	bx	lr
 8005c7a:	bf00      	nop

08005c7c <USB_SIL_Init>:
 8005c7c:	b410      	push	{r4}
 8005c7e:	f641 13e0 	movw	r3, #6624	; 0x19e0
 8005c82:	f645 4444 	movw	r4, #23620	; 0x5c44
 8005c86:	f645 4240 	movw	r2, #23616	; 0x5c40
 8005c8a:	f44f 4104 	mov.w	r1, #33792	; 0x8400
 8005c8e:	2000      	movs	r0, #0
 8005c90:	f2c4 0400 	movt	r4, #16384	; 0x4000
 8005c94:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8005c98:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8005c9c:	6020      	str	r0, [r4, #0]
 8005c9e:	8019      	strh	r1, [r3, #0]
 8005ca0:	6011      	str	r1, [r2, #0]
 8005ca2:	bc10      	pop	{r4}
 8005ca4:	4770      	bx	lr
 8005ca6:	bf00      	nop

08005ca8 <USB_SIL_Read>:
 8005ca8:	b570      	push	{r4, r5, r6, lr}
 8005caa:	f000 057f 	and.w	r5, r0, #127	; 0x7f
 8005cae:	4628      	mov	r0, r5
 8005cb0:	460e      	mov	r6, r1
 8005cb2:	f7ff ffcb 	bl	8005c4c <GetEPRxCount>
 8005cb6:	4604      	mov	r4, r0
 8005cb8:	4628      	mov	r0, r5
 8005cba:	f7ff ff85 	bl	8005bc8 <GetEPRxAddr>
 8005cbe:	4622      	mov	r2, r4
 8005cc0:	4601      	mov	r1, r0
 8005cc2:	4630      	mov	r0, r6
 8005cc4:	f7ff fcee 	bl	80056a4 <PMAToUserBufferCopy>
 8005cc8:	4620      	mov	r0, r4
 8005cca:	bd70      	pop	{r4, r5, r6, pc}

08005ccc <rt_tick_get>:
 8005ccc:	f240 7320 	movw	r3, #1824	; 0x720
 8005cd0:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8005cd4:	6818      	ldr	r0, [r3, #0]
 8005cd6:	4770      	bx	lr

08005cd8 <rt_tick_increase>:
 8005cd8:	b508      	push	{r3, lr}
 8005cda:	4b09      	ldr	r3, [pc, #36]	; (8005d00 <rt_tick_increase+0x28>)
 8005cdc:	681a      	ldr	r2, [r3, #0]
 8005cde:	1c50      	adds	r0, r2, #1
 8005ce0:	6018      	str	r0, [r3, #0]
 8005ce2:	f001 fe59 	bl	8007998 <rt_thread_self>
 8005ce6:	6c01      	ldr	r1, [r0, #64]	; 0x40
 8005ce8:	1e4b      	subs	r3, r1, #1
 8005cea:	6403      	str	r3, [r0, #64]	; 0x40
 8005cec:	b91b      	cbnz	r3, 8005cf6 <rt_tick_increase+0x1e>
 8005cee:	6bc2      	ldr	r2, [r0, #60]	; 0x3c
 8005cf0:	6402      	str	r2, [r0, #64]	; 0x40
 8005cf2:	f001 fe7d 	bl	80079f0 <rt_thread_yield>
 8005cf6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8005cfa:	f002 b8c3 	b.w	8007e84 <rt_timer_check>
 8005cfe:	bf00      	nop
 8005d00:	20000720 	.word	0x20000720

08005d04 <rt_device_find>:
 8005d04:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005d06:	4607      	mov	r7, r0
 8005d08:	f001 fe46 	bl	8007998 <rt_thread_self>
 8005d0c:	b108      	cbz	r0, 8005d12 <rt_device_find+0xe>
 8005d0e:	f001 fd17 	bl	8007740 <rt_enter_critical>
 8005d12:	4e12      	ldr	r6, [pc, #72]	; (8005d5c <rt_device_find+0x58>)
 8005d14:	f856 4f34 	ldr.w	r4, [r6, #52]!
 8005d18:	42b4      	cmp	r4, r6
 8005d1a:	d103      	bne.n	8005d24 <rt_device_find+0x20>
 8005d1c:	e012      	b.n	8005d44 <rt_device_find+0x40>
 8005d1e:	6824      	ldr	r4, [r4, #0]
 8005d20:	42b4      	cmp	r4, r6
 8005d22:	d00f      	beq.n	8005d44 <rt_device_find+0x40>
 8005d24:	f1a4 050c 	sub.w	r5, r4, #12
 8005d28:	4628      	mov	r0, r5
 8005d2a:	4639      	mov	r1, r7
 8005d2c:	2208      	movs	r2, #8
 8005d2e:	f000 fcf9 	bl	8006724 <rt_strncmp>
 8005d32:	2800      	cmp	r0, #0
 8005d34:	d1f3      	bne.n	8005d1e <rt_device_find+0x1a>
 8005d36:	f001 fe2f 	bl	8007998 <rt_thread_self>
 8005d3a:	b108      	cbz	r0, 8005d40 <rt_device_find+0x3c>
 8005d3c:	f001 fd0e 	bl	800775c <rt_exit_critical>
 8005d40:	4628      	mov	r0, r5
 8005d42:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005d44:	f001 fe28 	bl	8007998 <rt_thread_self>
 8005d48:	b120      	cbz	r0, 8005d54 <rt_device_find+0x50>
 8005d4a:	2500      	movs	r5, #0
 8005d4c:	f001 fd06 	bl	800775c <rt_exit_critical>
 8005d50:	4628      	mov	r0, r5
 8005d52:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005d54:	4605      	mov	r5, r0
 8005d56:	4628      	mov	r0, r5
 8005d58:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005d5a:	bf00      	nop
 8005d5c:	200002b4 	.word	0x200002b4

08005d60 <rt_device_register>:
 8005d60:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005d62:	4604      	mov	r4, r0
 8005d64:	460e      	mov	r6, r1
 8005d66:	4617      	mov	r7, r2
 8005d68:	b168      	cbz	r0, 8005d86 <rt_device_register+0x26>
 8005d6a:	4608      	mov	r0, r1
 8005d6c:	f7ff ffca 	bl	8005d04 <rt_device_find>
 8005d70:	4605      	mov	r5, r0
 8005d72:	b940      	cbnz	r0, 8005d86 <rt_device_register+0x26>
 8005d74:	4620      	mov	r0, r4
 8005d76:	2103      	movs	r1, #3
 8005d78:	4632      	mov	r2, r6
 8005d7a:	f001 faad 	bl	80072d8 <rt_object_init>
 8005d7e:	82e7      	strh	r7, [r4, #22]
 8005d80:	76a5      	strb	r5, [r4, #26]
 8005d82:	4628      	mov	r0, r5
 8005d84:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005d86:	f04f 30ff 	mov.w	r0, #4294967295
 8005d8a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

08005d8c <rt_device_open>:
 8005d8c:	b570      	push	{r4, r5, r6, lr}
 8005d8e:	4604      	mov	r4, r0
 8005d90:	b082      	sub	sp, #8
 8005d92:	460e      	mov	r6, r1
 8005d94:	2800      	cmp	r0, #0
 8005d96:	d043      	beq.n	8005e20 <rt_device_open+0x94>
 8005d98:	8ae5      	ldrh	r5, [r4, #22]
 8005d9a:	f005 0210 	and.w	r2, r5, #16
 8005d9e:	b290      	uxth	r0, r2
 8005da0:	b950      	cbnz	r0, 8005db8 <rt_device_open+0x2c>
 8005da2:	6a61      	ldr	r1, [r4, #36]	; 0x24
 8005da4:	b129      	cbz	r1, 8005db2 <rt_device_open+0x26>
 8005da6:	4620      	mov	r0, r4
 8005da8:	4788      	blx	r1
 8005daa:	4605      	mov	r5, r0
 8005dac:	2800      	cmp	r0, #0
 8005dae:	d131      	bne.n	8005e14 <rt_device_open+0x88>
 8005db0:	8ae5      	ldrh	r5, [r4, #22]
 8005db2:	f045 0510 	orr.w	r5, r5, #16
 8005db6:	82e5      	strh	r5, [r4, #22]
 8005db8:	f005 0308 	and.w	r3, r5, #8
 8005dbc:	b29a      	uxth	r2, r3
 8005dbe:	b99a      	cbnz	r2, 8005de8 <rt_device_open+0x5c>
 8005dc0:	7ea3      	ldrb	r3, [r4, #26]
 8005dc2:	1c5a      	adds	r2, r3, #1
 8005dc4:	b2d5      	uxtb	r5, r2
 8005dc6:	76a5      	strb	r5, [r4, #26]
 8005dc8:	b1bd      	cbz	r5, 8005dfa <rt_device_open+0x6e>
 8005dca:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005dcc:	b135      	cbz	r5, 8005ddc <rt_device_open+0x50>
 8005dce:	4620      	mov	r0, r4
 8005dd0:	4631      	mov	r1, r6
 8005dd2:	47a8      	blx	r5
 8005dd4:	4605      	mov	r5, r0
 8005dd6:	b108      	cbz	r0, 8005ddc <rt_device_open+0x50>
 8005dd8:	1d83      	adds	r3, r0, #6
 8005dda:	d102      	bne.n	8005de2 <rt_device_open+0x56>
 8005ddc:	f046 0608 	orr.w	r6, r6, #8
 8005de0:	8326      	strh	r6, [r4, #24]
 8005de2:	4628      	mov	r0, r5
 8005de4:	b002      	add	sp, #8
 8005de6:	bd70      	pop	{r4, r5, r6, pc}
 8005de8:	8b20      	ldrh	r0, [r4, #24]
 8005dea:	f000 0108 	and.w	r1, r0, #8
 8005dee:	b28d      	uxth	r5, r1
 8005df0:	2d00      	cmp	r5, #0
 8005df2:	d0e5      	beq.n	8005dc0 <rt_device_open+0x34>
 8005df4:	f06f 0506 	mvn.w	r5, #6
 8005df8:	e7f3      	b.n	8005de2 <rt_device_open+0x56>
 8005dfa:	4810      	ldr	r0, [pc, #64]	; (8005e3c <rt_device_open+0xb0>)
 8005dfc:	4910      	ldr	r1, [pc, #64]	; (8005e40 <rt_device_open+0xb4>)
 8005dfe:	4a11      	ldr	r2, [pc, #68]	; (8005e44 <rt_device_open+0xb8>)
 8005e00:	23f5      	movs	r3, #245	; 0xf5
 8005e02:	f88d 5007 	strb.w	r5, [sp, #7]
 8005e06:	f000 ff4d 	bl	8006ca4 <rt_kprintf>
 8005e0a:	f89d 0007 	ldrb.w	r0, [sp, #7]
 8005e0e:	2800      	cmp	r0, #0
 8005e10:	d0fb      	beq.n	8005e0a <rt_device_open+0x7e>
 8005e12:	e7da      	b.n	8005dca <rt_device_open+0x3e>
 8005e14:	480c      	ldr	r0, [pc, #48]	; (8005e48 <rt_device_open+0xbc>)
 8005e16:	4621      	mov	r1, r4
 8005e18:	462a      	mov	r2, r5
 8005e1a:	f000 ff43 	bl	8006ca4 <rt_kprintf>
 8005e1e:	e7e0      	b.n	8005de2 <rt_device_open+0x56>
 8005e20:	4806      	ldr	r0, [pc, #24]	; (8005e3c <rt_device_open+0xb0>)
 8005e22:	490a      	ldr	r1, [pc, #40]	; (8005e4c <rt_device_open+0xc0>)
 8005e24:	4a07      	ldr	r2, [pc, #28]	; (8005e44 <rt_device_open+0xb8>)
 8005e26:	23d7      	movs	r3, #215	; 0xd7
 8005e28:	f88d 4006 	strb.w	r4, [sp, #6]
 8005e2c:	f000 ff3a 	bl	8006ca4 <rt_kprintf>
 8005e30:	f89d 3006 	ldrb.w	r3, [sp, #6]
 8005e34:	2b00      	cmp	r3, #0
 8005e36:	d0fb      	beq.n	8005e30 <rt_device_open+0xa4>
 8005e38:	e7ae      	b.n	8005d98 <rt_device_open+0xc>
 8005e3a:	bf00      	nop
 8005e3c:	08008b10 	.word	0x08008b10
 8005e40:	08009324 	.word	0x08009324
 8005e44:	08009348 	.word	0x08009348
 8005e48:	080092ec 	.word	0x080092ec
 8005e4c:	080092dc 	.word	0x080092dc

08005e50 <rt_device_close>:
 8005e50:	b510      	push	{r4, lr}
 8005e52:	4604      	mov	r4, r0
 8005e54:	b082      	sub	sp, #8
 8005e56:	b1a8      	cbz	r0, 8005e84 <rt_device_close+0x34>
 8005e58:	7ea0      	ldrb	r0, [r4, #26]
 8005e5a:	2800      	cmp	r0, #0
 8005e5c:	d020      	beq.n	8005ea0 <rt_device_close+0x50>
 8005e5e:	1e41      	subs	r1, r0, #1
 8005e60:	b2ca      	uxtb	r2, r1
 8005e62:	76a2      	strb	r2, [r4, #26]
 8005e64:	b962      	cbnz	r2, 8005e80 <rt_device_close+0x30>
 8005e66:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8005e68:	b133      	cbz	r3, 8005e78 <rt_device_close+0x28>
 8005e6a:	4620      	mov	r0, r4
 8005e6c:	4798      	blx	r3
 8005e6e:	b120      	cbz	r0, 8005e7a <rt_device_close+0x2a>
 8005e70:	1d82      	adds	r2, r0, #6
 8005e72:	d002      	beq.n	8005e7a <rt_device_close+0x2a>
 8005e74:	b002      	add	sp, #8
 8005e76:	bd10      	pop	{r4, pc}
 8005e78:	4618      	mov	r0, r3
 8005e7a:	2100      	movs	r1, #0
 8005e7c:	8321      	strh	r1, [r4, #24]
 8005e7e:	e7f9      	b.n	8005e74 <rt_device_close+0x24>
 8005e80:	2000      	movs	r0, #0
 8005e82:	e7f7      	b.n	8005e74 <rt_device_close+0x24>
 8005e84:	4808      	ldr	r0, [pc, #32]	; (8005ea8 <rt_device_close+0x58>)
 8005e86:	4909      	ldr	r1, [pc, #36]	; (8005eac <rt_device_close+0x5c>)
 8005e88:	4a09      	ldr	r2, [pc, #36]	; (8005eb0 <rt_device_close+0x60>)
 8005e8a:	f44f 7388 	mov.w	r3, #272	; 0x110
 8005e8e:	f88d 4007 	strb.w	r4, [sp, #7]
 8005e92:	f000 ff07 	bl	8006ca4 <rt_kprintf>
 8005e96:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8005e9a:	2b00      	cmp	r3, #0
 8005e9c:	d0fb      	beq.n	8005e96 <rt_device_close+0x46>
 8005e9e:	e7db      	b.n	8005e58 <rt_device_close+0x8>
 8005ea0:	f04f 30ff 	mov.w	r0, #4294967295
 8005ea4:	e7e6      	b.n	8005e74 <rt_device_close+0x24>
 8005ea6:	bf00      	nop
 8005ea8:	08008b10 	.word	0x08008b10
 8005eac:	080092dc 	.word	0x080092dc
 8005eb0:	080092cc 	.word	0x080092cc

08005eb4 <rt_device_write>:
 8005eb4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005eb8:	4604      	mov	r4, r0
 8005eba:	b082      	sub	sp, #8
 8005ebc:	4688      	mov	r8, r1
 8005ebe:	4617      	mov	r7, r2
 8005ec0:	461e      	mov	r6, r3
 8005ec2:	b1b8      	cbz	r0, 8005ef4 <rt_device_write+0x40>
 8005ec4:	7ea5      	ldrb	r5, [r4, #26]
 8005ec6:	b14d      	cbz	r5, 8005edc <rt_device_write+0x28>
 8005ec8:	6b65      	ldr	r5, [r4, #52]	; 0x34
 8005eca:	b16d      	cbz	r5, 8005ee8 <rt_device_write+0x34>
 8005ecc:	4620      	mov	r0, r4
 8005ece:	4641      	mov	r1, r8
 8005ed0:	463a      	mov	r2, r7
 8005ed2:	4633      	mov	r3, r6
 8005ed4:	47a8      	blx	r5
 8005ed6:	b002      	add	sp, #8
 8005ed8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005edc:	f04f 30ff 	mov.w	r0, #4294967295
 8005ee0:	f000 fb56 	bl	8006590 <rt_set_errno>
 8005ee4:	4628      	mov	r0, r5
 8005ee6:	e7f6      	b.n	8005ed6 <rt_device_write+0x22>
 8005ee8:	f06f 0005 	mvn.w	r0, #5
 8005eec:	f000 fb50 	bl	8006590 <rt_set_errno>
 8005ef0:	4628      	mov	r0, r5
 8005ef2:	e7f0      	b.n	8005ed6 <rt_device_write+0x22>
 8005ef4:	4806      	ldr	r0, [pc, #24]	; (8005f10 <rt_device_write+0x5c>)
 8005ef6:	4907      	ldr	r1, [pc, #28]	; (8005f14 <rt_device_write+0x60>)
 8005ef8:	4a07      	ldr	r2, [pc, #28]	; (8005f18 <rt_device_write+0x64>)
 8005efa:	f240 135f 	movw	r3, #351	; 0x15f
 8005efe:	f88d 4007 	strb.w	r4, [sp, #7]
 8005f02:	f000 fecf 	bl	8006ca4 <rt_kprintf>
 8005f06:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8005f0a:	2b00      	cmp	r3, #0
 8005f0c:	d0fb      	beq.n	8005f06 <rt_device_write+0x52>
 8005f0e:	e7d9      	b.n	8005ec4 <rt_device_write+0x10>
 8005f10:	08008b10 	.word	0x08008b10
 8005f14:	080092dc 	.word	0x080092dc
 8005f18:	08009338 	.word	0x08009338

08005f1c <rt_thread_idle_excute>:
 8005f1c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005f20:	4d25      	ldr	r5, [pc, #148]	; (8005fb8 <rt_thread_idle_excute+0x9c>)
 8005f22:	b082      	sub	sp, #8
 8005f24:	682b      	ldr	r3, [r5, #0]
 8005f26:	42ab      	cmp	r3, r5
 8005f28:	d042      	beq.n	8005fb0 <rt_thread_idle_excute+0x94>
 8005f2a:	2700      	movs	r7, #0
 8005f2c:	e026      	b.n	8005f7c <rt_thread_idle_excute+0x60>
 8005f2e:	4620      	mov	r0, r4
 8005f30:	f7fa f8f0 	bl	8000114 <rt_hw_interrupt_enable>
 8005f34:	f7fa f8ea 	bl	800010c <rt_hw_interrupt_disable>
 8005f38:	682c      	ldr	r4, [r5, #0]
 8005f3a:	4680      	mov	r8, r0
 8005f3c:	42ac      	cmp	r4, r5
 8005f3e:	d035      	beq.n	8005fac <rt_thread_idle_excute+0x90>
 8005f40:	6823      	ldr	r3, [r4, #0]
 8005f42:	6861      	ldr	r1, [r4, #4]
 8005f44:	6de2      	ldr	r2, [r4, #92]	; 0x5c
 8005f46:	6059      	str	r1, [r3, #4]
 8005f48:	6860      	ldr	r0, [r4, #4]
 8005f4a:	f1a4 0614 	sub.w	r6, r4, #20
 8005f4e:	6003      	str	r3, [r0, #0]
 8005f50:	6064      	str	r4, [r4, #4]
 8005f52:	6024      	str	r4, [r4, #0]
 8005f54:	b10a      	cbz	r2, 8005f5a <rt_thread_idle_excute+0x3e>
 8005f56:	4630      	mov	r0, r6
 8005f58:	4790      	blx	r2
 8005f5a:	4630      	mov	r0, r6
 8005f5c:	f001 faa8 	bl	80074b0 <rt_object_is_systemobject>
 8005f60:	2801      	cmp	r0, #1
 8005f62:	4640      	mov	r0, r8
 8005f64:	d022      	beq.n	8005fac <rt_thread_idle_excute+0x90>
 8005f66:	f7fa f8d5 	bl	8000114 <rt_hw_interrupt_enable>
 8005f6a:	6960      	ldr	r0, [r4, #20]
 8005f6c:	f001 f8fa 	bl	8007164 <rt_free>
 8005f70:	4630      	mov	r0, r6
 8005f72:	f001 fa55 	bl	8007420 <rt_object_delete>
 8005f76:	682b      	ldr	r3, [r5, #0]
 8005f78:	42ab      	cmp	r3, r5
 8005f7a:	d019      	beq.n	8005fb0 <rt_thread_idle_excute+0x94>
 8005f7c:	f7fa f8c6 	bl	800010c <rt_hw_interrupt_disable>
 8005f80:	4604      	mov	r4, r0
 8005f82:	f000 f9c3 	bl	800630c <rt_interrupt_get_nest>
 8005f86:	2800      	cmp	r0, #0
 8005f88:	d0d1      	beq.n	8005f2e <rt_thread_idle_excute+0x12>
 8005f8a:	480c      	ldr	r0, [pc, #48]	; (8005fbc <rt_thread_idle_excute+0xa0>)
 8005f8c:	490c      	ldr	r1, [pc, #48]	; (8005fc0 <rt_thread_idle_excute+0xa4>)
 8005f8e:	f000 fe89 	bl	8006ca4 <rt_kprintf>
 8005f92:	480c      	ldr	r0, [pc, #48]	; (8005fc4 <rt_thread_idle_excute+0xa8>)
 8005f94:	490c      	ldr	r1, [pc, #48]	; (8005fc8 <rt_thread_idle_excute+0xac>)
 8005f96:	4a0a      	ldr	r2, [pc, #40]	; (8005fc0 <rt_thread_idle_excute+0xa4>)
 8005f98:	2356      	movs	r3, #86	; 0x56
 8005f9a:	f88d 7007 	strb.w	r7, [sp, #7]
 8005f9e:	f000 fe81 	bl	8006ca4 <rt_kprintf>
 8005fa2:	f89d 0007 	ldrb.w	r0, [sp, #7]
 8005fa6:	2800      	cmp	r0, #0
 8005fa8:	d0fb      	beq.n	8005fa2 <rt_thread_idle_excute+0x86>
 8005faa:	e7c0      	b.n	8005f2e <rt_thread_idle_excute+0x12>
 8005fac:	f7fa f8b2 	bl	8000114 <rt_hw_interrupt_enable>
 8005fb0:	b002      	add	sp, #8
 8005fb2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005fb6:	bf00      	nop
 8005fb8:	20001b48 	.word	0x20001b48
 8005fbc:	08009370 	.word	0x08009370
 8005fc0:	08009358 	.word	0x08009358
 8005fc4:	08008b10 	.word	0x08008b10
 8005fc8:	0800974c 	.word	0x0800974c

08005fcc <rt_thread_idle_entry>:
 8005fcc:	b510      	push	{r4, lr}
 8005fce:	4c03      	ldr	r4, [pc, #12]	; (8005fdc <rt_thread_idle_entry+0x10>)
 8005fd0:	6823      	ldr	r3, [r4, #0]
 8005fd2:	b103      	cbz	r3, 8005fd6 <rt_thread_idle_entry+0xa>
 8005fd4:	4798      	blx	r3
 8005fd6:	f7ff ffa1 	bl	8005f1c <rt_thread_idle_excute>
 8005fda:	e7f9      	b.n	8005fd0 <rt_thread_idle_entry+0x4>
 8005fdc:	2000079c 	.word	0x2000079c

08005fe0 <rt_thread_idle_init>:
 8005fe0:	b510      	push	{r4, lr}
 8005fe2:	211f      	movs	r1, #31
 8005fe4:	b084      	sub	sp, #16
 8005fe6:	2220      	movs	r2, #32
 8005fe8:	f240 7424 	movw	r4, #1828	; 0x724
 8005fec:	f240 73a0 	movw	r3, #1952	; 0x7a0
 8005ff0:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8005ff4:	9102      	str	r1, [sp, #8]
 8005ff6:	9203      	str	r2, [sp, #12]
 8005ff8:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8005ffc:	f44f 7080 	mov.w	r0, #256	; 0x100
 8006000:	f249 3194 	movw	r1, #37780	; 0x9394
 8006004:	f645 72cd 	movw	r2, #24525	; 0x5fcd
 8006008:	9300      	str	r3, [sp, #0]
 800600a:	9001      	str	r0, [sp, #4]
 800600c:	f6c0 0100 	movt	r1, #2048	; 0x800
 8006010:	4620      	mov	r0, r4
 8006012:	f6c0 0200 	movt	r2, #2048	; 0x800
 8006016:	2300      	movs	r3, #0
 8006018:	f001 fc7a 	bl	8007910 <rt_thread_init>
 800601c:	4620      	mov	r0, r4
 800601e:	b004      	add	sp, #16
 8006020:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8006024:	f001 bdb4 	b.w	8007b90 <rt_thread_startup>

08006028 <rt_sem_init>:
 8006028:	b5f0      	push	{r4, r5, r6, r7, lr}
 800602a:	4604      	mov	r4, r0
 800602c:	b083      	sub	sp, #12
 800602e:	460f      	mov	r7, r1
 8006030:	4615      	mov	r5, r2
 8006032:	461e      	mov	r6, r3
 8006034:	b168      	cbz	r0, 8006052 <rt_sem_init+0x2a>
 8006036:	4620      	mov	r0, r4
 8006038:	2101      	movs	r1, #1
 800603a:	463a      	mov	r2, r7
 800603c:	f001 f94c 	bl	80072d8 <rt_object_init>
 8006040:	f104 0114 	add.w	r1, r4, #20
 8006044:	61a1      	str	r1, [r4, #24]
 8006046:	6161      	str	r1, [r4, #20]
 8006048:	83a5      	strh	r5, [r4, #28]
 800604a:	7266      	strb	r6, [r4, #9]
 800604c:	2000      	movs	r0, #0
 800604e:	b003      	add	sp, #12
 8006050:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006052:	4806      	ldr	r0, [pc, #24]	; (800606c <rt_sem_init+0x44>)
 8006054:	4906      	ldr	r1, [pc, #24]	; (8006070 <rt_sem_init+0x48>)
 8006056:	4a07      	ldr	r2, [pc, #28]	; (8006074 <rt_sem_init+0x4c>)
 8006058:	23d8      	movs	r3, #216	; 0xd8
 800605a:	f88d 4007 	strb.w	r4, [sp, #7]
 800605e:	f000 fe21 	bl	8006ca4 <rt_kprintf>
 8006062:	f89d 0007 	ldrb.w	r0, [sp, #7]
 8006066:	2800      	cmp	r0, #0
 8006068:	d0fb      	beq.n	8006062 <rt_sem_init+0x3a>
 800606a:	e7e4      	b.n	8006036 <rt_sem_init+0xe>
 800606c:	08008b10 	.word	0x08008b10
 8006070:	080093ac 	.word	0x080093ac
 8006074:	08009400 	.word	0x08009400

08006078 <rt_sem_create>:
 8006078:	b5f0      	push	{r4, r5, r6, r7, lr}
 800607a:	b083      	sub	sp, #12
 800607c:	4605      	mov	r5, r0
 800607e:	460f      	mov	r7, r1
 8006080:	4616      	mov	r6, r2
 8006082:	f7fa f843 	bl	800010c <rt_hw_interrupt_disable>
 8006086:	4604      	mov	r4, r0
 8006088:	f000 f940 	bl	800630c <rt_interrupt_get_nest>
 800608c:	b978      	cbnz	r0, 80060ae <rt_sem_create+0x36>
 800608e:	4620      	mov	r0, r4
 8006090:	f7fa f840 	bl	8000114 <rt_hw_interrupt_enable>
 8006094:	2001      	movs	r0, #1
 8006096:	4629      	mov	r1, r5
 8006098:	f001 f972 	bl	8007380 <rt_object_allocate>
 800609c:	b128      	cbz	r0, 80060aa <rt_sem_create+0x32>
 800609e:	f100 0114 	add.w	r1, r0, #20
 80060a2:	6181      	str	r1, [r0, #24]
 80060a4:	6141      	str	r1, [r0, #20]
 80060a6:	8387      	strh	r7, [r0, #28]
 80060a8:	7246      	strb	r6, [r0, #9]
 80060aa:	b003      	add	sp, #12
 80060ac:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80060ae:	480a      	ldr	r0, [pc, #40]	; (80060d8 <rt_sem_create+0x60>)
 80060b0:	490a      	ldr	r1, [pc, #40]	; (80060dc <rt_sem_create+0x64>)
 80060b2:	f000 fdf7 	bl	8006ca4 <rt_kprintf>
 80060b6:	f04f 0e00 	mov.w	lr, #0
 80060ba:	4809      	ldr	r0, [pc, #36]	; (80060e0 <rt_sem_create+0x68>)
 80060bc:	4909      	ldr	r1, [pc, #36]	; (80060e4 <rt_sem_create+0x6c>)
 80060be:	4a07      	ldr	r2, [pc, #28]	; (80060dc <rt_sem_create+0x64>)
 80060c0:	f240 1311 	movw	r3, #273	; 0x111
 80060c4:	f88d e007 	strb.w	lr, [sp, #7]
 80060c8:	f000 fdec 	bl	8006ca4 <rt_kprintf>
 80060cc:	f89d 3007 	ldrb.w	r3, [sp, #7]
 80060d0:	2b00      	cmp	r3, #0
 80060d2:	d0fb      	beq.n	80060cc <rt_sem_create+0x54>
 80060d4:	e7db      	b.n	800608e <rt_sem_create+0x16>
 80060d6:	bf00      	nop
 80060d8:	08009370 	.word	0x08009370
 80060dc:	0800939c 	.word	0x0800939c
 80060e0:	08008b10 	.word	0x08008b10
 80060e4:	0800974c 	.word	0x0800974c

080060e8 <rt_sem_take>:
 80060e8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80060ec:	b084      	sub	sp, #16
 80060ee:	4604      	mov	r4, r0
 80060f0:	9101      	str	r1, [sp, #4]
 80060f2:	2800      	cmp	r0, #0
 80060f4:	f000 8092 	beq.w	800621c <rt_sem_take+0x134>
 80060f8:	485b      	ldr	r0, [pc, #364]	; (8006268 <rt_sem_take+0x180>)
 80060fa:	6801      	ldr	r1, [r0, #0]
 80060fc:	b109      	cbz	r1, 8006102 <rt_sem_take+0x1a>
 80060fe:	4620      	mov	r0, r4
 8006100:	4788      	blx	r1
 8006102:	f7fa f803 	bl	800010c <rt_hw_interrupt_disable>
 8006106:	8ba2      	ldrh	r2, [r4, #28]
 8006108:	4607      	mov	r7, r0
 800610a:	2a00      	cmp	r2, #0
 800610c:	d160      	bne.n	80061d0 <rt_sem_take+0xe8>
 800610e:	9b01      	ldr	r3, [sp, #4]
 8006110:	2b00      	cmp	r3, #0
 8006112:	f000 80a3 	beq.w	800625c <rt_sem_take+0x174>
 8006116:	f7f9 fff9 	bl	800010c <rt_hw_interrupt_disable>
 800611a:	4606      	mov	r6, r0
 800611c:	f001 fc3c 	bl	8007998 <rt_thread_self>
 8006120:	4605      	mov	r5, r0
 8006122:	2800      	cmp	r0, #0
 8006124:	f000 8088 	beq.w	8006238 <rt_sem_take+0x150>
 8006128:	f7f9 fff0 	bl	800010c <rt_hw_interrupt_disable>
 800612c:	4605      	mov	r5, r0
 800612e:	f000 f8ed 	bl	800630c <rt_interrupt_get_nest>
 8006132:	2800      	cmp	r0, #0
 8006134:	d156      	bne.n	80061e4 <rt_sem_take+0xfc>
 8006136:	4628      	mov	r0, r5
 8006138:	f7f9 ffec 	bl	8000114 <rt_hw_interrupt_enable>
 800613c:	4630      	mov	r0, r6
 800613e:	f7f9 ffe9 	bl	8000114 <rt_hw_interrupt_enable>
 8006142:	f001 fc29 	bl	8007998 <rt_thread_self>
 8006146:	2200      	movs	r2, #0
 8006148:	6302      	str	r2, [r0, #48]	; 0x30
 800614a:	f894 8009 	ldrb.w	r8, [r4, #9]
 800614e:	4605      	mov	r5, r0
 8006150:	f104 0614 	add.w	r6, r4, #20
 8006154:	f001 fc7a 	bl	8007a4c <rt_thread_suspend>
 8006158:	f1b8 0f00 	cmp.w	r8, #0
 800615c:	d123      	bne.n	80061a6 <rt_sem_take+0xbe>
 800615e:	69a2      	ldr	r2, [r4, #24]
 8006160:	f105 0314 	add.w	r3, r5, #20
 8006164:	6013      	str	r3, [r2, #0]
 8006166:	61aa      	str	r2, [r5, #24]
 8006168:	616e      	str	r6, [r5, #20]
 800616a:	61a3      	str	r3, [r4, #24]
 800616c:	9801      	ldr	r0, [sp, #4]
 800616e:	2800      	cmp	r0, #0
 8006170:	dd09      	ble.n	8006186 <rt_sem_take+0x9e>
 8006172:	f105 0644 	add.w	r6, r5, #68	; 0x44
 8006176:	4630      	mov	r0, r6
 8006178:	2100      	movs	r1, #0
 800617a:	aa01      	add	r2, sp, #4
 800617c:	f001 fe50 	bl	8007e20 <rt_timer_control>
 8006180:	4630      	mov	r0, r6
 8006182:	f001 fda3 	bl	8007ccc <rt_timer_start>
 8006186:	4638      	mov	r0, r7
 8006188:	f7f9 ffc4 	bl	8000114 <rt_hw_interrupt_enable>
 800618c:	f001 f9f6 	bl	800757c <rt_schedule>
 8006190:	6b28      	ldr	r0, [r5, #48]	; 0x30
 8006192:	b928      	cbnz	r0, 80061a0 <rt_sem_take+0xb8>
 8006194:	4a35      	ldr	r2, [pc, #212]	; (800626c <rt_sem_take+0x184>)
 8006196:	6813      	ldr	r3, [r2, #0]
 8006198:	b313      	cbz	r3, 80061e0 <rt_sem_take+0xf8>
 800619a:	4620      	mov	r0, r4
 800619c:	4798      	blx	r3
 800619e:	2000      	movs	r0, #0
 80061a0:	b004      	add	sp, #16
 80061a2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80061a6:	f1b8 0f01 	cmp.w	r8, #1
 80061aa:	d1df      	bne.n	800616c <rt_sem_take+0x84>
 80061ac:	6963      	ldr	r3, [r4, #20]
 80061ae:	429e      	cmp	r6, r3
 80061b0:	d0d5      	beq.n	800615e <rt_sem_take+0x76>
 80061b2:	f895 1035 	ldrb.w	r1, [r5, #53]	; 0x35
 80061b6:	f893 0021 	ldrb.w	r0, [r3, #33]	; 0x21
 80061ba:	4288      	cmp	r0, r1
 80061bc:	d904      	bls.n	80061c8 <rt_sem_take+0xe0>
 80061be:	e025      	b.n	800620c <rt_sem_take+0x124>
 80061c0:	f893 2021 	ldrb.w	r2, [r3, #33]	; 0x21
 80061c4:	428a      	cmp	r2, r1
 80061c6:	d821      	bhi.n	800620c <rt_sem_take+0x124>
 80061c8:	681b      	ldr	r3, [r3, #0]
 80061ca:	429e      	cmp	r6, r3
 80061cc:	d1f8      	bne.n	80061c0 <rt_sem_take+0xd8>
 80061ce:	e7c6      	b.n	800615e <rt_sem_take+0x76>
 80061d0:	1e51      	subs	r1, r2, #1
 80061d2:	83a1      	strh	r1, [r4, #28]
 80061d4:	f7f9 ff9e 	bl	8000114 <rt_hw_interrupt_enable>
 80061d8:	4a24      	ldr	r2, [pc, #144]	; (800626c <rt_sem_take+0x184>)
 80061da:	6813      	ldr	r3, [r2, #0]
 80061dc:	2b00      	cmp	r3, #0
 80061de:	d1dc      	bne.n	800619a <rt_sem_take+0xb2>
 80061e0:	4618      	mov	r0, r3
 80061e2:	e7dd      	b.n	80061a0 <rt_sem_take+0xb8>
 80061e4:	4822      	ldr	r0, [pc, #136]	; (8006270 <rt_sem_take+0x188>)
 80061e6:	4923      	ldr	r1, [pc, #140]	; (8006274 <rt_sem_take+0x18c>)
 80061e8:	f000 fd5c 	bl	8006ca4 <rt_kprintf>
 80061ec:	f04f 0e00 	mov.w	lr, #0
 80061f0:	4821      	ldr	r0, [pc, #132]	; (8006278 <rt_sem_take+0x190>)
 80061f2:	4922      	ldr	r1, [pc, #136]	; (800627c <rt_sem_take+0x194>)
 80061f4:	4a1f      	ldr	r2, [pc, #124]	; (8006274 <rt_sem_take+0x18c>)
 80061f6:	f240 136d 	movw	r3, #365	; 0x16d
 80061fa:	f88d e00f 	strb.w	lr, [sp, #15]
 80061fe:	f000 fd51 	bl	8006ca4 <rt_kprintf>
 8006202:	f89d 100f 	ldrb.w	r1, [sp, #15]
 8006206:	2900      	cmp	r1, #0
 8006208:	d0fb      	beq.n	8006202 <rt_sem_take+0x11a>
 800620a:	e794      	b.n	8006136 <rt_sem_take+0x4e>
 800620c:	6858      	ldr	r0, [r3, #4]
 800620e:	f105 0114 	add.w	r1, r5, #20
 8006212:	6001      	str	r1, [r0, #0]
 8006214:	61a8      	str	r0, [r5, #24]
 8006216:	616b      	str	r3, [r5, #20]
 8006218:	6059      	str	r1, [r3, #4]
 800621a:	e7a7      	b.n	800616c <rt_sem_take+0x84>
 800621c:	4816      	ldr	r0, [pc, #88]	; (8006278 <rt_sem_take+0x190>)
 800621e:	4918      	ldr	r1, [pc, #96]	; (8006280 <rt_sem_take+0x198>)
 8006220:	4a14      	ldr	r2, [pc, #80]	; (8006274 <rt_sem_take+0x18c>)
 8006222:	f240 134d 	movw	r3, #333	; 0x14d
 8006226:	f88d 400d 	strb.w	r4, [sp, #13]
 800622a:	f000 fd3b 	bl	8006ca4 <rt_kprintf>
 800622e:	f89d 300d 	ldrb.w	r3, [sp, #13]
 8006232:	2b00      	cmp	r3, #0
 8006234:	d0fb      	beq.n	800622e <rt_sem_take+0x146>
 8006236:	e75f      	b.n	80060f8 <rt_sem_take+0x10>
 8006238:	4812      	ldr	r0, [pc, #72]	; (8006284 <rt_sem_take+0x19c>)
 800623a:	490e      	ldr	r1, [pc, #56]	; (8006274 <rt_sem_take+0x18c>)
 800623c:	f000 fd32 	bl	8006ca4 <rt_kprintf>
 8006240:	480d      	ldr	r0, [pc, #52]	; (8006278 <rt_sem_take+0x190>)
 8006242:	490e      	ldr	r1, [pc, #56]	; (800627c <rt_sem_take+0x194>)
 8006244:	4a0b      	ldr	r2, [pc, #44]	; (8006274 <rt_sem_take+0x18c>)
 8006246:	f240 136d 	movw	r3, #365	; 0x16d
 800624a:	f88d 500e 	strb.w	r5, [sp, #14]
 800624e:	f000 fd29 	bl	8006ca4 <rt_kprintf>
 8006252:	f89d 000e 	ldrb.w	r0, [sp, #14]
 8006256:	2800      	cmp	r0, #0
 8006258:	d0fb      	beq.n	8006252 <rt_sem_take+0x16a>
 800625a:	e765      	b.n	8006128 <rt_sem_take+0x40>
 800625c:	f7f9 ff5a 	bl	8000114 <rt_hw_interrupt_enable>
 8006260:	f06f 0001 	mvn.w	r0, #1
 8006264:	e79c      	b.n	80061a0 <rt_sem_take+0xb8>
 8006266:	bf00      	nop
 8006268:	20001a38 	.word	0x20001a38
 800626c:	20001a34 	.word	0x20001a34
 8006270:	08009370 	.word	0x08009370
 8006274:	080093f4 	.word	0x080093f4
 8006278:	08008b10 	.word	0x08008b10
 800627c:	0800974c 	.word	0x0800974c
 8006280:	080093ac 	.word	0x080093ac
 8006284:	080093bc 	.word	0x080093bc

08006288 <rt_sem_release>:
 8006288:	b538      	push	{r3, r4, r5, lr}
 800628a:	4b0f      	ldr	r3, [pc, #60]	; (80062c8 <rt_sem_release+0x40>)
 800628c:	4604      	mov	r4, r0
 800628e:	6819      	ldr	r1, [r3, #0]
 8006290:	b101      	cbz	r1, 8006294 <rt_sem_release+0xc>
 8006292:	4788      	blx	r1
 8006294:	f7f9 ff3a 	bl	800010c <rt_hw_interrupt_disable>
 8006298:	4623      	mov	r3, r4
 800629a:	f853 2f14 	ldr.w	r2, [r3, #20]!
 800629e:	4605      	mov	r5, r0
 80062a0:	429a      	cmp	r2, r3
 80062a2:	d00a      	beq.n	80062ba <rt_sem_release+0x32>
 80062a4:	f1a2 0014 	sub.w	r0, r2, #20
 80062a8:	f001 fc3a 	bl	8007b20 <rt_thread_resume>
 80062ac:	4628      	mov	r0, r5
 80062ae:	f7f9 ff31 	bl	8000114 <rt_hw_interrupt_enable>
 80062b2:	f001 f963 	bl	800757c <rt_schedule>
 80062b6:	2000      	movs	r0, #0
 80062b8:	bd38      	pop	{r3, r4, r5, pc}
 80062ba:	8ba1      	ldrh	r1, [r4, #28]
 80062bc:	1c4b      	adds	r3, r1, #1
 80062be:	83a3      	strh	r3, [r4, #28]
 80062c0:	f7f9 ff28 	bl	8000114 <rt_hw_interrupt_enable>
 80062c4:	2000      	movs	r0, #0
 80062c6:	bd38      	pop	{r3, r4, r5, pc}
 80062c8:	20001a30 	.word	0x20001a30

080062cc <rt_interrupt_enter>:
 80062cc:	b508      	push	{r3, lr}
 80062ce:	f7f9 ff1d 	bl	800010c <rt_hw_interrupt_disable>
 80062d2:	f641 232d 	movw	r3, #6701	; 0x1a2d
 80062d6:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80062da:	781a      	ldrb	r2, [r3, #0]
 80062dc:	1c51      	adds	r1, r2, #1
 80062de:	b2ca      	uxtb	r2, r1
 80062e0:	701a      	strb	r2, [r3, #0]
 80062e2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80062e6:	f7f9 bf15 	b.w	8000114 <rt_hw_interrupt_enable>
 80062ea:	bf00      	nop

080062ec <rt_interrupt_leave>:
 80062ec:	b508      	push	{r3, lr}
 80062ee:	f7f9 ff0d 	bl	800010c <rt_hw_interrupt_disable>
 80062f2:	f641 232d 	movw	r3, #6701	; 0x1a2d
 80062f6:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80062fa:	781a      	ldrb	r2, [r3, #0]
 80062fc:	1e51      	subs	r1, r2, #1
 80062fe:	b2ca      	uxtb	r2, r1
 8006300:	701a      	strb	r2, [r3, #0]
 8006302:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8006306:	f7f9 bf05 	b.w	8000114 <rt_hw_interrupt_enable>
 800630a:	bf00      	nop

0800630c <rt_interrupt_get_nest>:
 800630c:	f641 232d 	movw	r3, #6701	; 0x1a2d
 8006310:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8006314:	7818      	ldrb	r0, [r3, #0]
 8006316:	4770      	bx	lr

08006318 <print_number>:
 8006318:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 800631c:	b084      	sub	sp, #16
 800631e:	9e0e      	ldr	r6, [sp, #56]	; 0x38
 8006320:	4c99      	ldr	r4, [pc, #612]	; (8006588 <print_number+0x270>)
 8006322:	4f9a      	ldr	r7, [pc, #616]	; (800658c <print_number+0x274>)
 8006324:	f016 0f40 	tst.w	r6, #64	; 0x40
 8006328:	bf18      	it	ne
 800632a:	4627      	movne	r7, r4
 800632c:	f016 0910 	ands.w	r9, r6, #16
 8006330:	bf18      	it	ne
 8006332:	f026 0601 	bicne.w	r6, r6, #1
 8006336:	f016 0f01 	tst.w	r6, #1
 800633a:	bf0c      	ite	eq
 800633c:	f04f 0c20 	moveq.w	ip, #32
 8006340:	f04f 0c30 	movne.w	ip, #48	; 0x30
 8006344:	f016 0802 	ands.w	r8, r6, #2
 8006348:	d007      	beq.n	800635a <print_number+0x42>
 800634a:	2a00      	cmp	r2, #0
 800634c:	f2c0 80e3 	blt.w	8006516 <print_number+0x1fe>
 8006350:	0774      	lsls	r4, r6, #29
 8006352:	f140 8108 	bpl.w	8006566 <print_number+0x24e>
 8006356:	f04f 082b 	mov.w	r8, #43	; 0x2b
 800635a:	2a00      	cmp	r2, #0
 800635c:	f040 80de 	bne.w	800651c <print_number+0x204>
 8006360:	2330      	movs	r3, #48	; 0x30
 8006362:	f88d 3000 	strb.w	r3, [sp]
 8006366:	2401      	movs	r4, #1
 8006368:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800636a:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 800636c:	429c      	cmp	r4, r3
 800636e:	bfa8      	it	ge
 8006370:	4623      	movge	r3, r4
 8006372:	f016 0f11 	tst.w	r6, #17
 8006376:	ebc3 0707 	rsb	r7, r3, r7
 800637a:	d126      	bne.n	80063ca <print_number+0xb2>
 800637c:	f1b8 0f00 	cmp.w	r8, #0
 8006380:	f040 80bd 	bne.w	80064fe <print_number+0x1e6>
 8006384:	1e7d      	subs	r5, r7, #1
 8006386:	2f00      	cmp	r7, #0
 8006388:	f340 80f7 	ble.w	800657a <print_number+0x262>
 800638c:	43c6      	mvns	r6, r0
 800638e:	19c7      	adds	r7, r0, r7
 8006390:	19bd      	adds	r5, r7, r6
 8006392:	2620      	movs	r6, #32
 8006394:	4281      	cmp	r1, r0
 8006396:	f005 0501 	and.w	r5, r5, #1
 800639a:	d300      	bcc.n	800639e <print_number+0x86>
 800639c:	7006      	strb	r6, [r0, #0]
 800639e:	3001      	adds	r0, #1
 80063a0:	42b8      	cmp	r0, r7
 80063a2:	d010      	beq.n	80063c6 <print_number+0xae>
 80063a4:	b12d      	cbz	r5, 80063b2 <print_number+0x9a>
 80063a6:	4281      	cmp	r1, r0
 80063a8:	bf28      	it	cs
 80063aa:	7006      	strbcs	r6, [r0, #0]
 80063ac:	3001      	adds	r0, #1
 80063ae:	42b8      	cmp	r0, r7
 80063b0:	d009      	beq.n	80063c6 <print_number+0xae>
 80063b2:	1c45      	adds	r5, r0, #1
 80063b4:	4281      	cmp	r1, r0
 80063b6:	bf28      	it	cs
 80063b8:	7006      	strbcs	r6, [r0, #0]
 80063ba:	42a9      	cmp	r1, r5
 80063bc:	d300      	bcc.n	80063c0 <print_number+0xa8>
 80063be:	7046      	strb	r6, [r0, #1]
 80063c0:	1c68      	adds	r0, r5, #1
 80063c2:	42b8      	cmp	r0, r7
 80063c4:	d1f5      	bne.n	80063b2 <print_number+0x9a>
 80063c6:	f04f 37ff 	mov.w	r7, #4294967295
 80063ca:	f1b8 0f00 	cmp.w	r8, #0
 80063ce:	f040 809b 	bne.w	8006508 <print_number+0x1f0>
 80063d2:	f1b9 0f00 	cmp.w	r9, #0
 80063d6:	d125      	bne.n	8006424 <print_number+0x10c>
 80063d8:	1e7d      	subs	r5, r7, #1
 80063da:	2f00      	cmp	r7, #0
 80063dc:	f340 80cb 	ble.w	8006576 <print_number+0x25e>
 80063e0:	43c5      	mvns	r5, r0
 80063e2:	19c7      	adds	r7, r0, r7
 80063e4:	197d      	adds	r5, r7, r5
 80063e6:	4281      	cmp	r1, r0
 80063e8:	f005 0501 	and.w	r5, r5, #1
 80063ec:	d301      	bcc.n	80063f2 <print_number+0xda>
 80063ee:	f880 c000 	strb.w	ip, [r0]
 80063f2:	3001      	adds	r0, #1
 80063f4:	42b8      	cmp	r0, r7
 80063f6:	d013      	beq.n	8006420 <print_number+0x108>
 80063f8:	b135      	cbz	r5, 8006408 <print_number+0xf0>
 80063fa:	4281      	cmp	r1, r0
 80063fc:	bf28      	it	cs
 80063fe:	f880 c000 	strbcs.w	ip, [r0]
 8006402:	3001      	adds	r0, #1
 8006404:	42b8      	cmp	r0, r7
 8006406:	d00b      	beq.n	8006420 <print_number+0x108>
 8006408:	1c45      	adds	r5, r0, #1
 800640a:	4281      	cmp	r1, r0
 800640c:	bf28      	it	cs
 800640e:	f880 c000 	strbcs.w	ip, [r0]
 8006412:	42a9      	cmp	r1, r5
 8006414:	d301      	bcc.n	800641a <print_number+0x102>
 8006416:	f880 c001 	strb.w	ip, [r0, #1]
 800641a:	1c68      	adds	r0, r5, #1
 800641c:	42b8      	cmp	r0, r7
 800641e:	d1f3      	bne.n	8006408 <print_number+0xf0>
 8006420:	f04f 37ff 	mov.w	r7, #4294967295
 8006424:	429c      	cmp	r4, r3
 8006426:	da1d      	bge.n	8006464 <print_number+0x14c>
 8006428:	1b1d      	subs	r5, r3, r4
 800642a:	1944      	adds	r4, r0, r5
 800642c:	43c3      	mvns	r3, r0
 800642e:	18e3      	adds	r3, r4, r3
 8006430:	2530      	movs	r5, #48	; 0x30
 8006432:	4281      	cmp	r1, r0
 8006434:	f003 0301 	and.w	r3, r3, #1
 8006438:	f080 8093 	bcs.w	8006562 <print_number+0x24a>
 800643c:	3001      	adds	r0, #1
 800643e:	42a0      	cmp	r0, r4
 8006440:	d010      	beq.n	8006464 <print_number+0x14c>
 8006442:	b12b      	cbz	r3, 8006450 <print_number+0x138>
 8006444:	4281      	cmp	r1, r0
 8006446:	bf28      	it	cs
 8006448:	7005      	strbcs	r5, [r0, #0]
 800644a:	3001      	adds	r0, #1
 800644c:	42a0      	cmp	r0, r4
 800644e:	d009      	beq.n	8006464 <print_number+0x14c>
 8006450:	1c43      	adds	r3, r0, #1
 8006452:	4281      	cmp	r1, r0
 8006454:	bf28      	it	cs
 8006456:	7005      	strbcs	r5, [r0, #0]
 8006458:	4299      	cmp	r1, r3
 800645a:	d300      	bcc.n	800645e <print_number+0x146>
 800645c:	7045      	strb	r5, [r0, #1]
 800645e:	1c58      	adds	r0, r3, #1
 8006460:	42a0      	cmp	r0, r4
 8006462:	d1f5      	bne.n	8006450 <print_number+0x138>
 8006464:	4288      	cmp	r0, r1
 8006466:	f002 0401 	and.w	r4, r2, #1
 800646a:	d802      	bhi.n	8006472 <print_number+0x15a>
 800646c:	f81d 5002 	ldrb.w	r5, [sp, r2]
 8006470:	7005      	strb	r5, [r0, #0]
 8006472:	1c43      	adds	r3, r0, #1
 8006474:	1e55      	subs	r5, r2, #1
 8006476:	2a00      	cmp	r2, #0
 8006478:	dd1b      	ble.n	80064b2 <print_number+0x19a>
 800647a:	b14c      	cbz	r4, 8006490 <print_number+0x178>
 800647c:	428b      	cmp	r3, r1
 800647e:	bf9c      	itt	ls
 8006480:	f81d 4005 	ldrbls.w	r4, [sp, r5]
 8006484:	701c      	strbls	r4, [r3, #0]
 8006486:	3d01      	subs	r5, #1
 8006488:	1c6c      	adds	r4, r5, #1
 800648a:	3301      	adds	r3, #1
 800648c:	2c00      	cmp	r4, #0
 800648e:	dd10      	ble.n	80064b2 <print_number+0x19a>
 8006490:	1c5e      	adds	r6, r3, #1
 8006492:	428b      	cmp	r3, r1
 8006494:	f105 34ff 	add.w	r4, r5, #4294967295
 8006498:	bf9c      	itt	ls
 800649a:	f81d 5005 	ldrbls.w	r5, [sp, r5]
 800649e:	701d      	strbls	r5, [r3, #0]
 80064a0:	428e      	cmp	r6, r1
 80064a2:	d802      	bhi.n	80064aa <print_number+0x192>
 80064a4:	f81d 5004 	ldrb.w	r5, [sp, r4]
 80064a8:	705d      	strb	r5, [r3, #1]
 80064aa:	1c73      	adds	r3, r6, #1
 80064ac:	1e65      	subs	r5, r4, #1
 80064ae:	2c00      	cmp	r4, #0
 80064b0:	dcee      	bgt.n	8006490 <print_number+0x178>
 80064b2:	ea22 72e2 	bic.w	r2, r2, r2, asr #31
 80064b6:	1c53      	adds	r3, r2, #1
 80064b8:	2f00      	cmp	r7, #0
 80064ba:	4418      	add	r0, r3
 80064bc:	dd1b      	ble.n	80064f6 <print_number+0x1de>
 80064be:	43c2      	mvns	r2, r0
 80064c0:	19c7      	adds	r7, r0, r7
 80064c2:	18bb      	adds	r3, r7, r2
 80064c4:	2220      	movs	r2, #32
 80064c6:	4288      	cmp	r0, r1
 80064c8:	f003 0301 	and.w	r3, r3, #1
 80064cc:	d947      	bls.n	800655e <print_number+0x246>
 80064ce:	3001      	adds	r0, #1
 80064d0:	42b8      	cmp	r0, r7
 80064d2:	d010      	beq.n	80064f6 <print_number+0x1de>
 80064d4:	b12b      	cbz	r3, 80064e2 <print_number+0x1ca>
 80064d6:	4288      	cmp	r0, r1
 80064d8:	bf98      	it	ls
 80064da:	7002      	strbls	r2, [r0, #0]
 80064dc:	3001      	adds	r0, #1
 80064de:	42b8      	cmp	r0, r7
 80064e0:	d009      	beq.n	80064f6 <print_number+0x1de>
 80064e2:	1c43      	adds	r3, r0, #1
 80064e4:	4288      	cmp	r0, r1
 80064e6:	bf98      	it	ls
 80064e8:	7002      	strbls	r2, [r0, #0]
 80064ea:	428b      	cmp	r3, r1
 80064ec:	d800      	bhi.n	80064f0 <print_number+0x1d8>
 80064ee:	7042      	strb	r2, [r0, #1]
 80064f0:	1c58      	adds	r0, r3, #1
 80064f2:	42b8      	cmp	r0, r7
 80064f4:	d1f5      	bne.n	80064e2 <print_number+0x1ca>
 80064f6:	b004      	add	sp, #16
 80064f8:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 80064fc:	4770      	bx	lr
 80064fe:	2f00      	cmp	r7, #0
 8006500:	f107 37ff 	add.w	r7, r7, #4294967295
 8006504:	f73f af3e 	bgt.w	8006384 <print_number+0x6c>
 8006508:	4281      	cmp	r1, r0
 800650a:	bf24      	itt	cs
 800650c:	f880 8000 	strbcs.w	r8, [r0]
 8006510:	3f01      	subcs	r7, #1
 8006512:	3001      	adds	r0, #1
 8006514:	e75d      	b.n	80063d2 <print_number+0xba>
 8006516:	4252      	negs	r2, r2
 8006518:	f04f 082d 	mov.w	r8, #45	; 0x2d
 800651c:	f64c 4acd 	movw	sl, #52429	; 0xcccd
 8006520:	2400      	movs	r4, #0
 8006522:	f6cc 4acc 	movt	sl, #52428	; 0xcccc
 8006526:	e007      	b.n	8006538 <print_number+0x220>
 8006528:	f002 050f 	and.w	r5, r2, #15
 800652c:	5d7d      	ldrb	r5, [r7, r5]
 800652e:	0912      	lsrs	r2, r2, #4
 8006530:	f80d 5004 	strb.w	r5, [sp, r4]
 8006534:	3401      	adds	r4, #1
 8006536:	b182      	cbz	r2, 800655a <print_number+0x242>
 8006538:	2b0a      	cmp	r3, #10
 800653a:	d1f5      	bne.n	8006528 <print_number+0x210>
 800653c:	fbaa 5b02 	umull	r5, fp, sl, r2
 8006540:	ea4f 0bdb 	mov.w	fp, fp, lsr #3
 8006544:	eb0b 058b 	add.w	r5, fp, fp, lsl #2
 8006548:	eba2 0545 	sub.w	r5, r2, r5, lsl #1
 800654c:	5d7d      	ldrb	r5, [r7, r5]
 800654e:	465a      	mov	r2, fp
 8006550:	f80d 5004 	strb.w	r5, [sp, r4]
 8006554:	3401      	adds	r4, #1
 8006556:	2a00      	cmp	r2, #0
 8006558:	d1ee      	bne.n	8006538 <print_number+0x220>
 800655a:	1e62      	subs	r2, r4, #1
 800655c:	e704      	b.n	8006368 <print_number+0x50>
 800655e:	7002      	strb	r2, [r0, #0]
 8006560:	e7b5      	b.n	80064ce <print_number+0x1b6>
 8006562:	7005      	strb	r5, [r0, #0]
 8006564:	e76a      	b.n	800643c <print_number+0x124>
 8006566:	f016 0f08 	tst.w	r6, #8
 800656a:	bf0c      	ite	eq
 800656c:	f04f 0800 	moveq.w	r8, #0
 8006570:	f04f 0820 	movne.w	r8, #32
 8006574:	e6f1      	b.n	800635a <print_number+0x42>
 8006576:	462f      	mov	r7, r5
 8006578:	e754      	b.n	8006424 <print_number+0x10c>
 800657a:	462f      	mov	r7, r5
 800657c:	f1b8 0f00 	cmp.w	r8, #0
 8006580:	f43f af27 	beq.w	80063d2 <print_number+0xba>
 8006584:	e7c0      	b.n	8006508 <print_number+0x1f0>
 8006586:	bf00      	nop
 8006588:	08009420 	.word	0x08009420
 800658c:	0800940c 	.word	0x0800940c

08006590 <rt_set_errno>:
 8006590:	b510      	push	{r4, lr}
 8006592:	4604      	mov	r4, r0
 8006594:	f7ff feba 	bl	800630c <rt_interrupt_get_nest>
 8006598:	b110      	cbz	r0, 80065a0 <rt_set_errno+0x10>
 800659a:	4b04      	ldr	r3, [pc, #16]	; (80065ac <rt_set_errno+0x1c>)
 800659c:	601c      	str	r4, [r3, #0]
 800659e:	bd10      	pop	{r4, pc}
 80065a0:	f001 f9fa 	bl	8007998 <rt_thread_self>
 80065a4:	2800      	cmp	r0, #0
 80065a6:	d0f8      	beq.n	800659a <rt_set_errno+0xa>
 80065a8:	6304      	str	r4, [r0, #48]	; 0x30
 80065aa:	bd10      	pop	{r4, pc}
 80065ac:	200008a0 	.word	0x200008a0

080065b0 <rt_memset>:
 80065b0:	2a03      	cmp	r2, #3
 80065b2:	b4f0      	push	{r4, r5, r6, r7}
 80065b4:	b2c9      	uxtb	r1, r1
 80065b6:	d96c      	bls.n	8006692 <rt_memset+0xe2>
 80065b8:	0783      	lsls	r3, r0, #30
 80065ba:	d16c      	bne.n	8006696 <rt_memset+0xe6>
 80065bc:	ea41 2401 	orr.w	r4, r1, r1, lsl #8
 80065c0:	2a0f      	cmp	r2, #15
 80065c2:	ea44 4404 	orr.w	r4, r4, r4, lsl #16
 80065c6:	d968      	bls.n	800669a <rt_memset+0xea>
 80065c8:	f1a2 0510 	sub.w	r5, r2, #16
 80065cc:	462e      	mov	r6, r5
 80065ce:	2e0f      	cmp	r6, #15
 80065d0:	6004      	str	r4, [r0, #0]
 80065d2:	6044      	str	r4, [r0, #4]
 80065d4:	6084      	str	r4, [r0, #8]
 80065d6:	60c4      	str	r4, [r0, #12]
 80065d8:	f3c5 1500 	ubfx	r5, r5, #4, #1
 80065dc:	f100 0310 	add.w	r3, r0, #16
 80065e0:	d916      	bls.n	8006610 <rt_memset+0x60>
 80065e2:	b13d      	cbz	r5, 80065f4 <rt_memset+0x44>
 80065e4:	3e10      	subs	r6, #16
 80065e6:	601c      	str	r4, [r3, #0]
 80065e8:	605c      	str	r4, [r3, #4]
 80065ea:	609c      	str	r4, [r3, #8]
 80065ec:	60dc      	str	r4, [r3, #12]
 80065ee:	3310      	adds	r3, #16
 80065f0:	2e0f      	cmp	r6, #15
 80065f2:	d90d      	bls.n	8006610 <rt_memset+0x60>
 80065f4:	3e20      	subs	r6, #32
 80065f6:	f103 0510 	add.w	r5, r3, #16
 80065fa:	601c      	str	r4, [r3, #0]
 80065fc:	605c      	str	r4, [r3, #4]
 80065fe:	609c      	str	r4, [r3, #8]
 8006600:	60dc      	str	r4, [r3, #12]
 8006602:	611c      	str	r4, [r3, #16]
 8006604:	615c      	str	r4, [r3, #20]
 8006606:	619c      	str	r4, [r3, #24]
 8006608:	61dc      	str	r4, [r3, #28]
 800660a:	3320      	adds	r3, #32
 800660c:	2e0f      	cmp	r6, #15
 800660e:	d8f1      	bhi.n	80065f4 <rt_memset+0x44>
 8006610:	f1a2 0310 	sub.w	r3, r2, #16
 8006614:	f023 030f 	bic.w	r3, r3, #15
 8006618:	f002 020f 	and.w	r2, r2, #15
 800661c:	3310      	adds	r3, #16
 800661e:	2a03      	cmp	r2, #3
 8006620:	4403      	add	r3, r0
 8006622:	d91d      	bls.n	8006660 <rt_memset+0xb0>
 8006624:	1f17      	subs	r7, r2, #4
 8006626:	463e      	mov	r6, r7
 8006628:	461d      	mov	r5, r3
 800662a:	2e03      	cmp	r6, #3
 800662c:	f845 4b04 	str.w	r4, [r5], #4
 8006630:	f3c7 0780 	ubfx	r7, r7, #2, #1
 8006634:	d90d      	bls.n	8006652 <rt_memset+0xa2>
 8006636:	b127      	cbz	r7, 8006642 <rt_memset+0x92>
 8006638:	3e04      	subs	r6, #4
 800663a:	2e03      	cmp	r6, #3
 800663c:	f845 4b04 	str.w	r4, [r5], #4
 8006640:	d907      	bls.n	8006652 <rt_memset+0xa2>
 8006642:	462f      	mov	r7, r5
 8006644:	f847 4b04 	str.w	r4, [r7], #4
 8006648:	3e08      	subs	r6, #8
 800664a:	606c      	str	r4, [r5, #4]
 800664c:	1d3d      	adds	r5, r7, #4
 800664e:	2e03      	cmp	r6, #3
 8006650:	d8f7      	bhi.n	8006642 <rt_memset+0x92>
 8006652:	1f14      	subs	r4, r2, #4
 8006654:	f024 0403 	bic.w	r4, r4, #3
 8006658:	3404      	adds	r4, #4
 800665a:	f002 0203 	and.w	r2, r2, #3
 800665e:	191b      	adds	r3, r3, r4
 8006660:	b1aa      	cbz	r2, 800668e <rt_memset+0xde>
 8006662:	b2cc      	uxtb	r4, r1
 8006664:	189a      	adds	r2, r3, r2
 8006666:	43d9      	mvns	r1, r3
 8006668:	f803 4b01 	strb.w	r4, [r3], #1
 800666c:	1851      	adds	r1, r2, r1
 800666e:	4293      	cmp	r3, r2
 8006670:	f001 0101 	and.w	r1, r1, #1
 8006674:	d00b      	beq.n	800668e <rt_memset+0xde>
 8006676:	b119      	cbz	r1, 8006680 <rt_memset+0xd0>
 8006678:	f803 4b01 	strb.w	r4, [r3], #1
 800667c:	4293      	cmp	r3, r2
 800667e:	d006      	beq.n	800668e <rt_memset+0xde>
 8006680:	4619      	mov	r1, r3
 8006682:	f801 4b01 	strb.w	r4, [r1], #1
 8006686:	705c      	strb	r4, [r3, #1]
 8006688:	1c4b      	adds	r3, r1, #1
 800668a:	4293      	cmp	r3, r2
 800668c:	d1f8      	bne.n	8006680 <rt_memset+0xd0>
 800668e:	bcf0      	pop	{r4, r5, r6, r7}
 8006690:	4770      	bx	lr
 8006692:	4603      	mov	r3, r0
 8006694:	e7e4      	b.n	8006660 <rt_memset+0xb0>
 8006696:	4603      	mov	r3, r0
 8006698:	e7e3      	b.n	8006662 <rt_memset+0xb2>
 800669a:	4603      	mov	r3, r0
 800669c:	e7c2      	b.n	8006624 <rt_memset+0x74>
 800669e:	bf00      	nop

080066a0 <rt_strncpy>:
 80066a0:	b4f0      	push	{r4, r5, r6, r7}
 80066a2:	2a00      	cmp	r2, #0
 80066a4:	d03b      	beq.n	800671e <rt_strncpy+0x7e>
 80066a6:	780c      	ldrb	r4, [r1, #0]
 80066a8:	4603      	mov	r3, r0
 80066aa:	1e56      	subs	r6, r2, #1
 80066ac:	f803 4b01 	strb.w	r4, [r3], #1
 80066b0:	f006 0701 	and.w	r7, r6, #1
 80066b4:	461d      	mov	r5, r3
 80066b6:	b1cc      	cbz	r4, 80066ec <rt_strncpy+0x4c>
 80066b8:	4632      	mov	r2, r6
 80066ba:	b386      	cbz	r6, 800671e <rt_strncpy+0x7e>
 80066bc:	b13f      	cbz	r7, 80066ce <rt_strncpy+0x2e>
 80066be:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 80066c2:	f803 4b01 	strb.w	r4, [r3], #1
 80066c6:	461d      	mov	r5, r3
 80066c8:	b184      	cbz	r4, 80066ec <rt_strncpy+0x4c>
 80066ca:	3a01      	subs	r2, #1
 80066cc:	d027      	beq.n	800671e <rt_strncpy+0x7e>
 80066ce:	784e      	ldrb	r6, [r1, #1]
 80066d0:	461c      	mov	r4, r3
 80066d2:	f804 6b01 	strb.w	r6, [r4], #1
 80066d6:	3101      	adds	r1, #1
 80066d8:	4625      	mov	r5, r4
 80066da:	b13e      	cbz	r6, 80066ec <rt_strncpy+0x4c>
 80066dc:	784e      	ldrb	r6, [r1, #1]
 80066de:	3a01      	subs	r2, #1
 80066e0:	705e      	strb	r6, [r3, #1]
 80066e2:	1c63      	adds	r3, r4, #1
 80066e4:	3101      	adds	r1, #1
 80066e6:	461d      	mov	r5, r3
 80066e8:	2e00      	cmp	r6, #0
 80066ea:	d1ee      	bne.n	80066ca <rt_strncpy+0x2a>
 80066ec:	2a01      	cmp	r2, #1
 80066ee:	d016      	beq.n	800671e <rt_strncpy+0x7e>
 80066f0:	3a01      	subs	r2, #1
 80066f2:	2100      	movs	r1, #0
 80066f4:	18aa      	adds	r2, r5, r2
 80066f6:	43eb      	mvns	r3, r5
 80066f8:	f805 1b01 	strb.w	r1, [r5], #1
 80066fc:	18d3      	adds	r3, r2, r3
 80066fe:	4295      	cmp	r5, r2
 8006700:	f003 0301 	and.w	r3, r3, #1
 8006704:	d00b      	beq.n	800671e <rt_strncpy+0x7e>
 8006706:	b11b      	cbz	r3, 8006710 <rt_strncpy+0x70>
 8006708:	f805 1b01 	strb.w	r1, [r5], #1
 800670c:	4295      	cmp	r5, r2
 800670e:	d006      	beq.n	800671e <rt_strncpy+0x7e>
 8006710:	462b      	mov	r3, r5
 8006712:	f803 1b01 	strb.w	r1, [r3], #1
 8006716:	7069      	strb	r1, [r5, #1]
 8006718:	1c5d      	adds	r5, r3, #1
 800671a:	4295      	cmp	r5, r2
 800671c:	d1f8      	bne.n	8006710 <rt_strncpy+0x70>
 800671e:	bcf0      	pop	{r4, r5, r6, r7}
 8006720:	4770      	bx	lr
 8006722:	bf00      	nop

08006724 <rt_strncmp>:
 8006724:	b430      	push	{r4, r5}
 8006726:	2a00      	cmp	r2, #0
 8006728:	d027      	beq.n	800677a <rt_strncmp+0x56>
 800672a:	7803      	ldrb	r3, [r0, #0]
 800672c:	780c      	ldrb	r4, [r1, #0]
 800672e:	1b1c      	subs	r4, r3, r4
 8006730:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 8006734:	bf18      	it	ne
 8006736:	b260      	sxtbne	r0, r4
 8006738:	d11d      	bne.n	8006776 <rt_strncmp+0x52>
 800673a:	b1f3      	cbz	r3, 800677a <rt_strncmp+0x56>
 800673c:	1e43      	subs	r3, r0, #1
 800673e:	189a      	adds	r2, r3, r2
 8006740:	1a13      	subs	r3, r2, r0
 8006742:	07db      	lsls	r3, r3, #31
 8006744:	d501      	bpl.n	800674a <rt_strncmp+0x26>
 8006746:	e00d      	b.n	8006764 <rt_strncmp+0x40>
 8006748:	b1bc      	cbz	r4, 800677a <rt_strncmp+0x56>
 800674a:	4290      	cmp	r0, r2
 800674c:	4603      	mov	r3, r0
 800674e:	d014      	beq.n	800677a <rt_strncmp+0x56>
 8006750:	f813 4f01 	ldrb.w	r4, [r3, #1]!
 8006754:	f811 5f01 	ldrb.w	r5, [r1, #1]!
 8006758:	4618      	mov	r0, r3
 800675a:	1b63      	subs	r3, r4, r5
 800675c:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
 8006760:	d108      	bne.n	8006774 <rt_strncmp+0x50>
 8006762:	b154      	cbz	r4, 800677a <rt_strncmp+0x56>
 8006764:	f810 4f01 	ldrb.w	r4, [r0, #1]!
 8006768:	f811 3f01 	ldrb.w	r3, [r1, #1]!
 800676c:	1ae3      	subs	r3, r4, r3
 800676e:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
 8006772:	d0e9      	beq.n	8006748 <rt_strncmp+0x24>
 8006774:	b258      	sxtb	r0, r3
 8006776:	bc30      	pop	{r4, r5}
 8006778:	4770      	bx	lr
 800677a:	2000      	movs	r0, #0
 800677c:	e7fb      	b.n	8006776 <rt_strncmp+0x52>
 800677e:	bf00      	nop

08006780 <rt_strlen>:
 8006780:	7802      	ldrb	r2, [r0, #0]
 8006782:	b13a      	cbz	r2, 8006794 <rt_strlen+0x14>
 8006784:	1c43      	adds	r3, r0, #1
 8006786:	7819      	ldrb	r1, [r3, #0]
 8006788:	461a      	mov	r2, r3
 800678a:	3301      	adds	r3, #1
 800678c:	2900      	cmp	r1, #0
 800678e:	d1fa      	bne.n	8006786 <rt_strlen+0x6>
 8006790:	1a10      	subs	r0, r2, r0
 8006792:	4770      	bx	lr
 8006794:	4610      	mov	r0, r2
 8006796:	4770      	bx	lr

08006798 <rt_vsnprintf>:
 8006798:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800679c:	3901      	subs	r1, #1
 800679e:	4614      	mov	r4, r2
 80067a0:	7812      	ldrb	r2, [r2, #0]
 80067a2:	4681      	mov	r9, r0
 80067a4:	1840      	adds	r0, r0, r1
 80067a6:	bf34      	ite	cc
 80067a8:	4607      	movcc	r7, r0
 80067aa:	f04f 37ff 	movcs.w	r7, #4294967295
 80067ae:	b085      	sub	sp, #20
 80067b0:	469a      	mov	sl, r3
 80067b2:	4648      	mov	r0, r9
 80067b4:	2a00      	cmp	r2, #0
 80067b6:	f000 80d7 	beq.w	8006968 <rt_vsnprintf+0x1d0>
 80067ba:	f04f 0825 	mov.w	r8, #37	; 0x25
 80067be:	e008      	b.n	80067d2 <rt_vsnprintf+0x3a>
 80067c0:	4287      	cmp	r7, r0
 80067c2:	d300      	bcc.n	80067c6 <rt_vsnprintf+0x2e>
 80067c4:	7002      	strb	r2, [r0, #0]
 80067c6:	7862      	ldrb	r2, [r4, #1]
 80067c8:	3001      	adds	r0, #1
 80067ca:	3401      	adds	r4, #1
 80067cc:	2a00      	cmp	r2, #0
 80067ce:	f000 80c9 	beq.w	8006964 <rt_vsnprintf+0x1cc>
 80067d2:	2a25      	cmp	r2, #37	; 0x25
 80067d4:	d1f4      	bne.n	80067c0 <rt_vsnprintf+0x28>
 80067d6:	2500      	movs	r5, #0
 80067d8:	e00a      	b.n	80067f0 <rt_vsnprintf+0x58>
 80067da:	2b2b      	cmp	r3, #43	; 0x2b
 80067dc:	d00f      	beq.n	80067fe <rt_vsnprintf+0x66>
 80067de:	2b20      	cmp	r3, #32
 80067e0:	d010      	beq.n	8006804 <rt_vsnprintf+0x6c>
 80067e2:	2b23      	cmp	r3, #35	; 0x23
 80067e4:	d011      	beq.n	800680a <rt_vsnprintf+0x72>
 80067e6:	2b30      	cmp	r3, #48	; 0x30
 80067e8:	d112      	bne.n	8006810 <rt_vsnprintf+0x78>
 80067ea:	f045 0501 	orr.w	r5, r5, #1
 80067ee:	4614      	mov	r4, r2
 80067f0:	7863      	ldrb	r3, [r4, #1]
 80067f2:	1c62      	adds	r2, r4, #1
 80067f4:	2b2d      	cmp	r3, #45	; 0x2d
 80067f6:	d1f0      	bne.n	80067da <rt_vsnprintf+0x42>
 80067f8:	f045 0510 	orr.w	r5, r5, #16
 80067fc:	e7f7      	b.n	80067ee <rt_vsnprintf+0x56>
 80067fe:	f045 0504 	orr.w	r5, r5, #4
 8006802:	e7f4      	b.n	80067ee <rt_vsnprintf+0x56>
 8006804:	f045 0508 	orr.w	r5, r5, #8
 8006808:	e7f1      	b.n	80067ee <rt_vsnprintf+0x56>
 800680a:	f045 0520 	orr.w	r5, r5, #32
 800680e:	e7ee      	b.n	80067ee <rt_vsnprintf+0x56>
 8006810:	f1a3 0130 	sub.w	r1, r3, #48	; 0x30
 8006814:	2909      	cmp	r1, #9
 8006816:	461e      	mov	r6, r3
 8006818:	d872      	bhi.n	8006900 <rt_vsnprintf+0x168>
 800681a:	2100      	movs	r1, #0
 800681c:	f812 3f01 	ldrb.w	r3, [r2, #1]!
 8006820:	eb01 0481 	add.w	r4, r1, r1, lsl #2
 8006824:	eb06 0144 	add.w	r1, r6, r4, lsl #1
 8006828:	f1a3 0430 	sub.w	r4, r3, #48	; 0x30
 800682c:	3930      	subs	r1, #48	; 0x30
 800682e:	2c09      	cmp	r4, #9
 8006830:	461e      	mov	r6, r3
 8006832:	d9f3      	bls.n	800681c <rt_vsnprintf+0x84>
 8006834:	2b2e      	cmp	r3, #46	; 0x2e
 8006836:	4614      	mov	r4, r2
 8006838:	d06a      	beq.n	8006910 <rt_vsnprintf+0x178>
 800683a:	f04f 36ff 	mov.w	r6, #4294967295
 800683e:	2b68      	cmp	r3, #104	; 0x68
 8006840:	f000 8081 	beq.w	8006946 <rt_vsnprintf+0x1ae>
 8006844:	2b6c      	cmp	r3, #108	; 0x6c
 8006846:	d07e      	beq.n	8006946 <rt_vsnprintf+0x1ae>
 8006848:	f04f 0c00 	mov.w	ip, #0
 800684c:	f1a3 0225 	sub.w	r2, r3, #37	; 0x25
 8006850:	2a53      	cmp	r2, #83	; 0x53
 8006852:	d87d      	bhi.n	8006950 <rt_vsnprintf+0x1b8>
 8006854:	e8df f012 	tbh	[pc, r2, lsl #1]
 8006858:	007c01b5 	.word	0x007c01b5
 800685c:	007c007c 	.word	0x007c007c
 8006860:	007c007c 	.word	0x007c007c
 8006864:	007c007c 	.word	0x007c007c
 8006868:	007c007c 	.word	0x007c007c
 800686c:	007c007c 	.word	0x007c007c
 8006870:	007c007c 	.word	0x007c007c
 8006874:	007c007c 	.word	0x007c007c
 8006878:	007c007c 	.word	0x007c007c
 800687c:	007c007c 	.word	0x007c007c
 8006880:	007c007c 	.word	0x007c007c
 8006884:	007c007c 	.word	0x007c007c
 8006888:	007c007c 	.word	0x007c007c
 800688c:	007c007c 	.word	0x007c007c
 8006890:	007c007c 	.word	0x007c007c
 8006894:	007c007c 	.word	0x007c007c
 8006898:	007c007c 	.word	0x007c007c
 800689c:	007c007c 	.word	0x007c007c
 80068a0:	007c007c 	.word	0x007c007c
 80068a4:	007c007c 	.word	0x007c007c
 80068a8:	007c007c 	.word	0x007c007c
 80068ac:	007c007c 	.word	0x007c007c
 80068b0:	007c007c 	.word	0x007c007c
 80068b4:	007c007c 	.word	0x007c007c
 80068b8:	007c007c 	.word	0x007c007c
 80068bc:	01b1007c 	.word	0x01b1007c
 80068c0:	007c007c 	.word	0x007c007c
 80068c4:	007c007c 	.word	0x007c007c
 80068c8:	007c007c 	.word	0x007c007c
 80068cc:	007c007c 	.word	0x007c007c
 80068d0:	007c007c 	.word	0x007c007c
 80068d4:	0159015d 	.word	0x0159015d
 80068d8:	007c007c 	.word	0x007c007c
 80068dc:	007c007c 	.word	0x007c007c
 80068e0:	007c0159 	.word	0x007c0159
 80068e4:	007c007c 	.word	0x007c007c
 80068e8:	007c007c 	.word	0x007c007c
 80068ec:	01450157 	.word	0x01450157
 80068f0:	007c007c 	.word	0x007c007c
 80068f4:	007c00ad 	.word	0x007c00ad
 80068f8:	007c00ab 	.word	0x007c00ab
 80068fc:	0097007c 	.word	0x0097007c
 8006900:	2b2a      	cmp	r3, #42	; 0x2a
 8006902:	f000 8163 	beq.w	8006bcc <rt_vsnprintf+0x434>
 8006906:	2b2e      	cmp	r3, #46	; 0x2e
 8006908:	4614      	mov	r4, r2
 800690a:	f04f 31ff 	mov.w	r1, #4294967295
 800690e:	d194      	bne.n	800683a <rt_vsnprintf+0xa2>
 8006910:	7862      	ldrb	r2, [r4, #1]
 8006912:	f104 0c01 	add.w	ip, r4, #1
 8006916:	f1a2 0630 	sub.w	r6, r2, #48	; 0x30
 800691a:	2e09      	cmp	r6, #9
 800691c:	4613      	mov	r3, r2
 800691e:	d82c      	bhi.n	800697a <rt_vsnprintf+0x1e2>
 8006920:	2600      	movs	r6, #0
 8006922:	eb06 0486 	add.w	r4, r6, r6, lsl #2
 8006926:	eb02 0644 	add.w	r6, r2, r4, lsl #1
 800692a:	f81c 2f01 	ldrb.w	r2, [ip, #1]!
 800692e:	3e30      	subs	r6, #48	; 0x30
 8006930:	f1a2 0430 	sub.w	r4, r2, #48	; 0x30
 8006934:	2c09      	cmp	r4, #9
 8006936:	4613      	mov	r3, r2
 8006938:	d9f3      	bls.n	8006922 <rt_vsnprintf+0x18a>
 800693a:	2e00      	cmp	r6, #0
 800693c:	4664      	mov	r4, ip
 800693e:	f6bf af7e 	bge.w	800683e <rt_vsnprintf+0xa6>
 8006942:	2600      	movs	r6, #0
 8006944:	e77b      	b.n	800683e <rt_vsnprintf+0xa6>
 8006946:	7862      	ldrb	r2, [r4, #1]
 8006948:	469c      	mov	ip, r3
 800694a:	3401      	adds	r4, #1
 800694c:	4613      	mov	r3, r2
 800694e:	e77d      	b.n	800684c <rt_vsnprintf+0xb4>
 8006950:	4287      	cmp	r7, r0
 8006952:	bf24      	itt	cs
 8006954:	f880 8000 	strbcs.w	r8, [r0]
 8006958:	7823      	ldrbcs	r3, [r4, #0]
 800695a:	1c42      	adds	r2, r0, #1
 800695c:	2b00      	cmp	r3, #0
 800695e:	f040 8150 	bne.w	8006c02 <rt_vsnprintf+0x46a>
 8006962:	4610      	mov	r0, r2
 8006964:	ebc9 0200 	rsb	r2, r9, r0
 8006968:	2300      	movs	r3, #0
 800696a:	4287      	cmp	r7, r0
 800696c:	bf2c      	ite	cs
 800696e:	7003      	strbcs	r3, [r0, #0]
 8006970:	703b      	strbcc	r3, [r7, #0]
 8006972:	4610      	mov	r0, r2
 8006974:	b005      	add	sp, #20
 8006976:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800697a:	2a2a      	cmp	r2, #42	; 0x2a
 800697c:	f000 8150 	beq.w	8006c20 <rt_vsnprintf+0x488>
 8006980:	4664      	mov	r4, ip
 8006982:	2600      	movs	r6, #0
 8006984:	e75b      	b.n	800683e <rt_vsnprintf+0xa6>
 8006986:	2310      	movs	r3, #16
 8006988:	f1bc 0f6c 	cmp.w	ip, #108	; 0x6c
 800698c:	d003      	beq.n	8006996 <rt_vsnprintf+0x1fe>
 800698e:	f1bc 0f68 	cmp.w	ip, #104	; 0x68
 8006992:	f000 8128 	beq.w	8006be6 <rt_vsnprintf+0x44e>
 8006996:	f8da 2000 	ldr.w	r2, [sl]
 800699a:	f10a 0a04 	add.w	sl, sl, #4
 800699e:	e88d 0042 	stmia.w	sp, {r1, r6}
 80069a2:	9502      	str	r5, [sp, #8]
 80069a4:	4639      	mov	r1, r7
 80069a6:	f7ff fcb7 	bl	8006318 <print_number>
 80069aa:	7862      	ldrb	r2, [r4, #1]
 80069ac:	e70d      	b.n	80067ca <rt_vsnprintf+0x32>
 80069ae:	230a      	movs	r3, #10
 80069b0:	e7ea      	b.n	8006988 <rt_vsnprintf+0x1f0>
 80069b2:	f8da 3000 	ldr.w	r3, [sl]
 80069b6:	f249 4b34 	movw	fp, #37940	; 0x9434
 80069ba:	f6c0 0b00 	movt	fp, #2048	; 0x800
 80069be:	2b00      	cmp	r3, #0
 80069c0:	bf18      	it	ne
 80069c2:	469b      	movne	fp, r3
 80069c4:	f89b 2000 	ldrb.w	r2, [fp]
 80069c8:	f10a 0a04 	add.w	sl, sl, #4
 80069cc:	b152      	cbz	r2, 80069e4 <rt_vsnprintf+0x24c>
 80069ce:	f10b 0301 	add.w	r3, fp, #1
 80069d2:	468c      	mov	ip, r1
 80069d4:	7819      	ldrb	r1, [r3, #0]
 80069d6:	461a      	mov	r2, r3
 80069d8:	3301      	adds	r3, #1
 80069da:	2900      	cmp	r1, #0
 80069dc:	d1fa      	bne.n	80069d4 <rt_vsnprintf+0x23c>
 80069de:	4661      	mov	r1, ip
 80069e0:	ebcb 0202 	rsb	r2, fp, r2
 80069e4:	2e00      	cmp	r6, #0
 80069e6:	dd02      	ble.n	80069ee <rt_vsnprintf+0x256>
 80069e8:	42b2      	cmp	r2, r6
 80069ea:	bfa8      	it	ge
 80069ec:	4632      	movge	r2, r6
 80069ee:	f005 0310 	and.w	r3, r5, #16
 80069f2:	b2db      	uxtb	r3, r3
 80069f4:	bb33      	cbnz	r3, 8006a44 <rt_vsnprintf+0x2ac>
 80069f6:	1e4b      	subs	r3, r1, #1
 80069f8:	428a      	cmp	r2, r1
 80069fa:	f280 8121 	bge.w	8006c40 <rt_vsnprintf+0x4a8>
 80069fe:	1a8d      	subs	r5, r1, r2
 8006a00:	43c6      	mvns	r6, r0
 8006a02:	1945      	adds	r5, r0, r5
 8006a04:	19ab      	adds	r3, r5, r6
 8006a06:	2620      	movs	r6, #32
 8006a08:	4287      	cmp	r7, r0
 8006a0a:	f003 0301 	and.w	r3, r3, #1
 8006a0e:	d300      	bcc.n	8006a12 <rt_vsnprintf+0x27a>
 8006a10:	7006      	strb	r6, [r0, #0]
 8006a12:	3001      	adds	r0, #1
 8006a14:	42a8      	cmp	r0, r5
 8006a16:	d010      	beq.n	8006a3a <rt_vsnprintf+0x2a2>
 8006a18:	b12b      	cbz	r3, 8006a26 <rt_vsnprintf+0x28e>
 8006a1a:	4287      	cmp	r7, r0
 8006a1c:	bf28      	it	cs
 8006a1e:	7006      	strbcs	r6, [r0, #0]
 8006a20:	3001      	adds	r0, #1
 8006a22:	42a8      	cmp	r0, r5
 8006a24:	d009      	beq.n	8006a3a <rt_vsnprintf+0x2a2>
 8006a26:	1c43      	adds	r3, r0, #1
 8006a28:	4287      	cmp	r7, r0
 8006a2a:	bf28      	it	cs
 8006a2c:	7006      	strbcs	r6, [r0, #0]
 8006a2e:	429f      	cmp	r7, r3
 8006a30:	d300      	bcc.n	8006a34 <rt_vsnprintf+0x29c>
 8006a32:	7046      	strb	r6, [r0, #1]
 8006a34:	1c58      	adds	r0, r3, #1
 8006a36:	42a8      	cmp	r0, r5
 8006a38:	d1f5      	bne.n	8006a26 <rt_vsnprintf+0x28e>
 8006a3a:	f1c1 0301 	rsb	r3, r1, #1
 8006a3e:	189b      	adds	r3, r3, r2
 8006a40:	3902      	subs	r1, #2
 8006a42:	18c9      	adds	r1, r1, r3
 8006a44:	2a00      	cmp	r2, #0
 8006a46:	dd29      	ble.n	8006a9c <rt_vsnprintf+0x304>
 8006a48:	43c5      	mvns	r5, r0
 8006a4a:	eb00 0c02 	add.w	ip, r0, r2
 8006a4e:	4465      	add	r5, ip
 8006a50:	4287      	cmp	r7, r0
 8006a52:	f10b 0301 	add.w	r3, fp, #1
 8006a56:	f005 0501 	and.w	r5, r5, #1
 8006a5a:	f080 80dd 	bcs.w	8006c18 <rt_vsnprintf+0x480>
 8006a5e:	3001      	adds	r0, #1
 8006a60:	3301      	adds	r3, #1
 8006a62:	4560      	cmp	r0, ip
 8006a64:	d01a      	beq.n	8006a9c <rt_vsnprintf+0x304>
 8006a66:	b145      	cbz	r5, 8006a7a <rt_vsnprintf+0x2e2>
 8006a68:	4287      	cmp	r7, r0
 8006a6a:	bf24      	itt	cs
 8006a6c:	f813 5c01 	ldrbcs.w	r5, [r3, #-1]
 8006a70:	7005      	strbcs	r5, [r0, #0]
 8006a72:	3001      	adds	r0, #1
 8006a74:	3301      	adds	r3, #1
 8006a76:	4560      	cmp	r0, ip
 8006a78:	d010      	beq.n	8006a9c <rt_vsnprintf+0x304>
 8006a7a:	1c45      	adds	r5, r0, #1
 8006a7c:	4287      	cmp	r7, r0
 8006a7e:	f103 0601 	add.w	r6, r3, #1
 8006a82:	bf24      	itt	cs
 8006a84:	f813 3c01 	ldrbcs.w	r3, [r3, #-1]
 8006a88:	7003      	strbcs	r3, [r0, #0]
 8006a8a:	42af      	cmp	r7, r5
 8006a8c:	d302      	bcc.n	8006a94 <rt_vsnprintf+0x2fc>
 8006a8e:	f816 3c01 	ldrb.w	r3, [r6, #-1]
 8006a92:	7043      	strb	r3, [r0, #1]
 8006a94:	1c68      	adds	r0, r5, #1
 8006a96:	1c73      	adds	r3, r6, #1
 8006a98:	4560      	cmp	r0, ip
 8006a9a:	d1ee      	bne.n	8006a7a <rt_vsnprintf+0x2e2>
 8006a9c:	428a      	cmp	r2, r1
 8006a9e:	da84      	bge.n	80069aa <rt_vsnprintf+0x212>
 8006aa0:	1a8a      	subs	r2, r1, r2
 8006aa2:	1882      	adds	r2, r0, r2
 8006aa4:	43c1      	mvns	r1, r0
 8006aa6:	1853      	adds	r3, r2, r1
 8006aa8:	2120      	movs	r1, #32
 8006aaa:	4287      	cmp	r7, r0
 8006aac:	f003 0301 	and.w	r3, r3, #1
 8006ab0:	f080 80ad 	bcs.w	8006c0e <rt_vsnprintf+0x476>
 8006ab4:	3001      	adds	r0, #1
 8006ab6:	4290      	cmp	r0, r2
 8006ab8:	f43f af77 	beq.w	80069aa <rt_vsnprintf+0x212>
 8006abc:	b133      	cbz	r3, 8006acc <rt_vsnprintf+0x334>
 8006abe:	4287      	cmp	r7, r0
 8006ac0:	bf28      	it	cs
 8006ac2:	7001      	strbcs	r1, [r0, #0]
 8006ac4:	3001      	adds	r0, #1
 8006ac6:	4290      	cmp	r0, r2
 8006ac8:	f43f af6f 	beq.w	80069aa <rt_vsnprintf+0x212>
 8006acc:	1c43      	adds	r3, r0, #1
 8006ace:	4287      	cmp	r7, r0
 8006ad0:	bf28      	it	cs
 8006ad2:	7001      	strbcs	r1, [r0, #0]
 8006ad4:	429f      	cmp	r7, r3
 8006ad6:	d300      	bcc.n	8006ada <rt_vsnprintf+0x342>
 8006ad8:	7041      	strb	r1, [r0, #1]
 8006ada:	1c58      	adds	r0, r3, #1
 8006adc:	4290      	cmp	r0, r2
 8006ade:	d1f5      	bne.n	8006acc <rt_vsnprintf+0x334>
 8006ae0:	e763      	b.n	80069aa <rt_vsnprintf+0x212>
 8006ae2:	1c4a      	adds	r2, r1, #1
 8006ae4:	bf04      	itt	eq
 8006ae6:	f045 0501 	orreq.w	r5, r5, #1
 8006aea:	2108      	moveq	r1, #8
 8006aec:	f8da 2000 	ldr.w	r2, [sl]
 8006af0:	2310      	movs	r3, #16
 8006af2:	e88d 0042 	stmia.w	sp, {r1, r6}
 8006af6:	9502      	str	r5, [sp, #8]
 8006af8:	4639      	mov	r1, r7
 8006afa:	f7ff fc0d 	bl	8006318 <print_number>
 8006afe:	f10a 0a04 	add.w	sl, sl, #4
 8006b02:	7862      	ldrb	r2, [r4, #1]
 8006b04:	e661      	b.n	80067ca <rt_vsnprintf+0x32>
 8006b06:	2308      	movs	r3, #8
 8006b08:	e73e      	b.n	8006988 <rt_vsnprintf+0x1f0>
 8006b0a:	f045 0502 	orr.w	r5, r5, #2
 8006b0e:	230a      	movs	r3, #10
 8006b10:	e73a      	b.n	8006988 <rt_vsnprintf+0x1f0>
 8006b12:	f005 0610 	and.w	r6, r5, #16
 8006b16:	b2f5      	uxtb	r5, r6
 8006b18:	bb05      	cbnz	r5, 8006b5c <rt_vsnprintf+0x3c4>
 8006b1a:	3901      	subs	r1, #1
 8006b1c:	2900      	cmp	r1, #0
 8006b1e:	dd1d      	ble.n	8006b5c <rt_vsnprintf+0x3c4>
 8006b20:	1842      	adds	r2, r0, r1
 8006b22:	43c1      	mvns	r1, r0
 8006b24:	1853      	adds	r3, r2, r1
 8006b26:	2620      	movs	r6, #32
 8006b28:	4287      	cmp	r7, r0
 8006b2a:	f003 0501 	and.w	r5, r3, #1
 8006b2e:	d300      	bcc.n	8006b32 <rt_vsnprintf+0x39a>
 8006b30:	7006      	strb	r6, [r0, #0]
 8006b32:	3001      	adds	r0, #1
 8006b34:	4290      	cmp	r0, r2
 8006b36:	d010      	beq.n	8006b5a <rt_vsnprintf+0x3c2>
 8006b38:	b12d      	cbz	r5, 8006b46 <rt_vsnprintf+0x3ae>
 8006b3a:	4287      	cmp	r7, r0
 8006b3c:	bf28      	it	cs
 8006b3e:	7006      	strbcs	r6, [r0, #0]
 8006b40:	3001      	adds	r0, #1
 8006b42:	4290      	cmp	r0, r2
 8006b44:	d009      	beq.n	8006b5a <rt_vsnprintf+0x3c2>
 8006b46:	1c41      	adds	r1, r0, #1
 8006b48:	4287      	cmp	r7, r0
 8006b4a:	bf28      	it	cs
 8006b4c:	7006      	strbcs	r6, [r0, #0]
 8006b4e:	428f      	cmp	r7, r1
 8006b50:	d300      	bcc.n	8006b54 <rt_vsnprintf+0x3bc>
 8006b52:	7046      	strb	r6, [r0, #1]
 8006b54:	1c48      	adds	r0, r1, #1
 8006b56:	4290      	cmp	r0, r2
 8006b58:	d1f5      	bne.n	8006b46 <rt_vsnprintf+0x3ae>
 8006b5a:	2100      	movs	r1, #0
 8006b5c:	f8da 2000 	ldr.w	r2, [sl]
 8006b60:	42b8      	cmp	r0, r7
 8006b62:	bf98      	it	ls
 8006b64:	7002      	strbls	r2, [r0, #0]
 8006b66:	1c45      	adds	r5, r0, #1
 8006b68:	2901      	cmp	r1, #1
 8006b6a:	f10a 0604 	add.w	r6, sl, #4
 8006b6e:	dd63      	ble.n	8006c38 <rt_vsnprintf+0x4a0>
 8006b70:	43eb      	mvns	r3, r5
 8006b72:	1840      	adds	r0, r0, r1
 8006b74:	18c2      	adds	r2, r0, r3
 8006b76:	42af      	cmp	r7, r5
 8006b78:	f04f 0a20 	mov.w	sl, #32
 8006b7c:	f002 0201 	and.w	r2, r2, #1
 8006b80:	d247      	bcs.n	8006c12 <rt_vsnprintf+0x47a>
 8006b82:	1c6b      	adds	r3, r5, #1
 8006b84:	4283      	cmp	r3, r0
 8006b86:	d013      	beq.n	8006bb0 <rt_vsnprintf+0x418>
 8006b88:	b132      	cbz	r2, 8006b98 <rt_vsnprintf+0x400>
 8006b8a:	429f      	cmp	r7, r3
 8006b8c:	bf28      	it	cs
 8006b8e:	f885 a001 	strbcs.w	sl, [r5, #1]
 8006b92:	3301      	adds	r3, #1
 8006b94:	4283      	cmp	r3, r0
 8006b96:	d00b      	beq.n	8006bb0 <rt_vsnprintf+0x418>
 8006b98:	1c5a      	adds	r2, r3, #1
 8006b9a:	429f      	cmp	r7, r3
 8006b9c:	bf28      	it	cs
 8006b9e:	f883 a000 	strbcs.w	sl, [r3]
 8006ba2:	4297      	cmp	r7, r2
 8006ba4:	d301      	bcc.n	8006baa <rt_vsnprintf+0x412>
 8006ba6:	f883 a001 	strb.w	sl, [r3, #1]
 8006baa:	1c53      	adds	r3, r2, #1
 8006bac:	4283      	cmp	r3, r0
 8006bae:	d1f3      	bne.n	8006b98 <rt_vsnprintf+0x400>
 8006bb0:	3901      	subs	r1, #1
 8006bb2:	1868      	adds	r0, r5, r1
 8006bb4:	7862      	ldrb	r2, [r4, #1]
 8006bb6:	46b2      	mov	sl, r6
 8006bb8:	e607      	b.n	80067ca <rt_vsnprintf+0x32>
 8006bba:	f045 0540 	orr.w	r5, r5, #64	; 0x40
 8006bbe:	2310      	movs	r3, #16
 8006bc0:	e6e2      	b.n	8006988 <rt_vsnprintf+0x1f0>
 8006bc2:	4287      	cmp	r7, r0
 8006bc4:	bf28      	it	cs
 8006bc6:	f880 8000 	strbcs.w	r8, [r0]
 8006bca:	e5fc      	b.n	80067c6 <rt_vsnprintf+0x2e>
 8006bcc:	f8da 1000 	ldr.w	r1, [sl]
 8006bd0:	1ca2      	adds	r2, r4, #2
 8006bd2:	2900      	cmp	r1, #0
 8006bd4:	f10a 0a04 	add.w	sl, sl, #4
 8006bd8:	78a3      	ldrb	r3, [r4, #2]
 8006bda:	f6bf ae2b 	bge.w	8006834 <rt_vsnprintf+0x9c>
 8006bde:	4249      	negs	r1, r1
 8006be0:	f045 0510 	orr.w	r5, r5, #16
 8006be4:	e626      	b.n	8006834 <rt_vsnprintf+0x9c>
 8006be6:	f005 0b02 	and.w	fp, r5, #2
 8006bea:	fa5f fc8b 	uxtb.w	ip, fp
 8006bee:	f10a 0e04 	add.w	lr, sl, #4
 8006bf2:	f8ba 2000 	ldrh.w	r2, [sl]
 8006bf6:	f1bc 0f00 	cmp.w	ip, #0
 8006bfa:	d000      	beq.n	8006bfe <rt_vsnprintf+0x466>
 8006bfc:	b212      	sxth	r2, r2
 8006bfe:	46f2      	mov	sl, lr
 8006c00:	e6cd      	b.n	800699e <rt_vsnprintf+0x206>
 8006c02:	42ba      	cmp	r2, r7
 8006c04:	bf98      	it	ls
 8006c06:	7043      	strbls	r3, [r0, #1]
 8006c08:	7862      	ldrb	r2, [r4, #1]
 8006c0a:	3002      	adds	r0, #2
 8006c0c:	e5dd      	b.n	80067ca <rt_vsnprintf+0x32>
 8006c0e:	7001      	strb	r1, [r0, #0]
 8006c10:	e750      	b.n	8006ab4 <rt_vsnprintf+0x31c>
 8006c12:	f885 a000 	strb.w	sl, [r5]
 8006c16:	e7b4      	b.n	8006b82 <rt_vsnprintf+0x3ea>
 8006c18:	f813 6c01 	ldrb.w	r6, [r3, #-1]
 8006c1c:	7006      	strb	r6, [r0, #0]
 8006c1e:	e71e      	b.n	8006a5e <rt_vsnprintf+0x2c6>
 8006c20:	f8da 6000 	ldr.w	r6, [sl]
 8006c24:	f104 0c02 	add.w	ip, r4, #2
 8006c28:	2e00      	cmp	r6, #0
 8006c2a:	78a3      	ldrb	r3, [r4, #2]
 8006c2c:	f10a 0a04 	add.w	sl, sl, #4
 8006c30:	4664      	mov	r4, ip
 8006c32:	f6bf ae04 	bge.w	800683e <rt_vsnprintf+0xa6>
 8006c36:	e684      	b.n	8006942 <rt_vsnprintf+0x1aa>
 8006c38:	7862      	ldrb	r2, [r4, #1]
 8006c3a:	46b2      	mov	sl, r6
 8006c3c:	4628      	mov	r0, r5
 8006c3e:	e5c4      	b.n	80067ca <rt_vsnprintf+0x32>
 8006c40:	4619      	mov	r1, r3
 8006c42:	e6ff      	b.n	8006a44 <rt_vsnprintf+0x2ac>

08006c44 <rt_vsprintf>:
 8006c44:	b410      	push	{r4}
 8006c46:	460c      	mov	r4, r1
 8006c48:	4613      	mov	r3, r2
 8006c4a:	f04f 31ff 	mov.w	r1, #4294967295
 8006c4e:	4622      	mov	r2, r4
 8006c50:	bc10      	pop	{r4}
 8006c52:	f7ff bda1 	b.w	8006798 <rt_vsnprintf>
 8006c56:	bf00      	nop

08006c58 <rt_sprintf>:
 8006c58:	b40e      	push	{r1, r2, r3}
 8006c5a:	b500      	push	{lr}
 8006c5c:	b082      	sub	sp, #8
 8006c5e:	ab03      	add	r3, sp, #12
 8006c60:	f853 1b04 	ldr.w	r1, [r3], #4
 8006c64:	461a      	mov	r2, r3
 8006c66:	9301      	str	r3, [sp, #4]
 8006c68:	f7ff ffec 	bl	8006c44 <rt_vsprintf>
 8006c6c:	b002      	add	sp, #8
 8006c6e:	f85d eb04 	ldr.w	lr, [sp], #4
 8006c72:	b003      	add	sp, #12
 8006c74:	4770      	bx	lr
 8006c76:	bf00      	nop

08006c78 <rt_console_set_device>:
 8006c78:	b570      	push	{r4, r5, r6, lr}
 8006c7a:	4c08      	ldr	r4, [pc, #32]	; (8006c9c <rt_console_set_device+0x24>)
 8006c7c:	6826      	ldr	r6, [r4, #0]
 8006c7e:	f7ff f841 	bl	8005d04 <rt_device_find>
 8006c82:	4605      	mov	r5, r0
 8006c84:	b140      	cbz	r0, 8006c98 <rt_console_set_device+0x20>
 8006c86:	6820      	ldr	r0, [r4, #0]
 8006c88:	b108      	cbz	r0, 8006c8e <rt_console_set_device+0x16>
 8006c8a:	f7ff f8e1 	bl	8005e50 <rt_device_close>
 8006c8e:	4628      	mov	r0, r5
 8006c90:	2103      	movs	r1, #3
 8006c92:	6025      	str	r5, [r4, #0]
 8006c94:	f7ff f87a 	bl	8005d8c <rt_device_open>
 8006c98:	4630      	mov	r0, r6
 8006c9a:	bd70      	pop	{r4, r5, r6, pc}
 8006c9c:	20000924 	.word	0x20000924

08006ca0 <rt_hw_console_output>:
 8006ca0:	4770      	bx	lr
 8006ca2:	bf00      	nop

08006ca4 <rt_kprintf>:
 8006ca4:	b40f      	push	{r0, r1, r2, r3}
 8006ca6:	b530      	push	{r4, r5, lr}
 8006ca8:	b083      	sub	sp, #12
 8006caa:	ac06      	add	r4, sp, #24
 8006cac:	f854 2b04 	ldr.w	r2, [r4], #4
 8006cb0:	4810      	ldr	r0, [pc, #64]	; (8006cf4 <rt_kprintf+0x50>)
 8006cb2:	4623      	mov	r3, r4
 8006cb4:	217f      	movs	r1, #127	; 0x7f
 8006cb6:	9401      	str	r4, [sp, #4]
 8006cb8:	f7ff fd6e 	bl	8006798 <rt_vsnprintf>
 8006cbc:	4c0e      	ldr	r4, [pc, #56]	; (8006cf8 <rt_kprintf+0x54>)
 8006cbe:	287f      	cmp	r0, #127	; 0x7f
 8006cc0:	bf34      	ite	cc
 8006cc2:	4603      	movcc	r3, r0
 8006cc4:	237f      	movcs	r3, #127	; 0x7f
 8006cc6:	6822      	ldr	r2, [r4, #0]
 8006cc8:	b17a      	cbz	r2, 8006cea <rt_kprintf+0x46>
 8006cca:	8ad5      	ldrh	r5, [r2, #22]
 8006ccc:	4610      	mov	r0, r2
 8006cce:	f045 0140 	orr.w	r1, r5, #64	; 0x40
 8006cd2:	82d1      	strh	r1, [r2, #22]
 8006cd4:	2100      	movs	r1, #0
 8006cd6:	4a07      	ldr	r2, [pc, #28]	; (8006cf4 <rt_kprintf+0x50>)
 8006cd8:	f7ff f8ec 	bl	8005eb4 <rt_device_write>
 8006cdc:	6823      	ldr	r3, [r4, #0]
 8006cde:	82dd      	strh	r5, [r3, #22]
 8006ce0:	b003      	add	sp, #12
 8006ce2:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 8006ce6:	b004      	add	sp, #16
 8006ce8:	4770      	bx	lr
 8006cea:	4802      	ldr	r0, [pc, #8]	; (8006cf4 <rt_kprintf+0x50>)
 8006cec:	f7ff ffd8 	bl	8006ca0 <rt_hw_console_output>
 8006cf0:	e7f6      	b.n	8006ce0 <rt_kprintf+0x3c>
 8006cf2:	bf00      	nop
 8006cf4:	200008a4 	.word	0x200008a4
 8006cf8:	20000924 	.word	0x20000924

08006cfc <rt_show_version>:
 8006cfc:	b500      	push	{lr}
 8006cfe:	f249 403c 	movw	r0, #37948	; 0x943c
 8006d02:	b083      	sub	sp, #12
 8006d04:	f6c0 0000 	movt	r0, #2048	; 0x800
 8006d08:	f7ff ffcc 	bl	8006ca4 <rt_kprintf>
 8006d0c:	f249 4048 	movw	r0, #37960	; 0x9448
 8006d10:	f6c0 0000 	movt	r0, #2048	; 0x800
 8006d14:	f7ff ffc6 	bl	8006ca4 <rt_kprintf>
 8006d18:	f249 438c 	movw	r3, #38028	; 0x948c
 8006d1c:	f6c0 0300 	movt	r3, #2048	; 0x800
 8006d20:	f249 406c 	movw	r0, #37996	; 0x946c
 8006d24:	9300      	str	r3, [sp, #0]
 8006d26:	f6c0 0000 	movt	r0, #2048	; 0x800
 8006d2a:	2101      	movs	r1, #1
 8006d2c:	2202      	movs	r2, #2
 8006d2e:	2300      	movs	r3, #0
 8006d30:	f7ff ffb8 	bl	8006ca4 <rt_kprintf>
 8006d34:	f249 4098 	movw	r0, #38040	; 0x9498
 8006d38:	f6c0 0000 	movt	r0, #2048	; 0x800
 8006d3c:	b003      	add	sp, #12
 8006d3e:	f85d eb04 	ldr.w	lr, [sp], #4
 8006d42:	f7ff bfaf 	b.w	8006ca4 <rt_kprintf>
 8006d46:	bf00      	nop

08006d48 <__rt_ffs>:
 8006d48:	b160      	cbz	r0, 8006d64 <__rt_ffs+0x1c>
 8006d4a:	f010 03ff 	ands.w	r3, r0, #255	; 0xff
 8006d4e:	d10a      	bne.n	8006d66 <__rt_ffs+0x1e>
 8006d50:	f410 417f 	ands.w	r1, r0, #65280	; 0xff00
 8006d54:	d110      	bne.n	8006d78 <__rt_ffs+0x30>
 8006d56:	f410 027f 	ands.w	r2, r0, #16711680	; 0xff0000
 8006d5a:	d108      	bne.n	8006d6e <__rt_ffs+0x26>
 8006d5c:	4b09      	ldr	r3, [pc, #36]	; (8006d84 <__rt_ffs+0x3c>)
 8006d5e:	0e00      	lsrs	r0, r0, #24
 8006d60:	5c18      	ldrb	r0, [r3, r0]
 8006d62:	3019      	adds	r0, #25
 8006d64:	4770      	bx	lr
 8006d66:	4907      	ldr	r1, [pc, #28]	; (8006d84 <__rt_ffs+0x3c>)
 8006d68:	5cca      	ldrb	r2, [r1, r3]
 8006d6a:	1c50      	adds	r0, r2, #1
 8006d6c:	4770      	bx	lr
 8006d6e:	1411      	asrs	r1, r2, #16
 8006d70:	4a04      	ldr	r2, [pc, #16]	; (8006d84 <__rt_ffs+0x3c>)
 8006d72:	5c50      	ldrb	r0, [r2, r1]
 8006d74:	3011      	adds	r0, #17
 8006d76:	4770      	bx	lr
 8006d78:	4b02      	ldr	r3, [pc, #8]	; (8006d84 <__rt_ffs+0x3c>)
 8006d7a:	1208      	asrs	r0, r1, #8
 8006d7c:	5c18      	ldrb	r0, [r3, r0]
 8006d7e:	3009      	adds	r0, #9
 8006d80:	4770      	bx	lr
 8006d82:	bf00      	nop
 8006d84:	080094c4 	.word	0x080094c4

08006d88 <plug_holes>:
 8006d88:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006d8a:	4d30      	ldr	r5, [pc, #192]	; (8006e4c <plug_holes+0xc4>)
 8006d8c:	b083      	sub	sp, #12
 8006d8e:	682b      	ldr	r3, [r5, #0]
 8006d90:	4604      	mov	r4, r0
 8006d92:	4283      	cmp	r3, r0
 8006d94:	d84b      	bhi.n	8006e2e <plug_holes+0xa6>
 8006d96:	4e2e      	ldr	r6, [pc, #184]	; (8006e50 <plug_holes+0xc8>)
 8006d98:	6831      	ldr	r1, [r6, #0]
 8006d9a:	428c      	cmp	r4, r1
 8006d9c:	d239      	bcs.n	8006e12 <plug_holes+0x8a>
 8006d9e:	8863      	ldrh	r3, [r4, #2]
 8006da0:	2b00      	cmp	r3, #0
 8006da2:	d128      	bne.n	8006df6 <plug_holes+0x6e>
 8006da4:	682b      	ldr	r3, [r5, #0]
 8006da6:	6861      	ldr	r1, [r4, #4]
 8006da8:	185a      	adds	r2, r3, r1
 8006daa:	4294      	cmp	r4, r2
 8006dac:	d001      	beq.n	8006db2 <plug_holes+0x2a>
 8006dae:	8850      	ldrh	r0, [r2, #2]
 8006db0:	b190      	cbz	r0, 8006dd8 <plug_holes+0x50>
 8006db2:	68a0      	ldr	r0, [r4, #8]
 8006db4:	181a      	adds	r2, r3, r0
 8006db6:	42a2      	cmp	r2, r4
 8006db8:	d00c      	beq.n	8006dd4 <plug_holes+0x4c>
 8006dba:	8851      	ldrh	r1, [r2, #2]
 8006dbc:	b951      	cbnz	r1, 8006dd4 <plug_holes+0x4c>
 8006dbe:	4925      	ldr	r1, [pc, #148]	; (8006e54 <plug_holes+0xcc>)
 8006dc0:	6808      	ldr	r0, [r1, #0]
 8006dc2:	42a0      	cmp	r0, r4
 8006dc4:	bf08      	it	eq
 8006dc6:	600a      	streq	r2, [r1, #0]
 8006dc8:	6861      	ldr	r1, [r4, #4]
 8006dca:	1ad0      	subs	r0, r2, r3
 8006dcc:	6051      	str	r1, [r2, #4]
 8006dce:	6862      	ldr	r2, [r4, #4]
 8006dd0:	189b      	adds	r3, r3, r2
 8006dd2:	6098      	str	r0, [r3, #8]
 8006dd4:	b003      	add	sp, #12
 8006dd6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006dd8:	6831      	ldr	r1, [r6, #0]
 8006dda:	428a      	cmp	r2, r1
 8006ddc:	d0e9      	beq.n	8006db2 <plug_holes+0x2a>
 8006dde:	491d      	ldr	r1, [pc, #116]	; (8006e54 <plug_holes+0xcc>)
 8006de0:	6808      	ldr	r0, [r1, #0]
 8006de2:	4290      	cmp	r0, r2
 8006de4:	bf08      	it	eq
 8006de6:	600c      	streq	r4, [r1, #0]
 8006de8:	6851      	ldr	r1, [r2, #4]
 8006dea:	1ae0      	subs	r0, r4, r3
 8006dec:	6061      	str	r1, [r4, #4]
 8006dee:	6852      	ldr	r2, [r2, #4]
 8006df0:	1899      	adds	r1, r3, r2
 8006df2:	6088      	str	r0, [r1, #8]
 8006df4:	e7dd      	b.n	8006db2 <plug_holes+0x2a>
 8006df6:	2700      	movs	r7, #0
 8006df8:	4817      	ldr	r0, [pc, #92]	; (8006e58 <plug_holes+0xd0>)
 8006dfa:	4918      	ldr	r1, [pc, #96]	; (8006e5c <plug_holes+0xd4>)
 8006dfc:	4a18      	ldr	r2, [pc, #96]	; (8006e60 <plug_holes+0xd8>)
 8006dfe:	238f      	movs	r3, #143	; 0x8f
 8006e00:	f88d 7007 	strb.w	r7, [sp, #7]
 8006e04:	f7ff ff4e 	bl	8006ca4 <rt_kprintf>
 8006e08:	f89d 0007 	ldrb.w	r0, [sp, #7]
 8006e0c:	2800      	cmp	r0, #0
 8006e0e:	d0fb      	beq.n	8006e08 <plug_holes+0x80>
 8006e10:	e7c8      	b.n	8006da4 <plug_holes+0x1c>
 8006e12:	2700      	movs	r7, #0
 8006e14:	4810      	ldr	r0, [pc, #64]	; (8006e58 <plug_holes+0xd0>)
 8006e16:	4913      	ldr	r1, [pc, #76]	; (8006e64 <plug_holes+0xdc>)
 8006e18:	4a11      	ldr	r2, [pc, #68]	; (8006e60 <plug_holes+0xd8>)
 8006e1a:	238e      	movs	r3, #142	; 0x8e
 8006e1c:	f88d 7006 	strb.w	r7, [sp, #6]
 8006e20:	f7ff ff40 	bl	8006ca4 <rt_kprintf>
 8006e24:	f89d 2006 	ldrb.w	r2, [sp, #6]
 8006e28:	2a00      	cmp	r2, #0
 8006e2a:	d0fb      	beq.n	8006e24 <plug_holes+0x9c>
 8006e2c:	e7b7      	b.n	8006d9e <plug_holes+0x16>
 8006e2e:	2600      	movs	r6, #0
 8006e30:	4809      	ldr	r0, [pc, #36]	; (8006e58 <plug_holes+0xd0>)
 8006e32:	490d      	ldr	r1, [pc, #52]	; (8006e68 <plug_holes+0xe0>)
 8006e34:	4a0a      	ldr	r2, [pc, #40]	; (8006e60 <plug_holes+0xd8>)
 8006e36:	238d      	movs	r3, #141	; 0x8d
 8006e38:	f88d 6005 	strb.w	r6, [sp, #5]
 8006e3c:	f7ff ff32 	bl	8006ca4 <rt_kprintf>
 8006e40:	f89d 0005 	ldrb.w	r0, [sp, #5]
 8006e44:	2800      	cmp	r0, #0
 8006e46:	d0fb      	beq.n	8006e40 <plug_holes+0xb8>
 8006e48:	e7a5      	b.n	8006d96 <plug_holes+0xe>
 8006e4a:	bf00      	nop
 8006e4c:	20000960 	.word	0x20000960
 8006e50:	20000938 	.word	0x20000938
 8006e54:	20000928 	.word	0x20000928
 8006e58:	08008b10 	.word	0x08008b10
 8006e5c:	08009638 	.word	0x08009638
 8006e60:	08009804 	.word	0x08009804
 8006e64:	0800960c 	.word	0x0800960c
 8006e68:	080095ec 	.word	0x080095ec

08006e6c <rt_system_heap_init>:
 8006e6c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006e6e:	b083      	sub	sp, #12
 8006e70:	460d      	mov	r5, r1
 8006e72:	4607      	mov	r7, r0
 8006e74:	f021 0403 	bic.w	r4, r1, #3
 8006e78:	f7f9 f948 	bl	800010c <rt_hw_interrupt_disable>
 8006e7c:	4606      	mov	r6, r0
 8006e7e:	f7ff fa45 	bl	800630c <rt_interrupt_get_nest>
 8006e82:	b990      	cbnz	r0, 8006eaa <rt_system_heap_init+0x3e>
 8006e84:	4630      	mov	r0, r6
 8006e86:	f7f9 f945 	bl	8000114 <rt_hw_interrupt_enable>
 8006e8a:	2c18      	cmp	r4, #24
 8006e8c:	d906      	bls.n	8006e9c <rt_system_heap_init+0x30>
 8006e8e:	1cfe      	adds	r6, r7, #3
 8006e90:	f026 0603 	bic.w	r6, r6, #3
 8006e94:	f1a4 0018 	sub.w	r0, r4, #24
 8006e98:	4286      	cmp	r6, r0
 8006e9a:	d919      	bls.n	8006ed0 <rt_system_heap_init+0x64>
 8006e9c:	481d      	ldr	r0, [pc, #116]	; (8006f14 <rt_system_heap_init+0xa8>)
 8006e9e:	4639      	mov	r1, r7
 8006ea0:	462a      	mov	r2, r5
 8006ea2:	f7ff feff 	bl	8006ca4 <rt_kprintf>
 8006ea6:	b003      	add	sp, #12
 8006ea8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006eaa:	481b      	ldr	r0, [pc, #108]	; (8006f18 <rt_system_heap_init+0xac>)
 8006eac:	491b      	ldr	r1, [pc, #108]	; (8006f1c <rt_system_heap_init+0xb0>)
 8006eae:	f7ff fef9 	bl	8006ca4 <rt_kprintf>
 8006eb2:	f04f 0e00 	mov.w	lr, #0
 8006eb6:	481a      	ldr	r0, [pc, #104]	; (8006f20 <rt_system_heap_init+0xb4>)
 8006eb8:	491a      	ldr	r1, [pc, #104]	; (8006f24 <rt_system_heap_init+0xb8>)
 8006eba:	4a18      	ldr	r2, [pc, #96]	; (8006f1c <rt_system_heap_init+0xb0>)
 8006ebc:	23be      	movs	r3, #190	; 0xbe
 8006ebe:	f88d e007 	strb.w	lr, [sp, #7]
 8006ec2:	f7ff feef 	bl	8006ca4 <rt_kprintf>
 8006ec6:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8006eca:	2b00      	cmp	r3, #0
 8006ecc:	d0fb      	beq.n	8006ec6 <rt_system_heap_init+0x5a>
 8006ece:	e7d9      	b.n	8006e84 <rt_system_heap_init+0x18>
 8006ed0:	1ba4      	subs	r4, r4, r6
 8006ed2:	f1a4 010c 	sub.w	r1, r4, #12
 8006ed6:	f1a4 0c18 	sub.w	ip, r4, #24
 8006eda:	4c13      	ldr	r4, [pc, #76]	; (8006f28 <rt_system_heap_init+0xbc>)
 8006edc:	1875      	adds	r5, r6, r1
 8006ede:	2300      	movs	r3, #0
 8006ee0:	f44f 50f5 	mov.w	r0, #7840	; 0x1ea0
 8006ee4:	2201      	movs	r2, #1
 8006ee6:	f8c4 c000 	str.w	ip, [r4]
 8006eea:	4f10      	ldr	r7, [pc, #64]	; (8006f2c <rt_system_heap_init+0xc0>)
 8006eec:	4c10      	ldr	r4, [pc, #64]	; (8006f30 <rt_system_heap_init+0xc4>)
 8006eee:	8030      	strh	r0, [r6, #0]
 8006ef0:	6071      	str	r1, [r6, #4]
 8006ef2:	60b3      	str	r3, [r6, #8]
 8006ef4:	8073      	strh	r3, [r6, #2]
 8006ef6:	5270      	strh	r0, [r6, r1]
 8006ef8:	806a      	strh	r2, [r5, #2]
 8006efa:	6069      	str	r1, [r5, #4]
 8006efc:	60a9      	str	r1, [r5, #8]
 8006efe:	480d      	ldr	r0, [pc, #52]	; (8006f34 <rt_system_heap_init+0xc8>)
 8006f00:	490d      	ldr	r1, [pc, #52]	; (8006f38 <rt_system_heap_init+0xcc>)
 8006f02:	603e      	str	r6, [r7, #0]
 8006f04:	6025      	str	r5, [r4, #0]
 8006f06:	f7ff f88f 	bl	8006028 <rt_sem_init>
 8006f0a:	683a      	ldr	r2, [r7, #0]
 8006f0c:	4b0b      	ldr	r3, [pc, #44]	; (8006f3c <rt_system_heap_init+0xd0>)
 8006f0e:	601a      	str	r2, [r3, #0]
 8006f10:	e7c9      	b.n	8006ea6 <rt_system_heap_init+0x3a>
 8006f12:	bf00      	nop
 8006f14:	08009650 	.word	0x08009650
 8006f18:	08009370 	.word	0x08009370
 8006f1c:	080095c4 	.word	0x080095c4
 8006f20:	08008b10 	.word	0x08008b10
 8006f24:	0800974c 	.word	0x0800974c
 8006f28:	20000934 	.word	0x20000934
 8006f2c:	20000960 	.word	0x20000960
 8006f30:	20000938 	.word	0x20000938
 8006f34:	2000093c 	.word	0x2000093c
 8006f38:	08009648 	.word	0x08009648
 8006f3c:	20000928 	.word	0x20000928

08006f40 <rt_malloc>:
 8006f40:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006f44:	b082      	sub	sp, #8
 8006f46:	4604      	mov	r4, r0
 8006f48:	f7f9 f8e0 	bl	800010c <rt_hw_interrupt_disable>
 8006f4c:	4605      	mov	r5, r0
 8006f4e:	f7ff f9dd 	bl	800630c <rt_interrupt_get_nest>
 8006f52:	2800      	cmp	r0, #0
 8006f54:	d13f      	bne.n	8006fd6 <rt_malloc+0x96>
 8006f56:	4628      	mov	r0, r5
 8006f58:	f7f9 f8dc 	bl	8000114 <rt_hw_interrupt_enable>
 8006f5c:	2c00      	cmp	r4, #0
 8006f5e:	d050      	beq.n	8007002 <rt_malloc+0xc2>
 8006f60:	4e71      	ldr	r6, [pc, #452]	; (8007128 <rt_malloc+0x1e8>)
 8006f62:	f104 0803 	add.w	r8, r4, #3
 8006f66:	6830      	ldr	r0, [r6, #0]
 8006f68:	f028 0803 	bic.w	r8, r8, #3
 8006f6c:	4580      	cmp	r8, r0
 8006f6e:	f200 8098 	bhi.w	80070a2 <rt_malloc+0x162>
 8006f72:	f04f 31ff 	mov.w	r1, #4294967295
 8006f76:	486d      	ldr	r0, [pc, #436]	; (800712c <rt_malloc+0x1ec>)
 8006f78:	f7ff f8b6 	bl	80060e8 <rt_sem_take>
 8006f7c:	f8df 91dc 	ldr.w	r9, [pc, #476]	; 800715c <rt_malloc+0x21c>
 8006f80:	f8df c1dc 	ldr.w	ip, [pc, #476]	; 8007160 <rt_malloc+0x220>
 8006f84:	f8d9 1000 	ldr.w	r1, [r9]
 8006f88:	f8dc 5000 	ldr.w	r5, [ip]
 8006f8c:	f8d6 e000 	ldr.w	lr, [r6]
 8006f90:	f1b8 0f0b 	cmp.w	r8, #11
 8006f94:	bf98      	it	ls
 8006f96:	f04f 080c 	movls.w	r8, #12
 8006f9a:	1b4b      	subs	r3, r1, r5
 8006f9c:	ebc8 060e 	rsb	r6, r8, lr
 8006fa0:	42b3      	cmp	r3, r6
 8006fa2:	d309      	bcc.n	8006fb8 <rt_malloc+0x78>
 8006fa4:	e00f      	b.n	8006fc6 <rt_malloc+0x86>
 8006fa6:	6860      	ldr	r0, [r4, #4]
 8006fa8:	f1a0 070c 	sub.w	r7, r0, #12
 8006fac:	1aff      	subs	r7, r7, r3
 8006fae:	45b8      	cmp	r8, r7
 8006fb0:	d929      	bls.n	8007006 <rt_malloc+0xc6>
 8006fb2:	4603      	mov	r3, r0
 8006fb4:	429e      	cmp	r6, r3
 8006fb6:	d906      	bls.n	8006fc6 <rt_malloc+0x86>
 8006fb8:	18ec      	adds	r4, r5, r3
 8006fba:	8862      	ldrh	r2, [r4, #2]
 8006fbc:	2a00      	cmp	r2, #0
 8006fbe:	d0f2      	beq.n	8006fa6 <rt_malloc+0x66>
 8006fc0:	6863      	ldr	r3, [r4, #4]
 8006fc2:	429e      	cmp	r6, r3
 8006fc4:	d8f8      	bhi.n	8006fb8 <rt_malloc+0x78>
 8006fc6:	4859      	ldr	r0, [pc, #356]	; (800712c <rt_malloc+0x1ec>)
 8006fc8:	f7ff f95e 	bl	8006288 <rt_sem_release>
 8006fcc:	2500      	movs	r5, #0
 8006fce:	4628      	mov	r0, r5
 8006fd0:	b002      	add	sp, #8
 8006fd2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006fd6:	4856      	ldr	r0, [pc, #344]	; (8007130 <rt_malloc+0x1f0>)
 8006fd8:	4956      	ldr	r1, [pc, #344]	; (8007134 <rt_malloc+0x1f4>)
 8006fda:	f7ff fe63 	bl	8006ca4 <rt_kprintf>
 8006fde:	2600      	movs	r6, #0
 8006fe0:	4855      	ldr	r0, [pc, #340]	; (8007138 <rt_malloc+0x1f8>)
 8006fe2:	4956      	ldr	r1, [pc, #344]	; (800713c <rt_malloc+0x1fc>)
 8006fe4:	4a53      	ldr	r2, [pc, #332]	; (8007134 <rt_malloc+0x1f4>)
 8006fe6:	23fb      	movs	r3, #251	; 0xfb
 8006fe8:	f88d 6004 	strb.w	r6, [sp, #4]
 8006fec:	f7ff fe5a 	bl	8006ca4 <rt_kprintf>
 8006ff0:	f89d 3004 	ldrb.w	r3, [sp, #4]
 8006ff4:	2b00      	cmp	r3, #0
 8006ff6:	d0fb      	beq.n	8006ff0 <rt_malloc+0xb0>
 8006ff8:	4628      	mov	r0, r5
 8006ffa:	f7f9 f88b 	bl	8000114 <rt_hw_interrupt_enable>
 8006ffe:	2c00      	cmp	r4, #0
 8007000:	d1ae      	bne.n	8006f60 <rt_malloc+0x20>
 8007002:	4625      	mov	r5, r4
 8007004:	e7e3      	b.n	8006fce <rt_malloc+0x8e>
 8007006:	f108 0618 	add.w	r6, r8, #24
 800700a:	42be      	cmp	r6, r7
 800700c:	d929      	bls.n	8007062 <rt_malloc+0x122>
 800700e:	4e4c      	ldr	r6, [pc, #304]	; (8007140 <rt_malloc+0x200>)
 8007010:	4f4c      	ldr	r7, [pc, #304]	; (8007144 <rt_malloc+0x204>)
 8007012:	6832      	ldr	r2, [r6, #0]
 8007014:	1b2d      	subs	r5, r5, r4
 8007016:	1883      	adds	r3, r0, r2
 8007018:	6838      	ldr	r0, [r7, #0]
 800701a:	195d      	adds	r5, r3, r5
 800701c:	2201      	movs	r2, #1
 800701e:	4285      	cmp	r5, r0
 8007020:	6035      	str	r5, [r6, #0]
 8007022:	8062      	strh	r2, [r4, #2]
 8007024:	bf88      	it	hi
 8007026:	603d      	strhi	r5, [r7, #0]
 8007028:	f108 060c 	add.w	r6, r8, #12
 800702c:	f44f 50f5 	mov.w	r0, #7840	; 0x1ea0
 8007030:	42a1      	cmp	r1, r4
 8007032:	8020      	strh	r0, [r4, #0]
 8007034:	d064      	beq.n	8007100 <rt_malloc+0x1c0>
 8007036:	4d44      	ldr	r5, [pc, #272]	; (8007148 <rt_malloc+0x208>)
 8007038:	483c      	ldr	r0, [pc, #240]	; (800712c <rt_malloc+0x1ec>)
 800703a:	f7ff f925 	bl	8006288 <rt_sem_release>
 800703e:	682d      	ldr	r5, [r5, #0]
 8007040:	1936      	adds	r6, r6, r4
 8007042:	42b5      	cmp	r5, r6
 8007044:	d34d      	bcc.n	80070e2 <rt_malloc+0x1a2>
 8007046:	f104 050c 	add.w	r5, r4, #12
 800704a:	07aa      	lsls	r2, r5, #30
 800704c:	d13a      	bne.n	80070c4 <rt_malloc+0x184>
 800704e:	07a3      	lsls	r3, r4, #30
 8007050:	d129      	bne.n	80070a6 <rt_malloc+0x166>
 8007052:	4b3e      	ldr	r3, [pc, #248]	; (800714c <rt_malloc+0x20c>)
 8007054:	681a      	ldr	r2, [r3, #0]
 8007056:	2a00      	cmp	r2, #0
 8007058:	d0b9      	beq.n	8006fce <rt_malloc+0x8e>
 800705a:	4628      	mov	r0, r5
 800705c:	4641      	mov	r1, r8
 800705e:	4790      	blx	r2
 8007060:	e7b5      	b.n	8006fce <rt_malloc+0x8e>
 8007062:	f108 060c 	add.w	r6, r8, #12
 8007066:	eb03 0a06 	add.w	sl, r3, r6
 800706a:	eb05 070a 	add.w	r7, r5, sl
 800706e:	6078      	str	r0, [r7, #4]
 8007070:	f8c4 a004 	str.w	sl, [r4, #4]
 8007074:	6878      	ldr	r0, [r7, #4]
 8007076:	f10e 0e0c 	add.w	lr, lr, #12
 800707a:	60bb      	str	r3, [r7, #8]
 800707c:	2301      	movs	r3, #1
 800707e:	4570      	cmp	r0, lr
 8007080:	bf1c      	itt	ne
 8007082:	1828      	addne	r0, r5, r0
 8007084:	f8c0 a008 	strne.w	sl, [r0, #8]
 8007088:	482d      	ldr	r0, [pc, #180]	; (8007140 <rt_malloc+0x200>)
 800708a:	807a      	strh	r2, [r7, #2]
 800708c:	4d2d      	ldr	r5, [pc, #180]	; (8007144 <rt_malloc+0x204>)
 800708e:	8063      	strh	r3, [r4, #2]
 8007090:	6803      	ldr	r3, [r0, #0]
 8007092:	682a      	ldr	r2, [r5, #0]
 8007094:	330c      	adds	r3, #12
 8007096:	4443      	add	r3, r8
 8007098:	4293      	cmp	r3, r2
 800709a:	6003      	str	r3, [r0, #0]
 800709c:	d9c6      	bls.n	800702c <rt_malloc+0xec>
 800709e:	602b      	str	r3, [r5, #0]
 80070a0:	e7c4      	b.n	800702c <rt_malloc+0xec>
 80070a2:	2500      	movs	r5, #0
 80070a4:	e793      	b.n	8006fce <rt_malloc+0x8e>
 80070a6:	2400      	movs	r4, #0
 80070a8:	4823      	ldr	r0, [pc, #140]	; (8007138 <rt_malloc+0x1f8>)
 80070aa:	4929      	ldr	r1, [pc, #164]	; (8007150 <rt_malloc+0x210>)
 80070ac:	4a21      	ldr	r2, [pc, #132]	; (8007134 <rt_malloc+0x1f4>)
 80070ae:	f44f 73b2 	mov.w	r3, #356	; 0x164
 80070b2:	f88d 4007 	strb.w	r4, [sp, #7]
 80070b6:	f7ff fdf5 	bl	8006ca4 <rt_kprintf>
 80070ba:	f89d 1007 	ldrb.w	r1, [sp, #7]
 80070be:	2900      	cmp	r1, #0
 80070c0:	d0fb      	beq.n	80070ba <rt_malloc+0x17a>
 80070c2:	e7c6      	b.n	8007052 <rt_malloc+0x112>
 80070c4:	2600      	movs	r6, #0
 80070c6:	481c      	ldr	r0, [pc, #112]	; (8007138 <rt_malloc+0x1f8>)
 80070c8:	4922      	ldr	r1, [pc, #136]	; (8007154 <rt_malloc+0x214>)
 80070ca:	4a1a      	ldr	r2, [pc, #104]	; (8007134 <rt_malloc+0x1f4>)
 80070cc:	f240 1363 	movw	r3, #355	; 0x163
 80070d0:	f88d 6006 	strb.w	r6, [sp, #6]
 80070d4:	f7ff fde6 	bl	8006ca4 <rt_kprintf>
 80070d8:	f89d 0006 	ldrb.w	r0, [sp, #6]
 80070dc:	2800      	cmp	r0, #0
 80070de:	d0fb      	beq.n	80070d8 <rt_malloc+0x198>
 80070e0:	e7b5      	b.n	800704e <rt_malloc+0x10e>
 80070e2:	2500      	movs	r5, #0
 80070e4:	4814      	ldr	r0, [pc, #80]	; (8007138 <rt_malloc+0x1f8>)
 80070e6:	491c      	ldr	r1, [pc, #112]	; (8007158 <rt_malloc+0x218>)
 80070e8:	4a12      	ldr	r2, [pc, #72]	; (8007134 <rt_malloc+0x1f4>)
 80070ea:	f44f 73b1 	mov.w	r3, #354	; 0x162
 80070ee:	f88d 5005 	strb.w	r5, [sp, #5]
 80070f2:	f7ff fdd7 	bl	8006ca4 <rt_kprintf>
 80070f6:	f89d 2005 	ldrb.w	r2, [sp, #5]
 80070fa:	2a00      	cmp	r2, #0
 80070fc:	d0fb      	beq.n	80070f6 <rt_malloc+0x1b6>
 80070fe:	e7a2      	b.n	8007046 <rt_malloc+0x106>
 8007100:	884d      	ldrh	r5, [r1, #2]
 8007102:	2d00      	cmp	r5, #0
 8007104:	d097      	beq.n	8007036 <rt_malloc+0xf6>
 8007106:	4d10      	ldr	r5, [pc, #64]	; (8007148 <rt_malloc+0x208>)
 8007108:	682a      	ldr	r2, [r5, #0]
 800710a:	4291      	cmp	r1, r2
 800710c:	d094      	beq.n	8007038 <rt_malloc+0xf8>
 800710e:	f8dc 0000 	ldr.w	r0, [ip]
 8007112:	e001      	b.n	8007118 <rt_malloc+0x1d8>
 8007114:	4291      	cmp	r1, r2
 8007116:	d004      	beq.n	8007122 <rt_malloc+0x1e2>
 8007118:	6849      	ldr	r1, [r1, #4]
 800711a:	1841      	adds	r1, r0, r1
 800711c:	884b      	ldrh	r3, [r1, #2]
 800711e:	2b00      	cmp	r3, #0
 8007120:	d1f8      	bne.n	8007114 <rt_malloc+0x1d4>
 8007122:	f8c9 1000 	str.w	r1, [r9]
 8007126:	e787      	b.n	8007038 <rt_malloc+0xf8>
 8007128:	20000934 	.word	0x20000934
 800712c:	2000093c 	.word	0x2000093c
 8007130:	08009370 	.word	0x08009370
 8007134:	080095d8 	.word	0x080095d8
 8007138:	08008b10 	.word	0x08008b10
 800713c:	0800974c 	.word	0x0800974c
 8007140:	2000092c 	.word	0x2000092c
 8007144:	20000964 	.word	0x20000964
 8007148:	20000938 	.word	0x20000938
 800714c:	20000930 	.word	0x20000930
 8007150:	08009720 	.word	0x08009720
 8007154:	080096d4 	.word	0x080096d4
 8007158:	0800968c 	.word	0x0800968c
 800715c:	20000928 	.word	0x20000928
 8007160:	20000960 	.word	0x20000960

08007164 <rt_free>:
 8007164:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007166:	b083      	sub	sp, #12
 8007168:	4604      	mov	r4, r0
 800716a:	f7f8 ffcf 	bl	800010c <rt_hw_interrupt_disable>
 800716e:	4605      	mov	r5, r0
 8007170:	f7ff f8cc 	bl	800630c <rt_interrupt_get_nest>
 8007174:	2800      	cmp	r0, #0
 8007176:	d162      	bne.n	800723e <rt_free+0xda>
 8007178:	4628      	mov	r0, r5
 800717a:	f7f8 ffcb 	bl	8000114 <rt_hw_interrupt_enable>
 800717e:	b1ac      	cbz	r4, 80071ac <rt_free+0x48>
 8007180:	07a1      	lsls	r1, r4, #30
 8007182:	d16f      	bne.n	8007264 <rt_free+0x100>
 8007184:	4d46      	ldr	r5, [pc, #280]	; (80072a0 <rt_free+0x13c>)
 8007186:	6829      	ldr	r1, [r5, #0]
 8007188:	428c      	cmp	r4, r1
 800718a:	d311      	bcc.n	80071b0 <rt_free+0x4c>
 800718c:	4a45      	ldr	r2, [pc, #276]	; (80072a4 <rt_free+0x140>)
 800718e:	6813      	ldr	r3, [r2, #0]
 8007190:	429c      	cmp	r4, r3
 8007192:	d20d      	bcs.n	80071b0 <rt_free+0x4c>
 8007194:	4944      	ldr	r1, [pc, #272]	; (80072a8 <rt_free+0x144>)
 8007196:	680a      	ldr	r2, [r1, #0]
 8007198:	b10a      	cbz	r2, 800719e <rt_free+0x3a>
 800719a:	4620      	mov	r0, r4
 800719c:	4790      	blx	r2
 800719e:	682b      	ldr	r3, [r5, #0]
 80071a0:	429c      	cmp	r4, r3
 80071a2:	d303      	bcc.n	80071ac <rt_free+0x48>
 80071a4:	483f      	ldr	r0, [pc, #252]	; (80072a4 <rt_free+0x140>)
 80071a6:	6801      	ldr	r1, [r0, #0]
 80071a8:	428c      	cmp	r4, r1
 80071aa:	d310      	bcc.n	80071ce <rt_free+0x6a>
 80071ac:	b003      	add	sp, #12
 80071ae:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80071b0:	2600      	movs	r6, #0
 80071b2:	483e      	ldr	r0, [pc, #248]	; (80072ac <rt_free+0x148>)
 80071b4:	493e      	ldr	r1, [pc, #248]	; (80072b0 <rt_free+0x14c>)
 80071b6:	4a3f      	ldr	r2, [pc, #252]	; (80072b4 <rt_free+0x150>)
 80071b8:	f240 2302 	movw	r3, #514	; 0x202
 80071bc:	f88d 6005 	strb.w	r6, [sp, #5]
 80071c0:	f7ff fd70 	bl	8006ca4 <rt_kprintf>
 80071c4:	f89d 0005 	ldrb.w	r0, [sp, #5]
 80071c8:	2800      	cmp	r0, #0
 80071ca:	d0fb      	beq.n	80071c4 <rt_free+0x60>
 80071cc:	e7e2      	b.n	8007194 <rt_free+0x30>
 80071ce:	483a      	ldr	r0, [pc, #232]	; (80072b8 <rt_free+0x154>)
 80071d0:	f04f 31ff 	mov.w	r1, #4294967295
 80071d4:	f7fe ff88 	bl	80060e8 <rt_sem_take>
 80071d8:	f834 7c0a 	ldrh.w	r7, [r4, #-10]
 80071dc:	f1a4 060c 	sub.w	r6, r4, #12
 80071e0:	2f00      	cmp	r7, #0
 80071e2:	d04e      	beq.n	8007282 <rt_free+0x11e>
 80071e4:	f834 3c0c 	ldrh.w	r3, [r4, #-12]
 80071e8:	f5b3 5ff5 	cmp.w	r3, #7840	; 0x1ea0
 80071ec:	d00d      	beq.n	800720a <rt_free+0xa6>
 80071ee:	2700      	movs	r7, #0
 80071f0:	482e      	ldr	r0, [pc, #184]	; (80072ac <rt_free+0x148>)
 80071f2:	4932      	ldr	r1, [pc, #200]	; (80072bc <rt_free+0x158>)
 80071f4:	4a2f      	ldr	r2, [pc, #188]	; (80072b4 <rt_free+0x150>)
 80071f6:	f44f 7307 	mov.w	r3, #540	; 0x21c
 80071fa:	f88d 7007 	strb.w	r7, [sp, #7]
 80071fe:	f7ff fd51 	bl	8006ca4 <rt_kprintf>
 8007202:	f89d 0007 	ldrb.w	r0, [sp, #7]
 8007206:	2800      	cmp	r0, #0
 8007208:	d0fb      	beq.n	8007202 <rt_free+0x9e>
 800720a:	4a2d      	ldr	r2, [pc, #180]	; (80072c0 <rt_free+0x15c>)
 800720c:	2300      	movs	r3, #0
 800720e:	6811      	ldr	r1, [r2, #0]
 8007210:	f824 3c0a 	strh.w	r3, [r4, #-10]
 8007214:	428e      	cmp	r6, r1
 8007216:	f824 3c0c 	strh.w	r3, [r4, #-12]
 800721a:	d200      	bcs.n	800721e <rt_free+0xba>
 800721c:	6016      	str	r6, [r2, #0]
 800721e:	4b29      	ldr	r3, [pc, #164]	; (80072c4 <rt_free+0x160>)
 8007220:	6829      	ldr	r1, [r5, #0]
 8007222:	681a      	ldr	r2, [r3, #0]
 8007224:	f854 0c08 	ldr.w	r0, [r4, #-8]
 8007228:	1a10      	subs	r0, r2, r0
 800722a:	1b8a      	subs	r2, r1, r6
 800722c:	1a81      	subs	r1, r0, r2
 800722e:	4630      	mov	r0, r6
 8007230:	6019      	str	r1, [r3, #0]
 8007232:	f7ff fda9 	bl	8006d88 <plug_holes>
 8007236:	4820      	ldr	r0, [pc, #128]	; (80072b8 <rt_free+0x154>)
 8007238:	f7ff f826 	bl	8006288 <rt_sem_release>
 800723c:	e7b6      	b.n	80071ac <rt_free+0x48>
 800723e:	4822      	ldr	r0, [pc, #136]	; (80072c8 <rt_free+0x164>)
 8007240:	491c      	ldr	r1, [pc, #112]	; (80072b4 <rt_free+0x150>)
 8007242:	f7ff fd2f 	bl	8006ca4 <rt_kprintf>
 8007246:	2600      	movs	r6, #0
 8007248:	4818      	ldr	r0, [pc, #96]	; (80072ac <rt_free+0x148>)
 800724a:	4920      	ldr	r1, [pc, #128]	; (80072cc <rt_free+0x168>)
 800724c:	4a19      	ldr	r2, [pc, #100]	; (80072b4 <rt_free+0x150>)
 800724e:	f44f 73fe 	mov.w	r3, #508	; 0x1fc
 8007252:	f88d 6003 	strb.w	r6, [sp, #3]
 8007256:	f7ff fd25 	bl	8006ca4 <rt_kprintf>
 800725a:	f89d 3003 	ldrb.w	r3, [sp, #3]
 800725e:	2b00      	cmp	r3, #0
 8007260:	d0fb      	beq.n	800725a <rt_free+0xf6>
 8007262:	e789      	b.n	8007178 <rt_free+0x14>
 8007264:	2500      	movs	r5, #0
 8007266:	4811      	ldr	r0, [pc, #68]	; (80072ac <rt_free+0x148>)
 8007268:	4919      	ldr	r1, [pc, #100]	; (80072d0 <rt_free+0x16c>)
 800726a:	4a12      	ldr	r2, [pc, #72]	; (80072b4 <rt_free+0x150>)
 800726c:	f44f 7300 	mov.w	r3, #512	; 0x200
 8007270:	f88d 5004 	strb.w	r5, [sp, #4]
 8007274:	f7ff fd16 	bl	8006ca4 <rt_kprintf>
 8007278:	f89d 0004 	ldrb.w	r0, [sp, #4]
 800727c:	2800      	cmp	r0, #0
 800727e:	d0fb      	beq.n	8007278 <rt_free+0x114>
 8007280:	e780      	b.n	8007184 <rt_free+0x20>
 8007282:	480a      	ldr	r0, [pc, #40]	; (80072ac <rt_free+0x148>)
 8007284:	4913      	ldr	r1, [pc, #76]	; (80072d4 <rt_free+0x170>)
 8007286:	4a0b      	ldr	r2, [pc, #44]	; (80072b4 <rt_free+0x150>)
 8007288:	f240 231b 	movw	r3, #539	; 0x21b
 800728c:	f88d 7006 	strb.w	r7, [sp, #6]
 8007290:	f7ff fd08 	bl	8006ca4 <rt_kprintf>
 8007294:	f89d 2006 	ldrb.w	r2, [sp, #6]
 8007298:	2a00      	cmp	r2, #0
 800729a:	d0fb      	beq.n	8007294 <rt_free+0x130>
 800729c:	e7a2      	b.n	80071e4 <rt_free+0x80>
 800729e:	bf00      	nop
 80072a0:	20000960 	.word	0x20000960
 80072a4:	20000938 	.word	0x20000938
 80072a8:	2000095c 	.word	0x2000095c
 80072ac:	08008b10 	.word	0x08008b10
 80072b0:	08009780 	.word	0x08009780
 80072b4:	080095e4 	.word	0x080095e4
 80072b8:	2000093c 	.word	0x2000093c
 80072bc:	080097e8 	.word	0x080097e8
 80072c0:	20000928 	.word	0x20000928
 80072c4:	2000092c 	.word	0x2000092c
 80072c8:	08009370 	.word	0x08009370
 80072cc:	0800974c 	.word	0x0800974c
 80072d0:	08009750 	.word	0x08009750
 80072d4:	080097dc 	.word	0x080097dc

080072d8 <rt_object_init>:
 80072d8:	b538      	push	{r3, r4, r5, lr}
 80072da:	f061 057f 	orn	r5, r1, #127	; 0x7f
 80072de:	7205      	strb	r5, [r0, #8]
 80072e0:	4d0e      	ldr	r5, [pc, #56]	; (800731c <rt_object_init+0x44>)
 80072e2:	460b      	mov	r3, r1
 80072e4:	4611      	mov	r1, r2
 80072e6:	2208      	movs	r2, #8
 80072e8:	4604      	mov	r4, r0
 80072ea:	eb05 1503 	add.w	r5, r5, r3, lsl #4
 80072ee:	f7ff f9d7 	bl	80066a0 <rt_strncpy>
 80072f2:	480b      	ldr	r0, [pc, #44]	; (8007320 <rt_object_init+0x48>)
 80072f4:	6801      	ldr	r1, [r0, #0]
 80072f6:	b109      	cbz	r1, 80072fc <rt_object_init+0x24>
 80072f8:	4620      	mov	r0, r4
 80072fa:	4788      	blx	r1
 80072fc:	f7f8 ff06 	bl	800010c <rt_hw_interrupt_disable>
 8007300:	686b      	ldr	r3, [r5, #4]
 8007302:	f104 020c 	add.w	r2, r4, #12
 8007306:	4629      	mov	r1, r5
 8007308:	60e3      	str	r3, [r4, #12]
 800730a:	f841 2f04 	str.w	r2, [r1, #4]!
 800730e:	605a      	str	r2, [r3, #4]
 8007310:	6121      	str	r1, [r4, #16]
 8007312:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8007316:	f7f8 befd 	b.w	8000114 <rt_hw_interrupt_enable>
 800731a:	bf00      	nop
 800731c:	200002b4 	.word	0x200002b4
 8007320:	20000968 	.word	0x20000968

08007324 <rt_object_detach>:
 8007324:	b510      	push	{r4, lr}
 8007326:	4604      	mov	r4, r0
 8007328:	b082      	sub	sp, #8
 800732a:	b198      	cbz	r0, 8007354 <rt_object_detach+0x30>
 800732c:	4810      	ldr	r0, [pc, #64]	; (8007370 <rt_object_detach+0x4c>)
 800732e:	6801      	ldr	r1, [r0, #0]
 8007330:	b109      	cbz	r1, 8007336 <rt_object_detach+0x12>
 8007332:	4620      	mov	r0, r4
 8007334:	4788      	blx	r1
 8007336:	f7f8 fee9 	bl	800010c <rt_hw_interrupt_disable>
 800733a:	68e2      	ldr	r2, [r4, #12]
 800733c:	6921      	ldr	r1, [r4, #16]
 800733e:	f104 030c 	add.w	r3, r4, #12
 8007342:	6051      	str	r1, [r2, #4]
 8007344:	6921      	ldr	r1, [r4, #16]
 8007346:	6123      	str	r3, [r4, #16]
 8007348:	600a      	str	r2, [r1, #0]
 800734a:	60e3      	str	r3, [r4, #12]
 800734c:	f7f8 fee2 	bl	8000114 <rt_hw_interrupt_enable>
 8007350:	b002      	add	sp, #8
 8007352:	bd10      	pop	{r4, pc}
 8007354:	4807      	ldr	r0, [pc, #28]	; (8007374 <rt_object_detach+0x50>)
 8007356:	4908      	ldr	r1, [pc, #32]	; (8007378 <rt_object_detach+0x54>)
 8007358:	4a08      	ldr	r2, [pc, #32]	; (800737c <rt_object_detach+0x58>)
 800735a:	23fb      	movs	r3, #251	; 0xfb
 800735c:	f88d 4007 	strb.w	r4, [sp, #7]
 8007360:	f7ff fca0 	bl	8006ca4 <rt_kprintf>
 8007364:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8007368:	2b00      	cmp	r3, #0
 800736a:	d0fb      	beq.n	8007364 <rt_object_detach+0x40>
 800736c:	e7de      	b.n	800732c <rt_object_detach+0x8>
 800736e:	bf00      	nop
 8007370:	2000096c 	.word	0x2000096c
 8007374:	08008b10 	.word	0x08008b10
 8007378:	08009838 	.word	0x08009838
 800737c:	08009894 	.word	0x08009894

08007380 <rt_object_allocate>:
 8007380:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007382:	b083      	sub	sp, #12
 8007384:	4606      	mov	r6, r0
 8007386:	460f      	mov	r7, r1
 8007388:	f7f8 fec0 	bl	800010c <rt_hw_interrupt_disable>
 800738c:	4604      	mov	r4, r0
 800738e:	f7fe ffbd 	bl	800630c <rt_interrupt_get_nest>
 8007392:	2800      	cmp	r0, #0
 8007394:	d125      	bne.n	80073e2 <rt_object_allocate+0x62>
 8007396:	4620      	mov	r0, r4
 8007398:	f7f8 febc 	bl	8000114 <rt_hw_interrupt_enable>
 800739c:	481a      	ldr	r0, [pc, #104]	; (8007408 <rt_object_allocate+0x88>)
 800739e:	eb00 1506 	add.w	r5, r0, r6, lsl #4
 80073a2:	68e8      	ldr	r0, [r5, #12]
 80073a4:	f7ff fdcc 	bl	8006f40 <rt_malloc>
 80073a8:	4604      	mov	r4, r0
 80073aa:	b1b8      	cbz	r0, 80073dc <rt_object_allocate+0x5c>
 80073ac:	2100      	movs	r1, #0
 80073ae:	7241      	strb	r1, [r0, #9]
 80073b0:	2208      	movs	r2, #8
 80073b2:	7206      	strb	r6, [r0, #8]
 80073b4:	4639      	mov	r1, r7
 80073b6:	f7ff f973 	bl	80066a0 <rt_strncpy>
 80073ba:	4a14      	ldr	r2, [pc, #80]	; (800740c <rt_object_allocate+0x8c>)
 80073bc:	6813      	ldr	r3, [r2, #0]
 80073be:	b10b      	cbz	r3, 80073c4 <rt_object_allocate+0x44>
 80073c0:	4620      	mov	r0, r4
 80073c2:	4798      	blx	r3
 80073c4:	f7f8 fea2 	bl	800010c <rt_hw_interrupt_disable>
 80073c8:	6869      	ldr	r1, [r5, #4]
 80073ca:	f104 020c 	add.w	r2, r4, #12
 80073ce:	60e1      	str	r1, [r4, #12]
 80073d0:	f845 2f04 	str.w	r2, [r5, #4]!
 80073d4:	604a      	str	r2, [r1, #4]
 80073d6:	6125      	str	r5, [r4, #16]
 80073d8:	f7f8 fe9c 	bl	8000114 <rt_hw_interrupt_enable>
 80073dc:	4620      	mov	r0, r4
 80073de:	b003      	add	sp, #12
 80073e0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80073e2:	480b      	ldr	r0, [pc, #44]	; (8007410 <rt_object_allocate+0x90>)
 80073e4:	490b      	ldr	r1, [pc, #44]	; (8007414 <rt_object_allocate+0x94>)
 80073e6:	f7ff fc5d 	bl	8006ca4 <rt_kprintf>
 80073ea:	2500      	movs	r5, #0
 80073ec:	480a      	ldr	r0, [pc, #40]	; (8007418 <rt_object_allocate+0x98>)
 80073ee:	490b      	ldr	r1, [pc, #44]	; (800741c <rt_object_allocate+0x9c>)
 80073f0:	4a08      	ldr	r2, [pc, #32]	; (8007414 <rt_object_allocate+0x94>)
 80073f2:	f44f 738c 	mov.w	r3, #280	; 0x118
 80073f6:	f88d 5007 	strb.w	r5, [sp, #7]
 80073fa:	f7ff fc53 	bl	8006ca4 <rt_kprintf>
 80073fe:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8007402:	2b00      	cmp	r3, #0
 8007404:	d0fb      	beq.n	80073fe <rt_object_allocate+0x7e>
 8007406:	e7c6      	b.n	8007396 <rt_object_allocate+0x16>
 8007408:	200002b4 	.word	0x200002b4
 800740c:	20000968 	.word	0x20000968
 8007410:	08009370 	.word	0x08009370
 8007414:	08009810 	.word	0x08009810
 8007418:	08008b10 	.word	0x08008b10
 800741c:	0800974c 	.word	0x0800974c

08007420 <rt_object_delete>:
 8007420:	b530      	push	{r4, r5, lr}
 8007422:	4604      	mov	r4, r0
 8007424:	b083      	sub	sp, #12
 8007426:	2800      	cmp	r0, #0
 8007428:	d029      	beq.n	800747e <rt_object_delete+0x5e>
 800742a:	f994 0008 	ldrsb.w	r0, [r4, #8]
 800742e:	2800      	cmp	r0, #0
 8007430:	db16      	blt.n	8007460 <rt_object_delete+0x40>
 8007432:	4a1a      	ldr	r2, [pc, #104]	; (800749c <rt_object_delete+0x7c>)
 8007434:	6813      	ldr	r3, [r2, #0]
 8007436:	b10b      	cbz	r3, 800743c <rt_object_delete+0x1c>
 8007438:	4620      	mov	r0, r4
 800743a:	4798      	blx	r3
 800743c:	f7f8 fe66 	bl	800010c <rt_hw_interrupt_disable>
 8007440:	68e2      	ldr	r2, [r4, #12]
 8007442:	6921      	ldr	r1, [r4, #16]
 8007444:	f104 030c 	add.w	r3, r4, #12
 8007448:	6051      	str	r1, [r2, #4]
 800744a:	6921      	ldr	r1, [r4, #16]
 800744c:	6123      	str	r3, [r4, #16]
 800744e:	600a      	str	r2, [r1, #0]
 8007450:	60e3      	str	r3, [r4, #12]
 8007452:	f7f8 fe5f 	bl	8000114 <rt_hw_interrupt_enable>
 8007456:	4620      	mov	r0, r4
 8007458:	f7ff fe84 	bl	8007164 <rt_free>
 800745c:	b003      	add	sp, #12
 800745e:	bd30      	pop	{r4, r5, pc}
 8007460:	2500      	movs	r5, #0
 8007462:	480f      	ldr	r0, [pc, #60]	; (80074a0 <rt_object_delete+0x80>)
 8007464:	490f      	ldr	r1, [pc, #60]	; (80074a4 <rt_object_delete+0x84>)
 8007466:	4a10      	ldr	r2, [pc, #64]	; (80074a8 <rt_object_delete+0x88>)
 8007468:	f44f 73ad 	mov.w	r3, #346	; 0x15a
 800746c:	f88d 5007 	strb.w	r5, [sp, #7]
 8007470:	f7ff fc18 	bl	8006ca4 <rt_kprintf>
 8007474:	f89d 1007 	ldrb.w	r1, [sp, #7]
 8007478:	2900      	cmp	r1, #0
 800747a:	d0fb      	beq.n	8007474 <rt_object_delete+0x54>
 800747c:	e7d9      	b.n	8007432 <rt_object_delete+0x12>
 800747e:	4808      	ldr	r0, [pc, #32]	; (80074a0 <rt_object_delete+0x80>)
 8007480:	490a      	ldr	r1, [pc, #40]	; (80074ac <rt_object_delete+0x8c>)
 8007482:	4a09      	ldr	r2, [pc, #36]	; (80074a8 <rt_object_delete+0x88>)
 8007484:	f240 1359 	movw	r3, #345	; 0x159
 8007488:	f88d 4006 	strb.w	r4, [sp, #6]
 800748c:	f7ff fc0a 	bl	8006ca4 <rt_kprintf>
 8007490:	f89d 3006 	ldrb.w	r3, [sp, #6]
 8007494:	2b00      	cmp	r3, #0
 8007496:	d0fb      	beq.n	8007490 <rt_object_delete+0x70>
 8007498:	e7c7      	b.n	800742a <rt_object_delete+0xa>
 800749a:	bf00      	nop
 800749c:	2000096c 	.word	0x2000096c
 80074a0:	08008b10 	.word	0x08008b10
 80074a4:	0800984c 	.word	0x0800984c
 80074a8:	08009824 	.word	0x08009824
 80074ac:	08009838 	.word	0x08009838

080074b0 <rt_object_is_systemobject>:
 80074b0:	b510      	push	{r4, lr}
 80074b2:	4604      	mov	r4, r0
 80074b4:	b082      	sub	sp, #8
 80074b6:	b120      	cbz	r0, 80074c2 <rt_object_is_systemobject+0x12>
 80074b8:	f994 0008 	ldrsb.w	r0, [r4, #8]
 80074bc:	0fc0      	lsrs	r0, r0, #31
 80074be:	b002      	add	sp, #8
 80074c0:	bd10      	pop	{r4, pc}
 80074c2:	4807      	ldr	r0, [pc, #28]	; (80074e0 <rt_object_is_systemobject+0x30>)
 80074c4:	4907      	ldr	r1, [pc, #28]	; (80074e4 <rt_object_is_systemobject+0x34>)
 80074c6:	4a08      	ldr	r2, [pc, #32]	; (80074e8 <rt_object_is_systemobject+0x38>)
 80074c8:	f44f 73bf 	mov.w	r3, #382	; 0x17e
 80074cc:	f88d 4007 	strb.w	r4, [sp, #7]
 80074d0:	f7ff fbe8 	bl	8006ca4 <rt_kprintf>
 80074d4:	f89d 3007 	ldrb.w	r3, [sp, #7]
 80074d8:	2b00      	cmp	r3, #0
 80074da:	d0fb      	beq.n	80074d4 <rt_object_is_systemobject+0x24>
 80074dc:	e7ec      	b.n	80074b8 <rt_object_is_systemobject+0x8>
 80074de:	bf00      	nop
 80074e0:	08008b10 	.word	0x08008b10
 80074e4:	08009838 	.word	0x08009838
 80074e8:	08009878 	.word	0x08009878

080074ec <rt_system_scheduler_init>:
 80074ec:	490f      	ldr	r1, [pc, #60]	; (800752c <rt_system_scheduler_init+0x40>)
 80074ee:	2300      	movs	r3, #0
 80074f0:	4a0f      	ldr	r2, [pc, #60]	; (8007530 <rt_system_scheduler_init+0x44>)
 80074f2:	b410      	push	{r4}
 80074f4:	800b      	strh	r3, [r1, #0]
 80074f6:	eb02 04c3 	add.w	r4, r2, r3, lsl #3
 80074fa:	1c58      	adds	r0, r3, #1
 80074fc:	f842 4033 	str.w	r4, [r2, r3, lsl #3]
 8007500:	3302      	adds	r3, #2
 8007502:	eb02 01c0 	add.w	r1, r2, r0, lsl #3
 8007506:	2b20      	cmp	r3, #32
 8007508:	6064      	str	r4, [r4, #4]
 800750a:	f842 1030 	str.w	r1, [r2, r0, lsl #3]
 800750e:	6049      	str	r1, [r1, #4]
 8007510:	d1f1      	bne.n	80074f6 <rt_system_scheduler_init+0xa>
 8007512:	4908      	ldr	r1, [pc, #32]	; (8007534 <rt_system_scheduler_init+0x48>)
 8007514:	201f      	movs	r0, #31
 8007516:	7008      	strb	r0, [r1, #0]
 8007518:	4b07      	ldr	r3, [pc, #28]	; (8007538 <rt_system_scheduler_init+0x4c>)
 800751a:	4808      	ldr	r0, [pc, #32]	; (800753c <rt_system_scheduler_init+0x50>)
 800751c:	4908      	ldr	r1, [pc, #32]	; (8007540 <rt_system_scheduler_init+0x54>)
 800751e:	2200      	movs	r2, #0
 8007520:	6002      	str	r2, [r0, #0]
 8007522:	600a      	str	r2, [r1, #0]
 8007524:	605b      	str	r3, [r3, #4]
 8007526:	601b      	str	r3, [r3, #0]
 8007528:	bc10      	pop	{r4}
 800752a:	4770      	bx	lr
 800752c:	20000970 	.word	0x20000970
 8007530:	20001a3c 	.word	0x20001a3c
 8007534:	20001b3c 	.word	0x20001b3c
 8007538:	20001b48 	.word	0x20001b48
 800753c:	20001b40 	.word	0x20001b40
 8007540:	20001b44 	.word	0x20001b44

08007544 <rt_system_scheduler_start>:
 8007544:	b508      	push	{r3, lr}
 8007546:	f641 3344 	movw	r3, #6980	; 0x1b44
 800754a:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800754e:	6818      	ldr	r0, [r3, #0]
 8007550:	f7ff fbfa 	bl	8006d48 <__rt_ffs>
 8007554:	f641 213c 	movw	r1, #6716	; 0x1a3c
 8007558:	3801      	subs	r0, #1
 800755a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800755e:	f851 0030 	ldr.w	r0, [r1, r0, lsl #3]
 8007562:	f641 3340 	movw	r3, #6976	; 0x1b40
 8007566:	f1a0 0214 	sub.w	r2, r0, #20
 800756a:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800756e:	3008      	adds	r0, #8
 8007570:	601a      	str	r2, [r3, #0]
 8007572:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8007576:	f7f8 bdfe 	b.w	8000176 <rt_hw_context_switch_to>
 800757a:	bf00      	nop

0800757c <rt_schedule>:
 800757c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800757e:	b083      	sub	sp, #12
 8007580:	f7f8 fdc4 	bl	800010c <rt_hw_interrupt_disable>
 8007584:	4b29      	ldr	r3, [pc, #164]	; (800762c <rt_schedule+0xb0>)
 8007586:	4606      	mov	r6, r0
 8007588:	f9b3 0000 	ldrsh.w	r0, [r3]
 800758c:	b120      	cbz	r0, 8007598 <rt_schedule+0x1c>
 800758e:	4630      	mov	r0, r6
 8007590:	f7f8 fdc0 	bl	8000114 <rt_hw_interrupt_enable>
 8007594:	b003      	add	sp, #12
 8007596:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007598:	4925      	ldr	r1, [pc, #148]	; (8007630 <rt_schedule+0xb4>)
 800759a:	6808      	ldr	r0, [r1, #0]
 800759c:	f7ff fbd4 	bl	8006d48 <__rt_ffs>
 80075a0:	4a24      	ldr	r2, [pc, #144]	; (8007634 <rt_schedule+0xb8>)
 80075a2:	3801      	subs	r0, #1
 80075a4:	4b24      	ldr	r3, [pc, #144]	; (8007638 <rt_schedule+0xbc>)
 80075a6:	f852 4030 	ldr.w	r4, [r2, r0, lsl #3]
 80075aa:	681f      	ldr	r7, [r3, #0]
 80075ac:	f1a4 0514 	sub.w	r5, r4, #20
 80075b0:	42bd      	cmp	r5, r7
 80075b2:	d0ec      	beq.n	800758e <rt_schedule+0x12>
 80075b4:	4921      	ldr	r1, [pc, #132]	; (800763c <rt_schedule+0xc0>)
 80075b6:	601d      	str	r5, [r3, #0]
 80075b8:	680a      	ldr	r2, [r1, #0]
 80075ba:	4921      	ldr	r1, [pc, #132]	; (8007640 <rt_schedule+0xc4>)
 80075bc:	7008      	strb	r0, [r1, #0]
 80075be:	b112      	cbz	r2, 80075c6 <rt_schedule+0x4a>
 80075c0:	4638      	mov	r0, r7
 80075c2:	4629      	mov	r1, r5
 80075c4:	4790      	blx	r2
 80075c6:	b31d      	cbz	r5, 8007610 <rt_schedule+0x94>
 80075c8:	68a3      	ldr	r3, [r4, #8]
 80075ca:	6962      	ldr	r2, [r4, #20]
 80075cc:	4293      	cmp	r3, r2
 80075ce:	d903      	bls.n	80075d8 <rt_schedule+0x5c>
 80075d0:	8b21      	ldrh	r1, [r4, #24]
 80075d2:	1888      	adds	r0, r1, r2
 80075d4:	4283      	cmp	r3, r0
 80075d6:	d907      	bls.n	80075e8 <rt_schedule+0x6c>
 80075d8:	481a      	ldr	r0, [pc, #104]	; (8007644 <rt_schedule+0xc8>)
 80075da:	4629      	mov	r1, r5
 80075dc:	f7ff fb62 	bl	8006ca4 <rt_kprintf>
 80075e0:	f7f8 fd94 	bl	800010c <rt_hw_interrupt_disable>
 80075e4:	b138      	cbz	r0, 80075f6 <rt_schedule+0x7a>
 80075e6:	e7fe      	b.n	80075e6 <rt_schedule+0x6a>
 80075e8:	3220      	adds	r2, #32
 80075ea:	4293      	cmp	r3, r2
 80075ec:	d803      	bhi.n	80075f6 <rt_schedule+0x7a>
 80075ee:	4816      	ldr	r0, [pc, #88]	; (8007648 <rt_schedule+0xcc>)
 80075f0:	4629      	mov	r1, r5
 80075f2:	f7ff fb57 	bl	8006ca4 <rt_kprintf>
 80075f6:	4b15      	ldr	r3, [pc, #84]	; (800764c <rt_schedule+0xd0>)
 80075f8:	f107 001c 	add.w	r0, r7, #28
 80075fc:	781a      	ldrb	r2, [r3, #0]
 80075fe:	f104 0108 	add.w	r1, r4, #8
 8007602:	b112      	cbz	r2, 800760a <rt_schedule+0x8e>
 8007604:	f7f8 fd89 	bl	800011a <rt_hw_context_switch>
 8007608:	e7c1      	b.n	800758e <rt_schedule+0x12>
 800760a:	f7f8 fd86 	bl	800011a <rt_hw_context_switch>
 800760e:	e7be      	b.n	800758e <rt_schedule+0x12>
 8007610:	480f      	ldr	r0, [pc, #60]	; (8007650 <rt_schedule+0xd4>)
 8007612:	4910      	ldr	r1, [pc, #64]	; (8007654 <rt_schedule+0xd8>)
 8007614:	4a10      	ldr	r2, [pc, #64]	; (8007658 <rt_schedule+0xdc>)
 8007616:	235a      	movs	r3, #90	; 0x5a
 8007618:	f88d 5007 	strb.w	r5, [sp, #7]
 800761c:	f7ff fb42 	bl	8006ca4 <rt_kprintf>
 8007620:	f89d 0007 	ldrb.w	r0, [sp, #7]
 8007624:	2800      	cmp	r0, #0
 8007626:	d0fb      	beq.n	8007620 <rt_schedule+0xa4>
 8007628:	e7ce      	b.n	80075c8 <rt_schedule+0x4c>
 800762a:	bf00      	nop
 800762c:	20000970 	.word	0x20000970
 8007630:	20001b44 	.word	0x20001b44
 8007634:	20001a3c 	.word	0x20001a3c
 8007638:	20001b40 	.word	0x20001b40
 800763c:	20000974 	.word	0x20000974
 8007640:	20001b3c 	.word	0x20001b3c
 8007644:	08009910 	.word	0x08009910
 8007648:	0800992c 	.word	0x0800992c
 800764c:	20001a2d 	.word	0x20001a2d
 8007650:	08008b10 	.word	0x08008b10
 8007654:	080098fc 	.word	0x080098fc
 8007658:	080098e0 	.word	0x080098e0

0800765c <rt_schedule_insert_thread>:
 800765c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800765e:	4604      	mov	r4, r0
 8007660:	b083      	sub	sp, #12
 8007662:	b1c8      	cbz	r0, 8007698 <rt_schedule_insert_thread+0x3c>
 8007664:	f7f8 fd52 	bl	800010c <rt_hw_interrupt_disable>
 8007668:	4e12      	ldr	r6, [pc, #72]	; (80076b4 <rt_schedule_insert_thread+0x58>)
 800766a:	f894 1035 	ldrb.w	r1, [r4, #53]	; 0x35
 800766e:	4a12      	ldr	r2, [pc, #72]	; (80076b8 <rt_schedule_insert_thread+0x5c>)
 8007670:	2501      	movs	r5, #1
 8007672:	eb06 03c1 	add.w	r3, r6, r1, lsl #3
 8007676:	f884 5034 	strb.w	r5, [r4, #52]	; 0x34
 800767a:	685d      	ldr	r5, [r3, #4]
 800767c:	6817      	ldr	r7, [r2, #0]
 800767e:	6ba6      	ldr	r6, [r4, #56]	; 0x38
 8007680:	f104 0114 	add.w	r1, r4, #20
 8007684:	6029      	str	r1, [r5, #0]
 8007686:	61a5      	str	r5, [r4, #24]
 8007688:	433e      	orrs	r6, r7
 800768a:	6163      	str	r3, [r4, #20]
 800768c:	6059      	str	r1, [r3, #4]
 800768e:	6016      	str	r6, [r2, #0]
 8007690:	f7f8 fd40 	bl	8000114 <rt_hw_interrupt_enable>
 8007694:	b003      	add	sp, #12
 8007696:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007698:	4808      	ldr	r0, [pc, #32]	; (80076bc <rt_schedule_insert_thread+0x60>)
 800769a:	4909      	ldr	r1, [pc, #36]	; (80076c0 <rt_schedule_insert_thread+0x64>)
 800769c:	4a09      	ldr	r2, [pc, #36]	; (80076c4 <rt_schedule_insert_thread+0x68>)
 800769e:	f240 130f 	movw	r3, #271	; 0x10f
 80076a2:	f88d 4007 	strb.w	r4, [sp, #7]
 80076a6:	f7ff fafd 	bl	8006ca4 <rt_kprintf>
 80076aa:	f89d 3007 	ldrb.w	r3, [sp, #7]
 80076ae:	2b00      	cmp	r3, #0
 80076b0:	d0fb      	beq.n	80076aa <rt_schedule_insert_thread+0x4e>
 80076b2:	e7d7      	b.n	8007664 <rt_schedule_insert_thread+0x8>
 80076b4:	20001a3c 	.word	0x20001a3c
 80076b8:	20001b44 	.word	0x20001b44
 80076bc:	08008b10 	.word	0x08008b10
 80076c0:	080098fc 	.word	0x080098fc
 80076c4:	080098a8 	.word	0x080098a8

080076c8 <rt_schedule_remove_thread>:
 80076c8:	b530      	push	{r4, r5, lr}
 80076ca:	4604      	mov	r4, r0
 80076cc:	b083      	sub	sp, #12
 80076ce:	b1f0      	cbz	r0, 800770e <rt_schedule_remove_thread+0x46>
 80076d0:	f7f8 fd1c 	bl	800010c <rt_hw_interrupt_disable>
 80076d4:	6961      	ldr	r1, [r4, #20]
 80076d6:	69a2      	ldr	r2, [r4, #24]
 80076d8:	f104 0314 	add.w	r3, r4, #20
 80076dc:	604a      	str	r2, [r1, #4]
 80076de:	69a5      	ldr	r5, [r4, #24]
 80076e0:	4a12      	ldr	r2, [pc, #72]	; (800772c <rt_schedule_remove_thread+0x64>)
 80076e2:	6029      	str	r1, [r5, #0]
 80076e4:	f894 1035 	ldrb.w	r1, [r4, #53]	; 0x35
 80076e8:	6163      	str	r3, [r4, #20]
 80076ea:	f852 5031 	ldr.w	r5, [r2, r1, lsl #3]
 80076ee:	eb02 02c1 	add.w	r2, r2, r1, lsl #3
 80076f2:	42aa      	cmp	r2, r5
 80076f4:	61a3      	str	r3, [r4, #24]
 80076f6:	d003      	beq.n	8007700 <rt_schedule_remove_thread+0x38>
 80076f8:	f7f8 fd0c 	bl	8000114 <rt_hw_interrupt_enable>
 80076fc:	b003      	add	sp, #12
 80076fe:	bd30      	pop	{r4, r5, pc}
 8007700:	4b0b      	ldr	r3, [pc, #44]	; (8007730 <rt_schedule_remove_thread+0x68>)
 8007702:	6ba1      	ldr	r1, [r4, #56]	; 0x38
 8007704:	681a      	ldr	r2, [r3, #0]
 8007706:	ea22 0201 	bic.w	r2, r2, r1
 800770a:	601a      	str	r2, [r3, #0]
 800770c:	e7f4      	b.n	80076f8 <rt_schedule_remove_thread+0x30>
 800770e:	4809      	ldr	r0, [pc, #36]	; (8007734 <rt_schedule_remove_thread+0x6c>)
 8007710:	4909      	ldr	r1, [pc, #36]	; (8007738 <rt_schedule_remove_thread+0x70>)
 8007712:	4a0a      	ldr	r2, [pc, #40]	; (800773c <rt_schedule_remove_thread+0x74>)
 8007714:	f240 133d 	movw	r3, #317	; 0x13d
 8007718:	f88d 4007 	strb.w	r4, [sp, #7]
 800771c:	f7ff fac2 	bl	8006ca4 <rt_kprintf>
 8007720:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8007724:	2b00      	cmp	r3, #0
 8007726:	d0fb      	beq.n	8007720 <rt_schedule_remove_thread+0x58>
 8007728:	e7d2      	b.n	80076d0 <rt_schedule_remove_thread+0x8>
 800772a:	bf00      	nop
 800772c:	20001a3c 	.word	0x20001a3c
 8007730:	20001b44 	.word	0x20001b44
 8007734:	08008b10 	.word	0x08008b10
 8007738:	080098fc 	.word	0x080098fc
 800773c:	080098c4 	.word	0x080098c4

08007740 <rt_enter_critical>:
 8007740:	b508      	push	{r3, lr}
 8007742:	f7f8 fce3 	bl	800010c <rt_hw_interrupt_disable>
 8007746:	f640 1370 	movw	r3, #2416	; 0x970
 800774a:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800774e:	881a      	ldrh	r2, [r3, #0]
 8007750:	1c51      	adds	r1, r2, #1
 8007752:	8019      	strh	r1, [r3, #0]
 8007754:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8007758:	f7f8 bcdc 	b.w	8000114 <rt_hw_interrupt_enable>

0800775c <rt_exit_critical>:
 800775c:	b508      	push	{r3, lr}
 800775e:	f7f8 fcd5 	bl	800010c <rt_hw_interrupt_disable>
 8007762:	4b0a      	ldr	r3, [pc, #40]	; (800778c <rt_exit_critical+0x30>)
 8007764:	881a      	ldrh	r2, [r3, #0]
 8007766:	1e51      	subs	r1, r2, #1
 8007768:	b28a      	uxth	r2, r1
 800776a:	b211      	sxth	r1, r2
 800776c:	2900      	cmp	r1, #0
 800776e:	801a      	strh	r2, [r3, #0]
 8007770:	dd03      	ble.n	800777a <rt_exit_critical+0x1e>
 8007772:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8007776:	f7f8 bccd 	b.w	8000114 <rt_hw_interrupt_enable>
 800777a:	2200      	movs	r2, #0
 800777c:	801a      	strh	r2, [r3, #0]
 800777e:	f7f8 fcc9 	bl	8000114 <rt_hw_interrupt_enable>
 8007782:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8007786:	f7ff bef9 	b.w	800757c <rt_schedule>
 800778a:	bf00      	nop
 800778c:	20000970 	.word	0x20000970

08007790 <rt_thread_timeout>:
 8007790:	b530      	push	{r4, r5, lr}
 8007792:	4604      	mov	r4, r0
 8007794:	b083      	sub	sp, #12
 8007796:	2800      	cmp	r0, #0
 8007798:	d024      	beq.n	80077e4 <rt_thread_timeout+0x54>
 800779a:	f894 0034 	ldrb.w	r0, [r4, #52]	; 0x34
 800779e:	2802      	cmp	r0, #2
 80077a0:	d00d      	beq.n	80077be <rt_thread_timeout+0x2e>
 80077a2:	2500      	movs	r5, #0
 80077a4:	4816      	ldr	r0, [pc, #88]	; (8007800 <rt_thread_timeout+0x70>)
 80077a6:	4917      	ldr	r1, [pc, #92]	; (8007804 <rt_thread_timeout+0x74>)
 80077a8:	4a17      	ldr	r2, [pc, #92]	; (8007808 <rt_thread_timeout+0x78>)
 80077aa:	f240 2381 	movw	r3, #641	; 0x281
 80077ae:	f88d 5007 	strb.w	r5, [sp, #7]
 80077b2:	f7ff fa77 	bl	8006ca4 <rt_kprintf>
 80077b6:	f89d 1007 	ldrb.w	r1, [sp, #7]
 80077ba:	2900      	cmp	r1, #0
 80077bc:	d0fb      	beq.n	80077b6 <rt_thread_timeout+0x26>
 80077be:	6962      	ldr	r2, [r4, #20]
 80077c0:	69a3      	ldr	r3, [r4, #24]
 80077c2:	f06f 0001 	mvn.w	r0, #1
 80077c6:	6320      	str	r0, [r4, #48]	; 0x30
 80077c8:	6053      	str	r3, [r2, #4]
 80077ca:	69a1      	ldr	r1, [r4, #24]
 80077cc:	f104 0314 	add.w	r3, r4, #20
 80077d0:	600a      	str	r2, [r1, #0]
 80077d2:	4620      	mov	r0, r4
 80077d4:	61a3      	str	r3, [r4, #24]
 80077d6:	6163      	str	r3, [r4, #20]
 80077d8:	f7ff ff40 	bl	800765c <rt_schedule_insert_thread>
 80077dc:	f7ff fece 	bl	800757c <rt_schedule>
 80077e0:	b003      	add	sp, #12
 80077e2:	bd30      	pop	{r4, r5, pc}
 80077e4:	4806      	ldr	r0, [pc, #24]	; (8007800 <rt_thread_timeout+0x70>)
 80077e6:	4909      	ldr	r1, [pc, #36]	; (800780c <rt_thread_timeout+0x7c>)
 80077e8:	4a07      	ldr	r2, [pc, #28]	; (8007808 <rt_thread_timeout+0x78>)
 80077ea:	f44f 7320 	mov.w	r3, #640	; 0x280
 80077ee:	f88d 4006 	strb.w	r4, [sp, #6]
 80077f2:	f7ff fa57 	bl	8006ca4 <rt_kprintf>
 80077f6:	f89d 3006 	ldrb.w	r3, [sp, #6]
 80077fa:	2b00      	cmp	r3, #0
 80077fc:	d0fb      	beq.n	80077f6 <rt_thread_timeout+0x66>
 80077fe:	e7cc      	b.n	800779a <rt_thread_timeout+0xa>
 8007800:	08008b10 	.word	0x08008b10
 8007804:	0800999c 	.word	0x0800999c
 8007808:	08009a3c 	.word	0x08009a3c
 800780c:	080098fc 	.word	0x080098fc

08007810 <rt_thread_exit>:
 8007810:	b538      	push	{r3, r4, r5, lr}
 8007812:	4b15      	ldr	r3, [pc, #84]	; (8007868 <rt_thread_exit+0x58>)
 8007814:	681c      	ldr	r4, [r3, #0]
 8007816:	f7f8 fc79 	bl	800010c <rt_hw_interrupt_disable>
 800781a:	4605      	mov	r5, r0
 800781c:	4620      	mov	r0, r4
 800781e:	f7ff ff53 	bl	80076c8 <rt_schedule_remove_thread>
 8007822:	2004      	movs	r0, #4
 8007824:	f884 0034 	strb.w	r0, [r4, #52]	; 0x34
 8007828:	f104 0044 	add.w	r0, r4, #68	; 0x44
 800782c:	f000 fa24 	bl	8007c78 <rt_timer_detach>
 8007830:	4620      	mov	r0, r4
 8007832:	f7ff fe3d 	bl	80074b0 <rt_object_is_systemobject>
 8007836:	2801      	cmp	r0, #1
 8007838:	d00e      	beq.n	8007858 <rt_thread_exit+0x48>
 800783a:	4b0c      	ldr	r3, [pc, #48]	; (800786c <rt_thread_exit+0x5c>)
 800783c:	f104 0014 	add.w	r0, r4, #20
 8007840:	681a      	ldr	r2, [r3, #0]
 8007842:	6018      	str	r0, [r3, #0]
 8007844:	6050      	str	r0, [r2, #4]
 8007846:	6162      	str	r2, [r4, #20]
 8007848:	61a3      	str	r3, [r4, #24]
 800784a:	4628      	mov	r0, r5
 800784c:	f7f8 fc62 	bl	8000114 <rt_hw_interrupt_enable>
 8007850:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8007854:	f7ff be92 	b.w	800757c <rt_schedule>
 8007858:	6f21      	ldr	r1, [r4, #112]	; 0x70
 800785a:	2900      	cmp	r1, #0
 800785c:	d1ed      	bne.n	800783a <rt_thread_exit+0x2a>
 800785e:	4620      	mov	r0, r4
 8007860:	f7ff fd60 	bl	8007324 <rt_object_detach>
 8007864:	e7f1      	b.n	800784a <rt_thread_exit+0x3a>
 8007866:	bf00      	nop
 8007868:	20001b40 	.word	0x20001b40
 800786c:	20001b48 	.word	0x20001b48

08007870 <_rt_thread_init.isra.0>:
 8007870:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007872:	b085      	sub	sp, #20
 8007874:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8007876:	4604      	mov	r4, r0
 8007878:	f100 0014 	add.w	r0, r0, #20
 800787c:	6221      	str	r1, [r4, #32]
 800787e:	6262      	str	r2, [r4, #36]	; 0x24
 8007880:	2123      	movs	r1, #35	; 0x23
 8007882:	b2aa      	uxth	r2, r5
 8007884:	61a0      	str	r0, [r4, #24]
 8007886:	6160      	str	r0, [r4, #20]
 8007888:	62a3      	str	r3, [r4, #40]	; 0x28
 800788a:	85a5      	strh	r5, [r4, #44]	; 0x2c
 800788c:	4618      	mov	r0, r3
 800788e:	f89d 602c 	ldrb.w	r6, [sp, #44]	; 0x2c
 8007892:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8007894:	f7fe fe8c 	bl	80065b0 <rt_memset>
 8007898:	8da2      	ldrh	r2, [r4, #44]	; 0x2c
 800789a:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 800789c:	1f15      	subs	r5, r2, #4
 800789e:	195a      	adds	r2, r3, r5
 80078a0:	6a20      	ldr	r0, [r4, #32]
 80078a2:	6a61      	ldr	r1, [r4, #36]	; 0x24
 80078a4:	4b15      	ldr	r3, [pc, #84]	; (80078fc <_rt_thread_init.isra.0+0x8c>)
 80078a6:	f000 fb3f 	bl	8007f28 <rt_hw_stack_init>
 80078aa:	2e1f      	cmp	r6, #31
 80078ac:	61e0      	str	r0, [r4, #28]
 80078ae:	d817      	bhi.n	80078e0 <_rt_thread_init.isra.0+0x70>
 80078b0:	2500      	movs	r5, #0
 80078b2:	f884 6036 	strb.w	r6, [r4, #54]	; 0x36
 80078b6:	f884 6035 	strb.w	r6, [r4, #53]	; 0x35
 80078ba:	63e7      	str	r7, [r4, #60]	; 0x3c
 80078bc:	6427      	str	r7, [r4, #64]	; 0x40
 80078be:	6325      	str	r5, [r4, #48]	; 0x30
 80078c0:	f884 5034 	strb.w	r5, [r4, #52]	; 0x34
 80078c4:	6725      	str	r5, [r4, #112]	; 0x70
 80078c6:	6765      	str	r5, [r4, #116]	; 0x74
 80078c8:	f104 0044 	add.w	r0, r4, #68	; 0x44
 80078cc:	4621      	mov	r1, r4
 80078ce:	9500      	str	r5, [sp, #0]
 80078d0:	9501      	str	r5, [sp, #4]
 80078d2:	4a0b      	ldr	r2, [pc, #44]	; (8007900 <_rt_thread_init.isra.0+0x90>)
 80078d4:	4623      	mov	r3, r4
 80078d6:	f000 f99f 	bl	8007c18 <rt_timer_init>
 80078da:	4628      	mov	r0, r5
 80078dc:	b005      	add	sp, #20
 80078de:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80078e0:	2500      	movs	r5, #0
 80078e2:	4808      	ldr	r0, [pc, #32]	; (8007904 <_rt_thread_init.isra.0+0x94>)
 80078e4:	4908      	ldr	r1, [pc, #32]	; (8007908 <_rt_thread_init.isra.0+0x98>)
 80078e6:	4a09      	ldr	r2, [pc, #36]	; (800790c <_rt_thread_init.isra.0+0x9c>)
 80078e8:	236e      	movs	r3, #110	; 0x6e
 80078ea:	f88d 500f 	strb.w	r5, [sp, #15]
 80078ee:	f7ff f9d9 	bl	8006ca4 <rt_kprintf>
 80078f2:	f89d 100f 	ldrb.w	r1, [sp, #15]
 80078f6:	2900      	cmp	r1, #0
 80078f8:	d0fb      	beq.n	80078f2 <_rt_thread_init.isra.0+0x82>
 80078fa:	e7d9      	b.n	80078b0 <_rt_thread_init.isra.0+0x40>
 80078fc:	08007811 	.word	0x08007811
 8007900:	08007791 	.word	0x08007791
 8007904:	08008b10 	.word	0x08008b10
 8007908:	080099c0 	.word	0x080099c0
 800790c:	0800998c 	.word	0x0800998c

08007910 <rt_thread_init>:
 8007910:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007914:	b086      	sub	sp, #24
 8007916:	4604      	mov	r4, r0
 8007918:	4688      	mov	r8, r1
 800791a:	4616      	mov	r6, r2
 800791c:	461f      	mov	r7, r3
 800791e:	9d0c      	ldr	r5, [sp, #48]	; 0x30
 8007920:	b1b0      	cbz	r0, 8007950 <rt_thread_init+0x40>
 8007922:	2d00      	cmp	r5, #0
 8007924:	d022      	beq.n	800796c <rt_thread_init+0x5c>
 8007926:	4620      	mov	r0, r4
 8007928:	4642      	mov	r2, r8
 800792a:	2100      	movs	r1, #0
 800792c:	f7ff fcd4 	bl	80072d8 <rt_object_init>
 8007930:	990d      	ldr	r1, [sp, #52]	; 0x34
 8007932:	f89d 2038 	ldrb.w	r2, [sp, #56]	; 0x38
 8007936:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8007938:	9100      	str	r1, [sp, #0]
 800793a:	9201      	str	r2, [sp, #4]
 800793c:	9302      	str	r3, [sp, #8]
 800793e:	4620      	mov	r0, r4
 8007940:	4631      	mov	r1, r6
 8007942:	463a      	mov	r2, r7
 8007944:	462b      	mov	r3, r5
 8007946:	f7ff ff93 	bl	8007870 <_rt_thread_init.isra.0>
 800794a:	b006      	add	sp, #24
 800794c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8007950:	480d      	ldr	r0, [pc, #52]	; (8007988 <rt_thread_init+0x78>)
 8007952:	490e      	ldr	r1, [pc, #56]	; (800798c <rt_thread_init+0x7c>)
 8007954:	4a0e      	ldr	r2, [pc, #56]	; (8007990 <rt_thread_init+0x80>)
 8007956:	23a8      	movs	r3, #168	; 0xa8
 8007958:	f88d 4016 	strb.w	r4, [sp, #22]
 800795c:	f7ff f9a2 	bl	8006ca4 <rt_kprintf>
 8007960:	f89d 3016 	ldrb.w	r3, [sp, #22]
 8007964:	2b00      	cmp	r3, #0
 8007966:	d0fb      	beq.n	8007960 <rt_thread_init+0x50>
 8007968:	2d00      	cmp	r5, #0
 800796a:	d1dc      	bne.n	8007926 <rt_thread_init+0x16>
 800796c:	4806      	ldr	r0, [pc, #24]	; (8007988 <rt_thread_init+0x78>)
 800796e:	4909      	ldr	r1, [pc, #36]	; (8007994 <rt_thread_init+0x84>)
 8007970:	4a07      	ldr	r2, [pc, #28]	; (8007990 <rt_thread_init+0x80>)
 8007972:	23a9      	movs	r3, #169	; 0xa9
 8007974:	f88d 5017 	strb.w	r5, [sp, #23]
 8007978:	f7ff f994 	bl	8006ca4 <rt_kprintf>
 800797c:	f89d 0017 	ldrb.w	r0, [sp, #23]
 8007980:	2800      	cmp	r0, #0
 8007982:	d0fb      	beq.n	800797c <rt_thread_init+0x6c>
 8007984:	e7cf      	b.n	8007926 <rt_thread_init+0x16>
 8007986:	bf00      	nop
 8007988:	08008b10 	.word	0x08008b10
 800798c:	080098fc 	.word	0x080098fc
 8007990:	08009a1c 	.word	0x08009a1c
 8007994:	080099e4 	.word	0x080099e4

08007998 <rt_thread_self>:
 8007998:	f641 3340 	movw	r3, #6976	; 0x1b40
 800799c:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80079a0:	6818      	ldr	r0, [r3, #0]
 80079a2:	4770      	bx	lr

080079a4 <rt_thread_create>:
 80079a4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80079a6:	4604      	mov	r4, r0
 80079a8:	b087      	sub	sp, #28
 80079aa:	460f      	mov	r7, r1
 80079ac:	2000      	movs	r0, #0
 80079ae:	4621      	mov	r1, r4
 80079b0:	4616      	mov	r6, r2
 80079b2:	461d      	mov	r5, r3
 80079b4:	f7ff fce4 	bl	8007380 <rt_object_allocate>
 80079b8:	4604      	mov	r4, r0
 80079ba:	b178      	cbz	r0, 80079dc <rt_thread_create+0x38>
 80079bc:	4628      	mov	r0, r5
 80079be:	f7ff fabf 	bl	8006f40 <rt_malloc>
 80079c2:	4603      	mov	r3, r0
 80079c4:	b168      	cbz	r0, 80079e2 <rt_thread_create+0x3e>
 80079c6:	f89d 2030 	ldrb.w	r2, [sp, #48]	; 0x30
 80079ca:	980d      	ldr	r0, [sp, #52]	; 0x34
 80079cc:	9201      	str	r2, [sp, #4]
 80079ce:	9002      	str	r0, [sp, #8]
 80079d0:	9500      	str	r5, [sp, #0]
 80079d2:	4620      	mov	r0, r4
 80079d4:	4639      	mov	r1, r7
 80079d6:	4632      	mov	r2, r6
 80079d8:	f7ff ff4a 	bl	8007870 <_rt_thread_init.isra.0>
 80079dc:	4620      	mov	r0, r4
 80079de:	b007      	add	sp, #28
 80079e0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80079e2:	4620      	mov	r0, r4
 80079e4:	9305      	str	r3, [sp, #20]
 80079e6:	f7ff fd1b 	bl	8007420 <rt_object_delete>
 80079ea:	9b05      	ldr	r3, [sp, #20]
 80079ec:	461c      	mov	r4, r3
 80079ee:	e7f5      	b.n	80079dc <rt_thread_create+0x38>

080079f0 <rt_thread_yield>:
 80079f0:	b510      	push	{r4, lr}
 80079f2:	f7f8 fb8b 	bl	800010c <rt_hw_interrupt_disable>
 80079f6:	4b13      	ldr	r3, [pc, #76]	; (8007a44 <rt_thread_yield+0x54>)
 80079f8:	4601      	mov	r1, r0
 80079fa:	681b      	ldr	r3, [r3, #0]
 80079fc:	f893 2034 	ldrb.w	r2, [r3, #52]	; 0x34
 8007a00:	2a01      	cmp	r2, #1
 8007a02:	d004      	beq.n	8007a0e <rt_thread_yield+0x1e>
 8007a04:	4608      	mov	r0, r1
 8007a06:	f7f8 fb85 	bl	8000114 <rt_hw_interrupt_enable>
 8007a0a:	2000      	movs	r0, #0
 8007a0c:	bd10      	pop	{r4, pc}
 8007a0e:	695a      	ldr	r2, [r3, #20]
 8007a10:	699c      	ldr	r4, [r3, #24]
 8007a12:	42a2      	cmp	r2, r4
 8007a14:	d0f6      	beq.n	8007a04 <rt_thread_yield+0x14>
 8007a16:	6054      	str	r4, [r2, #4]
 8007a18:	699c      	ldr	r4, [r3, #24]
 8007a1a:	f103 0114 	add.w	r1, r3, #20
 8007a1e:	6022      	str	r2, [r4, #0]
 8007a20:	f893 4035 	ldrb.w	r4, [r3, #53]	; 0x35
 8007a24:	4a08      	ldr	r2, [pc, #32]	; (8007a48 <rt_thread_yield+0x58>)
 8007a26:	6199      	str	r1, [r3, #24]
 8007a28:	eb02 02c4 	add.w	r2, r2, r4, lsl #3
 8007a2c:	6854      	ldr	r4, [r2, #4]
 8007a2e:	6021      	str	r1, [r4, #0]
 8007a30:	619c      	str	r4, [r3, #24]
 8007a32:	615a      	str	r2, [r3, #20]
 8007a34:	6051      	str	r1, [r2, #4]
 8007a36:	f7f8 fb6d 	bl	8000114 <rt_hw_interrupt_enable>
 8007a3a:	f7ff fd9f 	bl	800757c <rt_schedule>
 8007a3e:	2000      	movs	r0, #0
 8007a40:	bd10      	pop	{r4, pc}
 8007a42:	bf00      	nop
 8007a44:	20001b40 	.word	0x20001b40
 8007a48:	20001a3c 	.word	0x20001a3c

08007a4c <rt_thread_suspend>:
 8007a4c:	b530      	push	{r4, r5, lr}
 8007a4e:	4604      	mov	r4, r0
 8007a50:	b083      	sub	sp, #12
 8007a52:	b1a8      	cbz	r0, 8007a80 <rt_thread_suspend+0x34>
 8007a54:	f894 0034 	ldrb.w	r0, [r4, #52]	; 0x34
 8007a58:	2801      	cmp	r0, #1
 8007a5a:	d10e      	bne.n	8007a7a <rt_thread_suspend+0x2e>
 8007a5c:	f7f8 fb56 	bl	800010c <rt_hw_interrupt_disable>
 8007a60:	2102      	movs	r1, #2
 8007a62:	4605      	mov	r5, r0
 8007a64:	f884 1034 	strb.w	r1, [r4, #52]	; 0x34
 8007a68:	4620      	mov	r0, r4
 8007a6a:	f7ff fe2d 	bl	80076c8 <rt_schedule_remove_thread>
 8007a6e:	4628      	mov	r0, r5
 8007a70:	f7f8 fb50 	bl	8000114 <rt_hw_interrupt_enable>
 8007a74:	2000      	movs	r0, #0
 8007a76:	b003      	add	sp, #12
 8007a78:	bd30      	pop	{r4, r5, pc}
 8007a7a:	f04f 30ff 	mov.w	r0, #4294967295
 8007a7e:	e7fa      	b.n	8007a76 <rt_thread_suspend+0x2a>
 8007a80:	4806      	ldr	r0, [pc, #24]	; (8007a9c <rt_thread_suspend+0x50>)
 8007a82:	4907      	ldr	r1, [pc, #28]	; (8007aa0 <rt_thread_suspend+0x54>)
 8007a84:	4a07      	ldr	r2, [pc, #28]	; (8007aa4 <rt_thread_suspend+0x58>)
 8007a86:	f240 232f 	movw	r3, #559	; 0x22f
 8007a8a:	f88d 4007 	strb.w	r4, [sp, #7]
 8007a8e:	f7ff f909 	bl	8006ca4 <rt_kprintf>
 8007a92:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8007a96:	2b00      	cmp	r3, #0
 8007a98:	d0fb      	beq.n	8007a92 <rt_thread_suspend+0x46>
 8007a9a:	e7db      	b.n	8007a54 <rt_thread_suspend+0x8>
 8007a9c:	08008b10 	.word	0x08008b10
 8007aa0:	080098fc 	.word	0x080098fc
 8007aa4:	08009978 	.word	0x08009978

08007aa8 <rt_thread_sleep>:
 8007aa8:	b570      	push	{r4, r5, r6, lr}
 8007aaa:	b084      	sub	sp, #16
 8007aac:	9001      	str	r0, [sp, #4]
 8007aae:	f7f8 fb2d 	bl	800010c <rt_hw_interrupt_disable>
 8007ab2:	4b16      	ldr	r3, [pc, #88]	; (8007b0c <rt_thread_sleep+0x64>)
 8007ab4:	4606      	mov	r6, r0
 8007ab6:	681c      	ldr	r4, [r3, #0]
 8007ab8:	b1cc      	cbz	r4, 8007aee <rt_thread_sleep+0x46>
 8007aba:	f104 0544 	add.w	r5, r4, #68	; 0x44
 8007abe:	4620      	mov	r0, r4
 8007ac0:	f7ff ffc4 	bl	8007a4c <rt_thread_suspend>
 8007ac4:	2100      	movs	r1, #0
 8007ac6:	aa01      	add	r2, sp, #4
 8007ac8:	4628      	mov	r0, r5
 8007aca:	f000 f9a9 	bl	8007e20 <rt_timer_control>
 8007ace:	4628      	mov	r0, r5
 8007ad0:	f000 f8fc 	bl	8007ccc <rt_timer_start>
 8007ad4:	4630      	mov	r0, r6
 8007ad6:	f7f8 fb1d 	bl	8000114 <rt_hw_interrupt_enable>
 8007ada:	f7ff fd4f 	bl	800757c <rt_schedule>
 8007ade:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8007ae0:	1c8b      	adds	r3, r1, #2
 8007ae2:	d101      	bne.n	8007ae8 <rt_thread_sleep+0x40>
 8007ae4:	2200      	movs	r2, #0
 8007ae6:	6322      	str	r2, [r4, #48]	; 0x30
 8007ae8:	2000      	movs	r0, #0
 8007aea:	b004      	add	sp, #16
 8007aec:	bd70      	pop	{r4, r5, r6, pc}
 8007aee:	4808      	ldr	r0, [pc, #32]	; (8007b10 <rt_thread_sleep+0x68>)
 8007af0:	4908      	ldr	r1, [pc, #32]	; (8007b14 <rt_thread_sleep+0x6c>)
 8007af2:	4a09      	ldr	r2, [pc, #36]	; (8007b18 <rt_thread_sleep+0x70>)
 8007af4:	f44f 73d7 	mov.w	r3, #430	; 0x1ae
 8007af8:	f88d 400f 	strb.w	r4, [sp, #15]
 8007afc:	f7ff f8d2 	bl	8006ca4 <rt_kprintf>
 8007b00:	f89d 000f 	ldrb.w	r0, [sp, #15]
 8007b04:	2800      	cmp	r0, #0
 8007b06:	d0fb      	beq.n	8007b00 <rt_thread_sleep+0x58>
 8007b08:	e7d7      	b.n	8007aba <rt_thread_sleep+0x12>
 8007b0a:	bf00      	nop
 8007b0c:	20001b40 	.word	0x20001b40
 8007b10:	08008b10 	.word	0x08008b10
 8007b14:	080098fc 	.word	0x080098fc
 8007b18:	08009a2c 	.word	0x08009a2c

08007b1c <rt_thread_delay>:
 8007b1c:	f7ff bfc4 	b.w	8007aa8 <rt_thread_sleep>

08007b20 <rt_thread_resume>:
 8007b20:	b530      	push	{r4, r5, lr}
 8007b22:	4604      	mov	r4, r0
 8007b24:	b083      	sub	sp, #12
 8007b26:	b1f8      	cbz	r0, 8007b68 <rt_thread_resume+0x48>
 8007b28:	f894 0034 	ldrb.w	r0, [r4, #52]	; 0x34
 8007b2c:	2802      	cmp	r0, #2
 8007b2e:	d118      	bne.n	8007b62 <rt_thread_resume+0x42>
 8007b30:	f7f8 faec 	bl	800010c <rt_hw_interrupt_disable>
 8007b34:	6962      	ldr	r2, [r4, #20]
 8007b36:	69a1      	ldr	r1, [r4, #24]
 8007b38:	f104 0314 	add.w	r3, r4, #20
 8007b3c:	6051      	str	r1, [r2, #4]
 8007b3e:	69a1      	ldr	r1, [r4, #24]
 8007b40:	4605      	mov	r5, r0
 8007b42:	600a      	str	r2, [r1, #0]
 8007b44:	61a3      	str	r3, [r4, #24]
 8007b46:	6163      	str	r3, [r4, #20]
 8007b48:	f104 0044 	add.w	r0, r4, #68	; 0x44
 8007b4c:	f000 f92e 	bl	8007dac <rt_timer_stop>
 8007b50:	4628      	mov	r0, r5
 8007b52:	f7f8 fadf 	bl	8000114 <rt_hw_interrupt_enable>
 8007b56:	4620      	mov	r0, r4
 8007b58:	f7ff fd80 	bl	800765c <rt_schedule_insert_thread>
 8007b5c:	2000      	movs	r0, #0
 8007b5e:	b003      	add	sp, #12
 8007b60:	bd30      	pop	{r4, r5, pc}
 8007b62:	f04f 30ff 	mov.w	r0, #4294967295
 8007b66:	e7fa      	b.n	8007b5e <rt_thread_resume+0x3e>
 8007b68:	4806      	ldr	r0, [pc, #24]	; (8007b84 <rt_thread_resume+0x64>)
 8007b6a:	4907      	ldr	r1, [pc, #28]	; (8007b88 <rt_thread_resume+0x68>)
 8007b6c:	4a07      	ldr	r2, [pc, #28]	; (8007b8c <rt_thread_resume+0x6c>)
 8007b6e:	f240 2355 	movw	r3, #597	; 0x255
 8007b72:	f88d 4007 	strb.w	r4, [sp, #7]
 8007b76:	f7ff f895 	bl	8006ca4 <rt_kprintf>
 8007b7a:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8007b7e:	2b00      	cmp	r3, #0
 8007b80:	d0fb      	beq.n	8007b7a <rt_thread_resume+0x5a>
 8007b82:	e7d1      	b.n	8007b28 <rt_thread_resume+0x8>
 8007b84:	08008b10 	.word	0x08008b10
 8007b88:	080098fc 	.word	0x080098fc
 8007b8c:	08009a50 	.word	0x08009a50

08007b90 <rt_thread_startup>:
 8007b90:	b530      	push	{r4, r5, lr}
 8007b92:	4604      	mov	r4, r0
 8007b94:	b083      	sub	sp, #12
 8007b96:	2800      	cmp	r0, #0
 8007b98:	d026      	beq.n	8007be8 <rt_thread_startup+0x58>
 8007b9a:	f894 0034 	ldrb.w	r0, [r4, #52]	; 0x34
 8007b9e:	b9a8      	cbnz	r0, 8007bcc <rt_thread_startup+0x3c>
 8007ba0:	f894 3036 	ldrb.w	r3, [r4, #54]	; 0x36
 8007ba4:	2201      	movs	r2, #1
 8007ba6:	fa02 f203 	lsl.w	r2, r2, r3
 8007baa:	2002      	movs	r0, #2
 8007bac:	f884 3035 	strb.w	r3, [r4, #53]	; 0x35
 8007bb0:	f884 0034 	strb.w	r0, [r4, #52]	; 0x34
 8007bb4:	63a2      	str	r2, [r4, #56]	; 0x38
 8007bb6:	4620      	mov	r0, r4
 8007bb8:	f7ff ffb2 	bl	8007b20 <rt_thread_resume>
 8007bbc:	4911      	ldr	r1, [pc, #68]	; (8007c04 <rt_thread_startup+0x74>)
 8007bbe:	680b      	ldr	r3, [r1, #0]
 8007bc0:	b10b      	cbz	r3, 8007bc6 <rt_thread_startup+0x36>
 8007bc2:	f7ff fcdb 	bl	800757c <rt_schedule>
 8007bc6:	2000      	movs	r0, #0
 8007bc8:	b003      	add	sp, #12
 8007bca:	bd30      	pop	{r4, r5, pc}
 8007bcc:	2500      	movs	r5, #0
 8007bce:	480e      	ldr	r0, [pc, #56]	; (8007c08 <rt_thread_startup+0x78>)
 8007bd0:	490e      	ldr	r1, [pc, #56]	; (8007c0c <rt_thread_startup+0x7c>)
 8007bd2:	4a0f      	ldr	r2, [pc, #60]	; (8007c10 <rt_thread_startup+0x80>)
 8007bd4:	23cf      	movs	r3, #207	; 0xcf
 8007bd6:	f88d 5007 	strb.w	r5, [sp, #7]
 8007bda:	f7ff f863 	bl	8006ca4 <rt_kprintf>
 8007bde:	f89d 1007 	ldrb.w	r1, [sp, #7]
 8007be2:	2900      	cmp	r1, #0
 8007be4:	d0fb      	beq.n	8007bde <rt_thread_startup+0x4e>
 8007be6:	e7db      	b.n	8007ba0 <rt_thread_startup+0x10>
 8007be8:	4807      	ldr	r0, [pc, #28]	; (8007c08 <rt_thread_startup+0x78>)
 8007bea:	490a      	ldr	r1, [pc, #40]	; (8007c14 <rt_thread_startup+0x84>)
 8007bec:	4a08      	ldr	r2, [pc, #32]	; (8007c10 <rt_thread_startup+0x80>)
 8007bee:	23ce      	movs	r3, #206	; 0xce
 8007bf0:	f88d 4006 	strb.w	r4, [sp, #6]
 8007bf4:	f7ff f856 	bl	8006ca4 <rt_kprintf>
 8007bf8:	f89d 3006 	ldrb.w	r3, [sp, #6]
 8007bfc:	2b00      	cmp	r3, #0
 8007bfe:	d0fb      	beq.n	8007bf8 <rt_thread_startup+0x68>
 8007c00:	e7cb      	b.n	8007b9a <rt_thread_startup+0xa>
 8007c02:	bf00      	nop
 8007c04:	20001b40 	.word	0x20001b40
 8007c08:	08008b10 	.word	0x08008b10
 8007c0c:	080099fc 	.word	0x080099fc
 8007c10:	08009964 	.word	0x08009964
 8007c14:	080098fc 	.word	0x080098fc

08007c18 <rt_timer_init>:
 8007c18:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007c1a:	4604      	mov	r4, r0
 8007c1c:	b083      	sub	sp, #12
 8007c1e:	460f      	mov	r7, r1
 8007c20:	4615      	mov	r5, r2
 8007c22:	461e      	mov	r6, r3
 8007c24:	b1a8      	cbz	r0, 8007c52 <rt_timer_init+0x3a>
 8007c26:	4620      	mov	r0, r4
 8007c28:	2104      	movs	r1, #4
 8007c2a:	463a      	mov	r2, r7
 8007c2c:	f7ff fb54 	bl	80072d8 <rt_object_init>
 8007c30:	f89d 0024 	ldrb.w	r0, [sp, #36]	; 0x24
 8007c34:	f104 0114 	add.w	r1, r4, #20
 8007c38:	f020 0201 	bic.w	r2, r0, #1
 8007c3c:	9808      	ldr	r0, [sp, #32]
 8007c3e:	2300      	movs	r3, #0
 8007c40:	7262      	strb	r2, [r4, #9]
 8007c42:	61e5      	str	r5, [r4, #28]
 8007c44:	6226      	str	r6, [r4, #32]
 8007c46:	62a3      	str	r3, [r4, #40]	; 0x28
 8007c48:	6260      	str	r0, [r4, #36]	; 0x24
 8007c4a:	61a1      	str	r1, [r4, #24]
 8007c4c:	6161      	str	r1, [r4, #20]
 8007c4e:	b003      	add	sp, #12
 8007c50:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007c52:	4806      	ldr	r0, [pc, #24]	; (8007c6c <rt_timer_init+0x54>)
 8007c54:	4906      	ldr	r1, [pc, #24]	; (8007c70 <rt_timer_init+0x58>)
 8007c56:	4a07      	ldr	r2, [pc, #28]	; (8007c74 <rt_timer_init+0x5c>)
 8007c58:	23b8      	movs	r3, #184	; 0xb8
 8007c5a:	f88d 4007 	strb.w	r4, [sp, #7]
 8007c5e:	f7ff f821 	bl	8006ca4 <rt_kprintf>
 8007c62:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8007c66:	2b00      	cmp	r3, #0
 8007c68:	d0fb      	beq.n	8007c62 <rt_timer_init+0x4a>
 8007c6a:	e7dc      	b.n	8007c26 <rt_timer_init+0xe>
 8007c6c:	08008b10 	.word	0x08008b10
 8007c70:	08009aac 	.word	0x08009aac
 8007c74:	08009a64 	.word	0x08009a64

08007c78 <rt_timer_detach>:
 8007c78:	b510      	push	{r4, lr}
 8007c7a:	4604      	mov	r4, r0
 8007c7c:	b082      	sub	sp, #8
 8007c7e:	b190      	cbz	r0, 8007ca6 <rt_timer_detach+0x2e>
 8007c80:	f7f8 fa44 	bl	800010c <rt_hw_interrupt_disable>
 8007c84:	6962      	ldr	r2, [r4, #20]
 8007c86:	69a1      	ldr	r1, [r4, #24]
 8007c88:	f104 0314 	add.w	r3, r4, #20
 8007c8c:	6051      	str	r1, [r2, #4]
 8007c8e:	69a1      	ldr	r1, [r4, #24]
 8007c90:	61a3      	str	r3, [r4, #24]
 8007c92:	600a      	str	r2, [r1, #0]
 8007c94:	6163      	str	r3, [r4, #20]
 8007c96:	f7f8 fa3d 	bl	8000114 <rt_hw_interrupt_enable>
 8007c9a:	4620      	mov	r0, r4
 8007c9c:	f7ff fb42 	bl	8007324 <rt_object_detach>
 8007ca0:	2000      	movs	r0, #0
 8007ca2:	b002      	add	sp, #8
 8007ca4:	bd10      	pop	{r4, pc}
 8007ca6:	4806      	ldr	r0, [pc, #24]	; (8007cc0 <rt_timer_detach+0x48>)
 8007ca8:	4906      	ldr	r1, [pc, #24]	; (8007cc4 <rt_timer_detach+0x4c>)
 8007caa:	4a07      	ldr	r2, [pc, #28]	; (8007cc8 <rt_timer_detach+0x50>)
 8007cac:	23cd      	movs	r3, #205	; 0xcd
 8007cae:	f88d 4007 	strb.w	r4, [sp, #7]
 8007cb2:	f7fe fff7 	bl	8006ca4 <rt_kprintf>
 8007cb6:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8007cba:	2b00      	cmp	r3, #0
 8007cbc:	d0fb      	beq.n	8007cb6 <rt_timer_detach+0x3e>
 8007cbe:	e7df      	b.n	8007c80 <rt_timer_detach+0x8>
 8007cc0:	08008b10 	.word	0x08008b10
 8007cc4:	08009aac 	.word	0x08009aac
 8007cc8:	08009a74 	.word	0x08009a74

08007ccc <rt_timer_start>:
 8007ccc:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007cce:	4605      	mov	r5, r0
 8007cd0:	b083      	sub	sp, #12
 8007cd2:	2800      	cmp	r0, #0
 8007cd4:	d04a      	beq.n	8007d6c <rt_timer_start+0xa0>
 8007cd6:	7a68      	ldrb	r0, [r5, #9]
 8007cd8:	07c3      	lsls	r3, r0, #31
 8007cda:	d455      	bmi.n	8007d88 <rt_timer_start+0xbc>
 8007cdc:	492c      	ldr	r1, [pc, #176]	; (8007d90 <rt_timer_start+0xc4>)
 8007cde:	680a      	ldr	r2, [r1, #0]
 8007ce0:	b10a      	cbz	r2, 8007ce6 <rt_timer_start+0x1a>
 8007ce2:	4628      	mov	r0, r5
 8007ce4:	4790      	blx	r2
 8007ce6:	f64f 74fe 	movw	r4, #65534	; 0xfffe
 8007cea:	6a6f      	ldr	r7, [r5, #36]	; 0x24
 8007cec:	f6c7 74ff 	movt	r4, #32767	; 0x7fff
 8007cf0:	42a7      	cmp	r7, r4
 8007cf2:	d82c      	bhi.n	8007d4e <rt_timer_start+0x82>
 8007cf4:	f7fd ffea 	bl	8005ccc <rt_tick_get>
 8007cf8:	6a69      	ldr	r1, [r5, #36]	; 0x24
 8007cfa:	1840      	adds	r0, r0, r1
 8007cfc:	62a8      	str	r0, [r5, #40]	; 0x28
 8007cfe:	f7f8 fa05 	bl	800010c <rt_hw_interrupt_disable>
 8007d02:	4b24      	ldr	r3, [pc, #144]	; (8007d94 <rt_timer_start+0xc8>)
 8007d04:	f64f 7efe 	movw	lr, #65534	; 0xfffe
 8007d08:	685f      	ldr	r7, [r3, #4]
 8007d0a:	f6c7 7eff 	movt	lr, #32767	; 0x7fff
 8007d0e:	e008      	b.n	8007d22 <rt_timer_start+0x56>
 8007d10:	6aa9      	ldr	r1, [r5, #40]	; 0x28
 8007d12:	6954      	ldr	r4, [r2, #20]
 8007d14:	428c      	cmp	r4, r1
 8007d16:	ebc1 0604 	rsb	r6, r1, r4
 8007d1a:	d001      	beq.n	8007d20 <rt_timer_start+0x54>
 8007d1c:	4576      	cmp	r6, lr
 8007d1e:	d903      	bls.n	8007d28 <rt_timer_start+0x5c>
 8007d20:	4613      	mov	r3, r2
 8007d22:	429f      	cmp	r7, r3
 8007d24:	681a      	ldr	r2, [r3, #0]
 8007d26:	d1f3      	bne.n	8007d10 <rt_timer_start+0x44>
 8007d28:	f105 0414 	add.w	r4, r5, #20
 8007d2c:	6054      	str	r4, [r2, #4]
 8007d2e:	491a      	ldr	r1, [pc, #104]	; (8007d98 <rt_timer_start+0xcc>)
 8007d30:	616a      	str	r2, [r5, #20]
 8007d32:	601c      	str	r4, [r3, #0]
 8007d34:	7a6c      	ldrb	r4, [r5, #9]
 8007d36:	680a      	ldr	r2, [r1, #0]
 8007d38:	f044 0401 	orr.w	r4, r4, #1
 8007d3c:	3201      	adds	r2, #1
 8007d3e:	61ab      	str	r3, [r5, #24]
 8007d40:	726c      	strb	r4, [r5, #9]
 8007d42:	600a      	str	r2, [r1, #0]
 8007d44:	f7f8 f9e6 	bl	8000114 <rt_hw_interrupt_enable>
 8007d48:	2000      	movs	r0, #0
 8007d4a:	b003      	add	sp, #12
 8007d4c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007d4e:	2400      	movs	r4, #0
 8007d50:	4812      	ldr	r0, [pc, #72]	; (8007d9c <rt_timer_start+0xd0>)
 8007d52:	4913      	ldr	r1, [pc, #76]	; (8007da0 <rt_timer_start+0xd4>)
 8007d54:	4a13      	ldr	r2, [pc, #76]	; (8007da4 <rt_timer_start+0xd8>)
 8007d56:	f44f 739b 	mov.w	r3, #310	; 0x136
 8007d5a:	f88d 4007 	strb.w	r4, [sp, #7]
 8007d5e:	f7fe ffa1 	bl	8006ca4 <rt_kprintf>
 8007d62:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8007d66:	2b00      	cmp	r3, #0
 8007d68:	d0fb      	beq.n	8007d62 <rt_timer_start+0x96>
 8007d6a:	e7c3      	b.n	8007cf4 <rt_timer_start+0x28>
 8007d6c:	480b      	ldr	r0, [pc, #44]	; (8007d9c <rt_timer_start+0xd0>)
 8007d6e:	490e      	ldr	r1, [pc, #56]	; (8007da8 <rt_timer_start+0xdc>)
 8007d70:	4a0c      	ldr	r2, [pc, #48]	; (8007da4 <rt_timer_start+0xd8>)
 8007d72:	f44f 7396 	mov.w	r3, #300	; 0x12c
 8007d76:	f88d 5006 	strb.w	r5, [sp, #6]
 8007d7a:	f7fe ff93 	bl	8006ca4 <rt_kprintf>
 8007d7e:	f89d 3006 	ldrb.w	r3, [sp, #6]
 8007d82:	2b00      	cmp	r3, #0
 8007d84:	d0fb      	beq.n	8007d7e <rt_timer_start+0xb2>
 8007d86:	e7a6      	b.n	8007cd6 <rt_timer_start+0xa>
 8007d88:	f04f 30ff 	mov.w	r0, #4294967295
 8007d8c:	e7dd      	b.n	8007d4a <rt_timer_start+0x7e>
 8007d8e:	bf00      	nop
 8007d90:	20001a34 	.word	0x20001a34
 8007d94:	20000978 	.word	0x20000978
 8007d98:	20000980 	.word	0x20000980
 8007d9c:	08008b10 	.word	0x08008b10
 8007da0:	08009ac0 	.word	0x08009ac0
 8007da4:	08009ae4 	.word	0x08009ae4
 8007da8:	08009aac 	.word	0x08009aac

08007dac <rt_timer_stop>:
 8007dac:	b510      	push	{r4, lr}
 8007dae:	4604      	mov	r4, r0
 8007db0:	b082      	sub	sp, #8
 8007db2:	b1d8      	cbz	r0, 8007dec <rt_timer_stop+0x40>
 8007db4:	7a60      	ldrb	r0, [r4, #9]
 8007db6:	07c2      	lsls	r2, r0, #31
 8007db8:	d526      	bpl.n	8007e08 <rt_timer_stop+0x5c>
 8007dba:	4915      	ldr	r1, [pc, #84]	; (8007e10 <rt_timer_stop+0x64>)
 8007dbc:	680a      	ldr	r2, [r1, #0]
 8007dbe:	b10a      	cbz	r2, 8007dc4 <rt_timer_stop+0x18>
 8007dc0:	4620      	mov	r0, r4
 8007dc2:	4790      	blx	r2
 8007dc4:	f7f8 f9a2 	bl	800010c <rt_hw_interrupt_disable>
 8007dc8:	6962      	ldr	r2, [r4, #20]
 8007dca:	69a1      	ldr	r1, [r4, #24]
 8007dcc:	f104 0314 	add.w	r3, r4, #20
 8007dd0:	6051      	str	r1, [r2, #4]
 8007dd2:	69a1      	ldr	r1, [r4, #24]
 8007dd4:	61a3      	str	r3, [r4, #24]
 8007dd6:	600a      	str	r2, [r1, #0]
 8007dd8:	6163      	str	r3, [r4, #20]
 8007dda:	f7f8 f99b 	bl	8000114 <rt_hw_interrupt_enable>
 8007dde:	7a62      	ldrb	r2, [r4, #9]
 8007de0:	2000      	movs	r0, #0
 8007de2:	f022 0301 	bic.w	r3, r2, #1
 8007de6:	7263      	strb	r3, [r4, #9]
 8007de8:	b002      	add	sp, #8
 8007dea:	bd10      	pop	{r4, pc}
 8007dec:	4809      	ldr	r0, [pc, #36]	; (8007e14 <rt_timer_stop+0x68>)
 8007dee:	490a      	ldr	r1, [pc, #40]	; (8007e18 <rt_timer_stop+0x6c>)
 8007df0:	4a0a      	ldr	r2, [pc, #40]	; (8007e1c <rt_timer_stop+0x70>)
 8007df2:	f44f 73cf 	mov.w	r3, #414	; 0x19e
 8007df6:	f88d 4007 	strb.w	r4, [sp, #7]
 8007dfa:	f7fe ff53 	bl	8006ca4 <rt_kprintf>
 8007dfe:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8007e02:	2b00      	cmp	r3, #0
 8007e04:	d0fb      	beq.n	8007dfe <rt_timer_stop+0x52>
 8007e06:	e7d5      	b.n	8007db4 <rt_timer_stop+0x8>
 8007e08:	f04f 30ff 	mov.w	r0, #4294967295
 8007e0c:	e7ec      	b.n	8007de8 <rt_timer_stop+0x3c>
 8007e0e:	bf00      	nop
 8007e10:	20001a30 	.word	0x20001a30
 8007e14:	08008b10 	.word	0x08008b10
 8007e18:	08009aac 	.word	0x08009aac
 8007e1c:	08009a84 	.word	0x08009a84

08007e20 <rt_timer_control>:
 8007e20:	b570      	push	{r4, r5, r6, lr}
 8007e22:	4604      	mov	r4, r0
 8007e24:	b082      	sub	sp, #8
 8007e26:	460d      	mov	r5, r1
 8007e28:	4616      	mov	r6, r2
 8007e2a:	b1b8      	cbz	r0, 8007e5c <rt_timer_control+0x3c>
 8007e2c:	2d03      	cmp	r5, #3
 8007e2e:	d807      	bhi.n	8007e40 <rt_timer_control+0x20>
 8007e30:	e8df f005 	tbb	[pc, r5]
 8007e34:	02090e11 	.word	0x02090e11
 8007e38:	7a60      	ldrb	r0, [r4, #9]
 8007e3a:	f040 0102 	orr.w	r1, r0, #2
 8007e3e:	7261      	strb	r1, [r4, #9]
 8007e40:	2000      	movs	r0, #0
 8007e42:	b002      	add	sp, #8
 8007e44:	bd70      	pop	{r4, r5, r6, pc}
 8007e46:	7a62      	ldrb	r2, [r4, #9]
 8007e48:	f022 0302 	bic.w	r3, r2, #2
 8007e4c:	7263      	strb	r3, [r4, #9]
 8007e4e:	e7f7      	b.n	8007e40 <rt_timer_control+0x20>
 8007e50:	6a60      	ldr	r0, [r4, #36]	; 0x24
 8007e52:	6030      	str	r0, [r6, #0]
 8007e54:	e7f4      	b.n	8007e40 <rt_timer_control+0x20>
 8007e56:	6831      	ldr	r1, [r6, #0]
 8007e58:	6261      	str	r1, [r4, #36]	; 0x24
 8007e5a:	e7f1      	b.n	8007e40 <rt_timer_control+0x20>
 8007e5c:	4806      	ldr	r0, [pc, #24]	; (8007e78 <rt_timer_control+0x58>)
 8007e5e:	4907      	ldr	r1, [pc, #28]	; (8007e7c <rt_timer_control+0x5c>)
 8007e60:	4a07      	ldr	r2, [pc, #28]	; (8007e80 <rt_timer_control+0x60>)
 8007e62:	f240 13bf 	movw	r3, #447	; 0x1bf
 8007e66:	f88d 4007 	strb.w	r4, [sp, #7]
 8007e6a:	f7fe ff1b 	bl	8006ca4 <rt_kprintf>
 8007e6e:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8007e72:	2b00      	cmp	r3, #0
 8007e74:	d0fb      	beq.n	8007e6e <rt_timer_control+0x4e>
 8007e76:	e7d9      	b.n	8007e2c <rt_timer_control+0xc>
 8007e78:	08008b10 	.word	0x08008b10
 8007e7c:	08009aac 	.word	0x08009aac
 8007e80:	08009a94 	.word	0x08009a94

08007e84 <rt_timer_check>:
 8007e84:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8007e88:	f7fd ff20 	bl	8005ccc <rt_tick_get>
 8007e8c:	4682      	mov	sl, r0
 8007e8e:	f7f8 f93d 	bl	800010c <rt_hw_interrupt_disable>
 8007e92:	f64f 77fe 	movw	r7, #65534	; 0xfffe
 8007e96:	4e1d      	ldr	r6, [pc, #116]	; (8007f0c <rt_timer_check+0x88>)
 8007e98:	f8df 8074 	ldr.w	r8, [pc, #116]	; 8007f10 <rt_timer_check+0x8c>
 8007e9c:	4681      	mov	r9, r0
 8007e9e:	f6c7 77ff 	movt	r7, #32767	; 0x7fff
 8007ea2:	6834      	ldr	r4, [r6, #0]
 8007ea4:	f1a4 0514 	sub.w	r5, r4, #20
 8007ea8:	42b4      	cmp	r4, r6
 8007eaa:	4628      	mov	r0, r5
 8007eac:	d028      	beq.n	8007f00 <rt_timer_check+0x7c>
 8007eae:	6963      	ldr	r3, [r4, #20]
 8007eb0:	ebc3 010a 	rsb	r1, r3, sl
 8007eb4:	42b9      	cmp	r1, r7
 8007eb6:	d823      	bhi.n	8007f00 <rt_timer_check+0x7c>
 8007eb8:	f8d8 2000 	ldr.w	r2, [r8]
 8007ebc:	b102      	cbz	r2, 8007ec0 <rt_timer_check+0x3c>
 8007ebe:	4790      	blx	r2
 8007ec0:	e894 000a 	ldmia.w	r4, {r1, r3}
 8007ec4:	68e0      	ldr	r0, [r4, #12]
 8007ec6:	604b      	str	r3, [r1, #4]
 8007ec8:	6862      	ldr	r2, [r4, #4]
 8007eca:	68a3      	ldr	r3, [r4, #8]
 8007ecc:	6064      	str	r4, [r4, #4]
 8007ece:	6011      	str	r1, [r2, #0]
 8007ed0:	6024      	str	r4, [r4, #0]
 8007ed2:	4798      	blx	r3
 8007ed4:	f7fd fefa 	bl	8005ccc <rt_tick_get>
 8007ed8:	4682      	mov	sl, r0
 8007eda:	f814 0c0b 	ldrb.w	r0, [r4, #-11]
 8007ede:	f000 0103 	and.w	r1, r0, #3
 8007ee2:	f020 0201 	bic.w	r2, r0, #1
 8007ee6:	2903      	cmp	r1, #3
 8007ee8:	f804 2c0b 	strb.w	r2, [r4, #-11]
 8007eec:	d1d9      	bne.n	8007ea2 <rt_timer_check+0x1e>
 8007eee:	4628      	mov	r0, r5
 8007ef0:	f7ff feec 	bl	8007ccc <rt_timer_start>
 8007ef4:	6834      	ldr	r4, [r6, #0]
 8007ef6:	f1a4 0514 	sub.w	r5, r4, #20
 8007efa:	42b4      	cmp	r4, r6
 8007efc:	4628      	mov	r0, r5
 8007efe:	d1d6      	bne.n	8007eae <rt_timer_check+0x2a>
 8007f00:	4648      	mov	r0, r9
 8007f02:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8007f06:	f7f8 b905 	b.w	8000114 <rt_hw_interrupt_enable>
 8007f0a:	bf00      	nop
 8007f0c:	20000978 	.word	0x20000978
 8007f10:	20000984 	.word	0x20000984

08007f14 <rt_system_timer_init>:
 8007f14:	f640 1378 	movw	r3, #2424	; 0x978
 8007f18:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8007f1c:	605b      	str	r3, [r3, #4]
 8007f1e:	601b      	str	r3, [r3, #0]
 8007f20:	4770      	bx	lr
 8007f22:	bf00      	nop

08007f24 <rt_system_timer_thread_init>:
 8007f24:	4770      	bx	lr
 8007f26:	bf00      	nop

08007f28 <rt_hw_stack_init>:
 8007f28:	3204      	adds	r2, #4
 8007f2a:	b430      	push	{r4, r5}
 8007f2c:	f022 0207 	bic.w	r2, r2, #7
 8007f30:	f64b 64ef 	movw	r4, #48879	; 0xbeef
 8007f34:	f6cd 64ad 	movt	r4, #57005	; 0xdead
 8007f38:	2500      	movs	r5, #0
 8007f3a:	f842 3c0c 	str.w	r3, [r2, #-12]
 8007f3e:	f04f 7380 	mov.w	r3, #16777216	; 0x1000000
 8007f42:	f842 0c08 	str.w	r0, [r2, #-8]
 8007f46:	f842 4c40 	str.w	r4, [r2, #-64]
 8007f4a:	f842 4c3c 	str.w	r4, [r2, #-60]
 8007f4e:	f842 4c38 	str.w	r4, [r2, #-56]
 8007f52:	f842 4c34 	str.w	r4, [r2, #-52]
 8007f56:	f842 4c30 	str.w	r4, [r2, #-48]
 8007f5a:	f842 4c2c 	str.w	r4, [r2, #-44]
 8007f5e:	f842 4c28 	str.w	r4, [r2, #-40]
 8007f62:	f842 4c24 	str.w	r4, [r2, #-36]
 8007f66:	f842 1c20 	str.w	r1, [r2, #-32]
 8007f6a:	f842 5c1c 	str.w	r5, [r2, #-28]
 8007f6e:	f842 5c18 	str.w	r5, [r2, #-24]
 8007f72:	f842 5c14 	str.w	r5, [r2, #-20]
 8007f76:	f842 5c10 	str.w	r5, [r2, #-16]
 8007f7a:	f842 3c04 	str.w	r3, [r2, #-4]
 8007f7e:	f1a2 0040 	sub.w	r0, r2, #64	; 0x40
 8007f82:	bc30      	pop	{r4, r5}
 8007f84:	4770      	bx	lr
 8007f86:	bf00      	nop

08007f88 <rt_hw_hard_fault_exception>:
 8007f88:	4b2b      	ldr	r3, [pc, #172]	; (8008038 <rt_hw_hard_fault_exception+0xb0>)
 8007f8a:	b510      	push	{r4, lr}
 8007f8c:	6819      	ldr	r1, [r3, #0]
 8007f8e:	4604      	mov	r4, r0
 8007f90:	b111      	cbz	r1, 8007f98 <rt_hw_hard_fault_exception+0x10>
 8007f92:	4788      	blx	r1
 8007f94:	2800      	cmp	r0, #0
 8007f96:	d04d      	beq.n	8008034 <rt_hw_hard_fault_exception+0xac>
 8007f98:	4828      	ldr	r0, [pc, #160]	; (800803c <rt_hw_hard_fault_exception+0xb4>)
 8007f9a:	6c21      	ldr	r1, [r4, #64]	; 0x40
 8007f9c:	f7fe fe82 	bl	8006ca4 <rt_kprintf>
 8007fa0:	4827      	ldr	r0, [pc, #156]	; (8008040 <rt_hw_hard_fault_exception+0xb8>)
 8007fa2:	6a61      	ldr	r1, [r4, #36]	; 0x24
 8007fa4:	f7fe fe7e 	bl	8006ca4 <rt_kprintf>
 8007fa8:	4826      	ldr	r0, [pc, #152]	; (8008044 <rt_hw_hard_fault_exception+0xbc>)
 8007faa:	6aa1      	ldr	r1, [r4, #40]	; 0x28
 8007fac:	f7fe fe7a 	bl	8006ca4 <rt_kprintf>
 8007fb0:	4825      	ldr	r0, [pc, #148]	; (8008048 <rt_hw_hard_fault_exception+0xc0>)
 8007fb2:	6ae1      	ldr	r1, [r4, #44]	; 0x2c
 8007fb4:	f7fe fe76 	bl	8006ca4 <rt_kprintf>
 8007fb8:	4824      	ldr	r0, [pc, #144]	; (800804c <rt_hw_hard_fault_exception+0xc4>)
 8007fba:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8007fbc:	f7fe fe72 	bl	8006ca4 <rt_kprintf>
 8007fc0:	4823      	ldr	r0, [pc, #140]	; (8008050 <rt_hw_hard_fault_exception+0xc8>)
 8007fc2:	6861      	ldr	r1, [r4, #4]
 8007fc4:	f7fe fe6e 	bl	8006ca4 <rt_kprintf>
 8007fc8:	4822      	ldr	r0, [pc, #136]	; (8008054 <rt_hw_hard_fault_exception+0xcc>)
 8007fca:	68a1      	ldr	r1, [r4, #8]
 8007fcc:	f7fe fe6a 	bl	8006ca4 <rt_kprintf>
 8007fd0:	4821      	ldr	r0, [pc, #132]	; (8008058 <rt_hw_hard_fault_exception+0xd0>)
 8007fd2:	68e1      	ldr	r1, [r4, #12]
 8007fd4:	f7fe fe66 	bl	8006ca4 <rt_kprintf>
 8007fd8:	4820      	ldr	r0, [pc, #128]	; (800805c <rt_hw_hard_fault_exception+0xd4>)
 8007fda:	6921      	ldr	r1, [r4, #16]
 8007fdc:	f7fe fe62 	bl	8006ca4 <rt_kprintf>
 8007fe0:	481f      	ldr	r0, [pc, #124]	; (8008060 <rt_hw_hard_fault_exception+0xd8>)
 8007fe2:	6961      	ldr	r1, [r4, #20]
 8007fe4:	f7fe fe5e 	bl	8006ca4 <rt_kprintf>
 8007fe8:	481e      	ldr	r0, [pc, #120]	; (8008064 <rt_hw_hard_fault_exception+0xdc>)
 8007fea:	69a1      	ldr	r1, [r4, #24]
 8007fec:	f7fe fe5a 	bl	8006ca4 <rt_kprintf>
 8007ff0:	481d      	ldr	r0, [pc, #116]	; (8008068 <rt_hw_hard_fault_exception+0xe0>)
 8007ff2:	69e1      	ldr	r1, [r4, #28]
 8007ff4:	f7fe fe56 	bl	8006ca4 <rt_kprintf>
 8007ff8:	481c      	ldr	r0, [pc, #112]	; (800806c <rt_hw_hard_fault_exception+0xe4>)
 8007ffa:	6a21      	ldr	r1, [r4, #32]
 8007ffc:	f7fe fe52 	bl	8006ca4 <rt_kprintf>
 8008000:	481b      	ldr	r0, [pc, #108]	; (8008070 <rt_hw_hard_fault_exception+0xe8>)
 8008002:	6b61      	ldr	r1, [r4, #52]	; 0x34
 8008004:	f7fe fe4e 	bl	8006ca4 <rt_kprintf>
 8008008:	481a      	ldr	r0, [pc, #104]	; (8008074 <rt_hw_hard_fault_exception+0xec>)
 800800a:	6ba1      	ldr	r1, [r4, #56]	; 0x38
 800800c:	f7fe fe4a 	bl	8006ca4 <rt_kprintf>
 8008010:	4819      	ldr	r0, [pc, #100]	; (8008078 <rt_hw_hard_fault_exception+0xf0>)
 8008012:	6be1      	ldr	r1, [r4, #60]	; 0x3c
 8008014:	f7fe fe46 	bl	8006ca4 <rt_kprintf>
 8008018:	6820      	ldr	r0, [r4, #0]
 800801a:	0743      	lsls	r3, r0, #29
 800801c:	d506      	bpl.n	800802c <rt_hw_hard_fault_exception+0xa4>
 800801e:	f7ff fcbb 	bl	8007998 <rt_thread_self>
 8008022:	4601      	mov	r1, r0
 8008024:	4815      	ldr	r0, [pc, #84]	; (800807c <rt_hw_hard_fault_exception+0xf4>)
 8008026:	f7fe fe3d 	bl	8006ca4 <rt_kprintf>
 800802a:	e7fe      	b.n	800802a <rt_hw_hard_fault_exception+0xa2>
 800802c:	4814      	ldr	r0, [pc, #80]	; (8008080 <rt_hw_hard_fault_exception+0xf8>)
 800802e:	f7fe fe39 	bl	8006ca4 <rt_kprintf>
 8008032:	e7fa      	b.n	800802a <rt_hw_hard_fault_exception+0xa2>
 8008034:	bd10      	pop	{r4, pc}
 8008036:	bf00      	nop
 8008038:	20000988 	.word	0x20000988
 800803c:	08009af4 	.word	0x08009af4
 8008040:	08009b04 	.word	0x08009b04
 8008044:	08009b14 	.word	0x08009b14
 8008048:	08009b24 	.word	0x08009b24
 800804c:	08009b34 	.word	0x08009b34
 8008050:	08009b44 	.word	0x08009b44
 8008054:	08009b54 	.word	0x08009b54
 8008058:	08009b64 	.word	0x08009b64
 800805c:	08009b74 	.word	0x08009b74
 8008060:	08009b84 	.word	0x08009b84
 8008064:	08009b94 	.word	0x08009b94
 8008068:	08009ba4 	.word	0x08009ba4
 800806c:	08009bb4 	.word	0x08009bb4
 8008070:	08009bc4 	.word	0x08009bc4
 8008074:	08009bd4 	.word	0x08009bd4
 8008078:	08009be4 	.word	0x08009be4
 800807c:	08009bf4 	.word	0x08009bf4
 8008080:	08009c14 	.word	0x08009c14

08008084 <rt_serial_close>:
 8008084:	b510      	push	{r4, lr}
 8008086:	4604      	mov	r4, r0
 8008088:	b082      	sub	sp, #8
 800808a:	b1a0      	cbz	r0, 80080b6 <rt_serial_close+0x32>
 800808c:	8ae2      	ldrh	r2, [r4, #22]
 800808e:	f402 6080 	and.w	r0, r2, #1024	; 0x400
 8008092:	b281      	uxth	r1, r0
 8008094:	f3c2 2300 	ubfx	r3, r2, #8, #1
 8008098:	b149      	cbz	r1, 80080ae <rt_serial_close+0x2a>
 800809a:	f043 0202 	orr.w	r2, r3, #2
 800809e:	6c21      	ldr	r1, [r4, #64]	; 0x40
 80080a0:	4620      	mov	r0, r4
 80080a2:	684b      	ldr	r3, [r1, #4]
 80080a4:	2111      	movs	r1, #17
 80080a6:	4798      	blx	r3
 80080a8:	2000      	movs	r0, #0
 80080aa:	b002      	add	sp, #8
 80080ac:	bd10      	pop	{r4, pc}
 80080ae:	2b00      	cmp	r3, #0
 80080b0:	d0fa      	beq.n	80080a8 <rt_serial_close+0x24>
 80080b2:	2201      	movs	r2, #1
 80080b4:	e7f3      	b.n	800809e <rt_serial_close+0x1a>
 80080b6:	4806      	ldr	r0, [pc, #24]	; (80080d0 <rt_serial_close+0x4c>)
 80080b8:	4906      	ldr	r1, [pc, #24]	; (80080d4 <rt_serial_close+0x50>)
 80080ba:	4a07      	ldr	r2, [pc, #28]	; (80080d8 <rt_serial_close+0x54>)
 80080bc:	23c7      	movs	r3, #199	; 0xc7
 80080be:	f88d 4007 	strb.w	r4, [sp, #7]
 80080c2:	f7fe fdef 	bl	8006ca4 <rt_kprintf>
 80080c6:	f89d 3007 	ldrb.w	r3, [sp, #7]
 80080ca:	2b00      	cmp	r3, #0
 80080cc:	d0fb      	beq.n	80080c6 <rt_serial_close+0x42>
 80080ce:	e7dd      	b.n	800808c <rt_serial_close+0x8>
 80080d0:	08008b10 	.word	0x08008b10
 80080d4:	080092dc 	.word	0x080092dc
 80080d8:	08009d18 	.word	0x08009d18

080080dc <rt_serial_open>:
 80080dc:	b510      	push	{r4, lr}
 80080de:	4604      	mov	r4, r0
 80080e0:	b082      	sub	sp, #8
 80080e2:	b1a0      	cbz	r0, 800810e <rt_serial_open+0x32>
 80080e4:	8ae2      	ldrh	r2, [r4, #22]
 80080e6:	f402 6080 	and.w	r0, r2, #1024	; 0x400
 80080ea:	b281      	uxth	r1, r0
 80080ec:	f3c2 2300 	ubfx	r3, r2, #8, #1
 80080f0:	b149      	cbz	r1, 8008106 <rt_serial_open+0x2a>
 80080f2:	f043 0202 	orr.w	r2, r3, #2
 80080f6:	6c21      	ldr	r1, [r4, #64]	; 0x40
 80080f8:	4620      	mov	r0, r4
 80080fa:	684b      	ldr	r3, [r1, #4]
 80080fc:	2110      	movs	r1, #16
 80080fe:	4798      	blx	r3
 8008100:	2000      	movs	r0, #0
 8008102:	b002      	add	sp, #8
 8008104:	bd10      	pop	{r4, pc}
 8008106:	2b00      	cmp	r3, #0
 8008108:	d0fa      	beq.n	8008100 <rt_serial_open+0x24>
 800810a:	2201      	movs	r2, #1
 800810c:	e7f3      	b.n	80080f6 <rt_serial_open+0x1a>
 800810e:	4806      	ldr	r0, [pc, #24]	; (8008128 <rt_serial_open+0x4c>)
 8008110:	4906      	ldr	r1, [pc, #24]	; (800812c <rt_serial_open+0x50>)
 8008112:	4a07      	ldr	r2, [pc, #28]	; (8008130 <rt_serial_open+0x54>)
 8008114:	23b2      	movs	r3, #178	; 0xb2
 8008116:	f88d 4007 	strb.w	r4, [sp, #7]
 800811a:	f7fe fdc3 	bl	8006ca4 <rt_kprintf>
 800811e:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8008122:	2b00      	cmp	r3, #0
 8008124:	d0fb      	beq.n	800811e <rt_serial_open+0x42>
 8008126:	e7dd      	b.n	80080e4 <rt_serial_open+0x8>
 8008128:	08008b10 	.word	0x08008b10
 800812c:	080092dc 	.word	0x080092dc
 8008130:	08009c60 	.word	0x08009c60

08008134 <rt_serial_init>:
 8008134:	b530      	push	{r4, r5, lr}
 8008136:	4604      	mov	r4, r0
 8008138:	b083      	sub	sp, #12
 800813a:	2800      	cmp	r0, #0
 800813c:	d033      	beq.n	80081a6 <rt_serial_init+0x72>
 800813e:	8ae3      	ldrh	r3, [r4, #22]
 8008140:	f003 0210 	and.w	r2, r3, #16
 8008144:	b290      	uxth	r0, r2
 8008146:	b998      	cbnz	r0, 8008170 <rt_serial_init+0x3c>
 8008148:	6c21      	ldr	r1, [r4, #64]	; 0x40
 800814a:	680a      	ldr	r2, [r1, #0]
 800814c:	b12a      	cbz	r2, 800815a <rt_serial_init+0x26>
 800814e:	4620      	mov	r0, r4
 8008150:	f104 0144 	add.w	r1, r4, #68	; 0x44
 8008154:	4790      	blx	r2
 8008156:	b960      	cbnz	r0, 8008172 <rt_serial_init+0x3e>
 8008158:	8ae3      	ldrh	r3, [r4, #22]
 800815a:	f403 7080 	and.w	r0, r3, #256	; 0x100
 800815e:	b281      	uxth	r1, r0
 8008160:	b9a1      	cbnz	r1, 800818c <rt_serial_init+0x58>
 8008162:	f403 6000 	and.w	r0, r3, #2048	; 0x800
 8008166:	b281      	uxth	r1, r0
 8008168:	b929      	cbnz	r1, 8008176 <rt_serial_init+0x42>
 800816a:	f043 0210 	orr.w	r2, r3, #16
 800816e:	82e2      	strh	r2, [r4, #22]
 8008170:	2000      	movs	r0, #0
 8008172:	b003      	add	sp, #12
 8008174:	bd30      	pop	{r4, r5, pc}
 8008176:	2300      	movs	r3, #0
 8008178:	67a3      	str	r3, [r4, #120]	; 0x78
 800817a:	f104 0054 	add.w	r0, r4, #84	; 0x54
 800817e:	f44f 6100 	mov.w	r1, #2048	; 0x800
 8008182:	221e      	movs	r2, #30
 8008184:	f000 faea 	bl	800875c <rt_data_queue_init>
 8008188:	8ae3      	ldrh	r3, [r4, #22]
 800818a:	e7ee      	b.n	800816a <rt_serial_init+0x36>
 800818c:	6ce5      	ldr	r5, [r4, #76]	; 0x4c
 800818e:	2240      	movs	r2, #64	; 0x40
 8008190:	2100      	movs	r1, #0
 8008192:	4628      	mov	r0, r5
 8008194:	f7fe fa0c 	bl	80065b0 <rt_memset>
 8008198:	2200      	movs	r2, #0
 800819a:	8ae3      	ldrh	r3, [r4, #22]
 800819c:	f8a5 2040 	strh.w	r2, [r5, #64]	; 0x40
 80081a0:	f8a5 2042 	strh.w	r2, [r5, #66]	; 0x42
 80081a4:	e7dd      	b.n	8008162 <rt_serial_init+0x2e>
 80081a6:	4806      	ldr	r0, [pc, #24]	; (80081c0 <rt_serial_init+0x8c>)
 80081a8:	4906      	ldr	r1, [pc, #24]	; (80081c4 <rt_serial_init+0x90>)
 80081aa:	4a07      	ldr	r2, [pc, #28]	; (80081c8 <rt_serial_init+0x94>)
 80081ac:	2384      	movs	r3, #132	; 0x84
 80081ae:	f88d 4007 	strb.w	r4, [sp, #7]
 80081b2:	f7fe fd77 	bl	8006ca4 <rt_kprintf>
 80081b6:	f89d 3007 	ldrb.w	r3, [sp, #7]
 80081ba:	2b00      	cmp	r3, #0
 80081bc:	d0fb      	beq.n	80081b6 <rt_serial_init+0x82>
 80081be:	e7be      	b.n	800813e <rt_serial_init+0xa>
 80081c0:	08008b10 	.word	0x08008b10
 80081c4:	080092dc 	.word	0x080092dc
 80081c8:	08009c50 	.word	0x08009c50

080081cc <rt_serial_control>:
 80081cc:	b570      	push	{r4, r5, r6, lr}
 80081ce:	4604      	mov	r4, r0
 80081d0:	b082      	sub	sp, #8
 80081d2:	460d      	mov	r5, r1
 80081d4:	4616      	mov	r6, r2
 80081d6:	b1c0      	cbz	r0, 800820a <rt_serial_control+0x3e>
 80081d8:	2d02      	cmp	r5, #2
 80081da:	d011      	beq.n	8008200 <rt_serial_control+0x34>
 80081dc:	2d03      	cmp	r5, #3
 80081de:	d009      	beq.n	80081f4 <rt_serial_control+0x28>
 80081e0:	2d01      	cmp	r5, #1
 80081e2:	d002      	beq.n	80081ea <rt_serial_control+0x1e>
 80081e4:	2000      	movs	r0, #0
 80081e6:	b002      	add	sp, #8
 80081e8:	bd70      	pop	{r4, r5, r6, pc}
 80081ea:	8ae0      	ldrh	r0, [r4, #22]
 80081ec:	f020 0120 	bic.w	r1, r0, #32
 80081f0:	82e1      	strh	r1, [r4, #22]
 80081f2:	e7f7      	b.n	80081e4 <rt_serial_control+0x18>
 80081f4:	6c22      	ldr	r2, [r4, #64]	; 0x40
 80081f6:	4620      	mov	r0, r4
 80081f8:	6813      	ldr	r3, [r2, #0]
 80081fa:	4631      	mov	r1, r6
 80081fc:	4798      	blx	r3
 80081fe:	e7f1      	b.n	80081e4 <rt_serial_control+0x18>
 8008200:	8ae0      	ldrh	r0, [r4, #22]
 8008202:	f040 0120 	orr.w	r1, r0, #32
 8008206:	82e1      	strh	r1, [r4, #22]
 8008208:	e7ec      	b.n	80081e4 <rt_serial_control+0x18>
 800820a:	4807      	ldr	r0, [pc, #28]	; (8008228 <rt_serial_control+0x5c>)
 800820c:	4907      	ldr	r1, [pc, #28]	; (800822c <rt_serial_control+0x60>)
 800820e:	4a08      	ldr	r2, [pc, #32]	; (8008230 <rt_serial_control+0x64>)
 8008210:	f44f 73b7 	mov.w	r3, #366	; 0x16e
 8008214:	f88d 4007 	strb.w	r4, [sp, #7]
 8008218:	f7fe fd44 	bl	8006ca4 <rt_kprintf>
 800821c:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8008220:	2b00      	cmp	r3, #0
 8008222:	d0fb      	beq.n	800821c <rt_serial_control+0x50>
 8008224:	e7d8      	b.n	80081d8 <rt_serial_control+0xc>
 8008226:	bf00      	nop
 8008228:	08008b10 	.word	0x08008b10
 800822c:	080092dc 	.word	0x080092dc
 8008230:	08009c70 	.word	0x08009c70

08008234 <rt_serial_write>:
 8008234:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8008238:	4604      	mov	r4, r0
 800823a:	b082      	sub	sp, #8
 800823c:	4690      	mov	r8, r2
 800823e:	461d      	mov	r5, r3
 8008240:	2800      	cmp	r0, #0
 8008242:	f000 80ce 	beq.w	80083e2 <rt_serial_write+0x1ae>
 8008246:	2d00      	cmp	r5, #0
 8008248:	d05a      	beq.n	8008300 <rt_serial_write+0xcc>
 800824a:	8ae0      	ldrh	r0, [r4, #22]
 800824c:	f400 6680 	and.w	r6, r0, #1024	; 0x400
 8008250:	b2b6      	uxth	r6, r6
 8008252:	2e00      	cmp	r6, #0
 8008254:	d058      	beq.n	8008308 <rt_serial_write+0xd4>
 8008256:	6d26      	ldr	r6, [r4, #80]	; 0x50
 8008258:	f898 a000 	ldrb.w	sl, [r8]
 800825c:	f7f7 ff56 	bl	800010c <rt_hw_interrupt_disable>
 8008260:	f8b6 2040 	ldrh.w	r2, [r6, #64]	; 0x40
 8008264:	f8b6 1042 	ldrh.w	r1, [r6, #66]	; 0x42
 8008268:	1c57      	adds	r7, r2, #1
 800826a:	f007 033f 	and.w	r3, r7, #63	; 0x3f
 800826e:	f105 39ff 	add.w	r9, r5, #4294967295
 8008272:	4299      	cmp	r1, r3
 8008274:	4645      	mov	r5, r8
 8008276:	f009 0701 	and.w	r7, r9, #1
 800827a:	f000 80d8 	beq.w	800842e <rt_serial_write+0x1fa>
 800827e:	f806 a002 	strb.w	sl, [r6, r2]
 8008282:	f8a6 3040 	strh.w	r3, [r6, #64]	; 0x40
 8008286:	f7f7 ff45 	bl	8000114 <rt_hw_interrupt_enable>
 800828a:	f108 0501 	add.w	r5, r8, #1
 800828e:	f1b9 0f00 	cmp.w	r9, #0
 8008292:	d032      	beq.n	80082fa <rt_serial_write+0xc6>
 8008294:	b117      	cbz	r7, 800829c <rt_serial_write+0x68>
 8008296:	6d26      	ldr	r6, [r4, #80]	; 0x50
 8008298:	782f      	ldrb	r7, [r5, #0]
 800829a:	e019      	b.n	80082d0 <rt_serial_write+0x9c>
 800829c:	6d26      	ldr	r6, [r4, #80]	; 0x50
 800829e:	f895 a000 	ldrb.w	sl, [r5]
 80082a2:	f7f7 ff33 	bl	800010c <rt_hw_interrupt_disable>
 80082a6:	f8b6 7040 	ldrh.w	r7, [r6, #64]	; 0x40
 80082aa:	f8b6 2042 	ldrh.w	r2, [r6, #66]	; 0x42
 80082ae:	1c79      	adds	r1, r7, #1
 80082b0:	f001 033f 	and.w	r3, r1, #63	; 0x3f
 80082b4:	429a      	cmp	r2, r3
 80082b6:	f109 39ff 	add.w	r9, r9, #4294967295
 80082ba:	f000 80b8 	beq.w	800842e <rt_serial_write+0x1fa>
 80082be:	f806 a007 	strb.w	sl, [r6, r7]
 80082c2:	f8a6 3040 	strh.w	r3, [r6, #64]	; 0x40
 80082c6:	f7f7 ff25 	bl	8000114 <rt_hw_interrupt_enable>
 80082ca:	6d26      	ldr	r6, [r4, #80]	; 0x50
 80082cc:	f815 7f01 	ldrb.w	r7, [r5, #1]!
 80082d0:	f7f7 ff1c 	bl	800010c <rt_hw_interrupt_disable>
 80082d4:	f8b6 2040 	ldrh.w	r2, [r6, #64]	; 0x40
 80082d8:	f8b6 1042 	ldrh.w	r1, [r6, #66]	; 0x42
 80082dc:	1c53      	adds	r3, r2, #1
 80082de:	f003 033f 	and.w	r3, r3, #63	; 0x3f
 80082e2:	4299      	cmp	r1, r3
 80082e4:	f000 80a3 	beq.w	800842e <rt_serial_write+0x1fa>
 80082e8:	54b7      	strb	r7, [r6, r2]
 80082ea:	f8a6 3040 	strh.w	r3, [r6, #64]	; 0x40
 80082ee:	f7f7 ff11 	bl	8000114 <rt_hw_interrupt_enable>
 80082f2:	3501      	adds	r5, #1
 80082f4:	f1b9 0901 	subs.w	r9, r9, #1
 80082f8:	d1d0      	bne.n	800829c <rt_serial_write+0x68>
 80082fa:	ebb5 0508 	subs.w	r5, r5, r8
 80082fe:	d06b      	beq.n	80083d8 <rt_serial_write+0x1a4>
 8008300:	4628      	mov	r0, r5
 8008302:	b002      	add	sp, #8
 8008304:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8008308:	f400 6200 	and.w	r2, r0, #2048	; 0x800
 800830c:	b291      	uxth	r1, r2
 800830e:	2900      	cmp	r1, #0
 8008310:	d144      	bne.n	800839c <rt_serial_write+0x168>
 8008312:	4647      	mov	r7, r8
 8008314:	f817 1b01 	ldrb.w	r1, [r7], #1
 8008318:	1e6b      	subs	r3, r5, #1
 800831a:	290a      	cmp	r1, #10
 800831c:	f003 0601 	and.w	r6, r3, #1
 8008320:	f000 8099 	beq.w	8008456 <rt_serial_write+0x222>
 8008324:	6c22      	ldr	r2, [r4, #64]	; 0x40
 8008326:	4620      	mov	r0, r4
 8008328:	6893      	ldr	r3, [r2, #8]
 800832a:	4798      	blx	r3
 800832c:	3701      	adds	r7, #1
 800832e:	f1b5 0901 	subs.w	r9, r5, #1
 8008332:	d072      	beq.n	800841a <rt_serial_write+0x1e6>
 8008334:	b1ee      	cbz	r6, 8008372 <rt_serial_write+0x13e>
 8008336:	f817 1c01 	ldrb.w	r1, [r7, #-1]
 800833a:	290a      	cmp	r1, #10
 800833c:	f000 8099 	beq.w	8008472 <rt_serial_write+0x23e>
 8008340:	6c23      	ldr	r3, [r4, #64]	; 0x40
 8008342:	4620      	mov	r0, r4
 8008344:	689a      	ldr	r2, [r3, #8]
 8008346:	4790      	blx	r2
 8008348:	3701      	adds	r7, #1
 800834a:	f1b9 0901 	subs.w	r9, r9, #1
 800834e:	d110      	bne.n	8008372 <rt_serial_write+0x13e>
 8008350:	e063      	b.n	800841a <rt_serial_write+0x1e6>
 8008352:	6c27      	ldr	r7, [r4, #64]	; 0x40
 8008354:	4620      	mov	r0, r4
 8008356:	68ba      	ldr	r2, [r7, #8]
 8008358:	4790      	blx	r2
 800835a:	f816 1b01 	ldrb.w	r1, [r6], #1
 800835e:	290a      	cmp	r1, #10
 8008360:	d04d      	beq.n	80083fe <rt_serial_write+0x1ca>
 8008362:	6c27      	ldr	r7, [r4, #64]	; 0x40
 8008364:	4620      	mov	r0, r4
 8008366:	68ba      	ldr	r2, [r7, #8]
 8008368:	4790      	blx	r2
 800836a:	1c77      	adds	r7, r6, #1
 800836c:	f1b9 0901 	subs.w	r9, r9, #1
 8008370:	d053      	beq.n	800841a <rt_serial_write+0x1e6>
 8008372:	f817 1c01 	ldrb.w	r1, [r7, #-1]
 8008376:	463e      	mov	r6, r7
 8008378:	290a      	cmp	r1, #10
 800837a:	f109 39ff 	add.w	r9, r9, #4294967295
 800837e:	d1e8      	bne.n	8008352 <rt_serial_write+0x11e>
 8008380:	8ae0      	ldrh	r0, [r4, #22]
 8008382:	f000 0340 	and.w	r3, r0, #64	; 0x40
 8008386:	b29a      	uxth	r2, r3
 8008388:	2a00      	cmp	r2, #0
 800838a:	d0e2      	beq.n	8008352 <rt_serial_write+0x11e>
 800838c:	6c21      	ldr	r1, [r4, #64]	; 0x40
 800838e:	4620      	mov	r0, r4
 8008390:	688b      	ldr	r3, [r1, #8]
 8008392:	210d      	movs	r1, #13
 8008394:	4798      	blx	r3
 8008396:	f817 1c01 	ldrb.w	r1, [r7, #-1]
 800839a:	e7da      	b.n	8008352 <rt_serial_write+0x11e>
 800839c:	f000 0140 	and.w	r1, r0, #64	; 0x40
 80083a0:	b288      	uxth	r0, r1
 80083a2:	2800      	cmp	r0, #0
 80083a4:	d149      	bne.n	800843a <rt_serial_write+0x206>
 80083a6:	f104 0054 	add.w	r0, r4, #84	; 0x54
 80083aa:	4641      	mov	r1, r8
 80083ac:	462a      	mov	r2, r5
 80083ae:	2314      	movs	r3, #20
 80083b0:	f000 fa0c 	bl	80087cc <rt_data_queue_push>
 80083b4:	2800      	cmp	r0, #0
 80083b6:	d136      	bne.n	8008426 <rt_serial_write+0x1f2>
 80083b8:	f7f7 fea8 	bl	800010c <rt_hw_interrupt_disable>
 80083bc:	6fa2      	ldr	r2, [r4, #120]	; 0x78
 80083be:	2a00      	cmp	r2, #0
 80083c0:	d138      	bne.n	8008434 <rt_serial_write+0x200>
 80083c2:	2101      	movs	r1, #1
 80083c4:	67a1      	str	r1, [r4, #120]	; 0x78
 80083c6:	f7f7 fea5 	bl	8000114 <rt_hw_interrupt_enable>
 80083ca:	6c23      	ldr	r3, [r4, #64]	; 0x40
 80083cc:	4620      	mov	r0, r4
 80083ce:	691b      	ldr	r3, [r3, #16]
 80083d0:	4641      	mov	r1, r8
 80083d2:	462a      	mov	r2, r5
 80083d4:	4798      	blx	r3
 80083d6:	e793      	b.n	8008300 <rt_serial_write+0xcc>
 80083d8:	f06f 0002 	mvn.w	r0, #2
 80083dc:	f7fe f8d8 	bl	8006590 <rt_set_errno>
 80083e0:	e78e      	b.n	8008300 <rt_serial_write+0xcc>
 80083e2:	482b      	ldr	r0, [pc, #172]	; (8008490 <rt_serial_write+0x25c>)
 80083e4:	492b      	ldr	r1, [pc, #172]	; (8008494 <rt_serial_write+0x260>)
 80083e6:	4a2c      	ldr	r2, [pc, #176]	; (8008498 <rt_serial_write+0x264>)
 80083e8:	f44f 738b 	mov.w	r3, #278	; 0x116
 80083ec:	f88d 4006 	strb.w	r4, [sp, #6]
 80083f0:	f7fe fc58 	bl	8006ca4 <rt_kprintf>
 80083f4:	f89d 3006 	ldrb.w	r3, [sp, #6]
 80083f8:	2b00      	cmp	r3, #0
 80083fa:	d0fb      	beq.n	80083f4 <rt_serial_write+0x1c0>
 80083fc:	e723      	b.n	8008246 <rt_serial_write+0x12>
 80083fe:	8ae0      	ldrh	r0, [r4, #22]
 8008400:	f000 0340 	and.w	r3, r0, #64	; 0x40
 8008404:	b29f      	uxth	r7, r3
 8008406:	2f00      	cmp	r7, #0
 8008408:	d0ab      	beq.n	8008362 <rt_serial_write+0x12e>
 800840a:	6c22      	ldr	r2, [r4, #64]	; 0x40
 800840c:	210d      	movs	r1, #13
 800840e:	6893      	ldr	r3, [r2, #8]
 8008410:	4620      	mov	r0, r4
 8008412:	4798      	blx	r3
 8008414:	f816 1c01 	ldrb.w	r1, [r6, #-1]
 8008418:	e7a3      	b.n	8008362 <rt_serial_write+0x12e>
 800841a:	4445      	add	r5, r8
 800841c:	ebb5 0508 	subs.w	r5, r5, r8
 8008420:	f47f af6e 	bne.w	8008300 <rt_serial_write+0xcc>
 8008424:	e7d8      	b.n	80083d8 <rt_serial_write+0x1a4>
 8008426:	f7fe f8b3 	bl	8006590 <rt_set_errno>
 800842a:	2500      	movs	r5, #0
 800842c:	e768      	b.n	8008300 <rt_serial_write+0xcc>
 800842e:	f7f7 fe71 	bl	8000114 <rt_hw_interrupt_enable>
 8008432:	e762      	b.n	80082fa <rt_serial_write+0xc6>
 8008434:	f7f7 fe6e 	bl	8000114 <rt_hw_interrupt_enable>
 8008438:	e762      	b.n	8008300 <rt_serial_write+0xcc>
 800843a:	4815      	ldr	r0, [pc, #84]	; (8008490 <rt_serial_write+0x25c>)
 800843c:	4917      	ldr	r1, [pc, #92]	; (800849c <rt_serial_write+0x268>)
 800843e:	4a16      	ldr	r2, [pc, #88]	; (8008498 <rt_serial_write+0x264>)
 8008440:	f44f 7399 	mov.w	r3, #306	; 0x132
 8008444:	f88d 6007 	strb.w	r6, [sp, #7]
 8008448:	f7fe fc2c 	bl	8006ca4 <rt_kprintf>
 800844c:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8008450:	2b00      	cmp	r3, #0
 8008452:	d0fb      	beq.n	800844c <rt_serial_write+0x218>
 8008454:	e7a7      	b.n	80083a6 <rt_serial_write+0x172>
 8008456:	f000 0040 	and.w	r0, r0, #64	; 0x40
 800845a:	b282      	uxth	r2, r0
 800845c:	2a00      	cmp	r2, #0
 800845e:	f43f af61 	beq.w	8008324 <rt_serial_write+0xf0>
 8008462:	6c21      	ldr	r1, [r4, #64]	; 0x40
 8008464:	4620      	mov	r0, r4
 8008466:	688b      	ldr	r3, [r1, #8]
 8008468:	210d      	movs	r1, #13
 800846a:	4798      	blx	r3
 800846c:	f817 1c01 	ldrb.w	r1, [r7, #-1]
 8008470:	e758      	b.n	8008324 <rt_serial_write+0xf0>
 8008472:	8ae0      	ldrh	r0, [r4, #22]
 8008474:	f000 0240 	and.w	r2, r0, #64	; 0x40
 8008478:	b293      	uxth	r3, r2
 800847a:	2b00      	cmp	r3, #0
 800847c:	f43f af60 	beq.w	8008340 <rt_serial_write+0x10c>
 8008480:	6c21      	ldr	r1, [r4, #64]	; 0x40
 8008482:	4620      	mov	r0, r4
 8008484:	688a      	ldr	r2, [r1, #8]
 8008486:	210d      	movs	r1, #13
 8008488:	4790      	blx	r2
 800848a:	f817 1c01 	ldrb.w	r1, [r7, #-1]
 800848e:	e757      	b.n	8008340 <rt_serial_write+0x10c>
 8008490:	08008b10 	.word	0x08008b10
 8008494:	080092dc 	.word	0x080092dc
 8008498:	08009c40 	.word	0x08009c40
 800849c:	08009c84 	.word	0x08009c84

080084a0 <rt_serial_read>:
 80084a0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80084a4:	4604      	mov	r4, r0
 80084a6:	b082      	sub	sp, #8
 80084a8:	4617      	mov	r7, r2
 80084aa:	461e      	mov	r6, r3
 80084ac:	2800      	cmp	r0, #0
 80084ae:	f000 80b0 	beq.w	8008612 <rt_serial_read+0x172>
 80084b2:	2e00      	cmp	r6, #0
 80084b4:	f000 80ab 	beq.w	800860e <rt_serial_read+0x16e>
 80084b8:	8ae0      	ldrh	r0, [r4, #22]
 80084ba:	f400 7180 	and.w	r1, r0, #256	; 0x100
 80084be:	b28a      	uxth	r2, r1
 80084c0:	2a00      	cmp	r2, #0
 80084c2:	d138      	bne.n	8008536 <rt_serial_read+0x96>
 80084c4:	6c25      	ldr	r5, [r4, #64]	; 0x40
 80084c6:	f107 0901 	add.w	r9, r7, #1
 80084ca:	eb07 0806 	add.w	r8, r7, r6
 80084ce:	ebc9 0108 	rsb	r1, r9, r8
 80084d2:	68eb      	ldr	r3, [r5, #12]
 80084d4:	4620      	mov	r0, r4
 80084d6:	f001 0a01 	and.w	sl, r1, #1
 80084da:	4798      	blx	r3
 80084dc:	f108 0801 	add.w	r8, r8, #1
 80084e0:	f109 0501 	add.w	r5, r9, #1
 80084e4:	4545      	cmp	r5, r8
 80084e6:	f809 0c01 	strb.w	r0, [r9, #-1]
 80084ea:	d01a      	beq.n	8008522 <rt_serial_read+0x82>
 80084ec:	f1ba 0f00 	cmp.w	sl, #0
 80084f0:	d008      	beq.n	8008504 <rt_serial_read+0x64>
 80084f2:	6c22      	ldr	r2, [r4, #64]	; 0x40
 80084f4:	4620      	mov	r0, r4
 80084f6:	68d1      	ldr	r1, [r2, #12]
 80084f8:	4788      	blx	r1
 80084fa:	f805 0c01 	strb.w	r0, [r5, #-1]
 80084fe:	3501      	adds	r5, #1
 8008500:	4545      	cmp	r5, r8
 8008502:	d00e      	beq.n	8008522 <rt_serial_read+0x82>
 8008504:	6c23      	ldr	r3, [r4, #64]	; 0x40
 8008506:	4620      	mov	r0, r4
 8008508:	68da      	ldr	r2, [r3, #12]
 800850a:	4790      	blx	r2
 800850c:	f805 0c01 	strb.w	r0, [r5, #-1]
 8008510:	6c21      	ldr	r1, [r4, #64]	; 0x40
 8008512:	4620      	mov	r0, r4
 8008514:	68cb      	ldr	r3, [r1, #12]
 8008516:	4798      	blx	r3
 8008518:	f805 0b01 	strb.w	r0, [r5], #1
 800851c:	3501      	adds	r5, #1
 800851e:	4545      	cmp	r5, r8
 8008520:	d1f0      	bne.n	8008504 <rt_serial_read+0x64>
 8008522:	3e01      	subs	r6, #1
 8008524:	1bf0      	subs	r0, r6, r7
 8008526:	eb09 0700 	add.w	r7, r9, r0
 800852a:	2f00      	cmp	r7, #0
 800852c:	d06a      	beq.n	8008604 <rt_serial_read+0x164>
 800852e:	4638      	mov	r0, r7
 8008530:	b002      	add	sp, #8
 8008532:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8008536:	6ce5      	ldr	r5, [r4, #76]	; 0x4c
 8008538:	f7f7 fde8 	bl	800010c <rt_hw_interrupt_disable>
 800853c:	f8b5 1042 	ldrh.w	r1, [r5, #66]	; 0x42
 8008540:	f8b5 2040 	ldrh.w	r2, [r5, #64]	; 0x40
 8008544:	f106 38ff 	add.w	r8, r6, #4294967295
 8008548:	428a      	cmp	r2, r1
 800854a:	463e      	mov	r6, r7
 800854c:	f008 0901 	and.w	r9, r8, #1
 8008550:	d06c      	beq.n	800862c <rt_serial_read+0x18c>
 8008552:	1c4e      	adds	r6, r1, #1
 8008554:	f006 033f 	and.w	r3, r6, #63	; 0x3f
 8008558:	f815 a001 	ldrb.w	sl, [r5, r1]
 800855c:	f8a5 3042 	strh.w	r3, [r5, #66]	; 0x42
 8008560:	463e      	mov	r6, r7
 8008562:	f7f7 fdd7 	bl	8000114 <rt_hw_interrupt_enable>
 8008566:	f806 ab01 	strb.w	sl, [r6], #1
 800856a:	f1b8 0f00 	cmp.w	r8, #0
 800856e:	d046      	beq.n	80085fe <rt_serial_read+0x15e>
 8008570:	f1b9 0f00 	cmp.w	r9, #0
 8008574:	d016      	beq.n	80085a4 <rt_serial_read+0x104>
 8008576:	6ce5      	ldr	r5, [r4, #76]	; 0x4c
 8008578:	f7f7 fdc8 	bl	800010c <rt_hw_interrupt_disable>
 800857c:	f8b5 1042 	ldrh.w	r1, [r5, #66]	; 0x42
 8008580:	f8b5 2040 	ldrh.w	r2, [r5, #64]	; 0x40
 8008584:	428a      	cmp	r2, r1
 8008586:	d051      	beq.n	800862c <rt_serial_read+0x18c>
 8008588:	1c4b      	adds	r3, r1, #1
 800858a:	f815 9001 	ldrb.w	r9, [r5, r1]
 800858e:	f003 013f 	and.w	r1, r3, #63	; 0x3f
 8008592:	f8a5 1042 	strh.w	r1, [r5, #66]	; 0x42
 8008596:	f7f7 fdbd 	bl	8000114 <rt_hw_interrupt_enable>
 800859a:	f1b8 0801 	subs.w	r8, r8, #1
 800859e:	f806 9b01 	strb.w	r9, [r6], #1
 80085a2:	d02c      	beq.n	80085fe <rt_serial_read+0x15e>
 80085a4:	6ce5      	ldr	r5, [r4, #76]	; 0x4c
 80085a6:	f7f7 fdb1 	bl	800010c <rt_hw_interrupt_disable>
 80085aa:	f8b5 1042 	ldrh.w	r1, [r5, #66]	; 0x42
 80085ae:	f8b5 3040 	ldrh.w	r3, [r5, #64]	; 0x40
 80085b2:	1c4a      	adds	r2, r1, #1
 80085b4:	428b      	cmp	r3, r1
 80085b6:	f002 023f 	and.w	r2, r2, #63	; 0x3f
 80085ba:	f108 38ff 	add.w	r8, r8, #4294967295
 80085be:	d035      	beq.n	800862c <rt_serial_read+0x18c>
 80085c0:	f815 9001 	ldrb.w	r9, [r5, r1]
 80085c4:	f8a5 2042 	strh.w	r2, [r5, #66]	; 0x42
 80085c8:	f7f7 fda4 	bl	8000114 <rt_hw_interrupt_enable>
 80085cc:	f806 9b01 	strb.w	r9, [r6], #1
 80085d0:	6ce5      	ldr	r5, [r4, #76]	; 0x4c
 80085d2:	f7f7 fd9b 	bl	800010c <rt_hw_interrupt_disable>
 80085d6:	f8b5 1042 	ldrh.w	r1, [r5, #66]	; 0x42
 80085da:	f8b5 3040 	ldrh.w	r3, [r5, #64]	; 0x40
 80085de:	1c4a      	adds	r2, r1, #1
 80085e0:	428b      	cmp	r3, r1
 80085e2:	f002 023f 	and.w	r2, r2, #63	; 0x3f
 80085e6:	d021      	beq.n	800862c <rt_serial_read+0x18c>
 80085e8:	f815 9001 	ldrb.w	r9, [r5, r1]
 80085ec:	f8a5 2042 	strh.w	r2, [r5, #66]	; 0x42
 80085f0:	f7f7 fd90 	bl	8000114 <rt_hw_interrupt_enable>
 80085f4:	f1b8 0801 	subs.w	r8, r8, #1
 80085f8:	f806 9b01 	strb.w	r9, [r6], #1
 80085fc:	d1d2      	bne.n	80085a4 <rt_serial_read+0x104>
 80085fe:	1bf7      	subs	r7, r6, r7
 8008600:	2f00      	cmp	r7, #0
 8008602:	d194      	bne.n	800852e <rt_serial_read+0x8e>
 8008604:	f06f 0003 	mvn.w	r0, #3
 8008608:	f7fd ffc2 	bl	8006590 <rt_set_errno>
 800860c:	e78f      	b.n	800852e <rt_serial_read+0x8e>
 800860e:	4637      	mov	r7, r6
 8008610:	e78d      	b.n	800852e <rt_serial_read+0x8e>
 8008612:	4808      	ldr	r0, [pc, #32]	; (8008634 <rt_serial_read+0x194>)
 8008614:	4908      	ldr	r1, [pc, #32]	; (8008638 <rt_serial_read+0x198>)
 8008616:	4a09      	ldr	r2, [pc, #36]	; (800863c <rt_serial_read+0x19c>)
 8008618:	23e0      	movs	r3, #224	; 0xe0
 800861a:	f88d 4007 	strb.w	r4, [sp, #7]
 800861e:	f7fe fb41 	bl	8006ca4 <rt_kprintf>
 8008622:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8008626:	2b00      	cmp	r3, #0
 8008628:	d0fb      	beq.n	8008622 <rt_serial_read+0x182>
 800862a:	e742      	b.n	80084b2 <rt_serial_read+0x12>
 800862c:	f7f7 fd72 	bl	8000114 <rt_hw_interrupt_enable>
 8008630:	e7e5      	b.n	80085fe <rt_serial_read+0x15e>
 8008632:	bf00      	nop
 8008634:	08008b10 	.word	0x08008b10
 8008638:	080092dc 	.word	0x080092dc
 800863c:	08009cdc 	.word	0x08009cdc

08008640 <rt_hw_serial_register>:
 8008640:	b5f0      	push	{r4, r5, r6, r7, lr}
 8008642:	4604      	mov	r4, r0
 8008644:	b083      	sub	sp, #12
 8008646:	460d      	mov	r5, r1
 8008648:	4616      	mov	r6, r2
 800864a:	461f      	mov	r7, r3
 800864c:	b1b8      	cbz	r0, 800867e <rt_hw_serial_register+0x3e>
 800864e:	4b13      	ldr	r3, [pc, #76]	; (800869c <rt_hw_serial_register+0x5c>)
 8008650:	4a13      	ldr	r2, [pc, #76]	; (80086a0 <rt_hw_serial_register+0x60>)
 8008652:	2100      	movs	r1, #0
 8008654:	7521      	strb	r1, [r4, #20]
 8008656:	61e1      	str	r1, [r4, #28]
 8008658:	6221      	str	r1, [r4, #32]
 800865a:	6263      	str	r3, [r4, #36]	; 0x24
 800865c:	62a2      	str	r2, [r4, #40]	; 0x28
 800865e:	4811      	ldr	r0, [pc, #68]	; (80086a4 <rt_hw_serial_register+0x64>)
 8008660:	4911      	ldr	r1, [pc, #68]	; (80086a8 <rt_hw_serial_register+0x68>)
 8008662:	4b12      	ldr	r3, [pc, #72]	; (80086ac <rt_hw_serial_register+0x6c>)
 8008664:	4a12      	ldr	r2, [pc, #72]	; (80086b0 <rt_hw_serial_register+0x70>)
 8008666:	62e0      	str	r0, [r4, #44]	; 0x2c
 8008668:	6321      	str	r1, [r4, #48]	; 0x30
 800866a:	63a2      	str	r2, [r4, #56]	; 0x38
 800866c:	6363      	str	r3, [r4, #52]	; 0x34
 800866e:	63e7      	str	r7, [r4, #60]	; 0x3c
 8008670:	4620      	mov	r0, r4
 8008672:	4629      	mov	r1, r5
 8008674:	b2b2      	uxth	r2, r6
 8008676:	f7fd fb73 	bl	8005d60 <rt_device_register>
 800867a:	b003      	add	sp, #12
 800867c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800867e:	480d      	ldr	r0, [pc, #52]	; (80086b4 <rt_hw_serial_register+0x74>)
 8008680:	490d      	ldr	r1, [pc, #52]	; (80086b8 <rt_hw_serial_register+0x78>)
 8008682:	4a0e      	ldr	r2, [pc, #56]	; (80086bc <rt_hw_serial_register+0x7c>)
 8008684:	f240 138f 	movw	r3, #399	; 0x18f
 8008688:	f88d 4007 	strb.w	r4, [sp, #7]
 800868c:	f7fe fb0a 	bl	8006ca4 <rt_kprintf>
 8008690:	f89d 0007 	ldrb.w	r0, [sp, #7]
 8008694:	2800      	cmp	r0, #0
 8008696:	d0fb      	beq.n	8008690 <rt_hw_serial_register+0x50>
 8008698:	e7d9      	b.n	800864e <rt_hw_serial_register+0xe>
 800869a:	bf00      	nop
 800869c:	08008135 	.word	0x08008135
 80086a0:	080080dd 	.word	0x080080dd
 80086a4:	08008085 	.word	0x08008085
 80086a8:	080084a1 	.word	0x080084a1
 80086ac:	08008235 	.word	0x08008235
 80086b0:	080081cd 	.word	0x080081cd
 80086b4:	08008b10 	.word	0x08008b10
 80086b8:	08008b30 	.word	0x08008b30
 80086bc:	08009cec 	.word	0x08009cec

080086c0 <rt_hw_serial_isr>:
 80086c0:	b570      	push	{r4, r5, r6, lr}
 80086c2:	8ac4      	ldrh	r4, [r0, #22]
 80086c4:	4605      	mov	r5, r0
 80086c6:	f404 7080 	and.w	r0, r4, #256	; 0x100
 80086ca:	b284      	uxth	r4, r0
 80086cc:	b082      	sub	sp, #8
 80086ce:	b9b4      	cbnz	r4, 80086fe <rt_hw_serial_isr+0x3e>
 80086d0:	e030      	b.n	8008734 <rt_hw_serial_isr+0x74>
 80086d2:	6cec      	ldr	r4, [r5, #76]	; 0x4c
 80086d4:	f7f7 fd1a 	bl	800010c <rt_hw_interrupt_disable>
 80086d8:	f8b4 2040 	ldrh.w	r2, [r4, #64]	; 0x40
 80086dc:	f8b4 1042 	ldrh.w	r1, [r4, #66]	; 0x42
 80086e0:	1c53      	adds	r3, r2, #1
 80086e2:	f003 033f 	and.w	r3, r3, #63	; 0x3f
 80086e6:	4299      	cmp	r1, r3
 80086e8:	54a6      	strb	r6, [r4, r2]
 80086ea:	f8a4 3040 	strh.w	r3, [r4, #64]	; 0x40
 80086ee:	d104      	bne.n	80086fa <rt_hw_serial_isr+0x3a>
 80086f0:	1c4e      	adds	r6, r1, #1
 80086f2:	f006 023f 	and.w	r2, r6, #63	; 0x3f
 80086f6:	f8a4 2042 	strh.w	r2, [r4, #66]	; 0x42
 80086fa:	f7f7 fd0b 	bl	8000114 <rt_hw_interrupt_enable>
 80086fe:	6c29      	ldr	r1, [r5, #64]	; 0x40
 8008700:	4628      	mov	r0, r5
 8008702:	68ca      	ldr	r2, [r1, #12]
 8008704:	4790      	blx	r2
 8008706:	1c43      	adds	r3, r0, #1
 8008708:	4606      	mov	r6, r0
 800870a:	d1e2      	bne.n	80086d2 <rt_hw_serial_isr+0x12>
 800870c:	69e8      	ldr	r0, [r5, #28]
 800870e:	b178      	cbz	r0, 8008730 <rt_hw_serial_isr+0x70>
 8008710:	6cec      	ldr	r4, [r5, #76]	; 0x4c
 8008712:	f7f7 fcfb 	bl	800010c <rt_hw_interrupt_disable>
 8008716:	f8b4 1040 	ldrh.w	r1, [r4, #64]	; 0x40
 800871a:	f8b4 3042 	ldrh.w	r3, [r4, #66]	; 0x42
 800871e:	1aca      	subs	r2, r1, r3
 8008720:	f002 043f 	and.w	r4, r2, #63	; 0x3f
 8008724:	f7f7 fcf6 	bl	8000114 <rt_hw_interrupt_enable>
 8008728:	69eb      	ldr	r3, [r5, #28]
 800872a:	4628      	mov	r0, r5
 800872c:	4621      	mov	r1, r4
 800872e:	4798      	blx	r3
 8008730:	b002      	add	sp, #8
 8008732:	bd70      	pop	{r4, r5, r6, pc}
 8008734:	4806      	ldr	r0, [pc, #24]	; (8008750 <rt_hw_serial_isr+0x90>)
 8008736:	4907      	ldr	r1, [pc, #28]	; (8008754 <rt_hw_serial_isr+0x94>)
 8008738:	4a07      	ldr	r2, [pc, #28]	; (8008758 <rt_hw_serial_isr+0x98>)
 800873a:	f240 13a9 	movw	r3, #425	; 0x1a9
 800873e:	f88d 4007 	strb.w	r4, [sp, #7]
 8008742:	f7fe faaf 	bl	8006ca4 <rt_kprintf>
 8008746:	f89d 3007 	ldrb.w	r3, [sp, #7]
 800874a:	2b00      	cmp	r3, #0
 800874c:	d0fb      	beq.n	8008746 <rt_hw_serial_isr+0x86>
 800874e:	e7d6      	b.n	80086fe <rt_hw_serial_isr+0x3e>
 8008750:	08008b10 	.word	0x08008b10
 8008754:	08009cb0 	.word	0x08009cb0
 8008758:	08009d04 	.word	0x08009d04

0800875c <rt_data_queue_init>:
 800875c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8008760:	4604      	mov	r4, r0
 8008762:	b082      	sub	sp, #8
 8008764:	460e      	mov	r6, r1
 8008766:	4617      	mov	r7, r2
 8008768:	4698      	mov	r8, r3
 800876a:	b1d8      	cbz	r0, 80087a4 <rt_data_queue_init+0x48>
 800876c:	2500      	movs	r5, #0
 800876e:	f104 0010 	add.w	r0, r4, #16
 8008772:	f104 0118 	add.w	r1, r4, #24
 8008776:	6160      	str	r0, [r4, #20]
 8008778:	6120      	str	r0, [r4, #16]
 800877a:	f8c4 8020 	str.w	r8, [r4, #32]
 800877e:	00f0      	lsls	r0, r6, #3
 8008780:	8026      	strh	r6, [r4, #0]
 8008782:	8067      	strh	r7, [r4, #2]
 8008784:	6065      	str	r5, [r4, #4]
 8008786:	8125      	strh	r5, [r4, #8]
 8008788:	8165      	strh	r5, [r4, #10]
 800878a:	61e1      	str	r1, [r4, #28]
 800878c:	61a1      	str	r1, [r4, #24]
 800878e:	f7fe fbd7 	bl	8006f40 <rt_malloc>
 8008792:	42a8      	cmp	r0, r5
 8008794:	60e0      	str	r0, [r4, #12]
 8008796:	bf0c      	ite	eq
 8008798:	f06f 0004 	mvneq.w	r0, #4
 800879c:	4628      	movne	r0, r5
 800879e:	b002      	add	sp, #8
 80087a0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80087a4:	4806      	ldr	r0, [pc, #24]	; (80087c0 <rt_data_queue_init+0x64>)
 80087a6:	4907      	ldr	r1, [pc, #28]	; (80087c4 <rt_data_queue_init+0x68>)
 80087a8:	4a07      	ldr	r2, [pc, #28]	; (80087c8 <rt_data_queue_init+0x6c>)
 80087aa:	2329      	movs	r3, #41	; 0x29
 80087ac:	f88d 4007 	strb.w	r4, [sp, #7]
 80087b0:	f7fe fa78 	bl	8006ca4 <rt_kprintf>
 80087b4:	f89d 3007 	ldrb.w	r3, [sp, #7]
 80087b8:	2b00      	cmp	r3, #0
 80087ba:	d0fb      	beq.n	80087b4 <rt_data_queue_init+0x58>
 80087bc:	e7d6      	b.n	800876c <rt_data_queue_init+0x10>
 80087be:	bf00      	nop
 80087c0:	08008b10 	.word	0x08008b10
 80087c4:	08009d3c 	.word	0x08009d3c
 80087c8:	08009d74 	.word	0x08009d74

080087cc <rt_data_queue_push>:
 80087cc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80087d0:	b085      	sub	sp, #20
 80087d2:	4681      	mov	r9, r0
 80087d4:	468a      	mov	sl, r1
 80087d6:	e88d 000c 	stmia.w	sp, {r2, r3}
 80087da:	2800      	cmp	r0, #0
 80087dc:	d07f      	beq.n	80088de <rt_data_queue_push+0x112>
 80087de:	f7ff f8db 	bl	8007998 <rt_thread_self>
 80087e2:	f8b9 b000 	ldrh.w	fp, [r9]
 80087e6:	4604      	mov	r4, r0
 80087e8:	f7f7 fc90 	bl	800010c <rt_hw_interrupt_disable>
 80087ec:	f04f 0801 	mov.w	r8, #1
 80087f0:	4605      	mov	r5, r0
 80087f2:	2700      	movs	r7, #0
 80087f4:	e028      	b.n	8008848 <rt_data_queue_push+0x7c>
 80087f6:	4630      	mov	r0, r6
 80087f8:	f7f7 fc8c 	bl	8000114 <rt_hw_interrupt_enable>
 80087fc:	6327      	str	r7, [r4, #48]	; 0x30
 80087fe:	4620      	mov	r0, r4
 8008800:	f7ff f924 	bl	8007a4c <rt_thread_suspend>
 8008804:	9e01      	ldr	r6, [sp, #4]
 8008806:	f8d9 0014 	ldr.w	r0, [r9, #20]
 800880a:	f104 0314 	add.w	r3, r4, #20
 800880e:	f109 0110 	add.w	r1, r9, #16
 8008812:	2e00      	cmp	r6, #0
 8008814:	6003      	str	r3, [r0, #0]
 8008816:	61a0      	str	r0, [r4, #24]
 8008818:	6161      	str	r1, [r4, #20]
 800881a:	f8c9 3014 	str.w	r3, [r9, #20]
 800881e:	dd09      	ble.n	8008834 <rt_data_queue_push+0x68>
 8008820:	f104 0644 	add.w	r6, r4, #68	; 0x44
 8008824:	4630      	mov	r0, r6
 8008826:	2100      	movs	r1, #0
 8008828:	aa01      	add	r2, sp, #4
 800882a:	f7ff faf9 	bl	8007e20 <rt_timer_control>
 800882e:	4630      	mov	r0, r6
 8008830:	f7ff fa4c 	bl	8007ccc <rt_timer_start>
 8008834:	4628      	mov	r0, r5
 8008836:	f7f7 fc6d 	bl	8000114 <rt_hw_interrupt_enable>
 800883a:	f7fe fe9f 	bl	800757c <rt_schedule>
 800883e:	6b26      	ldr	r6, [r4, #48]	; 0x30
 8008840:	f7f7 fc64 	bl	800010c <rt_hw_interrupt_disable>
 8008844:	4605      	mov	r5, r0
 8008846:	bb36      	cbnz	r6, 8008896 <rt_data_queue_push+0xca>
 8008848:	f8b9 300a 	ldrh.w	r3, [r9, #10]
 800884c:	f8b9 1008 	ldrh.w	r1, [r9, #8]
 8008850:	f8b9 2000 	ldrh.w	r2, [r9]
 8008854:	1a58      	subs	r0, r3, r1
 8008856:	4290      	cmp	r0, r2
 8008858:	d124      	bne.n	80088a4 <rt_data_queue_push+0xd8>
 800885a:	9801      	ldr	r0, [sp, #4]
 800885c:	f8c9 8004 	str.w	r8, [r9, #4]
 8008860:	b1b8      	cbz	r0, 8008892 <rt_data_queue_push+0xc6>
 8008862:	f7f7 fc53 	bl	800010c <rt_hw_interrupt_disable>
 8008866:	4606      	mov	r6, r0
 8008868:	f7fd fd50 	bl	800630c <rt_interrupt_get_nest>
 800886c:	2800      	cmp	r0, #0
 800886e:	d0c2      	beq.n	80087f6 <rt_data_queue_push+0x2a>
 8008870:	4827      	ldr	r0, [pc, #156]	; (8008910 <rt_data_queue_push+0x144>)
 8008872:	4928      	ldr	r1, [pc, #160]	; (8008914 <rt_data_queue_push+0x148>)
 8008874:	f7fe fa16 	bl	8006ca4 <rt_kprintf>
 8008878:	4827      	ldr	r0, [pc, #156]	; (8008918 <rt_data_queue_push+0x14c>)
 800887a:	4928      	ldr	r1, [pc, #160]	; (800891c <rt_data_queue_push+0x150>)
 800887c:	4a25      	ldr	r2, [pc, #148]	; (8008914 <rt_data_queue_push+0x148>)
 800887e:	235f      	movs	r3, #95	; 0x5f
 8008880:	f88d 700f 	strb.w	r7, [sp, #15]
 8008884:	f7fe fa0e 	bl	8006ca4 <rt_kprintf>
 8008888:	f89d 200f 	ldrb.w	r2, [sp, #15]
 800888c:	2a00      	cmp	r2, #0
 800888e:	d0fb      	beq.n	8008888 <rt_data_queue_push+0xbc>
 8008890:	e7b1      	b.n	80087f6 <rt_data_queue_push+0x2a>
 8008892:	f06f 0601 	mvn.w	r6, #1
 8008896:	4628      	mov	r0, r5
 8008898:	f7f7 fc3c 	bl	8000114 <rt_hw_interrupt_enable>
 800889c:	4630      	mov	r0, r6
 800889e:	b005      	add	sp, #20
 80088a0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80088a4:	f8d9 100c 	ldr.w	r1, [r9, #12]
 80088a8:	464a      	mov	r2, r9
 80088aa:	f10b 34ff 	add.w	r4, fp, #4294967295
 80088ae:	f852 0f18 	ldr.w	r0, [r2, #24]!
 80088b2:	401c      	ands	r4, r3
 80088b4:	eb01 06c4 	add.w	r6, r1, r4, lsl #3
 80088b8:	f841 a034 	str.w	sl, [r1, r4, lsl #3]
 80088bc:	9900      	ldr	r1, [sp, #0]
 80088be:	3301      	adds	r3, #1
 80088c0:	4290      	cmp	r0, r2
 80088c2:	6071      	str	r1, [r6, #4]
 80088c4:	f8a9 300a 	strh.w	r3, [r9, #10]
 80088c8:	d016      	beq.n	80088f8 <rt_data_queue_push+0x12c>
 80088ca:	3814      	subs	r0, #20
 80088cc:	f7ff f928 	bl	8007b20 <rt_thread_resume>
 80088d0:	4628      	mov	r0, r5
 80088d2:	f7f7 fc1f 	bl	8000114 <rt_hw_interrupt_enable>
 80088d6:	2600      	movs	r6, #0
 80088d8:	f7fe fe50 	bl	800757c <rt_schedule>
 80088dc:	e7de      	b.n	800889c <rt_data_queue_push+0xd0>
 80088de:	480e      	ldr	r0, [pc, #56]	; (8008918 <rt_data_queue_push+0x14c>)
 80088e0:	490f      	ldr	r1, [pc, #60]	; (8008920 <rt_data_queue_push+0x154>)
 80088e2:	4a0c      	ldr	r2, [pc, #48]	; (8008914 <rt_data_queue_push+0x148>)
 80088e4:	234b      	movs	r3, #75	; 0x4b
 80088e6:	f88d 900e 	strb.w	r9, [sp, #14]
 80088ea:	f7fe f9db 	bl	8006ca4 <rt_kprintf>
 80088ee:	f89d 300e 	ldrb.w	r3, [sp, #14]
 80088f2:	2b00      	cmp	r3, #0
 80088f4:	d0fb      	beq.n	80088ee <rt_data_queue_push+0x122>
 80088f6:	e772      	b.n	80087de <rt_data_queue_push+0x12>
 80088f8:	4628      	mov	r0, r5
 80088fa:	f7f7 fc0b 	bl	8000114 <rt_hw_interrupt_enable>
 80088fe:	f8d9 6020 	ldr.w	r6, [r9, #32]
 8008902:	2e00      	cmp	r6, #0
 8008904:	d0ca      	beq.n	800889c <rt_data_queue_push+0xd0>
 8008906:	4648      	mov	r0, r9
 8008908:	2102      	movs	r1, #2
 800890a:	47b0      	blx	r6
 800890c:	2600      	movs	r6, #0
 800890e:	e7c5      	b.n	800889c <rt_data_queue_push+0xd0>
 8008910:	08009370 	.word	0x08009370
 8008914:	08009d28 	.word	0x08009d28
 8008918:	08008b10 	.word	0x08008b10
 800891c:	0800974c 	.word	0x0800974c
 8008920:	08009d3c 	.word	0x08009d3c

08008924 <atoi>:
 8008924:	b410      	push	{r4}
 8008926:	7801      	ldrb	r1, [r0, #0]
 8008928:	4602      	mov	r2, r0
 800892a:	3001      	adds	r0, #1
 800892c:	2920      	cmp	r1, #32
 800892e:	460b      	mov	r3, r1
 8008930:	f1a1 0409 	sub.w	r4, r1, #9
 8008934:	d0f7      	beq.n	8008926 <atoi+0x2>
 8008936:	2c04      	cmp	r4, #4
 8008938:	d9f5      	bls.n	8008926 <atoi+0x2>
 800893a:	292b      	cmp	r1, #43	; 0x2b
 800893c:	4610      	mov	r0, r2
 800893e:	d017      	beq.n	8008970 <atoi+0x4c>
 8008940:	292d      	cmp	r1, #45	; 0x2d
 8008942:	d019      	beq.n	8008978 <atoi+0x54>
 8008944:	2401      	movs	r4, #1
 8008946:	f1a3 0130 	sub.w	r1, r3, #48	; 0x30
 800894a:	2000      	movs	r0, #0
 800894c:	2909      	cmp	r1, #9
 800894e:	d80a      	bhi.n	8008966 <atoi+0x42>
 8008950:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 8008954:	eb03 0040 	add.w	r0, r3, r0, lsl #1
 8008958:	f812 3f01 	ldrb.w	r3, [r2, #1]!
 800895c:	3830      	subs	r0, #48	; 0x30
 800895e:	f1a3 0130 	sub.w	r1, r3, #48	; 0x30
 8008962:	2909      	cmp	r1, #9
 8008964:	d9f4      	bls.n	8008950 <atoi+0x2c>
 8008966:	1c63      	adds	r3, r4, #1
 8008968:	bf08      	it	eq
 800896a:	4240      	negeq	r0, r0
 800896c:	bc10      	pop	{r4}
 800896e:	4770      	bx	lr
 8008970:	2401      	movs	r4, #1
 8008972:	3201      	adds	r2, #1
 8008974:	7843      	ldrb	r3, [r0, #1]
 8008976:	e7e6      	b.n	8008946 <atoi+0x22>
 8008978:	f04f 34ff 	mov.w	r4, #4294967295
 800897c:	e7f9      	b.n	8008972 <atoi+0x4e>
 800897e:	bf00      	nop

08008980 <strncpy>:
 8008980:	f7fd be8e 	b.w	80066a0 <rt_strncpy>

08008984 <strcmp>:
 8008984:	7803      	ldrb	r3, [r0, #0]
 8008986:	780a      	ldrb	r2, [r1, #0]
 8008988:	b92b      	cbnz	r3, 8008996 <strcmp+0x12>
 800898a:	e006      	b.n	800899a <strcmp+0x16>
 800898c:	f810 3f01 	ldrb.w	r3, [r0, #1]!
 8008990:	b133      	cbz	r3, 80089a0 <strcmp+0x1c>
 8008992:	f811 2f01 	ldrb.w	r2, [r1, #1]!
 8008996:	4293      	cmp	r3, r2
 8008998:	d0f8      	beq.n	800898c <strcmp+0x8>
 800899a:	4618      	mov	r0, r3
 800899c:	1a80      	subs	r0, r0, r2
 800899e:	4770      	bx	lr
 80089a0:	784a      	ldrb	r2, [r1, #1]
 80089a2:	4618      	mov	r0, r3
 80089a4:	1a80      	subs	r0, r0, r2
 80089a6:	4770      	bx	lr

080089a8 <strncmp>:
 80089a8:	b430      	push	{r4, r5}
 80089aa:	2a00      	cmp	r2, #0
 80089ac:	d027      	beq.n	80089fe <strncmp+0x56>
 80089ae:	7803      	ldrb	r3, [r0, #0]
 80089b0:	780c      	ldrb	r4, [r1, #0]
 80089b2:	1b1c      	subs	r4, r3, r4
 80089b4:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 80089b8:	bf18      	it	ne
 80089ba:	b260      	sxtbne	r0, r4
 80089bc:	d11d      	bne.n	80089fa <strncmp+0x52>
 80089be:	b1f3      	cbz	r3, 80089fe <strncmp+0x56>
 80089c0:	1e43      	subs	r3, r0, #1
 80089c2:	189a      	adds	r2, r3, r2
 80089c4:	1a13      	subs	r3, r2, r0
 80089c6:	07db      	lsls	r3, r3, #31
 80089c8:	d501      	bpl.n	80089ce <strncmp+0x26>
 80089ca:	e00d      	b.n	80089e8 <strncmp+0x40>
 80089cc:	b1bc      	cbz	r4, 80089fe <strncmp+0x56>
 80089ce:	4290      	cmp	r0, r2
 80089d0:	4603      	mov	r3, r0
 80089d2:	d014      	beq.n	80089fe <strncmp+0x56>
 80089d4:	f813 4f01 	ldrb.w	r4, [r3, #1]!
 80089d8:	f811 5f01 	ldrb.w	r5, [r1, #1]!
 80089dc:	4618      	mov	r0, r3
 80089de:	1b63      	subs	r3, r4, r5
 80089e0:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
 80089e4:	d108      	bne.n	80089f8 <strncmp+0x50>
 80089e6:	b154      	cbz	r4, 80089fe <strncmp+0x56>
 80089e8:	f810 4f01 	ldrb.w	r4, [r0, #1]!
 80089ec:	f811 3f01 	ldrb.w	r3, [r1, #1]!
 80089f0:	1ae3      	subs	r3, r4, r3
 80089f2:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
 80089f6:	d0e9      	beq.n	80089cc <strncmp+0x24>
 80089f8:	b258      	sxtb	r0, r3
 80089fa:	bc30      	pop	{r4, r5}
 80089fc:	4770      	bx	lr
 80089fe:	2000      	movs	r0, #0
 8008a00:	e7fb      	b.n	80089fa <strncmp+0x52>
 8008a02:	bf00      	nop

08008a04 <strchr>:
 8008a04:	7803      	ldrb	r3, [r0, #0]
 8008a06:	b2c9      	uxtb	r1, r1
 8008a08:	b153      	cbz	r3, 8008a20 <strchr+0x1c>
 8008a0a:	4299      	cmp	r1, r3
 8008a0c:	d00b      	beq.n	8008a26 <strchr+0x22>
 8008a0e:	1c43      	adds	r3, r0, #1
 8008a10:	e001      	b.n	8008a16 <strchr+0x12>
 8008a12:	4291      	cmp	r1, r2
 8008a14:	d008      	beq.n	8008a28 <strchr+0x24>
 8008a16:	4618      	mov	r0, r3
 8008a18:	f813 2b01 	ldrb.w	r2, [r3], #1
 8008a1c:	2a00      	cmp	r2, #0
 8008a1e:	d1f8      	bne.n	8008a12 <strchr+0xe>
 8008a20:	2900      	cmp	r1, #0
 8008a22:	bf18      	it	ne
 8008a24:	2000      	movne	r0, #0
 8008a26:	4770      	bx	lr
 8008a28:	4770      	bx	lr
 8008a2a:	bf00      	nop
 8008a2c:	0001c200 	.word	0x0001c200
 8008a30:	00000008 	.word	0x00000008
 8008a34:	3a706572 	.word	0x3a706572
 8008a38:	7a5f6f74 	.word	0x7a5f6f74
 8008a3c:	206f7265 	.word	0x206f7265
 8008a40:	2e2e2e2e 	.word	0x2e2e2e2e
 8008a44:	00002e2e 	.word	0x00002e2e
 8008a48:	3a706572 	.word	0x3a706572
 8008a4c:	7a5f7266 	.word	0x7a5f7266
 8008a50:	206f7265 	.word	0x206f7265
 8008a54:	2e2e2e2e 	.word	0x2e2e2e2e
 8008a58:	00002e2e 	.word	0x00002e2e
 8008a5c:	5f747665 	.word	0x5f747665
 8008a60:	00000064 	.word	0x00000064
 8008a64:	5f646d63 	.word	0x5f646d63
 8008a68:	00000064 	.word	0x00000064
 8008a6c:	5f736461 	.word	0x5f736461
 8008a70:	00000064 	.word	0x00000064
 8008a74:	74696e69 	.word	0x74696e69
 8008a78:	00000000 	.word	0x00000000
 8008a7c:	57200d0a 	.word	0x57200d0a
 8008a80:	676e6f72 	.word	0x676e6f72
 8008a84:	72617020 	.word	0x72617020
 8008a88:	74656d61 	.word	0x74656d61
 8008a8c:	76207265 	.word	0x76207265
 8008a90:	65756c61 	.word	0x65756c61
 8008a94:	74656420 	.word	0x74656420
 8008a98:	65746365 	.word	0x65746365
 8008a9c:	6e6f2064 	.word	0x6e6f2064
 8008aa0:	00000a0d 	.word	0x00000a0d
 8008aa4:	20202020 	.word	0x20202020
 8008aa8:	66202020 	.word	0x66202020
 8008aac:	20656c69 	.word	0x20656c69
 8008ab0:	0d732520 	.word	0x0d732520
 8008ab4:	0000000a 	.word	0x0000000a
 8008ab8:	20202020 	.word	0x20202020
 8008abc:	6c202020 	.word	0x6c202020
 8008ac0:	20656e69 	.word	0x20656e69
 8008ac4:	0d642520 	.word	0x0d642520
 8008ac8:	0000000a 	.word	0x0000000a
 8008acc:	74726175 	.word	0x74726175
 8008ad0:	00000031 	.word	0x00000031

08008ad4 <__FUNCTION__.7400>:
 8008ad4:	336d7473 6f635f32 6f72746e 0000006c     stm32_control...

08008ae4 <__FUNCTION__.7413>:
 8008ae4:	336d7473 75705f32 00006374              stm32_putc..

08008af0 <__FUNCTION__.7426>:
 8008af0:	336d7473 65675f32 00006374              stm32_getc..

08008afc <stm32_uart_ops>:
 8008afc:	08000549 080004cd 08000485 0800043d     I...........=...
 8008b0c:	00000000 29732528 73736120 20747265     ....(%s) assert 
 8008b1c:	6c696166 61206465 73252074 2064253a     failed at %s:%d 
 8008b2c:	0000000a 69726573 21206c61 5452203d     ....serial != RT
 8008b3c:	4c554e5f 0000004c 20676663 52203d21     _NULL...cfg != R
 8008b4c:	554e5f54 00004c4c 74726175 00000032     T_NULL..uart2...
 8008b5c:	74726175 00000033                       uart3...

08008b64 <__FUNCTION__.7385>:
 8008b64:	336d7473 6f635f32 6769666e 00657275     stm32_configure.
 8008b74:	7262694c 65697261 54535c73 4632334d     Libraries\STM32F
 8008b84:	5f783031 50647453 70697265 72445f68     10x_StdPeriph_Dr
 8008b94:	72657669 6372735c 6d74735c 31663233     iver\src\stm32f1
 8008ba4:	725f7830 632e6363 00000000 7262694c     0x_rcc.c....Libr
 8008bb4:	65697261 54535c73 4632334d 5f783031     aries\STM32F10x_
 8008bc4:	50647453 70697265 72445f68 72657669     StdPeriph_Driver
 8008bd4:	6372735c 6d74735c 31663233 655f7830     \src\stm32f10x_e
 8008be4:	2e697478 00000063 7262694c 65697261     xti.c...Librarie
 8008bf4:	54535c73 4632334d 5f783031 50647453     s\STM32F10x_StdP
 8008c04:	70697265 72445f68 72657669 6372735c     eriph_Driver\src
 8008c14:	6d74735c 31663233 615f7830 632e6364     \stm32f10x_adc.c
 8008c24:	00000000 7262694c 65697261 54535c73     ....Libraries\ST
 8008c34:	4632334d 5f783031 50647453 70697265     M32F10x_StdPerip
 8008c44:	72445f68 72657669 6372735c 6d74735c     h_Driver\src\stm
 8008c54:	31663233 745f7830 632e6d69 00000000     32f10x_tim.c....
 8008c64:	7262694c 65697261 54535c73 4632334d     Libraries\STM32F
 8008c74:	5f783031 50647453 70697265 72445f68     10x_StdPeriph_Dr
 8008c84:	72657669 6372735c 6d74735c 31663233     iver\src\stm32f1
 8008c94:	665f7830 6873616c 0000632e 7262694c     0x_flash.c..Libr
 8008ca4:	65697261 54535c73 4632334d 5f783031     aries\STM32F10x_
 8008cb4:	50647453 70697265 72445f68 72657669     StdPeriph_Driver
 8008cc4:	6372735c 6d74735c 31663233 675f7830     \src\stm32f10x_g
 8008cd4:	2e6f6970 00000063 7262694c 65697261     pio.c...Librarie
 8008ce4:	54535c73 4632334d 5f783031 50647453     s\STM32F10x_StdP
 8008cf4:	70697265 72445f68 72657669 6372735c     eriph_Driver\src
 8008d04:	6d74735c 31663233 755f7830 74726173     \stm32f10x_usart
 8008d14:	0000632e 7262694c 65697261 54535c73     .c..Libraries\ST
 8008d24:	4632334d 5f783031 50647453 70697265     M32F10x_StdPerip
 8008d34:	72445f68 72657669 6372735c 6d74735c     h_Driver\src\stm
 8008d44:	31663233 645f7830 632e616d 00000000     32f10x_dma.c....
 8008d54:	7262694c 65697261 54535c73 4632334d     Libraries\STM32F
 8008d64:	5f783031 50647453 70697265 72445f68     10x_StdPeriph_Dr
 8008d74:	72657669 6372735c 73696d5c 00632e63     iver\src\misc.c.
 8008d84:	78343025 78343025 00000000 74697773     %04x%04x....swit
 8008d94:	525f6863 62205441 70206461 6d617261     ch_RAT bad param
 8008da4:	72657465 2e2e2e20 68732021 646c756f     eter ...! should
 8008db4:	20656220 7c557c52 544e7c49 41437c43      be R|U|I|NTC|CA
 8008dc4:	38347c4e 33327c35 0a0d2032 00000000     N|485|232 ......
 8008dd4:	706d6173 0000656c 006e7572 706f7473     sample..run.stop
 8008de4:	00000000 00676663 00747773 00616770     ....cfg.swt.pga.
 8008df4:	706d6574 00000000 756e616d 00006c61     temp....manual..
 8008e04:	65746e69 6c617672 00000000 6e616863     interval....chan
 8008e14:	006c656e 5f636461 756c6176 65722065     nel.adc_value re
 8008e24:	253a6461 000d0a78 64616572 0a73253a     ad:%x...read:%s.
 8008e34:	0000000d 5f636461 756c6176 72772065     ....adc_value wr
 8008e44:	3a657469 0d0a7825 00000000 3a746573     ite:%x......set:
 8008e54:	00627375 63200a0d 6f736e6f 7320656c     usb... console s
 8008e64:	74207465 7375206f 6f6e2062 2e2e2e77     et to usb now...
 8008e74:	000a0d2e 3a746573 00726573 63200a0d     ....set:ser... c
 8008e84:	6f736e6f 7320656c 74207465 6573206f     onsole set to se
 8008e94:	6c616972 6f6e2031 2e2e2e77 000a0d2e     rial1 now.......
 8008ea4:	72650a0d 75203a72 6f6e6b6e 6f632077     ..err: unknow co
 8008eb4:	6c6f736e 000a0d65 3e3e0d0a 6e755f5f     nsole.....>>__un
 8008ec4:	776f6e6b 6f63206e 6e616d6d 000d0a64     known command...
 8008ed4:	3e3e0d0a 6e6b6e75 206e776f 6d6d6f63     ..>>unknown comm
 8008ee4:	5f646e61 000d0a5f 736e6f63 00656c6f     and__...console.
 8008ef4:	73616c66 00000068 696c6163 00000062     flash...calib...
 8008f04:	6f746f6d 00000072 00636461 74756f76     motor...adc.vout
 8008f14:	00000000 00746573 00746567 20434441     ....set.get.ADC 
 8008f24:	74737953 69206d65 6974696e 7a696c61     System initializ
 8008f34:	0d216465 0000000a 3a706572 5f727265     ed!.....rep:err_
 8008f44:	6f6b6e75 61206e77 206f7475 6d6d6f63     unkown auto comm
 8008f54:	21646e61 0d2e2e2e 0000000a 3a706572     and!........rep:
 8008f64:	65636361 6172616c 2e2e6574 2e2e2e2e     accelarate......
 8008f74:	00000a0d 3a706572 65636364 6172616c     ....rep:dccelara
 8008f84:	2e2e6574 2e2e2e2e 00000a0d 3a706572     te..........rep:
 8008f94:	706f7473 2e2e2e2e 0a0d2e2e 00000000     stop............
 8008fa4:	3a706572 705f6f74 616c6c6f 2e2e2072     rep:to_pollar ..
 8008fb4:	2e2e2e2e 00000a0d 6f746f6d 6f6d3a72     ........motor:mo
 8008fc4:	783a6576 00003a3c 3a706572 705f7266     ve:x<:..rep:fr_p
 8008fd4:	616c6c6f 2e2e2072 2e2e2e2e 00000a0d     ollar ..........
 8008fe4:	3a706572 5f727265 6f6b6e75 64206e77     rep:err_unkown d
 8008ff4:	63657269 6e6f6974 0d2e2e2e 0000000a     irection........
 8009004:	3a706572 65766f6d 66207820 6177726f     rep:move x forwa
 8009014:	2e2e6472 2e2e2e2e 00000a0d 3a706572     rd..........rep:
 8009024:	65766f6d 62207820 776b6361 2e647261     move x backward.
 8009034:	2e2e2e2e 000a0d2e 3a706572 206e7572     ........rep:run 
 8009044:	6f662078 72617772 2e2e2e64 0d2e2e2e     x forward.......
 8009054:	0000000a 3a706572 206e7572 61622078     ....rep:run x ba
 8009064:	61776b63 2e2e6472 2e2e2e2e 00000a0d     ckward..........
 8009074:	3a706572 5f727265 6f6b6e75 64206e77     rep:err_unkown d
 8009084:	63657269 6e6f6974 000a0d2e 65766f6d     irection....move
 8009094:	00000000 6c636361 00000000 75746573     ....accl....setu
 80090a4:	00000070 6f747561 00000000 62617473     p...auto....stab
 80090b4:	7420656c 20656d69 74746573 2e2e6465     le time setted..
 80090c4:	0a0d212e 00000000 74756f76 63656420     .!......vout dec
 80090d4:	73616572 2e2e6465 0a0d212e 00000000     reased...!......
 80090e4:	74756f76 636e6920 73616572 2e2e6465     vout increased..
 80090f4:	0a0d212e 00000000 00636e69 00636564     .!......inc.dec.
 8009104:	20616770 74697277 2e2e6465 000a0d21     pga writed..!...
 8009114:	5f616770 65732052 64657474 212e2e2e     pga_R setted...!
 8009124:	00000a0d 5f616770 65732041 64657474     ....pga_A setted
 8009134:	212e2e2e 00000a0d 5f616770 65732042     ...!....pga_B se
 8009144:	64657474 212e2e2e 00000a0d 5f616770     tted...!....pga_
 8009154:	65732053 64657474 212e2e2e 00000a0d     S setted...!....
 8009164:	20616770 20646162 61726170 6574656d     pga bad paramete
 8009174:	2e2e2072 7320212e 6c756f68 65622064     r ...! should be
 8009184:	417c5220 0d20427c 0000000a 006d6573      R|A|B .....sem.

08009194 <GPIO_PIN>:
 8009194:	00800100 02000100                       ........

0800919c <CustomHID_DeviceDescriptor>:
 800919c:	02000112 40000000 57500483 02010200     .......@..PW....
 80091ac:	00000103                                ....

080091b0 <CustomHID_StringProduct>:
 80091b0:	00530320 004d0054 00320033 00430020      .S.T.M.3.2. .C.
 80091c0:	00730075 006d0074 00480020 00440049     u.s.t.m. .H.I.D.

080091d0 <CustomHID_StringVendor>:
 80091d0:	00530326 004d0054 00630069 006f0072     &.S.T.M.i.c.r.o.
 80091e0:	006c0065 00630065 00720074 006e006f     e.l.e.c.t.r.o.n.
 80091f0:	00630069 00000073                       i.c.s...

080091f8 <CustomHID_ReportDescriptor>:
 80091f8:	0900ff06 8501a101 15010901 75012500     .............%.u
 8009208:	b1019508 09018582 85829101 15020902     ................
 8009218:	75012500 b1019508 09028582 85829102     .%.u............
 8009228:	15030903 75012500 b1019508 09038582     .....%.u........
 8009238:	85829103 15040904 75012500 b1019508     .........%.u....
 8009248:	09048582 05829104 a1ff09ff 19010501     ................
 8009258:	15ff2900 75ff2500 81409508 19020502     .)...%.u..@.....
 8009268:	15ff2900 95ff2500 91407508 0000c002     .)...%...u@.....
	...

0800929c <CustomHID_ConfigDescriptor>:
 800929c:	00290209 c0000101 00040932 00030200     ..).....2.......
 80092ac:	21090000 01000110 0700a322 40038205     ...!...."......@
 80092bc:	05070100 00400301 00000005              ......@.....

080092c8 <CustomHID_StringLangID>:
 80092c8:	04090304                                ....

080092cc <__FUNCTION__.4689>:
 80092cc:	645f7472 63697665 6c635f65 0065736f     rt_device_close.
 80092dc:	20766564 52203d21 554e5f54 00004c4c     dev != RT_NULL..
 80092ec:	69206f54 6974696e 7a696c61 65642065     To initialize de
 80092fc:	65636976 2073253a 6c696166 202e6465     vice:%s failed. 
 800930c:	20656854 6f727265 6f632072 69206564     The error code i
 800931c:	64252073 0000000a 2d766564 6665723e     s %d....dev->ref
 800932c:	756f635f 2120746e 0030203d              _count != 0.

08009338 <__FUNCTION__.4711>:
 8009338:	645f7472 63697665 72775f65 00657469     rt_device_write.

08009348 <__FUNCTION__.4676>:
 8009348:	645f7472 63697665 706f5f65 00006e65     rt_device_open..

08009358 <__FUNCTION__.4698>:
 8009358:	745f7472 61657268 64695f64 655f656c     rt_thread_idle_e
 8009368:	74756378 00000065 636e7546 6e6f6974     xcute...Function
 8009378:	5d73255b 61687320 6e206c6c 7520746f     [%s] shall not u
 8009388:	20646573 49206e69 000a5253 6c646974     sed in ISR..tidl
 8009398:	00000065                                e...

0800939c <__FUNCTION__.4744>:
 800939c:	735f7472 635f6d65 74616572 00000065     rt_sem_create...
 80093ac:	206d6573 52203d21 554e5f54 00004c4c     sem != RT_NULL..
 80093bc:	636e7546 6e6f6974 5d73255b 61687320     Function[%s] sha
 80093cc:	6e206c6c 6220746f 73752065 62206465     ll not be used b
 80093dc:	726f6665 63732065 75646568 2072656c     efore scheduler 
 80093ec:	72617473 00000a74                       start...

080093f4 <__FUNCTION__.4769>:
 80093f4:	735f7472 745f6d65 00656b61              rt_sem_take.

08009400 <__FUNCTION__.4725>:
 8009400:	735f7472 695f6d65 0074696e              rt_sem_init.

0800940c <small_digits.4848>:
 800940c:	33323130 37363534 62613938 66656463     0123456789abcdef
 800941c:	00000000                                ....

08009420 <large_digits.4849>:
 8009420:	33323130 37363534 42413938 46454443     0123456789ABCDEF
 8009430:	00000000 4c554e28 0000294c 205c200a     ....(NULL)... \ 
 8009440:	0a2f207c 00000000 5452202d 20202d20     | /.....- RT -  
 8009450:	54202020 61657268 704f2064 74617265        Thread Operat
 8009460:	20676e69 74737953 000a6d65 7c202f20     ing System.. / |
 8009470:	20205c20 25202020 64252e64 2064252e      \     %d.%d.%d 
 8009480:	6c697562 73252064 0000000a 20636544     build %s....Dec 
 8009490:	32203820 00343130 30303220 202d2036      8 2014. 2006 - 
 80094a0:	33313032 706f4320 67697279 62207468     2013 Copyright b
 80094b0:	74722079 7268742d 20646165 6d616574     y rt-thread team
 80094c0:	0000000a                                ....

080094c4 <__lowest_bit_bitmap>:
 80094c4:	00010000 00010002 00010003 00010002     ................
 80094d4:	00010004 00010002 00010003 00010002     ................
 80094e4:	00010005 00010002 00010003 00010002     ................
 80094f4:	00010004 00010002 00010003 00010002     ................
 8009504:	00010006 00010002 00010003 00010002     ................
 8009514:	00010004 00010002 00010003 00010002     ................
 8009524:	00010005 00010002 00010003 00010002     ................
 8009534:	00010004 00010002 00010003 00010002     ................
 8009544:	00010007 00010002 00010003 00010002     ................
 8009554:	00010004 00010002 00010003 00010002     ................
 8009564:	00010005 00010002 00010003 00010002     ................
 8009574:	00010004 00010002 00010003 00010002     ................
 8009584:	00010006 00010002 00010003 00010002     ................
 8009594:	00010004 00010002 00010003 00010002     ................
 80095a4:	00010005 00010002 00010003 00010002     ................
 80095b4:	00010004 00010002 00010003 00010002     ................

080095c4 <__FUNCTION__.4736>:
 80095c4:	735f7472 65747379 65685f6d 695f7061     rt_system_heap_i
 80095d4:	0074696e                                nit.

080095d8 <__FUNCTION__.4749>:
 80095d8:	6d5f7472 6f6c6c61 00000063              rt_malloc...

080095e4 <__FUNCTION__.4808>:
 80095e4:	665f7472 00656572 5f747228 746e6975     rt_free.(rt_uint
 80095f4:	20745f38 656d292a 3d3e206d 61656820     8_t *)mem >= hea
 8009604:	74705f70 00000072 5f747228 746e6975     p_ptr...(rt_uint
 8009614:	20745f38 656d292a 203c206d 5f747228     8_t *)mem < (rt_
 8009624:	746e6975 20745f38 6568292a 655f7061     uint8_t *)heap_e
 8009634:	0000646e 2d6d656d 6573753e 3d3d2064     nd..mem->used ==
 8009644:	00003020 70616568 00000000 206d656d      0..heap....mem 
 8009654:	74696e69 7265202c 20726f72 69676562     init, error begi
 8009664:	6461206e 73657264 78302073 202c7825     n address 0x%x, 
 8009674:	20646e61 20646e65 72646461 20737365     and end address 
 8009684:	78257830 0000000a 5f747228 746e6975     0x%x....(rt_uint
 8009694:	745f3233 6d656d29 53202b20 4f455a49     32_t)mem + SIZEO
 80096a4:	54535f46 54435552 4d454d5f 73202b20     F_STRUCT_MEM + s
 80096b4:	20657a69 28203d3c 755f7472 33746e69     ize <= (rt_uint3
 80096c4:	29745f32 70616568 646e655f 00000000     2_t)heap_end....
 80096d4:	5f747228 746e6975 745f3233 72282829     (rt_uint32_t)((r
 80096e4:	69755f74 5f38746e 292a2074 206d656d     t_uint8_t *)mem 
 80096f4:	4953202b 464f455a 5254535f 5f544355     + SIZEOF_STRUCT_
 8009704:	294d454d 52202520 4c415f54 5f4e4749     MEM) % RT_ALIGN_
 8009714:	455a4953 203d3d20 00000030 72282828     SIZE == 0...(((r
 8009724:	69755f74 3233746e 6d29745f 20296d65     t_uint32_t)mem) 
 8009734:	52282026 4c415f54 5f4e4749 455a4953     & (RT_ALIGN_SIZE
 8009744:	2929312d 203d3d20 00000030 72282828     -1)) == 0...(((r
 8009754:	69755f74 3233746e 7229745f 296d656d     t_uint32_t)rmem)
 8009764:	28202620 415f5452 4e47494c 5a49535f      & (RT_ALIGN_SIZ
 8009774:	29312d45 3d3d2029 00003020 5f747228     E-1)) == 0..(rt_
 8009784:	746e6975 20745f38 6d72292a 3e206d65     uint8_t *)rmem >
 8009794:	7228203d 69755f74 5f38746e 292a2074     = (rt_uint8_t *)
 80097a4:	70616568 7274705f 20262620 5f747228     heap_ptr && (rt_
 80097b4:	746e6975 20745f38 6d72292a 3c206d65     uint8_t *)rmem <
 80097c4:	74722820 6e69755f 745f3874 68292a20      (rt_uint8_t *)h
 80097d4:	5f706165 00646e65 2d6d656d 6573753e     eap_end.mem->use
 80097e4:	00000064 2d6d656d 67616d3e 3d206369     d...mem->magic =
 80097f4:	4548203d 4d5f5041 43494741 00000000     = HEAP_MAGIC....

08009804 <__FUNCTION__.4716>:
 8009804:	67756c70 6c6f685f 00007365              plug_holes..

08009810 <__FUNCTION__.4745>:
 8009810:	6f5f7472 63656a62 6c615f74 61636f6c     rt_object_alloca
 8009820:	00006574                                te..

08009824 <__FUNCTION__.4755>:
 8009824:	6f5f7472 63656a62 65645f74 6574656c     rt_object_delete
 8009834:	00000000 656a626f 21207463 5452203d     ....object != RT
 8009844:	4c554e5f 0000004c 626f2821 7463656a     _NULL...!(object
 8009854:	79743e2d 26206570 5f545220 656a624f     ->type & RT_Obje
 8009864:	435f7463 7373616c 6174535f 29636974     ct_Class_Static)
 8009874:	00000000                                ....

08009878 <__FUNCTION__.4767>:
 8009878:	6f5f7472 63656a62 73695f74 7379735f     rt_object_is_sys
 8009888:	6f6d6574 63656a62 00000074              temobject...

08009894 <__FUNCTION__.4733>:
 8009894:	6f5f7472 63656a62 65645f74 68636174     rt_object_detach
 80098a4:	00000000                                ....

080098a8 <__FUNCTION__.4737>:
 80098a8:	735f7472 64656863 5f656c75 65736e69     rt_schedule_inse
 80098b8:	745f7472 61657268 00000064              rt_thread...

080098c4 <__FUNCTION__.4746>:
 80098c4:	735f7472 64656863 5f656c75 6f6d6572     rt_schedule_remo
 80098d4:	745f6576 61657268 00000064              ve_thread...

080098e0 <__FUNCTION__.4705>:
 80098e0:	5f74725f 65686373 656c7564 74735f72     _rt_scheduler_st
 80098f0:	5f6b6361 63656863 0000006b 65726874     ack_check...thre
 8009900:	21206461 5452203d 4c554e5f 0000004c     ad != RT_NULL...
 8009910:	65726874 253a6461 74732073 206b6361     thread:%s stack 
 8009920:	7265766f 776f6c66 0000000a 6e726177     overflow....warn
 8009930:	3a676e69 20732520 63617473 7369206b     ing: %s stack is
 8009940:	6f6c6320 74206573 6e65206f 666f2064      close to end of
 8009950:	61747320 61206b63 65726464 0a2e7373      stack address..
 8009960:	00000000                                ....

08009964 <__FUNCTION__.4735>:
 8009964:	745f7472 61657268 74735f64 75747261     rt_thread_startu
 8009974:	00000070                                p...

08009978 <__FUNCTION__.4811>:
 8009978:	745f7472 61657268 75735f64 6e657073     rt_thread_suspen
 8009988:	00000064                                d...

0800998c <__FUNCTION__.4704>:
 800998c:	5f74725f 65726874 695f6461 0074696e     _rt_thread_init.
 800999c:	65726874 3e2d6461 74617473 203d3d20     thread->stat == 
 80099ac:	545f5452 41455248 55535f44 4e455053     RT_THREAD_SUSPEN
 80099bc:	00000044 6f697270 79746972 52203c20     D...priority < R
 80099cc:	48545f54 44414552 4952505f 5449524f     T_THREAD_PRIORIT
 80099dc:	414d5f59 00000058 63617473 74735f6b     Y_MAX...stack_st
 80099ec:	20747261 52203d21 554e5f54 00004c4c     art != RT_NULL..
 80099fc:	65726874 3e2d6461 74617473 203d3d20     thread->stat == 
 8009a0c:	545f5452 41455248 4e495f44 00005449     RT_THREAD_INIT..

08009a1c <__FUNCTION__.4720>:
 8009a1c:	745f7472 61657268 6e695f64 00007469     rt_thread_init..

08009a2c <__FUNCTION__.4783>:
 8009a2c:	745f7472 61657268 6c735f64 00706565     rt_thread_sleep.

08009a3c <__FUNCTION__.4829>:
 8009a3c:	745f7472 61657268 69745f64 756f656d     rt_thread_timeou
 8009a4c:	00000074                                t...

08009a50 <__FUNCTION__.4820>:
 8009a50:	745f7472 61657268 65725f64 656d7573     rt_thread_resume
 8009a60:	00000000                                ....

08009a64 <__FUNCTION__.4744>:
 8009a64:	745f7472 72656d69 696e695f 00000074     rt_timer_init...

08009a74 <__FUNCTION__.4753>:
 8009a74:	745f7472 72656d69 7465645f 00686361     rt_timer_detach.

08009a84 <__FUNCTION__.4810>:
 8009a84:	745f7472 72656d69 6f74735f 00000070     rt_timer_stop...

08009a94 <__FUNCTION__.4820>:
 8009a94:	745f7472 72656d69 6e6f635f 6c6f7274     rt_timer_control
 8009aa4:	00000000 00006425 656d6974 3d212072     ....%d..timer !=
 8009ab4:	5f545220 4c4c554e 00000000 656d6974      RT_NULL....time
 8009ac4:	693e2d72 5f74696e 6b636974 52203c20     r->init_tick < R
 8009ad4:	49545f54 4d5f4b43 2f205841 00003220     T_TICK_MAX / 2..

08009ae4 <__FUNCTION__.4785>:
 8009ae4:	745f7472 72656d69 6174735f 00007472     rt_timer_start..
 8009af4:	3a727370 25783020 0a783830 00000000     psr: 0x%08x.....
 8009b04:	3a303072 25783020 0a783830 00000000     r00: 0x%08x.....
 8009b14:	3a313072 25783020 0a783830 00000000     r01: 0x%08x.....
 8009b24:	3a323072 25783020 0a783830 00000000     r02: 0x%08x.....
 8009b34:	3a333072 25783020 0a783830 00000000     r03: 0x%08x.....
 8009b44:	3a343072 25783020 0a783830 00000000     r04: 0x%08x.....
 8009b54:	3a353072 25783020 0a783830 00000000     r05: 0x%08x.....
 8009b64:	3a363072 25783020 0a783830 00000000     r06: 0x%08x.....
 8009b74:	3a373072 25783020 0a783830 00000000     r07: 0x%08x.....
 8009b84:	3a383072 25783020 0a783830 00000000     r08: 0x%08x.....
 8009b94:	3a393072 25783020 0a783830 00000000     r09: 0x%08x.....
 8009ba4:	3a303172 25783020 0a783830 00000000     r10: 0x%08x.....
 8009bb4:	3a313172 25783020 0a783830 00000000     r11: 0x%08x.....
 8009bc4:	3a323172 25783020 0a783830 00000000     r12: 0x%08x.....
 8009bd4:	3a726c20 25783020 0a783830 00000000      lr: 0x%08x.....
 8009be4:	3a637020 25783020 0a783830 00000000      pc: 0x%08x.....
 8009bf4:	64726168 75616620 6f20746c 6874206e     hard fault on th
 8009c04:	64616572 7325203a 0a0d0a0d 00000000     read: %s........
 8009c14:	64726168 75616620 6f20746c 6168206e     hard fault on ha
 8009c24:	656c646e 0d0a0d72 0000000a 74756873     ndler.......shut
 8009c34:	6e776f64 0a2e2e2e 00000000              down........

08009c40 <__FUNCTION__.4963>:
 8009c40:	735f7472 61697265 72775f6c 00657469     rt_serial_write.

08009c50 <__FUNCTION__.4907>:
 8009c50:	735f7472 61697265 6e695f6c 00007469     rt_serial_init..

08009c60 <__FUNCTION__.4918>:
 8009c60:	735f7472 61697265 706f5f6c 00006e65     rt_serial_open..

08009c70 <__FUNCTION__.4986>:
 8009c70:	735f7472 61697265 6f635f6c 6f72746e     rt_serial_contro
 8009c80:	0000006c 3d3d2030 65642820 663e2d76     l...0 == (dev->f
 8009c90:	2067616c 54522026 5645445f 5f454349     lag & RT_DEVICE_
 8009ca0:	47414c46 5254535f 294d4145 00000000     FLAG_STREAM)....
 8009cb0:	69726573 3e2d6c61 65726170 662e746e     serial->parent.f
 8009cc0:	2067616c 54522026 5645445f 5f454349     lag & RT_DEVICE_
 8009cd0:	47414c46 544e495f 0058525f              FLAG_INT_RX.

08009cdc <__FUNCTION__.4942>:
 8009cdc:	735f7472 61697265 65725f6c 00006461     rt_serial_read..

08009cec <__FUNCTION__.5002>:
 8009cec:	685f7472 65735f77 6c616972 6765725f     rt_hw_serial_reg
 8009cfc:	65747369 00000072                       ister...

08009d04 <__FUNCTION__.5011>:
 8009d04:	685f7472 65735f77 6c616972 7273695f     rt_hw_serial_isr
 8009d14:	00000000                                ....

08009d18 <__FUNCTION__.4928>:
 8009d18:	735f7472 61697265 6c635f6c 0065736f     rt_serial_close.

08009d28 <__FUNCTION__.4903>:
 8009d28:	645f7472 5f617461 75657571 75705f65     rt_data_queue_pu
 8009d38:	00006873 75657571 3d212065 5f545220     sh..queue != RT_
 8009d48:	4c4c554e 00000000 61746164 7274705f     NULL....data_ptr
 8009d58:	203d2120 4e5f5452 004c4c55 657a6973      != RT_NULL.size
 8009d68:	203d2120 4e5f5452 004c4c55               != RT_NULL.

08009d74 <__FUNCTION__.4888>:
 8009d74:	645f7472 5f617461 75657571 6e695f65     rt_data_queue_in
 8009d84:	00007469                                it..
