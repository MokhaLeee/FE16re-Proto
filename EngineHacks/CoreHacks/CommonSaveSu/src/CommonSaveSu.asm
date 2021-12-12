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
	.file	"CommonSaveSu.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	Reset_CommonSaveSu
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Reset_CommonSaveSu, %function
Reset_CommonSaveSu:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ CommonSaveSu/src/CommonSaveSu.c:9: void Reset_CommonSaveSu(void){
	movs	r3, #0	@ ivtmp.15,
@ CommonSaveSu/src/CommonSaveSu.c:11: 		gpCommonSaveSu[i] = 0;
	movs	r1, r3	@ tmp118, ivtmp.15
	ldr	r0, .L4	@ tmp117,
.L2:
@ CommonSaveSu/src/CommonSaveSu.c:11: 		gpCommonSaveSu[i] = 0;
	ldr	r2, [r0]	@ gpCommonSaveSu, gpCommonSaveSu
	strb	r1, [r2, r3]	@ tmp118, *_3
@ CommonSaveSu/src/CommonSaveSu.c:10: 	for(u8 i=0; i<0x41; i++)
	adds	r3, r3, #1	@ ivtmp.15,
	cmp	r3, #65	@ ivtmp.15,
	bne	.L2		@,
@ CommonSaveSu/src/CommonSaveSu.c:12: }
	@ sp needed	@
	bx	lr
.L5:
	.align	2
.L4:
	.word	gpCommonSaveSu
	.size	Reset_CommonSaveSu, .-Reset_CommonSaveSu
	.align	1
	.global	MsuSave_Conmon
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MsuSave_Conmon, %function
MsuSave_Conmon:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ CommonSaveSu/src/CommonSaveSu.c:19: 	WriteAndVerifySramFast( (const u8*)gpCommonSaveSu, dest, size);
	ldr	r3, .L7	@ tmp116,
@ CommonSaveSu/src/CommonSaveSu.c:21: }
	@ sp needed	@
@ CommonSaveSu/src/CommonSaveSu.c:18: void MsuSave_Conmon(void* dest, unsigned size){
	movs	r2, r1	@ size, tmp119
@ CommonSaveSu/src/CommonSaveSu.c:19: 	WriteAndVerifySramFast( (const u8*)gpCommonSaveSu, dest, size);
	movs	r1, r0	@, dest
	ldr	r0, [r3]	@, gpCommonSaveSu
	ldr	r3, .L7+4	@ tmp117,
	bl	.L9		@
@ CommonSaveSu/src/CommonSaveSu.c:21: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L8:
	.align	2
.L7:
	.word	gpCommonSaveSu
	.word	WriteAndVerifySramFast
	.size	MsuSave_Conmon, .-MsuSave_Conmon
	.align	1
	.global	MsuLoad_Common
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MsuLoad_Common, %function
MsuLoad_Common:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ CommonSaveSu/src/CommonSaveSu.c:24: void MsuLoad_Common(const void* src, unsigned size){
	movs	r2, r1	@ size, tmp121
@ CommonSaveSu/src/CommonSaveSu.c:27: }
	@ sp needed	@
@ CommonSaveSu/src/CommonSaveSu.c:25: 	(*ReadSramFast)(src, gpCommonSaveSu, size);
	ldr	r3, .L11	@ tmp117,
	ldr	r1, .L11+4	@ tmp118,
	ldr	r4, [r1]	@ ReadSramFast, ReadSramFast
	ldr	r1, [r3]	@, gpCommonSaveSu
	bl	.L13		@
@ CommonSaveSu/src/CommonSaveSu.c:27: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L12:
	.align	2
.L11:
	.word	gpCommonSaveSu
	.word	ReadSramFast
	.size	MsuLoad_Common, .-MsuLoad_Common
	.align	1
	.global	MsuSave_ExternFlag
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MsuSave_ExternFlag, %function
MsuSave_ExternFlag:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ CommonSaveSu/src/CommonSaveSu.c:31: 	WriteAndVerifySramFast( (const u8*)gpBattleFlagSu, dest, size);
	ldr	r3, .L15	@ tmp116,
@ CommonSaveSu/src/CommonSaveSu.c:33: }
	@ sp needed	@
@ CommonSaveSu/src/CommonSaveSu.c:30: void MsuSave_ExternFlag(void* dest, unsigned size){
	movs	r2, r1	@ size, tmp119
@ CommonSaveSu/src/CommonSaveSu.c:31: 	WriteAndVerifySramFast( (const u8*)gpBattleFlagSu, dest, size);
	movs	r1, r0	@, dest
	ldr	r0, [r3]	@, gpBattleFlagSu
	ldr	r3, .L15+4	@ tmp117,
	bl	.L9		@
@ CommonSaveSu/src/CommonSaveSu.c:33: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L16:
	.align	2
.L15:
	.word	gpBattleFlagSu
	.word	WriteAndVerifySramFast
	.size	MsuSave_ExternFlag, .-MsuSave_ExternFlag
	.align	1
	.global	MsuLoad_ExternFlag
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MsuLoad_ExternFlag, %function
MsuLoad_ExternFlag:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ CommonSaveSu/src/CommonSaveSu.c:36: void MsuLoad_ExternFlag(const void* src, unsigned size){
	movs	r2, r1	@ size, tmp121
@ CommonSaveSu/src/CommonSaveSu.c:39: }
	@ sp needed	@
@ CommonSaveSu/src/CommonSaveSu.c:37: 	(*ReadSramFast)(src, gpBattleFlagSu, size);
	ldr	r3, .L18	@ tmp117,
	ldr	r1, .L18+4	@ tmp118,
	ldr	r4, [r1]	@ ReadSramFast, ReadSramFast
	ldr	r1, [r3]	@, gpBattleFlagSu
	bl	.L13		@
@ CommonSaveSu/src/CommonSaveSu.c:39: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L19:
	.align	2
.L18:
	.word	gpBattleFlagSu
	.word	ReadSramFast
	.size	MsuLoad_ExternFlag, .-MsuLoad_ExternFlag
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L9:
	bx	r3
.L13:
	bx	r4
