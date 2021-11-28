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
	.file	"LevelUpCore.c"
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
	.type	SetGrowthInline, %function
SetGrowthInline:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:6: static int SetGrowthInline(MLU_Func func, u8 cnt, struct BattleUnit* bu, u8 bonus){
	movs	r5, r0	@ tmp150, func
	movs	r0, r2	@ bu, tmp152
	movs	r6, r1	@ cnt, tmp151
	movs	r4, r3	@ bonus, tmp153
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:7: 	u8 total = func((Unit*)bu) + bonus;
	bl	.L5		@
	movs	r5, r0	@ tmp126, tmp154
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:11: 	if( total > NextRN2s_100(cnt) )
	ldr	r3, .L3	@ tmp130,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:7: 	u8 total = func((Unit*)bu) + bonus;
	adds	r4, r4, r5	@ tmp136, bonus, tmp126
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:11: 	if( total > NextRN2s_100(cnt) )
	movs	r0, r6	@ tmp128, cnt
	bl	.L6		@
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:11: 	if( total > NextRN2s_100(cnt) )
	lsls	r3, r4, #24	@ tmp139, tmp136,
	adds	r2, r4, #0	@ tmp134, tmp136
	lsrs	r3, r3, #24	@ tmp139, tmp139,
	cmp	r3, #100	@ tmp139,
	bls	.L2		@,
	movs	r2, #100	@ tmp134,
.L2:
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:15: }
	@ sp needed	@
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:11: 	if( total > NextRN2s_100(cnt) )
	lsls	r2, r2, #24	@ tmp146, tmp134,
	lsrs	r2, r2, #24	@ tmp146, tmp146,
	cmp	r0, r2	@ tmp131, tmp146
	sbcs	r0, r0, r0	@ tmp156
	rsbs	r0, r0, #0	@ tmp148, tmp156
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:15: }
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L4:
	.align	2
.L3:
	.word	NextRN2s_100
	.size	SetGrowthInline, .-SetGrowthInline
	.align	1
	.global	LevelUp_FE16Style
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LevelUp_FE16Style, %function
LevelUp_FE16Style:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:76: void LevelUp_FE16Style(struct BattleUnit* bu){
	movs	r5, r0	@ bu, tmp271
	movs	r6, #0	@ growthBonus,
.L9:
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:23: 		bu->unit.level
	movs	r2, #8	@ tmp169,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:22: 		bu->unit.pCharacterData->number +
	ldr	r3, [r5]	@ bu_2(D)->unit.pCharacterData, bu_2(D)->unit.pCharacterData
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:23: 		bu->unit.level
	ldrsb	r2, [r5, r2]	@ tmp169,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:22: 		bu->unit.pCharacterData->number +
	ldrb	r3, [r3, #4]	@ tmp168,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:22: 		bu->unit.pCharacterData->number +
	adds	r3, r3, r2	@ tmp170, tmp168, tmp169
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:21: 	u8 count = 10+5*(
	movs	r2, #5	@ tmp174,
	muls	r2, r3	@ tmp174, tmp170
	lsls	r7, r2, #24	@ _11, tmp174,
	lsrs	r7, r7, #24	@ _11, _11,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:26: 	count = (count+5) & 0xFF;
	movs	r1, r7	@ tmp176, _11
	adds	r1, r1, #15	@ tmp176,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:27: 	bonus = SetGrowthInline(Growth_HpGetter, count, bu, growthBonus);
	lsls	r1, r1, #24	@ tmp177, tmp176,
	movs	r3, r6	@, growthBonus
	movs	r2, r5	@, bu
	lsrs	r1, r1, #24	@ tmp177, tmp177,
	ldr	r0, .L10	@ tmp179,
	bl	SetGrowthInline		@
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:31: 	count = (count+5) & 0xFF;
	movs	r1, r7	@ tmp184, _11
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:28: 	bu->changeHP = bonus;
	movs	r3, r5	@ tmp182, bu
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:31: 	count = (count+5) & 0xFF;
	adds	r1, r1, #20	@ tmp184,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:28: 	bu->changeHP = bonus;
	adds	r3, r3, #115	@ tmp182,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:32: 	bonus = SetGrowthInline(Growth_PowGetter, count, bu, growthBonus);
	lsls	r1, r1, #24	@ tmp185, tmp184,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:28: 	bu->changeHP = bonus;
	strb	r0, [r3]	@ tmp272, bu_2(D)->changeHP
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:32: 	bonus = SetGrowthInline(Growth_PowGetter, count, bu, growthBonus);
	movs	r2, r5	@, bu
	movs	r3, r6	@, growthBonus
	lsrs	r1, r1, #24	@ tmp185, tmp185,
	ldr	r0, .L10+4	@ tmp187,
	bl	SetGrowthInline		@
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:36: 	count = (count+5) & 0xFF;
	movs	r1, r7	@ tmp192, _11
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:33: 	bu->changePow= bonus;
	movs	r3, r5	@ tmp190, bu
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:36: 	count = (count+5) & 0xFF;
	adds	r1, r1, #25	@ tmp192,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:33: 	bu->changePow= bonus;
	adds	r3, r3, #116	@ tmp190,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:37: 	bonus = SetGrowthInline(Growth_SklGetter, count, bu, growthBonus);
	lsls	r1, r1, #24	@ tmp193, tmp192,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:33: 	bu->changePow= bonus;
	strb	r0, [r3]	@ _17, bu_2(D)->changePow
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:32: 	bonus = SetGrowthInline(Growth_PowGetter, count, bu, growthBonus);
	movs	r4, r0	@ _17, tmp273
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:37: 	bonus = SetGrowthInline(Growth_SklGetter, count, bu, growthBonus);
	movs	r3, r6	@, growthBonus
	movs	r2, r5	@, bu
	lsrs	r1, r1, #24	@ tmp193, tmp193,
	ldr	r0, .L10+8	@ tmp195,
	bl	SetGrowthInline		@
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:41: 	count = (count+5) & 0xFF;
	movs	r1, r7	@ tmp204, _11
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:38: 	bu->changeSkl= bonus;
	movs	r3, r5	@ tmp198, bu
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:41: 	count = (count+5) & 0xFF;
	adds	r1, r1, #30	@ tmp204,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:38: 	bu->changeSkl= bonus;
	adds	r3, r3, #117	@ tmp198,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:42: 	bonus = SetGrowthInline(Growth_SpdGetter, count, bu, growthBonus);
	lsls	r1, r1, #24	@ tmp205, tmp204,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:38: 	bu->changeSkl= bonus;
	strb	r0, [r3]	@ _21, bu_2(D)->changeSkl
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:42: 	bonus = SetGrowthInline(Growth_SpdGetter, count, bu, growthBonus);
	movs	r2, r5	@, bu
	movs	r3, r6	@, growthBonus
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:39: 	total += bonus;
	adds	r4, r4, r0	@ tmp202, _17, _21
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:42: 	bonus = SetGrowthInline(Growth_SpdGetter, count, bu, growthBonus);
	lsrs	r1, r1, #24	@ tmp205, tmp205,
	ldr	r0, .L10+12	@ tmp207,
	bl	SetGrowthInline		@
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:46: 	count = (count+5) & 0xFF;
	movs	r1, r7	@ tmp215, _11
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:43: 	bu->changeSpd = bonus;
	movs	r3, r5	@ tmp210, bu
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:39: 	total += bonus;
	lsls	r4, r4, #24	@ total, tmp202,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:46: 	count = (count+5) & 0xFF;
	adds	r1, r1, #35	@ tmp215,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:43: 	bu->changeSpd = bonus;
	adds	r3, r3, #118	@ tmp210,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:39: 	total += bonus;
	lsrs	r4, r4, #24	@ total, total,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:47: 	bonus = SetGrowthInline(Growth_DefGetter, count, bu, growthBonus);
	lsls	r1, r1, #24	@ tmp216, tmp215,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:43: 	bu->changeSpd = bonus;
	strb	r0, [r3]	@ _26, bu_2(D)->changeSpd
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:47: 	bonus = SetGrowthInline(Growth_DefGetter, count, bu, growthBonus);
	movs	r2, r5	@, bu
	movs	r3, r6	@, growthBonus
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:44: 	total += bonus;
	adds	r4, r4, r0	@ tmp213, total, _26
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:47: 	bonus = SetGrowthInline(Growth_DefGetter, count, bu, growthBonus);
	lsrs	r1, r1, #24	@ tmp216, tmp216,
	ldr	r0, .L10+16	@ tmp218,
	bl	SetGrowthInline		@
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:51: 	count = (count+5) & 0xFF;
	movs	r1, r7	@ tmp226, _11
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:48: 	bu->changeDef= bonus;
	movs	r3, r5	@ tmp221, bu
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:44: 	total += bonus;
	lsls	r4, r4, #24	@ total, tmp213,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:51: 	count = (count+5) & 0xFF;
	adds	r1, r1, #40	@ tmp226,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:48: 	bu->changeDef= bonus;
	adds	r3, r3, #119	@ tmp221,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:44: 	total += bonus;
	lsrs	r4, r4, #24	@ total, total,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:52: 	bonus = SetGrowthInline(Growth_ResGetter, count, bu, growthBonus);
	lsls	r1, r1, #24	@ tmp227, tmp226,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:48: 	bu->changeDef= bonus;
	strb	r0, [r3]	@ _31, bu_2(D)->changeDef
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:52: 	bonus = SetGrowthInline(Growth_ResGetter, count, bu, growthBonus);
	movs	r2, r5	@, bu
	movs	r3, r6	@, growthBonus
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:49: 	total += bonus;
	adds	r4, r4, r0	@ tmp224, total, _31
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:52: 	bonus = SetGrowthInline(Growth_ResGetter, count, bu, growthBonus);
	lsrs	r1, r1, #24	@ tmp227, tmp227,
	ldr	r0, .L10+20	@ tmp229,
	bl	SetGrowthInline		@
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:56: 	count = (count+5) & 0xFF;
	movs	r1, r7	@ tmp237, _11
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:53: 	bu->changeRes= bonus;
	movs	r3, r5	@ tmp232, bu
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:49: 	total += bonus;
	lsls	r4, r4, #24	@ total, tmp224,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:56: 	count = (count+5) & 0xFF;
	adds	r1, r1, #45	@ tmp237,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:53: 	bu->changeRes= bonus;
	adds	r3, r3, #120	@ tmp232,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:49: 	total += bonus;
	lsrs	r4, r4, #24	@ total, total,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:57: 	bonus = SetGrowthInline(Growth_LckGetter, count, bu, growthBonus);
	lsls	r1, r1, #24	@ tmp238, tmp237,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:53: 	bu->changeRes= bonus;
	strb	r0, [r3]	@ _36, bu_2(D)->changeRes
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:57: 	bonus = SetGrowthInline(Growth_LckGetter, count, bu, growthBonus);
	movs	r2, r5	@, bu
	movs	r3, r6	@, growthBonus
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:54: 	total += bonus;
	adds	r4, r4, r0	@ tmp235, total, _36
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:57: 	bonus = SetGrowthInline(Growth_LckGetter, count, bu, growthBonus);
	lsrs	r1, r1, #24	@ tmp238, tmp238,
	ldr	r0, .L10+24	@ tmp240,
	bl	SetGrowthInline		@
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:61: 	count = (count+5) & 0xFF;
	movs	r1, r7	@ tmp248, _11
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:58: 	bu->changeLck= bonus;
	movs	r3, r5	@ tmp243, bu
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:54: 	total += bonus;
	lsls	r4, r4, #24	@ total, tmp235,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:61: 	count = (count+5) & 0xFF;
	adds	r1, r1, #50	@ tmp248,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:58: 	bu->changeLck= bonus;
	adds	r3, r3, #121	@ tmp243,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:54: 	total += bonus;
	lsrs	r4, r4, #24	@ total, total,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:62: 	bonus = SetGrowthInline(Growth_MagGetter, count, bu, growthBonus);
	lsls	r1, r1, #24	@ tmp249, tmp248,
	movs	r2, r5	@, bu
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:58: 	bu->changeLck= bonus;
	strb	r0, [r3]	@ _41, bu_2(D)->changeLck
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:62: 	bonus = SetGrowthInline(Growth_MagGetter, count, bu, growthBonus);
	lsrs	r1, r1, #24	@ tmp249, tmp249,
	movs	r3, r6	@, growthBonus
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:59: 	total += bonus;
	adds	r4, r4, r0	@ tmp246, total, _41
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:62: 	bonus = SetGrowthInline(Growth_MagGetter, count, bu, growthBonus);
	ldr	r0, .L10+28	@ tmp251,
	bl	SetGrowthInline		@
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:63: 	*GetBu_ChangeMagAt(bu) = bonus;
	ldr	r3, .L10+32	@ tmp252,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:62: 	bonus = SetGrowthInline(Growth_MagGetter, count, bu, growthBonus);
	str	r0, [sp, #4]	@ tmp279, %sfp
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:63: 	*GetBu_ChangeMagAt(bu) = bonus;
	movs	r0, r5	@, bu
	bl	.L6		@
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:66: 	count = (count+5) & 0xFF;
	movs	r1, r7	@ _11, _11
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:63: 	*GetBu_ChangeMagAt(bu) = bonus;
	ldr	r3, [sp, #4]	@ _46, %sfp
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:59: 	total += bonus;
	lsls	r4, r4, #24	@ total, tmp246,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:66: 	count = (count+5) & 0xFF;
	adds	r1, r1, #55	@ _11,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:59: 	total += bonus;
	lsrs	r4, r4, #24	@ total, total,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:67: 	bonus = SetGrowthInline(Growth_ChaGetter, count, bu, growthBonus);
	lsls	r1, r1, #24	@ tmp258, tmp257,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:63: 	*GetBu_ChangeMagAt(bu) = bonus;
	strb	r3, [r0]	@ _46, *_48
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:67: 	bonus = SetGrowthInline(Growth_ChaGetter, count, bu, growthBonus);
	movs	r2, r5	@, bu
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:64: 	total += bonus;
	adds	r4, r4, r3	@ tmp255, total, _46
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:67: 	bonus = SetGrowthInline(Growth_ChaGetter, count, bu, growthBonus);
	lsrs	r1, r1, #24	@ tmp258, tmp258,
	movs	r3, r6	@, growthBonus
	ldr	r0, .L10+36	@ tmp260,
	bl	SetGrowthInline		@
	movs	r7, r0	@ _52, tmp281
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:68: 	*GetBu_ChangeChaAt(bu) = bonus;
	ldr	r3, .L10+40	@ tmp261,
	movs	r0, r5	@, bu
	bl	.L6		@
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:64: 	total += bonus;
	lsls	r4, r4, #24	@ total, tmp255,
	lsrs	r4, r4, #24	@ total, total,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:69: 	total += bonus;
	adds	r4, r4, r7	@ tmp264, total, _52
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:71: 	if( total < 4 )
	lsls	r4, r4, #24	@ tmp267, tmp264,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:68: 	*GetBu_ChangeChaAt(bu) = bonus;
	strb	r7, [r0]	@ _52, *_54
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:71: 	if( total < 4 )
	lsrs	r4, r4, #24	@ tmp267, tmp267,
	cmp	r4, #3	@ tmp267,
	bhi	.L7		@,
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:72: 		LevelUpInternal(bu, growthBonus+10);
	adds	r6, r6, #10	@ tmp269,
	lsls	r6, r6, #24	@ growthBonus, tmp269,
	lsrs	r6, r6, #24	@ growthBonus, growthBonus,
	b	.L9		@
.L7:
@ ModularLevelUp/LevelUpCore/LevelUpCore.c:78: }
	@ sp needed	@
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L11:
	.align	2
.L10:
	.word	Growth_HpGetter
	.word	Growth_PowGetter
	.word	Growth_SklGetter
	.word	Growth_SpdGetter
	.word	Growth_DefGetter
	.word	Growth_ResGetter
	.word	Growth_LckGetter
	.word	Growth_MagGetter
	.word	GetBu_ChangeMagAt
	.word	Growth_ChaGetter
	.word	GetBu_ChangeChaAt
	.size	LevelUp_FE16Style, .-LevelUp_FE16Style
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L6:
	bx	r3
.L5:
	bx	r5
