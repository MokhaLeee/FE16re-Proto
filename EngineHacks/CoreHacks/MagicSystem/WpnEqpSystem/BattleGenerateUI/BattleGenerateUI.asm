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
	.file	"BattleGenerateUI.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	new_BattleGenerateUiStats
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	new_BattleGenerateUiStats, %function
new_BattleGenerateUiStats:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:18: 	gBattleStats.config = BATTLE_CONFIG_BIT2;
	movs	r2, #4	@ tmp123,
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:14: {
	push	{r4, r5, r6, lr}	@
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:18: 	gBattleStats.config = BATTLE_CONFIG_BIT2;
	ldr	r3, .L10	@ tmp122,
	strh	r2, [r3]	@ tmp123, gBattleStats.config
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:20: 	if ((itemSlot >= 0) && (itemSlot < UNIT_ITEM_COUNT)) 
	lsls	r3, r1, #24	@ tmp127, itemSlot,
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:14: {
	movs	r5, r1	@ itemSlot, tmp202
	ldr	r4, .L10+4	@ tmp198,
	ldr	r6, .L10+8	@ tmp199,
	sub	sp, sp, #72	@,,
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:20: 	if ((itemSlot >= 0) && (itemSlot < UNIT_ITEM_COUNT)) 
	lsrs	r3, r3, #24	@ tmp127, tmp127,
	cmp	r3, r2	@ tmp127,
	bhi	.L2		@,
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:22: 		struct Unit tmpUnit = *unit;
	movs	r1, r0	@, unit
	adds	r2, r2, #68	@,
	ldr	r3, .L10+12	@ tmp133,
	mov	r0, sp	@,
	bl	.L12		@
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:24: 		EquipUnitItemSlot(&tmpUnit, itemSlot);
	movs	r1, r5	@, itemSlot
	mov	r0, sp	@,
	ldr	r3, .L10+16	@ tmp137,
	bl	.L12		@
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:27: 		InitBattleUnit(&gBattleActor, &tmpUnit);
	mov	r1, sp	@,
	movs	r0, r4	@, tmp198
	bl	.L13		@
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:25: 		itemSlot = 0;
	movs	r5, #0	@ itemSlot,
.L3:
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:32: 	SetBattleUnitTerrainBonusesAuto(&gBattleActor);
	movs	r0, r4	@, tmp198
	ldr	r3, .L10+20	@ tmp144,
	bl	.L12		@
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:35: 	SetBattleUnitWeapon(&gBattleActor, itemSlot);
	movs	r1, r5	@, itemSlot
	movs	r0, r4	@, tmp198
	ldr	r3, .L10+24	@ tmp146,
	bl	.L12		@
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:42: 	FillPreBattleStats(&gBattleActor, &gBattleTarget);
	ldr	r3, .L10+28	@ tmp149,
	movs	r0, r4	@, tmp198
	ldr	r1, .L10+32	@ tmp147,
	bl	.L12		@
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:44: 	wpn = gBattleActor.weapon;
	movs	r3, r4	@ tmp153, tmp198
	adds	r3, r3, #72	@ tmp153,
	ldrh	r5, [r3]	@ wpn,
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:46: 	if (!wpn) 
	cmp	r5, #0	@ wpn,
	bne	.L4		@,
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:7: 	gBattleActor.battleAttack = 0xFF;
	movs	r2, r4	@ tmp157, tmp198
	movs	r3, #255	@ tmp158,
	adds	r2, r2, #90	@ tmp157,
	strh	r3, [r2]	@ tmp158, gBattleActor.battleAttack
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:8: 	gBattleActor.battleHitRate = 0xFF;
	movs	r2, r4	@ tmp163, tmp198
	adds	r2, r2, #96	@ tmp163,
	strh	r3, [r2]	@ tmp158, gBattleActor.battleHitRate
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:9: 	gBattleActor.battleCritRate = 0xFF;
	movs	r2, r4	@ tmp169, tmp198
	adds	r2, r2, #102	@ tmp169,
	strh	r3, [r2]	@ tmp158, gBattleActor.battleCritRate
.L4:
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:49: 	if (GetItemWeaponEffect(wpn) == WPN_EFFECT_HPHALVE)
	movs	r0, r5	@, wpn
	ldr	r3, .L10+36	@ tmp172,
	bl	.L12		@
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:49: 	if (GetItemWeaponEffect(wpn) == WPN_EFFECT_HPHALVE)
	cmp	r0, #3	@ tmp203,
	bne	.L5		@,
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:50: 		gBattleActor.battleAttack = 0xFF;
	movs	r3, r4	@ tmp176, tmp198
	movs	r2, #255	@ tmp177,
	adds	r3, r3, #90	@ tmp176,
	strh	r2, [r3]	@ tmp177, gBattleActor.battleAttack
.L5:
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:53: 	if( IsItemWhiteMagic(wpn) )
	movs	r0, r5	@, wpn
	ldr	r3, .L10+40	@ tmp179,
	bl	.L12		@
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:53: 	if( IsItemWhiteMagic(wpn) )
	cmp	r0, #0	@ tmp204,
	beq	.L1		@,
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:7: 	gBattleActor.battleAttack = 0xFF;
	movs	r2, r4	@ tmp183, tmp198
	movs	r3, #255	@ tmp184,
	adds	r2, r2, #90	@ tmp183,
	strh	r3, [r2]	@ tmp184, gBattleActor.battleAttack
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:8: 	gBattleActor.battleHitRate = 0xFF;
	movs	r2, r4	@ tmp189, tmp198
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:9: 	gBattleActor.battleCritRate = 0xFF;
	adds	r4, r4, #102	@ tmp195,
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:8: 	gBattleActor.battleHitRate = 0xFF;
	adds	r2, r2, #96	@ tmp189,
	strh	r3, [r2]	@ tmp184, gBattleActor.battleHitRate
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:9: 	gBattleActor.battleCritRate = 0xFF;
	strh	r3, [r4]	@ tmp184, gBattleActor.battleCritRate
.L1:
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:56: }
	add	sp, sp, #72	@,,
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L2:
@ MagicSystem/WpnEqpSystem/BattleGenerateUI/BattleGenerateUI.c:29: 		InitBattleUnit(&gBattleActor, unit);
	movs	r1, r0	@, unit
	movs	r0, r4	@, tmp198
	bl	.L13		@
	b	.L3		@
.L11:
	.align	2
.L10:
	.word	gBattleStats
	.word	gBattleActor
	.word	InitBattleUnit
	.word	memcpy
	.word	EquipUnitItemSlot
	.word	SetBattleUnitTerrainBonusesAuto
	.word	SetBattleUnitWeapon
	.word	FillPreBattleStats
	.word	gBattleTarget
	.word	GetItemWeaponEffect
	.word	IsItemWhiteMagic
	.size	new_BattleGenerateUiStats, .-new_BattleGenerateUiStats
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L12:
	bx	r3
.L13:
	bx	r6
