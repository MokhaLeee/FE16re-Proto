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
	.file	"HookFuncs.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	UnitToBattle_StatUpClear
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	UnitToBattle_StatUpClear, %function
UnitToBattle_StatUpClear:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ BattleUnitHook/Src/HookFuncs.c:5: 	*GetBu_ChangeMagAt(bu) = 0;
	ldr	r3, .L2	@ tmp117,
@ BattleUnitHook/Src/HookFuncs.c:7: }
	@ sp needed	@
@ BattleUnitHook/Src/HookFuncs.c:5: 	*GetBu_ChangeMagAt(bu) = 0;
	movs	r5, #0	@ tmp118,
@ BattleUnitHook/Src/HookFuncs.c:4: void UnitToBattle_StatUpClear(BattleUnit* bu, Unit* unit){
	movs	r4, r0	@ bu, tmp123
@ BattleUnitHook/Src/HookFuncs.c:5: 	*GetBu_ChangeMagAt(bu) = 0;
	bl	.L4		@
@ BattleUnitHook/Src/HookFuncs.c:6: 	*GetBu_ChangeChaAt(bu) = 0;
	ldr	r3, .L2+4	@ tmp120,
@ BattleUnitHook/Src/HookFuncs.c:5: 	*GetBu_ChangeMagAt(bu) = 0;
	strb	r5, [r0]	@ tmp118, *_1
@ BattleUnitHook/Src/HookFuncs.c:6: 	*GetBu_ChangeChaAt(bu) = 0;
	movs	r0, r4	@, bu
	bl	.L4		@
@ BattleUnitHook/Src/HookFuncs.c:6: 	*GetBu_ChangeChaAt(bu) = 0;
	strb	r5, [r0]	@ tmp118, *_2
@ BattleUnitHook/Src/HookFuncs.c:7: }
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L3:
	.align	2
.L2:
	.word	GetBu_ChangeMagAt
	.word	GetBu_ChangeChaAt
	.size	UnitToBattle_StatUpClear, .-UnitToBattle_StatUpClear
	.align	1
	.global	UnitToBattle_SetMagCha
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	UnitToBattle_SetMagCha, %function
UnitToBattle_SetMagCha:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
@ BattleUnitHook/Src/HookFuncs.c:10: void UnitToBattle_SetMagCha(BattleUnit* bu, Unit* unit){
	movs	r4, r0	@ bu, tmp127
@ BattleUnitHook/Src/HookFuncs.c:13: }
	@ sp needed	@
@ BattleUnitHook/Src/HookFuncs.c:11: 	*GetMagAt((Unit*)bu) = *GetMagAt(unit);
	movs	r0, r1	@, unit
	ldr	r7, .L6	@ tmp121,
@ BattleUnitHook/Src/HookFuncs.c:10: void UnitToBattle_SetMagCha(BattleUnit* bu, Unit* unit){
	movs	r5, r1	@ unit, tmp128
@ BattleUnitHook/Src/HookFuncs.c:11: 	*GetMagAt((Unit*)bu) = *GetMagAt(unit);
	bl	.L8		@
	movs	r6, r0	@ _1, tmp129
@ BattleUnitHook/Src/HookFuncs.c:11: 	*GetMagAt((Unit*)bu) = *GetMagAt(unit);
	movs	r0, r4	@, bu
	bl	.L8		@
@ BattleUnitHook/Src/HookFuncs.c:11: 	*GetMagAt((Unit*)bu) = *GetMagAt(unit);
	movs	r3, #0	@ _3,
	ldrsb	r3, [r6, r3]	@ _3,* _3
@ BattleUnitHook/Src/HookFuncs.c:12: 	*GetChaAt((Unit*)bu) = *GetChaAt(unit);
	ldr	r6, .L6+4	@ tmp124,
@ BattleUnitHook/Src/HookFuncs.c:11: 	*GetMagAt((Unit*)bu) = *GetMagAt(unit);
	strb	r3, [r0]	@ _3, *_2
@ BattleUnitHook/Src/HookFuncs.c:12: 	*GetChaAt((Unit*)bu) = *GetChaAt(unit);
	movs	r0, r5	@, unit
	bl	.L9		@
	movs	r5, r0	@ _4, tmp131
@ BattleUnitHook/Src/HookFuncs.c:12: 	*GetChaAt((Unit*)bu) = *GetChaAt(unit);
	movs	r0, r4	@, bu
	bl	.L9		@
@ BattleUnitHook/Src/HookFuncs.c:12: 	*GetChaAt((Unit*)bu) = *GetChaAt(unit);
	movs	r3, #0	@ _6,
	ldrsb	r3, [r5, r3]	@ _6,* _6
@ BattleUnitHook/Src/HookFuncs.c:12: 	*GetChaAt((Unit*)bu) = *GetChaAt(unit);
	strb	r3, [r0]	@ _6, *_5
@ BattleUnitHook/Src/HookFuncs.c:13: }
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L7:
	.align	2
.L6:
	.word	GetMagAt
	.word	GetChaAt
	.size	UnitToBattle_SetMagCha, .-UnitToBattle_SetMagCha
	.align	1
	.global	BattleToUnit_SaveMagCha
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	BattleToUnit_SaveMagCha, %function
BattleToUnit_SaveMagCha:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
@ BattleUnitHook/Src/HookFuncs.c:16: 	*GetMagAt(unit) = *GetMagAt((Unit*)bu);
	ldr	r7, .L11	@ tmp121,
@ BattleUnitHook/Src/HookFuncs.c:18: }
	@ sp needed	@
@ BattleUnitHook/Src/HookFuncs.c:15: void BattleToUnit_SaveMagCha(BattleUnit* bu, Unit* unit){
	movs	r4, r1	@ unit, tmp128
	movs	r5, r0	@ bu, tmp127
@ BattleUnitHook/Src/HookFuncs.c:16: 	*GetMagAt(unit) = *GetMagAt((Unit*)bu);
	bl	.L8		@
	movs	r6, r0	@ _1, tmp129
@ BattleUnitHook/Src/HookFuncs.c:16: 	*GetMagAt(unit) = *GetMagAt((Unit*)bu);
	movs	r0, r4	@, unit
	bl	.L8		@
@ BattleUnitHook/Src/HookFuncs.c:16: 	*GetMagAt(unit) = *GetMagAt((Unit*)bu);
	movs	r3, #0	@ _3,
	ldrsb	r3, [r6, r3]	@ _3,* _3
@ BattleUnitHook/Src/HookFuncs.c:17: 	*GetChaAt(unit) = *GetChaAt((Unit*)bu);
	ldr	r6, .L11+4	@ tmp124,
@ BattleUnitHook/Src/HookFuncs.c:16: 	*GetMagAt(unit) = *GetMagAt((Unit*)bu);
	strb	r3, [r0]	@ _3, *_2
@ BattleUnitHook/Src/HookFuncs.c:17: 	*GetChaAt(unit) = *GetChaAt((Unit*)bu);
	movs	r0, r5	@, bu
	bl	.L9		@
	movs	r5, r0	@ _4, tmp131
@ BattleUnitHook/Src/HookFuncs.c:17: 	*GetChaAt(unit) = *GetChaAt((Unit*)bu);
	movs	r0, r4	@, unit
	bl	.L9		@
@ BattleUnitHook/Src/HookFuncs.c:17: 	*GetChaAt(unit) = *GetChaAt((Unit*)bu);
	movs	r3, #0	@ _6,
	ldrsb	r3, [r5, r3]	@ _6,* _6
@ BattleUnitHook/Src/HookFuncs.c:17: 	*GetChaAt(unit) = *GetChaAt((Unit*)bu);
	strb	r3, [r0]	@ _6, *_5
@ BattleUnitHook/Src/HookFuncs.c:18: }
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L12:
	.align	2
.L11:
	.word	GetMagAt
	.word	GetChaAt
	.size	BattleToUnit_SaveMagCha, .-BattleToUnit_SaveMagCha
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L4:
	bx	r3
.L9:
	bx	r6
.L8:
	bx	r7
