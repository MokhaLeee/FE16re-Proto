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
	.file	"Vantage.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	Vantage
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Vantage, %function
Vantage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ SkillSystem/Skills/BattleOrder/Vantage/Vantage.c:11: 	Unit* unit = GetUnit(bu->unit.index);
	ldr	r3, .L5	@ tmp126,
@ SkillSystem/Skills/BattleOrder/Vantage/Vantage.c:9: int Vantage(BattleUnit* bu){
	movs	r4, r0	@ bu, tmp143
@ SkillSystem/Skills/BattleOrder/Vantage/Vantage.c:11: 	Unit* unit = GetUnit(bu->unit.index);
	ldrb	r0, [r0, #11]	@ tmp125,
	bl	.L7		@
@ SkillSystem/Skills/BattleOrder/Vantage/Vantage.c:13: 	if( &gBattleTarget != bu )
	ldr	r3, .L5+4	@ tmp127,
@ SkillSystem/Skills/BattleOrder/Vantage/Vantage.c:11: 	Unit* unit = GetUnit(bu->unit.index);
	movs	r5, r0	@ unit, tmp144
@ SkillSystem/Skills/BattleOrder/Vantage/Vantage.c:13: 	if( &gBattleTarget != bu )
	cmp	r4, r3	@ bu, tmp127
	beq	.L2		@,
.L4:
@ SkillSystem/Skills/BattleOrder/Vantage/Vantage.c:14: 		return FALSE;
	movs	r0, #0	@ <retval>,
.L1:
@ SkillSystem/Skills/BattleOrder/Vantage/Vantage.c:23: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L2:
@ SkillSystem/Skills/BattleOrder/Vantage/Vantage.c:16: 	if( GetHpCur(unit) > GetHpMax(unit) )
	ldr	r3, .L5+8	@ tmp128,
	bl	.L7		@
@ SkillSystem/Skills/BattleOrder/Vantage/Vantage.c:16: 	if( GetHpCur(unit) > GetHpMax(unit) )
	ldr	r3, .L5+12	@ tmp131,
@ SkillSystem/Skills/BattleOrder/Vantage/Vantage.c:16: 	if( GetHpCur(unit) > GetHpMax(unit) )
	movs	r6, r0	@ tmp129, tmp145
@ SkillSystem/Skills/BattleOrder/Vantage/Vantage.c:16: 	if( GetHpCur(unit) > GetHpMax(unit) )
	movs	r0, r5	@, unit
	bl	.L7		@
@ SkillSystem/Skills/BattleOrder/Vantage/Vantage.c:16: 	if( GetHpCur(unit) > GetHpMax(unit) )
	cmp	r6, r0	@ tmp129, tmp146
	bgt	.L4		@,
@ SkillSystem/Skills/BattleOrder/Vantage/Vantage.c:19: 	if( (*SkillTester)(&bu->unit,VantageID) )
	ldr	r3, .L5+16	@ tmp134,
	ldrb	r1, [r3]	@ VantageID, VantageID
	ldr	r3, .L5+20	@ tmp137,
	movs	r0, r4	@, bu
	ldr	r3, [r3]	@ SkillTester, SkillTester
	bl	.L7		@
@ SkillSystem/Skills/BattleOrder/Vantage/Vantage.c:14: 		return FALSE;
	subs	r3, r0, #1	@ tmp141, tmp147
	sbcs	r0, r0, r3	@ <retval>, tmp147, tmp141
	b	.L1		@
.L6:
	.align	2
.L5:
	.word	GetUnit
	.word	gBattleTarget
	.word	GetHpCur
	.word	GetHpMax
	.word	VantageID
	.word	SkillTester
	.size	Vantage, .-Vantage
	.align	1
	.global	VantageBattalion
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	VantageBattalion, %function
VantageBattalion:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ SkillSystem/Skills/BattleOrder/Vantage/Vantage.c:27: 	if( (*SkillTester)(&bu->unit,VantageBattalionID) )
	ldr	r3, .L9	@ tmp121,
@ SkillSystem/Skills/BattleOrder/Vantage/Vantage.c:31: }
	@ sp needed	@
@ SkillSystem/Skills/BattleOrder/Vantage/Vantage.c:27: 	if( (*SkillTester)(&bu->unit,VantageBattalionID) )
	ldrb	r1, [r3]	@ VantageBattalionID, VantageBattalionID
	ldr	r3, .L9+4	@ tmp123,
	ldr	r3, [r3]	@ SkillTester, SkillTester
	bl	.L7		@
@ SkillSystem/Skills/BattleOrder/Vantage/Vantage.c:27: 	if( (*SkillTester)(&bu->unit,VantageBattalionID) )
	subs	r3, r0, #1	@ tmp128, tmp130
	sbcs	r0, r0, r3	@ tmp127, tmp130, tmp128
@ SkillSystem/Skills/BattleOrder/Vantage/Vantage.c:31: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L10:
	.align	2
.L9:
	.word	VantageBattalionID
	.word	SkillTester
	.size	VantageBattalion, .-VantageBattalion
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L7:
	bx	r3
