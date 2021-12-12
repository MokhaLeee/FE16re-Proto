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
	.file	"AidConMovGetterCore.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	GetAid
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetAid, %function
GetAid:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ ModularStatusGetter/AidConMov/AidConMovGetterCore.c:18: }
	movs	r0, #0	@,
	@ sp needed	@
	bx	lr
	.size	GetAid, .-GetAid
	.align	1
	.global	GetCon
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetCon, %function
GetCon:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ ModularStatusGetter/AidConMov/AidConMovGetterCore.c:23: 	Unit* unit = GetUnit(unt->index);
	ldr	r3, .L3	@ tmp126,
@ ModularStatusGetter/AidConMov/AidConMovGetterCore.c:27: }
	@ sp needed	@
@ ModularStatusGetter/AidConMov/AidConMovGetterCore.c:23: 	Unit* unit = GetUnit(unt->index);
	ldrb	r0, [r0, #11]	@ tmp125,
	bl	.L5		@
@ ModularStatusGetter/AidConMov/AidConMovGetterCore.c:25: 	s8 stat = unit->pClassData->baseCon + unit->pCharacterData->baseCon;
	ldr	r3, [r0]	@ unit_13->pCharacterData, unit_13->pCharacterData
@ ModularStatusGetter/AidConMov/AidConMovGetterCore.c:25: 	s8 stat = unit->pClassData->baseCon + unit->pCharacterData->baseCon;
	ldr	r2, [r0, #4]	@ unit_13->pClassData, unit_13->pClassData
@ ModularStatusGetter/AidConMov/AidConMovGetterCore.c:25: 	s8 stat = unit->pClassData->baseCon + unit->pCharacterData->baseCon;
	ldrb	r3, [r3, #19]	@ tmp133,
	ldrb	r0, [r2, #17]	@ tmp131,
	adds	r0, r0, r3	@ tmp134, tmp131, tmp133
@ ModularStatusGetter/AidConMov/AidConMovGetterCore.c:26: 	return stat;
	lsls	r0, r0, #24	@ tmp136, tmp134,
	asrs	r0, r0, #24	@ tmp135, tmp136,
@ ModularStatusGetter/AidConMov/AidConMovGetterCore.c:27: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L4:
	.align	2
.L3:
	.word	GetUnit
	.size	GetCon, .-GetCon
	.align	1
	.global	GetMov
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetMov, %function
GetMov:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
@ ModularStatusGetter/AidConMov/AidConMovGetterCore.c:32: 	Unit* unit = GetUnit(unt->index);
	ldr	r3, .L10	@ tmp131,
	ldrb	r0, [r0, #11]	@ tmp130,
	bl	.L5		@
@ ModularStatusGetter/AidConMov/AidConMovGetterCore.c:34: 	s8 stat = unit->pClassData->baseMov;
	movs	r7, #18	@ stat,
	ldr	r3, [r0, #4]	@ unit_10->pClassData, unit_10->pClassData
@ ModularStatusGetter/AidConMov/AidConMovGetterCore.c:32: 	Unit* unit = GetUnit(unt->index);
	movs	r5, r0	@ unit, tmp158
@ ModularStatusGetter/AidConMov/AidConMovGetterCore.c:4: 	s8 base = 0;
	movs	r0, #0	@ base,
@ ModularStatusGetter/AidConMov/AidConMovGetterCore.c:34: 	s8 stat = unit->pClassData->baseMov;
	ldrsb	r7, [r3, r7]	@ stat,* stat
@ ModularStatusGetter/AidConMov/AidConMovGetterCore.c:5: 	MSG_Func* it = funcs;
	ldr	r6, .L10+4	@ it,
.L7:
@ ModularStatusGetter/AidConMov/AidConMovGetterCore.c:6: 	while(*it)
	ldr	r3, [r6]	@ _18, MEM[(s8 (*MSG_Func) (struct Unit *) *)it_16]
@ ModularStatusGetter/AidConMov/AidConMovGetterCore.c:7: 		base += (*it++)(unit);
	lsls	r4, r0, #24	@ _30, base,
	lsrs	r4, r4, #24	@ _30, _30,
@ ModularStatusGetter/AidConMov/AidConMovGetterCore.c:6: 	while(*it)
	cmp	r3, #0	@ _18,
	bne	.L8		@,
@ ModularStatusGetter/AidConMov/AidConMovGetterCore.c:35: 	stat += StatusModfiy(MovMods,unit);
	adds	r4, r4, r7	@ tmp140, _30, stat
	lsls	r4, r4, #24	@ _6, tmp140,
	lsrs	r4, r4, #24	@ _6, _6,
@ ModularStatusGetter/AidConMov/AidConMovGetterCore.c:39: 	return stat;
	adds	r0, r4, #0	@ _6, _6
	lsls	r4, r4, #24	@ tmp147, _6,
	bpl	.L9		@,
	adds	r0, r3, #0	@ _6, _18
.L9:
	lsls	r0, r0, #24	@ tmp150, _6,
	asrs	r0, r0, #24	@ tmp149, tmp150,
@ ModularStatusGetter/AidConMov/AidConMovGetterCore.c:40: }
	@ sp needed	@
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L8:
@ ModularStatusGetter/AidConMov/AidConMovGetterCore.c:7: 		base += (*it++)(unit);
	movs	r0, r5	@, unit
	bl	.L5		@
@ ModularStatusGetter/AidConMov/AidConMovGetterCore.c:7: 		base += (*it++)(unit);
	adds	r0, r4, r0	@ tmp136, _30, tmp159
	lsls	r0, r0, #24	@ tmp137, tmp136,
@ ModularStatusGetter/AidConMov/AidConMovGetterCore.c:7: 		base += (*it++)(unit);
	adds	r6, r6, #4	@ it,
@ ModularStatusGetter/AidConMov/AidConMovGetterCore.c:7: 		base += (*it++)(unit);
	asrs	r0, r0, #24	@ base, tmp137,
	b	.L7		@
.L11:
	.align	2
.L10:
	.word	GetUnit
	.word	MovMods
	.size	GetMov, .-GetMov
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L5:
	bx	r3
