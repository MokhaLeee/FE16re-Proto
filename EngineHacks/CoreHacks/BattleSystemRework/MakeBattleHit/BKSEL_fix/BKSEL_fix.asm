.thumb

.macro blh to,reg=r4
	push {\reg}
	ldr \reg,=\to
	mov r14,\reg
	pop {\reg}
	.short 0xF800
.endm

.macro SET_FUNC name, value
	.global \name
	.type   \name, function
	.set    \name, \value
.endm
.macro SET_DATA name, value
	.global \name
	.type   \name, object
	.set    \name, \value
.endm






.global	BKSEL_FixCheckDouble_Actor
.type 	BKSEL_FixCheckDouble_Actor, function

@ ORG $36704 
BKSEL_FixCheckDouble_Actor:
	push	{lr}
	@ r7 = &gBattleActor
	mov		r0, r7
	ldr		r1, =gBattleTarget
	blh		CanDouble
	cmp		r0, #0
	beq		.L1_NoDouble
	b		.L0_Double
	
.L0_Double:
	mov		r0, r7
	pop		{r1}
	mov		lr, r1
	ldr		r1, =0x8036711
	bx		r1

.L1_NoDouble:
	pop		{r1}
	mov		lr, r1
	ldr		r1, =0x8036719
	bx		r1



.align
.ltorg

.global	BKSEL_FixCheckDouble_Target
.type 	BKSEL_FixCheckDouble_Target, function

@ ORG $367A4
BKSEL_FixCheckDouble_Target:
	@ r5 = gBattleTarget
	push	{lr}
	mov		r0, r5
	ldr		r1, =gBattleActor
	blh		CanDouble
	cmp		r0, #0
	beq		.L3_NoDouble
	b		.L2_Double
	
.L2_Double:
	mov		r0, r5
	pop		{r1}
	mov		lr, r1
	ldr		r1, =0x80367B1
	bx		r1

.L3_NoDouble:
	pop		{r1}
	mov		lr, r1
	ldr		r1, =0x80367B9
	bx		r1
