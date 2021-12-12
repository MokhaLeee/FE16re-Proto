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
	.file	"CheckCap.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	MLUCheckCap_OnBattle
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MLUCheckCap_OnBattle, %function
MLUCheckCap_OnBattle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ ModularLevelUp/CheckCap/CheckCap.c:17: 	bu->changeHP = CheckCap_Inline(
	movs	r1, #18	@ _1,
@ ModularLevelUp/CheckCap/CheckCap.c:15: void MLUCheckCap_OnBattle(BattleUnit* bu){
	push	{r3, r4, r5, r6, r7, lr}	@
@ ModularLevelUp/CheckCap/CheckCap.c:17: 	bu->changeHP = CheckCap_Inline(
	movs	r5, r0	@ tmp225, bu
@ ModularLevelUp/CheckCap/CheckCap.c:15: void MLUCheckCap_OnBattle(BattleUnit* bu){
	movs	r4, r0	@ bu, tmp361
@ ModularLevelUp/CheckCap/CheckCap.c:17: 	bu->changeHP = CheckCap_Inline(
	ldrsb	r1, [r0, r1]	@ _1,* _1
	movs	r0, #0	@ _2,
@ ModularLevelUp/CheckCap/CheckCap.c:20: 		bu->unit.pClassData->maxHP
	movs	r6, #19	@ _4,
@ ModularLevelUp/CheckCap/CheckCap.c:17: 	bu->changeHP = CheckCap_Inline(
	adds	r5, r5, #115	@ tmp225,
	ldrsb	r0, [r5, r0]	@ _2,* _2
@ ModularLevelUp/CheckCap/CheckCap.c:20: 		bu->unit.pClassData->maxHP
	ldr	r2, [r4, #4]	@ _3, bu_58(D)->unit.pClassData
@ ModularLevelUp/CheckCap/CheckCap.c:8: 		return 0;
	movs	r3, r0	@ _117, _2
@ ModularLevelUp/CheckCap/CheckCap.c:20: 		bu->unit.pClassData->maxHP
	ldrsb	r6, [r2, r6]	@ _4,* _4
@ ModularLevelUp/CheckCap/CheckCap.c:7: 	if( 0==bonus )
	cmp	r0, #0	@ _2,
	beq	.L2		@,
@ ModularLevelUp/CheckCap/CheckCap.c:9: 	else if( cur+bonus > cap )
	adds	r1, r1, r0	@ tmp226, _1, _2
@ ModularLevelUp/CheckCap/CheckCap.c:9: 	else if( cur+bonus > cap )
	lsrs	r3, r1, #31	@ tmp229, tmp226,
	asrs	r0, r6, #31	@ tmp230, _4,
	cmp	r6, r1	@ _4, tmp226
	adcs	r3, r3, r0	@ tmp228, tmp229, tmp230
@ ModularLevelUp/CheckCap/CheckCap.c:8: 		return 0;
	lsls	r3, r3, #24	@ _117, tmp228,
	lsrs	r3, r3, #24	@ _117, _117,
.L2:
@ ModularLevelUp/CheckCap/CheckCap.c:17: 	bu->changeHP = CheckCap_Inline(
	strb	r3, [r5]	@ _117, bu_58(D)->changeHP
@ ModularLevelUp/CheckCap/CheckCap.c:23: 	bu->changePow = CheckCap_Inline(
	movs	r5, r4	@ tmp238, bu
	movs	r0, #0	@ _7,
	movs	r1, #20	@ _6,
@ ModularLevelUp/CheckCap/CheckCap.c:26: 		bu->unit.pClassData->maxPow
	movs	r6, #20	@ _8,
@ ModularLevelUp/CheckCap/CheckCap.c:23: 	bu->changePow = CheckCap_Inline(
	adds	r5, r5, #116	@ tmp238,
	ldrsb	r0, [r5, r0]	@ _7,* _7
	ldrsb	r1, [r4, r1]	@ _6,* _6
@ ModularLevelUp/CheckCap/CheckCap.c:8: 		return 0;
	movs	r3, r0	@ _112, _7
@ ModularLevelUp/CheckCap/CheckCap.c:26: 		bu->unit.pClassData->maxPow
	ldrsb	r6, [r2, r6]	@ _8,* _8
@ ModularLevelUp/CheckCap/CheckCap.c:7: 	if( 0==bonus )
	cmp	r0, #0	@ _7,
	beq	.L3		@,
@ ModularLevelUp/CheckCap/CheckCap.c:9: 	else if( cur+bonus > cap )
	adds	r1, r1, r0	@ tmp239, _6, _7
@ ModularLevelUp/CheckCap/CheckCap.c:9: 	else if( cur+bonus > cap )
	lsrs	r3, r1, #31	@ tmp242, tmp239,
	asrs	r0, r6, #31	@ tmp243, _8,
	cmp	r6, r1	@ _8, tmp239
	adcs	r3, r3, r0	@ tmp241, tmp242, tmp243
@ ModularLevelUp/CheckCap/CheckCap.c:8: 		return 0;
	lsls	r3, r3, #24	@ _112, tmp241,
	lsrs	r3, r3, #24	@ _112, _112,
.L3:
@ ModularLevelUp/CheckCap/CheckCap.c:23: 	bu->changePow = CheckCap_Inline(
	strb	r3, [r5]	@ _112, bu_58(D)->changePow
@ ModularLevelUp/CheckCap/CheckCap.c:29: 	bu->changeSkl = CheckCap_Inline(
	movs	r5, r4	@ tmp251, bu
	movs	r0, #0	@ _11,
	movs	r1, #21	@ _10,
@ ModularLevelUp/CheckCap/CheckCap.c:32: 		bu->unit.pClassData->maxSkl
	movs	r6, #21	@ _12,
@ ModularLevelUp/CheckCap/CheckCap.c:29: 	bu->changeSkl = CheckCap_Inline(
	adds	r5, r5, #117	@ tmp251,
	ldrsb	r0, [r5, r0]	@ _11,* _11
	ldrsb	r1, [r4, r1]	@ _10,* _10
@ ModularLevelUp/CheckCap/CheckCap.c:8: 		return 0;
	movs	r3, r0	@ _107, _11
@ ModularLevelUp/CheckCap/CheckCap.c:32: 		bu->unit.pClassData->maxSkl
	ldrsb	r6, [r2, r6]	@ _12,* _12
@ ModularLevelUp/CheckCap/CheckCap.c:7: 	if( 0==bonus )
	cmp	r0, #0	@ _11,
	beq	.L4		@,
@ ModularLevelUp/CheckCap/CheckCap.c:9: 	else if( cur+bonus > cap )
	adds	r1, r1, r0	@ tmp252, _10, _11
@ ModularLevelUp/CheckCap/CheckCap.c:9: 	else if( cur+bonus > cap )
	lsrs	r3, r1, #31	@ tmp255, tmp252,
	asrs	r0, r6, #31	@ tmp256, _12,
	cmp	r6, r1	@ _12, tmp252
	adcs	r3, r3, r0	@ tmp254, tmp255, tmp256
@ ModularLevelUp/CheckCap/CheckCap.c:8: 		return 0;
	lsls	r3, r3, #24	@ _107, tmp254,
	lsrs	r3, r3, #24	@ _107, _107,
.L4:
@ ModularLevelUp/CheckCap/CheckCap.c:29: 	bu->changeSkl = CheckCap_Inline(
	strb	r3, [r5]	@ _107, bu_58(D)->changeSkl
@ ModularLevelUp/CheckCap/CheckCap.c:35: 	bu->changeSpd = CheckCap_Inline(
	movs	r5, r4	@ tmp264, bu
	movs	r0, #0	@ _15,
	movs	r1, #22	@ _14,
@ ModularLevelUp/CheckCap/CheckCap.c:38: 		bu->unit.pClassData->maxSpd
	movs	r6, #22	@ _16,
@ ModularLevelUp/CheckCap/CheckCap.c:35: 	bu->changeSpd = CheckCap_Inline(
	adds	r5, r5, #118	@ tmp264,
	ldrsb	r0, [r5, r0]	@ _15,* _15
	ldrsb	r1, [r4, r1]	@ _14,* _14
@ ModularLevelUp/CheckCap/CheckCap.c:8: 		return 0;
	movs	r3, r0	@ _102, _15
@ ModularLevelUp/CheckCap/CheckCap.c:38: 		bu->unit.pClassData->maxSpd
	ldrsb	r6, [r2, r6]	@ _16,* _16
@ ModularLevelUp/CheckCap/CheckCap.c:7: 	if( 0==bonus )
	cmp	r0, #0	@ _15,
	beq	.L5		@,
@ ModularLevelUp/CheckCap/CheckCap.c:9: 	else if( cur+bonus > cap )
	adds	r1, r1, r0	@ tmp265, _14, _15
@ ModularLevelUp/CheckCap/CheckCap.c:9: 	else if( cur+bonus > cap )
	lsrs	r3, r1, #31	@ tmp268, tmp265,
	asrs	r0, r6, #31	@ tmp269, _16,
	cmp	r6, r1	@ _16, tmp265
	adcs	r3, r3, r0	@ tmp267, tmp268, tmp269
@ ModularLevelUp/CheckCap/CheckCap.c:8: 		return 0;
	lsls	r3, r3, #24	@ _102, tmp267,
	lsrs	r3, r3, #24	@ _102, _102,
.L5:
@ ModularLevelUp/CheckCap/CheckCap.c:35: 	bu->changeSpd = CheckCap_Inline(
	strb	r3, [r5]	@ _102, bu_58(D)->changeSpd
@ ModularLevelUp/CheckCap/CheckCap.c:41: 	bu->changeDef = CheckCap_Inline(
	movs	r5, r4	@ tmp277, bu
	movs	r0, #0	@ _19,
	movs	r1, #23	@ _18,
@ ModularLevelUp/CheckCap/CheckCap.c:44: 		bu->unit.pClassData->maxDef
	movs	r6, #23	@ _20,
@ ModularLevelUp/CheckCap/CheckCap.c:41: 	bu->changeDef = CheckCap_Inline(
	adds	r5, r5, #119	@ tmp277,
	ldrsb	r0, [r5, r0]	@ _19,* _19
	ldrsb	r1, [r4, r1]	@ _18,* _18
@ ModularLevelUp/CheckCap/CheckCap.c:8: 		return 0;
	movs	r3, r0	@ _97, _19
@ ModularLevelUp/CheckCap/CheckCap.c:44: 		bu->unit.pClassData->maxDef
	ldrsb	r6, [r2, r6]	@ _20,* _20
@ ModularLevelUp/CheckCap/CheckCap.c:7: 	if( 0==bonus )
	cmp	r0, #0	@ _19,
	beq	.L6		@,
@ ModularLevelUp/CheckCap/CheckCap.c:9: 	else if( cur+bonus > cap )
	adds	r1, r1, r0	@ tmp278, _18, _19
@ ModularLevelUp/CheckCap/CheckCap.c:9: 	else if( cur+bonus > cap )
	lsrs	r3, r1, #31	@ tmp281, tmp278,
	asrs	r0, r6, #31	@ tmp282, _20,
	cmp	r6, r1	@ _20, tmp278
	adcs	r3, r3, r0	@ tmp280, tmp281, tmp282
@ ModularLevelUp/CheckCap/CheckCap.c:8: 		return 0;
	lsls	r3, r3, #24	@ _97, tmp280,
	lsrs	r3, r3, #24	@ _97, _97,
.L6:
@ ModularLevelUp/CheckCap/CheckCap.c:41: 	bu->changeDef = CheckCap_Inline(
	strb	r3, [r5]	@ _97, bu_58(D)->changeDef
@ ModularLevelUp/CheckCap/CheckCap.c:47: 	bu->changeRes = CheckCap_Inline(
	movs	r5, r4	@ tmp290, bu
	movs	r0, #0	@ _23,
	movs	r1, #24	@ _22,
@ ModularLevelUp/CheckCap/CheckCap.c:50: 		bu->unit.pClassData->maxRes
	movs	r6, #24	@ _24,
@ ModularLevelUp/CheckCap/CheckCap.c:47: 	bu->changeRes = CheckCap_Inline(
	adds	r5, r5, #120	@ tmp290,
	ldrsb	r0, [r5, r0]	@ _23,* _23
	ldrsb	r1, [r4, r1]	@ _22,* _22
@ ModularLevelUp/CheckCap/CheckCap.c:8: 		return 0;
	movs	r3, r0	@ _92, _23
@ ModularLevelUp/CheckCap/CheckCap.c:50: 		bu->unit.pClassData->maxRes
	ldrsb	r6, [r2, r6]	@ _24,* _24
@ ModularLevelUp/CheckCap/CheckCap.c:7: 	if( 0==bonus )
	cmp	r0, #0	@ _23,
	beq	.L7		@,
@ ModularLevelUp/CheckCap/CheckCap.c:9: 	else if( cur+bonus > cap )
	adds	r0, r1, r0	@ tmp291, _22, _23
@ ModularLevelUp/CheckCap/CheckCap.c:9: 	else if( cur+bonus > cap )
	lsrs	r3, r0, #31	@ tmp294, tmp291,
	asrs	r1, r6, #31	@ tmp295, _24,
	cmp	r6, r0	@ _24, tmp291
	adcs	r3, r3, r1	@ tmp293, tmp294, tmp295
@ ModularLevelUp/CheckCap/CheckCap.c:8: 		return 0;
	lsls	r3, r3, #24	@ _92, tmp293,
	lsrs	r3, r3, #24	@ _92, _92,
.L7:
@ ModularLevelUp/CheckCap/CheckCap.c:53: 	bu->changeLck = CheckCap_Inline(
	movs	r0, r4	@ tmp303, bu
	movs	r1, #0	@ _27,
	movs	r2, #25	@ _26,
@ ModularLevelUp/CheckCap/CheckCap.c:47: 	bu->changeRes = CheckCap_Inline(
	strb	r3, [r5]	@ _92, bu_58(D)->changeRes
@ ModularLevelUp/CheckCap/CheckCap.c:53: 	bu->changeLck = CheckCap_Inline(
	adds	r0, r0, #121	@ tmp303,
	ldrsb	r1, [r0, r1]	@ _27,* _27
	ldrsb	r2, [r4, r2]	@ _26,* _26
@ ModularLevelUp/CheckCap/CheckCap.c:8: 		return 0;
	subs	r3, r1, #0	@ _87, _27,
@ ModularLevelUp/CheckCap/CheckCap.c:7: 	if( 0==bonus )
	beq	.L8		@,
@ ModularLevelUp/CheckCap/CheckCap.c:9: 	else if( cur+bonus > cap )
	adds	r2, r2, r1	@ tmp304, _26, _27
@ ModularLevelUp/CheckCap/CheckCap.c:9: 	else if( cur+bonus > cap )
	movs	r5, #0	@ _87,
	movs	r1, #30	@ tmp307,
	lsrs	r3, r2, #31	@ tmp308, tmp304,
	cmp	r1, r2	@ tmp307, tmp304
	adcs	r3, r3, r5	@ tmp306, tmp308, _87
@ ModularLevelUp/CheckCap/CheckCap.c:8: 		return 0;
	lsls	r3, r3, #24	@ _87, tmp306,
	lsrs	r3, r3, #24	@ _87, _87,
.L8:
@ ModularLevelUp/CheckCap/CheckCap.c:53: 	bu->changeLck = CheckCap_Inline(
	strb	r3, [r0]	@ _87, bu_58(D)->changeLck
@ ModularLevelUp/CheckCap/CheckCap.c:60: 		*GetMagAt((Unit*)bu),
	ldr	r3, .L20	@ tmp315,
	movs	r0, r4	@, bu
	bl	.L22		@
@ ModularLevelUp/CheckCap/CheckCap.c:59: 	*GetBu_ChangeMagAt(bu) = CheckCap_Inline(
	movs	r6, #0	@ _30,
@ ModularLevelUp/CheckCap/CheckCap.c:61: 		*GetBu_ChangeMagAt(bu),
	ldr	r5, .L20+4	@ tmp316,
@ ModularLevelUp/CheckCap/CheckCap.c:59: 	*GetBu_ChangeMagAt(bu) = CheckCap_Inline(
	ldrsb	r6, [r0, r6]	@ _30,* _30
@ ModularLevelUp/CheckCap/CheckCap.c:61: 		*GetBu_ChangeMagAt(bu),
	movs	r0, r4	@, bu
	bl	.L23		@
@ ModularLevelUp/CheckCap/CheckCap.c:59: 	*GetBu_ChangeMagAt(bu) = CheckCap_Inline(
	movs	r2, #0	@ _32,
@ ModularLevelUp/CheckCap/CheckCap.c:62: 		gpClassMagicTable[bu->unit.pClassData->number].Cap
	ldr	r3, [r4, #4]	@ bu_58(D)->unit.pClassData, bu_58(D)->unit.pClassData
	ldrb	r1, [r3, #4]	@ tmp318,
@ ModularLevelUp/CheckCap/CheckCap.c:62: 		gpClassMagicTable[bu->unit.pClassData->number].Cap
	ldr	r3, .L20+8	@ tmp320,
	ldr	r3, [r3]	@ gpClassMagicTable, gpClassMagicTable
@ ModularLevelUp/CheckCap/CheckCap.c:59: 	*GetBu_ChangeMagAt(bu) = CheckCap_Inline(
	ldrsb	r2, [r0, r2]	@ _32,* _32
@ ModularLevelUp/CheckCap/CheckCap.c:62: 		gpClassMagicTable[bu->unit.pClassData->number].Cap
	lsls	r1, r1, #2	@ tmp321, tmp318,
	adds	r3, r3, r1	@ tmp322, gpClassMagicTable, tmp321
@ ModularLevelUp/CheckCap/CheckCap.c:8: 		return 0;
	movs	r7, r2	@ _83, _32
@ ModularLevelUp/CheckCap/CheckCap.c:62: 		gpClassMagicTable[bu->unit.pClassData->number].Cap
	ldrb	r3, [r3, #2]	@ _39,
@ ModularLevelUp/CheckCap/CheckCap.c:7: 	if( 0==bonus )
	cmp	r2, #0	@ _32,
	beq	.L9		@,
@ ModularLevelUp/CheckCap/CheckCap.c:9: 	else if( cur+bonus > cap )
	lsls	r3, r3, #24	@ tmp324, _39,
@ ModularLevelUp/CheckCap/CheckCap.c:9: 	else if( cur+bonus > cap )
	adds	r2, r2, r6	@ tmp325, _32, _30
@ ModularLevelUp/CheckCap/CheckCap.c:9: 	else if( cur+bonus > cap )
	asrs	r1, r3, #24	@ tmp323, tmp324,
@ ModularLevelUp/CheckCap/CheckCap.c:9: 	else if( cur+bonus > cap )
	lsrs	r0, r2, #31	@ tmp329, tmp325,
	asrs	r3, r3, #31	@ tmp328, tmp324,
	cmp	r1, r2	@ tmp323, tmp325
	adcs	r3, r3, r0	@ tmp327, tmp328, tmp329
@ ModularLevelUp/CheckCap/CheckCap.c:8: 		return 0;
	lsls	r7, r3, #24	@ _83, tmp327,
	lsrs	r7, r7, #24	@ _83, _83,
.L9:
@ ModularLevelUp/CheckCap/CheckCap.c:59: 	*GetBu_ChangeMagAt(bu) = CheckCap_Inline(
	movs	r0, r4	@, bu
	bl	.L23		@
@ ModularLevelUp/CheckCap/CheckCap.c:66: 		*GetChaAt((Unit*)bu),
	ldr	r3, .L20+12	@ tmp333,
@ ModularLevelUp/CheckCap/CheckCap.c:59: 	*GetBu_ChangeMagAt(bu) = CheckCap_Inline(
	strb	r7, [r0]	@ _83, *_41
@ ModularLevelUp/CheckCap/CheckCap.c:66: 		*GetChaAt((Unit*)bu),
	movs	r0, r4	@, bu
	bl	.L22		@
@ ModularLevelUp/CheckCap/CheckCap.c:65: 	*GetBu_ChangeChaAt(bu) = CheckCap_Inline(
	movs	r6, #0	@ _44,
@ ModularLevelUp/CheckCap/CheckCap.c:67: 		*GetBu_ChangeChaAt(bu),
	ldr	r5, .L20+16	@ tmp334,
@ ModularLevelUp/CheckCap/CheckCap.c:65: 	*GetBu_ChangeChaAt(bu) = CheckCap_Inline(
	ldrsb	r6, [r0, r6]	@ _44,* _44
@ ModularLevelUp/CheckCap/CheckCap.c:67: 		*GetBu_ChangeChaAt(bu),
	movs	r0, r4	@, bu
	bl	.L23		@
@ ModularLevelUp/CheckCap/CheckCap.c:65: 	*GetBu_ChangeChaAt(bu) = CheckCap_Inline(
	movs	r2, #0	@ _46,
@ ModularLevelUp/CheckCap/CheckCap.c:68: 		gpClassCharmTable[bu->unit.pClassData->number].Cap
	ldr	r3, [r4, #4]	@ bu_58(D)->unit.pClassData, bu_58(D)->unit.pClassData
	ldrb	r1, [r3, #4]	@ tmp336,
@ ModularLevelUp/CheckCap/CheckCap.c:68: 		gpClassCharmTable[bu->unit.pClassData->number].Cap
	ldr	r3, .L20+20	@ tmp338,
	ldr	r3, [r3]	@ gpClassCharmTable, gpClassCharmTable
@ ModularLevelUp/CheckCap/CheckCap.c:65: 	*GetBu_ChangeChaAt(bu) = CheckCap_Inline(
	ldrsb	r2, [r0, r2]	@ _46,* _46
@ ModularLevelUp/CheckCap/CheckCap.c:68: 		gpClassCharmTable[bu->unit.pClassData->number].Cap
	lsls	r1, r1, #2	@ tmp339, tmp336,
	adds	r3, r3, r1	@ tmp340, gpClassCharmTable, tmp339
@ ModularLevelUp/CheckCap/CheckCap.c:8: 		return 0;
	movs	r7, r2	@ _67, _46
@ ModularLevelUp/CheckCap/CheckCap.c:68: 		gpClassCharmTable[bu->unit.pClassData->number].Cap
	ldrb	r3, [r3, #2]	@ _53,
@ ModularLevelUp/CheckCap/CheckCap.c:7: 	if( 0==bonus )
	cmp	r2, #0	@ _46,
	beq	.L10		@,
@ ModularLevelUp/CheckCap/CheckCap.c:9: 	else if( cur+bonus > cap )
	lsls	r3, r3, #24	@ tmp342, _53,
@ ModularLevelUp/CheckCap/CheckCap.c:9: 	else if( cur+bonus > cap )
	adds	r2, r2, r6	@ tmp343, _46, _44
@ ModularLevelUp/CheckCap/CheckCap.c:9: 	else if( cur+bonus > cap )
	asrs	r1, r3, #24	@ tmp341, tmp342,
@ ModularLevelUp/CheckCap/CheckCap.c:9: 	else if( cur+bonus > cap )
	lsrs	r0, r2, #31	@ tmp347, tmp343,
	asrs	r3, r3, #31	@ tmp346, tmp342,
	cmp	r1, r2	@ tmp341, tmp343
	adcs	r3, r3, r0	@ tmp345, tmp346, tmp347
@ ModularLevelUp/CheckCap/CheckCap.c:8: 		return 0;
	lsls	r7, r3, #24	@ _67, tmp345,
	lsrs	r7, r7, #24	@ _67, _67,
.L10:
@ ModularLevelUp/CheckCap/CheckCap.c:65: 	*GetBu_ChangeChaAt(bu) = CheckCap_Inline(
	movs	r0, r4	@, bu
@ ModularLevelUp/CheckCap/CheckCap.c:71: }
	@ sp needed	@
@ ModularLevelUp/CheckCap/CheckCap.c:65: 	*GetBu_ChangeChaAt(bu) = CheckCap_Inline(
	bl	.L23		@
@ ModularLevelUp/CheckCap/CheckCap.c:65: 	*GetBu_ChangeChaAt(bu) = CheckCap_Inline(
	strb	r7, [r0]	@ _67, *_55
@ ModularLevelUp/CheckCap/CheckCap.c:71: }
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L21:
	.align	2
.L20:
	.word	GetMagAt
	.word	GetBu_ChangeMagAt
	.word	gpClassMagicTable
	.word	GetChaAt
	.word	GetBu_ChangeChaAt
	.word	gpClassCharmTable
	.size	MLUCheckCap_OnBattle, .-MLUCheckCap_OnBattle
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L22:
	bx	r3
.L23:
	bx	r5
