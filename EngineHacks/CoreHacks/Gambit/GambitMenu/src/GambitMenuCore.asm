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
	.file	"GambitMenuCore.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	Gambit_UpperMenu_Usability
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Gambit_UpperMenu_Usability, %function
Gambit_UpperMenu_Usability:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ Gambit/GambitMenu/src/GambitMenuCore.c:12: 	gUnitSubject = gActiveUnit;
	ldr	r3, .L4	@ tmp118,
	ldr	r0, [r3]	@ gActiveUnit.0_1, gActiveUnit
	ldr	r3, .L4+4	@ tmp119,
@ Gambit/GambitMenu/src/GambitMenuCore.c:9: int Gambit_UpperMenu_Usability(const MenuCommandDefinition* cmddef, int param){
	push	{r4, lr}	@
@ Gambit/GambitMenu/src/GambitMenuCore.c:13: 	MakeTargetListFor_SubGambitMenu(gActiveUnit,0x2);
	movs	r1, #2	@,
@ Gambit/GambitMenu/src/GambitMenuCore.c:12: 	gUnitSubject = gActiveUnit;
	str	r0, [r3]	@ gActiveUnit.0_1, gUnitSubject
@ Gambit/GambitMenu/src/GambitMenuCore.c:13: 	MakeTargetListFor_SubGambitMenu(gActiveUnit,0x2);
	ldr	r3, .L4+8	@ tmp120,
	bl	.L6		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:14: 	if( 0 == gTargetArraySize )
	ldr	r3, .L4+12	@ tmp121,
@ Gambit/GambitMenu/src/GambitMenuCore.c:14: 	if( 0 == gTargetArraySize )
	ldr	r3, [r3]	@ gTargetArraySize, gTargetArraySize
@ Gambit/GambitMenu/src/GambitMenuCore.c:15: 		return 3;
	movs	r0, #3	@ <retval>,
@ Gambit/GambitMenu/src/GambitMenuCore.c:14: 	if( 0 == gTargetArraySize )
	cmp	r3, #0	@ gTargetArraySize,
	beq	.L1		@,
@ Gambit/GambitMenu/src/GambitMenuCore.c:17: 		return 1;
	subs	r0, r0, #2	@ <retval>,
.L1:
@ Gambit/GambitMenu/src/GambitMenuCore.c:18: }
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L5:
	.align	2
.L4:
	.word	gActiveUnit
	.word	gUnitSubject
	.word	MakeTargetListFor_SubGambitMenu
	.word	gTargetArraySize
	.size	Gambit_UpperMenu_Usability, .-Gambit_UpperMenu_Usability
	.align	1
	.global	Gambit_UpperMenu_Effect
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Gambit_UpperMenu_Effect, %function
Gambit_UpperMenu_Effect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ Gambit/GambitMenu/src/GambitMenuCore.c:22: 	_ResetIconGraphics();
	ldr	r3, .L8	@ tmp116,
@ Gambit/GambitMenu/src/GambitMenuCore.c:30: }
	@ sp needed	@
@ Gambit/GambitMenu/src/GambitMenuCore.c:22: 	_ResetIconGraphics();
	bl	.L6		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:23: 	LoadIconPalettes(0x4);
	movs	r0, #4	@,
	ldr	r3, .L8+4	@ tmp117,
	bl	.L6		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:26: 	Text_InitFont();
	ldr	r3, .L8+8	@ tmp118,
	bl	.L6		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:28: 	StartMenu(GambitSelectMenu);
	ldr	r0, .L8+12	@ tmp119,
	ldr	r3, .L8+16	@ tmp120,
	bl	.L6		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:30: }
	movs	r0, #23	@,
	pop	{r4}
	pop	{r1}
	bx	r1
.L9:
	.align	2
.L8:
	.word	_ResetIconGraphics
	.word	LoadIconPalettes
	.word	Text_InitFont
	.word	GambitSelectMenu
	.word	StartMenu
	.size	Gambit_UpperMenu_Effect, .-Gambit_UpperMenu_Effect
	.align	1
	.global	Gambit_UpperMenu_Hover
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Gambit_UpperMenu_Hover, %function
Gambit_UpperMenu_Hover:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ Gambit/GambitMenu/src/GambitMenuCore.c:34: 	BmMapFill(gMapMovement,-1);
	movs	r1, #1	@,
	ldr	r3, .L15	@ tmp120,
@ Gambit/GambitMenu/src/GambitMenuCore.c:33: void Gambit_UpperMenu_Hover(MenuProc* procMU, MenuCommandProc* procCMD){
	push	{r4, lr}	@
@ Gambit/GambitMenu/src/GambitMenuCore.c:34: 	BmMapFill(gMapMovement,-1);
	ldr	r0, [r3]	@, gMapMovement
	ldr	r4, .L15+4	@ tmp121,
	rsbs	r1, r1, #0	@,
	bl	.L17		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:35: 	BmMapFill(gMapRange,0);
	ldr	r3, .L15+8	@ tmp122,
	movs	r1, #0	@,
	ldr	r0, [r3]	@, gMapRange
	bl	.L17		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:36: 	FillRangeMapForHover(gActiveUnit,2);
	ldr	r3, .L15+12	@ tmp124,
	movs	r1, #2	@,
	ldr	r0, [r3]	@, gActiveUnit
	ldr	r3, .L15+16	@ tmp125,
	bl	.L6		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:38: 	Proc* proc = ProcFind(gProc_MoveLimitView);
	ldr	r0, .L15+20	@ tmp126,
	ldr	r3, .L15+24	@ tmp127,
	bl	.L6		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:39: 	if( proc )
	cmp	r0, #0	@ proc,
	beq	.L11		@,
@ Gambit/GambitMenu/src/GambitMenuCore.c:40: 		*((u16*)proc+0x4A/2) = 0x24; 	//Load Red&Green(need new-MapDisplay)
	movs	r3, #36	@ tmp131,
	adds	r0, r0, #74	@ tmp130,
	strh	r3, [r0]	@ tmp131, MEM[(u16 *)proc_10 + 74B]
.L11:
@ Gambit/GambitMenu/src/GambitMenuCore.c:44: }
	@ sp needed	@
@ Gambit/GambitMenu/src/GambitMenuCore.c:42: 	DisplayMoveRangeGraphics(0x24);
	movs	r0, #36	@,
	ldr	r3, .L15+28	@ tmp133,
	bl	.L6		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:44: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L16:
	.align	2
.L15:
	.word	gMapMovement
	.word	BmMapFill
	.word	gMapRange
	.word	gActiveUnit
	.word	FillRangeMapForHover
	.word	gProc_MoveLimitView
	.word	ProcFind
	.word	DisplayMoveRangeGraphics
	.size	Gambit_UpperMenu_Hover, .-Gambit_UpperMenu_Hover
	.align	1
	.global	Gambit_UpperMenu_Unhover
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Gambit_UpperMenu_Unhover, %function
Gambit_UpperMenu_Unhover:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ Gambit/GambitMenu/src/GambitMenuCore.c:48: 	BmMapFill(gMapMovement,-1);
	movs	r1, #1	@ tmp124,
	ldr	r3, .L19	@ tmp118,
@ Gambit/GambitMenu/src/GambitMenuCore.c:47: void Gambit_UpperMenu_Unhover(MenuProc* procMU, MenuCommandProc* procCMD){
	push	{r4, lr}	@
@ Gambit/GambitMenu/src/GambitMenuCore.c:48: 	BmMapFill(gMapMovement,-1);
	ldr	r0, [r3]	@, gMapMovement
@ Gambit/GambitMenu/src/GambitMenuCore.c:53: }
	@ sp needed	@
@ Gambit/GambitMenu/src/GambitMenuCore.c:48: 	BmMapFill(gMapMovement,-1);
	ldr	r4, .L19+4	@ tmp119,
	rsbs	r1, r1, #0	@, tmp124
	bl	.L17		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:49: 	BmMapFill(gMapRange,0);
	ldr	r3, .L19+8	@ tmp120,
	movs	r1, #0	@,
	ldr	r0, [r3]	@, gMapRange
	bl	.L17		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:51: 	DisplayMoveRangeGraphics(0x3);
	movs	r0, #3	@,
	ldr	r3, .L19+12	@ tmp122,
	bl	.L6		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:52: 	HideMoveRangeGraphicsWrapper();
	ldr	r3, .L19+16	@ tmp123,
	bl	.L6		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:53: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L20:
	.align	2
.L19:
	.word	gMapMovement
	.word	BmMapFill
	.word	gMapRange
	.word	DisplayMoveRangeGraphics
	.word	HideMoveRangeGraphicsWrapper
	.size	Gambit_UpperMenu_Unhover, .-Gambit_UpperMenu_Unhover
	.align	1
	.global	GambitSelectMenu_Usability
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GambitSelectMenu_Usability, %function
GambitSelectMenu_Usability:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ Gambit/GambitMenu/src/GambitMenuCore.c:65: }
	movs	r0, #1	@,
	@ sp needed	@
	bx	lr
	.size	GambitSelectMenu_Usability, .-GambitSelectMenu_Usability
	.align	1
	.global	GambitSelectMenu_Effect
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GambitSelectMenu_Effect, %function
GambitSelectMenu_Effect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ Gambit/GambitMenu/src/GambitMenuCore.c:69: 	COMMON_SUBEFFECT_INDEX = procCMD->commandDefinitionIndex;
	ldr	r3, .L23	@ tmp119,
@ Gambit/GambitMenu/src/GambitMenuCore.c:80: }
	@ sp needed	@
@ Gambit/GambitMenu/src/GambitMenuCore.c:69: 	COMMON_SUBEFFECT_INDEX = procCMD->commandDefinitionIndex;
	adds	r1, r1, #60	@ tmp122,
	ldrb	r2, [r1]	@ _2,
@ Gambit/GambitMenu/src/GambitMenuCore.c:69: 	COMMON_SUBEFFECT_INDEX = procCMD->commandDefinitionIndex;
	ldr	r3, [r3]	@ gpCommonSaveSu.8_1, gpCommonSaveSu
@ Gambit/GambitMenu/src/GambitMenuCore.c:69: 	COMMON_SUBEFFECT_INDEX = procCMD->commandDefinitionIndex;
	strb	r2, [r3]	@ _2, *gpCommonSaveSu.8_1
@ Gambit/GambitMenu/src/GambitMenuCore.c:71: 	gActionData.itemSlotIndex = 0;
	movs	r2, #0	@ tmp125,
	ldr	r3, .L23+4	@ tmp124,
	strb	r2, [r3, #18]	@ tmp125, gActionData.itemSlotIndex
@ Gambit/GambitMenu/src/GambitMenuCore.c:73: 	ClearIcons();
	ldr	r3, .L23+8	@ tmp127,
	bl	.L6		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:74: 	ClearBG0BG1();
	ldr	r3, .L23+12	@ tmp128,
	bl	.L6		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:76: 	MakeTargetListFor_SubGambitMenu(gActiveUnit,0x2);
	ldr	r3, .L23+16	@ tmp129,
	movs	r1, #2	@,
	ldr	r0, [r3]	@, gActiveUnit
	ldr	r3, .L23+20	@ tmp130,
	bl	.L6		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:77: 	StartTargetSelection(pGambit_TargetSelection_Func);
	ldr	r0, .L23+24	@ tmp131,
	ldr	r3, .L23+28	@ tmp132,
	bl	.L6		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:80: }
	movs	r0, #39	@,
	pop	{r4}
	pop	{r1}
	bx	r1
.L24:
	.align	2
.L23:
	.word	gpCommonSaveSu
	.word	gActionData
	.word	ClearIcons
	.word	ClearBG0BG1
	.word	gActiveUnit
	.word	MakeTargetListFor_SubGambitMenu
	.word	pGambit_TargetSelection_Func
	.word	StartTargetSelection
	.size	GambitSelectMenu_Effect, .-GambitSelectMenu_Effect
	.align	1
	.global	GambitSelectMenu_Hover
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GambitSelectMenu_Hover, %function
GambitSelectMenu_Hover:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ Gambit/GambitMenu/src/GambitMenuCore.c:84: 	BmMapFill(gMapMovement,-1);
	movs	r1, #1	@ tmp126,
	ldr	r3, .L26	@ tmp119,
@ Gambit/GambitMenu/src/GambitMenuCore.c:83: void GambitSelectMenu_Hover(MenuProc* procMU, MenuCommandProc* procCMD){
	push	{r4, lr}	@
@ Gambit/GambitMenu/src/GambitMenuCore.c:84: 	BmMapFill(gMapMovement,-1);
	ldr	r0, [r3]	@, gMapMovement
@ Gambit/GambitMenu/src/GambitMenuCore.c:89: }
	@ sp needed	@
@ Gambit/GambitMenu/src/GambitMenuCore.c:84: 	BmMapFill(gMapMovement,-1);
	ldr	r4, .L26+4	@ tmp120,
	rsbs	r1, r1, #0	@, tmp126
	bl	.L17		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:85: 	BmMapFill(gMapRange,0);
	ldr	r3, .L26+8	@ tmp121,
	movs	r1, #0	@,
	ldr	r0, [r3]	@, gMapRange
	bl	.L17		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:86: 	FillRangeMapForHover(gActiveUnit,2);
	ldr	r3, .L26+12	@ tmp123,
	movs	r1, #2	@,
	ldr	r0, [r3]	@, gActiveUnit
	ldr	r3, .L26+16	@ tmp124,
	bl	.L6		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:88: 	DisplayMoveRangeGraphics(0x24);
	movs	r0, #36	@,
	ldr	r3, .L26+20	@ tmp125,
	bl	.L6		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:89: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L27:
	.align	2
.L26:
	.word	gMapMovement
	.word	BmMapFill
	.word	gMapRange
	.word	gActiveUnit
	.word	FillRangeMapForHover
	.word	DisplayMoveRangeGraphics
	.size	GambitSelectMenu_Hover, .-GambitSelectMenu_Hover
	.align	1
	.global	GambitSelectMenu_Unhover
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GambitSelectMenu_Unhover, %function
GambitSelectMenu_Unhover:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ Gambit/GambitMenu/src/GambitMenuCore.c:92: void GambitSelectMenu_Unhover(MenuProc* procMU, MenuCommandProc* procCMD){
	movs	r4, r0	@ procMU, tmp136
@ Gambit/GambitMenu/src/GambitMenuCore.c:93: 	BmMapFill(gMapRange,0);
	ldr	r3, .L31	@ tmp119,
	movs	r1, #0	@,
	ldr	r0, [r3]	@, gMapRange
	ldr	r3, .L31+4	@ tmp120,
	bl	.L6		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:94: 	FillRangeMapForHover(gActiveUnit,2);
	ldr	r3, .L31+8	@ tmp121,
	movs	r1, #2	@,
	ldr	r0, [r3]	@, gActiveUnit
	ldr	r3, .L31+12	@ tmp122,
	bl	.L6		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:95: 	DisplayMoveRangeGraphics(0x3);
	movs	r0, #3	@,
	ldr	r3, .L31+16	@ tmp123,
	bl	.L6		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:100: 	if( !(0x4 & procMU->stateBits) )
	adds	r4, r4, #99	@ tmp127,
@ Gambit/GambitMenu/src/GambitMenuCore.c:98: 	Text_InitFont();
	ldr	r3, .L31+20	@ tmp124,
	bl	.L6		@
@ Gambit/GambitMenu/src/GambitMenuCore.c:100: 	if( !(0x4 & procMU->stateBits) )
	ldrb	r3, [r4]	@ tmp129,
@ Gambit/GambitMenu/src/GambitMenuCore.c:100: 	if( !(0x4 & procMU->stateBits) )
	lsls	r3, r3, #29	@ tmp137, tmp129,
	bmi	.L28		@,
@ Gambit/GambitMenu/src/GambitMenuCore.c:101: 		HideMoveRangeGraphicsWrapper();
	ldr	r3, .L31+24	@ tmp135,
	bl	.L6		@
.L28:
@ Gambit/GambitMenu/src/GambitMenuCore.c:103: }
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
.L32:
	.align	2
.L31:
	.word	gMapRange
	.word	BmMapFill
	.word	gActiveUnit
	.word	FillRangeMapForHover
	.word	DisplayMoveRangeGraphics
	.word	Text_InitFont
	.word	HideMoveRangeGraphicsWrapper
	.size	GambitSelectMenu_Unhover, .-GambitSelectMenu_Unhover
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L6:
	bx	r3
.L17:
	bx	r4
