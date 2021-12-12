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
	.file	"MakeBattleHit.c"
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
	.type	_BattleGenerateRoundHits.part.0, %function
_BattleGenerateRoundHits.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:167: 		if (BattleGenerateHit(actor, target))
	ldr	r3, .L2	@ tmp118,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:172: }
	@ sp needed	@
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:167: 		if (BattleGenerateHit(actor, target))
	bl	.L4		@
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:167: 		if (BattleGenerateHit(actor, target))
	subs	r3, r0, #1	@ tmp124, tmp127
	sbcs	r0, r0, r3	@ tmp123, tmp127, tmp124
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:172: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L3:
	.align	2
.L2:
	.word	BattleGenerateHit
	.size	_BattleGenerateRoundHits.part.0, .-_BattleGenerateRoundHits.part.0
	.align	1
	.global	CheckVantage
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	CheckVantage, %function
CheckVantage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:17: 	for(int i=0; gpCheckVantageTable[i]; i++)
	movs	r4, #0	@ ivtmp.49,
.L6:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:17: 	for(int i=0; gpCheckVantageTable[i]; i++)
	ldr	r3, .L10	@ tmp121,
	ldr	r3, [r3]	@ gpCheckVantageTable, gpCheckVantageTable
	ldr	r3, [r3, r4]	@ _6, *_5
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:17: 	for(int i=0; gpCheckVantageTable[i]; i++)
	cmp	r3, #0	@ _6,
	bne	.L8		@,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:21: 	return FALSE;
	movs	r0, r3	@ <retval>, _6
.L5:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:22: }
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L8:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:18: 		if( gpCheckVantageTable[i](&gBattleTarget) )
	ldr	r0, .L10+4	@ tmp119,
	bl	.L4		@
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:18: 		if( gpCheckVantageTable[i](&gBattleTarget) )
	adds	r4, r4, #4	@ ivtmp.49,
	cmp	r0, #0	@ tmp123,
	beq	.L6		@,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:19: 			return TRUE;
	movs	r0, #1	@ <retval>,
	b	.L5		@
.L11:
	.align	2
.L10:
	.word	gpCheckVantageTable
	.word	gBattleTarget
	.size	CheckVantage, .-CheckVantage
	.align	1
	.global	CheckDesperation
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	CheckDesperation, %function
CheckDesperation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:26: 	for(int i=0; gpCheckDesperationTable[i]; i++)
	movs	r4, #0	@ ivtmp.59,
.L13:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:26: 	for(int i=0; gpCheckDesperationTable[i]; i++)
	ldr	r3, .L17	@ tmp121,
	ldr	r3, [r3]	@ gpCheckDesperationTable, gpCheckDesperationTable
	ldr	r3, [r3, r4]	@ _6, *_5
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:26: 	for(int i=0; gpCheckDesperationTable[i]; i++)
	cmp	r3, #0	@ _6,
	bne	.L15		@,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:30: 	return FALSE;
	movs	r0, r3	@ <retval>, _6
.L12:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:31: }
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L15:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:27: 		if( gpCheckDesperationTable[i](&gBattleActor) )
	ldr	r0, .L17+4	@ tmp119,
	bl	.L4		@
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:27: 		if( gpCheckDesperationTable[i](&gBattleActor) )
	adds	r4, r4, #4	@ ivtmp.59,
	cmp	r0, #0	@ tmp123,
	beq	.L13		@,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:28: 			return TRUE;
	movs	r0, #1	@ <retval>,
	b	.L12		@
.L18:
	.align	2
.L17:
	.word	gpCheckDesperationTable
	.word	gBattleActor
	.size	CheckDesperation, .-CheckDesperation
	.align	1
	.global	CheckDoubleLoop
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	CheckDoubleLoop, %function
CheckDoubleLoop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:33: int CheckDoubleLoop(BattleUnit* actor, BattleUnit* target){
	movs	r5, r0	@ actor, tmp124
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:35: 	for(int i=0; gpCheckDoubleTable[i]; i++)
	movs	r4, #0	@ ivtmp.68,
.L20:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:35: 	for(int i=0; gpCheckDoubleTable[i]; i++)
	ldr	r3, .L24	@ tmp122,
	ldr	r3, [r3]	@ gpCheckDoubleTable, gpCheckDoubleTable
	ldr	r3, [r3, r4]	@ _6, *_5
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:35: 	for(int i=0; gpCheckDoubleTable[i]; i++)
	cmp	r3, #0	@ _6,
	bne	.L22		@,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:39: 	return FALSE;	
	movs	r0, r3	@ <retval>, _6
.L19:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:40: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L22:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:36: 		if( gpCheckDoubleTable[i](actor) )
	movs	r0, r5	@, actor
	bl	.L4		@
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:36: 		if( gpCheckDoubleTable[i](actor) )
	adds	r4, r4, #4	@ ivtmp.68,
	cmp	r0, #0	@ tmp125,
	beq	.L20		@,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:37: 			return TRUE;
	movs	r0, #1	@ <retval>,
	b	.L19		@
.L25:
	.align	2
.L24:
	.word	gpCheckDoubleTable
	.size	CheckDoubleLoop, .-CheckDoubleLoop
	.align	1
	.global	CheckNullDoubleLoop
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	CheckNullDoubleLoop, %function
CheckNullDoubleLoop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:43: int CheckNullDoubleLoop(BattleUnit* actor, BattleUnit* target){
	movs	r5, r0	@ actor, tmp124
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:45: 	for(int i=0; gpCheckNullDoubleTable[i]; i++)
	movs	r4, #0	@ ivtmp.77,
.L27:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:45: 	for(int i=0; gpCheckNullDoubleTable[i]; i++)
	ldr	r3, .L31	@ tmp122,
	ldr	r3, [r3]	@ gpCheckNullDoubleTable, gpCheckNullDoubleTable
	ldr	r3, [r3, r4]	@ _6, *_5
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:45: 	for(int i=0; gpCheckNullDoubleTable[i]; i++)
	cmp	r3, #0	@ _6,
	bne	.L29		@,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:49: 	return FALSE;	
	movs	r0, r3	@ <retval>, _6
.L26:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:50: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L29:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:46: 		if( gpCheckNullDoubleTable[i](actor) )
	movs	r0, r5	@, actor
	bl	.L4		@
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:46: 		if( gpCheckNullDoubleTable[i](actor) )
	adds	r4, r4, #4	@ ivtmp.77,
	cmp	r0, #0	@ tmp125,
	beq	.L27		@,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:47: 			return TRUE;
	movs	r0, #1	@ <retval>,
	b	.L26		@
.L32:
	.align	2
.L31:
	.word	gpCheckNullDoubleTable
	.size	CheckNullDoubleLoop, .-CheckNullDoubleLoop
	.align	1
	.global	CanDouble
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	CanDouble, %function
CanDouble:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:192: 	if( actor->battleSpeed < target->battleSpeed )
	movs	r3, r0	@ tmp126, actor
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:189: int CanDouble(BattleUnit* actor, BattleUnit* target){
	push	{r4, r5, r6, lr}	@
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:192: 	if( actor->battleSpeed < target->battleSpeed )
	adds	r3, r3, #94	@ tmp126,
	movs	r2, #0	@ tmp148,
	ldrsh	r3, [r3, r2]	@ _1, tmp126, tmp148
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:192: 	if( actor->battleSpeed < target->battleSpeed )
	movs	r2, r1	@ tmp129, target
	adds	r2, r2, #94	@ tmp129,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:189: int CanDouble(BattleUnit* actor, BattleUnit* target){
	movs	r6, r1	@ target, tmp144
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:192: 	if( actor->battleSpeed < target->battleSpeed )
	movs	r1, #0	@ tmp149,
	ldrsh	r2, [r2, r1]	@ _2, tmp129, tmp149
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:189: int CanDouble(BattleUnit* actor, BattleUnit* target){
	movs	r5, r0	@ actor, tmp143
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:193: 		can = FALSE;
	movs	r4, #0	@ <retval>,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:192: 	if( actor->battleSpeed < target->battleSpeed )
	cmp	r3, r2	@ _1, _2
	blt	.L34		@,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:195: 	else if( (actor->battleSpeed - target->battleSpeed) > BATTLE_FOLLOWUP_SPEED_THRESHOLD )
	subs	r3, r3, r2	@ tmp130, _1, _2
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:195: 	else if( (actor->battleSpeed - target->battleSpeed) > BATTLE_FOLLOWUP_SPEED_THRESHOLD )
	movs	r2, #1	@ tmp131,
	cmp	r3, #4	@ tmp130,
	bgt	.L35		@,
	movs	r2, r4	@ tmp131, <retval>
.L35:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:193: 		can = FALSE;
	movs	r4, r2	@ <retval>, tmp131
.L34:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:202: 	if( CheckDoubleLoop(actor,target) )
	movs	r1, r6	@, target
	movs	r0, r5	@, actor
	bl	CheckDoubleLoop		@
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:202: 	if( CheckDoubleLoop(actor,target) )
	cmp	r0, #0	@ tmp145,
	beq	.L36		@,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:203: 		can = TRUE;
	movs	r4, #1	@ <retval>,
.L36:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:209: }
	@ sp needed	@
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:205: 	if( CheckNullDoubleLoop(actor,target) )
	movs	r1, r6	@, target
	movs	r0, r5	@, actor
	bl	CheckNullDoubleLoop		@
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:206: 		can = FALSE;
	rsbs	r3, r0, #0	@ tmp136, tmp146
	adcs	r0, r0, r3	@ tmp135, tmp146, tmp136
	rsbs	r0, r0, #0	@ tmp137, tmp135
	ands	r4, r0	@ <retval>, tmp137
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:209: }
	movs	r0, r4	@, <retval>
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
	.size	CanDouble, .-CanDouble
	.align	1
	.global	new_BattleUnwind
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	new_BattleUnwind, %function
new_BattleUnwind:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:91: 	s8 round[4] = {0};
	movs	r3, #0	@ tmp149,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:90: void new_BattleUnwind(){
	push	{r4, r5, r6, r7, lr}	@
	sub	sp, sp, #20	@,,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:91: 	s8 round[4] = {0};
	str	r3, [sp, #12]	@ tmp149, round
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:94: 	if( CheckVantage() )
	bl	CheckVantage		@
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:92: 	s8 roundInfo = 0;
	subs	r3, r0, #1	@ tmp152, tmp227
	sbcs	r0, r0, r3	@ tmp227, tmp227, tmp152
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:97: 	if( CanDouble(&gBattleActor, &gBattleTarget) )
	ldr	r7, .L74	@ tmp154,
	ldr	r6, .L74+4	@ tmp155,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:92: 	s8 roundInfo = 0;
	movs	r4, r0	@ roundInfo, tmp227
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:97: 	if( CanDouble(&gBattleActor, &gBattleTarget) )
	movs	r1, r7	@, tmp154
	movs	r0, r6	@, tmp155
	bl	CanDouble		@
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:97: 	if( CanDouble(&gBattleActor, &gBattleTarget) )
	cmp	r0, #0	@ tmp228,
	beq	.L45		@,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:100: 		if( CheckDesperation() )
	bl	CheckDesperation		@
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:101: 			roundInfo |= UNWIND_DESPERA;
	movs	r3, #2	@ tmp157,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:100: 		if( CheckDesperation() )
	cmp	r0, #0	@ tmp229,
	bne	.L72		@,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:103: 			roundInfo |= UNWIND_DOUBLE_ACT;	
	movs	r3, #4	@ tmp160,
.L72:
	orrs	r4, r3	@ roundInfo, tmp160
.L45:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:105: 	if( CanDouble(&gBattleTarget, &gBattleActor) )
	movs	r1, r6	@, tmp155
	movs	r0, r7	@, tmp154
	bl	CanDouble		@
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:105: 	if( CanDouble(&gBattleTarget, &gBattleActor) )
	cmp	r0, #0	@ tmp230,
	beq	.L47		@,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:106: 		roundInfo |= UNWIND_DOUBLE_TAR;
	movs	r3, #8	@ tmp165,
	orrs	r4, r3	@ roundInfo, tmp165
.L47:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:109: 		round[i] = RoundArr[i+roundInfo*4];
	lsls	r3, r4, #2	@ _6, roundInfo,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:108: 	for( int i=0; i<4; i++)
	movs	r4, #0	@ i,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:109: 		round[i] = RoundArr[i+roundInfo*4];
	ldr	r2, .L74+8	@ tmp168,
	adds	r3, r2, r3	@ tmp169, tmp168, _6
.L48:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:109: 		round[i] = RoundArr[i+roundInfo*4];
	ldrb	r2, [r3, r4]	@ MEM[(unsigned char *)_74 + _75 * 1], MEM[(unsigned char *)_74 + _75 * 1]
	add	r1, sp, #12	@ tmp236,,
	strb	r2, [r1, r4]	@ MEM[(unsigned char *)_74 + _75 * 1], MEM[(signed char *)&round + _75 * 1]
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:108: 	for( int i=0; i<4; i++)
	adds	r4, r4, #1	@ i,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:108: 	for( int i=0; i<4; i++)
	cmp	r4, #4	@ i,
	bne	.L48		@,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:113: 	ClearBattleHits();
	ldr	r3, .L74+12	@ tmp172,
	bl	.L4		@
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:114: 	gBattleHitIterator->info |= BATTLE_HIT_INFO_BEGIN;
	movs	r1, #8	@ tmp237,
	ldr	r5, .L74+16	@ tmp173,
	ldr	r2, [r5]	@ gBattleHitIterator.16_10, gBattleHitIterator
	ldrb	r3, [r2, #2]	@ tmp177,
	orrs	r3, r1	@ tmp179, tmp237
	strb	r3, [r2, #2]	@ tmp179,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:117: 	for( int i=0; i<4; i++)
	movs	r3, #0	@ i,
	str	r3, [sp, #4]	@ i, %sfp
.L57:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:120: 		if( (ACT_ATTACK == round[i]) )
	ldr	r2, [sp, #4]	@ i, %sfp
	add	r3, sp, #12	@ tmp241,,
	ldrsb	r3, [r3, r2]	@ _13, MEM[(signed char *)&round + _79 * 1]
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:120: 		if( (ACT_ATTACK == round[i]) )
	cmp	r3, #1	@ _13,
	bne	.L49		@,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:157: 	if (!actor->weapon)
	movs	r3, r6	@ tmp185, tmp155
	adds	r3, r3, #72	@ tmp185,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:157: 	if (!actor->weapon)
	ldrh	r3, [r3]	@ tmp186,
	cmp	r3, #0	@ tmp186,
	bne	.L50		@,
.L55:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:131: 				gBattleHitIterator->attributes |= BATTLE_HIT_ATTR_RETALIATE;
	movs	r1, #8	@ tmp245,
	ldr	r2, [r5]	@ gBattleHitIterator.20_19, gBattleHitIterator
	ldr	r3, [r2]	@ tmp200,* gBattleHitIterator.20_19
	orrs	r3, r1	@ tmp199, tmp245
	str	r3, [r2]	@ tmp199,* gBattleHitIterator.20_19
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:138: 		if( (1==i) | (2==i) )
	ldr	r3, [sp, #4]	@ i, %sfp
	subs	r3, r3, #1	@ tmp204,
	cmp	r3, #1	@ tmp204,
	bhi	.L56		@,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:139: 			gBattleHitIterator->attributes = BATTLE_HIT_ATTR_FOLLOWUP;
	ldr	r2, [r5]	@ gBattleHitIterator, gBattleHitIterator
	ldr	r3, [r2]	@ tmp208,* gBattleHitIterator
	lsrs	r3, r3, #19	@ tmp210, tmp208,
	lsls	r3, r3, #19	@ tmp209, tmp210,
	orrs	r3, r4	@ tmp211, tmp226
	str	r3, [r2]	@ tmp211,* gBattleHitIterator
.L56:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:117: 	for( int i=0; i<4; i++)
	ldr	r3, [sp, #4]	@ i, %sfp
	adds	r3, r3, #1	@ i,
	str	r3, [sp, #4]	@ i, %sfp
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:117: 	for( int i=0; i<4; i++)
	cmp	r3, #4	@ i,
	bne	.L57		@,
	b	.L53		@
.L50:
	movs	r1, r7	@, tmp154
	movs	r0, r6	@, tmp155
.L73:
	bl	_BattleGenerateRoundHits.part.0		@
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:130: 			if(!_BattleGenerateRoundHits(&gBattleTarget, &gBattleActor))
	cmp	r0, #0	@ tmp232,
	beq	.L55		@,
.L53:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:143: 	gBattleHitIterator->info |= BATTLE_HIT_INFO_END;
	movs	r1, #128	@ tmp214,
	ldr	r2, [r5]	@ gBattleHitIterator.24_25, gBattleHitIterator
	ldrb	r3, [r2, #2]	@ tmp217,
	orrs	r3, r1	@ tmp219, tmp214
	strb	r3, [r2, #2]	@ tmp219,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:144: }
	add	sp, sp, #20	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L49:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:128: 		else if( (TAR_ATTACK == round[i]) )
	cmp	r3, #2	@ _13,
	bne	.L53		@,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:157: 	if (!actor->weapon)
	movs	r3, r7	@ tmp196, tmp154
	adds	r3, r3, #72	@ tmp196,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:157: 	if (!actor->weapon)
	ldrh	r3, [r3]	@ tmp197,
	cmp	r3, #0	@ tmp197,
	beq	.L55		@,
	movs	r1, r6	@, tmp155
	movs	r0, r7	@, tmp154
	b	.L73		@
.L75:
	.align	2
.L74:
	.word	gBattleTarget
	.word	gBattleActor
	.word	.LANCHOR0
	.word	ClearBattleHits
	.word	gBattleHitIterator
	.size	new_BattleUnwind, .-new_BattleUnwind
	.align	1
	.global	new_BattleGetFollowUpOrder
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	new_BattleGetFollowUpOrder, %function
new_BattleGetFollowUpOrder:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:218:     if ( CanDouble(&gBattleActor, &gBattleTarget) ) 
	ldr	r7, .L85	@ tmp130,
	ldr	r4, .L85+4	@ tmp129,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:214: s8 new_BattleGetFollowUpOrder(BattleUnit** outAttacker, BattleUnit** outDefender) {
	movs	r5, r0	@ outAttacker, tmp153
	movs	r6, r1	@ outDefender, tmp154
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:218:     if ( CanDouble(&gBattleActor, &gBattleTarget) ) 
	movs	r0, r7	@, tmp130
	movs	r1, r4	@, tmp129
	bl	CanDouble		@
	movs	r1, r7	@ _28, tmp130
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:218:     if ( CanDouble(&gBattleActor, &gBattleTarget) ) 
	cmp	r0, #0	@ tmp155,
	bne	.L77		@,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:223: 	else if( CanDouble( &gBattleTarget, &gBattleActor ) )
	movs	r0, r4	@, _30
	bl	CanDouble		@
	movs	r1, r4	@ _28, _30
	movs	r4, r7	@ _30, tmp130
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:223: 	else if( CanDouble( &gBattleTarget, &gBattleActor ) )
	cmp	r0, #0	@ tmp156,
	bne	.L77		@,
.L79:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:229: 		return FALSE;
	movs	r0, #0	@ <retval>,
.L78:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:238: }
	@ sp needed	@
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L77:
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:220:         *outAttacker = &gBattleActor;
	str	r1, [r5]	@ _28, *outAttacker_17(D)
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:221:         *outDefender = &gBattleTarget;
	str	r4, [r6]	@ _30, *outDefender_19(D)
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:231:     if (GetItemWeaponEffect((*outAttacker)->weaponBefore) == WPN_EFFECT_HPHALVE)
	ldr	r3, [r5]	@ *outAttacker_17(D), *outAttacker_17(D)
	adds	r3, r3, #74	@ tmp136,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:231:     if (GetItemWeaponEffect((*outAttacker)->weaponBefore) == WPN_EFFECT_HPHALVE)
	ldrh	r0, [r3]	@ tmp137,
	ldr	r3, .L85+8	@ tmp138,
	bl	.L4		@
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:231:     if (GetItemWeaponEffect((*outAttacker)->weaponBefore) == WPN_EFFECT_HPHALVE)
	cmp	r0, #3	@ tmp157,
	beq	.L79		@,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:234:     if (GetItemIndex((*outAttacker)->weapon) == ITEM_MONSTER_STONE)
	ldr	r3, [r5]	@ *outAttacker_17(D), *outAttacker_17(D)
	adds	r3, r3, #72	@ tmp142,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:234:     if (GetItemIndex((*outAttacker)->weapon) == ITEM_MONSTER_STONE)
	ldrh	r0, [r3]	@ tmp143,
	ldr	r3, .L85+12	@ tmp144,
	bl	.L4		@
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:234:     if (GetItemIndex((*outAttacker)->weapon) == ITEM_MONSTER_STONE)
	subs	r0, r0, #181	@ tmp149,
@ BattleSystemRework/MakeBattleHit/src/MakeBattleHit.c:229: 		return FALSE;
	subs	r3, r0, #1	@ tmp150, tmp149
	sbcs	r0, r0, r3	@ <retval>, tmp149, tmp150
	b	.L78		@
.L86:
	.align	2
.L85:
	.word	gBattleActor
	.word	gBattleTarget
	.word	GetItemWeaponEffect
	.word	GetItemIndex
	.size	new_BattleGetFollowUpOrder, .-new_BattleGetFollowUpOrder
	.section	.rodata
	.set	.LANCHOR0,. + 0
	.type	RoundArr, %object
	.size	RoundArr, 56
RoundArr:
	.ascii	"\001\002\000\000\002\001\000\000\001\001\002\000\002"
	.ascii	"\001\001\000\001\002\001\000\002\001\001\000\001\002"
	.ascii	"\000\000\001\002\000\000\001\002\002\000\002\001\002"
	.ascii	"\000\001\001\002\002\002\001\001\002\001\002\001\002"
	.ascii	"\002\001\002\001"
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.text
	.code 16
	.align	1
.L4:
	bx	r3
