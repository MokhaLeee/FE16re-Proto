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
	.file	"Misc.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	newSubAttackEffect
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	newSubAttackEffect, %function
newSubAttackEffect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ MagicSystem/WpnEqpSystem/src/Misc.c:13: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	adds	r1, r1, #60	@ tmp146,
@ MagicSystem/WpnEqpSystem/src/Misc.c:12: int newSubAttackEffect(MenuProc* pmu, MenuCommandProc* pcmd){
	push	{r4, r5, r6, lr}	@
@ MagicSystem/WpnEqpSystem/src/Misc.c:13: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	movs	r4, r1	@ tmp127, tmp146
@ MagicSystem/WpnEqpSystem/src/Misc.c:26: }
	@ sp needed	@
@ MagicSystem/WpnEqpSystem/src/Misc.c:13: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	ldr	r5, .L2	@ tmp124,
@ MagicSystem/WpnEqpSystem/src/Misc.c:13: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	ldrb	r3, [r1]	@ tmp128,
@ MagicSystem/WpnEqpSystem/src/Misc.c:13: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	ldr	r0, [r5]	@ gActiveUnit.0_1, gActiveUnit
@ MagicSystem/WpnEqpSystem/src/Misc.c:13: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	adds	r3, r3, #12	@ tmp129,
	lsls	r3, r3, #1	@ tmp130, tmp129,
	adds	r3, r0, r3	@ tmp131, gActiveUnit.0_1, tmp130
	ldrh	r6, [r3, #6]	@ wpn, *gActiveUnit.0_1
@ MagicSystem/WpnEqpSystem/src/Misc.c:16: 	SetWpnEqpForce(gActiveUnit,wpn);
	ldr	r3, .L2+4	@ tmp133,
	movs	r1, r6	@, wpn
	bl	.L4		@
@ MagicSystem/WpnEqpSystem/src/Misc.c:17: 	EquipUnitItemSlot(
	ldr	r0, [r5]	@, gActiveUnit
	ldrb	r1, [r4]	@ tmp137,
	ldr	r3, .L2+8	@ tmp139,
	bl	.L4		@
@ MagicSystem/WpnEqpSystem/src/Misc.c:21: 	ClearBG0BG1();
	ldr	r3, .L2+12	@ tmp140,
	bl	.L4		@
@ MagicSystem/WpnEqpSystem/src/Misc.c:22: 	MakeTargetListForWeapon(gActiveUnit,wpn);
	movs	r1, r6	@, wpn
	ldr	r0, [r5]	@, gActiveUnit
	ldr	r3, .L2+16	@ tmp142,
	bl	.L4		@
@ MagicSystem/WpnEqpSystem/src/Misc.c:23: 	StartTargetSelection(gpTargetSelectFuncs_Attack);
	ldr	r3, .L2+20	@ tmp144,
	ldr	r0, .L2+24	@ tmp143,
	bl	.L4		@
@ MagicSystem/WpnEqpSystem/src/Misc.c:26: }
	movs	r0, #39	@,
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L3:
	.align	2
.L2:
	.word	gActiveUnit
	.word	SetWpnEqpForce
	.word	EquipUnitItemSlot
	.word	ClearBG0BG1
	.word	MakeTargetListForWeapon
	.word	StartTargetSelection
	.word	gpTargetSelectFuncs_Attack
	.size	newSubAttackEffect, .-newSubAttackEffect
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L4:
	bx	r3
