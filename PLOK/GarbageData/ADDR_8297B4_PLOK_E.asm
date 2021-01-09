ADDR_8297B4:
	STA.b [$6B],y
	AND.w #$0004
	STA.b $3F
	LDA.w $0B28,y
	AND.w #$00FF
	ASL
	ASL
	ASL
	CLC
	ADC.b $3F
	PHY
	TAY
	LDA.w $874B,y
	STA.b $04,x
	LDA.w $874D,y
	PLY
	ORA.w $0B50,y
	STA.b $06,x
	LDA.w $0B78,y
	CMP.w #$8001
	BNE.b $C9
	BRA.b $C7

ADDR_8297E1:
	LDA.w $0B28,y
	AND.w #$00FF
	ASL
	PHX
	TAX
	JMP.w (UNK_8297ED,x)

UNK_8297ED:
	dw $829819
	dw $829830
	dw $82983F
	dw $82983F
	dw $82983F
	dw $82987D
	dw $82988C
	dw $82989B
	dw $8298F0
	dw $829819
	dw $829819
	dw $829819
	dw $8298FF
	dw $8298DE
	dw $8298C5
	dw $82988C
	dw $829819
	dw $829819
	dw $82991E
	dw $829819
	dw $829819
	db $829819