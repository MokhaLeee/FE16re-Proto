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
	.file	"ModLuFuncs.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	MLUStandardGetMaxLevel
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MLUStandardGetMaxLevel, %function
MLUStandardGetMaxLevel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:6: 	return (UNIT_CATTRIBUTES(unit) & CA_MAXLEVEL10) ? 10 : 20;
	ldr	r3, [r0]	@ unit_9(D)->pCharacterData, unit_9(D)->pCharacterData
	ldr	r2, [r0, #4]	@ unit_9(D)->pClassData, unit_9(D)->pClassData
	ldr	r3, [r3, #40]	@ _1->attributes, _1->attributes
	ldr	r2, [r2, #40]	@ _3->attributes, _3->attributes
	orrs	r3, r2	@ tmp123, _3->attributes
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:6: 	return (UNIT_CATTRIBUTES(unit) & CA_MAXLEVEL10) ? 10 : 20;
	movs	r0, #10	@ <retval>,
	lsls	r3, r3, #12	@ tmp138, tmp123,
	bmi	.L1		@,
	adds	r0, r0, r0	@ <retval>, <retval>,
.L1:
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:7: }
	@ sp needed	@
	bx	lr
	.size	MLUStandardGetMaxLevel, .-MLUStandardGetMaxLevel
	.align	1
	.global	MLUPromStandardStatGains
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MLUPromStandardStatGains, %function
MLUPromStandardStatGains:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}	@
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:11: 	const struct ClassData* pc = GetClassData(classId);
	ldr	r3, .L12	@ tmp162,
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:10: {
	movs	r4, r0	@ unit, tmp249
	movs	r0, r1	@ classId, tmp250
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:11: 	const struct ClassData* pc = GetClassData(classId);
	bl	.L14		@
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:13: 	unit->maxHP += pc->promotionHp;
	adds	r3, r0, #3	@ tmp163, pc,
	ldrb	r2, [r3, #31]	@ _3,
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:13: 	unit->maxHP += pc->promotionHp;
	ldrb	r3, [r4, #18]	@ tmp166,
	ldrb	r5, [r0, #19]	@ tmp169,
	adds	r3, r2, r3	@ tmp167, _3, tmp166
	adds	r1, r3, #0	@ tmp164, tmp167
	lsls	r6, r5, #24	@ tmp173, tmp169,
	lsls	r3, r3, #24	@ tmp171, tmp167,
	cmp	r6, r3	@ tmp173, tmp171
	bge	.L6		@,
	adds	r1, r5, #0	@ tmp164, tmp169
.L6:
	strb	r1, [r4, #18]	@ tmp164, MEM <struct Unit> [(void *)unit_51(D)].maxHP
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:17: 	unit->pow += pc->promotionPow;
	adds	r1, r0, #4	@ tmp175, pc,
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:17: 	unit->pow += pc->promotionPow;
	ldrb	r1, [r1, #31]	@ tmp179,
	ldrb	r3, [r4, #20]	@ tmp177,
	ldrb	r5, [r0, #20]	@ tmp182,
	adds	r3, r3, r1	@ tmp180, tmp177, tmp179
	adds	r1, r3, #0	@ tmp174, tmp180
	lsls	r6, r5, #24	@ tmp186, tmp182,
	lsls	r3, r3, #24	@ tmp184, tmp180,
	cmp	r6, r3	@ tmp186, tmp184
	bge	.L7		@,
	adds	r1, r5, #0	@ tmp174, tmp182
.L7:
	strb	r1, [r4, #20]	@ tmp174, MEM <struct Unit> [(void *)unit_51(D)].pow
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:21: 	unit->skl += pc->promotionSkl;
	adds	r1, r0, #5	@ tmp188, pc,
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:21: 	unit->skl += pc->promotionSkl;
	ldrb	r1, [r1, #31]	@ tmp192,
	ldrb	r3, [r4, #21]	@ tmp190,
	ldrb	r5, [r0, #21]	@ tmp195,
	adds	r3, r3, r1	@ tmp193, tmp190, tmp192
	adds	r1, r3, #0	@ tmp187, tmp193
	lsls	r6, r5, #24	@ tmp199, tmp195,
	lsls	r3, r3, #24	@ tmp197, tmp193,
	cmp	r6, r3	@ tmp199, tmp197
	bge	.L8		@,
	adds	r1, r5, #0	@ tmp187, tmp195
.L8:
	strb	r1, [r4, #21]	@ tmp187, MEM <struct Unit> [(void *)unit_51(D)].skl
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:25: 	unit->spd += pc->promotionSpd;
	adds	r1, r0, #6	@ tmp201, pc,
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:25: 	unit->spd += pc->promotionSpd;
	ldrb	r1, [r1, #31]	@ tmp205,
	ldrb	r3, [r4, #22]	@ tmp203,
	ldrb	r5, [r0, #22]	@ tmp208,
	adds	r3, r3, r1	@ tmp206, tmp203, tmp205
	adds	r1, r3, #0	@ tmp200, tmp206
	lsls	r6, r5, #24	@ tmp212, tmp208,
	lsls	r3, r3, #24	@ tmp210, tmp206,
	cmp	r6, r3	@ tmp212, tmp210
	bge	.L9		@,
	adds	r1, r5, #0	@ tmp200, tmp208
.L9:
	strb	r1, [r4, #22]	@ tmp200, MEM <struct Unit> [(void *)unit_51(D)].spd
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:29: 	unit->def += pc->promotionDef;
	adds	r1, r0, #7	@ tmp214, pc,
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:29: 	unit->def += pc->promotionDef;
	ldrb	r1, [r1, #31]	@ tmp218,
	ldrb	r3, [r4, #23]	@ tmp216,
	ldrb	r5, [r0, #23]	@ tmp221,
	adds	r3, r3, r1	@ tmp219, tmp216, tmp218
	adds	r1, r3, #0	@ tmp213, tmp219
	lsls	r6, r5, #24	@ tmp225, tmp221,
	lsls	r3, r3, #24	@ tmp223, tmp219,
	cmp	r6, r3	@ tmp225, tmp223
	bge	.L10		@,
	adds	r1, r5, #0	@ tmp213, tmp221
.L10:
	strb	r1, [r4, #23]	@ tmp213, MEM <struct Unit> [(void *)unit_51(D)].def
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:33: 	unit->res += pc->promotionRes;
	movs	r1, r0	@ tmp227, pc
	adds	r1, r1, #8	@ tmp227,
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:33: 	unit->res += pc->promotionRes;
	ldrb	r1, [r1, #31]	@ tmp231,
	ldrb	r3, [r4, #24]	@ tmp229,
	ldrb	r0, [r0, #24]	@ tmp234,
	adds	r3, r3, r1	@ tmp232, tmp229, tmp231
	adds	r1, r3, #0	@ tmp226, tmp232
	lsls	r5, r0, #24	@ tmp238, tmp234,
	lsls	r3, r3, #24	@ tmp236, tmp232,
	cmp	r5, r3	@ tmp238, tmp236
	bge	.L11		@,
	adds	r1, r0, #0	@ tmp226, tmp234
.L11:
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:37: 	unit->curHP += pc->promotionHp;
	ldrb	r3, [r4, #19]	@ tmp240,
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:38: }
	@ sp needed	@
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:37: 	unit->curHP += pc->promotionHp;
	adds	r2, r2, r3	@ tmp241, _3, tmp240
	strb	r1, [r4, #24]	@ tmp226, MEM <struct Unit> [(void *)unit_51(D)].res
	strb	r2, [r4, #19]	@ tmp241, unit_51(D)->curHP
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:38: }
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L13:
	.align	2
.L12:
	.word	GetClassData
	.size	MLUPromStandardStatGains, .-MLUPromStandardStatGains
	.align	1
	.global	MLUPromStandardWRankGains
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MLUPromStandardWRankGains, %function
MLUPromStandardWRankGains:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:41: {
	movs	r5, r0	@ unit, tmp141
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:42: 	const struct ClassData* pc = GetClassData(classId);
	ldr	r3, .L24	@ tmp132,
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:41: {
	movs	r0, r1	@ classId, tmp142
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:42: 	const struct ClassData* pc = GetClassData(classId);
	bl	.L14		@
	movs	r3, r5	@ unit, unit
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:43: 	const struct ClassData* bc = unit->pClassData;
	movs	r1, #44	@ ivtmp.26,
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:63: 		unit->ranks[i] = wexp;
	movs	r6, #1	@ wexp,
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:43: 	const struct ClassData* bc = unit->pClassData;
	ldr	r4, [r5, #4]	@ bc, unit_18(D)->pClassData
	adds	r3, r3, #40	@ unit,
.L19:
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:47: 		if (pc->baseRanks[i] == 0)
	ldrb	r7, [r0, r1]	@ _1, MEM[(unsigned char *)pc_17 + ivtmp.26_25 * 1]
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:47: 		if (pc->baseRanks[i] == 0)
	cmp	r7, #0	@ _1,
	beq	.L16		@,
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:55: 		int wexp = unit->ranks[i] - bc->baseRanks[i] + pc->baseRanks[i];
	ldrb	r2, [r3]	@ MEM[(unsigned char *)_32], MEM[(unsigned char *)_32]
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:55: 		int wexp = unit->ranks[i] - bc->baseRanks[i] + pc->baseRanks[i];
	ldrb	r5, [r4, r1]	@ MEM[(unsigned char *)bc_19 + ivtmp.26_25 * 1], MEM[(unsigned char *)bc_19 + ivtmp.26_25 * 1]
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:55: 		int wexp = unit->ranks[i] - bc->baseRanks[i] + pc->baseRanks[i];
	subs	r2, r2, r5	@ tmp136, MEM[(unsigned char *)_32], MEM[(unsigned char *)bc_19 + ivtmp.26_25 * 1]
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:55: 		int wexp = unit->ranks[i] - bc->baseRanks[i] + pc->baseRanks[i];
	adds	r7, r2, r7	@ wexp, tmp136, _1
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:63: 		unit->ranks[i] = wexp;
	cmp	r7, #0	@ wexp,
	bgt	.L17		@,
	movs	r7, r6	@ wexp, wexp
.L18:
	lsls	r7, r7, #24	@ _1, wexp,
	lsrs	r7, r7, #24	@ _1, _1,
.L16:
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:45: 	for (unsigned i = 0; i < 8; ++i)
	adds	r1, r1, #1	@ ivtmp.26,
	strb	r7, [r3]	@ _1, MEM[(unsigned char *)_31]
	adds	r3, r3, #1	@ ivtmp.22,
	cmp	r1, #52	@ ivtmp.26,
	bne	.L19		@,
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:65: }
	@ sp needed	@
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L17:
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:63: 		unit->ranks[i] = wexp;
	cmp	r7, #251	@ wexp,
	ble	.L18		@,
	movs	r7, #251	@ wexp,
	b	.L18		@
.L25:
	.align	2
.L24:
	.word	GetClassData
	.size	MLUPromStandardWRankGains, .-MLUPromStandardWRankGains
	.align	1
	.global	MLUPromStandardExpLevel
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MLUPromStandardExpLevel, %function
MLUPromStandardExpLevel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:69: 	unit->level = 1;
	movs	r3, #1	@ tmp121,
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:74: }
	@ sp needed	@
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:69: 	unit->level = 1;
	strb	r3, [r0, #8]	@ tmp121, unit_6(D)->level
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:71: 	unit->exp = UNIT_FACTION(unit) == FACTION_BLUE
	movs	r3, #11	@ tmp123,
	movs	r2, #192	@ tmp125,
	ldrsb	r3, [r0, r3]	@ tmp123,
	ands	r3, r2	@ tmp124, tmp125
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:71: 	unit->exp = UNIT_FACTION(unit) == FACTION_BLUE
	subs	r2, r3, #1	@ tmp128, tmp124
	sbcs	r3, r3, r2	@ tmp127, tmp124, tmp128
	rsbs	r3, r3, #0	@ tmp129, tmp127
	strb	r3, [r0, #9]	@ tmp129, unit_6(D)->exp
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:74: }
	bx	lr
	.size	MLUPromStandardExpLevel, .-MLUPromStandardExpLevel
	.align	1
	.global	MLUStandardGainDiff
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MLUStandardGainDiff, %function
MLUStandardGainDiff:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:78: 	bu->changeHP  = bu->unit.maxHP    - unit->maxHP;
	ldrb	r2, [r1, #18]	@ tmp166,
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:86: }
	@ sp needed	@
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:78: 	bu->changeHP  = bu->unit.maxHP    - unit->maxHP;
	ldrb	r3, [r0, #18]	@ tmp164,
	subs	r3, r3, r2	@ tmp167, tmp164, tmp166
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:78: 	bu->changeHP  = bu->unit.maxHP    - unit->maxHP;
	movs	r2, r0	@ tmp170, bu
	adds	r2, r2, #115	@ tmp170,
	strb	r3, [r2]	@ tmp167, bu_50(D)->changeHP
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:79: 	bu->changePow = bu->unit.pow      - unit->pow;
	ldrb	r2, [r1, #20]	@ tmp175,
	ldrb	r3, [r0, #20]	@ tmp173,
	subs	r3, r3, r2	@ tmp176, tmp173, tmp175
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:79: 	bu->changePow = bu->unit.pow      - unit->pow;
	movs	r2, r0	@ tmp179, bu
	adds	r2, r2, #116	@ tmp179,
	strb	r3, [r2]	@ tmp176, bu_50(D)->changePow
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:80: 	bu->changeSkl = bu->unit.skl      - unit->skl;
	ldrb	r2, [r1, #21]	@ tmp184,
	ldrb	r3, [r0, #21]	@ tmp182,
	subs	r3, r3, r2	@ tmp185, tmp182, tmp184
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:80: 	bu->changeSkl = bu->unit.skl      - unit->skl;
	movs	r2, r0	@ tmp188, bu
	adds	r2, r2, #117	@ tmp188,
	strb	r3, [r2]	@ tmp185, bu_50(D)->changeSkl
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:81: 	bu->changeSpd = bu->unit.spd      - unit->spd;
	ldrb	r2, [r1, #22]	@ tmp193,
	ldrb	r3, [r0, #22]	@ tmp191,
	subs	r3, r3, r2	@ tmp194, tmp191, tmp193
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:81: 	bu->changeSpd = bu->unit.spd      - unit->spd;
	movs	r2, r0	@ tmp197, bu
	adds	r2, r2, #118	@ tmp197,
	strb	r3, [r2]	@ tmp194, bu_50(D)->changeSpd
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:82: 	bu->changeDef = bu->unit.def      - unit->def;
	ldrb	r2, [r1, #23]	@ tmp202,
	ldrb	r3, [r0, #23]	@ tmp200,
	subs	r3, r3, r2	@ tmp203, tmp200, tmp202
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:82: 	bu->changeDef = bu->unit.def      - unit->def;
	movs	r2, r0	@ tmp206, bu
	adds	r2, r2, #119	@ tmp206,
	strb	r3, [r2]	@ tmp203, bu_50(D)->changeDef
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:83: 	bu->changeRes = bu->unit.res      - unit->res;
	ldrb	r2, [r1, #24]	@ tmp211,
	ldrb	r3, [r0, #24]	@ tmp209,
	subs	r3, r3, r2	@ tmp212, tmp209, tmp211
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:83: 	bu->changeRes = bu->unit.res      - unit->res;
	movs	r2, r0	@ tmp215, bu
	adds	r2, r2, #120	@ tmp215,
	strb	r3, [r2]	@ tmp212, bu_50(D)->changeRes
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:84: 	bu->changeLck = bu->unit.lck      - unit->lck;
	ldrb	r2, [r1, #25]	@ tmp220,
	ldrb	r3, [r0, #25]	@ tmp218,
	subs	r3, r3, r2	@ tmp221, tmp218, tmp220
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:84: 	bu->changeLck = bu->unit.lck      - unit->lck;
	movs	r2, r0	@ tmp224, bu
	adds	r2, r2, #121	@ tmp224,
	strb	r3, [r2]	@ tmp221, bu_50(D)->changeLck
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:85: 	bu->changeCon = bu->unit.conBonus - unit->conBonus;
	ldrb	r3, [r0, #26]	@ tmp227,
	ldrb	r2, [r1, #26]	@ tmp229,
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:85: 	bu->changeCon = bu->unit.conBonus - unit->conBonus;
	adds	r0, r0, #122	@ tmp233,
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:85: 	bu->changeCon = bu->unit.conBonus - unit->conBonus;
	subs	r3, r3, r2	@ tmp230, tmp227, tmp229
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:85: 	bu->changeCon = bu->unit.conBonus - unit->conBonus;
	strb	r3, [r0]	@ tmp230, bu_50(D)->changeCon
@ ModularLevelUp/ModLuCore/Src/ModLuFuncs.c:86: }
	bx	lr
	.size	MLUStandardGainDiff, .-MLUStandardGainDiff
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L14:
	bx	r3
