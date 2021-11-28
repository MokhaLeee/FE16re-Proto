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
	.file	"SaveData.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	MsaSave_MagCha
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MsaSave_MagCha, %function
MsaSave_MagCha:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
@ StrMagChaSplit/SaveData/SaveData.c:5: void MsaSave_MagCha(void* dest, unsigned size){
	movs	r5, r0	@ dest, tmp127
@ StrMagChaSplit/SaveData/SaveData.c:9: 	for( u8 i=1; i<0x3F; i++  )
	movs	r4, #1	@ i,
.L3:
@ StrMagChaSplit/SaveData/SaveData.c:11: 		Unit* unit = GetUnit(i);
	movs	r0, r4	@, i
	ldr	r3, .L8	@ tmp120,
	bl	.L10		@
	subs	r6, r0, #0	@ unit, tmp128,
@ StrMagChaSplit/SaveData/SaveData.c:12: 		if( NULL == unit )
	beq	.L2		@,
@ StrMagChaSplit/SaveData/SaveData.c:15: 		WriteAndVerifySramFast( GetMagAt(unit), DestCur++, 1);
	ldr	r3, .L8+4	@ tmp121,
	bl	.L10		@
@ StrMagChaSplit/SaveData/SaveData.c:15: 		WriteAndVerifySramFast( GetMagAt(unit), DestCur++, 1);
	movs	r1, r5	@, dest
	movs	r2, #1	@,
	ldr	r7, .L8+8	@ tmp122,
	bl	.L11		@
@ StrMagChaSplit/SaveData/SaveData.c:16: 		WriteAndVerifySramFast( GetChaAt(unit), DestCur++, 1);
	movs	r0, r6	@, unit
	ldr	r3, .L8+12	@ tmp123,
	bl	.L10		@
@ StrMagChaSplit/SaveData/SaveData.c:16: 		WriteAndVerifySramFast( GetChaAt(unit), DestCur++, 1);
	movs	r2, #1	@,
	adds	r1, r5, r2	@ DestCur, dest,
	adds	r5, r5, #2	@ dest,
	bl	.L11		@
.L2:
@ StrMagChaSplit/SaveData/SaveData.c:9: 	for( u8 i=1; i<0x3F; i++  )
	adds	r4, r4, #1	@ tmp125,
	lsls	r4, r4, #24	@ i, tmp125,
	lsrs	r4, r4, #24	@ i, i,
@ StrMagChaSplit/SaveData/SaveData.c:9: 	for( u8 i=1; i<0x3F; i++  )
	cmp	r4, #63	@ i,
	bne	.L3		@,
@ StrMagChaSplit/SaveData/SaveData.c:19: }
	@ sp needed	@
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L9:
	.align	2
.L8:
	.word	GetUnit
	.word	GetMagAt
	.word	WriteAndVerifySramFast
	.word	GetChaAt
	.size	MsaSave_MagCha, .-MsaSave_MagCha
	.align	1
	.global	MsaLoad_MagCha
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MsaLoad_MagCha, %function
MsaLoad_MagCha:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
@ StrMagChaSplit/SaveData/SaveData.c:22: void MsaLoad_MagCha(void* src, unsigned size){
	movs	r5, r0	@ src, tmp129
@ StrMagChaSplit/SaveData/SaveData.c:25: 	for( u8 i=1; i<0x3F; i++  )
	movs	r4, #1	@ i,
.L14:
@ StrMagChaSplit/SaveData/SaveData.c:27: 		Unit* unit = GetUnit(i);
	movs	r0, r4	@, i
	ldr	r3, .L19	@ tmp122,
	bl	.L10		@
	subs	r6, r0, #0	@ unit, tmp130,
@ StrMagChaSplit/SaveData/SaveData.c:28: 		if( NULL == unit )
	beq	.L13		@,
@ StrMagChaSplit/SaveData/SaveData.c:31: 		(*ReadSramFast)(SrcCur++, GetMagAt(unit), 1);
	ldr	r7, .L19+4	@ tmp123,
	ldr	r3, [r7]	@ ReadSramFast.3_1, ReadSramFast
	str	r3, [sp, #4]	@ ReadSramFast.3_1, %sfp
@ StrMagChaSplit/SaveData/SaveData.c:31: 		(*ReadSramFast)(SrcCur++, GetMagAt(unit), 1);
	ldr	r3, .L19+8	@ tmp124,
	bl	.L10		@
@ StrMagChaSplit/SaveData/SaveData.c:31: 		(*ReadSramFast)(SrcCur++, GetMagAt(unit), 1);
	movs	r2, #1	@,
@ StrMagChaSplit/SaveData/SaveData.c:31: 		(*ReadSramFast)(SrcCur++, GetMagAt(unit), 1);
	movs	r1, r0	@ _2, tmp131
@ StrMagChaSplit/SaveData/SaveData.c:31: 		(*ReadSramFast)(SrcCur++, GetMagAt(unit), 1);
	ldr	r3, [sp, #4]	@ ReadSramFast.3_1, %sfp
	movs	r0, r5	@, src
	bl	.L10		@
@ StrMagChaSplit/SaveData/SaveData.c:32: 		(*ReadSramFast)(SrcCur++, GetChaAt(unit), 1);
	ldr	r3, [r7]	@ ReadSramFast.5_3, ReadSramFast
@ StrMagChaSplit/SaveData/SaveData.c:32: 		(*ReadSramFast)(SrcCur++, GetChaAt(unit), 1);
	movs	r0, r6	@, unit
@ StrMagChaSplit/SaveData/SaveData.c:32: 		(*ReadSramFast)(SrcCur++, GetChaAt(unit), 1);
	movs	r7, r3	@ ReadSramFast.5_3, ReadSramFast.5_3
@ StrMagChaSplit/SaveData/SaveData.c:32: 		(*ReadSramFast)(SrcCur++, GetChaAt(unit), 1);
	ldr	r3, .L19+12	@ tmp126,
	bl	.L10		@
@ StrMagChaSplit/SaveData/SaveData.c:32: 		(*ReadSramFast)(SrcCur++, GetChaAt(unit), 1);
	movs	r2, #1	@,
@ StrMagChaSplit/SaveData/SaveData.c:32: 		(*ReadSramFast)(SrcCur++, GetChaAt(unit), 1);
	movs	r1, r0	@ _4, tmp132
@ StrMagChaSplit/SaveData/SaveData.c:32: 		(*ReadSramFast)(SrcCur++, GetChaAt(unit), 1);
	adds	r0, r5, r2	@ SrcCur, src,
	adds	r5, r5, #2	@ src,
	bl	.L11		@
.L13:
@ StrMagChaSplit/SaveData/SaveData.c:25: 	for( u8 i=1; i<0x3F; i++  )
	adds	r4, r4, #1	@ tmp127,
	lsls	r4, r4, #24	@ i, tmp127,
	lsrs	r4, r4, #24	@ i, i,
@ StrMagChaSplit/SaveData/SaveData.c:25: 	for( u8 i=1; i<0x3F; i++  )
	cmp	r4, #63	@ i,
	bne	.L14		@,
@ StrMagChaSplit/SaveData/SaveData.c:35: }
	@ sp needed	@
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L20:
	.align	2
.L19:
	.word	GetUnit
	.word	ReadSramFast
	.word	GetMagAt
	.word	GetChaAt
	.size	MsaLoad_MagCha, .-MsaLoad_MagCha
	.align	1
	.global	MsuSave_MagCha
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MsuSave_MagCha, %function
MsuSave_MagCha:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
@ StrMagChaSplit/SaveData/SaveData.c:40: void MsuSave_MagCha(void* dest, unsigned size){
	movs	r5, r0	@ dest, tmp127
@ StrMagChaSplit/SaveData/SaveData.c:44: 	for( u8 i=1; i<0xC8; i++  )
	movs	r4, #1	@ i,
.L23:
@ StrMagChaSplit/SaveData/SaveData.c:46: 		Unit* unit = GetUnit(i);
	movs	r0, r4	@, i
	ldr	r3, .L28	@ tmp120,
	bl	.L10		@
	subs	r6, r0, #0	@ unit, tmp128,
@ StrMagChaSplit/SaveData/SaveData.c:47: 		if( NULL == unit )
	beq	.L22		@,
@ StrMagChaSplit/SaveData/SaveData.c:50: 		WriteAndVerifySramFast( GetMagAt(unit), DestCur++, 1);
	ldr	r3, .L28+4	@ tmp121,
	bl	.L10		@
@ StrMagChaSplit/SaveData/SaveData.c:50: 		WriteAndVerifySramFast( GetMagAt(unit), DestCur++, 1);
	movs	r1, r5	@, dest
	movs	r2, #1	@,
	ldr	r7, .L28+8	@ tmp122,
	bl	.L11		@
@ StrMagChaSplit/SaveData/SaveData.c:51: 		WriteAndVerifySramFast( GetChaAt(unit), DestCur++, 1);
	movs	r0, r6	@, unit
	ldr	r3, .L28+12	@ tmp123,
	bl	.L10		@
@ StrMagChaSplit/SaveData/SaveData.c:51: 		WriteAndVerifySramFast( GetChaAt(unit), DestCur++, 1);
	movs	r2, #1	@,
	adds	r1, r5, r2	@ DestCur, dest,
	adds	r5, r5, #2	@ dest,
	bl	.L11		@
.L22:
@ StrMagChaSplit/SaveData/SaveData.c:44: 	for( u8 i=1; i<0xC8; i++  )
	adds	r4, r4, #1	@ tmp125,
	lsls	r4, r4, #24	@ i, tmp125,
	lsrs	r4, r4, #24	@ i, i,
@ StrMagChaSplit/SaveData/SaveData.c:44: 	for( u8 i=1; i<0xC8; i++  )
	cmp	r4, #200	@ i,
	bne	.L23		@,
@ StrMagChaSplit/SaveData/SaveData.c:54: }
	@ sp needed	@
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L29:
	.align	2
.L28:
	.word	GetUnit
	.word	GetMagAt
	.word	WriteAndVerifySramFast
	.word	GetChaAt
	.size	MsuSave_MagCha, .-MsuSave_MagCha
	.align	1
	.global	MsuLoad_MagCha
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MsuLoad_MagCha, %function
MsuLoad_MagCha:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
@ StrMagChaSplit/SaveData/SaveData.c:57: void MsuLoad_MagCha(void* src, unsigned size){
	movs	r5, r0	@ src, tmp129
@ StrMagChaSplit/SaveData/SaveData.c:60: 	for( u8 i=1; i<0xC8; i++  )
	movs	r4, #1	@ i,
.L32:
@ StrMagChaSplit/SaveData/SaveData.c:62: 		Unit* unit = GetUnit(i);
	movs	r0, r4	@, i
	ldr	r3, .L37	@ tmp122,
	bl	.L10		@
	subs	r6, r0, #0	@ unit, tmp130,
@ StrMagChaSplit/SaveData/SaveData.c:63: 		if( NULL == unit )
	beq	.L31		@,
@ StrMagChaSplit/SaveData/SaveData.c:66: 		(*ReadSramFast)(SrcCur++, GetMagAt(unit), 1);
	ldr	r7, .L37+4	@ tmp123,
	ldr	r3, [r7]	@ ReadSramFast.11_1, ReadSramFast
	str	r3, [sp, #4]	@ ReadSramFast.11_1, %sfp
@ StrMagChaSplit/SaveData/SaveData.c:66: 		(*ReadSramFast)(SrcCur++, GetMagAt(unit), 1);
	ldr	r3, .L37+8	@ tmp124,
	bl	.L10		@
@ StrMagChaSplit/SaveData/SaveData.c:66: 		(*ReadSramFast)(SrcCur++, GetMagAt(unit), 1);
	movs	r2, #1	@,
@ StrMagChaSplit/SaveData/SaveData.c:66: 		(*ReadSramFast)(SrcCur++, GetMagAt(unit), 1);
	movs	r1, r0	@ _2, tmp131
@ StrMagChaSplit/SaveData/SaveData.c:66: 		(*ReadSramFast)(SrcCur++, GetMagAt(unit), 1);
	ldr	r3, [sp, #4]	@ ReadSramFast.11_1, %sfp
	movs	r0, r5	@, src
	bl	.L10		@
@ StrMagChaSplit/SaveData/SaveData.c:67: 		(*ReadSramFast)(SrcCur++, GetChaAt(unit), 1);
	ldr	r3, [r7]	@ ReadSramFast.13_3, ReadSramFast
@ StrMagChaSplit/SaveData/SaveData.c:67: 		(*ReadSramFast)(SrcCur++, GetChaAt(unit), 1);
	movs	r0, r6	@, unit
@ StrMagChaSplit/SaveData/SaveData.c:67: 		(*ReadSramFast)(SrcCur++, GetChaAt(unit), 1);
	movs	r7, r3	@ ReadSramFast.13_3, ReadSramFast.13_3
@ StrMagChaSplit/SaveData/SaveData.c:67: 		(*ReadSramFast)(SrcCur++, GetChaAt(unit), 1);
	ldr	r3, .L37+12	@ tmp126,
	bl	.L10		@
@ StrMagChaSplit/SaveData/SaveData.c:67: 		(*ReadSramFast)(SrcCur++, GetChaAt(unit), 1);
	movs	r2, #1	@,
@ StrMagChaSplit/SaveData/SaveData.c:67: 		(*ReadSramFast)(SrcCur++, GetChaAt(unit), 1);
	movs	r1, r0	@ _4, tmp132
@ StrMagChaSplit/SaveData/SaveData.c:67: 		(*ReadSramFast)(SrcCur++, GetChaAt(unit), 1);
	adds	r0, r5, r2	@ SrcCur, src,
	adds	r5, r5, #2	@ src,
	bl	.L11		@
.L31:
@ StrMagChaSplit/SaveData/SaveData.c:60: 	for( u8 i=1; i<0xC8; i++  )
	adds	r4, r4, #1	@ tmp127,
	lsls	r4, r4, #24	@ i, tmp127,
	lsrs	r4, r4, #24	@ i, i,
@ StrMagChaSplit/SaveData/SaveData.c:60: 	for( u8 i=1; i<0xC8; i++  )
	cmp	r4, #200	@ i,
	bne	.L32		@,
@ StrMagChaSplit/SaveData/SaveData.c:70: }
	@ sp needed	@
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L38:
	.align	2
.L37:
	.word	GetUnit
	.word	ReadSramFast
	.word	GetMagAt
	.word	GetChaAt
	.size	MsuLoad_MagCha, .-MsuLoad_MagCha
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L10:
	bx	r3
.L11:
	bx	r7
