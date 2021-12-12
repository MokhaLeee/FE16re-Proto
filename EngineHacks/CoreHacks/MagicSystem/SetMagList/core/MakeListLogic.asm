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
	.file	"MakeListLogic.c"
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
	.type	AddBMag, %function
AddBMag:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ MagicSystem/SetMagList/core/MakeListLogic.c:18: 	*at = (*at&0xF0) | ( ((*at&0xF)+1)&0xF);
	movs	r1, #15	@ tmp125,
@ MagicSystem/SetMagList/core/MakeListLogic.c:19: }
	@ sp needed	@
@ MagicSystem/SetMagList/core/MakeListLogic.c:18: 	*at = (*at&0xF0) | ( ((*at&0xF)+1)&0xF);
	ldrb	r2, [r0]	@ _1, *at_10(D)
@ MagicSystem/SetMagList/core/MakeListLogic.c:18: 	*at = (*at&0xF0) | ( ((*at&0xF)+1)&0xF);
	adds	r3, r2, #1	@ tmp122, _1,
	ands	r3, r1	@ tmp124, tmp125
@ MagicSystem/SetMagList/core/MakeListLogic.c:18: 	*at = (*at&0xF0) | ( ((*at&0xF)+1)&0xF);
	bics	r2, r1	@ tmp127, tmp125
@ MagicSystem/SetMagList/core/MakeListLogic.c:18: 	*at = (*at&0xF0) | ( ((*at&0xF)+1)&0xF);
	orrs	r3, r2	@ tmp131, tmp127
@ MagicSystem/SetMagList/core/MakeListLogic.c:18: 	*at = (*at&0xF0) | ( ((*at&0xF)+1)&0xF);
	strb	r3, [r0]	@ tmp131, *at_10(D)
@ MagicSystem/SetMagList/core/MakeListLogic.c:19: }
	bx	lr
	.size	AddBMag, .-AddBMag
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	AddWMag, %function
AddWMag:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ MagicSystem/SetMagList/core/MakeListLogic.c:22: 	*at = (*at&0xF) | ( ((*at&0xF0)+0x10)&0xF0);
	ldrb	r2, [r0]	@ _1, *at_8(D)
@ MagicSystem/SetMagList/core/MakeListLogic.c:23: }
	@ sp needed	@
@ MagicSystem/SetMagList/core/MakeListLogic.c:22: 	*at = (*at&0xF) | ( ((*at&0xF0)+0x10)&0xF0);
	movs	r1, #15	@ tmp122,
	movs	r3, r2	@ tmp121, _1
	bics	r3, r1	@ tmp121, tmp122
@ MagicSystem/SetMagList/core/MakeListLogic.c:22: 	*at = (*at&0xF) | ( ((*at&0xF0)+0x10)&0xF0);
	ands	r2, r1	@ tmp126, tmp122
@ MagicSystem/SetMagList/core/MakeListLogic.c:22: 	*at = (*at&0xF) | ( ((*at&0xF0)+0x10)&0xF0);
	adds	r3, r3, #16	@ tmp124,
@ MagicSystem/SetMagList/core/MakeListLogic.c:22: 	*at = (*at&0xF) | ( ((*at&0xF0)+0x10)&0xF0);
	orrs	r3, r2	@ tmp130, tmp126
@ MagicSystem/SetMagList/core/MakeListLogic.c:22: 	*at = (*at&0xF) | ( ((*at&0xF0)+0x10)&0xF0);
	strb	r3, [r0]	@ tmp130, *at_8(D)
@ MagicSystem/SetMagList/core/MakeListLogic.c:23: }
	bx	lr
	.size	AddWMag, .-AddWMag
	.align	1
	.global	IsClassHandleMag
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	IsClassHandleMag, %function
IsClassHandleMag:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ MagicSystem/SetMagList/core/MakeListLogic.c:33: 	const u8 *cur = ClassList;
	ldr	r2, .L8	@ cur,
.L4:
@ MagicSystem/SetMagList/core/MakeListLogic.c:34: 	while(*cur)
	ldrb	r3, [r2]	@ _6, MEM[(const u8 *)cur_4]
	cmp	r3, #0	@ _6,
	bne	.L6		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:37: 	return FALSE;
	movs	r0, r3	@ <retval>, _6
.L3:
@ MagicSystem/SetMagList/core/MakeListLogic.c:41: { 	return CanClassUseMag(classID,ClassHandleMag); }
	@ sp needed	@
	bx	lr
.L6:
@ MagicSystem/SetMagList/core/MakeListLogic.c:35: 		if( *cur++ == classID )
	adds	r2, r2, #1	@ cur,
@ MagicSystem/SetMagList/core/MakeListLogic.c:35: 		if( *cur++ == classID )
	cmp	r0, r3	@ classID, _6
	bne	.L4		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:36: 			return TRUE;
	movs	r0, #1	@ <retval>,
@ MagicSystem/SetMagList/core/MakeListLogic.c:41: { 	return CanClassUseMag(classID,ClassHandleMag); }
	b	.L3		@
.L9:
	.align	2
.L8:
	.word	ClassHandleMag
	.size	IsClassHandleMag, .-IsClassHandleMag
	.align	1
	.global	IsClassLearningMag
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	IsClassLearningMag, %function
IsClassLearningMag:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ MagicSystem/SetMagList/core/MakeListLogic.c:33: 	const u8 *cur = ClassList;
	ldr	r2, .L15	@ cur,
.L11:
@ MagicSystem/SetMagList/core/MakeListLogic.c:34: 	while(*cur)
	ldrb	r3, [r2]	@ _6, MEM[(const u8 *)cur_4]
	cmp	r3, #0	@ _6,
	bne	.L13		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:37: 	return FALSE;
	movs	r0, r3	@ <retval>, _6
.L10:
@ MagicSystem/SetMagList/core/MakeListLogic.c:44: { 	return CanClassUseMag(classID,ClassLeaningMag); }
	@ sp needed	@
	bx	lr
.L13:
@ MagicSystem/SetMagList/core/MakeListLogic.c:35: 		if( *cur++ == classID )
	adds	r2, r2, #1	@ cur,
@ MagicSystem/SetMagList/core/MakeListLogic.c:35: 		if( *cur++ == classID )
	cmp	r0, r3	@ classID, _6
	bne	.L11		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:36: 			return TRUE;
	movs	r0, #1	@ <retval>,
@ MagicSystem/SetMagList/core/MakeListLogic.c:44: { 	return CanClassUseMag(classID,ClassLeaningMag); }
	b	.L10		@
.L16:
	.align	2
.L15:
	.word	ClassLeaningMag
	.size	IsClassLearningMag, .-IsClassLearningMag
	.align	1
	.global	IsClassBMagMaster
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	IsClassBMagMaster, %function
IsClassBMagMaster:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ MagicSystem/SetMagList/core/MakeListLogic.c:33: 	const u8 *cur = ClassList;
	ldr	r2, .L22	@ cur,
.L18:
@ MagicSystem/SetMagList/core/MakeListLogic.c:34: 	while(*cur)
	ldrb	r3, [r2]	@ _6, MEM[(const u8 *)cur_4]
	cmp	r3, #0	@ _6,
	bne	.L20		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:37: 	return FALSE;
	movs	r0, r3	@ <retval>, _6
.L17:
@ MagicSystem/SetMagList/core/MakeListLogic.c:47: { 	return CanClassUseMag(classID,ClassBMagMaster); }
	@ sp needed	@
	bx	lr
.L20:
@ MagicSystem/SetMagList/core/MakeListLogic.c:35: 		if( *cur++ == classID )
	adds	r2, r2, #1	@ cur,
@ MagicSystem/SetMagList/core/MakeListLogic.c:35: 		if( *cur++ == classID )
	cmp	r0, r3	@ classID, _6
	bne	.L18		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:36: 			return TRUE;
	movs	r0, #1	@ <retval>,
@ MagicSystem/SetMagList/core/MakeListLogic.c:47: { 	return CanClassUseMag(classID,ClassBMagMaster); }
	b	.L17		@
.L23:
	.align	2
.L22:
	.word	ClassBMagMaster
	.size	IsClassBMagMaster, .-IsClassBMagMaster
	.align	1
	.global	IsClassWMagMaster
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	IsClassWMagMaster, %function
IsClassWMagMaster:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ MagicSystem/SetMagList/core/MakeListLogic.c:33: 	const u8 *cur = ClassList;
	ldr	r2, .L29	@ cur,
.L25:
@ MagicSystem/SetMagList/core/MakeListLogic.c:34: 	while(*cur)
	ldrb	r3, [r2]	@ _6, MEM[(const u8 *)cur_4]
	cmp	r3, #0	@ _6,
	bne	.L27		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:37: 	return FALSE;
	movs	r0, r3	@ <retval>, _6
.L24:
@ MagicSystem/SetMagList/core/MakeListLogic.c:50: { 	return CanClassUseMag(classID,ClassWMagMaster); }
	@ sp needed	@
	bx	lr
.L27:
@ MagicSystem/SetMagList/core/MakeListLogic.c:35: 		if( *cur++ == classID )
	adds	r2, r2, #1	@ cur,
@ MagicSystem/SetMagList/core/MakeListLogic.c:35: 		if( *cur++ == classID )
	cmp	r0, r3	@ classID, _6
	bne	.L25		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:36: 			return TRUE;
	movs	r0, #1	@ <retval>,
@ MagicSystem/SetMagList/core/MakeListLogic.c:50: { 	return CanClassUseMag(classID,ClassWMagMaster); }
	b	.L24		@
.L30:
	.align	2
.L29:
	.word	ClassWMagMaster
	.size	IsClassWMagMaster, .-IsClassWMagMaster
	.align	1
	.global	SetBMagBaseChar
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SetBMagBaseChar, %function
SetBMagBaseChar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}	@
@ MagicSystem/SetMagList/core/MakeListLogic.c:157: void SetBMagBaseChar(Unit* unit){
	movs	r5, r0	@ unit, tmp333
@ MagicSystem/SetMagList/core/MakeListLogic.c:158: 	UnitExt* ext = GetUnitExtByUnit(unit);
	ldr	r3, .L58	@ tmp204,
	bl	.L60		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:159: 	const u8 charId = unit->pCharacterData->number;
	ldr	r3, [r5]	@ unit_84(D)->pCharacterData, unit_84(D)->pCharacterData
@ MagicSystem/SetMagList/core/MakeListLogic.c:158: 	UnitExt* ext = GetUnitExtByUnit(unit);
	movs	r4, r0	@ ext, tmp334
@ MagicSystem/SetMagList/core/MakeListLogic.c:159: 	const u8 charId = unit->pCharacterData->number;
	ldrb	r7, [r3, #4]	@ charId,
@ MagicSystem/SetMagList/core/MakeListLogic.c:160: 	const u8 bmagRank = GetRankReason(unit);
	movs	r0, r5	@, unit
	ldr	r3, .L58+4	@ tmp206,
	bl	.L60		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:161: 	MagListUnit* it = &gpUnitBasedBMagList[charId];
	ldr	r3, .L58+8	@ tmp208,
@ MagicSystem/SetMagList/core/MakeListLogic.c:161: 	MagListUnit* it = &gpUnitBasedBMagList[charId];
	ldr	r5, [r3]	@ gpUnitBasedBMagList, gpUnitBasedBMagList
@ MagicSystem/SetMagList/core/MakeListLogic.c:161: 	MagListUnit* it = &gpUnitBasedBMagList[charId];
	lsls	r7, r7, #4	@ tmp209, charId,
@ MagicSystem/SetMagList/core/MakeListLogic.c:161: 	MagListUnit* it = &gpUnitBasedBMagList[charId];
	adds	r5, r5, r7	@ it, gpUnitBasedBMagList, tmp209
	movs	r7, r5	@ ivtmp.77, it
	adds	r3, r5, #3	@ _141, it,
@ MagicSystem/SetMagList/core/MakeListLogic.c:160: 	const u8 bmagRank = GetRankReason(unit);
	lsls	r6, r0, #24	@ bmagRank, tmp335,
	str	r3, [sp, #4]	@ _141, %sfp
	lsrs	r6, r6, #24	@ bmagRank, bmagRank,
.L35:
@ MagicSystem/SetMagList/core/MakeListLogic.c:165: 		u8 magit = it->mags[i];
	ldrb	r0, [r7]	@ magit, MEM[(unsigned char *)_145]
@ MagicSystem/SetMagList/core/MakeListLogic.c:166: 		if( magit )
	cmp	r0, #0	@ magit,
	beq	.L33		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:168: 			u8 offset = GetBMagOffset(magit);
	ldr	r3, .L58+12	@ tmp213,
	bl	.L60		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:169: 			if( offset < 0x10 )
	cmp	r0, #15	@ tmp214,
	bhi	.L33		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:170: 				AddBMag(&ext->mlist.m[offset]);
	adds	r0, r0, #17	@ tmp218,
	lsls	r0, r0, #24	@ tmp219, tmp218,
	lsrs	r0, r0, #24	@ tmp219, tmp219,
	adds	r0, r4, r0	@ tmp221, ext, tmp219
	bl	AddBMag		@
.L33:
@ MagicSystem/SetMagList/core/MakeListLogic.c:163: 	for( int i=0; i<MAGLIST_UNIT_BASESIZE; i++ )
	ldr	r3, [sp, #4]	@ _141, %sfp
	adds	r7, r7, #1	@ ivtmp.77,
	cmp	r3, r7	@ _141, ivtmp.77
	bne	.L35		@,
	ldr	r7, .L58+12	@ tmp332,
@ MagicSystem/SetMagList/core/MakeListLogic.c:174: 	if( bmagRank == TH_CLASS_SP )
	cmp	r6, #12	@ bmagRank,
	bne	.L36		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:176: 			&ext->mlist.m[GetBMagOffset(it->mags[UNIT_SP])]);
	ldrb	r0, [r5, #13]	@ tmp224,
	bl	.L61		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:175: 		AddBMag(
	adds	r0, r0, #17	@ tmp229,
	adds	r0, r4, r0	@ tmp230, ext, tmp229
	bl	AddBMag		@
.L37:
@ MagicSystem/SetMagList/core/MakeListLogic.c:179: 			&ext->mlist.m[GetBMagOffset(it->mags[UNIT_S])]);
	ldrb	r0, [r5, #12]	@ tmp235,
	bl	.L61		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:178: 		AddBMag(
	adds	r0, r0, #17	@ tmp240,
	adds	r0, r4, r0	@ tmp241, ext, tmp240
	bl	AddBMag		@
.L39:
@ MagicSystem/SetMagList/core/MakeListLogic.c:182: 			&ext->mlist.m[GetBMagOffset(it->mags[UNIT_AP])]);
	ldrb	r0, [r5, #11]	@ tmp244,
	bl	.L61		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:181: 		AddBMag(
	adds	r0, r0, #17	@ tmp249,
	adds	r0, r4, r0	@ tmp250, ext, tmp249
	bl	AddBMag		@
.L41:
@ MagicSystem/SetMagList/core/MakeListLogic.c:185: 			&ext->mlist.m[GetBMagOffset(it->mags[UNIT_A])]);
	ldrb	r0, [r5, #10]	@ tmp253,
	bl	.L61		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:184: 		AddBMag(
	adds	r0, r0, #17	@ tmp258,
	adds	r0, r4, r0	@ tmp259, ext, tmp258
	bl	AddBMag		@
.L43:
@ MagicSystem/SetMagList/core/MakeListLogic.c:188: 			&ext->mlist.m[GetBMagOffset(it->mags[UNIT_BP])]);
	ldrb	r0, [r5, #9]	@ tmp262,
	bl	.L61		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:187: 		AddBMag(
	adds	r0, r0, #17	@ tmp267,
	adds	r0, r4, r0	@ tmp268, ext, tmp267
	bl	AddBMag		@
.L45:
@ MagicSystem/SetMagList/core/MakeListLogic.c:191: 			&ext->mlist.m[GetBMagOffset(it->mags[UNIT_B])]);
	ldrb	r0, [r5, #8]	@ tmp271,
	bl	.L61		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:190: 		AddBMag(
	adds	r0, r0, #17	@ tmp276,
	adds	r0, r4, r0	@ tmp277, ext, tmp276
	bl	AddBMag		@
.L47:
@ MagicSystem/SetMagList/core/MakeListLogic.c:194: 			&ext->mlist.m[GetBMagOffset(it->mags[UNIT_CP])]);
	ldrb	r0, [r5, #7]	@ tmp280,
	bl	.L61		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:193: 		AddBMag(
	adds	r0, r0, #17	@ tmp285,
	adds	r0, r4, r0	@ tmp286, ext, tmp285
	bl	AddBMag		@
.L49:
@ MagicSystem/SetMagList/core/MakeListLogic.c:197: 			&ext->mlist.m[GetBMagOffset(it->mags[UNIT_C])]);
	ldrb	r0, [r5, #6]	@ tmp289,
	bl	.L61		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:196: 		AddBMag(
	adds	r0, r0, #17	@ tmp294,
	adds	r0, r4, r0	@ tmp295, ext, tmp294
	bl	AddBMag		@
.L51:
@ MagicSystem/SetMagList/core/MakeListLogic.c:200: 			&ext->mlist.m[GetBMagOffset(it->mags[UNIT_DP])]);
	ldrb	r0, [r5, #5]	@ tmp298,
	bl	.L61		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:199: 		AddBMag(
	adds	r0, r0, #17	@ tmp303,
	adds	r0, r4, r0	@ tmp304, ext, tmp303
	bl	AddBMag		@
.L53:
@ MagicSystem/SetMagList/core/MakeListLogic.c:203: 			&ext->mlist.m[GetBMagOffset(it->mags[UNIT_D])]);
	ldrb	r0, [r5, #4]	@ tmp307,
	bl	.L61		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:202: 		AddBMag(
	adds	r0, r0, #17	@ tmp312,
	adds	r0, r4, r0	@ tmp313, ext, tmp312
	bl	AddBMag		@
.L55:
@ MagicSystem/SetMagList/core/MakeListLogic.c:206: 			&ext->mlist.m[GetBMagOffset(it->mags[UNIT_EP])]);
	ldrb	r0, [r5, #3]	@ tmp316,
	bl	.L61		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:205: 		AddBMag(
	adds	r0, r0, #17	@ tmp321,
	adds	r0, r4, r0	@ tmp322, ext, tmp321
	bl	AddBMag		@
	b	.L56		@
.L36:
@ MagicSystem/SetMagList/core/MakeListLogic.c:177: 	if( bmagRank > TH_CLASS_AP )
	cmp	r6, #10	@ bmagRank,
	bhi	.L37		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:180: 	if( bmagRank > TH_CLASS_A )
	beq	.L39		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:183: 	if( bmagRank > TH_CLASS_BP )
	cmp	r6, #9	@ bmagRank,
	beq	.L41		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:186: 	if( bmagRank > TH_CLASS_B )
	cmp	r6, #8	@ bmagRank,
	beq	.L43		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:189: 	if( bmagRank > TH_CLASS_CP )
	cmp	r6, #7	@ bmagRank,
	beq	.L45		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:192: 	if( bmagRank > TH_CLASS_C )
	cmp	r6, #6	@ bmagRank,
	beq	.L47		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:195: 	if( bmagRank > TH_CLASS_DP )
	cmp	r6, #5	@ bmagRank,
	beq	.L49		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:198: 	if( bmagRank > TH_CLASS_D )
	cmp	r6, #4	@ bmagRank,
	beq	.L51		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:201: 	if( bmagRank > TH_CLASS_EP )
	cmp	r6, #3	@ bmagRank,
	beq	.L53		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:204: 	if( bmagRank > TH_CLASS_E )
	cmp	r6, #2	@ bmagRank,
	beq	.L55		@,
.L56:
@ MagicSystem/SetMagList/core/MakeListLogic.c:210: }
	@ sp needed	@
@ MagicSystem/SetMagList/core/MakeListLogic.c:209: 			&ext->mlist.m[GetBMagOffset(it->mags[UNIT_EP])]);
	ldrb	r0, [r5, #3]	@ tmp325,
	bl	.L61		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:208: 	AddBMag(
	adds	r0, r0, #17	@ tmp330,
	adds	r0, r4, r0	@ tmp331, ext, tmp330
	bl	AddBMag		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:210: }
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L59:
	.align	2
.L58:
	.word	GetUnitExtByUnit
	.word	GetRankReason
	.word	gpUnitBasedBMagList
	.word	GetBMagOffset
	.size	SetBMagBaseChar, .-SetBMagBaseChar
	.align	1
	.global	SetUnitMagList
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SetUnitMagList, %function
SetUnitMagList:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
@ MagicSystem/SetMagList/core/MakeListLogic.c:277: 	u8 classId = unit->pClassData->number;
	ldr	r3, [r0, #4]	@ unit_13(D)->pClassData, unit_13(D)->pClassData
	ldrb	r3, [r3, #4]	@ classId,
@ MagicSystem/SetMagList/core/MakeListLogic.c:276: int SetUnitMagList(Unit* unit){
	sub	sp, sp, #28	@,,
@ MagicSystem/SetMagList/core/MakeListLogic.c:278: 	UnitExt* ext = GetUnitExtByUnit(unit);
	ldr	r4, .L153	@ tmp341,
@ MagicSystem/SetMagList/core/MakeListLogic.c:277: 	u8 classId = unit->pClassData->number;
	str	r3, [sp, #12]	@ classId, %sfp
@ MagicSystem/SetMagList/core/MakeListLogic.c:276: int SetUnitMagList(Unit* unit){
	movs	r5, r0	@ unit, tmp640
@ MagicSystem/SetMagList/core/MakeListLogic.c:278: 	UnitExt* ext = GetUnitExtByUnit(unit);
	bl	.L155		@
	movs	r3, r0	@ ivtmp.96, tmp641
@ MagicSystem/SetMagList/core/MakeListLogic.c:27: 		ext->mlist.m[i] = 0;
	movs	r2, #0	@ tmp342,
	adds	r3, r3, #17	@ ivtmp.96,
	str	r3, [sp, #4]	@ ivtmp.96, %sfp
	adds	r3, r3, #15	@ _435,
	str	r3, [sp, #8]	@ _435, %sfp
@ MagicSystem/SetMagList/core/MakeListLogic.c:278: 	UnitExt* ext = GetUnitExtByUnit(unit);
	str	r0, [sp, #16]	@ tmp641, %sfp
	ldr	r3, [sp, #4]	@ ivtmp.162, %sfp
.L63:
@ MagicSystem/SetMagList/core/MakeListLogic.c:26: 	for(int i=0; i<MAGIC_LIST_SIZE; i++)
	ldr	r1, [sp, #8]	@ _435, %sfp
@ MagicSystem/SetMagList/core/MakeListLogic.c:27: 		ext->mlist.m[i] = 0;
	strb	r2, [r3]	@ tmp342, MEM[(unsigned char *)_433]
@ MagicSystem/SetMagList/core/MakeListLogic.c:26: 	for(int i=0; i<MAGIC_LIST_SIZE; i++)
	adds	r3, r3, #1	@ ivtmp.162,
	cmp	r3, r1	@ ivtmp.162, _435
	bne	.L63		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:284: 	if( FALSE == IsClassHandleMag(classId) )
	ldr	r0, [sp, #12]	@, %sfp
	bl	IsClassHandleMag		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:284: 	if( FALSE == IsClassHandleMag(classId) )
	cmp	r0, #0	@ <retval>,
	bne	.LCB410	@
	b	.L62	@long jump	@
.LCB410:
@ MagicSystem/SetMagList/core/MakeListLogic.c:123: 	u8 classId = unit->pClassData->number;
	ldr	r3, [r5, #4]	@ unit_13(D)->pClassData, unit_13(D)->pClassData
@ MagicSystem/SetMagList/core/MakeListLogic.c:124: 	UnitExt* ext = GetUnitExtByUnit(unit);
	movs	r0, r5	@, unit
@ MagicSystem/SetMagList/core/MakeListLogic.c:123: 	u8 classId = unit->pClassData->number;
	ldrb	r7, [r3, #4]	@ classId,
@ MagicSystem/SetMagList/core/MakeListLogic.c:124: 	UnitExt* ext = GetUnitExtByUnit(unit);
	bl	.L155		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:126: 	for( int i=0; i<MAGLIST_CLASS_MAXSIZE; i++ )
	movs	r4, #0	@ i,
@ MagicSystem/SetMagList/core/MakeListLogic.c:124: 	UnitExt* ext = GetUnitExtByUnit(unit);
	movs	r6, r0	@ ext, tmp643
@ MagicSystem/SetMagList/core/MakeListLogic.c:128: 		u8 magCur = gpClassBasedBMagList[classId].mags[i];
	lsls	r7, r7, #2	@ _126, classId,
.L68:
@ MagicSystem/SetMagList/core/MakeListLogic.c:128: 		u8 magCur = gpClassBasedBMagList[classId].mags[i];
	ldr	r3, .L153+4	@ tmp347,
	ldr	r3, [r3]	@ gpClassBasedBMagList, gpClassBasedBMagList
	adds	r3, r3, r7	@ tmp348, gpClassBasedBMagList, _126
	ldrb	r0, [r3, r4]	@ magCur, *_127
@ MagicSystem/SetMagList/core/MakeListLogic.c:129: 		if( magCur )
	cmp	r0, #0	@ magCur,
	beq	.L66		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:131: 			u8 offset = GetBMagOffset(magCur);
	ldr	r3, .L153+8	@ tmp351,
	bl	.L60		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:132: 			if( offset < 0x10 )
	cmp	r0, #15	@ tmp352,
	bhi	.L66		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:133: 				AddBMag(&ext->mlist.m[offset]);
	adds	r0, r0, #17	@ tmp356,
	lsls	r0, r0, #24	@ tmp357, tmp356,
	lsrs	r0, r0, #24	@ tmp357, tmp357,
	adds	r0, r6, r0	@ tmp359, ext, tmp357
	bl	AddBMag		@
.L66:
@ MagicSystem/SetMagList/core/MakeListLogic.c:126: 	for( int i=0; i<MAGLIST_CLASS_MAXSIZE; i++ )
	adds	r4, r4, #1	@ i,
@ MagicSystem/SetMagList/core/MakeListLogic.c:126: 	for( int i=0; i<MAGLIST_CLASS_MAXSIZE; i++ )
	cmp	r4, #4	@ i,
	bne	.L68		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:139: 	u8 classId = unit->pClassData->number;
	ldr	r3, [r5, #4]	@ unit_13(D)->pClassData, unit_13(D)->pClassData
@ MagicSystem/SetMagList/core/MakeListLogic.c:140: 	UnitExt* ext = GetUnitExtByUnit(unit);
	movs	r0, r5	@, unit
@ MagicSystem/SetMagList/core/MakeListLogic.c:139: 	u8 classId = unit->pClassData->number;
	ldrb	r7, [r3, #4]	@ classId,
@ MagicSystem/SetMagList/core/MakeListLogic.c:140: 	UnitExt* ext = GetUnitExtByUnit(unit);
	ldr	r3, .L153	@ tmp361,
	bl	.L60		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:142: 	for( int i=0; i<MAGLIST_CLASS_MAXSIZE; i++ )
	movs	r4, #0	@ i,
@ MagicSystem/SetMagList/core/MakeListLogic.c:140: 	UnitExt* ext = GetUnitExtByUnit(unit);
	movs	r6, r0	@ ext, tmp645
@ MagicSystem/SetMagList/core/MakeListLogic.c:144: 		u8 magCur = gpClassBasedWMagList[classId].mags[i];
	lsls	r7, r7, #2	@ _112, classId,
.L72:
@ MagicSystem/SetMagList/core/MakeListLogic.c:144: 		u8 magCur = gpClassBasedWMagList[classId].mags[i];
	ldr	r3, .L153+12	@ tmp363,
	ldr	r3, [r3]	@ gpClassBasedWMagList, gpClassBasedWMagList
	adds	r3, r3, r7	@ tmp364, gpClassBasedWMagList, _112
	ldrb	r0, [r3, r4]	@ magCur, *_113
@ MagicSystem/SetMagList/core/MakeListLogic.c:145: 		if( magCur )
	cmp	r0, #0	@ magCur,
	beq	.L70		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:147: 			u8 offset = GetWMagOffset(magCur);
	ldr	r3, .L153+16	@ tmp367,
	bl	.L60		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:148: 			if( offset < 0x10 )
	cmp	r0, #15	@ tmp368,
	bhi	.L70		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:149: 				AddWMag(&ext->mlist.m[offset]);
	adds	r0, r0, #17	@ tmp372,
	lsls	r0, r0, #24	@ tmp373, tmp372,
	lsrs	r0, r0, #24	@ tmp373, tmp373,
	adds	r0, r6, r0	@ tmp375, ext, tmp373
	bl	AddWMag		@
.L70:
@ MagicSystem/SetMagList/core/MakeListLogic.c:142: 	for( int i=0; i<MAGLIST_CLASS_MAXSIZE; i++ )
	adds	r4, r4, #1	@ i,
@ MagicSystem/SetMagList/core/MakeListLogic.c:142: 	for( int i=0; i<MAGLIST_CLASS_MAXSIZE; i++ )
	cmp	r4, #4	@ i,
	bne	.L72		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:290: 	SetBMagBaseChar(unit);
	movs	r0, r5	@, unit
	bl	SetBMagBaseChar		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:214: 	UnitExt* ext = GetUnitExtByUnit(unit);
	movs	r0, r5	@, unit
	ldr	r3, .L153	@ tmp376,
	bl	.L60		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:215: 	const u8 charId = unit->pCharacterData->number;
	ldr	r3, [r5]	@ unit_13(D)->pCharacterData, unit_13(D)->pCharacterData
@ MagicSystem/SetMagList/core/MakeListLogic.c:214: 	UnitExt* ext = GetUnitExtByUnit(unit);
	movs	r4, r0	@ ext, tmp647
@ MagicSystem/SetMagList/core/MakeListLogic.c:215: 	const u8 charId = unit->pCharacterData->number;
	ldrb	r7, [r3, #4]	@ charId,
@ MagicSystem/SetMagList/core/MakeListLogic.c:216: 	const u8 WMagRank = GetRankReason(unit);
	movs	r0, r5	@, unit
	ldr	r3, .L153+20	@ tmp378,
	bl	.L60		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:217: 	MagListUnit* it = &gpUnitBasedWMagList[charId];
	ldr	r3, .L153+24	@ tmp380,
@ MagicSystem/SetMagList/core/MakeListLogic.c:217: 	MagListUnit* it = &gpUnitBasedWMagList[charId];
	ldr	r5, [r3]	@ gpUnitBasedWMagList, gpUnitBasedWMagList
@ MagicSystem/SetMagList/core/MakeListLogic.c:217: 	MagListUnit* it = &gpUnitBasedWMagList[charId];
	lsls	r7, r7, #4	@ tmp381, charId,
@ MagicSystem/SetMagList/core/MakeListLogic.c:217: 	MagListUnit* it = &gpUnitBasedWMagList[charId];
	adds	r5, r5, r7	@ it, gpUnitBasedWMagList, tmp381
	movs	r7, r5	@ ivtmp.146, it
	adds	r3, r5, #3	@ _183, it,
@ MagicSystem/SetMagList/core/MakeListLogic.c:216: 	const u8 WMagRank = GetRankReason(unit);
	lsls	r6, r0, #24	@ WMagRank, tmp648,
	str	r3, [sp, #20]	@ _183, %sfp
	lsrs	r6, r6, #24	@ WMagRank, WMagRank,
.L76:
@ MagicSystem/SetMagList/core/MakeListLogic.c:221: 		u8 magCur = it->mags[i];
	ldrb	r0, [r7]	@ magCur, MEM[(unsigned char *)_166]
@ MagicSystem/SetMagList/core/MakeListLogic.c:222: 		if( magCur )
	cmp	r0, #0	@ magCur,
	beq	.L74		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:224: 			u8 offset = GetWMagOffset(magCur);
	ldr	r3, .L153+16	@ tmp385,
	bl	.L60		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:225: 			if( offset < 0x10 )
	cmp	r0, #15	@ tmp386,
	bhi	.L74		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:226: 				AddWMag(&ext->mlist.m[offset]);
	adds	r0, r0, #17	@ tmp390,
	lsls	r0, r0, #24	@ tmp391, tmp390,
	lsrs	r0, r0, #24	@ tmp391, tmp391,
	adds	r0, r4, r0	@ tmp393, ext, tmp391
	bl	AddWMag		@
.L74:
@ MagicSystem/SetMagList/core/MakeListLogic.c:219: 	for( int i=0; i<MAGLIST_UNIT_BASESIZE; i++ )
	ldr	r3, [sp, #20]	@ _183, %sfp
	adds	r7, r7, #1	@ ivtmp.146,
	cmp	r3, r7	@ _183, ivtmp.146
	bne	.L76		@,
	ldr	r7, .L153+16	@ tmp629,
@ MagicSystem/SetMagList/core/MakeListLogic.c:230: 	if( WMagRank == TH_CLASS_SP )
	cmp	r6, #12	@ WMagRank,
	bne	.L77		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:232: 			&ext->mlist.m[GetWMagOffset(it->mags[UNIT_SP])]);
	ldrb	r0, [r5, #13]	@ tmp396,
	bl	.L61		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:231: 		AddWMag(
	adds	r0, r0, #17	@ tmp401,
	adds	r0, r4, r0	@ tmp402, ext, tmp401
	bl	AddWMag		@
.L78:
@ MagicSystem/SetMagList/core/MakeListLogic.c:235: 			&ext->mlist.m[GetWMagOffset(it->mags[UNIT_S])]);
	ldrb	r0, [r5, #12]	@ tmp407,
	bl	.L61		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:234: 		AddWMag(
	adds	r0, r0, #17	@ tmp412,
	adds	r0, r4, r0	@ tmp413, ext, tmp412
	bl	AddWMag		@
.L80:
@ MagicSystem/SetMagList/core/MakeListLogic.c:238: 			&ext->mlist.m[GetWMagOffset(it->mags[UNIT_AP])]);
	ldrb	r0, [r5, #11]	@ tmp416,
	bl	.L61		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:237: 		AddWMag(
	adds	r0, r0, #17	@ tmp421,
	adds	r0, r4, r0	@ tmp422, ext, tmp421
	bl	AddWMag		@
.L82:
@ MagicSystem/SetMagList/core/MakeListLogic.c:241: 			&ext->mlist.m[GetWMagOffset(it->mags[UNIT_A])]);
	ldrb	r0, [r5, #10]	@ tmp425,
	bl	.L61		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:240: 		AddWMag(
	adds	r0, r0, #17	@ tmp430,
	adds	r0, r4, r0	@ tmp431, ext, tmp430
	bl	AddWMag		@
.L84:
@ MagicSystem/SetMagList/core/MakeListLogic.c:244: 			&ext->mlist.m[GetWMagOffset(it->mags[UNIT_BP])]);
	ldrb	r0, [r5, #9]	@ tmp434,
	bl	.L61		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:243: 		AddWMag(
	adds	r0, r0, #17	@ tmp439,
	adds	r0, r4, r0	@ tmp440, ext, tmp439
	bl	AddWMag		@
.L86:
@ MagicSystem/SetMagList/core/MakeListLogic.c:247: 			&ext->mlist.m[GetWMagOffset(it->mags[UNIT_B])]);
	ldrb	r0, [r5, #8]	@ tmp443,
	bl	.L61		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:246: 		AddWMag(
	adds	r0, r0, #17	@ tmp448,
	adds	r0, r4, r0	@ tmp449, ext, tmp448
	bl	AddWMag		@
.L88:
@ MagicSystem/SetMagList/core/MakeListLogic.c:250: 			&ext->mlist.m[GetWMagOffset(it->mags[UNIT_CP])]);
	ldrb	r0, [r5, #7]	@ tmp452,
	bl	.L61		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:249: 		AddWMag(
	adds	r0, r0, #17	@ tmp457,
	adds	r0, r4, r0	@ tmp458, ext, tmp457
	bl	AddWMag		@
.L90:
@ MagicSystem/SetMagList/core/MakeListLogic.c:253: 			&ext->mlist.m[GetWMagOffset(it->mags[UNIT_C])]);
	ldrb	r0, [r5, #6]	@ tmp461,
	bl	.L61		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:252: 		AddWMag(
	adds	r0, r0, #17	@ tmp466,
	adds	r0, r4, r0	@ tmp467, ext, tmp466
	bl	AddWMag		@
.L92:
@ MagicSystem/SetMagList/core/MakeListLogic.c:256: 			&ext->mlist.m[GetWMagOffset(it->mags[UNIT_DP])]);
	ldrb	r0, [r5, #5]	@ tmp470,
	bl	.L61		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:255: 		AddWMag(
	adds	r0, r0, #17	@ tmp475,
	adds	r0, r4, r0	@ tmp476, ext, tmp475
	bl	AddWMag		@
.L94:
@ MagicSystem/SetMagList/core/MakeListLogic.c:259: 			&ext->mlist.m[GetWMagOffset(it->mags[UNIT_D])]);
	ldrb	r0, [r5, #4]	@ tmp479,
	bl	.L61		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:258: 		AddWMag(
	adds	r0, r0, #17	@ tmp484,
	adds	r0, r4, r0	@ tmp485, ext, tmp484
	bl	AddWMag		@
.L96:
@ MagicSystem/SetMagList/core/MakeListLogic.c:262: 			&ext->mlist.m[GetWMagOffset(it->mags[UNIT_EP])]);
	ldrb	r0, [r5, #3]	@ tmp488,
	bl	.L61		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:261: 		AddWMag(
	adds	r0, r0, #17	@ tmp493,
	adds	r0, r4, r0	@ tmp494, ext, tmp493
	bl	AddWMag		@
	b	.L97		@
.L77:
@ MagicSystem/SetMagList/core/MakeListLogic.c:233: 	if( WMagRank > TH_CLASS_AP )
	cmp	r6, #10	@ WMagRank,
	bhi	.L78		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:236: 	if( WMagRank > TH_CLASS_A )
	beq	.L80		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:239: 	if( WMagRank > TH_CLASS_BP )
	cmp	r6, #9	@ WMagRank,
	beq	.L82		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:242: 	if( WMagRank > TH_CLASS_B )
	cmp	r6, #8	@ WMagRank,
	beq	.L84		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:245: 	if( WMagRank > TH_CLASS_CP )
	cmp	r6, #7	@ WMagRank,
	beq	.L86		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:248: 	if( WMagRank > TH_CLASS_C )
	cmp	r6, #6	@ WMagRank,
	beq	.L88		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:251: 	if( WMagRank > TH_CLASS_DP )
	cmp	r6, #5	@ WMagRank,
	beq	.L90		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:254: 	if( WMagRank > TH_CLASS_D )
	cmp	r6, #4	@ WMagRank,
	beq	.L92		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:257: 	if( WMagRank > TH_CLASS_EP )
	cmp	r6, #3	@ WMagRank,
	beq	.L94		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:260: 	if( WMagRank > TH_CLASS_E )
	cmp	r6, #2	@ WMagRank,
	beq	.L96		@,
.L97:
@ MagicSystem/SetMagList/core/MakeListLogic.c:265: 			&ext->mlist.m[GetWMagOffset(it->mags[UNIT_EP])]);
	ldrb	r0, [r5, #3]	@ tmp497,
	bl	.L61		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:264: 	AddWMag(
	adds	r0, r0, #17	@ tmp502,
	adds	r0, r4, r0	@ tmp503, ext, tmp502
	bl	AddWMag		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:296: 	if( IsClassBMagMaster(classId) )
	ldr	r0, [sp, #12]	@, %sfp
	bl	IsClassBMagMaster		@
	ldr	r4, .L153+28	@ tmp630,
@ MagicSystem/SetMagList/core/MakeListLogic.c:296: 	if( IsClassBMagMaster(classId) )
	cmp	r0, #0	@ tmp662,
	beq	.L98		@,
	ldr	r0, [r4]	@ gpBMagList, gpBMagList
@ MagicSystem/SetMagList/core/MakeListLogic.c:60: 		if( 0 != GET_B_MAG( ext->mlist.m[i] ) )
	movs	r4, #15	@ tmp507,
@ MagicSystem/SetMagList/core/MakeListLogic.c:62: 			use = gpBMagList[i].baseUse << 1;
	ldr	r1, [sp, #4]	@ ivtmp.116, %sfp
	adds	r0, r0, #1	@ ivtmp.118,
@ MagicSystem/SetMagList/core/MakeListLogic.c:10: 	*at = (*at&0xF0) | (use&0xF);
	adds	r6, r4, #0	@ tmp638, tmp507
.L101:
@ MagicSystem/SetMagList/core/MakeListLogic.c:60: 		if( 0 != GET_B_MAG( ext->mlist.m[i] ) )
	ldrb	r3, [r1]	@ _136, MEM[(unsigned char *)_331]
@ MagicSystem/SetMagList/core/MakeListLogic.c:60: 		if( 0 != GET_B_MAG( ext->mlist.m[i] ) )
	tst	r3, r4	@ _136, tmp507
	beq	.L99		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:62: 			use = gpBMagList[i].baseUse << 1;
	ldrb	r2, [r0]	@ MEM[(unsigned char *)_340], MEM[(unsigned char *)_340]
@ MagicSystem/SetMagList/core/MakeListLogic.c:10: 	*at = (*at&0xF0) | (use&0xF);
	lsls	r5, r2, #1	@ tmp511, MEM[(unsigned char *)_340],
	lsls	r2, r2, #25	@ tmp518, MEM[(unsigned char *)_340],
	lsrs	r2, r2, #24	@ tmp517, tmp518,
	cmp	r2, #15	@ tmp517,
	bls	.L100		@,
	adds	r5, r6, #0	@ tmp511, tmp638
.L100:
@ MagicSystem/SetMagList/core/MakeListLogic.c:10: 	*at = (*at&0xF0) | (use&0xF);
	bics	r3, r4	@ tmp521, tmp507
@ MagicSystem/SetMagList/core/MakeListLogic.c:10: 	*at = (*at&0xF0) | (use&0xF);
	orrs	r3, r5	@ tmp524, tmp511
@ MagicSystem/SetMagList/core/MakeListLogic.c:10: 	*at = (*at&0xF0) | (use&0xF);
	strb	r3, [r1]	@ tmp524, MEM[(u8 *)_331]
.L99:
@ MagicSystem/SetMagList/core/MakeListLogic.c:59: 	for( int i=0; i<MAGIC_LIST_SIZE; i++ )
	ldr	r3, [sp, #8]	@ _435, %sfp
	adds	r1, r1, #1	@ ivtmp.116,
	adds	r0, r0, #8	@ ivtmp.118,
	cmp	r1, r3	@ ivtmp.116, _435
	bne	.L101		@,
.L108:
@ MagicSystem/SetMagList/core/MakeListLogic.c:308: 	if( IsClassWMagMaster(classId) )
	ldr	r0, [sp, #12]	@, %sfp
	bl	IsClassWMagMaster		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:100: 			use = gpWMagList[i].baseUse >> 1;
	ldr	r3, .L153+32	@ tmp526,
	ldr	r4, [r3]	@ pretmp_356, gpWMagList
	adds	r4, r4, #1	@ ivtmp.88,
@ MagicSystem/SetMagList/core/MakeListLogic.c:308: 	if( IsClassWMagMaster(classId) )
	cmp	r0, #0	@ tmp663,
	bne	.L102		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:311: 	else if( IsClassLearningMag(classId) )
	ldr	r0, [sp, #12]	@, %sfp
	bl	IsClassLearningMag		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:311: 	else if( IsClassLearningMag(classId) )
	cmp	r0, #0	@ tmp665,
	bne	.LCB714	@
	b	.L114	@long jump	@
.LCB714:
@ MagicSystem/SetMagList/core/MakeListLogic.c:14: 	*at = (*at&0xF) | ((use&0xF)<<4);
	movs	r2, #15	@ tmp635,
@ MagicSystem/SetMagList/core/MakeListLogic.c:14: 	*at = (*at&0xF) | ((use&0xF)<<4);
	movs	r1, #1	@ tmp636,
.L117:
@ MagicSystem/SetMagList/core/MakeListLogic.c:98: 		if( 0 != GET_W_MAG( ext->mlist.m[i] ) )
	ldr	r3, [sp, #4]	@ ivtmp.96, %sfp
	ldrb	r0, [r3]	@ _212, MEM[(unsigned char *)_263]
@ MagicSystem/SetMagList/core/MakeListLogic.c:98: 		if( 0 != GET_W_MAG( ext->mlist.m[i] ) )
	lsrs	r3, r0, #4	@ tmp596, _212,
	beq	.L115		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:100: 			use = gpWMagList[i].baseUse >> 1;
	ldrb	r5, [r4]	@ MEM[(unsigned char *)_232], MEM[(unsigned char *)_232]
	lsrs	r5, r5, #1	@ tmp600, MEM[(unsigned char *)_232],
@ MagicSystem/SetMagList/core/MakeListLogic.c:14: 	*at = (*at&0xF) | ((use&0xF)<<4);
	adds	r3, r5, #0	@ tmp598, tmp600
	cmp	r5, #0	@ tmp600,
	bne	.L116		@,
	adds	r3, r1, #0	@ tmp598, tmp636
.L116:
	lsls	r3, r3, #24	@ tmp605, tmp598,
@ MagicSystem/SetMagList/core/MakeListLogic.c:14: 	*at = (*at&0xF) | ((use&0xF)<<4);
	ands	r0, r2	@ tmp608, tmp635
@ MagicSystem/SetMagList/core/MakeListLogic.c:14: 	*at = (*at&0xF) | ((use&0xF)<<4);
	lsrs	r3, r3, #20	@ tmp606, tmp605,
@ MagicSystem/SetMagList/core/MakeListLogic.c:14: 	*at = (*at&0xF) | ((use&0xF)<<4);
	orrs	r3, r0	@ tmp612, tmp608
@ MagicSystem/SetMagList/core/MakeListLogic.c:14: 	*at = (*at&0xF) | ((use&0xF)<<4);
	ldr	r0, [sp, #4]	@ ivtmp.96, %sfp
	strb	r3, [r0]	@ tmp612, MEM[(u8 *)_263]
.L115:
@ MagicSystem/SetMagList/core/MakeListLogic.c:97: 	for( int i=0; i<MAGIC_LIST_SIZE; i++ )
	ldr	r3, [sp, #4]	@ ivtmp.96, %sfp
	ldr	r0, [sp, #8]	@ _435, %sfp
	adds	r3, r3, #1	@ ivtmp.96,
	str	r3, [sp, #4]	@ ivtmp.96, %sfp
	adds	r4, r4, #8	@ ivtmp.98,
	cmp	r3, r0	@ ivtmp.96, _435
	bne	.L117		@,
	b	.L118		@
.L98:
@ MagicSystem/SetMagList/core/MakeListLogic.c:299: 	else if( IsClassLearningMag(classId) )
	ldr	r0, [sp, #12]	@, %sfp
	bl	IsClassLearningMag		@
@ MagicSystem/SetMagList/core/MakeListLogic.c:87: 			use = gpBMagList[i].baseUse >> 1;
	ldr	r3, [r4]	@ pretmp_355, gpBMagList
	adds	r3, r3, #1	@ ivtmp.138,
@ MagicSystem/SetMagList/core/MakeListLogic.c:299: 	else if( IsClassLearningMag(classId) )
	cmp	r0, #0	@ tmp664,
	beq	.L104		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:85: 		if( 0 != GET_B_MAG( ext->mlist.m[i] ) )
	movs	r5, #15	@ tmp529,
@ MagicSystem/SetMagList/core/MakeListLogic.c:10: 	*at = (*at&0xF0) | (use&0xF);
	movs	r6, #1	@ tmp639,
@ MagicSystem/SetMagList/core/MakeListLogic.c:299: 	else if( IsClassLearningMag(classId) )
	ldr	r1, [sp, #4]	@ ivtmp.126, %sfp
.L107:
@ MagicSystem/SetMagList/core/MakeListLogic.c:85: 		if( 0 != GET_B_MAG( ext->mlist.m[i] ) )
	ldrb	r0, [r1]	@ _155, MEM[(unsigned char *)_337]
@ MagicSystem/SetMagList/core/MakeListLogic.c:85: 		if( 0 != GET_B_MAG( ext->mlist.m[i] ) )
	tst	r0, r5	@ _155, tmp529
	beq	.L105		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:87: 			use = gpBMagList[i].baseUse >> 1;
	ldrb	r4, [r3]	@ MEM[(unsigned char *)_18], MEM[(unsigned char *)_18]
	lsrs	r4, r4, #1	@ tmp535, MEM[(unsigned char *)_18],
@ MagicSystem/SetMagList/core/MakeListLogic.c:10: 	*at = (*at&0xF0) | (use&0xF);
	adds	r2, r4, #0	@ tmp533, tmp535
	cmp	r4, #0	@ tmp535,
	bne	.L106		@,
	adds	r2, r6, #0	@ tmp533, tmp639
.L106:
	ands	r2, r5	@ tmp539, tmp529
@ MagicSystem/SetMagList/core/MakeListLogic.c:10: 	*at = (*at&0xF0) | (use&0xF);
	bics	r0, r5	@ tmp542, tmp529
@ MagicSystem/SetMagList/core/MakeListLogic.c:10: 	*at = (*at&0xF0) | (use&0xF);
	orrs	r2, r0	@ tmp546, tmp542
@ MagicSystem/SetMagList/core/MakeListLogic.c:10: 	*at = (*at&0xF0) | (use&0xF);
	strb	r2, [r1]	@ tmp546, MEM[(u8 *)_337]
.L105:
@ MagicSystem/SetMagList/core/MakeListLogic.c:84: 	for( int i=0; i<MAGIC_LIST_SIZE; i++ )
	ldr	r2, [sp, #8]	@ _435, %sfp
	adds	r1, r1, #1	@ ivtmp.126,
	adds	r3, r3, #8	@ ivtmp.128,
	cmp	r1, r2	@ ivtmp.126, _435
	bne	.L107		@,
	b	.L108		@
.L104:
@ MagicSystem/SetMagList/core/MakeListLogic.c:110: 		if( 0 != GET_B_MAG( ext->mlist.m[i] ) )
	movs	r4, #15	@ tmp549,
@ MagicSystem/SetMagList/core/MakeListLogic.c:299: 	else if( IsClassLearningMag(classId) )
	ldr	r2, [sp, #4]	@ ivtmp.136, %sfp
.L110:
@ MagicSystem/SetMagList/core/MakeListLogic.c:110: 		if( 0 != GET_B_MAG( ext->mlist.m[i] ) )
	ldrb	r0, [r2]	@ _174, MEM[(unsigned char *)_346]
@ MagicSystem/SetMagList/core/MakeListLogic.c:110: 		if( 0 != GET_B_MAG( ext->mlist.m[i] ) )
	tst	r0, r4	@ _174, tmp549
	beq	.L109		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:10: 	*at = (*at&0xF0) | (use&0xF);
	ldrb	r1, [r3]	@ MEM[(unsigned char *)_348], MEM[(unsigned char *)_348]
@ MagicSystem/SetMagList/core/MakeListLogic.c:10: 	*at = (*at&0xF0) | (use&0xF);
	bics	r0, r4	@ tmp558, tmp549
@ MagicSystem/SetMagList/core/MakeListLogic.c:10: 	*at = (*at&0xF0) | (use&0xF);
	ands	r1, r4	@ tmp555, tmp549
@ MagicSystem/SetMagList/core/MakeListLogic.c:10: 	*at = (*at&0xF0) | (use&0xF);
	orrs	r1, r0	@ tmp562, tmp558
@ MagicSystem/SetMagList/core/MakeListLogic.c:10: 	*at = (*at&0xF0) | (use&0xF);
	strb	r1, [r2]	@ tmp562, MEM[(u8 *)_346]
.L109:
@ MagicSystem/SetMagList/core/MakeListLogic.c:109: 	for( int i=0; i<MAGIC_LIST_SIZE; i++ )
	ldr	r1, [sp, #8]	@ _435, %sfp
	adds	r2, r2, #1	@ ivtmp.136,
	adds	r3, r3, #8	@ ivtmp.138,
	cmp	r2, r1	@ ivtmp.136, _435
	bne	.L110		@,
	b	.L108		@
.L102:
@ MagicSystem/SetMagList/core/MakeListLogic.c:14: 	*at = (*at&0xF) | ((use&0xF)<<4);
	movs	r2, #15	@ tmp633,
@ MagicSystem/SetMagList/core/MakeListLogic.c:14: 	*at = (*at&0xF) | ((use&0xF)<<4);
	adds	r1, r2, #0	@ tmp634, tmp633
.L113:
@ MagicSystem/SetMagList/core/MakeListLogic.c:73: 		if( 0 != GET_W_MAG( ext->mlist.m[i] ) ){
	ldr	r3, [sp, #4]	@ ivtmp.96, %sfp
	ldrb	r0, [r3]	@ _191, MEM[(unsigned char *)_362]
@ MagicSystem/SetMagList/core/MakeListLogic.c:73: 		if( 0 != GET_W_MAG( ext->mlist.m[i] ) ){
	lsrs	r3, r0, #4	@ tmp566, _191,
	beq	.L111		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:74: 			use = gpWMagList[i].baseUse << 1;
	ldrb	r5, [r4]	@ MEM[(unsigned char *)_358], MEM[(unsigned char *)_358]
@ MagicSystem/SetMagList/core/MakeListLogic.c:14: 	*at = (*at&0xF) | ((use&0xF)<<4);
	lsls	r3, r5, #1	@ tmp568, MEM[(unsigned char *)_358],
	lsls	r5, r5, #25	@ tmp575, MEM[(unsigned char *)_358],
	lsrs	r5, r5, #24	@ tmp574, tmp575,
	cmp	r5, #15	@ tmp574,
	bls	.L112		@,
	adds	r3, r1, #0	@ tmp568, tmp634
.L112:
	lsls	r3, r3, #24	@ tmp577, tmp568,
	lsrs	r3, r3, #24	@ tmp577, tmp577,
@ MagicSystem/SetMagList/core/MakeListLogic.c:14: 	*at = (*at&0xF) | ((use&0xF)<<4);
	ands	r0, r2	@ tmp581, tmp633
@ MagicSystem/SetMagList/core/MakeListLogic.c:14: 	*at = (*at&0xF) | ((use&0xF)<<4);
	lsls	r3, r3, #4	@ tmp579, tmp577,
@ MagicSystem/SetMagList/core/MakeListLogic.c:14: 	*at = (*at&0xF) | ((use&0xF)<<4);
	orrs	r3, r0	@ tmp585, tmp581
@ MagicSystem/SetMagList/core/MakeListLogic.c:14: 	*at = (*at&0xF) | ((use&0xF)<<4);
	ldr	r0, [sp, #4]	@ ivtmp.96, %sfp
	strb	r3, [r0]	@ tmp585, MEM[(u8 *)_362]
.L111:
@ MagicSystem/SetMagList/core/MakeListLogic.c:72: 	for( int i=0; i<MAGIC_LIST_SIZE; i++ )
	ldr	r3, [sp, #4]	@ ivtmp.96, %sfp
	ldr	r0, [sp, #8]	@ _435, %sfp
	adds	r3, r3, #1	@ ivtmp.96,
	str	r3, [sp, #4]	@ ivtmp.96, %sfp
	adds	r4, r4, #8	@ ivtmp.88,
	cmp	r3, r0	@ ivtmp.96, _435
	bne	.L113		@,
.L118:
@ MagicSystem/SetMagList/core/MakeListLogic.c:320: 	ext->mlist.isSet = TRUE;
	movs	r0, #1	@ tmp592,
	ldr	r3, [sp, #16]	@ ext, %sfp
	ldrb	r3, [r3, #16]	@ ext_16->mlist.isSet, ext_16->mlist.isSet
	ldr	r2, [sp, #16]	@ ext, %sfp
	orrs	r3, r0	@ tmp591, tmp592
	strb	r3, [r2, #16]	@ tmp591, ext_16->mlist.isSet
.L62:
@ MagicSystem/SetMagList/core/MakeListLogic.c:322: }
	add	sp, sp, #28	@,,
	@ sp needed	@
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L154:
	.align	2
.L153:
	.word	GetUnitExtByUnit
	.word	gpClassBasedBMagList
	.word	GetBMagOffset
	.word	gpClassBasedWMagList
	.word	GetWMagOffset
	.word	GetRankReason
	.word	gpUnitBasedWMagList
	.word	gpBMagList
	.word	gpWMagList
.L114:
@ MagicSystem/SetMagList/core/MakeListLogic.c:14: 	*at = (*at&0xF) | ((use&0xF)<<4);
	movs	r1, #15	@ tmp637,
.L120:
@ MagicSystem/SetMagList/core/MakeListLogic.c:116: 		if( 0 != GET_W_MAG( ext->mlist.m[i] ) )
	ldr	r3, [sp, #4]	@ ivtmp.96, %sfp
	ldrb	r2, [r3]	@ _233, MEM[(unsigned char *)_128]
@ MagicSystem/SetMagList/core/MakeListLogic.c:116: 		if( 0 != GET_W_MAG( ext->mlist.m[i] ) )
	lsrs	r3, r2, #4	@ tmp616, _233,
	beq	.L119		@,
@ MagicSystem/SetMagList/core/MakeListLogic.c:14: 	*at = (*at&0xF) | ((use&0xF)<<4);
	ldrb	r3, [r4]	@ MEM[(unsigned char *)_25], MEM[(unsigned char *)_25]
@ MagicSystem/SetMagList/core/MakeListLogic.c:14: 	*at = (*at&0xF) | ((use&0xF)<<4);
	ands	r2, r1	@ tmp621, tmp637
@ MagicSystem/SetMagList/core/MakeListLogic.c:14: 	*at = (*at&0xF) | ((use&0xF)<<4);
	lsls	r3, r3, #4	@ tmp619, MEM[(unsigned char *)_25],
@ MagicSystem/SetMagList/core/MakeListLogic.c:14: 	*at = (*at&0xF) | ((use&0xF)<<4);
	orrs	r3, r2	@ tmp625, tmp621
@ MagicSystem/SetMagList/core/MakeListLogic.c:14: 	*at = (*at&0xF) | ((use&0xF)<<4);
	ldr	r2, [sp, #4]	@ ivtmp.96, %sfp
	strb	r3, [r2]	@ tmp625, MEM[(u8 *)_128]
.L119:
@ MagicSystem/SetMagList/core/MakeListLogic.c:115: 	for( int i=0; i<MAGIC_LIST_SIZE; i++ )
	ldr	r3, [sp, #4]	@ ivtmp.96, %sfp
	ldr	r2, [sp, #8]	@ _435, %sfp
	adds	r3, r3, #1	@ ivtmp.96,
	str	r3, [sp, #4]	@ ivtmp.96, %sfp
	adds	r4, r4, #8	@ ivtmp.108,
	cmp	r3, r2	@ ivtmp.96, _435
	bne	.L120		@,
	b	.L118		@
	.size	SetUnitMagList, .-SetUnitMagList
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L60:
	bx	r3
.L155:
	bx	r4
.L61:
	bx	r7
