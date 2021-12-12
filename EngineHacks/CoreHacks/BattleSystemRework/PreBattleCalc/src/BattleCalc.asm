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
	.file	"BattleCalc.c"
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
	.type	Bts_CalcLoop, %function
Bts_CalcLoop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:7: static int Bts_CalcLoop(BattleUnit* atk,  BattleUnit* def, BTSfunc* table){
	movs	r6, r0	@ atk, tmp123
	movs	r7, r1	@ def, tmp124
	movs	r4, r2	@ table, tmp125
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:8: 	int result = 0;
	movs	r5, #0	@ <retval>,
.L2:
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:10: 	while(*table)
	ldr	r3, [r4]	@ _3, MEM[(s16 (*BTSfunc) (struct BattleUnit *, struct BattleUnit *) *)table_4]
	cmp	r3, #0	@ _3,
	bne	.L3		@,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:13: }
	@ sp needed	@
	movs	r0, r5	@, <retval>
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L3:
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:11: 		result += (*table++)(atk,def);
	movs	r1, r7	@, def
	movs	r0, r6	@, atk
	bl	.L4		@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:11: 		result += (*table++)(atk,def);
	adds	r4, r4, #4	@ table,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:11: 		result += (*table++)(atk,def);
	adds	r5, r5, r0	@ <retval>, <retval>, tmp126
	b	.L2		@
	.size	Bts_CalcLoop, .-Bts_CalcLoop
	.align	1
	.global	Calc_FillPreBattleStats
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Calc_FillPreBattleStats, %function
Calc_FillPreBattleStats:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:27: void Calc_FillPreBattleStats(BattleUnit* attacker, BattleUnit* defender){
	movs	r5, r0	@ attacker, tmp118
	movs	r6, r1	@ defender, tmp119
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:28: 	BTCLoopFunc* it = gpBTPreLoopTable;
	ldr	r3, .L8	@ tmp117,
	ldr	r4, [r3]	@ it, gpBTPreLoopTable
.L6:
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:29: 	while(*it)
	ldr	r3, [r4]	@ _1, MEM[(void (*BTCLoopFunc) (struct BattleUnit *, struct BattleUnit *) *)it_2]
	cmp	r3, #0	@ _1,
	bne	.L7		@,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:31: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L7:
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:30: 		(*it++)( attacker, defender);
	movs	r1, r6	@, defender
	movs	r0, r5	@, attacker
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:30: 		(*it++)( attacker, defender);
	adds	r4, r4, #4	@ it,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:30: 		(*it++)( attacker, defender);
	bl	.L4		@
	b	.L6		@
.L9:
	.align	2
.L8:
	.word	gpBTPreLoopTable
	.size	Calc_FillPreBattleStats, .-Calc_FillPreBattleStats
	.align	1
	.global	BC_OnInit
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	BC_OnInit, %function
BC_OnInit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:43: 	attacker->battleAttack = 0;
	movs	r2, r0	@ tmp117, attacker
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:53: }
	@ sp needed	@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:43: 	attacker->battleAttack = 0;
	movs	r3, #0	@ tmp118,
	adds	r2, r2, #90	@ tmp117,
	strh	r3, [r2]	@ tmp118, attacker_2(D)->battleAttack
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:44: 	attacker->battleDefense = 0;
	str	r3, [r0, #92]	@ tmp118, MEM <unsigned int> [(short int *)attacker_2(D) + 92B]
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:46: 	attacker->battleHitRate = 0;
	str	r3, [r0, #96]	@ tmp118, MEM <unsigned int> [(short int *)attacker_2(D) + 96B]
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:49: 	attacker->battleDodgeRate = 0;
	adds	r0, r0, #104	@ tmp129,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:48: 	attacker->battleCritRate = 0;
	strh	r3, [r2, #12]	@ tmp118, attacker_2(D)->battleCritRate
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:49: 	attacker->battleDodgeRate = 0;
	strh	r3, [r0]	@ tmp118, attacker_2(D)->battleDodgeRate
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:53: }
	bx	lr
	.size	BC_OnInit, .-BC_OnInit
	.align	1
	.global	BC_Atk
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	BC_Atk, %function
BC_Atk:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:18: 	return bu->weaponAttributes & isMag;
	movs	r3, #70	@ tmp149,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:56: void BC_Atk(BattleUnit* attacker, BattleUnit* defender){
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:18: 	return bu->weaponAttributes & isMag;
	ldr	r2, [r0, #76]	@ attacker_30(D)->weaponAttributes, attacker_30(D)->weaponAttributes
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:56: void BC_Atk(BattleUnit* attacker, BattleUnit* defender){
	movs	r7, r0	@ attacker, tmp201
	movs	r5, r1	@ defender, tmp202
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:61: 	if( FALSE == CheckAttackRes(attacker) )
	tst	r2, r3	@ attacker_30(D)->weaponAttributes, tmp149
	bne	.L12		@,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:63: 		base = attacker->unit.pow;
	movs	r3, #20	@ base,
	ldrsb	r3, [r0, r3]	@ base,* base
	str	r3, [sp]	@ base, %sfp
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:64: 		bonus = Bts_CalcLoop(attacker,defender,gpBuStrCalcTable);	// Mod
	ldr	r3, .L20	@ tmp152,
.L19:
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:69: 		bonus = Bts_CalcLoop(attacker,defender,gpBuMagCalcTable);
	ldr	r2, [r3]	@,
	movs	r1, r5	@, defender
	movs	r0, r7	@, attacker
	bl	Bts_CalcLoop		@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:72: 	wpn = attacker->weapon;
	movs	r3, r7	@ tmp159, attacker
	adds	r3, r3, #72	@ tmp159,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:73: 	bonus += GetItemMight(wpn) + attacker->wTriangleDmgBonus;
	ldrh	r6, [r3]	@ _8,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:69: 		bonus = Bts_CalcLoop(attacker,defender,gpBuMagCalcTable);
	lsls	r4, r0, #16	@ bonus, tmp205,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:73: 	bonus += GetItemMight(wpn) + attacker->wTriangleDmgBonus;
	ldr	r3, .L20+4	@ tmp160,
	movs	r0, r6	@, _8
	bl	.L4		@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:73: 	bonus += GetItemMight(wpn) + attacker->wTriangleDmgBonus;
	movs	r3, r7	@ tmp163, attacker
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:76: 	bonus += attacker->battleAttack;
	adds	r7, r7, #90	@ attacker,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:73: 	bonus += GetItemMight(wpn) + attacker->wTriangleDmgBonus;
	adds	r3, r3, #84	@ tmp163,
	ldrb	r3, [r3]	@ tmp164,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:76: 	bonus += attacker->battleAttack;
	str	r7, [sp, #4]	@ attacker, %sfp
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:73: 	bonus += GetItemMight(wpn) + attacker->wTriangleDmgBonus;
	lsls	r3, r3, #24	@ tmp164, tmp164,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:76: 	bonus += attacker->battleAttack;
	ldrh	r2, [r7]	@ tmp170,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:69: 		bonus = Bts_CalcLoop(attacker,defender,gpBuMagCalcTable);
	asrs	r4, r4, #16	@ bonus, bonus,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:73: 	bonus += GetItemMight(wpn) + attacker->wTriangleDmgBonus;
	asrs	r3, r3, #24	@ tmp164, tmp164,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:73: 	bonus += GetItemMight(wpn) + attacker->wTriangleDmgBonus;
	adds	r3, r3, r0	@ tmp165, tmp164, tmp206
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:76: 	bonus += attacker->battleAttack;
	adds	r2, r2, r4	@ tmp172, tmp170, bonus
	adds	r3, r3, r2	@ tmp175, tmp165, tmp172
	lsls	r0, r3, #16	@ _17, tmp175,
	lsrs	r0, r0, #16	@ _17, _17,
	adds	r7, r0, #0	@ _17, _17
	lsls	r0, r0, #16	@ _17, _17,
	asrs	r0, r0, #16	@ _17, _17,
	bpl	.L14		@,
	movs	r7, #0	@ _17,
.L14:
	lsls	r4, r7, #16	@ bonus, _17,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:80: 	if( IsItemEffectiveAgainst(wpn,defender) )
	movs	r1, r5	@, defender
	movs	r0, r6	@, _8
	ldr	r3, .L20+8	@ tmp182,
	asrs	r4, r4, #16	@ bonus, bonus,
	bl	.L4		@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:80: 	if( IsItemEffectiveAgainst(wpn,defender) )
	cmp	r0, #0	@ tmp207,
	beq	.L15		@,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:81: 		bonus = bonus*3;
	movs	r4, #3	@ tmp184,
	muls	r4, r7	@ tmp186, _17
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:81: 		bonus = bonus*3;
	lsls	r4, r4, #16	@ bonus, tmp186,
	asrs	r4, r4, #16	@ bonus, bonus,
.L15:
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:83: 	attacker->battleAttack = base + bonus;
	ldr	r3, [sp]	@ base, %sfp
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:85: }
	@ sp needed	@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:83: 	attacker->battleAttack = base + bonus;
	adds	r4, r3, r4	@ tmp189, base, bonus
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:83: 	attacker->battleAttack = base + bonus;
	ldr	r3, [sp, #4]	@ tmp168, %sfp
	strh	r4, [r3]	@ tmp189, attacker_30(D)->battleAttack
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:85: }
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L12:
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:68: 		base = *GetMagAt((Unit*)attacker);
	ldr	r3, .L20+12	@ tmp153,
	bl	.L4		@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:68: 		base = *GetMagAt((Unit*)attacker);
	movs	r3, #0	@ base,
	ldrsb	r3, [r0, r3]	@ base,* base
	str	r3, [sp]	@ base, %sfp
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:69: 		bonus = Bts_CalcLoop(attacker,defender,gpBuMagCalcTable);
	ldr	r3, .L20+16	@ tmp156,
	b	.L19		@
.L21:
	.align	2
.L20:
	.word	gpBuStrCalcTable
	.word	GetItemMight
	.word	IsItemEffectiveAgainst
	.word	GetMagAt
	.word	gpBuMagCalcTable
	.size	BC_Atk, .-BC_Atk
	.global	__aeabi_idiv
	.align	1
	.global	BC_ASpd
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	BC_ASpd, %function
BC_ASpd:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:91: 	s8 as = attacker->battleSpeed;
	movs	r6, r0	@ tmp141, attacker
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:89: void BC_ASpd(BattleUnit* attacker, BattleUnit* defender){
	str	r1, [sp, #4]	@ tmp198, %sfp
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:91: 	s8 as = attacker->battleSpeed;
	adds	r6, r6, #94	@ tmp141,
	movs	r2, #0	@ tmp210,
	ldrsh	r3, [r6, r2]	@ _1, tmp141, tmp210
	str	r3, [sp]	@ _1, %sfp
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:92: 	s8 wt = GetItemWeight( attacker->weapon );
	movs	r3, r0	@ tmp144, attacker
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:89: void BC_ASpd(BattleUnit* attacker, BattleUnit* defender){
	movs	r5, r0	@ attacker, tmp197
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:92: 	s8 wt = GetItemWeight( attacker->weapon );
	adds	r3, r3, #72	@ tmp144,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:93: 	s8 strFloor = attacker->unit.pow/5;
	movs	r4, #20	@ _5,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:92: 	s8 wt = GetItemWeight( attacker->weapon );
	ldrh	r0, [r3]	@ tmp145,
	ldr	r3, .L27	@ tmp146,
	bl	.L4		@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:93: 	s8 strFloor = attacker->unit.pow/5;
	ldrsb	r4, [r5, r4]	@ _5,* _5
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:92: 	s8 wt = GetItemWeight( attacker->weapon );
	movs	r7, r0	@ _4, tmp199
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:93: 	s8 strFloor = attacker->unit.pow/5;
	ldr	r3, .L27+4	@ tmp150,
	movs	r1, #5	@,
	movs	r0, r4	@, _5
	bl	.L4		@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:95: 	if( strFloor < wt )
	lsls	r3, r7, #24	@ tmp153, _4,
	lsls	r0, r0, #24	@ tmp155, tmp200,
	cmp	r0, r3	@ tmp155, tmp153
	blt	.L23		@,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:91: 	s8 as = attacker->battleSpeed;
	ldr	r3, [sp]	@ _1, %sfp
	lsls	r4, r3, #24	@ tmp156, _1,
.L26:
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:99: 	as += Bts_CalcLoop(attacker,defender,gpBuASCalcTable);
	ldr	r3, .L27+8	@ tmp164,
	movs	r0, r5	@, attacker
	ldr	r2, [r3]	@, gpBuASCalcTable
	ldr	r1, [sp, #4]	@, %sfp
	bl	Bts_CalcLoop		@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:96: 		as -= wt - attacker->unit.pow;
	asrs	r4, r4, #24	@ as, tmp163,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:99: 	as += Bts_CalcLoop(attacker,defender,gpBuASCalcTable);
	adds	r4, r0, r4	@ tmp167, tmp201, as
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:102: 	as += attacker->battleSpeed;
	ldrh	r0, [r6]	@ tmp173,
	adds	r0, r0, r4	@ tmp175, tmp173, tmp167
	lsls	r0, r0, #24	@ _17, tmp175,
	lsrs	r0, r0, #24	@ _17, _17,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:107: 	attacker->battleSpeed = as;
	adds	r3, r0, #0	@ _17, _17
	lsls	r0, r0, #24	@ tmp182, _17,
	bpl	.L25		@,
	movs	r3, #0	@ _17,
.L25:
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:108: }
	@ sp needed	@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:107: 	attacker->battleSpeed = as;
	lsls	r3, r3, #24	@ tmp186, _17,
	asrs	r3, r3, #24	@ tmp185, tmp186,
	strh	r3, [r6]	@ tmp185, attacker_21(D)->battleSpeed
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:108: }
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L23:
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:96: 		as -= wt - attacker->unit.pow;
	ldr	r3, [sp]	@ _1, %sfp
	adds	r4, r4, r3	@ tmp159, _5, _1
	subs	r4, r4, r7	@ tmp162, tmp159, _4
	lsls	r4, r4, #24	@ tmp163, tmp162,
	b	.L26		@
.L28:
	.align	2
.L27:
	.word	GetItemWeight
	.word	__aeabi_idiv
	.word	gpBuASCalcTable
	.size	BC_ASpd, .-BC_ASpd
	.align	1
	.global	BC_Hit
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	BC_Hit, %function
BC_Hit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:18: 	return bu->weaponAttributes & isMag;
	movs	r3, #70	@ tmp141,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:119: 		base = attacker->unit.skl;
	movs	r4, #21	@ pretmp_36,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:18: 	return bu->weaponAttributes & isMag;
	ldr	r2, [r0, #76]	@ attacker_23(D)->weaponAttributes, attacker_23(D)->weaponAttributes
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:113: void BC_Hit(BattleUnit* attacker, BattleUnit* defender){
	movs	r5, r0	@ attacker, tmp182
	movs	r6, r1	@ defender, tmp183
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:119: 		base = attacker->unit.skl;
	ldrsb	r4, [r0, r4]	@ pretmp_36,* pretmp_36
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:118: 	if( FALSE == CheckAttackRes(attacker) )
	tst	r2, r3	@ attacker_23(D)->weaponAttributes, tmp141
	bne	.L30		@,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:119: 		base = attacker->unit.skl;
	lsls	r4, r4, #16	@ base, pretmp_36,
	asrs	r4, r4, #16	@ base, base,
.L31:
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:123: 	bonus = GetItemHit( attacker->weapon );
	movs	r3, r5	@ tmp150, attacker
	adds	r3, r3, #72	@ tmp150,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:123: 	bonus = GetItemHit( attacker->weapon );
	ldrh	r0, [r3]	@ tmp151,
	ldr	r3, .L34	@ tmp152,
	bl	.L4		@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:126: 	hit = base + bonus + Bts_CalcLoop(attacker,defender,gpBuHitCalcTable);
	ldr	r3, .L34+4	@ tmp157,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:126: 	hit = base + bonus + Bts_CalcLoop(attacker,defender,gpBuHitCalcTable);
	adds	r4, r4, r0	@ tmp155, base, tmp184
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:126: 	hit = base + bonus + Bts_CalcLoop(attacker,defender,gpBuHitCalcTable);
	ldr	r2, [r3]	@, gpBuHitCalcTable
	movs	r0, r5	@, attacker
	movs	r1, r6	@, defender
	bl	Bts_CalcLoop		@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:129: 	hit += attacker->battleHitRate;
	adds	r5, r5, #96	@ tmp161,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:129: 	hit += attacker->battleHitRate;
	ldrh	r2, [r5]	@ tmp163,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:126: 	hit = base + bonus + Bts_CalcLoop(attacker,defender,gpBuHitCalcTable);
	lsls	r4, r4, #16	@ _13, tmp155,
	lsrs	r4, r4, #16	@ _13, _13,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:129: 	hit += attacker->battleHitRate;
	adds	r4, r4, r2	@ tmp164, _13, tmp163
	adds	r4, r4, r0	@ tmp167, tmp164, tmp185
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:134: 	attacker->battleHitRate = hit;
	adds	r2, r4, #0	@ tmp158, tmp167
	lsls	r4, r4, #16	@ tmp187, tmp167,
	bpl	.L32		@,
	movs	r2, #0	@ tmp158,
.L32:
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:135: }
	@ sp needed	@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:134: 	attacker->battleHitRate = hit;
	strh	r2, [r5]	@ tmp158, attacker_23(D)->battleHitRate
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:135: }
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L30:
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:121: 		base = ( attacker->unit.skl + attacker->unit.lck )/2;
	movs	r3, #25	@ tmp142,
	ldrsb	r3, [r0, r3]	@ tmp142,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:121: 		base = ( attacker->unit.skl + attacker->unit.lck )/2;
	adds	r3, r3, r4	@ tmp143, tmp142, pretmp_36
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:121: 		base = ( attacker->unit.skl + attacker->unit.lck )/2;
	lsrs	r4, r3, #31	@ tmp145, tmp143,
	adds	r4, r4, r3	@ tmp146, tmp145, tmp143
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:121: 		base = ( attacker->unit.skl + attacker->unit.lck )/2;
	asrs	r4, r4, #1	@ base, tmp146,
	b	.L31		@
.L35:
	.align	2
.L34:
	.word	GetItemHit
	.word	gpBuHitCalcTable
	.size	BC_Hit, .-BC_Hit
	.align	1
	.global	BC_Avo
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	BC_Avo, %function
BC_Avo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:143: 	s8 wt = GetItemWeight( attacker->weapon );
	movs	r3, r0	@ tmp142, attacker
	adds	r3, r3, #72	@ tmp142,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:140: void BC_Avo(BattleUnit* attacker, BattleUnit* defender){
	movs	r6, r0	@ attacker, tmp198
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:143: 	s8 wt = GetItemWeight( attacker->weapon );
	ldrh	r0, [r3]	@ tmp143,
	ldr	r3, .L41	@ tmp144,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:140: void BC_Avo(BattleUnit* attacker, BattleUnit* defender){
	movs	r7, r1	@ defender, tmp199
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:143: 	s8 wt = GetItemWeight( attacker->weapon );
	bl	.L4		@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:143: 	s8 wt = GetItemWeight( attacker->weapon );
	lsls	r4, r0, #24	@ tmp145, tmp200,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:144: 	s8 strFloor = attacker->unit.pow/5;
	movs	r0, #20	@ tmp147,
	ldr	r3, .L41+4	@ tmp150,
	movs	r1, #5	@,
	ldrsb	r0, [r6, r0]	@ tmp147,
	bl	.L4		@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:146: 	base = attacker->unit.spd;
	movs	r3, #22	@ _5,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:144: 	s8 strFloor = attacker->unit.pow/5;
	lsls	r0, r0, #24	@ tmp152, tmp201,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:151: 		debuff = 0;
	movs	r5, #0	@ debuff,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:146: 	base = attacker->unit.spd;
	ldrsb	r3, [r6, r3]	@ _5,* _5
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:143: 	s8 wt = GetItemWeight( attacker->weapon );
	asrs	r4, r4, #24	@ wt, tmp145,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:144: 	s8 strFloor = attacker->unit.pow/5;
	asrs	r0, r0, #24	@ strFloor, tmp152,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:148: 	if( wt > strFloor )
	cmp	r4, r0	@ wt, strFloor
	ble	.L37		@,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:149: 		debuff = wt - strFloor;
	subs	r5, r4, r0	@ debuff, wt, strFloor
.L37:
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:153: 	avo = base - debuff + attacker->terrainAvoid;
	movs	r4, #87	@ tmp160,
	ldrsb	r4, [r6, r4]	@ tmp160,
	adds	r4, r4, r3	@ tmp162, tmp160, _5
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:156: 	avo += Bts_CalcLoop(attacker,defender,gpBuAvoCalcTable);
	ldr	r3, .L41+8	@ tmp164,
	movs	r0, r6	@, attacker
	ldr	r2, [r3]	@, gpBuAvoCalcTable
	movs	r1, r7	@, defender
	bl	Bts_CalcLoop		@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:159: 	avo += attacker->battleAvoidRate;
	adds	r6, r6, #98	@ tmp168,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:159: 	avo += attacker->battleAvoidRate;
	ldrh	r3, [r6]	@ tmp170,
	lsls	r4, r4, #16	@ _34, tmp162,
	lsrs	r4, r4, #16	@ _34, _34,
	adds	r4, r4, r3	@ tmp171, _34, tmp170
	adds	r4, r4, r0	@ tmp174, tmp171, tmp202
	subs	r4, r4, r5	@ tmp177, tmp174, debuff
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:163: 	attacker->battleAvoidRate = avo;
	adds	r3, r4, #0	@ tmp165, tmp177
	lsls	r4, r4, #16	@ tmp204, tmp177,
	bpl	.L38		@,
	movs	r3, #0	@ tmp165,
.L38:
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:164: }
	@ sp needed	@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:163: 	attacker->battleAvoidRate = avo;
	strh	r3, [r6]	@ tmp165, attacker_22(D)->battleAvoidRate
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:164: }
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L42:
	.align	2
.L41:
	.word	GetItemWeight
	.word	__aeabi_idiv
	.word	gpBuAvoCalcTable
	.size	BC_Avo, .-BC_Avo
	.align	1
	.global	BC_Crit
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	BC_Crit, %function
BC_Crit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:172: 		GetItemCrit(attacker->weapon) + 
	movs	r3, r0	@ tmp138, attacker
	adds	r3, r3, #72	@ tmp138,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:169: void BC_Crit(BattleUnit* attacker, BattleUnit* defender){
	movs	r5, r0	@ attacker, tmp177
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:172: 		GetItemCrit(attacker->weapon) + 
	ldrh	r0, [r3]	@ tmp139,
	ldr	r3, .L46	@ tmp140,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:169: void BC_Crit(BattleUnit* attacker, BattleUnit* defender){
	movs	r7, r1	@ defender, tmp178
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:172: 		GetItemCrit(attacker->weapon) + 
	bl	.L4		@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:173: 		(attacker->unit.skl + attacker->unit.lck)/2 +
	movs	r3, #21	@ tmp141,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:173: 		(attacker->unit.skl + attacker->unit.lck)/2 +
	movs	r2, #25	@ tmp142,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:173: 		(attacker->unit.skl + attacker->unit.lck)/2 +
	ldrsb	r3, [r5, r3]	@ tmp141,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:173: 		(attacker->unit.skl + attacker->unit.lck)/2 +
	ldrsb	r2, [r5, r2]	@ tmp142,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:173: 		(attacker->unit.skl + attacker->unit.lck)/2 +
	adds	r3, r3, r2	@ tmp143, tmp141, tmp142
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:173: 		(attacker->unit.skl + attacker->unit.lck)/2 +
	lsrs	r4, r3, #31	@ tmp145, tmp143,
	adds	r4, r4, r3	@ tmp146, tmp145, tmp143
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:174: 		Bts_CalcLoop(attacker,defender,gpBuCritCalcTable);	// Modular
	ldr	r3, .L46+4	@ tmp149,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:172: 		GetItemCrit(attacker->weapon) + 
	movs	r6, r0	@ _3, tmp179
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:174: 		Bts_CalcLoop(attacker,defender,gpBuCritCalcTable);	// Modular
	ldr	r2, [r3]	@, gpBuCritCalcTable
	movs	r0, r5	@, attacker
	movs	r1, r7	@, defender
	bl	Bts_CalcLoop		@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:173: 		(attacker->unit.skl + attacker->unit.lck)/2 +
	asrs	r4, r4, #1	@ tmp147, tmp146,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:177: 	crit += attacker->battleCritRate;
	adds	r5, r5, #102	@ tmp153,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:177: 	crit += attacker->battleCritRate;
	ldrh	r3, [r5]	@ tmp155,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:172: 		GetItemCrit(attacker->weapon) + 
	lsls	r4, r4, #16	@ _11, tmp147,
	lsrs	r4, r4, #16	@ _11, _11,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:177: 	crit += attacker->battleCritRate;
	adds	r4, r4, r3	@ tmp156, _11, tmp155
	adds	r4, r4, r6	@ tmp159, tmp156, _3
	adds	r0, r4, r0	@ tmp162, tmp159, tmp180
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:181: 	attacker->battleCritRate = crit;
	adds	r3, r0, #0	@ tmp150, tmp162
	lsls	r0, r0, #16	@ tmp182, tmp162,
	bpl	.L44		@,
	movs	r3, #0	@ tmp150,
.L44:
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:182: }
	@ sp needed	@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:181: 	attacker->battleCritRate = crit;
	strh	r3, [r5]	@ tmp150, attacker_21(D)->battleCritRate
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:182: }
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L47:
	.align	2
.L46:
	.word	GetItemCrit
	.word	gpBuCritCalcTable
	.size	BC_Crit, .-BC_Crit
	.align	1
	.global	BC_Dodge
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	BC_Dodge, %function
BC_Dodge:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:193: 		attacker->unit.lck + 
	movs	r4, #25	@ tmp127,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:189: void BC_Dodge(BattleUnit* attacker, BattleUnit* defender){
	movs	r5, r0	@ attacker, tmp154
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:194: 		Bts_CalcLoop(attacker,defender,gpBuDodgeCalcTable);
	ldr	r3, .L51	@ tmp129,
	ldr	r2, [r3]	@, gpBuDodgeCalcTable
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:193: 		attacker->unit.lck + 
	ldrsb	r4, [r0, r4]	@ tmp127,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:194: 		Bts_CalcLoop(attacker,defender,gpBuDodgeCalcTable);
	bl	Bts_CalcLoop		@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:197: 	dodge += attacker->battleDodgeRate;
	adds	r5, r5, #104	@ tmp133,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:197: 	dodge += attacker->battleDodgeRate;
	ldrh	r3, [r5]	@ tmp135,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:193: 		attacker->unit.lck + 
	lsls	r4, r4, #16	@ _2, tmp127,
	lsrs	r4, r4, #16	@ _2, _2,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:197: 	dodge += attacker->battleDodgeRate;
	adds	r4, r4, r3	@ tmp136, _2, tmp135
	adds	r4, r4, r0	@ tmp139, tmp136, tmp156
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:201: 	attacker->battleDodgeRate = dodge;
	adds	r3, r4, #0	@ tmp130, tmp139
	lsls	r4, r4, #16	@ tmp158, tmp139,
	bpl	.L49		@,
	movs	r3, #0	@ tmp130,
.L49:
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:202: }
	@ sp needed	@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:201: 	attacker->battleDodgeRate = dodge;
	strh	r3, [r5]	@ tmp130, attacker_11(D)->battleDodgeRate
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:202: }
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L52:
	.align	2
.L51:
	.word	gpBuDodgeCalcTable
	.size	BC_Dodge, .-BC_Dodge
	.align	1
	.global	BC_DefRes
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	BC_DefRes, %function
BC_DefRes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:210: 	s16 defBonus = 0;
	movs	r5, #0	@ defBonus,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:22: {	return (bu->weaponAttributes & IA_NEGATE_DEFENSE); }
	ldr	r3, [r1, #76]	@ defender_30(D)->weaponAttributes, defender_30(D)->weaponAttributes
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:207: void BC_DefRes(BattleUnit* attacker, BattleUnit* defender){
	movs	r4, r0	@ attacker, tmp208
	movs	r6, r1	@ defender, tmp209
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:209: 	s16 resBonus = 0;
	movs	r0, r5	@ resBonus, defBonus
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:213: 	if( FALSE == CheckLuna(defender) )
	lsls	r3, r3, #14	@ tmp218, defender_30(D)->weaponAttributes,
	bmi	.L54		@,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:215: 		defBonus = Bts_CalcLoop(attacker,defender,gpBuDefCalcTable);
	ldr	r3, .L61	@ tmp152,
	movs	r0, r4	@, attacker
	ldr	r2, [r3]	@, gpBuDefCalcTable
	bl	Bts_CalcLoop		@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:216: 		resBonus = Bts_CalcLoop(attacker,defender,gpBuResCalcTable);
	ldr	r3, .L61+4	@ tmp153,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:215: 		defBonus = Bts_CalcLoop(attacker,defender,gpBuDefCalcTable);
	lsls	r5, r0, #16	@ defBonus, tmp210,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:216: 		resBonus = Bts_CalcLoop(attacker,defender,gpBuResCalcTable);
	movs	r1, r6	@, defender
	movs	r0, r4	@, attacker
	ldr	r2, [r3]	@, gpBuResCalcTable
	bl	Bts_CalcLoop		@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:216: 		resBonus = Bts_CalcLoop(attacker,defender,gpBuResCalcTable);
	lsls	r0, r0, #16	@ resBonus, tmp211,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:215: 		defBonus = Bts_CalcLoop(attacker,defender,gpBuDefCalcTable);
	asrs	r5, r5, #16	@ defBonus, defBonus,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:216: 		resBonus = Bts_CalcLoop(attacker,defender,gpBuResCalcTable);
	asrs	r0, r0, #16	@ resBonus, resBonus,
.L54:
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:18: 	return bu->weaponAttributes & isMag;
	movs	r3, #70	@ tmp156,
	ldr	r2, [r6, #76]	@ defender_30(D)->weaponAttributes, defender_30(D)->weaponAttributes
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:219: 	if( FALSE == CheckAttackRes(defender) )
	tst	r2, r3	@ defender_30(D)->weaponAttributes, tmp156
	bne	.L55		@,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:220: 		defres = attacker->unit.def + attacker->terrainDefense + defBonus;
	movs	r2, r4	@ tmp161, attacker
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:220: 		defres = attacker->unit.def + attacker->terrainDefense + defBonus;
	movs	r3, #23	@ tmp158,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:220: 		defres = attacker->unit.def + attacker->terrainDefense + defBonus;
	adds	r2, r2, #86	@ tmp161,
	ldrb	r2, [r2]	@ tmp163,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:220: 		defres = attacker->unit.def + attacker->terrainDefense + defBonus;
	ldrsb	r3, [r4, r3]	@ tmp158,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:220: 		defres = attacker->unit.def + attacker->terrainDefense + defBonus;
	lsls	r2, r2, #24	@ tmp163, tmp163,
	asrs	r2, r2, #24	@ tmp163, tmp163,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:220: 		defres = attacker->unit.def + attacker->terrainDefense + defBonus;
	adds	r3, r3, r2	@ tmp164, tmp158, tmp163
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:220: 		defres = attacker->unit.def + attacker->terrainDefense + defBonus;
	adds	r3, r3, r5	@ tmp167, tmp164, defBonus
.L60:
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:226: 	defres += attacker->battleDefense;
	adds	r4, r4, #92	@ tmp181,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:226: 	defres += attacker->battleDefense;
	ldrh	r2, [r4]	@ tmp183,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:222: 		defres = attacker->unit.res + attacker->terrainResistance + resBonus;
	lsls	r3, r3, #16	@ defres, tmp178,
	asrs	r3, r3, #16	@ defres, defres,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:226: 	defres += attacker->battleDefense;
	adds	r3, r2, r3	@ tmp185, tmp183, defres
	lsls	r3, r3, #16	@ _24, tmp185,
	lsrs	r3, r3, #16	@ _24, _24,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:230: 	attacker->battleDefense = defres;
	adds	r2, r3, #0	@ _24, _24
	lsls	r3, r3, #16	@ _24, _24,
	asrs	r3, r3, #16	@ _24, _24,
	bpl	.L57		@,
	movs	r2, #0	@ _24,
.L57:
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:231: }
	@ sp needed	@
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:230: 	attacker->battleDefense = defres;
	strh	r2, [r4]	@ _24, attacker_32(D)->battleDefense
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:231: }
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L55:
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:222: 		defres = attacker->unit.res + attacker->terrainResistance + resBonus;
	movs	r2, r4	@ tmp172, attacker
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:222: 		defres = attacker->unit.res + attacker->terrainResistance + resBonus;
	movs	r3, #24	@ tmp169,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:222: 		defres = attacker->unit.res + attacker->terrainResistance + resBonus;
	adds	r2, r2, #88	@ tmp172,
	ldrb	r2, [r2]	@ tmp174,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:222: 		defres = attacker->unit.res + attacker->terrainResistance + resBonus;
	ldrsb	r3, [r4, r3]	@ tmp169,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:222: 		defres = attacker->unit.res + attacker->terrainResistance + resBonus;
	lsls	r2, r2, #24	@ tmp174, tmp174,
	asrs	r2, r2, #24	@ tmp174, tmp174,
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:222: 		defres = attacker->unit.res + attacker->terrainResistance + resBonus;
	adds	r3, r3, r2	@ tmp175, tmp169, tmp174
@ BattleSystemRework/PreBattleCalc/src/BattleCalc.c:222: 		defres = attacker->unit.res + attacker->terrainResistance + resBonus;
	adds	r3, r3, r0	@ tmp178, tmp175, resBonus
	b	.L60		@
.L62:
	.align	2
.L61:
	.word	gpBuDefCalcTable
	.word	gpBuResCalcTable
	.size	BC_DefRes, .-BC_DefRes
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L4:
	bx	r3
