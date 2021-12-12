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
	.file	"caUmMenu.c"
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
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:25: 	if( UnitHasCA(gActiveUnit) )
	ldr	r3, .L4	@ tmp118,
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:22: {	
	push	{r4, lr}	@
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:25: 	if( UnitHasCA(gActiveUnit) )
	ldr	r0, [r3]	@, gActiveUnit
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:29: }
	@ sp needed	@
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:25: 	if( UnitHasCA(gActiveUnit) )
	ldr	r3, .L4+4	@ tmp119,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:28: 		return MCA_GRAYED;
	rsbs	r3, r0, #0	@ tmp122, tmp123
	adcs	r0, r0, r3	@ tmp121, tmp123, tmp122
	adds	r0, r0, #1	@ <retval>,
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:29: }
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
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:35: 	if( MCA_USABLE != pcmd->availability )
	adds	r1, r1, #61	@ tmp120,
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:35: 	if( MCA_USABLE != pcmd->availability )
	ldrb	r3, [r1]	@ tmp121,
	cmp	r3, #1	@ tmp121,
	beq	.L8		@,
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:37: 		MenuCallHelpBox(pmu,TextId_umCAGrayBox);
	ldr	r3, .L10	@ tmp122,
	ldrh	r1, [r3]	@ TextId_umCAGrayBox, TextId_umCAGrayBox
	ldr	r3, .L10+4	@ tmp124,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:38: 		return ME_NONE;
	movs	r0, #0	@ <retval>,
.L7:
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:50: }
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L8:
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:41: 	_ResetIconGraphics();
	ldr	r3, .L10+8	@ tmp125,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:42: 	LoadIconPalettes(0x4);
	movs	r0, #4	@,
	ldr	r3, .L10+12	@ tmp126,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:44: 	StartMenu(CAselectMenu);
	ldr	r3, .L10+16	@ tmp128,
	ldr	r0, .L10+20	@ tmp127,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:47: 	Text_InitFont();
	ldr	r3, .L10+24	@ tmp129,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:49: 	return ME_CLEAR_GFX | ME_PLAY_BEEP | ME_END | ME_DISABLE;
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
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:66: 	BmMapFill(gMapMovement,-1);
	movs	r1, #1	@ tmp124,
	ldr	r3, .L13	@ tmp117,
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:58: int CA_CommonUnHover(void){
	push	{r4, lr}	@
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:66: 	BmMapFill(gMapMovement,-1);
	ldr	r0, [r3]	@, gMapMovement
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:71: }
	@ sp needed	@
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:66: 	BmMapFill(gMapMovement,-1);
	ldr	r4, .L13+4	@ tmp118,
	rsbs	r1, r1, #0	@, tmp124
	bl	.L15		@
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:67: 	BmMapFill(gMapRange,0);
	ldr	r3, .L13+8	@ tmp119,
	movs	r1, #0	@,
	ldr	r0, [r3]	@, gMapRange
	bl	.L15		@
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:68: 	DisplayMoveRangeGraphics(0x3);
	movs	r0, #3	@,
	ldr	r3, .L13+12	@ tmp121,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:69: 	HideMoveRangeGraphicsWrapper();
	ldr	r3, .L13+16	@ tmp122,
	bl	.L6		@
@ CombatArt/Menu_TargetSelection/src/caUmMenu.c:71: }
	movs	r0, #0	@,
	pop	{r4}
	pop	{r1}
	bx	r1
.L14:
	.align	2
.L13:
	.word	gMapMovement
	.word	BmMapFill
	.word	gMapRange
	.word	DisplayMoveRangeGraphics
	.word	HideMoveRangeGraphicsWrapper
	.size	CA_CommonUnHover, .-CA_CommonUnHover
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L6:
	bx	r3
.L15:
	bx	r4
