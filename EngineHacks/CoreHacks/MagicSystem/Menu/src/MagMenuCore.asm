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
@ MagicSystem/Menu/src/MagMenuCore.c:16: 	if( gActiveUnit )
	ldr	r3, .L4	@ tmp117,
@ MagicSystem/Menu/src/MagMenuCore.c:16: 	if( gActiveUnit )
	ldr	r3, [r3]	@ gActiveUnit, gActiveUnit
@ MagicSystem/Menu/src/MagMenuCore.c:17: 		return MCA_USABLE;
	movs	r0, #1	@ <retval>,
@ MagicSystem/Menu/src/MagMenuCore.c:16: 	if( gActiveUnit )
	cmp	r3, #0	@ gActiveUnit,
	bne	.L1		@,
@ MagicSystem/Menu/src/MagMenuCore.c:19: 		return MCA_NONUSABLE;
	adds	r0, r0, #2	@ <retval>,
.L1:
@ MagicSystem/Menu/src/MagMenuCore.c:45: }
	@ sp needed	@
	bx	lr
.L5:
	.align	2
.L4:
	.word	gActiveUnit
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
	@ link register save eliminated.
	ldr	r3, .L9	@ tmp117,
	ldr	r3, [r3]	@ gActiveUnit, gActiveUnit
	movs	r0, #1	@ <retval>,
	cmp	r3, #0	@ gActiveUnit,
	bne	.L6		@,
	adds	r0, r0, #2	@ <retval>,
.L6:
	@ sp needed	@
	bx	lr
.L10:
	.align	2
.L9:
	.word	gActiveUnit
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
@ MagicSystem/Menu/src/MagMenuCore.c:29: 	_ResetIconGraphics();
	ldr	r3, .L12	@ tmp118,
@ MagicSystem/Menu/src/MagMenuCore.c:53: }
	@ sp needed	@
@ MagicSystem/Menu/src/MagMenuCore.c:29: 	_ResetIconGraphics();
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:30: 	LoadIconPalettes(0x4);
	movs	r0, #4	@,
	ldr	r3, .L12+4	@ tmp119,
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:32: 	MenuProc* umMag = StartMenu(mdef);
	ldr	r3, .L12+8	@ tmp121,
	ldr	r0, .L12+12	@ tmp120,
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:36: 	ForceMenuItemPanel(umMag,gActiveUnit,0xF,0xB);
	ldr	r1, .L12+16	@ tmp122,
	movs	r3, #11	@,
	movs	r2, #15	@,
	ldr	r1, [r1]	@, gActiveUnit
	ldr	r4, .L12+20	@ tmp123,
	bl	.L15		@
@ MagicSystem/Menu/src/MagMenuCore.c:53: }
	movs	r0, #23	@,
	pop	{r4}
	pop	{r1}
	bx	r1
.L13:
	.align	2
.L12:
	.word	_ResetIconGraphics
	.word	LoadIconPalettes
	.word	StartMenu
	.word	BMagSelectMenu
	.word	gActiveUnit
	.word	ForceMenuItemPanel
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
@ MagicSystem/Menu/src/MagMenuCore.c:29: 	_ResetIconGraphics();
	ldr	r3, .L17	@ tmp118,
@ MagicSystem/Menu/src/MagMenuCore.c:57: }
	@ sp needed	@
@ MagicSystem/Menu/src/MagMenuCore.c:29: 	_ResetIconGraphics();
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:30: 	LoadIconPalettes(0x4);
	movs	r0, #4	@,
	ldr	r3, .L17+4	@ tmp119,
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:32: 	MenuProc* umMag = StartMenu(mdef);
	ldr	r3, .L17+8	@ tmp121,
	ldr	r0, .L17+12	@ tmp120,
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:36: 	ForceMenuItemPanel(umMag,gActiveUnit,0xF,0xB);
	ldr	r1, .L17+16	@ tmp122,
	movs	r3, #11	@,
	movs	r2, #15	@,
	ldr	r1, [r1]	@, gActiveUnit
	ldr	r4, .L17+20	@ tmp123,
	bl	.L15		@
@ MagicSystem/Menu/src/MagMenuCore.c:57: }
	movs	r0, #23	@,
	pop	{r4}
	pop	{r1}
	bx	r1
.L18:
	.align	2
.L17:
	.word	_ResetIconGraphics
	.word	LoadIconPalettes
	.word	StartMenu
	.word	WMagSelectMenu
	.word	gActiveUnit
	.word	ForceMenuItemPanel
	.size	WMag_Effect, .-WMag_Effect
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
@ MagicSystem/Menu/src/MagMenuCore.c:75: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r3, .L23	@ tmp120,
@ MagicSystem/Menu/src/MagMenuCore.c:100: int BMagSelect_Usability(MenuProc* pmu, MenuCommandProc* pcmd){
	push	{r4, lr}	@
@ MagicSystem/Menu/src/MagMenuCore.c:75: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r0, [r3]	@, gActiveUnit
	ldr	r3, .L23+4	@ tmp121,
@ MagicSystem/Menu/src/MagMenuCore.c:100: int BMagSelect_Usability(MenuProc* pmu, MenuCommandProc* pcmd){
	movs	r4, r1	@ pcmd, tmp132
@ MagicSystem/Menu/src/MagMenuCore.c:75: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:77: 		return MCA_NONUSABLE;
	movs	r3, #3	@ <retval>,
@ MagicSystem/Menu/src/MagMenuCore.c:76: 	if( NULL == ext )
	cmp	r0, #0	@ ext,
	beq	.L19		@,
@ MagicSystem/Menu/src/MagMenuCore.c:81: 		if( 0 == GetBMagUse(ext,pcmd->commandDefinitionIndex) )
	adds	r4, r4, #60	@ tmp124,
	ldr	r3, .L23+8	@ tmp126,
	ldrb	r1, [r4]	@ tmp125,
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:84: 			return MCA_USABLE;
	rsbs	r3, r0, #0	@ tmp130, tmp134
	adcs	r3, r3, r0	@ tmp130, tmp134
	adds	r3, r3, #1	@ <retval>,
.L19:
@ MagicSystem/Menu/src/MagMenuCore.c:102: }
	movs	r0, r3	@, <retval>
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L24:
	.align	2
.L23:
	.word	gActiveUnit
	.word	GetUnitExtByUnit
	.word	GetBMagUse
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
@ MagicSystem/Menu/src/MagMenuCore.c:75: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r3, .L29	@ tmp120,
@ MagicSystem/Menu/src/MagMenuCore.c:104: int WMagSelect_Usability(MenuProc* pmu, MenuCommandProc* pcmd){
	push	{r4, lr}	@
@ MagicSystem/Menu/src/MagMenuCore.c:75: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r0, [r3]	@, gActiveUnit
	ldr	r3, .L29+4	@ tmp121,
@ MagicSystem/Menu/src/MagMenuCore.c:104: int WMagSelect_Usability(MenuProc* pmu, MenuCommandProc* pcmd){
	movs	r4, r1	@ pcmd, tmp132
@ MagicSystem/Menu/src/MagMenuCore.c:75: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:77: 		return MCA_NONUSABLE;
	movs	r3, #3	@ <retval>,
@ MagicSystem/Menu/src/MagMenuCore.c:76: 	if( NULL == ext )
	cmp	r0, #0	@ ext,
	beq	.L25		@,
@ MagicSystem/Menu/src/MagMenuCore.c:89: 		if( 0 == GetWMagUse(ext,pcmd->commandDefinitionIndex) )
	adds	r4, r4, #60	@ tmp124,
	ldr	r3, .L29+8	@ tmp126,
	ldrb	r1, [r4]	@ tmp125,
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:92: 			return MCA_USABLE;
	rsbs	r3, r0, #0	@ tmp130, tmp134
	adcs	r3, r3, r0	@ tmp130, tmp134
	adds	r3, r3, #1	@ <retval>,
.L25:
@ MagicSystem/Menu/src/MagMenuCore.c:106: }
	movs	r0, r3	@, <retval>
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L30:
	.align	2
.L29:
	.word	gActiveUnit
	.word	GetUnitExtByUnit
	.word	GetWMagUse
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
@ MagicSystem/Menu/src/MagMenuCore.c:118: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r5, .L36	@ tmp133,
	ldr	r3, .L36+4	@ tmp134,
	ldr	r0, [r5]	@, gActiveUnit
@ MagicSystem/Menu/src/MagMenuCore.c:116: int BMagSelect_Effect(MenuProc* pmu, MenuCommandProc* pcmd){
	movs	r4, r1	@ pcmd, tmp159
@ MagicSystem/Menu/src/MagMenuCore.c:118: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:120: 	if( NULL == ext )
	cmp	r0, #0	@ ext,
	beq	.L32		@,
@ MagicSystem/Menu/src/MagMenuCore.c:123: 	mag = MAKE_ITEM(
	ldr	r3, .L36+8	@ tmp139,
	adds	r4, r4, #60	@ tmp137,
	ldrb	r1, [r4]	@ _3,
	ldr	r2, [r3]	@ gpBMagList, gpBMagList
	lsls	r3, r1, #3	@ tmp140, _3,
	ldrb	r4, [r2, r3]	@ _8, *_6
	ldr	r3, .L36+12	@ tmp143,
	bl	.L14		@
	lsls	r0, r0, #8	@ tmp146, tmp161,
	orrs	r4, r0	@ tmp148, tmp146
@ MagicSystem/Menu/src/MagMenuCore.c:123: 	mag = MAKE_ITEM(
	lsls	r4, r4, #16	@ mag, tmp148,
	lsrs	r4, r4, #16	@ mag, mag,
@ MagicSystem/Menu/src/MagMenuCore.c:128: 	SetWpnEqpForce(gActiveUnit,mag);
	movs	r1, r4	@, mag
	ldr	r3, .L36+16	@ tmp151,
	ldr	r0, [r5]	@, gActiveUnit
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:130: 	ClearIcons();
	ldr	r3, .L36+20	@ tmp152,
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:131: 	ClearBG0BG1();
	ldr	r3, .L36+24	@ tmp153,
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:133: 	MakeTargetListForWeapon(gActiveUnit,mag);
	ldr	r0, [r5]	@, gActiveUnit
	ldr	r3, .L36+28	@ tmp155,
	movs	r1, r4	@, mag
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:134: 	StartTargetSelection(&gTSfunc_BMag);
	ldr	r0, .L36+32	@ tmp156,
	ldr	r3, .L36+36	@ tmp157,
	bl	.L14		@
.L32:
@ MagicSystem/Menu/src/MagMenuCore.c:137: }
	@ sp needed	@
	movs	r0, #39	@,
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L37:
	.align	2
.L36:
	.word	gActiveUnit
	.word	GetUnitExtByUnit
	.word	gpBMagList
	.word	GetBMagUse
	.word	SetWpnEqpForce
	.word	ClearIcons
	.word	ClearBG0BG1
	.word	MakeTargetListForWeapon
	.word	gTSfunc_BMag
	.word	StartTargetSelection
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
@ MagicSystem/Menu/src/MagMenuCore.c:144: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r5, .L41	@ tmp133,
	ldr	r3, .L41+4	@ tmp134,
	ldr	r0, [r5]	@, gActiveUnit
@ MagicSystem/Menu/src/MagMenuCore.c:141: int WMagSelect_Effect(MenuProc* pmu, MenuCommandProc* pcmd){
	movs	r4, r1	@ pcmd, tmp156
@ MagicSystem/Menu/src/MagMenuCore.c:144: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:147: 		return ME_END_FACE0 | ME_PLAY_BEEP | ME_END | ME_DISABLE;
	movs	r3, #39	@ <retval>,
@ MagicSystem/Menu/src/MagMenuCore.c:146: 	if( NULL == ext )
	cmp	r0, #0	@ ext,
	beq	.L38		@,
@ MagicSystem/Menu/src/MagMenuCore.c:149: 	mag = MAKE_ITEM(
	ldr	r3, .L41+8	@ tmp139,
	adds	r4, r4, #60	@ tmp137,
	ldrb	r1, [r4]	@ _3,
	ldr	r2, [r3]	@ gpWMagList, gpWMagList
	lsls	r3, r1, #3	@ tmp140, _3,
	ldrb	r4, [r2, r3]	@ _8, *_6
	ldr	r3, .L41+12	@ tmp143,
	bl	.L14		@
	lsls	r0, r0, #8	@ tmp146, tmp158,
	orrs	r4, r0	@ tmp148, tmp146
@ MagicSystem/Menu/src/MagMenuCore.c:149: 	mag = MAKE_ITEM(
	lsls	r4, r4, #16	@ mag, tmp148,
	lsrs	r4, r4, #16	@ mag, mag,
@ MagicSystem/Menu/src/MagMenuCore.c:154: 	SetWpnEqpForce(gActiveUnit,mag);
	movs	r1, r4	@, mag
	ldr	r3, .L41+16	@ tmp151,
	ldr	r0, [r5]	@, gActiveUnit
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:157: 	ClearBG0BG1();
	ldr	r3, .L41+20	@ tmp152,
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:160: 	ItemEffect_Call(gActiveUnit,mag);
	ldr	r3, .L41+24	@ tmp154,
	movs	r1, r4	@, mag
	ldr	r0, [r5]	@, gActiveUnit
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:161: 	return ME_PLAY_BEEP | ME_END | ME_DISABLE;
	movs	r3, #7	@ <retval>,
.L38:
@ MagicSystem/Menu/src/MagMenuCore.c:163: }
	@ sp needed	@
	movs	r0, r3	@, <retval>
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L42:
	.align	2
.L41:
	.word	gActiveUnit
	.word	GetUnitExtByUnit
	.word	gpWMagList
	.word	GetWMagUse
	.word	SetWpnEqpForce
	.word	ClearBG0BG1
	.word	ItemEffect_Call
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
@ MagicSystem/Menu/src/MagMenuCore.c:177: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r5, .L48	@ tmp136,
	ldr	r3, .L48+4	@ tmp137,
	ldr	r0, [r5]	@, gActiveUnit
@ MagicSystem/Menu/src/MagMenuCore.c:175: int BMagSelect_Hover(MenuProc* pmu, MenuCommandProc* pcmd){
	movs	r4, r1	@ pcmd, tmp164
@ MagicSystem/Menu/src/MagMenuCore.c:177: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:179: 	if( NULL == ext )
	cmp	r0, #0	@ ext,
	beq	.L44		@,
@ MagicSystem/Menu/src/MagMenuCore.c:182: 	mag = MAKE_ITEM(
	ldr	r3, .L48+8	@ tmp142,
	adds	r4, r4, #60	@ tmp140,
	ldrb	r1, [r4]	@ _3,
	ldr	r2, [r3]	@ gpBMagList, gpBMagList
	lsls	r3, r1, #3	@ tmp143, _3,
	ldrb	r4, [r2, r3]	@ _8, *_6
	ldr	r3, .L48+12	@ tmp146,
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:186: 	BmMapFill(gMapMovement,-1);
	movs	r1, #1	@,
@ MagicSystem/Menu/src/MagMenuCore.c:182: 	mag = MAKE_ITEM(
	movs	r6, r0	@ tmp147, tmp166
@ MagicSystem/Menu/src/MagMenuCore.c:186: 	BmMapFill(gMapMovement,-1);
	ldr	r3, .L48+16	@ tmp150,
	ldr	r7, .L48+20	@ tmp151,
	ldr	r0, [r3]	@, gMapMovement
	rsbs	r1, r1, #0	@,
	bl	.L50		@
@ MagicSystem/Menu/src/MagMenuCore.c:187: 	BmMapFill(gMapRange,0);
	ldr	r3, .L48+24	@ tmp152,
@ MagicSystem/Menu/src/MagMenuCore.c:182: 	mag = MAKE_ITEM(
	lsls	r6, r6, #8	@ tmp155, tmp147,
@ MagicSystem/Menu/src/MagMenuCore.c:187: 	BmMapFill(gMapRange,0);
	movs	r1, #0	@,
	ldr	r0, [r3]	@, gMapRange
@ MagicSystem/Menu/src/MagMenuCore.c:182: 	mag = MAKE_ITEM(
	orrs	r4, r6	@ tmp157, tmp155
@ MagicSystem/Menu/src/MagMenuCore.c:187: 	BmMapFill(gMapRange,0);
	bl	.L50		@
@ MagicSystem/Menu/src/MagMenuCore.c:189: 	FillRangeMapByRangeMask( gActiveUnit, GetWeaponRangeMask(mag) );
	lsls	r0, r4, #16	@ tmp158, tmp157,
	ldr	r3, .L48+28	@ tmp160,
	lsrs	r0, r0, #16	@ tmp158, tmp158,
@ MagicSystem/Menu/src/MagMenuCore.c:189: 	FillRangeMapByRangeMask( gActiveUnit, GetWeaponRangeMask(mag) );
	ldr	r5, [r5]	@ gActiveUnit.15_16, gActiveUnit
@ MagicSystem/Menu/src/MagMenuCore.c:189: 	FillRangeMapByRangeMask( gActiveUnit, GetWeaponRangeMask(mag) );
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:189: 	FillRangeMapByRangeMask( gActiveUnit, GetWeaponRangeMask(mag) );
	ldr	r3, .L48+32	@ tmp161,
@ MagicSystem/Menu/src/MagMenuCore.c:189: 	FillRangeMapByRangeMask( gActiveUnit, GetWeaponRangeMask(mag) );
	movs	r1, r0	@ _17, tmp167
@ MagicSystem/Menu/src/MagMenuCore.c:189: 	FillRangeMapByRangeMask( gActiveUnit, GetWeaponRangeMask(mag) );
	movs	r0, r5	@, gActiveUnit.15_16
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:191: 	DisplayMoveRangeGraphics(2);
	movs	r0, #2	@,
	ldr	r3, .L48+36	@ tmp162,
	bl	.L14		@
.L44:
@ MagicSystem/Menu/src/MagMenuCore.c:193: }
	@ sp needed	@
	movs	r0, #0	@,
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L49:
	.align	2
.L48:
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
@ MagicSystem/Menu/src/MagMenuCore.c:201: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r5, .L56	@ tmp134,
	ldr	r3, .L56+4	@ tmp135,
	ldr	r0, [r5]	@, gActiveUnit
@ MagicSystem/Menu/src/MagMenuCore.c:198: int WMagSelect_Hover(MenuProc* pmu, MenuCommandProc* pcmd){
	movs	r4, r1	@ pcmd, tmp161
@ MagicSystem/Menu/src/MagMenuCore.c:201: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:203: 	if( NULL == ext )
	cmp	r0, #0	@ ext,
	beq	.L52		@,
@ MagicSystem/Menu/src/MagMenuCore.c:206: 	mag = MAKE_ITEM(
	ldr	r3, .L56+8	@ tmp140,
	adds	r4, r4, #60	@ tmp138,
	ldrb	r1, [r4]	@ _3,
	ldr	r2, [r3]	@ gpWMagList, gpWMagList
	lsls	r3, r1, #3	@ tmp141, _3,
	ldrb	r4, [r2, r3]	@ _8, *_6
	ldr	r3, .L56+12	@ tmp144,
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:210: 	BmMapFill(gMapMovement,-1);
	movs	r1, #1	@,
@ MagicSystem/Menu/src/MagMenuCore.c:206: 	mag = MAKE_ITEM(
	movs	r6, r0	@ tmp145, tmp163
@ MagicSystem/Menu/src/MagMenuCore.c:210: 	BmMapFill(gMapMovement,-1);
	ldr	r3, .L56+16	@ tmp148,
	ldr	r7, .L56+20	@ tmp149,
	ldr	r0, [r3]	@, gMapMovement
	rsbs	r1, r1, #0	@,
	bl	.L50		@
@ MagicSystem/Menu/src/MagMenuCore.c:211: 	BmMapFill(gMapRange,0);
	ldr	r3, .L56+24	@ tmp150,
@ MagicSystem/Menu/src/MagMenuCore.c:206: 	mag = MAKE_ITEM(
	lsls	r6, r6, #8	@ tmp152, tmp145,
@ MagicSystem/Menu/src/MagMenuCore.c:211: 	BmMapFill(gMapRange,0);
	ldr	r0, [r3]	@, gMapRange
	movs	r1, #0	@,
@ MagicSystem/Menu/src/MagMenuCore.c:206: 	mag = MAKE_ITEM(
	orrs	r4, r6	@ tmp154, tmp152
@ MagicSystem/Menu/src/MagMenuCore.c:211: 	BmMapFill(gMapRange,0);
	bl	.L50		@
@ MagicSystem/Menu/src/MagMenuCore.c:213: 	FillMapForSingleItem(gActiveUnit,mag);
	lsls	r1, r4, #16	@ tmp155, tmp154,
	ldr	r0, [r5]	@, gActiveUnit
	ldr	r3, .L56+28	@ tmp158,
	lsrs	r1, r1, #16	@ tmp155, tmp155,
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:214: 	DisplayMoveRangeGraphics(4);
	movs	r0, #4	@,
	ldr	r3, .L56+32	@ tmp159,
	bl	.L14		@
.L52:
@ MagicSystem/Menu/src/MagMenuCore.c:216: }
	@ sp needed	@
	movs	r0, #0	@,
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L57:
	.align	2
.L56:
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
@ MagicSystem/Menu/src/MagMenuCore.c:228: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r3, .L63	@ tmp144,
@ MagicSystem/Menu/src/MagMenuCore.c:261: int BMagSelect_TextDraw(MenuProc* pmu, MenuCommandProc* pcmd){
	push	{r4, r5, r6, lr}	@
@ MagicSystem/Menu/src/MagMenuCore.c:228: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r0, [r3]	@, gActiveUnit
	ldr	r3, .L63+4	@ tmp145,
@ MagicSystem/Menu/src/MagMenuCore.c:261: int BMagSelect_TextDraw(MenuProc* pmu, MenuCommandProc* pcmd){
	movs	r4, r1	@ pcmd, tmp182
@ MagicSystem/Menu/src/MagMenuCore.c:228: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:236: 	if( NULL == ext )
	cmp	r0, #0	@ ext,
	beq	.L59		@,
@ MagicSystem/Menu/src/MagMenuCore.c:240: 		use = GetBMagUse(ext,pcmd->commandDefinitionIndex);
	movs	r5, r4	@ tmp148, pcmd
	adds	r5, r5, #60	@ tmp148,
	ldrb	r1, [r5]	@ tmp149,
	ldr	r3, .L63+8	@ tmp150,
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:256: 		gBg0MapBuffer + TILEMAP_INDEX(pcmd->xDrawTile,pcmd->yDrawTile) );
	ldrh	r3, [r4, #44]	@ tmp153,
	ldrh	r2, [r4, #42]	@ tmp155,
	lsls	r3, r3, #5	@ tmp154, tmp153,
	adds	r3, r3, r2	@ tmp156, tmp154, tmp155
@ MagicSystem/Menu/src/MagMenuCore.c:252: 	DrawItemMenuLine( 
	ldr	r2, .L63+12	@ tmp159,
@ MagicSystem/Menu/src/MagMenuCore.c:256: 		gBg0MapBuffer + TILEMAP_INDEX(pcmd->xDrawTile,pcmd->yDrawTile) );
	lsls	r3, r3, #1	@ tmp157, tmp156,
@ MagicSystem/Menu/src/MagMenuCore.c:252: 	DrawItemMenuLine( 
	adds	r3, r3, r2	@ tmp158, tmp157, tmp159
	movs	r2, r0	@ tmp163, tmp151
	subs	r1, r2, #1	@ tmp162, tmp163
	sbcs	r2, r2, r1	@ tmp163, tmp163, tmp162
@ MagicSystem/Menu/src/MagMenuCore.c:248: 		mag = MAKE_ITEM(gpBMagList[pcmd->commandDefinitionIndex].index, use);
	ldrb	r1, [r5]	@ tmp168,
	ldr	r5, .L63+16	@ tmp170,
	ldr	r5, [r5]	@ gpBMagList, gpBMagList
	lsls	r1, r1, #3	@ tmp171, tmp168,
	ldrb	r1, [r1, r5]	@ *_19, *_19
	lsls	r0, r0, #8	@ tmp174, tmp151,
	orrs	r1, r0	@ tmp176, tmp174
@ MagicSystem/Menu/src/MagMenuCore.c:252: 	DrawItemMenuLine( 
	movs	r0, r4	@ pcmd, pcmd
	lsls	r1, r1, #16	@ tmp177, tmp176,
	ldr	r4, .L63+20	@ tmp180,
	lsrs	r1, r1, #16	@ tmp177, tmp177,
	adds	r0, r0, #52	@ pcmd,
	bl	.L15		@
.L59:
@ MagicSystem/Menu/src/MagMenuCore.c:263: }
	@ sp needed	@
	movs	r0, #0	@,
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L64:
	.align	2
.L63:
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
@ MagicSystem/Menu/src/MagMenuCore.c:228: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r3, .L70	@ tmp144,
@ MagicSystem/Menu/src/MagMenuCore.c:265: int WMagSelect_TextDraw(MenuProc* pmu, MenuCommandProc* pcmd){
	push	{r4, r5, r6, lr}	@
@ MagicSystem/Menu/src/MagMenuCore.c:228: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	ldr	r0, [r3]	@, gActiveUnit
	ldr	r3, .L70+4	@ tmp145,
@ MagicSystem/Menu/src/MagMenuCore.c:265: int WMagSelect_TextDraw(MenuProc* pmu, MenuCommandProc* pcmd){
	movs	r4, r1	@ pcmd, tmp182
@ MagicSystem/Menu/src/MagMenuCore.c:228: 	UnitExt* ext = GetUnitExtByUnit(gActiveUnit);
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:236: 	if( NULL == ext )
	cmp	r0, #0	@ ext,
	beq	.L66		@,
@ MagicSystem/Menu/src/MagMenuCore.c:242: 		use = GetWMagUse(ext,pcmd->commandDefinitionIndex);
	movs	r5, r4	@ tmp148, pcmd
	adds	r5, r5, #60	@ tmp148,
	ldrb	r1, [r5]	@ tmp149,
	ldr	r3, .L70+8	@ tmp150,
	bl	.L14		@
@ MagicSystem/Menu/src/MagMenuCore.c:256: 		gBg0MapBuffer + TILEMAP_INDEX(pcmd->xDrawTile,pcmd->yDrawTile) );
	ldrh	r3, [r4, #44]	@ tmp153,
	ldrh	r2, [r4, #42]	@ tmp155,
	lsls	r3, r3, #5	@ tmp154, tmp153,
	adds	r3, r3, r2	@ tmp156, tmp154, tmp155
@ MagicSystem/Menu/src/MagMenuCore.c:252: 	DrawItemMenuLine( 
	ldr	r2, .L70+12	@ tmp159,
@ MagicSystem/Menu/src/MagMenuCore.c:256: 		gBg0MapBuffer + TILEMAP_INDEX(pcmd->xDrawTile,pcmd->yDrawTile) );
	lsls	r3, r3, #1	@ tmp157, tmp156,
@ MagicSystem/Menu/src/MagMenuCore.c:252: 	DrawItemMenuLine( 
	adds	r3, r3, r2	@ tmp158, tmp157, tmp159
	movs	r2, r0	@ tmp163, tmp151
	subs	r1, r2, #1	@ tmp162, tmp163
	sbcs	r2, r2, r1	@ tmp163, tmp163, tmp162
@ MagicSystem/Menu/src/MagMenuCore.c:250: 		mag = MAKE_ITEM(gpWMagList[pcmd->commandDefinitionIndex].index, use);
	ldrb	r1, [r5]	@ tmp168,
	ldr	r5, .L70+16	@ tmp170,
	ldr	r5, [r5]	@ gpWMagList, gpWMagList
	lsls	r1, r1, #3	@ tmp171, tmp168,
	ldrb	r1, [r1, r5]	@ *_32, *_32
	lsls	r0, r0, #8	@ tmp174, tmp151,
	orrs	r1, r0	@ tmp176, tmp174
@ MagicSystem/Menu/src/MagMenuCore.c:252: 	DrawItemMenuLine( 
	movs	r0, r4	@ pcmd, pcmd
	lsls	r1, r1, #16	@ tmp177, tmp176,
	ldr	r4, .L70+20	@ tmp180,
	lsrs	r1, r1, #16	@ tmp177, tmp177,
	adds	r0, r0, #52	@ pcmd,
	bl	.L15		@
.L66:
@ MagicSystem/Menu/src/MagMenuCore.c:267: }
	@ sp needed	@
	movs	r0, #0	@,
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L71:
	.align	2
.L70:
	.word	gActiveUnit
	.word	GetUnitExtByUnit
	.word	GetWMagUse
	.word	gBg0MapBuffer
	.word	gpWMagList
	.word	DrawItemMenuLine
	.size	WMagSelect_TextDraw, .-WMagSelect_TextDraw
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L14:
	bx	r3
.L15:
	bx	r4
.L50:
	bx	r7
