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
@ ModularStatusGetter/Range/RangeGetterCore.c:18: 	s16 Stat = GetItemMinRange(item);
	ldr	r3, .L2	@ tmp118,
@ ModularStatusGetter/Range/RangeGetterCore.c:20: }
	@ sp needed	@
@ ModularStatusGetter/Range/RangeGetterCore.c:18: 	s16 Stat = GetItemMinRange(item);
	bl	.L4		@
@ ModularStatusGetter/Range/RangeGetterCore.c:19: 	return Stat;
	lsls	r0, r0, #16	@ tmp120, tmp123,
	lsrs	r0, r0, #16	@ tmp120, tmp120,
@ ModularStatusGetter/Range/RangeGetterCore.c:20: }
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
@ ModularStatusGetter/Range/RangeGetterCore.c:25: 	Unit* unit = GetUnit(unt->index);
	ldr	r3, .L12	@ tmp134,
@ ModularStatusGetter/Range/RangeGetterCore.c:22: u16 prMaxRangeGetter(u16 item, Unit* unt){
	movs	r6, r0	@ item, tmp153
@ ModularStatusGetter/Range/RangeGetterCore.c:25: 	Unit* unit = GetUnit(unt->index);
	ldrb	r0, [r1, #11]	@ tmp133,
	bl	.L4		@
@ ModularStatusGetter/Range/RangeGetterCore.c:27: 	s16 Stat = GetItemMaxRange(item);
	ldr	r3, .L12+4	@ tmp135,
@ ModularStatusGetter/Range/RangeGetterCore.c:25: 	Unit* unit = GetUnit(unt->index);
	str	r0, [sp, #4]	@ tmp155, %sfp
@ ModularStatusGetter/Range/RangeGetterCore.c:27: 	s16 Stat = GetItemMaxRange(item);
	movs	r0, r6	@, item
	bl	.L4		@
@ ModularStatusGetter/Range/RangeGetterCore.c:28: 	if( 0==Stat )
	lsls	r3, r0, #16	@ _4, _4,
@ ModularStatusGetter/Range/RangeGetterCore.c:27: 	s16 Stat = GetItemMaxRange(item);
	movs	r5, r0	@ _4, tmp156
@ ModularStatusGetter/Range/RangeGetterCore.c:29: 		return 0;
	movs	r0, #0	@ <retval>,
@ ModularStatusGetter/Range/RangeGetterCore.c:5: 	RangeGetter_Func* it = funcs;
	ldr	r7, .L12+8	@ it,
@ ModularStatusGetter/Range/RangeGetterCore.c:28: 	if( 0==Stat )
	asrs	r3, r3, #16	@ _4, _4,
	cmp	r3, r0	@ _4,
	bne	.L7		@,
.L6:
@ ModularStatusGetter/Range/RangeGetterCore.c:35: }
	@ sp needed	@
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L8:
@ ModularStatusGetter/Range/RangeGetterCore.c:7: 		base += (*it++)(unit,item);
	movs	r1, r6	@, item
	ldr	r0, [sp, #4]	@, %sfp
	bl	.L4		@
@ ModularStatusGetter/Range/RangeGetterCore.c:7: 		base += (*it++)(unit,item);
	adds	r0, r4, r0	@ tmp141, _38, tmp157
	lsls	r0, r0, #16	@ base, tmp141,
@ ModularStatusGetter/Range/RangeGetterCore.c:7: 		base += (*it++)(unit,item);
	adds	r7, r7, #4	@ it,
@ ModularStatusGetter/Range/RangeGetterCore.c:7: 		base += (*it++)(unit,item);
	asrs	r0, r0, #16	@ base, base,
.L7:
@ ModularStatusGetter/Range/RangeGetterCore.c:6: 	while(*it)
	ldr	r3, [r7]	@ _24, MEM[(s8 (*RangeGetter_Func) (struct Unit *, u16) *)it_22]
@ ModularStatusGetter/Range/RangeGetterCore.c:7: 		base += (*it++)(unit,item);
	lsls	r4, r0, #16	@ _38, base,
	lsrs	r4, r4, #16	@ _38, _38,
@ ModularStatusGetter/Range/RangeGetterCore.c:6: 	while(*it)
	cmp	r3, #0	@ _24,
	bne	.L8		@,
@ ModularStatusGetter/Range/RangeGetterCore.c:31: 	Stat += StatusModfiy(RangeMaxMods,unit,item);
	adds	r4, r4, r5	@ tmp145, _38, _4
@ ModularStatusGetter/Range/RangeGetterCore.c:34: 	return Stat;
	adds	r0, r4, #0	@ tmp143, tmp145
	lsls	r4, r4, #16	@ tmp148, tmp145,
	asrs	r4, r4, #16	@ tmp148, tmp148,
	cmp	r4, #15	@ tmp148,
	ble	.L9		@,
	movs	r0, #15	@ tmp143,
.L9:
	lsls	r0, r0, #16	@ <retval>, tmp143,
	lsrs	r0, r0, #16	@ <retval>, <retval>,
	b	.L6		@
.L13:
	.align	2
.L12:
	.word	GetUnit
	.word	GetItemMaxRange
	.word	RangeMaxMods
	.size	prMaxRangeGetter, .-prMaxRangeGetter
	.align	1
	.global	MSG_RngMax_ArchBonus
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MSG_RngMax_ArchBonus, %function
MSG_RngMax_ArchBonus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ ModularStatusGetter/Range/RangeGetterCore.c:41: 	if( ITYPE_BOW == GetItemType(item) )
	ldr	r3, .L17	@ tmp125,
@ ModularStatusGetter/Range/RangeGetterCore.c:40: s16 MSG_RngMax_ArchBonus(Unit* unit, u16 item){
	movs	r4, r0	@ unit, tmp136
	movs	r0, r1	@ item, tmp137
@ ModularStatusGetter/Range/RangeGetterCore.c:41: 	if( ITYPE_BOW == GetItemType(item) )
	bl	.L4		@
@ ModularStatusGetter/Range/RangeGetterCore.c:44: 	return 0;
	movs	r3, #0	@ <retval>,
@ ModularStatusGetter/Range/RangeGetterCore.c:41: 	if( ITYPE_BOW == GetItemType(item) )
	cmp	r0, #3	@ tmp138,
	bne	.L15		@,
@ ModularStatusGetter/Range/RangeGetterCore.c:42: 		if( CA_BALLISTAE & UNIT_CATTRIBUTES(unit) )
	ldr	r3, [r4]	@ unit_13(D)->pCharacterData, unit_13(D)->pCharacterData
	ldr	r2, [r4, #4]	@ unit_13(D)->pClassData, unit_13(D)->pClassData
	ldr	r3, [r3, #40]	@ _3->attributes, _3->attributes
	ldr	r2, [r2, #40]	@ _5->attributes, _5->attributes
	orrs	r3, r2	@ tmp128, _5->attributes
@ ModularStatusGetter/Range/RangeGetterCore.c:42: 		if( CA_BALLISTAE & UNIT_CATTRIBUTES(unit) )
	lsls	r3, r3, #24	@ tmp133, tmp128,
@ ModularStatusGetter/Range/RangeGetterCore.c:43: 			return 1;
	lsrs	r3, r3, #31	@ <retval>, tmp133,
.L15:
@ ModularStatusGetter/Range/RangeGetterCore.c:45: }
	movs	r0, r3	@, <retval>
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L18:
	.align	2
.L17:
	.word	GetItemType
	.size	MSG_RngMax_ArchBonus, .-MSG_RngMax_ArchBonus
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L4:
	bx	r3
