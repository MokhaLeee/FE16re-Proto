.thumb
.include "_Definitions.h.s"
.set ReturnMagRoutine, 0x802A853
.set ReturnNormalRoutine, 0x802A765


.align	
.ltorg
SET_FUNC_INLINE UnitToBattleStaff

@ ORG $2CB28
UnitToBattleStaff:
	@ R7=slotIndex, r2=UnitStruct
	mov		r1, r7
	push	{r0-r3}
	mov		r0, r2
	blh		GetUnitExtByUnit
	cmp		r0, #0
	beq		.NoEqp
	blh		GetWpnEqp
	cmp		r0, #0
	beq		.NoEqp
	
	mov		r6, r0
	pop		{r0-r3}
	b		.End_UnitToBattleStaff
	
.NoEqp:
	pop		{r0-r3}
	lsl		r1, r7, #1
	add		r0, #0x1E
	add		r0, r1
	ldrh	r6,[r0]
	b		.End_UnitToBattleStaff
	
.End_UnitToBattleStaff:
	ldr		r1, =0x802CB33
	bx		r1




.align
.ltorg
SET_FUNC_INLINE ActionStaffGetItem

@ ORG $2FC58
ActionStaffGetItem:
	@ R0=Unit*
	push	{r0-r3}
	
	blh		GetUnitExtByUnit
	cmp		r0, #0
	beq		.NoEqp_
	blh		GetWpnEqp
	cmp		r0, #0
	beq		.NoEqp_
	
	lsl		r0, #0x18
	lsr		r0, #0x18
	mov		r8, r0
	pop		{r0-r3}
	b		.End_ActionStaffGetItem
		
.NoEqp_:	
	@ 2FC58
	pop		{r0-r3}
	ldrb	r1,[r4, #0x12]
	lsl		r1, #1
	add		r0, #0x1E
	add		r0, r1
	ldrh	r0,[r0]
	lsl		r0, #0x18
	lsr		r0, #0x18
	mov		r8, r0
	b		.End_ActionStaffGetItem

.End_ActionStaffGetItem:
	@ 2FC66
	ldr		r0, =gSubjectBattleStruct
	add		r0, #0x7E
	mov		r1, #0
	strb	r1,[r0]

	ldr		r0, =0x802FC71
	bx		r0
