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
	.file	"UnitExtCore.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	UnitHasExt
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	UnitHasExt, %function
UnitHasExt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ UnitDataExtension/src/UnitExtCore.c:6: 	return ( UNIT_CHARID(unit) < UNIT_EXT_CNT );
	ldr	r3, [r0]	@ unit_5(D)->pCharacterData, unit_5(D)->pCharacterData
@ UnitDataExtension/src/UnitExtCore.c:7: }
	@ sp needed	@
@ UnitDataExtension/src/UnitExtCore.c:6: 	return ( UNIT_CHARID(unit) < UNIT_EXT_CNT );
	movs	r2, #66	@ tmp125,
	movs	r0, #0	@ tmp126,
	ldrb	r3, [r3, #4]	@ tmp123,
	cmp	r2, r3	@ tmp125, tmp123
	adcs	r0, r0, r0	@ tmp124, tmp126, tmp126
@ UnitDataExtension/src/UnitExtCore.c:7: }
	bx	lr
	.size	UnitHasExt, .-UnitHasExt
	.align	1
	.global	GetUnitExtByCharID
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetUnitExtByCharID, %function
GetUnitExtByCharID:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ UnitDataExtension/src/UnitExtCore.c:9: UnitExt* GetUnitExtByCharID(u8 number){
	movs	r3, r0	@ number, tmp124
@ UnitDataExtension/src/UnitExtCore.c:11: 		return NULL;
	movs	r0, #0	@ <retval>,
@ UnitDataExtension/src/UnitExtCore.c:10: 	if( number > UNIT_EXT_CNT )
	cmp	r3, #67	@ number,
	bhi	.L2		@,
@ UnitDataExtension/src/UnitExtCore.c:13: 		return &gpUnitExtData[number];
	ldr	r2, .L5	@ tmp120,
	ldr	r0, [r2]	@ gpUnitExtData, gpUnitExtData
@ UnitDataExtension/src/UnitExtCore.c:13: 		return &gpUnitExtData[number];
	lsls	r3, r3, #5	@ tmp121, number,
@ UnitDataExtension/src/UnitExtCore.c:13: 		return &gpUnitExtData[number];
	adds	r0, r0, r3	@ <retval>, gpUnitExtData, tmp121
.L2:
@ UnitDataExtension/src/UnitExtCore.c:14: }
	@ sp needed	@
	bx	lr
.L6:
	.align	2
.L5:
	.word	gpUnitExtData
	.size	GetUnitExtByCharID, .-GetUnitExtByCharID
	.align	1
	.global	GetUnitExt
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetUnitExt, %function
GetUnitExt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ UnitDataExtension/src/UnitExtCore.c:17: 	return GetUnitExtByCharID( GetUnit(index)->pCharacterData->number );
	ldr	r3, .L8	@ tmp118,
@ UnitDataExtension/src/UnitExtCore.c:18: }
	@ sp needed	@
@ UnitDataExtension/src/UnitExtCore.c:17: 	return GetUnitExtByCharID( GetUnit(index)->pCharacterData->number );
	bl	.L10		@
@ UnitDataExtension/src/UnitExtCore.c:17: 	return GetUnitExtByCharID( GetUnit(index)->pCharacterData->number );
	ldr	r3, [r0]	@ _1->pCharacterData, _1->pCharacterData
@ UnitDataExtension/src/UnitExtCore.c:17: 	return GetUnitExtByCharID( GetUnit(index)->pCharacterData->number );
	ldrb	r0, [r3, #4]	@ tmp120,
	bl	GetUnitExtByCharID		@
@ UnitDataExtension/src/UnitExtCore.c:18: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L9:
	.align	2
.L8:
	.word	GetUnit
	.size	GetUnitExt, .-GetUnitExt
	.align	1
	.global	GetUnitExtByUnit
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetUnitExtByUnit, %function
GetUnitExtByUnit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ UnitDataExtension/src/UnitExtCore.c:21: 	return GetUnitExtByCharID( unit->pCharacterData->number );
	ldr	r3, [r0]	@ unit_4(D)->pCharacterData, unit_4(D)->pCharacterData
@ UnitDataExtension/src/UnitExtCore.c:22: }
	@ sp needed	@
@ UnitDataExtension/src/UnitExtCore.c:21: 	return GetUnitExtByCharID( unit->pCharacterData->number );
	ldrb	r0, [r3, #4]	@ tmp118,
	bl	GetUnitExtByCharID		@
@ UnitDataExtension/src/UnitExtCore.c:22: }
	pop	{r4}
	pop	{r1}
	bx	r1
	.size	GetUnitExtByUnit, .-GetUnitExtByUnit
	.align	1
	.global	GetCharIdByExt
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetCharIdByExt, %function
GetCharIdByExt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ UnitDataExtension/src/UnitExtCore.c:27: 		if( ext == &gpUnitExtData[i] )
	ldr	r3, .L17	@ tmp122,
	ldr	r1, [r3]	@ gpUnitExtData.1_1, gpUnitExtData
@ UnitDataExtension/src/UnitExtCore.c:26: 	for(int i=0; i<UNIT_EXT_CNT; i++)
	movs	r3, #0	@ i,
.L15:
@ UnitDataExtension/src/UnitExtCore.c:27: 		if( ext == &gpUnitExtData[i] )
	lsls	r2, r3, #5	@ tmp123, i,
	adds	r2, r1, r2	@ tmp124, gpUnitExtData.1_1, tmp123
	cmp	r0, r2	@ ext, tmp124
	bne	.L13		@,
@ UnitDataExtension/src/UnitExtCore.c:28: 			return i;
	lsls	r0, r3, #24	@ <retval>, i,
	lsrs	r0, r0, #24	@ <retval>, <retval>,
.L14:
@ UnitDataExtension/src/UnitExtCore.c:30: }
	@ sp needed	@
	bx	lr
.L13:
@ UnitDataExtension/src/UnitExtCore.c:26: 	for(int i=0; i<UNIT_EXT_CNT; i++)
	adds	r3, r3, #1	@ i,
@ UnitDataExtension/src/UnitExtCore.c:26: 	for(int i=0; i<UNIT_EXT_CNT; i++)
	cmp	r3, #67	@ i,
	bne	.L15		@,
@ UnitDataExtension/src/UnitExtCore.c:29: 	return 0;
	movs	r0, #0	@ <retval>,
	b	.L14		@
.L18:
	.align	2
.L17:
	.word	gpUnitExtData
	.size	GetCharIdByExt, .-GetCharIdByExt
	.align	1
	.global	GetUnitByExt
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetUnitByExt, %function
GetUnitByExt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ UnitDataExtension/src/UnitExtCore.c:33: 	u8 charId = GetCharIdByExt(ext);
	bl	GetCharIdByExt		@
@ UnitDataExtension/src/UnitExtCore.c:37: 		return NULL;
	movs	r3, #0	@ <retval>,
@ UnitDataExtension/src/UnitExtCore.c:34: 	if( 0 != charId )
	cmp	r0, r3	@ tmp116,
	beq	.L19		@,
@ UnitDataExtension/src/UnitExtCore.c:35: 		return GetUnitByCharId(charId);
	ldr	r3, .L23	@ tmp118,
	bl	.L10		@
	movs	r3, r0	@ <retval>, tmp122
.L19:
@ UnitDataExtension/src/UnitExtCore.c:38: }
	@ sp needed	@
	movs	r0, r3	@, <retval>
	pop	{r4}
	pop	{r1}
	bx	r1
.L24:
	.align	2
.L23:
	.word	GetUnitByCharId
	.size	GetUnitByExt, .-GetUnitByExt
	.align	1
	.global	ClearAllUnitExtSpace
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	ClearAllUnitExtSpace, %function
ClearAllUnitExtSpace:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ UnitDataExtension/src/UnitExtCore.c:42: 	for(int i=0; i<UNIT_EXT_SIZEMAX_SU; i++)
	movs	r3, #0	@ i,
@ UnitDataExtension/src/UnitExtCore.c:42: 	for(int i=0; i<UNIT_EXT_SIZEMAX_SU; i++)
	movs	r2, #134	@ tmp121,
@ UnitDataExtension/src/UnitExtCore.c:43: 		*( i+ (u8*)gpUnitExtData ) = 0;
	movs	r0, r3	@ tmp119, i
@ UnitDataExtension/src/UnitExtCore.c:41: void ClearAllUnitExtSpace(void){
	push	{r4, lr}	@
@ UnitDataExtension/src/UnitExtCore.c:43: 		*( i+ (u8*)gpUnitExtData ) = 0;
	ldr	r4, .L28	@ tmp118,
@ UnitDataExtension/src/UnitExtCore.c:42: 	for(int i=0; i<UNIT_EXT_SIZEMAX_SU; i++)
	lsls	r2, r2, #4	@ tmp121, tmp121,
.L26:
@ UnitDataExtension/src/UnitExtCore.c:43: 		*( i+ (u8*)gpUnitExtData ) = 0;
	ldr	r1, [r4]	@ gpUnitExtData, gpUnitExtData
	strb	r0, [r1, r3]	@ tmp119, *_3
@ UnitDataExtension/src/UnitExtCore.c:42: 	for(int i=0; i<UNIT_EXT_SIZEMAX_SU; i++)
	adds	r3, r3, #1	@ i,
@ UnitDataExtension/src/UnitExtCore.c:42: 	for(int i=0; i<UNIT_EXT_SIZEMAX_SU; i++)
	cmp	r3, r2	@ i, tmp121
	bne	.L26		@,
@ UnitDataExtension/src/UnitExtCore.c:44: }
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
.L29:
	.align	2
.L28:
	.word	gpUnitExtData
	.size	ClearAllUnitExtSpace, .-ClearAllUnitExtSpace
	.align	1
	.global	UnitExtReset
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	UnitExtReset, %function
UnitExtReset:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ UnitDataExtension/src/UnitExtCore.c:50: 	UnitExt* ext = GetUnitExt(UNIT_CHARID(unit));
	ldr	r3, [r0]	@ unit_9(D)->pCharacterData, unit_9(D)->pCharacterData
@ UnitDataExtension/src/UnitExtCore.c:50: 	UnitExt* ext = GetUnitExt(UNIT_CHARID(unit));
	ldrb	r0, [r3, #4]	@ tmp118,
	bl	GetUnitExt		@
@ UnitDataExtension/src/UnitExtCore.c:52: 	if( NULL == ext )
	cmp	r0, #0	@ ext,
	beq	.L30		@,
@ UnitDataExtension/src/UnitExtCore.c:58: 	ext->WpnEqp = 0;
	movs	r3, #0	@ tmp119,
	strh	r3, [r0, #14]	@ tmp119, ext_11->WpnEqp
@ UnitDataExtension/src/UnitExtCore.c:62: 		ext->skillbattle[i] = 0;
	strh	r3, [r0]	@ tmp119, MEM <unsigned short> [(unsigned char *)ext_11]
	strh	r3, [r0, #2]	@ tmp119, MEM <unsigned short> [(unsigned char *)ext_11 + 2B]
	strh	r3, [r0, #4]	@ tmp119, MEM <unsigned short> [(unsigned char *)ext_11 + 4B]
@ UnitDataExtension/src/UnitExtCore.c:66: 		ext->skills[i] = 0;
	strh	r3, [r0, #6]	@ tmp119, MEM <unsigned short> [(unsigned char *)ext_11 + 6B]
	strh	r3, [r0, #8]	@ tmp119, MEM <unsigned short> [(unsigned char *)ext_11 + 8B]
.L30:
@ UnitDataExtension/src/UnitExtCore.c:69: }
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
	.size	UnitExtReset, .-UnitExtReset
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L10:
	bx	r3
