
;--------------------------------------------------------------------

ADDR_80FE12:
if !Define_PLOK_Global_EnableCheatCodes == !TRUE
else
	CLC
	ADC.w $08FA
	TAX
	INC.w $08FA
endif
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
	RTS

;--------------------------------------------------------------------

ADDR_80FE39:
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

;--------------------------------------------------------------------

ADDR_80FE63:
	PHP
	REP.b #$30
	DEC.w $08FC
	BPL.b ADDR_80FE90
	LDA.w $08FA
	ASL
	CLC
	ADC.w $08FA
	TAX
	LDA.l $7F8000,x
	CMP.w #$FFFF
	BEQ.b ADDR_80FE97
	STA.w $0902
	LDA.l $7F8002,x
	AND.w #$00FF
	STA.w $08FC
	INC.w $08FA
	DEC.w $08FC
ADDR_80FE90:
	LDA.w $0902
	STA.b $AE
	PLP
	RTS

ADDR_80FE97:
	INC.w $0766
	PLP
	RTS

;--------------------------------------------------------------------

ADDR_80FE9C:
	PHP
	REP.b #$30
	LDA.w #!Define_PLOK_DataUploadType_TransferToSPC700
	LDX.w #$0400
	LDY.w #!Define_PLOK_SPC700_EngineLoc
	JSL.l CODE_87E000
	LDA.w #!Define_PLOK_DataUploadType_TransferToSPC700
	LDX.w #$0400
	LDY.w #!Define_PLOK_SPC700_SampleBankLoc
	JSL.l CODE_87E000
	PLP
	RTS

;--------------------------------------------------------------------

ADDR_80FEBB:
	PHP
	INC
	XBA
	AND.w #$FF00
	ORA.w #$0001
	JSL.l $82E177
	PLP
	RTL

;--------------------------------------------------------------------

ADDR_80FECA:
	PHP
	DEC
	XBA
	AND.w #$FF00
	ORA.w #$0002
	JSL.l $82E177
	PLP
	RTL

;--------------------------------------------------------------------

ADDR_80FED9:
	LDA.w #$0002
	STA.w $0904
	RTS

;--------------------------------------------------------------------

ADDR_80FEE0:
	PHP
	REP.b #$30
	DEC.w $08FC
	BPL.b ADDR_80FF0D
	LDA.w $08FA
	ASL
	CLC
	ADC.w $08FA
	TAX
	LDA.l $7F8000,x
	CMP.w #$FFFF
	BEQ.b ADDR_80FF14
	STA.w $0902
	LDA.l $7F8002,x
	AND.w #$00FF
	STA.w $08FC
	INC.w $08FA
	DEC.w $08FC
ADDR_80FF0D:
	LDA.w $0902
	STA.b $AE
	PLP
	RTS

ADDR_80FF14:
	INC.w $0766
	PLP
	RTS

;--------------------------------------------------------------------

ADDR_80FF19:
	PHP
	REP.b #$30
	LDA.w #!Define_PLOK_DataUploadType_TransferToSPC700
	LDX.w #$0400
	LDY.w #!Define_PLOK_SPC700_EngineLoc
	JSL.l CODE_87E000
	LDA.w #!Define_PLOK_DataUploadType_TransferToSPC700
	LDX.w #$0400
	LDY.w #!Define_PLOK_SPC700_SampleBankLoc
	JSL.l CODE_87E000
	PLP
	RTS

;--------------------------------------------------------------------

ADDR_80FF38:
	PHP
	INC
	XBA
	AND.w #$FF00
	ORA.w #$0001
	JSL.l $82E179
	PLP
	RTL

;--------------------------------------------------------------------

ADDR_80FF47:
	PHP
	DEC
	XBA
	AND.w #$FF00
	ORA.w #$0002
	JSL.l $82E179
	PLP
	RTL

;--------------------------------------------------------------------

ADDR_80FF56:
	dw $08FA
	TAX
	LDA.l $7F8000,x
	CMP.w #$FFFF
	BEQ.b ADDR_80FF7C
	STA.w $0902
	LDA.l $7F8002,x
	AND.w #$00FF
	STA.w $08FC
	INC.w $08FA
	DEC.w $08FC
	LDA.w $0902
	STA.b $AE
	PLP
	RTS

ADDR_80FF7C:
	INC.w $0766
	PLP
	RTS

;--------------------------------------------------------------------

ADDR_80FF81:
	PHP
	REP.b #$30
	LDA.w #!Define_PLOK_DataUploadType_TransferToSPC700
	LDX.w #$0400
	LDY.w #!Define_PLOK_SPC700_EngineLoc
	JSL.l CODE_87E000
	LDA.w #!Define_PLOK_DataUploadType_TransferToSPC700
	LDX.w #$0400
	LDY.w #!Define_PLOK_SPC700_SampleBankLoc
	JSL.l CODE_87E000
	PLP
	RTS

;--------------------------------------------------------------------

ADDR_80FFA0:
	PHP
	INC
	XBA
	AND.w #$FF00
	ORA.w #$0001
	JSL.l $82E177
	PLP
	RTL

;--------------------------------------------------------------------

ADDR_80FFAF:
	PHP
	DEC
	XBA
	AND.w #$FF00
	ORA.w #$0002
	JSL.l $82E177
	PLP
	RTL

db $00,$FF

;--------------------------------------------------------------------
