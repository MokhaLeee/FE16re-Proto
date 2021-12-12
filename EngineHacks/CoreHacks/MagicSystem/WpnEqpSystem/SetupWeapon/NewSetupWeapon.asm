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
	.file	"NewSetupWeapon.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	TrySetMag
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	TrySetMag, %function
TrySetMag:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:30: 	UnitExt* ext = GetUnitExtByUnit(&bu->unit);
	ldr	r3, .L17	@ tmp124,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:28: {
	movs	r4, r0	@ bu, tmp166
	movs	r6, r1	@ slot, tmp167
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:30: 	UnitExt* ext = GetUnitExtByUnit(&bu->unit);
	bl	.L19		@
	subs	r5, r0, #0	@ ext, tmp168,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:33: 	if( NULL == ext )
	bne	.L2		@,
.L4:
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:34: 		return FALSE;
	movs	r0, #0	@ <retval>,
.L1:
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:65: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L2:
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:13: 	if( unit->index < 0x40 )
	movs	r3, #11	@ tmp127,
	ldrsb	r3, [r4, r3]	@ tmp127,
	cmp	r3, #63	@ tmp127,
	bgt	.L4		@,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:40: 	if( (slot < 0) && (0 ==ext->WpnEqp) )
	ldrh	r3, [r0, #14]	@ pretmp_27,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:40: 	if( (slot < 0) && (0 ==ext->WpnEqp) )
	cmp	r6, #0	@ slot,
	blt	.L5		@,
.L8:
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:44: 	wpn = ext->WpnEqp;
	ldrh	r5, [r5, #14]	@ wpn,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:47: 	if( IsItemBlackMagic(wpn) )
	ldr	r3, .L17+4	@ tmp131,
	movs	r0, r5	@, wpn
	bl	.L19		@
	subs	r6, r0, #0	@ _4, tmp169,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:47: 	if( IsItemBlackMagic(wpn) )
	bne	.L6		@,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:54: 	else if( IsItemWhiteMagic(wpn) )
	movs	r0, r5	@, wpn
	ldr	r3, .L17+8	@ tmp146,
	bl	.L19		@
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:54: 	else if( IsItemWhiteMagic(wpn) )
	cmp	r0, #0	@ tmp171,
	beq	.L4		@,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:56: 		bu->weaponSlotIndex = BU_ISLOT_WMAG;
	movs	r3, r4	@ tmp149, bu
	movs	r2, #10	@ tmp150,
	adds	r3, r3, #81	@ tmp149,
	strb	r2, [r3]	@ tmp150, bu_9(D)->weaponSlotIndex
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:59: 		bu->canCounter = FALSE;
	adds	r4, r4, #82	@ tmp162,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:57: 		bu->weapon = wpn;
	subs	r3, r3, #9	@ tmp154,
	strh	r5, [r3]	@ wpn, bu_9(D)->weapon
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:58: 		bu->weaponBefore = wpn;
	strh	r5, [r3, #2]	@ wpn, bu_9(D)->weaponBefore
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:59: 		bu->canCounter = FALSE;
	strb	r6, [r4]	@ _4, bu_9(D)->canCounter
	b	.L16		@
.L5:
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:40: 	if( (slot < 0) && (0 ==ext->WpnEqp) )
	cmp	r3, #0	@ pretmp_27,
	bne	.L8		@,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:41: 		if( FALSE == SetWpnEqpAuto_bu(bu) )
	movs	r0, r4	@, bu
	ldr	r3, .L17+12	@ tmp132,
	bl	.L19		@
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:41: 		if( FALSE == SetWpnEqpAuto_bu(bu) )
	cmp	r0, #0	@ tmp170,
	bne	.L8		@,
	b	.L4		@
.L6:
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:49: 		bu->weaponSlotIndex = BU_ISLOT_BMAG;
	movs	r3, r4	@ tmp135, bu
	movs	r2, #9	@ tmp136,
	adds	r3, r3, #81	@ tmp135,
	strb	r2, [r3]	@ tmp136, bu_9(D)->weaponSlotIndex
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:51: 		bu->weaponBefore = wpn;
	adds	r4, r4, #74	@ tmp144,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:50: 		bu->weapon = wpn;
	subs	r3, r3, #9	@ tmp140,
	strh	r5, [r3]	@ wpn, bu_9(D)->weapon
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:51: 		bu->weaponBefore = wpn;
	strh	r5, [r4]	@ wpn, bu_9(D)->weaponBefore
.L16:
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:60: 		return TRUE;
	movs	r0, #1	@ <retval>,
	b	.L1		@
.L18:
	.align	2
.L17:
	.word	GetUnitExtByUnit
	.word	IsItemBlackMagic
	.word	IsItemWhiteMagic
	.word	SetWpnEqpAuto_bu
	.size	TrySetMag, .-TrySetMag
	.align	1
	.global	newSetBattleUnitWeapon
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	newSetBattleUnitWeapon, %function
newSetBattleUnitWeapon:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:72: 	bu->canCounter = TRUE;
	movs	r7, r0	@ tmp150, bu
	movs	r3, #1	@ tmp151,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:71: 	s8 itemSlot = (s8)slot;
	lsls	r4, r1, #24	@ tmp147, tmp279,
	asrs	r4, r4, #24	@ itemSlot, tmp147,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:72: 	bu->canCounter = TRUE;
	adds	r7, r7, #82	@ tmp150,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:74: 	if( TrySetMag(bu,itemSlot) )	// 如果不为0, 则为B/W mag,此时weaponSlotIndex已经设定好了
	movs	r1, r4	@, itemSlot
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:72: 	bu->canCounter = TRUE;
	strb	r3, [r7]	@ tmp151, bu_39(D)->canCounter
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:69: void newSetBattleUnitWeapon(struct BattleUnit* bu, u8 slot) {
	movs	r5, r0	@ bu, tmp278
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:74: 	if( TrySetMag(bu,itemSlot) )	// 如果不为0, 则为B/W mag,此时weaponSlotIndex已经设定好了
	bl	TrySetMag		@
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:74: 	if( TrySetMag(bu,itemSlot) )	// 如果不为0, 则为B/W mag,此时weaponSlotIndex已经设定好了
	cmp	r0, #0	@ tmp280,
	beq	.L21		@,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:75: 		itemSlot = bu->weaponSlotIndex;
	movs	r4, #81	@ itemSlot,
	ldrsb	r4, [r5, r4]	@ itemSlot,* itemSlot
.L21:
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:82: 	if (itemSlot == BU_ISLOT_AUTO )
	adds	r3, r4, #1	@ tmp287, itemSlot,
	bne	.L22		@,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:83: 		itemSlot = GetUnitEquippedWeaponSlot(&bu->unit);
	movs	r0, r5	@, bu
	ldr	r3, .L49	@ tmp156,
	bl	.L19		@
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:83: 		itemSlot = GetUnitEquippedWeaponSlot(&bu->unit);
	lsls	r4, r0, #24	@ tmp157, tmp281,
	asrs	r4, r4, #24	@ itemSlot, tmp157,
.L22:
	movs	r6, r5	@ tmp276, bu
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:85: 	if (bu->unit.state & US_IN_BALLISTA)
	ldr	r3, [r5, #12]	@ bu_39(D)->unit.state, bu_39(D)->unit.state
	adds	r6, r6, #72	@ tmp276,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:85: 	if (bu->unit.state & US_IN_BALLISTA)
	lsls	r3, r3, #20	@ tmp288, bu_39(D)->unit.state,
	bmi	.L23		@,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:89: 	switch (itemSlot) {
	cmp	r4, #8	@ itemSlot,
	beq	.L23		@,
	bgt	.L24		@,
	lsls	r3, r4, #24	@ _76, itemSlot,
	lsrs	r3, r3, #24	@ _76, _76,
	cmp	r3, #4	@ _76,
	bls	.L42		@,
.L25:
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:114: 		bu->weaponSlotIndex = 0xFF;
	movs	r3, r5	@ tmp206, bu
	movs	r2, #255	@ tmp207,
	adds	r3, r3, #81	@ tmp206,
	strb	r2, [r3]	@ tmp207, bu_39(D)->weaponSlotIndex
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:115: 		bu->weapon = 0;
	movs	r3, #0	@ tmp212,
	strh	r3, [r6]	@ tmp212, bu_39(D)->weapon
	b	.L47		@
.L24:
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:89: 	switch (itemSlot) {
	subs	r4, r4, #9	@ tmp167,
	lsls	r4, r4, #24	@ tmp170, tmp167,
	lsrs	r4, r4, #24	@ tmp170, tmp170,
	cmp	r4, #1	@ tmp170,
	bhi	.L25		@,
.L27:
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:120: 	bu->weaponBefore = bu->weapon;
	movs	r3, r5	@ tmp224, bu
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:120: 	bu->weaponBefore = bu->weapon;
	ldrh	r0, [r6]	@ _15,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:120: 	bu->weaponBefore = bu->weapon;
	adds	r3, r3, #74	@ tmp224,
	strh	r0, [r3]	@ _15, bu_39(D)->weaponBefore
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:121: 	bu->weaponAttributes = GetItemAttributes(bu->weapon);
	ldr	r3, .L49+4	@ tmp226,
	bl	.L19		@
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:121: 	bu->weaponAttributes = GetItemAttributes(bu->weapon);
	str	r0, [r5, #76]	@ tmp283, bu_39(D)->weaponAttributes
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:122: 	bu->weaponType = GetItemType(bu->weapon);
	ldr	r3, .L49+8	@ tmp231,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:122: 	bu->weaponType = GetItemType(bu->weapon);
	movs	r4, r5	@ tmp234, bu
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:122: 	bu->weaponType = GetItemType(bu->weapon);
	ldrh	r0, [r6]	@ tmp230,
	bl	.L19		@
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:122: 	bu->weaponType = GetItemType(bu->weapon);
	adds	r4, r4, #80	@ tmp234,
	strb	r0, [r4]	@ tmp284, bu_39(D)->weaponType
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:125: 	SetWpnEqp(&bu->unit,bu->weapon);
	ldr	r3, .L49+12	@ tmp240,
	movs	r0, r5	@, bu
	ldrh	r1, [r6]	@ tmp239,
	bl	.L19		@
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:128: 	if (gBattleStats.config & BATTLE_CONFIG_BIT2)
	ldr	r3, .L49+16	@ tmp241,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:128: 	if (gBattleStats.config & BATTLE_CONFIG_BIT2)
	ldrh	r3, [r3]	@ gBattleStats, gBattleStats
	lsls	r3, r3, #29	@ tmp289, gBattleStats,
	bmi	.L20		@,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:131: 	if (bu->weaponAttributes & IA_MAGICDAMAGE) 
	ldr	r3, [r5, #76]	@ bu_39(D)->weaponAttributes, bu_39(D)->weaponAttributes
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:131: 	if (bu->weaponAttributes & IA_MAGICDAMAGE) 
	lsls	r3, r3, #25	@ tmp290, bu_39(D)->weaponAttributes,
	bpl	.L29		@,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:133: 		switch (GetItemIndex(bu->weapon)) {
	ldrh	r0, [r6]	@ tmp255,
	ldr	r3, .L49+20	@ tmp256,
	bl	.L19		@
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:133: 		switch (GetItemIndex(bu->weapon)) {
	cmp	r0, #17	@ tmp257,
	beq	.L30		@,
	cmp	r0, #161	@ tmp257,
	beq	.L31		@,
	cmp	r0, #16	@ tmp257,
	bne	.L29		@,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:140: 			bu->weaponType = ITYPE_LIGHT;
	movs	r3, #6	@ tmp267,
	b	.L48		@
.L42:
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:97: 		bu->weaponSlotIndex = itemSlot;
	movs	r2, r5	@ tmp174, bu
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:98: 		bu->weapon = bu->unit.items[bu->weaponSlotIndex];
	adds	r4, r4, #12	@ tmp176,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:97: 		bu->weaponSlotIndex = itemSlot;
	adds	r2, r2, #81	@ tmp174,
	strb	r3, [r2]	@ _76, bu_39(D)->weaponSlotIndex
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:98: 		bu->weapon = bu->unit.items[bu->weaponSlotIndex];
	lsls	r4, r4, #1	@ tmp177, tmp176,
	adds	r4, r5, r4	@ tmp178, bu, tmp177
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:98: 		bu->weapon = bu->unit.items[bu->weaponSlotIndex];
	ldrh	r3, [r4, #6]	@ tmp183, *bu_39(D)
	strh	r3, [r6]	@ tmp183, bu_39(D)->weapon
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:99: 		break;
	b	.L27		@
.L23:
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:103: 		bu->weaponSlotIndex = 0xFF;
	movs	r3, r5	@ tmp187, bu
	movs	r2, #255	@ tmp188,
	adds	r3, r3, #81	@ tmp187,
	strb	r2, [r3]	@ tmp188, bu_39(D)->weaponSlotIndex
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:104: 		bu->weapon = GetBallistaItemAt(bu->unit.xPos, bu->unit.yPos);
	ldr	r3, .L49+24	@ tmp192,
	ldrb	r1, [r5, #17]	@ tmp190,
	ldrb	r0, [r5, #16]	@ tmp191,
	bl	.L19		@
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:105: 		bu->canCounter = FALSE;
	movs	r3, #0	@ tmp202,
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:104: 		bu->weapon = GetBallistaItemAt(bu->unit.xPos, bu->unit.yPos);
	strh	r0, [r6]	@ tmp282, bu_39(D)->weapon
.L47:
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:116: 		bu->canCounter = FALSE;
	strb	r3, [r7]	@ tmp212, bu_39(D)->canCounter
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:117: 		break;
	b	.L27		@
.L31:
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:136: 			bu->weaponType = ITYPE_ANIMA;
	movs	r3, #5	@ tmp262,
.L48:
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:144: 			bu->weaponType = ITYPE_DARK;
	strb	r3, [r4]	@ tmp272, bu_39(D)->weaponType
.L29:
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:152: 	ModularCheckCanCounter(bu);
	movs	r0, r5	@, bu
	ldr	r3, .L49+28	@ tmp274,
	bl	.L19		@
.L20:
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:153: }
	@ sp needed	@
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L30:
@ MagicSystem/WpnEqpSystem/SetupWeapon/NewSetupWeapon.c:144: 			bu->weaponType = ITYPE_DARK;
	movs	r3, #7	@ tmp272,
	b	.L48		@
.L50:
	.align	2
.L49:
	.word	GetUnitEquippedWeaponSlot
	.word	GetItemAttributes
	.word	GetItemType
	.word	SetWpnEqp
	.word	gBattleStats
	.word	GetItemIndex
	.word	GetBallistaItemAt
	.word	ModularCheckCanCounter
	.size	newSetBattleUnitWeapon, .-newSetBattleUnitWeapon
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L19:
	bx	r3
