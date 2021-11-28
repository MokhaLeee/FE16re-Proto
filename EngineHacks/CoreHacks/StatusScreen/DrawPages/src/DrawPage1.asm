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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ StatusScreen/DrawPages/src/DrawPage1.c:136: 	Unit* unit = gStatScreen.unit;
	ldr	r3, .L2	@ tmp181,
@ StatusScreen/DrawPages/src/DrawPage1.c:135: void StatScreen_DrawPage1(void){
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
@ StatusScreen/DrawPages/src/DrawPage1.c:12: 		GetStringFromIndex(0x4FE));
	ldr	r7, .L2+4	@ tmp183,
@ StatusScreen/DrawPages/src/DrawPage1.c:141: }
	@ sp needed	@
@ StatusScreen/DrawPages/src/DrawPage1.c:12: 		GetStringFromIndex(0x4FE));
	ldr	r0, .L2+8	@,
@ StatusScreen/DrawPages/src/DrawPage1.c:136: 	Unit* unit = gStatScreen.unit;
	ldr	r4, [r3, #12]	@ unit, gStatScreen.unit
@ StatusScreen/DrawPages/src/DrawPage1.c:8: 	DrawTextInline(		// Str
	movs	r5, #0	@ tmp186,
@ StatusScreen/DrawPages/src/DrawPage1.c:12: 		GetStringFromIndex(0x4FE));
	bl	.L4		@
@ StatusScreen/DrawPages/src/DrawPage1.c:8: 	DrawTextInline(		// Str
	ldr	r6, .L2+12	@ tmp185,
	movs	r3, r5	@, tmp186
	movs	r2, #3	@,
	ldr	r1, .L2+16	@ tmp184,
	str	r0, [sp, #4]	@ tmp322,
	str	r5, [sp]	@ tmp186,
	movs	r0, r6	@ tmp185, tmp185
	ldr	r6, .L2+20	@ tmp187,
	bl	.L5		@
@ StatusScreen/DrawPages/src/DrawPage1.c:18: 		GetStringFromIndex(0x4FF));
	ldr	r0, .L2+24	@,
	bl	.L4		@
	movs	r3, r0	@ tmp323,
@ StatusScreen/DrawPages/src/DrawPage1.c:14: 	DrawTextInline(		// Mag
	movs	r2, #3	@,
	ldr	r1, .L2+28	@ tmp190,
	str	r3, [sp, #4]	@ tmp323,
	str	r5, [sp]	@ tmp186,
	movs	r3, r5	@, tmp186
	ldr	r0, .L2+32	@ tmp191,
	bl	.L5		@
@ StatusScreen/DrawPages/src/DrawPage1.c:24: 		GetStringFromIndex(0x4EC));
	ldr	r0, .L2+36	@,
	bl	.L4		@
	movs	r3, r0	@ tmp324,
@ StatusScreen/DrawPages/src/DrawPage1.c:20: 	DrawTextInline(		// Skl
	movs	r2, #3	@,
	ldr	r1, .L2+40	@ tmp196,
	str	r3, [sp, #4]	@ tmp324,
	str	r5, [sp]	@ tmp186,
	movs	r3, r5	@, tmp186
	ldr	r0, .L2+44	@ tmp197,
	bl	.L5		@
@ StatusScreen/DrawPages/src/DrawPage1.c:30: 		GetStringFromIndex(0x4ED));
	ldr	r0, .L2+48	@,
	bl	.L4		@
	movs	r3, r0	@ tmp325,
@ StatusScreen/DrawPages/src/DrawPage1.c:26: 	DrawTextInline(		// Spd
	movs	r2, #3	@,
	ldr	r1, .L2+52	@ tmp202,
	str	r3, [sp, #4]	@ tmp325,
	str	r5, [sp]	@ tmp186,
	movs	r3, r5	@, tmp186
	ldr	r0, .L2+56	@ tmp203,
	bl	.L5		@
@ StatusScreen/DrawPages/src/DrawPage1.c:36: 		GetStringFromIndex(0x4EF));
	ldr	r0, .L2+60	@,
	bl	.L4		@
	movs	r3, r0	@ tmp326,
@ StatusScreen/DrawPages/src/DrawPage1.c:32: 	DrawTextInline(		// Def
	movs	r2, #3	@,
	ldr	r1, .L2+64	@ tmp208,
	str	r3, [sp, #4]	@ tmp326,
	str	r5, [sp]	@ tmp186,
	movs	r3, r5	@, tmp186
	ldr	r0, .L2+68	@ tmp209,
	bl	.L5		@
@ StatusScreen/DrawPages/src/DrawPage1.c:42: 		GetStringFromIndex(0x4F0));
	movs	r0, #158	@ tmp347,
	lsls	r0, r0, #3	@, tmp347,
	bl	.L4		@
	movs	r3, r0	@ tmp327,
@ StatusScreen/DrawPages/src/DrawPage1.c:38: 	DrawTextInline(		// Res
	movs	r2, #3	@,
	ldr	r1, .L2+72	@ tmp214,
	str	r3, [sp, #4]	@ tmp327,
	str	r5, [sp]	@ tmp186,
	movs	r3, r5	@, tmp186
	ldr	r0, .L2+76	@ tmp215,
	bl	.L5		@
@ StatusScreen/DrawPages/src/DrawPage1.c:50: 		GetStringFromIndex(gpLuckString));
	ldr	r3, .L2+80	@ tmp218,
	ldrh	r0, [r3]	@ gpLuckString, gpLuckString
	bl	.L4		@
	movs	r3, r0	@ tmp328,
@ StatusScreen/DrawPages/src/DrawPage1.c:46: 	DrawTextInline(		// Lck
	movs	r2, #3	@,
	ldr	r1, .L2+84	@ tmp221,
	str	r3, [sp, #4]	@ tmp328,
	str	r5, [sp]	@ tmp186,
	movs	r3, r5	@, tmp186
	ldr	r0, .L2+88	@ tmp222,
	bl	.L5		@
@ StatusScreen/DrawPages/src/DrawPage1.c:56: 		GetStringFromIndex(gpCharmString));
	ldr	r3, .L2+92	@ tmp225,
	ldrh	r0, [r3]	@ gpCharmString, gpCharmString
	bl	.L4		@
	movs	r3, r0	@ tmp329,
@ StatusScreen/DrawPages/src/DrawPage1.c:52: 	DrawTextInline(		// Cha
	movs	r2, #3	@,
	ldr	r1, .L2+96	@ tmp228,
	str	r3, [sp, #4]	@ tmp329,
	str	r5, [sp]	@ tmp186,
	movs	r3, r5	@, tmp186
	ldr	r0, .L2+100	@ tmp229,
	bl	.L5		@
@ StatusScreen/DrawPages/src/DrawPage1.c:62: 		GetStringFromIndex(0x37));
	movs	r0, #55	@,
	bl	.L4		@
	movs	r3, r0	@ tmp330,
@ StatusScreen/DrawPages/src/DrawPage1.c:58: 	DrawTextInline(		// Mov
	movs	r2, #3	@,
	ldr	r1, .L2+104	@ tmp233,
	str	r3, [sp, #4]	@ tmp330,
	str	r5, [sp]	@ tmp186,
	movs	r3, r5	@, tmp186
	ldr	r0, .L2+108	@ tmp234,
	bl	.L5		@
@ StatusScreen/DrawPages/src/DrawPage1.c:68: 		GetStringFromIndex(0x4F7));
	ldr	r0, .L2+112	@,
	bl	.L4		@
	movs	r3, r0	@ tmp331,
@ StatusScreen/DrawPages/src/DrawPage1.c:64: 	DrawTextInline(		// Con
	movs	r2, #3	@,
	ldr	r1, .L2+116	@ tmp239,
	str	r3, [sp, #4]	@ tmp331,
	str	r5, [sp]	@ tmp186,
	movs	r3, r5	@, tmp186
	ldr	r0, .L2+120	@ tmp240,
	bl	.L5		@
@ StatusScreen/DrawPages/src/DrawPage1.c:74: 		GetStringFromIndex(gpStatString));
	ldr	r3, .L2+124	@ tmp243,
	ldrh	r0, [r3]	@ gpStatString, gpStatString
	bl	.L4		@
@ StatusScreen/DrawPages/src/DrawPage1.c:70: 	DrawTextInline(		// Status
	ldr	r7, .L2+128	@ tmp247,
	movs	r3, r5	@, tmp186
	movs	r2, #3	@,
	ldr	r1, .L2+132	@ tmp246,
	str	r0, [sp, #4]	@ tmp332,
	str	r5, [sp]	@ tmp186,
	movs	r0, r7	@ tmp247, tmp247
	bl	.L5		@
@ StatusScreen/DrawPages/src/DrawPage1.c:80: 	DrawStatScreenBar(0,5,1,	// Pow
	movs	r6, #20	@ _6,
@ StatusScreen/DrawPages/src/DrawPage1.c:82: 	GetUnitPower(unit),
	movs	r0, r4	@, unit
	ldr	r3, .L2+136	@ tmp250,
@ StatusScreen/DrawPages/src/DrawPage1.c:80: 	DrawStatScreenBar(0,5,1,	// Pow
	ldrsb	r6, [r4, r6]	@ _6,* _6
@ StatusScreen/DrawPages/src/DrawPage1.c:82: 	GetUnitPower(unit),
	bl	.L6		@
@ StatusScreen/DrawPages/src/DrawPage1.c:83: 	unit->pClassData->maxPow );
	ldr	r3, [r4, #4]	@ unit_2->pClassData, unit_2->pClassData
@ StatusScreen/DrawPages/src/DrawPage1.c:80: 	DrawStatScreenBar(0,5,1,	// Pow
	ldrb	r3, [r3, #20]	@ tmp252,
	lsls	r0, r0, #24	@ tmp254, tmp333,
	lsls	r3, r3, #24	@ tmp252, tmp252,
	asrs	r3, r3, #24	@ tmp252, tmp252,
	asrs	r0, r0, #24	@ tmp253, tmp254,
	movs	r2, #1	@,
	movs	r1, #5	@,
	str	r3, [sp, #4]	@ tmp252,
	str	r0, [sp]	@ tmp253,
	movs	r3, r6	@, _6
	movs	r0, r5	@, tmp186
	ldr	r5, .L2+140	@ tmp255,
	bl	.L7		@
@ StatusScreen/DrawPages/src/DrawPage1.c:86: 	*GetMagAt(unit),
	movs	r0, r4	@, unit
	ldr	r3, .L2+144	@ tmp256,
	bl	.L6		@
@ StatusScreen/DrawPages/src/DrawPage1.c:85: 	DrawStatScreenBar(1,5,3,	// Mag
	movs	r7, #0	@ _12,
	ldr	r3, .L2+148	@ tmp257,
	ldrsb	r7, [r0, r7]	@ _12,* _12
	movs	r0, r4	@, unit
	bl	.L6		@
	movs	r6, r0	@ tmp258, tmp335
	ldr	r3, .L2+152	@ tmp260,
	movs	r0, r4	@, unit
	bl	.L6		@
	str	r6, [sp]	@ tmp258,
@ StatusScreen/DrawPages/src/DrawPage1.c:90: 	DrawStatScreenBar(2,5,5,	// Skl
	movs	r6, #21	@ _15,
@ StatusScreen/DrawPages/src/DrawPage1.c:85: 	DrawStatScreenBar(1,5,3,	// Mag
	movs	r3, r7	@, _12
	movs	r2, #3	@,
	movs	r1, #5	@,
	str	r0, [sp, #4]	@ tmp336,
	movs	r0, #1	@,
	bl	.L7		@
@ StatusScreen/DrawPages/src/DrawPage1.c:92: 	GetUnitSkill(unit),
	movs	r0, r4	@, unit
	ldr	r3, .L2+156	@ tmp264,
@ StatusScreen/DrawPages/src/DrawPage1.c:90: 	DrawStatScreenBar(2,5,5,	// Skl
	ldrsb	r6, [r4, r6]	@ _15,* _15
@ StatusScreen/DrawPages/src/DrawPage1.c:92: 	GetUnitSkill(unit),
	bl	.L6		@
@ StatusScreen/DrawPages/src/DrawPage1.c:93: 	unit->pClassData->maxSkl );
	ldr	r3, [r4, #4]	@ unit_2->pClassData, unit_2->pClassData
@ StatusScreen/DrawPages/src/DrawPage1.c:90: 	DrawStatScreenBar(2,5,5,	// Skl
	ldrb	r3, [r3, #21]	@ tmp266,
	movs	r2, #5	@,
	lsls	r3, r3, #24	@ tmp266, tmp266,
	asrs	r3, r3, #24	@ tmp266, tmp266,
	str	r3, [sp, #4]	@ tmp266,
	movs	r3, r6	@, _15
@ StatusScreen/DrawPages/src/DrawPage1.c:95: 	DrawStatScreenBar(3,5,7,	// Spd
	movs	r6, #22	@ _20,
@ StatusScreen/DrawPages/src/DrawPage1.c:90: 	DrawStatScreenBar(2,5,5,	// Skl
	lsls	r0, r0, #24	@ tmp268, tmp337,
	asrs	r0, r0, #24	@ tmp267, tmp268,
	movs	r1, r2	@,
	str	r0, [sp]	@ tmp267,
	movs	r0, #2	@,
	bl	.L7		@
@ StatusScreen/DrawPages/src/DrawPage1.c:97: 	GetUnitSpeed(unit),
	movs	r0, r4	@, unit
	ldr	r3, .L2+160	@ tmp270,
@ StatusScreen/DrawPages/src/DrawPage1.c:95: 	DrawStatScreenBar(3,5,7,	// Spd
	ldrsb	r6, [r4, r6]	@ _20,* _20
@ StatusScreen/DrawPages/src/DrawPage1.c:97: 	GetUnitSpeed(unit),
	bl	.L6		@
@ StatusScreen/DrawPages/src/DrawPage1.c:98: 	unit->pClassData->maxSpd );
	ldr	r3, [r4, #4]	@ unit_2->pClassData, unit_2->pClassData
@ StatusScreen/DrawPages/src/DrawPage1.c:95: 	DrawStatScreenBar(3,5,7,	// Spd
	ldrb	r3, [r3, #22]	@ tmp272,
	lsls	r3, r3, #24	@ tmp272, tmp272,
	asrs	r3, r3, #24	@ tmp272, tmp272,
	str	r3, [sp, #4]	@ tmp272,
	movs	r3, r6	@, _20
@ StatusScreen/DrawPages/src/DrawPage1.c:100: 	DrawStatScreenBar(4,5,9,	// Def
	movs	r6, #23	@ _25,
@ StatusScreen/DrawPages/src/DrawPage1.c:95: 	DrawStatScreenBar(3,5,7,	// Spd
	lsls	r0, r0, #24	@ tmp274, tmp338,
	asrs	r0, r0, #24	@ tmp273, tmp274,
	movs	r2, #7	@,
	movs	r1, #5	@,
	str	r0, [sp]	@ tmp273,
	movs	r0, #3	@,
	bl	.L7		@
@ StatusScreen/DrawPages/src/DrawPage1.c:102: 	GetUnitDefense(unit),
	movs	r0, r4	@, unit
	ldr	r3, .L2+164	@ tmp276,
@ StatusScreen/DrawPages/src/DrawPage1.c:100: 	DrawStatScreenBar(4,5,9,	// Def
	ldrsb	r6, [r4, r6]	@ _25,* _25
@ StatusScreen/DrawPages/src/DrawPage1.c:102: 	GetUnitDefense(unit),
	bl	.L6		@
@ StatusScreen/DrawPages/src/DrawPage1.c:103: 	unit->pClassData->maxDef );
	ldr	r3, [r4, #4]	@ unit_2->pClassData, unit_2->pClassData
@ StatusScreen/DrawPages/src/DrawPage1.c:100: 	DrawStatScreenBar(4,5,9,	// Def
	ldrb	r3, [r3, #23]	@ tmp278,
	lsls	r3, r3, #24	@ tmp278, tmp278,
	asrs	r3, r3, #24	@ tmp278, tmp278,
	str	r3, [sp, #4]	@ tmp278,
	movs	r3, r6	@, _25
@ StatusScreen/DrawPages/src/DrawPage1.c:105: 	DrawStatScreenBar(5,5,11,	// Res
	movs	r6, #24	@ _30,
@ StatusScreen/DrawPages/src/DrawPage1.c:100: 	DrawStatScreenBar(4,5,9,	// Def
	lsls	r0, r0, #24	@ tmp280, tmp339,
	asrs	r0, r0, #24	@ tmp279, tmp280,
	movs	r2, #9	@,
	movs	r1, #5	@,
	str	r0, [sp]	@ tmp279,
	movs	r0, #4	@,
	bl	.L7		@
@ StatusScreen/DrawPages/src/DrawPage1.c:107: 	GetUnitResistance(unit),
	movs	r0, r4	@, unit
	ldr	r3, .L2+168	@ tmp282,
@ StatusScreen/DrawPages/src/DrawPage1.c:105: 	DrawStatScreenBar(5,5,11,	// Res
	ldrsb	r6, [r4, r6]	@ _30,* _30
@ StatusScreen/DrawPages/src/DrawPage1.c:107: 	GetUnitResistance(unit),
	bl	.L6		@
@ StatusScreen/DrawPages/src/DrawPage1.c:108: 	unit->pClassData->maxRes );
	ldr	r3, [r4, #4]	@ unit_2->pClassData, unit_2->pClassData
@ StatusScreen/DrawPages/src/DrawPage1.c:105: 	DrawStatScreenBar(5,5,11,	// Res
	ldrb	r3, [r3, #24]	@ tmp284,
	movs	r1, #5	@,
	lsls	r3, r3, #24	@ tmp284, tmp284,
	asrs	r3, r3, #24	@ tmp284, tmp284,
	str	r3, [sp, #4]	@ tmp284,
	movs	r3, r6	@, _30
@ StatusScreen/DrawPages/src/DrawPage1.c:110: 	DrawStatScreenBar(6,13,1,	// Lck
	movs	r6, #25	@ _35,
@ StatusScreen/DrawPages/src/DrawPage1.c:105: 	DrawStatScreenBar(5,5,11,	// Res
	lsls	r0, r0, #24	@ tmp286, tmp340,
	asrs	r0, r0, #24	@ tmp285, tmp286,
	movs	r2, #11	@,
	str	r0, [sp]	@ tmp285,
	movs	r0, r1	@,
	bl	.L7		@
@ StatusScreen/DrawPages/src/DrawPage1.c:112: 	GetUnitLuck(unit),
	movs	r0, r4	@, unit
	ldr	r3, .L2+172	@ tmp288,
@ StatusScreen/DrawPages/src/DrawPage1.c:110: 	DrawStatScreenBar(6,13,1,	// Lck
	ldrsb	r6, [r4, r6]	@ _35,* _35
@ StatusScreen/DrawPages/src/DrawPage1.c:112: 	GetUnitLuck(unit),
	bl	.L6		@
@ StatusScreen/DrawPages/src/DrawPage1.c:110: 	DrawStatScreenBar(6,13,1,	// Lck
	movs	r3, #30	@ tmp289,
	lsls	r0, r0, #24	@ tmp291, tmp341,
	asrs	r0, r0, #24	@ tmp290, tmp291,
	movs	r2, #1	@,
	movs	r1, #13	@,
	str	r3, [sp, #4]	@ tmp289,
	str	r0, [sp]	@ tmp290,
	movs	r3, r6	@, _35
	movs	r0, #6	@,
	bl	.L7		@
@ StatusScreen/DrawPages/src/DrawPage1.c:116: 	*GetChaAt(unit),
	movs	r0, r4	@, unit
	ldr	r3, .L2+176	@ tmp293,
	bl	.L6		@
@ StatusScreen/DrawPages/src/DrawPage1.c:115: 	DrawStatScreenBar(7,13,3,	// Cha
	movs	r7, #0	@ _39,
	ldr	r3, .L2+180	@ tmp294,
	ldrsb	r7, [r0, r7]	@ _39,* _39
	movs	r0, r4	@, unit
	bl	.L6		@
	movs	r6, r0	@ tmp295, tmp343
	ldr	r3, .L2+184	@ tmp297,
	movs	r0, r4	@, unit
	bl	.L6		@
	str	r6, [sp]	@ tmp295,
@ StatusScreen/DrawPages/src/DrawPage1.c:121: 	unit->pClassData->baseMov,
	movs	r6, #18	@ _43,
@ StatusScreen/DrawPages/src/DrawPage1.c:115: 	DrawStatScreenBar(7,13,3,	// Cha
	movs	r3, r7	@, _39
	movs	r2, #3	@,
	movs	r1, #13	@,
	str	r0, [sp, #4]	@ tmp344,
	movs	r0, #7	@,
	bl	.L7		@
@ StatusScreen/DrawPages/src/DrawPage1.c:121: 	unit->pClassData->baseMov,
	ldr	r3, [r4, #4]	@ unit_2->pClassData, unit_2->pClassData
@ StatusScreen/DrawPages/src/DrawPage1.c:120: 	DrawStatScreenBar(8,13,5,	// Mov
	movs	r0, r4	@, unit
@ StatusScreen/DrawPages/src/DrawPage1.c:121: 	unit->pClassData->baseMov,
	ldrsb	r6, [r3, r6]	@ _43,* _43
@ StatusScreen/DrawPages/src/DrawPage1.c:120: 	DrawStatScreenBar(8,13,5,	// Mov
	ldr	r3, .L2+188	@ tmp302,
	bl	.L6		@
	movs	r3, #15	@ tmp305,
	movs	r1, #13	@,
	str	r3, [sp, #4]	@ tmp305,
	str	r0, [sp]	@ tmp345,
	movs	r3, r6	@, _43
	movs	r2, #5	@,
	movs	r0, #8	@,
	bl	.L7		@
@ StatusScreen/DrawPages/src/DrawPage1.c:126: 	unit->pClassData->baseCon + unit->pCharacterData->baseCon,
	ldr	r2, [r4, #4]	@ unit_2->pClassData, unit_2->pClassData
@ StatusScreen/DrawPages/src/DrawPage1.c:126: 	unit->pClassData->baseCon + unit->pCharacterData->baseCon,
	ldr	r3, [r4]	@ unit_2->pCharacterData, unit_2->pCharacterData
@ StatusScreen/DrawPages/src/DrawPage1.c:126: 	unit->pClassData->baseCon + unit->pCharacterData->baseCon,
	ldrb	r6, [r2, #17]	@ tmp310,
	ldrb	r3, [r3, #19]	@ tmp312,
@ StatusScreen/DrawPages/src/DrawPage1.c:125: 	DrawStatScreenBar(9,13,7,	// Con
	movs	r0, r4	@, unit
@ StatusScreen/DrawPages/src/DrawPage1.c:126: 	unit->pClassData->baseCon + unit->pCharacterData->baseCon,
	adds	r6, r6, r3	@ tmp313, tmp310, tmp312
@ StatusScreen/DrawPages/src/DrawPage1.c:125: 	DrawStatScreenBar(9,13,7,	// Con
	ldr	r3, .L2+192	@ tmp315,
	bl	.L6		@
@ StatusScreen/DrawPages/src/DrawPage1.c:128: 	unit->pClassData->maxCon );
	ldr	r3, [r4, #4]	@ unit_2->pClassData, unit_2->pClassData
@ StatusScreen/DrawPages/src/DrawPage1.c:125: 	DrawStatScreenBar(9,13,7,	// Con
	ldrb	r3, [r3, #25]	@ tmp319,
	lsls	r6, r6, #24	@ tmp314, tmp313,
	lsls	r3, r3, #24	@ tmp319, tmp319,
	asrs	r6, r6, #24	@ _52, tmp314,
	asrs	r3, r3, #24	@ tmp319, tmp319,
	movs	r2, #7	@,
	movs	r1, #13	@,
	str	r3, [sp, #4]	@ tmp319,
	str	r0, [sp]	@ tmp346,
	movs	r3, r6	@, _52
	movs	r0, #9	@,
	bl	.L7		@
@ StatusScreen/DrawPages/src/DrawPage1.c:140: 	NuDrawStatScreenBwl();
	ldr	r3, .L2+196	@ tmp321,
	bl	.L6		@
@ StatusScreen/DrawPages/src/DrawPage1.c:141: }
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L3:
	.align	2
.L2:
	.word	gStatScreen
	.word	GetStringFromIndex
	.word	1278
	.word	gStatScreen+48
	.word	gBmFrameTmap0+66
	.word	DrawTextInline
	.word	1279
	.word	gBmFrameTmap0+194
	.word	gStatScreen+112
	.word	1260
	.word	gBmFrameTmap0+322
	.word	gStatScreen+56
	.word	1261
	.word	gBmFrameTmap0+450
	.word	gStatScreen+64
	.word	1263
	.word	gBmFrameTmap0+578
	.word	gStatScreen+80
	.word	gBmFrameTmap0+706
	.word	gStatScreen+88
	.word	gpLuckString
	.word	gBmFrameTmap0+82
	.word	gStatScreen+72
	.word	gpCharmString
	.word	gBmFrameTmap0+210
	.word	gStatScreen+128
	.word	gBmFrameTmap0+338
	.word	gStatScreen+96
	.word	1271
	.word	gBmFrameTmap0+466
	.word	gStatScreen+104
	.word	gpStatString
	.word	gStatScreen+136
	.word	gBmFrameTmap0+594
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
	.word	NuDrawStatScreenBwl
	.size	StatScreen_DrawPage1, .-StatScreen_DrawPage1
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L6:
	bx	r3
.L7:
	bx	r5
.L5:
	bx	r6
.L4:
	bx	r7
