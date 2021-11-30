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
	.file	"Range2Core.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	FillMapForItems
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	FillMapForItems, %function
FillMapForItems:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
@ RangeGetter2/src/Range2Core.c:59: void FillMapForItems(Unit* unit, u16 itemList[]){
	movs	r5, r0	@ unit, tmp154
	movs	r6, r1	@ itemList, tmp155
@ RangeGetter2/src/Range2Core.c:60: 	u32 mask = 0;
	movs	r7, #0	@ mask,
.L2:
@ RangeGetter2/src/Range2Core.c:63: 	for( cur=itemList; 0!=*cur; cur++ )
	ldrh	r0, [r6]	@ _4, MEM[(u16 *)cur_6]
@ RangeGetter2/src/Range2Core.c:63: 	for( cur=itemList; 0!=*cur; cur++ )
	cmp	r0, #0	@ _4,
	bne	.L7		@,
@ RangeGetter2/src/Range2Core.c:44: 	if( 0 == mask )
	cmp	r7, #0	@ mask,
	beq	.L1		@,
@ RangeGetter2/src/Range2Core.c:39: 	const u8 x = unit->xPos;
	ldrb	r3, [r5, #16]	@ x,
	str	r3, [sp]	@ x, %sfp
@ RangeGetter2/src/Range2Core.c:40: 	const u8 y = unit->yPos;
	ldrb	r3, [r5, #17]	@ y,
@ RangeGetter2/src/Range2Core.c:42: 	s8 value = -1;
	movs	r5, #1	@ value,
@ RangeGetter2/src/Range2Core.c:47: 	for(int i=0; i<32; i++)
	movs	r4, r0	@ i, _4
@ RangeGetter2/src/Range2Core.c:40: 	const u8 y = unit->yPos;
	str	r3, [sp, #4]	@ y, %sfp
@ RangeGetter2/src/Range2Core.c:42: 	s8 value = -1;
	rsbs	r5, r5, #0	@ value, value
.L10:
	movs	r3, r7	@ mask, mask
@ RangeGetter2/src/Range2Core.c:51: 		if( pre != (mask<<1) )	// 找到最大范围了
	movs	r2, #1	@ tmp163,
@ RangeGetter2/src/Range2Core.c:50: 		mask = mask >> 1;
	lsrs	r7, r7, #1	@ mask, mask,
@ RangeGetter2/src/Range2Core.c:51: 		if( pre != (mask<<1) )	// 找到最大范围了
	tst	r2, r3	@ tmp163, mask
	beq	.L9		@,
@ RangeGetter2/src/Range2Core.c:53: 			MapAddInRange(x,y,i,value);
	movs	r3, r5	@, value
	movs	r2, r4	@, i
	ldr	r1, [sp, #4]	@, %sfp
	ldr	r0, [sp]	@, %sfp
	ldr	r6, .L17	@ tmp149,
	bl	.L19		@
@ RangeGetter2/src/Range2Core.c:54: 			value = ~value;
	mvns	r5, r5	@ value, value
.L9:
@ RangeGetter2/src/Range2Core.c:47: 	for(int i=0; i<32; i++)
	adds	r4, r4, #1	@ i,
@ RangeGetter2/src/Range2Core.c:47: 	for(int i=0; i<32; i++)
	cmp	r4, #32	@ i,
	bne	.L10		@,
.L1:
@ RangeGetter2/src/Range2Core.c:72: }
	@ sp needed	@
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L7:
@ RangeGetter2/src/Range2Core.c:65: 		u16 rngMin = prMinRangeGetter(*cur,unit);
	movs	r1, r5	@, unit
	ldr	r3, .L17+4	@ tmp137,
	bl	.L20		@
@ RangeGetter2/src/Range2Core.c:16: 	u16 rngMax = prMaxRangeGetter(item,unit);
	movs	r1, r5	@, unit
@ RangeGetter2/src/Range2Core.c:65: 		u16 rngMin = prMinRangeGetter(*cur,unit);
	movs	r4, r0	@ tmp138, tmp156
@ RangeGetter2/src/Range2Core.c:16: 	u16 rngMax = prMaxRangeGetter(item,unit);
	ldr	r3, .L17+8	@ tmp141,
	ldrh	r0, [r6]	@ MEM[(u16 *)cur_6], MEM[(u16 *)cur_6]
	bl	.L20		@
@ RangeGetter2/src/Range2Core.c:17: 	if( 0 == rngMax )
	cmp	r0, #0	@ rngMax,
	bne	.L3		@,
@ RangeGetter2/src/Range2Core.c:19: 		rngMax = GetUnitMagBy2Range(unit);
	ldr	r3, .L17+12	@ tmp144,
	movs	r0, r5	@, unit
	bl	.L20		@
@ RangeGetter2/src/Range2Core.c:28: 		return 0;
	movs	r3, #0	@ mask,
@ RangeGetter2/src/Range2Core.c:19: 		rngMax = GetUnitMagBy2Range(unit);
	lsls	r0, r0, #16	@ rngMax, tmp158,
	lsrs	r0, r0, #16	@ rngMax, rngMax,
@ RangeGetter2/src/Range2Core.c:27: 	if( 0 == max )
	cmp	r0, r3	@ rngMax,
	beq	.L4		@,
.L3:
@ RangeGetter2/src/Range2Core.c:25: 	u32 mask = 1 << min;
	movs	r3, #1	@ mask,
	lsls	r3, r3, r4	@ mask, mask, i
@ RangeGetter2/src/Range2Core.c:29: 	if( min == max )
	cmp	r4, r0	@ i, rngMax
	bne	.L5		@,
.L4:
@ RangeGetter2/src/Range2Core.c:68: 		mask |= Num2Mask(rngMin, rngMax);
	orrs	r7, r3	@ mask, mask
@ RangeGetter2/src/Range2Core.c:63: 	for( cur=itemList; 0!=*cur; cur++ )
	adds	r6, r6, #2	@ itemList,
	b	.L2		@
.L6:
@ RangeGetter2/src/Range2Core.c:33: 		mask = (mask<<1) + 2;
	lsls	r3, r3, #1	@ _23, mask,
@ RangeGetter2/src/Range2Core.c:33: 		mask = (mask<<1) + 2;
	adds	r3, r3, #2	@ mask,
@ RangeGetter2/src/Range2Core.c:32: 	for(int i=min; i<max; i++)
	adds	r4, r4, #1	@ i,
.L5:
@ RangeGetter2/src/Range2Core.c:32: 	for(int i=min; i<max; i++)
	cmp	r4, r0	@ i, rngMax
	blt	.L6		@,
	b	.L4		@
.L18:
	.align	2
.L17:
	.word	MapAddInRange
	.word	prMinRangeGetter
	.word	prMaxRangeGetter
	.word	GetUnitMagBy2Range
	.size	FillMapForItems, .-FillMapForItems
	.align	1
	.global	FillMapForSingleItem
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	FillMapForSingleItem, %function
FillMapForSingleItem:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
@ RangeGetter2/src/Range2Core.c:81: void FillMapForSingleItem(Unit* unit, u16 item){
	movs	r5, r1	@ item, tmp140
	movs	r4, r0	@ unit, tmp139
@ RangeGetter2/src/Range2Core.c:85: 	u16 rngMin = prMinRangeGetter(item,unit);
	movs	r1, r0	@, unit
@ RangeGetter2/src/Range2Core.c:82: 	const u8 x = unit->xPos;
	ldrb	r6, [r0, #16]	@ x,
@ RangeGetter2/src/Range2Core.c:83: 	const u8 y = unit->yPos;
	ldrb	r7, [r0, #17]	@ y,
@ RangeGetter2/src/Range2Core.c:85: 	u16 rngMin = prMinRangeGetter(item,unit);
	ldr	r3, .L27	@ tmp127,
	movs	r0, r5	@, item
	bl	.L20		@
@ RangeGetter2/src/Range2Core.c:16: 	u16 rngMax = prMaxRangeGetter(item,unit);
	movs	r1, r4	@, unit
@ RangeGetter2/src/Range2Core.c:85: 	u16 rngMin = prMinRangeGetter(item,unit);
	str	r0, [sp, #4]	@ tmp141, %sfp
@ RangeGetter2/src/Range2Core.c:16: 	u16 rngMax = prMaxRangeGetter(item,unit);
	ldr	r3, .L27+4	@ tmp130,
	movs	r0, r5	@, item
	bl	.L20		@
	subs	r2, r0, #0	@ rngMax, tmp142,
@ RangeGetter2/src/Range2Core.c:17: 	if( 0 == rngMax )
	bne	.L22		@,
@ RangeGetter2/src/Range2Core.c:19: 		rngMax = GetUnitMagBy2Range(unit);
	movs	r0, r4	@, unit
	ldr	r3, .L27+8	@ tmp133,
	bl	.L20		@
@ RangeGetter2/src/Range2Core.c:19: 		rngMax = GetUnitMagBy2Range(unit);
	lsls	r2, r0, #16	@ rngMax, tmp143,
	lsrs	r2, r2, #16	@ rngMax, rngMax,
.L22:
@ RangeGetter2/src/Range2Core.c:88: 	MapAddInRange(x,y,rngMax,1);
	movs	r3, #1	@,
	movs	r1, r7	@, y
	movs	r0, r6	@, x
	ldr	r4, .L27+12	@ tmp135,
	bl	.L29		@
@ RangeGetter2/src/Range2Core.c:90: 	if( 0!=rngMin )
	ldr	r3, [sp, #4]	@ tmp128, %sfp
	cmp	r3, #0	@ tmp128,
	beq	.L21		@,
@ RangeGetter2/src/Range2Core.c:91: 		MapAddInRange(x,y,rngMin-1,-1);
	movs	r2, r3	@ tmp128, tmp128
	movs	r3, #1	@,
	movs	r1, r7	@, y
	movs	r0, r6	@, x
	subs	r2, r2, #1	@ tmp128,
	rsbs	r3, r3, #0	@,
	bl	.L29		@
.L21:
@ RangeGetter2/src/Range2Core.c:94: }
	@ sp needed	@
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L28:
	.align	2
.L27:
	.word	prMinRangeGetter
	.word	prMaxRangeGetter
	.word	GetUnitMagBy2Range
	.word	MapAddInRange
	.size	FillMapForSingleItem, .-FillMapForSingleItem
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L20:
	bx	r3
.L29:
	bx	r4
.L19:
	bx	r6
