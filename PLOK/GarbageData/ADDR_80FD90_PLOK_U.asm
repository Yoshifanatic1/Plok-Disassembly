
;--------------------------------------------------------------------

if !Define_PLOK_Global_EnableCheatCodes == !TRUE
else
UNK_80FD90:
	db $00,$FF,$09,$02,$00
endif

;--------------------------------------------------------------------

ADDR_80FD95:
	JSL.l CODE_82E177
	PLP
	RTL

;--------------------------------------------------------------------

UNK_80FD9B:
	db $00,$00,$A0,$02,$00

;--------------------------------------------------------------------

ADDR_80FDA0:
	JSL.l CODE_87E000
	PLP
	RTS

;--------------------------------------------------------------------

ADDR_80FDA6:
	PHP
	INC
	XBA
	AND.w #$FF00
	ORA.w #$0001
	JSL.l CODE_82E177
	PLP
	RTL

;--------------------------------------------------------------------

ADDR_80FDB5:
	PHP
	DEC
	XBA
	AND.w #$FF00
	ORA.w #$0002
	JSL.l CODE_82E177
	PLP
	RTL

;--------------------------------------------------------------------

ADDR_80FDC4:
	LDA.w $08FE
	CMP.w #$00FF
	BNE.b ADDR_80FDF8
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
ADDR_80FDF8:
	RTS

;--------------------------------------------------------------------

ADDR_80FDF9:
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

ADDR_80FE21:
	PHP
	REP.b #$30
	DEC.w $08FC
	BPL.b ADDR_80FE4E
	LDA.w $08FA
	ASL
	CLC
	ADC.w $08FA
	TAX
	LDA.l $7F8000,x
	CMP.w #$FFFF
	BEQ.b ADDR_80FE55
	STA.w $0902
	LDA.l $7F8002,x
	AND.w #$00FF
	STA.w $08FC
	INC.w $08FA
	DEC.w $08FC
ADDR_80FE4E:
	LDA.w $0902
	STA.b $AE
	PLP
	RTS

ADDR_80FE55:
	INC.w $0766
	PLP
	RTS

;--------------------------------------------------------------------

ADDR_80FE5A:
	PHP
	REP.b #$30
	LDA.w #!Define_PLOK_DataUploadType_TransferToSPC700
	LDX.w #$0000
	LDY.w #!Define_PLOK_SPC700_SampleBankLoc
	JSL.l CODE_87E000
	LDA.w #!Define_PLOK_DataUploadType_TransferToSPC700
	LDX.w #$0000
	LDY.w #!Define_PLOK_SPC700_EngineLoc
	JSL.l CODE_87E000
	LDA.w #!Define_PLOK_DataUploadType_TransferToSPC700
	LDX.w #$0000
	LDY.w #(PLOK_UnsortedData_DATA_81F6E5_UnknownData-PLOK_UnsortedData_DATA_81F6E5)
	JSL.l CODE_87E000
	PLP
	RTS

;--------------------------------------------------------------------

ADDR_80FE86:
	PHP
	INC
	XBA
	AND.w #$FF00
	ORA.w #$0001
	JSL.l CODE_82E177
	PLP
	RTL

;--------------------------------------------------------------------

ADDR_80FE95:
	PHP
	DEC
	XBA
	AND.w #$FF00
	ORA.w #$0002
	JSL.l CODE_82E177
	PLP
	RTL

;--------------------------------------------------------------------

ADDR_80FEA4:
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
	BMI.b ADDR_80FEF2
	AND.w #$0FFF
	CMP.w #$0003
	BCC.b ADDR_80FEF2
	LDA.b $38
	BPL.b ADDR_80FEF2
	STZ.b $4A
ADDR_80FEF2:
	LDA.b $4A
	AND.w #$0FFF
	RTL

;--------------------------------------------------------------------

ADDR_80FEF8:
	REP.b #$30
	STA.w $0904
	STY.w $0900
	STZ.w $08FA
	STZ.w $08FC
	STZ.w $08FE
	STZ.w $0902
	RTS

;--------------------------------------------------------------------

ADDR_80FF0D:
	REP.b #$30
	LDA.w $0904
	BNE.b ADDR_80FF17
	JMP.w ADDR_80FFA7

ADDR_80FF17:
	CMP.w #$0002
	BEQ.b ADDR_80FF7E
	LDA.w $08FA
	CMP.w $0900
	BCS.b ADDR_80FF34
ADDR_80FF24:
	LDA.w $08FC
	BNE.b ADDR_80FF31
	LDA.w !REGISTER_Joypad1Hi
	AND.w #!Joypad_Select>>8
	BEQ.b ADDR_80FF24
ADDR_80FF31:
	JMP.w ADDR_80FFA7

ADDR_80FF34:
	LDA.w !REGISTER_Joypad2Lo
	BIT.w #!Joypad_A
	BNE.b ADDR_80FF7F
	LDA.w !REGISTER_Joypad1Lo
	AND.w #!Joypad_DPadR|!Joypad_DPadL|!Joypad_DPadD|!Joypad_DPadU|!Joypad_Start|!Joypad_Y|!Joypad_B|!Joypad_R|!Joypad_L|!Joypad_X|!Joypad_A|$000F
	CMP.w $0902
	BNE.b ADDR_80FF52
	INC.w $08FE
	LDA.w $08FE
	CMP.w #$00FF
	BNE.b ADDR_80FF7E
ADDR_80FF52:
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
ADDR_80FF7E:
	RTS

ADDR_80FF7F:
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

ADDR_80FFA7:					; Glitch: This part of the routine is cut off by the cartridge header in the USA version.
	PHP
	REP.b #$30
	DEC.w $08FC
	BPL.b $25
	LDA.w $08FA
	ASL
	CLC
	ADC.w $08FA
	TAX
	LDA.l $7F8000,x
	CMP.w #$FFFF
	db $F0

;--------------------------------------------------------------------
