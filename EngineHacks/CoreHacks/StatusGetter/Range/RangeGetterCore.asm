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
	.file	"RangeGetterCore.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	prMinRangeGetter
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	prMinRangeGetter, %function
prMinRangeGetter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ StatusGetter/Range/RangeGetterCore.c:14: 	s16 Stat = GetItemMinRange(item);
	ldr	r3, .L2	@ tmp118,
@ StatusGetter/Range/RangeGetterCore.c:16: }
	@ sp needed	@
@ StatusGetter/Range/RangeGetterCore.c:14: 	s16 Stat = GetItemMinRange(item);
	bl	.L4		@
@ StatusGetter/Range/RangeGetterCore.c:15: 	return Stat;
	lsls	r0, r0, #16	@ tmp120, tmp123,
	lsrs	r0, r0, #16	@ tmp120, tmp120,
@ StatusGetter/Range/RangeGetterCore.c:16: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L3:
	.align	2
.L2:
	.word	GetItemMinRange
	.size	prMinRangeGetter, .-prMinRangeGetter
	.align	1
	.global	prMaxRangeGetter
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	prMaxRangeGetter, %function
prMaxRangeGetter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
@ StatusGetter/Range/RangeGetterCore.c:19: 	s16 Stat = GetItemMaxRange(item);
	ldr	r3, .L12	@ tmp130,
@ StatusGetter/Range/RangeGetterCore.c:18: u16 prMaxRangeGetter(u16 item, Unit* unit){
	movs	r6, r0	@ item, tmp148
	str	r1, [sp, #4]	@ tmp149, %sfp
@ StatusGetter/Range/RangeGetterCore.c:19: 	s16 Stat = GetItemMaxRange(item);
	bl	.L4		@
@ StatusGetter/Range/RangeGetterCore.c:20: 	if( 0==Stat )
	lsls	r3, r0, #16	@ _2, _2,
@ StatusGetter/Range/RangeGetterCore.c:19: 	s16 Stat = GetItemMaxRange(item);
	movs	r5, r0	@ _2, tmp150
@ StatusGetter/Range/RangeGetterCore.c:21: 		return 0;
	movs	r0, #0	@ <retval>,
@ StatusGetter/Range/RangeGetterCore.c:5: 	RangeGetter_Func* it = funcs;
	ldr	r7, .L12+4	@ it,
@ StatusGetter/Range/RangeGetterCore.c:20: 	if( 0==Stat )
	asrs	r3, r3, #16	@ _2, _2,
	cmp	r3, r0	@ _2,
	bne	.L7		@,
.L6:
@ StatusGetter/Range/RangeGetterCore.c:27: }
	@ sp needed	@
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L8:
@ StatusGetter/Range/RangeGetterCore.c:7: 		base += (*it++)(unit,item);
	movs	r1, r6	@, item
	ldr	r0, [sp, #4]	@, %sfp
	bl	.L4		@
@ StatusGetter/Range/RangeGetterCore.c:7: 		base += (*it++)(unit,item);
	adds	r0, r4, r0	@ tmp136, _34, tmp151
	lsls	r0, r0, #16	@ base, tmp136,
@ StatusGetter/Range/RangeGetterCore.c:7: 		base += (*it++)(unit,item);
	adds	r7, r7, #4	@ it,
@ StatusGetter/Range/RangeGetterCore.c:7: 		base += (*it++)(unit,item);
	asrs	r0, r0, #16	@ base, base,
.L7:
@ StatusGetter/Range/RangeGetterCore.c:6: 	while(*it)
	ldr	r3, [r7]	@ _20, MEM[(s8 (*RangeGetter_Func) (struct Unit *, u16) *)it_18]
@ StatusGetter/Range/RangeGetterCore.c:7: 		base += (*it++)(unit,item);
	lsls	r4, r0, #16	@ _34, base,
	lsrs	r4, r4, #16	@ _34, _34,
@ StatusGetter/Range/RangeGetterCore.c:6: 	while(*it)
	cmp	r3, #0	@ _20,
	bne	.L8		@,
@ StatusGetter/Range/RangeGetterCore.c:23: 	Stat += StatusModfiy(RangeMaxMods,unit,item);
	adds	r4, r4, r5	@ tmp140, _34, _2
@ StatusGetter/Range/RangeGetterCore.c:26: 	return Stat;
	adds	r0, r4, #0	@ tmp138, tmp140
	lsls	r4, r4, #16	@ tmp143, tmp140,
	asrs	r4, r4, #16	@ tmp143, tmp143,
	cmp	r4, #15	@ tmp143,
	ble	.L9		@,
	movs	r0, #15	@ tmp138,
.L9:
	lsls	r0, r0, #16	@ <retval>, tmp138,
	lsrs	r0, r0, #16	@ <retval>, <retval>,
	b	.L6		@
.L13:
	.align	2
.L12:
	.word	GetItemMaxRange
	.word	RangeMaxMods
	.size	prMaxRangeGetter, .-prMaxRangeGetter
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L4:
	bx	r3
