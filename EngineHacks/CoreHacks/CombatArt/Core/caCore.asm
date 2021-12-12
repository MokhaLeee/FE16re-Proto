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
	.file	"caCore.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	GetCS_RangeBonus
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetCS_RangeBonus, %function
GetCS_RangeBonus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ CombatArt/Core/caCore.c:26: 	return gpCombatArtConigList[CAid].rangeBonus;
	ldr	r3, .L2	@ tmp122,
@ CombatArt/Core/caCore.c:27: }
	@ sp needed	@
@ CombatArt/Core/caCore.c:26: 	return gpCombatArtConigList[CAid].rangeBonus;
	ldr	r3, [r3]	@ gpCombatArtConigList, gpCombatArtConigList
	lsls	r0, r0, #5	@ tmp123, tmp129,
	adds	r3, r3, r0	@ tmp124, gpCombatArtConigList, tmp123
	ldrb	r0, [r3, #1]	@ tmp127,
@ CombatArt/Core/caCore.c:27: }
	bx	lr
.L3:
	.align	2
.L2:
	.word	gpCombatArtConigList
	.size	GetCS_RangeBonus, .-GetCS_RangeBonus
	.align	1
	.global	GetCS_mtBonus
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetCS_mtBonus, %function
GetCS_mtBonus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ CombatArt/Core/caCore.c:30: 	return gpCombatArtConigList[CAid].mtBonus;
	ldr	r3, .L5	@ tmp121,
@ CombatArt/Core/caCore.c:31: }
	@ sp needed	@
@ CombatArt/Core/caCore.c:30: 	return gpCombatArtConigList[CAid].mtBonus;
	ldr	r3, [r3]	@ gpCombatArtConigList, gpCombatArtConigList
	lsls	r0, r0, #5	@ tmp122, tmp127,
	adds	r3, r3, r0	@ tmp123, gpCombatArtConigList, tmp122
	movs	r0, #14	@ tmp126,
	ldrsh	r0, [r3, r0]	@ tmp126, tmp123, tmp126
@ CombatArt/Core/caCore.c:31: }
	bx	lr
.L6:
	.align	2
.L5:
	.word	gpCombatArtConigList
	.size	GetCS_mtBonus, .-GetCS_mtBonus
	.align	1
	.global	GetCS_hitBonus
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetCS_hitBonus, %function
GetCS_hitBonus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ CombatArt/Core/caCore.c:34: 	return gpCombatArtConigList[CAid].hitBonus;
	ldr	r3, .L8	@ tmp121,
@ CombatArt/Core/caCore.c:35: }
	@ sp needed	@
@ CombatArt/Core/caCore.c:34: 	return gpCombatArtConigList[CAid].hitBonus;
	ldr	r3, [r3]	@ gpCombatArtConigList, gpCombatArtConigList
	lsls	r0, r0, #5	@ tmp122, tmp127,
	adds	r3, r3, r0	@ tmp123, gpCombatArtConigList, tmp122
	movs	r0, #16	@ tmp126,
	ldrsh	r0, [r3, r0]	@ tmp126, tmp123, tmp126
@ CombatArt/Core/caCore.c:35: }
	bx	lr
.L9:
	.align	2
.L8:
	.word	gpCombatArtConigList
	.size	GetCS_hitBonus, .-GetCS_hitBonus
	.align	1
	.global	GetCS_avoBonus
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetCS_avoBonus, %function
GetCS_avoBonus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ CombatArt/Core/caCore.c:38: 	return gpCombatArtConigList[CAid].avoBonus;
	ldr	r3, .L11	@ tmp121,
@ CombatArt/Core/caCore.c:39: }
	@ sp needed	@
@ CombatArt/Core/caCore.c:38: 	return gpCombatArtConigList[CAid].avoBonus;
	ldr	r3, [r3]	@ gpCombatArtConigList, gpCombatArtConigList
	lsls	r0, r0, #5	@ tmp122, tmp127,
	adds	r3, r3, r0	@ tmp123, gpCombatArtConigList, tmp122
	movs	r0, #18	@ tmp126,
	ldrsh	r0, [r3, r0]	@ tmp126, tmp123, tmp126
@ CombatArt/Core/caCore.c:39: }
	bx	lr
.L12:
	.align	2
.L11:
	.word	gpCombatArtConigList
	.size	GetCS_avoBonus, .-GetCS_avoBonus
	.align	1
	.global	GetCS_CritBonus
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetCS_CritBonus, %function
GetCS_CritBonus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ CombatArt/Core/caCore.c:42: 	return gpCombatArtConigList[CAid].critBonus;
	ldr	r3, .L14	@ tmp121,
@ CombatArt/Core/caCore.c:43: }
	@ sp needed	@
@ CombatArt/Core/caCore.c:42: 	return gpCombatArtConigList[CAid].critBonus;
	ldr	r3, [r3]	@ gpCombatArtConigList, gpCombatArtConigList
	lsls	r0, r0, #5	@ tmp122, tmp127,
	adds	r3, r3, r0	@ tmp123, gpCombatArtConigList, tmp122
	movs	r0, #20	@ tmp126,
	ldrsh	r0, [r3, r0]	@ tmp126, tmp123, tmp126
@ CombatArt/Core/caCore.c:43: }
	bx	lr
.L15:
	.align	2
.L14:
	.word	gpCombatArtConigList
	.size	GetCS_CritBonus, .-GetCS_CritBonus
	.align	1
	.global	isCombatArt
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	isCombatArt, %function
isCombatArt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ CombatArt/Core/caCore.c:48: 	return (0 != gpBattleFlagSu->isCombat);
	ldr	r3, .L17	@ tmp119,
@ CombatArt/Core/caCore.c:49: }
	@ sp needed	@
@ CombatArt/Core/caCore.c:48: 	return (0 != gpBattleFlagSu->isCombat);
	ldr	r3, [r3]	@ gpBattleFlagSu, gpBattleFlagSu
	ldrb	r0, [r3]	@ *gpBattleFlagSu.5_1, *gpBattleFlagSu.5_1
	movs	r3, #1	@ tmp123,
	ands	r0, r3	@ tmp117, tmp123
@ CombatArt/Core/caCore.c:49: }
	bx	lr
.L18:
	.align	2
.L17:
	.word	gpBattleFlagSu
	.size	isCombatArt, .-isCombatArt
	.align	1
	.global	CanUnitUseCA
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	CanUnitUseCA, %function
CanUnitUseCA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ CombatArt/Core/caCore.c:55: 	ext = GetUnitExtByUnit(unit);
	ldr	r3, .L25	@ tmp121,
@ CombatArt/Core/caCore.c:52: int CanUnitUseCA(Unit* unit, u8 CAid){
	movs	r4, r1	@ CAid, tmp125
@ CombatArt/Core/caCore.c:55: 	ext = GetUnitExtByUnit(unit);
	bl	.L27		@
@ CombatArt/Core/caCore.c:57: 	if( NULL == ext )
	cmp	r0, #0	@ ext,
	beq	.L19		@,
	adds	r3, r0, #5	@ _17, ivtmp.48,
.L21:
@ CombatArt/Core/caCore.c:61: 		if( CAid == ext->skillbattle[i] )
	ldrb	r2, [r0]	@ MEM[(unsigned char *)_15], MEM[(unsigned char *)_15]
	cmp	r2, r4	@ MEM[(unsigned char *)_15], CAid
	beq	.L23		@,
@ CombatArt/Core/caCore.c:60: 	for( int i=0; i < MAX_SIZE_COMBATART; i++)
	adds	r0, r0, #1	@ ivtmp.48,
	cmp	r0, r3	@ ivtmp.48, _17
	bne	.L21		@,
@ CombatArt/Core/caCore.c:58: 		return FALSE;
	movs	r0, #0	@ <retval>,
.L19:
@ CombatArt/Core/caCore.c:64: }
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L23:
@ CombatArt/Core/caCore.c:62: 			return TRUE;
	movs	r0, #1	@ <retval>,
	b	.L19		@
.L26:
	.align	2
.L25:
	.word	GetUnitExtByUnit
	.size	CanUnitUseCA, .-CanUnitUseCA
	.align	1
	.global	SetUnitCAauto
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SetUnitCAauto, %function
SetUnitCAauto:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ CombatArt/Core/caCore.c:70: 	UnitExt* ext = GetUnitExtByUnit(unit);
	ldr	r3, .L31	@ tmp116,
	bl	.L27		@
@ CombatArt/Core/caCore.c:72: 	if( NULL == ext )
	cmp	r0, #0	@ ext,
	beq	.L28		@,
@ CombatArt/Core/caCore.c:75: 	ext->skillbattle[0] = 1;
	ldr	r2, .L31+4	@ tmp117,
	strh	r2, [r0]	@ tmp117, MEM <unsigned short> [(unsigned char *)ext_6]
@ CombatArt/Core/caCore.c:77: 	ext->skillbattle[2] = 3;
	ldr	r2, .L31+8	@ tmp119,
	strh	r2, [r0, #2]	@ tmp119, MEM <unsigned short> [(unsigned char *)ext_6 + 2B]
@ CombatArt/Core/caCore.c:79: 	ext->skillbattle[4] = 5;
	movs	r2, #5	@ tmp121,
	strb	r2, [r0, #4]	@ tmp121, ext_6->skillbattle[4]
@ CombatArt/Core/caCore.c:80: 	return TRUE;
	movs	r0, #1	@ <retval>,
.L28:
@ CombatArt/Core/caCore.c:81: }
	@ sp needed	@
	pop	{r4}
	pop	{r1}
	bx	r1
.L32:
	.align	2
.L31:
	.word	GetUnitExtByUnit
	.word	513
	.word	1027
	.size	SetUnitCAauto, .-SetUnitCAauto
	.align	1
	.global	UnitHasCA
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	UnitHasCA, %function
UnitHasCA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ CombatArt/Core/caCore.c:7: 	UnitExt* ext = GetUnitExtByUnit(unit);
	ldr	r3, .L45	@ tmp123,
@ CombatArt/Core/caCore.c:6: int UnitHasCA(Unit* unit){
	movs	r5, r0	@ unit, tmp127
@ CombatArt/Core/caCore.c:7: 	UnitExt* ext = GetUnitExtByUnit(unit);
	bl	.L27		@
	subs	r4, r0, #0	@ ext, tmp128,
@ CombatArt/Core/caCore.c:8: 	if( NULL == ext )
	beq	.L34		@,
	movs	r3, r0	@ ivtmp.67, ivtmp.61
	adds	r6, r0, #5	@ _31, ivtmp.61,
.L37:
@ CombatArt/Core/caCore.c:12: 		if( ext->skillbattle[i] )
	ldrb	r2, [r3]	@ MEM[(unsigned char *)_29], MEM[(unsigned char *)_29]
	cmp	r2, #0	@ MEM[(unsigned char *)_29],
	beq	.L35		@,
.L38:
@ CombatArt/Core/caCore.c:13: 			return TRUE;
	movs	r0, #1	@ <retval>,
.L33:
@ CombatArt/Core/caCore.c:22: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L35:
@ CombatArt/Core/caCore.c:11: 	for( int i=0; i < MAX_SIZE_COMBATART; i++ )
	adds	r3, r3, #1	@ ivtmp.67,
	cmp	r3, r6	@ ivtmp.67, _31
	bne	.L37		@,
@ CombatArt/Core/caCore.c:15: 	SetUnitCAauto(unit);
	movs	r0, r5	@, unit
	bl	SetUnitCAauto		@
.L39:
@ CombatArt/Core/caCore.c:18: 		if( ext->skillbattle[i] )
	ldrb	r3, [r4]	@ MEM[(unsigned char *)_23], MEM[(unsigned char *)_23]
	cmp	r3, #0	@ MEM[(unsigned char *)_23],
	bne	.L38		@,
@ CombatArt/Core/caCore.c:17: 	for( int i=0; i < MAX_SIZE_COMBATART; i++ )
	adds	r4, r4, #1	@ ivtmp.61,
	cmp	r4, r6	@ ivtmp.61, _31
	bne	.L39		@,
.L34:
@ CombatArt/Core/caCore.c:9: 		return FALSE;
	movs	r0, #0	@ <retval>,
	b	.L33		@
.L46:
	.align	2
.L45:
	.word	GetUnitExtByUnit
	.size	UnitHasCA, .-UnitHasCA
	.align	1
	.global	SetCombatArtInfo
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SetCombatArtInfo, %function
SetCombatArtInfo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ CombatArt/Core/caCore.c:86: 	gpBattleFlagSu->isCombat = 1;
	movs	r2, #1	@ tmp124,
@ CombatArt/Core/caCore.c:86: 	gpBattleFlagSu->isCombat = 1;
	ldr	r3, .L48	@ tmp118,
	ldr	r3, [r3]	@ gpBattleFlagSu.6_1, gpBattleFlagSu
@ CombatArt/Core/caCore.c:85: void SetCombatArtInfo(Unit* unit, u8 combatId){
	push	{r4, lr}	@
@ CombatArt/Core/caCore.c:86: 	gpBattleFlagSu->isCombat = 1;
	ldrb	r4, [r3]	@ gpBattleFlagSu.6_1->isCombat, gpBattleFlagSu.6_1->isCombat
@ CombatArt/Core/caCore.c:89: }
	@ sp needed	@
@ CombatArt/Core/caCore.c:86: 	gpBattleFlagSu->isCombat = 1;
	orrs	r2, r4	@ tmp123, gpBattleFlagSu.6_1->isCombat
	strb	r2, [r3]	@ tmp123, gpBattleFlagSu.6_1->isCombat
@ CombatArt/Core/caCore.c:87: 	gpBattleFlagSu->ActorId = unit->index;
	ldrb	r2, [r0, #11]	@ tmp126,
@ CombatArt/Core/caCore.c:88: 	gpBattleFlagSu->artId = combatId;
	strb	r1, [r3, #2]	@ tmp130, gpBattleFlagSu.6_1->artId
@ CombatArt/Core/caCore.c:87: 	gpBattleFlagSu->ActorId = unit->index;
	strb	r2, [r3, #1]	@ tmp126, gpBattleFlagSu.6_1->ActorId
@ CombatArt/Core/caCore.c:89: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L49:
	.align	2
.L48:
	.word	gpBattleFlagSu
	.size	SetCombatArtInfo, .-SetCombatArtInfo
	.align	1
	.global	ResetCombatArtInfo
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	ResetCombatArtInfo, %function
ResetCombatArtInfo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ CombatArt/Core/caCore.c:93: 	gpBattleFlagSu->isCombat = 0;
	movs	r1, #1	@ tmp120,
@ CombatArt/Core/caCore.c:96: }
	@ sp needed	@
@ CombatArt/Core/caCore.c:93: 	gpBattleFlagSu->isCombat = 0;
	ldr	r3, .L51	@ tmp114,
	ldr	r3, [r3]	@ gpBattleFlagSu.9_1, gpBattleFlagSu
@ CombatArt/Core/caCore.c:93: 	gpBattleFlagSu->isCombat = 0;
	ldrb	r2, [r3]	@ gpBattleFlagSu.9_1->isCombat, gpBattleFlagSu.9_1->isCombat
	bics	r2, r1	@ tmp119, tmp120
	strb	r2, [r3]	@ tmp119, gpBattleFlagSu.9_1->isCombat
@ CombatArt/Core/caCore.c:94: 	gpBattleFlagSu->ActorId = 0;
	movs	r2, #0	@ tmp122,
	strb	r2, [r3, #1]	@ tmp122, gpBattleFlagSu.9_1->ActorId
@ CombatArt/Core/caCore.c:95: 	gpBattleFlagSu->artId = 0;
	strb	r2, [r3, #2]	@ tmp122, gpBattleFlagSu.9_1->artId
@ CombatArt/Core/caCore.c:96: }
	bx	lr
.L52:
	.align	2
.L51:
	.word	gpBattleFlagSu
	.size	ResetCombatArtInfo, .-ResetCombatArtInfo
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L27:
	bx	r3
