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
@ StatusGetter/ChaMag/MagChaGetterCore.c:14: 	s8 stat = *GetMagAt(unit);
	ldr	r3, .L5	@ tmp127,
@ StatusGetter/ChaMag/MagChaGetterCore.c:13: s8 GetMag(Unit* unit){
	movs	r5, r0	@ unit, tmp152
@ StatusGetter/ChaMag/MagChaGetterCore.c:14: 	s8 stat = *GetMagAt(unit);
	movs	r7, #0	@ stat,
@ StatusGetter/ChaMag/MagChaGetterCore.c:14: 	s8 stat = *GetMagAt(unit);
	bl	.L7		@
@ StatusGetter/ChaMag/MagChaGetterCore.c:14: 	s8 stat = *GetMagAt(unit);
	ldrsb	r7, [r0, r7]	@ stat,* stat
@ StatusGetter/ChaMag/MagChaGetterCore.c:5: 	s8 base = 0;
	movs	r0, #0	@ base,
@ StatusGetter/ChaMag/MagChaGetterCore.c:6: 	MSG_Func* it = funcs;
	ldr	r6, .L5+4	@ it,
.L2:
@ StatusGetter/ChaMag/MagChaGetterCore.c:7: 	while(*it)
	ldr	r3, [r6]	@ _15, MEM[(s8 (*MSG_Func) (struct Unit *) *)it_13]
@ StatusGetter/ChaMag/MagChaGetterCore.c:8: 		base += (*it++)(unit);
	lsls	r4, r0, #24	@ _27, base,
	lsrs	r4, r4, #24	@ _27, _27,
@ StatusGetter/ChaMag/MagChaGetterCore.c:7: 	while(*it)
	cmp	r3, #0	@ _15,
	bne	.L3		@,
@ StatusGetter/ChaMag/MagChaGetterCore.c:15: 	stat += StatusModfiy(MagMods,unit);	
	adds	r4, r4, r7	@ tmp135, _27, stat
	lsls	r4, r4, #24	@ _4, tmp135,
	lsrs	r4, r4, #24	@ _4, _4,
@ StatusGetter/ChaMag/MagChaGetterCore.c:18: 	return stat;
	adds	r0, r4, #0	@ _4, _4
	lsls	r4, r4, #24	@ tmp142, _4,
	bpl	.L4		@,
	adds	r0, r3, #0	@ _4, _15
.L4:
	lsls	r0, r0, #24	@ tmp145, _4,
	asrs	r0, r0, #24	@ tmp144, tmp145,
@ StatusGetter/ChaMag/MagChaGetterCore.c:19: }
	@ sp needed	@
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L3:
@ StatusGetter/ChaMag/MagChaGetterCore.c:8: 		base += (*it++)(unit);
	movs	r0, r5	@, unit
	bl	.L7		@
@ StatusGetter/ChaMag/MagChaGetterCore.c:8: 		base += (*it++)(unit);
	adds	r0, r4, r0	@ tmp131, _27, tmp154
	lsls	r0, r0, #24	@ tmp132, tmp131,
@ StatusGetter/ChaMag/MagChaGetterCore.c:8: 		base += (*it++)(unit);
	adds	r6, r6, #4	@ it,
@ StatusGetter/ChaMag/MagChaGetterCore.c:8: 		base += (*it++)(unit);
	asrs	r0, r0, #24	@ base, tmp132,
	b	.L2		@
.L6:
	.align	2
.L5:
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
@ StatusGetter/ChaMag/MagChaGetterCore.c:22: 	s8 stat = *GetChaAt(unit);
	ldr	r3, .L12	@ tmp127,
@ StatusGetter/ChaMag/MagChaGetterCore.c:21: s8 GetCha(Unit* unit){
	movs	r5, r0	@ unit, tmp152
@ StatusGetter/ChaMag/MagChaGetterCore.c:22: 	s8 stat = *GetChaAt(unit);
	movs	r7, #0	@ stat,
@ StatusGetter/ChaMag/MagChaGetterCore.c:22: 	s8 stat = *GetChaAt(unit);
	bl	.L7		@
@ StatusGetter/ChaMag/MagChaGetterCore.c:22: 	s8 stat = *GetChaAt(unit);
	ldrsb	r7, [r0, r7]	@ stat,* stat
@ StatusGetter/ChaMag/MagChaGetterCore.c:5: 	s8 base = 0;
	movs	r0, #0	@ base,
@ StatusGetter/ChaMag/MagChaGetterCore.c:6: 	MSG_Func* it = funcs;
	ldr	r6, .L12+4	@ it,
.L9:
@ StatusGetter/ChaMag/MagChaGetterCore.c:7: 	while(*it)
	ldr	r3, [r6]	@ _15, MEM[(s8 (*MSG_Func) (struct Unit *) *)it_13]
@ StatusGetter/ChaMag/MagChaGetterCore.c:8: 		base += (*it++)(unit);
	lsls	r4, r0, #24	@ _27, base,
	lsrs	r4, r4, #24	@ _27, _27,
@ StatusGetter/ChaMag/MagChaGetterCore.c:7: 	while(*it)
	cmp	r3, #0	@ _15,
	bne	.L10		@,
@ StatusGetter/ChaMag/MagChaGetterCore.c:23: 	stat += StatusModfiy(ChaMods,unit);	
	adds	r4, r4, r7	@ tmp135, _27, stat
	lsls	r4, r4, #24	@ _4, tmp135,
	lsrs	r4, r4, #24	@ _4, _4,
@ StatusGetter/ChaMag/MagChaGetterCore.c:26: 	return stat;
	adds	r0, r4, #0	@ _4, _4
	lsls	r4, r4, #24	@ tmp142, _4,
	bpl	.L11		@,
	adds	r0, r3, #0	@ _4, _15
.L11:
	lsls	r0, r0, #24	@ tmp145, _4,
	asrs	r0, r0, #24	@ tmp144, tmp145,
@ StatusGetter/ChaMag/MagChaGetterCore.c:27: }
	@ sp needed	@
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L10:
@ StatusGetter/ChaMag/MagChaGetterCore.c:8: 		base += (*it++)(unit);
	movs	r0, r5	@, unit
	bl	.L7		@
@ StatusGetter/ChaMag/MagChaGetterCore.c:8: 		base += (*it++)(unit);
	adds	r0, r4, r0	@ tmp131, _27, tmp154
	lsls	r0, r0, #24	@ tmp132, tmp131,
@ StatusGetter/ChaMag/MagChaGetterCore.c:8: 		base += (*it++)(unit);
	adds	r6, r6, #4	@ it,
@ StatusGetter/ChaMag/MagChaGetterCore.c:8: 		base += (*it++)(unit);
	asrs	r0, r0, #24	@ base, tmp132,
	b	.L9		@
.L13:
	.align	2
.L12:
	.word	GetChaAt
	.word	ChaMods
	.size	GetCha, .-GetCha
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L7:
	bx	r3
