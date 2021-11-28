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
	.file	"autolevel.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	MagCha_AutolevelCore_ByClass
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MagCha_AutolevelCore_ByClass, %function
MagCha_AutolevelCore_ByClass:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
@ ModularLevelUp/AutoLevel/src/autolevel.c:6: 	u8 CharID = unit->pClassData->number;
	ldr	r3, [r0, #4]	@ unit_23(D)->pClassData, unit_23(D)->pClassData
@ ModularLevelUp/AutoLevel/src/autolevel.c:12: }
	@ sp needed	@
@ ModularLevelUp/AutoLevel/src/autolevel.c:9: 		GetAutoleveledStatIncrease(gpClassMagicTable[CharID].Growth,level);
	ldrb	r6, [r3, #4]	@ tmp142,
@ ModularLevelUp/AutoLevel/src/autolevel.c:9: 		GetAutoleveledStatIncrease(gpClassMagicTable[CharID].Growth,level);
	ldr	r3, .L2	@ tmp144,
	ldr	r3, [r3]	@ gpClassMagicTable, gpClassMagicTable
@ ModularLevelUp/AutoLevel/src/autolevel.c:9: 		GetAutoleveledStatIncrease(gpClassMagicTable[CharID].Growth,level);
	lsls	r6, r6, #2	@ _4, tmp142,
@ ModularLevelUp/AutoLevel/src/autolevel.c:9: 		GetAutoleveledStatIncrease(gpClassMagicTable[CharID].Growth,level);
	adds	r3, r3, r6	@ tmp145, gpClassMagicTable, _4
@ ModularLevelUp/AutoLevel/src/autolevel.c:5: void MagCha_AutolevelCore_ByClass(Unit* unit, int level){
	movs	r4, r0	@ unit, tmp165
@ ModularLevelUp/AutoLevel/src/autolevel.c:9: 		GetAutoleveledStatIncrease(gpClassMagicTable[CharID].Growth,level);
	ldr	r7, .L2+4	@ tmp147,
	ldrb	r0, [r3, #1]	@ tmp146,
@ ModularLevelUp/AutoLevel/src/autolevel.c:5: void MagCha_AutolevelCore_ByClass(Unit* unit, int level){
	movs	r5, r1	@ level, tmp166
@ ModularLevelUp/AutoLevel/src/autolevel.c:9: 		GetAutoleveledStatIncrease(gpClassMagicTable[CharID].Growth,level);
	bl	.L4		@
@ ModularLevelUp/AutoLevel/src/autolevel.c:8: 	*GetMagAt(unit) +=
	ldr	r3, .L2+8	@ tmp148,
@ ModularLevelUp/AutoLevel/src/autolevel.c:9: 		GetAutoleveledStatIncrease(gpClassMagicTable[CharID].Growth,level);
	str	r0, [sp, #4]	@ tmp167, %sfp
@ ModularLevelUp/AutoLevel/src/autolevel.c:8: 	*GetMagAt(unit) +=
	movs	r0, r4	@, unit
	bl	.L5		@
@ ModularLevelUp/AutoLevel/src/autolevel.c:8: 	*GetMagAt(unit) +=
	ldr	r2, [sp, #4]	@ _27, %sfp
	ldrb	r3, [r0]	@ *_29, *_29
	adds	r3, r3, r2	@ tmp152, *_29, _27
	strb	r3, [r0]	@ tmp152, *_29
@ ModularLevelUp/AutoLevel/src/autolevel.c:11: 		GetAutoleveledStatIncrease(gpClassCharmTable[CharID].Growth,level);
	ldr	r3, .L2+12	@ tmp155,
	ldr	r3, [r3]	@ gpClassCharmTable, gpClassCharmTable
	adds	r3, r3, r6	@ tmp156, gpClassCharmTable, _4
@ ModularLevelUp/AutoLevel/src/autolevel.c:11: 		GetAutoleveledStatIncrease(gpClassCharmTable[CharID].Growth,level);
	movs	r1, r5	@, level
	ldrb	r0, [r3, #1]	@ tmp157,
	bl	.L4		@
@ ModularLevelUp/AutoLevel/src/autolevel.c:10: 	*GetChaAt(unit) +=
	ldr	r3, .L2+16	@ tmp159,
@ ModularLevelUp/AutoLevel/src/autolevel.c:11: 		GetAutoleveledStatIncrease(gpClassCharmTable[CharID].Growth,level);
	movs	r5, r0	@ _32, tmp169
@ ModularLevelUp/AutoLevel/src/autolevel.c:10: 	*GetChaAt(unit) +=
	movs	r0, r4	@, unit
	bl	.L5		@
@ ModularLevelUp/AutoLevel/src/autolevel.c:10: 	*GetChaAt(unit) +=
	ldrb	r3, [r0]	@ *_34, *_34
	adds	r3, r3, r5	@ tmp163, *_34, _32
	strb	r3, [r0]	@ tmp163, *_34
@ ModularLevelUp/AutoLevel/src/autolevel.c:12: }
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L3:
	.align	2
.L2:
	.word	gpClassMagicTable
	.word	GetAutoleveledStatIncrease
	.word	GetMagAt
	.word	gpClassCharmTable
	.word	GetChaAt
	.size	MagCha_AutolevelCore_ByClass, .-MagCha_AutolevelCore_ByClass
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L5:
	bx	r3
.L4:
	bx	r7
