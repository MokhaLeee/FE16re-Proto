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
	.file	"StatusBonus.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	Apply_CombatArt_RangeBonus
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Apply_CombatArt_RangeBonus, %function
Apply_CombatArt_RangeBonus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ CombatArt/StatusBonus/StatusBonus.c:9: 	if( gpBattleFlagSu->isCombat )
	ldr	r3, .L7	@ tmp125,
	ldr	r3, [r3]	@ gpBattleFlagSu.0_1, gpBattleFlagSu
@ CombatArt/StatusBonus/StatusBonus.c:9: 	if( gpBattleFlagSu->isCombat )
	ldrb	r1, [r3]	@ *gpBattleFlagSu.0_1, *gpBattleFlagSu.0_1
@ CombatArt/StatusBonus/StatusBonus.c:8: {
	movs	r2, r0	@ unit, tmp141
	push	{r4, lr}	@
@ CombatArt/StatusBonus/StatusBonus.c:12: 	return 0;
	movs	r0, #0	@ <retval>,
@ CombatArt/StatusBonus/StatusBonus.c:9: 	if( gpBattleFlagSu->isCombat )
	lsls	r1, r1, #31	@ tmp143, *gpBattleFlagSu.0_1,
	bpl	.L2		@,
@ CombatArt/StatusBonus/StatusBonus.c:10: 		if( unit->index == gpBattleFlagSu->ActorId )
	movs	r1, #11	@ tmp133,
	ldrsb	r1, [r2, r1]	@ tmp133,
@ CombatArt/StatusBonus/StatusBonus.c:10: 		if( unit->index == gpBattleFlagSu->ActorId )
	ldrb	r2, [r3, #1]	@ tmp134,
@ CombatArt/StatusBonus/StatusBonus.c:10: 		if( unit->index == gpBattleFlagSu->ActorId )
	cmp	r1, r2	@ tmp133, tmp134
	bne	.L2		@,
@ CombatArt/StatusBonus/StatusBonus.c:11: 			return GetCS_RangeBonus(gpBattleFlagSu->artId);
	ldrb	r0, [r3, #2]	@ tmp135,
	ldr	r3, .L7+4	@ tmp136,
	bl	.L9		@
	lsls	r0, r0, #24	@ tmp139, tmp142,
	asrs	r0, r0, #24	@ <retval>, tmp139,
.L2:
@ CombatArt/StatusBonus/StatusBonus.c:13: }
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L8:
	.align	2
.L7:
	.word	gpBattleFlagSu
	.word	GetCS_RangeBonus
	.size	Apply_CombatArt_RangeBonus, .-Apply_CombatArt_RangeBonus
	.align	1
	.global	Apply_CombatArt_MtBonus
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Apply_CombatArt_MtBonus, %function
Apply_CombatArt_MtBonus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ CombatArt/StatusBonus/StatusBonus.c:19: 	if( gpBattleFlagSu->isCombat )
	ldr	r2, .L17	@ tmp124,
	ldr	r2, [r2]	@ gpBattleFlagSu.3_1, gpBattleFlagSu
@ CombatArt/StatusBonus/StatusBonus.c:19: 	if( gpBattleFlagSu->isCombat )
	ldrb	r1, [r2]	@ *gpBattleFlagSu.3_1, *gpBattleFlagSu.3_1
@ CombatArt/StatusBonus/StatusBonus.c:18: s16 Apply_CombatArt_MtBonus(BattleUnit* actor, BattleUnit* target){
	movs	r3, r0	@ actor, tmp141
	push	{r4, lr}	@
@ CombatArt/StatusBonus/StatusBonus.c:23: 	return 0;
	movs	r0, #0	@ <retval>,
@ CombatArt/StatusBonus/StatusBonus.c:19: 	if( gpBattleFlagSu->isCombat )
	lsls	r1, r1, #31	@ tmp143, *gpBattleFlagSu.3_1,
	bpl	.L11		@,
@ CombatArt/StatusBonus/StatusBonus.c:20: 	if( &gBattleActor == actor )
	ldr	r1, .L17+4	@ tmp132,
	cmp	r3, r1	@ actor, tmp132
	bne	.L11		@,
@ CombatArt/StatusBonus/StatusBonus.c:21: 	if( actor->unit.index == gpBattleFlagSu->ActorId )
	movs	r1, #11	@ tmp134,
	ldrsb	r1, [r3, r1]	@ tmp134,
@ CombatArt/StatusBonus/StatusBonus.c:21: 	if( actor->unit.index == gpBattleFlagSu->ActorId )
	ldrb	r3, [r2, #1]	@ tmp135,
@ CombatArt/StatusBonus/StatusBonus.c:21: 	if( actor->unit.index == gpBattleFlagSu->ActorId )
	cmp	r1, r3	@ tmp134, tmp135
	bne	.L11		@,
@ CombatArt/StatusBonus/StatusBonus.c:22: 		return GetCS_mtBonus(gpBattleFlagSu->artId);
	ldrb	r0, [r2, #2]	@ tmp136,
	ldr	r3, .L17+8	@ tmp137,
	bl	.L9		@
.L11:
@ CombatArt/StatusBonus/StatusBonus.c:24: }
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L18:
	.align	2
.L17:
	.word	gpBattleFlagSu
	.word	gBattleActor
	.word	GetCS_mtBonus
	.size	Apply_CombatArt_MtBonus, .-Apply_CombatArt_MtBonus
	.align	1
	.global	Apply_CombatArt_HitBonus
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Apply_CombatArt_HitBonus, %function
Apply_CombatArt_HitBonus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ CombatArt/StatusBonus/StatusBonus.c:27: 	if( gpBattleFlagSu->isCombat )
	ldr	r2, .L26	@ tmp124,
	ldr	r2, [r2]	@ gpBattleFlagSu.6_1, gpBattleFlagSu
@ CombatArt/StatusBonus/StatusBonus.c:27: 	if( gpBattleFlagSu->isCombat )
	ldrb	r1, [r2]	@ *gpBattleFlagSu.6_1, *gpBattleFlagSu.6_1
@ CombatArt/StatusBonus/StatusBonus.c:26: s16 Apply_CombatArt_HitBonus(BattleUnit* actor, BattleUnit* target){
	movs	r3, r0	@ actor, tmp141
	push	{r4, lr}	@
@ CombatArt/StatusBonus/StatusBonus.c:31: 	return 0;
	movs	r0, #0	@ <retval>,
@ CombatArt/StatusBonus/StatusBonus.c:27: 	if( gpBattleFlagSu->isCombat )
	lsls	r1, r1, #31	@ tmp143, *gpBattleFlagSu.6_1,
	bpl	.L20		@,
@ CombatArt/StatusBonus/StatusBonus.c:28: 	if( &gBattleActor == actor )
	ldr	r1, .L26+4	@ tmp132,
	cmp	r3, r1	@ actor, tmp132
	bne	.L20		@,
@ CombatArt/StatusBonus/StatusBonus.c:29: 	if( actor->unit.index == gpBattleFlagSu->ActorId )
	movs	r1, #11	@ tmp134,
	ldrsb	r1, [r3, r1]	@ tmp134,
@ CombatArt/StatusBonus/StatusBonus.c:29: 	if( actor->unit.index == gpBattleFlagSu->ActorId )
	ldrb	r3, [r2, #1]	@ tmp135,
@ CombatArt/StatusBonus/StatusBonus.c:29: 	if( actor->unit.index == gpBattleFlagSu->ActorId )
	cmp	r1, r3	@ tmp134, tmp135
	bne	.L20		@,
@ CombatArt/StatusBonus/StatusBonus.c:30: 		return GetCS_hitBonus(gpBattleFlagSu->artId);
	ldrb	r0, [r2, #2]	@ tmp136,
	ldr	r3, .L26+8	@ tmp137,
	bl	.L9		@
.L20:
@ CombatArt/StatusBonus/StatusBonus.c:32: }
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L27:
	.align	2
.L26:
	.word	gpBattleFlagSu
	.word	gBattleActor
	.word	GetCS_hitBonus
	.size	Apply_CombatArt_HitBonus, .-Apply_CombatArt_HitBonus
	.align	1
	.global	Apply_CombatArt_AvoBonus
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Apply_CombatArt_AvoBonus, %function
Apply_CombatArt_AvoBonus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ CombatArt/StatusBonus/StatusBonus.c:35: 	if( gpBattleFlagSu->isCombat )
	ldr	r2, .L35	@ tmp124,
	ldr	r2, [r2]	@ gpBattleFlagSu.9_1, gpBattleFlagSu
@ CombatArt/StatusBonus/StatusBonus.c:35: 	if( gpBattleFlagSu->isCombat )
	ldrb	r1, [r2]	@ *gpBattleFlagSu.9_1, *gpBattleFlagSu.9_1
@ CombatArt/StatusBonus/StatusBonus.c:34: s16 Apply_CombatArt_AvoBonus(BattleUnit* actor, BattleUnit* target){
	movs	r3, r0	@ actor, tmp141
	push	{r4, lr}	@
@ CombatArt/StatusBonus/StatusBonus.c:39: 	return 0;
	movs	r0, #0	@ <retval>,
@ CombatArt/StatusBonus/StatusBonus.c:35: 	if( gpBattleFlagSu->isCombat )
	lsls	r1, r1, #31	@ tmp143, *gpBattleFlagSu.9_1,
	bpl	.L29		@,
@ CombatArt/StatusBonus/StatusBonus.c:36: 	if( &gBattleActor == actor )
	ldr	r1, .L35+4	@ tmp132,
	cmp	r3, r1	@ actor, tmp132
	bne	.L29		@,
@ CombatArt/StatusBonus/StatusBonus.c:37: 	if( actor->unit.index == gpBattleFlagSu->ActorId )
	movs	r1, #11	@ tmp134,
	ldrsb	r1, [r3, r1]	@ tmp134,
@ CombatArt/StatusBonus/StatusBonus.c:37: 	if( actor->unit.index == gpBattleFlagSu->ActorId )
	ldrb	r3, [r2, #1]	@ tmp135,
@ CombatArt/StatusBonus/StatusBonus.c:37: 	if( actor->unit.index == gpBattleFlagSu->ActorId )
	cmp	r1, r3	@ tmp134, tmp135
	bne	.L29		@,
@ CombatArt/StatusBonus/StatusBonus.c:38: 		return GetCS_avoBonus(gpBattleFlagSu->artId);
	ldrb	r0, [r2, #2]	@ tmp136,
	ldr	r3, .L35+8	@ tmp137,
	bl	.L9		@
.L29:
@ CombatArt/StatusBonus/StatusBonus.c:40: }
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L36:
	.align	2
.L35:
	.word	gpBattleFlagSu
	.word	gBattleActor
	.word	GetCS_avoBonus
	.size	Apply_CombatArt_AvoBonus, .-Apply_CombatArt_AvoBonus
	.align	1
	.global	Apply_CombatArt_CritBonus
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Apply_CombatArt_CritBonus, %function
Apply_CombatArt_CritBonus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ CombatArt/StatusBonus/StatusBonus.c:44: 	if( gpBattleFlagSu->isCombat )
	ldr	r2, .L44	@ tmp124,
	ldr	r2, [r2]	@ gpBattleFlagSu.12_1, gpBattleFlagSu
@ CombatArt/StatusBonus/StatusBonus.c:44: 	if( gpBattleFlagSu->isCombat )
	ldrb	r1, [r2]	@ *gpBattleFlagSu.12_1, *gpBattleFlagSu.12_1
@ CombatArt/StatusBonus/StatusBonus.c:43: s16 Apply_CombatArt_CritBonus(BattleUnit* actor, BattleUnit* target){
	movs	r3, r0	@ actor, tmp141
	push	{r4, lr}	@
@ CombatArt/StatusBonus/StatusBonus.c:48: 	return 0;
	movs	r0, #0	@ <retval>,
@ CombatArt/StatusBonus/StatusBonus.c:44: 	if( gpBattleFlagSu->isCombat )
	lsls	r1, r1, #31	@ tmp143, *gpBattleFlagSu.12_1,
	bpl	.L38		@,
@ CombatArt/StatusBonus/StatusBonus.c:45: 	if( &gBattleActor == actor )
	ldr	r1, .L44+4	@ tmp132,
	cmp	r3, r1	@ actor, tmp132
	bne	.L38		@,
@ CombatArt/StatusBonus/StatusBonus.c:46: 	if( actor->unit.index == gpBattleFlagSu->ActorId )
	movs	r1, #11	@ tmp134,
	ldrsb	r1, [r3, r1]	@ tmp134,
@ CombatArt/StatusBonus/StatusBonus.c:46: 	if( actor->unit.index == gpBattleFlagSu->ActorId )
	ldrb	r3, [r2, #1]	@ tmp135,
@ CombatArt/StatusBonus/StatusBonus.c:46: 	if( actor->unit.index == gpBattleFlagSu->ActorId )
	cmp	r1, r3	@ tmp134, tmp135
	bne	.L38		@,
@ CombatArt/StatusBonus/StatusBonus.c:47: 		return GetCS_CritBonus(gpBattleFlagSu->artId);
	ldrb	r0, [r2, #2]	@ tmp136,
	ldr	r3, .L44+8	@ tmp137,
	bl	.L9		@
.L38:
@ CombatArt/StatusBonus/StatusBonus.c:49: }
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L45:
	.align	2
.L44:
	.word	gpBattleFlagSu
	.word	gBattleActor
	.word	GetCS_CritBonus
	.size	Apply_CombatArt_CritBonus, .-Apply_CombatArt_CritBonus
	.align	1
	.global	nullDouble_CombatArt
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	nullDouble_CombatArt, %function
nullDouble_CombatArt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ CombatArt/StatusBonus/StatusBonus.c:54: 	if( &gBattleActor == bu )
	ldr	r2, .L52	@ tmp123,
@ CombatArt/StatusBonus/StatusBonus.c:53: int nullDouble_CombatArt(BattleUnit* bu){
	movs	r3, r0	@ bu, tmp140
@ CombatArt/StatusBonus/StatusBonus.c:58: 	return FALSE;
	movs	r0, #0	@ <retval>,
@ CombatArt/StatusBonus/StatusBonus.c:54: 	if( &gBattleActor == bu )
	cmp	r3, r2	@ bu, tmp123
	bne	.L46		@,
@ CombatArt/StatusBonus/StatusBonus.c:55: 	if( gpBattleFlagSu->isCombat )
	ldr	r2, .L52+4	@ tmp124,
	ldr	r2, [r2]	@ gpBattleFlagSu.15_1, gpBattleFlagSu
@ CombatArt/StatusBonus/StatusBonus.c:55: 	if( gpBattleFlagSu->isCombat )
	ldrb	r1, [r2]	@ *gpBattleFlagSu.15_1, *gpBattleFlagSu.15_1
@ CombatArt/StatusBonus/StatusBonus.c:55: 	if( gpBattleFlagSu->isCombat )
	lsls	r1, r1, #31	@ tmp141, *gpBattleFlagSu.15_1,
	bpl	.L46		@,
@ CombatArt/StatusBonus/StatusBonus.c:56: 	if( bu->unit.index == gpBattleFlagSu->ActorId )
	movs	r0, #11	@ tmp133,
	ldrsb	r0, [r3, r0]	@ tmp133,
@ CombatArt/StatusBonus/StatusBonus.c:56: 	if( bu->unit.index == gpBattleFlagSu->ActorId )
	ldrb	r3, [r2, #1]	@ tmp134,
@ CombatArt/StatusBonus/StatusBonus.c:56: 	if( bu->unit.index == gpBattleFlagSu->ActorId )
	subs	r0, r0, r3	@ tmp137, tmp133, tmp134
@ CombatArt/StatusBonus/StatusBonus.c:57: 		return TRUE;
	rsbs	r3, r0, #0	@ tmp138, tmp137
	adcs	r0, r0, r3	@ <retval>, tmp137, tmp138
.L46:
@ CombatArt/StatusBonus/StatusBonus.c:59: }
	@ sp needed	@
	bx	lr
.L53:
	.align	2
.L52:
	.word	gBattleActor
	.word	gpBattleFlagSu
	.size	nullDouble_CombatArt, .-nullDouble_CombatArt
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L9:
	bx	r3
