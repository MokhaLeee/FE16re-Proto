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
	.file	"caMenu.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	CA_UpperUsability
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	CA_UpperUsability, %function
CA_UpperUsability:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ CombatArt/Menu_TargetSelection/src/caMenu.c:24: 	if( UnitHasCA(gActiveUnit) )
	ldr	r3, .L4	@ tmp118,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:21: {	
	push	{r4, lr}	@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:24: 	if( UnitHasCA(gActiveUnit) )
	ldr	r0, [r3]	@, gActiveUnit
@ CombatArt/Menu_TargetSelection/src/caMenu.c:28: }
	@ sp needed	@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:24: 	if( UnitHasCA(gActiveUnit) )
	ldr	r3, .L4+4	@ tmp119,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:27: 		return MCA_GRAYED;
	rsbs	r3, r0, #0	@ tmp122, tmp123
	adcs	r0, r0, r3	@ tmp121, tmp123, tmp122
	adds	r0, r0, #1	@ <retval>,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:28: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L5:
	.align	2
.L4:
	.word	gActiveUnit
	.word	UnitHasCA
	.size	CA_UpperUsability, .-CA_UpperUsability
	.align	1
	.global	CA_UpperEffect
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	CA_UpperEffect, %function
CA_UpperEffect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:34: 	if( MCA_USABLE != pcmd->availability )
	adds	r1, r1, #61	@ tmp120,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:34: 	if( MCA_USABLE != pcmd->availability )
	ldrb	r3, [r1]	@ tmp121,
	cmp	r3, #1	@ tmp121,
	beq	.L8		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:36: 		MenuCallHelpBox(pmu,TextId_umCAGrayBox);
	ldr	r3, .L10	@ tmp122,
	ldrh	r1, [r3]	@ TextId_umCAGrayBox, TextId_umCAGrayBox
	ldr	r3, .L10+4	@ tmp124,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:37: 		return ME_NONE;
	movs	r0, #0	@ <retval>,
.L7:
@ CombatArt/Menu_TargetSelection/src/caMenu.c:49: }
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L8:
@ CombatArt/Menu_TargetSelection/src/caMenu.c:40: 	_ResetIconGraphics();
	ldr	r3, .L10+8	@ tmp125,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:41: 	LoadIconPalettes(0x4);
	movs	r0, #4	@,
	ldr	r3, .L10+12	@ tmp126,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:43: 	StartMenu(CAselectMenu);
	ldr	r3, .L10+16	@ tmp128,
	ldr	r0, .L10+20	@ tmp127,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:46: 	Text_InitFont();
	ldr	r3, .L10+24	@ tmp129,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:48: 	return ME_CLEAR_GFX | ME_PLAY_BEEP | ME_END | ME_DISABLE;
	movs	r0, #23	@ <retval>,
	b	.L7		@
.L11:
	.align	2
.L10:
	.word	TextId_umCAGrayBox
	.word	MenuCallHelpBox
	.word	_ResetIconGraphics
	.word	LoadIconPalettes
	.word	StartMenu
	.word	CAselectMenu
	.word	Text_InitFont
	.size	CA_UpperEffect, .-CA_UpperEffect
	.align	1
	.global	CA_SelectUsability
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	CA_SelectUsability, %function
CA_SelectUsability:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:65: 	ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r5, .L29	@ tmp141,
	ldr	r3, .L29+4	@ tmp142,
	ldr	r0, [r5]	@, gActiveUnit
@ CombatArt/Menu_TargetSelection/src/caMenu.c:58: {
	movs	r4, r1	@ index, tmp170
@ CombatArt/Menu_TargetSelection/src/caMenu.c:65: 	ext = GetUnitExtByUnit(gActiveUnit);
	bl	.L6		@
	movs	r3, r0	@ ext, tmp171
@ CombatArt/Menu_TargetSelection/src/caMenu.c:68: 		return MCA_NONUSABLE;
	movs	r0, #3	@ <retval>,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:67: 	if( NULL == ext )
	cmp	r3, #0	@ ext,
	beq	.L12		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:70: 	if( !ext->skillbattle[index] )
	ldrb	r1, [r3, r4]	@ _2, *ext_28
@ CombatArt/Menu_TargetSelection/src/caMenu.c:70: 	if( !ext->skillbattle[index] )
	cmp	r1, #0	@ _2,
	beq	.L12		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:74: 	cur = &gpCombatArtConigList[artId];
	ldr	r3, .L29+8	@ tmp143,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:74: 	cur = &gpCombatArtConigList[artId];
	ldr	r6, [r3]	@ gpCombatArtConigList, gpCombatArtConigList
@ CombatArt/Menu_TargetSelection/src/caMenu.c:74: 	cur = &gpCombatArtConigList[artId];
	lsls	r2, r1, #5	@ tmp144, _2,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:74: 	cur = &gpCombatArtConigList[artId];
	adds	r6, r6, r2	@ cur, gpCombatArtConigList, tmp144
@ CombatArt/Menu_TargetSelection/src/caMenu.c:75: 	wpnType = cur->wpnType;
	ldrb	r3, [r6, #6]	@ wpnType,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:78: 	SetCombatArtInfo(gActiveUnit,artId);
	ldr	r0, [r5]	@, gActiveUnit
@ CombatArt/Menu_TargetSelection/src/caMenu.c:75: 	wpnType = cur->wpnType;
	str	r3, [sp, #4]	@ wpnType, %sfp
@ CombatArt/Menu_TargetSelection/src/caMenu.c:78: 	SetCombatArtInfo(gActiveUnit,artId);
	ldr	r3, .L29+12	@ tmp147,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:85: 	for( int i=0; i<ITEM_SLOT_COUNT; i++ )
	movs	r7, #0	@ i,
.L15:
@ CombatArt/Menu_TargetSelection/src/caMenu.c:87: 		item = gActiveUnit->items[i];
	movs	r2, r7	@ tmp150, i
	ldr	r3, [r5]	@ gActiveUnit, gActiveUnit
	adds	r2, r2, #12	@ tmp150,
	lsls	r2, r2, #1	@ tmp151, tmp150,
	adds	r3, r3, r2	@ tmp152, gActiveUnit, tmp151
	ldrh	r4, [r3, #6]	@ item, *gActiveUnit.5_7
@ CombatArt/Menu_TargetSelection/src/caMenu.c:89: 		if( item )
	cmp	r4, #0	@ item,
	bne	.L14		@,
.L16:
@ CombatArt/Menu_TargetSelection/src/caMenu.c:85: 	for( int i=0; i<ITEM_SLOT_COUNT; i++ )
	adds	r7, r7, #1	@ i,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:85: 	for( int i=0; i<ITEM_SLOT_COUNT; i++ )
	cmp	r7, #5	@ i,
	bne	.L15		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:101: 	return MCA_GRAYED;
	movs	r0, #2	@ <retval>,
.L12:
@ CombatArt/Menu_TargetSelection/src/caMenu.c:102: }
	@ sp needed	@
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L14:
@ CombatArt/Menu_TargetSelection/src/caMenu.c:90: 		if( IA_WEAPON & GetItemAttributes(item) )
	ldr	r3, .L29+16	@ tmp154,
	movs	r0, r4	@, item
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:90: 		if( IA_WEAPON & GetItemAttributes(item) )
	movs	r3, #1	@ tmp182,
	tst	r0, r3	@ tmp172, tmp182
	beq	.L16		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:91: 		if( GetItemType(item) == wpnType )
	ldr	r3, .L29+20	@ tmp157,
	movs	r0, r4	@, item
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:91: 		if( GetItemType(item) == wpnType )
	ldr	r3, [sp, #4]	@ wpnType, %sfp
	cmp	r0, r3	@ tmp173, wpnType
	bne	.L16		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:92: 		if( CanUnitUseWeapon(gActiveUnit, item) )
	movs	r1, r4	@, item
	ldr	r0, [r5]	@, gActiveUnit
	ldr	r3, .L29+24	@ tmp159,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:92: 		if( CanUnitUseWeapon(gActiveUnit, item) )
	cmp	r0, #0	@ tmp174,
	beq	.L16		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:93: 		if( ITEM_USE(item) > cur->durCost ) 
	movs	r1, #12	@ tmp179,
	ldrsh	r2, [r6, r1]	@ tmp163, cur, tmp179
@ CombatArt/Menu_TargetSelection/src/caMenu.c:93: 		if( ITEM_USE(item) > cur->durCost ) 
	lsrs	r3, r4, #8	@ tmp161, item,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:93: 		if( ITEM_USE(item) > cur->durCost ) 
	cmp	r3, r2	@ tmp161, tmp163
	ble	.L16		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:95: 			MakeTargetListForWeapon(gActiveUnit,item);
	ldr	r3, .L29+28	@ tmp165,
	movs	r1, r4	@, item
	ldr	r0, [r5]	@, gActiveUnit
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:96: 			if( GetTargetListSize() )
	ldr	r3, .L29+32	@ tmp166,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:96: 			if( GetTargetListSize() )
	cmp	r0, #0	@ tmp175,
	beq	.L16		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:97: 				return MCA_USABLE;
	movs	r0, #1	@ <retval>,
	b	.L12		@
.L30:
	.align	2
.L29:
	.word	gActiveUnit
	.word	GetUnitExtByUnit
	.word	gpCombatArtConigList
	.word	SetCombatArtInfo
	.word	GetItemAttributes
	.word	GetItemType
	.word	CanUnitUseWeapon
	.word	MakeTargetListForWeapon
	.word	GetTargetListSize
	.size	CA_SelectUsability, .-CA_SelectUsability
	.align	1
	.global	CA_SelectEffect
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	CA_SelectEffect, %function
CA_SelectEffect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:106: int CA_SelectEffect( MenuProc* pmu, MenuCommandProc* pcmd ){
	movs	r4, r1	@ pcmd, tmp171
@ CombatArt/Menu_TargetSelection/src/caMenu.c:109: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r5, .L36	@ tmp131,
	ldr	r3, .L36+4	@ tmp132,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:106: int CA_SelectEffect( MenuProc* pmu, MenuCommandProc* pcmd ){
	movs	r7, r0	@ pmu, tmp170
@ CombatArt/Menu_TargetSelection/src/caMenu.c:109: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r0, [r5]	@, gActiveUnit
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:111: 	if( (NULL == ext) | (MCA_USABLE != pcmd->availability) )
	movs	r3, r4	@ tmp135, pcmd
	adds	r3, r3, #61	@ tmp135,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:111: 	if( (NULL == ext) | (MCA_USABLE != pcmd->availability) )
	ldrb	r3, [r3]	@ tmp137,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:111: 	if( (NULL == ext) | (MCA_USABLE != pcmd->availability) )
	cmp	r3, #1	@ tmp137,
	bne	.L35		@,
	rsbs	r6, r0, #0	@ tmp146, ext
	adcs	r6, r6, r0	@ tmp146, ext
	cmp	r6, #0	@ tmp146,
	beq	.L32		@,
.L35:
@ CombatArt/Menu_TargetSelection/src/caMenu.c:113: 		MenuCallHelpBox(pmu,TextId_umCAselectGrayBox);
	ldr	r3, .L36+8	@ tmp148,
	movs	r0, r7	@, pmu
	ldrh	r1, [r3]	@ TextId_umCAselectGrayBox, TextId_umCAselectGrayBox
	ldr	r3, .L36+12	@ tmp150,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:114: 		return ME_NONE;
	movs	r0, #0	@ <retval>,
.L31:
@ CombatArt/Menu_TargetSelection/src/caMenu.c:132: }
	@ sp needed	@
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L32:
@ CombatArt/Menu_TargetSelection/src/caMenu.c:117: 	u8 artId = ext->skillbattle[pcmd->commandDefinitionIndex];
	adds	r4, r4, #60	@ tmp153,
	ldrb	r3, [r4]	@ tmp154,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:120: 	SetCombatArtInfo(gActiveUnit,artId);
	ldrb	r1, [r0, r3]	@ tmp155, *ext_17
	ldr	r0, [r5]	@, gActiveUnit
	ldr	r3, .L36+16	@ tmp157,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:122: 	_ResetIconGraphics();
	ldr	r3, .L36+20	@ tmp158,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:123: 	LoadIconPalettes(0x4);
	movs	r0, #4	@,
	ldr	r3, .L36+24	@ tmp159,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:125: 	um = StartMenu(CAwpnSelectMenu);
	ldr	r3, .L36+28	@ tmp161,
	ldr	r0, .L36+32	@ tmp160,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:126: 	ForceMenuItemPanel(um,gActiveUnit,0xF,0xB);
	movs	r2, #15	@,
	ldr	r1, [r5]	@, gActiveUnit
	movs	r3, #11	@,
	ldr	r4, .L36+36	@ tmp163,
	bl	.L38		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:128: 	StartFace(0,GetUnitPortraitId(gActiveUnit),0xB0,0xC,0x2);
	ldr	r3, .L36+40	@ tmp165,
	ldr	r0, [r5]	@, gActiveUnit
	bl	.L6		@
	movs	r3, #2	@ tmp166,
	movs	r1, r0	@ _12, tmp174
	movs	r2, #176	@,
	str	r3, [sp]	@ tmp166,
	movs	r0, r6	@, tmp146
	adds	r3, r3, #10	@,
	ldr	r4, .L36+44	@ tmp167,
	bl	.L38		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:129: 	SetFaceBlinkControlById(0,5);
	movs	r0, r6	@, tmp146
	movs	r1, #5	@,
	ldr	r3, .L36+48	@ tmp168,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:131: 	return ME_CLEAR_GFX | ME_PLAY_BEEP | ME_END | ME_DISABLE;
	movs	r0, #23	@ <retval>,
	b	.L31		@
.L37:
	.align	2
.L36:
	.word	gActiveUnit
	.word	GetUnitExtByUnit
	.word	TextId_umCAselectGrayBox
	.word	MenuCallHelpBox
	.word	SetCombatArtInfo
	.word	_ResetIconGraphics
	.word	LoadIconPalettes
	.word	StartMenu
	.word	CAwpnSelectMenu
	.word	ForceMenuItemPanel
	.word	GetUnitPortraitId
	.word	StartFace
	.word	SetFaceBlinkControlById
	.size	CA_SelectEffect, .-CA_SelectEffect
	.align	1
	.global	CA_SelectBPress
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	CA_SelectBPress, %function
CA_SelectBPress:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:140: 	gpBattleFlagSu->isCombat = 0;
	movs	r4, #1	@ tmp129,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:154: }
	@ sp needed	@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:140: 	gpBattleFlagSu->isCombat = 0;
	ldr	r3, .L40	@ tmp123,
	ldr	r2, [r3]	@ gpBattleFlagSu, gpBattleFlagSu
	ldrb	r3, [r2]	@ gpBattleFlagSu.13_1->isCombat, gpBattleFlagSu.13_1->isCombat
	bics	r3, r4	@ tmp128, tmp129
	strb	r3, [r2]	@ tmp128, gpBattleFlagSu.13_1->isCombat
@ CombatArt/Menu_TargetSelection/src/caMenu.c:143: 	FillBgMap(gBg2MapBuffer,0);
	movs	r1, #0	@,
	ldr	r0, .L40+4	@ tmp131,
	ldr	r3, .L40+8	@ tmp132,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:144: 	EnableBgSyncByMask(0b100);
	movs	r0, #4	@,
	ldr	r3, .L40+12	@ tmp133,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:145: 	Text_ResetTileAllocation();	// This is reset font!
	ldr	r3, .L40+16	@ tmp134,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:149: 		gGameState.cursorPosMenu.x - gGameState.cameraRealPos.x,
	ldr	r3, .L40+20	@ tmp135,
	movs	r2, #28	@ tmp147,
	ldrsh	r1, [r3, r2]	@ tmp136, tmp135, tmp147
@ CombatArt/Menu_TargetSelection/src/caMenu.c:149: 		gGameState.cursorPosMenu.x - gGameState.cameraRealPos.x,
	movs	r2, #12	@ tmp148,
	ldrsh	r3, [r3, r2]	@ tmp138, tmp135, tmp148
@ CombatArt/Menu_TargetSelection/src/caMenu.c:147: 	StartSemiCenteredOrphanMenu(
	ldr	r0, .L40+24	@ tmp140,
	movs	r2, r4	@, tmp129
	subs	r1, r1, r3	@ tmp139, tmp136, tmp138
	ldr	r4, .L40+28	@ tmp141,
	movs	r3, #20	@,
	bl	.L38		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:151: 	HideMoveRangeGraphics();
	ldr	r3, .L40+32	@ tmp142,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:154: }
	movs	r0, #59	@,
	pop	{r4}
	pop	{r1}
	bx	r1
.L41:
	.align	2
.L40:
	.word	gpBattleFlagSu
	.word	gBg2MapBuffer
	.word	FillBgMap
	.word	EnableBgSyncByMask
	.word	Text_ResetTileAllocation
	.word	gGameState
	.word	gMenu_UnitMenu
	.word	StartSemiCenteredOrphanMenu
	.word	HideMoveRangeGraphics
	.size	CA_SelectBPress, .-CA_SelectBPress
	.align	1
	.global	CA_SelectTextDraw
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	CA_SelectTextDraw, %function
CA_SelectTextDraw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ CombatArt/Menu_TargetSelection/src/caMenu.c:162: 	u8 cmdId = pcmd->commandDefinitionIndex;
	movs	r3, r1	@ tmp141, pcmd
@ CombatArt/Menu_TargetSelection/src/caMenu.c:160: int CA_SelectTextDraw(MenuProc* pmu, MenuCommandProc* pcmd){
	push	{r4, r5, r6, lr}	@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:162: 	u8 cmdId = pcmd->commandDefinitionIndex;
	adds	r3, r3, #60	@ tmp141,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:160: int CA_SelectTextDraw(MenuProc* pmu, MenuCommandProc* pcmd){
	movs	r5, r1	@ pcmd, tmp167
@ CombatArt/Menu_TargetSelection/src/caMenu.c:162: 	u8 cmdId = pcmd->commandDefinitionIndex;
	ldrb	r4, [r3]	@ cmdId,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:163: 	u8 artId = GetUnitExtByUnit(gActiveUnit)->skillbattle[cmdId];
	ldr	r3, .L46	@ tmp142,
	ldr	r0, [r3]	@, gActiveUnit
	ldr	r3, .L46+4	@ tmp143,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:165: 	if( MCA_USABLE != pcmd->availability )
	movs	r3, r5	@ tmp146, pcmd
@ CombatArt/Menu_TargetSelection/src/caMenu.c:163: 	u8 artId = GetUnitExtByUnit(gActiveUnit)->skillbattle[cmdId];
	ldrb	r6, [r0, r4]	@ artId, *_2
@ CombatArt/Menu_TargetSelection/src/caMenu.c:166: 		Text_SetColorId( &pcmd->text, TEXT_COLOR_GRAY );
	movs	r4, r5	@ pretmp_41, pcmd
@ CombatArt/Menu_TargetSelection/src/caMenu.c:165: 	if( MCA_USABLE != pcmd->availability )
	adds	r3, r3, #61	@ tmp146,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:165: 	if( MCA_USABLE != pcmd->availability )
	ldrb	r2, [r3]	@ tmp147,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:166: 		Text_SetColorId( &pcmd->text, TEXT_COLOR_GRAY );
	movs	r1, #1	@,
	ldr	r3, .L46+8	@ tmp166,
	adds	r4, r4, #52	@ pretmp_41,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:165: 	if( MCA_USABLE != pcmd->availability )
	cmp	r2, #1	@ tmp147,
	bne	.L45		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:168: 		Text_SetColorId( &pcmd->text ,TEXT_COLOR_NORMAL);
	movs	r1, #0	@,
.L45:
@ CombatArt/Menu_TargetSelection/src/caMenu.c:181: }
	@ sp needed	@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:168: 		Text_SetColorId( &pcmd->text ,TEXT_COLOR_NORMAL);
	movs	r0, r4	@, pretmp_41
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:172: 		GetStringFromIndex(gpCombatArtConigList[artId].name) );
	ldr	r3, .L46+12	@ tmp151,
	ldr	r3, [r3]	@ gpCombatArtConigList, gpCombatArtConigList
	lsls	r6, r6, #5	@ tmp152, artId,
	adds	r3, r3, r6	@ tmp153, gpCombatArtConigList, tmp152
@ CombatArt/Menu_TargetSelection/src/caMenu.c:172: 		GetStringFromIndex(gpCombatArtConigList[artId].name) );
	ldrh	r0, [r3, #2]	@ tmp154,
	ldr	r3, .L46+16	@ tmp155,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:170: 	Text_AppendString(
	ldr	r3, .L46+20	@ tmp156,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:172: 		GetStringFromIndex(gpCombatArtConigList[artId].name) );
	movs	r1, r0	@ _14, tmp169
@ CombatArt/Menu_TargetSelection/src/caMenu.c:170: 	Text_AppendString(
	movs	r0, r4	@, pretmp_41
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:176: 		TILEMAP_LOCATED(gBg0MapBuffer, 
	ldrh	r1, [r5, #44]	@ tmp157,
	ldrh	r3, [r5, #42]	@ tmp159,
	lsls	r1, r1, #5	@ tmp158, tmp157,
	adds	r1, r1, r3	@ tmp160, tmp158, tmp159
@ CombatArt/Menu_TargetSelection/src/caMenu.c:174: 	Text_Display(
	ldr	r3, .L46+24	@ tmp163,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:176: 		TILEMAP_LOCATED(gBg0MapBuffer, 
	lsls	r1, r1, #1	@ tmp161, tmp160,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:174: 	Text_Display(
	movs	r0, r4	@, pretmp_41
	adds	r1, r1, r3	@ tmp162, tmp161, tmp163
	ldr	r3, .L46+28	@ tmp164,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:181: }
	movs	r0, #0	@,
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L47:
	.align	2
.L46:
	.word	gActiveUnit
	.word	GetUnitExtByUnit
	.word	Text_SetColorId
	.word	gpCombatArtConigList
	.word	GetStringFromIndex
	.word	Text_AppendString
	.word	gBg0MapBuffer
	.word	Text_Display
	.size	CA_SelectTextDraw, .-CA_SelectTextDraw
	.align	1
	.global	CA_SelectHover
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	CA_SelectHover, %function
CA_SelectHover:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:194: 	ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r5, .L67	@ tmp148,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:185: int CA_SelectHover(MenuProc* pmu, MenuCommandProc* pcmd){
	sub	sp, sp, #20	@,,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:194: 	ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r0, [r5]	@, gActiveUnit
	ldr	r3, .L67+4	@ tmp149,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:185: int CA_SelectHover(MenuProc* pmu, MenuCommandProc* pcmd){
	movs	r4, r1	@ pcmd, tmp190
@ CombatArt/Menu_TargetSelection/src/caMenu.c:194: 	ext = GetUnitExtByUnit(gActiveUnit);
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:196: 	if( NULL == ext )
	cmp	r0, #0	@ ext,
	beq	.L50		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:210: 	for( int i=0; i<ITEM_SLOT_COUNT; i++ )
	movs	r6, #0	@ i,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:199: 	artId = ext->skillbattle[pcmd->commandDefinitionIndex];
	adds	r4, r4, #60	@ tmp152,
	ldrb	r3, [r4]	@ tmp153,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:207: 	cnt = 0;
	movs	r4, r6	@ cnt, i
@ CombatArt/Menu_TargetSelection/src/caMenu.c:199: 	artId = ext->skillbattle[pcmd->commandDefinitionIndex];
	ldrb	r1, [r0, r3]	@ artId, *ext_36
@ CombatArt/Menu_TargetSelection/src/caMenu.c:200: 	cur = &gpCombatArtConigList[artId];
	ldr	r3, .L67+8	@ tmp154,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:200: 	cur = &gpCombatArtConigList[artId];
	ldr	r3, [r3]	@ gpCombatArtConigList, gpCombatArtConigList
@ CombatArt/Menu_TargetSelection/src/caMenu.c:200: 	cur = &gpCombatArtConigList[artId];
	lsls	r2, r1, #5	@ tmp155, artId,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:200: 	cur = &gpCombatArtConigList[artId];
	adds	r3, r3, r2	@ cur, gpCombatArtConigList, tmp155
	str	r3, [sp, #8]	@ cur, %sfp
@ CombatArt/Menu_TargetSelection/src/caMenu.c:201: 	wpnType = cur->wpnType;
	ldrb	r3, [r3, #6]	@ wpnType,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:204: 	SetCombatArtInfo(gActiveUnit,artId);
	ldr	r0, [r5]	@, gActiveUnit
@ CombatArt/Menu_TargetSelection/src/caMenu.c:201: 	wpnType = cur->wpnType;
	str	r3, [sp, #12]	@ wpnType, %sfp
@ CombatArt/Menu_TargetSelection/src/caMenu.c:204: 	SetCombatArtInfo(gActiveUnit,artId);
	ldr	r3, .L67+12	@ tmp158,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:208: 	mask = 0;
	str	r6, [sp, #4]	@ i, %sfp
.L52:
@ CombatArt/Menu_TargetSelection/src/caMenu.c:212: 		item = gActiveUnit->items[i];
	movs	r2, r6	@ tmp161, i
	ldr	r3, [r5]	@ gActiveUnit, gActiveUnit
	adds	r2, r2, #12	@ tmp161,
	lsls	r2, r2, #1	@ tmp162, tmp161,
	adds	r3, r3, r2	@ tmp163, gActiveUnit, tmp162
	ldrh	r7, [r3, #6]	@ item, *gActiveUnit.19_8
@ CombatArt/Menu_TargetSelection/src/caMenu.c:214: 		if( item )
	cmp	r7, #0	@ item,
	beq	.L51		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:215: 		if( IA_WEAPON & GetItemAttributes(item) )
	ldr	r3, .L67+16	@ tmp165,
	movs	r0, r7	@, item
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:215: 		if( IA_WEAPON & GetItemAttributes(item) )
	movs	r3, #1	@ tmp207,
	tst	r0, r3	@ tmp192, tmp207
	beq	.L51		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:216: 		if( GetItemType(item) == wpnType )
	ldr	r3, .L67+20	@ tmp168,
	movs	r0, r7	@, item
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:216: 		if( GetItemType(item) == wpnType )
	ldr	r3, [sp, #12]	@ wpnType, %sfp
	cmp	r0, r3	@ tmp193, wpnType
	bne	.L51		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:217: 		if( CanUnitUseWeapon(gActiveUnit, item) )
	movs	r1, r7	@, item
	ldr	r0, [r5]	@, gActiveUnit
	ldr	r3, .L67+24	@ tmp170,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:217: 		if( CanUnitUseWeapon(gActiveUnit, item) )
	cmp	r0, #0	@ tmp194,
	beq	.L51		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:218: 		if( ITEM_USE(item) > cur->durCost )
	ldr	r2, [sp, #8]	@ cur, %sfp
	movs	r1, #12	@ tmp202,
	ldrsh	r2, [r2, r1]	@ tmp174, cur, tmp202
@ CombatArt/Menu_TargetSelection/src/caMenu.c:218: 		if( ITEM_USE(item) > cur->durCost )
	lsrs	r3, r7, #8	@ tmp172, item,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:218: 		if( ITEM_USE(item) > cur->durCost )
	cmp	r3, r2	@ tmp172, tmp174
	ble	.L51		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:220: 			mask |= ItemRange2Mask(item,gActiveUnit);
	ldr	r3, .L67+28	@ tmp176,
	movs	r0, r7	@, item
	ldr	r1, [r5]	@, gActiveUnit
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:220: 			mask |= ItemRange2Mask(item,gActiveUnit);
	ldr	r3, [sp, #4]	@ mask, %sfp
@ CombatArt/Menu_TargetSelection/src/caMenu.c:221: 			cnt++;
	adds	r4, r4, #1	@ tmp177,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:220: 			mask |= ItemRange2Mask(item,gActiveUnit);
	orrs	r3, r0	@ mask, tmp195
@ CombatArt/Menu_TargetSelection/src/caMenu.c:221: 			cnt++;
	lsls	r4, r4, #24	@ cnt, tmp177,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:220: 			mask |= ItemRange2Mask(item,gActiveUnit);
	str	r3, [sp, #4]	@ mask, %sfp
@ CombatArt/Menu_TargetSelection/src/caMenu.c:221: 			cnt++;
	lsrs	r4, r4, #24	@ cnt, cnt,
.L51:
@ CombatArt/Menu_TargetSelection/src/caMenu.c:210: 	for( int i=0; i<ITEM_SLOT_COUNT; i++ )
	adds	r6, r6, #1	@ i,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:210: 	for( int i=0; i<ITEM_SLOT_COUNT; i++ )
	cmp	r6, #5	@ i,
	bne	.L52		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:225: 	if( 0 == cnt )
	cmp	r4, #0	@ cnt,
	beq	.L50		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:229: 	BmMapFill(gMapMovement,-1);
	movs	r1, #1	@,
	ldr	r3, .L67+32	@ tmp180,
	ldr	r4, .L67+36	@ tmp181,
	ldr	r0, [r3]	@, gMapMovement
	rsbs	r1, r1, #0	@,
	bl	.L38		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:230: 	BmMapFill(gMapRange,0);
	ldr	r3, .L67+40	@ tmp182,
	movs	r1, #0	@,
	ldr	r0, [r3]	@, gMapRange
	bl	.L38		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:231: 	FillRangeMapByRangeMask(gActiveUnit,mask);
	ldr	r0, [r5]	@, gActiveUnit
	ldr	r3, .L67+44	@ tmp185,
	ldr	r1, [sp, #4]	@, %sfp
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:232: 	DisplayMoveRangeGraphics(2);
	movs	r0, #2	@,
	ldr	r3, .L67+48	@ tmp186,
	bl	.L6		@
.L50:
@ CombatArt/Menu_TargetSelection/src/caMenu.c:234: }
	movs	r0, #0	@,
	add	sp, sp, #20	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L68:
	.align	2
.L67:
	.word	gActiveUnit
	.word	GetUnitExtByUnit
	.word	gpCombatArtConigList
	.word	SetCombatArtInfo
	.word	GetItemAttributes
	.word	GetItemType
	.word	CanUnitUseWeapon
	.word	ItemRange2Mask
	.word	gMapMovement
	.word	BmMapFill
	.word	gMapRange
	.word	FillRangeMapByRangeMask
	.word	DisplayMoveRangeGraphics
	.size	CA_SelectHover, .-CA_SelectHover
	.align	1
	.global	CA_WpnSelectUsability
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
@ CombatArt/Menu_TargetSelection/src/caMenu.c:261: 	gpBattleFlagSu->isCombat = 1;
	movs	r4, #1	@ tmp148,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:264: 	item = gActiveUnit->items[index];
	adds	r1, r1, #12	@ tmp152,
	lsls	r1, r1, r4	@ tmp153, tmp152,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:256: 	cur = &gpCombatArtConigList[gpBattleFlagSu->artId];
	ldr	r3, .L82	@ tmp138,
	ldr	r3, [r3]	@ gpBattleFlagSu.27_2, gpBattleFlagSu
@ CombatArt/Menu_TargetSelection/src/caMenu.c:256: 	cur = &gpCombatArtConigList[gpBattleFlagSu->artId];
	ldr	r0, .L82+4	@ tmp139,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:256: 	cur = &gpCombatArtConigList[gpBattleFlagSu->artId];
	ldrb	r2, [r3, #2]	@ tmp140,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:256: 	cur = &gpCombatArtConigList[gpBattleFlagSu->artId];
	ldr	r6, [r0]	@ gpCombatArtConigList, gpCombatArtConigList
@ CombatArt/Menu_TargetSelection/src/caMenu.c:256: 	cur = &gpCombatArtConigList[gpBattleFlagSu->artId];
	lsls	r2, r2, #5	@ tmp141, tmp140,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:256: 	cur = &gpCombatArtConigList[gpBattleFlagSu->artId];
	adds	r6, r6, r2	@ cur, gpCombatArtConigList, tmp141
@ CombatArt/Menu_TargetSelection/src/caMenu.c:257: 	wpnType = cur->wpnType;
	ldrb	r2, [r6, #6]	@ wpnType,
	str	r2, [sp, #4]	@ wpnType, %sfp
@ CombatArt/Menu_TargetSelection/src/caMenu.c:261: 	gpBattleFlagSu->isCombat = 1;
	ldrb	r2, [r3]	@ gpBattleFlagSu.27_2->isCombat, gpBattleFlagSu.27_2->isCombat
@ CombatArt/Menu_TargetSelection/src/caMenu.c:264: 	item = gActiveUnit->items[index];
	ldr	r7, .L82+8	@ tmp151,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:261: 	gpBattleFlagSu->isCombat = 1;
	orrs	r2, r4	@ tmp147, tmp148
	strb	r2, [r3]	@ tmp147, gpBattleFlagSu.27_2->isCombat
@ CombatArt/Menu_TargetSelection/src/caMenu.c:264: 	item = gActiveUnit->items[index];
	ldr	r3, [r7]	@ gActiveUnit, gActiveUnit
	adds	r3, r3, r1	@ tmp154, gActiveUnit, tmp153
	ldrh	r5, [r3, #6]	@ item, *gActiveUnit.29_6
@ CombatArt/Menu_TargetSelection/src/caMenu.c:266: 	if( item )
	cmp	r5, #0	@ item,
	bne	.L70		@,
.L72:
@ CombatArt/Menu_TargetSelection/src/caMenu.c:277: 	return MCA_NONUSABLE;
	movs	r0, #3	@ <retval>,
.L69:
@ CombatArt/Menu_TargetSelection/src/caMenu.c:278: }
	@ sp needed	@
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L70:
@ CombatArt/Menu_TargetSelection/src/caMenu.c:267: 	if( IA_WEAPON & GetItemAttributes(item) )
	movs	r0, r5	@, item
	ldr	r3, .L82+12	@ tmp156,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:267: 	if( IA_WEAPON & GetItemAttributes(item) )
	tst	r0, r4	@ tmp171, tmp148
	beq	.L72		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:268: 	if( GetItemType(item) == wpnType )
	ldr	r3, .L82+16	@ tmp159,
	movs	r0, r5	@, item
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:268: 	if( GetItemType(item) == wpnType )
	ldr	r3, [sp, #4]	@ wpnType, %sfp
	cmp	r0, r3	@ tmp172, wpnType
	bne	.L72		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:269: 	if( CanUnitUseWeapon(gActiveUnit, item) )
	movs	r1, r5	@, item
	ldr	r0, [r7]	@, gActiveUnit
	ldr	r3, .L82+20	@ tmp161,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:269: 	if( CanUnitUseWeapon(gActiveUnit, item) )
	cmp	r0, #0	@ tmp173,
	beq	.L72		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:270: 	if( ITEM_USE(item) > cur->durCost )
	movs	r1, #12	@ tmp178,
	ldrsh	r2, [r6, r1]	@ tmp165, cur, tmp178
@ CombatArt/Menu_TargetSelection/src/caMenu.c:270: 	if( ITEM_USE(item) > cur->durCost )
	lsrs	r3, r5, #8	@ tmp163, item,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:270: 	if( ITEM_USE(item) > cur->durCost )
	cmp	r3, r2	@ tmp163, tmp165
	ble	.L72		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:272: 		MakeTargetListForWeapon(gActiveUnit,item);
	ldr	r3, .L82+24	@ tmp167,
	movs	r1, r5	@, item
	ldr	r0, [r7]	@, gActiveUnit
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:273: 		if( GetTargetListSize() )
	ldr	r3, .L82+28	@ tmp168,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:273: 		if( GetTargetListSize() )
	cmp	r0, #0	@ tmp174,
	beq	.L72		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:274: 				return MCA_USABLE;
	movs	r0, r4	@ <retval>, tmp148
	b	.L69		@
.L83:
	.align	2
.L82:
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
@ CombatArt/Menu_TargetSelection/src/caMenu.c:287: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	adds	r1, r1, #60	@ tmp146,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:285: int CA_WpnSelectEffect(MenuProc* pmu, MenuCommandProc* pcmd){
	push	{r4, r5, r6, lr}	@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:287: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	movs	r4, r1	@ tmp127, tmp146
@ CombatArt/Menu_TargetSelection/src/caMenu.c:300: }
	@ sp needed	@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:287: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	ldr	r5, .L85	@ tmp124,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:287: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	ldrb	r3, [r1]	@ tmp128,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:287: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	ldr	r0, [r5]	@ gActiveUnit.32_1, gActiveUnit
@ CombatArt/Menu_TargetSelection/src/caMenu.c:287: 	u16 wpn = gActiveUnit->items[pcmd->commandDefinitionIndex];
	adds	r3, r3, #12	@ tmp129,
	lsls	r3, r3, #1	@ tmp130, tmp129,
	adds	r3, r0, r3	@ tmp131, gActiveUnit.32_1, tmp130
	ldrh	r6, [r3, #6]	@ wpn, *gActiveUnit.32_1
@ CombatArt/Menu_TargetSelection/src/caMenu.c:290: 	SetWpnEqpForce(gActiveUnit,wpn);
	ldr	r3, .L85+4	@ tmp133,
	movs	r1, r6	@, wpn
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:291: 	EquipUnitItemSlot(
	ldr	r0, [r5]	@, gActiveUnit
	ldrb	r1, [r4]	@ tmp137,
	ldr	r3, .L85+8	@ tmp139,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:295: 	ClearBG0BG1();
	ldr	r3, .L85+12	@ tmp140,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:296: 	MakeTargetListForWeapon(gActiveUnit,wpn);
	movs	r1, r6	@, wpn
	ldr	r0, [r5]	@, gActiveUnit
	ldr	r3, .L85+16	@ tmp142,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:297: 	StartTargetSelection(gtsFuncs_CA);
	ldr	r3, .L85+20	@ tmp144,
	ldr	r0, .L85+24	@ tmp143,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:300: }
	movs	r0, #39	@,
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L86:
	.align	2
.L85:
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
@ CombatArt/Menu_TargetSelection/src/caMenu.c:308: 	gpBattleFlagSu->isCombat = 0;
	movs	r1, #1	@ tmp124,
	ldr	r3, .L88	@ tmp118,
	ldr	r2, [r3]	@ gpBattleFlagSu, gpBattleFlagSu
	ldrb	r3, [r2]	@ gpBattleFlagSu.36_1->isCombat, gpBattleFlagSu.36_1->isCombat
	bics	r3, r1	@ tmp123, tmp124
@ CombatArt/Menu_TargetSelection/src/caMenu.c:305: int CA_WpnSelectBPress(MenuProc* pmu, MenuCommandProc* pcmd){
	push	{r4, lr}	@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:311: 	FillBgMap(gBg2MapBuffer,0);
	movs	r1, #0	@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:319: }
	@ sp needed	@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:308: 	gpBattleFlagSu->isCombat = 0;
	strb	r3, [r2]	@ tmp123, gpBattleFlagSu.36_1->isCombat
@ CombatArt/Menu_TargetSelection/src/caMenu.c:311: 	FillBgMap(gBg2MapBuffer,0);
	ldr	r0, .L88+4	@ tmp126,
	ldr	r3, .L88+8	@ tmp127,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:312: 	EnableBgSyncByMask(0b100);
	movs	r0, #4	@,
	ldr	r3, .L88+12	@ tmp128,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:313: 	Text_ResetTileAllocation();	// This is reset font!
	ldr	r3, .L88+16	@ tmp129,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:315: 	StartMenu(CAselectMenu);
	ldr	r3, .L88+20	@ tmp131,
	ldr	r0, .L88+24	@ tmp130,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:317: 	HideMoveRangeGraphics();
	ldr	r3, .L88+28	@ tmp132,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:319: }
	movs	r0, #59	@,
	pop	{r4}
	pop	{r1}
	bx	r1
.L89:
	.align	2
.L88:
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
@ CombatArt/Menu_TargetSelection/src/caMenu.c:330: 	ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r5, .L104	@ tmp133,
	ldr	r3, .L104+4	@ tmp134,
	ldr	r0, [r5]	@, gActiveUnit
@ CombatArt/Menu_TargetSelection/src/caMenu.c:324: int CA_WpnSelectHover(MenuProc* pmu, MenuCommandProc* pcmd){
	movs	r4, r1	@ pcmd, tmp173
@ CombatArt/Menu_TargetSelection/src/caMenu.c:330: 	ext = GetUnitExtByUnit(gActiveUnit);
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:332: 	if( NULL == ext )
	cmp	r0, #0	@ tmp174,
	beq	.L91		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:337: 	gpBattleFlagSu->isCombat = 1;
	movs	r6, #1	@ tmp142,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:340: 	UpdateMenuItemPanel(pcmd->commandDefinitionIndex);
	movs	r0, #0	@ tmp147,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:337: 	gpBattleFlagSu->isCombat = 1;
	ldr	r3, .L104+8	@ tmp136,
	ldr	r2, [r3]	@ gpBattleFlagSu, gpBattleFlagSu
	ldrb	r3, [r2]	@ gpBattleFlagSu.38_2->isCombat, gpBattleFlagSu.38_2->isCombat
	orrs	r3, r6	@ tmp141, tmp142
	strb	r3, [r2]	@ tmp141, gpBattleFlagSu.38_2->isCombat
@ CombatArt/Menu_TargetSelection/src/caMenu.c:340: 	UpdateMenuItemPanel(pcmd->commandDefinitionIndex);
	adds	r4, r4, #60	@ tmp146,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:340: 	UpdateMenuItemPanel(pcmd->commandDefinitionIndex);
	ldrsb	r0, [r4, r0]	@ tmp147,
	ldr	r3, .L104+12	@ tmp148,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:343: 	BmMapFill(gMapMovement,-1);
	movs	r1, #1	@,
	ldr	r3, .L104+16	@ tmp150,
	ldr	r7, .L104+20	@ tmp151,
	ldr	r0, [r3]	@, gMapMovement
	rsbs	r1, r1, #0	@,
	bl	.L106		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:344: 	BmMapFill(gMapRange,0);
	ldr	r3, .L104+24	@ tmp152,
	movs	r1, #0	@,
	ldr	r0, [r3]	@, gMapRange
	bl	.L106		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:346: 	item = gActiveUnit->items[pcmd->commandDefinitionIndex];
	ldrb	r3, [r4]	@ tmp159,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:346: 	item = gActiveUnit->items[pcmd->commandDefinitionIndex];
	adds	r3, r3, #12	@ tmp160,
	lsls	r3, r3, r6	@ tmp161, tmp160,
	ldr	r2, [r5]	@ gActiveUnit, gActiveUnit
	adds	r3, r2, r3	@ tmp162, gActiveUnit, tmp161
	ldrh	r4, [r3, #6]	@ item, *gActiveUnit.41_7
@ CombatArt/Menu_TargetSelection/src/caMenu.c:348: 	if( item )
	cmp	r4, #0	@ item,
	beq	.L93		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:349: 	if( IA_WEAPON & GetItemAttributes(item) )
	movs	r0, r4	@, item
	ldr	r3, .L104+28	@ tmp164,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:349: 	if( IA_WEAPON & GetItemAttributes(item) )
	tst	r0, r6	@ tmp175, tmp142
	beq	.L93		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:350: 	if( CanUnitUseWeapon(gActiveUnit, item) )
	movs	r1, r4	@, item
	ldr	r0, [r5]	@, gActiveUnit
	ldr	r3, .L104+32	@ tmp168,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:350: 	if( CanUnitUseWeapon(gActiveUnit, item) )
	cmp	r0, #0	@ tmp176,
	beq	.L93		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:351: 		FillMapForSingleItem(gActiveUnit,item);
	movs	r1, r4	@, item
	ldr	r0, [r5]	@, gActiveUnit
	ldr	r3, .L104+36	@ tmp170,
	bl	.L6		@
.L93:
@ CombatArt/Menu_TargetSelection/src/caMenu.c:353: 	DisplayMoveRangeGraphics(RNG_RED);
	movs	r0, #2	@,
	ldr	r3, .L104+40	@ tmp171,
	bl	.L6		@
.L91:
@ CombatArt/Menu_TargetSelection/src/caMenu.c:355: }
	@ sp needed	@
	movs	r0, #0	@,
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L105:
	.align	2
.L104:
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
	.align	1
	.global	CA_CommonUnHover
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	CA_CommonUnHover, %function
CA_CommonUnHover:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ CombatArt/Menu_TargetSelection/src/caMenu.c:373: 	BmMapFill(gMapMovement,-1);
	movs	r1, #1	@ tmp124,
	ldr	r3, .L108	@ tmp117,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:365: int CA_CommonUnHover(void){
	push	{r4, lr}	@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:373: 	BmMapFill(gMapMovement,-1);
	ldr	r0, [r3]	@, gMapMovement
@ CombatArt/Menu_TargetSelection/src/caMenu.c:378: }
	@ sp needed	@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:373: 	BmMapFill(gMapMovement,-1);
	ldr	r4, .L108+4	@ tmp118,
	rsbs	r1, r1, #0	@, tmp124
	bl	.L38		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:374: 	BmMapFill(gMapRange,0);
	ldr	r3, .L108+8	@ tmp119,
	movs	r1, #0	@,
	ldr	r0, [r3]	@, gMapRange
	bl	.L38		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:375: 	DisplayMoveRangeGraphics(0x3);
	movs	r0, #3	@,
	ldr	r3, .L108+12	@ tmp121,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:376: 	HideMoveRangeGraphicsWrapper();
	ldr	r3, .L108+16	@ tmp122,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:378: }
	movs	r0, #0	@,
	pop	{r4}
	pop	{r1}
	bx	r1
.L109:
	.align	2
.L108:
	.word	gMapMovement
	.word	BmMapFill
	.word	gMapRange
	.word	DisplayMoveRangeGraphics
	.word	HideMoveRangeGraphicsWrapper
	.size	CA_CommonUnHover, .-CA_CommonUnHover
	.align	1
	.global	TS_ReturnB_CA
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	TS_ReturnB_CA, %function
TS_ReturnB_CA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ CombatArt/Menu_TargetSelection/src/caMenu.c:388: 	if( MapEventEngineExists() )
	ldr	r3, .L113	@ tmp115,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:386: int TS_ReturnB_CA(void){
	push	{r4, lr}	@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:388: 	if( MapEventEngineExists() )
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:389: 		return TSE_NONE;
	movs	r3, #0	@ <retval>,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:388: 	if( MapEventEngineExists() )
	cmp	r0, r3	@ tmp119,
	bne	.L110		@,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:393: 		ProcStart(gProc_PostTs_Return,(Proc*)3);
	ldr	r3, .L113+4	@ tmp117,
	movs	r1, #3	@,
	ldr	r0, .L113+8	@ tmp116,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:394: 		return TSE_PLAY_BOOP | TSE_END | TSE_DISABLE;
	movs	r3, #11	@ <retval>,
.L110:
@ CombatArt/Menu_TargetSelection/src/caMenu.c:396: }
	@ sp needed	@
	movs	r0, r3	@, <retval>
	pop	{r4}
	pop	{r1}
	bx	r1
.L114:
	.align	2
.L113:
	.word	MapEventEngineExists
	.word	ProcStart
	.word	gProc_PostTs_Return
	.size	TS_ReturnB_CA, .-TS_ReturnB_CA
	.align	1
	.global	BuildWpnSelectReturnMenu_CA
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	BuildWpnSelectReturnMenu_CA, %function
BuildWpnSelectReturnMenu_CA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, lr}	@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:401: 	_ResetIconGraphics();
	ldr	r3, .L116	@ tmp119,
@ CombatArt/Menu_TargetSelection/src/caMenu.c:411: }
	@ sp needed	@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:401: 	_ResetIconGraphics();
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:402: 	LoadIconPalettes(0x4);
	movs	r0, #4	@,
	ldr	r3, .L116+4	@ tmp120,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:404: 	MenuProc* um = StartMenu(CAwpnSelectMenu);
	ldr	r3, .L116+8	@ tmp122,
	ldr	r0, .L116+12	@ tmp121,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:405: 	ForceMenuItemPanel(um,gActiveUnit,0xF,0xB);
	ldr	r4, .L116+16	@ tmp123,
	movs	r2, #15	@,
	ldr	r1, [r4]	@, gActiveUnit
	ldr	r5, .L116+20	@ tmp124,
	movs	r3, #11	@,
	bl	.L118		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:407: 	StartFace(0,GetUnitPortraitId(gActiveUnit),0xB0,0xC,0x2);
	ldr	r0, [r4]	@, gActiveUnit
	ldr	r3, .L116+24	@ tmp126,
	bl	.L6		@
	movs	r3, #2	@ tmp127,
	movs	r1, r0	@ _3, tmp140
	movs	r2, #176	@,
	str	r3, [sp]	@ tmp127,
	ldr	r4, .L116+28	@ tmp128,
	adds	r3, r3, #10	@,
	movs	r0, #0	@,
	bl	.L38		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:408: 	SetFaceBlinkControlById(0,5);
	movs	r1, #5	@,
	movs	r0, #0	@,
	ldr	r3, .L116+32	@ tmp129,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caMenu.c:410: 	gpBattleFlagSu->isCombat = 1;
	ldr	r3, .L116+36	@ tmp131,
	ldr	r2, [r3]	@ gpBattleFlagSu, gpBattleFlagSu
	movs	r3, #1	@ tmp137,
	ldrb	r1, [r2]	@ gpBattleFlagSu.48_4->isCombat, gpBattleFlagSu.48_4->isCombat
	orrs	r3, r1	@ tmp136, gpBattleFlagSu.48_4->isCombat
	strb	r3, [r2]	@ tmp136, gpBattleFlagSu.48_4->isCombat
@ CombatArt/Menu_TargetSelection/src/caMenu.c:411: }
	pop	{r0, r1, r2, r4, r5}
	pop	{r0}
	bx	r0
.L117:
	.align	2
.L116:
	.word	_ResetIconGraphics
	.word	LoadIconPalettes
	.word	StartMenu
	.word	CAwpnSelectMenu
	.word	gActiveUnit
	.word	ForceMenuItemPanel
	.word	GetUnitPortraitId
	.word	StartFace
	.word	SetFaceBlinkControlById
	.word	gpBattleFlagSu
	.size	BuildWpnSelectReturnMenu_CA, .-BuildWpnSelectReturnMenu_CA
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L6:
	bx	r3
.L38:
	bx	r4
.L118:
	bx	r5
.L106:
	bx	r7
