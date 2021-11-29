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
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:18: 	Object->level 	= ObjectBattle->unit.level;
	movs	r3, #8	@ _1,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:17: void BattleToUnitVanilla_WpnExcept(Unit* Object, BattleUnit* ObjectBattle){
	push	{r4, r5, r6, lr}	@
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:18: 	Object->level 	= ObjectBattle->unit.level;
	ldrsb	r3, [r1, r3]	@ _1,* _1
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:18: 	Object->level 	= ObjectBattle->unit.level;
	strb	r3, [r0, #8]	@ _1, Object_61(D)->level
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:19: 	Object->exp 	= ObjectBattle->unit.exp;
	ldrb	r3, [r1, #9]	@ _2,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:19: 	Object->exp 	= ObjectBattle->unit.exp;
	strb	r3, [r0, #9]	@ _2, Object_61(D)->exp
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:20: 	Object->curHP 	= ObjectBattle->unit.curHP;
	movs	r3, #19	@ _3,
	ldrsb	r3, [r1, r3]	@ _3,* _3
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:20: 	Object->curHP 	= ObjectBattle->unit.curHP;
	strb	r3, [r0, #19]	@ _3, Object_61(D)->curHP
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:21: 	Object->state 	= ObjectBattle->unit.state;
	ldr	r2, [r1, #12]	@ _4, ObjectBattle_60(D)->unit.state
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:17: void BattleToUnitVanilla_WpnExcept(Unit* Object, BattleUnit* ObjectBattle){
	movs	r5, r1	@ ObjectBattle, tmp272
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:21: 	Object->state 	= ObjectBattle->unit.state;
	str	r2, [r0, #12]	@ _4, Object_61(D)->state
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:24: 	*sStatusBufferMaybe &= ( (Object->state>>0x11)&0x3 );
	ldr	r1, .L7	@ tmp175,
	ldr	r3, [r1]	@ MEM[(u32 *)50344032B], MEM[(u32 *)50344032B]
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:24: 	*sStatusBufferMaybe &= ( (Object->state>>0x11)&0x3 );
	lsrs	r2, r2, #17	@ tmp177, _4,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:24: 	*sStatusBufferMaybe &= ( (Object->state>>0x11)&0x3 );
	ands	r3, r2	@ tmp178, tmp177
	movs	r2, #3	@ tmp181,
	ands	r3, r2	@ tmp180, tmp181
	str	r3, [r1]	@ tmp180, MEM[(u32 *)50344032B]
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:25: 	if( ObjectBattle->statusOut >= 0 )
	movs	r1, #111	@ _9,
	ldrsb	r1, [r5, r1]	@ _9,* _9
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:17: void BattleToUnitVanilla_WpnExcept(Unit* Object, BattleUnit* ObjectBattle){
	movs	r4, r0	@ Object, tmp271
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:25: 	if( ObjectBattle->statusOut >= 0 )
	cmp	r1, #0	@ _9,
	blt	.L2		@,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:26: 		SetUnitStatus(Object,ObjectBattle->statusOut );
	ldr	r3, .L7+4	@ tmp188,
	bl	.L9		@
.L2:
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:29: 	Object->maxHP	+=	ObjectBattle->changeHP;
	movs	r2, r5	@ tmp191, ObjectBattle
	adds	r2, r2, #115	@ tmp191,
	ldrb	r2, [r2]	@ tmp195,
	ldrb	r3, [r4, #18]	@ tmp193,
	adds	r3, r3, r2	@ tmp196, tmp193, tmp195
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:30: 	Object->pow		+=	ObjectBattle->changePow;
	movs	r2, r5	@ tmp200, ObjectBattle
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:29: 	Object->maxHP	+=	ObjectBattle->changeHP;
	strb	r3, [r4, #18]	@ tmp196, Object_61(D)->maxHP
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:30: 	Object->pow		+=	ObjectBattle->changePow;
	adds	r2, r2, #116	@ tmp200,
	ldrb	r2, [r2]	@ tmp204,
	ldrb	r3, [r4, #20]	@ tmp202,
	adds	r3, r3, r2	@ tmp205, tmp202, tmp204
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:31: 	Object->skl		+=	ObjectBattle->changeSkl;
	movs	r2, r5	@ tmp209, ObjectBattle
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:30: 	Object->pow		+=	ObjectBattle->changePow;
	strb	r3, [r4, #20]	@ tmp205, Object_61(D)->pow
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:31: 	Object->skl		+=	ObjectBattle->changeSkl;
	adds	r2, r2, #117	@ tmp209,
	ldrb	r2, [r2]	@ tmp213,
	ldrb	r3, [r4, #21]	@ tmp211,
	adds	r3, r3, r2	@ tmp214, tmp211, tmp213
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:32: 	Object->spd		+=	ObjectBattle->changeSpd;
	movs	r2, r5	@ tmp218, ObjectBattle
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:31: 	Object->skl		+=	ObjectBattle->changeSkl;
	strb	r3, [r4, #21]	@ tmp214, Object_61(D)->skl
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:32: 	Object->spd		+=	ObjectBattle->changeSpd;
	adds	r2, r2, #118	@ tmp218,
	ldrb	r2, [r2]	@ tmp222,
	ldrb	r3, [r4, #22]	@ tmp220,
	adds	r3, r3, r2	@ tmp223, tmp220, tmp222
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:33: 	Object->def		+=	ObjectBattle->changeDef;
	movs	r2, r5	@ tmp227, ObjectBattle
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:32: 	Object->spd		+=	ObjectBattle->changeSpd;
	strb	r3, [r4, #22]	@ tmp223, Object_61(D)->spd
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:33: 	Object->def		+=	ObjectBattle->changeDef;
	adds	r2, r2, #119	@ tmp227,
	ldrb	r2, [r2]	@ tmp231,
	ldrb	r3, [r4, #23]	@ tmp229,
	adds	r3, r3, r2	@ tmp232, tmp229, tmp231
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:34: 	Object->res		+=	ObjectBattle->changeRes;
	movs	r2, r5	@ tmp236, ObjectBattle
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:33: 	Object->def		+=	ObjectBattle->changeDef;
	strb	r3, [r4, #23]	@ tmp232, Object_61(D)->def
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:34: 	Object->res		+=	ObjectBattle->changeRes;
	adds	r2, r2, #120	@ tmp236,
	ldrb	r2, [r2]	@ tmp240,
	ldrb	r3, [r4, #24]	@ tmp238,
	adds	r3, r3, r2	@ tmp241, tmp238, tmp240
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:35: 	Object->lck		+=	ObjectBattle->changeLck;
	movs	r2, r5	@ tmp245, ObjectBattle
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:34: 	Object->res		+=	ObjectBattle->changeRes;
	strb	r3, [r4, #24]	@ tmp241, Object_61(D)->res
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:35: 	Object->lck		+=	ObjectBattle->changeLck;
	adds	r2, r2, #121	@ tmp245,
	ldrb	r3, [r4, #25]	@ tmp247,
	ldrb	r2, [r2]	@ tmp249,
	adds	r3, r3, r2	@ tmp250, tmp247, tmp249
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:36: 	UnitCheckStatCaps(Object);
	movs	r0, r4	@, Object
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:35: 	Object->lck		+=	ObjectBattle->changeLck;
	strb	r3, [r4, #25]	@ tmp250, Object_61(D)->lck
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:36: 	UnitCheckStatCaps(Object);
	ldr	r3, .L7+8	@ tmp252,
	bl	.L9		@
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:39: 	u8 iWpnExp = GetBattleUnitUpdatedWeaponExp(ObjectBattle);
	movs	r0, r5	@, ObjectBattle
	ldr	r3, .L7+12	@ tmp253,
	bl	.L9		@
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:40: 	if( iWpnExp>0 )
	cmp	r0, #0	@ tmp254,
	beq	.L1		@,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:41: 		Object->ranks[ObjectBattle->weaponType] += iWpnExp;
	adds	r5, r5, #80	@ tmp258,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:41: 		Object->ranks[ObjectBattle->weaponType] += iWpnExp;
	ldrb	r3, [r5]	@ _54,
	adds	r4, r4, r3	@ tmp259, Object, _54
	adds	r4, r4, #40	@ tmp262,
	ldrb	r3, [r4]	@ tmp268, *Object_61(D)
	adds	r0, r0, r3	@ tmp269, tmp254, tmp268
	strb	r0, [r4]	@ tmp269, Object_61(D)->ranks[_54]
.L1:
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:44: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L8:
	.align	2
.L7:
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
	ldr	r3, .L15	@ tmp130,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:46: void BattleToUnitSaveMagWpn(Unit* unit, BattleUnit* bu){
	movs	r4, r1	@ bu, tmp158
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:48: 	UnitExt* ext = GetUnitExtByUnit((Unit*)bu);
	bl	.L9		@
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:49: 	if( 0 == ITEM_USE(bu->weapon) )	//WpnAfter
	ldr	r3, [sp, #4]	@ tmp129, %sfp
	ldrh	r3, [r3]	@ tmp134,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:48: 	UnitExt* ext = GetUnitExtByUnit((Unit*)bu);
	movs	r6, r0	@ ext, tmp159
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:49: 	if( 0 == ITEM_USE(bu->weapon) )	//WpnAfter
	lsrs	r3, r3, #8	@ tmp137, tmp134,
	bne	.L11		@,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:50: 		sItem = ITEM_ID(bu->weaponBefore);
	movs	r3, r4	@ tmp141, bu
	adds	r3, r3, #74	@ tmp141,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:50: 		sItem = ITEM_ID(bu->weaponBefore);
	ldrb	r7, [r3]	@ sItem,
.L11:
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:53: 	if( (NULL!=ext) && (1==isUnitAlly(unit)) )
	cmp	r6, #0	@ ext,
	bne	.L12		@,
.L14:
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
.L10:
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:66: }
	@ sp needed	@
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L12:
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:9: 	if( unit->index < 0x40 )
	movs	r3, #11	@ tmp154,
	ldrsb	r3, [r5, r3]	@ tmp154,
	cmp	r3, #63	@ tmp154,
	bgt	.L14		@,
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:55: 		SetWpnEqp(unit,sItem);
	movs	r1, r7	@, sItem
	ldr	r3, .L15+4	@ tmp155,
	movs	r0, r5	@, unit
	bl	.L9		@
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:56: 		if( TRUE == SaveEqpToMag(ext,sItem) )	//如果是魔法就不用再保存了
	movs	r1, r7	@, sItem
	movs	r0, r6	@, ext
	ldr	r3, .L15+8	@ tmp156,
	bl	.L9		@
@ MagicSystem/WpnEqpSystem/BattleToUnit/BattleToUnit.c:56: 		if( TRUE == SaveEqpToMag(ext,sItem) )	//如果是魔法就不用再保存了
	cmp	r0, #1	@ tmp160,
	bne	.L14		@,
	b	.L10		@
.L16:
	.align	2
.L15:
	.word	GetUnitExtByUnit
	.word	SetWpnEqp
	.word	SaveEqpToMag
	.size	BattleToUnitSaveMagWpn, .-BattleToUnitSaveMagWpn
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L9:
	bx	r3
