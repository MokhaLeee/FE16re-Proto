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
	.file	"SkillSystemCore.c"
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
	.type	ResetSkillList_byList, %function
ResetSkillList_byList:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ SkillSystem/Core/SkillSystemCore.c:77: 	list->CharID = 0;
	movs	r2, #0	@ tmp119,
	adds	r3, r0, #2	@ ivtmp.34, list,
	strb	r2, [r0]	@ tmp119, list_4(D)->CharID
@ SkillSystem/Core/SkillSystemCore.c:78: 	list->Count = 0;
	strb	r2, [r0, #1]	@ tmp119, list_4(D)->Count
	adds	r0, r0, #32	@ _17,
.L2:
@ SkillSystem/Core/SkillSystemCore.c:80: 		list->skills[i] = 0;
	strb	r2, [r3]	@ tmp119, MEM[(unsigned char *)_15]
@ SkillSystem/Core/SkillSystemCore.c:79: 	for(int i=0; i<UNIT_SKILL_COUNT_LIST; i++)
	adds	r3, r3, #1	@ ivtmp.34,
	cmp	r3, r0	@ ivtmp.34, _17
	bne	.L2		@,
@ SkillSystem/Core/SkillSystemCore.c:81: }
	@ sp needed	@
	bx	lr
	.size	ResetSkillList_byList, .-ResetSkillList_byList
	.align	1
	.global	JudgeSkill
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	JudgeSkill, %function
JudgeSkill:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
@ SkillSystem/Core/SkillSystemCore.c:50: 	UnitExt* unitext = GetUnitExtByUnit(unit);
	ldr	r7, .L23	@ tmp164,
@ SkillSystem/Core/SkillSystemCore.c:49: int JudgeSkill(Unit* unit, int skillId){
	movs	r5, r0	@ unit, tmp201
	movs	r4, r1	@ skillId, tmp202
@ SkillSystem/Core/SkillSystemCore.c:50: 	UnitExt* unitext = GetUnitExtByUnit(unit);
	bl	.L25		@
@ SkillSystem/Core/SkillSystemCore.c:52: 	if( NULL != unitext )
	cmp	r0, #0	@ tmp203,
	beq	.L5		@,
@ SkillSystem/Core/SkillSystemCore.c:53: 		for(int i=0; i<5; i++)
	movs	r6, #0	@ i,
.L7:
@ SkillSystem/Core/SkillSystemCore.c:54: 			if( skillId == GetUnitExtByUnit(unit)->skills[i] )
	movs	r0, r5	@, unit
	bl	.L25		@
@ SkillSystem/Core/SkillSystemCore.c:54: 			if( skillId == GetUnitExtByUnit(unit)->skills[i] )
	adds	r0, r0, r6	@ tmp166, tmp204, i
	ldrb	r3, [r0, #5]	@ tmp167, *_1
@ SkillSystem/Core/SkillSystemCore.c:54: 			if( skillId == GetUnitExtByUnit(unit)->skills[i] )
	cmp	r3, r4	@ tmp167, skillId
	beq	.L6		@,
@ SkillSystem/Core/SkillSystemCore.c:53: 		for(int i=0; i<5; i++)
	adds	r6, r6, #1	@ i,
@ SkillSystem/Core/SkillSystemCore.c:53: 		for(int i=0; i<5; i++)
	cmp	r6, #5	@ i,
	bne	.L7		@,
.L5:
@ SkillSystem/Core/SkillSystemCore.c:8: 	s8 level = unit->level;
	movs	r1, #8	@ level,
@ SkillSystem/Core/SkillSystemCore.c:9: 	u8 CharID = unit->pCharacterData->number;
	ldr	r2, [r5]	@ unit_12(D)->pCharacterData, unit_12(D)->pCharacterData
@ SkillSystem/Core/SkillSystemCore.c:13: 		if( skillId == gpSkillTable_Char[CharID].skills0[i] )
	ldr	r3, .L23+4	@ tmp168,
	ldrb	r2, [r2, #4]	@ tmp170,
	ldr	r0, [r3]	@ gpSkillTable_Char, gpSkillTable_Char
	lsls	r2, r2, #3	@ tmp171, tmp170,
	adds	r3, r0, r2	@ _24, gpSkillTable_Char, tmp171
@ SkillSystem/Core/SkillSystemCore.c:13: 		if( skillId == gpSkillTable_Char[CharID].skills0[i] )
	ldrb	r2, [r0, r2]	@ *_24, *_24
@ SkillSystem/Core/SkillSystemCore.c:8: 	s8 level = unit->level;
	ldrsb	r1, [r5, r1]	@ level,* level
@ SkillSystem/Core/SkillSystemCore.c:13: 		if( skillId == gpSkillTable_Char[CharID].skills0[i] )
	cmp	r2, r4	@ *_24, skillId
	beq	.L6		@,
@ SkillSystem/Core/SkillSystemCore.c:13: 		if( skillId == gpSkillTable_Char[CharID].skills0[i] )
	ldrb	r2, [r3, #1]	@ tmp174,
@ SkillSystem/Core/SkillSystemCore.c:13: 		if( skillId == gpSkillTable_Char[CharID].skills0[i] )
	cmp	r4, r2	@ skillId, tmp174
	beq	.L6		@,
@ SkillSystem/Core/SkillSystemCore.c:13: 		if( skillId == gpSkillTable_Char[CharID].skills0[i] )
	ldrb	r2, [r3, #2]	@ tmp175,
@ SkillSystem/Core/SkillSystemCore.c:13: 		if( skillId == gpSkillTable_Char[CharID].skills0[i] )
	cmp	r4, r2	@ skillId, tmp175
	beq	.L6		@,
	movs	r2, r1	@ tmp177, level
@ SkillSystem/Core/SkillSystemCore.c:8: 	s8 level = unit->level;
	movs	r0, r1	@ level, level
	subs	r2, r2, #25	@ tmp177,
	lsls	r2, r2, #24	@ tmp178, tmp177,
	adds	r3, r3, #3	@ ivtmp.58,
	asrs	r2, r2, #24	@ _66, tmp178,
.L9:
	subs	r0, r0, #5	@ tmp180,
	lsls	r6, r0, #24	@ tmp181, tmp180,
	asrs	r0, r6, #24	@ level, tmp181,
@ SkillSystem/Core/SkillSystemCore.c:20: 		if( level>0 )
	cmp	r6, #0	@ tmp181,
	ble	.L8		@,
@ SkillSystem/Core/SkillSystemCore.c:21: 			if( skillId == gpSkillTable_Char[CharID].skillLv[i] )
	ldrb	r6, [r3]	@ MEM[(unsigned char *)_42], MEM[(unsigned char *)_42]
@ SkillSystem/Core/SkillSystemCore.c:21: 			if( skillId == gpSkillTable_Char[CharID].skillLv[i] )
	cmp	r4, r6	@ skillId, MEM[(unsigned char *)_42]
	beq	.L6		@,
.L8:
@ SkillSystem/Core/SkillSystemCore.c:17: 	for(int i=0; i<5; i++)
	adds	r3, r3, #1	@ ivtmp.58,
	cmp	r2, r0	@ _66, level
	bne	.L9		@,
@ SkillSystem/Core/SkillSystemCore.c:28: 	u8 ClassID = unit->pClassData->number;
	ldr	r0, [r5, #4]	@ unit_12(D)->pClassData, unit_12(D)->pClassData
@ SkillSystem/Core/SkillSystemCore.c:32: 		if( skillId == gpSkillTable_Class[ClassID].skills0[i] )
	ldr	r3, .L23+8	@ tmp192,
	ldrb	r0, [r0, #4]	@ tmp194,
	ldr	r5, [r3]	@ gpSkillTable_Class, gpSkillTable_Class
	lsls	r0, r0, #3	@ tmp195, tmp194,
	adds	r3, r5, r0	@ _48, gpSkillTable_Class, tmp195
@ SkillSystem/Core/SkillSystemCore.c:32: 		if( skillId == gpSkillTable_Class[ClassID].skills0[i] )
	ldrb	r0, [r5, r0]	@ *_48, *_48
@ SkillSystem/Core/SkillSystemCore.c:32: 		if( skillId == gpSkillTable_Class[ClassID].skills0[i] )
	cmp	r4, r0	@ skillId, *_48
	beq	.L6		@,
@ SkillSystem/Core/SkillSystemCore.c:32: 		if( skillId == gpSkillTable_Class[ClassID].skills0[i] )
	ldrb	r0, [r3, #1]	@ tmp198,
@ SkillSystem/Core/SkillSystemCore.c:32: 		if( skillId == gpSkillTable_Class[ClassID].skills0[i] )
	cmp	r4, r0	@ skillId, tmp198
	beq	.L6		@,
@ SkillSystem/Core/SkillSystemCore.c:32: 		if( skillId == gpSkillTable_Class[ClassID].skills0[i] )
	ldrb	r0, [r3, #2]	@ tmp199,
	adds	r3, r3, #3	@ ivtmp.48,
@ SkillSystem/Core/SkillSystemCore.c:32: 		if( skillId == gpSkillTable_Class[ClassID].skills0[i] )
	cmp	r4, r0	@ skillId, tmp199
	bne	.L12		@,
.L6:
@ SkillSystem/Core/SkillSystemCore.c:55: 				return 1;
	movs	r0, #1	@ <retval>,
	b	.L4		@
.L12:
	subs	r1, r1, #5	@ tmp186,
	lsls	r0, r1, #24	@ tmp187, tmp186,
	asrs	r1, r0, #24	@ level, tmp187,
@ SkillSystem/Core/SkillSystemCore.c:39: 		if( level>0 )
	cmp	r0, #0	@ tmp187,
	ble	.L11		@,
@ SkillSystem/Core/SkillSystemCore.c:40: 			if( skillId == gpSkillTable_Class[ClassID].skillLv[i] )
	ldrb	r0, [r3]	@ MEM[(unsigned char *)_57], MEM[(unsigned char *)_57]
@ SkillSystem/Core/SkillSystemCore.c:40: 			if( skillId == gpSkillTable_Class[ClassID].skillLv[i] )
	cmp	r4, r0	@ skillId, MEM[(unsigned char *)_57]
	beq	.L6		@,
.L11:
@ SkillSystem/Core/SkillSystemCore.c:36: 	for(int i=0; i<5; i++)
	adds	r3, r3, #1	@ ivtmp.48,
	cmp	r1, r2	@ level, _66
	bne	.L12		@,
@ SkillSystem/Core/SkillSystemCore.c:61: 	return 0;
	movs	r0, #0	@ <retval>,
.L4:
@ SkillSystem/Core/SkillSystemCore.c:62: }
	@ sp needed	@
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L24:
	.align	2
.L23:
	.word	GetUnitExtByUnit
	.word	gpSkillTable_Char
	.word	gpSkillTable_Class
	.size	JudgeSkill, .-JudgeSkill
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	MakeSkillListRAM.isra.0, %function
MakeSkillListRAM.isra.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
@ SkillSystem/Core/SkillSystemCore.c:92: static int MakeSkillListRAM(Unit* unit, SkillListRAM* list){
	movs	r6, r0	@ unit, tmp133
	movs	r4, r1	@ list, tmp134
@ SkillSystem/Core/SkillSystemCore.c:97: 	for(int i=1; i<MAX_SKILL_COUNT; i++)
	movs	r7, #128	@ tmp132,
@ SkillSystem/Core/SkillSystemCore.c:97: 	for(int i=1; i<MAX_SKILL_COUNT; i++)
	movs	r5, #1	@ i,
@ SkillSystem/Core/SkillSystemCore.c:93: 	ResetSkillList_byList(list);
	movs	r0, r1	@, list
	bl	ResetSkillList_byList		@
@ SkillSystem/Core/SkillSystemCore.c:95: 	list->CharID = unit->index;
	ldrb	r3, [r6, #11]	@ tmp123,
	strb	r3, [r4]	@ tmp123, list_1(D)->CharID
@ SkillSystem/Core/SkillSystemCore.c:97: 	for(int i=1; i<MAX_SKILL_COUNT; i++)
	lsls	r7, r7, #1	@ tmp132, tmp132,
.L29:
@ SkillSystem/Core/SkillSystemCore.c:98: 		if( 1 == JudgeSkill(unit,i) )
	movs	r1, r5	@, i
	movs	r0, r6	@, unit
	bl	JudgeSkill		@
@ SkillSystem/Core/SkillSystemCore.c:98: 		if( 1 == JudgeSkill(unit,i) )
	cmp	r0, #1	@ tmp135,
	bne	.L27		@,
@ SkillSystem/Core/SkillSystemCore.c:100: 			if( 0x1E < list->Count )
	ldrb	r3, [r4, #1]	@ _7,
@ SkillSystem/Core/SkillSystemCore.c:100: 			if( 0x1E < list->Count )
	cmp	r3, #30	@ _7,
	bhi	.L26		@,
@ SkillSystem/Core/SkillSystemCore.c:103: 				list->skills[list->Count++] = i;
	adds	r2, r3, #1	@ tmp127, _7,
@ SkillSystem/Core/SkillSystemCore.c:103: 				list->skills[list->Count++] = i;
	adds	r3, r4, r3	@ tmp129, list, _7
@ SkillSystem/Core/SkillSystemCore.c:103: 				list->skills[list->Count++] = i;
	strb	r2, [r4, #1]	@ tmp127, list_1(D)->Count
@ SkillSystem/Core/SkillSystemCore.c:103: 				list->skills[list->Count++] = i;
	strb	r5, [r3, #2]	@ i, list_1(D)->skills[_9]
.L27:
@ SkillSystem/Core/SkillSystemCore.c:97: 	for(int i=1; i<MAX_SKILL_COUNT; i++)
	adds	r5, r5, #1	@ i,
@ SkillSystem/Core/SkillSystemCore.c:97: 	for(int i=1; i<MAX_SKILL_COUNT; i++)
	cmp	r5, r7	@ i, tmp132
	bne	.L29		@,
.L26:
@ SkillSystem/Core/SkillSystemCore.c:107: }
	@ sp needed	@
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	.size	MakeSkillListRAM.isra.0, .-MakeSkillListRAM.isra.0
	.align	1
	.global	ResetSkillList
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	ResetSkillList, %function
ResetSkillList:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ SkillSystem/Core/SkillSystemCore.c:84: 	ResetSkillList_byList(gpUnitSkillList0);
	ldr	r3, .L32	@ tmp115,
@ SkillSystem/Core/SkillSystemCore.c:83: void ResetSkillList(void){
	push	{r4, lr}	@
@ SkillSystem/Core/SkillSystemCore.c:84: 	ResetSkillList_byList(gpUnitSkillList0);
	ldr	r0, [r3]	@, gpUnitSkillList0
@ SkillSystem/Core/SkillSystemCore.c:86: }
	@ sp needed	@
@ SkillSystem/Core/SkillSystemCore.c:84: 	ResetSkillList_byList(gpUnitSkillList0);
	bl	ResetSkillList_byList		@
@ SkillSystem/Core/SkillSystemCore.c:85: 	ResetSkillList_byList(gpUnitSkillList1);
	ldr	r3, .L32+4	@ tmp116,
	ldr	r0, [r3]	@, gpUnitSkillList1
	bl	ResetSkillList_byList		@
@ SkillSystem/Core/SkillSystemCore.c:86: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L33:
	.align	2
.L32:
	.word	gpUnitSkillList0
	.word	gpUnitSkillList1
	.size	ResetSkillList, .-ResetSkillList
	.align	1
	.global	GetSkillListLength
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetSkillListLength, %function
GetSkillListLength:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ SkillSystem/Core/SkillSystemCore.c:72: 	return list->CharID == unit->index;
	movs	r3, #11	@ tmp124,
@ SkillSystem/Core/SkillSystemCore.c:110: int GetSkillListLength(Unit* unit){
	push	{r4, lr}	@
@ SkillSystem/Core/SkillSystemCore.c:111: 	if( 0==IsSkillListHandled(unit,gpUnitSkillList0) )
	ldr	r4, .L36	@ tmp122,
	ldr	r1, [r4]	@ gpUnitSkillList0.8_1, gpUnitSkillList0
@ SkillSystem/Core/SkillSystemCore.c:72: 	return list->CharID == unit->index;
	ldrsb	r3, [r0, r3]	@ tmp124,
@ SkillSystem/Core/SkillSystemCore.c:72: 	return list->CharID == unit->index;
	ldrb	r2, [r1]	@ *gpUnitSkillList0.8_1, *gpUnitSkillList0.8_1
@ SkillSystem/Core/SkillSystemCore.c:111: 	if( 0==IsSkillListHandled(unit,gpUnitSkillList0) )
	cmp	r2, r3	@ *gpUnitSkillList0.8_1, tmp124
	beq	.L35		@,
@ SkillSystem/Core/SkillSystemCore.c:112: 		MakeSkillListRAM(unit,gpUnitSkillList0);
	bl	MakeSkillListRAM.isra.0		@
.L35:
@ SkillSystem/Core/SkillSystemCore.c:115: }
	@ sp needed	@
@ SkillSystem/Core/SkillSystemCore.c:114: 	return gpUnitSkillList0->Count;
	ldr	r3, [r4]	@ gpUnitSkillList0, gpUnitSkillList0
	ldrb	r0, [r3, #1]	@ tmp125,
@ SkillSystem/Core/SkillSystemCore.c:115: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L37:
	.align	2
.L36:
	.word	gpUnitSkillList0
	.size	GetSkillListLength, .-GetSkillListLength
	.align	1
	.global	UnitGetSkillList
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	UnitGetSkillList, %function
UnitGetSkillList:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ SkillSystem/Core/SkillSystemCore.c:119: 	SkillListRAM* list = gpUnitSkillList1;
	ldr	r3, .L40	@ tmp121,
	ldr	r1, [r3]	@ <retval>, gpUnitSkillList1
@ SkillSystem/Core/SkillSystemCore.c:72: 	return list->CharID == unit->index;
	movs	r3, #11	@ _12,
@ SkillSystem/Core/SkillSystemCore.c:118: SkillListRAM* UnitGetSkillList(Unit* unit){
	push	{r4, lr}	@
@ SkillSystem/Core/SkillSystemCore.c:72: 	return list->CharID == unit->index;
	ldrb	r2, [r1]	@ *list_4, *list_4
@ SkillSystem/Core/SkillSystemCore.c:72: 	return list->CharID == unit->index;
	ldrsb	r3, [r0, r3]	@ _12,* _12
@ SkillSystem/Core/SkillSystemCore.c:121: 	if( 1 == IsSkillListHandled(unit,list) )
	cmp	r2, r3	@ *list_4, _12
	beq	.L38		@,
@ SkillSystem/Core/SkillSystemCore.c:124: 		list = gpUnitSkillList0;
	ldr	r4, .L40+4	@ tmp123,
	ldr	r1, [r4]	@ <retval>, gpUnitSkillList0
@ SkillSystem/Core/SkillSystemCore.c:72: 	return list->CharID == unit->index;
	ldrb	r2, [r1]	@ *list_7, *list_7
@ SkillSystem/Core/SkillSystemCore.c:126: 	if( 1 == IsSkillListHandled(unit,list) )
	cmp	r3, r2	@ _12, *list_7
	beq	.L38		@,
@ SkillSystem/Core/SkillSystemCore.c:129: 	MakeSkillListRAM(unit,gpUnitSkillList0);
	bl	MakeSkillListRAM.isra.0		@
@ SkillSystem/Core/SkillSystemCore.c:130: 	return gpUnitSkillList0;
	ldr	r1, [r4]	@ <retval>, gpUnitSkillList0
.L38:
@ SkillSystem/Core/SkillSystemCore.c:131: }
	@ sp needed	@
	movs	r0, r1	@, <retval>
	pop	{r4}
	pop	{r1}
	bx	r1
.L41:
	.align	2
.L40:
	.word	gpUnitSkillList1
	.word	gpUnitSkillList0
	.size	UnitGetSkillList, .-UnitGetSkillList
	.align	1
	.global	JudgeSkillFast
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	JudgeSkillFast, %function
JudgeSkillFast:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ SkillSystem/Core/SkillSystemCore.c:72: 	return list->CharID == unit->index;
	movs	r3, #11	@ tmp131,
@ SkillSystem/Core/SkillSystemCore.c:135: int JudgeSkillFast(Unit* unit, int skillId){
	push	{r4, r5, r6, lr}	@
@ SkillSystem/Core/SkillSystemCore.c:136: 	if( 0==IsSkillListHandled(unit,gpUnitSkillList0) )
	ldr	r5, .L48	@ tmp129,
@ SkillSystem/Core/SkillSystemCore.c:135: int JudgeSkillFast(Unit* unit, int skillId){
	movs	r4, r1	@ skillId, tmp137
@ SkillSystem/Core/SkillSystemCore.c:136: 	if( 0==IsSkillListHandled(unit,gpUnitSkillList0) )
	ldr	r1, [r5]	@ gpUnitSkillList0.12_1, gpUnitSkillList0
@ SkillSystem/Core/SkillSystemCore.c:72: 	return list->CharID == unit->index;
	ldrsb	r3, [r0, r3]	@ tmp131,
@ SkillSystem/Core/SkillSystemCore.c:72: 	return list->CharID == unit->index;
	ldrb	r2, [r1]	@ *gpUnitSkillList0.12_1, *gpUnitSkillList0.12_1
@ SkillSystem/Core/SkillSystemCore.c:136: 	if( 0==IsSkillListHandled(unit,gpUnitSkillList0) )
	cmp	r2, r3	@ *gpUnitSkillList0.12_1, tmp131
	beq	.L43		@,
@ SkillSystem/Core/SkillSystemCore.c:137: 		MakeSkillListRAM(unit,gpUnitSkillList0);
	bl	MakeSkillListRAM.isra.0		@
.L43:
@ SkillSystem/Core/SkillSystemCore.c:139: 	for( int i=0; i<gpUnitSkillList0->Count; i++ )
	ldr	r3, [r5]	@ ivtmp.94, gpUnitSkillList0
	ldrb	r2, [r3, #1]	@ tmp133,
	adds	r2, r2, r3	@ _24, tmp133, ivtmp.94
.L44:
@ SkillSystem/Core/SkillSystemCore.c:139: 	for( int i=0; i<gpUnitSkillList0->Count; i++ )
	cmp	r3, r2	@ ivtmp.94, _24
	bne	.L46		@,
@ SkillSystem/Core/SkillSystemCore.c:143: 	return 0;
	movs	r0, #0	@ <retval>,
.L42:
@ SkillSystem/Core/SkillSystemCore.c:144: }
	@ sp needed	@
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L46:
@ SkillSystem/Core/SkillSystemCore.c:140: 		if( skillId == gpUnitSkillList0->skills[i] )
	ldrb	r1, [r3, #2]	@ _3, MEM[(unsigned char *)_25 + 2B]
@ SkillSystem/Core/SkillSystemCore.c:140: 		if( skillId == gpUnitSkillList0->skills[i] )
	adds	r3, r3, #1	@ ivtmp.94,
	cmp	r1, r4	@ _3, skillId
	bne	.L44		@,
@ SkillSystem/Core/SkillSystemCore.c:141: 			return 1;
	movs	r0, #1	@ <retval>,
	b	.L42		@
.L49:
	.align	2
.L48:
	.word	gpUnitSkillList0
	.size	JudgeSkillFast, .-JudgeSkillFast
	.align	1
	.global	IsSkill
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	IsSkill, %function
IsSkill:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ SkillSystem/Core/SkillSystemCore.c:148: int IsSkill(u8 SkillID){
	movs	r3, r0	@ SkillID, tmp125
@ SkillSystem/Core/SkillSystemCore.c:152: 	return FALSE;	
	movs	r0, #0	@ <retval>,
@ SkillSystem/Core/SkillSystemCore.c:149: 	if( (SkillID < MAX_SKILL_COUNT) & (SkillID>0) )
	cmp	r3, r0	@ SkillID,
	beq	.L50		@,
@ SkillSystem/Core/SkillSystemCore.c:150: 		if( NULL != SkillInfoTable[SkillID] )
	ldr	r2, .L54	@ tmp118,
	lsls	r3, r3, #2	@ tmp119, SkillID,
@ SkillSystem/Core/SkillSystemCore.c:150: 		if( NULL != SkillInfoTable[SkillID] )
	ldr	r0, [r3, r2]	@ SkillInfoTable[_1], SkillInfoTable[_1]
@ SkillSystem/Core/SkillSystemCore.c:151: 			return TRUE;
	subs	r3, r0, #1	@ tmp123, SkillInfoTable[_1]
	sbcs	r0, r0, r3	@ <retval>, SkillInfoTable[_1], tmp123
.L50:
@ SkillSystem/Core/SkillSystemCore.c:153: }
	@ sp needed	@
	bx	lr
.L55:
	.align	2
.L54:
	.word	SkillInfoTable
	.size	IsSkill, .-IsSkill
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L25:
	bx	r7
