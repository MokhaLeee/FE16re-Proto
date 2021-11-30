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
	.file	"SetListCore.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	isUnitMagSet
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	isUnitMagSet, %function
isUnitMagSet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ MagicSystem/SetMagList/core/SetListCore.c:16: 	return ext->mlist.stat && MAG_IS_SET;
	ldrb	r0, [r0, #16]	@ tmp119,
@ MagicSystem/SetMagList/core/SetListCore.c:17: }
	@ sp needed	@
@ MagicSystem/SetMagList/core/SetListCore.c:16: 	return ext->mlist.stat && MAG_IS_SET;
	subs	r3, r0, #1	@ tmp121, tmp119
	sbcs	r0, r0, r3	@ tmp120, tmp119, tmp121
@ MagicSystem/SetMagList/core/SetListCore.c:17: }
	bx	lr
	.size	isUnitMagSet, .-isUnitMagSet
	.align	1
	.global	ResetUnitsMagic
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	ResetUnitsMagic, %function
ResetUnitsMagic:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ MagicSystem/SetMagList/core/SetListCore.c:35: 	UnitExt* cur = gpUnitExtData;
	ldr	r3, .L7	@ tmp124,
	ldr	r2, [r3]	@ cur, gpUnitExtData
	movs	r1, #135	@ tmp135,
	movs	r3, r2	@ ivtmp.29, cur
@ MagicSystem/SetMagList/core/SetListCore.c:34: void ResetUnitsMagic(void){
	push	{r4, r5, lr}	@
@ MagicSystem/SetMagList/core/SetListCore.c:22: 	ext->mlist.stat |= MAG_IS_SET;
	movs	r0, #1	@ tmp128,
@ MagicSystem/SetMagList/core/SetListCore.c:10: 	*at = (*at&0xF) | ((use&0xF)<<4);
	movs	r4, #85	@ tmp130,
	lsls	r1, r1, #4	@ tmp135, tmp135,
	adds	r3, r3, #16	@ ivtmp.29,
	adds	r2, r2, r1	@ _33, cur, tmp135
.L4:
@ MagicSystem/SetMagList/core/SetListCore.c:23: 	for(int i=0; i<0xF; i++)
	movs	r5, r3	@ tmp132, ivtmp.29
@ MagicSystem/SetMagList/core/SetListCore.c:22: 	ext->mlist.stat |= MAG_IS_SET;
	ldrb	r1, [r3]	@ MEM[(unsigned char *)_30], MEM[(unsigned char *)_30]
	orrs	r1, r0	@ tmp127, tmp128
	strb	r1, [r3]	@ tmp127, MEM[(unsigned char *)_30]
@ MagicSystem/SetMagList/core/SetListCore.c:23: 	for(int i=0; i<0xF; i++)
	adds	r5, r5, #16	@ tmp132,
	adds	r1, r3, #1	@ ivtmp.18, ivtmp.29,
.L3:
@ MagicSystem/SetMagList/core/SetListCore.c:10: 	*at = (*at&0xF) | ((use&0xF)<<4);
	strb	r4, [r1]	@ tmp130, MEM[(u8 *)_21]
@ MagicSystem/SetMagList/core/SetListCore.c:23: 	for(int i=0; i<0xF; i++)
	adds	r1, r1, #1	@ ivtmp.18,
	cmp	r1, r5	@ ivtmp.18, tmp132
	bne	.L3		@,
@ MagicSystem/SetMagList/core/SetListCore.c:37: 	for(int i=0; i<UNIT_EXT_CNT; i++)
	adds	r3, r3, #32	@ ivtmp.29,
	cmp	r3, r2	@ ivtmp.29, _33
	bne	.L4		@,
@ MagicSystem/SetMagList/core/SetListCore.c:39: }
	@ sp needed	@
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L8:
	.align	2
.L7:
	.word	gpUnitExtData
	.size	ResetUnitsMagic, .-ResetUnitsMagic
	.align	1
	.global	isBMagListEmpty
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	isBMagListEmpty, %function
isBMagListEmpty:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, r0	@ ivtmp.40, ext
	movs	r1, r0	@ _27, ext
	push	{r4, r5, lr}	@
@ MagicSystem/SetMagList/core/SetListCore.c:16: 	return ext->mlist.stat && MAG_IS_SET;
	ldrb	r4, [r0, #16]	@ _11,
	adds	r3, r3, #17	@ ivtmp.40,
	adds	r1, r1, #32	@ _27,
@ MagicSystem/SetMagList/core/SetListCore.c:46: 	if( isUnitMagSet(ext) )
	cmp	r4, #0	@ _11,
	beq	.L10		@,
@ MagicSystem/SetMagList/core/SetListCore.c:22: 	ext->mlist.stat |= MAG_IS_SET;
	movs	r2, #1	@ tmp134,
	orrs	r2, r4	@ tmp133, _11
	strb	r2, [r0, #16]	@ tmp133, ext_10(D)->mlist.stat
	movs	r2, r3	@ ivtmp.47, ivtmp.40
@ MagicSystem/SetMagList/core/SetListCore.c:10: 	*at = (*at&0xF) | ((use&0xF)<<4);
	movs	r0, #85	@ tmp136,
.L11:
	strb	r0, [r2]	@ tmp136, MEM[(u8 *)_19]
@ MagicSystem/SetMagList/core/SetListCore.c:23: 	for(int i=0; i<0xF; i++)
	adds	r2, r2, #1	@ ivtmp.47,
	cmp	r1, r2	@ _27, ivtmp.47
	bne	.L11		@,
.L10:
@ MagicSystem/SetMagList/core/SetListCore.c:44: 	int cnt = 0;
	movs	r0, #0	@ cnt,
@ MagicSystem/SetMagList/core/SetListCore.c:49: 		cnt += (0 == GET_B_MAG(ext->mlist.m[i]) );
	movs	r4, #15	@ tmp141,
.L12:
@ MagicSystem/SetMagList/core/SetListCore.c:49: 		cnt += (0 == GET_B_MAG(ext->mlist.m[i]) );
	ldrb	r2, [r3]	@ MEM[(unsigned char *)_29], MEM[(unsigned char *)_29]
	ands	r2, r4	@ tmp143, tmp141
	rsbs	r5, r2, #0	@ tmp146, tmp143
	adcs	r2, r2, r5	@ tmp145, tmp143, tmp146
@ MagicSystem/SetMagList/core/SetListCore.c:48: 	for(int i=0; i<0xF; i++)
	adds	r3, r3, #1	@ ivtmp.40,
@ MagicSystem/SetMagList/core/SetListCore.c:49: 		cnt += (0 == GET_B_MAG(ext->mlist.m[i]) );
	adds	r0, r0, r2	@ cnt, cnt, tmp145
@ MagicSystem/SetMagList/core/SetListCore.c:48: 	for(int i=0; i<0xF; i++)
	cmp	r1, r3	@ _27, ivtmp.40
	bne	.L12		@,
@ MagicSystem/SetMagList/core/SetListCore.c:51: 	return ( 0==cnt );
	rsbs	r3, r0, #0	@ tmp150, cnt
	adcs	r0, r0, r3	@ tmp149, cnt, tmp150
@ MagicSystem/SetMagList/core/SetListCore.c:52: }
	@ sp needed	@
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	.size	isBMagListEmpty, .-isBMagListEmpty
	.ident	"GCC: (devkitARM release 56) 11.1.0"
