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
	.file	"CheckFuncs.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	AutoNoJugRange_BySkillId
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	AutoNoJugRange_BySkillId, %function
AutoNoJugRange_BySkillId:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:18: int AutoNoJugRange_BySkillId(BattleUnit* bu){
	movs	r5, r0	@ bu, tmp125
	ldr	r4, .L6	@ ivtmp.13,
.L2:
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:20: 	for(int i=0; NoJugRange_SkillIDs[i]!=0; i++)
	ldrb	r1, [r4]	@ _5, MEM[(unsigned char *)_17]
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:20: 	for(int i=0; NoJugRange_SkillIDs[i]!=0; i++)
	cmp	r1, #0	@ _5,
	bne	.L4		@,
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:23: 	return FALSE;
	movs	r0, r1	@ <retval>, _5
.L1:
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:24: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L4:
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:21: 		if( (*SkillTester)(&bu->unit,NoJugRange_SkillIDs[i]) )
	ldr	r3, .L6+4	@ tmp122,
	movs	r0, r5	@, bu
	ldr	r3, [r3]	@ SkillTester, SkillTester
	bl	.L8		@
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:21: 		if( (*SkillTester)(&bu->unit,NoJugRange_SkillIDs[i]) )
	adds	r4, r4, #1	@ ivtmp.13,
	cmp	r0, #0	@ tmp126,
	beq	.L2		@,
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:22: 			return TRUE;
	movs	r0, #1	@ <retval>,
	b	.L1		@
.L7:
	.align	2
.L6:
	.word	NoJugRange_SkillIDs
	.word	SkillTester
	.size	AutoNoJugRange_BySkillId, .-AutoNoJugRange_BySkillId
	.align	1
	.global	AutoNullCounter_BySkillId
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	AutoNullCounter_BySkillId, %function
AutoNullCounter_BySkillId:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
	ldr	r4, .L14	@ ivtmp.23,
.L10:
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:28: 	for(int i=0; NullCounter_SkillIDs[i]!=0; i++)
	ldrb	r1, [r4]	@ _4, MEM[(unsigned char *)_15]
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:28: 	for(int i=0; NullCounter_SkillIDs[i]!=0; i++)
	cmp	r1, #0	@ _4,
	bne	.L12		@,
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:31: 	return FALSE;
	movs	r0, r1	@ <retval>, _4
.L9:
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:32: }
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L12:
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:29: 		if( (*SkillTester)(&gBattleActor.unit,NullCounter_SkillIDs[i]) )
	ldr	r3, .L14+4	@ tmp121,
	ldr	r0, .L14+8	@ tmp120,
	ldr	r3, [r3]	@ SkillTester, SkillTester
	bl	.L8		@
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:29: 		if( (*SkillTester)(&gBattleActor.unit,NullCounter_SkillIDs[i]) )
	adds	r4, r4, #1	@ ivtmp.23,
	cmp	r0, #0	@ tmp124,
	beq	.L10		@,
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:30: 			return TRUE;
	movs	r0, #1	@ <retval>,
	b	.L9		@
.L15:
	.align	2
.L14:
	.word	NullCounter_SkillIDs
	.word	SkillTester
	.word	gBattleActor
	.size	AutoNullCounter_BySkillId, .-AutoNullCounter_BySkillId
	.align	1
	.global	AutoNoJugRange_ByItemID
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	AutoNoJugRange_ByItemID, %function
AutoNoJugRange_ByItemID:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
	movs	r5, r0	@ _21, bu
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:7: 		if( ITEM_ID(unit->items[i]) == ITEM_ID(item) )
	movs	r6, #255	@ tmp139,
	ldr	r1, .L25	@ ivtmp.38,
	adds	r5, r5, #40	@ _21,
.L17:
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:41: 	for(int i=0; NoJugRange_ItemIDs[i]!=0; i++)
	ldrb	r3, [r1]	@ _4, MEM[(unsigned char *)_25]
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:41: 	for(int i=0; NoJugRange_ItemIDs[i]!=0; i++)
	cmp	r3, #0	@ _4,
	bne	.L21		@,
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:44: 	return FALSE;
	movs	r0, r3	@ <retval>, _4
.L16:
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:45: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L21:
	movs	r2, r0	@ ivtmp.33, bu
	adds	r2, r2, #30	@ ivtmp.33,
.L19:
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:7: 		if( ITEM_ID(unit->items[i]) == ITEM_ID(item) )
	ldrh	r4, [r2]	@ MEM[(short unsigned int *)_3], MEM[(short unsigned int *)_3]
	eors	r4, r3	@ tmp130, _2
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:7: 		if( ITEM_ID(unit->items[i]) == ITEM_ID(item) )
	tst	r4, r6	@ tmp130, tmp139
	beq	.L22		@,
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:6: 	for( int i=0; i<ITEM_SLOT_COUNT; i++ )
	adds	r2, r2, #2	@ ivtmp.33,
	cmp	r2, r5	@ ivtmp.33, _21
	bne	.L19		@,
	adds	r1, r1, #1	@ ivtmp.38,
	b	.L17		@
.L22:
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:43: 			return TRUE;
	movs	r0, #1	@ <retval>,
	b	.L16		@
.L26:
	.align	2
.L25:
	.word	NoJugRange_ItemIDs
	.size	AutoNoJugRange_ByItemID, .-AutoNoJugRange_ByItemID
	.align	1
	.global	AutoNullCounter_ByItemID
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	AutoNullCounter_ByItemID, %function
AutoNullCounter_ByItemID:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}	@
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:7: 		if( ITEM_ID(unit->items[i]) == ITEM_ID(item) )
	movs	r5, #255	@ tmp136,
	ldr	r3, .L36	@ ivtmp.52,
.L28:
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:49: 	for(int i=0; NullCounter_ItemIDs[i]!=0; i++)
	ldrb	r0, [r3]	@ _3, MEM[(unsigned char *)_21]
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:49: 	for(int i=0; NullCounter_ItemIDs[i]!=0; i++)
	cmp	r0, #0	@ _3,
	bne	.L32		@,
.L27:
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:53: }
	@ sp needed	@
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.L32:
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:6: 	for( int i=0; i<ITEM_SLOT_COUNT; i++ )
	movs	r2, #0	@ i,
	ldr	r1, .L36+4	@ ivtmp.48,
.L30:
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:7: 		if( ITEM_ID(unit->items[i]) == ITEM_ID(item) )
	ldrh	r4, [r1, #30]	@ MEM[(short unsigned int *)_14 + 30B], MEM[(short unsigned int *)_14 + 30B]
	eors	r4, r0	@ tmp127, _1
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:7: 		if( ITEM_ID(unit->items[i]) == ITEM_ID(item) )
	tst	r4, r5	@ tmp127, tmp136
	beq	.L33		@,
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:6: 	for( int i=0; i<ITEM_SLOT_COUNT; i++ )
	adds	r2, r2, #1	@ i,
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:6: 	for( int i=0; i<ITEM_SLOT_COUNT; i++ )
	adds	r1, r1, #2	@ ivtmp.48,
	cmp	r2, #5	@ i,
	bne	.L30		@,
	adds	r3, r3, #1	@ ivtmp.52,
	b	.L28		@
.L33:
@ BattleSystemRework/CheckCanCounter/src/CheckFuncs.c:51: 			return TRUE;
	movs	r0, #1	@ <retval>,
	b	.L27		@
.L37:
	.align	2
.L36:
	.word	NullCounter_ItemIDs
	.word	gBattleActor
	.size	AutoNullCounter_ByItemID, .-AutoNullCounter_ByItemID
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L8:
	bx	r3
