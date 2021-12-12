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
	.global	GetWpnEqp
	.arch armv4t
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
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:9: u16 GetWpnEqp(UnitExt* ext){ return ext->WpnEqp; }
	ldrh	r0, [r0, #14]	@ tmp118,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:9: u16 GetWpnEqp(UnitExt* ext){ return ext->WpnEqp; }
	@ sp needed	@
	bx	lr
	.size	GetWpnEqp, .-GetWpnEqp
	.align	1
	.global	SetWpnEqp
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SetWpnEqp, %function
SetWpnEqp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:13: 	UnitExt* unitExt = GetUnitExtByUnit(unit);
	ldr	r3, .L11	@ tmp119,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:12: int SetWpnEqp(Unit* unit, u16 item){
	movs	r5, r1	@ item, tmp131
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:13: 	UnitExt* unitExt = GetUnitExtByUnit(unit);
	bl	.L13		@
	subs	r4, r0, #0	@ unitExt, tmp132,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:15: 	if( NULL == unitExt )
	bne	.L3		@,
.L5:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:16: 		return FALSE;
	movs	r0, #0	@ <retval>,
.L2:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:27: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L3:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:18: 	if( 0 == TestWpn(item) )
	movs	r0, r5	@, item
	ldr	r3, .L11+4	@ tmp120,
	bl	.L13		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:18: 	if( 0 == TestWpn(item) )
	cmp	r0, #0	@ tmp133,
	beq	.L5		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:23: 	if( 0 == ITEM_USE(item) )
	lsrs	r3, r5, #8	@ tmp123, item,
	beq	.L6		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:21: 	unitExt->WpnEqp = item;
	strh	r5, [r4, #14]	@ item, unitExt_9->WpnEqp
.L10:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:26: 	return TRUE;
	movs	r0, #1	@ <retval>,
	b	.L2		@
.L6:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:24: 		unitExt->WpnEqp = 0;
	strh	r3, [r4, #14]	@ tmp123, unitExt_9->WpnEqp
	b	.L10		@
.L12:
	.align	2
.L11:
	.word	GetUnitExtByUnit
	.word	TestWpn
	.size	SetWpnEqp, .-SetWpnEqp
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
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:45: 	UnitExt* ext = GetUnitExtByUnit(unit);
	ldr	r3, .L24	@ tmp132,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:43: static int trySetEqpMag(Unit* unit){
	movs	r6, r0	@ unit, tmp153
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:45: 	UnitExt* ext = GetUnitExtByUnit(unit);
	bl	.L13		@
	subs	r5, r0, #0	@ ext, tmp154,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:46: 	if( NULL == ext )
	beq	.L15		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:49: 	if( FALSE == isUnitMagSet(ext) )
	ldr	r3, .L24+4	@ tmp133,
	bl	.L13		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:49: 	if( FALSE == isUnitMagSet(ext) )
	cmp	r0, #0	@ tmp155,
	bne	.L16		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:50: 		SetUnitMagList(unit);
	movs	r0, r6	@, unit
	ldr	r3, .L24+8	@ tmp134,
	bl	.L13		@
.L16:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:43: static int trySetEqpMag(Unit* unit){
	movs	r4, #0	@ i,
.L19:
	lsls	r7, r4, #24	@ _16, i,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:54: 		if( 0!=GetBMagUse(ext,i) )
	ldr	r3, .L24+12	@ tmp136,
	lsrs	r7, r7, #24	@ _16, _16,
	movs	r1, r7	@, _16
	movs	r0, r5	@, ext
	str	r3, [sp, #4]	@ tmp136, %sfp
	bl	.L13		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:54: 		if( 0!=GetBMagUse(ext,i) )
	cmp	r0, #0	@ tmp156,
	beq	.L17		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:56: 			mag = MAKE_ITEM( gpBMagList[i].index, GetBMagUse(ext,i) );
	ldr	r3, .L24+16	@ tmp140,
	ldr	r3, [r3]	@ gpBMagList, gpBMagList
	lsls	r4, r4, #3	@ tmp141, i,
	ldrb	r4, [r3, r4]	@ _9, *_7
	movs	r1, r7	@, _16
	ldr	r3, [sp, #4]	@ tmp136, %sfp
	movs	r0, r5	@, ext
	bl	.L13		@
	lsls	r0, r0, #8	@ tmp147, tmp157,
	orrs	r4, r0	@ tmp149, tmp147
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:57: 			SetWpnEqp(unit, mag);
	lsls	r1, r4, #16	@ tmp150, tmp149,
	movs	r0, r6	@, unit
	lsrs	r1, r1, #16	@ tmp150, tmp150,
	bl	SetWpnEqp		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:58: 			return TRUE;
	movs	r0, #1	@ <retval>,
.L14:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:63: }
	@ sp needed	@
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L17:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:52: 	for(int i=0; i<0xF; i++)
	adds	r4, r4, #1	@ i,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:52: 	for(int i=0; i<0xF; i++)
	cmp	r4, #15	@ i,
	bne	.L19		@,
.L15:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:47: 		return FALSE;
	movs	r0, #0	@ <retval>,
	b	.L14		@
.L25:
	.align	2
.L24:
	.word	GetUnitExtByUnit
	.word	isUnitMagSet
	.word	SetUnitMagList
	.word	GetBMagUse
	.word	gpBMagList
	.size	trySetEqpMag, .-trySetEqpMag
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
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:31: 	UnitExt* unitExt = GetUnitExtByUnit(unit);
	ldr	r3, .L31	@ tmp118,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:30: int SetWpnEqpForce(Unit* unit, u16 item){
	movs	r4, r1	@ item, tmp129
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:31: 	UnitExt* unitExt = GetUnitExtByUnit(unit);
	bl	.L13		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:33: 	if( NULL == unitExt )
	cmp	r0, #0	@ unitExt,
	beq	.L26		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:37: 	if( 0 == ITEM_USE(item) )
	lsrs	r2, r4, #8	@ tmp121, item,
	beq	.L28		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:36: 	unitExt->WpnEqp = item;
	strh	r4, [r0, #14]	@ item, unitExt_8->WpnEqp
.L30:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:39: 	return TRUE;
	movs	r0, #1	@ <retval>,
.L26:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:40: }
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L28:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:38: 		unitExt->WpnEqp = 0;
	strh	r2, [r0, #14]	@ tmp121, unitExt_8->WpnEqp
	b	.L30		@
.L32:
	.align	2
.L31:
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
	ldr	r3, .L41	@ tmp118,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:79: int SaveEqpToMag(UnitExt* ext, u16 item){
	movs	r5, r0	@ ext, tmp126
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:80: 	if( FALSE == IsItemMagic(item) )
	movs	r0, r1	@, item
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:79: int SaveEqpToMag(UnitExt* ext, u16 item){
	movs	r4, r1	@ item, tmp127
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:80: 	if( FALSE == IsItemMagic(item) )
	bl	.L13		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:80: 	if( FALSE == IsItemMagic(item) )
	cmp	r0, #0	@ <retval>,
	beq	.L33		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:83: 	if( 1 == SetBMagItem(ext,item) )
	movs	r1, r4	@, item
	movs	r0, r5	@, ext
	ldr	r3, .L41+4	@ tmp119,
	bl	.L13		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:83: 	if( 1 == SetBMagItem(ext,item) )
	cmp	r0, #1	@ <retval>,
	beq	.L33		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:86: 	if( 1 == SetWMagItem(ext,item) )
	ldr	r3, .L41+8	@ tmp120,
	movs	r1, r4	@, item
	movs	r0, r5	@, ext
	bl	.L13		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:86: 	if( 1 == SetWMagItem(ext,item) )
	subs	r0, r0, #1	@ tmp123,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:81: 		return FALSE;
	rsbs	r3, r0, #0	@ tmp124, tmp123
	adcs	r0, r0, r3	@ <retval>, tmp123, tmp124
.L33:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:90: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L42:
	.align	2
.L41:
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
	push	{r4, r5, r6, lr}	@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:93: 	UnitExt* ext = GetUnitExtByUnit(unit);
	ldr	r3, .L57	@ tmp125,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:92: int SetWpnEqpAuto(Unit* unit){
	movs	r4, r0	@ unit, tmp144
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:93: 	UnitExt* ext = GetUnitExtByUnit(unit);
	bl	.L13		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:95: 		return 2;
	movs	r3, #2	@ <retval>,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:94: 	if( NULL == ext )
	cmp	r0, #0	@ ext,
	beq	.L43		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:97: 	if( 0 != ITEM_USE(ext->WpnEqp) )
	ldrh	r0, [r0, #14]	@ _1,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:97: 	if( 0 != ITEM_USE(ext->WpnEqp) )
	lsrs	r3, r0, #8	@ tmp128, _1,
	bne	.L45		@,
.L48:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:101: 	if( GetMag(unit) > GetPow(unit) )
	ldr	r3, .L57+4	@ tmp130,
	movs	r0, r4	@, unit
	bl	.L13		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:101: 	if( GetMag(unit) > GetPow(unit) )
	ldr	r3, .L57+8	@ tmp133,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:101: 	if( GetMag(unit) > GetPow(unit) )
	movs	r5, r0	@ tmp131, tmp146
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:101: 	if( GetMag(unit) > GetPow(unit) )
	movs	r0, r4	@, unit
	bl	.L13		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:101: 	if( GetMag(unit) > GetPow(unit) )
	cmp	r5, r0	@ tmp131, tmp147
	bgt	.L46		@,
.L47:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:66: 	u16 item = GetUnitEquippedWeapon(unit);
	movs	r0, r4	@, unit
	ldr	r3, .L57+12	@ tmp137,
	bl	.L13		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:66: 	u16 item = GetUnitEquippedWeapon(unit);
	lsls	r1, r0, #16	@ item, tmp149,
	lsrs	r1, r1, #16	@ item, item,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:67: 	if( 0 == item )
	beq	.L49		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:69: 	SetWpnEqp(unit,item);
	movs	r0, r4	@, unit
	bl	SetWpnEqp		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:106: 		return 1;
	movs	r3, #1	@ <retval>,
	b	.L43		@
.L45:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:98: 		if( 0!=TestWpn(ext->WpnEqp) )
	ldr	r3, .L57+16	@ tmp136,
	bl	.L13		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:99: 			return 0;
	movs	r3, #0	@ <retval>,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:98: 		if( 0!=TestWpn(ext->WpnEqp) )
	cmp	r0, r3	@ tmp148,
	beq	.L48		@,
.L43:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:112: }
	@ sp needed	@
	movs	r0, r3	@, <retval>
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L46:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:102: 		if( 1==trySetEqpMag(unit) )
	movs	r0, r4	@, unit
	bl	trySetEqpMag		@
	movs	r3, r0	@ <retval>, tmp150
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:102: 		if( 1==trySetEqpMag(unit) )
	cmp	r0, #1	@ <retval>,
	bne	.L47		@,
	b	.L43		@
.L49:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:108: 	if( 1==trySetEqpMag(unit) )
	movs	r0, r4	@, unit
	bl	trySetEqpMag		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:108: 	if( 1==trySetEqpMag(unit) )
	subs	r0, r0, #1	@ tmp141,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:95: 		return 2;
	rsbs	r3, r0, #0	@ <retval>, tmp141
	adcs	r3, r3, r0	@ <retval>, tmp141
	b	.L43		@
.L58:
	.align	2
.L57:
	.word	GetUnitExtByUnit
	.word	GetMag
	.word	GetPow
	.word	GetUnitEquippedWeapon
	.word	TestWpn
	.size	SetWpnEqpAuto, .-SetWpnEqpAuto
	.align	1
	.global	SetWpnEqpAuto_bu
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SetWpnEqpAuto_bu, %function
SetWpnEqpAuto_bu:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:115: {	return  SetWpnEqpAuto( GetUnit(bu->unit.index) ); }
	ldr	r3, .L60	@ tmp119,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:115: {	return  SetWpnEqpAuto( GetUnit(bu->unit.index) ); }
	@ sp needed	@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:115: {	return  SetWpnEqpAuto( GetUnit(bu->unit.index) ); }
	ldrb	r0, [r0, #11]	@ tmp118,
	bl	.L13		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:115: {	return  SetWpnEqpAuto( GetUnit(bu->unit.index) ); }
	bl	SetWpnEqpAuto		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:115: {	return  SetWpnEqpAuto( GetUnit(bu->unit.index) ); }
	pop	{r4}
	pop	{r1}
	bx	r1
.L61:
	.align	2
.L60:
	.word	GetUnit
	.size	SetWpnEqpAuto_bu, .-SetWpnEqpAuto_bu
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L13:
	bx	r3
