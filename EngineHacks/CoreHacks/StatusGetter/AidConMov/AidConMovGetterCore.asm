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
@ StatusGetter/AidConMov/AidConMovGetterCore.c:14: }
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
	@ link register save eliminated.
@ StatusGetter/AidConMov/AidConMovGetterCore.c:17: 	s8 stat = unit->pClassData->baseCon + unit->pCharacterData->baseCon;
	ldr	r3, [r0]	@ unit_9(D)->pCharacterData, unit_9(D)->pCharacterData
@ StatusGetter/AidConMov/AidConMovGetterCore.c:19: }
	@ sp needed	@
@ StatusGetter/AidConMov/AidConMovGetterCore.c:17: 	s8 stat = unit->pClassData->baseCon + unit->pCharacterData->baseCon;
	ldr	r2, [r0, #4]	@ unit_9(D)->pClassData, unit_9(D)->pClassData
@ StatusGetter/AidConMov/AidConMovGetterCore.c:17: 	s8 stat = unit->pClassData->baseCon + unit->pCharacterData->baseCon;
	ldrb	r3, [r3, #19]	@ tmp128,
	ldrb	r0, [r2, #17]	@ tmp126,
	adds	r0, r0, r3	@ tmp129, tmp126, tmp128
@ StatusGetter/AidConMov/AidConMovGetterCore.c:18: 	return stat;
	lsls	r0, r0, #24	@ tmp131, tmp129,
	asrs	r0, r0, #24	@ tmp130, tmp131,
@ StatusGetter/AidConMov/AidConMovGetterCore.c:19: }
	bx	lr
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
@ StatusGetter/AidConMov/AidConMovGetterCore.c:22: 	s8 stat = unit->pClassData->baseMov;
	movs	r7, #18	@ stat,
	ldr	r3, [r0, #4]	@ unit_6(D)->pClassData, unit_6(D)->pClassData
@ StatusGetter/AidConMov/AidConMovGetterCore.c:21: s8 GetMov(Unit* unit){
	movs	r5, r0	@ unit, tmp152
@ StatusGetter/AidConMov/AidConMovGetterCore.c:4: 	s8 base = 0;
	movs	r0, #0	@ base,
@ StatusGetter/AidConMov/AidConMovGetterCore.c:22: 	s8 stat = unit->pClassData->baseMov;
	ldrsb	r7, [r3, r7]	@ stat,* stat
@ StatusGetter/AidConMov/AidConMovGetterCore.c:5: 	MSG_Func* it = funcs;
	ldr	r6, .L7	@ it,
.L4:
@ StatusGetter/AidConMov/AidConMovGetterCore.c:6: 	while(*it)
	ldr	r3, [r6]	@ _14, MEM[(s8 (*MSG_Func) (struct Unit *) *)it_12]
@ StatusGetter/AidConMov/AidConMovGetterCore.c:7: 		base += (*it++)(unit);
	lsls	r4, r0, #24	@ _26, base,
	lsrs	r4, r4, #24	@ _26, _26,
@ StatusGetter/AidConMov/AidConMovGetterCore.c:6: 	while(*it)
	cmp	r3, #0	@ _14,
	bne	.L5		@,
@ StatusGetter/AidConMov/AidConMovGetterCore.c:23: 	stat += StatusModfiy(MovMods,unit);
	adds	r4, r4, r7	@ tmp135, _26, stat
	lsls	r4, r4, #24	@ _4, tmp135,
	lsrs	r4, r4, #24	@ _4, _4,
@ StatusGetter/AidConMov/AidConMovGetterCore.c:27: 	return stat;
	adds	r0, r4, #0	@ _4, _4
	lsls	r4, r4, #24	@ tmp142, _4,
	bpl	.L6		@,
	adds	r0, r3, #0	@ _4, _14
.L6:
	lsls	r0, r0, #24	@ tmp145, _4,
	asrs	r0, r0, #24	@ tmp144, tmp145,
@ StatusGetter/AidConMov/AidConMovGetterCore.c:28: }
	@ sp needed	@
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L5:
@ StatusGetter/AidConMov/AidConMovGetterCore.c:7: 		base += (*it++)(unit);
	movs	r0, r5	@, unit
	bl	.L9		@
@ StatusGetter/AidConMov/AidConMovGetterCore.c:7: 		base += (*it++)(unit);
	adds	r0, r4, r0	@ tmp131, _26, tmp153
	lsls	r0, r0, #24	@ tmp132, tmp131,
@ StatusGetter/AidConMov/AidConMovGetterCore.c:7: 		base += (*it++)(unit);
	adds	r6, r6, #4	@ it,
@ StatusGetter/AidConMov/AidConMovGetterCore.c:7: 		base += (*it++)(unit);
	asrs	r0, r0, #24	@ base, tmp132,
	b	.L4		@
.L8:
	.align	2
.L7:
	.word	MovMods
	.size	GetMov, .-GetMov
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L9:
	bx	r3
