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
	.file	"MagChaGetterCore.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	GetMag
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetMag, %function
GetMag:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:16: 	Unit* unit = GetUnit(unt->index);
	ldr	r3, .L5	@ tmp131,
	ldrb	r0, [r0, #11]	@ tmp130,
	bl	.L7		@
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:18: 	s8 stat = *GetMagAt(unit);
	ldr	r3, .L5+4	@ tmp132,
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:16: 	Unit* unit = GetUnit(unt->index);
	movs	r5, r0	@ unit, tmp158
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:18: 	s8 stat = *GetMagAt(unit);
	movs	r7, #0	@ stat,
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:18: 	s8 stat = *GetMagAt(unit);
	bl	.L7		@
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:18: 	s8 stat = *GetMagAt(unit);
	ldrsb	r7, [r0, r7]	@ stat,* stat
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:5: 	s8 base = 0;
	movs	r0, #0	@ base,
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:6: 	MSG_Func* it = funcs;
	ldr	r6, .L5+8	@ it,
.L2:
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:7: 	while(*it)
	ldr	r3, [r6]	@ _19, MEM[(s8 (*MSG_Func) (struct Unit *) *)it_17]
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:8: 		base += (*it++)(unit);
	lsls	r4, r0, #24	@ _31, base,
	lsrs	r4, r4, #24	@ _31, _31,
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:7: 	while(*it)
	cmp	r3, #0	@ _19,
	bne	.L3		@,
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:19: 	stat += StatusModfiy(MagMods,unit);	
	adds	r4, r4, r7	@ tmp140, _31, stat
	lsls	r4, r4, #24	@ _6, tmp140,
	lsrs	r4, r4, #24	@ _6, _6,
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:22: 	return stat;
	adds	r0, r4, #0	@ _6, _6
	lsls	r4, r4, #24	@ tmp147, _6,
	bpl	.L4		@,
	adds	r0, r3, #0	@ _6, _19
.L4:
	lsls	r0, r0, #24	@ tmp150, _6,
	asrs	r0, r0, #24	@ tmp149, tmp150,
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:23: }
	@ sp needed	@
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L3:
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:8: 		base += (*it++)(unit);
	movs	r0, r5	@, unit
	bl	.L7		@
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:8: 		base += (*it++)(unit);
	adds	r0, r4, r0	@ tmp136, _31, tmp160
	lsls	r0, r0, #24	@ tmp137, tmp136,
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:8: 		base += (*it++)(unit);
	adds	r6, r6, #4	@ it,
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:8: 		base += (*it++)(unit);
	asrs	r0, r0, #24	@ base, tmp137,
	b	.L2		@
.L6:
	.align	2
.L5:
	.word	GetUnit
	.word	GetMagAt
	.word	MagMods
	.size	GetMag, .-GetMag
	.align	1
	.global	GetCha
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetCha, %function
GetCha:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:28: 	Unit* unit = GetUnit(unt->index);
	ldr	r3, .L12	@ tmp131,
	ldrb	r0, [r0, #11]	@ tmp130,
	bl	.L7		@
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:30: 	s8 stat = *GetChaAt(unit);
	ldr	r3, .L12+4	@ tmp132,
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:28: 	Unit* unit = GetUnit(unt->index);
	movs	r5, r0	@ unit, tmp158
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:30: 	s8 stat = *GetChaAt(unit);
	movs	r7, #0	@ stat,
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:30: 	s8 stat = *GetChaAt(unit);
	bl	.L7		@
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:30: 	s8 stat = *GetChaAt(unit);
	ldrsb	r7, [r0, r7]	@ stat,* stat
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:5: 	s8 base = 0;
	movs	r0, #0	@ base,
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:6: 	MSG_Func* it = funcs;
	ldr	r6, .L12+8	@ it,
.L9:
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:7: 	while(*it)
	ldr	r3, [r6]	@ _19, MEM[(s8 (*MSG_Func) (struct Unit *) *)it_17]
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:8: 		base += (*it++)(unit);
	lsls	r4, r0, #24	@ _31, base,
	lsrs	r4, r4, #24	@ _31, _31,
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:7: 	while(*it)
	cmp	r3, #0	@ _19,
	bne	.L10		@,
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:31: 	stat += StatusModfiy(ChaMods,unit);	
	adds	r4, r4, r7	@ tmp140, _31, stat
	lsls	r4, r4, #24	@ _6, tmp140,
	lsrs	r4, r4, #24	@ _6, _6,
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:34: 	return stat;
	adds	r0, r4, #0	@ _6, _6
	lsls	r4, r4, #24	@ tmp147, _6,
	bpl	.L11		@,
	adds	r0, r3, #0	@ _6, _19
.L11:
	lsls	r0, r0, #24	@ tmp150, _6,
	asrs	r0, r0, #24	@ tmp149, tmp150,
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:35: }
	@ sp needed	@
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L10:
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:8: 		base += (*it++)(unit);
	movs	r0, r5	@, unit
	bl	.L7		@
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:8: 		base += (*it++)(unit);
	adds	r0, r4, r0	@ tmp136, _31, tmp160
	lsls	r0, r0, #24	@ tmp137, tmp136,
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:8: 		base += (*it++)(unit);
	adds	r6, r6, #4	@ it,
@ ModularStatusGetter/ChaMag/MagChaGetterCore.c:8: 		base += (*it++)(unit);
	asrs	r0, r0, #24	@ base, tmp137,
	b	.L9		@
.L13:
	.align	2
.L12:
	.word	GetUnit
	.word	GetChaAt
	.word	ChaMods
	.size	GetCha, .-GetCha
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L7:
	bx	r3
