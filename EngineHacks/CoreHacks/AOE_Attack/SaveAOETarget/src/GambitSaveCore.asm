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
	.file	"GambitSaveCore.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	SaveTarget_PostGambitTargetSelection
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SaveTarget_PostGambitTargetSelection, %function
SaveTarget_PostGambitTargetSelection:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:4: 	s8 size = (s8)gTargetArraySize;
	ldr	r3, .L5	@ tmp127,
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:4: 	s8 size = (s8)gTargetArraySize;
	ldr	r3, [r3]	@ gTargetArraySize, gTargetArraySize
	adds	r2, r3, #0	@ size, gTargetArraySize
	lsls	r3, r3, #24	@ tmp132, gTargetArraySize,
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:3: void SaveTarget_PostGambitTargetSelection(void){
	push	{r4, r5, r6, lr}	@
	asrs	r3, r3, #24	@ tmp131, tmp132,
	cmp	r3, #64	@ tmp131,
	ble	.L2		@,
	movs	r2, #64	@ size,
.L2:
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:7: 	gpCommonFlagSaveSu[0] = size;
	ldr	r0, .L5+4	@ tmp135,
	lsls	r2, r2, #24	@ tmp134, size,
	ldr	r3, [r0]	@ gpCommonFlagSaveSu.1_2, gpCommonFlagSaveSu
	asrs	r2, r2, #24	@ _4, tmp134,
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:7: 	gpCommonFlagSaveSu[0] = size;
	strb	r2, [r3]	@ _4, *gpCommonFlagSaveSu.1_2
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:10: 		gpCommonFlagSaveSu[i+1] = gTargetArray[i].unitIndex;
	movs	r5, #12	@ tmp150,
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:9: 	for(u8 i=0; i<size; i++)
	movs	r3, #0	@ i,
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:10: 		gpCommonFlagSaveSu[i+1] = gTargetArray[i].unitIndex;
	ldr	r4, .L5+8	@ tmp149,
.L3:
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:9: 	for(u8 i=0; i<size; i++)
	cmp	r3, r2	@ i, _4
	blt	.L4		@,
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:11: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L4:
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:10: 		gpCommonFlagSaveSu[i+1] = gTargetArray[i].unitIndex;
	movs	r1, r5	@ tmp139, tmp150
	muls	r1, r3	@ tmp139, i
	adds	r1, r4, r1	@ tmp140, tmp149, tmp139
	ldrb	r6, [r1, #2]	@ _9, gTargetArray
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:10: 		gpCommonFlagSaveSu[i+1] = gTargetArray[i].unitIndex;
	ldr	r1, [r0]	@ gpCommonFlagSaveSu, gpCommonFlagSaveSu
	adds	r1, r1, r3	@ tmp144, gpCommonFlagSaveSu, i
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:9: 	for(u8 i=0; i<size; i++)
	adds	r3, r3, #1	@ tmp146,
	lsls	r3, r3, #24	@ i, tmp146,
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:10: 		gpCommonFlagSaveSu[i+1] = gTargetArray[i].unitIndex;
	strb	r6, [r1, #1]	@ _9, *_8
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:9: 	for(u8 i=0; i<size; i++)
	lsrs	r3, r3, #24	@ i, i,
	b	.L3		@
.L6:
	.align	2
.L5:
	.word	gTargetArraySize
	.word	gpCommonFlagSaveSu
	.word	gTargetArray
	.size	SaveTarget_PostGambitTargetSelection, .-SaveTarget_PostGambitTargetSelection
	.align	1
	.global	ClearTarget_CommonFlagSaveSu
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	ClearTarget_CommonFlagSaveSu, %function
ClearTarget_CommonFlagSaveSu:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:14: void ClearTarget_CommonFlagSaveSu(void){
	movs	r3, #0	@ ivtmp.26,
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:16: 		gpCommonFlagSaveSu[i] = 0;
	movs	r1, r3	@ tmp118, ivtmp.26
	ldr	r0, .L10	@ tmp117,
.L8:
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:16: 		gpCommonFlagSaveSu[i] = 0;
	ldr	r2, [r0]	@ gpCommonFlagSaveSu, gpCommonFlagSaveSu
	strb	r1, [r2, r3]	@ tmp118, *_3
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:15: 	for(u8 i=0; i<0x41; i++)
	adds	r3, r3, #1	@ ivtmp.26,
	cmp	r3, #65	@ ivtmp.26,
	bne	.L8		@,
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:17: }
	@ sp needed	@
	bx	lr
.L11:
	.align	2
.L10:
	.word	gpCommonFlagSaveSu
	.size	ClearTarget_CommonFlagSaveSu, .-ClearTarget_CommonFlagSaveSu
	.align	1
	.global	MsuSave_AOETarget
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MsuSave_AOETarget, %function
MsuSave_AOETarget:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:21: 	WriteAndVerifySramFast( (const u8*)gpCommonFlagSaveSu, dest, size);
	ldr	r3, .L13	@ tmp116,
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:23: }
	@ sp needed	@
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:20: void MsuSave_AOETarget(void* dest, unsigned size){
	movs	r2, r1	@ size, tmp119
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:21: 	WriteAndVerifySramFast( (const u8*)gpCommonFlagSaveSu, dest, size);
	movs	r1, r0	@, dest
	ldr	r0, [r3]	@, gpCommonFlagSaveSu
	ldr	r3, .L13+4	@ tmp117,
	bl	.L15		@
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:23: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L14:
	.align	2
.L13:
	.word	gpCommonFlagSaveSu
	.word	WriteAndVerifySramFast
	.size	MsuSave_AOETarget, .-MsuSave_AOETarget
	.align	1
	.global	MsuLoad_AOETarget
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MsuLoad_AOETarget, %function
MsuLoad_AOETarget:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:26: void MsuLoad_AOETarget(const void* src, unsigned size){
	movs	r2, r1	@ size, tmp121
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:29: }
	@ sp needed	@
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:27: 	(*ReadSramFast)(src, gpCommonFlagSaveSu, size);
	ldr	r3, .L17	@ tmp117,
	ldr	r1, .L17+4	@ tmp118,
	ldr	r4, [r1]	@ ReadSramFast, ReadSramFast
	ldr	r1, [r3]	@, gpCommonFlagSaveSu
	bl	.L19		@
@ AOE_Attack/SaveAOETarget/src/GambitSaveCore.c:29: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L18:
	.align	2
.L17:
	.word	gpCommonFlagSaveSu
	.word	ReadSramFast
	.size	MsuLoad_AOETarget, .-MsuLoad_AOETarget
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L15:
	bx	r3
.L19:
	bx	r4
