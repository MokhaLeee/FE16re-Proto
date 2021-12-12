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
	.file	"GambitActionCore.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	GambitAction
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GambitAction, %function
GambitAction:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ Gambit/GambitAction/src/GambitActionCore.c:13: 		(ProcGamAction*)ProcStartBlocking(gpProc_GambitAction, proc);
	ldr	r3, .L2	@ tmp120,
@ Gambit/GambitAction/src/GambitActionCore.c:11: int GambitAction(Proc* proc){
	movs	r1, r0	@ proc, tmp127
	push	{r4, lr}	@
@ Gambit/GambitAction/src/GambitActionCore.c:13: 		(ProcGamAction*)ProcStartBlocking(gpProc_GambitAction, proc);
	movs	r0, r3	@ tmp120, tmp120
@ Gambit/GambitAction/src/GambitActionCore.c:17: }
	@ sp needed	@
@ Gambit/GambitAction/src/GambitActionCore.c:13: 		(ProcGamAction*)ProcStartBlocking(gpProc_GambitAction, proc);
	ldr	r3, .L2+4	@ tmp121,
	bl	.L4		@
@ Gambit/GambitAction/src/GambitActionCore.c:14: 	newProc->Counter = COMMON_NUM;
	ldr	r3, .L2+8	@ tmp122,
	ldr	r3, [r3]	@ gpCommonSaveSu.0_1, gpCommonSaveSu
	ldrb	r2, [r3]	@ *gpCommonSaveSu.0_1, *gpCommonSaveSu.0_1
@ Gambit/GambitAction/src/GambitActionCore.c:15: 	newProc->gpCurUnitID = COMMON_TARGIT_AT;
	adds	r3, r3, #1	@ tmp125,
@ Gambit/GambitAction/src/GambitActionCore.c:14: 	newProc->Counter = COMMON_NUM;
	strh	r2, [r0, #42]	@ *gpCommonSaveSu.0_1, newProc_8->Counter
@ Gambit/GambitAction/src/GambitActionCore.c:15: 	newProc->gpCurUnitID = COMMON_TARGIT_AT;
	str	r3, [r0, #44]	@ tmp125, newProc_8->gpCurUnitID
@ Gambit/GambitAction/src/GambitActionCore.c:17: }
	movs	r0, #0	@,
	pop	{r4}
	pop	{r1}
	bx	r1
.L3:
	.align	2
.L2:
	.word	gpProc_GambitAction
	.word	ProcStartBlocking
	.word	gpCommonSaveSu
	.size	GambitAction, .-GambitAction
	.align	1
	.global	cProc_SetNextGambitTarget
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	cProc_SetNextGambitTarget, %function
cProc_SetNextGambitTarget:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ Gambit/GambitAction/src/GambitActionCore.c:45: 	u8 iCounter = --proc->Counter;
	ldrh	r3, [r0, #42]	@ tmp122,
	subs	r3, r3, #1	@ tmp123,
	lsls	r3, r3, #16	@ _3, tmp123,
	lsrs	r3, r3, #16	@ _3, _3,
@ Gambit/GambitAction/src/GambitActionCore.c:45: 	u8 iCounter = --proc->Counter;
	strh	r3, [r0, #42]	@ _3, proc_9(D)->Counter
@ Gambit/GambitAction/src/GambitActionCore.c:46: 	if(0==iCounter)
	lsls	r3, r3, #24	@ tmp127, _3,
@ Gambit/GambitAction/src/GambitActionCore.c:44: void cProc_SetNextGambitTarget(ProcGamAction* proc){
	push	{r4, lr}	@
@ Gambit/GambitAction/src/GambitActionCore.c:46: 	if(0==iCounter)
	lsrs	r3, r3, #24	@ tmp127, tmp127,
@ Gambit/GambitAction/src/GambitActionCore.c:44: void cProc_SetNextGambitTarget(ProcGamAction* proc){
	movs	r4, r0	@ proc, tmp132
@ Gambit/GambitAction/src/GambitActionCore.c:46: 	if(0==iCounter)
	cmp	r3, #0	@ tmp127,
	bne	.L6		@,
@ Gambit/GambitAction/src/GambitActionCore.c:47: 		ProcGoto((Proc*)proc, 0x2);
	movs	r1, #2	@,
	ldr	r3, .L7	@ tmp129,
	bl	.L4		@
.L6:
@ Gambit/GambitAction/src/GambitActionCore.c:51: }
	@ sp needed	@
@ Gambit/GambitAction/src/GambitActionCore.c:49: 	proc->gpCurUnitID++;
	ldr	r3, [r4, #44]	@ proc_9(D)->gpCurUnitID, proc_9(D)->gpCurUnitID
	adds	r3, r3, #1	@ tmp130,
	str	r3, [r4, #44]	@ tmp130, proc_9(D)->gpCurUnitID
@ Gambit/GambitAction/src/GambitActionCore.c:51: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L8:
	.align	2
.L7:
	.word	ProcGoto
	.size	cProc_SetNextGambitTarget, .-cProc_SetNextGambitTarget
	.align	1
	.global	MakeGambitAnime
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MakeGambitAnime, %function
MakeGambitAnime:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ Gambit/GambitAction/src/GambitActionCore.c:57: void MakeGambitAnime(ProcGamAction* proc, Unit* TargetUnit){
	movs	r5, r1	@ TargetUnit, tmp154
@ Gambit/GambitAction/src/GambitActionCore.c:59: 	Unit* SubjectUnit=GetUnit(gActionData.subjectIndex);
	ldr	r6, .L12	@ tmp122,
	ldr	r3, .L12+4	@ tmp124,
@ Gambit/GambitAction/src/GambitActionCore.c:57: void MakeGambitAnime(ProcGamAction* proc, Unit* TargetUnit){
	movs	r4, r0	@ proc, tmp153
@ Gambit/GambitAction/src/GambitActionCore.c:59: 	Unit* SubjectUnit=GetUnit(gActionData.subjectIndex);
	ldrb	r0, [r6, #12]	@ tmp123,
	bl	.L4		@
@ Gambit/GambitAction/src/GambitActionCore.c:62: 	SetupSubjectBattleUnitForStaff(SubjectUnit, gActionData.itemSlotIndex);
	ldrb	r1, [r6, #18]	@ tmp126,
	ldr	r3, .L12+8	@ tmp127,
	bl	.L4		@
@ Gambit/GambitAction/src/GambitActionCore.c:63: 	SetupTargetBattleUnitForStaff(TargetUnit);
	movs	r0, r5	@, TargetUnit
	ldr	r3, .L12+12	@ tmp128,
	bl	.L4		@
@ Gambit/GambitAction/src/GambitActionCore.c:93: 	u8 UnitCurHp=GetUnitCurrentHp(TargetUnit);
	ldr	r3, .L12+16	@ tmp129,
	movs	r0, r5	@, TargetUnit
	bl	.L4		@
@ Gambit/GambitAction/src/GambitActionCore.c:95: 		return MaxDmg;
	movs	r2, #10	@ _22,
@ Gambit/GambitAction/src/GambitActionCore.c:93: 	u8 UnitCurHp=GetUnitCurrentHp(TargetUnit);
	lsls	r3, r0, #24	@ UnitCurHp, tmp156,
	lsrs	r3, r3, #24	@ UnitCurHp, UnitCurHp,
@ Gambit/GambitAction/src/GambitActionCore.c:94: 	if( UnitCurHp > MaxDmg)
	cmp	r3, r2	@ UnitCurHp,
	bhi	.L10		@,
@ Gambit/GambitAction/src/GambitActionCore.c:97: 		return (UnitCurHp-1);
	subs	r3, r3, #1	@ tmp133,
	lsls	r2, r3, #24	@ _22, tmp133,
	lsrs	r2, r2, #24	@ _22, _22,
.L10:
@ Gambit/GambitAction/src/GambitActionCore.c:70: 	*(0x3+(u8*)gpCurrentRound) = u8Dmg;
	ldr	r3, .L12+20	@ tmp135,
@ Gambit/GambitAction/src/GambitActionCore.c:81: }
	@ sp needed	@
@ Gambit/GambitAction/src/GambitActionCore.c:70: 	*(0x3+(u8*)gpCurrentRound) = u8Dmg;
	ldr	r3, [r3]	@ gpCurrentRound.2_3, gpCurrentRound
@ Gambit/GambitAction/src/GambitActionCore.c:70: 	*(0x3+(u8*)gpCurrentRound) = u8Dmg;
	strb	r2, [r3, #3]	@ _22, MEM[(u8 *)gpCurrentRound.2_3 + 3B]
@ Gambit/GambitAction/src/GambitActionCore.c:71: 	gBattleActor.weaponBefore = 0x074;
	ldr	r3, .L12+24	@ tmp137,
	movs	r2, r3	@ tmp140, tmp137
	movs	r1, #116	@ tmp141,
	adds	r2, r2, #74	@ tmp140,
	strh	r1, [r2]	@ tmp141, gBattleActor.weaponBefore
@ Gambit/GambitAction/src/GambitActionCore.c:74: 	gBattleActor.weaponAttributes = 0x0;
	movs	r2, #0	@ tmp144,
	str	r2, [r3, #76]	@ tmp144, gBattleActor.weaponAttributes
@ Gambit/GambitAction/src/GambitActionCore.c:75: 	gBattleActor.weaponType= 0x0;
	adds	r3, r3, #80	@ tmp148,
	strb	r2, [r3]	@ tmp144, gBattleActor.weaponType
@ Gambit/GambitAction/src/GambitActionCore.c:78: 	BattleApplyItemEffect((Proc*)proc);
	movs	r0, r4	@, proc
	ldr	r3, .L12+28	@ tmp151,
	bl	.L4		@
@ Gambit/GambitAction/src/GambitActionCore.c:79: 	BeginBattleAnimations();
	ldr	r3, .L12+32	@ tmp152,
	bl	.L4		@
@ Gambit/GambitAction/src/GambitActionCore.c:81: }
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L13:
	.align	2
.L12:
	.word	gActionData
	.word	GetUnit
	.word	SetupSubjectBattleUnitForStaff
	.word	SetupTargetBattleUnitForStaff
	.word	GetUnitCurrentHp
	.word	gpCurrentRound
	.word	gBattleActor
	.word	BattleApplyItemEffect
	.word	BeginBattleAnimations
	.size	MakeGambitAnime, .-MakeGambitAnime
	.align	1
	.global	MakeGambitEffect
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MakeGambitEffect, %function
MakeGambitEffect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ Gambit/GambitAction/src/GambitActionCore.c:93: 	u8 UnitCurHp=GetUnitCurrentHp(TargetUnit);
	ldr	r3, .L17	@ tmp122,
	movs	r0, r1	@, TargetUnit
@ Gambit/GambitAction/src/GambitActionCore.c:85: void MakeGambitEffect(ProcGamAction* proc, Unit* TargetUnit){
	movs	r4, r1	@ TargetUnit, tmp132
@ Gambit/GambitAction/src/GambitActionCore.c:93: 	u8 UnitCurHp=GetUnitCurrentHp(TargetUnit);
	bl	.L4		@
@ Gambit/GambitAction/src/GambitActionCore.c:95: 		return MaxDmg;
	movs	r3, #10	@ _13,
@ Gambit/GambitAction/src/GambitActionCore.c:93: 	u8 UnitCurHp=GetUnitCurrentHp(TargetUnit);
	lsls	r0, r0, #24	@ UnitCurHp, tmp133,
	lsrs	r0, r0, #24	@ UnitCurHp, UnitCurHp,
@ Gambit/GambitAction/src/GambitActionCore.c:94: 	if( UnitCurHp > MaxDmg)
	cmp	r0, r3	@ UnitCurHp,
	bhi	.L15		@,
@ Gambit/GambitAction/src/GambitActionCore.c:97: 		return (UnitCurHp-1);
	subs	r0, r0, #1	@ tmp126,
	lsls	r3, r0, #24	@ _13, tmp126,
	lsrs	r3, r3, #24	@ _13, _13,
.L15:
@ Gambit/GambitAction/src/GambitActionCore.c:87: 	TargetUnit->curHP -= u8Dmg;
	ldrb	r2, [r4, #19]	@ tmp129,
@ Gambit/GambitAction/src/GambitActionCore.c:89: }
	@ sp needed	@
@ Gambit/GambitAction/src/GambitActionCore.c:87: 	TargetUnit->curHP -= u8Dmg;
	subs	r3, r2, r3	@ tmp130, tmp129, _13
	strb	r3, [r4, #19]	@ tmp130, TargetUnit_6(D)->curHP
@ Gambit/GambitAction/src/GambitActionCore.c:89: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L18:
	.align	2
.L17:
	.word	GetUnitCurrentHp
	.size	MakeGambitEffect, .-MakeGambitEffect
	.align	1
	.global	cProc_AttackPriority
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	cProc_AttackPriority, %function
cProc_AttackPriority:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ Gambit/GambitAction/src/GambitActionCore.c:21: 	Unit* TargetUnit=GetUnit(gActionData.targetIndex);
	ldr	r3, .L21	@ tmp117,
@ Gambit/GambitAction/src/GambitActionCore.c:20: void cProc_AttackPriority(ProcGamAction* proc){
	movs	r4, r0	@ proc, tmp122
@ Gambit/GambitAction/src/GambitActionCore.c:21: 	Unit* TargetUnit=GetUnit(gActionData.targetIndex);
	ldrb	r0, [r3, #13]	@ tmp118,
	ldr	r3, .L21+4	@ tmp119,
	bl	.L4		@
	movs	r5, r0	@ TargetUnit, tmp123
@ Gambit/GambitAction/src/GambitActionCore.c:22: 	MakeGambitAnime(proc,TargetUnit);
	movs	r1, r0	@, TargetUnit
	movs	r0, r4	@, proc
	bl	MakeGambitAnime		@
@ Gambit/GambitAction/src/GambitActionCore.c:23: 	MakeGambitEffect(proc,TargetUnit);
	movs	r1, r5	@, TargetUnit
	movs	r0, r4	@, proc
	bl	MakeGambitEffect		@
@ Gambit/GambitAction/src/GambitActionCore.c:25: 	if( 1 == proc->Counter )
	movs	r2, #42	@ tmp125,
	ldrsh	r3, [r4, r2]	@ tmp120, proc, tmp125
	cmp	r3, #1	@ tmp120,
	bne	.L19		@,
@ Gambit/GambitAction/src/GambitActionCore.c:26: 		ProcGoto((Proc*)proc, 0x2);
	movs	r1, #2	@,
	movs	r0, r4	@, proc
	ldr	r3, .L21+8	@ tmp121,
	bl	.L4		@
.L19:
@ Gambit/GambitAction/src/GambitActionCore.c:28: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L22:
	.align	2
.L21:
	.word	gActionData
	.word	GetUnit
	.word	ProcGoto
	.size	cProc_AttackPriority, .-cProc_AttackPriority
	.align	1
	.global	cProc_AttackNext
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	cProc_AttackNext, %function
cProc_AttackNext:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ Gambit/GambitAction/src/GambitActionCore.c:32: 	u8 TargetID= *(proc->gpCurUnitID);
	ldr	r3, [r0, #44]	@ proc_5(D)->gpCurUnitID, proc_5(D)->gpCurUnitID
@ Gambit/GambitAction/src/GambitActionCore.c:31: void cProc_AttackNext(ProcGamAction* proc){	
	movs	r4, r0	@ proc, tmp122
@ Gambit/GambitAction/src/GambitActionCore.c:32: 	u8 TargetID= *(proc->gpCurUnitID);
	ldrb	r0, [r3]	@ TargetID, *_1
@ Gambit/GambitAction/src/GambitActionCore.c:34: 	if( TargetID != gActionData.targetIndex  )
	ldr	r3, .L25	@ tmp119,
@ Gambit/GambitAction/src/GambitActionCore.c:34: 	if( TargetID != gActionData.targetIndex  )
	ldrb	r3, [r3, #13]	@ tmp120,
	cmp	r3, r0	@ tmp120, TargetID
	beq	.L23		@,
@ Gambit/GambitAction/src/GambitActionCore.c:36: 		Unit* TargetUnit=GetUnit(TargetID);
	ldr	r3, .L25+4	@ tmp121,
	bl	.L4		@
	movs	r5, r0	@ TargetUnit, tmp123
@ Gambit/GambitAction/src/GambitActionCore.c:37: 		MakeGambitAnime(proc,TargetUnit);
	movs	r1, r0	@, TargetUnit
	movs	r0, r4	@, proc
	bl	MakeGambitAnime		@
@ Gambit/GambitAction/src/GambitActionCore.c:38: 		MakeGambitEffect(proc,TargetUnit);
	movs	r1, r5	@, TargetUnit
	movs	r0, r4	@, proc
	bl	MakeGambitEffect		@
.L23:
@ Gambit/GambitAction/src/GambitActionCore.c:41: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L26:
	.align	2
.L25:
	.word	gActionData
	.word	GetUnit
	.size	cProc_AttackNext, .-cProc_AttackNext
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L4:
	bx	r3
