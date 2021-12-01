.thumb
.include "_Definitions.h.s"
SET_FUNC_INLINE WritePromoJpt

WritePromoJpt:
push	{r0-r7, lr}

ldrb	r0,[r5,#0x12]	@hp
strb	r0,[r2]
ldrb	r0,[r5,#0x14]	@str
strb	r0,[r2,#0x1]

mov		r0, r5
push	{r1-r3}
_blh1	GetMagAt
pop		{r1-r3}
ldrb	r0,[r0]
strb	r0,[r2,#0x2]	@mag

mov		r0, r5
push	{r1-r3}
_blh1	GetChaAt
pop		{r1-r3}
ldrb	r0,[r0]
strb	r0,[r2,#0x8]	@cha

ldrb	r0,[r5,#0x15]	@skl
strb	r0,[r2,#0x3]
ldrb	r0,[r5,#0x16]	@spd
strb	r0,[r2,#0x4]
ldrb	r0,[r5,#0x19]	@lck
strb	r0,[r2,#0x5]
ldrb	r0,[r5,#0x17]	@def
strb	r0,[r2,#0x6]
ldrb	r0,[r5,#0x18]	@res
strb	r0,[r2,#0x7]
@ldrb	r0,[r5,#0x1A]	@con
@strb	r0,[r2,#0x8]	
ldrb	r0,[r5,#0x1D]	@mov
strb	r0,[r2,#0x9]
mov		r0,#0x1			@new level
sub		r2,#0x2
strh	r0,[r2]





add		r2,#0x12

ldrb	r0,[r3,#0x12]	@hp
strb	r0,[r2]
ldrb	r0,[r3,#0x14]	@str
strb	r0,[r2,#0x1]

mov		r0, r3
push	{r1-r3}
_blh1	GetMagAt
pop		{r1-r3}
ldrb	r0,[r0]
strb	r0,[r2,#0x2]	@mag

mov		r0, r3
push	{r1-r3}
_blh1	GetChaAt
pop		{r1-r3}
ldrb	r0,[r0]
strb	r0,[r2,#0x8]	@Cha

ldrb	r0,[r3,#0x15]	@skl
strb	r0,[r2,#0x3]
ldrb	r0,[r3,#0x16]	@spd
strb	r0,[r2,#0x4]
ldrb	r0,[r3,#0x19]	@lck
strb	r0,[r2,#0x5]
ldrb	r0,[r3,#0x17]	@def
strb	r0,[r2,#0x6]
ldrb	r0,[r3,#0x18]	@res
strb	r0,[r2,#0x7]

@ ldrb	r0,[r3,#0x1A]	@con
@ strb	r0,[r2,#0x8]
	
ldrb	r0,[r3,#0x1D]	@mov
strb	r0,[r2,#0x9]

pop		{r0-r7, pc}
