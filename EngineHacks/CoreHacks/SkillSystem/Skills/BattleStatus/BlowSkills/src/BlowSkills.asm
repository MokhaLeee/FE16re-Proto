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
	.file	"BlowSkills.c"
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
	.type	CheckBlow.part.0, %function
CheckBlow.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:10: 		if( TRUE == (*SkillTester)((Unit*)attacker,skillId) )
	ldr	r3, .L2	@ tmp119,
	ldr	r2, .L2+4	@ tmp120,
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:8: static int CheckBlow(BattleUnit* attacker, BattleUnit* defender, u8 skillId){
	movs	r1, r0	@ skillId, tmp127
	push	{r4, lr}	@
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:10: 		if( TRUE == (*SkillTester)((Unit*)attacker,skillId) )
	movs	r0, r3	@ tmp119, tmp119
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:13: }
	@ sp needed	@
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:10: 		if( TRUE == (*SkillTester)((Unit*)attacker,skillId) )
	ldr	r2, [r2]	@ SkillTester, SkillTester
	bl	.L4		@
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:10: 		if( TRUE == (*SkillTester)((Unit*)attacker,skillId) )
	subs	r0, r0, #1	@ tmp125,
	rsbs	r3, r0, #0	@ tmp126, tmp125
	adcs	r0, r0, r3	@ tmp124, tmp125, tmp126
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:13: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L3:
	.align	2
.L2:
	.word	gBattleActor
	.word	SkillTester
	.size	CheckBlow.part.0, .-CheckBlow.part.0
	.align	1
	.global	DartingBlow
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	DartingBlow, %function
DartingBlow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:18: {	return CheckBlow(atk,def,BlowDartingID)?6:0; }
	ldr	r3, .L9	@ tmp118,
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:9: 	if( &gBattleActor == attacker )
	ldr	r2, .L9+4	@ tmp119,
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:18: {	return CheckBlow(atk,def,BlowDartingID)?6:0; }
	ldrb	r3, [r3]	@ BlowDartingID.1_1, BlowDartingID
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:9: 	if( &gBattleActor == attacker )
	cmp	r2, r0	@ tmp119, tmp121
	bne	.L6		@,
	movs	r0, r3	@, BlowDartingID.1_1
	bl	CheckBlow.part.0		@
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:18: {	return CheckBlow(atk,def,BlowDartingID)?6:0; }
	movs	r3, #6	@ <retval>,
	cmp	r0, #0	@ tmp122,
	bne	.L7		@,
.L6:
	movs	r3, #0	@ <retval>,
.L7:
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:18: {	return CheckBlow(atk,def,BlowDartingID)?6:0; }
	@ sp needed	@
	movs	r0, r3	@, <retval>
	pop	{r4}
	pop	{r1}
	bx	r1
.L10:
	.align	2
.L9:
	.word	BlowDartingID
	.word	gBattleActor
	.size	DartingBlow, .-DartingBlow
	.align	1
	.global	DeathBlow
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	DeathBlow, %function
DeathBlow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:22: {	return CheckBlow(atk,def,BlowDeathID)?6:0; }
	ldr	r3, .L15	@ tmp118,
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:9: 	if( &gBattleActor == attacker )
	ldr	r2, .L15+4	@ tmp119,
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:22: {	return CheckBlow(atk,def,BlowDeathID)?6:0; }
	ldrb	r3, [r3]	@ BlowDeathID.4_1, BlowDeathID
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:9: 	if( &gBattleActor == attacker )
	cmp	r2, r0	@ tmp119, tmp121
	bne	.L12		@,
	movs	r0, r3	@, BlowDeathID.4_1
	bl	CheckBlow.part.0		@
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:22: {	return CheckBlow(atk,def,BlowDeathID)?6:0; }
	movs	r3, #6	@ <retval>,
	cmp	r0, #0	@ tmp122,
	bne	.L13		@,
.L12:
	movs	r3, #0	@ <retval>,
.L13:
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:22: {	return CheckBlow(atk,def,BlowDeathID)?6:0; }
	@ sp needed	@
	movs	r0, r3	@, <retval>
	pop	{r4}
	pop	{r1}
	bx	r1
.L16:
	.align	2
.L15:
	.word	BlowDeathID
	.word	gBattleActor
	.size	DeathBlow, .-DeathBlow
	.align	1
	.global	ArmoredBlow
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	ArmoredBlow, %function
ArmoredBlow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:26: {	return CheckBlow(atk,def,BlowArmoredID)?6:0; }
	ldr	r3, .L21	@ tmp118,
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:9: 	if( &gBattleActor == attacker )
	ldr	r2, .L21+4	@ tmp119,
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:26: {	return CheckBlow(atk,def,BlowArmoredID)?6:0; }
	ldrb	r3, [r3]	@ BlowArmoredID.6_1, BlowArmoredID
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:9: 	if( &gBattleActor == attacker )
	cmp	r2, r0	@ tmp119, tmp121
	bne	.L18		@,
	movs	r0, r3	@, BlowArmoredID.6_1
	bl	CheckBlow.part.0		@
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:26: {	return CheckBlow(atk,def,BlowArmoredID)?6:0; }
	movs	r3, #6	@ <retval>,
	cmp	r0, #0	@ tmp122,
	bne	.L19		@,
.L18:
	movs	r3, #0	@ <retval>,
.L19:
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:26: {	return CheckBlow(atk,def,BlowArmoredID)?6:0; }
	@ sp needed	@
	movs	r0, r3	@, <retval>
	pop	{r4}
	pop	{r1}
	bx	r1
.L22:
	.align	2
.L21:
	.word	BlowArmoredID
	.word	gBattleActor
	.size	ArmoredBlow, .-ArmoredBlow
	.align	1
	.global	FiendishBlow
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	FiendishBlow, %function
FiendishBlow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:30: {	return CheckBlow(atk,def,BlowFiendishID)?6:0; }
	ldr	r3, .L27	@ tmp118,
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:9: 	if( &gBattleActor == attacker )
	ldr	r2, .L27+4	@ tmp119,
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:30: {	return CheckBlow(atk,def,BlowFiendishID)?6:0; }
	ldrb	r3, [r3]	@ BlowFiendishID.8_1, BlowFiendishID
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:9: 	if( &gBattleActor == attacker )
	cmp	r2, r0	@ tmp119, tmp121
	bne	.L24		@,
	movs	r0, r3	@, BlowFiendishID.8_1
	bl	CheckBlow.part.0		@
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:30: {	return CheckBlow(atk,def,BlowFiendishID)?6:0; }
	movs	r3, #6	@ <retval>,
	cmp	r0, #0	@ tmp122,
	bne	.L25		@,
.L24:
	movs	r3, #0	@ <retval>,
.L25:
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:30: {	return CheckBlow(atk,def,BlowFiendishID)?6:0; }
	@ sp needed	@
	movs	r0, r3	@, <retval>
	pop	{r4}
	pop	{r1}
	bx	r1
.L28:
	.align	2
.L27:
	.word	BlowFiendishID
	.word	gBattleActor
	.size	FiendishBlow, .-FiendishBlow
	.align	1
	.global	WardingBlow
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	WardingBlow, %function
WardingBlow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:34: {	return CheckBlow(atk,def,BlowWardingID)?6:0; }
	ldr	r3, .L33	@ tmp118,
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:9: 	if( &gBattleActor == attacker )
	ldr	r2, .L33+4	@ tmp119,
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:34: {	return CheckBlow(atk,def,BlowWardingID)?6:0; }
	ldrb	r3, [r3]	@ BlowWardingID.10_1, BlowWardingID
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:9: 	if( &gBattleActor == attacker )
	cmp	r2, r0	@ tmp119, tmp121
	bne	.L30		@,
	movs	r0, r3	@, BlowWardingID.10_1
	bl	CheckBlow.part.0		@
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:34: {	return CheckBlow(atk,def,BlowWardingID)?6:0; }
	movs	r3, #6	@ <retval>,
	cmp	r0, #0	@ tmp122,
	bne	.L31		@,
.L30:
	movs	r3, #0	@ <retval>,
.L31:
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:34: {	return CheckBlow(atk,def,BlowWardingID)?6:0; }
	@ sp needed	@
	movs	r0, r3	@, <retval>
	pop	{r4}
	pop	{r1}
	bx	r1
.L34:
	.align	2
.L33:
	.word	BlowWardingID
	.word	gBattleActor
	.size	WardingBlow, .-WardingBlow
	.align	1
	.global	DuelistsBlow
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	DuelistsBlow, %function
DuelistsBlow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:38: {	return CheckBlow(atk,def,BlowDuelistID)?20:0; }
	ldr	r3, .L39	@ tmp118,
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:9: 	if( &gBattleActor == attacker )
	ldr	r2, .L39+4	@ tmp119,
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:38: {	return CheckBlow(atk,def,BlowDuelistID)?20:0; }
	ldrb	r3, [r3]	@ BlowDuelistID.12_1, BlowDuelistID
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:9: 	if( &gBattleActor == attacker )
	cmp	r2, r0	@ tmp119, tmp121
	bne	.L36		@,
	movs	r0, r3	@, BlowDuelistID.12_1
	bl	CheckBlow.part.0		@
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:38: {	return CheckBlow(atk,def,BlowDuelistID)?20:0; }
	movs	r3, #20	@ <retval>,
	cmp	r0, #0	@ tmp122,
	bne	.L37		@,
.L36:
	movs	r3, #0	@ <retval>,
.L37:
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:38: {	return CheckBlow(atk,def,BlowDuelistID)?20:0; }
	@ sp needed	@
	movs	r0, r3	@, <retval>
	pop	{r4}
	pop	{r1}
	bx	r1
.L40:
	.align	2
.L39:
	.word	BlowDuelistID
	.word	gBattleActor
	.size	DuelistsBlow, .-DuelistsBlow
	.align	1
	.global	UncannyBlow
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	UncannyBlow, %function
UncannyBlow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:42: {	return CheckBlow(atk,def,BlowUncannyID)?30:0; }
	ldr	r3, .L45	@ tmp118,
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:9: 	if( &gBattleActor == attacker )
	ldr	r2, .L45+4	@ tmp119,
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:42: {	return CheckBlow(atk,def,BlowUncannyID)?30:0; }
	ldrb	r3, [r3]	@ BlowUncannyID.14_1, BlowUncannyID
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:9: 	if( &gBattleActor == attacker )
	cmp	r2, r0	@ tmp119, tmp121
	bne	.L42		@,
	movs	r0, r3	@, BlowUncannyID.14_1
	bl	CheckBlow.part.0		@
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:42: {	return CheckBlow(atk,def,BlowUncannyID)?30:0; }
	movs	r3, #30	@ <retval>,
	cmp	r0, #0	@ tmp122,
	bne	.L43		@,
.L42:
	movs	r3, #0	@ <retval>,
.L43:
@ SkillSystem/Skills/BattleStatus/BlowSkills/src/BlowSkills.c:42: {	return CheckBlow(atk,def,BlowUncannyID)?30:0; }
	@ sp needed	@
	movs	r0, r3	@, <retval>
	pop	{r4}
	pop	{r1}
	bx	r1
.L46:
	.align	2
.L45:
	.word	BlowUncannyID
	.word	gBattleActor
	.size	UncannyBlow, .-UncannyBlow
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L4:
	bx	r2
