ADDR_84FEC6:
	STZ.w $013C,x
	STZ.w $0158,x
	JSL.l $8196A7
	JSL.l $8DFE22
	BCC.b ADDR_84FEDA
	JML.l $819586

ADDR_84FEDA:
	LDA.w #$003A
	STA.w $0134,x
	INC.w $02E0,x
	LDA.b $BE,x
	CLC
	ADC.w $0190,x
	BPL.b ADDR_84FEEE
	LDA.w #$0000
ADDR_84FEEE:
	STA.b $BE,x
	LDA.w $02E0,x
	AND.w #$0003
	BNE.b ADDR_84FF02
	LDA.w $0190,x
	CLC
	ADC.w #$0001
	STA.w $0190,x
ADDR_84FF02:
	LDA.w $0190,x
	BPL.b ADDR_84FF0C
	LDA.w #$0000
	BRA.b ADDR_84FF3B

ADDR_84FF0C:
	JSL.l $8DFFA5
	JSL.l $8182E4
	LDA.w $0238,x
	CMP.w #$0015
	BNE.b ADDR_84FF24
	JSL.l $93FB82
	BCC.b ADDR_84FF35
	BRA.b ADDR_84FF48

ADDR_84FF24:
	ASL
	TAY
	LDA.w $A26A,y
	AND.w #$00FF
	BNE.b ADDR_84FF35
	LDA.w $0238,x
	JSL.l $818471
ADDR_84FF35:
	STZ.w $0468,x
	LDA.w #$000A
ADDR_84FF3B:
	STA.w $0130,x
	STZ.b $00
	JML.l $819586

ADDR_84FF44:
	LDA.b $00
	STA.b $BE,x
ADDR_84FF48:
	LDA.w #$0000
	STA.w $0318,x
	STZ.w $0190,x
	STZ.w $01C8,x
	STZ.b $00
	LDA.w $02A8,x
	AND.w #$EFBC
	STA.w $02A8,x
	JSL.l $81972C
	JML.l $819586

ADDR_84FF67:
	LDA.w $0548,x
	JSL.l ADDR_84FF9A
	LDA.w $0134,x
	BEQ.b ADDR_84FF77
	CLC
	ADC.w $0144,x
ADDR_84FF77:
	TAY
	LDA.w $B4A2,y
	LDY.w $0130,x
	CLC
	ADC.w $B488,y
	ADC.w $013C,x
	STA.b $0C
	CLC
	ADC.w $1FD2,x
	TAY
	LDA.w $0002,y
	AND.w #$00F0
	LSR
	LSR
	LSR
	LSR
	STA.w $0510,x
	RTL

ADDR_84FF9A:
	ASL
	ASL
	LDY.w $0130,x
	CLC
	ADC.w $CB74,y
	SEC
	SBC.w $B488,y
	STA.w $013C,x
	RTL

ADDR_84FFAB:
	LDA.w $03C0,x
	INC
	INC
	STA.w $03C0,x
	TAY
	LDA.w $CE2D,y
	BMI.b ADDR_84FFF1
	TAY
	LDA.w $CE3D,y
	STA.b $00
	LDA.w $1DEE
	TAY
	CLC
	ADC.w #$0010
	STA.w $1DEE
	LDA.b $BE,x
	SEC
	SBC.w $0BA6
	STA.w $000C,y
	LDA.b $86,x
	SEC
	SBC.w $0BA4
	STA.w $000A,y
	LDA.b $00
	STA.w $0000,y
	LDA.w #$0000
	STA.w $0006,y
	STA.w $000E,y
	LDA.w #$0002
	STA.w $0004,y
	RTL

ADDR_84FFF1:
	STZ.b $4E,x
	RTL