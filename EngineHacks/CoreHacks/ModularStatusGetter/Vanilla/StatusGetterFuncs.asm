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
	.file	"StatusGetterFuncs.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	HpMod_WpnHpBunus
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	HpMod_WpnHpBunus, %function
HpMod_WpnHpBunus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:5: 	return GetItemHpBonus(GetUnitEquippedWeapon(unit));
	ldr	r3, .L2	@ tmp117,
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:6: }
	@ sp needed	@
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:5: 	return GetItemHpBonus(GetUnitEquippedWeapon(unit));
	bl	.L4		@
	ldr	r3, .L2+4	@ tmp118,
	bl	.L4		@
	lsls	r0, r0, #24	@ tmp121, tmp124,
	asrs	r0, r0, #24	@ tmp120, tmp121,
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:6: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L3:
	.align	2
.L2:
	.word	GetUnitEquippedWeapon
	.word	GetItemHpBonus
	.size	HpMod_WpnHpBunus, .-HpMod_WpnHpBunus
	.align	1
	.global	PowMod_WpnPowBonus
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PowMod_WpnPowBonus, %function
PowMod_WpnPowBonus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:11: 	return GetItemPowBonus(GetUnitEquippedWeapon(unit));
	ldr	r3, .L6	@ tmp117,
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:12: }
	@ sp needed	@
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:11: 	return GetItemPowBonus(GetUnitEquippedWeapon(unit));
	bl	.L4		@
	ldr	r3, .L6+4	@ tmp118,
	bl	.L4		@
	lsls	r0, r0, #24	@ tmp121, tmp124,
	asrs	r0, r0, #24	@ tmp120, tmp121,
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:12: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L7:
	.align	2
.L6:
	.word	GetUnitEquippedWeapon
	.word	GetItemPowBonus
	.size	PowMod_WpnPowBonus, .-PowMod_WpnPowBonus
	.align	1
	.global	SpdMod_WpnSpdBunus
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SpdMod_WpnSpdBunus, %function
SpdMod_WpnSpdBunus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:17: 	return GetItemSpdBonus(GetUnitEquippedWeapon(unit));
	ldr	r3, .L9	@ tmp117,
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:18: }
	@ sp needed	@
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:17: 	return GetItemSpdBonus(GetUnitEquippedWeapon(unit));
	bl	.L4		@
	ldr	r3, .L9+4	@ tmp118,
	bl	.L4		@
	lsls	r0, r0, #24	@ tmp121, tmp124,
	asrs	r0, r0, #24	@ tmp120, tmp121,
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:18: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L10:
	.align	2
.L9:
	.word	GetUnitEquippedWeapon
	.word	GetItemSpdBonus
	.size	SpdMod_WpnSpdBunus, .-SpdMod_WpnSpdBunus
	.align	1
	.global	SklMod_WpnSklBunus
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SklMod_WpnSklBunus, %function
SklMod_WpnSklBunus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:24: 	return GetItemSklBonus(GetUnitEquippedWeapon(unit));
	ldr	r3, .L12	@ tmp117,
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:25: }
	@ sp needed	@
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:24: 	return GetItemSklBonus(GetUnitEquippedWeapon(unit));
	bl	.L4		@
	ldr	r3, .L12+4	@ tmp118,
	bl	.L4		@
	lsls	r0, r0, #24	@ tmp121, tmp124,
	asrs	r0, r0, #24	@ tmp120, tmp121,
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:25: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L13:
	.align	2
.L12:
	.word	GetUnitEquippedWeapon
	.word	GetItemSklBonus
	.size	SklMod_WpnSklBunus, .-SklMod_WpnSklBunus
	.align	1
	.global	LckMod_WpnLckBunus
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	LckMod_WpnLckBunus, %function
LckMod_WpnLckBunus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:31: 	return GetItemLckBonus(GetUnitEquippedWeapon(unit));
	ldr	r3, .L15	@ tmp117,
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:32: }
	@ sp needed	@
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:31: 	return GetItemLckBonus(GetUnitEquippedWeapon(unit));
	bl	.L4		@
	ldr	r3, .L15+4	@ tmp118,
	bl	.L4		@
	lsls	r0, r0, #24	@ tmp121, tmp124,
	asrs	r0, r0, #24	@ tmp120, tmp121,
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:32: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L16:
	.align	2
.L15:
	.word	GetUnitEquippedWeapon
	.word	GetItemLckBonus
	.size	LckMod_WpnLckBunus, .-LckMod_WpnLckBunus
	.align	1
	.global	DefMod_WpnDefBunus
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	DefMod_WpnDefBunus, %function
DefMod_WpnDefBunus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:37: 	return GetItemDefBonus(GetUnitEquippedWeapon(unit));
	ldr	r3, .L18	@ tmp117,
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:38: }
	@ sp needed	@
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:37: 	return GetItemDefBonus(GetUnitEquippedWeapon(unit));
	bl	.L4		@
	ldr	r3, .L18+4	@ tmp118,
	bl	.L4		@
	lsls	r0, r0, #24	@ tmp121, tmp124,
	asrs	r0, r0, #24	@ tmp120, tmp121,
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:38: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L19:
	.align	2
.L18:
	.word	GetUnitEquippedWeapon
	.word	GetItemDefBonus
	.size	DefMod_WpnDefBunus, .-DefMod_WpnDefBunus
	.align	1
	.global	ResMod_WpnResBunus
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	ResMod_WpnResBunus, %function
ResMod_WpnResBunus:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:43: 	return GetItemResBonus(GetUnitEquippedWeapon(unit));
	ldr	r3, .L21	@ tmp117,
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:44: }
	@ sp needed	@
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:43: 	return GetItemResBonus(GetUnitEquippedWeapon(unit));
	bl	.L4		@
	ldr	r3, .L21+4	@ tmp118,
	bl	.L4		@
	lsls	r0, r0, #24	@ tmp121, tmp124,
	asrs	r0, r0, #24	@ tmp120, tmp121,
@ ModularStatusGetter/Vanilla/StatusGetterFuncs.c:44: }
	pop	{r4}
	pop	{r1}
	bx	r1
.L22:
	.align	2
.L21:
	.word	GetUnitEquippedWeapon
	.word	GetItemResBonus
	.size	ResMod_WpnResBunus, .-ResMod_WpnResBunus
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L4:
	bx	r3
