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
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:12: void MakeTargetListFor_SubGambitMenu(Unit* unit,u8 range){
	movs	r5, r1	@ range, tmp136
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:19: }
	@ sp needed	@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:13: 	InitTargets(unit->xPos,unit->yPos);
	movs	r1, #17	@ tmp125,
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:12: void MakeTargetListFor_SubGambitMenu(Unit* unit,u8 range){
	movs	r4, r0	@ unit, tmp135
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:13: 	InitTargets(unit->xPos,unit->yPos);
	ldrsb	r1, [r0, r1]	@ tmp125,
	movs	r0, #16	@ tmp126,
	ldr	r3, .L2	@ tmp127,
	ldrsb	r0, [r4, r0]	@ tmp126,
	bl	.L4		@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:14: 	BmMapFill(gMapRange,0);
	ldr	r3, .L2+4	@ tmp128,
	movs	r1, #0	@,
	ldr	r0, [r3]	@, gMapRange
	ldr	r3, .L2+8	@ tmp129,
	bl	.L4		@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:15: 	MapIncInBoundedRange(unit->xPos,unit->yPos,1,range);
	movs	r1, #17	@ tmp130,
	movs	r0, #16	@ tmp131,
	movs	r3, r5	@, range
	ldrsb	r1, [r4, r1]	@ tmp130,
	movs	r2, #1	@,
	ldrsb	r0, [r4, r0]	@ tmp131,
	ldr	r4, .L2+12	@ tmp132,
	bl	.L5		@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:16: 	ForEachUnitInRange(AddUnitToTargetListIfNotAllied);
	ldr	r0, .L2+16	@ tmp133,
	ldr	r3, .L2+20	@ tmp134,
	bl	.L4		@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:19: }
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
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:22: 	InitTargets(x,y);
	ldr	r3, .L7	@ tmp118,
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:32: }
	@ sp needed	@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:22: 	InitTargets(x,y);
	bl	.L4		@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:26: 	ForEachUnitMaster(
	movs	r2, #1	@ tmp125,
	ldr	r1, .L7+4	@ tmp120,
	ldr	r0, .L7+8	@ tmp121,
	ldr	r3, .L7+12	@ tmp122,
	rsbs	r2, r2, #0	@, tmp125
	bl	.L4		@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:32: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L8:
	.align	2
.L7:
	.word	InitTargets
	.word	gMapMovement
	.word	AddUnitToTargetListIfNotAllied
	.word	ForEachUnitMaster
	.size	MakeTargetListFor_AfterSelectAPressed, .-MakeTargetListFor_AfterSelectAPressed
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
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:38: 	for( u8 y=0; y<gMapSize.y; y++ )
	movs	r5, #0	@ y,
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:34: void ForEachUnitInRange_ByRangeMovement(void(func)(struct Unit*)){
	str	r0, [sp, #4]	@ tmp158, %sfp
.L10:
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:38: 	for( u8 y=0; y<gMapSize.y; y++ )
	ldr	r7, .L22	@ tmp153,
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:38: 	for( u8 y=0; y<gMapSize.y; y++ )
	ldrh	r3, [r7, #2]	@ tmp154,
	cmp	r3, r5	@ tmp154, y
	bls	.L9		@,
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:39: 		for( u8 x=0; x<gMapSize.x; x++ )
	movs	r4, #0	@ x,
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:41: 			if( -1 == gMapMovement[y][x] )
	lsls	r6, r5, #2	@ _3, y,
	b	.L14		@
.L12:
	ldr	r3, .L22+4	@ tmp136,
	ldr	r3, [r3]	@ gMapMovement, gMapMovement
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:41: 			if( -1 == gMapMovement[y][x] )
	ldr	r3, [r3, r6]	@ *_4, *_4
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:41: 			if( -1 == gMapMovement[y][x] )
	ldrsb	r3, [r3, r4]	@ *_7, *_7
	adds	r3, r3, #1	@ tmp160, *_7,
	beq	.L11		@,
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:43: 			if( gMapUnit[y][x] )
	ldr	r3, .L22+8	@ tmp140,
	ldr	r3, [r3]	@ gMapUnit, gMapUnit
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:43: 			if( gMapUnit[y][x] )
	ldr	r3, [r3, r6]	@ *_10, *_10
	ldrsb	r0, [r3, r4]	@ _13, *_12
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:43: 			if( gMapUnit[y][x] )
	cmp	r0, #0	@ _13,
	beq	.L11		@,
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:44: 				func( GetUnit(gMapUnit[y][x]) );
	lsls	r0, r0, #24	@ tmp142, _13,
	ldr	r3, .L22+12	@ tmp144,
	lsrs	r0, r0, #24	@ tmp142, tmp142,
	bl	.L4		@
	ldr	r3, [sp, #4]	@ func, %sfp
	bl	.L4		@
.L11:
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:39: 		for( u8 x=0; x<gMapSize.x; x++ )
	adds	r4, r4, #1	@ tmp145,
	lsls	r4, r4, #24	@ x, tmp145,
	lsrs	r4, r4, #24	@ x, x,
.L14:
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:39: 		for( u8 x=0; x<gMapSize.x; x++ )
	ldrh	r3, [r7]	@ gMapSize, gMapSize
	cmp	r3, r4	@ gMapSize, x
	bhi	.L12		@,
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:38: 	for( u8 y=0; y<gMapSize.y; y++ )
	adds	r5, r5, #1	@ tmp151,
	lsls	r5, r5, #24	@ y, tmp151,
	lsrs	r5, r5, #24	@ y, y,
	b	.L10		@
.L9:
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:47: }
	@ sp needed	@
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L23:
	.align	2
.L22:
	.word	gMapSize
	.word	gMapMovement
	.word	gMapUnit
	.word	GetUnit
	.size	ForEachUnitInRange_ByRangeMovement, .-ForEachUnitInRange_ByRangeMovement
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
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:53: void _TargetSelect_Gambit4_TargetChange(struct TargetSelectionProc* proc, struct TargetEntry* entry){
	movs	r4, r1	@ entry, tmp134
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:69: }
	@ sp needed	@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:53: void _TargetSelect_Gambit4_TargetChange(struct TargetSelectionProc* proc, struct TargetEntry* entry){
	movs	r5, r0	@ proc, tmp133
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:55: 	u8 GambitIndex = COMMON_SUBEFFECT_INDEX;
	ldr	r3, .L25	@ tmp122,
	ldr	r3, [r3]	@ gpCommonSaveSu, gpCommonSaveSu
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:57: 	FillAOEEffectMay_OnChangeTarget(entry->x,entry->y,GambitIndex);
	ldrb	r0, [r4]	@ *entry_8(D), *entry_8(D)
	ldrb	r2, [r3]	@ *gpCommonSaveSu.6_1, *gpCommonSaveSu.6_1
	ldrb	r1, [r1, #1]	@ tmp124,
	ldr	r3, .L25+4	@ tmp126,
	bl	.L4		@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:58: 	BmMapFill(gMapRange,0);
	ldr	r3, .L25+8	@ tmp127,
	movs	r1, #0	@,
	ldr	r0, [r3]	@, gMapRange
	ldr	r3, .L25+12	@ tmp128,
	bl	.L4		@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:59: 	FillRangeMapForHover(gActiveUnit,2);
	ldr	r3, .L25+16	@ tmp129,
	movs	r1, #2	@,
	ldr	r0, [r3]	@, gActiveUnit
	ldr	r3, .L25+20	@ tmp130,
	bl	.L4		@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:60: 	DisplayMoveRangeGraphics(0x24);
	movs	r0, #36	@,
	ldr	r3, .L25+24	@ tmp131,
	bl	.L4		@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:67: 	TargetSelect_ChangeTarget(proc,entry);
	movs	r0, r5	@, proc
	movs	r1, r4	@, entry
	ldr	r3, .L25+28	@ tmp132,
	bl	.L4		@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:69: }
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L26:
	.align	2
.L25:
	.word	gpCommonSaveSu
	.word	FillAOEEffectMay_OnChangeTarget
	.word	gMapRange
	.word	BmMapFill
	.word	gActiveUnit
	.word	FillRangeMapForHover
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
	movs	r3, r1	@ entry, tmp131
	push	{r4, lr}	@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:73: 	gActionData.unitActionType = Gambit_ActionIndex;
	ldr	r1, .L28	@ tmp121,
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:80: }
	@ sp needed	@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:73: 	gActionData.unitActionType = Gambit_ActionIndex;
	ldr	r2, .L28+4	@ tmp120,
	ldrb	r1, [r1]	@ Gambit_ActionIndex, Gambit_ActionIndex
	strb	r1, [r2, #17]	@ Gambit_ActionIndex, gActionData.unitActionType
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:74: 	gActionData.targetIndex = entry->unitIndex;
	ldrb	r1, [r3, #2]	@ tmp125,
	strb	r1, [r2, #13]	@ tmp125, gActionData.targetIndex
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:76: 	MakeTargetListFor_AfterSelectAPressed(entry->x,entry->y,0);
	movs	r2, #0	@,
	ldrb	r0, [r3]	@ *entry_7(D), *entry_7(D)
	ldrb	r1, [r3, #1]	@ tmp127,
	bl	MakeTargetListFor_AfterSelectAPressed		@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:78: 	SaveTarget_PostGambitTargetSelection();
	ldr	r3, .L28+8	@ tmp129,
	bl	.L4		@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:80: }
	movs	r0, #23	@,
	pop	{r4}
	pop	{r1}
	bx	r1
.L29:
	.align	2
.L28:
	.word	Gambit_ActionIndex
	.word	gActionData
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
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:84: 	if( MapEventEngineExists() )
	ldr	r3, .L33	@ tmp117,
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:83: int _TargetSelect_Gambit6_BPressed(struct TargetSelectionProc* proc, struct TargetEntry* entry){
	push	{r4, lr}	@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:84: 	if( MapEventEngineExists() )
	bl	.L4		@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:85: 		return TSE_NONE;
	movs	r3, #0	@ <retval>,
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:84: 	if( MapEventEngineExists() )
	cmp	r0, r3	@ tmp121,
	bne	.L30		@,
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:88: 		ProcStart(gProcCode_tsGambitReturn,(Proc*)3);
	ldr	r3, .L33+4	@ tmp119,
	movs	r1, #3	@,
	ldr	r0, .L33+8	@ tmp118,
	bl	.L4		@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:89: 		return TSE_PLAY_BOOP | TSE_END | TSE_DISABLE;
	movs	r3, #11	@ <retval>,
.L30:
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:91: }
	@ sp needed	@
	movs	r0, r3	@, <retval>
	pop	{r4}
	pop	{r1}
	bx	r1
.L34:
	.align	2
.L33:
	.word	MapEventEngineExists
	.word	ProcStart
	.word	gProcCode_tsGambitReturn
	.size	_TargetSelect_Gambit6_BPressed, .-_TargetSelect_Gambit6_BPressed
	.align	1
	.global	BuildGambitReturnMenu_OnTS
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	BuildGambitReturnMenu_OnTS, %function
BuildGambitReturnMenu_OnTS:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:95: 	_ResetIconGraphics();
	ldr	r3, .L36	@ tmp114,
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:98: }
	@ sp needed	@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:95: 	_ResetIconGraphics();
	bl	.L4		@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:96: 	LoadIconPalettes(0x4);
	movs	r0, #4	@,
	ldr	r3, .L36+4	@ tmp115,
	bl	.L4		@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:97: 	StartMenu(GambitSelectMenu);
	ldr	r0, .L36+8	@ tmp116,
	ldr	r3, .L36+12	@ tmp117,
	bl	.L4		@
@ Gambit/GambitTargetSelect/src/TargetSelectCore.c:98: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L37:
	.align	2
.L36:
	.word	_ResetIconGraphics
	.word	LoadIconPalettes
	.word	GambitSelectMenu
	.word	StartMenu
	.size	BuildGambitReturnMenu_OnTS, .-BuildGambitReturnMenu_OnTS
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L4:
	bx	r3
.L5:
	bx	r4
