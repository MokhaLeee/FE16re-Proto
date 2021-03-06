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
	.file	"ChapInitCore.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	ChapterInitHook
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	ChapterInitHook, %function
ChapterInitHook:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ CoreSupport/ChapterInitHook/src/ChapInitCore.c:6: void ChapterInitHook(struct Proc* E_MAPMAIN){
	movs	r4, r0	@ E_MAPMAIN, tmp117
@ CoreSupport/ChapterInitHook/src/ChapInitCore.c:7: 	ChapterInitFunc* it= ChapterInitFuncList;
	ldr	r5, .L4	@ it,
.L2:
@ CoreSupport/ChapterInitHook/src/ChapInitCore.c:9: 	while(*it)
	ldr	r3, [r5]	@ _1, MEM[(u8 (*ChapterInitFunc) (struct Proc *) *)it_2]
	cmp	r3, #0	@ _1,
	bne	.L3		@,
@ CoreSupport/ChapterInitHook/src/ChapInitCore.c:15: }
	@ sp needed	@
@ CoreSupport/ChapterInitHook/src/ChapInitCore.c:13: 	MapMain_StartIntroFx(E_MAPMAIN);
	movs	r0, r4	@, E_MAPMAIN
	ldr	r3, .L4+4	@ tmp116,
	bl	.L6		@
@ CoreSupport/ChapterInitHook/src/ChapInitCore.c:15: }
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L3:
@ CoreSupport/ChapterInitHook/src/ChapInitCore.c:10: 		(*it++)(E_MAPMAIN);
	movs	r0, r4	@, E_MAPMAIN
@ CoreSupport/ChapterInitHook/src/ChapInitCore.c:10: 		(*it++)(E_MAPMAIN);
	adds	r5, r5, #4	@ it,
@ CoreSupport/ChapterInitHook/src/ChapInitCore.c:10: 		(*it++)(E_MAPMAIN);
	bl	.L6		@
	b	.L2		@
.L5:
	.align	2
.L4:
	.word	ChapterInitFuncList
	.word	MapMain_StartIntroFx
	.size	ChapterInitHook, .-ChapterInitHook
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L6:
	bx	r3
