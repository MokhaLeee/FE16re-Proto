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
	.file	"BattleToUnit.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	BattleToUnitVanilla_WpnExcept
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	BattleToUnitVanilla_WpnExcept, %function
BattleToUnitVanilla_WpnExcept:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:18: 	unit->level = bu->unit.level;
	movs	r3, #8	@ _1,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:17: void BattleToUnitVanilla_WpnExcept(Unit* unit, BattleUnit* bu){
	push	{r4, r5, r6, lr}	@
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:18: 	unit->level = bu->unit.level;
	ldrsb	r3, [r1, r3]	@ _1,* _1
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:18: 	unit->level = bu->unit.level;
	strb	r3, [r0, #8]	@ _1, unit_62(D)->level
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:19: 	unit->exp 	= bu->unit.exp;
	ldrb	r3, [r1, #9]	@ _2,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:19: 	unit->exp 	= bu->unit.exp;
	strb	r3, [r0, #9]	@ _2, unit_62(D)->exp
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:20: 	unit->curHP = bu->unit.curHP;
	movs	r3, #19	@ _3,
	ldrsb	r3, [r1, r3]	@ _3,* _3
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:20: 	unit->curHP = bu->unit.curHP;
	strb	r3, [r0, #19]	@ _3, unit_62(D)->curHP
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:21: 	unit->state = bu->unit.state;
	ldr	r2, [r1, #12]	@ _4, bu_61(D)->unit.state
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:17: void BattleToUnitVanilla_WpnExcept(Unit* unit, BattleUnit* bu){
	movs	r5, r1	@ bu, tmp277
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:21: 	unit->state = bu->unit.state;
	str	r2, [r0, #12]	@ _4, unit_62(D)->state
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:24: 	*sStatusBufferMaybe &= ( (unit->state>>0x11)&0x3 );
	ldr	r1, .L4	@ tmp176,
	ldr	r3, [r1]	@ MEM[(u32 *)50344032B], MEM[(u32 *)50344032B]
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:24: 	*sStatusBufferMaybe &= ( (unit->state>>0x11)&0x3 );
	lsrs	r2, r2, #17	@ tmp178, _4,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:24: 	*sStatusBufferMaybe &= ( (unit->state>>0x11)&0x3 );
	ands	r3, r2	@ tmp179, tmp178
	movs	r2, #3	@ tmp182,
	ands	r3, r2	@ tmp181, tmp182
	str	r3, [r1]	@ tmp181, MEM[(u32 *)50344032B]
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:25: 	if( (bu->statusOut >0)|(0==bu->statusOut) )
	movs	r1, #111	@ _9,
	ldrsb	r1, [r5, r1]	@ _9,* _9
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:17: void BattleToUnitVanilla_WpnExcept(Unit* unit, BattleUnit* bu){
	movs	r4, r0	@ unit, tmp276
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:25: 	if( (bu->statusOut >0)|(0==bu->statusOut) )
	cmp	r1, #0	@ _9,
	blt	.L2		@,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:26: 		SetUnitStatus(unit,bu->statusOut );
	ldr	r3, .L4+4	@ tmp189,
	bl	.L6		@
.L2:
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:29: 	unit->maxHP	+=	bu->changeHP;
	movs	r2, r5	@ tmp192, bu
	adds	r2, r2, #115	@ tmp192,
	ldrb	r2, [r2]	@ tmp196,
	ldrb	r3, [r4, #18]	@ tmp194,
	adds	r3, r3, r2	@ tmp197, tmp194, tmp196
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:30: 	unit->pow	+=	bu->changePow;
	movs	r2, r5	@ tmp201, bu
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:29: 	unit->maxHP	+=	bu->changeHP;
	strb	r3, [r4, #18]	@ tmp197, unit_62(D)->maxHP
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:30: 	unit->pow	+=	bu->changePow;
	adds	r2, r2, #116	@ tmp201,
	ldrb	r2, [r2]	@ tmp205,
	ldrb	r3, [r4, #20]	@ tmp203,
	adds	r3, r3, r2	@ tmp206, tmp203, tmp205
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:31: 	unit->skl	+=	bu->changeSkl;
	movs	r2, r5	@ tmp210, bu
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:30: 	unit->pow	+=	bu->changePow;
	strb	r3, [r4, #20]	@ tmp206, unit_62(D)->pow
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:31: 	unit->skl	+=	bu->changeSkl;
	adds	r2, r2, #117	@ tmp210,
	ldrb	r2, [r2]	@ tmp214,
	ldrb	r3, [r4, #21]	@ tmp212,
	adds	r3, r3, r2	@ tmp215, tmp212, tmp214
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:32: 	unit->spd	+=	bu->changeSpd;
	movs	r2, r5	@ tmp219, bu
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:31: 	unit->skl	+=	bu->changeSkl;
	strb	r3, [r4, #21]	@ tmp215, unit_62(D)->skl
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:32: 	unit->spd	+=	bu->changeSpd;
	adds	r2, r2, #118	@ tmp219,
	ldrb	r2, [r2]	@ tmp223,
	ldrb	r3, [r4, #22]	@ tmp221,
	adds	r3, r3, r2	@ tmp224, tmp221, tmp223
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:33: 	unit->def	+=	bu->changeDef;
	movs	r2, r5	@ tmp228, bu
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:32: 	unit->spd	+=	bu->changeSpd;
	strb	r3, [r4, #22]	@ tmp224, unit_62(D)->spd
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:33: 	unit->def	+=	bu->changeDef;
	adds	r2, r2, #119	@ tmp228,
	ldrb	r2, [r2]	@ tmp232,
	ldrb	r3, [r4, #23]	@ tmp230,
	adds	r3, r3, r2	@ tmp233, tmp230, tmp232
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:34: 	unit->res	+=	bu->changeRes;
	movs	r2, r5	@ tmp237, bu
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:33: 	unit->def	+=	bu->changeDef;
	strb	r3, [r4, #23]	@ tmp233, unit_62(D)->def
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:34: 	unit->res	+=	bu->changeRes;
	adds	r2, r2, #120	@ tmp237,
	ldrb	r2, [r2]	@ tmp241,
	ldrb	r3, [r4, #24]	@ tmp239,
	adds	r3, r3, r2	@ tmp242, tmp239, tmp241
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:35: 	unit->lck	+=	bu->changeLck;
	movs	r2, r5	@ tmp246, bu
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:34: 	unit->res	+=	bu->changeRes;
	strb	r3, [r4, #24]	@ tmp242, unit_62(D)->res
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:35: 	unit->lck	+=	bu->changeLck;
	adds	r2, r2, #121	@ tmp246,
	ldrb	r2, [r2]	@ tmp250,
	ldrb	r3, [r4, #25]	@ tmp248,
	adds	r3, r3, r2	@ tmp251, tmp248, tmp250
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:36: 	UnitCheckStatCaps(unit);
	movs	r0, r4	@, unit
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:35: 	unit->lck	+=	bu->changeLck;
	strb	r3, [r4, #25]	@ tmp251, unit_62(D)->lck
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:36: 	UnitCheckStatCaps(unit);
	ldr	r3, .L4+8	@ tmp253,
	bl	.L6		@
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:39: 	s8 iWpnExp = GetBattleUnitUpdatedWeaponExp(bu);
	ldr	r3, .L4+12	@ tmp254,
	movs	r0, r5	@, bu
	bl	.L6		@
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:40: 	if( iWpnExp>0 )
	lsls	r3, r0, #24	@ tmp260, tmp255,
	cmp	r3, #0	@ tmp260,
	ble	.L1		@,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:41: 		unit->ranks[bu->weaponType] += iWpnExp;
	adds	r5, r5, #80	@ tmp263,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:41: 		unit->ranks[bu->weaponType] += iWpnExp;
	ldrb	r3, [r5]	@ _55,
	adds	r4, r4, r3	@ tmp264, unit, _55
	adds	r4, r4, #40	@ tmp267,
	ldrb	r3, [r4]	@ tmp273, *unit_62(D)
	adds	r0, r0, r3	@ tmp274, tmp255, tmp273
	strb	r0, [r4]	@ tmp274, unit_62(D)->ranks[_55]
.L1:
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:44: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L5:
	.align	2
.L4:
	.word	50344032
	.word	SetUnitStatus
	.word	UnitCheckStatCaps
	.word	GetBattleUnitUpdatedWeaponExp
	.size	BattleToUnitVanilla_WpnExcept, .-BattleToUnitVanilla_WpnExcept
	.align	1
	.global	BattleToUnitSaveMagWpn
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	BattleToUnitSaveMagWpn, %function
BattleToUnitSaveMagWpn:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:47: 	u16 sItem = bu->weapon;
	movs	r3, r1	@ tmp129, bu
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:46: void BattleToUnitSaveMagWpn(Unit* unit, BattleUnit* bu){
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:47: 	u16 sItem = bu->weapon;
	adds	r3, r3, #72	@ tmp129,
	str	r3, [sp, #4]	@ tmp129, %sfp
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:46: void BattleToUnitSaveMagWpn(Unit* unit, BattleUnit* bu){
	movs	r5, r0	@ unit, tmp157
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:47: 	u16 sItem = bu->weapon;
	ldrh	r7, [r3]	@ sItem,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:48: 	UnitExt* ext = GetUnitExtByUnit((Unit*)bu);
	movs	r0, r1	@, bu
	ldr	r3, .L12	@ tmp130,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:46: void BattleToUnitSaveMagWpn(Unit* unit, BattleUnit* bu){
	movs	r4, r1	@ bu, tmp158
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:48: 	UnitExt* ext = GetUnitExtByUnit((Unit*)bu);
	bl	.L6		@
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:49: 	if( 0 == ITEM_USE(bu->weapon) )	//WpnAfter
	ldr	r3, [sp, #4]	@ tmp129, %sfp
	ldrh	r3, [r3]	@ tmp134,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:48: 	UnitExt* ext = GetUnitExtByUnit((Unit*)bu);
	movs	r6, r0	@ ext, tmp159
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:49: 	if( 0 == ITEM_USE(bu->weapon) )	//WpnAfter
	lsrs	r3, r3, #8	@ tmp137, tmp134,
	bne	.L8		@,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:50: 		sItem = ITEM_ID(bu->weaponBefore);
	movs	r3, r4	@ tmp141, bu
	adds	r3, r3, #74	@ tmp141,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:50: 		sItem = ITEM_ID(bu->weaponBefore);
	ldrb	r7, [r3]	@ sItem,
.L8:
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:53: 	if( (NULL!=ext) && (1==isUnitAlly(unit)) )
	cmp	r6, #0	@ ext,
	bne	.L9		@,
.L11:
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:60: 	unit->items[4] = bu->unit.items[4];
	ldrh	r3, [r4, #38]	@ _6,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:60: 	unit->items[4] = bu->unit.items[4];
	strh	r3, [r5, #38]	@ _6, unit_20(D)->items[4]
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:61: 	unit->items[3] = bu->unit.items[3];
	ldrh	r3, [r4, #36]	@ _7,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:61: 	unit->items[3] = bu->unit.items[3];
	strh	r3, [r5, #36]	@ _7, unit_20(D)->items[3]
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:62: 	unit->items[2] = bu->unit.items[2];
	ldrh	r3, [r4, #34]	@ _8,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:62: 	unit->items[2] = bu->unit.items[2];
	strh	r3, [r5, #34]	@ _8, unit_20(D)->items[2]
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:63: 	unit->items[1] = bu->unit.items[1];
	ldrh	r3, [r4, #32]	@ _9,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:63: 	unit->items[1] = bu->unit.items[1];
	strh	r3, [r5, #32]	@ _9, unit_20(D)->items[1]
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:64: 	unit->items[0] = bu->unit.items[0];
	ldrh	r3, [r4, #30]	@ _10,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:64: 	unit->items[0] = bu->unit.items[0];
	strh	r3, [r5, #30]	@ _10, unit_20(D)->items[0]
.L7:
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:66: }
	@ sp needed	@
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L9:
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:9: 	if( unit->index < 0x40 )
	movs	r3, #11	@ tmp154,
	ldrsb	r3, [r5, r3]	@ tmp154,
	cmp	r3, #63	@ tmp154,
	bgt	.L11		@,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:55: 		SetWpnEqpForce(unit,sItem);
	movs	r1, r7	@, sItem
	ldr	r3, .L12+4	@ tmp155,
	movs	r0, r5	@, unit
	bl	.L6		@
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:56: 		if( TRUE == SaveEqpToMag(ext,sItem) )	//如果是魔法就不用再保存了
	movs	r1, r7	@, sItem
	movs	r0, r6	@, ext
	ldr	r3, .L12+8	@ tmp156,
	bl	.L6		@
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:56: 		if( TRUE == SaveEqpToMag(ext,sItem) )	//如果是魔法就不用再保存了
	cmp	r0, #1	@ tmp160,
	bne	.L11		@,
	b	.L7		@
.L13:
	.align	2
.L12:
	.word	GetUnitExtByUnit
	.word	SetWpnEqpForce
	.word	SaveEqpToMag
	.size	BattleToUnitSaveMagWpn, .-BattleToUnitSaveMagWpn
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L6:
	bx	r3
