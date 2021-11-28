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
	.file	"TargetSelectCore.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	MakeTargetListFor_SubGambitMenu
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MakeTargetListFor_SubGambitMenu, %function
MakeTargetListFor_SubGambitMenu:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:2: void MakeTargetListFor_SubGambitMenu(Unit* unit,u8 range){
	movs	r5, r1	@ range, tmp136
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:9: }
	@ sp needed	@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:3: 	InitTargets(unit->xPos,unit->yPos);
	movs	r1, #17	@ tmp125,
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:2: void MakeTargetListFor_SubGambitMenu(Unit* unit,u8 range){
	movs	r4, r0	@ unit, tmp135
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:3: 	InitTargets(unit->xPos,unit->yPos);
	ldrsb	r1, [r0, r1]	@ tmp125,
	movs	r0, #16	@ tmp126,
	ldr	r3, .L2	@ tmp127,
	ldrsb	r0, [r4, r0]	@ tmp126,
	bl	.L4		@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:4: 	BmMapFill(gMapRange,0);
	ldr	r3, .L2+4	@ tmp128,
	movs	r1, #0	@,
	ldr	r0, [r3]	@, gMapRange
	ldr	r3, .L2+8	@ tmp129,
	bl	.L4		@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:5: 	MapIncInBoundedRange(unit->xPos,unit->yPos,0,range);
	movs	r1, #17	@ tmp130,
	movs	r0, #16	@ tmp131,
	movs	r3, r5	@, range
	ldrsb	r1, [r4, r1]	@ tmp130,
	movs	r2, #0	@,
	ldrsb	r0, [r4, r0]	@ tmp131,
	ldr	r4, .L2+12	@ tmp132,
	bl	.L5		@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:6: 	ForEachUnitInRange(AddUnitToTargetListIfNotAllied);
	ldr	r0, .L2+16	@ tmp133,
	ldr	r3, .L2+20	@ tmp134,
	bl	.L4		@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:9: }
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L3:
	.align	2
.L2:
	.word	InitTargets
	.word	gMapRange
	.word	BmMapFill
	.word	MapIncInBoundedRange
	.word	AddUnitToTargetListIfNotAllied
	.word	ForEachUnitInRange
	.size	MakeTargetListFor_SubGambitMenu, .-MakeTargetListFor_SubGambitMenu
	.align	1
	.global	ForEachUnitInRange_ByRangeMovement
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	ForEachUnitInRange_ByRangeMovement, %function
ForEachUnitInRange_ByRangeMovement:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:22: 	for( u8 y=0; y<gMapSize.y; y++ )
	movs	r5, #0	@ y,
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:18: void ForEachUnitInRange_ByRangeMovement(void(func)(struct Unit*)){
	str	r0, [sp, #4]	@ tmp158, %sfp
.L7:
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:22: 	for( u8 y=0; y<gMapSize.y; y++ )
	ldr	r7, .L19	@ tmp153,
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:22: 	for( u8 y=0; y<gMapSize.y; y++ )
	ldrh	r3, [r7, #2]	@ tmp154,
	cmp	r3, r5	@ tmp154, y
	bls	.L6		@,
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:23: 		for( u8 x=0; x<gMapSize.x; x++ )
	movs	r4, #0	@ x,
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:25: 			if( -1 == gMapMovement[y][x] )
	lsls	r6, r5, #2	@ _3, y,
	b	.L11		@
.L9:
	ldr	r3, .L19+4	@ tmp136,
	ldr	r3, [r3]	@ gMapMovement, gMapMovement
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:25: 			if( -1 == gMapMovement[y][x] )
	ldr	r3, [r3, r6]	@ *_4, *_4
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:25: 			if( -1 == gMapMovement[y][x] )
	ldrsb	r3, [r3, r4]	@ *_7, *_7
	adds	r3, r3, #1	@ tmp160, *_7,
	beq	.L8		@,
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:27: 			if( gMapUnit[y][x] )
	ldr	r3, .L19+8	@ tmp140,
	ldr	r3, [r3]	@ gMapUnit, gMapUnit
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:27: 			if( gMapUnit[y][x] )
	ldr	r3, [r3, r6]	@ *_10, *_10
	ldrsb	r0, [r3, r4]	@ _13, *_12
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:27: 			if( gMapUnit[y][x] )
	cmp	r0, #0	@ _13,
	beq	.L8		@,
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:28: 				func( GetUnit(gMapUnit[y][x]) );
	lsls	r0, r0, #24	@ tmp142, _13,
	ldr	r3, .L19+12	@ tmp144,
	lsrs	r0, r0, #24	@ tmp142, tmp142,
	bl	.L4		@
	ldr	r3, [sp, #4]	@ func, %sfp
	bl	.L4		@
.L8:
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:23: 		for( u8 x=0; x<gMapSize.x; x++ )
	adds	r4, r4, #1	@ tmp145,
	lsls	r4, r4, #24	@ x, tmp145,
	lsrs	r4, r4, #24	@ x, x,
.L11:
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:23: 		for( u8 x=0; x<gMapSize.x; x++ )
	ldrh	r3, [r7]	@ gMapSize, gMapSize
	cmp	r3, r4	@ gMapSize, x
	bhi	.L9		@,
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:22: 	for( u8 y=0; y<gMapSize.y; y++ )
	adds	r5, r5, #1	@ tmp151,
	lsls	r5, r5, #24	@ y, tmp151,
	lsrs	r5, r5, #24	@ y, y,
	b	.L7		@
.L6:
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:31: }
	@ sp needed	@
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L20:
	.align	2
.L19:
	.word	gMapSize
	.word	gMapMovement
	.word	gMapUnit
	.word	GetUnit
	.size	ForEachUnitInRange_ByRangeMovement, .-ForEachUnitInRange_ByRangeMovement
	.align	1
	.global	MakeTargetListFor_AfterSelectAPressed
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MakeTargetListFor_AfterSelectAPressed, %function
MakeTargetListFor_AfterSelectAPressed:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:12: 	InitTargets(x,y);
	ldr	r3, .L22	@ tmp118,
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:16: }
	@ sp needed	@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:12: 	InitTargets(x,y);
	bl	.L4		@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:13: 	gpSubjectMap = &gMapMovement;
	ldr	r3, .L22+4	@ tmp119,
	ldr	r2, .L22+8	@ tmp120,
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:14: 	ForEachUnitInRange_ByRangeMovement(AddUnitToTargetListIfNotAllied);
	ldr	r0, .L22+12	@ tmp121,
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:13: 	gpSubjectMap = &gMapMovement;
	str	r2, [r3]	@ tmp120, gpSubjectMap
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:14: 	ForEachUnitInRange_ByRangeMovement(AddUnitToTargetListIfNotAllied);
	bl	ForEachUnitInRange_ByRangeMovement		@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:16: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L23:
	.align	2
.L22:
	.word	InitTargets
	.word	gpSubjectMap
	.word	gMapMovement
	.word	AddUnitToTargetListIfNotAllied
	.size	MakeTargetListFor_AfterSelectAPressed, .-MakeTargetListFor_AfterSelectAPressed
	.align	1
	.global	_TargetSelect_Gambit4_TargetChange
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	_TargetSelect_Gambit4_TargetChange, %function
_TargetSelect_Gambit4_TargetChange:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:37: void _TargetSelect_Gambit4_TargetChange(struct TargetSelectionProc* proc, struct TargetEntry* entry){
	movs	r4, r1	@ entry, tmp143
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:39: 	u8 GambitIndex = gpCommonFlagSaveSu[0];
	ldr	r3, .L29	@ tmp123,
	ldr	r3, [r3]	@ gpCommonFlagSaveSu, gpCommonFlagSaveSu
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:41: 	FillAOEEffectMay_OnChangeTarget(entry->x,entry->y,GambitIndex);
	ldrb	r1, [r1, #1]	@ tmp125,
	ldrb	r2, [r3]	@ *gpCommonFlagSaveSu.6_1, *gpCommonFlagSaveSu.6_1
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:37: void _TargetSelect_Gambit4_TargetChange(struct TargetSelectionProc* proc, struct TargetEntry* entry){
	movs	r5, r0	@ proc, tmp142
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:41: 	FillAOEEffectMay_OnChangeTarget(entry->x,entry->y,GambitIndex);
	ldr	r3, .L29+4	@ tmp127,
	ldrb	r0, [r4]	@ *entry_9(D), *entry_9(D)
	bl	.L4		@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:42: 	BmMapFill(gMapRange,0);
	ldr	r3, .L29+8	@ tmp128,
	movs	r1, #0	@,
	ldr	r0, [r3]	@, gMapRange
	ldr	r3, .L29+12	@ tmp129,
	bl	.L4		@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:43: 	FillRangeMapForHover(gActiveUnit,2);
	ldr	r3, .L29+16	@ tmp130,
	movs	r1, #2	@,
	ldr	r0, [r3]	@, gActiveUnit
	ldr	r3, .L29+20	@ tmp131,
	bl	.L4		@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:45: 	Proc* pproc = ProcFind(gProc_MoveLimitView);
	ldr	r0, .L29+24	@ tmp132,
	ldr	r3, .L29+28	@ tmp133,
	bl	.L4		@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:46: 	if( pproc )
	cmp	r0, #0	@ pproc,
	beq	.L25		@,
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:47: 		*((u16*)pproc+0x4A/2) = 0x24; 	//Load Red&Green(need new-MapDisplay)
	movs	r3, #36	@ tmp137,
	adds	r0, r0, #74	@ tmp136,
	strh	r3, [r0]	@ tmp137, MEM[(u16 *)pproc_14 + 74B]
.L25:
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:52: }
	@ sp needed	@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:48: 	DisplayMoveRangeGraphics(0x3);
	movs	r0, #3	@,
	ldr	r3, .L29+32	@ tmp139,
	bl	.L4		@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:50: 	TargetSelect_ChangeTarget(proc,entry);
	movs	r0, r5	@, proc
	movs	r1, r4	@, entry
	ldr	r3, .L29+36	@ tmp140,
	bl	.L4		@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:52: }
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L30:
	.align	2
.L29:
	.word	gpCommonFlagSaveSu
	.word	FillAOEEffectMay_OnChangeTarget
	.word	gMapRange
	.word	BmMapFill
	.word	gActiveUnit
	.word	FillRangeMapForHover
	.word	gProc_MoveLimitView
	.word	ProcFind
	.word	DisplayMoveRangeGraphics
	.word	TargetSelect_ChangeTarget
	.size	_TargetSelect_Gambit4_TargetChange, .-_TargetSelect_Gambit4_TargetChange
	.align	1
	.global	_TargetSelect_Gambit5_APressed
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	_TargetSelect_Gambit5_APressed, %function
_TargetSelect_Gambit5_APressed:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:55: int _TargetSelect_Gambit5_APressed(struct TargetSelectionProc* proc, struct TargetEntry* entry){
	movs	r4, r1	@ entry, tmp133
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:64: }
	@ sp needed	@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:56: 	gActionData.unitActionType = Gambit_ActionIndex;
	ldr	r2, .L32	@ tmp121,
	ldr	r3, .L32+4	@ tmp120,
	ldrb	r2, [r2]	@ Gambit_ActionIndex, Gambit_ActionIndex
	strb	r2, [r3, #17]	@ Gambit_ActionIndex, gActionData.unitActionType
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:57: 	gActionData.targetIndex = entry->unitIndex;
	ldrb	r2, [r1, #2]	@ tmp125,
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:59: 	EndEachProc(gProc_BkSel);
	ldr	r0, .L32+8	@ tmp127,
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:57: 	gActionData.targetIndex = entry->unitIndex;
	strb	r2, [r3, #13]	@ tmp125, gActionData.targetIndex
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:59: 	EndEachProc(gProc_BkSel);
	ldr	r3, .L32+12	@ tmp128,
	bl	.L4		@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:60: 	MakeTargetListFor_AfterSelectAPressed(entry->x,entry->y,0);
	ldrb	r0, [r4]	@ *entry_7(D), *entry_7(D)
	movs	r2, #0	@,
	ldrb	r1, [r4, #1]	@ tmp129,
	bl	MakeTargetListFor_AfterSelectAPressed		@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:62: 	SaveTarget_PostGambitTargetSelection();
	ldr	r3, .L32+16	@ tmp131,
	bl	.L4		@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:64: }
	movs	r0, #23	@,
	pop	{r4}
	pop	{r1}
	bx	r1
.L33:
	.align	2
.L32:
	.word	Gambit_ActionIndex
	.word	gActionData
	.word	gProc_BkSel
	.word	EndEachProc
	.word	SaveTarget_PostGambitTargetSelection
	.size	_TargetSelect_Gambit5_APressed, .-_TargetSelect_Gambit5_APressed
	.align	1
	.global	_TargetSelect_Gambit6_BPressed
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	_TargetSelect_Gambit6_BPressed, %function
_TargetSelect_Gambit6_BPressed:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:68: 	_ResetIconGraphics();
	ldr	r3, .L35	@ tmp116,
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:72: }
	@ sp needed	@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:68: 	_ResetIconGraphics();
	bl	.L4		@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:69: 	LoadIconPalettes(0x4);
	movs	r0, #4	@,
	ldr	r3, .L35+4	@ tmp117,
	bl	.L4		@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:70: 	StartMenu(GambitSelectMenu);
	ldr	r0, .L35+8	@ tmp118,
	ldr	r3, .L35+12	@ tmp119,
	bl	.L4		@
@ AOE_Attack/GambitTargetSelect/src/TargetSelectCore.c:72: }
	movs	r0, #23	@,
	pop	{r4}
	pop	{r1}
	bx	r1
.L36:
	.align	2
.L35:
	.word	_ResetIconGraphics
	.word	LoadIconPalettes
	.word	GambitSelectMenu
	.word	StartMenu
	.size	_TargetSelect_Gambit6_BPressed, .-_TargetSelect_Gambit6_BPressed
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L4:
	bx	r3
.L5:
	bx	r4
