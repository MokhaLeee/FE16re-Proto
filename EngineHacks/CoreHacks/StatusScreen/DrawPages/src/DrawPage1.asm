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
	.file	"DrawPage1.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	StatScreen_DrawPage1
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	StatScreen_DrawPage1, %function
StatScreen_DrawPage1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
@ StatusScreen/DrawPages/src/DrawPage1.c:155: 	Unit* unit = gStatScreen.unit;
	ldr	r3, .L6	@ tmp188,
@ StatusScreen/DrawPages/src/DrawPage1.c:154: void StatScreen_DrawPage1(void){
	sub	sp, sp, #28	@,,
@ StatusScreen/DrawPages/src/DrawPage1.c:15: 		GetStringFromIndex(0x4FE));
	ldr	r6, .L6+4	@ tmp190,
	ldr	r0, .L6+8	@,
@ StatusScreen/DrawPages/src/DrawPage1.c:155: 	Unit* unit = gStatScreen.unit;
	ldr	r4, [r3, #12]	@ unit, gStatScreen.unit
@ StatusScreen/DrawPages/src/DrawPage1.c:15: 		GetStringFromIndex(0x4FE));
	bl	.L8		@
@ StatusScreen/DrawPages/src/DrawPage1.c:11: 	DrawTextInline(		// Str
	movs	r5, #0	@ tmp193,
	ldr	r7, .L6+12	@ tmp192,
	str	r0, [sp, #4]	@ tmp342,
	movs	r0, r7	@ tmp192, tmp192
	ldr	r7, .L6+16	@ tmp194,
	movs	r3, r5	@, tmp193
	movs	r2, #3	@,
	ldr	r1, .L6+20	@ tmp191,
	str	r5, [sp]	@ tmp193,
	str	r7, [sp, #12]	@ tmp194, %sfp
	bl	.L9		@
@ StatusScreen/DrawPages/src/DrawPage1.c:21: 		GetStringFromIndex(0x4FF));
	ldr	r0, .L6+24	@,
	bl	.L8		@
@ StatusScreen/DrawPages/src/DrawPage1.c:17: 	DrawTextInline(		// Mag
	ldr	r7, .L6+28	@ tmp198,
	movs	r3, r5	@, tmp193
	movs	r2, #3	@,
	ldr	r1, .L6+32	@ tmp197,
	str	r0, [sp, #4]	@ tmp343,
	str	r5, [sp]	@ tmp193,
	movs	r0, r7	@ tmp198, tmp198
	ldr	r7, [sp, #12]	@ tmp194, %sfp
	bl	.L9		@
@ StatusScreen/DrawPages/src/DrawPage1.c:27: 		GetStringFromIndex(0x4EC));
	ldr	r0, .L6+36	@,
	bl	.L8		@
@ StatusScreen/DrawPages/src/DrawPage1.c:23: 	DrawTextInline(		// Skl
	ldr	r7, .L6+40	@ tmp204,
	movs	r3, r5	@, tmp193
	movs	r2, #3	@,
	ldr	r1, .L6+44	@ tmp203,
	str	r0, [sp, #4]	@ tmp344,
	str	r5, [sp]	@ tmp193,
	movs	r0, r7	@ tmp204, tmp204
	ldr	r7, [sp, #12]	@ tmp194, %sfp
	bl	.L9		@
@ StatusScreen/DrawPages/src/DrawPage1.c:33: 		GetStringFromIndex(0x4ED));
	ldr	r0, .L6+48	@,
	bl	.L8		@
@ StatusScreen/DrawPages/src/DrawPage1.c:29: 	DrawTextInline(		// Spd
	ldr	r7, .L6+52	@ tmp210,
	movs	r3, r5	@, tmp193
	movs	r2, #3	@,
	ldr	r1, .L6+56	@ tmp209,
	str	r0, [sp, #4]	@ tmp345,
	str	r5, [sp]	@ tmp193,
	movs	r0, r7	@ tmp210, tmp210
	ldr	r7, [sp, #12]	@ tmp194, %sfp
	bl	.L9		@
@ StatusScreen/DrawPages/src/DrawPage1.c:39: 		GetStringFromIndex(0x4EF));
	ldr	r0, .L6+60	@,
	bl	.L8		@
@ StatusScreen/DrawPages/src/DrawPage1.c:35: 	DrawTextInline(		// Def
	ldr	r7, .L6+64	@ tmp216,
	movs	r3, r5	@, tmp193
	movs	r2, #3	@,
	ldr	r1, .L6+68	@ tmp215,
	str	r0, [sp, #4]	@ tmp346,
	str	r5, [sp]	@ tmp193,
	movs	r0, r7	@ tmp216, tmp216
	ldr	r7, [sp, #12]	@ tmp194, %sfp
	bl	.L9		@
@ StatusScreen/DrawPages/src/DrawPage1.c:45: 		GetStringFromIndex(0x4F0));
	movs	r0, #158	@,
	lsls	r0, r0, #3	@,,
	bl	.L8		@
@ StatusScreen/DrawPages/src/DrawPage1.c:41: 	DrawTextInline(		// Res
	ldr	r7, .L6+72	@ tmp222,
	movs	r2, #3	@,
	ldr	r1, .L6+76	@ tmp221,
	movs	r3, r5	@, tmp193
	str	r0, [sp, #4]	@ tmp347,
	str	r5, [sp]	@ tmp193,
	movs	r0, r7	@ tmp222, tmp222
	ldr	r7, [sp, #12]	@ tmp194, %sfp
	bl	.L9		@
@ StatusScreen/DrawPages/src/DrawPage1.c:53: 		GetStringFromIndex(gpLuckString));
	ldr	r3, .L6+80	@ tmp225,
	ldrh	r0, [r3]	@ gpLuckString, gpLuckString
	bl	.L8		@
@ StatusScreen/DrawPages/src/DrawPage1.c:49: 	DrawTextInline(		// Lck
	ldr	r7, .L6+84	@ tmp229,
	movs	r2, #3	@,
	ldr	r1, .L6+88	@ tmp228,
	movs	r3, r5	@, tmp193
	str	r0, [sp, #4]	@ tmp348,
	str	r5, [sp]	@ tmp193,
	movs	r0, r7	@ tmp229, tmp229
	ldr	r7, [sp, #12]	@ tmp194, %sfp
	bl	.L9		@
@ StatusScreen/DrawPages/src/DrawPage1.c:59: 		GetStringFromIndex(gpCharmString));
	ldr	r3, .L6+92	@ tmp232,
	ldrh	r0, [r3]	@ gpCharmString, gpCharmString
	bl	.L8		@
@ StatusScreen/DrawPages/src/DrawPage1.c:55: 	DrawTextInline(		// Cha
	ldr	r7, .L6+96	@ tmp236,
	movs	r3, r5	@, tmp193
	movs	r2, #3	@,
	ldr	r1, .L6+100	@ tmp235,
	str	r0, [sp, #4]	@ tmp349,
	str	r5, [sp]	@ tmp193,
	movs	r0, r7	@ tmp236, tmp236
	ldr	r7, [sp, #12]	@ tmp194, %sfp
	bl	.L9		@
@ StatusScreen/DrawPages/src/DrawPage1.c:65: 		GetStringFromIndex(0x37));
	movs	r0, #55	@,
	bl	.L8		@
@ StatusScreen/DrawPages/src/DrawPage1.c:61: 	DrawTextInline(		// Mov
	ldr	r7, .L6+104	@ tmp241,
	movs	r3, r5	@, tmp193
	movs	r2, #3	@,
	ldr	r1, .L6+108	@ tmp240,
	str	r0, [sp, #4]	@ tmp350,
	str	r5, [sp]	@ tmp193,
	movs	r0, r7	@ tmp241, tmp241
	ldr	r7, [sp, #12]	@ tmp194, %sfp
	bl	.L9		@
@ StatusScreen/DrawPages/src/DrawPage1.c:71: 		GetStringFromIndex(0x4F7));
	ldr	r0, .L6+112	@,
	bl	.L8		@
@ StatusScreen/DrawPages/src/DrawPage1.c:67: 	DrawTextInline(		// Con
	ldr	r7, .L6+116	@ tmp247,
	movs	r2, #3	@,
	ldr	r1, .L6+120	@ tmp246,
	movs	r3, r5	@, tmp193
	str	r0, [sp, #4]	@ tmp351,
	str	r5, [sp]	@ tmp193,
	movs	r0, r7	@ tmp247, tmp247
	ldr	r7, [sp, #12]	@ tmp194, %sfp
	bl	.L9		@
@ StatusScreen/DrawPages/src/DrawPage1.c:77: 		GetStringFromIndex(gpStatString));
	ldr	r3, .L6+124	@ tmp250,
	ldrh	r0, [r3]	@ gpStatString, gpStatString
	bl	.L8		@
@ StatusScreen/DrawPages/src/DrawPage1.c:73: 	DrawTextInline(		// Status
	ldr	r7, .L6+128	@ tmp254,
	movs	r2, #3	@,
	ldr	r1, .L6+132	@ tmp253,
	movs	r3, r5	@, tmp193
	str	r0, [sp, #4]	@ tmp352,
	str	r5, [sp]	@ tmp193,
	movs	r0, r7	@ tmp254, tmp254
	ldr	r7, [sp, #12]	@ tmp194, %sfp
	bl	.L9		@
@ StatusScreen/DrawPages/src/DrawPage1.c:83: 	DrawStatScreenBar(0,5,1,	// Pow
	movs	r7, #20	@ _14,
@ StatusScreen/DrawPages/src/DrawPage1.c:85: 	GetUnitPower(unit),
	movs	r0, r4	@, unit
	ldr	r3, .L6+136	@ tmp257,
@ StatusScreen/DrawPages/src/DrawPage1.c:83: 	DrawStatScreenBar(0,5,1,	// Pow
	ldrsb	r7, [r4, r7]	@ _14,* _14
@ StatusScreen/DrawPages/src/DrawPage1.c:85: 	GetUnitPower(unit),
	bl	.L10		@
@ StatusScreen/DrawPages/src/DrawPage1.c:86: 	unit->pClassData->maxPow );
	ldr	r3, [r4, #4]	@ unit_2->pClassData, unit_2->pClassData
@ StatusScreen/DrawPages/src/DrawPage1.c:83: 	DrawStatScreenBar(0,5,1,	// Pow
	ldrb	r3, [r3, #20]	@ tmp259,
	lsls	r3, r3, #24	@ tmp259, tmp259,
	asrs	r3, r3, #24	@ tmp259, tmp259,
	lsls	r0, r0, #24	@ tmp261, tmp353,
	str	r3, [sp, #4]	@ tmp259,
	asrs	r0, r0, #24	@ tmp260, tmp261,
	movs	r3, r7	@, _14
	ldr	r7, .L6+140	@ tmp262,
	movs	r2, #1	@,
	movs	r1, #5	@,
	str	r0, [sp]	@ tmp260,
	movs	r0, r5	@, tmp193
	str	r7, [sp, #16]	@ tmp262, %sfp
	bl	.L9		@
@ StatusScreen/DrawPages/src/DrawPage1.c:89: 	*GetMagAt(unit),
	movs	r0, r4	@, unit
	ldr	r3, .L6+144	@ tmp263,
	bl	.L10		@
@ StatusScreen/DrawPages/src/DrawPage1.c:88: 	DrawStatScreenBar(1,5,3,	// Mag
	movs	r7, #0	@ _20,
	ldr	r3, .L6+148	@ tmp264,
	ldrsb	r7, [r0, r7]	@ _20,* _20
	movs	r0, r4	@, unit
	bl	.L10		@
	ldr	r3, .L6+152	@ tmp267,
	str	r0, [sp, #20]	@ tmp355, %sfp
	movs	r0, r4	@, unit
	bl	.L10		@
	ldr	r3, [sp, #20]	@ tmp265, %sfp
	movs	r2, #3	@,
	movs	r1, #5	@,
	str	r0, [sp, #4]	@ tmp356,
	str	r3, [sp]	@ tmp265,
	movs	r0, #1	@,
	movs	r3, r7	@, _20
	ldr	r7, [sp, #16]	@ tmp262, %sfp
	bl	.L9		@
@ StatusScreen/DrawPages/src/DrawPage1.c:93: 	DrawStatScreenBar(2,5,5,	// Skl
	movs	r7, #21	@ _23,
@ StatusScreen/DrawPages/src/DrawPage1.c:95: 	GetUnitSkill(unit),
	movs	r0, r4	@, unit
	ldr	r3, .L6+156	@ tmp271,
@ StatusScreen/DrawPages/src/DrawPage1.c:93: 	DrawStatScreenBar(2,5,5,	// Skl
	ldrsb	r7, [r4, r7]	@ _23,* _23
@ StatusScreen/DrawPages/src/DrawPage1.c:95: 	GetUnitSkill(unit),
	bl	.L10		@
@ StatusScreen/DrawPages/src/DrawPage1.c:93: 	DrawStatScreenBar(2,5,5,	// Skl
	movs	r2, #5	@,
@ StatusScreen/DrawPages/src/DrawPage1.c:96: 	unit->pClassData->maxSkl );
	ldr	r3, [r4, #4]	@ unit_2->pClassData, unit_2->pClassData
@ StatusScreen/DrawPages/src/DrawPage1.c:93: 	DrawStatScreenBar(2,5,5,	// Skl
	ldrb	r3, [r3, #21]	@ tmp273,
	lsls	r0, r0, #24	@ tmp275, tmp357,
	lsls	r3, r3, #24	@ tmp273, tmp273,
	asrs	r3, r3, #24	@ tmp273, tmp273,
	asrs	r0, r0, #24	@ tmp274, tmp275,
	movs	r1, r2	@,
	str	r3, [sp, #4]	@ tmp273,
	str	r0, [sp]	@ tmp274,
	movs	r3, r7	@, _23
	movs	r0, #2	@,
	ldr	r7, [sp, #16]	@ tmp262, %sfp
	bl	.L9		@
@ StatusScreen/DrawPages/src/DrawPage1.c:98: 	DrawStatScreenBar(3,5,7,	// Spd
	movs	r7, #22	@ _28,
@ StatusScreen/DrawPages/src/DrawPage1.c:100: 	GetUnitSpeed(unit),
	movs	r0, r4	@, unit
	ldr	r3, .L6+160	@ tmp277,
@ StatusScreen/DrawPages/src/DrawPage1.c:98: 	DrawStatScreenBar(3,5,7,	// Spd
	ldrsb	r7, [r4, r7]	@ _28,* _28
@ StatusScreen/DrawPages/src/DrawPage1.c:100: 	GetUnitSpeed(unit),
	bl	.L10		@
@ StatusScreen/DrawPages/src/DrawPage1.c:101: 	unit->pClassData->maxSpd );
	ldr	r3, [r4, #4]	@ unit_2->pClassData, unit_2->pClassData
@ StatusScreen/DrawPages/src/DrawPage1.c:98: 	DrawStatScreenBar(3,5,7,	// Spd
	ldrb	r3, [r3, #22]	@ tmp279,
	lsls	r0, r0, #24	@ tmp281, tmp358,
	lsls	r3, r3, #24	@ tmp279, tmp279,
	asrs	r3, r3, #24	@ tmp279, tmp279,
	asrs	r0, r0, #24	@ tmp280, tmp281,
	movs	r2, #7	@,
	movs	r1, #5	@,
	str	r3, [sp, #4]	@ tmp279,
	str	r0, [sp]	@ tmp280,
	movs	r3, r7	@, _28
	movs	r0, #3	@,
	ldr	r7, [sp, #16]	@ tmp262, %sfp
	bl	.L9		@
@ StatusScreen/DrawPages/src/DrawPage1.c:103: 	DrawStatScreenBar(4,5,9,	// Def
	movs	r7, #23	@ _33,
@ StatusScreen/DrawPages/src/DrawPage1.c:105: 	GetUnitDefense(unit),
	movs	r0, r4	@, unit
	ldr	r3, .L6+164	@ tmp283,
@ StatusScreen/DrawPages/src/DrawPage1.c:103: 	DrawStatScreenBar(4,5,9,	// Def
	ldrsb	r7, [r4, r7]	@ _33,* _33
@ StatusScreen/DrawPages/src/DrawPage1.c:105: 	GetUnitDefense(unit),
	bl	.L10		@
@ StatusScreen/DrawPages/src/DrawPage1.c:106: 	unit->pClassData->maxDef );
	ldr	r3, [r4, #4]	@ unit_2->pClassData, unit_2->pClassData
@ StatusScreen/DrawPages/src/DrawPage1.c:103: 	DrawStatScreenBar(4,5,9,	// Def
	ldrb	r3, [r3, #23]	@ tmp285,
	lsls	r0, r0, #24	@ tmp287, tmp359,
	lsls	r3, r3, #24	@ tmp285, tmp285,
	asrs	r3, r3, #24	@ tmp285, tmp285,
	asrs	r0, r0, #24	@ tmp286, tmp287,
	movs	r2, #9	@,
	movs	r1, #5	@,
	str	r3, [sp, #4]	@ tmp285,
	str	r0, [sp]	@ tmp286,
	movs	r3, r7	@, _33
	movs	r0, #4	@,
	ldr	r7, [sp, #16]	@ tmp262, %sfp
	bl	.L9		@
@ StatusScreen/DrawPages/src/DrawPage1.c:108: 	DrawStatScreenBar(5,5,11,	// Res
	movs	r7, #24	@ _38,
@ StatusScreen/DrawPages/src/DrawPage1.c:110: 	GetUnitResistance(unit),
	movs	r0, r4	@, unit
	ldr	r3, .L6+168	@ tmp289,
@ StatusScreen/DrawPages/src/DrawPage1.c:108: 	DrawStatScreenBar(5,5,11,	// Res
	ldrsb	r7, [r4, r7]	@ _38,* _38
@ StatusScreen/DrawPages/src/DrawPage1.c:110: 	GetUnitResistance(unit),
	bl	.L10		@
@ StatusScreen/DrawPages/src/DrawPage1.c:108: 	DrawStatScreenBar(5,5,11,	// Res
	movs	r1, #5	@,
@ StatusScreen/DrawPages/src/DrawPage1.c:111: 	unit->pClassData->maxRes );
	ldr	r3, [r4, #4]	@ unit_2->pClassData, unit_2->pClassData
@ StatusScreen/DrawPages/src/DrawPage1.c:108: 	DrawStatScreenBar(5,5,11,	// Res
	ldrb	r3, [r3, #24]	@ tmp291,
	lsls	r0, r0, #24	@ tmp293, tmp360,
	lsls	r3, r3, #24	@ tmp291, tmp291,
	asrs	r3, r3, #24	@ tmp291, tmp291,
	asrs	r0, r0, #24	@ tmp292, tmp293,
	movs	r2, #11	@,
	str	r3, [sp, #4]	@ tmp291,
	str	r0, [sp]	@ tmp292,
	movs	r3, r7	@, _38
	movs	r0, r1	@,
	ldr	r7, [sp, #16]	@ tmp262, %sfp
	bl	.L9		@
@ StatusScreen/DrawPages/src/DrawPage1.c:113: 	DrawStatScreenBar(6,13,1,	// Lck
	movs	r7, #25	@ _43,
@ StatusScreen/DrawPages/src/DrawPage1.c:115: 	GetUnitLuck(unit),
	movs	r0, r4	@, unit
	ldr	r3, .L6+172	@ tmp295,
@ StatusScreen/DrawPages/src/DrawPage1.c:113: 	DrawStatScreenBar(6,13,1,	// Lck
	ldrsb	r7, [r4, r7]	@ _43,* _43
@ StatusScreen/DrawPages/src/DrawPage1.c:115: 	GetUnitLuck(unit),
	bl	.L10		@
@ StatusScreen/DrawPages/src/DrawPage1.c:113: 	DrawStatScreenBar(6,13,1,	// Lck
	movs	r3, #30	@ tmp296,
	lsls	r0, r0, #24	@ tmp298, tmp361,
	asrs	r0, r0, #24	@ tmp297, tmp298,
	movs	r2, #1	@,
	movs	r1, #13	@,
	str	r3, [sp, #4]	@ tmp296,
	str	r0, [sp]	@ tmp297,
	movs	r3, r7	@, _43
	movs	r0, #6	@,
	ldr	r7, [sp, #16]	@ tmp262, %sfp
	bl	.L9		@
@ StatusScreen/DrawPages/src/DrawPage1.c:119: 	*GetChaAt(unit),
	movs	r0, r4	@, unit
	ldr	r3, .L6+176	@ tmp300,
	bl	.L10		@
@ StatusScreen/DrawPages/src/DrawPage1.c:118: 	DrawStatScreenBar(7,13,3,	// Cha
	movs	r7, #0	@ _47,
	ldr	r3, .L6+180	@ tmp301,
	ldrsb	r7, [r0, r7]	@ _47,* _47
	movs	r0, r4	@, unit
	bl	.L10		@
	ldr	r3, .L6+184	@ tmp304,
	str	r0, [sp, #20]	@ tmp363, %sfp
	movs	r0, r4	@, unit
	bl	.L10		@
	ldr	r3, [sp, #20]	@ tmp302, %sfp
	movs	r2, #3	@,
	movs	r1, #13	@,
	str	r0, [sp, #4]	@ tmp364,
	str	r3, [sp]	@ tmp302,
	movs	r0, #7	@,
	movs	r3, r7	@, _47
	ldr	r7, [sp, #16]	@ tmp262, %sfp
	bl	.L9		@
@ StatusScreen/DrawPages/src/DrawPage1.c:124: 	unit->pClassData->baseMov,
	movs	r7, #18	@ _51,
	ldr	r3, [r4, #4]	@ unit_2->pClassData, unit_2->pClassData
@ StatusScreen/DrawPages/src/DrawPage1.c:123: 	DrawStatScreenBar(8,13,5,	// Mov
	movs	r0, r4	@, unit
@ StatusScreen/DrawPages/src/DrawPage1.c:124: 	unit->pClassData->baseMov,
	ldrsb	r7, [r3, r7]	@ _51,* _51
@ StatusScreen/DrawPages/src/DrawPage1.c:123: 	DrawStatScreenBar(8,13,5,	// Mov
	ldr	r3, .L6+188	@ tmp309,
	bl	.L10		@
	movs	r3, #15	@ tmp312,
	movs	r1, #13	@,
	movs	r2, #5	@,
	str	r3, [sp, #4]	@ tmp312,
	str	r0, [sp]	@ tmp365,
	movs	r3, r7	@, _51
	movs	r0, #8	@,
	ldr	r7, [sp, #16]	@ tmp262, %sfp
	bl	.L9		@
@ StatusScreen/DrawPages/src/DrawPage1.c:129: 	unit->pClassData->baseCon + unit->pCharacterData->baseCon,
	ldr	r2, [r4, #4]	@ unit_2->pClassData, unit_2->pClassData
@ StatusScreen/DrawPages/src/DrawPage1.c:129: 	unit->pClassData->baseCon + unit->pCharacterData->baseCon,
	ldr	r3, [r4]	@ unit_2->pCharacterData, unit_2->pCharacterData
@ StatusScreen/DrawPages/src/DrawPage1.c:129: 	unit->pClassData->baseCon + unit->pCharacterData->baseCon,
	ldrb	r7, [r2, #17]	@ tmp317,
	ldrb	r3, [r3, #19]	@ tmp319,
@ StatusScreen/DrawPages/src/DrawPage1.c:128: 	DrawStatScreenBar(9,13,7,	// Con
	movs	r0, r4	@, unit
@ StatusScreen/DrawPages/src/DrawPage1.c:129: 	unit->pClassData->baseCon + unit->pCharacterData->baseCon,
	adds	r7, r7, r3	@ tmp320, tmp317, tmp319
@ StatusScreen/DrawPages/src/DrawPage1.c:128: 	DrawStatScreenBar(9,13,7,	// Con
	ldr	r3, .L6+192	@ tmp322,
	bl	.L10		@
@ StatusScreen/DrawPages/src/DrawPage1.c:131: 	unit->pClassData->maxCon );
	ldr	r3, [r4, #4]	@ unit_2->pClassData, unit_2->pClassData
@ StatusScreen/DrawPages/src/DrawPage1.c:128: 	DrawStatScreenBar(9,13,7,	// Con
	ldrb	r3, [r3, #25]	@ tmp326,
	lsls	r7, r7, #24	@ tmp321, tmp320,
	lsls	r3, r3, #24	@ tmp326, tmp326,
	asrs	r7, r7, #24	@ _60, tmp321,
	asrs	r3, r3, #24	@ tmp326, tmp326,
	movs	r2, #7	@,
	movs	r1, #13	@,
	str	r3, [sp, #4]	@ tmp326,
	str	r0, [sp]	@ tmp366,
	movs	r3, r7	@, _60
	movs	r0, #9	@,
	ldr	r7, [sp, #16]	@ tmp262, %sfp
	bl	.L9		@
@ StatusScreen/DrawPages/src/DrawPage1.c:136: 	UnitExt* ext = GetUnitExtByUnit(unit);
	movs	r0, r4	@, unit
	ldr	r3, .L6+196	@ tmp328,
	bl	.L10		@
	movs	r4, r0	@ ext, tmp367
@ StatusScreen/DrawPages/src/DrawPage1.c:137: 	if( NULL == ext )
	cmp	r0, r5	@ ext,
	beq	.L2		@,
@ StatusScreen/DrawPages/src/DrawPage1.c:144: 		GetStringFromIndex(gpEqpString));
	ldr	r3, .L6+200	@ tmp329,
	ldrh	r0, [r3]	@ gpEqpString, gpEqpString
	bl	.L8		@
@ StatusScreen/DrawPages/src/DrawPage1.c:140: 	DrawTextInline(		// Status
	ldr	r6, .L6+204	@ tmp333,
	movs	r3, r5	@, tmp193
	movs	r2, #3	@,
	ldr	r1, .L6+208	@ tmp332,
	str	r0, [sp, #4]	@ tmp368,
	str	r5, [sp]	@ tmp193,
	movs	r0, r6	@ tmp333, tmp333
	ldr	r5, [sp, #12]	@ tmp194, %sfp
	bl	.L11		@
@ StatusScreen/DrawPages/src/DrawPage1.c:146: 	DrawIcon(
	ldr	r3, .L6+212	@ tmp337,
	ldrh	r0, [r4, #14]	@ tmp336,
	bl	.L10		@
	movs	r2, #128	@,
	ldr	r3, .L6+216	@ tmp339,
	movs	r1, r0	@ _13, tmp369
	lsls	r2, r2, #7	@,,
	movs	r0, r3	@ tmp339, tmp339
	ldr	r3, .L6+220	@ tmp340,
	bl	.L10		@
.L2:
@ StatusScreen/DrawPages/src/DrawPage1.c:160: 	NuDrawStatScreenBwl();
	ldr	r3, .L6+224	@ tmp341,
	bl	.L10		@
@ StatusScreen/DrawPages/src/DrawPage1.c:162: }
	add	sp, sp, #28	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L7:
	.align	2
.L6:
	.word	gStatScreen
	.word	GetStringFromIndex
	.word	1278
	.word	gStatScreen+48
	.word	DrawTextInline
	.word	gBmFrameTmap0+66
	.word	1279
	.word	gStatScreen+112
	.word	gBmFrameTmap0+194
	.word	1260
	.word	gStatScreen+56
	.word	gBmFrameTmap0+322
	.word	1261
	.word	gStatScreen+64
	.word	gBmFrameTmap0+450
	.word	1263
	.word	gStatScreen+80
	.word	gBmFrameTmap0+578
	.word	gStatScreen+88
	.word	gBmFrameTmap0+706
	.word	gpLuckString
	.word	gStatScreen+72
	.word	gBmFrameTmap0+82
	.word	gpCharmString
	.word	gStatScreen+128
	.word	gBmFrameTmap0+210
	.word	gStatScreen+96
	.word	gBmFrameTmap0+338
	.word	1271
	.word	gStatScreen+104
	.word	gBmFrameTmap0+466
	.word	gpStatString
	.word	gStatScreen+136
	.word	gBmFrameTmap0+722
	.word	GetUnitPower
	.word	DrawStatScreenBar
	.word	GetMagAt
	.word	GetMag
	.word	GetClassMaxMag
	.word	GetUnitSkill
	.word	GetUnitSpeed
	.word	GetUnitDefense
	.word	GetUnitResistance
	.word	GetUnitLuck
	.word	GetChaAt
	.word	GetCha
	.word	GetClassMaxCha
	.word	GetMov
	.word	GetCon
	.word	GetUnitExtByUnit
	.word	gpEqpString
	.word	gStatScreen+120
	.word	gBmFrameTmap0+594
	.word	GetItemIconId
	.word	gBmFrameTmap0+600
	.word	DrawIcon
	.word	NuDrawStatScreenBwl
	.size	StatScreen_DrawPage1, .-StatScreen_DrawPage1
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L10:
	bx	r3
.L11:
	bx	r5
.L8:
	bx	r6
.L9:
	bx	r7
