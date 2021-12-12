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
	.file	"DrawPageLeft.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	StatScreen_DrawLeftText
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	StatScreen_DrawLeftText, %function
StatScreen_DrawLeftText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
@ StatusScreen/DrawPages/src/DrawPageLeft.c:6: 	Unit* unit = gStatScreen.unit;
	ldr	r7, .L6	@ tmp139,
	ldr	r4, [r7, #12]	@ unit, gStatScreen.unit
@ StatusScreen/DrawPages/src/DrawPageLeft.c:7: 	const char* namestr = GetStringFromIndex(unit->pCharacterData->nameTextId);
	ldr	r3, [r4]	@ unit_25->pCharacterData, unit_25->pCharacterData
@ StatusScreen/DrawPages/src/DrawPageLeft.c:7: 	const char* namestr = GetStringFromIndex(unit->pCharacterData->nameTextId);
	ldrh	r0, [r3]	@ *_1, *_1
	ldr	r3, .L6+4	@ tmp142,
@ StatusScreen/DrawPages/src/DrawPageLeft.c:5: void StatScreen_DrawLeftText(void){
	sub	sp, sp, #20	@,,
@ StatusScreen/DrawPages/src/DrawPageLeft.c:7: 	const char* namestr = GetStringFromIndex(unit->pCharacterData->nameTextId);
	str	r3, [sp, #12]	@ tmp142, %sfp
	bl	.L8		@
@ StatusScreen/DrawPages/src/DrawPageLeft.c:8: 	unsigned namexoff = Text_GetStringTextCenteredPos(0x30, namestr);
	ldr	r3, .L6+8	@ tmp143,
@ StatusScreen/DrawPages/src/DrawPageLeft.c:7: 	const char* namestr = GetStringFromIndex(unit->pCharacterData->nameTextId);
	movs	r5, r0	@ namestr, tmp211
@ StatusScreen/DrawPages/src/DrawPageLeft.c:8: 	unsigned namexoff = Text_GetStringTextCenteredPos(0x30, namestr);
	movs	r1, r0	@, namestr
	movs	r0, #48	@,
	bl	.L8		@
@ StatusScreen/DrawPages/src/DrawPageLeft.c:11: 	FillBgMap(gBg0MapBuffer,0);
	movs	r1, #0	@,
@ StatusScreen/DrawPages/src/DrawPageLeft.c:8: 	unsigned namexoff = Text_GetStringTextCenteredPos(0x30, namestr);
	movs	r6, r0	@ namexoff, tmp212
@ StatusScreen/DrawPages/src/DrawPageLeft.c:11: 	FillBgMap(gBg0MapBuffer,0);
	ldr	r3, .L6+12	@ tmp145,
	ldr	r0, .L6+16	@ tmp144,
	bl	.L8		@
@ StatusScreen/DrawPages/src/DrawPageLeft.c:16: 		GetUnitEquippedWeaponSlot(unit)
	ldr	r3, .L6+20	@ tmp146,
	movs	r0, r4	@, unit
	bl	.L8		@
@ StatusScreen/DrawPages/src/DrawPageLeft.c:14: 	BattleGenerateUiStats(
	lsls	r1, r0, #24	@ tmp147, tmp213,
	ldr	r3, .L6+24	@ tmp149,
	movs	r0, r4	@, unit
	lsrs	r1, r1, #24	@ tmp147, tmp147,
	bl	.L8		@
@ StatusScreen/DrawPages/src/DrawPageLeft.c:21: 	DrawTextInline(
	str	r5, [sp, #4]	@ namestr,
	movs	r5, #0	@ tmp152,
	movs	r3, r6	@, namexoff
	movs	r2, r5	@, tmp152
	ldr	r1, .L6+28	@ tmp150,
	ldr	r6, .L6+32	@ tmp153,
	ldr	r0, .L6+36	@ tmp151,
	str	r5, [sp]	@ tmp152,
	bl	.L9		@
@ StatusScreen/DrawPages/src/DrawPageLeft.c:35:         GetStringFromIndex(gStatScreen.unit->pClassData->nameTextId) );
	ldr	r3, [r7, #12]	@ gStatScreen.unit, gStatScreen.unit
@ StatusScreen/DrawPages/src/DrawPageLeft.c:35:         GetStringFromIndex(gStatScreen.unit->pClassData->nameTextId) );
	ldr	r3, [r3, #4]	@ _7->pClassData, _7->pClassData
@ StatusScreen/DrawPages/src/DrawPageLeft.c:35:         GetStringFromIndex(gStatScreen.unit->pClassData->nameTextId) );
	ldrh	r0, [r3]	@ *_8, *_8
	ldr	r3, [sp, #12]	@ tmp142, %sfp
	bl	.L8		@
@ StatusScreen/DrawPages/src/DrawPageLeft.c:30: 	DrawTextInline(
	ldr	r7, .L6+40	@ tmp160,
	movs	r3, r5	@, tmp152
	movs	r2, r5	@, tmp152
	ldr	r1, .L6+44	@ tmp159,
	str	r0, [sp, #4]	@ tmp214,
	str	r5, [sp]	@ tmp152,
	movs	r0, r7	@ tmp160, tmp160
	bl	.L9		@
@ StatusScreen/DrawPages/src/DrawPageLeft.c:39: 	DrawSpecialUiChar(	// "L"
	ldr	r5, .L6+48	@ tmp164,
	movs	r2, #36	@,
	movs	r1, #3	@,
	ldr	r0, .L6+52	@ tmp163,
	bl	.L10		@
@ StatusScreen/DrawPages/src/DrawPageLeft.c:44: 	DrawSpecialUiChar(	// "V"
	movs	r2, #37	@,
	movs	r1, #3	@,
	ldr	r0, .L6+56	@ tmp165,
	bl	.L10		@
@ StatusScreen/DrawPages/src/DrawPageLeft.c:49: 	DrawSpecialUiChar(	// "E"
	movs	r2, #29	@,
	movs	r1, #3	@,
	ldr	r0, .L6+60	@ tmp167,
	bl	.L10		@
@ StatusScreen/DrawPages/src/DrawPageLeft.c:56: 	DrawSpecialUiChar(	// "H"
	movs	r2, #34	@,
	movs	r1, #3	@,
	ldr	r0, .L6+64	@ tmp169,
	bl	.L10		@
@ StatusScreen/DrawPages/src/DrawPageLeft.c:61: 	DrawSpecialUiChar(	// "P"
	movs	r2, #35	@,
	movs	r1, #3	@,
	ldr	r0, .L6+68	@ tmp171,
	bl	.L10		@
@ StatusScreen/DrawPages/src/DrawPageLeft.c:66: 	DrawSpecialUiChar(	// "P"
	movs	r2, #22	@,
	movs	r1, #3	@,
	ldr	r0, .L6+72	@ tmp173,
	bl	.L10		@
@ StatusScreen/DrawPages/src/DrawPageLeft.c:72: 	DrawUiNumberOrDoubleDashes(	// Unit.level
	movs	r2, #8	@ tmp175,
	movs	r1, #2	@,
	ldrsb	r2, [r4, r2]	@ tmp175,
	ldr	r0, .L6+76	@ tmp176,
	ldr	r6, .L6+80	@ tmp177,
	bl	.L9		@
@ StatusScreen/DrawPages/src/DrawPageLeft.c:77: 	DrawUiNumberOrDoubleDashes(	// // Unit.exp
	ldrb	r2, [r4, #9]	@ tmp178,
	movs	r1, #2	@,
	ldr	r0, .L6+84	@ tmp179,
	bl	.L9		@
@ StatusScreen/DrawPages/src/DrawPageLeft.c:83: 	s8 sHpCur = GetUnitCurrentHp(unit);
	movs	r0, r4	@, unit
	ldr	r3, .L6+88	@ tmp181,
	bl	.L8		@
@ StatusScreen/DrawPages/src/DrawPageLeft.c:83: 	s8 sHpCur = GetUnitCurrentHp(unit);
	lsls	r2, r0, #24	@ tmp182, tmp215,
	ldr	r7, .L6+92	@ tmp209,
	asrs	r2, r2, #24	@ sHpCur, tmp182,
@ StatusScreen/DrawPages/src/DrawPageLeft.c:84: 	if( sHpCur<99 )
	cmp	r2, #98	@ sHpCur,
	bgt	.L2		@,
@ StatusScreen/DrawPages/src/DrawPageLeft.c:85: 		DrawUiNumberOrDoubleDashes(
	movs	r1, #2	@,
	movs	r0, r7	@, tmp209
	bl	.L9		@
.L3:
@ StatusScreen/DrawPages/src/DrawPageLeft.c:102: 	s8 sHpMax = GetUnitMaxHp(unit);
	movs	r0, r4	@, unit
	ldr	r3, .L6+96	@ tmp191,
	bl	.L8		@
@ StatusScreen/DrawPages/src/DrawPageLeft.c:102: 	s8 sHpMax = GetUnitMaxHp(unit);
	lsls	r2, r0, #24	@ tmp192, tmp216,
	ldr	r7, .L6+100	@ tmp210,
	asrs	r2, r2, #24	@ sHpMax, tmp192,
@ StatusScreen/DrawPages/src/DrawPageLeft.c:103: 	if( sHpMax<99 )
	cmp	r2, #98	@ sHpMax,
	bgt	.L4		@,
@ StatusScreen/DrawPages/src/DrawPageLeft.c:104: 		DrawUiNumberOrDoubleDashes(
	movs	r1, #2	@,
	movs	r0, r7	@, tmp210
	bl	.L9		@
.L5:
@ StatusScreen/DrawPages/src/DrawPageLeft.c:127:         GetUnitAffinityIconId(unit),
	movs	r0, r4	@, unit
	ldr	r3, .L6+104	@ tmp201,
	bl	.L8		@
@ StatusScreen/DrawPages/src/DrawPageLeft.c:125:     DrawIcon(
	movs	r2, #160	@,
	ldr	r3, .L6+108	@ tmp205,
@ StatusScreen/DrawPages/src/DrawPageLeft.c:127:         GetUnitAffinityIconId(unit),
	movs	r1, r0	@ tmp202, tmp217
@ StatusScreen/DrawPages/src/DrawPageLeft.c:125:     DrawIcon(
	lsls	r2, r2, #7	@,,
	movs	r0, r3	@ tmp205, tmp205
	ldr	r3, .L6+112	@ tmp206,
	bl	.L8		@
@ StatusScreen/DrawPages/src/DrawPageLeft.c:131: }
	add	sp, sp, #20	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L2:
@ StatusScreen/DrawPages/src/DrawPageLeft.c:91: 		DrawSpecialUiChar(
	movs	r2, #20	@,
	movs	r1, #2	@,
	ldr	r0, .L6+116	@ tmp187,
	bl	.L10		@
@ StatusScreen/DrawPages/src/DrawPageLeft.c:96: 		DrawSpecialUiChar(
	movs	r2, #20	@,
	movs	r1, #2	@,
	movs	r0, r7	@, tmp209
	bl	.L10		@
	b	.L3		@
.L4:
@ StatusScreen/DrawPages/src/DrawPageLeft.c:110: 		DrawSpecialUiChar(
	movs	r2, #20	@,
	movs	r1, #2	@,
	ldr	r0, .L6+120	@ tmp197,
	bl	.L10		@
@ StatusScreen/DrawPages/src/DrawPageLeft.c:115: 		DrawSpecialUiChar(
	movs	r2, #20	@,
	movs	r1, #2	@,
	movs	r0, r7	@, tmp210
	bl	.L10		@
	b	.L5		@
.L7:
	.align	2
.L6:
	.word	gStatScreen
	.word	GetStringFromIndex
	.word	Text_GetStringTextCenteredPos
	.word	FillBgMap
	.word	gBg0MapBuffer
	.word	GetUnitEquippedWeaponSlot
	.word	BattleGenerateUiStats
	.word	gBg0MapBuffer+646
	.word	DrawTextInline
	.word	gStatScreen+24
	.word	gStatScreen+32
	.word	gBg0MapBuffer+834
	.word	DrawSpecialUiChar
	.word	gBg0MapBuffer+962
	.word	gBg0MapBuffer+964
	.word	gBg0MapBuffer+970
	.word	gBg0MapBuffer+1090
	.word	gBg0MapBuffer+1092
	.word	gBg0MapBuffer+1098
	.word	gBg0MapBuffer+968
	.word	DrawUiNumberOrDoubleDashes
	.word	gBg0MapBuffer+974
	.word	GetUnitCurrentHp
	.word	gBg0MapBuffer+1096
	.word	GetUnitMaxHp
	.word	gBg0MapBuffer+1102
	.word	GetUnitAffinityIconId
	.word	gBg0MapBuffer+658
	.word	DrawIcon
	.word	gBg0MapBuffer+1094
	.word	gBg0MapBuffer+1100
	.size	StatScreen_DrawLeftText, .-StatScreen_DrawLeftText
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L8:
	bx	r3
.L10:
	bx	r5
.L9:
	bx	r6
