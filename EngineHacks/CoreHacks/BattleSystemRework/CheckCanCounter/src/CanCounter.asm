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
	.file	"CanCounter.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	ModularCheckCanCounter
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	ModularCheckCanCounter, %function
ModularCheckCanCounter:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:65: 	if( FALSE == bu->canCounter )
	movs	r5, r0	@ tmp144, bu
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:65: 	if( FALSE == bu->canCounter )
	movs	r3, #0	@ tmp145,
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:65: 	if( FALSE == bu->canCounter )
	adds	r5, r5, #82	@ tmp144,
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:65: 	if( FALSE == bu->canCounter )
	ldrsb	r3, [r5, r3]	@ tmp145,
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:62: void ModularCheckCanCounter(BattleUnit* bu){
	movs	r4, r0	@ bu, tmp233
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:65: 	if( FALSE == bu->canCounter )
	cmp	r3, #0	@ tmp145,
	bne	.L2		@,
.L4:
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:22: 	bu->weapon = 0;
	movs	r3, #0	@ tmp149,
	adds	r4, r4, #72	@ tmp148,
	strh	r3, [r4]	@ tmp149, bu_18(D)->weapon
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:23: 	bu->canCounter = FALSE;
	strb	r3, [r5]	@ tmp149, bu_18(D)->canCounter
.L1:
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:136: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L2:
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:80: 	if( 0xFF == bu->weaponSlotIndex ){
	movs	r3, r0	@ tmp158, bu
	adds	r3, r3, #81	@ tmp158,
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:80: 	if( 0xFF == bu->weaponSlotIndex ){
	ldrb	r3, [r3]	@ tmp159,
	cmp	r3, #255	@ tmp159,
	beq	.L4		@,
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:86: 	switch (bu->unit.statusIndex)
	movs	r3, r0	@ tmp166, bu
	adds	r3, r3, #48	@ tmp166,
	ldrb	r3, [r3]	@ *bu_18(D), *bu_18(D)
	lsls	r3, r3, #28	@ tmp170, *bu_18(D),
	lsrs	r3, r3, #28	@ _3, tmp170,
	cmp	r3, #13	@ _3,
	bhi	.L15		@,
	ldr	r2, .L23	@ tmp175,
	lsrs	r2, r2, r3	@ tmp175, tmp175, _3
	movs	r3, r2	@ tmp174, tmp175
	movs	r2, #0	@ ivtmp.27,
	movs	r6, r2	@ ivtmp.27, ivtmp.27
	lsls	r3, r3, #31	@ tmp237, tmp174,
	bpl	.L7		@,
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:22: 	bu->weapon = 0;
	adds	r4, r4, #72	@ tmp184,
	strh	r2, [r4]	@ ivtmp.27, bu_18(D)->weapon
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:23: 	bu->canCounter = FALSE;
	strb	r2, [r5]	@ ivtmp.27, bu_18(D)->canCounter
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:24: }
	b	.L1		@
.L8:
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:41: 		if( gpNoJugRangeFuncs[i](bu) )
	movs	r0, r4	@, bu
	bl	.L25		@
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:41: 		if( gpNoJugRangeFuncs[i](bu) )
	adds	r6, r6, #4	@ ivtmp.27,
	cmp	r0, #0	@ tmp234,
	beq	.L7		@,
.L6:
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:112: 	if( &gBattleActor == bu )
	ldr	r3, .L23+4	@ tmp194,
	cmp	r4, r3	@ bu, tmp194
	beq	.L1		@,
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:116:     if ((gBattleActor.weaponAttributes | gBattleTarget.weaponAttributes) & IA_UNCOUNTERABLE){
	ldr	r1, .L23+8	@ tmp196,
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:116:     if ((gBattleActor.weaponAttributes | gBattleTarget.weaponAttributes) & IA_UNCOUNTERABLE){
	ldr	r2, [r3, #76]	@ gBattleActor.weaponAttributes, gBattleActor.weaponAttributes
	ldr	r0, [r1, #76]	@ gBattleTarget.weaponAttributes, gBattleTarget.weaponAttributes
	orrs	r2, r0	@ tmp197, gBattleTarget.weaponAttributes
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:116:     if ((gBattleActor.weaponAttributes | gBattleTarget.weaponAttributes) & IA_UNCOUNTERABLE){
	movs	r6, r2	@ ivtmp.20, tmp197
	movs	r0, #128	@ tmp200,
	ands	r6, r0	@ ivtmp.20, tmp200
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:116:     if ((gBattleActor.weaponAttributes | gBattleTarget.weaponAttributes) & IA_UNCOUNTERABLE){
	tst	r2, r0	@ tmp197, tmp200
	bne	.L4		@,
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:122:     if (gBattleActor.unit.statusIndex == UNIT_STATUS_BERSERK){
	movs	r2, r3	@ tmp204, tmp194
	adds	r2, r2, #48	@ tmp204,
	ldrb	r2, [r2]	@ gBattleActor, gBattleActor
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:122:     if (gBattleActor.unit.statusIndex == UNIT_STATUS_BERSERK){
	subs	r0, r0, #113	@ tmp208,
	ands	r2, r0	@ tmp209, tmp208
	cmp	r2, #4	@ tmp209,
	bne	.L12		@,
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:14: 	if( unit->index < 0x40 )
	movs	r2, #11	@ tmp214,
	ldrsb	r2, [r1, r2]	@ tmp214,
	cmp	r2, #63	@ tmp214,
	bgt	.L12		@,
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:123:         if ( isUnitAlly(&gBattleActor.unit) & isUnitAlly(&gBattleTarget.unit) )
	ldrb	r3, [r3, #11]	@ tmp218,
	lsls	r3, r3, #24	@ tmp218, tmp218,
	asrs	r3, r3, #24	@ tmp218, tmp218,
	cmp	r3, #63	@ tmp218,
	ble	.L4		@,
.L12:
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:49: 		for(int i=0; 0 != gpNullCounterFuncs[i]; i++)
	ldr	r3, .L23+12	@ tmp220,
	ldr	r3, [r3]	@ gpNullCounterFuncs, gpNullCounterFuncs
	ldr	r3, [r3, r6]	@ _52, *_59
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:49: 		for(int i=0; 0 != gpNullCounterFuncs[i]; i++)
	cmp	r3, #0	@ _52,
	beq	.L1		@,
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:50: 		if( gpNullCounterFuncs[i]() )
	bl	.L25		@
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:50: 		if( gpNullCounterFuncs[i]() )
	adds	r6, r6, #4	@ ivtmp.20,
	cmp	r0, #0	@ tmp235,
	beq	.L12		@,
	b	.L4		@
.L15:
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:86: 	switch (bu->unit.statusIndex)
	movs	r6, #0	@ ivtmp.27,
.L7:
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:40: 	for(int i=0; 0 != gpNoJugRangeFuncs[i]; i++)
	ldr	r3, .L23+16	@ tmp193,
	ldr	r3, [r3]	@ gpNoJugRangeFuncs, gpNoJugRangeFuncs
	ldr	r3, [r3, r6]	@ _43, *_50
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:40: 	for(int i=0; 0 != gpNoJugRangeFuncs[i]; i++)
	cmp	r3, #0	@ _43,
	bne	.L8		@,
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:100: 		if( !CanItemReachRange(bu,bu->weapon,gBattleStats.range) ){
	ldr	r3, .L23+20	@ tmp221,
	ldrb	r6, [r3, #2]	@ _6,
	movs	r3, r4	@ tmp224, bu
	adds	r3, r3, #72	@ tmp224,
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:56: 	return !( prMaxRangeGetter(item,&bu->unit) < range) ;
	ldrh	r0, [r3]	@ tmp225,
	movs	r1, r4	@, bu
	ldr	r3, .L23+24	@ tmp226,
	bl	.L25		@
@ BattleSystemRework/CheckCanCounter/src/CanCounter.c:100: 		if( !CanItemReachRange(bu,bu->weapon,gBattleStats.range) ){
	cmp	r0, r6	@ tmp236, _6
	bcs	.L6		@,
	b	.L4		@
.L24:
	.align	2
.L23:
	.word	10244
	.word	gBattleActor
	.word	gBattleTarget
	.word	gpNullCounterFuncs
	.word	gpNoJugRangeFuncs
	.word	gBattleStats
	.word	prMaxRangeGetter
	.size	ModularCheckCanCounter, .-ModularCheckCanCounter
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L25:
	bx	r3
