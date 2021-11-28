	.cpu arm7tdmi
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 1	@ Tag_ABI_enum_size
	.eabi_attribute 30, 4	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"DrawPage3.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.global	__aeabi_idiv
	.align	1
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	DisplayWeaponExp, %function
DisplayWeaponExp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
	movs	r5, r1	@ x, tmp196
@ StatusScreen/DrawPages/src/DrawPage3.c:15: 		gBmFrameTmap0 + TILEMAP_INDEX(x, y),
	lsls	r4, r2, #5	@ _3, tmp197,
@ StatusScreen/DrawPages/src/DrawPage3.c:14: 	DrawIcon(
	movs	r2, #160	@,
@ StatusScreen/DrawPages/src/DrawPage3.c:11: 	int wexp = gStatScreen.unit->ranks[wtype];
	ldr	r1, .L4	@ tmp146,
@ StatusScreen/DrawPages/src/DrawPage3.c:11: 	int wexp = gStatScreen.unit->ranks[wtype];
	ldr	r1, [r1, #12]	@ gStatScreen.unit, gStatScreen.unit
	adds	r1, r1, r3	@ tmp148, gStatScreen.unit, wtype
@ StatusScreen/DrawPages/src/DrawPage3.c:9: void DisplayWeaponExp(int num, int x, int y, int wtype){
	sub	sp, sp, #36	@,,
@ StatusScreen/DrawPages/src/DrawPage3.c:11: 	int wexp = gStatScreen.unit->ranks[wtype];
	adds	r1, r1, #40	@ tmp151,
@ StatusScreen/DrawPages/src/DrawPage3.c:14: 	DrawIcon(
	adds	r3, r3, #112	@ wtype,
@ StatusScreen/DrawPages/src/DrawPage3.c:9: void DisplayWeaponExp(int num, int x, int y, int wtype){
	str	r0, [sp, #20]	@ tmp195, %sfp
@ StatusScreen/DrawPages/src/DrawPage3.c:11: 	int wexp = gStatScreen.unit->ranks[wtype];
	ldrb	r6, [r1]	@ wexp, *_1
@ StatusScreen/DrawPages/src/DrawPage3.c:15: 		gBmFrameTmap0 + TILEMAP_INDEX(x, y),
	adds	r0, r4, r5	@ tmp154, _3, x
@ StatusScreen/DrawPages/src/DrawPage3.c:14: 	DrawIcon(
	movs	r1, r3	@ tmp153, wtype
	ldr	r3, .L4+4	@ tmp157,
@ StatusScreen/DrawPages/src/DrawPage3.c:15: 		gBmFrameTmap0 + TILEMAP_INDEX(x, y),
	lsls	r0, r0, #1	@ tmp155, tmp154,
@ StatusScreen/DrawPages/src/DrawPage3.c:14: 	DrawIcon(
	str	r3, [sp, #16]	@ tmp157, %sfp
	adds	r0, r0, r3	@ tmp156, tmp155, tmp157
	lsls	r2, r2, #7	@,,
	ldr	r3, .L4+8	@ tmp158,
	bl	.L6		@
@ StatusScreen/DrawPages/src/DrawPage3.c:21:         : TEXT_COLOR_BLUE;
	movs	r7, #4	@ iftmp.0_29,
	cmp	r6, #250	@ wexp,
	bgt	.L2		@,
	subs	r7, r7, #2	@ iftmp.0_29,
.L2:
@ StatusScreen/DrawPages/src/DrawPage3.c:24: 	DrawSpecialUiChar(gBmFrameTmap0 + TILEMAP_INDEX(x + 4, y),
	movs	r0, r6	@, wexp
	ldr	r3, .L4+12	@ tmp159,
	bl	.L6		@
@ StatusScreen/DrawPages/src/DrawPage3.c:24: 	DrawSpecialUiChar(gBmFrameTmap0 + TILEMAP_INDEX(x + 4, y),
	adds	r3, r5, #4	@ tmp160, x,
	adds	r3, r3, r4	@ tmp161, tmp160, _3
@ StatusScreen/DrawPages/src/DrawPage3.c:30:         gBmFrameTmap1 + TILEMAP_INDEX(x + 2, y + 1), TILEREF(0, STATSCREEN_BGPAL_6),
	adds	r4, r4, r5	@ tmp171, _3, x
@ StatusScreen/DrawPages/src/DrawPage3.c:29: 	DrawBarsInternal(0x401 + num*6, 5,
	movs	r5, #6	@ tmp176,
@ StatusScreen/DrawPages/src/DrawPage3.c:24: 	DrawSpecialUiChar(gBmFrameTmap0 + TILEMAP_INDEX(x + 4, y),
	movs	r2, r0	@ _14, tmp199
@ StatusScreen/DrawPages/src/DrawPage3.c:24: 	DrawSpecialUiChar(gBmFrameTmap0 + TILEMAP_INDEX(x + 4, y),
	lsls	r0, r3, #1	@ tmp162, tmp161,
@ StatusScreen/DrawPages/src/DrawPage3.c:24: 	DrawSpecialUiChar(gBmFrameTmap0 + TILEMAP_INDEX(x + 4, y),
	ldr	r3, [sp, #16]	@ tmp157, %sfp
	movs	r1, r7	@, iftmp.0_29
	adds	r0, r3, r0	@ tmp163, tmp157, tmp162
	ldr	r3, .L4+16	@ tmp165,
	bl	.L6		@
@ StatusScreen/DrawPages/src/DrawPage3.c:28: 	GetWeaponExpProgressState(wexp, &progress, &progressMax);
	add	r2, sp, #28	@,,
	movs	r0, r6	@, wexp
	add	r1, sp, #24	@,,
	ldr	r3, .L4+20	@ tmp168,
	bl	.L6		@
@ StatusScreen/DrawPages/src/DrawPage3.c:30:         gBmFrameTmap1 + TILEMAP_INDEX(x + 2, y + 1), TILEREF(0, STATSCREEN_BGPAL_6),
	adds	r4, r4, #34	@ tmp172,
@ StatusScreen/DrawPages/src/DrawPage3.c:29: 	DrawBarsInternal(0x401 + num*6, 5,
	ldr	r3, .L4+24	@ tmp175,
@ StatusScreen/DrawPages/src/DrawPage3.c:30:         gBmFrameTmap1 + TILEMAP_INDEX(x + 2, y + 1), TILEREF(0, STATSCREEN_BGPAL_6),
	lsls	r4, r4, #1	@ tmp173, tmp172,
@ StatusScreen/DrawPages/src/DrawPage3.c:29: 	DrawBarsInternal(0x401 + num*6, 5,
	adds	r4, r4, r3	@ tmp174, tmp173, tmp175
@ StatusScreen/DrawPages/src/DrawPage3.c:29: 	DrawBarsInternal(0x401 + num*6, 5,
	ldr	r3, [sp, #20]	@ tmp177, %sfp
	muls	r3, r5	@ tmp177, tmp176
	movs	r5, r3	@ tmp177, tmp177
@ StatusScreen/DrawPages/src/DrawPage3.c:29: 	DrawBarsInternal(0x401 + num*6, 5,
	ldr	r3, .L4+28	@ tmp211,
@ StatusScreen/DrawPages/src/DrawPage3.c:31:         0x22, (progress*34)/(progressMax-1), 0);
	movs	r6, #34	@ tmp180,
@ StatusScreen/DrawPages/src/DrawPage3.c:29: 	DrawBarsInternal(0x401 + num*6, 5,
	adds	r5, r5, r3	@ tmp178, tmp177, tmp211
	movs	r3, #0	@ tmp179,
@ StatusScreen/DrawPages/src/DrawPage3.c:31:         0x22, (progress*34)/(progressMax-1), 0);
	ldr	r0, [sp, #24]	@ progress, progress
@ StatusScreen/DrawPages/src/DrawPage3.c:31:         0x22, (progress*34)/(progressMax-1), 0);
	ldr	r1, [sp, #28]	@ progressMax, progressMax
@ StatusScreen/DrawPages/src/DrawPage3.c:29: 	DrawBarsInternal(0x401 + num*6, 5,
	str	r3, [sp, #8]	@ tmp179,
@ StatusScreen/DrawPages/src/DrawPage3.c:31:         0x22, (progress*34)/(progressMax-1), 0);
	muls	r0, r6	@ tmp181, tmp180
@ StatusScreen/DrawPages/src/DrawPage3.c:29: 	DrawBarsInternal(0x401 + num*6, 5,
	ldr	r3, .L4+32	@ tmp188,
@ StatusScreen/DrawPages/src/DrawPage3.c:31:         0x22, (progress*34)/(progressMax-1), 0);
	subs	r1, r1, #1	@ tmp183,
@ StatusScreen/DrawPages/src/DrawPage3.c:29: 	DrawBarsInternal(0x401 + num*6, 5,
	bl	.L6		@
	movs	r3, #192	@,
	movs	r2, r4	@, tmp174
	str	r0, [sp, #4]	@ tmp200,
	movs	r1, #5	@,
	movs	r0, r5	@, tmp178
	str	r6, [sp]	@ tmp180,
	ldr	r4, .L4+36	@ tmp191,
	lsls	r3, r3, #7	@,,
	bl	.L7		@
@ StatusScreen/DrawPages/src/DrawPage3.c:32: }
	add	sp, sp, #36	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L5:
	.align	2
.L4:
	.word	gStatScreen
	.word	gBmFrameTmap0
	.word	DrawIcon
	.word	GetDisplayRankSpecialCharFromExp
	.word	DrawSpecialUiChar
	.word	GetWeaponExpProgressState
	.word	gBmFrameTmap1
	.word	1025
	.word	__aeabi_idiv
	.word	DrawBarsInternal
	.size	DisplayWeaponExp, .-DisplayWeaponExp
	.align	1
	.global	StatScreen_DrawPage3
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	StatScreen_DrawPage3, %function
StatScreen_DrawPage3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ StatusScreen/DrawPages/src/DrawPage3.c:35: 	DisplayWeaponExp(0, 1, 1, ITYPE_SWORD);
	movs	r3, #0	@,
	movs	r2, #1	@,
@ StatusScreen/DrawPages/src/DrawPage3.c:48: void StatScreen_DrawPage3(void){
	push	{r4, lr}	@
@ StatusScreen/DrawPages/src/DrawPage3.c:35: 	DisplayWeaponExp(0, 1, 1, ITYPE_SWORD);
	movs	r1, r2	@,
@ StatusScreen/DrawPages/src/DrawPage3.c:52: }
	@ sp needed	@
@ StatusScreen/DrawPages/src/DrawPage3.c:35: 	DisplayWeaponExp(0, 1, 1, ITYPE_SWORD);
	movs	r0, r3	@,
	bl	DisplayWeaponExp		@
@ StatusScreen/DrawPages/src/DrawPage3.c:36: 	DisplayWeaponExp(1, 1, 3, ITYPE_LANCE);
	movs	r3, #1	@,
	movs	r2, #3	@,
	movs	r1, r3	@,
	movs	r0, r3	@, tmp1
	bl	DisplayWeaponExp		@
@ StatusScreen/DrawPages/src/DrawPage3.c:37: 	DisplayWeaponExp(2, 1, 5, ITYPE_AXE);
	movs	r3, #2	@,
	movs	r2, #5	@,
	movs	r0, r3	@,
	movs	r1, #1	@,
	bl	DisplayWeaponExp		@
@ StatusScreen/DrawPages/src/DrawPage3.c:38: 	DisplayWeaponExp(3, 1, 7, ITYPE_BOW);
	movs	r3, #3	@,
	movs	r2, #7	@,
	movs	r0, r3	@,
	movs	r1, #1	@,
	bl	DisplayWeaponExp		@
@ StatusScreen/DrawPages/src/DrawPage3.c:39: 	DisplayWeaponExp(8, 1, 9, 0xB);
	movs	r3, #11	@,
	movs	r2, #9	@,
	movs	r1, #1	@,
	movs	r0, #8	@,
	bl	DisplayWeaponExp		@
@ StatusScreen/DrawPages/src/DrawPage3.c:41: 	DisplayWeaponExp(4, 9, 1, ITYPE_DARK);
	movs	r3, #7	@,
	movs	r2, #1	@,
	movs	r1, #9	@,
	movs	r0, #4	@,
	bl	DisplayWeaponExp		@
@ StatusScreen/DrawPages/src/DrawPage3.c:42: 	DisplayWeaponExp(5, 9, 3, ITYPE_STAFF);
	movs	r3, #4	@,
	movs	r2, #3	@,
	movs	r1, #9	@,
	movs	r0, #5	@,
	bl	DisplayWeaponExp		@
@ StatusScreen/DrawPages/src/DrawPage3.c:43: 	DisplayWeaponExp(6, 9, 5, 0x11);
	movs	r3, #17	@,
	movs	r2, #5	@,
	movs	r1, #9	@,
	movs	r0, #6	@,
	bl	DisplayWeaponExp		@
@ StatusScreen/DrawPages/src/DrawPage3.c:44: 	DisplayWeaponExp(7, 9, 7, 0x12);
	movs	r2, #7	@,
	movs	r3, #18	@,
	movs	r0, r2	@,
	movs	r1, #9	@,
	bl	DisplayWeaponExp		@
@ StatusScreen/DrawPages/src/DrawPage3.c:45: 	DisplayWeaponExp(9, 9, 9, 0xC);
	movs	r2, #9	@,
	movs	r3, #12	@,
	movs	r1, r2	@,
	movs	r0, r2	@, tmp1
	bl	DisplayWeaponExp		@
@ StatusScreen/DrawPages/src/DrawPage3.c:52: }
	pop	{r4}
	pop	{r0}
	bx	r0
	.size	StatScreen_DrawPage3, .-StatScreen_DrawPage3
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L6:
	bx	r3
.L7:
	bx	r4
