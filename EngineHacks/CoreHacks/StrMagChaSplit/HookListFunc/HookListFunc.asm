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
	.file	"HookListFunc.c"
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
	push	{r4, lr}	@
@ StrMagChaSplit/HookListFunc/HookListFunc.c:5: 	*GetBu_ChangeMagAt(bu) = 0;
	ldr	r3, .L2	@ tmp116,
@ StrMagChaSplit/HookListFunc/HookListFunc.c:7: }
	@ sp needed	@
@ StrMagChaSplit/HookListFunc/HookListFunc.c:5: 	*GetBu_ChangeMagAt(bu) = 0;
	bl	.L4		@
@ StrMagChaSplit/HookListFunc/HookListFunc.c:5: 	*GetBu_ChangeMagAt(bu) = 0;
	movs	r3, #0	@ tmp117,
	strb	r3, [r0]	@ tmp117, *_1
@ StrMagChaSplit/HookListFunc/HookListFunc.c:7: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L3:
	.align	2
.L2:
	.word	GetBu_ChangeMagAt
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
@ StrMagChaSplit/HookListFunc/HookListFunc.c:10: void UnitToBattle_SetMagCha(BattleUnit* bu, Unit* unit){
	movs	r4, r0	@ bu, tmp127
@ StrMagChaSplit/HookListFunc/HookListFunc.c:13: }
	@ sp needed	@
@ StrMagChaSplit/HookListFunc/HookListFunc.c:11: 	*GetMagAt((Unit*)bu) = *GetMagAt(unit);
	movs	r0, r1	@, unit
	ldr	r7, .L6	@ tmp121,
@ StrMagChaSplit/HookListFunc/HookListFunc.c:10: void UnitToBattle_SetMagCha(BattleUnit* bu, Unit* unit){
	movs	r5, r1	@ unit, tmp128
@ StrMagChaSplit/HookListFunc/HookListFunc.c:11: 	*GetMagAt((Unit*)bu) = *GetMagAt(unit);
	bl	.L8		@
	movs	r6, r0	@ _1, tmp129
@ StrMagChaSplit/HookListFunc/HookListFunc.c:11: 	*GetMagAt((Unit*)bu) = *GetMagAt(unit);
	movs	r0, r4	@, bu
	bl	.L8		@
@ StrMagChaSplit/HookListFunc/HookListFunc.c:11: 	*GetMagAt((Unit*)bu) = *GetMagAt(unit);
	movs	r3, #0	@ _3,
	ldrsb	r3, [r6, r3]	@ _3,* _3
@ StrMagChaSplit/HookListFunc/HookListFunc.c:12: 	*GetChaAt((Unit*)bu) = *GetChaAt(unit);
	ldr	r6, .L6+4	@ tmp124,
@ StrMagChaSplit/HookListFunc/HookListFunc.c:11: 	*GetMagAt((Unit*)bu) = *GetMagAt(unit);
	strb	r3, [r0]	@ _3, *_2
@ StrMagChaSplit/HookListFunc/HookListFunc.c:12: 	*GetChaAt((Unit*)bu) = *GetChaAt(unit);
	movs	r0, r5	@, unit
	bl	.L9		@
	movs	r5, r0	@ _4, tmp131
@ StrMagChaSplit/HookListFunc/HookListFunc.c:12: 	*GetChaAt((Unit*)bu) = *GetChaAt(unit);
	movs	r0, r4	@, bu
	bl	.L9		@
@ StrMagChaSplit/HookListFunc/HookListFunc.c:12: 	*GetChaAt((Unit*)bu) = *GetChaAt(unit);
	movs	r3, #0	@ _6,
	ldrsb	r3, [r5, r3]	@ _6,* _6
@ StrMagChaSplit/HookListFunc/HookListFunc.c:12: 	*GetChaAt((Unit*)bu) = *GetChaAt(unit);
	strb	r3, [r0]	@ _6, *_5
@ StrMagChaSplit/HookListFunc/HookListFunc.c:13: }
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
	push	{r4, r5, r6, lr}	@
@ StrMagChaSplit/HookListFunc/HookListFunc.c:18: 	*GetMagAt(unit) += *GetBu_ChangeMagAt(bu);
	ldr	r3, .L11	@ tmp131,
@ StrMagChaSplit/HookListFunc/HookListFunc.c:21: }
	@ sp needed	@
@ StrMagChaSplit/HookListFunc/HookListFunc.c:17: void BattleToUnit_SaveMagCha(Unit* unit, BattleUnit* bu){
	movs	r4, r0	@ unit, tmp145
@ StrMagChaSplit/HookListFunc/HookListFunc.c:18: 	*GetMagAt(unit) += *GetBu_ChangeMagAt(bu);
	movs	r0, r1	@, bu
@ StrMagChaSplit/HookListFunc/HookListFunc.c:17: void BattleToUnit_SaveMagCha(Unit* unit, BattleUnit* bu){
	movs	r5, r1	@ bu, tmp146
@ StrMagChaSplit/HookListFunc/HookListFunc.c:18: 	*GetMagAt(unit) += *GetBu_ChangeMagAt(bu);
	movs	r6, #0	@ _16,
@ StrMagChaSplit/HookListFunc/HookListFunc.c:18: 	*GetMagAt(unit) += *GetBu_ChangeMagAt(bu);
	bl	.L4		@
@ StrMagChaSplit/HookListFunc/HookListFunc.c:18: 	*GetMagAt(unit) += *GetBu_ChangeMagAt(bu);
	ldr	r3, .L11+4	@ tmp132,
@ StrMagChaSplit/HookListFunc/HookListFunc.c:18: 	*GetMagAt(unit) += *GetBu_ChangeMagAt(bu);
	ldrsb	r6, [r0, r6]	@ _16,* _16
@ StrMagChaSplit/HookListFunc/HookListFunc.c:18: 	*GetMagAt(unit) += *GetBu_ChangeMagAt(bu);
	movs	r0, r4	@, unit
	bl	.L4		@
@ StrMagChaSplit/HookListFunc/HookListFunc.c:18: 	*GetMagAt(unit) += *GetBu_ChangeMagAt(bu);
	ldrb	r3, [r0]	@ *_19, *_19
	adds	r3, r3, r6	@ tmp136, *_19, _16
	strb	r3, [r0]	@ tmp136, *_19
@ StrMagChaSplit/HookListFunc/HookListFunc.c:19: 	*GetChaAt(unit) += *GetBu_ChangeChaAt(bu);
	movs	r0, r5	@, bu
	ldr	r3, .L11+8	@ tmp138,
	bl	.L4		@
@ StrMagChaSplit/HookListFunc/HookListFunc.c:19: 	*GetChaAt(unit) += *GetBu_ChangeChaAt(bu);
	movs	r5, #0	@ _22,
@ StrMagChaSplit/HookListFunc/HookListFunc.c:19: 	*GetChaAt(unit) += *GetBu_ChangeChaAt(bu);
	ldr	r3, .L11+12	@ tmp139,
@ StrMagChaSplit/HookListFunc/HookListFunc.c:19: 	*GetChaAt(unit) += *GetBu_ChangeChaAt(bu);
	ldrsb	r5, [r0, r5]	@ _22,* _22
@ StrMagChaSplit/HookListFunc/HookListFunc.c:19: 	*GetChaAt(unit) += *GetBu_ChangeChaAt(bu);
	movs	r0, r4	@, unit
	bl	.L4		@
@ StrMagChaSplit/HookListFunc/HookListFunc.c:19: 	*GetChaAt(unit) += *GetBu_ChangeChaAt(bu);
	ldrb	r3, [r0]	@ *_24, *_24
	adds	r3, r3, r5	@ tmp143, *_24, _22
	strb	r3, [r0]	@ tmp143, *_24
@ StrMagChaSplit/HookListFunc/HookListFunc.c:21: }
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L12:
	.align	2
.L11:
	.word	GetBu_ChangeMagAt
	.word	GetMagAt
	.word	GetBu_ChangeChaAt
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
