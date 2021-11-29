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
	.file	"tsCore.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	tsBMag_onBPress
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	tsBMag_onBPress, %function
tsBMag_onBPress:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ MagicSystem/TargetSelect/src/tsCore.c:11: 	if( MapEventEngineExists() )
	ldr	r3, .L4	@ tmp117,
@ MagicSystem/TargetSelect/src/tsCore.c:10: int tsBMag_onBPress(struct TargetSelectionProc* pts, struct TargetEntry* tar){
	push	{r4, lr}	@
@ MagicSystem/TargetSelect/src/tsCore.c:11: 	if( MapEventEngineExists() )
	bl	.L6		@
@ MagicSystem/TargetSelect/src/tsCore.c:12: 		return TSE_NONE;
	movs	r3, #0	@ <retval>,
@ MagicSystem/TargetSelect/src/tsCore.c:11: 	if( MapEventEngineExists() )
	cmp	r0, r3	@ tmp121,
	bne	.L1		@,
@ MagicSystem/TargetSelect/src/tsCore.c:14: 	ProcStart(gProc_tsBMag_onBPress,(Proc*)3);
	ldr	r3, .L4+4	@ tmp119,
	movs	r1, #3	@,
	ldr	r0, .L4+8	@ tmp118,
	bl	.L6		@
@ MagicSystem/TargetSelect/src/tsCore.c:15: 	return TSE_PLAY_BOOP | TSE_END | TSE_DISABLE;
	movs	r3, #11	@ <retval>,
.L1:
@ MagicSystem/TargetSelect/src/tsCore.c:16: }
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
	.word	gProc_tsBMag_onBPress
	.size	tsBMag_onBPress, .-tsBMag_onBPress
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L6:
	bx	r3
