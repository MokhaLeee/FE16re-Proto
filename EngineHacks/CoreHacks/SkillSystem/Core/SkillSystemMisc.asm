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
	.file	"SkillSystemMisc.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	GetSkillNameMsg
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetSkillNameMsg, %function
GetSkillNameMsg:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ SkillSystem/Core/SkillSystemMisc.c:7:     return SkillInfoTable[skillId]->msgName;
	ldr	r3, .L2	@ tmp118,
@ SkillSystem/Core/SkillSystemMisc.c:8: }
	@ sp needed	@
@ SkillSystem/Core/SkillSystemMisc.c:7:     return SkillInfoTable[skillId]->msgName;
	lsls	r0, r0, #2	@ tmp119, tmp121,
@ SkillSystem/Core/SkillSystemMisc.c:7:     return SkillInfoTable[skillId]->msgName;
	ldr	r3, [r0, r3]	@ SkillInfoTable[skillId_4(D)], SkillInfoTable[skillId_4(D)]
	ldrh	r0, [r3]	@ *_1, *_1
@ SkillSystem/Core/SkillSystemMisc.c:8: }
	bx	lr
.L3:
	.align	2
.L2:
	.word	SkillInfoTable
	.size	GetSkillNameMsg, .-GetSkillNameMsg
	.align	1
	.global	GetSkillDescriptionMsg
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetSkillDescriptionMsg, %function
GetSkillDescriptionMsg:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ SkillSystem/Core/SkillSystemMisc.c:11:     return SkillInfoTable[skillId]->msgDesc;
	ldr	r3, .L5	@ tmp118,
@ SkillSystem/Core/SkillSystemMisc.c:12: }
	@ sp needed	@
@ SkillSystem/Core/SkillSystemMisc.c:11:     return SkillInfoTable[skillId]->msgDesc;
	lsls	r0, r0, #2	@ tmp119, tmp121,
@ SkillSystem/Core/SkillSystemMisc.c:11:     return SkillInfoTable[skillId]->msgDesc;
	ldr	r3, [r0, r3]	@ SkillInfoTable[skillId_4(D)], SkillInfoTable[skillId_4(D)]
	ldrh	r0, [r3, #2]	@ tmp117,
@ SkillSystem/Core/SkillSystemMisc.c:12: }
	bx	lr
.L6:
	.align	2
.L5:
	.word	SkillInfoTable
	.size	GetSkillDescriptionMsg, .-GetSkillDescriptionMsg
	.align	1
	.global	GetSkillIconGfx
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetSkillIconGfx, %function
GetSkillIconGfx:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ SkillSystem/Core/SkillSystemMisc.c:15:     return SkillInfoTable[skillId]->icon;
	ldr	r3, .L8	@ tmp117,
@ SkillSystem/Core/SkillSystemMisc.c:16: }
	@ sp needed	@
@ SkillSystem/Core/SkillSystemMisc.c:15:     return SkillInfoTable[skillId]->icon;
	lsls	r0, r0, #2	@ tmp118, tmp121,
@ SkillSystem/Core/SkillSystemMisc.c:15:     return SkillInfoTable[skillId]->icon;
	ldr	r3, [r0, r3]	@ SkillInfoTable[skillId_3(D)], SkillInfoTable[skillId_3(D)]
	ldr	r0, [r3, #4]	@ _1->icon, _1->icon
@ SkillSystem/Core/SkillSystemMisc.c:16: }
	bx	lr
.L9:
	.align	2
.L8:
	.word	SkillInfoTable
	.size	GetSkillIconGfx, .-GetSkillIconGfx
	.ident	"GCC: (devkitARM release 56) 11.1.0"
