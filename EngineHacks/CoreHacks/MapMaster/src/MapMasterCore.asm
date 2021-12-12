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
	.file	"MapMasterCore.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	FillMapForSingleItem
	.arch armv4t
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
@ MapMaster/src/MapMasterCore.c:25: void FillMapForSingleItem(Unit* unit, u16 item){
	movs	r5, r1	@ item, tmp140
	movs	r4, r0	@ unit, tmp139
@ MapMaster/src/MapMasterCore.c:29: 	u16 rngMin = prMinRangeGetter(item,unit);
	movs	r1, r0	@, unit
@ MapMaster/src/MapMasterCore.c:26: 	const u8 x = unit->xPos;
	ldrb	r6, [r0, #16]	@ x,
@ MapMaster/src/MapMasterCore.c:27: 	const u8 y = unit->yPos;
	ldrb	r7, [r0, #17]	@ y,
@ MapMaster/src/MapMasterCore.c:29: 	u16 rngMin = prMinRangeGetter(item,unit);
	ldr	r3, .L7	@ tmp127,
	movs	r0, r5	@, item
	bl	.L9		@
@ MapMaster/src/MapMasterCore.c:11: 	u16 rngMax = prMaxRangeGetter(item,unit);
	movs	r1, r4	@, unit
@ MapMaster/src/MapMasterCore.c:29: 	u16 rngMin = prMinRangeGetter(item,unit);
	str	r0, [sp, #4]	@ tmp141, %sfp
@ MapMaster/src/MapMasterCore.c:11: 	u16 rngMax = prMaxRangeGetter(item,unit);
	ldr	r3, .L7+4	@ tmp130,
	movs	r0, r5	@, item
	bl	.L9		@
	subs	r2, r0, #0	@ rngMax, tmp142,
@ MapMaster/src/MapMasterCore.c:12: 	if( 0 == rngMax )
	bne	.L2		@,
@ MapMaster/src/MapMasterCore.c:13: 		rngMax = GetUnitMagBy2Range(unit);
	movs	r0, r4	@, unit
	ldr	r3, .L7+8	@ tmp133,
	bl	.L9		@
@ MapMaster/src/MapMasterCore.c:13: 		rngMax = GetUnitMagBy2Range(unit);
	lsls	r2, r0, #16	@ rngMax, tmp143,
	lsrs	r2, r2, #16	@ rngMax, rngMax,
.L2:
@ MapMaster/src/MapMasterCore.c:32: 	MapAddInRange(x,y,rngMax,1);
	movs	r3, #1	@,
	movs	r1, r7	@, y
	movs	r0, r6	@, x
	ldr	r4, .L7+12	@ tmp135,
	bl	.L10		@
@ MapMaster/src/MapMasterCore.c:34: 	if( 0!=rngMin )
	ldr	r3, [sp, #4]	@ tmp128, %sfp
	cmp	r3, #0	@ tmp128,
	beq	.L1		@,
@ MapMaster/src/MapMasterCore.c:35: 		MapAddInRange(x,y,rngMin-1,-1);
	movs	r2, r3	@ tmp128, tmp128
	movs	r3, #1	@,
	movs	r1, r7	@, y
	movs	r0, r6	@, x
	subs	r2, r2, #1	@ tmp128,
	rsbs	r3, r3, #0	@,
	bl	.L10		@
.L1:
@ MapMaster/src/MapMasterCore.c:38: }
	@ sp needed	@
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L8:
	.align	2
.L7:
	.word	prMinRangeGetter
	.word	prMaxRangeGetter
	.word	GetUnitMagBy2Range
	.word	MapAddInRange
	.size	FillMapForSingleItem, .-FillMapForSingleItem
	.align	1
	.global	ItemRange2Mask
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	ItemRange2Mask, %function
ItemRange2Mask:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ MapMaster/src/MapMasterCore.c:45: 	int rngMin = (int)prMinRangeGetter(item,unit);
	ldr	r3, .L16	@ tmp124,
@ MapMaster/src/MapMasterCore.c:42: u32 ItemRange2Mask(u16 item, Unit* unit){
	movs	r6, r0	@ item, tmp137
	movs	r5, r1	@ unit, tmp138
@ MapMaster/src/MapMasterCore.c:45: 	int rngMin = (int)prMinRangeGetter(item,unit);
	bl	.L9		@
@ MapMaster/src/MapMasterCore.c:11: 	u16 rngMax = prMaxRangeGetter(item,unit);
	movs	r1, r5	@, unit
@ MapMaster/src/MapMasterCore.c:45: 	int rngMin = (int)prMinRangeGetter(item,unit);
	movs	r4, r0	@ tmp125, tmp139
@ MapMaster/src/MapMasterCore.c:11: 	u16 rngMax = prMaxRangeGetter(item,unit);
	ldr	r3, .L16+4	@ tmp127,
	movs	r0, r6	@, item
	bl	.L9		@
@ MapMaster/src/MapMasterCore.c:12: 	if( 0 == rngMax )
	cmp	r0, #0	@ rngMax,
	bne	.L12		@,
@ MapMaster/src/MapMasterCore.c:13: 		rngMax = GetUnitMagBy2Range(unit);
	movs	r0, r5	@, unit
	ldr	r3, .L16+8	@ tmp130,
	bl	.L9		@
@ MapMaster/src/MapMasterCore.c:13: 		rngMax = GetUnitMagBy2Range(unit);
	lsls	r0, r0, #16	@ rngMax, tmp141,
	lsrs	r0, r0, #16	@ rngMax, rngMax,
.L12:
@ MapMaster/src/MapMasterCore.c:49: 	for(int i=0; i <= rngMax; i++)
	movs	r2, #0	@ i,
@ MapMaster/src/MapMasterCore.c:46: 	int rngMax = (int)MaxRangeFilter(unit,item);
	lsls	r3, r0, #16	@ rngMax, rngMax,
@ MapMaster/src/MapMasterCore.c:52: 			mask = (mask << 1) |1;
	movs	r1, #1	@ tmp136,
@ MapMaster/src/MapMasterCore.c:43: 	u32 mask = 0;
	movs	r0, r2	@ <retval>, i
@ MapMaster/src/MapMasterCore.c:46: 	int rngMax = (int)MaxRangeFilter(unit,item);
	asrs	r3, r3, #16	@ rngMax, rngMax,
@ MapMaster/src/MapMasterCore.c:47: 	int diff = rngMax - rngMin;
	subs	r4, r3, r4	@ diff, rngMax, tmp125
.L13:
@ MapMaster/src/MapMasterCore.c:49: 	for(int i=0; i <= rngMax; i++)
	cmp	r2, r3	@ i, rngMax
	ble	.L15		@,
@ MapMaster/src/MapMasterCore.c:58: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L15:
@ MapMaster/src/MapMasterCore.c:52: 			mask = (mask << 1) |1;
	lsls	r0, r0, #1	@ <retval>, <retval>,
@ MapMaster/src/MapMasterCore.c:51: 		if( i <= diff )
	cmp	r2, r4	@ i, diff
	bgt	.L14		@,
@ MapMaster/src/MapMasterCore.c:52: 			mask = (mask << 1) |1;
	orrs	r0, r1	@ <retval>, tmp136
.L14:
@ MapMaster/src/MapMasterCore.c:49: 	for(int i=0; i <= rngMax; i++)
	adds	r2, r2, #1	@ i,
	b	.L13		@
.L17:
	.align	2
.L16:
	.word	prMinRangeGetter
	.word	prMaxRangeGetter
	.word	GetUnitMagBy2Range
	.size	ItemRange2Mask, .-ItemRange2Mask
	.align	1
	.global	FillMapMaster
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	FillMapMaster, %function
FillMapMaster:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
	movs	r5, r3	@ nullVal, tmp159
@ MapMaster/src/MapMasterCore.c:68: 	const s8 x = unit->xPos;
	movs	r3, #16	@ x,
	ldrsb	r3, [r0, r3]	@ x,* x
@ MapMaster/src/MapMasterCore.c:62: void FillMapMaster(Unit* unit, u32 mask, MapData* map, s8 nullVal){
	sub	sp, sp, #20	@,,
@ MapMaster/src/MapMasterCore.c:68: 	const s8 x = unit->xPos;
	str	r3, [sp]	@ x, %sfp
@ MapMaster/src/MapMasterCore.c:69: 	const s8 y = unit->yPos;	
	movs	r3, #17	@ y,
	ldrsb	r3, [r0, r3]	@ y,* y
@ MapMaster/src/MapMasterCore.c:62: void FillMapMaster(Unit* unit, u32 mask, MapData* map, s8 nullVal){
	movs	r4, r1	@ mask, tmp157
@ MapMaster/src/MapMasterCore.c:69: 	const s8 y = unit->yPos;	
	str	r3, [sp, #4]	@ y, %sfp
@ MapMaster/src/MapMasterCore.c:75: 	BmMapFill(*map, nullVal);
	movs	r1, r5	@, nullVal
	ldr	r0, [r2]	@, *map_34(D)
	ldr	r3, .L36	@ tmp138,
	bl	.L9		@
@ MapMaster/src/MapMasterCore.c:78: 	if( 0 == mask )
	cmp	r4, #0	@ mask,
	beq	.L18		@,
@ MapMaster/src/MapMasterCore.c:72: 	valOff = nullVal -1;
	subs	r5, r5, #1	@ tmp140,
@ MapMaster/src/MapMasterCore.c:72: 	valOff = nullVal -1;
	lsls	r5, r5, #24	@ tmp141, tmp140,
	asrs	r3, r5, #24	@ valOff, tmp141,
	str	r3, [sp, #8]	@ valOff, %sfp
@ MapMaster/src/MapMasterCore.c:80: 	else if( 0b10 == (0b10 & mask) )
	lsls	r3, r4, #30	@ tmp160, mask,
	bpl	.L20		@,
@ MapMaster/src/MapMasterCore.c:81: 		MapAddInRange(x,y,0,valOff);
	movs	r2, #0	@,
	ldr	r3, [sp, #8]	@, %sfp
	ldr	r1, [sp, #4]	@, %sfp
	ldr	r0, [sp]	@, %sfp
	ldr	r5, .L36+4	@ tmp144,
	bl	.L38		@
.L20:
@ MapMaster/src/MapMasterCore.c:62: void FillMapMaster(Unit* unit, u32 mask, MapData* map, s8 nullVal){
	movs	r5, #0	@ i,
	movs	r6, r5	@ start, i
.L24:
@ MapMaster/src/MapMasterCore.c:88: 		pre = mask & 1;
	movs	r2, #1	@ pre,
@ MapMaster/src/MapMasterCore.c:90: 		cur = mask & 1;
	movs	r3, #1	@ cur,
	str	r4, [sp, #12]	@ mask, %sfp
@ MapMaster/src/MapMasterCore.c:88: 		pre = mask & 1;
	ands	r2, r4	@ pre, mask
@ MapMaster/src/MapMasterCore.c:89: 		mask /= 2;
	lsrs	r4, r4, #1	@ mask, mask,
@ MapMaster/src/MapMasterCore.c:90: 		cur = mask & 1;
	ands	r3, r4	@ cur, mask
@ MapMaster/src/MapMasterCore.c:92: 		if( cur == pre )
	cmp	r2, r3	@ pre, cur
	beq	.L21		@,
@ MapMaster/src/MapMasterCore.c:95: 		else if( 1 == cur )
	cmp	r3, #0	@ cur,
	beq	.L22		@,
	lsls	r6, r5, #24	@ start, i,
	lsrs	r6, r6, #24	@ start, start,
.L23:
@ MapMaster/src/MapMasterCore.c:107: 		if( 0 == mask )
	ldr	r3, [sp, #12]	@ mask, %sfp
	cmp	r3, #1	@ mask,
	bls	.L18		@,
.L21:
@ MapMaster/src/MapMasterCore.c:86: 	for(int i=0; i <= 32; i++)
	adds	r5, r5, #1	@ i,
@ MapMaster/src/MapMasterCore.c:86: 	for(int i=0; i <= 32; i++)
	cmp	r5, #33	@ i,
	bne	.L24		@,
.L18:
@ MapMaster/src/MapMasterCore.c:112: }
	add	sp, sp, #20	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L22:
@ MapMaster/src/MapMasterCore.c:101: 			MapAddInRange(x,y, end,valOn);
	movs	r3, #1	@,
	movs	r2, r5	@, i
	ldr	r1, [sp, #4]	@, %sfp
	ldr	r0, [sp]	@, %sfp
	ldr	r7, .L36+4	@ tmp154,
	bl	.L39		@
@ MapMaster/src/MapMasterCore.c:103: 			if( 0 != start )
	cmp	r6, #0	@ start,
	beq	.L23		@,
@ MapMaster/src/MapMasterCore.c:104: 				MapAddInRange(x,y, start,valOff);
	movs	r2, r6	@, start
	ldr	r3, [sp, #8]	@, %sfp
	ldr	r1, [sp, #4]	@, %sfp
	ldr	r0, [sp]	@, %sfp
	bl	.L39		@
	b	.L23		@
.L37:
	.align	2
.L36:
	.word	BmMapFill
	.word	MapAddInRange
	.size	FillMapMaster, .-FillMapMaster
	.align	1
	.global	FillMapMovement
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	FillMapMovement, %function
FillMapMovement:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ MapMaster/src/MapMasterCore.c:115: 	FillMapMaster(unit,mask,&gMapMovement,NU_MOVE_MAP);
	movs	r3, #1	@ tmp119,
@ MapMaster/src/MapMasterCore.c:114: void FillMapMovement(Unit* unit, u32 mask){
	push	{r4, lr}	@
@ MapMaster/src/MapMasterCore.c:115: 	FillMapMaster(unit,mask,&gMapMovement,NU_MOVE_MAP);
	ldr	r2, .L41	@ tmp116,
@ MapMaster/src/MapMasterCore.c:116: }
	@ sp needed	@
@ MapMaster/src/MapMasterCore.c:115: 	FillMapMaster(unit,mask,&gMapMovement,NU_MOVE_MAP);
	rsbs	r3, r3, #0	@, tmp119
	bl	FillMapMaster		@
@ MapMaster/src/MapMasterCore.c:116: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L42:
	.align	2
.L41:
	.word	gMapMovement
	.size	FillMapMovement, .-FillMapMovement
	.align	1
	.global	FillMapRange
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	FillMapRange, %function
FillMapRange:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ MapMaster/src/MapMasterCore.c:119: 	FillMapMaster(unit,mask,&gMapRange,NU_RANGE_MAP);
	movs	r3, #0	@,
@ MapMaster/src/MapMasterCore.c:120: }
	@ sp needed	@
@ MapMaster/src/MapMasterCore.c:119: 	FillMapMaster(unit,mask,&gMapRange,NU_RANGE_MAP);
	ldr	r2, .L44	@ tmp115,
	bl	FillMapMaster		@
@ MapMaster/src/MapMasterCore.c:120: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L45:
	.align	2
.L44:
	.word	gMapRange
	.size	FillMapRange, .-FillMapRange
	.align	1
	.global	ForEachUnitMaster
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	ForEachUnitMaster, %function
ForEachUnitMaster:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
@ MapMaster/src/MapMasterCore.c:129: 	for( u8 y=0; y<gMapSize.y; y++ )
	movs	r5, #0	@ y,
@ MapMaster/src/MapMasterCore.c:124: void ForEachUnitMaster(void(func)(Unit*), MapData* map,s8 nullVal){
	sub	sp, sp, #20	@,,
@ MapMaster/src/MapMasterCore.c:124: void ForEachUnitMaster(void(func)(Unit*), MapData* map,s8 nullVal){
	str	r0, [sp, #4]	@ tmp160, %sfp
	str	r1, [sp, #8]	@ tmp161, %sfp
	str	r2, [sp, #12]	@ tmp162, %sfp
.L47:
@ MapMaster/src/MapMasterCore.c:129: 	for( u8 y=0; y<gMapSize.y; y++ )
	ldr	r3, .L55	@ tmp156,
@ MapMaster/src/MapMasterCore.c:129: 	for( u8 y=0; y<gMapSize.y; y++ )
	ldrh	r3, [r3, #2]	@ tmp157,
	cmp	r3, r5	@ tmp157, y
	bls	.L46		@,
@ MapMaster/src/MapMasterCore.c:132: 			if( nullVal == *map[y][x] )
	ldr	r3, [sp, #8]	@ map, %sfp
	lsls	r6, r5, #2	@ _2, y,
@ MapMaster/src/MapMasterCore.c:130: 		for( u8 x=0; x<gMapSize.x; x++ )
	movs	r4, #0	@ x,
@ MapMaster/src/MapMasterCore.c:132: 			if( nullVal == *map[y][x] )
	adds	r7, r3, r6	@ _3, map, _2
	b	.L51		@
.L49:
@ MapMaster/src/MapMasterCore.c:132: 			if( nullVal == *map[y][x] )
	ldr	r3, [r7]	@ *_3, *_3
	lsls	r2, r4, #2	@ tmp139, x,
@ MapMaster/src/MapMasterCore.c:132: 			if( nullVal == *map[y][x] )
	ldr	r3, [r2, r3]	@ *_7, *_7
@ MapMaster/src/MapMasterCore.c:132: 			if( nullVal == *map[y][x] )
	ldrb	r3, [r3]	@ *_8, *_8
	ldr	r2, [sp, #12]	@ nullVal, %sfp
	lsls	r3, r3, #24	@ *_8, *_8,
	asrs	r3, r3, #24	@ *_8, *_8,
	cmp	r3, r2	@ *_8, nullVal
	beq	.L48		@,
@ MapMaster/src/MapMasterCore.c:134: 			if( gMapUnit[y][x] )
	ldr	r3, .L55+4	@ tmp143,
	ldr	r3, [r3]	@ gMapUnit, gMapUnit
@ MapMaster/src/MapMasterCore.c:134: 			if( gMapUnit[y][x] )
	ldr	r3, [r3, r6]	@ *_11, *_11
	ldrsb	r0, [r3, r4]	@ _14, *_13
@ MapMaster/src/MapMasterCore.c:134: 			if( gMapUnit[y][x] )
	cmp	r0, #0	@ _14,
	beq	.L48		@,
@ MapMaster/src/MapMasterCore.c:135: 				func( GetUnit(gMapUnit[y][x]) );
	lsls	r0, r0, #24	@ tmp145, _14,
	ldr	r3, .L55+8	@ tmp147,
	lsrs	r0, r0, #24	@ tmp145, tmp145,
	bl	.L9		@
@ MapMaster/src/MapMasterCore.c:135: 				func( GetUnit(gMapUnit[y][x]) );
	ldr	r3, [sp, #4]	@ func, %sfp
	bl	.L9		@
.L48:
@ MapMaster/src/MapMasterCore.c:130: 		for( u8 x=0; x<gMapSize.x; x++ )
	adds	r4, r4, #1	@ tmp148,
	lsls	r4, r4, #24	@ x, tmp148,
	lsrs	r4, r4, #24	@ x, x,
.L51:
@ MapMaster/src/MapMasterCore.c:130: 		for( u8 x=0; x<gMapSize.x; x++ )
	ldr	r3, .L55	@ tmp150,
@ MapMaster/src/MapMasterCore.c:130: 		for( u8 x=0; x<gMapSize.x; x++ )
	ldrh	r3, [r3]	@ gMapSize, gMapSize
	cmp	r3, r4	@ gMapSize, x
	bhi	.L49		@,
@ MapMaster/src/MapMasterCore.c:129: 	for( u8 y=0; y<gMapSize.y; y++ )
	adds	r5, r5, #1	@ tmp154,
	lsls	r5, r5, #24	@ y, tmp154,
	lsrs	r5, r5, #24	@ y, y,
	b	.L47		@
.L46:
@ MapMaster/src/MapMasterCore.c:138: }
	add	sp, sp, #20	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L56:
	.align	2
.L55:
	.word	gMapSize
	.word	gMapUnit
	.word	GetUnit
	.size	ForEachUnitMaster, .-ForEachUnitMaster
	.align	1
	.global	ForEachUnitMapRange
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	ForEachUnitMapRange, %function
ForEachUnitMapRange:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ MapMaster/src/MapMasterCore.c:141: 	ForEachUnitMaster(func,&gMapRange,NU_RANGE_MAP);
	movs	r2, #0	@,
@ MapMaster/src/MapMasterCore.c:142: }
	@ sp needed	@
@ MapMaster/src/MapMasterCore.c:141: 	ForEachUnitMaster(func,&gMapRange,NU_RANGE_MAP);
	ldr	r1, .L58	@ tmp114,
	bl	ForEachUnitMaster		@
@ MapMaster/src/MapMasterCore.c:142: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L59:
	.align	2
.L58:
	.word	gMapRange
	.size	ForEachUnitMapRange, .-ForEachUnitMapRange
	.align	1
	.global	ForEachUnitMapMovement
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	ForEachUnitMapMovement, %function
ForEachUnitMapMovement:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ MapMaster/src/MapMasterCore.c:145: 	ForEachUnitMaster(func,&gMapMovement,NU_MOVE_MAP);
	movs	r2, #1	@ tmp117,
@ MapMaster/src/MapMasterCore.c:144: void ForEachUnitMapMovement(void(func)(Unit*)){
	push	{r4, lr}	@
@ MapMaster/src/MapMasterCore.c:145: 	ForEachUnitMaster(func,&gMapMovement,NU_MOVE_MAP);
	ldr	r1, .L61	@ tmp115,
@ MapMaster/src/MapMasterCore.c:146: }
	@ sp needed	@
@ MapMaster/src/MapMasterCore.c:145: 	ForEachUnitMaster(func,&gMapMovement,NU_MOVE_MAP);
	rsbs	r2, r2, #0	@, tmp117
	bl	ForEachUnitMaster		@
@ MapMaster/src/MapMasterCore.c:146: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L62:
	.align	2
.L61:
	.word	gMapMovement
	.size	ForEachUnitMapMovement, .-ForEachUnitMapMovement
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L9:
	bx	r3
.L10:
	bx	r4
.L38:
	bx	r5
.L39:
	bx	r7
