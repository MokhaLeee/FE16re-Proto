.thumb


.include "_Definitions.h.s"

@paste at 73588(FE8U)
@r1=2020108 (write new level at +2 and original stats at +4), r3=battle struct+0x70, r5=char ptr (get original stats here), r4=battle struct ptr (get updated stats here)
@r7 is free, r4-r5 might be as well
push	{r7}
add		r0,#0x1			@new level
strh	r0,[r1,#0x2]
add		r1,#0x4			@r1=202010C
ldrb	r0,[r5,#0x12]	@current max hp
strb	r0,[r1]
ldrb	r2,[r3,#0x3]	@hp boost
add		r0,r0,r2
strb	r0,[r1,#0x10]	@new max hp

ldrb	r0,[r5,#0x14]	@current str
strb	r0,[r1,#0x1]
ldrb	r2,[r3,#0x4]	@str boost
add		r0,r0,r2
strb	r0,[r1,#0x11]	@new str

ldrb	r0,[r5,#0x15]	@current skl
strb	r0,[r1,#0x3]
ldrb	r2,[r3,#0x5]	@skl boost
add		r0,r0,r2
strb	r0,[r1,#0x13]	@new skl

ldrb	r0,[r5,#0x16]	@current spd
strb	r0,[r1,#0x4]
ldrb	r2,[r3,#0x6]	@spd boost
add		r0,r0,r2
strb	r0,[r1,#0x14]	@new spd

ldrb	r0,[r5,#0x19]	@current luk
strb	r0,[r1,#0x5]
ldrb	r2,[r3,#0x9]	@luk boost
add		r0,r0,r2
strb	r0,[r1,#0x15]	@new luk

ldrb	r0,[r5,#0x17]	@current def
strb	r0,[r1,#0x6]
ldrb	r2,[r3,#0x7]	@def boost
add		r0,r0,r2
strb	r0,[r1,#0x16]	@new def

ldrb	r0,[r5,#0x18]	@current res
strb	r0,[r1,#0x7]
ldrb	r2,[r3,#0x8]	@res boost
add		r0,r0,r2
strb	r0,[r1,#0x17]	@new res

@ ldrb	r0,[r4,#0x1A]	@con
@ strb	r0,[r1,#0x8]
@ strb	r0,[r1,#0x18]

ldrb	r0,[r4,#0x1D]	@mov
strb	r0,[r1,#0x9]
strb	r0,[r1,#0x19]

mov		r0,r5
push	{r1-r3}
_blh1	GetMagAt
pop		{r1-r3}
ldrb	r0,[r0]			@current mag
strb	r0,[r1,#0x2]
push	{r0-r3}
mov		r1, #0x70
sub		r0, r3, r1
_blh1	GetBu_ChangeMagAt
ldrb	r7,[r0]
pop		{r0-r3}
add		r0,r7
strb	r0,[r1,#0x12]	@new mag

mov		r0, r5			@UnitStruct
push	{r1-r3}
_blh1	GetChaAt
pop		{r1-r3}
ldrb	r0,[r0]
strb	r0,[r1, #0x8]
push	{r0-r3}
mov		r1, #0x70		@BattleStruct+0x7F-0x70
sub		r0, r3, r1
_blh1	GetBu_ChangeChaAt
ldrb	r7,[r0]			@Charm Boost
pop		{r0-r3}
add		r0, r7
strb	r0,[r1, #0x18]



pop		{r7}
.short	0xE07A	@ b #0x807371E

.align
.ltorg

