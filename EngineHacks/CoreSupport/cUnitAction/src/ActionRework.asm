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
	.file	"ActionRework.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	ApplyUnitAction
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	ApplyUnitAction, %function
ApplyUnitAction:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ cUnitAction/src/ActionRework.c:25: 	gActiveUnit = GetUnit(gActionData.subjectIndex);
	ldr	r5, .L7	@ tmp130,
	ldr	r3, .L7+4	@ tmp132,
@ cUnitAction/src/ActionRework.c:24: {
	movs	r4, r0	@ proc, tmp156
@ cUnitAction/src/ActionRework.c:25: 	gActiveUnit = GetUnit(gActionData.subjectIndex);
	ldrb	r0, [r5, #12]	@ tmp131,
	bl	.L9		@
@ cUnitAction/src/ActionRework.c:25: 	gActiveUnit = GetUnit(gActionData.subjectIndex);
	ldr	r3, .L7+8	@ tmp133,
	str	r0, [r3]	@ _2, gActiveUnit
@ cUnitAction/src/ActionRework.c:29: 	if (gActionData.unitActionType == UNIT_ACTION_COMBAT)
	ldrb	r3, [r5, #17]	@ tmp135,
	cmp	r3, #2	@ tmp135,
	bne	.L2		@,
@ cUnitAction/src/ActionRework.c:31: 		if (GetItemIndex(gActiveUnit->items[gActionData.itemSlotIndex]) == 0xA6)
	ldrb	r3, [r5, #18]	@ tmp137,
@ cUnitAction/src/ActionRework.c:31: 		if (GetItemIndex(gActiveUnit->items[gActionData.itemSlotIndex]) == 0xA6)
	adds	r3, r3, #12	@ tmp138,
	lsls	r3, r3, #1	@ tmp139, tmp138,
	adds	r0, r0, r3	@ tmp140, _2, tmp139
@ cUnitAction/src/ActionRework.c:31: 		if (GetItemIndex(gActiveUnit->items[gActionData.itemSlotIndex]) == 0xA6)
	ldrh	r0, [r0, #6]	@ tmp142, *_2
	ldr	r3, .L7+12	@ tmp143,
	bl	.L9		@
@ cUnitAction/src/ActionRework.c:31: 		if (GetItemIndex(gActiveUnit->items[gActionData.itemSlotIndex]) == 0xA6)
	cmp	r0, #166	@ tmp158,
	bne	.L2		@,
@ cUnitAction/src/ActionRework.c:33: 			ActionStaffDoorChestUseItem(proc);
	movs	r0, r4	@, proc
	ldr	r3, .L7+16	@ tmp146,
.L6:
@ cUnitAction/src/ActionRework.c:47: 			func(proc);
	bl	.L9		@
@ cUnitAction/src/ActionRework.c:49: 			return 0;
	movs	r0, #0	@ <retval>,
.L1:
@ cUnitAction/src/ActionRework.c:56: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L2:
@ cUnitAction/src/ActionRework.c:40: 	ActionFunc func = UnitActionCallTable[gActionData.unitActionType];
	ldrb	r2, [r5, #17]	@ tmp149,
@ cUnitAction/src/ActionRework.c:40: 	ActionFunc func = UnitActionCallTable[gActionData.unitActionType];
	ldr	r3, .L7+20	@ tmp147,
	lsls	r2, r2, #2	@ tmp150, tmp149,
	ldr	r3, [r2, r3]	@ func, UnitActionCallTable[_10]
@ cUnitAction/src/ActionRework.c:55: 	return 1;
	movs	r0, #1	@ <retval>,
@ cUnitAction/src/ActionRework.c:42: 	if (func)
	cmp	r3, #0	@ func,
	beq	.L1		@,
@ cUnitAction/src/ActionRework.c:12: 	return (raw >> 28) ? 1 : 0;
	lsrs	r2, r3, #28	@ tmp151, func,
@ cUnitAction/src/ActionRework.c:44: 		if (RequiresProcYield(func))
	beq	.L4		@,
@ cUnitAction/src/ActionRework.c:18: 	const ActionFunc result = (ActionFunc)(raw & 0xFFFFFFF);
	lsls	r3, r3, #4	@ tmp153, func,
@ cUnitAction/src/ActionRework.c:47: 			func(proc);
	movs	r0, r4	@, proc
@ cUnitAction/src/ActionRework.c:18: 	const ActionFunc result = (ActionFunc)(raw & 0xFFFFFFF);
	lsrs	r3, r3, #4	@ result, tmp153,
	b	.L6		@
.L4:
@ cUnitAction/src/ActionRework.c:52: 		return func(proc);
	movs	r0, r4	@, proc
	bl	.L9		@
	b	.L1		@
.L8:
	.align	2
.L7:
	.word	gActionData
	.word	GetUnit
	.word	gActiveUnit
	.word	GetItemIndex
	.word	ActionStaffDoorChestUseItem
	.word	UnitActionCallTable
	.size	ApplyUnitAction, .-ApplyUnitAction
	.align	1
	.global	WaitAction
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	WaitAction, %function
WaitAction:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ cUnitAction/src/ActionRework.c:60: 	gActiveUnit->state |= US_HAS_MOVED;
	ldr	r3, .L11	@ tmp118,
@ cUnitAction/src/ActionRework.c:62: }
	@ sp needed	@
@ cUnitAction/src/ActionRework.c:60: 	gActiveUnit->state |= US_HAS_MOVED;
	ldr	r2, [r3]	@ gActiveUnit.1_1, gActiveUnit
	movs	r3, #64	@ tmp121,
	ldr	r1, [r2, #12]	@ gActiveUnit.1_1->state, gActiveUnit.1_1->state
	orrs	r3, r1	@ tmp119, gActiveUnit.1_1->state
@ cUnitAction/src/ActionRework.c:62: }
	movs	r0, #1	@,
@ cUnitAction/src/ActionRework.c:60: 	gActiveUnit->state |= US_HAS_MOVED;
	str	r3, [r2, #12]	@ tmp119, gActiveUnit.1_1->state
@ cUnitAction/src/ActionRework.c:62: }
	bx	lr
.L12:
	.align	2
.L11:
	.word	gActiveUnit
	.size	WaitAction, .-WaitAction
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L9:
	bx	r3
