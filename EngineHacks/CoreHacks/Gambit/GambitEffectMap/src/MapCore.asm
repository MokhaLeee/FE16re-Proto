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
	.file	"MapCore.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	FillRangeMapForHover
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	FillRangeMapForHover, %function
FillRangeMapForHover:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, r1	@ range, tmp132
@ Gambit/GambitEffectMap/src/MapCore.c:4: 	MapAddInRange(unit->xPos, unit->yPos, range, 1);
	movs	r1, #17	@ tmp124,
@ Gambit/GambitEffectMap/src/MapCore.c:3: void FillRangeMapForHover(Unit* unit,u8 range){
	push	{r4, r5, r6, lr}	@
@ Gambit/GambitEffectMap/src/MapCore.c:3: void FillRangeMapForHover(Unit* unit,u8 range){
	movs	r4, r0	@ unit, tmp131
@ Gambit/GambitEffectMap/src/MapCore.c:7: }
	@ sp needed	@
@ Gambit/GambitEffectMap/src/MapCore.c:4: 	MapAddInRange(unit->xPos, unit->yPos, range, 1);
	ldrsb	r1, [r0, r1]	@ tmp124,
	movs	r0, #16	@ tmp125,
	ldr	r5, .L2	@ tmp126,
	ldrsb	r0, [r4, r0]	@ tmp125,
	movs	r3, #1	@,
	bl	.L4		@
@ Gambit/GambitEffectMap/src/MapCore.c:5: 	MapAddInRange(unit->xPos, unit->yPos, 0, -1);
	movs	r3, #1	@ tmp133,
	movs	r1, #17	@ tmp128,
	movs	r0, #16	@ tmp129,
	movs	r2, #0	@,
	ldrsb	r1, [r4, r1]	@ tmp128,
	ldrsb	r0, [r4, r0]	@ tmp129,
	rsbs	r3, r3, #0	@, tmp133
	bl	.L4		@
@ Gambit/GambitEffectMap/src/MapCore.c:7: }
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L3:
	.align	2
.L2:
	.word	MapAddInRange
	.size	FillRangeMapForHover, .-FillRangeMapForHover
	.align	1
	.global	FillAOEEffectMay_OnChangeTarget
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	FillAOEEffectMay_OnChangeTarget, %function
FillAOEEffectMay_OnChangeTarget:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
@ Gambit/GambitEffectMap/src/MapCore.c:10: void FillAOEEffectMay_OnChangeTarget(u8 x, u8 y, u8 GambitIndex){
	movs	r5, r0	@ x, tmp133
@ Gambit/GambitEffectMap/src/MapCore.c:14: }
	@ sp needed	@
@ Gambit/GambitEffectMap/src/MapCore.c:10: void FillAOEEffectMay_OnChangeTarget(u8 x, u8 y, u8 GambitIndex){
	movs	r6, r1	@ y, tmp134
@ Gambit/GambitEffectMap/src/MapCore.c:11: 	u8 uDirec = GetFacingDirection(gActiveUnit->xPos, gActiveUnit->yPos, x, y);
	ldr	r3, .L6	@ tmp124,
	ldr	r3, [r3]	@ gActiveUnit.0_1, gActiveUnit
@ Gambit/GambitEffectMap/src/MapCore.c:11: 	u8 uDirec = GetFacingDirection(gActiveUnit->xPos, gActiveUnit->yPos, x, y);
	ldr	r7, .L6+4	@ tmp127,
	ldrb	r1, [r3, #17]	@ tmp125,
@ Gambit/GambitEffectMap/src/MapCore.c:10: void FillAOEEffectMay_OnChangeTarget(u8 x, u8 y, u8 GambitIndex){
	movs	r4, r2	@ GambitIndex, tmp135
@ Gambit/GambitEffectMap/src/MapCore.c:11: 	u8 uDirec = GetFacingDirection(gActiveUnit->xPos, gActiveUnit->yPos, x, y);
	ldrb	r0, [r3, #16]	@ tmp126,
	movs	r2, r5	@, x
	movs	r3, r6	@, y
	bl	.L8		@
@ Gambit/GambitEffectMap/src/MapCore.c:12: 	GambitEffectMap_DrawMapRoutineTable[GambitIndex](x,y,uDirec);
	ldr	r3, .L6+8	@ tmp130,
	lsls	r4, r4, #2	@ tmp131, GambitIndex,
@ Gambit/GambitEffectMap/src/MapCore.c:11: 	u8 uDirec = GetFacingDirection(gActiveUnit->xPos, gActiveUnit->yPos, x, y);
	movs	r2, r0	@ tmp128, tmp136
@ Gambit/GambitEffectMap/src/MapCore.c:12: 	GambitEffectMap_DrawMapRoutineTable[GambitIndex](x,y,uDirec);
	movs	r1, r6	@, y
	movs	r0, r5	@, x
	ldr	r3, [r4, r3]	@ GambitEffectMap_DrawMapRoutineTable[_6], GambitEffectMap_DrawMapRoutineTable[_6]
	bl	.L9		@
@ Gambit/GambitEffectMap/src/MapCore.c:14: }
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L7:
	.align	2
.L6:
	.word	gActiveUnit
	.word	GetFacingDirection
	.word	GambitEffectMap_DrawMapRoutineTable
	.size	FillAOEEffectMay_OnChangeTarget, .-FillAOEEffectMay_OnChangeTarget
	.align	1
	.global	GambitResetMaps
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GambitResetMaps, %function
GambitResetMaps:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ Gambit/GambitEffectMap/src/MapCore.c:18: 	BmMapFill(gMapMovement,-1);
	movs	r6, #1	@ tmp117,
@ Gambit/GambitEffectMap/src/MapCore.c:26: }
	@ sp needed	@
@ Gambit/GambitEffectMap/src/MapCore.c:18: 	BmMapFill(gMapMovement,-1);
	ldr	r4, .L11	@ tmp118,
	rsbs	r6, r6, #0	@ tmp117, tmp117
	ldr	r5, .L11+4	@ tmp119,
	movs	r1, r6	@, tmp117
	ldr	r0, [r4]	@, gMapMovement
	bl	.L4		@
@ Gambit/GambitEffectMap/src/MapCore.c:19: 	BmMapFill(gMapMovement2,-1);
	ldr	r3, .L11+8	@ tmp121,
	movs	r1, r6	@, tmp117
	ldr	r0, [r3]	@, gMapMovement2
	bl	.L4		@
@ Gambit/GambitEffectMap/src/MapCore.c:20: 	BmMapFill(gMapRange,0);
	ldr	r3, .L11+12	@ tmp123,
	movs	r1, #0	@,
	ldr	r0, [r3]	@, gMapRange
	bl	.L4		@
@ Gambit/GambitEffectMap/src/MapCore.c:22: 	gpSubjectMap = gMapMovement;
	ldr	r2, [r4]	@ gMapMovement, gMapMovement
	ldr	r3, .L11+16	@ tmp125,
@ Gambit/GambitEffectMap/src/MapCore.c:23: 	DisplayMoveRangeGraphics(0x3);
	movs	r0, #3	@,
@ Gambit/GambitEffectMap/src/MapCore.c:22: 	gpSubjectMap = gMapMovement;
	str	r2, [r3]	@ gMapMovement, gpSubjectMap
@ Gambit/GambitEffectMap/src/MapCore.c:23: 	DisplayMoveRangeGraphics(0x3);
	ldr	r3, .L11+20	@ tmp128,
	bl	.L9		@
@ Gambit/GambitEffectMap/src/MapCore.c:24: 	HideMoveRangeGraphicsWrapper();
	ldr	r3, .L11+24	@ tmp129,
	bl	.L9		@
@ Gambit/GambitEffectMap/src/MapCore.c:26: }
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L12:
	.align	2
.L11:
	.word	gMapMovement
	.word	BmMapFill
	.word	gMapMovement2
	.word	gMapRange
	.word	gpSubjectMap
	.word	DisplayMoveRangeGraphics
	.word	HideMoveRangeGraphicsWrapper
	.size	GambitResetMaps, .-GambitResetMaps
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L9:
	bx	r3
.L4:
	bx	r5
.L8:
	bx	r7
