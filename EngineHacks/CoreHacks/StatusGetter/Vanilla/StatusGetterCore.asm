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
	.file	"StatusGetterCore.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	StatusModfiy, %function
StatusModfiy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ StatusGetter/Vanilla/StatusGetterCore.c:2: static s8 StatusModfiy(MSG_Func* funcs, Unit* unit){
	movs	r4, r0	@ funcs, tmp129
	movs	r5, r1	@ unit, tmp130
@ StatusGetter/Vanilla/StatusGetterCore.c:3: 	s8 base = 0;
	movs	r6, #0	@ <retval>,
.L2:
@ StatusGetter/Vanilla/StatusGetterCore.c:5: 	while(*it)
	ldr	r3, [r4]	@ _5, MEM[(s8 (*MSG_Func) (struct Unit *) *)it_7]
	cmp	r3, #0	@ _5,
	bne	.L3		@,
@ StatusGetter/Vanilla/StatusGetterCore.c:9: }
	@ sp needed	@
	movs	r0, r6	@, <retval>
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L3:
@ StatusGetter/Vanilla/StatusGetterCore.c:6: 		base += (*it++)(unit);
	movs	r0, r5	@, unit
	bl	.L4		@
@ StatusGetter/Vanilla/StatusGetterCore.c:6: 		base += (*it++)(unit);
	adds	r0, r0, r6	@ tmp125, tmp131, <retval>
	lsls	r0, r0, #24	@ tmp127, tmp125,
@ StatusGetter/Vanilla/StatusGetterCore.c:6: 		base += (*it++)(unit);
	adds	r4, r4, #4	@ funcs,
@ StatusGetter/Vanilla/StatusGetterCore.c:6: 		base += (*it++)(unit);
	asrs	r6, r0, #24	@ <retval>, tmp127,
	b	.L2		@
	.size	StatusModfiy, .-StatusModfiy
	.align	1
	.global	GetPow
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetPow, %function
GetPow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ StatusGetter/Vanilla/StatusGetterCore.c:15: 	s8 stat = unit->pow;
	movs	r4, #20	@ stat,
@ StatusGetter/Vanilla/StatusGetterCore.c:14: s8 GetPow(Unit* unit){
	movs	r1, r0	@ unit, tmp143
@ StatusGetter/Vanilla/StatusGetterCore.c:15: 	s8 stat = unit->pow;
	ldrsb	r4, [r0, r4]	@ stat,* stat
@ StatusGetter/Vanilla/StatusGetterCore.c:16: 	stat += StatusModfiy(PowMods,unit);
	ldr	r0, .L7	@ tmp121,
	bl	StatusModfiy		@
@ StatusGetter/Vanilla/StatusGetterCore.c:16: 	stat += StatusModfiy(PowMods,unit);
	adds	r0, r0, r4	@ tmp126, tmp144, stat
	lsls	r0, r0, #24	@ _3, tmp126,
	lsrs	r0, r0, #24	@ _3, _3,
@ StatusGetter/Vanilla/StatusGetterCore.c:20: 	return stat;
	adds	r3, r0, #0	@ _3, _3
	lsls	r0, r0, #24	@ tmp133, _3,
	bpl	.L6		@,
	movs	r3, #0	@ _3,
.L6:
@ StatusGetter/Vanilla/StatusGetterCore.c:21: }
	@ sp needed	@
@ StatusGetter/Vanilla/StatusGetterCore.c:20: 	return stat;
	lsls	r0, r3, #24	@ tmp136, _3,
	asrs	r0, r0, #24	@ tmp135, tmp136,
@ StatusGetter/Vanilla/StatusGetterCore.c:21: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L8:
	.align	2
.L7:
	.word	PowMods
	.size	GetPow, .-GetPow
	.align	1
	.global	GetSpd
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetSpd, %function
GetSpd:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ StatusGetter/Vanilla/StatusGetterCore.c:24: 	s8 stat = unit->spd;
	movs	r4, #22	@ stat,
@ StatusGetter/Vanilla/StatusGetterCore.c:23: s8 GetSpd(Unit* unit){
	movs	r1, r0	@ unit, tmp143
@ StatusGetter/Vanilla/StatusGetterCore.c:24: 	s8 stat = unit->spd;
	ldrsb	r4, [r0, r4]	@ stat,* stat
@ StatusGetter/Vanilla/StatusGetterCore.c:25: 	stat += StatusModfiy(SpdMods,unit);
	ldr	r0, .L11	@ tmp121,
	bl	StatusModfiy		@
@ StatusGetter/Vanilla/StatusGetterCore.c:25: 	stat += StatusModfiy(SpdMods,unit);
	adds	r0, r0, r4	@ tmp126, tmp144, stat
	lsls	r0, r0, #24	@ _3, tmp126,
	lsrs	r0, r0, #24	@ _3, _3,
@ StatusGetter/Vanilla/StatusGetterCore.c:29: 	return stat;
	adds	r3, r0, #0	@ _3, _3
	lsls	r0, r0, #24	@ tmp133, _3,
	bpl	.L10		@,
	movs	r3, #0	@ _3,
.L10:
@ StatusGetter/Vanilla/StatusGetterCore.c:30: }
	@ sp needed	@
@ StatusGetter/Vanilla/StatusGetterCore.c:29: 	return stat;
	lsls	r0, r3, #24	@ tmp136, _3,
	asrs	r0, r0, #24	@ tmp135, tmp136,
@ StatusGetter/Vanilla/StatusGetterCore.c:30: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L12:
	.align	2
.L11:
	.word	SpdMods
	.size	GetSpd, .-GetSpd
	.align	1
	.global	GetSkl
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetSkl, %function
GetSkl:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ StatusGetter/Vanilla/StatusGetterCore.c:33: 	s8 stat = unit->skl;
	movs	r4, #21	@ stat,
@ StatusGetter/Vanilla/StatusGetterCore.c:32: s8 GetSkl(Unit* unit){
	movs	r1, r0	@ unit, tmp143
@ StatusGetter/Vanilla/StatusGetterCore.c:33: 	s8 stat = unit->skl;
	ldrsb	r4, [r0, r4]	@ stat,* stat
@ StatusGetter/Vanilla/StatusGetterCore.c:34: 	stat += StatusModfiy(SklMods,unit);
	ldr	r0, .L15	@ tmp121,
	bl	StatusModfiy		@
@ StatusGetter/Vanilla/StatusGetterCore.c:34: 	stat += StatusModfiy(SklMods,unit);
	adds	r0, r0, r4	@ tmp126, tmp144, stat
	lsls	r0, r0, #24	@ _3, tmp126,
	lsrs	r0, r0, #24	@ _3, _3,
@ StatusGetter/Vanilla/StatusGetterCore.c:38: 	return stat;
	adds	r3, r0, #0	@ _3, _3
	lsls	r0, r0, #24	@ tmp133, _3,
	bpl	.L14		@,
	movs	r3, #0	@ _3,
.L14:
@ StatusGetter/Vanilla/StatusGetterCore.c:39: }
	@ sp needed	@
@ StatusGetter/Vanilla/StatusGetterCore.c:38: 	return stat;
	lsls	r0, r3, #24	@ tmp136, _3,
	asrs	r0, r0, #24	@ tmp135, tmp136,
@ StatusGetter/Vanilla/StatusGetterCore.c:39: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L16:
	.align	2
.L15:
	.word	SklMods
	.size	GetSkl, .-GetSkl
	.align	1
	.global	GetLck
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetLck, %function
GetLck:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ StatusGetter/Vanilla/StatusGetterCore.c:43: 	s8 stat = unit->lck;
	movs	r4, #25	@ stat,
@ StatusGetter/Vanilla/StatusGetterCore.c:42: s8 GetLck(Unit* unit){
	movs	r1, r0	@ unit, tmp143
@ StatusGetter/Vanilla/StatusGetterCore.c:43: 	s8 stat = unit->lck;
	ldrsb	r4, [r0, r4]	@ stat,* stat
@ StatusGetter/Vanilla/StatusGetterCore.c:44: 	stat += StatusModfiy(LckMods,unit);
	ldr	r0, .L19	@ tmp121,
	bl	StatusModfiy		@
@ StatusGetter/Vanilla/StatusGetterCore.c:44: 	stat += StatusModfiy(LckMods,unit);
	adds	r0, r0, r4	@ tmp126, tmp144, stat
	lsls	r0, r0, #24	@ _3, tmp126,
	lsrs	r0, r0, #24	@ _3, _3,
@ StatusGetter/Vanilla/StatusGetterCore.c:48: 	return stat;
	adds	r3, r0, #0	@ _3, _3
	lsls	r0, r0, #24	@ tmp133, _3,
	bpl	.L18		@,
	movs	r3, #0	@ _3,
.L18:
@ StatusGetter/Vanilla/StatusGetterCore.c:49: }
	@ sp needed	@
@ StatusGetter/Vanilla/StatusGetterCore.c:48: 	return stat;
	lsls	r0, r3, #24	@ tmp136, _3,
	asrs	r0, r0, #24	@ tmp135, tmp136,
@ StatusGetter/Vanilla/StatusGetterCore.c:49: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L20:
	.align	2
.L19:
	.word	LckMods
	.size	GetLck, .-GetLck
	.align	1
	.global	GetRes
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetRes, %function
GetRes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ StatusGetter/Vanilla/StatusGetterCore.c:52: 	s8 stat = unit->res;
	movs	r4, #24	@ stat,
@ StatusGetter/Vanilla/StatusGetterCore.c:51: s8 GetRes(Unit* unit){
	movs	r1, r0	@ unit, tmp143
@ StatusGetter/Vanilla/StatusGetterCore.c:52: 	s8 stat = unit->res;
	ldrsb	r4, [r0, r4]	@ stat,* stat
@ StatusGetter/Vanilla/StatusGetterCore.c:53: 	stat += StatusModfiy(ResMods,unit);
	ldr	r0, .L23	@ tmp121,
	bl	StatusModfiy		@
@ StatusGetter/Vanilla/StatusGetterCore.c:53: 	stat += StatusModfiy(ResMods,unit);
	adds	r0, r0, r4	@ tmp126, tmp144, stat
	lsls	r0, r0, #24	@ _3, tmp126,
	lsrs	r0, r0, #24	@ _3, _3,
@ StatusGetter/Vanilla/StatusGetterCore.c:57: 	return stat;
	adds	r3, r0, #0	@ _3, _3
	lsls	r0, r0, #24	@ tmp133, _3,
	bpl	.L22		@,
	movs	r3, #0	@ _3,
.L22:
@ StatusGetter/Vanilla/StatusGetterCore.c:58: }
	@ sp needed	@
@ StatusGetter/Vanilla/StatusGetterCore.c:57: 	return stat;
	lsls	r0, r3, #24	@ tmp136, _3,
	asrs	r0, r0, #24	@ tmp135, tmp136,
@ StatusGetter/Vanilla/StatusGetterCore.c:58: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L24:
	.align	2
.L23:
	.word	ResMods
	.size	GetRes, .-GetRes
	.align	1
	.global	GetDef
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetDef, %function
GetDef:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ StatusGetter/Vanilla/StatusGetterCore.c:61: 	s8 stat = unit->def;
	movs	r4, #23	@ stat,
@ StatusGetter/Vanilla/StatusGetterCore.c:60: s8 GetDef(Unit* unit){
	movs	r1, r0	@ unit, tmp143
@ StatusGetter/Vanilla/StatusGetterCore.c:61: 	s8 stat = unit->def;
	ldrsb	r4, [r0, r4]	@ stat,* stat
@ StatusGetter/Vanilla/StatusGetterCore.c:62: 	stat += StatusModfiy(PowMods,unit);	
	ldr	r0, .L27	@ tmp121,
	bl	StatusModfiy		@
@ StatusGetter/Vanilla/StatusGetterCore.c:62: 	stat += StatusModfiy(PowMods,unit);	
	adds	r0, r0, r4	@ tmp126, tmp144, stat
	lsls	r0, r0, #24	@ _3, tmp126,
	lsrs	r0, r0, #24	@ _3, _3,
@ StatusGetter/Vanilla/StatusGetterCore.c:65: 	return stat;
	adds	r3, r0, #0	@ _3, _3
	lsls	r0, r0, #24	@ tmp133, _3,
	bpl	.L26		@,
	movs	r3, #0	@ _3,
.L26:
@ StatusGetter/Vanilla/StatusGetterCore.c:66: }
	@ sp needed	@
@ StatusGetter/Vanilla/StatusGetterCore.c:65: 	return stat;
	lsls	r0, r3, #24	@ tmp136, _3,
	asrs	r0, r0, #24	@ tmp135, tmp136,
@ StatusGetter/Vanilla/StatusGetterCore.c:66: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L28:
	.align	2
.L27:
	.word	PowMods
	.size	GetDef, .-GetDef
	.align	1
	.global	GetHpCur
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetHpCur, %function
GetHpCur:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ StatusGetter/Vanilla/StatusGetterCore.c:68: s8 GetHpCur(Unit* unit){
	movs	r4, r0	@ unit, tmp150
@ StatusGetter/Vanilla/StatusGetterCore.c:69: 	s8 HpCur = unit->curHP;
	movs	r6, #19	@ <retval>,
@ StatusGetter/Vanilla/StatusGetterCore.c:70: 	s8 HpMax = unit->maxHP;
	movs	r5, #18	@ HpMax,
@ StatusGetter/Vanilla/StatusGetterCore.c:69: 	s8 HpCur = unit->curHP;
	ldrsb	r6, [r0, r6]	@ <retval>,* <retval>
@ StatusGetter/Vanilla/StatusGetterCore.c:70: 	s8 HpMax = unit->maxHP;
	ldrsb	r5, [r0, r5]	@ HpMax,* HpMax
@ StatusGetter/Vanilla/StatusGetterCore.c:73: 	Bonus += StatusModfiy(HpCurMods,unit);	
	movs	r1, r4	@, unit
	ldr	r0, .L33	@ tmp125,
	bl	StatusModfiy		@
	adds	r3, r0, #0	@ _15, tmp126
	lsls	r0, r0, #24	@ tmp153, tmp126,
	bpl	.L30		@,
	movs	r3, #0	@ _15,
.L30:
	lsls	r3, r3, #24	@ tmp135, _15,
	asrs	r3, r3, #24	@ _1, tmp135,
@ StatusGetter/Vanilla/StatusGetterCore.c:77: 	if( HpCur > HpMax+Bonus )
	adds	r3, r5, r3	@ tmp143, HpMax, _1
@ StatusGetter/Vanilla/StatusGetterCore.c:77: 	if( HpCur > HpMax+Bonus )
	cmp	r6, r3	@ <retval>, tmp143
	ble	.L31		@,
@ StatusGetter/Vanilla/StatusGetterCore.c:78: 		HpCur = HpMax+Bonus;
	lsls	r3, r3, #24	@ tmp140, tmp143,
	asrs	r6, r3, #24	@ <retval>, tmp140,
.L31:
@ StatusGetter/Vanilla/StatusGetterCore.c:82: }
	movs	r0, r6	@, <retval>
	@ sp needed	@
@ StatusGetter/Vanilla/StatusGetterCore.c:80: 	unit->curHP = HpCur;
	strb	r6, [r4, #19]	@ <retval>, unit_11(D)->curHP
@ StatusGetter/Vanilla/StatusGetterCore.c:82: }
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L34:
	.align	2
.L33:
	.word	HpCurMods
	.size	GetHpCur, .-GetHpCur
	.align	1
	.global	GetHpMax
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetHpMax, %function
GetHpMax:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ StatusGetter/Vanilla/StatusGetterCore.c:85: 	s8 stat = unit->maxHP;
	movs	r4, #18	@ stat,
@ StatusGetter/Vanilla/StatusGetterCore.c:84: s8 GetHpMax(Unit* unit){
	movs	r1, r0	@ unit, tmp143
@ StatusGetter/Vanilla/StatusGetterCore.c:85: 	s8 stat = unit->maxHP;
	ldrsb	r4, [r0, r4]	@ stat,* stat
@ StatusGetter/Vanilla/StatusGetterCore.c:86: 	stat += StatusModfiy(HpMaxMods,unit);	
	ldr	r0, .L37	@ tmp121,
	bl	StatusModfiy		@
@ StatusGetter/Vanilla/StatusGetterCore.c:86: 	stat += StatusModfiy(HpMaxMods,unit);	
	adds	r0, r0, r4	@ tmp126, tmp144, stat
	lsls	r0, r0, #24	@ _3, tmp126,
	lsrs	r0, r0, #24	@ _3, _3,
@ StatusGetter/Vanilla/StatusGetterCore.c:89: 	return stat;
	adds	r3, r0, #0	@ _3, _3
	lsls	r0, r0, #24	@ tmp133, _3,
	bpl	.L36		@,
	movs	r3, #0	@ _3,
.L36:
@ StatusGetter/Vanilla/StatusGetterCore.c:90: }
	@ sp needed	@
@ StatusGetter/Vanilla/StatusGetterCore.c:89: 	return stat;
	lsls	r0, r3, #24	@ tmp136, _3,
	asrs	r0, r0, #24	@ tmp135, tmp136,
@ StatusGetter/Vanilla/StatusGetterCore.c:90: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L38:
	.align	2
.L37:
	.word	HpMaxMods
	.size	GetHpMax, .-GetHpMax
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L4:
	bx	r3
