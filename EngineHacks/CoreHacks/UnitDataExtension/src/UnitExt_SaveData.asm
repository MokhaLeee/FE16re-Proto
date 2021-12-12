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
	.file	"UnitExt_SaveData.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	UnitExt_SaveSu
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	UnitExt_SaveSu, %function
UnitExt_SaveSu:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ UnitDataExtension/src/UnitExt_SaveData.c:7: 	WriteAndVerifySramFast( (const u8*)gpUnitExtData, dest, size);
	ldr	r3, .L2	@ tmp116,
@ UnitDataExtension/src/UnitExt_SaveData.c:9: }
	@ sp needed	@
@ UnitDataExtension/src/UnitExt_SaveData.c:6: void UnitExt_SaveSu(void* dest, unsigned size){
	movs	r2, r1	@ size, tmp119
@ UnitDataExtension/src/UnitExt_SaveData.c:7: 	WriteAndVerifySramFast( (const u8*)gpUnitExtData, dest, size);
	movs	r1, r0	@, dest
	ldr	r0, [r3]	@, gpUnitExtData
	ldr	r3, .L2+4	@ tmp117,
	bl	.L4		@
@ UnitDataExtension/src/UnitExt_SaveData.c:9: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L3:
	.align	2
.L2:
	.word	gpUnitExtData
	.word	WriteAndVerifySramFast
	.size	UnitExt_SaveSu, .-UnitExt_SaveSu
	.align	1
	.global	UnitExt_LoadSu
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	UnitExt_LoadSu, %function
UnitExt_LoadSu:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ UnitDataExtension/src/UnitExt_SaveData.c:11: void UnitExt_LoadSu(const void* src, unsigned size){
	movs	r2, r1	@ size, tmp121
@ UnitDataExtension/src/UnitExt_SaveData.c:14: }
	@ sp needed	@
@ UnitDataExtension/src/UnitExt_SaveData.c:12: 	(*ReadSramFast)(src, gpUnitExtData, size);
	ldr	r3, .L6	@ tmp117,
	ldr	r1, .L6+4	@ tmp118,
	ldr	r4, [r1]	@ ReadSramFast, ReadSramFast
	ldr	r1, [r3]	@, gpUnitExtData
	bl	.L8		@
@ UnitDataExtension/src/UnitExt_SaveData.c:14: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L7:
	.align	2
.L6:
	.word	gpUnitExtData
	.word	ReadSramFast
	.size	UnitExt_LoadSu, .-UnitExt_LoadSu
	.align	1
	.global	UnitExt_SaveSa
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	UnitExt_SaveSa, %function
UnitExt_SaveSa:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ UnitDataExtension/src/UnitExt_SaveData.c:21: 	UnitExt* cur = gpUnitExtData;
	ldr	r3, .L12	@ tmp118,
@ UnitDataExtension/src/UnitExt_SaveData.c:19: void UnitExt_SaveSa(void* dest, unsigned size){
	push	{r4, r5, r6, lr}	@
@ UnitDataExtension/src/UnitExt_SaveData.c:21: 	UnitExt* cur = gpUnitExtData;
	ldr	r4, [r3]	@ cur, gpUnitExtData
	movs	r3, #134	@ tmp122,
@ UnitDataExtension/src/UnitExt_SaveData.c:19: void UnitExt_SaveSa(void* dest, unsigned size){
	movs	r5, r0	@ dest, tmp120
	lsls	r3, r3, #4	@ tmp122, tmp122,
	adds	r6, r4, r3	@ _1, cur, tmp122
.L10:
	movs	r0, r4	@ cur, cur
@ UnitDataExtension/src/UnitExt_SaveData.c:24: 		WriteAndVerifySramFast( cur++, dest, UNIT_EXT_SIZE_SA);
	movs	r2, #16	@,
	adds	r4, r4, #32	@ cur,
	movs	r1, r5	@, dest
	ldr	r3, .L12+4	@ tmp119,
	bl	.L4		@
@ UnitDataExtension/src/UnitExt_SaveData.c:23: 	for(int i=0; i<UNIT_EXT_CNT; i++)
	cmp	r6, r4	@ _1, cur
	bne	.L10		@,
@ UnitDataExtension/src/UnitExt_SaveData.c:27: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L13:
	.align	2
.L12:
	.word	gpUnitExtData
	.word	WriteAndVerifySramFast
	.size	UnitExt_SaveSa, .-UnitExt_SaveSa
	.align	1
	.global	UnitExt_LoadSa
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	UnitExt_LoadSa, %function
UnitExt_LoadSa:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ UnitDataExtension/src/UnitExt_SaveData.c:32: 	UnitExt* cur = gpUnitExtData;
	movs	r4, #67	@ ivtmp_3,
	ldr	r5, .L17	@ tmp119,
	ldr	r6, [r5]	@ cur, gpUnitExtData
.L15:
@ UnitDataExtension/src/UnitExt_SaveData.c:34: 		(*ReadSramFast)(cur, gpUnitExtData, UNIT_EXT_SIZE_SA);
	ldr	r3, .L17+4	@ tmp121,
	movs	r2, #16	@,
	movs	r0, r6	@, cur
	ldr	r3, [r3]	@ ReadSramFast, ReadSramFast
	ldr	r1, [r5]	@, gpUnitExtData
@ UnitDataExtension/src/UnitExt_SaveData.c:33: 	for(int i=0; i<UNIT_EXT_CNT; i++)
	subs	r4, r4, #1	@ ivtmp_3,
@ UnitDataExtension/src/UnitExt_SaveData.c:34: 		(*ReadSramFast)(cur, gpUnitExtData, UNIT_EXT_SIZE_SA);
	bl	.L4		@
@ UnitDataExtension/src/UnitExt_SaveData.c:33: 	for(int i=0; i<UNIT_EXT_CNT; i++)
	cmp	r4, #0	@ ivtmp_3,
	bne	.L15		@,
@ UnitDataExtension/src/UnitExt_SaveData.c:36: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L18:
	.align	2
.L17:
	.word	gpUnitExtData
	.word	ReadSramFast
	.size	UnitExt_LoadSa, .-UnitExt_LoadSa
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L4:
	bx	r3
.L8:
	bx	r4
