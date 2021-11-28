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
	.file	"RecoverableRN.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	InitRN2
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	InitRN2, %function
InitRN2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ RecoverableRN/src/RecoverableRN.c:8: void InitRN2(void){
	movs	r4, #32	@ ivtmp_32,
.L2:
@ RecoverableRN/src/RecoverableRN.c:9: 	 for(u8 i=0; i<0x20; i++)
	subs	r4, r4, #1	@ tmp119,
@ RecoverableRN/src/RecoverableRN.c:10: 		RandNext();
	ldr	r3, .L4	@ tmp118,
@ RecoverableRN/src/RecoverableRN.c:9: 	 for(u8 i=0; i<0x20; i++)
	lsls	r4, r4, #24	@ ivtmp_32, tmp119,
@ RecoverableRN/src/RecoverableRN.c:10: 		RandNext();
	bl	.L6		@
@ RecoverableRN/src/RecoverableRN.c:9: 	 for(u8 i=0; i<0x20; i++)
	lsrs	r4, r4, #24	@ ivtmp_32, ivtmp_32,
	bne	.L2		@,
@ RecoverableRN/src/RecoverableRN.c:13: 		gpRNState2[i] = gRNState[i];
	ldr	r2, .L4+4	@ tmp122,
@ RecoverableRN/src/RecoverableRN.c:16: }
	@ sp needed	@
@ RecoverableRN/src/RecoverableRN.c:13: 		gpRNState2[i] = gRNState[i];
	ldr	r3, .L4+8	@ tmp121,
@ RecoverableRN/src/RecoverableRN.c:13: 		gpRNState2[i] = gRNState[i];
	ldrh	r1, [r2]	@ _23, gRNState
@ RecoverableRN/src/RecoverableRN.c:13: 		gpRNState2[i] = gRNState[i];
	ldr	r3, [r3]	@ gpRNState2.1_19, gpRNState2
@ RecoverableRN/src/RecoverableRN.c:13: 		gpRNState2[i] = gRNState[i];
	strh	r1, [r3]	@ _23, *gpRNState2.1_19
@ RecoverableRN/src/RecoverableRN.c:13: 		gpRNState2[i] = gRNState[i];
	ldrh	r1, [r2, #2]	@ _33,
@ RecoverableRN/src/RecoverableRN.c:13: 		gpRNState2[i] = gRNState[i];
	strh	r1, [r3, #2]	@ _33, MEM[(u16 *)gpRNState2.1_19 + 2B]
@ RecoverableRN/src/RecoverableRN.c:13: 		gpRNState2[i] = gRNState[i];
	ldrh	r2, [r2, #4]	@ _43,
@ RecoverableRN/src/RecoverableRN.c:13: 		gpRNState2[i] = gRNState[i];
	strh	r2, [r3, #4]	@ _43, MEM[(u16 *)gpRNState2.1_19 + 4B]
@ RecoverableRN/src/RecoverableRN.c:16: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L5:
	.align	2
.L4:
	.word	RandNext
	.word	gRNState
	.word	gpRNState2
	.size	InitRN2, .-InitRN2
	.align	1
	.global	NextRN2s
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	NextRN2s, %function
NextRN2s:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
	ldr	r2, .L12	@ ivtmp.42,
@ RecoverableRN/src/RecoverableRN.c:21: 		gRNState[i] = gpRNState2[i];
	ldr	r3, .L12+4	@ tmp129,
@ RecoverableRN/src/RecoverableRN.c:18: u16 NextRN2s(u16 count) {
	movs	r7, r0	@ count, tmp149
	movs	r5, r2	@ ivtmp.42, ivtmp.42
@ RecoverableRN/src/RecoverableRN.c:21: 		gRNState[i] = gpRNState2[i];
	ldr	r0, [r3]	@ gpRNState2.5_6, gpRNState2
	movs	r3, #0	@ ivtmp.45,
@ RecoverableRN/src/RecoverableRN.c:20: 		gpRNtmp[i] = gRNState[i];
	ldr	r6, .L12+8	@ tmp128,
	ldr	r4, [r6]	@ gpRNtmp.3_1, gpRNtmp
.L8:
@ RecoverableRN/src/RecoverableRN.c:20: 		gpRNtmp[i] = gRNState[i];
	ldrh	r1, [r2]	@ _5, MEM[(short unsigned int *)_52]
@ RecoverableRN/src/RecoverableRN.c:20: 		gpRNtmp[i] = gRNState[i];
	strh	r1, [r4, r3]	@ _5, MEM[(u16 *)gpRNtmp.3_1 + ivtmp.45_36 * 1]
@ RecoverableRN/src/RecoverableRN.c:21: 		gRNState[i] = gpRNState2[i];
	ldrh	r1, [r0, r3]	@ _8, MEM[(u16 *)gpRNState2.5_6 + ivtmp.45_36 * 1]
@ RecoverableRN/src/RecoverableRN.c:19: 	for(int i=0; i<3; i++){
	adds	r3, r3, #2	@ ivtmp.45,
@ RecoverableRN/src/RecoverableRN.c:21: 		gRNState[i] = gpRNState2[i];
	strh	r1, [r2]	@ _8, MEM[(short unsigned int *)_52]
@ RecoverableRN/src/RecoverableRN.c:19: 	for(int i=0; i<3; i++){
	adds	r2, r2, #2	@ ivtmp.42,
	cmp	r3, #6	@ ivtmp.45,
	bne	.L8		@,
@ RecoverableRN/src/RecoverableRN.c:24: 	for(u16 i=0; i<count; i++)
	movs	r4, #0	@ i,
.L9:
	ldr	r3, .L12+12	@ tmp148,
@ RecoverableRN/src/RecoverableRN.c:24: 	for(u16 i=0; i<count; i++)
	cmp	r4, r7	@ i, count
	bne	.L10		@,
@ RecoverableRN/src/RecoverableRN.c:32: }
	@ sp needed	@
@ RecoverableRN/src/RecoverableRN.c:26: 	u16 rn = RandNext();
	bl	.L6		@
@ RecoverableRN/src/RecoverableRN.c:29: 		gRNState[i] = gpRNtmp[i];
	ldr	r3, [r6]	@ gpRNtmp.8_34, gpRNtmp
	ldrh	r2, [r3]	@ _38, *gpRNtmp.8_34
@ RecoverableRN/src/RecoverableRN.c:29: 		gRNState[i] = gpRNtmp[i];
	strh	r2, [r5]	@ _38, gRNState[0]
@ RecoverableRN/src/RecoverableRN.c:29: 		gRNState[i] = gpRNtmp[i];
	ldrh	r2, [r3, #2]	@ _47, MEM[(u16 *)gpRNtmp.8_34 + 2B]
@ RecoverableRN/src/RecoverableRN.c:29: 		gRNState[i] = gpRNtmp[i];
	strh	r2, [r5, #2]	@ _47, gRNState[1]
@ RecoverableRN/src/RecoverableRN.c:29: 		gRNState[i] = gpRNtmp[i];
	ldrh	r3, [r3, #4]	@ _56, MEM[(u16 *)gpRNtmp.8_34 + 4B]
@ RecoverableRN/src/RecoverableRN.c:31:     return rn;
	lsls	r0, r0, #16	@ tmp144, tmp150,
@ RecoverableRN/src/RecoverableRN.c:29: 		gRNState[i] = gpRNtmp[i];
	strh	r3, [r5, #4]	@ _56, gRNState[2]
@ RecoverableRN/src/RecoverableRN.c:31:     return rn;
	lsrs	r0, r0, #16	@ tmp144, tmp144,
@ RecoverableRN/src/RecoverableRN.c:32: }
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L10:
@ RecoverableRN/src/RecoverableRN.c:24: 	for(u16 i=0; i<count; i++)
	adds	r4, r4, #1	@ tmp133,
	lsls	r4, r4, #16	@ i, tmp133,
@ RecoverableRN/src/RecoverableRN.c:25: 		RandNext();
	bl	.L6		@
@ RecoverableRN/src/RecoverableRN.c:24: 	for(u16 i=0; i<count; i++)
	lsrs	r4, r4, #16	@ i, i,
	b	.L9		@
.L13:
	.align	2
.L12:
	.word	gRNState
	.word	gpRNState2
	.word	gpRNtmp
	.word	RandNext
	.size	NextRN2s, .-NextRN2s
	.align	1
	.global	NextRN2
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	NextRN2, %function
NextRN2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ RecoverableRN/src/RecoverableRN.c:36: 	return NextRN2s(1);
	movs	r0, #1	@,
@ RecoverableRN/src/RecoverableRN.c:37: }
	@ sp needed	@
@ RecoverableRN/src/RecoverableRN.c:36: 	return NextRN2s(1);
	bl	NextRN2s		@
@ RecoverableRN/src/RecoverableRN.c:37: }
	pop	{r4}
	pop	{r1}
	bx	r1
	.size	NextRN2, .-NextRN2
	.align	1
	.global	NextRN2s_100
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	NextRN2s_100, %function
NextRN2s_100:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ RecoverableRN/src/RecoverableRN.c:41:     return NextRN2s(count) * 100 / 0x10000;
	bl	NextRN2s		@
@ RecoverableRN/src/RecoverableRN.c:42: }
	@ sp needed	@
@ RecoverableRN/src/RecoverableRN.c:41:     return NextRN2s(count) * 100 / 0x10000;
	movs	r3, #100	@ tmp122,
	muls	r0, r3	@ tmp123, tmp122
@ RecoverableRN/src/RecoverableRN.c:41:     return NextRN2s(count) * 100 / 0x10000;
	lsrs	r0, r0, #16	@ tmp125, tmp123,
@ RecoverableRN/src/RecoverableRN.c:42: }
	pop	{r4}
	pop	{r1}
	bx	r1
	.size	NextRN2s_100, .-NextRN2s_100
	.align	1
	.global	RN2_SaveSu
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	RN2_SaveSu, %function
RN2_SaveSu:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ RecoverableRN/src/RecoverableRN.c:54: 	WriteAndVerifySramFast( (const u8*)gpRNState2, dest, 0xC/*size*/);
	ldr	r3, .L17	@ tmp116,
@ RecoverableRN/src/RecoverableRN.c:56: }
	@ sp needed	@
@ RecoverableRN/src/RecoverableRN.c:53: void RN2_SaveSu(void* dest, unsigned size){
	movs	r1, r0	@ dest, tmp118
@ RecoverableRN/src/RecoverableRN.c:54: 	WriteAndVerifySramFast( (const u8*)gpRNState2, dest, 0xC/*size*/);
	movs	r2, #12	@,
	ldr	r0, [r3]	@, gpRNState2
	ldr	r3, .L17+4	@ tmp117,
	bl	.L6		@
@ RecoverableRN/src/RecoverableRN.c:56: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L18:
	.align	2
.L17:
	.word	gpRNState2
	.word	WriteAndVerifySramFast
	.size	RN2_SaveSu, .-RN2_SaveSu
	.align	1
	.global	RN2_LoadSu
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	RN2_LoadSu, %function
RN2_LoadSu:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ RecoverableRN/src/RecoverableRN.c:59: 	(*ReadSramFast)(src, gpRNState2, 0xC/*size*/);
	ldr	r3, .L20	@ tmp117,
@ RecoverableRN/src/RecoverableRN.c:61: }
	@ sp needed	@
@ RecoverableRN/src/RecoverableRN.c:59: 	(*ReadSramFast)(src, gpRNState2, 0xC/*size*/);
	ldr	r2, .L20+4	@ tmp118,
	ldr	r1, [r3]	@, gpRNState2
	ldr	r4, [r2]	@ ReadSramFast, ReadSramFast
	movs	r2, #12	@,
	bl	.L22		@
@ RecoverableRN/src/RecoverableRN.c:61: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L21:
	.align	2
.L20:
	.word	gpRNState2
	.word	ReadSramFast
	.size	RN2_LoadSu, .-RN2_LoadSu
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L6:
	bx	r3
.L22:
	bx	r4
