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
	.global	SetWpnEqp
	.arch armv4t
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
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:40: 	UnitExt* unitExt = GetUnitExtByUnit(unit);
	ldr	r3, .L10	@ tmp119,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:39: int SetWpnEqp(Unit* unit, u16 item){
	movs	r5, r1	@ item, tmp132
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:40: 	UnitExt* unitExt = GetUnitExtByUnit(unit);
	bl	.L12		@
	subs	r4, r0, #0	@ unitExt, tmp133,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:42: 	if( NULL == unitExt )
	bne	.L2		@,
.L4:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:43: 		return FALSE;
	movs	r0, #0	@ <retval>,
.L1:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:52: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L2:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:45: 	if( 0 == TestWpn(item) )
	movs	r0, r5	@, item
	ldr	r3, .L10+4	@ tmp120,
	bl	.L12		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:45: 	if( 0 == TestWpn(item) )
	cmp	r0, #0	@ tmp134,
	beq	.L4		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:49: 	if( 0 == (item&0xFF) )
	lsls	r3, r5, #24	@ tmp124, item,
	lsrs	r3, r3, #24	@ tmp124, tmp124,
	beq	.L5		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:48: 	unitExt->WpnEqp = item;
	strh	r5, [r4, #14]	@ item, unitExt_7->WpnEqp
.L9:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:51: 	return TRUE;
	movs	r0, #1	@ <retval>,
	b	.L1		@
.L5:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:50: 		unitExt->WpnEqp = 0;
	strh	r3, [r4, #14]	@ tmp124, unitExt_7->WpnEqp
	b	.L9		@
.L11:
	.align	2
.L10:
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:18: 	UnitExt* ext = GetUnitExtByUnit(unit);
	ldr	r3, .L20	@ tmp121,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:17: static int trySetEqpMag(Unit* unit){
	movs	r5, r0	@ unit, tmp132
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:18: 	UnitExt* ext = GetUnitExtByUnit(unit);
	bl	.L12		@
	subs	r4, r0, #0	@ ext, tmp133,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:19: 	if( NULL == ext )
	bne	.L14		@,
.L16:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:20: 		return FALSE;
	movs	r0, #0	@ <retval>,
.L13:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:28: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L14:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:22: 	if( 1 == isMagListEmpty(ext) )
	ldr	r3, .L20+4	@ tmp122,
	bl	.L12		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:22: 	if( 1 == isMagListEmpty(ext) )
	cmp	r0, #1	@ tmp134,
	beq	.L16		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:26: 	SetWpnEqp(unit, item);
	movs	r1, #61	@ tmp128,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:6: static u16 itemDura(u8 use){ return (u16)use << 8; }
	ldrb	r3, [r4, #17]	@ tmp124,
	lsls	r3, r3, #8	@ tmp125, tmp124,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:26: 	SetWpnEqp(unit, item);
	movs	r0, r5	@, unit
	orrs	r1, r3	@ tmp129, tmp125
	bl	SetWpnEqp		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:27: 	return TRUE;
	movs	r0, #1	@ <retval>,
	b	.L13		@
.L21:
	.align	2
.L20:
	.word	GetUnitExtByUnit
	.word	isMagListEmpty
	.size	trySetEqpMag, .-trySetEqpMag
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
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:56: 	if( FALSE == IsItemMagic(item) )
	ldr	r3, .L30	@ tmp118,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:55: int SaveEqpToMag(UnitExt* ext, u16 item){
	movs	r5, r0	@ ext, tmp126
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:56: 	if( FALSE == IsItemMagic(item) )
	movs	r0, r1	@, item
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:55: int SaveEqpToMag(UnitExt* ext, u16 item){
	movs	r4, r1	@ item, tmp127
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:56: 	if( FALSE == IsItemMagic(item) )
	bl	.L12		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:56: 	if( FALSE == IsItemMagic(item) )
	cmp	r0, #0	@ <retval>,
	beq	.L22		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:59: 	if( 1 == SetBMagItem(ext,item) )
	movs	r1, r4	@, item
	movs	r0, r5	@, ext
	ldr	r3, .L30+4	@ tmp119,
	bl	.L12		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:59: 	if( 1 == SetBMagItem(ext,item) )
	cmp	r0, #1	@ <retval>,
	beq	.L22		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:62: 	if( 1 == SetWMagItem(ext,item) )
	ldr	r3, .L30+8	@ tmp120,
	movs	r1, r4	@, item
	movs	r0, r5	@, ext
	bl	.L12		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:62: 	if( 1 == SetWMagItem(ext,item) )
	subs	r0, r0, #1	@ tmp123,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:57: 		return FALSE;
	rsbs	r3, r0, #0	@ tmp124, tmp123
	adcs	r0, r0, r3	@ <retval>, tmp123, tmp124
.L22:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:66: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L31:
	.align	2
.L30:
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
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:69: 	UnitExt* unitExt = GetUnitExtByUnit(unit);
	ldr	r3, .L44	@ tmp124,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:68: int SetWpnEqpAuto(Unit* unit){
	movs	r4, r0	@ unit, tmp136
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:69: 	UnitExt* unitExt = GetUnitExtByUnit(unit);
	bl	.L12		@
	movs	r3, r0	@ unitExt, tmp137
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:71: 		return 2;
	movs	r0, #2	@ <retval>,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:70: 	if( NULL == unitExt )
	cmp	r3, #0	@ unitExt,
	beq	.L32		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:74: 		return 0;
	movs	r0, #0	@ <retval>,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:73: 	if( 0 != unitExt->WpnEqp )
	ldrh	r3, [r3, #14]	@ tmp125,
	cmp	r3, r0	@ tmp125,
	bne	.L32		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:76: 	if( *GetMagAt(unit) > unit->pow )
	ldr	r3, .L44+4	@ tmp126,
	movs	r0, r4	@, unit
	bl	.L12		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:76: 	if( *GetMagAt(unit) > unit->pow )
	movs	r2, #0	@ *_2,
	movs	r3, #20	@ tmp128,
	ldrsb	r2, [r0, r2]	@ *_2,* *_2
	ldrsb	r3, [r4, r3]	@ tmp128,
	cmp	r2, r3	@ *_2, tmp128
	bgt	.L34		@,
.L37:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:31: 	u16 item = GetUnitEquippedWeapon(unit);
	movs	r0, r4	@, unit
	ldr	r3, .L44+8	@ tmp129,
	bl	.L12		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:31: 	u16 item = GetUnitEquippedWeapon(unit);
	lsls	r1, r0, #16	@ item, tmp139,
	lsrs	r1, r1, #16	@ item, item,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:32: 	if( 0 == item )
	beq	.L35		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:34: 	SetWpnEqp(unit,item);
	movs	r0, r4	@, unit
	bl	SetWpnEqp		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:80: 		return 1;
	movs	r0, #1	@ <retval>,
	b	.L32		@
.L34:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:77: 		if( 1==trySetEqpMag(unit) )
	movs	r0, r4	@, unit
	bl	trySetEqpMag		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:77: 		if( 1==trySetEqpMag(unit) )
	cmp	r0, #1	@ <retval>,
	bne	.L37		@,
.L32:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:85: }
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L35:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:81: 	if( 1==trySetEqpMag(unit) )
	movs	r0, r4	@, unit
	bl	trySetEqpMag		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:81: 	if( 1==trySetEqpMag(unit) )
	subs	r0, r0, #1	@ tmp133,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:71: 		return 2;
	rsbs	r3, r0, #0	@ tmp134, tmp133
	adcs	r0, r0, r3	@ <retval>, tmp133, tmp134
	b	.L32		@
.L45:
	.align	2
.L44:
	.word	GetUnitExtByUnit
	.word	GetMagAt
	.word	GetUnitEquippedWeapon
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
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:91: 	UnitExt* ext = GetUnitExtByUnit((Unit*)bu);
	ldr	r3, .L57	@ tmp121,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:90: int SetupBattleWpnCore(struct BattleUnit* bu){
	movs	r4, r0	@ bu, tmp147
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:91: 	UnitExt* ext = GetUnitExtByUnit((Unit*)bu);
	bl	.L12		@
	subs	r5, r0, #0	@ ext, tmp148,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:93: 	if( NULL == ext )
	bne	.L47		@,
.L49:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:94: 		return 0;
	movs	r0, #0	@ <retval>,
.L46:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:120: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L47:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:10: 	if( unit->index < 0x40 )
	movs	r3, #11	@ tmp124,
	ldrsb	r3, [r4, r3]	@ tmp124,
	cmp	r3, #63	@ tmp124,
	bgt	.L49		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:99: 	if( 0 == ext->WpnEqp )
	ldrh	r3, [r0, #14]	@ tmp125,
	cmp	r3, #0	@ tmp125,
	beq	.L50		@,
.L52:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:103: 	if( 1 != TestWpn(ext->WpnEqp) )
	ldrh	r0, [r5, #14]	@ tmp126,
	ldr	r3, .L57+4	@ tmp127,
	bl	.L12		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:103: 	if( 1 != TestWpn(ext->WpnEqp) )
	cmp	r0, #1	@ <retval>,
	bne	.L49		@,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:108: 	bu->canCounter = 1;
	movs	r3, r4	@ tmp130, bu
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:111: 	bu->weaponSlotIndex = MAG_SLOTBU;	// 9
	movs	r2, #9	@ tmp136,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:108: 	bu->canCounter = 1;
	adds	r3, r3, #82	@ tmp130,
	strb	r0, [r3]	@ <retval>, bu_10(D)->canCounter
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:111: 	bu->weaponSlotIndex = MAG_SLOTBU;	// 9
	subs	r3, r3, #1	@ tmp135,
	strb	r2, [r3]	@ tmp136, bu_10(D)->weaponSlotIndex
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:113: 	bu->weapon = ext->WpnEqp;
	movs	r2, r4	@ tmp140, bu
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:113: 	bu->weapon = ext->WpnEqp;
	ldrh	r3, [r5, #14]	@ _5,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:113: 	bu->weapon = ext->WpnEqp;
	adds	r2, r2, #72	@ tmp140,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:114: 	bu->weaponBefore = ext->WpnEqp;
	adds	r4, r4, #74	@ tmp144,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:113: 	bu->weapon = ext->WpnEqp;
	strh	r3, [r2]	@ _5, bu_10(D)->weapon
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:114: 	bu->weaponBefore = ext->WpnEqp;
	strh	r3, [r4]	@ _5, bu_10(D)->weaponBefore
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:115: 	return 1;
	b	.L46		@
.L50:
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:100: 		if( 0 == SetWpnEqpAuto((Unit*)bu) )
	movs	r0, r4	@, bu
	bl	SetWpnEqpAuto		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:100: 		if( 0 == SetWpnEqpAuto((Unit*)bu) )
	cmp	r0, #0	@ tmp150,
	bne	.L52		@,
	b	.L49		@
.L58:
	.align	2
.L57:
	.word	GetUnitExtByUnit
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
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:128: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	adds	r1, r1, #60	@ tmp145,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:127: int newSubAttackEffect(MenuProc* pmu, MenuCommandProc* pcmd){
	push	{r4, r5, r6, lr}	@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:128: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	movs	r4, r1	@ tmp127, tmp145
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:141: }
	@ sp needed	@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:128: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	ldr	r5, .L60	@ tmp124,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:128: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	ldrb	r3, [r1]	@ tmp128,
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:128: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	ldr	r0, [r5]	@ gActiveUnit.0_1, gActiveUnit
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:128: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	adds	r3, r3, #12	@ tmp129,
	lsls	r3, r3, #1	@ tmp130, tmp129,
	adds	r3, r0, r3	@ tmp131, gActiveUnit.0_1, tmp130
	ldrh	r6, [r3, #6]	@ wpn, *gActiveUnit.0_1
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:131: 	SetWpnEqp(gActiveUnit,wpn);
	movs	r1, r6	@, wpn
	bl	SetWpnEqp		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:132: 	EquipUnitItemSlot(
	ldr	r0, [r5]	@, gActiveUnit
	ldrb	r1, [r4]	@ tmp136,
	ldr	r3, .L60+4	@ tmp138,
	bl	.L12		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:136: 	ClearBG0BG1();
	ldr	r3, .L60+8	@ tmp139,
	bl	.L12		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:137: 	MakeTargetListForWeapon(gActiveUnit,wpn);
	movs	r1, r6	@, wpn
	ldr	r0, [r5]	@, gActiveUnit
	ldr	r3, .L60+12	@ tmp141,
	bl	.L12		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:138: 	StartTargetSelection(gpTargetSelectFuncs_Attack);
	ldr	r3, .L60+16	@ tmp143,
	ldr	r0, .L60+20	@ tmp142,
	bl	.L12		@
@ MagicSystem/WpnEqpSystem/src/WpnEqpCore.c:141: }
	movs	r0, #39	@,
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L61:
	.align	2
.L60:
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
.L12:
	bx	r3
