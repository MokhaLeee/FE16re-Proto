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
	.file	"WpnEqpCore.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SetWpnEqp.isra.0, %function
SetWpnEqp.isra.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:45: 	UnitExt* unitExt = GetUnitExtByUnit(unit);
	ldr	r3, .L9	@ tmp118,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:44: static int SetWpnEqp(Unit* unit, u16 item){
	movs	r5, r1	@ item, tmp129
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:45: 	UnitExt* unitExt = GetUnitExtByUnit(unit);
	bl	.L11		@
	subs	r4, r0, #0	@ unitExt, tmp130,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:47: 	if( NULL == unitExt )
	beq	.L1		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:50: 	if( 0 == TestWpn(item) )
	movs	r0, r5	@, item
	ldr	r3, .L9+4	@ tmp119,
	bl	.L11		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:50: 	if( 0 == TestWpn(item) )
	cmp	r0, #0	@ tmp131,
	beq	.L1		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:55: 	if( 0 == ITEM_USE(item) )
	lsrs	r3, r5, #8	@ tmp122, item,
	beq	.L5		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:53: 	unitExt->WpnEqp = item;
	strh	r5, [r4, #14]	@ item, unitExt_2->WpnEqp
.L1:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:59: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L5:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:56: 		unitExt->WpnEqp = 0;
	strh	r3, [r4, #14]	@ tmp122, unitExt_2->WpnEqp
	b	.L1		@
.L10:
	.align	2
.L9:
	.word	GetUnitExtByUnit
	.word	TestWpn
	.size	SetWpnEqp.isra.0, .-SetWpnEqp.isra.0
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	trySetEqpMag, %function
trySetEqpMag:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:20: 	UnitExt* ext = GetUnitExtByUnit(unit);
	ldr	r3, .L21	@ tmp131,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:18: static int trySetEqpMag(Unit* unit){
	movs	r6, r0	@ unit, tmp150
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:20: 	UnitExt* ext = GetUnitExtByUnit(unit);
	bl	.L11		@
	subs	r5, r0, #0	@ ext, tmp151,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:21: 	if( NULL == ext )
	beq	.L13		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:24: 	for(int i=0; i<0xF; i++)
	movs	r4, #0	@ i,
.L16:
	lsls	r7, r4, #24	@ _15, i,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:25: 		if( 0!=GetBMagUse(ext,i) )
	ldr	r3, .L21+4	@ tmp133,
	lsrs	r7, r7, #24	@ _15, _15,
	movs	r1, r7	@, _15
	movs	r0, r5	@, ext
	str	r3, [sp, #4]	@ tmp133, %sfp
	bl	.L11		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:25: 		if( 0!=GetBMagUse(ext,i) )
	cmp	r0, #0	@ tmp152,
	beq	.L14		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:27: 			mag = MAKE_ITEM( gpBMagList[i].index, GetBMagUse(ext,i) );
	ldr	r3, .L21+8	@ tmp137,
	ldr	r3, [r3]	@ gpBMagList, gpBMagList
	lsls	r4, r4, #3	@ tmp138, i,
	ldrb	r4, [r3, r4]	@ _8, *_6
	movs	r1, r7	@, _15
	ldr	r3, [sp, #4]	@ tmp133, %sfp
	movs	r0, r5	@, ext
	bl	.L11		@
	lsls	r0, r0, #8	@ tmp144, tmp153,
	orrs	r4, r0	@ tmp146, tmp144
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:28: 			SetWpnEqp(unit, mag);
	lsls	r1, r4, #16	@ tmp147, tmp146,
	movs	r0, r6	@, unit
	lsrs	r1, r1, #16	@ tmp147, tmp147,
	bl	SetWpnEqp.isra.0		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:29: 			return TRUE;
	movs	r0, #1	@ <retval>,
.L12:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:33: }
	@ sp needed	@
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L14:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:24: 	for(int i=0; i<0xF; i++)
	adds	r4, r4, #1	@ i,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:24: 	for(int i=0; i<0xF; i++)
	cmp	r4, #15	@ i,
	bne	.L16		@,
.L13:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:22: 		return FALSE;
	movs	r0, #0	@ <retval>,
	b	.L12		@
.L22:
	.align	2
.L21:
	.word	GetUnitExtByUnit
	.word	GetBMagUse
	.word	gpBMagList
	.size	trySetEqpMag, .-trySetEqpMag
	.align	1
	.global	GetWpnEqp
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetWpnEqp, %function
GetWpnEqp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:63: 	return ext->WpnEqp;
	ldrh	r0, [r0, #14]	@ tmp118,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:64: }
	@ sp needed	@
	bx	lr
	.size	GetWpnEqp, .-GetWpnEqp
	.align	1
	.global	SetWpnEqpForce
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SetWpnEqpForce, %function
SetWpnEqpForce:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:67: 	UnitExt* unitExt = GetUnitExtByUnit(unit);
	ldr	r3, .L29	@ tmp118,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:66: int SetWpnEqpForce(Unit* unit, u16 item){
	movs	r4, r1	@ item, tmp130
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:67: 	UnitExt* unitExt = GetUnitExtByUnit(unit);
	bl	.L11		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:69: 	if( NULL == unitExt )
	cmp	r0, #0	@ unitExt,
	beq	.L24		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:73: 	if( 0 == (item&0xFF) )
	lsls	r2, r4, #24	@ tmp122, item,
	lsrs	r2, r2, #24	@ tmp122, tmp122,
	beq	.L26		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:72: 	unitExt->WpnEqp = item;
	strh	r4, [r0, #14]	@ item, unitExt_6->WpnEqp
.L28:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:75: 	return TRUE;
	movs	r0, #1	@ <retval>,
.L24:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:76: }
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L26:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:74: 		unitExt->WpnEqp = 0;
	strh	r2, [r0, #14]	@ tmp122, unitExt_6->WpnEqp
	b	.L28		@
.L30:
	.align	2
.L29:
	.word	GetUnitExtByUnit
	.size	SetWpnEqpForce, .-SetWpnEqpForce
	.align	1
	.global	SaveEqpToMag
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SaveEqpToMag, %function
SaveEqpToMag:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:80: 	if( FALSE == IsItemMagic(item) )
	ldr	r3, .L39	@ tmp118,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:79: int SaveEqpToMag(UnitExt* ext, u16 item){
	movs	r5, r0	@ ext, tmp126
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:80: 	if( FALSE == IsItemMagic(item) )
	movs	r0, r1	@, item
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:79: int SaveEqpToMag(UnitExt* ext, u16 item){
	movs	r4, r1	@ item, tmp127
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:80: 	if( FALSE == IsItemMagic(item) )
	bl	.L11		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:80: 	if( FALSE == IsItemMagic(item) )
	cmp	r0, #0	@ <retval>,
	beq	.L31		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:83: 	if( 1 == SetBMagItem(ext,item) )
	movs	r1, r4	@, item
	movs	r0, r5	@, ext
	ldr	r3, .L39+4	@ tmp119,
	bl	.L11		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:83: 	if( 1 == SetBMagItem(ext,item) )
	cmp	r0, #1	@ <retval>,
	beq	.L31		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:86: 	if( 1 == SetWMagItem(ext,item) )
	ldr	r3, .L39+8	@ tmp120,
	movs	r1, r4	@, item
	movs	r0, r5	@, ext
	bl	.L11		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:86: 	if( 1 == SetWMagItem(ext,item) )
	subs	r0, r0, #1	@ tmp123,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:81: 		return FALSE;
	rsbs	r3, r0, #0	@ tmp124, tmp123
	adcs	r0, r0, r3	@ <retval>, tmp123, tmp124
.L31:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:90: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L40:
	.align	2
.L39:
	.word	IsItemMagic
	.word	SetBMagItem
	.word	SetWMagItem
	.size	SaveEqpToMag, .-SaveEqpToMag
	.align	1
	.global	SetWpnEqpAuto
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SetWpnEqpAuto, %function
SetWpnEqpAuto:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:93: 	UnitExt* ext = GetUnitExtByUnit(unit);
	ldr	r3, .L55	@ tmp125,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:92: int SetWpnEqpAuto(Unit* unit){
	movs	r4, r0	@ unit, tmp137
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:93: 	UnitExt* ext = GetUnitExtByUnit(unit);
	bl	.L11		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:95: 		return 2;
	movs	r3, #2	@ <retval>,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:94: 	if( NULL == ext )
	cmp	r0, #0	@ ext,
	beq	.L41		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:97: 	if( 0 != ext->WpnEqp )
	ldrh	r0, [r0, #14]	@ _1,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:97: 	if( 0 != ext->WpnEqp )
	cmp	r0, #0	@ _1,
	bne	.L43		@,
.L46:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:101: 	if( *GetMagAt(unit) > unit->pow )
	ldr	r3, .L55+4	@ tmp126,
	movs	r0, r4	@, unit
	bl	.L11		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:101: 	if( *GetMagAt(unit) > unit->pow )
	movs	r2, #0	@ *_3,
	movs	r3, #20	@ tmp128,
	ldrsb	r2, [r0, r2]	@ *_3,* *_3
	ldrsb	r3, [r4, r3]	@ tmp128,
	cmp	r2, r3	@ *_3, tmp128
	bgt	.L44		@,
.L45:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:36: 	u16 item = GetUnitEquippedWeapon(unit);
	movs	r0, r4	@, unit
	ldr	r3, .L55+8	@ tmp130,
	bl	.L11		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:36: 	u16 item = GetUnitEquippedWeapon(unit);
	lsls	r1, r0, #16	@ item, tmp141,
	lsrs	r1, r1, #16	@ item, item,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:37: 	if( 0 == item )
	beq	.L47		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:39: 	SetWpnEqp(unit,item);
	movs	r0, r4	@, unit
	bl	SetWpnEqp.isra.0		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:105: 		return 1;
	movs	r3, #1	@ <retval>,
	b	.L41		@
.L43:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:98: 		if( 0!=TestWpn(ext->WpnEqp) )
	ldr	r3, .L55+12	@ tmp129,
	bl	.L11		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:99: 			return 0;
	movs	r3, #0	@ <retval>,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:98: 		if( 0!=TestWpn(ext->WpnEqp) )
	cmp	r0, r3	@ tmp140,
	beq	.L46		@,
.L41:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:110: }
	@ sp needed	@
	movs	r0, r3	@, <retval>
	pop	{r4}
	pop	{r1}
	bx	r1
.L44:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:102: 		if( 1==trySetEqpMag(unit) )
	movs	r0, r4	@, unit
	bl	trySetEqpMag		@
	movs	r3, r0	@ <retval>, tmp142
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:102: 		if( 1==trySetEqpMag(unit) )
	cmp	r0, #1	@ <retval>,
	bne	.L45		@,
	b	.L41		@
.L47:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:106: 	if( 1==trySetEqpMag(unit) )
	movs	r0, r4	@, unit
	bl	trySetEqpMag		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:106: 	if( 1==trySetEqpMag(unit) )
	subs	r0, r0, #1	@ tmp134,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:95: 		return 2;
	rsbs	r3, r0, #0	@ <retval>, tmp134
	adcs	r3, r3, r0	@ <retval>, tmp134
	b	.L41		@
.L56:
	.align	2
.L55:
	.word	GetUnitExtByUnit
	.word	GetMagAt
	.word	GetUnitEquippedWeapon
	.word	TestWpn
	.size	SetWpnEqpAuto, .-SetWpnEqpAuto
	.align	1
	.global	SetupBattleWpnCore
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SetupBattleWpnCore, %function
SetupBattleWpnCore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:117: 	UnitExt* ext = GetUnitExtByUnit((Unit*)bu);
	ldr	r3, .L76	@ tmp123,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:115: int SetupBattleWpnCore(struct BattleUnit* bu){
	movs	r4, r0	@ bu, tmp150
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:117: 	UnitExt* ext = GetUnitExtByUnit((Unit*)bu);
	bl	.L11		@
	subs	r5, r0, #0	@ ext, tmp151,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:119: 	if( NULL == ext )
	bne	.L58		@,
.L60:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:120: 		return 0;
	movs	r0, #0	@ <retval>,
.L57:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:155: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L58:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:11: 	if( unit->index < 0x40 )
	movs	r3, #11	@ tmp126,
	ldrsb	r3, [r4, r3]	@ tmp126,
	cmp	r3, #63	@ tmp126,
	bgt	.L60		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:126: 	if( &gBattleActor == bu )	// 默认攻击者已经装备好了(默认不处理Cp)
	ldr	r3, .L76+4	@ tmp127,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:128: 	else if( 0==ext->WpnEqp )
	ldrh	r0, [r0, #14]	@ pretmp_23,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:126: 	if( &gBattleActor == bu )	// 默认攻击者已经装备好了(默认不处理Cp)
	cmp	r4, r3	@ bu, tmp127
	bne	.L61		@,
.L64:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:138: 	if( !IsItemMagic(ext->WpnEqp) )
	ldrh	r0, [r5, #14]	@ tmp128,
	ldr	r3, .L76+8	@ tmp129,
	bl	.L11		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:138: 	if( !IsItemMagic(ext->WpnEqp) )
	cmp	r0, #0	@ tmp152,
	beq	.L60		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:143: 	bu->canCounter = 1;
	movs	r3, r4	@ tmp133, bu
	movs	r0, #1	@ tmp134,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:146: 	bu->weaponSlotIndex = MAG_SLOTBU;	// 9
	movs	r2, #9	@ tmp139,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:143: 	bu->canCounter = 1;
	adds	r3, r3, #82	@ tmp133,
	strb	r0, [r3]	@ tmp134, bu_11(D)->canCounter
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:146: 	bu->weaponSlotIndex = MAG_SLOTBU;	// 9
	subs	r3, r3, #1	@ tmp138,
	strb	r2, [r3]	@ tmp139, bu_11(D)->weaponSlotIndex
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:148: 	bu->weapon = ext->WpnEqp;
	movs	r2, r4	@ tmp143, bu
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:148: 	bu->weapon = ext->WpnEqp;
	ldrh	r3, [r5, #14]	@ _6,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:148: 	bu->weapon = ext->WpnEqp;
	adds	r2, r2, #72	@ tmp143,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:149: 	bu->weaponBefore = ext->WpnEqp;
	adds	r4, r4, #74	@ tmp147,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:148: 	bu->weapon = ext->WpnEqp;
	strh	r3, [r2]	@ _6, bu_11(D)->weapon
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:149: 	bu->weaponBefore = ext->WpnEqp;
	strh	r3, [r4]	@ _6, bu_11(D)->weaponBefore
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:150: 	return 1;
	b	.L57		@
.L61:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:128: 	else if( 0==ext->WpnEqp )
	cmp	r0, #0	@ pretmp_23,
	bne	.L63		@,
.L65:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:134: 		if( 0 == SetWpnEqpAuto((Unit*)bu) )
	movs	r0, r4	@, bu
	bl	SetWpnEqpAuto		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:134: 		if( 0 == SetWpnEqpAuto((Unit*)bu) )
	cmp	r0, #0	@ tmp153,
	bne	.L64		@,
	b	.L60		@
.L63:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:130: 	else if( 0==TestWpn(ext->WpnEqp) )
	ldr	r3, .L76+12	@ tmp130,
	bl	.L11		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:130: 	else if( 0==TestWpn(ext->WpnEqp) )
	cmp	r0, #0	@ tmp154,
	beq	.L65		@,
	b	.L64		@
.L77:
	.align	2
.L76:
	.word	GetUnitExtByUnit
	.word	gBattleActor
	.word	IsItemMagic
	.word	TestWpn
	.size	SetupBattleWpnCore, .-SetupBattleWpnCore
	.align	1
	.global	newSubAttackEffect
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	newSubAttackEffect, %function
newSubAttackEffect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:163: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	adds	r1, r1, #60	@ tmp145,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:162: int newSubAttackEffect(MenuProc* pmu, MenuCommandProc* pcmd){
	push	{r4, r5, r6, lr}	@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:163: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	movs	r4, r1	@ tmp127, tmp145
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:176: }
	@ sp needed	@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:163: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	ldr	r5, .L79	@ tmp124,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:163: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	ldrb	r3, [r1]	@ tmp128,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:163: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	ldr	r0, [r5]	@ gActiveUnit.2_1, gActiveUnit
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:163: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	adds	r3, r3, #12	@ tmp129,
	lsls	r3, r3, #1	@ tmp130, tmp129,
	adds	r3, r0, r3	@ tmp131, gActiveUnit.2_1, tmp130
	ldrh	r6, [r3, #6]	@ wpn, *gActiveUnit.2_1
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:166: 	SetWpnEqpForce(gActiveUnit,wpn);
	movs	r1, r6	@, wpn
	bl	SetWpnEqpForce		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:167: 	EquipUnitItemSlot(
	ldr	r0, [r5]	@, gActiveUnit
	ldrb	r1, [r4]	@ tmp136,
	ldr	r3, .L79+4	@ tmp138,
	bl	.L11		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:171: 	ClearBG0BG1();
	ldr	r3, .L79+8	@ tmp139,
	bl	.L11		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:172: 	MakeTargetListForWeapon(gActiveUnit,wpn);
	movs	r1, r6	@, wpn
	ldr	r0, [r5]	@, gActiveUnit
	ldr	r3, .L79+12	@ tmp141,
	bl	.L11		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:173: 	StartTargetSelection(gpTargetSelectFuncs_Attack);
	ldr	r3, .L79+16	@ tmp143,
	ldr	r0, .L79+20	@ tmp142,
	bl	.L11		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:176: }
	movs	r0, #39	@,
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L80:
	.align	2
.L79:
	.word	gActiveUnit
	.word	EquipUnitItemSlot
	.word	ClearBG0BG1
	.word	MakeTargetListForWeapon
	.word	StartTargetSelection
	.word	gpTargetSelectFuncs_Attack
	.size	newSubAttackEffect, .-newSubAttackEffect
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L11:
	bx	r3
