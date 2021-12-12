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
	.file	"caTargetSelect.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	TS_ReturnB_CA
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	TS_ReturnB_CA, %function
TS_ReturnB_CA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ CombatArt/Menu_TargetSelection/src/caTargetSelect.c:21: 	if( MapEventEngineExists() )
	ldr	r3, .L4	@ tmp115,
@ CombatArt/Menu_TargetSelection/src/caTargetSelect.c:19: int TS_ReturnB_CA(void){
	push	{r4, lr}	@
@ CombatArt/Menu_TargetSelection/src/caTargetSelect.c:21: 	if( MapEventEngineExists() )
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caTargetSelect.c:22: 		return TSE_NONE;
	movs	r3, #0	@ <retval>,
@ CombatArt/Menu_TargetSelection/src/caTargetSelect.c:21: 	if( MapEventEngineExists() )
	cmp	r0, r3	@ tmp119,
	bne	.L1		@,
@ CombatArt/Menu_TargetSelection/src/caTargetSelect.c:26: 		ProcStart(gProc_PostTs_Return,(Proc*)3);
	ldr	r3, .L4+4	@ tmp117,
	movs	r1, #3	@,
	ldr	r0, .L4+8	@ tmp116,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caTargetSelect.c:27: 		return TSE_PLAY_BOOP | TSE_END | TSE_DISABLE;
	movs	r3, #11	@ <retval>,
.L1:
@ CombatArt/Menu_TargetSelection/src/caTargetSelect.c:29: }
	@ sp needed	@
	movs	r0, r3	@, <retval>
	pop	{r4}
	pop	{r1}
	bx	r1
.L5:
	.align	2
.L4:
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
@ CombatArt/Menu_TargetSelection/src/caTargetSelect.c:34: 	_ResetIconGraphics();
	ldr	r3, .L8	@ tmp119,
@ CombatArt/Menu_TargetSelection/src/caTargetSelect.c:44: }
	@ sp needed	@
@ CombatArt/Menu_TargetSelection/src/caTargetSelect.c:34: 	_ResetIconGraphics();
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caTargetSelect.c:35: 	LoadIconPalettes(0x4);
	movs	r0, #4	@,
	ldr	r3, .L8+4	@ tmp120,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caTargetSelect.c:37: 	MenuProc* um = StartMenu(CAwpnSelectMenu);
	ldr	r3, .L8+8	@ tmp122,
	ldr	r0, .L8+12	@ tmp121,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caTargetSelect.c:38: 	ForceMenuItemPanel(um,gActiveUnit,0xF,0xB);
	ldr	r4, .L8+16	@ tmp123,
	movs	r2, #15	@,
	ldr	r1, [r4]	@, gActiveUnit
	ldr	r5, .L8+20	@ tmp124,
	movs	r3, #11	@,
	bl	.L10		@
@ CombatArt/Menu_TargetSelection/src/caTargetSelect.c:40: 	StartFace(0,GetUnitPortraitId(gActiveUnit),0xB0,0xC,0x2);
	ldr	r0, [r4]	@, gActiveUnit
	ldr	r3, .L8+24	@ tmp126,
	bl	.L6		@
	movs	r3, #2	@ tmp127,
	movs	r1, r0	@ _3, tmp140
	movs	r2, #176	@,
	str	r3, [sp]	@ tmp127,
	ldr	r4, .L8+28	@ tmp128,
	adds	r3, r3, #10	@,
	movs	r0, #0	@,
	bl	.L11		@
@ CombatArt/Menu_TargetSelection/src/caTargetSelect.c:41: 	SetFaceBlinkControlById(0,5);
	movs	r1, #5	@,
	movs	r0, #0	@,
	ldr	r3, .L8+32	@ tmp129,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caTargetSelect.c:43: 	gpBattleFlagSu->isCombat = 1;
	ldr	r3, .L8+36	@ tmp131,
	ldr	r2, [r3]	@ gpBattleFlagSu, gpBattleFlagSu
	movs	r3, #1	@ tmp137,
	ldrb	r1, [r2]	@ gpBattleFlagSu.2_4->isCombat, gpBattleFlagSu.2_4->isCombat
	orrs	r3, r1	@ tmp136, gpBattleFlagSu.2_4->isCombat
	strb	r3, [r2]	@ tmp136, gpBattleFlagSu.2_4->isCombat
@ CombatArt/Menu_TargetSelection/src/caTargetSelect.c:44: }
	pop	{r0, r1, r2, r4, r5}
	pop	{r0}
	bx	r0
.L9:
	.align	2
.L8:
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
.L11:
	bx	r4
.L10:
	bx	r5
