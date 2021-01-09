
	db $43
ADDR_84FEA2:
	LDX.b #$01
	STX.b $64
	JSL.l $80F5E6
	LDA.b #$00
	RTS

ADDR_84FEAD:
	STA.w !REGISTER_VRAMAddressLo
	LDA.b #$00
	BPL.b $8D
	ORA.b $43
	LDX.b #$01
	STX.b $64
	JSL.l $80F5E6
	LDA.b #$00
	PLA
	STA.w !REGISTER_VRAMAddressLo
	LDA.b #$00
	BPL.b $8D
	ORA.b $43
	LDX.b #$01
	STX.b $64
	JSL.l $80F5E6
	PLP
	RTL
	RTS
