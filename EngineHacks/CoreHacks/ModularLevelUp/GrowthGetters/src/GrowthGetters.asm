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
	.file	"GrowthGetters.c"
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
	.type	GrowthModify, %function
GrowthModify:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:5: static s8 GrowthModify(MLU_Func* funcs, Unit* unit){
	movs	r4, r0	@ funcs, tmp129
	movs	r5, r1	@ unit, tmp130
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:6: 	s8 base = 0;
	movs	r6, #0	@ <retval>,
.L2:
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:8: 	while(*it)
	ldr	r3, [r4]	@ _5, MEM[(s8 (*MLU_Func) (struct Unit *) *)it_7]
	cmp	r3, #0	@ _5,
	bne	.L3		@,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:12: }
	@ sp needed	@
	movs	r0, r6	@, <retval>
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L3:
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:9: 		base += (*it++)(unit);
	movs	r0, r5	@, unit
	bl	.L4		@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:9: 		base += (*it++)(unit);
	adds	r0, r0, r6	@ tmp125, tmp131, <retval>
	lsls	r0, r0, #24	@ tmp127, tmp125,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:9: 		base += (*it++)(unit);
	adds	r4, r4, #4	@ funcs,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:9: 		base += (*it++)(unit);
	asrs	r6, r0, #24	@ <retval>, tmp127,
	b	.L2		@
	.size	GrowthModify, .-GrowthModify
	.align	1
	.global	Growth_HpGetter
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Growth_HpGetter, %function
Growth_HpGetter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:17: 	s8 base = unit->pCharacterData->growthHP;
	ldr	r3, [r0]	@ unit_6(D)->pCharacterData, unit_6(D)->pCharacterData
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:20: }
	@ sp needed	@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:16: s8 Growth_HpGetter(Unit* unit){
	movs	r1, r0	@ unit, tmp129
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:18: 	base += GrowthModify(Groth_HpMod,unit);
	ldr	r0, .L6	@ tmp121,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:17: 	s8 base = unit->pCharacterData->growthHP;
	ldrb	r4, [r3, #28]	@ _2,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:18: 	base += GrowthModify(Groth_HpMod,unit);
	bl	GrowthModify		@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:18: 	base += GrowthModify(Groth_HpMod,unit);
	adds	r0, r4, r0	@ tmp126, _2, tmp130
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:19: 	return base;
	lsls	r0, r0, #24	@ tmp128, tmp126,
	asrs	r0, r0, #24	@ tmp127, tmp128,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:20: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L7:
	.align	2
.L6:
	.word	Groth_HpMod
	.size	Growth_HpGetter, .-Growth_HpGetter
	.align	1
	.global	Growth_PowGetter
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Growth_PowGetter, %function
Growth_PowGetter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:23: 	s8 base = unit->pCharacterData->growthPow;
	ldr	r3, [r0]	@ unit_6(D)->pCharacterData, unit_6(D)->pCharacterData
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:26: }
	@ sp needed	@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:22: s8 Growth_PowGetter(Unit* unit){
	movs	r1, r0	@ unit, tmp129
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:24: 	base += GrowthModify(Groth_PowMod,unit);
	ldr	r0, .L9	@ tmp121,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:23: 	s8 base = unit->pCharacterData->growthPow;
	ldrb	r4, [r3, #29]	@ _2,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:24: 	base += GrowthModify(Groth_PowMod,unit);
	bl	GrowthModify		@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:24: 	base += GrowthModify(Groth_PowMod,unit);
	adds	r0, r4, r0	@ tmp126, _2, tmp130
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:25: 	return base;
	lsls	r0, r0, #24	@ tmp128, tmp126,
	asrs	r0, r0, #24	@ tmp127, tmp128,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:26: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L10:
	.align	2
.L9:
	.word	Groth_PowMod
	.size	Growth_PowGetter, .-Growth_PowGetter
	.align	1
	.global	Growth_SklGetter
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Growth_SklGetter, %function
Growth_SklGetter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:29: 	s8 base = unit->pCharacterData->growthSkl;
	ldr	r3, [r0]	@ unit_6(D)->pCharacterData, unit_6(D)->pCharacterData
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:32: }
	@ sp needed	@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:28: s8 Growth_SklGetter(Unit* unit){
	movs	r1, r0	@ unit, tmp129
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:30: 	base += GrowthModify(Groth_SklMod,unit);
	ldr	r0, .L12	@ tmp121,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:29: 	s8 base = unit->pCharacterData->growthSkl;
	ldrb	r4, [r3, #30]	@ _2,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:30: 	base += GrowthModify(Groth_SklMod,unit);
	bl	GrowthModify		@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:30: 	base += GrowthModify(Groth_SklMod,unit);
	adds	r0, r4, r0	@ tmp126, _2, tmp130
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:31: 	return base;
	lsls	r0, r0, #24	@ tmp128, tmp126,
	asrs	r0, r0, #24	@ tmp127, tmp128,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:32: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L13:
	.align	2
.L12:
	.word	Groth_SklMod
	.size	Growth_SklGetter, .-Growth_SklGetter
	.align	1
	.global	Growth_SpdGetter
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Growth_SpdGetter, %function
Growth_SpdGetter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:35: 	s8 base = unit->pCharacterData->growthSpd;
	ldr	r3, [r0]	@ unit_6(D)->pCharacterData, unit_6(D)->pCharacterData
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:38: }
	@ sp needed	@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:34: s8 Growth_SpdGetter(Unit* unit){
	movs	r1, r0	@ unit, tmp129
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:36: 	base += GrowthModify(Groth_SpdMod,unit);
	ldr	r0, .L15	@ tmp121,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:35: 	s8 base = unit->pCharacterData->growthSpd;
	ldrb	r4, [r3, #31]	@ _2,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:36: 	base += GrowthModify(Groth_SpdMod,unit);
	bl	GrowthModify		@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:36: 	base += GrowthModify(Groth_SpdMod,unit);
	adds	r0, r4, r0	@ tmp126, _2, tmp130
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:37: 	return base;
	lsls	r0, r0, #24	@ tmp128, tmp126,
	asrs	r0, r0, #24	@ tmp127, tmp128,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:38: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L16:
	.align	2
.L15:
	.word	Groth_SpdMod
	.size	Growth_SpdGetter, .-Growth_SpdGetter
	.align	1
	.global	Growth_LckGetter
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Growth_LckGetter, %function
Growth_LckGetter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:41: 	s8 base = unit->pCharacterData->growthLck;
	ldr	r3, [r0]	@ unit_6(D)->pCharacterData, unit_6(D)->pCharacterData
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:44: }
	@ sp needed	@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:40: s8 Growth_LckGetter(Unit* unit){
	movs	r1, r0	@ unit, tmp130
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:41: 	s8 base = unit->pCharacterData->growthLck;
	adds	r3, r3, #3	@ tmp121,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:42: 	base += GrowthModify(Groth_LckMod,unit);
	ldr	r0, .L18	@ tmp122,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:41: 	s8 base = unit->pCharacterData->growthLck;
	ldrb	r4, [r3, #31]	@ _2,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:42: 	base += GrowthModify(Groth_LckMod,unit);
	bl	GrowthModify		@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:42: 	base += GrowthModify(Groth_LckMod,unit);
	adds	r0, r4, r0	@ tmp127, _2, tmp131
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:43: 	return base;
	lsls	r0, r0, #24	@ tmp129, tmp127,
	asrs	r0, r0, #24	@ tmp128, tmp129,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:44: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L19:
	.align	2
.L18:
	.word	Groth_LckMod
	.size	Growth_LckGetter, .-Growth_LckGetter
	.align	1
	.global	Growth_DefGetter
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Growth_DefGetter, %function
Growth_DefGetter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:47: 	s8 base = unit->pCharacterData->growthDef;
	ldr	r3, [r0]	@ unit_6(D)->pCharacterData, unit_6(D)->pCharacterData
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:50: }
	@ sp needed	@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:46: s8 Growth_DefGetter(Unit* unit){
	movs	r1, r0	@ unit, tmp130
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:47: 	s8 base = unit->pCharacterData->growthDef;
	adds	r3, r3, #1	@ tmp121,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:48: 	base += GrowthModify(Groth_DefMod,unit);
	ldr	r0, .L21	@ tmp122,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:47: 	s8 base = unit->pCharacterData->growthDef;
	ldrb	r4, [r3, #31]	@ _2,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:48: 	base += GrowthModify(Groth_DefMod,unit);
	bl	GrowthModify		@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:48: 	base += GrowthModify(Groth_DefMod,unit);
	adds	r0, r4, r0	@ tmp127, _2, tmp131
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:49: 	return base;
	lsls	r0, r0, #24	@ tmp129, tmp127,
	asrs	r0, r0, #24	@ tmp128, tmp129,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:50: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L22:
	.align	2
.L21:
	.word	Groth_DefMod
	.size	Growth_DefGetter, .-Growth_DefGetter
	.align	1
	.global	Growth_ResGetter
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Growth_ResGetter, %function
Growth_ResGetter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:53: 	s8 base = unit->pCharacterData->growthRes;
	ldr	r3, [r0]	@ unit_6(D)->pCharacterData, unit_6(D)->pCharacterData
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:56: }
	@ sp needed	@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:52: s8 Growth_ResGetter(Unit* unit){
	movs	r1, r0	@ unit, tmp130
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:53: 	s8 base = unit->pCharacterData->growthRes;
	adds	r3, r3, #2	@ tmp121,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:54: 	base += GrowthModify(Groth_ResMod,unit);
	ldr	r0, .L24	@ tmp122,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:53: 	s8 base = unit->pCharacterData->growthRes;
	ldrb	r4, [r3, #31]	@ _2,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:54: 	base += GrowthModify(Groth_ResMod,unit);
	bl	GrowthModify		@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:54: 	base += GrowthModify(Groth_ResMod,unit);
	adds	r0, r4, r0	@ tmp127, _2, tmp131
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:55: 	return base;
	lsls	r0, r0, #24	@ tmp129, tmp127,
	asrs	r0, r0, #24	@ tmp128, tmp129,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:56: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L25:
	.align	2
.L24:
	.word	Groth_ResMod
	.size	Growth_ResGetter, .-Growth_ResGetter
	.align	1
	.global	Growth_MagGetter
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Growth_MagGetter, %function
Growth_MagGetter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:59: 	s8 base = gpUnitMagicTable[unit->pCharacterData->number].Growth;
	ldr	r3, [r0]	@ unit_11(D)->pCharacterData, unit_11(D)->pCharacterData
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:62: }
	@ sp needed	@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:59: 	s8 base = gpUnitMagicTable[unit->pCharacterData->number].Growth;
	ldrb	r2, [r3, #4]	@ tmp126,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:59: 	s8 base = gpUnitMagicTable[unit->pCharacterData->number].Growth;
	ldr	r3, .L27	@ tmp128,
	ldr	r3, [r3]	@ gpUnitMagicTable, gpUnitMagicTable
	lsls	r2, r2, #1	@ tmp129, tmp126,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:58: s8 Growth_MagGetter(Unit* unit){
	movs	r1, r0	@ unit, tmp139
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:59: 	s8 base = gpUnitMagicTable[unit->pCharacterData->number].Growth;
	adds	r3, r3, r2	@ tmp130, gpUnitMagicTable, tmp129
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:60: 	base += GrowthModify(Groth_MagMod,unit);
	ldr	r0, .L27+4	@ tmp131,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:59: 	s8 base = gpUnitMagicTable[unit->pCharacterData->number].Growth;
	ldrb	r4, [r3, #1]	@ _7,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:60: 	base += GrowthModify(Groth_MagMod,unit);
	bl	GrowthModify		@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:60: 	base += GrowthModify(Groth_MagMod,unit);
	adds	r0, r4, r0	@ tmp136, _7, tmp140
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:61: 	return base;
	lsls	r0, r0, #24	@ tmp138, tmp136,
	asrs	r0, r0, #24	@ tmp137, tmp138,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:62: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L28:
	.align	2
.L27:
	.word	gpUnitMagicTable
	.word	Groth_MagMod
	.size	Growth_MagGetter, .-Growth_MagGetter
	.align	1
	.global	Growth_ChaGetter
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Growth_ChaGetter, %function
Growth_ChaGetter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:65: 	s8 base = gpUnitCharmTable[unit->pCharacterData->number].Growth;
	ldr	r3, [r0]	@ unit_11(D)->pCharacterData, unit_11(D)->pCharacterData
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:68: }
	@ sp needed	@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:65: 	s8 base = gpUnitCharmTable[unit->pCharacterData->number].Growth;
	ldrb	r2, [r3, #4]	@ tmp126,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:65: 	s8 base = gpUnitCharmTable[unit->pCharacterData->number].Growth;
	ldr	r3, .L30	@ tmp128,
	ldr	r3, [r3]	@ gpUnitCharmTable, gpUnitCharmTable
	lsls	r2, r2, #1	@ tmp129, tmp126,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:64: s8 Growth_ChaGetter(Unit* unit){
	movs	r1, r0	@ unit, tmp139
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:65: 	s8 base = gpUnitCharmTable[unit->pCharacterData->number].Growth;
	adds	r3, r3, r2	@ tmp130, gpUnitCharmTable, tmp129
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:66: 	base += GrowthModify(Groth_ChaMod,unit);
	ldr	r0, .L30+4	@ tmp131,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:65: 	s8 base = gpUnitCharmTable[unit->pCharacterData->number].Growth;
	ldrb	r4, [r3, #1]	@ _7,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:66: 	base += GrowthModify(Groth_ChaMod,unit);
	bl	GrowthModify		@
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:66: 	base += GrowthModify(Groth_ChaMod,unit);
	adds	r0, r4, r0	@ tmp136, _7, tmp140
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:67: 	return base;
	lsls	r0, r0, #24	@ tmp138, tmp136,
	asrs	r0, r0, #24	@ tmp137, tmp138,
@ ModularLevelUp/GrowthGetters/src/GrowthGetters.c:68: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L31:
	.align	2
.L30:
	.word	gpUnitCharmTable
	.word	Groth_ChaMod
	.size	Growth_ChaGetter, .-Growth_ChaGetter
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L4:
	bx	r3
