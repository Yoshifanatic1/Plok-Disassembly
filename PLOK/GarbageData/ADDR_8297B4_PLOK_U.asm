ADDR_8297B4:
	INC
	BEQ.b ADDR_8297B4
	STA.l $001CE4
	STA.w !REGISTER_APUPort0
	REP.b #$30
	PLY
	PLX
	PLP
	CLC
	RTL

ADDR_8297C5:
	REP.b #$30
	PLY
	PLX
	PLP
	SEC
	RTL

;--------------------------------------------------------------------

ADDR_8297CC:
	PHP
	SEP.b #$20
	LDA.b #$FA
ADDR_8297D1:
	CMP.w !REGISTER_APUPort0
	BNE.b ADDR_8297D1
	STA.l $001CE4
	STA.w !REGISTER_APUPort0
	REP.b #$20
	LDA.w #$0001
	STA.l $001CE0
	STA.l $001CE2
	PLP
	RTL

;--------------------------------------------------------------------

ADDR_8297EC:
	CLC
	ADC.b #$05
	TAX
	LDY.b #$05
ADDR_8297F2:
	LDA.w $06AA,x
	STA.w $070E,y
	DEX
	DEY
	BPL.b ADDR_8297F2
	LDY.b #$05
	LDX.b #$00
	LDA.w $070E,x
	BNE.b ADDR_82980D
	CPY.b #$05
	BNE.b ADDR_82980D
	LDA.b #$00
	BRA.b ADDR_829812

ADDR_82980D:
	CLC
	ADC.b #$01
	ASL
	DEY
ADDR_829812:
	STA.w !REGISTER_WriteToVRAMPortLo
	INC
	STA.b $37