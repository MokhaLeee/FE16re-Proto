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
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:4: 	if( gActiveUnit->state & 0x40 )
	ldr	r3, .L6	@ tmp120,
	ldr	r0, [r3]	@ gActiveUnit.0_1, gActiveUnit
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:4: 	if( gActiveUnit->state & 0x40 )
	ldr	r3, [r0, #12]	@ gActiveUnit.0_1->state, gActiveUnit.0_1->state
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:3: int Gambit_UpperMenu_Usability(const MenuCommandDefinition* cmddef, int param){
	push	{r4, lr}	@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:4: 	if( gActiveUnit->state & 0x40 )
	lsls	r3, r3, #25	@ tmp128, gActiveUnit.0_1->state,
	bmi	.L2		@,
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:6: 	MakeTargetListFor_SubGambitMenu(gActiveUnit,0x2);
	ldr	r3, .L6+4	@ tmp124,
	movs	r1, #2	@,
	bl	.L8		@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:7: 	if( 0 == gTargetArraySize )
	ldr	r3, .L6+8	@ tmp125,
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:7: 	if( 0 == gTargetArraySize )
	ldr	r3, [r3]	@ gTargetArraySize, gTargetArraySize
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:9: 	return 1;
	movs	r0, #1	@ <retval>,
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:7: 	if( 0 == gTargetArraySize )
	cmp	r3, #0	@ gTargetArraySize,
	bne	.L1		@,
.L2:
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:8: 		return 3;
	movs	r0, #3	@ <retval>,
.L1:
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:10: }
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L7:
	.align	2
.L6:
	.word	gActiveUnit
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
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:14: 	_ResetIconGraphics();
	ldr	r3, .L10	@ tmp116,
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:18: }
	@ sp needed	@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:14: 	_ResetIconGraphics();
	bl	.L8		@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:15: 	LoadIconPalettes(0x4);
	movs	r0, #4	@,
	ldr	r3, .L10+4	@ tmp117,
	bl	.L8		@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:16: 	StartMenu(GambitSelectMenu);
	ldr	r0, .L10+8	@ tmp118,
	ldr	r3, .L10+12	@ tmp119,
	bl	.L8		@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:18: }
	movs	r0, #23	@,
	pop	{r4}
	pop	{r1}
	bx	r1
.L11:
	.align	2
.L10:
	.word	_ResetIconGraphics
	.word	LoadIconPalettes
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
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:22: 	BmMapFill(gMapMovement,-1);
	movs	r1, #1	@,
	ldr	r3, .L17	@ tmp120,
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:21: void Gambit_UpperMenu_Hover(MenuProc* procMU, MenuCommandProc* procCMD){
	push	{r4, lr}	@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:22: 	BmMapFill(gMapMovement,-1);
	ldr	r0, [r3]	@, gMapMovement
	ldr	r4, .L17+4	@ tmp121,
	rsbs	r1, r1, #0	@,
	bl	.L19		@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:23: 	BmMapFill(gMapRange,0);
	ldr	r3, .L17+8	@ tmp122,
	movs	r1, #0	@,
	ldr	r0, [r3]	@, gMapRange
	bl	.L19		@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:24: 	FillRangeMapForHover(gActiveUnit,2);
	ldr	r3, .L17+12	@ tmp124,
	movs	r1, #2	@,
	ldr	r0, [r3]	@, gActiveUnit
	ldr	r3, .L17+16	@ tmp125,
	bl	.L8		@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:26: 	Proc* proc = ProcFind(gProc_MoveLimitView);
	ldr	r0, .L17+20	@ tmp126,
	ldr	r3, .L17+24	@ tmp127,
	bl	.L8		@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:27: 	if( proc )
	cmp	r0, #0	@ proc,
	beq	.L13		@,
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:28: 		*((u16*)proc+0x4A/2) = 0x24; 	//Load Red&Green(need new-MapDisplay)
	movs	r3, #36	@ tmp131,
	adds	r0, r0, #74	@ tmp130,
	strh	r3, [r0]	@ tmp131, MEM[(u16 *)proc_10 + 74B]
.L13:
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:32: }
	@ sp needed	@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:30: 	DisplayMoveRangeGraphics(0x24);
	movs	r0, #36	@,
	ldr	r3, .L17+28	@ tmp133,
	bl	.L8		@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:32: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L18:
	.align	2
.L17:
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
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:36: 	BmMapFill(gMapMovement,-1);
	movs	r1, #1	@ tmp124,
	ldr	r3, .L21	@ tmp118,
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:35: void Gambit_UpperMenu_Unhover(MenuProc* procMU, MenuCommandProc* procCMD){
	push	{r4, lr}	@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:36: 	BmMapFill(gMapMovement,-1);
	ldr	r0, [r3]	@, gMapMovement
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:41: }
	@ sp needed	@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:36: 	BmMapFill(gMapMovement,-1);
	ldr	r4, .L21+4	@ tmp119,
	rsbs	r1, r1, #0	@, tmp124
	bl	.L19		@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:37: 	BmMapFill(gMapRange,0);
	ldr	r3, .L21+8	@ tmp120,
	movs	r1, #0	@,
	ldr	r0, [r3]	@, gMapRange
	bl	.L19		@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:39: 	DisplayMoveRangeGraphics(0x3);
	movs	r0, #3	@,
	ldr	r3, .L21+12	@ tmp122,
	bl	.L8		@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:40: 	HideMoveRangeGraphicsWrapper();
	ldr	r3, .L21+16	@ tmp123,
	bl	.L8		@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:41: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L22:
	.align	2
.L21:
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
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:53: }
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
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:57: 	gpCommonFlagSaveSu[0] = procCMD->commandDefinitionIndex;
	ldr	r3, .L25	@ tmp119,
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:64: }
	@ sp needed	@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:57: 	gpCommonFlagSaveSu[0] = procCMD->commandDefinitionIndex;
	adds	r1, r1, #60	@ tmp122,
	ldrb	r2, [r1]	@ _2,
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:57: 	gpCommonFlagSaveSu[0] = procCMD->commandDefinitionIndex;
	ldr	r3, [r3]	@ gpCommonFlagSaveSu.8_1, gpCommonFlagSaveSu
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:57: 	gpCommonFlagSaveSu[0] = procCMD->commandDefinitionIndex;
	strb	r2, [r3]	@ _2, *gpCommonFlagSaveSu.8_1
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:59: 	gActionData.itemSlotIndex = 0;
	movs	r2, #0	@ tmp125,
	ldr	r3, .L25+4	@ tmp124,
	strb	r2, [r3, #18]	@ tmp125, gActionData.itemSlotIndex
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:60: 	ClearBG0BG1();
	ldr	r3, .L25+8	@ tmp127,
	bl	.L8		@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:61: 	MakeTargetListFor_SubGambitMenu(gActiveUnit,0x2);
	ldr	r3, .L25+12	@ tmp128,
	movs	r1, #2	@,
	ldr	r0, [r3]	@, gActiveUnit
	ldr	r3, .L25+16	@ tmp129,
	bl	.L8		@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:62: 	StartTargetSelection(pGambit_TargetSelection_Func);
	ldr	r0, .L25+20	@ tmp130,
	ldr	r3, .L25+24	@ tmp131,
	bl	.L8		@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:64: }
	movs	r0, #39	@,
	pop	{r4}
	pop	{r1}
	bx	r1
.L26:
	.align	2
.L25:
	.word	gpCommonFlagSaveSu
	.word	gActionData
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
	push	{r4, lr}	@
	bl	Gambit_UpperMenu_Hover		@
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
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
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:82: 	BmMapFill(gMapRange,0);
	ldr	r3, .L35	@ tmp120,
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:81: void GambitSelectMenu_Unhover(MenuProc* procMU, MenuCommandProc* procCMD){
	push	{r4, lr}	@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:82: 	BmMapFill(gMapRange,0);
	movs	r1, #0	@,
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:81: void GambitSelectMenu_Unhover(MenuProc* procMU, MenuCommandProc* procCMD){
	movs	r4, r0	@ procMU, tmp144
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:82: 	BmMapFill(gMapRange,0);
	ldr	r0, [r3]	@, gMapRange
	ldr	r3, .L35+4	@ tmp121,
	bl	.L8		@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:83: 	FillRangeMapForHover(gActiveUnit,2);
	ldr	r3, .L35+8	@ tmp122,
	movs	r1, #2	@,
	ldr	r0, [r3]	@, gActiveUnit
	ldr	r3, .L35+12	@ tmp123,
	bl	.L8		@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:85: 	Proc* proc = ProcFind(gProc_MoveLimitView);
	ldr	r0, .L35+16	@ tmp124,
	ldr	r3, .L35+20	@ tmp125,
	bl	.L8		@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:86: 	if( proc )
	cmp	r0, #0	@ proc,
	beq	.L29		@,
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:87: 		*((u16*)proc+0x4A/2) = 0x24; 	//Load Red&Green(need new-MapDisplay)
	movs	r3, #36	@ tmp129,
	adds	r0, r0, #74	@ tmp128,
	strh	r3, [r0]	@ tmp129, MEM[(u16 *)proc_11 + 74B]
.L29:
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:89: 	DisplayMoveRangeGraphics(0x3);
	ldr	r3, .L35+24	@ tmp131,
	movs	r0, #3	@,
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:91: 	if( !(0x4 & procMU->stateBits) )
	adds	r4, r4, #99	@ tmp134,
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:89: 	DisplayMoveRangeGraphics(0x3);
	bl	.L8		@
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:91: 	if( !(0x4 & procMU->stateBits) )
	ldrb	r3, [r4]	@ tmp136,
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:91: 	if( !(0x4 & procMU->stateBits) )
	lsls	r3, r3, #29	@ tmp147, tmp136,
	bmi	.L28		@,
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:92: 		HideMoveRangeGraphicsWrapper();
	ldr	r3, .L35+28	@ tmp142,
	bl	.L8		@
.L28:
@ AOE_Attack/GambitMenu/src/GambitMenuCore.c:94: }
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
.L36:
	.align	2
.L35:
	.word	gMapRange
	.word	BmMapFill
	.word	gActiveUnit
	.word	FillRangeMapForHover
	.word	gProc_MoveLimitView
	.word	ProcFind
	.word	DisplayMoveRangeGraphics
	.word	HideMoveRangeGraphicsWrapper
	.size	GambitSelectMenu_Unhover, .-GambitSelectMenu_Unhover
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L8:
	bx	r3
.L19:
	bx	r4
