
ADDR_82E233:
	BCS.b ADDR_82E252
	STA.w $000A,y
	LDA.b $00
	STA.w $0000,y
	LDA.w #$0000
	STA.w $0006,y
	STA.w $000E,y
	LDA.w $0430,x
	STA.w $0004,y
	LDA.b $86,x
	DEC
	STA.b $86,x
	RTL

ADDR_82E252:
	STZ.b $4E,x
	RTL

ADDR_82E255:
	LDA.w #$0000
	STA.b $1C
	LDA.w #$001C
	BRA.b ADDR_82E269

ADDR_82E25F:
	LDA.w #$0001
	STA.b $1C
	LDA.w #$001C
	BRA.b ADDR_82E269

ADDR_82E269:
	JSR.w $82852F
	BPL.b ADDR_82E271
	BRL.w ADDR_82E2E4

ADDR_82E271:
	STX.b $4C
	LDA.b $08
	STA.b $86,x
	LDA.b $12
	STA.b $BE,x
	LDA.b $1C
	STA.w $03C0,x
	STZ.w $0318,x
	STZ.w $03F8,x
	STZ.w $0430,x
	STZ.w $0468,x
	STZ.w $0190,x
	STZ.w $0158,x
	STZ.w $02A8,x
	STZ.w $02E0,x
	STZ.w $0270,x
	LDA.b $1C
	BNE.b ADDR_82E2AC
	LDY.w #$7CA0
	LDA.w #$00C0
	STA.b $08
	LDA.w #$4540
	BRA.b ADDR_82E2B7

ADDR_82E2AC:
	LDY.w #$7C40
	LDA.w #$0140
	STA.b $08
	LDA.w #$5400
ADDR_82E2B7:
	STA.b $00
	LDA.w #$007F
	STA.b $02
	JSL.l $808D8B
	LDA.b $1C
	BNE.b ADDR_82E2D3
	LDY.w #$7DA0
	LDA.w #$00C0
	STA.b $08
	LDA.w #$4740
	BRA.b ADDR_82E2DE

ADDR_82E2D3:
	LDY.w #$7D40
	LDA.w #$0140
	STA.b $08
	LDA.w #$5600
ADDR_82E2DE:
	STA.b $00
	JSL.l $808D8B
ADDR_82E2E4:
	LDX.b $4C
	RTL

;--------------------------------------------------------------------

ADDR_82E2E7:
	JSR.w $828848
	BCC.b ADDR_82E2F1
	JSR.w $82888B
	BRA.b ADDR_82E2E4

ADDR_82E2F1:
	STZ.w $0104
	JSR.w ADDR_82E32B
	JSR.w $82891C
	BCS.b ADDR_82E32A
	LDA.w $0430,x
	TAY
	LDA.w $03C0,x
	BNE.b ADDR_82E30A
	LDA.w $F172,y
	BRA.b ADDR_82E30D

ADDR_82E30A:
	LDA.w $F17E,y
ADDR_82E30D:
	STA.b $00
	JSR.w $828825
	LDA.w #$0000
	STA.w $0006,y
	LDA.w $0104
	STA.w $000E,y
	LDA.w #$8018
	STA.w $0008,y
	LDA.w #$0003
	STA.w $0004,y
ADDR_82E32A:
	RTL

;--------------------------------------------------------------------

ADDR_82E32B:
	LDA.w $0318,x
	PHX
	ASL
	TAX
	LDA.l UNK_82E33B,x
	PLX
	STA.b $00
	JMP.w ($0000)

UNK_82E33B:
	dw ADDR_82E343
	dw ADDR_82E47E
	dw ADDR_82E397
	dw ADDR_82E347

ADDR_82E343:
	STZ.w $0430,x
	RTS

ADDR_82E347:
	STX.b $4C
	LDA.w $03C0,x
	STA.b $1C
	BNE.b ADDR_82E355
	LDA.w #$4C00
	BRA.b ADDR_82E358

ADDR_82E355:
	LDA.w #$5800
ADDR_82E358:
	STA.b $00
	LDA.w #$007F
	STA.b $02
	LDA.w #$0200
	STA.b $08
	LDA.w #$6A00
	TAY
	JSL.l $808D8B
	LDA.b $1C
	BNE.b ADDR_82E375
	LDA.w #$4E00
	BRA.b ADDR_82E378

ADDR_82E375:
	LDA.w #$5A00
ADDR_82E378:
	STA.b $00
	LDA.w #$6B00
	TAY
	JSL.l $808D8B
	LDX.b $4C
	LDA.w $0270,x
	STA.w $0468,x
	DEC.w $0318,x
	STZ.w $0190,x
	LDA.w #$0002
	STA.w $0430,x
	RTS

ADDR_82E397:
	LDA.w $1FCE
	AND.w #$0003
	BNE.b ADDR_82E3AB
	LDA.w $0190,x
	CMP.w #$0005
	BCS.b ADDR_82E3AB
	INC
	STA.w $0190,x
ADDR_82E3AB:
	LDA.b $BE,x
	CLC
	ADC.w $0190,x
	STA.b $BE,x
	LDY.w #$0000
	LDA.w #$000A
	JSL.l $81837A
	ASL
	TAY
	LDA.w $ABE8,y
	BEQ.b ADDR_82E3E7
	LDA.w #$0020
	JSR.w $8284BC
	DEC.w $0318,x
	LDA.w #$FFFD
	STA.w $0190,x
	LDA.w #$0001
	STA.w $0158,x
	LDA.w #$0002
	STA.w $0270,x
	LDA.w #$000A
	STA.w $03F8,x
	LDA.b $BE,x
ADDR_82E3E7:
	LDA.w #$00A0
	STA.w $0104
	LDA.w #$0008
	STA.w $0430,x
ADDR_82E3F3:
	LDY.w #$0007
	LDA.w #$8001
	JSL.l $818582
	BCC.b ADDR_82E475
	LDY.b $16
	LDA.w $02A8,y
	ORA.w #$0002
	STA.w $02A8,y
	AND.w #$8000
	BEQ.b ADDR_82E42E
	LDA.w #$0003
	STA.w $0318,y
	LDA.w #$FFFF
	STA.b $00
	LDA.w $02A8,y
	AND.w #$4000
	BNE.b ADDR_82E427
	LDA.w #$FFFF
	STA.b $00
ADDR_82E427:
	LDA.b $00
	STA.w $0158,y
	BRA.b ADDR_82E453

ADDR_82E42E:
	LDA.w $02A8,x
	EOR.w #$4000
	STA.w $02A8,x
	LDA.w #$001A
	STA.w $0318,y
	LDA.w $00BE,y
	CLC
	ADC.w #$0018
	STA.w $00BE,y
	LDA.w #$0040
	STA.w $04A0,y
	LDA.w #$0030
	STA.w $0200,y
ADDR_82E453:
	LDA.b $4E,x
	CMP.w #$0092
	BEQ.b ADDR_82E475
	LDA.w $02E0,x
	BMI.b ADDR_82E475
	TAY
	LDA.w $1FEE,y
	CLC
	ADC.w #$0014
	STA.w $1FEE,y
	LDY.b $16
	LDA.w #$0000
	STA.w $02E0,y
	STA.w $0270,y
ADDR_82E475:
	LDA.w #$00A0
	STA.w $0104
	JMP.w ADDR_82E66B

ADDR_82E47E:
	LDA.w $1FCE
	AND.w #$0003
	BNE.b ADDR_82E494
	LDA.w $0190,x
	BMI.b ADDR_82E490
	CMP.w #$0006
	BCS.b ADDR_82E494
ADDR_82E490:
	INC
	STA.w $0190,x
ADDR_82E494:
	LDA.b $BE,x
	CLC
	ADC.w $0190,x
	STA.b $BE,x
	SEC
	SBC.w $0BA6
	CMP.w #$00F0
	BCC.b ADDR_82E4A8
	STZ.b $4E,x
	RTS

ADDR_82E4A8:
	LDA.b $86,x
	CLC
	ADC.w $0158,x
	STA.b $86,x
	DEC.w $03F8,x
	BNE.b ADDR_82E4DF
	LDA.w #$000A
	STA.w $03F8,x
	LDA.w $03C0,x
	BNE.b ADDR_82E4CF
	LDA.w $0270,x
	INC
	INC
	CMP.w #$0006
	BNE.b ADDR_82E4DC
	LDA.w #$0000
	BRA.b ADDR_82E4DC

ADDR_82E4CF:
	LDA.w $0270,x
	INC
	INC
	CMP.w #$0008
	BNE.b ADDR_82E4DC
	LDA.w #$0000
ADDR_82E4DC:
	STA.w $0270,x
ADDR_82E4DF:
	LDA.w $0270,x
	CLC
	ADC.w #$0006
	STA.w $0430,x
	BRL.b ADDR_82E3F3

;--------------------------------------------------------------------

ADDR_82E4EC:
	LDA.w #$0000
	STA.b $1C
	STX.b $1E
	LDA.w #$002A
	STA.b $56
	LDX.w #$0008
	BRA.b ADDR_82E50C

ADDR_82E4FD:
	LDA.w #$4000
	STA.b $1C
	STX.b $1E
	LDA.w #$002A
	STA.b $54
	LDX.w #$0006
ADDR_82E50C:
	LDA.b $08
	STA.b $86,x
	LDA.b $12
	STA.b $BE,x
	STZ.w $0318,x
	STZ.w $03F8,x
	STZ.w $0430,x
	STZ.w $0468,x
	STZ.w $04D8,x
	STZ.w $0190,x
	STZ.w $0158,x
	STZ.w $02E0,x
	STZ.w $0270,x
	LDA.w #$0008
	STA.w $02A8,x
	ORA.b $1C
	STA.w $0510,x
	LDA.w #$0020
	STA.w $0548,x
	LDX.b $1E
	RTL

;--------------------------------------------------------------------

ADDR_82E543:
	LDA.w #$4C00
	STA.b $00
	LDA.w #$007F
	STA.b $02
	LDA.w #$0200
	STA.b $08
	LDA.w #$7C00
	TAY
	JSL.l $808D8B
	LDA.w #$4E00
	STA.b $00
	LDA.w #$7D00
	TAY
	JSL.l $808D8B
	RTL

;--------------------------------------------------------------------

ADDR_82E568:
	LDA.w #$0003
	STA.b $0C
	JSR.w ADDR_82E5AD
	LDA.w $02A8,x
	BIT.w #$0400
	BEQ.b ADDR_82E586
	AND.w #$FBFF
	STA.w $02A8,x
	INC.w $04D8,x
	LDA.w #$0007
	STA.b $0C
ADDR_82E586:
	LDA.w $0430,x
	TAY
	LDA.w $F18C,y
	STA.b $00
	JSR.w $828825
	LDA.w $02A8,x
	AND.w #$4000
	STA.w $0006,y
	LDA.w #$01C0
	STA.w $000E,y
	LDA.w #$8018
	STA.w $0008,y
	LDA.b $0C
	STA.w $0004,y
	RTL

;--------------------------------------------------------------------

ADDR_82E5AD:
	LDA.w $0318,x
	PHX
	ASL
	TAX
	LDA.l UNK_82E5BD,x
	PLX
	STA.b $00
	JMP.w ($0000)

UNK_82E5BD:
	dw ADDR_82E5C5
	dw ADDR_82E6CB
	dw ADDR_82E5FC
	dw ADDR_82E5E0

ADDR_82E5C5:
	LDA.w $04D8,x
	LSR
	LSR
	STA.b $14
	LDA.w $1FCE
	AND.w #$000F
	SEC
	SBC.b $14
	BPL.b ADDR_82E5DC
	LDA.w #$0006
	STA.b $0C
ADDR_82E5DC:
	STZ.w $0430,x
	RTS

ADDR_82E5E0:
	LDA.w #$000A
	STA.w $03F8,x
	DEC.w $0318,x
	STZ.w $0190,x
	LDA.w #$0002
	STA.w $0430,x
	LDA.w $0510,x
	ORA.w #$0002
	STA.w $02A8,x
	RTS

ADDR_82E5FC:
	LDA.w $1FCE
	AND.w #$0007
	BNE.b ADDR_82E610
	LDA.w $0190,x
	CMP.w #$0005
	BCS.b ADDR_82E610
	INC
	STA.w $0190,x
ADDR_82E610:
	LDA.b $BE,x
	CLC
	ADC.w $0190,x
	STA.b $BE,x
	LDY.w #$0000
	LDA.w #$000A
	JSL.l $81837A
	CMP.w #$0001
	BNE.b ADDR_82E655
	LDA.w #$0020
	JSR.w $8284BC
	LDA.w #$FFFF
	STA.w $0158,x
	DEC.w $0318,x
	LDA.w #$FFFE
	STA.w $0190,x
	LDA.w $02A8,x
	AND.w #$4000
	BNE.b ADDR_82E64A
	LDA.w #$0001
	STA.w $0158,x
ADDR_82E64A:
	STZ.w $0270,x
	LDA.w #$0008
	STA.w $03F8,x
	BRA.b ADDR_82E665

ADDR_82E655:
	LDA.w $03F8,x
	BEQ.b ADDR_82E665
	DEC
	STA.w $03F8,x
	LDA.w #$0002
	STA.w $0430,x
	RTS

ADDR_82E665:
	LDA.w #$0004
	STA.w $0430,x
ADDR_82E66B:
	LDY.w #$0007
	LDA.w #$0100
	JSL.l $818582
	BCC.b ADDR_82E6CA
	LDY.b $16
	LDA.w $02A8,y
	ORA.w #$1000
	STA.w $02A8,y
	AND.w #$8200
	BEQ.b ADDR_82E6A3
	LDA.w #$0003
	STA.w $0318,y
	LDA.w #$0001
	STA.w $0158,y
	LDA.w $02A8,x
	AND.w #$4000
	BNE.b ADDR_82E6CA
	LDA.w #$FFFF
	STA.w $0158,y
	BRA.b ADDR_82E6CA

ADDR_82E6A3:
	LDA.w #$0006
	STA.w $0318,y
	LDA.w #$0000
	STA.w $0130,y
	STA.w $0158,y
	LDA.w #$0052
	STA.w $0134,y
	LDA.w #$0004
	STA.w $013C,y
	LDA.w #$0050
	STA.w $04A0,y
	LDA.w #$0018
	STA.w $02E0,y
ADDR_82E6CA:
	RTS

;--------------------------------------------------------------------

ADDR_82E6CB:
	LDA.w $1FCE
	AND.w #$0003
	BNE.b ADDR_82E6E1
	LDA.w $0190,x
	BMI.b ADDR_82E6DD
	CMP.w #$0006
	BCS.b ADDR_82E6E1
ADDR_82E6DD:
	INC
	STA.w $0190,x
ADDR_82E6E1:
	LDA.b $BE,x
	CLC
	ADC.w $0190,x
	STA.b $BE,x
	SBC.w $0BA6
	CMP.w #$00F0
	BCC.b ADDR_82E6F4
	STZ.b $4E,x
	RTS

ADDR_82E6F4:
	LDA.b $86,x
	CLC
	ADC.w $0158,x
	STA.b $86,x
	DEC.w $03F8,x
	BNE.b ADDR_82E717
	LDA.w #$0004
	STA.w $03F8,x
	LDA.w $0270,x
	INC
	INC
	CMP.w #$0006
	BNE.b ADDR_82E714
	LDA.w #$0000
ADDR_82E714:
	STA.w $0270,x
ADDR_82E717:
	LDY.w $0270,x
	LDA.w $F192,y
	STA.w $0430,x
	JMP.w ADDR_82E66B

ADDR_82E723:
	LDA.w #$0058
	CLC
	ADC.w $0BA6
	STA.b $12
	STX.b $4C
	LDA.w #$0000
	STA.b $10
	LDA.w #$00A0
	STA.b $56
	LDX.w #$0008
	LDA.w $0BA4
	AND.w #$01FF
	STA.b $46
	LDA.b $12
	STA.b $BE,x
	SEC
	SBC.w #$0038
	SBC.w $0BA6
	AND.w #$FFF8
	ASL
	ASL
	STA.w $0468,x
	LDA.b $08
	STA.b $86,x
	SEC
	SBC.w #$0020
	SBC.w $0BA4
	CLC
	ADC.b $46
	LSR
	LSR
	LSR
	ASL
	STA.w $03C0,x
	LDA.w #$0050
	STA.w $0548,x
	STZ.w $04A0,x
	JSL.l $82C32A
	LSR
	CLC
	ADC.w #$0018
	STA.w $03F8,x
	LDA.w #$0003
	STA.w $0510,x
	STZ.w $04D8,x
	STZ.w $0318,x
	LDA.w #$1000
	ORA.w #$0008
	STA.w $02A8,x
	STZ.w $0200,x
	STZ.w $0350,x
	STZ.w $0190,x
	STZ.w $0158,x
	STZ.w $02E0,x
	LDA.w #$0001
	STA.w $0238,x
	LDY.w #$F198
	PHX
	JSL.l $809DB7
	PLX
	LDX.b $4C
	RTS

;--------------------------------------------------------------------

ADDR_82E7B6:
	LDA.w $0120
	AND.w #$8000
	BEQ.b ADDR_82E7C1
	STZ.w $03F8,x
ADDR_82E7C1:
	LDA.w $03F8,x
	BEQ.b ADDR_82E7D3
	LDA.w $1FCE
	AND.w #$0003
	BNE.b ADDR_82E7DA
	JSR.w ADDR_82E8FF
	BRA.b ADDR_82E7DA

ADDR_82E7D3:
	LDA.w $0510,x
	BNE.b ADDR_82E7DA
	STZ.b $4E,x
ADDR_82E7DA:
	LDA.w $0510,x
	BEQ.b ADDR_82E7E1
	BPL.b ADDR_82E7E4
ADDR_82E7E1:
	BRL.w ADDR_82E8A9

ADDR_82E7E4:
	JSR.w ADDR_82E9B0
	LDA.w $02A8,x
	AND.w #$0400
	BNE.b ADDR_82E81C
	LDA.w $0548,x
	CMP.w #$0020
	BCS.b ADDR_82E817
	LDA.w $1FCE
	AND.w #$000F
	STA.b $14
	LDA.w $0548,x
	LSR
	LSR
	ASL
	TAY
	LDA.w $EB76,y
	LDY.b $14
ADDR_82E80B:
	DEY
	BMI.b ADDR_82E811
	LSR
	BRA.b ADDR_82E80B

ADDR_82E811:
	LDY.w #$F1A1
	LSR
	BCS.b ADDR_82E81F
ADDR_82E817:
	LDY.w #$F198
	BRA.b ADDR_82E81F

ADDR_82E81C:
	LDY.w #$F1AA
ADDR_82E81F:
	PHX
	JSL.l $809DB7
	PLX
	LDA.w $0318,x
	BEQ.b ADDR_82E855
	LDA.w $1FCE
	AND.w #$000F
	BNE.b ADDR_82E855
	LDA.w #$0001
	STA.w $0238,x
	LDA.w $0510,x
	DEC
	STA.w $0510,x
	BNE.b ADDR_82E855
	SEP.b #$20
	LDA.b #$03
	STA.l $7E27B6
	STA.l $7E27F1
	REP.b #$20
	LDA.w #$0004
	STA.w $0120
ADDR_82E855:
	LDA.w $0238,x
	BEQ.b ADDR_82E8A9
	STZ.w $0238,x
	LDA.w $0510,x
	ASL
	TAY
	LDA.w $F1B3,y
	STA.b $0A
	LDA.w $03C0,x
	STA.b $0C
	LDA.w #$000A
	STA.b $0E
	LDA.w $0468,x
	CLC
	ADC.w #$4800
	STA.b $18
ADDR_82E87A:
	LDA.b $0A
	STA.b $00
	STX.b $4C
	LDA.w #$009E
	STA.b $02
	LDA.w #$000E
	STA.b $08
	LDY.b $0C
	LDA.w $EA16,y
	CLC
	ADC.b $18
	TAY
	JSL.l $808D86
	LDX.b $4C
	INC.b $0C
	INC $0C
	LDA.b $0A
	CLC
	ADC.w #$000E
	STA.b $0A
	DEC.b $0E
	BNE.b ADDR_82E87A
ADDR_82E8A9:
	LDA.w $0318,x
	BNE.b ADDR_82E8FE
	LDY.w #$0036
	LDA.w #$0002
	JSL.l $818586
	BCC.b ADDR_82E8F5
	LDA.w $02A8,x
	BIT.w #$0400
	BNE.b ADDR_82E8F5
	ORA.w #$0400
	STA.w $02A8,x
	LDY.b $16
	LDA.w $1FEE,y
	CLC
	ADC.w #$0001
	STA.w $1FEE,y
	DEC.w $0548,x
	BEQ.b ADDR_82E8E1
	LDA.w #$004B
	JSR.w $8284BC
	BRA.b ADDR_82E8FE

ADDR_82E8E1:
	LDA.w #$0003
	STA.w $0318,x
	LDA.w $03F8,x
	CMP.w #$0010
	BCC.b ADDR_82E8F5
	LDA.w #$0010
	STA.w $03F8,x
ADDR_82E8F5:
	LDA.w $02A8,x
	AND.w #$FBFF
	STA.w $02A8,x
ADDR_82E8FE:
	RTL

;--------------------------------------------------------------------

ADDR_82E8FF:
	LDA.w $1DF6
	AND.w #$0003
	PHX
	ASL
	TAX
	LDA.l UNK_82E912,x
	PLX
	STA.b $00
	JMP.w ($0000)

UNK_82E912:
	dw ADDR_82E91A
	dw ADDR_82E93F
	dw ADDR_82E961
	dw ADDR_82E983

ADDR_82E91A:
	LDA.w $0350,x
	BIT.w #$0001
	BEQ.b ADDR_82E925
	BRL.w ADDR_82E9AF

ADDR_82E925:
	LDA.w #$00B0
	CLC
	ADC.w $0BA6
	STA.b $12
	LDA.w #$FFEF
	CLC
	ADC.w $0BA4
	STA.b $08
	JSL.l $81F03E
	BCS.b ADDR_82E9AF
	BRA.b ADDR_82E9A3

ADDR_82E93F:
	LDA.w $0350,x
	BIT.w #$0100
	BNE.b ADDR_82E9AF
	LDA.w #$00B0
	CLC
	ADC.w $0BA6
	STA.b $12
	LDA.w #$0111
	CLC
	ADC.w $0BA4
	STA.b $08
	JSL.l $81F05A
	BCS.b ADDR_82E9AF
	BRA.b ADDR_82E9A3

ADDR_82E961:
	LDA.w $0350,x
	BIT.w #$0010
	BNE.b ADDR_82E9AF
	LDA.w #$0038
	CLC
	ADC.w $0BA6
	STA.b $12
	LDA.w #$00FE
	CLC
	ADC.w $0BA4
	STA.b $08
	JSL.l $81F076
	BCS.b ADDR_82E9AF
	BRA.b ADDR_82E9A3

ADDR_82E983:
	LDA.w $0350,x
	BIT.w #$1000
	BNE.b ADDR_82E9AF
	LDA.w #$0038
	CLC
	ADC.w $0BA6
	STA.b $12
	LDA.w #$0000
	CLC
	ADC.w $0BA4
	STA.b $08
	JSL.l $81F092
	BCS.b ADDR_82E9AF
ADDR_82E9A3:
	LDA.w $0350,x
	CLC
	ADC.b $FE
	STA.w $0350,x
	DEC.w $03F8,x
ADDR_82E9AF:
	RTS

;--------------------------------------------------------------------

ADDR_82E9B0:
	STX.b $1E
	LDX.w #$0004
ADDR_82E9B5:
	DEX
	DEX
	BPL.b ADDR_82E9BC
	LDX.b $1E
	RTS

ADDR_82E9BC:
	LDA.w $02A8,x
	LDA.b $BE,x
	SEC
	SBC.w $0BA6
	BMI.b ADDR_82E9CC
	CMP.w #$0040
	BCS.b ADDR_82E9B5
ADDR_82E9CC:
	LDA.w $0158,x
	BMI.b ADDR_82E9EB
	LDA.b $86,x
	SEC
	SBC.w $0BA4
	CMP.w #$0040
	BCC.b ADDR_82E9B5
	CMP.w #$0080
	BCS.b ADDR_82E9B5
ADDR_82E9E1:
	LDA.b $86,x
	SEC
	SBC.w $0158,x
	STA.b $86,x
	BRA.b ADDR_82E9B5

ADDR_82E9EB:
	LDA.b $86,x
	SEC
	SBC.w $0BA4
	CMP.w #$00C0
	BCS.b ADDR_82E9B5
	CMP.w #$0080
	BCC.b ADDR_82E9B5
	BRA.b ADDR_82E9E1

;--------------------------------------------------------------------

ADDR_82E9FD:
	LDA.w #$0092
	BRA.b ADDR_82EA02

ADDR_82EA02:
	JSR.w $82852F
	BPL.b ADDR_82EA0A
	BRL.w ADDR_82EA56

ADDR_82EA0A:
	STX.b $4C
	LDA.b $08
	STA.b $86,x
	LDA.b $12
	STA.b $BE,x
	STZ.w $03C0,x
	STZ.w $0318,x
	STZ.w $03F8,x
	STZ.w $0430,x
	STZ.w $0468,x
	STZ.w $0190,x
	STZ.w $0158,x
	STZ.w $02A8,x
	STZ.w $02E0,x
	STZ.w $0270,x
	LDA.w #$5800
	STA.b $00
	LDA.w #$007F
	STA.b $02
	LDA.w #$0200
	STA.b $08
	LDA.w #$6A00
	TAY
	JSL.l $808D8B
	LDA.w #$5A00
	STA.b $00
	LDA.w #$6B00
	TAY
	JSL.l $808D8B
ADDR_82EA56:
	LDX.b $4C
	RTL

;--------------------------------------------------------------------

ADDR_82EA59:
	JSR.w $828848
	BCC.b ADDR_82EA63
	JSR.w $82888B
	BRA.b ADDR_82EA56

ADDR_82EA63:
	JSR.w ADDR_82EA95
	JSR.w $82891C
	BCS.b ADDR_82EA94
	LDA.w $0270,x
	TAY
	LDA.w $0318,x
	BNE.b ADDR_82EA74
ADDR_82EA74:
	LDA.w $F1BB,y
	STA.b $00
	JSR.w $828825
	LDA.w #$0000
	STA.w $0006,y
	LDA.w #$00A0
	STA.w $000E,y
	LDA.w #$8018
	STA.w $0008,y
	LDA.w #$0003
	STA.w $0004,y
ADDR_82EA94:
	RTL

;--------------------------------------------------------------------

ADDR_82EA95:
	LDA.w $0318,x
	PHX
	ASL
	TAX
	LDA.l UNK_82EAA5,x
	PLX
	STA.b $00
	JMP.w ($0000)

UNK_82EAA5:
	dw ADDR_82EAA9
	dw ADDR_82EB30

ADDR_82EAA9:
	LDY.w #$0000
	LDA.w #$000F
	JSL.l $81837A
	ASL
	TAY
	LDA.w $ABE8,y
	BEQ.b ADDR_82EB30
	LDA.w $AC6C,y
	BEQ.b ADDR_82EAD2
	AND.w #$8000
	BNE.b ADDR_82EACC
	LDA.w #$FFFF
	STA.w $0158,x
	BRA.b ADDR_82EAD2

ADDR_82EACC:
	LDA.w #$0001
	STA.w $0158,x
ADDR_82EAD2:
	LDY.w #$000D
	LDA.w $0158,x
	BEQ.b ADDR_82EAEF
	BPL.b ADDR_82EADF
	LDY.w #$FFF3
ADDR_82EADF:
	LDA.w #$0008
	JSL.l $81837A
	ASL
	TAY
	LDA.w $ABE8,y
	BNE.b ADDR_82EB08
	BRA.b ADDR_82EB23

ADDR_82EAEF:
	LDA.w #$0001
	STA.w $0158,x
	LDA.b $86,x
	SEC
	SBC.w $0BA4
	CMP.w #$0080
	BCC.b ADDR_82EB23
	LDA.w #$FFFF
	STA.w $0158,x
	BRA.b ADDR_82EB23

ADDR_82EB08:
	LDA.w #$FFFD
	STA.w $0190,x
	LDA.w $0158,x
	BPL.b ADDR_82EB18
	LDA.w #$FFFF
	BRA.b ADDR_82EB1B

ADDR_82EB18:
	LDA.w #$0001
ADDR_82EB1B:
	STA.w $0158,x
	INC.w $0318,x
	BRA.b ADDR_82EB30

ADDR_82EB23:
	LDA.w #$FFFC
	STA.w $0190,x
	LDA.w #$005C
	JSL.l $80850D
ADDR_82EB30:
	LDA.w $1FCE
	AND.w #$0003
	BNE.b ADDR_82EB46
	LDA.w $0190,x
	BMI.b ADDR_82EB42
	CMP.w #$0006
	BCS.b ADDR_82EB46
ADDR_82EB42:
	INC
	STA.w $0190,x
ADDR_82EB46:
	LDA.b $BE,x
	CLC
	ADC.w $0190,x
	STA.b $BE,x
	SEC
	SBC.w $0BA6
	CMP.w #$00F0
	BCC.b ADDR_82EB5A
	STZ.b $4E,x
	RTS

ADDR_82EB5A:
	LDA.b $86,x
	CLC
	ADC.w $0158,x
	STA.b $86,x
	LDA.w $0158,x
	BEQ.b ADDR_82EB90
	LDA.w $1FCE
	AND.w #$0003
	BNE.b ADDR_82EB90
	LDA.w $0158,x
	BMI.b ADDR_82EB83
	LDA.w $0270,x
	INC
	INC
	CMP.w #$0008
	BNE.b ADDR_82EB8D
	LDA.w #$0000
	BRA.b ADDR_82EB8D

ADDR_82EB83:
	LDA.w $0270,x
	DEC
	DEC
	BPL.b ADDR_82EB8D
	LDA.w #$0006
ADDR_82EB8D:
	STA.w $0270,x
ADDR_82EB90:
	JMP.w ADDR_82E3F3

;--------------------------------------------------------------------

ADDR_82EB93:
	STX.b $4C
	LDA.w #$0094
	JSR.w $82852F
	LDA.w #$0080
	CLC
	ADC.w $0BA4
	STA.b $86,x
	LDA.w #$0052
	CLC
	ADC.w $0BA6
	STA.b $BE,x
	STZ.w $0318,x
	LDA.w #$004C
	STA.w $03C0,x
	LDA.w #$00B4
	STA.w $0430,x
	LDA.w #$0058
	STA.w $03F8,x
	STA.w $0468,x
	LDA.w #$0001
	STA.w $04A0,x
	LDA.w #$0024
	STA.w $04D8,x
	LDA.w #$0000
	STA.w $0510,x
	LDA.w #$0012
	STA.w $0548,x
	STZ.w $0190,x
	STZ.w $0158,x
	LDA.w #$4000
	STA.w $02A8,x
	LDA.b $4C
	STA.w $02E0,x
	STZ.w $0270,x
	SEP.b #$20
	LDA.b #$10
	STA.w $1F94
	LDA.b #$9B
	STA.w $1F96
	LDA.b #$1F
	STA.w $1F9A
	LDA.b #$00
	STA.w $1F9C
	REP.b #$30
	LDX.b $4C
	RTL

;--------------------------------------------------------------------

ADDR_82EC0C:
	LDA.w $0318,x
	CMP.w #$0002
	BCS.b ADDR_82EC29
	SEP.b #$20
	LDA.b #$C3
	STA.w !REGISTER_ObjectAndColorWindowSettings
	LDA.b #$FF
	STA.w !REGISTER_Window2LeftPositionDesignation
	LDA.b #$00
	STA.w !REGISTER_Window2RightPositionDesignation
	REP.b #$30
	BRA.b ADDR_82EC5C

ADDR_82EC29:
	SEP.b #$20
	LDA.b #$F0
	STA.w !REGISTER_ObjectAndColorWindowSettings
	LDA.b #$FF
	STA.w !REGISTER_Window1LeftPositionDesignation
	LDA.b #$00
	STA.w !REGISTER_Window1RightPositionDesignation
	REP.b #$30
	SEP.b #$20
	LDA.b #$FF
	STA.w !REGISTER_Window2LeftPositionDesignation
	LDA.b #$00
	STA.w !REGISTER_Window2RightPositionDesignation
	LDA.b #$00
	STA.w !REGISTER_BGWindowLogicSettings
	LDA.b #$04
	STA.w !REGISTER_ColorAndObjectWindowLogicSettings
	LDA.b #$1B
	STA.w !REGISTER_MainScreenWindowMask
	STA.w !REGISTER_SubScreenWindowMask
	REP.b #$30
ADDR_82EC5C:
	JSR.w ADDR_82EC60
	RTL

ADDR_82EC60:
	LDA.w $0318,x
	PHX
	ASL
	TAX
	LDA.l UNK_82EC70,x
	PLX
	STA.b $00
	JMP.w ($0000)

UNK_82EC70:
	dw ADDR_82EC7C
	dw ADDR_82ECA3
	dw ADDR_82ECCC
	dw ADDR_82EEAC
	dw ADDR_82EEBC
	dw ADDR_82EFA8

ADDR_82EC7C:
	LDA.w $1FCE
	AND.w #$0007
	BNE.b ADDR_82ECA2
	LDA.w $0270,x
	INC
	CMP.w #$000A
	BCC.b ADDR_82EC92
	INC.w $0318,x
	BRA.b ADDR_82ECA2

ADDR_82EC92:
	STA.w $0270,x
	ORA.w #$00E0
	SEP.b #$20
	STA.w $1F98
	STA.w !REGISTER_FixedColorData
	REP.b #$20
ADDR_82ECA2:
	RTS

ADDR_82ECA3:
	LDA.w $02E0,x
	TAY
	LDA.w $0318,y
	CMP.w #$0004
	BCC.b ADDR_82ECCB
	PHX
	JSL.l $808ECF
	PLX
	SEP.b #$20
	LDA.b #$C0
	STA.w !REGISTER_ObjectAndColorWindowSettings
	LDA.b #$FF
	STA.w !REGISTER_Window1LeftPositionDesignation
	LDA.b #$00
	STA.w !REGISTER_Window1RightPositionDesignation
	REP.b #$30
	INC.w $0318,x
ADDR_82ECCB:
	RTS

ADDR_82ECCC:
	LDA.w $1FCE
	AND.w #$0001
	BNE.b ADDR_82ECEC
	LDA.w $04A0,x
	INC
	INC
	CMP.w #$0020
	BCS.b ADDR_82ECE3
	STA.w $04A0,x
	BRA.b ADDR_82ECEC

ADDR_82ECE3:
	LDA.w #$0020
	STA.w $04A0,x
	INC.w $0318,x
ADDR_82ECEC:
	LDA.w $1FCE
	AND.w #$0001
	BNE.b ADDR_82ED17
	LDA.w $03C0,x
	CLC
	ADC.w $04D8,x
	STA.w $0104
	LDA.w $03F8,x
	STA.w $0106
	LDA.w $04A0,x
	STA.w $0108
	ASL
	STA.b $0E
	LDA.w #$2200
	STA.w $010A
	JSR.w ADDR_82ED3A
	RTS

ADDR_82ED17:
	LDA.w $0430,x
	SEC
	SBC.w $04D8,x
	STA.w $0104
	LDA.w $0468,x
	STA.w $0106
	LDA.w $04A0,x
	STA.w $0108
	ASL
	STA.b $0E
	LDA.w #$2300
	STA.w $010A
	JSR.w ADDR_82ED3A
	RTS

ADDR_82ED3A:
	STX.b $4C
	STZ.b $00
	STZ.b $04
	STZ.b $0C
	LDA.w $0108
	ASL
	ASL
	STA.b $12
	LDA.w #$0080
	STA.w !REGISTER_DividendLo
	SEP.b #$20
	LDA.w $0108
	STA.w !REGISTER_Divisor
	REP.b #$20
	LDA.w $0106
	SEC
	SBC.w $0108
	BPL.b ADDR_82ED65
	LDA.w #$0000
ADDR_82ED65:
	LDX.w $010A
	STA.l $7E0000,x
	INX
	LDA.w #$00FF
	STA.l $7E0000,x
	INX
	INX
	LDA.w !REGISTER_QuotientLo
	STA.b $06
	LSR
	LSR
	STA.b $10
	LDA.w !REGISTER_ProductOrRemainderLo
	STA.b $0C
ADDR_82ED84:
	LDA.b $00
	LSR
	LSR
	TAY
	LDA.w $F1D3,y
	AND.w #$00FF
	ASL
	ASL
	STA.w !REGISTER_DividendLo
	SEP.b #$20
	LDA.b $06
	STA.w !REGISTER_Divisor
	REP.b #$20
	LDA.w #$0001
	STA.l $7E0000,x
	INX
	ASL
	ASL
	ASL
	ASL
	LDA.w !REGISTER_QuotientLo
	STA.b $08
	STA.b $0A
	LDA.w !REGISTER_ProductOrRemainderLo
	ASL
	CMP.b $06
	BCC.b ADDR_82EDBA
	INC.b $08
ADDR_82EDBA:
	LDA.b $08
	CLC
	ADC.b $0A
	BEQ.b ADDR_82EDDD
	SEP.b #$20
	LDA.w $0104
	SEC
	SBC.b $08
	STA.l $7E0000,x
	INX
	LDA.w $0104
	CLC
	ADC.b $0A
	STA.l $7E0000,x
	INX
	REP.b #$20
	BRA.b ADDR_82EDE6

ADDR_82EDDD:
	LDA.w #$00FF
	STA.l $7E0000,x
	INX
	INX
ADDR_82EDE6:
	LDA.b $0C
	CLC
	ADC.b $04
	CMP.w $0108
	BCC.b ADDR_82EDF6
	INC.b $00
	SEC
	SBC.w $0108
ADDR_82EDF6:
	STA.b $04
	LDA.b $06
	CLC
	ADC.b $00
	CMP.w #$0100
	BCC.b ADDR_82EE05
	LDA.w #$0100
ADDR_82EE05:
	STA.b $00
	DEC.b $0E
	LDA.b $0E
	BMI.b ADDR_82EE10
	BRL.w ADDR_82ED84

ADDR_82EE10:
	LDA.w $0106
	CLC
	ADC.w $0108
	STA.b $00
	LDA.w #$00F0
	SEC
	SBC.b $00
	CMP.w #$007F
	BCC.b ADDR_82EE3D
	SEC
	SBC.w #$007F
	STA.b $00
	LDA.w #$007F
	STA.l $7E0000,x
	INX
	LDA.w #$00FF
	STA.l $7E0000,x
	INX
	INX
	LDA.b $00
ADDR_82EE3D:
	STA.l $7E0000,x
	INX
	LDA.w #$00FF
	STA.l $7E0000,x
	LDX.b $4C
	RTS

ADDR_82EE4C:
	STX.b $4C
	STZ.b $00
	STZ.b $04
	STZ.b $0C
	LDA.w $0106
	SEC
	SBC.w $0108
	BPL.b ADDR_82EE60
	LDA.w #$0000
ADDR_82EE60:
	LDX.w $010A
	STA.l $7E0000,x
	INX
	LDA.w #$00FF
	STA.l $7E0000,x
	INX
	INX
ADDR_82EE71:
	LDY.b $00
	LDA.w #$0001
	STA.l $7E0000,x
	INX
	LDA.w $F1D3,y
	AND.w #$00FF
	STA.b $08
	SEP.b #$20
	LDA.w $0104
	SEC
	SBC.b $08
	STA.l $7E0000,x
	INX
	LDA.w $0104
	CLC
	ADC.b $08
	STA.l $7E0000,x
	INX
	REP.b #$20
	INC.b $00
	LDA.b $00
	CMP.w #$0040
	BCS.b ADDR_82EEA9
	BRL.w ADDR_82EE71

ADDR_82EEA9:
	BRL.w ADDR_82EE10

ADDR_82EEAC:
	LDA.w $02E0,x
	TAY
	LDA.w $0318,y
	CMP.w #$0005
	BCC.b ADDR_82EEBB
	INC.w $0318,x
ADDR_82EEBB:
	RTS

ADDR_82EEBC:
	LDA.w $02E0,x
	TAY
	LDA.w $0318,y
	CMP.w #$0006
	BCC.b ADDR_82EECB
	INC.w $0318,x
ADDR_82EECB:
	LDA.w $1FCE
	AND.w #$0001
	BNE.b ADDR_82EEE3
	DEC.w $0548,x
	LDA.w $0548,x
	BPL.b ADDR_82EF2D
	LDA.w #$0023
	STA.w $0548,x
	BRA.b ADDR_82EF2D

ADDR_82EEE3:
	INC.w $0510,x
	LDA.w $0510,x
	CMP.w #$0024
	BCC.b ADDR_82EEF4
	LDA.w #$0000
	STA.w $0510,x
ADDR_82EEF4:
	LDA.w $0510,x
	STA.b $00
	JSR.w ADDR_82EF6E
	STA.b $08
	LDA.w $0510,x
	STA.b $00
	JSR.w ADDR_82EF66
	STA.b $0A
	LDA.w $03C0,x
	CLC
	ADC.b $0A
	STA.w $0104
	LDA.w $03F8,x
	CLC
	ADC.b $08
	STA.w $0106
	LDA.w $04A0,x
	STA.w $0108
	ASL
	STA.b $0E
	LDA.w #$2200
	STA.w $010A
	JSR.w ADDR_82EE4C
	RTS

ADDR_82EF2D:
	LDA.w $0548,x
	STA.b $00
	JSR.w ADDR_82EF6E
	STA.b $08
	LDA.w $0548,x
	STA.b $00
	JSR.w ADDR_82EF66
	STA.b $0A
	LDA.w $0430,x
	CLC
	ADC.b $0A
	STA.w $0104
	LDA.w $0468,x
	CLC
	ADC.b $08
	STA.w $0106
	LDA.w $04A0,x
	STA.w $0108
	ASL
	STA.b $0E
	LDA.w #$2300
	STA.w $010A
	JSR.w ADDR_82EE4C
	RTS

ADDR_82EF66:
	LDA.b $00
	CLC
	ADC.w #$0009
	STA.b $00
ADDR_82EF6E:
	STZ.b $02
	LDA.b $00
	CMP.w #$0024
	BCC.b ADDR_82EF7C
	SBC.w #$0024
	STA.b $00
ADDR_82EF7C:
	CMP.w #$0012
	BCC.b ADDR_82EF88
	SBC.w #$0012
	STA.b $00
	INC.b $02
ADDR_82EF88:
	CMP.w #$0009
	BCC.b ADDR_82EF95
	LDA.w #$0012
	SEC
	SBC.b $00
	STA.b $00
ADDR_82EF95:
	LDY.b $00
	LDA.w $F213,y
	AND.w #$00FF
	LDY.b $02
	BEQ.b ADDR_82EFA5
	EOR.w #$FFFF
	INC
ADDR_82EFA5:
	STA.b $00
	RTS

ADDR_82EFA8:
	LDA.w $1FCE
	AND.w #$0007
	BNE.b ADDR_82EFCA
	LDA.w $0270,x
	DEC
	BPL.b ADDR_82EFBA
	STZ.b $4E,x
	BRA.b ADDR_82EFCA

ADDR_82EFBA:
	STA.w $0270,x
	ORA.w #$00E0
	SEP.b #$20
	STA.w $1F98
	STA.w !REGISTER_FixedColorData
	REP.b #$20
ADDR_82EFCA:
	BRL.w ADDR_82EECB

;--------------------------------------------------------------------

ADDR_82EFCD:
	STX.b $1E
	LDX.w #$0008
	LDY.w #$0002
	JSL.l $8289D2
	BCS.b ADDR_82F030
	LDA.w #$009A
	JSR.w $82852F
	BMI.b ADDR_82F030
	LDA.w #$0010
	STA.w $04A0,x
	LDA.w #$0040
	STA.w $02A8,x
ADDR_82EFEF:
	LDA.w $02A8,x
	ORA.w #$0002
	STA.w $02A8,x
	LDA.b $08
	STA.w $0238,x
	STA.b $86,x
	LDA.b $12
	STA.w $0350,x
	STA.b $BE,x
	LDA.b $16
	STA.w $03C0,x
	TAY
	LDA.w $D1DD,y
	STA.w $03F8,x
	STZ.w $0318,x
	LDA.b $14
	STA.w $0510,x
	STZ.w $0430,x
	STZ.w $0468,x
	STZ.w $0158,x
	LDA.b $1E
	STA.w $0548,x
	STZ.w $02E0,x
	TXA
	CLC
	LDX.b $1E
	RTL

ADDR_82F030:
	LDX.b $1E
	SEC
	RTL

;--------------------------------------------------------------------

ADDR_82F034:
	JSR.w $828A08
	RTL

ADDR_82F038:
	LDA.w $1FCE
	AND.w #$0003
	BNE.b ADDR_82F04A
	LDA.w $0510,x
	INC
	AND.w #$0007
	STA.w $0510,x
ADDR_82F04A:
	STZ.w $0102
	JSR.w ADDR_82F0ED
	LDA.w $0102
	BEQ.b ADDR_82F059
	JSR.w ADDR_82F4F7
	RTL

ADDR_82F059:
	LDY.w $0430,x
	LDA.w $F21D,y
	AND.w #$00FF
	TAY
	LDA.w $FAF9,y
	CMP.w $0468,x
	BEQ.b ADDR_82F0AA
	LDY.w $0122
	BMI.b ADDR_82F076
	DEY
	STY.w $0122
	BRA.b ADDR_82F081

ADDR_82F076:
	LDA.w $0388,x
	BEQ.b ADDR_82F080
	STA.w $0430,x
	BRA.b ADDR_82F0AA

ADDR_82F080:
	RTL

ADDR_82F081:
	PHA
	LDA.w $0430,x
	STA.w $0388,x
	PLA
	STA.w $0468,x
	AND.w #$FFF0
	STA.b $00
	LDA.w #$007F
	STA.b $02
	LDA.w #$0400
	STA.b $08
	LDY.w $03C0,x
	LDA.w $D1CD,y
	TAY
	STX.b $0A
	JSL.l $808D8B
	LDX.b $0A
ADDR_82F0AA:
	LDA.w $0318,x
	CMP.w #$0004
	BNE.b ADDR_82F0BC
	JSR.w $82888F
	BCC.b ADDR_82F0BF
	STZ.b $4E,x
	BRL.w ADDR_82F034

ADDR_82F0BC:
	JSR.w ADDR_82F4F7
ADDR_82F0BF:
	LDY.w $0430,x
	LDA.w $F21D,y
	AND.w #$00FF
	TAY
	LDA.w $FAF7,y
	STA.b $00
	JSR.w $828825
	LDA.w $02A8,x
	AND.w #$4000
	STA.w $0006,y
	LDA.w #$8018
	STA.w $0008,y
	LDA.w #$0004
	STA.w $0004,y
	LDA.w $03F8,x
	STA.w $000E,y
	RTL

;--------------------------------------------------------------------

ADDR_82F0ED:
	LDA.w $0318,x
	PHX
	ASL
	TAX
	LDA.l UNK_82F0FD,x
	PLX
	STA.b $00
	JMP.w ($0000)

UNK_82F0FD:
	dw ADDR_82F10B
	dw ADDR_82F116
	dw ADDR_82F159
	dw ADDR_82F1DF
	dw ADDR_82F252
	dw ADDR_82F1DF
	dw ADDR_82F1B9

ADDR_82F10B:
	LDA.b $86,x
	SEC
	SBC.w $0BA4
	CMP.w #$00D8
	BCS.b ADDR_82F143
ADDR_82F116:
	LDA.w $1FCE
	AND.w #$0003
	BNE.b ADDR_82F13E
	DEC.w $04A0,x
	BPL.b ADDR_82F13E
	LDY.w #$0005
	LDA.w $0318,x
	BNE.b ADDR_82F137
	PHX
	LDY.w #$F233
	JSL.l $809DB7
	PLX
	LDY.w #$0004
ADDR_82F137:
	TYA
	STA.w $04A0,x
	INC.w $0318,x
ADDR_82F13E:
	LDA.w $0318,x
	BNE.b ADDR_82F147
ADDR_82F143:
	INC.w $0102
	RTS

ADDR_82F147:
	LDY.w #$0000
	LDA.b $4E,x
	CMP.w #$009A
	BEQ.b ADDR_82F154
	LDY.w #$0006
ADDR_82F154:
	TYA
	STA.w $0430,x
	RTS

ADDR_82F159:
	LDA.w $02A8,x
	AND.w #$FFFD
	STA.w $02A8,x
	LDA.w $1FCE
	AND.w #$0007
	BNE.b ADDR_82F1AB
	DEC.w $04A0,x
	BPL.b ADDR_82F187
	LDA.w #$000A
	SEC
	SBC.w $1FDA
	SBC.w $1FDA
	STA.w $04A0,x
	LDA.w #$0006
	STA.w $0318,x
	LDY.w #$0000
	BRA.b ADDR_82F1AF

ADDR_82F187:
	LDA.w $04A0,x
	CMP.w #$0001
	BNE.b ADDR_82F1AB
	LDA.b $BE,x
	SEC
	SBC.w #$0001
	STA.b $12
	LDA.b $86,x
	SEC
	SBC.w #$0010
	STA.b $08
	JSR.w ADDR_82F2DB
	LDA.w $02A8,x
	AND.w #$FFBF
	STA.w $02A8,x
ADDR_82F1AB:
	LDA.w $04A0,x
	TAY
ADDR_82F1AF:
	LDA.w $F22D,y
	AND.w #$00FF
	STA.w $0430,x
	RTS

ADDR_82F1B9:
	LDA.w $1FCE
	AND.w #$0003
	BNE.b ADDR_82F1D8
	DEC.w $04A0,x
	BPL.b ADDR_82F1D8
	LDA.w #$000F
	STA.w $04A0,x
	STZ.w $0318,x
	LDA.w $02A8,x
	ORA.w #$0042
	STA.w $02A8,x
ADDR_82F1D8:
	LDA.w #$000A
	STA.w $0430,x
	RTS

ADDR_82F1DF:
	LDA.w $02A8,x
	BIT.w #$0040
	BEQ.b ADDR_82F1FA
	LDA.b $BE,x
	SEC
	SBC.w #$0001
	STA.b $12
	LDA.b $86,x
	SEC
	SBC.w #$0010
	STA.b $08
	JSR.w ADDR_82F2DB
ADDR_82F1FA:
	LDA.w $02E0,x
	TAY
	LDA.w $1FEE,y
	CLC
	ADC.w $0270,x
	STA.w $1FEE,y
	LDA.w #$0003
	STA.w $0158,x
	LDA.w #$0002
	STA.w $04D8,x
	LDA.w #$0020
	STA.w $04A0,x
	STZ.w $0238,x
	LDA.w $02A8,x
	AND.w #$B2FF
	STA.w $02A8,x
	LDA.w #$FFFD
	STA.w $0190,x
	LDA.w #$0001
	STA.w $01C8,x
	INC.w $0318,x
	PHX
	LDY.w #$F23C
	JSL.l $809DB7
	PLX
	LDA.w #$000C
	STA.w $02E0,x
	LDA.w #$000C
	STA.w $0430,x
	LDA.w #$0014
	JSL.l $80850D
	RTS

ADDR_82F252:
	LDA.w #$000C
	STA.w $0430,x
	LDA.b $86,x
	CLC
	ADC.w $0158,x
	STA.b $86,x
	LDA.w $02A8,x
	BIT.w #$0400
	BNE.b ADDR_82F2C5
	LDA.w $1FCE
	AND.w #$0003
	BNE.b ADDR_82F27E
	LDA.w $0190,x
	BMI.b ADDR_82F27A
	CMP.w #$0005
	BCS.b ADDR_82F27E
ADDR_82F27A:
	INC
	STA.w $0190,x
ADDR_82F27E:
	LDA.b $BE,x
	CLC
	ADC.w $0190,x
	STA.b $BE,x
	SBC.w $0BA6
	CMP.w #$00AC
	BCC.b ADDR_82F2B2
	LDA.w $02A8,x
	BIT.w #$0800
	BNE.b ADDR_82F2BB
	ORA.w #$0800
	STA.w $02A8,x
	STZ.w $0158,x
	LDA.b $BE,x
	AND.w #$FFF8
	STA.b $BE,x
	LDA.w #$FFFE
	STA.w $0190,x
	LDA.w #$0001
	STA.w $01C8,x
ADDR_82F2B2:
	LDA.w $02A8,x
	BIT.w #$0800
	BNE.b ADDR_82F2D4
	RTS

ADDR_82F2BB:
	LDA.w $0548,x
	TAY
	LDA.w #$FFFF
	STA.w $0548,y
ADDR_82F2C5:
	LDA.w $02A8,x
	ORA.w #$0400
	STA.w $02A8,x
	STZ.w $0190,x
	STZ.w $01C8,x
ADDR_82F2D4:
	LDA.w #$000E
	STA.w $0430,x
	RTS

;--------------------------------------------------------------------

ADDR_82F2DB:
	STX.b $4A
	LDA.w #$009C
	JSR.w $82852F
	LDA.b $08
	STA.b $86,x
	LDA.b $12
	SEC
	SBC.w #$0030
	STA.b $BE,x
	STZ.w $0318,x
	STZ.w $02E0,x
	STZ.w $0270,x
	LDA.w #$0001
	STA.w $0190,x
	LDA.w #$0004
	STA.w $0158,x
	LDX.b $4A
	RTS

;--------------------------------------------------------------------

ADDR_82F307:
	JSR.w $828848
	BCC.b ADDR_82F30E
	STZ.b $4E,x
ADDR_82F30E:
	LDA.b $86,x
	CLC
	ADC.w $0158,x
	STA.b $86,x
	LDA.w $02E0,x
	BNE.b ADDR_82F351
	LDA.w $1FCE
	AND.w #$0003
	BNE.b ADDR_82F32F
	LDA.w $0190,x
	CMP.w #$0005
	BCS.b ADDR_82F32F
	INC
	STA.w $0190,x
ADDR_82F32F:
	LDA.b $BE,x
	CLC
	ADC.w $0190,x
	STA.b $BE,x
	SBC.w $0BA6
	CMP.w #$007A
	BCC.b ADDR_82F39F
	LDA.b $BE,x
	AND.w #$FFF8
	STA.b $BE,x
	INC.w $02E0,x
	STZ.w $0190,x
	STZ.w $0158,x
	BRA.b ADDR_82F39F

ADDR_82F351:
	LDA.b $42
	STA.w $0104
ADDR_82F356:
	LDY.w #$0033
	LDA.w #$8000
	JSL.l $818586
	BCC.b ADDR_82F39A
	LDY.b $16
	LDA.w $02A8,y
	BIT.w #$8000
	BEQ.b ADDR_82F37A
	CPY.w #$0002
	BNE.b ADDR_82F39A
	LDA.b $42
	AND.w #$FFFD
	STA.b $42
	BRA.b ADDR_82F356

ADDR_82F37A:
	ORA.w #$1000
	STA.w $02A8,y
	LDA.w #$000E
	STA.w $0318,y
	LDA.w #$0001
	STA.w $0158,y
	LDA.w $02A8,x
	AND.w #$4000
	BNE.b ADDR_82F39A
	LDA.w #$FFFF
	STA.w $0158,y
ADDR_82F39A:
	LDA.w $0104
	STA.b $42
ADDR_82F39F:
	LDA.w #$F416
	STA.b $00
	LDA.b $BE,x
	STA.w $0104
	CLC
	ADC.w #$0030
	STA.b $BE,x
	JSR.w $828825
	LDA.w $0104
	STA.b $BE,x
	LDA.w #$0000
	STA.w $0006,y
	LDA.w #$0000
	STA.w $000E,y
	LDA.w #$0000
	STA.w $0008,y
	LDA.w #$0003
	STA.w $0004,y
	RTL

;--------------------------------------------------------------------

ADDR_82F3D0:
	STX.b $1E
	LDX.w #$0008
	LDY.w #$0002
	JSL.l $8289D2
	BCS.b ADDR_82F3FE
	LDA.w #$009E
	JSR.w $82852F
	BMI.b ADDR_82F3FE
	LDA.w #$0010
	STA.w $04D8,x
	LDA.w #$0010
	STA.w $04A0,x
	LDA.w #$3002
	STA.w $02A8,x
	JMP.w ADDR_82EFEF

;--------------------------------------------------------------------

ADDR_82F3FB:
	STZ.w $0388,x
ADDR_82F3FE:
	LDX.b $1E
	SEC
	RTL

;--------------------------------------------------------------------

ADDR_82F402:
	JSR.w $828A08
	RTL

ADDR_82F406:
	LDA.w $1FCE
	AND.w #$0003
	BNE.b ADDR_82F418
	LDA.w $0510,x
	INC
	AND.w #$0007
	STA.w $0510,x
ADDR_82F418:
	STZ.w $0102
	STZ.w $010A
	STZ.b $4C
	JSR.w ADDR_82F523
	LDA.w $0102
	BEQ.b ADDR_82F42C
	JSR.w ADDR_82F4F7
	RTL

ADDR_82F42C:
	LDY.w $0430,x
	LDA.w $F251,y
	AND.w #$00FF
	TAY
	LDA.w $F49F,y
	CMP.w $0468,x
	BEQ.b ADDR_82F47D
	LDY.w $0122
	BMI.b ADDR_82F449
	DEY
	STY.w $0122
	BRA.b ADDR_82F454

ADDR_82F449:
	LDA.w $0388,x
	BEQ.b ADDR_82F453
	STA.w $0430,x
	BRA.b ADDR_82F47D

ADDR_82F453:
	RTL

ADDR_82F454:
	PHA
	LDA.w $0430,x
	STA.w $0388,x
	PLA
	STA.w $0468,x
	AND.w #$FFF0
	STA.b $00
	LDA.w #$007F
	STA.b $02
	LDA.w #$0400
	STA.b $08
	LDY.w $03C0,x
	LDA.w $D1CD,y
	TAY
	STX.b $0A
	JSL.l $808D8B
	LDX.b $0A
ADDR_82F47D:
	LDA.w $0318,x
	CMP.w #$0004
	BNE.b ADDR_82F48F
	JSR.w $82888F
	BCC.b ADDR_82F492
	STZ.b $4E,x
	BRL.w ADDR_82F402

ADDR_82F48F:
	JSR.w ADDR_82F4F7
ADDR_82F492:
	LDA.w $0430,x
	TAY
	LDA.w $F251,y
	AND.w #$00FF
	CLC
	ADC.w $010A
	TAY
	LDA.w $F49D,y
	STA.b $00
	JSR.w $828825
	LDA.w $02A8,x
	AND.w #$2000
	ASL
	STA.w $0006,y
	LDA.b $4C
	STA.w $0008,y
	LDA.w #$0004
	STA.w $0004,y
	LDA.w $03F8,x
	STA.w $000E,y
	LDA.w $0468,x
	AND.w #$0001
	BEQ.b ADDR_82F4F6
	LDA.w $0430,x
	TAY
	LDA.w $F252,y
	AND.w #$00FF
	TAY
	LDA.w $F49D,y
	STA.b $00
	JSR.w $828825
	LDA.w #$0000
	STA.w $0006,y
	LDA.w #$0000
	STA.w $000E,y
	LDA.b $4C
	STA.w $0008,y
	LDA.w #$0004
	STA.w $0004,y
ADDR_82F4F6:
	RTL

;--------------------------------------------------------------------

ADDR_82F4F7:
	LDA.w $0510,x
	TAY
	LDA.w $9667,y
	AND.w #$00FF
	STA.w $0104
	LDA.w $0350,x
	SEC
	SBC.w $0104
	SEC
	SBC.w $0BBA
	CLC
	ADC.w $0BA6
	STA.b $BE,x
	LDA.w $0238,x
	SEC
	SBC.w $0BB8
	CLC
	ADC.w $0BA4
	STA.b $86,x
	RTS

ADDR_82F523:
	LDA.w $0318,x
	PHX
	ASL
	TAX
	LDA.l UNK_82F533,x
	PLX
	STA.b $00
	JMP.w ($0000)

UNK_82F533:
	dw ADDR_82F10B
	dw ADDR_82F116
	dw ADDR_82F553
	dw ADDR_82F54D
	dw ADDR_82F553
	dw ADDR_82F553
	dw ADDR_82F57F
	dw $DC1E
	dw $DC23
	dw ADDR_82F605
	dw $DC37
	dw ADDR_82F60D
	dw ADDR_82F617

ADDR_82F54D:
	LDA.w #$009A
	STA.b $4E,x
	RTS

ADDR_82F553:
	LDA.w $02A8,x
	AND.w #$FFFD
	STA.w $02A8,x
	JSL.l $82C2FD
	LDA.w #$0006
	STA.w $0318,x
	LDA.b $00
	STA.w $0270,x
	LDA.w #$000D
	SEC
	SBC.w $1FDA
	SBC.w $1FDA
	STA.w $04A0,x
	LDA.w #$0008
	STA.w $0430,x
	RTS

ADDR_82F57F:
	LDA.w $1FCE
	AND.w #$0007
	BNE.b ADDR_82F58F
	DEC.w $04A0,x
	BNE.b ADDR_82F58F
	INC.w $0318,x
ADDR_82F58F:
	STZ.w $0108
	LDY.w $0270,x
	LDA.w $0086,y
	SEC
	SBC.b $86,x
	BPL.b ADDR_82F604
	EOR.w #$FFFF
	INC
	LSR
	LSR
	STA.w $0104
	LSR
	STA.w $0106
	LDA.w $0104
	ADC.w $0106
	STA.w $0104
	LDA.w $00BE,y
	STA.w $0106
	LDA.b $BE,x
	SEC
	SBC.w $0106
	BPL.b ADDR_82F5C8
	INC.w $0108
	EOR.w #$FFFF
	INC
ADDR_82F5C8:
	STA.w $0106
	CMP.w $0104
	BCC.b ADDR_82F5DD
	LDY.w #$0000
	LDA.w $0108
	BNE.b ADDR_82F5E0
	LDY.w #$0004
	BRA.b ADDR_82F5E0

ADDR_82F5DD:
	LDY.w #$0002
ADDR_82F5E0:
	LDA.w $F24B,y
	STA.w $02E0,x
	LDA.w $F245,y
	STA.w $0430,x
	LDY.w $0270,x
	LDA.w $0086,y
	STA.w $0200,x
	LDA.w $00BE,y
	SEC
	SBC.w #$0004
	BPL.b ADDR_82F601
	LDA.w #$0000
ADDR_82F601:
	STA.w $0158,x
ADDR_82F604:
	RTS

ADDR_82F605:
	JSL.l $81FEFA
	STZ.w $04A0,x
	RTS

ADDR_82F60D:
	LDA.w #$000A
	STA.w $04A0,x
	INC.w $0318,x
	RTS

ADDR_82F617:
	LDA.w $1FCE
	AND.w #$0003
	BNE.b ADDR_82F636
	DEC.w $04A0,x
	BPL.b ADDR_82F636
	LDA.w #$0020
	STA.w $04A0,x
	STZ.w $0318,x
	LDA.w $02A8,x
	ORA.w #$0002
	STA.w $02A8,x
ADDR_82F636:
	LDA.w #$0006
	STA.w $0430,x
	RTS

;--------------------------------------------------------------------

ADDR_82F63D:
	BRL.w ADDR_82F640

ADDR_82F640:
	LDA.b $44
	AND.w #$1000
	BNE.b ADDR_82F64A
ADDR_82F647:
	BRL.w ADDR_82F687

ADDR_82F64A:
	LDA.w $0318,x
	BNE.b ADDR_82F687
	STX.b $00
	LDA.b $86,x
	SEC
	SBC.w $0BA4
	AND.w #$FFFE
	STA.b $46
	STZ.b $20,x
	STZ.b $28,x
	STZ.b $3C
	LDA.w $02A8,x
	ORA.w #$1000
	STA.w $02A8,x
	LDA.b $42
	BIT.w #$2000
	BNE.b ADDR_82F647
	LDA.w #$0080
	CMP.b $46
	BEQ.b ADDR_82F687
	BCS.b ADDR_82F681
	LDA.w #$FFFF
	BRL.w ADDR_82F70C

ADDR_82F681:
	LDA.w #$0001
	BRL.w ADDR_82F6E0

ADDR_82F687:
	LDA.w $0318,x
	PHX
	ASL
	TAX
	LDA.l UNK_82F697,x
	PLX
	STA.b $00
	JMP.w ($0000)

UNK_82F697:
	dw ADDR_82F6C7
	dw ADDR_82F6C7
	dw ADDR_82F6C7
	dw ADDR_82FF0A
	dw ADDR_82FF31
	dw ADDR_82FA22
	dw ADDR_82FAB3
	dw ADDR_82FAB8
	dw ADDR_82FABD
	dw ADDR_82F6C7
	dw ADDR_82F6C7
	dw ADDR_82F9C5
	dw ADDR_82FA65
	dw ADDR_82F9A9
	dw ADDR_82FF0A
	dw ADDR_82F9A5
	dw ADDR_82FAB3
	dw ADDR_82FAB8
	dw ADDR_82FABD
	dw ADDR_82F6C7
	dw ADDR_82F6C7
	dw ADDR_82FA9F
	dw ADDR_82FAB3
	dw ADDR_82FABD

;--------------------------------------------------------------------

ADDR_82F6C7:
	LDA.w $02A8,x
	BIT.w #$0020
	BEQ.b ADDR_82F6D3
	STZ.b $20,x
	STZ.b $28,x
ADDR_82F6D3:
	STZ.w $0158,x
	LDA.b $20,x
	BIT.w #$0100
	BNE.b ADDR_82F6E0
	BRL.w ADDR_82F702

ADDR_82F6E0:
	LDA.w $1FCE
	AND.w #$0001
	INC
	STA.w $0158,x
	LDA.b $86,x
	SEC
	SBC.w $0BA4
	CMP.w #$00D7
	BCC.b ADDR_82F6F8
	STZ.w $0158,x
ADDR_82F6F8:
	LDA.b $42
	AND.w #$0040
	BNE.b ADDR_82F731
	BRL.w ADDR_82F731

ADDR_82F702:
	LDA.b $20,x
	BIT.w #$0200
	BNE.b ADDR_82F70C
	BRL.w ADDR_82F731

ADDR_82F70C:
	LDA.w $1FCE
	AND.w #$0001
	INC
	EOR.w #$FFFF
	STA.w $0158,x
	LDA.b $86,x
	SEC
	SBC.w $0BA4
	CMP.w #$0029
	BCS.b ADDR_82F727
	STZ.w $0158,x
ADDR_82F727:
	LDA.b $42
	AND.w #$0040
	BNE.b ADDR_82F731
	BRL.w ADDR_82F731

ADDR_82F731:
	LDA.b $28,x
	AND.w $1F78,x
	BNE.b ADDR_82F73B
ADDR_82F738:
	BRL.w ADDR_82F75E

ADDR_82F73B:
	LDA.w $02A8,x
	BMI.b ADDR_82F738
	LDA.w #$0022
	JSR.w $8284BC
	LDA.w $02A8,x
	ORA.w #$8000
	STA.w $02A8,x
	LDA.w #$FFFB
	STA.w $0190,x
	LDA.w #$0001
	STA.w $01C8,x
	STA.w $02E0,x
ADDR_82F75E:
	LDA.w $0148,x
	BEQ.b ADDR_82F774
	LDA.b $20,x
	AND.w $1F7C,x
	BEQ.b ADDR_82F79A
	LDA.w $1FCE
	AND.w #$0003
	BNE.b ADDR_82F79A
	BRA.b ADDR_82F77E

ADDR_82F774:
	LDA.b $28,x
	AND.w $1F7C,x
	BNE.b ADDR_82F77E
	BRL.w ADDR_82F79A

ADDR_82F77E:
	LDA.w $1F68,x
	STA.b $00
	LDA.w $0144,x
	STA.b $02
	JSL.l $81A0E1
	BCS.b ADDR_82F79A
	LDA.w $02A8,x
	ORA.w #$0012
	STA.w $02A8,x
	STZ.w $03F8,x
ADDR_82F79A:
	JSL.l ADDR_82F933
	LDA.w #$0000
	SEP.b #$20
	LDA.b $21,x
	AND.b #$0F
	BEQ.b ADDR_82F7B2
	ASL
	TAY
	REP.b #$20
	LDA.w $F29D,y
	BRA.b ADDR_82F7B7

ADDR_82F7B2:
	REP.b #$20
	LDA.w #$0004
ADDR_82F7B7:
	STA.b $00
	LDA.w $0144,x
	LSR
	CLC
	ADC.b $00
	STA.b $00
	CMP.w $04A0,x
	BEQ.b ADDR_82F7D4
	LDA.w $0122
	BMI.b ADDR_82F7D4
	LDA.b $00
	STA.w $0134,x
	STA.w $04A0,x
ADDR_82F7D4:
	LDA.w $02A8,x
	AND.w #$0010
	BEQ.b ADDR_82F805
	LDY.w $0350,x
	LDA.w $1FCE
	AND.w #$0003
	CMP.w $F25B,y
	BNE.b ADDR_82F805
	LDA.w $03F8,x
	CLC
	ADC.w #$0004
	CMP.w #$000F
	BCC.b ADDR_82F802
	LDA.w $02A8,x
	AND.w #$FFEF
	STA.w $02A8,x
	LDA.w #$0000
ADDR_82F802:
	STA.w $03F8,x
ADDR_82F805:
	LDY.w $0350,x
	LDA.w $1FCE
	AND.w #$0003
	CMP.w $F25B,y
	BNE.b ADDR_82F830
	LDA.w $04D8,x
	INC
	INC
	CMP.w #$000C
	BCC.b ADDR_82F820
	LDA.w #$0000
ADDR_82F820:
	STA.w $04D8,x
	BNE.b ADDR_82F830
	LDA.w $02A8,x
	BMI.b ADDR_82F830
	LDA.w #$0032
	JSR.w $8284BC
ADDR_82F830:
	LDY.w $0350,x
	LDA.w $1FCE
	AND.w #$0003
	CMP.w $F25B,y
	BNE.b ADDR_82F855
	LDY.w $04A0,x
	LDA.w $F27B,y
	STA.w $0510,x
	LDA.w $02A8,x
	BMI.b ADDR_82F855
	LDY.w $04D8,x
	LDA.w $F26F,y
	STA.w $0430,x
ADDR_82F855:
	LDA.b $86,x
	STA.b $00
	CLC
	ADC.w #$0004
	CLC
	ADC.w $0158,x
	STA.b $86,x
	LDY.w $0318,x
	BNE.b ADDR_82F877
	SEC
	SBC.w $0BA4
	CMP.w #$0140
	BCC.b ADDR_82F877
	LDA.b $00
	STA.b $86,x
	BRA.b ADDR_82F881

ADDR_82F877:
	LDA.w $0468,x
	CLC
	ADC.w $0158,x
	STA.w $0468,x
ADDR_82F881:
	LDA.w $02A8,x
	BIT.w #$1000
	BNE.b ADDR_82F8BA
	LDA.b $44
	BIT.w #$0020
	BEQ.b ADDR_82F8BA
	BIT.w #$0010
	BNE.b ADDR_82F8BA
	LDA.b $86,x
	SEC
	SBC.w $0BA4
	CLC
	ADC.w $0BB8
	CMP.w $F263,x
	BCC.b ADDR_82F8BA
	SEC
	SBC.w $F263,x
	STA.b $00
	LDA.b $86,x
	SEC
	SBC.b $00
	STA.b $86,x
	LDA.w $0468,x
	SEC
	SBC.b $00
	STA.w $0468,x
ADDR_82F8BA:
	PHX
	LDY.w #$000B
	CPX.w #$0004
	BCS.b ADDR_82F8CE
	LDY.w $F2BD,x
	LDA.w $0318,x
	CMP.w #$0015
	BEQ.b ADDR_82F91E
ADDR_82F8CE:
	STY.w $0104
	CPX.w #$0004
	BCS.b ADDR_82F8EE
	JSL.l $80F3D4
	LDA.w $0140,x
	BEQ.b ADDR_82F8EE
	LDY.w $0350,x
	LDA.w $1FCE
	INC
	AND.w #$0003
	CMP.w $F25B,y
	BEQ.b ADDR_82F91E
ADDR_82F8EE:
	LDA.w $02A8,x
	BIT.w #$0001
	BNE.b ADDR_82F901
	LDA.w $0510,x
	JSL.l ADDR_82FAC1
	JSL.l ADDR_82FB70
ADDR_82F901:
	LDY.w $0350,x
	LDA.w $1FCE
	AND.w #$0003
	CMP.w $F25B,y
	BNE.b ADDR_82F920
	LDA.w $02A8,x
	BIT.w #$0400
	BNE.b ADDR_82F91E
	LDA.w $0430,x
	JSL.l ADDR_82FBDC
ADDR_82F91E:
	PLX
	RTL

ADDR_82F920:
	LDA.w $02A8,x
	BIT.w #$0400
	BNE.b ADDR_82F91E
	LDA.w $0430,x
	STA.b $3C
	JSL.l ADDR_82FC1B
	PLX
	RTL

;--------------------------------------------------------------------

ADDR_82F933:
	REP.b #$20
	LDA.w $01C8,x
	BEQ.b ADDR_82F9A4
	LDY.w #$0020
	LDA.w $0190,x
	BMI.b ADDR_82F945
	LDY.w #$0028
ADDR_82F945:
	CLC
	ADC.b $BE,x
	CMP.w $F26B,x
	BCS.b ADDR_82F94F
	BNE.b ADDR_82F96D
ADDR_82F94F:
	STZ.w $04D8,x
	LDA.w $02A8,x
	AND.w #$7FFF
	STA.w $02A8,x
	LDA.w #$0000
	STA.w $0190,x
	STA.w $01C8,x
	LDA.w #$0032
	JSR.w $8284BC
	LDA.w $F26B,x
ADDR_82F96D:
	STA.b $BE,x
	TYA
	STA.b $00
	INC.w $02E0,x
	LDA.w $02E0,x
	AND.w #$0003
	BNE.b ADDR_82F991
	LDA.w $0190,x
	CLC
	ADC.w $01C8,x
	BMI.b ADDR_82F98E
	CMP.w #$0008
	BCC.b ADDR_82F98E
	LDA.w #$0007
ADDR_82F98E:
	STA.w $0190,x
ADDR_82F991:
	LDY.w $0350,x
	LDA.w $1FCE
	AND.w #$0003
	CMP.w $F25B,y
	BNE.b ADDR_82F9A4
	LDA.b $00
	STA.w $0430,x
ADDR_82F9A4:
	RTL

;--------------------------------------------------------------------

ADDR_82F9A5:
	JML.l $85FFBD

;--------------------------------------------------------------------

ADDR_82F9A9:
	LDA.w $02E0,x
	DEC
	STA.w $02E0,x
	BPL.b ADDR_82F9DD
	LDA.b $42
	AND.w #$DFFF
	STA.b $42
	LDA.b $44
	AND.w #$EFFF
	STA.b $44
	STZ.w $0318,x
	BRA.b ADDR_82F9DD

ADDR_82F9C5:
	LDA.w $02E0,x
	DEC
	STA.w $02E0,x
	BPL.b ADDR_82F9DD
	LDA.w #$003F
	STA.w $02E0,x
	INC.w $0318,x
	LDA.w #$0033
	JSR.w $8284BC
ADDR_82F9DD:
	LDY.w $0350,x
	LDA.w $1FCE
	AND.w #$0003
	CMP.w $F25B,y
	BNE.b ADDR_82FA1F
	AND.w #$007E
	TAY
	LDA.w $F2C1,y
	STA.w $0430,x
	LDA.w #$0020
	STA.w $04A0,x
	STA.w $0510,x
	LDA.w $F2BD,x
	STA.w $0104
	LDY.w $0350,x
	LDA.w $1FCE
	AND.w #$0003
	CMP.w $F25B,y
	BNE.b ADDR_82FA1F
	LDA.w $1FCE
	AND.w #$007E
	TAY
	LDA.w $F2C1,y
	STA.w $0430,x
ADDR_82FA1F:
	JMP.w ADDR_82F8BA

;--------------------------------------------------------------------

ADDR_82FA22:
	JSL.l ADDR_82FA80
	LDA.w $02A8,x
	ORA.w #$0001
	STA.w $02A8,x
	STZ.w $0510,x
	LDA.w $0BA4
	SEC
	SBC.w #$0028
	CMP.b $86,x
	BCC.b ADDR_82FA48
	PHA
	LDA.w $02A8,x
	ORA.w #$0400
	STA.w $02A8,x
	PLA
ADDR_82FA48:
	SEC
	SBC.w #$00A8
	CMP.b $86,x
	BCC.b ADDR_82FA64
	LDY.w $03F8,x
	LDA.w $004E,y
	BNE.b ADDR_82FA5B
	INC.w $0318,x
ADDR_82FA5B:
	LDA.w $0BA4
	SEC
	SBC.w #$00D0
	STA.b $86,x
ADDR_82FA64:
	RTL

;--------------------------------------------------------------------

ADDR_82FA65:
	LDA.w #$0100
	STA.w $04A0,x
	STA.w $0510,x
ADDR_82FA6E:
	LDA.w $02E0,x
	DEC
	STA.w $02E0,x
	BPL.b ADDR_82FA80
	LDA.w #$000F
	STA.w $02E0,x
	INC.w $0318,x
ADDR_82FA80:
	LDY.w $0350,x
	LDA.w $1FCE
	AND.w #$0003
	CMP.w $F25B,y
	BNE.b ADDR_82FA9C
	LDA.w $1FCE
	AND.w #$000F
	ASL
	TAY
	LDA.w $F341,y
	STA.w $0430,x
ADDR_82FA9C:
	JMP.w ADDR_82F8BA

;--------------------------------------------------------------------

ADDR_82FA9F:
	LDA.w $0BA4
	CMP.w #$0080
	BCC.b ADDR_82FAB2
	LDA.b $42
	AND.w #$2000
	BNE.b ADDR_82FAB2
	JSL.l $819E7F
ADDR_82FAB2:
	RTL

;--------------------------------------------------------------------

ADDR_82FAB3:
	JSL.l $9DD0B8
	RTL

;--------------------------------------------------------------------

ADDR_82FAB8:
	JSL.l $9DD0F0
	RTL

;--------------------------------------------------------------------

ADDR_82FABD:
	JML $9DD118

;--------------------------------------------------------------------

ADDR_82FAC1:
	LDY.w $0350,x
	STA.b $3C
	CLC
	ADC.w $1FA8,y
	TAY
	LDA.w $0002,y
	CMP.w $03C0,x
	BEQ.b ADDR_82FAF9
	STA.w $03C0,x
	AND.w #$FF00
	STA.b $00
	LDA.w $0238,x
	STA.b $02
	REP.b #$20
	LDA.w #$0400
	STA.b $08
	LDY.w $0350,x
	LDA.w $1FA0,y
	TAY
	STX.b $0A
	JSL.l $808D8B
	LDX.b $0A
	DEC.w $0122
ADDR_82FAF9:
	LDA.w $0430,x
	CLC
	ADC.w #$FB19
	TAY
	LDA.w $0000,y
	AND.w #$00FF
	LSR
	TAY
	LDA.w $FB4F,y
	STA.b $FC
	LDA.w $FB4F+$02,y
	STA.b $FE
	LDA.w $1DEE
	TAY
	CLC
	ADC.w #$0010
	STA.w $1DEE
	LDA.b $86,x
	SEC
	SBC.w $0BA4
	CLC
	ADC.b $FC
	STA.w $000A,y
	LDA.b $BE,x
	SEC
	SBC.w $0BA6
	CLC
	ADC.b $FE
	STA.w $000C,y
	STY.b $46
	LDY.w $0350,x
	LDA.w $1FA8,y
	CLC
	ADC.b $3C
	CLC
	ADC.w $03F8,x
	TAY
	LDA.w $0000,y
	LDY.b $46
	STA.w $0000,y
	LDA.w $0388,x
	STA.w $000E,y
	LDA.w #$0000
	STA.w $0006,y
	JSR.w ADDR_82FC91
	CPX.w #$0003
	BCS.b ADDR_82FB66
	TXA
	LSR
	BRA.b ADDR_82FB69

ADDR_82FB66:
	LDA.w #$000F
ADDR_82FB69:
	STA.w $0004,y
	STA.w $0108
	RTL

;--------------------------------------------------------------------

ADDR_82FB70:
	LDA.w $0430,x
	CLC
	ADC.w #$FB19
	TAY
	LDA.w $0000,y
	AND.w #$00FF
	STA.b $46
	LSR
	TAY
	LDA.w $FB4F+$02,y
	STA.b $FE
	LDA.w $FB4F,y
	STA.b $FC
	LDA.w $1DEE
	TAY
	CLC
	ADC.w #$0010
	STA.w $1DEE
	LDA.b $86,x
	SEC
	SBC.w $0BA4
	CLC
	ADC.b $FC
	STA.w $000A,y
	LDA.b $BE,x
	SEC
	SBC.w $0BA6
	CLC
	ADC.b $FE
	STA.w $000C,y
	LDA.b $46
	AND.w #$0001
	ASL
	CLC
	ADC.w #$FB7F
	STA.b $00
	LDA.b ($00)
	STA.w $0000,y
	LDA.w $02A8,x
	AND.w #$4000
	STA.w $0006,y
	LDA.w #$0000
	STA.w $000E,y
	LDA.w $0108
	STA.w $0004,y
	JSR.w ADDR_82FC91
	RTL

;--------------------------------------------------------------------

ADDR_82FBD9:
	LDY.w #$0000
ADDR_82FBDC:
	REP.b #$30
	STY.b $3A
	STA.b $3C
	CLC
	ADC.w #$FB19
	TAY
	LDA.w $0000,y
	CMP.w $0548,x
	BEQ.b ADDR_82FC17
	STA.w $0548,x
	AND.w #$FF00
	STA.b $00
	LDA.w #$007E
	STA.b $02
	REP.b #$20
	LDA.w #$0800
	STA.b $08
	STX.b $3E
	LDY.b $3A
	LDA.w $F361,y
	TAY
	JSL.l $808D8B
	DEC.w $0122
	DEC.w $0122
	LDX.b $3E
ADDR_82FC17:
	LDA.b $3C
	LDY.b $3A
ADDR_82FC1B:
	LDA.w $F369,y
	STA.b $02
	LDA.b $3C
	CLC
	ADC.w #$FB19
	TAY
	LDA.w $0000,y
	AND.w #$00FF
	LSR
	TAY
	LDA.w $FB4F,y
	STA.b $FC
	LDA.w $FB4F+$02,y
	STA.b $FE
	LDA.w $02A8,x
	BIT.w #$4000
	BEQ.b ADDR_82FC49
	LDA.b $FC
	DEC
	EOR.w #$FFFF
	STA.b $FC
ADDR_82FC49:
	LDA.w $1DEE
	TAY
	CLC
	ADC.w #$0010
	STA.w $1DEE
	LDA.b $86,x
	SEC
	SBC.w $0BA4
	CLC
	ADC.b $FC
	STA.w $000A,y
	LDA.b $BE,x
	SEC
	SBC.w $0BA6
	CLC
	ADC.b $FE
	STA.w $000C,y
	LDA.b $3C
	CLC
	ADC.w #$FB17
	STA.b $00
	LDA.b ($00)
	STA.w $0000,y
	LDA.w $02A8,x
	AND.w #$4000
	STA.w $0006,y
	LDA.b $02
	STA.w $000E,y
	LDA.w $0104
	STA.w $0004,y
	JSR.w ADDR_82FC91
	RTL

;--------------------------------------------------------------------

ADDR_82FC91:
	LDA.w $02A8,x
	BIT.w #$2000
	BNE.b ADDR_82FCA0
	LDA.b $44
	AND.w #$0010
	BEQ.b ADDR_82FCA3
ADDR_82FCA0:
	LDA.w #$8010
ADDR_82FCA3:
	STA.w $0008,y
	RTS

;--------------------------------------------------------------------

ADDR_82FCA7:
	LDA.w #$FFFD
	STA.b $18
	LDA.w $1FCE
	AND.w #$000F
	CLC
	ADC.w #$00B8
	STA.b $08
	LDA.w $0BA4
	CLC
	ADC.w #$0140
	STA.b $00
	BRL.w ADDR_82FD32

ADDR_82FCC4:
	LDA.w #$0003
	STA.b $18
	LDA.w $1FCE
	AND.w #$000F
	CLC
	ADC.w #$00A0
	STA.b $08
	LDA.w $0BA4
	SEC
	SBC.w #$0040
	STA.b $00
	BRA.b ADDR_82FD32

ADDR_82FCE0:
	LDA.w #$FFFD
	STA.b $18
	LDA.w $1FCE
	AND.w #$000F
	CLC
	ADC.w #$0043
	STA.b $08
	LDA.w $0BA4
	CLC
	ADC.w #$0140
	STA.b $00
	BRA.b ADDR_82FD60

ADDR_82FCFC:
	LDA.w #$0003
	STA.b $18
	LDA.w $1FCE
	AND.w #$000F
	CLC
	ADC.w #$0053
	STA.b $08
	LDA.w $0BA4
	SEC
	SBC.w #$0040
	STA.b $00
	BRA.b ADDR_82FD60

ADDR_82FD18:
	LDA.w #$FFFD
	STA.b $18
	LDA.w $1FCE
	AND.w #$000F
	CLC
	ADC.w #$00B8
	STA.b $08
	LDA.w $0BA4
	CLC
	ADC.w #$0140
	STA.b $00
ADDR_82FD32:
	STZ.b $FC
	LDA.w $0124
	BMI.b ADDR_82FD3A
	RTL

ADDR_82FD3A:
	LDA.w #$0000
	STA.b $10
	JSR.w ADDR_82FDFC
	STX.b $1E
	BRA.b ADDR_82FD80

ADDR_82FD46:
	LDA.w #$0004
	STA.b $18
	LDA.w $1FCE
	AND.w #$000F
	CLC
	ADC.w #$0043
	STA.b $08
	LDA.w $0BA4
	SEC
	SBC.w #$0040
	STA.b $00
ADDR_82FD60:
	LDA.w #$2000
	STA.b $FC
	LDA.w $0124
	BMI.b ADDR_82FD6B
	RTL

ADDR_82FD6B:
	LDA.w #$0006
	STA.b $10
	JSR.w ADDR_82FDFC
	BMI.b ADDR_82FD78
	BRL.w ADDR_82FDF9

ADDR_82FD78:
	DEC.w $010C
	DEC.w $010E
	STX.b $1E
ADDR_82FD80:
	LDX.w #$000A
	LDY.w #$0000
	JSR.w $8289E0
	BCS.b ADDR_82FDF9
	LDA.w #$005C
	JSR.w $82852F
	BMI.b ADDR_82FDF9
	LDY.b $16
	TYA
	STA.w $04A0,x
	LDA.w $D1DD,y
	STA.w $0388,x
	LDA.w $D1CD,y
	LDY.b $10
	STA.w $1FA0,y
	LDA.w #$CB08
	STA.w $1FA8,y
	LDA.w #$007F
	STA.w $0238,x
	LDA.b $18
	STA.w $0468,x
	LDA.b $00
	STA.b $86,x
	LDA.b $08
	STA.b $BE,x
	LDA.b $10
	STA.w $0350,x
	TAY
	TXA
	STA.w $0124,y
	STA.w $0120
	STZ.w $03F8,x
	LDY.w #$CB08
	LDA.w $0002,y
	STA.w $03C0,x
	LDY.w #$FB19
	LDA.w $0000,y
	STA.w $0548,x
	STZ.w $0430,x
	STZ.w $04D8,x
	STZ.w $0510,x
	STZ.w $02E0,x
	LDA.b $FC
	STA.w $02A8,x
	LDA.w #$0002
	STA.w $0318,x
ADDR_82FDF9:
	LDX.b $1E
	RTL

ADDR_82FDFC:
	TAY
	LDA.w $0124,y
	RTS

;--------------------------------------------------------------------

ADDR_82FE01:
	LDA.w $0BA4
	SEC
	SBC.w #$0044
	CMP.b $86,x
	BCS.b ADDR_82FE17
	LDA.w $0BA4
	CLC
	ADC.w #$0144
	CMP.b $86,x
	BCS.b ADDR_82FE25
ADDR_82FE17:
	LDA.w $02A8,x
	BIT.w #$0002
	BEQ.b ADDR_82FE22
	BRL.w ADDR_82FEF8

ADDR_82FE22:
	BRL.w ADDR_82FEEE

ADDR_82FE25:
	LDA.w $0318,x
	PHX
	ASL
	TAX
	LDA.l UNK_82FE35,x
	PLX
	STA.b $00
	JMP.w ($0000)

UNK_82FE35:
	dw ADDR_82FE51
	dw ADDR_82FE51
	dw ADDR_82FFD4
	dw ADDR_82FF46
	dw ADDR_82FF70
	dw ADDR_82FF73
	dw ADDR_82FF88
	dw ADDR_82FFB6
	dw ADDR_82FFBA
	dw ADDR_82FFBE
	dw ADDR_82FFC5
	dw ADDR_82F9C5
	dw ADDR_82FA65
	dw ADDR_82F9A9

;--------------------------------------------------------------------

ADDR_82FE51:
	LDA.w #$0005
	STA.w $0318,x
ADDR_82FE57:
	LDY.w $0350,x
	LDA.w $1FCE
	AND.w #$0003
	CMP.w $F25B,y
	BNE.b ADDR_82FE83
	DEC.w $0122
	DEC.w $0122
	LDA.w $04D8,x
	INC
	INC
	CMP.w #$000C
	BCC.b ADDR_82FE78
	LDA.w #$0000
ADDR_82FE78:
	STA.w $04D8,x
	BNE.b ADDR_82FE83
	LDA.w #$0032
	JSR.w $8284BC
ADDR_82FE83:
	LDA.w $02A8,x
	AND.w #$0010
	BEQ.b ADDR_82FEB4
	LDY.w $0350,x
	LDA.w $1FCE
	AND.w #$0003
	CMP.w $F25B,y
	BNE.b ADDR_82FEB4
	LDA.w $03F8,x
	CLC
	ADC.w #$0004
	CMP.w #$0007
	BCC.b ADDR_82FEB1
	LDA.w $02A8,x
	AND.w #$FFEF
	STA $02A8,x
	LDA.w #$0000
ADDR_82FEB1:
	STA.w $03F8,x
ADDR_82FEB4:
	LDA.w $02A8,x
	BMI.b ADDR_82FED3
	LDY.w $0350,x
	LDA.w $1FCE
	AND.w #$0003
	CMP.w $F25B,y
	BNE.b ADDR_82FED3
	DEC.w $0122
	LDY.w $04D8,x
	LDA.w $F26F,y
	STA.w $0430,x
ADDR_82FED3:
	LDA.w $1FCE
	AND.w #$0001
	BNE.b ADDR_82FEE3
	LDA.b $86,x
	CLC
	ADC.w $0468,x
	STA.b $86,x
ADDR_82FEE3:
	LDA.b $86,x
	CLC
	ADC.w #$0004
	STA.b $86,x
ADDR_82FEEB:
	JMP.w ADDR_82F8BA

ADDR_82FEEE:
	LDA.w $04A0,x
	TAY
	LDA.w #$0000
	STA.w $010C,y
ADDR_82FEF8:
	LDY.w $0350,x
	STZ.w $010C
	STZ.w $010E
	LDA.w #$FFFF
	STA.w $0124,y
	STZ.b $4E,x
	RTL

;--------------------------------------------------------------------

ADDR_82FF0A:
	JSL.l $91FD13
	LDA.b $00
	STA.w $03F8,x
	LDA.w $02A8,x
	AND.w #$BFFF
	ORA.w #$0001
	STA.w $02A8,x
	INC.w $0318,x
	LDA.w #$7FFF
	STA.w $02E0,x
	LDA.w #$0030
	STA.w $15B6,x
	JMP.w ADDR_82F8BA

;--------------------------------------------------------------------

ADDR_82FF31:
	LDA.w $02A8,x
	ORA.w #$0001
	STA.w $02A8,x
	BIT.w #$8000
	BEQ.b ADDR_82FF58
	JSL.l ADDR_82F933
	JMP.w ADDR_82F8BA

;--------------------------------------------------------------------

ADDR_82FF46:
	LDA.w $02E0,x
	TAY
	LDA.w $1FEE,y
	CLC
	ADC.w $0270,x
	STA.w $1FEE,y
	JSL.l $91FD13
ADDR_82FF58:
	LDA.w #$7FFF
	STA.w $02E0,x
	INC.w $0318,x
	LDA.w $02A8,x
	AND.w #$BFFF
	ORA.w #$0001
	STA.w $02A8,x
	BRL.w ADDR_82FEEB

;--------------------------------------------------------------------

ADDR_82FF70:
	JMP.w ADDR_82FA6E

;--------------------------------------------------------------------

ADDR_82FF73:
	LDY.w $0350,x
	LDA.w $1FCE
	AND.w #$0003
	CMP.w $F25B,y
	BNE.b ADDR_82FF85
	JSL.l $81FF07
ADDR_82FF85:
	JMP.w ADDR_82FE57

;--------------------------------------------------------------------

ADDR_82FF88:
	LDA.w $0200,x
	CLC
	ADC.w #$0004
	STA.w $0200,x
	LDY.w $0350,x
	LDA.w $1FCE
	AND.w #$0003
	CMP.w $F25B,y
	BNE.b ADDR_82FFB3
	JSL.l $81FF07
	BCS.b ADDR_82FFB3
	LDA.w $1FCE
	AND.w #$003C
	BNE.b ADDR_82FFB0
	BRA.b ADDR_82FFB6

ADDR_82FFB0:
	DEC.w $0318,x
ADDR_82FFB3:
	JMP.w ADDR_82FE57

ADDR_82FFB6:
	JSL.l $81FF1F
ADDR_82FFBA:
	JSL.l $81FF23
ADDR_82FFBE:
	JSL.l $81FF27
	JMP.w ADDR_82FE57

;--------------------------------------------------------------------

ADDR_82FFC5:
	STZ.w $0318,x
	LDA.w $02A8,x
	ORA.w #$0010
	STA.w $02A8,x
	JMP.w ADDR_82FE57

;--------------------------------------------------------------------

ADDR_82FFD4:
	LDA.b $86,x
	CLC
	ADC.w #$0004
	STA.b $86,x
	LDY.w $0350,x
	LDA.w $1FCE
	AND.w #$0003
	CMP.w $F25B,y
	BNE.b ADDR_82FFED
	STZ.w $0318,x
ADDR_82FFED:
	RTL

;--------------------------------------------------------------------

ADDR_82FFEE:
	JSR.w $8288B0
	RTL

;--------------------------------------------------------------------

ADDR_82FFF2:
	JSR.w $828A08
	RTL
