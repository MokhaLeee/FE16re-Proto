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
	.file	"caSelectMenu.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	CA_SelectUsability
	.arch armv4t
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
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:29: 	ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r5, .L18	@ tmp141,
	ldr	r3, .L18+4	@ tmp142,
	ldr	r0, [r5]	@, gActiveUnit
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:22: {
	movs	r4, r1	@ index, tmp170
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:29: 	ext = GetUnitExtByUnit(gActiveUnit);
	bl	.L20		@
	movs	r3, r0	@ ext, tmp171
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:32: 		return MCA_NONUSABLE;
	movs	r0, #3	@ <retval>,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:31: 	if( NULL == ext )
	cmp	r3, #0	@ ext,
	beq	.L1		@,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:34: 	if( !ext->skillbattle[index] )
	ldrb	r1, [r3, r4]	@ _2, *ext_28
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:34: 	if( !ext->skillbattle[index] )
	cmp	r1, #0	@ _2,
	beq	.L1		@,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:38: 	cur = &gpCombatArtConigList[artId];
	ldr	r3, .L18+8	@ tmp143,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:38: 	cur = &gpCombatArtConigList[artId];
	ldr	r6, [r3]	@ gpCombatArtConigList, gpCombatArtConigList
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:38: 	cur = &gpCombatArtConigList[artId];
	lsls	r2, r1, #5	@ tmp144, _2,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:38: 	cur = &gpCombatArtConigList[artId];
	adds	r6, r6, r2	@ cur, gpCombatArtConigList, tmp144
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:39: 	wpnType = cur->wpnType;
	ldrb	r3, [r6, #6]	@ wpnType,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:42: 	SetCombatArtInfo(gActiveUnit,artId);
	ldr	r0, [r5]	@, gActiveUnit
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:39: 	wpnType = cur->wpnType;
	str	r3, [sp, #4]	@ wpnType, %sfp
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:42: 	SetCombatArtInfo(gActiveUnit,artId);
	ldr	r3, .L18+12	@ tmp147,
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:49: 	for( int i=0; i<ITEM_SLOT_COUNT; i++ )
	movs	r7, #0	@ i,
.L4:
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:51: 		item = gActiveUnit->items[i];
	movs	r2, r7	@ tmp150, i
	ldr	r3, [r5]	@ gActiveUnit, gActiveUnit
	adds	r2, r2, #12	@ tmp150,
	lsls	r2, r2, #1	@ tmp151, tmp150,
	adds	r3, r3, r2	@ tmp152, gActiveUnit, tmp151
	ldrh	r4, [r3, #6]	@ item, *gActiveUnit.3_7
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:53: 		if( item )
	cmp	r4, #0	@ item,
	bne	.L3		@,
.L5:
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:49: 	for( int i=0; i<ITEM_SLOT_COUNT; i++ )
	adds	r7, r7, #1	@ i,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:49: 	for( int i=0; i<ITEM_SLOT_COUNT; i++ )
	cmp	r7, #5	@ i,
	bne	.L4		@,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:65: 	return MCA_GRAYED;
	movs	r0, #2	@ <retval>,
.L1:
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:66: }
	@ sp needed	@
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L3:
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:54: 		if( IA_WEAPON & GetItemAttributes(item) )
	ldr	r3, .L18+16	@ tmp154,
	movs	r0, r4	@, item
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:54: 		if( IA_WEAPON & GetItemAttributes(item) )
	movs	r3, #1	@ tmp182,
	tst	r0, r3	@ tmp172, tmp182
	beq	.L5		@,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:55: 		if( GetItemType(item) == wpnType )
	ldr	r3, .L18+20	@ tmp157,
	movs	r0, r4	@, item
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:55: 		if( GetItemType(item) == wpnType )
	ldr	r3, [sp, #4]	@ wpnType, %sfp
	cmp	r0, r3	@ tmp173, wpnType
	bne	.L5		@,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:56: 		if( CanUnitUseWeapon(gActiveUnit, item) )
	movs	r1, r4	@, item
	ldr	r0, [r5]	@, gActiveUnit
	ldr	r3, .L18+24	@ tmp159,
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:56: 		if( CanUnitUseWeapon(gActiveUnit, item) )
	cmp	r0, #0	@ tmp174,
	beq	.L5		@,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:57: 		if( ITEM_USE(item) > cur->durCost ) 
	movs	r1, #12	@ tmp179,
	ldrsh	r2, [r6, r1]	@ tmp163, cur, tmp179
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:57: 		if( ITEM_USE(item) > cur->durCost ) 
	lsrs	r3, r4, #8	@ tmp161, item,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:57: 		if( ITEM_USE(item) > cur->durCost ) 
	cmp	r3, r2	@ tmp161, tmp163
	ble	.L5		@,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:59: 			MakeTargetListForWeapon(gActiveUnit,item);
	ldr	r3, .L18+28	@ tmp165,
	movs	r1, r4	@, item
	ldr	r0, [r5]	@, gActiveUnit
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:60: 			if( GetTargetListSize() )
	ldr	r3, .L18+32	@ tmp166,
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:60: 			if( GetTargetListSize() )
	cmp	r0, #0	@ tmp175,
	beq	.L5		@,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:61: 				return MCA_USABLE;
	movs	r0, #1	@ <retval>,
	b	.L1		@
.L19:
	.align	2
.L18:
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
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:70: int CA_SelectEffect( MenuProc* pmu, MenuCommandProc* pcmd ){
	movs	r4, r1	@ pcmd, tmp171
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:73: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r5, .L26	@ tmp131,
	ldr	r3, .L26+4	@ tmp132,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:70: int CA_SelectEffect( MenuProc* pmu, MenuCommandProc* pcmd ){
	movs	r7, r0	@ pmu, tmp170
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:73: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r0, [r5]	@, gActiveUnit
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:75: 	if( (NULL == ext) | (MCA_USABLE != pcmd->availability) )
	movs	r3, r4	@ tmp135, pcmd
	adds	r3, r3, #61	@ tmp135,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:75: 	if( (NULL == ext) | (MCA_USABLE != pcmd->availability) )
	ldrb	r3, [r3]	@ tmp137,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:75: 	if( (NULL == ext) | (MCA_USABLE != pcmd->availability) )
	cmp	r3, #1	@ tmp137,
	bne	.L25		@,
	rsbs	r6, r0, #0	@ tmp146, ext
	adcs	r6, r6, r0	@ tmp146, ext
	cmp	r6, #0	@ tmp146,
	beq	.L22		@,
.L25:
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:77: 		MenuCallHelpBox(pmu,TextId_umCAselectGrayBox);
	ldr	r3, .L26+8	@ tmp148,
	movs	r0, r7	@, pmu
	ldrh	r1, [r3]	@ TextId_umCAselectGrayBox, TextId_umCAselectGrayBox
	ldr	r3, .L26+12	@ tmp150,
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:78: 		return ME_NONE;
	movs	r0, #0	@ <retval>,
.L21:
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:96: }
	@ sp needed	@
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L22:
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:81: 	u8 artId = ext->skillbattle[pcmd->commandDefinitionIndex];
	adds	r4, r4, #60	@ tmp153,
	ldrb	r3, [r4]	@ tmp154,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:84: 	SetCombatArtInfo(gActiveUnit,artId);
	ldrb	r1, [r0, r3]	@ tmp155, *ext_17
	ldr	r0, [r5]	@, gActiveUnit
	ldr	r3, .L26+16	@ tmp157,
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:86: 	_ResetIconGraphics();
	ldr	r3, .L26+20	@ tmp158,
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:87: 	LoadIconPalettes(0x4);
	movs	r0, #4	@,
	ldr	r3, .L26+24	@ tmp159,
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:89: 	um = StartMenu(CAwpnSelectMenu);
	ldr	r3, .L26+28	@ tmp161,
	ldr	r0, .L26+32	@ tmp160,
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:90: 	ForceMenuItemPanel(um,gActiveUnit,0xF,0xB);
	movs	r2, #15	@,
	ldr	r1, [r5]	@, gActiveUnit
	movs	r3, #11	@,
	ldr	r4, .L26+36	@ tmp163,
	bl	.L28		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:92: 	StartFace(0,GetUnitPortraitId(gActiveUnit),0xB0,0xC,0x2);
	ldr	r3, .L26+40	@ tmp165,
	ldr	r0, [r5]	@, gActiveUnit
	bl	.L20		@
	movs	r3, #2	@ tmp166,
	movs	r1, r0	@ _12, tmp174
	movs	r2, #176	@,
	str	r3, [sp]	@ tmp166,
	movs	r0, r6	@, tmp146
	adds	r3, r3, #10	@,
	ldr	r4, .L26+44	@ tmp167,
	bl	.L28		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:93: 	SetFaceBlinkControlById(0,5);
	movs	r0, r6	@, tmp146
	movs	r1, #5	@,
	ldr	r3, .L26+48	@ tmp168,
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:95: 	return ME_CLEAR_GFX | ME_PLAY_BEEP | ME_END | ME_DISABLE;
	movs	r0, #23	@ <retval>,
	b	.L21		@
.L27:
	.align	2
.L26:
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
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:104: 	gpBattleFlagSu->isCombat = 0;
	movs	r4, #1	@ tmp129,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:118: }
	@ sp needed	@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:104: 	gpBattleFlagSu->isCombat = 0;
	ldr	r3, .L30	@ tmp123,
	ldr	r2, [r3]	@ gpBattleFlagSu, gpBattleFlagSu
	ldrb	r3, [r2]	@ gpBattleFlagSu.11_1->isCombat, gpBattleFlagSu.11_1->isCombat
	bics	r3, r4	@ tmp128, tmp129
	strb	r3, [r2]	@ tmp128, gpBattleFlagSu.11_1->isCombat
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:107: 	FillBgMap(gBg2MapBuffer,0);
	movs	r1, #0	@,
	ldr	r0, .L30+4	@ tmp131,
	ldr	r3, .L30+8	@ tmp132,
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:108: 	EnableBgSyncByMask(0b100);
	movs	r0, #4	@,
	ldr	r3, .L30+12	@ tmp133,
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:109: 	Text_ResetTileAllocation();	// This is reset font!
	ldr	r3, .L30+16	@ tmp134,
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:113: 		gGameState.cursorPosMenu.x - gGameState.cameraRealPos.x,
	ldr	r3, .L30+20	@ tmp135,
	movs	r2, #28	@ tmp147,
	ldrsh	r1, [r3, r2]	@ tmp136, tmp135, tmp147
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:113: 		gGameState.cursorPosMenu.x - gGameState.cameraRealPos.x,
	movs	r2, #12	@ tmp148,
	ldrsh	r3, [r3, r2]	@ tmp138, tmp135, tmp148
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:111: 	StartSemiCenteredOrphanMenu(
	ldr	r0, .L30+24	@ tmp140,
	movs	r2, r4	@, tmp129
	subs	r1, r1, r3	@ tmp139, tmp136, tmp138
	ldr	r4, .L30+28	@ tmp141,
	movs	r3, #20	@,
	bl	.L28		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:115: 	HideMoveRangeGraphics();
	ldr	r3, .L30+32	@ tmp142,
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:118: }
	movs	r0, #59	@,
	pop	{r4}
	pop	{r1}
	bx	r1
.L31:
	.align	2
.L30:
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
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:126: 	u8 cmdId = pcmd->commandDefinitionIndex;
	movs	r3, r1	@ tmp141, pcmd
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:124: int CA_SelectTextDraw(MenuProc* pmu, MenuCommandProc* pcmd){
	push	{r4, r5, r6, lr}	@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:126: 	u8 cmdId = pcmd->commandDefinitionIndex;
	adds	r3, r3, #60	@ tmp141,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:124: int CA_SelectTextDraw(MenuProc* pmu, MenuCommandProc* pcmd){
	movs	r5, r1	@ pcmd, tmp167
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:126: 	u8 cmdId = pcmd->commandDefinitionIndex;
	ldrb	r4, [r3]	@ cmdId,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:127: 	u8 artId = GetUnitExtByUnit(gActiveUnit)->skillbattle[cmdId];
	ldr	r3, .L36	@ tmp142,
	ldr	r0, [r3]	@, gActiveUnit
	ldr	r3, .L36+4	@ tmp143,
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:129: 	if( MCA_USABLE != pcmd->availability )
	movs	r3, r5	@ tmp146, pcmd
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:127: 	u8 artId = GetUnitExtByUnit(gActiveUnit)->skillbattle[cmdId];
	ldrb	r6, [r0, r4]	@ artId, *_2
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:130: 		Text_SetColorId( &pcmd->text, TEXT_COLOR_GRAY );
	movs	r4, r5	@ pretmp_41, pcmd
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:129: 	if( MCA_USABLE != pcmd->availability )
	adds	r3, r3, #61	@ tmp146,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:129: 	if( MCA_USABLE != pcmd->availability )
	ldrb	r2, [r3]	@ tmp147,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:130: 		Text_SetColorId( &pcmd->text, TEXT_COLOR_GRAY );
	movs	r1, #1	@,
	ldr	r3, .L36+8	@ tmp166,
	adds	r4, r4, #52	@ pretmp_41,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:129: 	if( MCA_USABLE != pcmd->availability )
	cmp	r2, #1	@ tmp147,
	bne	.L35		@,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:132: 		Text_SetColorId( &pcmd->text ,TEXT_COLOR_NORMAL);
	movs	r1, #0	@,
.L35:
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:145: }
	@ sp needed	@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:132: 		Text_SetColorId( &pcmd->text ,TEXT_COLOR_NORMAL);
	movs	r0, r4	@, pretmp_41
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:136: 		GetStringFromIndex(gpCombatArtConigList[artId].name) );
	ldr	r3, .L36+12	@ tmp151,
	ldr	r3, [r3]	@ gpCombatArtConigList, gpCombatArtConigList
	lsls	r6, r6, #5	@ tmp152, artId,
	adds	r3, r3, r6	@ tmp153, gpCombatArtConigList, tmp152
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:136: 		GetStringFromIndex(gpCombatArtConigList[artId].name) );
	ldrh	r0, [r3, #2]	@ tmp154,
	ldr	r3, .L36+16	@ tmp155,
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:134: 	Text_AppendString(
	ldr	r3, .L36+20	@ tmp156,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:136: 		GetStringFromIndex(gpCombatArtConigList[artId].name) );
	movs	r1, r0	@ _14, tmp169
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:134: 	Text_AppendString(
	movs	r0, r4	@, pretmp_41
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:140: 		TILEMAP_LOCATED(gBg0MapBuffer, 
	ldrh	r1, [r5, #44]	@ tmp157,
	ldrh	r3, [r5, #42]	@ tmp159,
	lsls	r1, r1, #5	@ tmp158, tmp157,
	adds	r1, r1, r3	@ tmp160, tmp158, tmp159
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:138: 	Text_Display(
	ldr	r3, .L36+24	@ tmp163,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:140: 		TILEMAP_LOCATED(gBg0MapBuffer, 
	lsls	r1, r1, #1	@ tmp161, tmp160,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:138: 	Text_Display(
	movs	r0, r4	@, pretmp_41
	adds	r1, r1, r3	@ tmp162, tmp161, tmp163
	ldr	r3, .L36+28	@ tmp164,
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:145: }
	movs	r0, #0	@,
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L37:
	.align	2
.L36:
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
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:158: 	ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r5, .L57	@ tmp148,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:149: int CA_SelectHover(MenuProc* pmu, MenuCommandProc* pcmd){
	sub	sp, sp, #20	@,,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:158: 	ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r0, [r5]	@, gActiveUnit
	ldr	r3, .L57+4	@ tmp149,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:149: int CA_SelectHover(MenuProc* pmu, MenuCommandProc* pcmd){
	movs	r4, r1	@ pcmd, tmp190
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:158: 	ext = GetUnitExtByUnit(gActiveUnit);
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:160: 	if( NULL == ext )
	cmp	r0, #0	@ ext,
	beq	.L40		@,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:174: 	for( int i=0; i<ITEM_SLOT_COUNT; i++ )
	movs	r6, #0	@ i,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:163: 	artId = ext->skillbattle[pcmd->commandDefinitionIndex];
	adds	r4, r4, #60	@ tmp152,
	ldrb	r3, [r4]	@ tmp153,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:171: 	cnt = 0;
	movs	r4, r6	@ cnt, i
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:163: 	artId = ext->skillbattle[pcmd->commandDefinitionIndex];
	ldrb	r1, [r0, r3]	@ artId, *ext_36
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:164: 	cur = &gpCombatArtConigList[artId];
	ldr	r3, .L57+8	@ tmp154,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:164: 	cur = &gpCombatArtConigList[artId];
	ldr	r3, [r3]	@ gpCombatArtConigList, gpCombatArtConigList
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:164: 	cur = &gpCombatArtConigList[artId];
	lsls	r2, r1, #5	@ tmp155, artId,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:164: 	cur = &gpCombatArtConigList[artId];
	adds	r3, r3, r2	@ cur, gpCombatArtConigList, tmp155
	str	r3, [sp, #8]	@ cur, %sfp
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:165: 	wpnType = cur->wpnType;
	ldrb	r3, [r3, #6]	@ wpnType,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:168: 	SetCombatArtInfo(gActiveUnit,artId);
	ldr	r0, [r5]	@, gActiveUnit
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:165: 	wpnType = cur->wpnType;
	str	r3, [sp, #12]	@ wpnType, %sfp
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:168: 	SetCombatArtInfo(gActiveUnit,artId);
	ldr	r3, .L57+12	@ tmp158,
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:172: 	mask = 0;
	str	r6, [sp, #4]	@ i, %sfp
.L42:
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:176: 		item = gActiveUnit->items[i];
	movs	r2, r6	@ tmp161, i
	ldr	r3, [r5]	@ gActiveUnit, gActiveUnit
	adds	r2, r2, #12	@ tmp161,
	lsls	r2, r2, #1	@ tmp162, tmp161,
	adds	r3, r3, r2	@ tmp163, gActiveUnit, tmp162
	ldrh	r7, [r3, #6]	@ item, *gActiveUnit.17_8
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:178: 		if( item )
	cmp	r7, #0	@ item,
	beq	.L41		@,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:179: 		if( IA_WEAPON & GetItemAttributes(item) )
	ldr	r3, .L57+16	@ tmp165,
	movs	r0, r7	@, item
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:179: 		if( IA_WEAPON & GetItemAttributes(item) )
	movs	r3, #1	@ tmp207,
	tst	r0, r3	@ tmp192, tmp207
	beq	.L41		@,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:180: 		if( GetItemType(item) == wpnType )
	ldr	r3, .L57+20	@ tmp168,
	movs	r0, r7	@, item
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:180: 		if( GetItemType(item) == wpnType )
	ldr	r3, [sp, #12]	@ wpnType, %sfp
	cmp	r0, r3	@ tmp193, wpnType
	bne	.L41		@,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:181: 		if( CanUnitUseWeapon(gActiveUnit, item) )
	movs	r1, r7	@, item
	ldr	r0, [r5]	@, gActiveUnit
	ldr	r3, .L57+24	@ tmp170,
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:181: 		if( CanUnitUseWeapon(gActiveUnit, item) )
	cmp	r0, #0	@ tmp194,
	beq	.L41		@,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:182: 		if( ITEM_USE(item) > cur->durCost )
	ldr	r2, [sp, #8]	@ cur, %sfp
	movs	r1, #12	@ tmp202,
	ldrsh	r2, [r2, r1]	@ tmp174, cur, tmp202
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:182: 		if( ITEM_USE(item) > cur->durCost )
	lsrs	r3, r7, #8	@ tmp172, item,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:182: 		if( ITEM_USE(item) > cur->durCost )
	cmp	r3, r2	@ tmp172, tmp174
	ble	.L41		@,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:184: 			mask |= ItemRange2Mask(item,gActiveUnit);
	ldr	r3, .L57+28	@ tmp176,
	movs	r0, r7	@, item
	ldr	r1, [r5]	@, gActiveUnit
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:184: 			mask |= ItemRange2Mask(item,gActiveUnit);
	ldr	r3, [sp, #4]	@ mask, %sfp
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:185: 			cnt++;
	adds	r4, r4, #1	@ tmp177,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:184: 			mask |= ItemRange2Mask(item,gActiveUnit);
	orrs	r3, r0	@ mask, tmp195
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:185: 			cnt++;
	lsls	r4, r4, #24	@ cnt, tmp177,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:184: 			mask |= ItemRange2Mask(item,gActiveUnit);
	str	r3, [sp, #4]	@ mask, %sfp
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:185: 			cnt++;
	lsrs	r4, r4, #24	@ cnt, cnt,
.L41:
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:174: 	for( int i=0; i<ITEM_SLOT_COUNT; i++ )
	adds	r6, r6, #1	@ i,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:174: 	for( int i=0; i<ITEM_SLOT_COUNT; i++ )
	cmp	r6, #5	@ i,
	bne	.L42		@,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:189: 	if( 0 == cnt )
	cmp	r4, #0	@ cnt,
	beq	.L40		@,
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:193: 	BmMapFill(gMapMovement,-1);
	movs	r1, #1	@,
	ldr	r3, .L57+32	@ tmp180,
	ldr	r4, .L57+36	@ tmp181,
	ldr	r0, [r3]	@, gMapMovement
	rsbs	r1, r1, #0	@,
	bl	.L28		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:194: 	BmMapFill(gMapRange,0);
	ldr	r3, .L57+40	@ tmp182,
	movs	r1, #0	@,
	ldr	r0, [r3]	@, gMapRange
	bl	.L28		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:195: 	FillRangeMapByRangeMask(gActiveUnit,mask);
	ldr	r0, [r5]	@, gActiveUnit
	ldr	r3, .L57+44	@ tmp185,
	ldr	r1, [sp, #4]	@, %sfp
	bl	.L20		@
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:196: 	DisplayMoveRangeGraphics(2);
	movs	r0, #2	@,
	ldr	r3, .L57+48	@ tmp186,
	bl	.L20		@
.L40:
@ CombatArt/Menu_TargetSelection/src/caSelectMenu.c:198: }
	movs	r0, #0	@,
	add	sp, sp, #20	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L58:
	.align	2
.L57:
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
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L20:
	bx	r3
.L28:
	bx	r4
