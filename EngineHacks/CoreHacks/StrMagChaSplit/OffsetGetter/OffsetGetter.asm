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
	.file	"OffsetGetter.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	GetMagAt
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetMagAt, %function
GetMagAt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ StrMagChaSplit/OffsetGetter/OffsetGetter.c:5: 	return ( (s8*)unit + 0x3A );
	adds	r0, r0, #58	@ tmp115,
@ StrMagChaSplit/OffsetGetter/OffsetGetter.c:6: }
	@ sp needed	@
	bx	lr
	.size	GetMagAt, .-GetMagAt
	.align	1
	.global	GetChaAt
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetChaAt, %function
GetChaAt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ StrMagChaSplit/OffsetGetter/OffsetGetter.c:9: 	return ( (s8*)unit + 0x3B );
	adds	r0, r0, #59	@ tmp115,
@ StrMagChaSplit/OffsetGetter/OffsetGetter.c:10: }
	@ sp needed	@
	bx	lr
	.size	GetChaAt, .-GetChaAt
	.align	1
	.global	GetBu_ChangeMagAt
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetBu_ChangeMagAt, %function
GetBu_ChangeMagAt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ StrMagChaSplit/OffsetGetter/OffsetGetter.c:15: 	return &bu->changeCon;
	adds	r0, r0, #122	@ tmp115,
@ StrMagChaSplit/OffsetGetter/OffsetGetter.c:16: }
	@ sp needed	@
	bx	lr
	.size	GetBu_ChangeMagAt, .-GetBu_ChangeMagAt
	.align	1
	.global	GetBu_ChangeChaAt
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetBu_ChangeChaAt, %function
GetBu_ChangeChaAt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ StrMagChaSplit/OffsetGetter/OffsetGetter.c:18: 	return ( (s8*)bu + 0x7F );
	adds	r0, r0, #127	@ tmp115,
@ StrMagChaSplit/OffsetGetter/OffsetGetter.c:19: }
	@ sp needed	@
	bx	lr
	.size	GetBu_ChangeChaAt, .-GetBu_ChangeChaAt
	.align	1
	.global	GetClassMaxMag
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetClassMaxMag, %function
GetClassMaxMag:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ StrMagChaSplit/OffsetGetter/OffsetGetter.c:24: 	return gpClassMagicTable[unit->pClassData->number].Cap;
	ldr	r3, [r0, #4]	@ unit_9(D)->pClassData, unit_9(D)->pClassData
@ StrMagChaSplit/OffsetGetter/OffsetGetter.c:25: }
	@ sp needed	@
@ StrMagChaSplit/OffsetGetter/OffsetGetter.c:24: 	return gpClassMagicTable[unit->pClassData->number].Cap;
	ldrb	r2, [r3, #4]	@ tmp124,
@ StrMagChaSplit/OffsetGetter/OffsetGetter.c:24: 	return gpClassMagicTable[unit->pClassData->number].Cap;
	ldr	r3, .L6	@ tmp126,
	ldr	r3, [r3]	@ gpClassMagicTable, gpClassMagicTable
	lsls	r2, r2, #2	@ tmp127, tmp124,
	adds	r3, r3, r2	@ tmp128, gpClassMagicTable, tmp127
	ldrb	r0, [r3, #2]	@ tmp130,
	lsls	r0, r0, #24	@ tmp132, tmp130,
	asrs	r0, r0, #24	@ tmp131, tmp132,
@ StrMagChaSplit/OffsetGetter/OffsetGetter.c:25: }
	bx	lr
.L7:
	.align	2
.L6:
	.word	gpClassMagicTable
	.size	GetClassMaxMag, .-GetClassMaxMag
	.align	1
	.global	GetClassMaxCha
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	GetClassMaxCha, %function
GetClassMaxCha:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ StrMagChaSplit/OffsetGetter/OffsetGetter.c:27: 	return gpClassCharmTable[unit->pClassData->number].Cap;
	ldr	r3, [r0, #4]	@ unit_9(D)->pClassData, unit_9(D)->pClassData
@ StrMagChaSplit/OffsetGetter/OffsetGetter.c:28: }
	@ sp needed	@
@ StrMagChaSplit/OffsetGetter/OffsetGetter.c:27: 	return gpClassCharmTable[unit->pClassData->number].Cap;
	ldrb	r2, [r3, #4]	@ tmp124,
@ StrMagChaSplit/OffsetGetter/OffsetGetter.c:27: 	return gpClassCharmTable[unit->pClassData->number].Cap;
	ldr	r3, .L9	@ tmp126,
	ldr	r3, [r3]	@ gpClassCharmTable, gpClassCharmTable
	lsls	r2, r2, #2	@ tmp127, tmp124,
	adds	r3, r3, r2	@ tmp128, gpClassCharmTable, tmp127
	ldrb	r0, [r3, #2]	@ tmp130,
	lsls	r0, r0, #24	@ tmp132, tmp130,
	asrs	r0, r0, #24	@ tmp131, tmp132,
@ StrMagChaSplit/OffsetGetter/OffsetGetter.c:28: }
	bx	lr
.L10:
	.align	2
.L9:
	.word	gpClassCharmTable
	.size	GetClassMaxCha, .-GetClassMaxCha
	.ident	"GCC: (devkitARM release 56) 11.1.0"
