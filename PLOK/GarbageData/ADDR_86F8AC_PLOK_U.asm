ADDR_86F8BC:
	RTL

ADDR_86F8BD:
	JSL.l $81888B
	PHP
	REP.b #$20
	SEP.b #$10
	LDX.b #$86
	PHX
	PLB
	LDA.w $0001
	CMP.w #$1900
	BCS.b ADDR_86F8DD
	STZ.w $0E70
	JSR.w $86F7FF
	PLP
	JML.l $80979A

ADDR_86F8DD:
	CMP.w #$1CC0
	BCC.b ADDR_86F8E5
	JMP.w $86F6D2

ADDR_86F8E5:
	LDA.w $0004
	CMP.w #$05C0
	BCS.b ADDR_86F8F0
	JMP.w $86F7C7

ADDR_86F8F0:
	LDX.b $15
	BPL.b ADDR_86F908
	LDX.b #$22
	STX.w !REGISTER_ColorMathInitialSettings
	LDX.b #$1F
	STX.w !REGISTER_ColorMathSelectAndEnable
	LDX.b #$FF
	STX.w !REGISTER_MainScreenWindowMask
	LDX.b #$30
	STX.w !REGISTER_ObjectAndColorWindowSettings
ADDR_86F908:
	LDA.w #$0080
	TSB.b $15
	LDA.w $0004
	CMP.w #$0600
	BCC.b ADDR_86F920
	INC.b $16
	LDA.b $16
	CMP.w #$07F0
	BNE.b ADDR_86F920
	DEC.b $16
ADDR_86F920:
	SEC
	LDA.w #$19FC
	SBC.w $007B
	BPL.b ADDR_86F92C
	LDA.w #$0000
ADDR_86F92C:
	CMP.w #$00FF
	BCC.b ADDR_86F934
	LDA.w #$00FF
ADDR_86F934:
	TAX
	STX.w !REGISTER_Window1LeftPositionDesignation
	SEC
	LDA.w #$1BC4
	SBC.w $007B
	BPL.b ADDR_86F944
	LDA.w #$0000
ADDR_86F944:
	CMP.w #$00FF
	BCC.b ADDR_86F94C
	LDA.w #$00FF
ADDR_86F94C:
	TAX
	STX.w !REGISTER_Window1RightPositionDesignation
	LDA.b $16
	LSR
	LSR
	LSR
	LSR
	TAX
	STX.w $0F64
	EOR.w #$FFFF
	INC
	CLC
	ADC.w #$06E4
	STA.b $04
	SEC
	SBC.w $007D
	CMP.w #$00E0
	BCC.b ADDR_86F970
	LDA.w #$00E0
ADDR_86F970:
	LSR
	TAX
	STX.w $0F60
	ADC.w #$0000
	TAX
	STX.w $0F62
	LDX.b #$94
	STX.w $0F65
	LDX.b #$01
	STX.w $0F66
	LDX.b #$E0
	STX.w $0F61
	STX.w $0F63
	STX.w $0F67
	LDX.b #$00
	STX.w $0F68
	LDA.w #$0002
	TSB.w $005C
	LDA.w $0004
	BMI.b ADDR_86F9CA
	LDA.w #$7100
	SEC
	SBC.b $16
	LSR
	LSR
	LSR
	LSR
	CMP.w $0004
	BCS.b ADDR_86F9CA
	LDA.w $0015
	BIT.w #$0008
	BNE.b ADDR_86F9CA
	LDA.w $00F2
	BIT.w #$0002
	BNE.b ADDR_86F9CA
	LDX.b #$25
	STX.w $0008
	BRA.b ADDR_86F9CA

ADDR_86F9C7:
	JSR.w $86F7FF
ADDR_86F9CA:
	LDA.b $0B
	STA.w $0E70
	SEP.b #$20
	LDA.w $0056
	LSR
	LSR
	AND.b #$07
	STA.b $08
	REP.b #$30
	LDA.w $0056
	ASL
	ASL
	ASL
	ASL
	AND.w #$0010
	CLC
	ADC.w #$1A00
	STA.b $01
ADDR_86F9EC:
	JSL.l $80A319
	CLC
	LDA.b $01
	ADC.w #$0020
	STA.b $01
	CMP.w #$1BC0
	BCC.b ADDR_86F9EC
	PLP
	RTL

;--------------------------------------------------------------------

; Note: Unreferenced routine? 

ADDR_86F9FF:
	PHP
	SEP.b #$10
	REP.b #$20
	LDA.w $005C
	AND.w #$00FD
	TAX
	STX.w $005C
	STX.w !REGISTER_HDMAEnable
	LDX.b #$00
	STX.w !REGISTER_ColorMathInitialSettings
	STX.w !REGISTER_ColorMathSelectAndEnable
	STX.w !REGISTER_MainScreenWindowMask
	STX.w !REGISTER_ObjectAndColorWindowSettings
	STX.w !REGISTER_Window1LeftPositionDesignation
	STX.w !REGISTER_Window1RightPositionDesignation
	LDX.b #$E0
	STX.w !REGISTER_FixedColorData
	LDA.w #$0080
	TRB.b $15
	PLP
	RTS

;--------------------------------------------------------------------

; Note: Unreferenced routine? Probably some unmaintained code, since many of the JSRs/JMPs/JSLs/JMLs point to bad addresses.

ADDR_86FA31:
	JSL.l $81888B
ADDR_86FA32:
	JSL.l $809748
	BCC.b ADDR_86FA3F
	JML.l $80979A

ADDR_86FA3F:
	JSL.l $809727
	LDX.w #$0800
	LDY.w #$0022
	JSL.l $818000
	BCC.b ADDR_86FA56
	LDA.w #$0020
	JSL.l $8E85A1
ADDR_86FA56:
	LDA.b $04
	STA.w $0050
	JSL.l $8E8272
	LDA.b $15
	BIT.w #$0002
	BEQ.b ADDR_86FA81
ADDR_86FA66:
	SEC
	LDA.b $04
	SBC.w $0050
	BMI.b ADDR_86FA7F
	CMP.w #$0010
	BCC.b ADDR_86FA7F
	LDA.w #$0002
	TRB.b $15
	STZ.b $18
	LDA.w $0050
	STA.b $04
ADDR_86FA7F:
	BRA.b ADDR_86FAC0

ADDR_86FA81:
	LDA.b $01
	STA.w $003E
	LDA.b $04
	STA.w $0040
	PHD
	LDA.w #$0000
	TCD
	JSL.l $8095A9
	PLD
	BIT.w #$001F
	BEQ.b ADDR_86FAB8
	JSL.l $8E82E2
	LDA.b $18
	BMI.b ADDR_86FAC0
	CMP.w #$0100
	BCC.b ADDR_86FAB1
	LDX.w #$0000
	LDY.w #$0022
	JSL.l $818040
ADDR_86FAB1:
	LDA.w #$0002
	TSB.b $15
	BRA.b ADDR_86FA66

ADDR_86FAB8:
	LDA.b $18
	CLC
	ADC.w #$0040
	STA.b $18
ADDR_86FAC0:
	LDX.w #$001F
	LDA.b $16
	BPL.b ADDR_86FACB
	EOR.w #$FFFF
	INC
ADDR_86FACB:
	CMP.w #$0002
	BCC.b ADDR_86FAD3
	LDX.w #$000F
ADDR_86FAD3:
	TXA
	BIT.w $0056
	BNE.b ADDR_86FAFC
	LDA.w $0056
	ROR
	ROR
	ROR
	LSR
	ADC.l !REGISTER_SoftwareLatchForHVCounter
	ADC.l !REGISTER_HCounter
	ADC.l !REGISTER_VCounter
	ADC.l $000066
	AND.w #$0007
	TAX
	LDA.l $86F95D,x
	JSL.l $808B2E
ADDR_86FAFC:
	LDA.w $0056
	BIT.w #$0007
	BNE.b ADDR_86FB43
	LDA.b $15
	BIT.w #$0020
	BNE.b ADDR_86FB43
	SEP.b #$20
	LDA.b $08
	STA.b $1D
	INC.b $1D
	LDA.b $1D
	CMP.b #$03
	BNE.b ADDR_86FB1B
	STZ.b $1D
ADDR_86FB1B:
	REP.b #$30
	LDA.b $1D
	AND.w #$00FF
	ASL
	TAX
	LDA.l $86F957,x
	STA.w $0040
	LDA.w #$008B
	STA.w $0042
	LDA.b $0B
	STA.w $003E
	JSL.l $809923
	STA.b $09
	BEQ.b ADDR_86FB51
	LDA.w #$0020
	TSB.b $15
ADDR_86FB43:
	DEC.b $09
	BNE.b ADDR_86FB51
	SEP.b #$20
	LDA.b $1D
	STA.b $08
	LDA.b #$20
	TRB.b $15
ADDR_86FB51:
	REP.b #$30
	JML.l $80A319

UNK_86FB58:
	dw $8F8E,$9390,$9792,$403F,$4241,$4243,$4041

;--------------------------------------------------------------------
