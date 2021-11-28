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
	.file	"LoadUnit.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	LoadUnitStats_MagCha
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LoadUnitStats_MagCha, %function
LoadUnitStats_MagCha:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
@ StrMagChaSplit/LoadUnit/LoadUnit.c:6: 	u8 CharID = unit->pCharacterData->number;
	ldr	r3, [r0]	@ unit_34(D)->pCharacterData, unit_34(D)->pCharacterData
@ StrMagChaSplit/LoadUnit/LoadUnit.c:24: }
	@ sp needed	@
@ StrMagChaSplit/LoadUnit/LoadUnit.c:10: 		gpUnitMagicTable[CharID].Base +
	ldrb	r7, [r3, #4]	@ tmp150,
@ StrMagChaSplit/LoadUnit/LoadUnit.c:7: 	u8 ClassID= unit->pClassData->number;
	ldr	r3, [r0, #4]	@ unit_34(D)->pClassData, unit_34(D)->pClassData
@ StrMagChaSplit/LoadUnit/LoadUnit.c:11: 		gpClassMagicTable[ClassID].Base;
	ldrb	r6, [r3, #4]	@ tmp152,
@ StrMagChaSplit/LoadUnit/LoadUnit.c:10: 		gpUnitMagicTable[CharID].Base +
	ldr	r3, .L2	@ tmp154,
	ldr	r2, [r3]	@ gpUnitMagicTable, gpUnitMagicTable
@ StrMagChaSplit/LoadUnit/LoadUnit.c:11: 		gpClassMagicTable[ClassID].Base;
	ldr	r3, .L2+4	@ tmp156,
	ldr	r3, [r3]	@ gpClassMagicTable, gpClassMagicTable
@ StrMagChaSplit/LoadUnit/LoadUnit.c:10: 		gpUnitMagicTable[CharID].Base +
	lsls	r7, r7, #1	@ _5, tmp150,
@ StrMagChaSplit/LoadUnit/LoadUnit.c:11: 		gpClassMagicTable[ClassID].Base;
	lsls	r6, r6, #2	@ _10, tmp152,
@ StrMagChaSplit/LoadUnit/LoadUnit.c:10: 		gpUnitMagicTable[CharID].Base +
	ldrb	r5, [r2, r7]	@ *_6, *_6
	ldrb	r3, [r3, r6]	@ *_11, *_11
	adds	r5, r5, r3	@ tmp161, *_6, *_11
@ StrMagChaSplit/LoadUnit/LoadUnit.c:9: 	*GetMagAt(unit) = 
	ldr	r3, .L2+8	@ tmp163,
@ StrMagChaSplit/LoadUnit/LoadUnit.c:5: void LoadUnitStats_MagCha(Unit* unit, CharacterData* RomChar){
	movs	r4, r0	@ unit, tmp187
@ StrMagChaSplit/LoadUnit/LoadUnit.c:9: 	*GetMagAt(unit) = 
	bl	.L4		@
@ StrMagChaSplit/LoadUnit/LoadUnit.c:10: 		gpUnitMagicTable[CharID].Base +
	lsls	r5, r5, #24	@ _13, tmp161,
	lsrs	r5, r5, #24	@ _13, _13,
@ StrMagChaSplit/LoadUnit/LoadUnit.c:9: 	*GetMagAt(unit) = 
	strb	r5, [r0]	@ _13, *_14
@ StrMagChaSplit/LoadUnit/LoadUnit.c:14: 		gpUnitCharmTable[CharID].Base +
	ldr	r3, .L2+12	@ tmp166,
	ldr	r2, [r3]	@ gpUnitCharmTable, gpUnitCharmTable
@ StrMagChaSplit/LoadUnit/LoadUnit.c:15: 		gpClassCharmTable[ClassID].Base;
	ldr	r3, .L2+16	@ tmp168,
	ldr	r3, [r3]	@ gpClassCharmTable, gpClassCharmTable
@ StrMagChaSplit/LoadUnit/LoadUnit.c:14: 		gpUnitCharmTable[CharID].Base +
	ldrb	r5, [r2, r7]	@ *_17, *_17
	ldrb	r3, [r3, r6]	@ *_20, *_20
@ StrMagChaSplit/LoadUnit/LoadUnit.c:13: 	*GetChaAt(unit) = 
	movs	r0, r4	@, unit
@ StrMagChaSplit/LoadUnit/LoadUnit.c:14: 		gpUnitCharmTable[CharID].Base +
	adds	r5, r5, r3	@ tmp173, *_17, *_20
@ StrMagChaSplit/LoadUnit/LoadUnit.c:13: 	*GetChaAt(unit) = 
	ldr	r3, .L2+20	@ tmp175,
	bl	.L4		@
@ StrMagChaSplit/LoadUnit/LoadUnit.c:14: 		gpUnitCharmTable[CharID].Base +
	lsls	r5, r5, #24	@ _22, tmp173,
	lsrs	r5, r5, #24	@ _22, _22,
@ StrMagChaSplit/LoadUnit/LoadUnit.c:13: 	*GetChaAt(unit) = 
	strb	r5, [r0]	@ _22, *_23
@ StrMagChaSplit/LoadUnit/LoadUnit.c:18: 		unit->pCharacterData->baseHP + 
	ldr	r3, [r4]	@ unit_34(D)->pCharacterData, unit_34(D)->pCharacterData
@ StrMagChaSplit/LoadUnit/LoadUnit.c:19: 		unit->pClassData->baseHP;
	ldr	r2, [r4, #4]	@ unit_34(D)->pClassData, unit_34(D)->pClassData
@ StrMagChaSplit/LoadUnit/LoadUnit.c:18: 		unit->pCharacterData->baseHP + 
	ldrb	r3, [r3, #12]	@ tmp180,
	ldrb	r2, [r2, #11]	@ tmp182,
	adds	r3, r3, r2	@ tmp183, tmp180, tmp182
	lsls	r3, r3, #24	@ tmp184, tmp183,
	asrs	r3, r3, #24	@ _32, tmp184,
@ StrMagChaSplit/LoadUnit/LoadUnit.c:17: 	unit->curHP = 
	strb	r3, [r4, #19]	@ _32, unit_34(D)->curHP
@ StrMagChaSplit/LoadUnit/LoadUnit.c:21: 	unit->maxHP = 
	strb	r3, [r4, #18]	@ _32, unit_34(D)->maxHP
@ StrMagChaSplit/LoadUnit/LoadUnit.c:24: }
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L3:
	.align	2
.L2:
	.word	gpUnitMagicTable
	.word	gpClassMagicTable
	.word	GetMagAt
	.word	gpUnitCharmTable
	.word	gpClassCharmTable
	.word	GetChaAt
	.size	LoadUnitStats_MagCha, .-LoadUnitStats_MagCha
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L4:
	bx	r3
