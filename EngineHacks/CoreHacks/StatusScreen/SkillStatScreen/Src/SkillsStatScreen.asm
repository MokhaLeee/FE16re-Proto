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
	.file	"SkillsStatScreen.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	HbPopuplate_Skill
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	HbPopuplate_Skill, %function
HbPopuplate_Skill:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:124: {
	movs	r4, r0	@ proc, tmp134
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:129: }
	@ sp needed	@
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:125:     SkillListRAM const* const list = UnitGetSkillList(STATSCREEN->unit);
	ldr	r3, .L2	@ tmp123,
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:125:     SkillListRAM const* const list = UnitGetSkillList(STATSCREEN->unit);
	ldr	r0, [r3, #12]	@, MEM[(struct StatScreenSt *)33569788B].unit
	ldr	r3, .L2+4	@ tmp124,
	bl	.L4		@
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:126:     int const skillnum = proc->info->mid;
	ldr	r3, [r4, #44]	@ proc_11(D)->info, proc_11(D)->info
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:126:     int const skillnum = proc->info->mid;
	ldrh	r3, [r3, #18]	@ skillnum,
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:128:     proc->mid = GetSkillDescriptionMsg(list->skills[skillnum]);
	adds	r0, r0, r3	@ tmp127, tmp135, skillnum
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:128:     proc->mid = GetSkillDescriptionMsg(list->skills[skillnum]);
	ldrb	r0, [r0, #2]	@ tmp128, *list_10
	ldr	r3, .L2+8	@ tmp129,
	bl	.L4		@
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:128:     proc->mid = GetSkillDescriptionMsg(list->skills[skillnum]);
	adds	r4, r4, #76	@ tmp132,
	strh	r0, [r4]	@ tmp136, proc_11(D)->mid
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:129: }
	pop	{r4}
	pop	{r0}
	bx	r0
.L3:
	.align	2
.L2:
	.word	33569788
	.word	UnitGetSkillList
	.word	GetSkillDescriptionMsg
	.size	HbPopuplate_Skill, .-HbPopuplate_Skill
	.align	1
	.global	HbRedirect_Skill
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	HbRedirect_Skill, %function
HbRedirect_Skill:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:115: {
	movs	r4, r0	@ proc, tmp129
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:116:     SkillListRAM const* const list = UnitGetSkillList(STATSCREEN->unit);
	ldr	r3, .L7	@ tmp121,
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:116:     SkillListRAM const* const list = UnitGetSkillList(STATSCREEN->unit);
	ldr	r0, [r3, #12]	@, MEM[(struct StatScreenSt *)33569788B].unit
	ldr	r3, .L7+4	@ tmp122,
	bl	.L4		@
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:117:     int const skillnum = proc->info->mid;
	ldr	r3, [r4, #44]	@ proc_10(D)->info, proc_10(D)->info
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:117:     int const skillnum = proc->info->mid;
	ldrh	r3, [r3, #18]	@ skillnum,
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:119:     if (!IsSkill(list->skills[skillnum]))
	adds	r0, r0, r3	@ tmp125, tmp130, skillnum
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:119:     if (!IsSkill(list->skills[skillnum]))
	ldrb	r0, [r0, #2]	@ tmp126, *list_9
	ldr	r3, .L7+8	@ tmp127,
	bl	.L4		@
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:119:     if (!IsSkill(list->skills[skillnum]))
	cmp	r0, #0	@ tmp131,
	bne	.L5		@,
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:120:         TryRelocateHbUp(proc);
	movs	r0, r4	@, proc
	ldr	r3, .L7+12	@ tmp128,
	bl	.L4		@
.L5:
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:121: }
	@ sp needed	@
	pop	{r4}
	pop	{r0}
	bx	r0
.L8:
	.align	2
.L7:
	.word	33569788
	.word	UnitGetSkillList
	.word	IsSkill
	.word	134779733
	.size	HbRedirect_Skill, .-HbRedirect_Skill
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC6:
	.ascii	"Skills\000"
.LC11:
	.ascii	"None\000"
	.text
	.align	1
	.global	NuDrawStatScreenBwl
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	NuDrawStatScreenBwl, %function
NuDrawStatScreenBwl:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}	@
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:89:     Text_Clear(text);
	ldr	r0, .L18	@,
	ldr	r3, .L18+4	@ tmp128,
	bl	.L4		@
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:95:     if (GetSkillListLength(STATSCREEN->unit) == 0)
	ldr	r4, .L18+8	@ tmp134,
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:91:     Text_SetColorId(text, TEXT_COLOR_GOLD);
	movs	r1, #3	@,
	ldr	r0, .L18	@,
	ldr	r7, .L18+12	@ tmp130,
	bl	.L20		@
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:92:     Text_DrawString(text, "Skills");
	ldr	r1, .L18+16	@ tmp131,
	ldr	r0, .L18	@,
	ldr	r6, .L18+20	@ tmp133,
	bl	.L21		@
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:95:     if (GetSkillListLength(STATSCREEN->unit) == 0)
	ldr	r0, [r4, #12]	@, MEM[(struct StatScreenSt *)33569788B].unit
	ldr	r3, .L18+24	@ tmp135,
	bl	.L4		@
	ldr	r5, .L18+28	@ tmp158,
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:95:     if (GetSkillListLength(STATSCREEN->unit) == 0)
	cmp	r0, #0	@ tmp160,
	bne	.L10		@,
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:97:         Text_SetColorId(text, TEXT_COLOR_GRAY);
	movs	r1, #1	@,
	ldr	r0, .L18	@,
	bl	.L20		@
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:98:         Text_SetXCursor(text, 32);
	movs	r1, #32	@,
	ldr	r3, .L18+32	@ tmp139,
	ldr	r0, .L18	@,
	bl	.L4		@
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:99:         Text_DrawString(text, "None");
	ldr	r1, .L18+36	@ tmp140,
	ldr	r0, .L18	@,
	bl	.L21		@
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:100: 		Text_Display(text, TM_PAGEFRAME + TILEMAP_INDEX(X, Y));
	ldr	r1, .L18+40	@,
	ldr	r0, .L18	@,
	bl	.L22		@
.L9:
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:112: }
	@ sp needed	@
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L10:
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:104:     Text_Display(text, TM_PAGEFRAME + TILEMAP_INDEX(X, Y));
	ldr	r1, .L18+40	@,
	ldr	r0, .L18	@,
	bl	.L22		@
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:105: 	SkillListRAM const* const list = UnitGetSkillList(STATSCREEN->unit);
	ldr	r0, [r4, #12]	@, MEM[(struct StatScreenSt *)33569788B].unit
	ldr	r3, .L18+44	@ tmp150,
	bl	.L4		@
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:110:             DrawIcon(TM_PAGEFRAME + TILEMAP_INDEX(X + 4 + 2*i, Y), SKILL_ICON(list->skills[i]), TILEREF(0, 4));
	movs	r6, #128	@ tmp159,
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:105: 	SkillListRAM const* const list = UnitGetSkillList(STATSCREEN->unit);
	ldr	r5, .L18+48	@ ivtmp.18,
	adds	r4, r0, #2	@ ivtmp.16, tmp161,
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:110:             DrawIcon(TM_PAGEFRAME + TILEMAP_INDEX(X + 4 + 2*i, Y), SKILL_ICON(list->skills[i]), TILEREF(0, 4));
	lsls	r6, r6, #7	@ tmp159, tmp159,
.L13:
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:109:         if (IsSkill(list->skills[i]))
	ldrb	r0, [r4]	@ MEM[(unsigned char *)_41], MEM[(unsigned char *)_41]
	ldr	r3, .L18+52	@ tmp152,
	bl	.L4		@
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:109:         if (IsSkill(list->skills[i]))
	cmp	r0, #0	@ tmp162,
	beq	.L12		@,
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:110:             DrawIcon(TM_PAGEFRAME + TILEMAP_INDEX(X + 4 + 2*i, Y), SKILL_ICON(list->skills[i]), TILEREF(0, 4));
	ldrb	r1, [r4]	@ MEM[(unsigned char *)_41], MEM[(unsigned char *)_41]
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:110:             DrawIcon(TM_PAGEFRAME + TILEMAP_INDEX(X + 4 + 2*i, Y), SKILL_ICON(list->skills[i]), TILEREF(0, 4));
	adds	r1, r1, #1	@ tmp155,
	movs	r2, r6	@, tmp159
	movs	r0, r5	@, ivtmp.18
	ldr	r3, .L18+56	@ tmp156,
	adds	r1, r1, #255	@ tmp155,
	bl	.L4		@
.L12:
@ StatusScreen/SkillStatScreen/Src/SkillsStatScreen.c:107:     for (int i = 0; i < UNIT_SKILL_COUNT_SCREEN; ++i)
	ldr	r3, .L18+60	@ tmp157,
	adds	r5, r5, #4	@ ivtmp.18,
	adds	r4, r4, #1	@ ivtmp.16,
	cmp	r5, r3	@ ivtmp.18, tmp157
	bne	.L13		@,
	b	.L9		@
.L19:
	.align	2
.L18:
	.word	33570084
	.word	Text_Clear
	.word	33569788
	.word	Text_SetColorId
	.word	.LC6
	.word	Text_DrawString
	.word	GetSkillListLength
	.word	Text_Display
	.word	Text_SetXCursor
	.word	.LC11
	.word	33571054
	.word	UnitGetSkillList
	.word	33571062
	.word	IsSkill
	.word	DrawIcon
	.word	33571086
	.size	NuDrawStatScreenBwl, .-NuDrawStatScreenBwl
	.global	HelpInfo_Ss0Skill5
	.global	HelpInfo_Ss0Skill4
	.global	HelpInfo_Ss0Skill3
	.global	HelpInfo_Ss0Skill2
	.global	HelpInfo_Ss0Skill1
	.global	HelpInfo_Ss0Skill0
	.section	.rodata
	.align	2
	.type	HelpInfo_Ss0Skill5, %object
	.size	HelpInfo_Ss0Skill5, 28
HelpInfo_Ss0Skill5:
@ adjUp:
	.word	144706808
@ adjDown:
	.word	0
@ adjLeft:
	.word	HelpInfo_Ss0Skill4
@ adjRight:
	.word	0
@ xDisplay:
	.byte	-40
@ yDisplay:
	.byte	-120
@ mid:
	.short	5
@ redirect:
	.word	HbRedirect_Skill
@ populate:
	.word	HbPopuplate_Skill
	.type	HelpInfo_Ss0Skill4, %object
	.size	HelpInfo_Ss0Skill4, 28
HelpInfo_Ss0Skill4:
@ adjUp:
	.word	144706808
@ adjDown:
	.word	0
@ adjLeft:
	.word	HelpInfo_Ss0Skill3
@ adjRight:
	.word	HelpInfo_Ss0Skill5
@ xDisplay:
	.byte	-56
@ yDisplay:
	.byte	-120
@ mid:
	.short	4
@ redirect:
	.word	HbRedirect_Skill
@ populate:
	.word	HbPopuplate_Skill
	.type	HelpInfo_Ss0Skill3, %object
	.size	HelpInfo_Ss0Skill3, 28
HelpInfo_Ss0Skill3:
@ adjUp:
	.word	144706808
@ adjDown:
	.word	0
@ adjLeft:
	.word	HelpInfo_Ss0Skill2
@ adjRight:
	.word	HelpInfo_Ss0Skill4
@ xDisplay:
	.byte	-72
@ yDisplay:
	.byte	-120
@ mid:
	.short	3
@ redirect:
	.word	HbRedirect_Skill
@ populate:
	.word	HbPopuplate_Skill
	.type	HelpInfo_Ss0Skill2, %object
	.size	HelpInfo_Ss0Skill2, 28
HelpInfo_Ss0Skill2:
@ adjUp:
	.word	144706808
@ adjDown:
	.word	0
@ adjLeft:
	.word	HelpInfo_Ss0Skill1
@ adjRight:
	.word	HelpInfo_Ss0Skill3
@ xDisplay:
	.byte	-88
@ yDisplay:
	.byte	-120
@ mid:
	.short	2
@ redirect:
	.word	HbRedirect_Skill
@ populate:
	.word	HbPopuplate_Skill
	.type	HelpInfo_Ss0Skill1, %object
	.size	HelpInfo_Ss0Skill1, 28
HelpInfo_Ss0Skill1:
@ adjUp:
	.word	144706640
@ adjDown:
	.word	0
@ adjLeft:
	.word	HelpInfo_Ss0Skill0
@ adjRight:
	.word	HelpInfo_Ss0Skill2
@ xDisplay:
	.byte	-104
@ yDisplay:
	.byte	-120
@ mid:
	.short	1
@ redirect:
	.word	HbRedirect_Skill
@ populate:
	.word	HbPopuplate_Skill
	.type	HelpInfo_Ss0Skill0, %object
	.size	HelpInfo_Ss0Skill0, 28
HelpInfo_Ss0Skill0:
@ adjUp:
	.word	144706640
@ adjDown:
	.word	0
@ adjLeft:
	.word	144706472
@ adjRight:
	.word	HelpInfo_Ss0Skill1
@ xDisplay:
	.byte	-120
@ yDisplay:
	.byte	-120
@ mid:
	.short	0
@ redirect:
	.word	HbRedirect_Skill
@ populate:
	.word	HbPopuplate_Skill
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.text
	.code 16
	.align	1
.L4:
	bx	r3
.L22:
	bx	r5
.L21:
	bx	r6
.L20:
	bx	r7
