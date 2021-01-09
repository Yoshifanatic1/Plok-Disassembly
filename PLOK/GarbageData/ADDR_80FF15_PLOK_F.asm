
;--------------------------------------------------------------------

if !Define_PLOK_Global_EnableCheatCodes == !TRUE
else
	db $42
	AND.w #!Joypad_DPadR|!Joypad_DPadL|!Joypad_DPadD|!Joypad_DPadU|!Joypad_Start|!Joypad_Y|!Joypad_B|!Joypad_R|!Joypad_L|!Joypad_X|!Joypad_A|$000F
	CMP.w $0902
endif
	BNE.b ADDR_00FF17
	INC.w $08FE
	LDA.w $08FE
	CMP.w #$00FF
	BNE.b ADDR_00FF43
ADDR_00FF17:
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
ADDR_00FF43:
	RTS

;--------------------------------------------------------------------

ADDR_80FF44:
	REP.b #$30
	DEC.w $08FC
	BPL.b CODE_80FF99
	LDA.w $08FA
	ASL
	CLC
	ADC.w $08FA
	TAX
	LDA.l $7F8000,x
	CMP.w #$FFFF
	BEQ.b CODE_80FFA0
	STA.w $0902
	LDA.l $7F8002,x
	AND.w #$00FF
	STA.w $08FC
	INC.w $08FA
	DEC.w $08FC
CODE_80FF99:
	LDA.w $0902
	STA.b $AE
	PLP
	RTS

CODE_80FFA0:
	INC.w $0766
	PLP
	RTS

;--------------------------------------------------------------------

CODE_80FFA5:
	PHP
	REP.b #$30
	LDA.w #!Define_PLOK_DataUploadType_TransferToSPC700
	LDX.w #$0400
	LDY.w #!Define_PLOK_SPC700_EngineLoc
	JSL.l CODE_87E000
	LDA.w #!Define_PLOK_DataUploadType_TransferToSPC700
	LDX.w #$0400
	LDY.w #!Define_PLOK_SPC700_SampleBankLoc
	db $22,$00

;--------------------------------------------------------------------
