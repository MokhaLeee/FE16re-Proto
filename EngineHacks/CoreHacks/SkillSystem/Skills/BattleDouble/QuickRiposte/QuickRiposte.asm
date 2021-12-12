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
	.file	"QuickRiposte.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	QuickRiposte
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	QuickRiposte, %function
QuickRiposte:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ SkillSystem/Skills/BattleDouble/QuickRiposte/QuickRiposte.c:10: 	Unit* unit = GetUnit(bu->unit.index);
	ldr	r3, .L5	@ tmp127,
@ SkillSystem/Skills/BattleDouble/QuickRiposte/QuickRiposte.c:8: int QuickRiposte(BattleUnit* bu){
	movs	r5, r0	@ bu, tmp151
@ SkillSystem/Skills/BattleDouble/QuickRiposte/QuickRiposte.c:10: 	Unit* unit = GetUnit(bu->unit.index);
	ldrb	r0, [r0, #11]	@ tmp126,
	bl	.L7		@
@ SkillSystem/Skills/BattleDouble/QuickRiposte/QuickRiposte.c:12: 	if( &gBattleTarget != bu )
	ldr	r3, .L5+4	@ tmp128,
@ SkillSystem/Skills/BattleDouble/QuickRiposte/QuickRiposte.c:10: 	Unit* unit = GetUnit(bu->unit.index);
	movs	r4, r0	@ unit, tmp152
@ SkillSystem/Skills/BattleDouble/QuickRiposte/QuickRiposte.c:12: 	if( &gBattleTarget != bu )
	cmp	r5, r3	@ bu, tmp128
	beq	.L2		@,
.L4:
@ SkillSystem/Skills/BattleDouble/QuickRiposte/QuickRiposte.c:13: 		return FALSE;
	movs	r0, #0	@ <retval>,
.L1:
@ SkillSystem/Skills/BattleDouble/QuickRiposte/QuickRiposte.c:22: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L2:
@ SkillSystem/Skills/BattleDouble/QuickRiposte/QuickRiposte.c:15: 	if( GetHpCur(unit) < (GetHpMax(unit)/2) )
	ldr	r3, .L5+8	@ tmp129,
	bl	.L7		@
@ SkillSystem/Skills/BattleDouble/QuickRiposte/QuickRiposte.c:15: 	if( GetHpCur(unit) < (GetHpMax(unit)/2) )
	ldr	r3, .L5+12	@ tmp132,
@ SkillSystem/Skills/BattleDouble/QuickRiposte/QuickRiposte.c:15: 	if( GetHpCur(unit) < (GetHpMax(unit)/2) )
	movs	r5, r0	@ tmp130, tmp153
@ SkillSystem/Skills/BattleDouble/QuickRiposte/QuickRiposte.c:15: 	if( GetHpCur(unit) < (GetHpMax(unit)/2) )
	movs	r0, r4	@, unit
	bl	.L7		@
@ SkillSystem/Skills/BattleDouble/QuickRiposte/QuickRiposte.c:15: 	if( GetHpCur(unit) < (GetHpMax(unit)/2) )
	lsrs	r3, r0, #31	@ tmp136, tmp154,
	adds	r3, r3, r0	@ tmp137, tmp136, tmp154
@ SkillSystem/Skills/BattleDouble/QuickRiposte/QuickRiposte.c:15: 	if( GetHpCur(unit) < (GetHpMax(unit)/2) )
	lsls	r3, r3, #23	@ tmp141, tmp137,
	asrs	r3, r3, #24	@ tmp141, tmp141,
	cmp	r5, r3	@ tmp130, tmp141
	blt	.L4		@,
@ SkillSystem/Skills/BattleDouble/QuickRiposte/QuickRiposte.c:18: 	if( (*SkillTester)(unit,QuickRiposteID) )
	ldr	r3, .L5+16	@ tmp143,
	ldrb	r1, [r3]	@ QuickRiposteID, QuickRiposteID
	ldr	r3, .L5+20	@ tmp145,
	movs	r0, r4	@, unit
	ldr	r3, [r3]	@ SkillTester, SkillTester
	bl	.L7		@
@ SkillSystem/Skills/BattleDouble/QuickRiposte/QuickRiposte.c:13: 		return FALSE;
	subs	r3, r0, #1	@ tmp149, tmp155
	sbcs	r0, r0, r3	@ <retval>, tmp155, tmp149
	b	.L1		@
.L6:
	.align	2
.L5:
	.word	GetUnit
	.word	gBattleTarget
	.word	GetHpCur
	.word	GetHpMax
	.word	QuickRiposteID
	.word	SkillTester
	.size	QuickRiposte, .-QuickRiposte
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L7:
	bx	r3
