
;--------------------------------------------------------------------

if !Define_PLOK_Global_EnableCheatCodes == !TRUE
else
ADDR_80FDD7:
	db $AE
	PLP
	RTS
endif

;--------------------------------------------------------------------

ADDR_80FDDA:
	INC.w $0766
	PLP
	RTS

;--------------------------------------------------------------------

ADDR_80FDDF:
	PHP
	REP.b #$30
	LDA.w #!Define_PLOK_DataUploadType_TransferToSPC700
	LDX.w #$!Define_PLOK_SPC700_EngineStartAddress
	LDY.w #!Define_PLOK_SPC700_EngineLoc
	JSL.l CODE_87E000
	LDA.w #!Define_PLOK_DataUploadType_TransferToSPC700
	LDX.w #$!Define_PLOK_SPC700_EngineStartAddress
	LDY.w #!Define_PLOK_SPC700_SampleBankLoc
	JSL.l CODE_87E000
	PLP
	RTS

;--------------------------------------------------------------------

ADDR_80FDFE:
	PHP
	INC
	XBA
	AND.w #$FF00
	ORA.w #$0001
	JSL.l $82E18A
	PLP
	RTL

;--------------------------------------------------------------------

ADDR_80FE0D:
	PHP
	DEC
	XBA
	AND.w #$FF00
	ORA.w #$0002
	JSL.l $82E18A
	PLP
	RTL

;--------------------------------------------------------------------

ADDR_80FE1C:
	AND.w #$0FFF
	CMP.w #$0003
	BCC.b ADDR_80FE2A
	LDA.b $38
	BPL.b ADDR_80FE2A
	STZ.b $4A
ADDR_80FE2A:
	LDA.b $4A
	BPL.b ADDR_80FE4F
	AND.w #$0FFF
	CMP.w #$0002
	BNE.b ADDR_80FE4F
	LDA.w $0808
	CMP.w #$0004
	BEQ.b ADDR_80FE4F
	CMP.w #$0006
	BEQ.b ADDR_80FE4F
	LDA.w #$0028
	JSL.l $80C840
	LDA.w #$0001
	STA.b $4A
ADDR_80FE4F:
	LDA.b $4A
	AND.w #$0FFF
	RTS

;--------------------------------------------------------------------

ADDR_80FE55:
	REP.b #$30
	STX.b $50
	STY.b $52
	TXA
	LSR
	LSR
	LSR
	LSR
	STA.b $38
	TYA
	LSR
	LSR
	LSR
	LSR
	SEP.b #$20
	STA.w !REGISTER_Multiplicand
	REP.b #$20
	LDA.b $8A
	LSR
	SEP.b #$20
	STA.w !REGISTER_Multiplier
	REP.b #$20
	NOP #4
	LDA.w !REGISTER_ProductOrRemainderLo
	ASL
	CLC
	ADC.b $38
	ASL
	TAX
	STA.b $4E
	LDA.l $7E3000,x
	STA.b $38
	AND.w #$000F
	STA.b $3A
	LDA.b $38
	AND.w #$03F0
	LSR
	CLC
	ADC.b $3A
	TAX
	LDA.b $38
	AND.w #$4000
	ORA.l $7E2000,x
	STA.b $4A
	BMI.b ADDR_80FEB7
	AND.w #$0FFF
	CMP.w #$0003
	BCC.b ADDR_80FEB7
	LDA.b $38
	BPL.b ADDR_80FEB7
	STZ.b $4A
ADDR_80FEB7:
	LDA.b $4A
	AND.w #$0FFF
	RTL

;--------------------------------------------------------------------

ADDR_80FEBD:
	REP.b #$30
	STA.w $0904
	STY.w $0900
	STZ.w $08FA
	STZ.w $08FC
	STZ.w $08FE
	STZ.w $0902
	RTS

;--------------------------------------------------------------------

ADDR_80FED2:
	REP.b #$30
	LDA.w $0904
	BNE.b ADDR_80FEDC
	JMP.w ADDR_80FF6C

ADDR_80FEDC:
	CMP.w #$0002
	BEQ.b ADDR_80FF43
	LDA.w $08FA
	CMP.w $0900
	BCS.b ADDR_80FEF9
ADDR_80FEE9:
	LDA.w $08FC
	BNE.b ADDR_80FEF6
	LDA.w !REGISTER_Joypad1Hi
	AND.w #!Joypad_Select>>8
	BEQ.b ADDR_80FEE9
ADDR_80FEF6:
	JMP.w ADDR_80FF6C

ADDR_80FEF9:
	LDA.w !REGISTER_Joypad2Lo
	BIT.w #!Joypad_A
	BNE.b ADDR_80FF44
	LDA.w !REGISTER_Joypad1Lo
	AND.w #!Joypad_DPadR|!Joypad_DPadL|!Joypad_DPadD|!Joypad_DPadU|!Joypad_Start|!Joypad_Y|!Joypad_B|!Joypad_R|!Joypad_L|!Joypad_X|!Joypad_A|$000F
	CMP.w $0902
	BNE.b ADDR_80FF17
	INC.w $08FE
	LDA.w $08FE
	CMP.w #$00FF
	BNE.b ADDR_80FF43
ADDR_80FF17:
	LDA.w $08FA
	ASL
	CLC
	ADC.w $08FA
	TAX
	INC.w $08FA
	LDA.w $08FA
	STA.w $0900
	LDA.w $0902
	STA.l $7F8000,x
	LDA.w $08FE
	STA.l $7F8002,x
	LDA.w !REGISTER_Joypad1Lo
	STA.w $0902
	LDA.w #$0001
	STA.w $08FE
ADDR_80FF43:
	RTS

ADDR_80FF44:
	LDA.w $08FA
	ASL
	CLC
	ADC.w $08FA
	TAX
	STA.w $0900
	LDA.w $0902
	STA.l $7F8000,x
	LDA.w $08FE
	STA.l $7F8002,x
	LDA.w #$FFFF
	STA.l $7F8003,x
	LDA.w #$0002
	STA.w $0904
	RTS

ADDR_80FF6C:
	PHP
	REP.b #$30
	DEC.w $08FC
	BPL.b ADDR_80FF99
	LDA.w $08FA
	ASL
	CLC
	ADC.w $08FA
	TAX
	LDA.l $7F8000,x
	CMP.w #$FFFF
	BEQ.b ADDR_80FFA0
	STA.w $0902
	LDA.l $7F8002,x
	AND.w #$00FF
	STA.w $08FC
	INC.w $08FA
	DEC.w $08FC
ADDR_80FF99:
	LDA.w $0902
	STA.b $AE
	PLP
	RTS

ADDR_80FFA0:
	INC $0766
	PLP
	RTS

;--------------------------------------------------------------------

ADDR_80FFA5:
	PHP
	REP.b #$30
	LDA.w #!Define_PLOK_DataUploadType_TransferToSPC700
	LDX.w #$!Define_PLOK_SPC700_EngineStartAddress
	LDY.w #!Define_PLOK_SPC700_EngineLoc
	JSL.l CODE_87E000
	LDA.w #!Define_PLOK_DataUploadType_TransferToSPC700
	LDX.w #$!Define_PLOK_SPC700_EngineStartAddress
	LDY.w #!Define_PLOK_SPC700_SampleBankLoc
	db $22,$00								; Glitch: This routine gets cut off by the cartridge header.

;--------------------------------------------------------------------
