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
	.file	"VanillaFix.c"
@ GNU C17 (devkitARM release 56) version 11.1.0 (arm-none-eabi)
@	compiled by GNU C version 10.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mcpu=arm7tdmi -mthumb -mthumb-interwork -mtune=arm7tdmi -mlong-calls -march=armv4t -Os -ffreestanding
	.text
	.align	1
	.global	new_CanUnitUseStaff
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	new_CanUnitUseStaff, %function
new_CanUnitUseStaff:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}	@
@ MagicSystem/core/src/VanillaFix.c:5: 	if( !( IA_STAFF & GetItemAttributes(item) ) )
	ldr	r3, .L4	@ tmp121,
@ MagicSystem/core/src/VanillaFix.c:4: int new_CanUnitUseStaff(const Unit* unit, int item){ //! FE8U = (0x080167A4+1)
	movs	r4, r0	@ unit, tmp143
	movs	r0, r1	@ item, tmp144
@ MagicSystem/core/src/VanillaFix.c:5: 	if( !( IA_STAFF & GetItemAttributes(item) ) )
	bl	.L6		@
@ MagicSystem/core/src/VanillaFix.c:5: 	if( !( IA_STAFF & GetItemAttributes(item) ) )
	movs	r2, #4	@ tmp123,
	movs	r3, r0	@ tmp122, tmp145
	ands	r3, r2	@ tmp122, tmp123
@ MagicSystem/core/src/VanillaFix.c:5: 	if( !( IA_STAFF & GetItemAttributes(item) ) )
	tst	r0, r2	@ tmp145, tmp123
	beq	.L1		@,
@ MagicSystem/core/src/VanillaFix.c:8: 	if( unit->statusIndex & ( UNIT_STATUS_SLEEP | UNIT_STATUS_SILENCED | UNIT_STATUS_BERSERK ) )
	adds	r4, r4, #48	@ tmp130,
	ldrb	r3, [r4]	@ *unit_8(D), *unit_8(D)
@ MagicSystem/core/src/VanillaFix.c:8: 	if( unit->statusIndex & ( UNIT_STATUS_SLEEP | UNIT_STATUS_SILENCED | UNIT_STATUS_BERSERK ) )
	adds	r2, r2, #3	@ tmp136,
	ands	r3, r2	@ tmp138, tmp136
@ MagicSystem/core/src/VanillaFix.c:6: 		return FALSE;
	rsbs	r2, r3, #0	@ tmp141, tmp138
	adcs	r3, r3, r2	@ <retval>, tmp138, tmp141
.L1:
@ MagicSystem/core/src/VanillaFix.c:12: }
	@ sp needed	@
	movs	r0, r3	@, <retval>
	pop	{r4}
	pop	{r1}
	bx	r1
.L5:
	.align	2
.L4:
	.word	GetItemAttributes
	.size	new_CanUnitUseStaff, .-new_CanUnitUseStaff
	.ident	"GCC: (devkitARM release 56) 11.1.0"
	.code 16
	.align	1
.L6:
	bx	r3
