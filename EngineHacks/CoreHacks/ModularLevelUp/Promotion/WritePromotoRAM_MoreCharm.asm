.thumb
.include	"_Definitions.h.s"
	push	{r1-r7, lr}
	
	mov		r4, r2
	mov		r0, r5			@BattleStruct
	blh		GetChaAt
	ldrb	r0,[r0]
	mov		r2, r4
	add		r2, #-2
	add		r2, #0x12
	strb	r0,[r2,#0x8]
	
	
	push	{r0}
	ldr		r0, =gActiveUnit
	ldr		r0,[r0]
	ldr		r0,[r0, #4]		@UnitStruct.PointerToClass
	ldrb	r0,[r0, #4]		@ROMClassEntry.Index
	lsl		r0,#0x2
	
	ldr		r1,=gpClassCharmTable
	ldr		r1,[r1]
	add		r2, r0, r1
	mov		r1,#0x3
	ldsb	r1,[r2,r1]		@mag promo bonus
	pop		{r0}
	sub		r0, r0, r1

	@目前Promotion就先放着吧；
	@存在一个问题：BattleStruct里面没有地方放Carm了；
	@其通过读取UnitStruct、BattleStruct分别获取转职前后的变化
	@但是这里不知道为什么，读取的Charm数据已经是专职后的数据了
	@当然也可能是因为其读取转制后使用UnitStruct，
	@而专职前则用BattleStruct也说不定
	
	@后续：完成了！！！解决了！！！

	
	strb	r0,[r4, #0x8]
	
	pop		{r1-r7}
	pop		{r0}
	bx		r0
	