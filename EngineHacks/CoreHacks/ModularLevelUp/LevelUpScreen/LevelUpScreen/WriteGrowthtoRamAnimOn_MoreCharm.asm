.thumb
.include	"_Definitions.h.s"
SET_FUNC_INLINE WriteGrowthtoRamAnimOn_MoreCharm

WriteGrowthtoRamAnimOn_MoreCharm:
	push	{r1-r4, lr}
	push	{r3}
	mov		r4, r1
	mov		r0, r5			@UnitStruct
	blh		GetChaAt
	ldrb	r0,[r0]
	strb	r0,[r4, #0x8]
	
	mov		r1, #0x70		@BattleStruct+0x7F-0x70
	pop		{r3}
	push	{r0}
	sub		r0, r3, r1
	blh		GetBu_ChangeChaAt
	ldrb	r1,[r0]		@Charm Boost
	pop		{r0}
	add		r0, r0, r1
	strb	r0,[r4, #0x18]
		
	
	pop		{r1-r4}	
	pop		{r0}
	bx		r0
	