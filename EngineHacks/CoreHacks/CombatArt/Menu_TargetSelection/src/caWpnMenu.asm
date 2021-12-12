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
	.file	"caWpnMenu.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	CA_WpnSelectUsability
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	CA_WpnSelectUsability, %function
CA_WpnSelectUsability:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:33: 	gpBattleFlagSu->isCombat = 1;
	movs	r4, #1	@ tmp148,
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:36: 	item = gActiveUnit->items[index];
	adds	r1, r1, #12	@ tmp152,
	lsls	r1, r1, r4	@ tmp153, tmp152,
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:28: 	cur = &gpCombatArtConigList[gpBattleFlagSu->artId];
	ldr	r3, .L14	@ tmp138,
	ldr	r3, [r3]	@ gpBattleFlagSu.1_2, gpBattleFlagSu
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:28: 	cur = &gpCombatArtConigList[gpBattleFlagSu->artId];
	ldr	r0, .L14+4	@ tmp139,
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:28: 	cur = &gpCombatArtConigList[gpBattleFlagSu->artId];
	ldrb	r2, [r3, #2]	@ tmp140,
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:28: 	cur = &gpCombatArtConigList[gpBattleFlagSu->artId];
	ldr	r6, [r0]	@ gpCombatArtConigList, gpCombatArtConigList
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:28: 	cur = &gpCombatArtConigList[gpBattleFlagSu->artId];
	lsls	r2, r2, #5	@ tmp141, tmp140,
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:28: 	cur = &gpCombatArtConigList[gpBattleFlagSu->artId];
	adds	r6, r6, r2	@ cur, gpCombatArtConigList, tmp141
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:29: 	wpnType = cur->wpnType;
	ldrb	r2, [r6, #6]	@ wpnType,
	str	r2, [sp, #4]	@ wpnType, %sfp
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:33: 	gpBattleFlagSu->isCombat = 1;
	ldrb	r2, [r3]	@ gpBattleFlagSu.1_2->isCombat, gpBattleFlagSu.1_2->isCombat
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:36: 	item = gActiveUnit->items[index];
	ldr	r7, .L14+8	@ tmp151,
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:33: 	gpBattleFlagSu->isCombat = 1;
	orrs	r2, r4	@ tmp147, tmp148
	strb	r2, [r3]	@ tmp147, gpBattleFlagSu.1_2->isCombat
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:36: 	item = gActiveUnit->items[index];
	ldr	r3, [r7]	@ gActiveUnit, gActiveUnit
	adds	r3, r3, r1	@ tmp154, gActiveUnit, tmp153
	ldrh	r5, [r3, #6]	@ item, *gActiveUnit.3_6
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:38: 	if( item )
	cmp	r5, #0	@ item,
	bne	.L2		@,
.L4:
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:49: 	return MCA_NONUSABLE;
	movs	r0, #3	@ <retval>,
.L1:
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:50: }
	@ sp needed	@
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L2:
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:39: 	if( IA_WEAPON & GetItemAttributes(item) )
	movs	r0, r5	@, item
	ldr	r3, .L14+12	@ tmp156,
	bl	.L16		@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:39: 	if( IA_WEAPON & GetItemAttributes(item) )
	tst	r0, r4	@ tmp171, tmp148
	beq	.L4		@,
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:40: 	if( GetItemType(item) == wpnType )
	ldr	r3, .L14+16	@ tmp159,
	movs	r0, r5	@, item
	bl	.L16		@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:40: 	if( GetItemType(item) == wpnType )
	ldr	r3, [sp, #4]	@ wpnType, %sfp
	cmp	r0, r3	@ tmp172, wpnType
	bne	.L4		@,
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:41: 	if( CanUnitUseWeapon(gActiveUnit, item) )
	movs	r1, r5	@, item
	ldr	r0, [r7]	@, gActiveUnit
	ldr	r3, .L14+20	@ tmp161,
	bl	.L16		@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:41: 	if( CanUnitUseWeapon(gActiveUnit, item) )
	cmp	r0, #0	@ tmp173,
	beq	.L4		@,
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:42: 	if( ITEM_USE(item) > cur->durCost )
	movs	r1, #12	@ tmp178,
	ldrsh	r2, [r6, r1]	@ tmp165, cur, tmp178
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:42: 	if( ITEM_USE(item) > cur->durCost )
	lsrs	r3, r5, #8	@ tmp163, item,
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:42: 	if( ITEM_USE(item) > cur->durCost )
	cmp	r3, r2	@ tmp163, tmp165
	ble	.L4		@,
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:44: 		MakeTargetListForWeapon(gActiveUnit,item);
	ldr	r3, .L14+24	@ tmp167,
	movs	r1, r5	@, item
	ldr	r0, [r7]	@, gActiveUnit
	bl	.L16		@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:45: 		if( GetTargetListSize() )
	ldr	r3, .L14+28	@ tmp168,
	bl	.L16		@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:45: 		if( GetTargetListSize() )
	cmp	r0, #0	@ tmp174,
	beq	.L4		@,
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:46: 				return MCA_USABLE;
	movs	r0, r4	@ <retval>, tmp148
	b	.L1		@
.L15:
	.align	2
.L14:
	.word	gpBattleFlagSu
	.word	gpCombatArtConigList
	.word	gActiveUnit
	.word	GetItemAttributes
	.word	GetItemType
	.word	CanUnitUseWeapon
	.word	MakeTargetListForWeapon
	.word	GetTargetListSize
	.size	CA_WpnSelectUsability, .-CA_WpnSelectUsability
	.align	1
	.global	CA_WpnSelectEffect
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	CA_WpnSelectEffect, %function
CA_WpnSelectEffect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:59: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	adds	r1, r1, #60	@ tmp146,
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:57: int CA_WpnSelectEffect(MenuProc* pmu, MenuCommandProc* pcmd){
	push	{r4, r5, r6, lr}	@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:59: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	movs	r4, r1	@ tmp127, tmp146
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:72: }
	@ sp needed	@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:59: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	ldr	r5, .L18	@ tmp124,
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:59: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	ldrb	r3, [r1]	@ tmp128,
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:59: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	ldr	r0, [r5]	@ gActiveUnit.6_1, gActiveUnit
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:59: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	adds	r3, r3, #12	@ tmp129,
	lsls	r3, r3, #1	@ tmp130, tmp129,
	adds	r3, r0, r3	@ tmp131, gActiveUnit.6_1, tmp130
	ldrh	r6, [r3, #6]	@ wpn, *gActiveUnit.6_1
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:62: 	SetWpnEqpForce(gActiveUnit,wpn);
	ldr	r3, .L18+4	@ tmp133,
	movs	r1, r6	@, wpn
	bl	.L16		@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:63: 	EquipUnitItemSlot(
	ldr	r0, [r5]	@, gActiveUnit
	ldrb	r1, [r4]	@ tmp137,
	ldr	r3, .L18+8	@ tmp139,
	bl	.L16		@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:67: 	ClearBG0BG1();
	ldr	r3, .L18+12	@ tmp140,
	bl	.L16		@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:68: 	MakeTargetListForWeapon(gActiveUnit,wpn);
	movs	r1, r6	@, wpn
	ldr	r0, [r5]	@, gActiveUnit
	ldr	r3, .L18+16	@ tmp142,
	bl	.L16		@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:69: 	StartTargetSelection(gtsFuncs_CA);
	ldr	r3, .L18+20	@ tmp144,
	ldr	r0, .L18+24	@ tmp143,
	bl	.L16		@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:72: }
	movs	r0, #39	@,
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L19:
	.align	2
.L18:
	.word	gActiveUnit
	.word	SetWpnEqpForce
	.word	EquipUnitItemSlot
	.word	ClearBG0BG1
	.word	MakeTargetListForWeapon
	.word	StartTargetSelection
	.word	gtsFuncs_CA
	.size	CA_WpnSelectEffect, .-CA_WpnSelectEffect
	.align	1
	.global	CA_WpnSelectBPress
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	CA_WpnSelectBPress, %function
CA_WpnSelectBPress:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:80: 	gpBattleFlagSu->isCombat = 0;
	movs	r1, #1	@ tmp124,
	ldr	r3, .L21	@ tmp118,
	ldr	r2, [r3]	@ gpBattleFlagSu, gpBattleFlagSu
	ldrb	r3, [r2]	@ gpBattleFlagSu.10_1->isCombat, gpBattleFlagSu.10_1->isCombat
	bics	r3, r1	@ tmp123, tmp124
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:77: int CA_WpnSelectBPress(MenuProc* pmu, MenuCommandProc* pcmd){
	push	{r4, lr}	@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:83: 	FillBgMap(gBg2MapBuffer,0);
	movs	r1, #0	@,
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:91: }
	@ sp needed	@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:80: 	gpBattleFlagSu->isCombat = 0;
	strb	r3, [r2]	@ tmp123, gpBattleFlagSu.10_1->isCombat
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:83: 	FillBgMap(gBg2MapBuffer,0);
	ldr	r0, .L21+4	@ tmp126,
	ldr	r3, .L21+8	@ tmp127,
	bl	.L16		@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:84: 	EnableBgSyncByMask(0b100);
	movs	r0, #4	@,
	ldr	r3, .L21+12	@ tmp128,
	bl	.L16		@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:85: 	Text_ResetTileAllocation();	// This is reset font!
	ldr	r3, .L21+16	@ tmp129,
	bl	.L16		@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:87: 	StartMenu(CAselectMenu);
	ldr	r3, .L21+20	@ tmp131,
	ldr	r0, .L21+24	@ tmp130,
	bl	.L16		@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:89: 	HideMoveRangeGraphics();
	ldr	r3, .L21+28	@ tmp132,
	bl	.L16		@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:91: }
	movs	r0, #59	@,
	pop	{r4}
	pop	{r1}
	bx	r1
.L22:
	.align	2
.L21:
	.word	gpBattleFlagSu
	.word	gBg2MapBuffer
	.word	FillBgMap
	.word	EnableBgSyncByMask
	.word	Text_ResetTileAllocation
	.word	StartMenu
	.word	CAselectMenu
	.word	HideMoveRangeGraphics
	.size	CA_WpnSelectBPress, .-CA_WpnSelectBPress
	.align	1
	.global	CA_WpnSelectHover
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	CA_WpnSelectHover, %function
CA_WpnSelectHover:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:102: 	ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r5, .L37	@ tmp133,
	ldr	r3, .L37+4	@ tmp134,
	ldr	r0, [r5]	@, gActiveUnit
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:96: int CA_WpnSelectHover(MenuProc* pmu, MenuCommandProc* pcmd){
	movs	r4, r1	@ pcmd, tmp173
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:102: 	ext = GetUnitExtByUnit(gActiveUnit);
	bl	.L16		@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:104: 	if( NULL == ext )
	cmp	r0, #0	@ tmp174,
	beq	.L24		@,
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:109: 	gpBattleFlagSu->isCombat = 1;
	movs	r6, #1	@ tmp142,
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:112: 	UpdateMenuItemPanel(pcmd->commandDefinitionIndex);
	movs	r0, #0	@ tmp147,
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:109: 	gpBattleFlagSu->isCombat = 1;
	ldr	r3, .L37+8	@ tmp136,
	ldr	r2, [r3]	@ gpBattleFlagSu, gpBattleFlagSu
	ldrb	r3, [r2]	@ gpBattleFlagSu.12_2->isCombat, gpBattleFlagSu.12_2->isCombat
	orrs	r3, r6	@ tmp141, tmp142
	strb	r3, [r2]	@ tmp141, gpBattleFlagSu.12_2->isCombat
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:112: 	UpdateMenuItemPanel(pcmd->commandDefinitionIndex);
	adds	r4, r4, #60	@ tmp146,
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:112: 	UpdateMenuItemPanel(pcmd->commandDefinitionIndex);
	ldrsb	r0, [r4, r0]	@ tmp147,
	ldr	r3, .L37+12	@ tmp148,
	bl	.L16		@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:115: 	BmMapFill(gMapMovement,-1);
	movs	r1, #1	@,
	ldr	r3, .L37+16	@ tmp150,
	ldr	r7, .L37+20	@ tmp151,
	ldr	r0, [r3]	@, gMapMovement
	rsbs	r1, r1, #0	@,
	bl	.L39		@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:116: 	BmMapFill(gMapRange,0);
	ldr	r3, .L37+24	@ tmp152,
	movs	r1, #0	@,
	ldr	r0, [r3]	@, gMapRange
	bl	.L39		@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:118: 	item = gActiveUnit->items[pcmd->commandDefinitionIndex];
	ldrb	r3, [r4]	@ tmp159,
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:118: 	item = gActiveUnit->items[pcmd->commandDefinitionIndex];
	adds	r3, r3, #12	@ tmp160,
	lsls	r3, r3, r6	@ tmp161, tmp160,
	ldr	r2, [r5]	@ gActiveUnit, gActiveUnit
	adds	r3, r2, r3	@ tmp162, gActiveUnit, tmp161
	ldrh	r4, [r3, #6]	@ item, *gActiveUnit.15_7
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:120: 	if( item )
	cmp	r4, #0	@ item,
	beq	.L26		@,
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:121: 	if( IA_WEAPON & GetItemAttributes(item) )
	movs	r0, r4	@, item
	ldr	r3, .L37+28	@ tmp164,
	bl	.L16		@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:121: 	if( IA_WEAPON & GetItemAttributes(item) )
	tst	r0, r6	@ tmp175, tmp142
	beq	.L26		@,
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:122: 	if( CanUnitUseWeapon(gActiveUnit, item) )
	movs	r1, r4	@, item
	ldr	r0, [r5]	@, gActiveUnit
	ldr	r3, .L37+32	@ tmp168,
	bl	.L16		@
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:122: 	if( CanUnitUseWeapon(gActiveUnit, item) )
	cmp	r0, #0	@ tmp176,
	beq	.L26		@,
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:123: 		FillMapForSingleItem(gActiveUnit,item);
	movs	r1, r4	@, item
	ldr	r0, [r5]	@, gActiveUnit
	ldr	r3, .L37+36	@ tmp170,
	bl	.L16		@
.L26:
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:125: 	DisplayMoveRangeGraphics(RNG_RED);
	movs	r0, #2	@,
	ldr	r3, .L37+40	@ tmp171,
	bl	.L16		@
.L24:
@ CombatArt/Menu_TargetSelection/src/caWpnMenu.c:127: }
	@ sp needed	@
	movs	r0, #0	@,
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L38:
	.align	2
.L37:
	.word	gActiveUnit
	.word	GetUnitExtByUnit
	.word	gpBattleFlagSu
	.word	UpdateMenuItemPanel
	.word	gMapMovement
	.word	BmMapFill
	.word	gMapRange
	.word	GetItemAttributes
	.word	CanUnitUseWeapon
	.word	FillMapForSingleItem
	.word	DisplayMoveRangeGraphics
	.size	CA_WpnSelectHover, .-CA_WpnSelectHover
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L16:
	bx	r3
.L39:
	bx	r7
