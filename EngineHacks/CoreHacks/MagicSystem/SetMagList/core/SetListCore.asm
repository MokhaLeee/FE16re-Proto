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
@ MagicSystem/SetMagList/core/SetListCore.c:18: 	return ext->mlist.isSet; 
	movs	r3, #1	@ tmp122,
@ MagicSystem/SetMagList/core/SetListCore.c:19: }
	@ sp needed	@
@ MagicSystem/SetMagList/core/SetListCore.c:18: 	return ext->mlist.isSet; 
	ldrb	r0, [r0, #16]	@ *ext_3(D), *ext_3(D)
	ands	r0, r3	@ tmp116, tmp122
@ MagicSystem/SetMagList/core/SetListCore.c:19: }
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
	push	{r4, r5, r6, lr}	@
@ MagicSystem/SetMagList/core/SetListCore.c:39: 	for(int i=0; i<UNIT_EXT_CNT; i++)
	movs	r5, #0	@ i,
.L6:
	lsls	r4, r5, #24	@ _16, i,
	lsrs	r4, r4, #24	@ _16, _16,
@ MagicSystem/SetMagList/core/SetListCore.c:40: 		if( UNIT_IS_VALID(GetUnitByCharId(i)) )
	movs	r0, r4	@, _16
	ldr	r6, .L11	@ tmp120,
	bl	.L13		@
@ MagicSystem/SetMagList/core/SetListCore.c:40: 		if( UNIT_IS_VALID(GetUnitByCharId(i)) )
	cmp	r0, #0	@ tmp125,
	beq	.L4		@,
@ MagicSystem/SetMagList/core/SetListCore.c:40: 		if( UNIT_IS_VALID(GetUnitByCharId(i)) )
	movs	r0, r4	@, _16
	bl	.L13		@
	ldr	r3, [r0]	@ _3->pCharacterData, _3->pCharacterData
	cmp	r3, #0	@ _3->pCharacterData,
	beq	.L4		@,
@ MagicSystem/SetMagList/core/SetListCore.c:42: 			SetUnitMagList(GetUnitByCharId(i));
	movs	r0, r4	@, _16
	bl	.L13		@
@ MagicSystem/SetMagList/core/SetListCore.c:42: 			SetUnitMagList(GetUnitByCharId(i));
	ldr	r3, .L11+4	@ tmp124,
	bl	.L14		@
.L4:
@ MagicSystem/SetMagList/core/SetListCore.c:39: 	for(int i=0; i<UNIT_EXT_CNT; i++)
	adds	r5, r5, #1	@ i,
@ MagicSystem/SetMagList/core/SetListCore.c:39: 	for(int i=0; i<UNIT_EXT_CNT; i++)
	cmp	r5, #67	@ i,
	bne	.L6		@,
@ MagicSystem/SetMagList/core/SetListCore.c:43: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L12:
	.align	2
.L11:
	.word	GetUnitByCharId
	.word	SetUnitMagList
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
@ MagicSystem/SetMagList/core/SetListCore.c:18: 	return ext->mlist.isSet; 
	ldrb	r3, [r0, #16]	@ *ext_7(D), *ext_7(D)
@ MagicSystem/SetMagList/core/SetListCore.c:47: int isBMagListEmpty(UnitExt* ext){
	push	{r4, lr}	@
@ MagicSystem/SetMagList/core/SetListCore.c:47: int isBMagListEmpty(UnitExt* ext){
	movs	r4, r0	@ ext, tmp141
@ MagicSystem/SetMagList/core/SetListCore.c:48: 	if( FALSE == isUnitMagSet(ext) )
	lsls	r3, r3, #31	@ tmp143, *ext_7(D),
	bmi	.L16		@,
@ MagicSystem/SetMagList/core/SetListCore.c:49: 		SetUnitMagList(GetUnitByExt(ext));
	ldr	r3, .L22	@ tmp131,
	bl	.L14		@
	ldr	r3, .L22+4	@ tmp132,
	bl	.L14		@
.L16:
	movs	r3, r4	@ ivtmp.24, ext
@ MagicSystem/SetMagList/core/SetListCore.c:52: 		if( 0 != GET_B_MAG(ext->mlist.m[i]) )
	movs	r2, #15	@ tmp136,
	adds	r3, r3, #17	@ ivtmp.24,
	adds	r4, r4, #32	@ _21,
.L18:
	ldrb	r1, [r3]	@ MEM[(unsigned char *)_19], MEM[(unsigned char *)_19]
	tst	r1, r2	@ MEM[(unsigned char *)_19], tmp136
	bne	.L19		@,
@ MagicSystem/SetMagList/core/SetListCore.c:51: 	for(int i=0; i<MAGIC_LIST_SIZE; i++)
	adds	r3, r3, #1	@ ivtmp.24,
	cmp	r3, r4	@ ivtmp.24, _21
	bne	.L18		@,
@ MagicSystem/SetMagList/core/SetListCore.c:55: 	return TRUE;
	movs	r0, #1	@ <retval>,
.L15:
@ MagicSystem/SetMagList/core/SetListCore.c:56: }
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L19:
@ MagicSystem/SetMagList/core/SetListCore.c:53: 			return FALSE;
	movs	r0, #0	@ <retval>,
	b	.L15		@
.L23:
	.align	2
.L22:
	.word	GetUnitByExt
	.word	SetUnitMagList
	.size	isBMagListEmpty, .-isBMagListEmpty
	.align	1
	.global	isWMagListEmpty
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	isWMagListEmpty, %function
isWMagListEmpty:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ MagicSystem/SetMagList/core/SetListCore.c:18: 	return ext->mlist.isSet; 
	ldrb	r3, [r0, #16]	@ *ext_9(D), *ext_9(D)
@ MagicSystem/SetMagList/core/SetListCore.c:58: int isWMagListEmpty(UnitExt* ext){
	push	{r4, lr}	@
@ MagicSystem/SetMagList/core/SetListCore.c:58: int isWMagListEmpty(UnitExt* ext){
	movs	r4, r0	@ ext, tmp139
@ MagicSystem/SetMagList/core/SetListCore.c:59: 	if( FALSE == isUnitMagSet(ext) )
	lsls	r3, r3, #31	@ tmp141, *ext_9(D),
	bmi	.L25		@,
@ MagicSystem/SetMagList/core/SetListCore.c:60: 		SetUnitMagList(GetUnitByExt(ext));
	ldr	r3, .L31	@ tmp131,
	bl	.L14		@
	ldr	r3, .L31+4	@ tmp132,
	bl	.L14		@
.L25:
	movs	r3, r4	@ ivtmp.34, ext
	adds	r4, r4, #32	@ _21,
	adds	r3, r3, #17	@ ivtmp.34,
.L27:
@ MagicSystem/SetMagList/core/SetListCore.c:63: 		if( 0 != GET_W_MAG(ext->mlist.m[i]) )
	ldrb	r2, [r3]	@ MEM[(unsigned char *)_19], MEM[(unsigned char *)_19]
@ MagicSystem/SetMagList/core/SetListCore.c:63: 		if( 0 != GET_W_MAG(ext->mlist.m[i]) )
	lsrs	r2, r2, #4	@ tmp136, MEM[(unsigned char *)_19],
	bne	.L28		@,
@ MagicSystem/SetMagList/core/SetListCore.c:62: 	for(int i=0; i<MAGIC_LIST_SIZE; i++)
	adds	r3, r3, #1	@ ivtmp.34,
	cmp	r3, r4	@ ivtmp.34, _21
	bne	.L27		@,
@ MagicSystem/SetMagList/core/SetListCore.c:66: 	return TRUE;
	movs	r0, #1	@ <retval>,
.L24:
@ MagicSystem/SetMagList/core/SetListCore.c:67: }
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L28:
@ MagicSystem/SetMagList/core/SetListCore.c:64: 			return FALSE;
	movs	r0, #0	@ <retval>,
	b	.L24		@
.L32:
	.align	2
.L31:
	.word	GetUnitByExt
	.word	SetUnitMagList
	.size	isWMagListEmpty, .-isWMagListEmpty
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L14:
	bx	r3
.L13:
	bx	r6
