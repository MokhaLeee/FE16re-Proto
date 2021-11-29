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
	.global	BMag_Usability
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	BMag_Usability, %function
BMag_Usability:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ MagicSystem/Menu/src/MagMenuCore.c:12: 	if( gActiveUnit )
	ldr	r3, .L4	@ tmp117,
@ MagicSystem/Menu/src/MagMenuCore.c:12: 	if( gActiveUnit )
	ldr	r3, [r3]	@ gActiveUnit, gActiveUnit
@ MagicSystem/Menu/src/MagMenuCore.c:13: 		return MCA_USABLE;
	movs	r0, #1	@ <retval>,
@ MagicSystem/Menu/src/MagMenuCore.c:12: 	if( gActiveUnit )
	cmp	r3, #0	@ gActiveUnit,
	bne	.L1		@,
@ MagicSystem/Menu/src/MagMenuCore.c:15: 		return MCA_NONUSABLE;
	adds	r0, r0, #2	@ <retval>,
.L1:
@ MagicSystem/Menu/src/MagMenuCore.c:16: }
	@ sp needed	@
	bx	lr
.L5:
	.align	2
.L4:
	.word	gActiveUnit
	.size	BMag_Usability, .-BMag_Usability
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
@ MagicSystem/Menu/src/MagMenuCore.c:19: 	_ResetIconGraphics();
	ldr	r3, .L7	@ tmp118,
@ MagicSystem/Menu/src/MagMenuCore.c:28: }
	@ sp needed	@
@ MagicSystem/Menu/src/MagMenuCore.c:19: 	_ResetIconGraphics();
	bl	.L9		@
@ MagicSystem/Menu/src/MagMenuCore.c:20: 	LoadIconPalettes(0x4);
	movs	r0, #4	@,
	ldr	r3, .L7+4	@ tmp119,
	bl	.L9		@
@ MagicSystem/Menu/src/MagMenuCore.c:22: 	MenuProc* umMag = StartMenu(&BMagSelectMenu);
	ldr	r3, .L7+8	@ tmp121,
	ldr	r0, .L7+12	@ tmp120,
	bl	.L9		@
@ MagicSystem/Menu/src/MagMenuCore.c:26: 	ForceMenuItemPanel(umMag,gActiveUnit,0xF,0xB);
	ldr	r1, .L7+16	@ tmp122,
	movs	r3, #11	@,
	movs	r2, #15	@,
	ldr	r1, [r1]	@, gActiveUnit
	ldr	r4, .L7+20	@ tmp123,
	bl	.L10		@
@ MagicSystem/Menu/src/MagMenuCore.c:28: }
	movs	r0, #23	@,
	pop	{r4}
	pop	{r1}
	bx	r1
.L8:
	.align	2
.L7:
	.word	_ResetIconGraphics
	.word	LoadIconPalettes
	.word	StartMenu
	.word	BMagSelectMenu
	.word	gActiveUnit
	.word	ForceMenuItemPanel
	.size	BMag_Effect, .-BMag_Effect
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
@ MagicSystem/Menu/src/MagMenuCore.c:40: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r3, .L15	@ tmp120,
@ MagicSystem/Menu/src/MagMenuCore.c:39: int BMagSelect_Usability(MenuProc* pmu, MenuCommandProc* pcmd){
	push	{r4, lr}	@
@ MagicSystem/Menu/src/MagMenuCore.c:40: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r0, [r3]	@, gActiveUnit
	ldr	r3, .L15+4	@ tmp121,
@ MagicSystem/Menu/src/MagMenuCore.c:39: int BMagSelect_Usability(MenuProc* pmu, MenuCommandProc* pcmd){
	movs	r4, r1	@ pcmd, tmp132
@ MagicSystem/Menu/src/MagMenuCore.c:40: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	bl	.L9		@
@ MagicSystem/Menu/src/MagMenuCore.c:43: 		return MCA_NONUSABLE;
	movs	r3, #3	@ <retval>,
@ MagicSystem/Menu/src/MagMenuCore.c:42: 	if( NULL == ext )
	cmp	r0, #0	@ ext,
	beq	.L11		@,
@ MagicSystem/Menu/src/MagMenuCore.c:45: 	if( 0 == GetBMagUse(ext,pcmd->commandDefinitionIndex) )
	adds	r4, r4, #60	@ tmp124,
	ldr	r3, .L15+8	@ tmp126,
	ldrb	r1, [r4]	@ tmp125,
	bl	.L9		@
@ MagicSystem/Menu/src/MagMenuCore.c:48: 		return MCA_USABLE;
	rsbs	r3, r0, #0	@ tmp130, tmp134
	adcs	r3, r3, r0	@ tmp130, tmp134
	adds	r3, r3, #1	@ <retval>,
.L11:
@ MagicSystem/Menu/src/MagMenuCore.c:49: }
	movs	r0, r3	@, <retval>
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L16:
	.align	2
.L15:
	.word	gActiveUnit
	.word	GetUnitExtByUnit
	.word	GetBMagUse
	.size	BMagSelect_Usability, .-BMagSelect_Usability
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
@ MagicSystem/Menu/src/MagMenuCore.c:51: int BMagSelect_Effect(MenuProc* pmu, MenuCommandProc* pcmd){
	movs	r4, r1	@ pcmd, tmp158
@ MagicSystem/Menu/src/MagMenuCore.c:66: }
	@ sp needed	@
@ MagicSystem/Menu/src/MagMenuCore.c:52: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r5, .L18	@ tmp133,
	ldr	r3, .L18+4	@ tmp134,
	ldr	r0, [r5]	@, gActiveUnit
	bl	.L9		@
@ MagicSystem/Menu/src/MagMenuCore.c:54: 	u16 wpn = MAKE_ITEM(
	adds	r4, r4, #60	@ tmp137,
	ldr	r3, .L18+8	@ tmp139,
	ldrb	r1, [r4]	@ _3,
	ldr	r2, [r3]	@ gpBMagList, gpBMagList
	lsls	r3, r1, #3	@ tmp140, _3,
	ldrb	r4, [r2, r3]	@ _8, *_6
	ldr	r3, .L18+12	@ tmp143,
	bl	.L9		@
	lsls	r0, r0, #8	@ tmp146, tmp160,
	orrs	r4, r0	@ tmp148, tmp146
@ MagicSystem/Menu/src/MagMenuCore.c:54: 	u16 wpn = MAKE_ITEM(
	lsls	r4, r4, #16	@ wpn, tmp148,
	lsrs	r4, r4, #16	@ wpn, wpn,
@ MagicSystem/Menu/src/MagMenuCore.c:59: 	SetWpnEqp(gActiveUnit,wpn);
	movs	r1, r4	@, wpn
	ldr	r0, [r5]	@, gActiveUnit
	ldr	r3, .L18+16	@ tmp151,
	bl	.L9		@
@ MagicSystem/Menu/src/MagMenuCore.c:61: 	ClearBG0BG1();
	ldr	r3, .L18+20	@ tmp152,
	bl	.L9		@
@ MagicSystem/Menu/src/MagMenuCore.c:62: 	MakeTargetListForWeapon(gActiveUnit,wpn);
	ldr	r0, [r5]	@, gActiveUnit
	movs	r1, r4	@, wpn
	ldr	r3, .L18+24	@ tmp154,
	bl	.L9		@
@ MagicSystem/Menu/src/MagMenuCore.c:63: 	StartTargetSelection(&gTSfunc_BMag);
	ldr	r3, .L18+28	@ tmp156,
	ldr	r0, .L18+32	@ tmp155,
	bl	.L9		@
@ MagicSystem/Menu/src/MagMenuCore.c:66: }
	movs	r0, #39	@,
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L19:
	.align	2
.L18:
	.word	gActiveUnit
	.word	GetUnitExtByUnit
	.word	gpBMagList
	.word	GetBMagUse
	.word	SetWpnEqp
	.word	ClearBG0BG1
	.word	MakeTargetListForWeapon
	.word	StartTargetSelection
	.word	gTSfunc_BMag
	.size	BMagSelect_Effect, .-BMagSelect_Effect
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
@ MagicSystem/Menu/src/MagMenuCore.c:68: int BMagSelect_Hover(MenuProc* pmu, MenuCommandProc* pcmd){
	movs	r4, r1	@ pcmd, tmp164
@ MagicSystem/Menu/src/MagMenuCore.c:81: }
	@ sp needed	@
@ MagicSystem/Menu/src/MagMenuCore.c:69: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r5, .L21	@ tmp136,
	ldr	r3, .L21+4	@ tmp137,
	ldr	r0, [r5]	@, gActiveUnit
	bl	.L9		@
@ MagicSystem/Menu/src/MagMenuCore.c:71: 	u16 wpn = MAKE_ITEM(
	adds	r4, r4, #60	@ tmp140,
	ldr	r3, .L21+8	@ tmp142,
	ldrb	r1, [r4]	@ _3,
	ldr	r2, [r3]	@ gpBMagList, gpBMagList
	lsls	r3, r1, #3	@ tmp143, _3,
	ldrb	r4, [r2, r3]	@ _8, *_6
	ldr	r3, .L21+12	@ tmp146,
	bl	.L9		@
@ MagicSystem/Menu/src/MagMenuCore.c:75: 	BmMapFill(gMapMovement,-1);
	movs	r1, #1	@ tmp168,
@ MagicSystem/Menu/src/MagMenuCore.c:71: 	u16 wpn = MAKE_ITEM(
	movs	r6, r0	@ tmp147, tmp166
@ MagicSystem/Menu/src/MagMenuCore.c:75: 	BmMapFill(gMapMovement,-1);
	ldr	r3, .L21+16	@ tmp150,
	ldr	r7, .L21+20	@ tmp151,
	ldr	r0, [r3]	@, gMapMovement
	rsbs	r1, r1, #0	@, tmp168
	bl	.L23		@
@ MagicSystem/Menu/src/MagMenuCore.c:76: 	BmMapFill(gMapRange,0);
	ldr	r3, .L21+24	@ tmp152,
@ MagicSystem/Menu/src/MagMenuCore.c:71: 	u16 wpn = MAKE_ITEM(
	lsls	r6, r6, #8	@ tmp155, tmp147,
@ MagicSystem/Menu/src/MagMenuCore.c:76: 	BmMapFill(gMapRange,0);
	movs	r1, #0	@,
	ldr	r0, [r3]	@, gMapRange
@ MagicSystem/Menu/src/MagMenuCore.c:71: 	u16 wpn = MAKE_ITEM(
	orrs	r4, r6	@ tmp157, tmp155
@ MagicSystem/Menu/src/MagMenuCore.c:76: 	BmMapFill(gMapRange,0);
	bl	.L23		@
@ MagicSystem/Menu/src/MagMenuCore.c:78: 	FillRangeMapByRangeMask( gActiveUnit, GetWeaponRangeMask(wpn) );
	lsls	r0, r4, #16	@ tmp158, tmp157,
	ldr	r3, .L21+28	@ tmp160,
	lsrs	r0, r0, #16	@ tmp158, tmp158,
@ MagicSystem/Menu/src/MagMenuCore.c:78: 	FillRangeMapByRangeMask( gActiveUnit, GetWeaponRangeMask(wpn) );
	ldr	r5, [r5]	@ gActiveUnit.11_16, gActiveUnit
@ MagicSystem/Menu/src/MagMenuCore.c:78: 	FillRangeMapByRangeMask( gActiveUnit, GetWeaponRangeMask(wpn) );
	bl	.L9		@
@ MagicSystem/Menu/src/MagMenuCore.c:78: 	FillRangeMapByRangeMask( gActiveUnit, GetWeaponRangeMask(wpn) );
	ldr	r3, .L21+32	@ tmp161,
@ MagicSystem/Menu/src/MagMenuCore.c:78: 	FillRangeMapByRangeMask( gActiveUnit, GetWeaponRangeMask(wpn) );
	movs	r1, r0	@ _17, tmp167
@ MagicSystem/Menu/src/MagMenuCore.c:78: 	FillRangeMapByRangeMask( gActiveUnit, GetWeaponRangeMask(wpn) );
	movs	r0, r5	@, gActiveUnit.11_16
	bl	.L9		@
@ MagicSystem/Menu/src/MagMenuCore.c:79: 	DisplayMoveRangeGraphics(2);
	movs	r0, #2	@,
	ldr	r3, .L21+36	@ tmp162,
	bl	.L9		@
@ MagicSystem/Menu/src/MagMenuCore.c:81: }
	movs	r0, #0	@,
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L22:
	.align	2
.L21:
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
@ MagicSystem/Menu/src/MagMenuCore.c:85: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r3, .L29	@ tmp144,
@ MagicSystem/Menu/src/MagMenuCore.c:84: int BMagSelect_TextDraw(MenuProc* pmu, MenuCommandProc* pcmd){
	push	{r4, r5, r6, lr}	@
@ MagicSystem/Menu/src/MagMenuCore.c:85: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r0, [r3]	@, gActiveUnit
	ldr	r3, .L29+4	@ tmp145,
@ MagicSystem/Menu/src/MagMenuCore.c:84: int BMagSelect_TextDraw(MenuProc* pmu, MenuCommandProc* pcmd){
	movs	r4, r1	@ pcmd, tmp182
@ MagicSystem/Menu/src/MagMenuCore.c:85: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	bl	.L9		@
@ MagicSystem/Menu/src/MagMenuCore.c:88: 	if( NULL == ext )
	cmp	r0, #0	@ ext,
	beq	.L25		@,
@ MagicSystem/Menu/src/MagMenuCore.c:91: 	u8 use = GetBMagUse(ext,pcmd->commandDefinitionIndex);
	movs	r5, r4	@ tmp148, pcmd
	adds	r5, r5, #60	@ tmp148,
	ldrb	r1, [r5]	@ tmp149,
	ldr	r3, .L29+8	@ tmp150,
	bl	.L9		@
@ MagicSystem/Menu/src/MagMenuCore.c:101: 		gBg0MapBuffer + TILEMAP_INDEX(pcmd->xDrawTile,pcmd->yDrawTile) );
	ldrh	r3, [r4, #44]	@ tmp153,
	ldrh	r2, [r4, #42]	@ tmp155,
	lsls	r3, r3, #5	@ tmp154, tmp153,
	adds	r3, r3, r2	@ tmp156, tmp154, tmp155
@ MagicSystem/Menu/src/MagMenuCore.c:97: 	DrawItemMenuLine( 
	ldr	r2, .L29+12	@ tmp159,
@ MagicSystem/Menu/src/MagMenuCore.c:101: 		gBg0MapBuffer + TILEMAP_INDEX(pcmd->xDrawTile,pcmd->yDrawTile) );
	lsls	r3, r3, #1	@ tmp157, tmp156,
@ MagicSystem/Menu/src/MagMenuCore.c:97: 	DrawItemMenuLine( 
	adds	r3, r3, r2	@ tmp158, tmp157, tmp159
	movs	r2, r0	@ tmp163, tmp151
	subs	r1, r2, #1	@ tmp162, tmp163
	sbcs	r2, r2, r1	@ tmp163, tmp163, tmp162
@ MagicSystem/Menu/src/MagMenuCore.c:95: 	u16 wpn = MAKE_ITEM(gpBMagList[pcmd->commandDefinitionIndex].index, use);
	ldrb	r1, [r5]	@ tmp168,
	ldr	r5, .L29+16	@ tmp170,
	ldr	r5, [r5]	@ gpBMagList, gpBMagList
	lsls	r1, r1, #3	@ tmp171, tmp168,
	ldrb	r1, [r1, r5]	@ *_7, *_7
	lsls	r0, r0, #8	@ tmp174, tmp151,
	orrs	r1, r0	@ tmp176, tmp174
@ MagicSystem/Menu/src/MagMenuCore.c:97: 	DrawItemMenuLine( 
	movs	r0, r4	@ pcmd, pcmd
	lsls	r1, r1, #16	@ tmp177, tmp176,
	ldr	r4, .L29+20	@ tmp180,
	lsrs	r1, r1, #16	@ tmp177, tmp177,
	adds	r0, r0, #52	@ pcmd,
	bl	.L10		@
.L25:
@ MagicSystem/Menu/src/MagMenuCore.c:103: }
	@ sp needed	@
	movs	r0, #0	@,
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L30:
	.align	2
.L29:
	.word	gActiveUnit
	.word	GetUnitExtByUnit
	.word	GetBMagUse
	.word	gBg0MapBuffer
	.word	gpBMagList
	.word	DrawItemMenuLine
	.size	BMagSelect_TextDraw, .-BMagSelect_TextDraw
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L9:
	bx	r3
.L10:
	bx	r4
.L23:
	bx	r7
