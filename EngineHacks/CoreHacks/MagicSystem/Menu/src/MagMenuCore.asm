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
	.file	"MagMenuCore.c"
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
	.type	Mag_UpperHover.constprop.0, %function
Mag_UpperHover.constprop.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
@ MagicSystem/Menu/src/MagMenuCore.c:95: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r7, .L14	@ tmp131,
@ MagicSystem/Menu/src/MagMenuCore.c:91: static int Mag_UpperHover(MenuProc* pmu, MenuCommandProc* pcmd,FuncType2 getmagitem, u8 mapDisplayStyle){	
	sub	sp, sp, #20	@,,
@ MagicSystem/Menu/src/MagMenuCore.c:91: static int Mag_UpperHover(MenuProc* pmu, MenuCommandProc* pcmd,FuncType2 getmagitem, u8 mapDisplayStyle){	
	movs	r4, r0	@ pcmd, tmp153
@ MagicSystem/Menu/src/MagMenuCore.c:95: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r3, .L14+4	@ tmp132,
	ldr	r0, [r7]	@, gActiveUnit
@ MagicSystem/Menu/src/MagMenuCore.c:91: static int Mag_UpperHover(MenuProc* pmu, MenuCommandProc* pcmd,FuncType2 getmagitem, u8 mapDisplayStyle){	
	str	r1, [sp, #8]	@ tmp154, %sfp
	str	r2, [sp, #12]	@ tmp155, %sfp
@ MagicSystem/Menu/src/MagMenuCore.c:95: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	bl	.L16		@
	str	r0, [sp, #4]	@ tmp156, %sfp
@ MagicSystem/Menu/src/MagMenuCore.c:97: 	if( NULL == ext )
	cmp	r0, #0	@ ext,
	beq	.L3		@,
@ MagicSystem/Menu/src/MagMenuCore.c:99: 	if( MCA_USABLE != pcmd->availability )
	adds	r4, r4, #61	@ tmp135,
@ MagicSystem/Menu/src/MagMenuCore.c:99: 	if( MCA_USABLE != pcmd->availability )
	ldrb	r3, [r4]	@ tmp136,
	cmp	r3, #1	@ tmp136,
	bne	.L3		@,
@ MagicSystem/Menu/src/MagMenuCore.c:92: 	int magCnt = 0;
	movs	r4, #0	@ magCnt,
@ MagicSystem/Menu/src/MagMenuCore.c:94: 	u32 mask = 0;
	movs	r6, r4	@ mask, magCnt
@ MagicSystem/Menu/src/MagMenuCore.c:102: 	for(int i=0; i<MAGIC_LIST_SIZE; i++ )
	movs	r5, r4	@ i, magCnt
.L6:
@ MagicSystem/Menu/src/MagMenuCore.c:104: 		mag = getmagitem(ext,i);//GetBMagItem(ext,i);
	lsls	r1, r5, #24	@ tmp137, i,
	ldr	r0, [sp, #4]	@, %sfp
	ldr	r3, [sp, #8]	@ getmagitem, %sfp
	lsrs	r1, r1, #24	@ tmp137, tmp137,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:105: 		if( 0 != mag )
	cmp	r0, #0	@ tmp139,
	beq	.L5		@,
@ MagicSystem/Menu/src/MagMenuCore.c:107: 			mask = mask | ItemRange2Mask(mag,gActiveUnit);
	ldr	r3, .L14	@ tmp141,
	ldr	r1, [r3]	@, gActiveUnit
	ldr	r3, .L14+8	@ tmp142,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:108: 			magCnt++;
	adds	r4, r4, #1	@ magCnt,
@ MagicSystem/Menu/src/MagMenuCore.c:107: 			mask = mask | ItemRange2Mask(mag,gActiveUnit);
	orrs	r6, r0	@ mask, tmp158
.L5:
@ MagicSystem/Menu/src/MagMenuCore.c:102: 	for(int i=0; i<MAGIC_LIST_SIZE; i++ )
	adds	r5, r5, #1	@ i,
@ MagicSystem/Menu/src/MagMenuCore.c:102: 	for(int i=0; i<MAGIC_LIST_SIZE; i++ )
	cmp	r5, #15	@ i,
	bne	.L6		@,
@ MagicSystem/Menu/src/MagMenuCore.c:112: 	if( 0 == magCnt )
	cmp	r4, #0	@ magCnt,
	beq	.L3		@,
@ MagicSystem/Menu/src/MagMenuCore.c:115: 	BmMapFill(gMapMovement,-1);
	movs	r1, #1	@,
	ldr	r3, .L14+12	@ tmp144,
	ldr	r4, .L14+16	@ tmp145,
	ldr	r0, [r3]	@, gMapMovement
	rsbs	r1, r1, #0	@,
	bl	.L17		@
@ MagicSystem/Menu/src/MagMenuCore.c:116: 	BmMapFill(gMapRange,0);
	ldr	r3, .L14+20	@ tmp146,
	movs	r1, #0	@,
	ldr	r0, [r3]	@, gMapRange
	bl	.L17		@
@ MagicSystem/Menu/src/MagMenuCore.c:120: 	FillMapRange(gActiveUnit,mask);
	ldr	r0, [r7]	@, gActiveUnit
	ldr	r3, .L14+24	@ tmp149,
	movs	r1, r6	@, mask
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:122: 	DisplayMoveRangeGraphics(mapDisplayStyle);
	ldr	r0, [sp, #12]	@, %sfp
	ldr	r3, .L14+28	@ tmp150,
	bl	.L16		@
.L3:
@ MagicSystem/Menu/src/MagMenuCore.c:124: }
	movs	r0, #0	@,
	add	sp, sp, #20	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L15:
	.align	2
.L14:
	.word	gActiveUnit
	.word	GetUnitExtByUnit
	.word	ItemRange2Mask
	.word	gMapMovement
	.word	BmMapFill
	.word	gMapRange
	.word	FillMapRange
	.word	DisplayMoveRangeGraphics
	.size	Mag_UpperHover.constprop.0, .-Mag_UpperHover.constprop.0
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Mag_Usability.constprop.0, %function
Mag_Usability.constprop.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ MagicSystem/Menu/src/MagMenuCore.c:28: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r6, .L24	@ tmp125,
	ldr	r3, .L24+4	@ tmp126,
@ MagicSystem/Menu/src/MagMenuCore.c:27: static int Mag_Usability(MenuProc* pmu, int index, FuncType1 IsEmpty){
	movs	r5, r0	@ IsEmpty, tmp138
@ MagicSystem/Menu/src/MagMenuCore.c:28: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r0, [r6]	@, gActiveUnit
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:30: 	gUnitSubject = gActiveUnit;
	ldr	r3, [r6]	@ gActiveUnit.1_3, gActiveUnit
	ldr	r2, .L24+8	@ tmp128,
	str	r3, [r2]	@ gActiveUnit.1_3, gUnitSubject
@ MagicSystem/Menu/src/MagMenuCore.c:33: 	if( !IsClassHandleMag(UNIT_CLASSID(gActiveUnit)) )
	ldr	r3, [r3, #4]	@ gActiveUnit.1_3->pClassData, gActiveUnit.1_3->pClassData
@ MagicSystem/Menu/src/MagMenuCore.c:28: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	movs	r4, r0	@ ext, tmp139
@ MagicSystem/Menu/src/MagMenuCore.c:33: 	if( !IsClassHandleMag(UNIT_CLASSID(gActiveUnit)) )
	ldrb	r0, [r3, #4]	@ tmp130,
	ldr	r3, .L24+12	@ tmp131,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:34: 		return MCA_NONUSABLE;
	movs	r3, #3	@ <retval>,
@ MagicSystem/Menu/src/MagMenuCore.c:33: 	if( !IsClassHandleMag(UNIT_CLASSID(gActiveUnit)) )
	cmp	r0, #0	@ tmp140,
	beq	.L18		@,
@ MagicSystem/Menu/src/MagMenuCore.c:36: 	if( NULL == ext )
	cmp	r4, #0	@ ext,
	beq	.L18		@,
@ MagicSystem/Menu/src/MagMenuCore.c:39: 	if( FALSE == isUnitMagSet(ext) )
	movs	r0, r4	@, ext
	ldr	r3, .L24+16	@ tmp132,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:39: 	if( FALSE == isUnitMagSet(ext) )
	cmp	r0, #0	@ tmp141,
	bne	.L20		@,
@ MagicSystem/Menu/src/MagMenuCore.c:40: 		SetUnitMagList(gActiveUnit);
	ldr	r0, [r6]	@, gActiveUnit
	ldr	r3, .L24+20	@ tmp134,
	bl	.L16		@
.L20:
@ MagicSystem/Menu/src/MagMenuCore.c:42: 	if( !IsEmpty(ext) )
	movs	r0, r4	@, ext
	bl	.L26		@
@ MagicSystem/Menu/src/MagMenuCore.c:45: 		return MCA_GRAYED;
	movs	r3, r0	@ tmp142, tmp142
	subs	r2, r3, #1	@ tmp137, tmp142
	sbcs	r3, r3, r2	@ tmp142, tmp142, tmp137
	adds	r3, r3, #1	@ <retval>,
.L18:
@ MagicSystem/Menu/src/MagMenuCore.c:46: }
	movs	r0, r3	@, <retval>
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L25:
	.align	2
.L24:
	.word	gActiveUnit
	.word	GetUnitExtByUnit
	.word	gUnitSubject
	.word	IsClassHandleMag
	.word	isUnitMagSet
	.word	SetUnitMagList
	.size	Mag_Usability.constprop.0, .-Mag_Usability.constprop.0
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Mag_Effect.isra.0, %function
Mag_Effect.isra.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ MagicSystem/Menu/src/MagMenuCore.c:56: static int Mag_Effect(MenuProc* pmu, MenuCommandProc* pcmd, const MenuDefinition* mdef){
	movs	r4, r2	@ mdef, tmp136
@ MagicSystem/Menu/src/MagMenuCore.c:58: 	if( MCA_USABLE != pcmd->availability )
	cmp	r1, #1	@ tmp135,
	beq	.L28		@,
@ MagicSystem/Menu/src/MagMenuCore.c:60: 		MenuCallHelpBox(pmu,TextId_umMagGrayBox);
	ldr	r3, .L30	@ tmp122,
	ldrh	r1, [r3]	@ TextId_umMagGrayBox, TextId_umMagGrayBox
	ldr	r3, .L30+4	@ tmp124,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:61: 		return ME_NONE; //ME_PLAY_BOOP;
	movs	r0, #0	@ <retval>,
.L27:
@ MagicSystem/Menu/src/MagMenuCore.c:76: }
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L28:
@ MagicSystem/Menu/src/MagMenuCore.c:65: 	CMD_CUR_NUM = 0;
	movs	r2, #0	@ tmp126,
@ MagicSystem/Menu/src/MagMenuCore.c:65: 	CMD_CUR_NUM = 0;
	ldr	r3, .L30+8	@ tmp125,
	ldr	r3, [r3]	@ gpCommonSaveSu.6_13, gpCommonSaveSu
@ MagicSystem/Menu/src/MagMenuCore.c:65: 	CMD_CUR_NUM = 0;
	strb	r2, [r3]	@ tmp126, *gpCommonSaveSu.6_13
@ MagicSystem/Menu/src/MagMenuCore.c:67: 	_ResetIconGraphics();
	ldr	r3, .L30+12	@ tmp128,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:68: 	LoadIconPalettes(0x4);
	movs	r0, #4	@,
	ldr	r3, .L30+16	@ tmp129,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:70: 	MenuProc* umMag = StartMenu(mdef);
	movs	r0, r4	@, mdef
	ldr	r3, .L30+20	@ tmp130,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:74: 	ForceMenuItemPanel(umMag,gActiveUnit,0xF,0xB);
	ldr	r1, .L30+24	@ tmp131,
	movs	r3, #11	@,
	movs	r2, #15	@,
	ldr	r1, [r1]	@, gActiveUnit
	ldr	r4, .L30+28	@ tmp132,
	bl	.L17		@
	movs	r0, #23	@ <retval>,
	b	.L27		@
.L31:
	.align	2
.L30:
	.word	TextId_umMagGrayBox
	.word	MenuCallHelpBox
	.word	gpCommonSaveSu
	.word	_ResetIconGraphics
	.word	LoadIconPalettes
	.word	StartMenu
	.word	gActiveUnit
	.word	ForceMenuItemPanel
	.size	Mag_Effect.isra.0, .-Mag_Effect.isra.0
	.align	1
	.global	BMag_Usability
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	BMag_Usability, %function
BMag_Usability:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ MagicSystem/Menu/src/MagMenuCore.c:49: {	return Mag_Usability(pmu,index,isBMagListEmpty); }
	ldr	r0, .L33	@ tmp116,
@ MagicSystem/Menu/src/MagMenuCore.c:49: {	return Mag_Usability(pmu,index,isBMagListEmpty); }
	@ sp needed	@
@ MagicSystem/Menu/src/MagMenuCore.c:49: {	return Mag_Usability(pmu,index,isBMagListEmpty); }
	bl	Mag_Usability.constprop.0		@
@ MagicSystem/Menu/src/MagMenuCore.c:49: {	return Mag_Usability(pmu,index,isBMagListEmpty); }
	pop	{r4}
	pop	{r1}
	bx	r1
.L34:
	.align	2
.L33:
	.word	isBMagListEmpty
	.size	BMag_Usability, .-BMag_Usability
	.align	1
	.global	WMag_Usability
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	WMag_Usability, %function
WMag_Usability:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ MagicSystem/Menu/src/MagMenuCore.c:52: {	return Mag_Usability(pmu,index,isWMagListEmpty); }
	ldr	r0, .L36	@ tmp116,
@ MagicSystem/Menu/src/MagMenuCore.c:52: {	return Mag_Usability(pmu,index,isWMagListEmpty); }
	@ sp needed	@
@ MagicSystem/Menu/src/MagMenuCore.c:52: {	return Mag_Usability(pmu,index,isWMagListEmpty); }
	bl	Mag_Usability.constprop.0		@
@ MagicSystem/Menu/src/MagMenuCore.c:52: {	return Mag_Usability(pmu,index,isWMagListEmpty); }
	pop	{r4}
	pop	{r1}
	bx	r1
.L37:
	.align	2
.L36:
	.word	isWMagListEmpty
	.size	WMag_Usability, .-WMag_Usability
	.align	1
	.global	BMag_Effect
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	BMag_Effect, %function
BMag_Effect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ MagicSystem/Menu/src/MagMenuCore.c:80: {	return Mag_Effect(pmu,pcmd,BMagSelectMenu); }
	adds	r1, r1, #61	@ tmp120,
	ldr	r2, .L39	@ tmp117,
@ MagicSystem/Menu/src/MagMenuCore.c:80: {	return Mag_Effect(pmu,pcmd,BMagSelectMenu); }
	@ sp needed	@
@ MagicSystem/Menu/src/MagMenuCore.c:80: {	return Mag_Effect(pmu,pcmd,BMagSelectMenu); }
	ldrb	r1, [r1]	@ MEM[(unsigned char *)pcmd_3(D) + 61B], MEM[(unsigned char *)pcmd_3(D) + 61B]
	bl	Mag_Effect.isra.0		@
@ MagicSystem/Menu/src/MagMenuCore.c:80: {	return Mag_Effect(pmu,pcmd,BMagSelectMenu); }
	pop	{r4}
	pop	{r1}
	bx	r1
.L40:
	.align	2
.L39:
	.word	BMagSelectMenu
	.size	BMag_Effect, .-BMag_Effect
	.align	1
	.global	WMag_Effect
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	WMag_Effect, %function
WMag_Effect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ MagicSystem/Menu/src/MagMenuCore.c:83: {	return Mag_Effect(pmu,pcmd,WMagSelectMenu); }
	adds	r1, r1, #61	@ tmp120,
	ldr	r2, .L42	@ tmp117,
@ MagicSystem/Menu/src/MagMenuCore.c:83: {	return Mag_Effect(pmu,pcmd,WMagSelectMenu); }
	@ sp needed	@
@ MagicSystem/Menu/src/MagMenuCore.c:83: {	return Mag_Effect(pmu,pcmd,WMagSelectMenu); }
	ldrb	r1, [r1]	@ MEM[(unsigned char *)pcmd_3(D) + 61B], MEM[(unsigned char *)pcmd_3(D) + 61B]
	bl	Mag_Effect.isra.0		@
@ MagicSystem/Menu/src/MagMenuCore.c:83: {	return Mag_Effect(pmu,pcmd,WMagSelectMenu); }
	pop	{r4}
	pop	{r1}
	bx	r1
.L43:
	.align	2
.L42:
	.word	WMagSelectMenu
	.size	WMag_Effect, .-WMag_Effect
	.align	1
	.global	BMag_UpperHover
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	BMag_UpperHover, %function
BMag_UpperHover:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ MagicSystem/Menu/src/MagMenuCore.c:127: {	return Mag_UpperHover(pmu,pcmd,GetBMagItem,RNG_RED); }
	movs	r0, r1	@ pcmd, tmp118
@ MagicSystem/Menu/src/MagMenuCore.c:127: {	return Mag_UpperHover(pmu,pcmd,GetBMagItem,RNG_RED); }
	@ sp needed	@
@ MagicSystem/Menu/src/MagMenuCore.c:127: {	return Mag_UpperHover(pmu,pcmd,GetBMagItem,RNG_RED); }
	movs	r2, #2	@,
	ldr	r1, .L45	@ tmp116,
	bl	Mag_UpperHover.constprop.0		@
@ MagicSystem/Menu/src/MagMenuCore.c:127: {	return Mag_UpperHover(pmu,pcmd,GetBMagItem,RNG_RED); }
	pop	{r4}
	pop	{r1}
	bx	r1
.L46:
	.align	2
.L45:
	.word	GetBMagItem
	.size	BMag_UpperHover, .-BMag_UpperHover
	.align	1
	.global	WMag_UpperHover
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	WMag_UpperHover, %function
WMag_UpperHover:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ MagicSystem/Menu/src/MagMenuCore.c:130: {	return Mag_UpperHover(pmu,pcmd,GetWMagItem,RNG_GREEN); }
	movs	r0, r1	@ pcmd, tmp118
@ MagicSystem/Menu/src/MagMenuCore.c:130: {	return Mag_UpperHover(pmu,pcmd,GetWMagItem,RNG_GREEN); }
	@ sp needed	@
@ MagicSystem/Menu/src/MagMenuCore.c:130: {	return Mag_UpperHover(pmu,pcmd,GetWMagItem,RNG_GREEN); }
	movs	r2, #4	@,
	ldr	r1, .L48	@ tmp116,
	bl	Mag_UpperHover.constprop.0		@
@ MagicSystem/Menu/src/MagMenuCore.c:130: {	return Mag_UpperHover(pmu,pcmd,GetWMagItem,RNG_GREEN); }
	pop	{r4}
	pop	{r1}
	bx	r1
.L49:
	.align	2
.L48:
	.word	GetWMagItem
	.size	WMag_UpperHover, .-WMag_UpperHover
	.align	1
	.global	BMagSelect_Usability
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	BMagSelect_Usability, %function
BMagSelect_Usability:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ MagicSystem/Menu/src/MagMenuCore.c:162: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r4, .L55	@ tmp130,
@ MagicSystem/Menu/src/MagMenuCore.c:161: {
	movs	r6, r1	@ index, tmp164
@ MagicSystem/Menu/src/MagMenuCore.c:162: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r3, .L55+4	@ tmp131,
	ldr	r0, [r4]	@, gActiveUnit
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:163: 	u8 mag = GetBMagItem( ext,index );
	lsls	r1, r6, #24	@ tmp132, index,
	lsrs	r1, r1, #24	@ tmp132, tmp132,
	ldr	r3, .L55+8	@ tmp134,
@ MagicSystem/Menu/src/MagMenuCore.c:162: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	movs	r5, r0	@ ext, tmp165
@ MagicSystem/Menu/src/MagMenuCore.c:163: 	u8 mag = GetBMagItem( ext,index );
	bl	.L16		@
	movs	r1, r0	@ tmp135, tmp166
@ MagicSystem/Menu/src/MagMenuCore.c:165: 	if( (NULL==ext) | (0==mag) )
	cmp	r5, #0	@ ext,
	beq	.L52		@,
@ MagicSystem/Menu/src/MagMenuCore.c:165: 	if( (NULL==ext) | (0==mag) )
	lsls	r3, r0, #24	@ tmp143, tmp135,
	lsrs	r3, r3, #24	@ tmp143, tmp143,
@ MagicSystem/Menu/src/MagMenuCore.c:165: 	if( (NULL==ext) | (0==mag) )
	beq	.L52		@,
@ MagicSystem/Menu/src/MagMenuCore.c:168: 	if( CMD_CUR_NUM > (MAX_CMD_NUM-1) )
	ldr	r3, .L55+12	@ tmp149,
	ldr	r2, [r3]	@ gpCommonSaveSu.14_7, gpCommonSaveSu
	ldrb	r3, [r2]	@ _8, *gpCommonSaveSu.14_7
@ MagicSystem/Menu/src/MagMenuCore.c:166: 		return MCA_NONUSABLE;
	movs	r0, #3	@ <retval>,
@ MagicSystem/Menu/src/MagMenuCore.c:168: 	if( CMD_CUR_NUM > (MAX_CMD_NUM-1) )
	cmp	r3, #10	@ _8,
	bhi	.L50		@,
@ MagicSystem/Menu/src/MagMenuCore.c:172: 	CMD_CUR_NUM++;
	adds	r3, r3, #1	@ tmp152,
	strb	r3, [r2]	@ tmp152, *gpCommonSaveSu.14_7
@ MagicSystem/Menu/src/MagMenuCore.c:174: 	MakeTargetListForWeapon(gActiveUnit,mag);
	lsls	r1, r1, #24	@ tmp156, tmp135,
	ldr	r0, [r4]	@, gActiveUnit
	ldr	r3, .L55+16	@ tmp159,
	lsrs	r1, r1, #24	@ tmp156, tmp156,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:176: 	if( 0 == GetTargetListSize() )
	ldr	r3, .L55+20	@ tmp160,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:179: 		return MCA_USABLE;
	rsbs	r3, r0, #0	@ tmp163, tmp167
	adcs	r0, r0, r3	@ tmp162, tmp167, tmp163
	adds	r0, r0, #1	@ <retval>,
.L50:
@ MagicSystem/Menu/src/MagMenuCore.c:180: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L52:
@ MagicSystem/Menu/src/MagMenuCore.c:166: 		return MCA_NONUSABLE;
	movs	r0, #3	@ <retval>,
	b	.L50		@
.L56:
	.align	2
.L55:
	.word	gActiveUnit
	.word	GetUnitExtByUnit
	.word	GetBMagItem
	.word	gpCommonSaveSu
	.word	MakeTargetListForWeapon
	.word	GetTargetListSize
	.size	BMagSelect_Usability, .-BMagSelect_Usability
	.align	1
	.global	WMagSelect_Usability
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	WMagSelect_Usability, %function
WMagSelect_Usability:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ MagicSystem/Menu/src/MagMenuCore.c:185: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r6, .L66	@ tmp131,
@ MagicSystem/Menu/src/MagMenuCore.c:184: {
	movs	r4, r1	@ index, tmp159
@ MagicSystem/Menu/src/MagMenuCore.c:185: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r3, .L66+4	@ tmp132,
	ldr	r0, [r6]	@, gActiveUnit
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:186: 	u16 mag = GetWMagItem(ext,index);
	lsls	r1, r4, #24	@ tmp133, index,
	ldr	r3, .L66+8	@ tmp135,
	lsrs	r1, r1, #24	@ tmp133, tmp133,
@ MagicSystem/Menu/src/MagMenuCore.c:185: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	movs	r5, r0	@ ext, tmp160
@ MagicSystem/Menu/src/MagMenuCore.c:186: 	u16 mag = GetWMagItem(ext,index);
	bl	.L16		@
	movs	r4, r0	@ tmp136, tmp161
@ MagicSystem/Menu/src/MagMenuCore.c:188: 	if( (NULL==ext) | (0==mag) )
	cmp	r5, #0	@ ext,
	beq	.L61		@,
	cmp	r0, #0	@ tmp136,
	beq	.L61		@,
@ MagicSystem/Menu/src/MagMenuCore.c:191: 	if( CMD_CUR_NUM > (MAX_CMD_NUM-1) )
	ldr	r3, .L66+12	@ tmp148,
	ldr	r2, [r3]	@ gpCommonSaveSu.18_6, gpCommonSaveSu
	ldrb	r3, [r2]	@ _7, *gpCommonSaveSu.18_6
@ MagicSystem/Menu/src/MagMenuCore.c:189: 		return MCA_NONUSABLE;
	movs	r0, #3	@ <retval>,
@ MagicSystem/Menu/src/MagMenuCore.c:191: 	if( CMD_CUR_NUM > (MAX_CMD_NUM-1) )
	cmp	r3, #10	@ _7,
	bhi	.L57		@,
@ MagicSystem/Menu/src/MagMenuCore.c:194: 	CMD_CUR_NUM ++;
	adds	r3, r3, #1	@ tmp151,
	strb	r3, [r2]	@ tmp151, *gpCommonSaveSu.18_6
@ MagicSystem/Menu/src/MagMenuCore.c:196: 	if( IA_STAFF & GetItemAttributes(mag) )
	movs	r0, r4	@, tmp136
	ldr	r3, .L66+16	@ tmp153,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:196: 	if( IA_STAFF & GetItemAttributes(mag) )
	lsls	r0, r0, #29	@ tmp164, tmp162,
	bmi	.L59		@,
.L60:
@ MagicSystem/Menu/src/MagMenuCore.c:200: 	return MCA_GRAYED;
	movs	r0, #2	@ <retval>,
.L57:
@ MagicSystem/Menu/src/MagMenuCore.c:201: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L59:
@ MagicSystem/Menu/src/MagMenuCore.c:197: 		if( CanUnitUseItem(gActiveUnit,mag) )
	movs	r1, r4	@, tmp136
	ldr	r0, [r6]	@, gActiveUnit
	ldr	r3, .L66+20	@ tmp157,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:197: 		if( CanUnitUseItem(gActiveUnit,mag) )
	cmp	r0, #0	@ tmp163,
	beq	.L60		@,
@ MagicSystem/Menu/src/MagMenuCore.c:198: 			return MCA_USABLE;
	movs	r0, #1	@ <retval>,
	b	.L57		@
.L61:
@ MagicSystem/Menu/src/MagMenuCore.c:189: 		return MCA_NONUSABLE;
	movs	r0, #3	@ <retval>,
	b	.L57		@
.L67:
	.align	2
.L66:
	.word	gActiveUnit
	.word	GetUnitExtByUnit
	.word	GetWMagItem
	.word	gpCommonSaveSu
	.word	GetItemAttributes
	.word	CanUnitUseItem
	.size	WMagSelect_Usability, .-WMagSelect_Usability
	.align	1
	.global	BMagSelect_Effect
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	BMagSelect_Effect, %function
BMagSelect_Effect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ MagicSystem/Menu/src/MagMenuCore.c:213: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r5, .L72	@ tmp137,
	ldr	r3, .L72+4	@ tmp138,
@ MagicSystem/Menu/src/MagMenuCore.c:211: int BMagSelect_Effect(MenuProc* pmu, MenuCommandProc* pcmd){
	movs	r6, r0	@ pmu, tmp176
@ MagicSystem/Menu/src/MagMenuCore.c:213: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r0, [r5]	@, gActiveUnit
@ MagicSystem/Menu/src/MagMenuCore.c:211: int BMagSelect_Effect(MenuProc* pmu, MenuCommandProc* pcmd){
	movs	r4, r1	@ pcmd, tmp177
@ MagicSystem/Menu/src/MagMenuCore.c:213: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	bl	.L16		@
	movs	r3, r0	@ ext, tmp178
@ MagicSystem/Menu/src/MagMenuCore.c:216: 		return ME_END_FACE0 | ME_PLAY_BEEP | ME_END | ME_DISABLE;
	movs	r0, #39	@ <retval>,
@ MagicSystem/Menu/src/MagMenuCore.c:215: 	if( NULL == ext )
	cmp	r3, #0	@ ext,
	beq	.L68		@,
@ MagicSystem/Menu/src/MagMenuCore.c:219: 	if( MCA_USABLE != pcmd->availability )
	movs	r2, r4	@ tmp141, pcmd
	adds	r2, r2, #61	@ tmp141,
@ MagicSystem/Menu/src/MagMenuCore.c:219: 	if( MCA_USABLE != pcmd->availability )
	ldrb	r2, [r2]	@ tmp142,
	cmp	r2, #1	@ tmp142,
	beq	.L70		@,
@ MagicSystem/Menu/src/MagMenuCore.c:221: 		MenuCallHelpBox(pmu,TextId_umSubMagGrayBox);
	ldr	r3, .L72+8	@ tmp143,
	movs	r0, r6	@, pmu
	ldrh	r1, [r3]	@ TextId_umSubMagGrayBox, TextId_umSubMagGrayBox
	ldr	r3, .L72+12	@ tmp145,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:222: 		return ME_NONE; //ME_PLAY_BOOP;
	movs	r0, #0	@ <retval>,
.L68:
@ MagicSystem/Menu/src/MagMenuCore.c:242: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L70:
@ MagicSystem/Menu/src/MagMenuCore.c:225: 	mag = MAKE_ITEM(
	ldr	r2, .L72+16	@ tmp150,
	adds	r4, r4, #60	@ tmp148,
	ldrb	r1, [r4]	@ _6,
	ldr	r0, [r2]	@ gpBMagList, gpBMagList
	lsls	r2, r1, #3	@ tmp151, _6,
	ldrb	r4, [r0, r2]	@ _11, *_9
	movs	r0, r3	@, ext
	ldr	r3, .L72+20	@ tmp154,
	bl	.L16		@
	lsls	r0, r0, #8	@ tmp157, tmp179,
	orrs	r4, r0	@ tmp159, tmp157
@ MagicSystem/Menu/src/MagMenuCore.c:225: 	mag = MAKE_ITEM(
	lsls	r4, r4, #16	@ mag, tmp159,
	lsrs	r4, r4, #16	@ mag, mag,
@ MagicSystem/Menu/src/MagMenuCore.c:230: 	SetWpnEqpForce(gActiveUnit,mag);
	movs	r1, r4	@, mag
	ldr	r3, .L72+24	@ tmp162,
	ldr	r0, [r5]	@, gActiveUnit
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:231: 	gActionData.itemSlotIndex = BU_ISLOT_BMAG;
	movs	r2, #9	@ tmp164,
	ldr	r3, .L72+28	@ tmp163,
	strb	r2, [r3, #18]	@ tmp164, gActionData.itemSlotIndex
@ MagicSystem/Menu/src/MagMenuCore.c:233: 	ClearIcons();
	ldr	r3, .L72+32	@ tmp166,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:234: 	ClearBG0BG1();
	ldr	r3, .L72+36	@ tmp167,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:236: 	MakeTargetListForWeapon(gActiveUnit,mag);
	movs	r1, r4	@, mag
	ldr	r0, [r5]	@, gActiveUnit
	ldr	r3, .L72+40	@ tmp169,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:237: 	StartTargetSelection(gTSfunc_BMag);
	ldr	r3, .L72+44	@ tmp171,
	ldr	r0, .L72+48	@ tmp170,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:240: 	CMD_CUR_NUM = 0;
	movs	r2, #0	@ tmp173,
@ MagicSystem/Menu/src/MagMenuCore.c:240: 	CMD_CUR_NUM = 0;
	ldr	r3, .L72+52	@ tmp172,
	ldr	r3, [r3]	@ gpCommonSaveSu.27_19, gpCommonSaveSu
@ MagicSystem/Menu/src/MagMenuCore.c:241: 	return ME_END_FACE0 | ME_PLAY_BEEP | ME_END | ME_DISABLE;
	movs	r0, #39	@ <retval>,
@ MagicSystem/Menu/src/MagMenuCore.c:240: 	CMD_CUR_NUM = 0;
	strb	r2, [r3]	@ tmp173, *gpCommonSaveSu.27_19
@ MagicSystem/Menu/src/MagMenuCore.c:241: 	return ME_END_FACE0 | ME_PLAY_BEEP | ME_END | ME_DISABLE;
	b	.L68		@
.L73:
	.align	2
.L72:
	.word	gActiveUnit
	.word	GetUnitExtByUnit
	.word	TextId_umSubMagGrayBox
	.word	MenuCallHelpBox
	.word	gpBMagList
	.word	GetBMagUse
	.word	SetWpnEqpForce
	.word	gActionData
	.word	ClearIcons
	.word	ClearBG0BG1
	.word	MakeTargetListForWeapon
	.word	StartTargetSelection
	.word	gTSfunc_BMag
	.word	gpCommonSaveSu
	.size	BMagSelect_Effect, .-BMagSelect_Effect
	.align	1
	.global	WMagSelect_Effect
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	WMagSelect_Effect, %function
WMagSelect_Effect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ MagicSystem/Menu/src/MagMenuCore.c:249: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r5, .L78	@ tmp137,
	ldr	r3, .L78+4	@ tmp138,
@ MagicSystem/Menu/src/MagMenuCore.c:246: int WMagSelect_Effect(MenuProc* pmu, MenuCommandProc* pcmd){
	movs	r6, r0	@ pmu, tmp174
@ MagicSystem/Menu/src/MagMenuCore.c:249: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r0, [r5]	@, gActiveUnit
@ MagicSystem/Menu/src/MagMenuCore.c:246: int WMagSelect_Effect(MenuProc* pmu, MenuCommandProc* pcmd){
	movs	r4, r1	@ pcmd, tmp175
@ MagicSystem/Menu/src/MagMenuCore.c:249: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	bl	.L16		@
	movs	r3, r0	@ ext, tmp176
@ MagicSystem/Menu/src/MagMenuCore.c:252: 		return ME_END_FACE0 | ME_PLAY_BEEP | ME_END | ME_DISABLE;
	movs	r0, #39	@ <retval>,
@ MagicSystem/Menu/src/MagMenuCore.c:251: 	if( NULL == ext )
	cmp	r3, #0	@ ext,
	beq	.L74		@,
@ MagicSystem/Menu/src/MagMenuCore.c:255: 	if( MCA_USABLE != pcmd->availability )
	movs	r2, r4	@ tmp141, pcmd
	adds	r2, r2, #61	@ tmp141,
@ MagicSystem/Menu/src/MagMenuCore.c:255: 	if( MCA_USABLE != pcmd->availability )
	ldrb	r2, [r2]	@ tmp142,
	cmp	r2, #1	@ tmp142,
	beq	.L76		@,
@ MagicSystem/Menu/src/MagMenuCore.c:257: 		MenuCallHelpBox(pmu,TextId_umSubMagGrayBox);
	ldr	r3, .L78+8	@ tmp143,
	movs	r0, r6	@, pmu
	ldrh	r1, [r3]	@ TextId_umSubMagGrayBox, TextId_umSubMagGrayBox
	ldr	r3, .L78+12	@ tmp145,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:258: 		return ME_NONE;//ME_PLAY_BOOP;
	movs	r0, #0	@ <retval>,
.L74:
@ MagicSystem/Menu/src/MagMenuCore.c:281: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L76:
@ MagicSystem/Menu/src/MagMenuCore.c:261: 	mag = MAKE_ITEM(
	ldr	r2, .L78+16	@ tmp150,
	adds	r4, r4, #60	@ tmp148,
	ldrb	r1, [r4]	@ _6,
	ldr	r0, [r2]	@ gpWMagList, gpWMagList
	lsls	r2, r1, #3	@ tmp151, _6,
	ldrb	r4, [r0, r2]	@ _11, *_9
	movs	r0, r3	@, ext
	ldr	r3, .L78+20	@ tmp154,
	bl	.L16		@
	lsls	r0, r0, #8	@ tmp157, tmp177,
	orrs	r4, r0	@ tmp159, tmp157
@ MagicSystem/Menu/src/MagMenuCore.c:261: 	mag = MAKE_ITEM(
	lsls	r4, r4, #16	@ mag, tmp159,
	lsrs	r4, r4, #16	@ mag, mag,
@ MagicSystem/Menu/src/MagMenuCore.c:266: 	SetWpnEqpForce(gActiveUnit,mag);
	movs	r1, r4	@, mag
	ldr	r3, .L78+24	@ tmp162,
	ldr	r0, [r5]	@, gActiveUnit
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:267: 	gActionData.itemSlotIndex = BU_ISLOT_WMAG;
	movs	r2, #10	@ tmp164,
	ldr	r3, .L78+28	@ tmp163,
	strb	r2, [r3, #18]	@ tmp164, gActionData.itemSlotIndex
@ MagicSystem/Menu/src/MagMenuCore.c:270: 	ClearBG0BG1();
	ldr	r3, .L78+32	@ tmp166,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:273: 	CMD_CUR_NUM = 0;
	movs	r2, #0	@ tmp168,
@ MagicSystem/Menu/src/MagMenuCore.c:273: 	CMD_CUR_NUM = 0;
	ldr	r3, .L78+36	@ tmp167,
	ldr	r3, [r3]	@ gpCommonSaveSu.33_18, gpCommonSaveSu
@ MagicSystem/Menu/src/MagMenuCore.c:273: 	CMD_CUR_NUM = 0;
	strb	r2, [r3]	@ tmp168, *gpCommonSaveSu.33_18
@ MagicSystem/Menu/src/MagMenuCore.c:276: 	ItemEffect_Call(gActiveUnit,mag);
	movs	r1, r4	@, mag
	ldr	r0, [r5]	@, gActiveUnit
	ldr	r3, .L78+40	@ tmp171,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:278: 	DisplayMoveRangeGraphics(4);
	movs	r0, #4	@,
	ldr	r3, .L78+44	@ tmp172,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:279: 	return ME_PLAY_BEEP | ME_END | ME_DISABLE;
	movs	r0, #7	@ <retval>,
	b	.L74		@
.L79:
	.align	2
.L78:
	.word	gActiveUnit
	.word	GetUnitExtByUnit
	.word	TextId_umSubMagGrayBox
	.word	MenuCallHelpBox
	.word	gpWMagList
	.word	GetWMagUse
	.word	SetWpnEqpForce
	.word	gActionData
	.word	ClearBG0BG1
	.word	gpCommonSaveSu
	.word	ItemEffect_Call
	.word	DisplayMoveRangeGraphics
	.size	WMagSelect_Effect, .-WMagSelect_Effect
	.align	1
	.global	BMagSelect_Hover
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	BMagSelect_Hover, %function
BMagSelect_Hover:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
@ MagicSystem/Menu/src/MagMenuCore.c:295: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r5, .L85	@ tmp136,
	ldr	r3, .L85+4	@ tmp137,
	ldr	r0, [r5]	@, gActiveUnit
@ MagicSystem/Menu/src/MagMenuCore.c:293: int BMagSelect_Hover(MenuProc* pmu, MenuCommandProc* pcmd){
	movs	r4, r1	@ pcmd, tmp164
@ MagicSystem/Menu/src/MagMenuCore.c:295: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:297: 	if( NULL == ext )
	cmp	r0, #0	@ ext,
	beq	.L81		@,
@ MagicSystem/Menu/src/MagMenuCore.c:300: 	mag = MAKE_ITEM(
	ldr	r3, .L85+8	@ tmp142,
	adds	r4, r4, #60	@ tmp140,
	ldrb	r1, [r4]	@ _3,
	ldr	r2, [r3]	@ gpBMagList, gpBMagList
	lsls	r3, r1, #3	@ tmp143, _3,
	ldrb	r4, [r2, r3]	@ _8, *_6
	ldr	r3, .L85+12	@ tmp146,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:304: 	BmMapFill(gMapMovement,-1);
	movs	r1, #1	@,
@ MagicSystem/Menu/src/MagMenuCore.c:300: 	mag = MAKE_ITEM(
	movs	r6, r0	@ tmp147, tmp166
@ MagicSystem/Menu/src/MagMenuCore.c:304: 	BmMapFill(gMapMovement,-1);
	ldr	r3, .L85+16	@ tmp150,
	ldr	r7, .L85+20	@ tmp151,
	ldr	r0, [r3]	@, gMapMovement
	rsbs	r1, r1, #0	@,
	bl	.L87		@
@ MagicSystem/Menu/src/MagMenuCore.c:305: 	BmMapFill(gMapRange,0);
	ldr	r3, .L85+24	@ tmp152,
@ MagicSystem/Menu/src/MagMenuCore.c:300: 	mag = MAKE_ITEM(
	lsls	r6, r6, #8	@ tmp155, tmp147,
@ MagicSystem/Menu/src/MagMenuCore.c:305: 	BmMapFill(gMapRange,0);
	movs	r1, #0	@,
	ldr	r0, [r3]	@, gMapRange
@ MagicSystem/Menu/src/MagMenuCore.c:300: 	mag = MAKE_ITEM(
	orrs	r4, r6	@ tmp157, tmp155
@ MagicSystem/Menu/src/MagMenuCore.c:305: 	BmMapFill(gMapRange,0);
	bl	.L87		@
@ MagicSystem/Menu/src/MagMenuCore.c:307: 	FillRangeMapByRangeMask( gActiveUnit, GetWeaponRangeMask(mag) );
	lsls	r0, r4, #16	@ tmp158, tmp157,
	ldr	r3, .L85+28	@ tmp160,
	lsrs	r0, r0, #16	@ tmp158, tmp158,
@ MagicSystem/Menu/src/MagMenuCore.c:307: 	FillRangeMapByRangeMask( gActiveUnit, GetWeaponRangeMask(mag) );
	ldr	r5, [r5]	@ gActiveUnit.39_16, gActiveUnit
@ MagicSystem/Menu/src/MagMenuCore.c:307: 	FillRangeMapByRangeMask( gActiveUnit, GetWeaponRangeMask(mag) );
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:307: 	FillRangeMapByRangeMask( gActiveUnit, GetWeaponRangeMask(mag) );
	ldr	r3, .L85+32	@ tmp161,
@ MagicSystem/Menu/src/MagMenuCore.c:307: 	FillRangeMapByRangeMask( gActiveUnit, GetWeaponRangeMask(mag) );
	movs	r1, r0	@ _17, tmp167
@ MagicSystem/Menu/src/MagMenuCore.c:307: 	FillRangeMapByRangeMask( gActiveUnit, GetWeaponRangeMask(mag) );
	movs	r0, r5	@, gActiveUnit.39_16
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:309: 	DisplayMoveRangeGraphics(2);
	movs	r0, #2	@,
	ldr	r3, .L85+36	@ tmp162,
	bl	.L16		@
.L81:
@ MagicSystem/Menu/src/MagMenuCore.c:311: }
	@ sp needed	@
	movs	r0, #0	@,
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L86:
	.align	2
.L85:
	.word	gActiveUnit
	.word	GetUnitExtByUnit
	.word	gpBMagList
	.word	GetBMagUse
	.word	gMapMovement
	.word	BmMapFill
	.word	gMapRange
	.word	GetWeaponRangeMask
	.word	FillRangeMapByRangeMask
	.word	DisplayMoveRangeGraphics
	.size	BMagSelect_Hover, .-BMagSelect_Hover
	.align	1
	.global	WMagSelect_Hover
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	WMagSelect_Hover, %function
WMagSelect_Hover:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
@ MagicSystem/Menu/src/MagMenuCore.c:319: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r5, .L93	@ tmp134,
	ldr	r3, .L93+4	@ tmp135,
	ldr	r0, [r5]	@, gActiveUnit
@ MagicSystem/Menu/src/MagMenuCore.c:316: int WMagSelect_Hover(MenuProc* pmu, MenuCommandProc* pcmd){
	movs	r4, r1	@ pcmd, tmp161
@ MagicSystem/Menu/src/MagMenuCore.c:319: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:321: 	if( NULL == ext )
	cmp	r0, #0	@ ext,
	beq	.L89		@,
@ MagicSystem/Menu/src/MagMenuCore.c:324: 	mag = MAKE_ITEM(
	ldr	r3, .L93+8	@ tmp140,
	adds	r4, r4, #60	@ tmp138,
	ldrb	r1, [r4]	@ _3,
	ldr	r2, [r3]	@ gpWMagList, gpWMagList
	lsls	r3, r1, #3	@ tmp141, _3,
	ldrb	r4, [r2, r3]	@ _8, *_6
	ldr	r3, .L93+12	@ tmp144,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:328: 	BmMapFill(gMapMovement,-1);
	movs	r1, #1	@,
@ MagicSystem/Menu/src/MagMenuCore.c:324: 	mag = MAKE_ITEM(
	movs	r6, r0	@ tmp145, tmp163
@ MagicSystem/Menu/src/MagMenuCore.c:328: 	BmMapFill(gMapMovement,-1);
	ldr	r3, .L93+16	@ tmp148,
	ldr	r7, .L93+20	@ tmp149,
	ldr	r0, [r3]	@, gMapMovement
	rsbs	r1, r1, #0	@,
	bl	.L87		@
@ MagicSystem/Menu/src/MagMenuCore.c:329: 	BmMapFill(gMapRange,0);
	ldr	r3, .L93+24	@ tmp150,
@ MagicSystem/Menu/src/MagMenuCore.c:324: 	mag = MAKE_ITEM(
	lsls	r6, r6, #8	@ tmp152, tmp145,
@ MagicSystem/Menu/src/MagMenuCore.c:329: 	BmMapFill(gMapRange,0);
	ldr	r0, [r3]	@, gMapRange
	movs	r1, #0	@,
@ MagicSystem/Menu/src/MagMenuCore.c:324: 	mag = MAKE_ITEM(
	orrs	r4, r6	@ tmp154, tmp152
@ MagicSystem/Menu/src/MagMenuCore.c:329: 	BmMapFill(gMapRange,0);
	bl	.L87		@
@ MagicSystem/Menu/src/MagMenuCore.c:331: 	FillMapForSingleItem(gActiveUnit,mag);
	lsls	r1, r4, #16	@ tmp155, tmp154,
	ldr	r0, [r5]	@, gActiveUnit
	ldr	r3, .L93+28	@ tmp158,
	lsrs	r1, r1, #16	@ tmp155, tmp155,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:332: 	DisplayMoveRangeGraphics(4);
	movs	r0, #4	@,
	ldr	r3, .L93+32	@ tmp159,
	bl	.L16		@
.L89:
@ MagicSystem/Menu/src/MagMenuCore.c:334: }
	@ sp needed	@
	movs	r0, #0	@,
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L94:
	.align	2
.L93:
	.word	gActiveUnit
	.word	GetUnitExtByUnit
	.word	gpWMagList
	.word	GetWMagUse
	.word	gMapMovement
	.word	BmMapFill
	.word	gMapRange
	.word	FillMapForSingleItem
	.word	DisplayMoveRangeGraphics
	.size	WMagSelect_Hover, .-WMagSelect_Hover
	.align	1
	.global	BMagSelect_TextDraw
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	BMagSelect_TextDraw, %function
BMagSelect_TextDraw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ MagicSystem/Menu/src/MagMenuCore.c:346: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r3, .L100	@ tmp145,
@ MagicSystem/Menu/src/MagMenuCore.c:380: {	return MagSelect_TextDraw(pmu,pcmd,EBMAG); }
	push	{r4, r5, r6, lr}	@
@ MagicSystem/Menu/src/MagMenuCore.c:346: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r0, [r3]	@, gActiveUnit
	ldr	r3, .L100+4	@ tmp146,
@ MagicSystem/Menu/src/MagMenuCore.c:380: {	return MagSelect_TextDraw(pmu,pcmd,EBMAG); }
	movs	r4, r1	@ pcmd, tmp188
@ MagicSystem/Menu/src/MagMenuCore.c:346: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:354: 	if( NULL == ext )
	cmp	r0, #0	@ ext,
	beq	.L96		@,
@ MagicSystem/Menu/src/MagMenuCore.c:358: 		use = GetBMagUse(ext,pcmd->commandDefinitionIndex);
	movs	r5, r4	@ tmp149, pcmd
	adds	r5, r5, #60	@ tmp149,
	ldrb	r1, [r5]	@ tmp150,
	ldr	r3, .L100+8	@ tmp151,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:374: 		gBg0MapBuffer + TILEMAP_INDEX(pcmd->xDrawTile,pcmd->yDrawTile) );
	ldrh	r3, [r4, #44]	@ tmp154,
	ldrh	r2, [r4, #42]	@ tmp156,
	lsls	r3, r3, #5	@ tmp155, tmp154,
	adds	r3, r3, r2	@ tmp157, tmp155, tmp156
@ MagicSystem/Menu/src/MagMenuCore.c:370: 	DrawItemMenuLine( 
	ldr	r2, .L100+12	@ tmp160,
@ MagicSystem/Menu/src/MagMenuCore.c:374: 		gBg0MapBuffer + TILEMAP_INDEX(pcmd->xDrawTile,pcmd->yDrawTile) );
	lsls	r3, r3, #1	@ tmp158, tmp157,
@ MagicSystem/Menu/src/MagMenuCore.c:370: 	DrawItemMenuLine( 
	adds	r3, r3, r2	@ tmp159, tmp158, tmp160
@ MagicSystem/Menu/src/MagMenuCore.c:362: 	if( MCA_USABLE == pcmd->availability )
	movs	r2, r4	@ tmp163, pcmd
	adds	r2, r2, #61	@ tmp163,
@ MagicSystem/Menu/src/MagMenuCore.c:362: 	if( MCA_USABLE == pcmd->availability )
	ldrb	r2, [r2]	@ tmp165,
	subs	r2, r2, #1	@ tmp167,
@ MagicSystem/Menu/src/MagMenuCore.c:370: 	DrawItemMenuLine( 
	rsbs	r1, r2, #0	@ tmp168, tmp167
	adcs	r2, r2, r1	@ tmp169, tmp167, tmp168
@ MagicSystem/Menu/src/MagMenuCore.c:366: 		mag = MAKE_ITEM(gpBMagList[pcmd->commandDefinitionIndex].index, use);
	ldrb	r1, [r5]	@ tmp174,
	ldr	r5, .L100+16	@ tmp176,
	ldr	r5, [r5]	@ gpBMagList, gpBMagList
	lsls	r1, r1, #3	@ tmp177, tmp174,
	ldrb	r1, [r1, r5]	@ *_19, *_19
	lsls	r0, r0, #8	@ tmp180, tmp190,
	orrs	r1, r0	@ tmp182, tmp180
@ MagicSystem/Menu/src/MagMenuCore.c:370: 	DrawItemMenuLine( 
	movs	r0, r4	@ pcmd, pcmd
	lsls	r1, r1, #16	@ tmp183, tmp182,
	ldr	r4, .L100+20	@ tmp186,
	lsrs	r1, r1, #16	@ tmp183, tmp183,
	adds	r0, r0, #52	@ pcmd,
	bl	.L17		@
.L96:
@ MagicSystem/Menu/src/MagMenuCore.c:380: {	return MagSelect_TextDraw(pmu,pcmd,EBMAG); }
	@ sp needed	@
	movs	r0, #0	@,
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L101:
	.align	2
.L100:
	.word	gActiveUnit
	.word	GetUnitExtByUnit
	.word	GetBMagUse
	.word	gBg0MapBuffer
	.word	gpBMagList
	.word	DrawItemMenuLine
	.size	BMagSelect_TextDraw, .-BMagSelect_TextDraw
	.align	1
	.global	WMagSelect_TextDraw
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	WMagSelect_TextDraw, %function
WMagSelect_TextDraw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ MagicSystem/Menu/src/MagMenuCore.c:346: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r3, .L107	@ tmp145,
@ MagicSystem/Menu/src/MagMenuCore.c:383: {	return MagSelect_TextDraw(pmu,pcmd,EWMAG); }
	push	{r4, r5, r6, lr}	@
@ MagicSystem/Menu/src/MagMenuCore.c:346: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r0, [r3]	@, gActiveUnit
	ldr	r3, .L107+4	@ tmp146,
@ MagicSystem/Menu/src/MagMenuCore.c:383: {	return MagSelect_TextDraw(pmu,pcmd,EWMAG); }
	movs	r4, r1	@ pcmd, tmp188
@ MagicSystem/Menu/src/MagMenuCore.c:346: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:354: 	if( NULL == ext )
	cmp	r0, #0	@ ext,
	beq	.L103		@,
@ MagicSystem/Menu/src/MagMenuCore.c:360: 		use = GetWMagUse(ext,pcmd->commandDefinitionIndex);
	movs	r5, r4	@ tmp149, pcmd
	adds	r5, r5, #60	@ tmp149,
	ldrb	r1, [r5]	@ tmp150,
	ldr	r3, .L107+8	@ tmp151,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:374: 		gBg0MapBuffer + TILEMAP_INDEX(pcmd->xDrawTile,pcmd->yDrawTile) );
	ldrh	r3, [r4, #44]	@ tmp154,
	ldrh	r2, [r4, #42]	@ tmp156,
	lsls	r3, r3, #5	@ tmp155, tmp154,
	adds	r3, r3, r2	@ tmp157, tmp155, tmp156
@ MagicSystem/Menu/src/MagMenuCore.c:370: 	DrawItemMenuLine( 
	ldr	r2, .L107+12	@ tmp160,
@ MagicSystem/Menu/src/MagMenuCore.c:374: 		gBg0MapBuffer + TILEMAP_INDEX(pcmd->xDrawTile,pcmd->yDrawTile) );
	lsls	r3, r3, #1	@ tmp158, tmp157,
@ MagicSystem/Menu/src/MagMenuCore.c:370: 	DrawItemMenuLine( 
	adds	r3, r3, r2	@ tmp159, tmp158, tmp160
@ MagicSystem/Menu/src/MagMenuCore.c:362: 	if( MCA_USABLE == pcmd->availability )
	movs	r2, r4	@ tmp163, pcmd
	adds	r2, r2, #61	@ tmp163,
@ MagicSystem/Menu/src/MagMenuCore.c:362: 	if( MCA_USABLE == pcmd->availability )
	ldrb	r2, [r2]	@ tmp165,
	subs	r2, r2, #1	@ tmp167,
@ MagicSystem/Menu/src/MagMenuCore.c:370: 	DrawItemMenuLine( 
	rsbs	r1, r2, #0	@ tmp168, tmp167
	adcs	r2, r2, r1	@ tmp169, tmp167, tmp168
@ MagicSystem/Menu/src/MagMenuCore.c:368: 		mag = MAKE_ITEM(gpWMagList[pcmd->commandDefinitionIndex].index, use);
	ldrb	r1, [r5]	@ tmp174,
	ldr	r5, .L107+16	@ tmp176,
	ldr	r5, [r5]	@ gpWMagList, gpWMagList
	lsls	r1, r1, #3	@ tmp177, tmp174,
	ldrb	r1, [r1, r5]	@ *_32, *_32
	lsls	r0, r0, #8	@ tmp180, tmp190,
	orrs	r1, r0	@ tmp182, tmp180
@ MagicSystem/Menu/src/MagMenuCore.c:370: 	DrawItemMenuLine( 
	movs	r0, r4	@ pcmd, pcmd
	lsls	r1, r1, #16	@ tmp183, tmp182,
	ldr	r4, .L107+20	@ tmp186,
	lsrs	r1, r1, #16	@ tmp183, tmp183,
	adds	r0, r0, #52	@ pcmd,
	bl	.L17		@
.L103:
@ MagicSystem/Menu/src/MagMenuCore.c:383: {	return MagSelect_TextDraw(pmu,pcmd,EWMAG); }
	@ sp needed	@
	movs	r0, #0	@,
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L108:
	.align	2
.L107:
	.word	gActiveUnit
	.word	GetUnitExtByUnit
	.word	GetWMagUse
	.word	gBg0MapBuffer
	.word	gpWMagList
	.word	DrawItemMenuLine
	.size	WMagSelect_TextDraw, .-WMagSelect_TextDraw
	.align	1
	.global	BWmagCommon_Unhover
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	BWmagCommon_Unhover, %function
BWmagCommon_Unhover:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ MagicSystem/Menu/src/MagMenuCore.c:387: 	BmMapFill(gMapMovement,-1);
	movs	r1, #1	@ tmp124,
	ldr	r3, .L110	@ tmp117,
@ MagicSystem/Menu/src/MagMenuCore.c:386: int BWmagCommon_Unhover(void){
	push	{r4, lr}	@
@ MagicSystem/Menu/src/MagMenuCore.c:387: 	BmMapFill(gMapMovement,-1);
	ldr	r0, [r3]	@, gMapMovement
@ MagicSystem/Menu/src/MagMenuCore.c:392: }
	@ sp needed	@
@ MagicSystem/Menu/src/MagMenuCore.c:387: 	BmMapFill(gMapMovement,-1);
	ldr	r4, .L110+4	@ tmp118,
	rsbs	r1, r1, #0	@, tmp124
	bl	.L17		@
@ MagicSystem/Menu/src/MagMenuCore.c:388: 	BmMapFill(gMapRange,0);
	ldr	r3, .L110+8	@ tmp119,
	movs	r1, #0	@,
	ldr	r0, [r3]	@, gMapRange
	bl	.L17		@
@ MagicSystem/Menu/src/MagMenuCore.c:389: 	DisplayMoveRangeGraphics(0x3);
	movs	r0, #3	@,
	ldr	r3, .L110+12	@ tmp121,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:390: 	HideMoveRangeGraphicsWrapper();
	ldr	r3, .L110+16	@ tmp122,
	bl	.L16		@
@ MagicSystem/Menu/src/MagMenuCore.c:392: }
	movs	r0, #0	@,
	pop	{r4}
	pop	{r1}
	bx	r1
.L111:
	.align	2
.L110:
	.word	gMapMovement
	.word	BmMapFill
	.word	gMapRange
	.word	DisplayMoveRangeGraphics
	.word	HideMoveRangeGraphicsWrapper
	.size	BWmagCommon_Unhover, .-BWmagCommon_Unhover
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L16:
	bx	r3
.L17:
	bx	r4
.L26:
	bx	r5
.L87:
	bx	r7
