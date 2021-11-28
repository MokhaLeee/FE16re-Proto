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
	.global	GetUnitExtByCharID
	.arch armv4t
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
@ UnitDataExtension/src/UnitExtCore.c:4: UnitExt* GetUnitExtByCharID(u8 number){
	movs	r3, r0	@ number, tmp124
@ UnitDataExtension/src/UnitExtCore.c:6: 		return NULL;
	movs	r0, #0	@ <retval>,
@ UnitDataExtension/src/UnitExtCore.c:5: 	if( number > UNIT_EXT_CNT )
	cmp	r3, #67	@ number,
	bhi	.L1		@,
@ UnitDataExtension/src/UnitExtCore.c:8: 		return &gpUnitExtData[number];
	ldr	r2, .L4	@ tmp120,
	ldr	r0, [r2]	@ gpUnitExtData, gpUnitExtData
@ UnitDataExtension/src/UnitExtCore.c:8: 		return &gpUnitExtData[number];
	lsls	r3, r3, #5	@ tmp121, number,
@ UnitDataExtension/src/UnitExtCore.c:8: 		return &gpUnitExtData[number];
	adds	r0, r0, r3	@ <retval>, gpUnitExtData, tmp121
.L1:
@ UnitDataExtension/src/UnitExtCore.c:9: }
	@ sp needed	@
	bx	lr
.L5:
	.align	2
.L4:
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
@ UnitDataExtension/src/UnitExtCore.c:12: 	return GetUnitExtByCharID( GetUnit(index)->pCharacterData->number );
	ldr	r3, .L7	@ tmp118,
@ UnitDataExtension/src/UnitExtCore.c:13: }
	@ sp needed	@
@ UnitDataExtension/src/UnitExtCore.c:12: 	return GetUnitExtByCharID( GetUnit(index)->pCharacterData->number );
	bl	.L9		@
@ UnitDataExtension/src/UnitExtCore.c:12: 	return GetUnitExtByCharID( GetUnit(index)->pCharacterData->number );
	ldr	r3, [r0]	@ _1->pCharacterData, _1->pCharacterData
@ UnitDataExtension/src/UnitExtCore.c:12: 	return GetUnitExtByCharID( GetUnit(index)->pCharacterData->number );
	ldrb	r0, [r3, #4]	@ tmp120,
	bl	GetUnitExtByCharID		@
@ UnitDataExtension/src/UnitExtCore.c:13: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L8:
	.align	2
.L7:
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
@ UnitDataExtension/src/UnitExtCore.c:16: 	return GetUnitExtByCharID( unit->pCharacterData->number );
	ldr	r3, [r0]	@ unit_4(D)->pCharacterData, unit_4(D)->pCharacterData
@ UnitDataExtension/src/UnitExtCore.c:17: }
	@ sp needed	@
@ UnitDataExtension/src/UnitExtCore.c:16: 	return GetUnitExtByCharID( unit->pCharacterData->number );
	ldrb	r0, [r3, #4]	@ tmp118,
	bl	GetUnitExtByCharID		@
@ UnitDataExtension/src/UnitExtCore.c:17: }
	pop	{r4}
	pop	{r1}
	bx	r1
	.size	GetUnitExtByUnit, .-GetUnitExtByUnit
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
@ UnitDataExtension/src/UnitExtCore.c:25: 	for(int i=0; i<UNIT_EXT_SIZEMAX_SU; i++)
	movs	r3, #0	@ i,
@ UnitDataExtension/src/UnitExtCore.c:25: 	for(int i=0; i<UNIT_EXT_SIZEMAX_SU; i++)
	movs	r2, #134	@ tmp121,
@ UnitDataExtension/src/UnitExtCore.c:26: 		*( i+ (u8*)gpUnitExtData ) = 0;
	movs	r0, r3	@ tmp119, i
@ UnitDataExtension/src/UnitExtCore.c:24: void UnitExtReset(void){
	push	{r4, lr}	@
@ UnitDataExtension/src/UnitExtCore.c:26: 		*( i+ (u8*)gpUnitExtData ) = 0;
	ldr	r4, .L14	@ tmp118,
@ UnitDataExtension/src/UnitExtCore.c:25: 	for(int i=0; i<UNIT_EXT_SIZEMAX_SU; i++)
	lsls	r2, r2, #4	@ tmp121, tmp121,
.L12:
@ UnitDataExtension/src/UnitExtCore.c:26: 		*( i+ (u8*)gpUnitExtData ) = 0;
	ldr	r1, [r4]	@ gpUnitExtData, gpUnitExtData
	strb	r0, [r1, r3]	@ tmp119, *_3
@ UnitDataExtension/src/UnitExtCore.c:25: 	for(int i=0; i<UNIT_EXT_SIZEMAX_SU; i++)
	adds	r3, r3, #1	@ i,
@ UnitDataExtension/src/UnitExtCore.c:25: 	for(int i=0; i<UNIT_EXT_SIZEMAX_SU; i++)
	cmp	r3, r2	@ i, tmp121
	bne	.L12		@,
@ UnitDataExtension/src/UnitExtCore.c:27: }
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
.L15:
	.align	2
.L14:
	.word	gpUnitExtData
	.size	UnitExtReset, .-UnitExtReset
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L9:
	bx	r3
