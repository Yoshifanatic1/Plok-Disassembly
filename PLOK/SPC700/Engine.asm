
	dw $!Define_PLOK_SPC700_EngineStartAddress

base $!Define_PLOK_SPC700_EngineStartAddress
SPC700_Engine:
	CLRP
	NOP
	MOV X, #$FF
	MOV SP, X
	MOV $F1, #$30
	MOV $F2, #$6C
	MOV $F3, #$F3
	MOV $F2, #$5C
	MOV $F3, #$FF
	MOV $F2, #$0C
	MOV $F3, #$00
	MOV $F2, #$1C
	MOV $F3, #$00
	CALL CODE_1062
	CALL CODE_0708
	MOV $EB, #$1B
	MOV $EC, #$09
	MOV $ED, #$13
	MOV $EE, #$3A
	MOV $E8, #$80
	MOV $E9, #$80
	MOV $D1, #$FB
	MOV A, #$FA
	MOV $F4, A
	MOV $F5, A
CODE_0441:
	CMP A, $F4
	BNE CODE_0441
	CMP A, $F4
	BNE CODE_0441
	CALL CODE_10E8
	MOV $F2, #$6C
	MOV $F3, #$33
	MOV X, #$00
	CALL CODE_0589
	CALL CODE_04C5
CODE_045A:
	MOV X, SP
	INC X
	BNE CODE_048D
CODE_045E:
	MOV A, $F5
	CMP A, $F5
	BNE CODE_045E
	CMP A, #$55
	BEQ CODE_0494
	CALL CODE_1163
	MOV A, $0344
	CLRC
	ADC A, $FF
	MOV $0344, A
	CMP A, #$04
	BCC CODE_045A
	SETC
	SBC A, #$04
	MOV $0344, A
	MOV $F7, #$0C
	CALL CODE_04C5
	MOV $F7, #$08
	MOV $F7, #$0F
	JMP CODE_045A

CODE_048D:
	MOV A, X
	DEC A
	MOV X, #$80
	JMP CODE_12AC

CODE_0494:
	MOV A, $FF
	MOV A, $E1
CODE_0498:
	MOV Y, $FF
	BEQ CODE_0498
	SETC
	SBC A, #$08
	BPL CODE_04A3
	MOV A, #$00
CODE_04A3:
	MOV $F2, #$0C
	MOV $F3, A
	MOV $F2, #$1C
	MOV $F3, A
	OR A, #$00
	BNE CODE_0498
	MOV A, #$FF
	MOV $F2, #$5C
	MOV $F3, A
	MOV A, #$B0
	MOV $F1, A
	MOV $F2, #$6C
	MOV $F3, #$E0
	JMP CODE_12B6

;--------------------------------------------------------------------

CODE_04C5:
	INC $E6
	MOVW YA, $E2
	BEQ CODE_04EF
	BMI CODE_04DF
	MOVW YA, $E0
	ADDW YA, $E2
	BPL CODE_04DB
	MOV $E2, #$00
	MOV $E3, #$00
	MOV Y, #$7F
CODE_04DB:
	MOVW $E0, YA
	BRA CODE_04EF

CODE_04DF:
	MOVW YA, $E0
	ADDW YA, $E2
	BPL CODE_04ED
	MOV $E2, #$00
	MOV $E3, #$00
	MOV Y, #$00
CODE_04ED:
	MOVW $E0, YA
CODE_04EF:
	MOV $F2, #$5C
	MOV $F3, #$00
	MOV Y, #$00
	MOV X, #$00
	CALL CODE_0FF7
	MOV Y, #$02
	MOV X, #$10
	CALL CODE_0FF7
	MOV Y, #$04
	MOV X, #$20
	CALL CODE_0FF7
	MOV Y, #$06
	MOV X, #$30
	CALL CODE_0FF7
	MOV Y, #$08
	MOV X, #$40
	CALL CODE_0FF7
	MOV Y, #$0A
	MOV X, #$50
	CALL CODE_0FF7
	MOV Y, #$0C
	MOV X, #$60
	CALL CODE_0FF7
	MOV Y, #$0E
	MOV X, #$70
	CALL CODE_0FF7
	MOV $F2, #$4C
	MOV $F3, $D4
	MOV $D4, #$00
	MOV X, #$00
	CALL CODE_0753
	BCS CODE_056C
	MOV X, #$02
	CALL CODE_0753
	BCS CODE_056C
	MOV X, #$04
	CALL CODE_0753
	BCS CODE_056C
	MOV X, #$06
	CALL CODE_0753
	BCS CODE_056C
	MOV X, #$08
	CALL CODE_0753
	BCS CODE_056C
	MOV X, #$0A
	CALL CODE_0753
	BCS CODE_056C
	MOV X, #$0C
	CALL CODE_0753
	BCS CODE_056C
	MOV X, #$0E
	CALL CODE_0753
CODE_056C:
	MOV $F2, #$5C
	MOV $F3, $D5
	MOV $D5, #$00
	MOV A, $E1
	MOV $F2, #$0C
	MOV $F3, A
	MOV $F2, #$1C
	MOV $F3, A
	MOV $F2, #$3D
	MOV $F3, $D6
	RET

;--------------------------------------------------------------------

CODE_0588:
	RET

CODE_0589:
	MOV A, X
	CMP A, #$05
	BCS CODE_0588
	MOV Y, A
	MOV X, #$00
	MOV A, DATA_1385+y
	BEQ CODE_05A0
	MOV $31, A
	MOV A, DATA_1380+y
	MOV $30, A
	CALL CODE_0638
CODE_05A0:
	INC X
	INC X
	MOV A, DATA_138F+y
	BEQ CODE_05B1
	MOV $31+x, A
	MOV A, DATA_138A+y
	MOV $30+x, A
	CALL CODE_0638
CODE_05B1:
	INC X
	INC X
	MOV A, DATA_1399+y
	BEQ CODE_05C2
	MOV $31+x, A
	MOV A, DATA_1394+y
	MOV $30+x, A
	CALL CODE_0638
CODE_05C2:
	INC X
	INC X
	MOV A, DATA_13A3+y
	BEQ CODE_05D3
	MOV $31+x, A
	MOV A, DATA_139E+y
	MOV $30+x, A
	CALL CODE_0638
CODE_05D3:
	INC X
	INC X
	MOV A, DATA_13AD+y
	BEQ CODE_05E4
	MOV $31+x, A
	MOV A, DATA_13A8+y
	MOV $30+x, A
	CALL CODE_0638
CODE_05E4:
	INC X
	INC X
	MOV A, DATA_13B7+y
	BEQ CODE_05F5
	MOV $31+x, A
	MOV A, DATA_13B2+y
	MOV $30+x, A
	CALL CODE_0638
CODE_05F5:
	INC X
	INC X
	MOV A, DATA_13C1+y
	BEQ CODE_0606
	MOV $31+x, A
	MOV A, DATA_13BC+y
	MOV $30+x, A
	CALL CODE_0638
CODE_0606:
	INC X
	INC X
	MOV A, DATA_13CB+y
	BEQ CODE_0617
	MOV $31+x, A
	MOV A, DATA_13C6+y
	MOV $30+x, A
	CALL CODE_0638
CODE_0617:
	INC X
	INC X
	MOV A, Y
	MOV X, A
	DEC X
	MOV A, DATA_13D0+x
	MOV $D9, A
	MOV A, DATA_13D4+x
	MOV $DA, A
	BEQ CODE_0637
	MOV Y, #$FB
CODE_062A:
	MOV A, ($D9)+y
	MOV DATA_13DF+y, A
	DEC Y
	BNE CODE_062A
	MOV A, ($D9)+y
	MOV DATA_13DF+y, A
CODE_0637:
	RET

;--------------------------------------------------------------------

CODE_0638:
	MOV A, #$FF
	MOV $02C1+x, A
	MOV $0101+x, A
	MOV A, $E8
	MOV $0366+x, A
CODE_0645:
	MOV A, #$00
	MOV $0100+x, A
	MOV $00+x, A
	MOV $01+x, A
	MOV $10+x, A
	MOV $11+x, A
	MOV $20+x, A
	MOV $21+x, A
	MOV $51+x, A
	MOV $60+x, A
	MOV $70+x, A
	MOV $71+x, A
	MOV $81+x, A
	MOV $90+x, A
	MOV $91+x, A
	MOV $A0+x, A
	MOV $A1+x, A
	MOV $B0+x, A
	MOV $B1+x, A
	MOV $C0+x, A
	MOV $C1+x, A
	MOV $0200+x, A
	MOV $0201+x, A
	MOV $0210+x, A
	MOV $0211+x, A
	MOV $0220+x, A
	MOV $0221+x, A
	MOV $0230+x, A
	MOV $0231+x, A
	MOV $0240+x, A
	MOV $0241+x, A
	MOV $0250+x, A
	MOV $0251+x, A
	MOV $0260+x, A
	MOV $0261+x, A
	MOV $0270+x, A
	MOV $0271+x, A
	MOV $0280+x, A
	MOV $0281+x, A
	MOV $0290+x, A
	MOV $0291+x, A
	MOV $02A0+x, A
	MOV $02A1+x, A
	MOV $02B0+x, A
	MOV $02B1+x, A
	MOV $02C0+x, A
	MOV $02D0+x, A
	MOV $02D1+x, A
	MOV $02E0+x, A
	MOV $02E1+x, A
	MOV $02F0+x, A
	MOV $0345+x, A
	MOV $0365+x, A
	MOV A, #$FF
	MOV $02F1+x, A
	MOV A, X
	ASL A
	ASL A
	ASL A
	MOV $50+x, A
	MOV A, #$01
	MOV $80+x, A
	MOV A, DATA_10A9+$01+x
	AND A, $D7
	MOV $D7, A
	MOV A, DATA_10A9+$01+x
	AND A, $D6
	MOV $D6, A
	MOV A, DATA_10A9+$01+x
	AND A, $D8
	MOV $D8, A
	MOV A, DATA_10A9+x
	OR A, $D5
	MOV $D5, A
	MOV A, X
	ASL A
	ASL A
	ASL A
	CLRC
	ADC A, #$07
	MOV $F2, A
	MOV $F3, #$9F
	RET

;--------------------------------------------------------------------

CODE_0708:
	MOV A, #$00
	MOV Y, #$00
CODE_070C:
	MOV $0000+y, A
	MOV $0100+y, A
	INC Y
	CMP Y, #$F0
	BNE CODE_070C
	INC A
	MOV Y, #$0E
CODE_071A:
	MOV $0080+y, A
	DEC Y
	DEC Y
	BPL CODE_071A
	DEC A
	MOV Y, #$00
CODE_0724:
	MOV $0200+y, A
	MOV $0300+y, A
	DEC Y
	BNE CODE_0724
	MOV $DB, #$00
	MOV $DC, #$03
	MOV $D9, #$04
	MOV $DA, #$00
	MOV Y, #$00
CODE_073B:
	MOV A, #$00
	MOV ($DB)+y, A
	INC Y
	BNE CODE_0744
	INC $DC
CODE_0744:
	DEC $D9
	MOV X, $D9
	INC X
	BNE CODE_073B
	DEC $DA
	MOV X, $DA
	INC X
	BNE CODE_073B
	RET

;--------------------------------------------------------------------

CODE_0753:
	MOV A, $02F1+x
	BMI CODE_075B
	JMP CODE_1163

CODE_075B:
	MOV A, #$01
	MOV $0365+x, A
	MOV A, DATA_10A9+x
	MOV $D2, A
	MOV A, DATA_10A9+$01+x
	MOV $D3, A
	DEC $80+x
	BNE CODE_0793
CODE_076E:
	CALL CODE_0785
CODE_0771:
	BPL CODE_0790
	CMP A, #$BA
	BCS CODE_0782
	ASL A
	MOV Y, A
	MOV A, DATA_0B6F+$01+y
	PUSH A
	MOV A, DATA_0B6F+y
	PUSH A
	RET

CODE_0782:
	JMP CODE_0F68

;--------------------------------------------------------------------

CODE_0785:
	MOV A, ($30+x)
	INC $30+x
	BNE CODE_078D
	INC $31+x
CODE_078D:
	OR A, #$00
	RET

CODE_0790:
	CALL CODE_0A95
CODE_0793:
	CALL CODE_07E3
	CALL CODE_086E
	CALL CODE_0894
	CALL CODE_08D8
	CALL CODE_0926
	CALL CODE_0971
	CALL CODE_09B9
	MOV A, $0260+x
	CLRC
	ADC A, $0220+x
	PUSH p
	CLRC
	ADC A, $02C0+x
	MOV $10+x, A
	MOV A, $0261+x
	ADC A, $0221+x
	POP p
	ADC A, #$00
	MOV $11+x, A
	JMP CODE_1163

;--------------------------------------------------------------------

CODE_07C4:
	MOV A, $0260+x
	SETC
	SBC A, $02D1+x
	MOV $D9, A
	MOV A, $0261+x
	SBC A, $02E0+x
	OR A, $D9
	RET

;--------------------------------------------------------------------

CODE_07D6:
	MOV A, $02D1+x
	MOV $0260+x, A
	MOV A, $02E0+x
	MOV $0261+x, A
	RET

;--------------------------------------------------------------------

CODE_07E3:
	MOV A, $0100+x
	BEQ CODE_07F2
	MOV A, $EA
	MOV $0345+x, A
	MOV A, $D0
	MOV $0346+x, A
CODE_07F2:
	MOV A, $0345+x
	BEQ CODE_0862
	MOV Y, A
	MOV A, $0346+x
	MUL YA
	MOV A, Y
	MOV $E5, A
	MOV A, $0345+x
	SETC
	SBC A, $E5
	ASL A
	DEC A
	MOV $01+x, A
	MOV A, $E5
	ASL A
	MOV $00+x, A
	MOV A, $0346+x
	BPL CODE_081A
	MOV A, $0345+x
	MOV $00+x, A
	BRA CODE_081F

CODE_081A:
	MOV A, $0345+x
	MOV $01+x, A
CODE_081F:
	MOV A, $E6
	AND A, #$0F
	BNE CODE_083C
	MOV A, $0356+x
	BEQ CODE_083C
	MOV Y, A
	MOV A, $0345+x
	MUL YA
	MOV A, Y
	MOV $0345+x, A
	BNE CODE_083C
	MOV $00+x, A
	MOV $01+x, A
	MOV $0356+x, A
CODE_083C:
	MOV A, $0355+x
	BMI CODE_084B
	CLRC
	ADC A, $0346+x
	BCC CODE_085F
	MOV Y, #$FF
	BRA CODE_0853

CODE_084B:
	CLRC
	ADC A, $0346+x
	BCS CODE_085F
	MOV Y, #$00
CODE_0853:
	MOV A, $0355+x
	EOR A, #$FF
	CLRC
	ADC A, #$01
	MOV $0355+x, A
	MOV A, Y
CODE_085F:
	MOV $0346+x, A
CODE_0862:
	RET

;--------------------------------------------------------------------

CODE_0863:
	SETC
	SBC A, #$40
	BMI CODE_086A
	ASL A
	RET

CODE_086A:
	ASL A
	OR A, #$80
	RET

;--------------------------------------------------------------------

CODE_086E:
	MOV A, $0291+x
	BEQ CODE_0893
	DEC $91+x
	BNE CODE_0893
	MOV A, $02B0+x
	CMP A, $0290+x
	BEQ CODE_0887
	MOV $0290+x, A
	MOV A, $02A1+x
	BRA CODE_0891

CODE_0887:
	CLRC
	ADC A, $0291+x
	MOV $0290+x, A
	MOV A, $02A0+x
CODE_0891:
	MOV $91+x, A
CODE_0893:
	RET

;--------------------------------------------------------------------

CODE_0894:
	MOV A, $81+x
	BNE CODE_089F
	MOV A, $0290+x
	MOV $90+x, A
	BRA CODE_08D2

CODE_089F:
	DEC $81+x
	BNE CODE_08D7
	MOV A, $0280+x
	MOV $81+x, A
	MOV A, $90+x
	CMP A, $0290+x
	BEQ CODE_08D7
	BCC CODE_08C0
	MOV A, $90+x
	SETC
	SBC A, $0281+x
	MOV $90+x, A
	CMP A, $0290+x
	BCS CODE_08D2
	BRA CODE_08CD

CODE_08C0:
	MOV A, $0281+x
	CLRC
	ADC A, $90+x
	MOV $90+x, A
	CMP A, $0290+x
	BCC CODE_08D2
CODE_08CD:
	MOV A, $0290+x
	MOV $90+x, A
CODE_08D2:
	MOV Y, $90+x
	CALL CODE_0AEE
CODE_08D7:
	RET

;--------------------------------------------------------------------

CODE_08D8:
	MOV A, $70+x
	BEQ CODE_08E0
	DEC $70+x
	BRA CODE_0925

CODE_08E0:
	MOV A, $0210+x
	BEQ CODE_0925
	BMI CODE_08FC
	MOV A, $0200+x
	CLRC
	ADC A, $0220+x
	MOV $0220+x, A
	MOV A, #$00
	ADC A, $0221+x
	MOV $0221+x, A
	JMP CODE_0911

CODE_08FC:
	MOV A, $0200+x
	EOR A, #$FF
	INC A
	CLRC
	ADC A, $0220+x
	MOV $0220+x, A
	MOV A, #$FF
	ADC A, $0221+x
	MOV $0221+x, A
CODE_0911:
	DEC $71+x
	BNE CODE_0925
	MOV A, $0201+x
	MOV $71+x, A
	BEQ CODE_0925
	MOV A, $0210+x
	EOR A, #$FF
	INC A
	MOV $0210+x, A
CODE_0925:
	RET

;--------------------------------------------------------------------

CODE_0926:
	MOV A, $0251+x
	BNE CODE_0930
	CALL CODE_07D6
	BRA CODE_0970

CODE_0930:
	CALL CODE_07C4
	BEQ CODE_0970
	BCC CODE_0956
	MOV A, $0251+x
	EOR A, #$FF
	INC A
	CLRC
	ADC A, $0260+x
	MOV $0260+x, A
	MOV A, $0261+x
	ADC A, #$FF
	MOV $0261+x, A
	CALL CODE_07C4
	BCS CODE_0970
	CALL CODE_07D6
	BRA CODE_0970

CODE_0956:
	MOV A, $0260+x
	CLRC
	ADC A, $0251+x
	MOV $0260+x, A
	MOV A, $0261+x
	ADC A, #$00
	MOV $0261+x, A
	CALL CODE_07C4
	BCC CODE_0970
	CALL CODE_07D6
CODE_0970:
	RET

;--------------------------------------------------------------------

CODE_0971:
	MOV A, $02D0+x
	BEQ CODE_09B8
	MOV A, $51+x
	BEQ CODE_0998
	DEC $51+x
	BNE CODE_0998
CODE_097E:
	CALL CODE_0FBE
	BPL CODE_0991
	CMP A, #$80
	BNE CODE_098D
	MOV A, $61+x
	MOV $60+x, A
	BRA CODE_097E

CODE_098D:
	DEC $60+x
	BRA CODE_0993

CODE_0991:
	MOV $21+x, A
CODE_0993:
	MOV A, $0241+x
	MOV $51+x, A
CODE_0998:
	MOV A, $C1+x
	BEQ CODE_09B8
	CMP A, $80+x
	BNE CODE_09B8
	MOV A, $61+x
	BNE CODE_09B8
	MOV A, $40+x
	MOV $D9, A
	MOV A, $41+x
	MOV $DA, A
	MOV Y, #$FF
CODE_09AE:
	INC Y
	MOV A, ($D9)+y
	BPL CODE_09AE
	INC Y
	MOV $60+x, Y
	MOV $61+x, Y
CODE_09B8:
	RET

;--------------------------------------------------------------------

CODE_09B9:
	MOV A, $02D0+x
	BNE CODE_09F0
	MOV A, $80+x
	BEQ CODE_09D2
	CMP A, $C1+x
	BNE CODE_09D2
	MOV A, #$03
	MOV $A1+x, A
	MOV A, $21+x
	MOV $B1+x, A
	MOV A, #$00
	MOV $B0+x, A
CODE_09D2:
	DEC $A0+x
	BNE CODE_09F0
	MOV Y, $A1+x
	MOV A, DATA_09F6+y
	PUSH A
	MOV A, DATA_09F1+y
	PUSH A
	MOV A, X
	MOV $E5, A
	ASL A
	ASL A
	ASL A
	SETC
	SBC A, $E5
	LSR A
	MOV Y, A
	MOV A, $0304+y
	MOV $A0+x, A
CODE_09F0:
	RET

DATA_09F1:
	db CODE_09FB
	db CODE_0A2D
	db CODE_0A68
	db CODE_0A69
	db CODE_0A94

DATA_09F6:
	db CODE_09FB>>8
	db CODE_0A2D>>8
	db CODE_0A68>>8
	db CODE_0A69>>8
	db CODE_0A94>>8

;--------------------------------------------------------------------

CODE_09FB:
  	MOV A, $0307+y
	SETC
	SBC A, $0305+y
	PUSH Y
	PUSH X
	PUSH A
	MOV A, $0306+y
	BEQ CODE_0A29
	MOV Y, $B0+x
	MOV X, A
	DEC X
	POP A
	MUL YA
	DIV YA, X
	POP X
	POP Y
	CLRC
	ADC A, $0305+y
	MOV $21+x, A
	INC $B0+x
	MOV A, $0306+y
	CMP A, $B0+x
	BNE CODE_0A28
	INC $A1+x
	MOV A, #$00
	MOV $B0+x, A
CODE_0A28:
	RET

CODE_0A29:
	POP A
	POP X
	POP Y
	RET

;--------------------------------------------------------------------

CODE_0A2D:
	MOV A, $0307+y
	SETC
	SBC A, $0309+y
	PUSH Y
	PUSH X
	PUSH A
	MOV A, $0308+y
	PUSH A
	CLRC
	SBC A, $B0+x
	BEQ CODE_0A53
	MOV Y, A
	POP A
	BEQ CODE_0A64
	MOV X, A
	POP A
	MUL YA
	DIV YA, X
	POP X
	POP Y
	CLRC
	ADC A, $0309+y
	MOV $21+x, A
	INC $B0+x
	RET

CODE_0A53:
	POP A
	POP A
	POP X
	POP Y
	MOV A, $0309+y
	MOV $21+x, A
	INC $A1+x
	MOV A, #$00
	MOV $B0+x, A
	RET

CODE_0A63:
	RET

CODE_0A64:
	POP A
	POP X
	POP Y
	RET

;--------------------------------------------------------------------

CODE_0A68:
	RET

;--------------------------------------------------------------------

CODE_0A69:
	MOV A, $B1+x
	PUSH Y
	PUSH X
	PUSH A
	MOV A, $030A+y
	PUSH A
	CLRC
	SBC A, $B0+x
	BEQ CODE_0A86
	MOV Y, A
	POP A
	BEQ CODE_0A91
	MOV X, A
	POP A
	MUL YA
	DIV YA, X
	POP X
	POP Y
	MOV $21+x, A
	INC $B0+x
	RET

CODE_0A86:
	POP A
	POP A
	POP X
	POP Y
	MOV A, #$00
	MOV $21+x, A
	INC $A1+x
	RET

CODE_0A91:
	POP A
	POP X
	POP Y
CODE_0A94:
	RET

;--------------------------------------------------------------------

CODE_0A95:
	BEQ CODE_0AE7
	MOV Y, $20+x
	CLRC
	ADC A, DATA_38B8+y
	LSR $C0+x
	BCS CODE_0AA5
	CLRC
	ADC A, $0240+x
CODE_0AA5:
	MOV $02B0+x, A
	MOV $0290+x, A
	MOV Y, A
	MOV A, $0280+x
	MOV $81+x, A
	BNE CODE_0AB8
	MOV $90+x, Y
	CALL CODE_0AEE
CODE_0AB8:
	CALL CODE_0B17
	MOV A, $02D0+x
	BEQ CODE_0ACE
	MOV A, $02E1+x
	BNE CODE_0ACE
	MOV $60+x, A
	MOV $61+x, A
	MOV A, $0241+x
	MOV $51+x, A
CODE_0ACE:
	MOV A, $02A1+x
	MOV $91+x, A
	CALL CODE_0B46
	MOV A, $02F0+x
	BNE CODE_0AE7
	MOV A, $D2
	OR A, $D4
	MOV $D4, A
	MOV A, $D2
	OR A, $D5
	MOV $D5, A
CODE_0AE7:
	CALL CODE_0B5A
	CALL CODE_0B31
	RET

;--------------------------------------------------------------------

CODE_0AEE:
	MOV A, DATA_1202-$02+y
	MOV $D9, A
	MOV A, DATA_1257-$02+y
	MOV $DA, A
	MOV Y, $20+x
	MOV A, DATA_38E7-$02+y
	MOV Y, A
	PUSH Y
	MOV A, $D9
	MUL YA
	MOV $DD, Y
	POP Y
	MOV A, $DA
	MUL YA
	MOV $DE, #$00
	ADDW YA, $DD
	ADDW YA, $D9
	MOV $02D1+x, A
	MOV A, Y
	MOV $02E0+x, A
	RET

;--------------------------------------------------------------------

CODE_0B17:
	MOV A, $0211+x
	MOV $70+x, A
	MOV A, $0201+x
	LSR A
	MOV $71+x, A
	MOV A, $0250+x
	MOV $0210+x, A
	MOV A, #$00
	MOV $0221+x, A
	MOV $0220+x, A
	RET

;--------------------------------------------------------------------

CODE_0B31:
	MOV A, $0270+x
	BEQ CODE_0B40
	MOV A, $80+x
	SETC
	SBC A, $0270+x
	MOV $C1+x, A
	BRA CODE_0B45

CODE_0B40:
	MOV A, $0271+x
	MOV $C1+x, A
CODE_0B45:
	RET

;--------------------------------------------------------------------

CODE_0B46:
	MOV A, $02B1+x
	BEQ CODE_0B59
	MOV A, $02E1+x
	BNE CODE_0B59
	MOV A, #$00
	MOV $A1+x, A
	MOV $B0+x, A
	INC A
	MOV $A0+x, A
CODE_0B59:
	RET

;--------------------------------------------------------------------

CODE_0B5A:
	MOV A, $0231+x
	BNE CODE_0B64
	MOV A, $0230+x
	BNE CODE_0B6C
CODE_0B64:
	MOV A, #$00
	MOV $0231+x, A
	CALL CODE_0785
CODE_0B6C:
	MOV $80+x, A
	RET

;--------------------------------------------------------------------

DATA_0B6F:
	dw CODE_0F68
	dw CODE_0BE3
	dw CODE_0BF2
	dw CODE_0C06
	dw CODE_0C0C
	dw CODE_0C1A
	dw CODE_0C3B
	dw CODE_0C44
	dw CODE_0C4C
	dw CODE_0C55
	dw CODE_0C5D
	dw CODE_0C6A
	dw CODE_0C72
	dw CODE_0C9C
	dw CODE_0CA5
	dw CODE_0CA9
	dw CODE_0CCD
	dw CODE_0CC5
	dw CODE_0CD6
	dw CODE_0CE4
	dw CODE_0CF2
	dw CODE_0D01
	dw CODE_0D09
	dw CODE_0D20
	dw CODE_0D5C
	dw CODE_0D65
	dw CODE_0D6E
	dw CODE_0D88
	dw CODE_0D80
	dw CODE_0D97
	dw CODE_0DA6
	dw CODE_0DAE
	dw CODE_0DB6
	dw CODE_0DBD
	dw CODE_0DD9
	dw CODE_0DF6
	dw CODE_0E0F
	dw CODE_0E4E
	dw CODE_0E74
	dw CODE_0E85
	dw CODE_0EA3
	dw CODE_0EB1
	dw CODE_0ED3
	dw CODE_0EE2
	dw CODE_0EF1
	dw CODE_0EFC
	dw CODE_0F07
	dw CODE_0F12
	dw CODE_0F2A
	dw CODE_0F33
	dw CODE_0F3C
	dw CODE_0F45
	dw CODE_0F54
	dw CODE_0F5D
	dw CODE_0F7E
	dw CODE_0F86
	dw CODE_0F96
	dw CODE_0FB0

;--------------------------------------------------------------------

CODE_0BE3:
	CALL CODE_0785
	PUSH A
	CALL CODE_0785
	MOV $31+x, A
	POP A
	MOV $30+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0BF2:
	CALL CODE_0785
	PUSH A
	CALL CODE_0785
	PUSH A
	CALL CODE_0FE6
	POP A
	MOV $31+x, A
	POP A
	MOV $30+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0C06:
	CALL CODE_0FCD
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0C0C:
	CALL CODE_0785
	PUSH A
	CALL CODE_0FE6
	POP A
	CALL CODE_0FDE
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0C1A:
	MOV Y, $50+x
	MOV A, $037F+y
	DEC A
	BEQ CODE_0C32
	MOV $037F+y, A
	MOV A, $037E+y
	MOV $31+x, A
	MOV A, $037D+y
	MOV $30+x, A
	JMP CODE_076E

CODE_0C32:
	MOV A, Y
	SETC
	SBC A, #$03
	MOV $50+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0C3B:
	CALL CODE_0785
	MOV $0230+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0C44:
	MOV A, #$FF
	MOV $0231+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0C4C:
	CALL CODE_0785
	MOV $0240+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0C55:
	CALL CODE_0785
	MOV $20+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0C5D:
	CALL CODE_0785
	MOV $00+x, A
CODE_0C62:
	MOV A, #$00
	MOV $0345+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0C6A:
	CALL CODE_0785
	MOV $01+x, A
	JMP CODE_0C62

;--------------------------------------------------------------------

CODE_0C72:
	CALL CODE_0785
	MOV $0241+x, A
	CALL CODE_0785
	MOV $40+x, A
	CALL CODE_0785
	MOV $41+x, A
	MOV A, #$00
	MOV $60+x, A
	MOV $02B1+x, A
	MOV $02E1+x, A
	DEC A
	MOV $02D0+x, A
	MOV A, #$01
	MOV $51+x, A
	CALL CODE_0FBE
	MOV $21+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0C9C:
	CALL CODE_0785
	MOV $02C0+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0CA5:
	MOV A, #$01
	BRA CODE_0CAB

CODE_0CA9:
	MOV A, #$FF
CODE_0CAB:
	MOV $0250+x, A
	CALL CODE_0785
	MOV $0211+x, A
	CALL CODE_0785
	MOV $0200+x, A
	CALL CODE_0785
	MOV $0201+x, A
	MOV $71+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0CC5:
	MOV A, #$00
	MOV $0250+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0CCD:
	CALL CODE_0785
	MOV $0251+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0CD6:
	CALL CODE_0785
	MOV $0270+x, A
	MOV A, #$00
	MOV $0271+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0CE4:
	CALL CODE_0785
	MOV $0271+x, A
	MOV A, #$00
	MOV $0270+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0CF2:
	CALL CODE_0785
	MOV $0281+x, A
	CALL CODE_0785
	MOV $0280+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0D01:
	MOV A, #$00
	MOV $0280+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0D09:
	CALL CODE_0785
	MOV $0291+x, A
	CALL CODE_0785
	MOV $02A0+x, A
	CALL CODE_0785
	MOV $02A1+x, A
	MOV $91+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0D20:
	MOV A, #$D8
	MOV $D9, A
	MOV A, #$13
	MOV $DA, A
	CALL CODE_0785
	MOV Y, #$07
	MUL YA
	PUSH X
	CLRC
	ADDW YA, $D9
	MOVW $D9, YA
	MOV Y, #$00
	MOV A, X
	MOV $E5, A
	ASL A
	ASL A
	ASL A
	SETC
	SBC A, $E5
	LSR A
	MOV X, A
CODE_0D41:
	MOV A, ($D9)+y
	MOV $0304+x, A
	INC X
	INC Y
	CMP Y, #$07
	BNE CODE_0D41
	POP X
	MOV A, #$00
	MOV $02D0+x, A
	MOV $02E1+x, A
	DEC A
	MOV $02B1+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0D5C:
	MOV A, $D2
	OR A, $D6
	MOV $D6, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0D65:
	MOV A, $D3
	AND A, $D6
	MOV $D6, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0D6E:
	CALL CODE_0785
	AND A, #$1F
	OR A, #$20
	MOV $F2, #$6C
	NOP
	NOP
	NOP
	MOV $F3, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0D80:
	MOV A, #$FF
	MOV $02E1+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0D88:
	MOV A, #$00
	MOV $02E1+x, A
	MOV $02D0+x, A
	DEC A
	MOV $02B1+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0D97:
	MOV A, #$00
	MOV $02E1+x, A
	MOV $02B1+x, A
	DEC A
	MOV $02D0+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0DA6:
	MOV A, #$00
	MOV $02F0+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0DAE:
	MOV A, #$FF
	MOV $02F0+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0DB6:
	MOV A, #$01
	MOV $C0+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0DBD:
	PUSH X
	MOV X, $E4
	MOV X, #$01
	CALL CODE_0589
	POP X
	MOV A, DATA_10A9+x
	MOV $D2, A
	MOV A, DATA_10A9+$01+x
	MOV $D3, A
	MOV $E0, #$00
	MOV $E1, #$7F
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0DD9:
	MOV A, X
	MOV $E5, A
	ASL A
	ASL A
	ASL A
	SETC
	SBC A, $E5
	LSR A
	MOV Y, A
	MOV A, #$07
	MOV $E5, A
CODE_0DE8:
	CALL CODE_0785
	MOV $0304+y, A
	INC Y
	DEC $E5
	BNE CODE_0DE8
	JMP CODE_0D88

;--------------------------------------------------------------------

CODE_0DF6:
	CALL CODE_0785
	CALL CODE_10B9
	ASL A
	MOV $E5, A
	CLRC
	MOV A, $30+x
	ADC A, $E5
	MOV $30+x, A
	MOV A, $31+x
	ADC A, #$00
	MOV $31+x, A
	JMP CODE_0BE3

;--------------------------------------------------------------------

CODE_0E0F:
	CALL CODE_0785
	MOV $E5, A
	CALL CODE_10B9
	MOV $D9, A
	ASL A
	CLRC
	ADC A, $30+x
	MOV $30+x, A
	MOV A, $31+x
	ADC A, #$00
	MOV $31+x, A
	CALL CODE_0785
	PUSH A
	CALL CODE_0785
	PUSH A
	MOV A, $E5
	DEC A
	SETC
	SBC A, $D9
	ASL A
	MOV $D9, A
	MOV A, $30+x
	ADC A, $D9
	MOV $30+x, A
	MOV A, $31+x
	ADC A, #$00
	MOV $31+x, A
	CALL CODE_0FE6
	POP A
	MOV $31+x, A
	POP A
	MOV $30+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0E4E:
	CALL CODE_0785
	CALL CODE_0E5D
	OR A, $033C+y
	MOV $033C+y, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0E5D:
	PUSH X
	MOV Y, A
	AND A, #$07
	MOV X, A
	MOV A, Y
	LSR A
	LSR A
	LSR A
	MOV Y, A
	MOV A, DATA_0E6C+x
	POP X
	RET

DATA_0E6C:
	db $01,$02,$04,$08,$10,$20,$40,$80

;--------------------------------------------------------------------

CODE_0E74:
	CALL CODE_0785
	CALL CODE_0E5D
	EOR A, #$FF
	AND A, $033C+y
	MOV $033C+y, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0E85:
	CALL CODE_0785
	CALL CODE_0E5D
	AND A, $033C+y
	BEQ CODE_0E93
	JMP CODE_0BE3

CODE_0E93:
	MOV A, $30+x
	CLRC
	ADC A, #$02
	MOV $30+x, A
	MOV A, $31+x
	ADC A, #$00
	MOV $31+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0EA3:
	CALL CODE_0785
	CALL CODE_0E5D
	AND A, $033C+y
	BNE CODE_0E93
	JMP CODE_0BE3

;--------------------------------------------------------------------

CODE_0EB1:
	CALL CODE_0785
	CALL CODE_0E5D
	AND A, $033C+y
	BEQ CODE_0EBF
	JMP CODE_076E

CODE_0EBF:
	MOV A, #$01
	MOV $80+x, A
	MOV A, $30+x
	SETC
	SBC A, #$02
	MOV $30+x, A
	MOV A, $31+x
	SBC A, #$00
	MOV $31+x, A
	JMP CODE_0793

;--------------------------------------------------------------------

CODE_0ED3:
	MOV A, $D2
	OR A, $D7
	MOV $D7, A
	MOV $F2, #$4D
	MOV $F3, $D7
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0EE2:
	MOV A, $D3
	AND A, $D7
	MOV $D7, A
	MOV $F2, #$4D
	MOV $F3, $D7
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0EF1:
	CALL CODE_0785
	MOV $F2, #$2C
	MOV $F3, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0EFC:
	CALL CODE_0785
	MOV $F2, #$3C
	MOV $F3, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0F07:
	CALL CODE_0785
	MOV $F2, #$0D
	MOV $F3, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0F12:
	MOV Y, #$00
CODE_0F14:
	MOV A, Y
	ASL A
	ASL A
	ASL A
	ASL A
	OR A, #$0F
	MOV $F2, A
	CALL CODE_0785
	MOV $F3, A
	INC Y
	CMP Y, #$08
	BNE CODE_0F14
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0F2A:
	CALL CODE_0785
	MOV $0356+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0F33:
	MOV A, $D2
	OR A, $D8
	MOV $D8, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0F3C:
	MOV A, $D3
	AND A, $D8
	MOV $D8, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0F45:
	CALL CODE_0785
	MOV $0345+x, A
	CALL CODE_0785
	MOV $0346+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0F54:
	CALL CODE_0785
	MOV $0355+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0F5D:
	CALL CODE_0785
	PUSH X
	CALL CODE_10F7
	POP X
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0F68:
	MOV A, #$00
	MOV $0365+x, A
	MOV $02F1+x, A
	MOV $02C1+x, A
	DEC A
	MOV $0101+x, A
	MOV A, $D2
	OR A, $D5
	MOV $D5, A
	RET

;--------------------------------------------------------------------

CODE_0F7E:
	CALL CODE_0785
	MOV $FC, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0F86:
	MOV A, #$FF
	MOV $0100+x, A
	MOV A, #$01
	MOV $0346+x, A
	MOV $0345+x, A
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0F96:
	CALL CODE_0785
	MOV Y, A
	MOV A, DATA_0FA0+y
	JMP CODE_0771

DATA_0FA0:
	db $2D,$2D,$2D,$2D,$2D,$2D,$2D,$2D
	db $2D,$2D,$2D,$2D,$2D,$2D,$2D,$2D

;--------------------------------------------------------------------

CODE_0FB0:
	MOV A, X
	ASL A
	ASL A
	ASL A
	CMP A, $50+x
	BEQ CODE_0FBB
	JMP CODE_12AC

CODE_0FBB:
	JMP CODE_076E

;--------------------------------------------------------------------

CODE_0FBE:
	MOV A, $40+x
	MOV $D9, A
	MOV A, $41+x
	MOV $DA, A
	MOV Y, $60+x
	INC $60+x
	MOV A, ($D9)+y
	RET

;--------------------------------------------------------------------

CODE_0FCD:
	MOV Y, $50+x
	DEC Y
	MOV A, $0380+y
	MOV $31+x, A
	DEC Y
	MOV A, $0380+y
	MOV $30+x, A
	MOV $50+x, Y
	RET

;--------------------------------------------------------------------

CODE_0FDE:
	MOV Y, $50+x
	MOV $0380+y, A
	INC $50+x
	RET

;--------------------------------------------------------------------

CODE_0FE6:
	MOV Y, $50+x
	MOV A, $30+x
	MOV $0380+y, A
	MOV A, $31+x
	MOV $0381+y, A
	INC Y
	INC Y
	MOV $50+x, Y
	RET

;--------------------------------------------------------------------

CODE_0FF7:
	MOV A, $0365+y
	BEQ CODE_1033
	MOV $F2, X
	MOV A, $0000+y
	CALL CODE_1036
	MOV $F3, A
	INC X
	MOV $F2, X
	MOV A, $0001+y
	CALL CODE_1036
	MOV $F3, A
	INC X
	MOV $F2, X
	MOV A, $0010+y
	MOV $F3, A
	INC X
	MOV $F2, X
	MOV A, $0011+y
	MOV $F3, A
	INC X
	MOV $F2, X
	MOV A, $0020+y
	MOV $F3, A
	INC X
	INC X
	INC X
	MOV $F2, X
	MOV A, $0021+y
	MOV $F3, A
CODE_1033:
	JMP CODE_1163

;--------------------------------------------------------------------

CODE_1036:
	BMI CODE_104F
	PUSH Y
	PUSH X
	PUSH Y
	POP X
	MOV Y, A
	MOV A, $02C1+x
	INC A
	BNE CODE_1047
	MOV A, $E8
	BRA CODE_104A

CODE_1047:
	MOV A, $0366+x
CODE_104A:
	MUL YA
	MOV A, Y
	POP X
	POP Y
	RET

CODE_104F:
	EOR A, #$FF
	INC A
	PUSH Y
	PUSH X
	PUSH Y
	POP X
	MOV Y, A
	MOV A, $0366+x
	MUL YA
	MOV A, Y
	POP X
	POP Y
	EOR A, #$FF
	INC A
	RET

;--------------------------------------------------------------------

CODE_1062:
	MOV X, #$00
CODE_1064:
	MOV A, DATA_1074+x
	BMI CODE_1073
	MOV $F2, A
	MOV A, DATA_108F+x
	MOV $F3, A
	INC X
	BNE CODE_1064
CODE_1073:
	RET

DATA_1074:
	db $2C,$3C,$5C,$2D,$3D,$4D,$7D,$6D
	db $0D,$5D,$0F,$1F,$2F,$3F,$4F,$5F
	db $6F,$7F,$05,$15,$25,$35,$45,$55
	db $65,$75,$FF

DATA_108F:
	db $00,$00,$FF,$00,$00,$00,$00,$03
	db $00,$38,$7F,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00

;--------------------------------------------------------------------

DATA_10A9:
	dw $FE01,$FD02,$FB04,$F708
	dw $EF10,$DF20,$BF40,$7F80

;--------------------------------------------------------------------

CODE_10B9:
	MOV Y, A
	CALL CODE_10D7
	CALL CODE_10D7
	CALL CODE_10D7
	CALL CODE_10D7
	CALL CODE_10D7
	CALL CODE_10D7
	CALL CODE_10D7
	CALL CODE_10D7
	MOV A, $EB
	MUL YA
	MOV A, Y
	RET

;--------------------------------------------------------------------

CODE_10D7:
	MOV A, $EB
	AND A, #$48
	ADC A, #$38
	ASL A
	ASL A
	ROL $EE
	ROL $ED
	ROL $EC
	ROL $EB
	RET

;--------------------------------------------------------------------

CODE_10E8:
	MOV $F1, #$00
	NOP
	NOP
	NOP
	NOP
	MOV $FC, #$85
	MOV $F1, #$04
	RET

;--------------------------------------------------------------------

CODE_10F6:
	RET

CODE_10F7:
	MOV Y, A
	CMP A, #$4F
	BCS CODE_10F6
	MOV X, #$0E
	MOV A, DATA_1768+y
	BMI CODE_110D
	MOV A, Y
CODE_1104:
	CMP A, $0101+x
	BEQ CODE_113B
	DEC X
	DEC X
	BPL CODE_1104
CODE_110D:
	MOV X, #$0E
CODE_110F:
	MOV A, $02F1+x
	BEQ CODE_113B
	DEC X
	DEC X
	BPL CODE_110F
	MOV X, #$0E
	MOV A, #$FF
	MOV $E5, X
CODE_111E:
	CMP A, $02C1+x
	BCC CODE_1128
	MOV A, $02C1+x
	MOV $E5, X
CODE_1128:
	DEC X
	DEC X
	BPL CODE_111E
	MOV X, $E5
	MOV $E5, A
	MOV A, DATA_1768+y
	AND A, #$7F
	CMP A, $E5
	BCS CODE_113B
	CLRC
	RET

CODE_113B:
	MOV A, Y
	MOV $0101+x, A
	MOV A, DATA_1768+y
	AND A, #$7F
	MOV $02C1+x, A
	CALL CODE_0645
	MOV A, DATA_16CA+y
	MOV $30+x, A
	MOV A, DATA_1719+y
	MOV $31+x, A
	MOV A, $E9
	MOV $0366+x, A
	SETC
	RET

;--------------------------------------------------------------------

CODE_115B:
	MOV A, $F4
	MOV $F4, A
	INC A
	MOV $D1, A
	RET

CODE_1163:
	MOV A, $F4
	CMP A, $F4
	BNE CODE_1163
	CMP A, $D1
	BNE CODE_118E
	MOV Y, A
CODE_116E:
	MOV A, $F6
	CMP A, $F6
	BNE CODE_116E
	CMP A, #$0C
	BCS CODE_115B
	MOV X, A
	BEQ CODE_115B
	MOV A, DATA_119B-$01+x
	PUSH A
	MOV A, DATA_1190-$01+x
	PUSH A
CODE_1183:
	MOV A, $F7
	CMP A, $F7
	BNE CODE_1183
	MOV $F4, Y
	INC Y
	MOV $D1, Y
CODE_118E:
	CLRC
	RET

DATA_1190:
	db CODE_11AA
	db CODE_11C2
	db CODE_11CD
	db CODE_11E3
	db CODE_11E4
	db CODE_11E9
	db CODE_11F6
	db CODE_11F9
	db CODE_11FC
	db CODE_11FF
	db CODE_11A6

DATA_119B:
	db CODE_11AA>>8
	db CODE_11C2>>8
	db CODE_11CD>>8
	db CODE_11E3>>8
	db CODE_11E4>>8
	db CODE_11E9>>8
	db CODE_11F6>>8
	db CODE_11F9>>8
	db CODE_11FC>>8
	db CODE_11FF>>8
	db CODE_11A6>>8

;--------------------------------------------------------------------

CODE_11A6:
	MOV DATA_0FA0, A
	RET

;--------------------------------------------------------------------

CODE_11AA:
	MOV X, A
	DEC X
	MOV $E4, X
	CALL CODE_0589
	MOV $E2, #$00
	MOV $E3, #$00
	MOV $E0, #$00
	MOV $E1, #$7F
	CALL CODE_10E8
	SETC
	RET

;--------------------------------------------------------------------

CODE_11C2:
	CALL CODE_10F7
	MOV $E0, #$00
	MOV $E1, #$7F
	CLRC
	RET

;--------------------------------------------------------------------

CODE_11CD:
	MOV Y, #$00
	INC A
	DEC A
	BPL CODE_11D4
	DEC Y
CODE_11D4:
	MOV $E3, Y
	ASL A
	ROL $E3
	ASL A
	ROL $E3
	ASL A
	ROL $E3
	MOV $E2, A
	CLRC
	RET

;--------------------------------------------------------------------

CODE_11E3:
	RET

;--------------------------------------------------------------------

CODE_11E4:
	CALL CODE_11AA
	CLRC
	RET

;--------------------------------------------------------------------

CODE_11E9:
	CALL CODE_0E5D
	EOR A, #$FF
	AND A, $033C+y
	MOV $033C+y, A
	CLRC
	RET

;--------------------------------------------------------------------

CODE_11F6:
	MOV $E8, A
	RET

;--------------------------------------------------------------------

CODE_11F9:
	MOV $E9, A
	RET

;--------------------------------------------------------------------

CODE_11FC:
	MOV $EA, A
	RET

;--------------------------------------------------------------------

CODE_11FF:
	MOV $D0, A
	RET

;--------------------------------------------------------------------

DATA_1202:
	db $80,$87,$8F,$98,$A1,$AA,$B5,$BF
	db $CB,$D7,$E4,$F1,$00,$0F,$1F,$30
	db $42,$55,$6A,$7F,$96,$AE,$C8,$E3
	db $00,$1E,$3E,$60,$85,$AB,$D4,$FF
	db $2C,$5D,$90,$C6,$00,$3C,$7D,$C1
	db $0A,$56,$A8,$FE,$59,$BA,$20,$8D
	db $00,$79,$FA,$83,$14,$AD,$50,$FC
	db $B2,$74,$41,$1A,$00,$F3,$F5,$07
	db $28,$5B,$A0,$F9,$65,$E8,$82,$34
	db $00,$E7,$EB,$0E,$51,$B7,$41,$F2
	db $CB,$D1,$04,$68,$00

DATA_1257:
	db $00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01
	db $02,$02,$02,$02,$02,$02,$02,$02
	db $03,$03,$03,$03,$04,$04,$04,$04
	db $05,$05,$05,$05,$06,$06,$07,$07
	db $08,$08,$08,$09,$0A,$0A,$0B,$0B
	db $0C,$0D,$0E,$0F,$10,$10,$11,$13
	db $14,$15,$16,$17,$19,$1A,$1C,$1E
	db $20,$21,$23,$26,$28,$2A,$2D,$2F
	db $32,$35,$39,$3C,$40

;--------------------------------------------------------------------

CODE_12AC:
	MOV $F4, A
	MOV $F5, X
CODE_12B0:
	INC A
	MOV $F6, A
	JMP CODE_12B0

;--------------------------------------------------------------------

CODE_12B6:
	MOV X, #$EF
	MOV SP, X
	MOV A, #$00
CODE_12B1:
	MOV (x), A
	DEC X
	BNE CODE_12B1
	MOV $F1, #$30
	MOV $F4, #$AA
	MOV $F5, #$BB
CODE_12BE:
	CMP $F4, #$CC
	BNE CODE_12BE
	BRA CODE_12DE

CODE_12C5:
	MOV Y, $F4
	BNE CODE_12C5
CODE_12C9:
	CMP Y, $F4
	BNE CODE_12D8
	MOV A, $F5
	MOV $F4, Y
	MOV ($00)+y, A
	INC Y
	BNE CODE_12C9
	INC $01
CODE_12D8:
	BPL CODE_12C9
	CMP Y, $F4
	BPL CODE_12C9
CODE_12DE:
	MOVW YA, $F6
	MOVW $00, YA
	MOVW $F6, YA
	MOVW YA, $F4
	MOVW $F4, YA
	MOV A, Y
	MOV X, A
	BNE CODE_12C5
	JMP SPC700_Engine

;--------------------------------------------------------------------

DATA_12F9:
	db $57,$57,$57,$57,$77,$57,$57,$5D
	db $5D,$5D,$5D,$5D,$5D,$5D,$5D,$5D
	db $5D,$5D,$5D,$5D,$5D,$5D,$5D,$5D
	db $5D,$5D,$5D,$5D,$5D,$5D,$5D,$5D
	db $5D,$5D,$5D,$5D,$5D,$5D,$5D,$5D
	db $5D,$5D,$5D,$5D,$5D,$5D,$5D,$5D
	db $5D,$5D,$5D,$5D,$5D,$5D,$5D,$5D
	db $5D,$5D,$5D,$5D,$5D,$5D,$5D,$5D
	db $5D,$5D,$5D,$5D,$5D,$5D,$5D,$5D
	db $5D,$5D,$5D,$5D,$5D,$5D,$5D,$5D
	db $5D,$5D,$5D,$5D,$5D,$5D,$5D,$5D
	db $5D,$5D,$5D,$5D,$5D,$5D,$5D,$5D
	db $5D,$5D,$5D,$5D,$5D,$5D,$5D,$5D
	db $5D,$5D,$5D,$5D,$5D,$5D,$5D,$5D
	db $5D,$5D,$5D,$5D,$5D,$5D,$5D,$5D
	db $5D,$5D,$5D,$5D,$5D,$5D,$5D,$5D
	db $5D,$5D,$5D,$5D,$5D,$5D,$5D

;--------------------------------------------------------------------

DATA_1380:
	db $FE
	db !Define_PLOK_SPC700_MusicDataAddress
	db $B8
	db $93
	db $0D

DATA_1385:
	db $14
	db !Define_PLOK_SPC700_MusicDataAddress>>8
	db $15
	db $15
	db $15

DATA_138A:
	db $FE
	db !Define_PLOK_SPC700_MusicDataAddress+$03
	db $F2
	db $B7
	db $26

DATA_138F:
	db $14
	db (!Define_PLOK_SPC700_MusicDataAddress+$03)>>8
	db $15
	db $15
	db $15

DATA_1394:
	db $FE
	db !Define_PLOK_SPC700_MusicDataAddress+$06
	db $1A
	db $B7
	db $3D

DATA_1399:
	db $14
	db (!Define_PLOK_SPC700_MusicDataAddress+$06)>>8
	db $16
	db $15
	db $15

DATA_139E:
	db $FE
	db !Define_PLOK_SPC700_MusicDataAddress+$09
	db $5E
	db $B7
	db $52

DATA_13A3:
	db $14
	db (!Define_PLOK_SPC700_MusicDataAddress+$09)>>8
	db $16
	db $15
	db $15

DATA_13A8:
	db $FE
	db !Define_PLOK_SPC700_MusicDataAddress+$0C
	db $80
	db $B7
	db $68

DATA_13AD:
	db $14
	db (!Define_PLOK_SPC700_MusicDataAddress+$0C)>>8
	db $16
	db $15
	db $15

DATA_13B2:
	db $FE
	db !Define_PLOK_SPC700_MusicDataAddress+$0F
	db $C7
	db $B7
	db $7D

DATA_13B7:
	db $14
	db (!Define_PLOK_SPC700_MusicDataAddress+$0F)>>8
	db $16
	db $15
	db $15

DATA_13BC:
	db $FE
	db !Define_PLOK_SPC700_MusicDataAddress+$12
	db $C8
	db $B7
	db $92

DATA_13C1:
	db $14
	db (!Define_PLOK_SPC700_MusicDataAddress+$12)>>8
	db $16
	db $15
	db $15

DATA_13C6:
	db $FE
	db !Define_PLOK_SPC700_MusicDataAddress+$15
	db $C9
	db $B7
	db $92

DATA_13CB:
	db $14
	db (!Define_PLOK_SPC700_MusicDataAddress+$18)>>8
	db $16
	db $15
	db $15

DATA_13D0:
	db !Define_PLOK_SPC700_MusicDataAddress+$18
	db $DB
	db $F7
	db $FF

DATA_13D4:
	db (!Define_PLOK_SPC700_MusicDataAddress+$18)>>8
	db $14
	db $14
	db $14

DATA_13D8:
	db $01,$00,$FF,$00,$01,$00,$01

DATA_13DF:
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$78,$01,$78
	db $01,$78,$06,$01,$3C,$01,$3C,$01,$3C,$0A,$01,$00,$05,$3C,$01,$3C
	db $0A,$01,$0A,$28,$78,$01,$78,$0A,$01,$78,$01,$78,$01,$78,$0A,$80
	db $01,$78,$01,$78,$01,$78,$5A,$01,$78,$01,$78,$01,$78,$64,$B6,$C5
	db $B3,$46,$C8,$89,$18,$97,$01,$2A,$01,$94,$01,$02,$9F,$1E,$40,$92
	db $01,$84,$20,$00,$10,$85,$80,$B3,$46,$32,$89,$26,$97,$01,$1E,$01
	db $94,$01,$01,$9F,$36,$40,$92,$01,$84,$20,$00,$10,$85,$80,$B3,$5A
	db $7F,$89,$09,$97,$01,$1E,$01,$90,$0A,$3C,$40,$92,$01,$84,$20,$00
	db $10,$85,$80,$B3,$78,$DC,$89,$14,$B4,$05,$97,$02,$14,$01,$92,$05
	db $90,$0A,$84,$3C,$46,$07,$9C,$85,$80,$B3,$50,$1E,$89,$26,$97,$01
	db $36,$08,$42,$08,$3D,$36,$92,$01,$84,$20,$00,$10,$85,$80,$B3,$3C
	db $D8,$89,$26,$97,$01,$00,$1C,$92,$01,$84,$20,$36,$08,$9C,$42,$08
	db $3D,$0C,$85,$80,$B6,$BE,$B3,$78,$7F,$97,$01,$89,$24,$8E,$01,$14
	db $02,$1B,$01,$90,$28,$50,$0D,$8F,$01,$32,$04,$9F,$50,$0D,$91,$90
	db $FA,$50,$05,$97,$00,$46,$04,$80,$80,$B6,$C8,$B3,$32,$4D,$89,$07
	db $93,$03,$97,$03,$8E,$0D,$04,$0A,$32,$0A,$32,$0A,$34,$0A,$36,$0A
	db $38,$01,$9C,$90,$18,$39,$1D,$9B,$90,$00,$36,$1E,$37,$1E,$34,$1E
	db $35,$01,$9C,$90,$1E,$36,$13,$9B,$90,$00,$37,$0A,$39,$14,$3E,$28
	db $32,$14,$80,$B3,$3C,$B4,$89,$1C,$93,$04,$97,$02,$8E,$0F,$02,$0B
	db $21,$0A,$1F,$0A,$1E,$0A,$1C,$0A,$1A,$1E,$1E,$1E,$1C,$1E,$15,$1E
	db $1A,$14,$1C,$0A,$1E,$1E,$1A,$1E,$0E,$14,$80,$B3,$3C,$5A,$97,$02
	db $00,$28,$89,$04,$26,$14,$89,$05,$26,$0A,$92,$02,$26,$14,$92,$00
	db $26,$0A,$89,$04,$2D,$14,$89,$05,$2D,$0A,$92,$02,$28,$14,$92,$00
	db $2D,$0A,$89,$04,$26,$14,$89,$05,$26,$0A,$89,$04,$26,$0A,$89,$05
	db $26,$0A,$89,$04,$26,$0A,$89,$05,$26,$1E,$89,$04,$26,$14,$80,$B3
	db $1E,$B4,$89,$0D,$93,$04,$97,$02,$8E,$0F,$02,$0B,$00,$28,$2A,$1E
	db $26,$1E,$28,$1E,$2D,$1E,$26,$14,$28,$0A,$2A,$14,$26,$28,$26,$14
	db $80,$B3,$32,$78,$89,$20,$97,$04,$84,$08,$37,$05,$9C,$85,$9B,$93
	db $05,$84,$02,$89,$02,$97,$02,$2D,$14,$2D,$0A,$97,$01,$89,$20,$37
	db $14,$37,$0A,$85,$89,$02,$97,$02,$2D,$14,$2D,$0A,$97,$01,$89,$20
	db $37,$14,$37,$0A,$97,$04,$93,$00,$84,$06,$37,$05,$9C,$85,$9B,$93
	db $05,$89,$02,$97,$02,$2D,$14,$80,$80,$80,$80

;--------------------------------------------------------------------

DATA_16CA:
	db DATA_17B7
	db DATA_17D3
	db DATA_17E3
	db DATA_17F3
	db DATA_1803
	db DATA_1819
	db DATA_1829
	db DATA_183D
	db DATA_1875
	db DATA_1892
	db DATA_18B9
	db DATA_18D1
	db DATA_18FB
	db DATA_1917
	db DATA_1932
	db DATA_194B
	db DATA_1972
	db DATA_19B9
	db DATA_19E7
	db DATA_1A11
	db DATA_1A39
	db DATA_1A6B
	db DATA_1A87
	db DATA_1AB5
	db DATA_1ADD
	db DATA_1B00
	db DATA_1B23
	db DATA_1B46
	db DATA_1B8B
	db DATA_1BE1
	db DATA_1C0F
	db DATA_1C3C
	db DATA_1C43
	db DATA_1C8A
	db DATA_1C9E
	db DATA_1CAE
	db DATA_1CC6
	db DATA_1CE2
	db DATA_1D0A
	db DATA_1D0D
	db DATA_1D25
	db DATA_1D58
	db DATA_1D5B
	db DATA_1D91
	db DATA_1DAF
	db DATA_1DCD
	db DATA_1DEF
	db DATA_1E0F
	db DATA_1E37
	db DATA_1E3A
	db DATA_1E5E
	db DATA_1E61
	db DATA_1EC6
	db DATA_1EE4
	db DATA_1F06
	db DATA_1F2A
	db DATA_1F45
	db DATA_1F5B
	db DATA_1F76
	db DATA_1F8A
	db DATA_1FA4
	db DATA_1FD7
	db DATA_2002
	db DATA_2020
	db DATA_2046
	db DATA_2068
	db DATA_209A
	db DATA_20B4
	db DATA_20CE
	db DATA_20FF
	db DATA_2126
	db DATA_217D
	db DATA_219F
	db DATA_21C6
	db DATA_21E3
	db DATA_21FA
	db DATA_2220
	db DATA_2223
	db DATA_225E

DATA_1719:
	db DATA_17B7>>8
	db DATA_17D3>>8
	db DATA_17E3>>8
	db DATA_17F3>>8
	db DATA_1803>>8
	db DATA_1819>>8
	db DATA_1829>>8
	db DATA_183D>>8
	db DATA_1875>>8
	db DATA_1892>>8
	db DATA_18B9>>8
	db DATA_18D1>>8
	db DATA_18FB>>8
	db DATA_1917>>8
	db DATA_1932>>8
	db DATA_194B>>8
	db DATA_1972>>8
	db DATA_19B9>>8
	db DATA_19E7>>8
	db DATA_1A11>>8
	db DATA_1A39>>8
	db DATA_1A6B>>8
	db DATA_1A87>>8
	db DATA_1AB5>>8
	db DATA_1ADD>>8
	db DATA_1B00>>8
	db DATA_1B23>>8
	db DATA_1B46>>8
	db DATA_1B8B>>8
	db DATA_1BE1>>8
	db DATA_1C0F>>8
	db DATA_1C3C>>8
	db DATA_1C43>>8
	db DATA_1C8A>>8
	db DATA_1C9E>>8
	db DATA_1CAE>>8
	db DATA_1CC6>>8
	db DATA_1CE2>>8
	db DATA_1D0A>>8
	db DATA_1D0D>>8
	db DATA_1D25>>8
	db DATA_1D58>>8
	db DATA_1D5B>>8
	db DATA_1D91>>8
	db DATA_1DAF>>8
	db DATA_1DCD>>8
	db DATA_1DEF>>8
	db DATA_1E0F>>8
	db DATA_1E37>>8
	db DATA_1E3A>>8
	db DATA_1E5E>>8
	db DATA_1E61>>8
	db DATA_1EC6>>8
	db DATA_1EE4>>8
	db DATA_1F06>>8
	db DATA_1F2A>>8
	db DATA_1F45>>8
	db DATA_1F5B>>8
	db DATA_1F76>>8
	db DATA_1F8A>>8
	db DATA_1FA4>>8
	db DATA_1FD7>>8
	db DATA_2002>>8
	db DATA_2020>>8
	db DATA_2046>>8
	db DATA_2068>>8
	db DATA_209A>>8
	db DATA_20B4>>8
	db DATA_20CE>>8
	db DATA_20FF>>8
	db DATA_2126>>8
	db DATA_217D>>8
	db DATA_219F>>8
	db DATA_21C6>>8
	db DATA_21E3>>8
	db DATA_21FA>>8
	db DATA_2220>>8
	db DATA_2223>>8
	db DATA_225E>>8

DATA_1768:
	db $05,$06,$05,$03,$05,$06,$04,$06,$05,$05,$07,$05,$05,$05,$05,$05
	db $03,$09,$09,$09,$05,$06,$05,$05,$05,$05,$05,$07,$0A,$05,$05,$09
	db $05,$05,$05,$05,$05,$0A,$0A,$05,$05,$09,$08,$08,$08,$08,$08,$08
	db $09,$08,$09,$08,$09,$09,$07,$07,$07,$07,$0B,$07,$05,$04,$05,$05
	db $05,$07,$05,$05,$06,$05,$07,$06,$06,$09,$08,$06,$06,$06,$05

DATA_17B7:
	db $B3,$3C,$7F,$A2,$01,$78,$01,$78,$14,$1E,$0F,$89,$18,$8E,$01,$8C
	db $05,$35,$01,$90,$3C,$93,$10,$9F,$9C,$50,$24,$80

DATA_17D3:
	db $B3,$7D,$7F,$A2,$01,$7E,$01,$7E,$01,$7E,$05,$89,$17,$2B,$1E,$80

DATA_17E3:
	db $B3,$7D,$7F,$A2,$01,$7E,$01,$7E,$01,$7E,$05,$89,$12,$33,$19,$80

DATA_17F3:
	db $B3,$78,$7F,$A2,$01,$7E,$01,$7E,$01,$7E,$05,$89,$13,$2F,$1E,$80

DATA_1803:
	db $B3,$64,$7F,$A2,$01,$7E,$01,$7E,$28,$00,$05,$89,$14,$86,$08,$26
	db $9C,$24,$22,$20,$1E,$80

DATA_1819:
	db $B3,$50,$7F,$A2,$01,$7E,$01,$7E,$01,$7E,$05,$89,$14,$32,$10,$80

DATA_1829:
	db $B3,$78,$7F,$A2,$01,$7E,$01,$7E,$01,$7E,$05,$89,$15,$1A,$0C,$1D
	db $09,$21,$07,$80

DATA_183D:
	db $B3,$46,$7F,$98,$A2,$01,$14,$28,$32,$3C,$00,$05,$89,$0B,$86,$02
	db $9A,$1F,$03,$9F,$9C,$9A,$1E,$03,$9A,$1D,$03,$9A,$1C,$03,$9A,$1B
	db $03,$86,$05,$9A,$1A,$03,$9A,$1B,$03,$9A,$1C,$03,$9A,$1D,$03,$9A
	db $1E,$03,$86,$00,$03,$3D,$99,$80

DATA_1875:
	db $B3,$78,$7F,$A2,$01,$50,$01,$50,$50,$00,$05,$89,$19,$88,$00,$0C
	db $1E,$9C,$0B,$14,$0D,$28,$0A,$32,$0C,$0A,$0D,$1E,$80

DATA_1892:
	db $B3,$78,$7F,$99,$89,$01,$A2,$01,$0A,$0A,$78,$05,$00,$01,$36,$02
	db $9C,$89,$25,$A3,$02,$AB,$18,$B2,$18,$8F,$08,$C8,$00,$30,$0D,$80
	db $8F,$01,$3C,$00,$31,$0D,$80

DATA_18B9:
	db $B3,$7D,$7F,$A2,$01,$7E,$01,$7E,$64,$00,$05,$89,$17,$2B,$0D,$9C
	db $90,$02,$84,$07,$09,$0D,$85,$80

DATA_18D1:
	db $B3,$14,$7F,$98,$A2,$01,$7E,$01,$7E,$82,$00,$05,$89,$0B,$86,$02
	db $84,$0D,$9A,$1F,$05,$9F,$9C,$9A,$1D,$05,$9A,$1B,$05,$9A,$19,$05
	db $9A,$17,$05,$85,$97,$00,$99,$01,$01,$80

DATA_18FB:
	db $B3,$78,$7F,$A2,$01,$00,$07,$78,$01,$78,$07,$89,$25,$1A,$01,$9C
	db $9F,$90,$3C,$0A,$05,$90,$1E,$93,$08,$28,$14,$80

DATA_1917:
	db $B3,$78,$7F,$99,$89,$02,$A2,$01,$14,$0A,$78,$01,$78,$05,$31,$02
	db $89,$25,$93,$06,$8F,$01,$0F,$00,$1F,$10,$80

DATA_1932:
	db $B3,$78,$7F,$99,$89,$01,$A2,$01,$14,$0A,$78,$14,$00,$01,$36,$02
	db $89,$25,$8F,$09,$29,$00,$30,$28,$80

DATA_194B:
	db $B3,$78,$7F,$99,$A2,$01,$14,$0A,$78,$01,$78,$19,$89,$02,$31,$02
	db $89,$25,$8F,$01,$03,$00,$1F,$01,$9C,$90,$0F,$92,$19,$9F,$21,$1E
	db $8F,$01,$0C,$00,$00,$10,$80

DATA_1972:
	db $B3,$37,$7F,$A2,$01,$78,$01,$78,$0A,$28,$0F,$89,$23,$A3,$03,$87
	db $19,$9B,$19,$AA,$19,$3B,$01,$90,$1E,$8E,$01,$0A,$00,$9F,$3A,$0A
	db $92,$01,$8E,$01,$28,$00,$00,$0F,$80,$8E,$01,$0A,$00,$3A,$0A,$92
	db $01,$8E,$01,$3C,$00,$00,$0F,$80,$8E,$01,$1E,$00,$39,$0A,$92,$01
	db $8E,$01,$14,$00,$00,$0F,$80

DATA_19B9:
	db $B5,$12,$B5,$13,$B3,$50,$7F,$89,$01,$A2,$01,$64,$01,$64,$01,$64
	db $28,$89,$25,$86,$08,$49,$46,$43,$40,$3D,$3A,$37,$34,$31,$2E,$2B
	db $28,$89,$03,$86,$00,$90,$0D,$29,$01,$93,$27,$1A,$50,$80

DATA_19E7:
	db $B3,$50,$7F,$89,$01,$A2,$01,$64,$01,$64,$01,$64,$28,$89,$09,$86
	db $08,$49,$46,$43,$40,$3D,$3A,$37,$34,$31,$2E,$2B,$28,$89,$1B,$86
	db $00,$90,$37,$29,$04,$93,$27,$4A,$50,$80

DATA_1A11:
	db $B3,$78,$7F,$89,$01,$A2,$01,$6E,$01,$6E,$01,$6E,$28,$89,$00,$86
	db $08,$49,$46,$43,$40,$3D,$3A,$37,$34,$31,$2E,$2B,$28,$86,$00,$90
	db $22,$29,$04,$93,$27,$4A,$50,$80

DATA_1A39:
	db $B3,$37,$7F,$A2,$01,$50,$01,$50,$32,$00,$0A,$89,$18,$90,$00,$32
	db $01,$90,$FF,$9F,$9C,$48,$0C,$90,$00,$3C,$01,$90,$FF,$4D,$0C,$90
	db $00,$46,$01,$90,$FF,$52,$0C,$90,$00,$50,$01,$90,$64,$92,$01,$2F
	db $0C,$80

DATA_1A6B:
	db $B3,$5A,$7F,$A2,$01,$3C,$01,$3C,$14,$00,$05,$89,$0F,$96,$13,$01
	db $01,$86,$02,$32,$9C,$37,$3C,$41,$46,$50,$55,$80

DATA_1A87:
	db $B3,$4B,$7F,$A2,$01,$78,$01,$78,$0A,$28,$0A,$89,$23,$A3,$02,$9A
	db $1A,$AC,$1A,$24,$01,$90,$05,$9F,$22,$07,$92,$01,$00,$0A,$8F,$01
	db $0A,$00,$00,$0A,$80,$92,$01,$8F,$01,$08,$00,$23,$0A,$80

DATA_1AB5:
	db $B3,$5A,$7F,$A2,$01,$7E,$01,$7E,$01,$7E,$0A,$89,$01,$34,$02,$B3
	db $7D,$7F,$89,$13,$2C,$08,$9C,$21,$08,$3A,$02,$2D,$04,$37,$03,$21
	db $06,$3D,$01,$92,$01,$1E,$0B,$80

DATA_1ADD:
	db $B3,$4B,$7F,$A2,$01,$78,$01,$78,$1E,$00,$0F,$89,$24,$A3,$02,$F0
	db $1A,$F8,$1A,$28,$04,$9C,$25,$04,$24,$04,$80,$28,$04,$9C,$22,$04
	db $21,$04,$80

DATA_1B00:
	db $B3,$4B,$7F,$A2,$01,$78,$01,$78,$1E,$00,$0F,$89,$25,$A3,$02,$13
	db $1B,$1B,$1B,$1E,$04,$9C,$14,$04,$13,$04,$80,$1E,$04,$9C,$18,$04
	db $17,$04,$80

DATA_1B23:
	db $B3,$78,$7F,$A2,$01,$78,$01,$78,$01,$78,$0A,$89,$00,$96,$13,$01
	db $03,$86,$04,$32,$9F,$37,$3C,$41,$46,$50,$55,$50,$4B,$46,$41,$3C
	db $37,$32,$80

DATA_1B46:
	db $B3,$46,$7F,$A2,$01,$3C,$01,$3C,$01,$3C,$0A,$89,$1B,$A6,$05,$50
	db $01,$94,$01,$03,$29,$0A,$9F,$95,$4B,$01,$94,$01,$03,$24,$0A,$95
	db $46,$01,$94,$01,$05,$1F,$09,$95,$41,$01,$94,$01,$02,$1A,$0A,$95
	db $46,$01,$94,$01,$01,$1F,$0A,$95,$4B,$01,$94,$01,$03,$24,$09,$95
	db $A8,$05,$55,$1B,$80

DATA_1B8B:
	db $B5,$1D,$B5,$1E,$A5,$05,$B3,$46,$7F,$A2,$01,$78,$01,$78,$8C,$00
	db $0A,$89,$1B,$50,$01,$9C,$94,$01,$01,$32,$0A,$9F,$95,$4B,$01,$94
	db $01,$03,$2E,$0A,$95,$46,$01,$94,$01,$05,$28,$0A,$95,$41,$01,$94
	db $01,$02,$23,$0A,$95,$3C,$01,$94,$01,$01,$1E,$0A,$95,$37,$01,$94
	db $01,$03,$19,$0A,$95,$32,$01,$94,$01,$05,$14,$0A,$95,$2D,$01,$94
	db $01,$02,$0F,$0A,$95,$80

DATA_1BE1:
	db $B3,$5A,$7F,$A2,$01,$78,$01,$78,$8C,$00,$0A,$A5,$05,$89,$00,$96
	db $13,$01,$03,$86,$05,$50,$9F,$9C,$4D,$4A,$47,$44,$41,$3E,$3B,$38
	db $35,$32,$2F,$2C,$29,$26,$23,$20,$1D,$1A,$17,$14,$11,$80

DATA_1C0F:
	db $B3,$28,$7F,$A2,$01,$78,$01,$78,$8C,$00,$0A,$A5,$05,$89,$0F,$96
	db $13,$01,$03,$86,$05,$50,$9C,$4D,$4A,$47,$44,$41,$3E,$3B,$38,$35
	db $32,$2F,$2C,$29,$26,$23,$20,$1D,$1A,$17,$14,$11,$80

DATA_1C3C:
	db $A7,$07,$42,$1C,$B5,$25,$80

DATA_1C43:
	db $B3,$7D,$7F,$A2,$01,$7D,$01,$7D,$14,$28,$0F,$89,$23,$A3,$03,$58
	db $1C,$6C,$1C,$7B,$1C,$18,$01,$90,$0A,$8E,$01,$04,$00,$9F,$26,$0A
	db $92,$01,$8E,$01,$0A,$00,$00,$0F,$80,$8E,$01,$07,$00,$17,$0A,$92
	db $01,$8E,$01,$1E,$00,$00,$0F,$80,$8E,$01,$0C,$00,$16,$0A,$92,$01
	db $8E,$01,$0A,$00,$00,$0F,$80

DATA_1C8A:
	db $B3,$7D,$7F,$A2,$01,$00,$04,$7E,$01,$7E,$05,$89,$12,$8F,$01,$6C
	db $00,$33,$0D,$80

DATA_1C9E:
	db $B3,$6E,$7F,$A2,$01,$78,$01,$78,$26,$00,$07,$89,$19,$1A,$28,$80

DATA_1CAE:
	db $B3,$50,$7F,$A2,$01,$00,$07,$50,$01,$50,$1A,$89,$19,$1A,$01,$9C
	db $9F,$90,$FA,$93,$1A,$50,$1F,$80

DATA_1CC6:
	db $B3,$78,$7F,$A2,$01,$78,$01,$78,$01,$78,$07,$89,$15,$32,$06,$89
	db $01,$9C,$28,$03,$9F,$23,$03,$1E,$03,$19,$0A,$80

DATA_1CE2:
	db $A5,$07,$B3,$3C,$7F,$A2,$01,$00,$09,$50,$01,$50,$1E,$89,$19,$30
	db $01,$90,$28,$9C,$9F,$8F,$01,$05,$55,$27,$01,$00,$01,$A7,$07,$FD
	db $1C,$90,$32,$92,$01,$32,$1F,$80

DATA_1D0A:
	db $A6,$07,$80

DATA_1D0D:
	db $B3,$5A,$7F,$A2,$01,$78,$01,$78,$01,$78,$19,$89,$02,$31,$03,$89
	db $19,$92,$01,$0B,$14,$00,$14,$80

DATA_1D25:
	db $B3,$32,$7F,$89,$0C,$A2,$01,$7E,$01,$7E,$01,$7E,$08,$92,$01,$A3
	db $02,$3A,$1D,$49,$1D,$96,$03,$01,$01,$88,$07,$86,$03,$2C,$9C,$9F
	db $2E,$2F,$31,$80,$96,$04,$01,$01,$88,$09,$86,$03,$2C,$9C,$9F,$2D
	db $2E,$2F,$80

DATA_1D58:
	db $A6,$08,$80

DATA_1D5B:
	db $B3,$78,$7F,$89,$29,$A5,$08,$A2,$01,$00,$14,$32,$01,$32,$14,$06
	db $01,$9C,$9F,$90,$04,$B8,$00,$09,$A3,$02,$79,$1D,$81,$1D,$88,$02
	db $B8,$00,$01,$81,$86,$1D,$88,$FE,$B8,$00,$01,$A7,$08,$73,$1D,$88
	db $00,$92,$01,$06,$14,$80

DATA_1D91:
	db $B3,$78,$7F,$89,$2A,$A5,$08,$A2,$01,$00,$14,$32,$01,$32,$14,$2A
	db $3C,$9C,$9F,$00,$0A,$A7,$08,$A4,$1D,$92,$01,$2A,$14,$80

DATA_1DAF:
	db $B3,$78,$7F,$89,$2A,$A5,$08,$A2,$01,$00,$14,$50,$01,$50,$14,$20
	db $3C,$9C,$9F,$00,$0A,$A7,$08,$C2,$1D,$92,$01,$20,$14,$80

DATA_1DCD:
	db $B3,$78,$7F,$89,$00,$A5,$08,$A2,$01,$00,$14,$28,$01,$28,$14,$8E
	db $01,$78,$08,$35,$3C,$9C,$9F,$00,$0A,$A7,$08,$E4,$1D,$92,$01,$35
	db $14,$80

DATA_1DEF:
	db $B3,$78,$7F,$89,$13,$A5,$08,$A2,$01,$50,$01,$50,$14,$00,$14,$9B
	db $9E,$2F,$01,$9C,$9F,$90,$AA,$1E,$07,$90,$00,$A7,$08,$FE,$1D,$80

DATA_1E0F:
	db $A5,$07,$B3,$3C,$7F,$A2,$01,$00,$09,$3C,$01,$3C,$1E,$89,$19,$3A
	db $01,$90,$50,$9C,$9F,$8F,$01,$28,$0F,$30,$01,$00,$01,$A7,$07,$2A
	db $1E,$90,$32,$92,$01,$3A,$1F,$80

DATA_1E37:
	db $A6,$07,$80

DATA_1E3A:
	db $A5,$07,$B3,$3C,$7F,$A2,$01,$00,$05,$46,$01,$46,$1E,$89,$19,$20
	db $01,$90,$28,$9C,$9F,$1B,$01,$00,$01,$A7,$07,$51,$1E,$90,$0A,$92
	db $01,$29,$1F,$80

DATA_1E5E:
	db $A6,$07,$80

DATA_1E61:
	db $B3,$55,$7F,$A2,$01,$78,$01,$78,$0A,$28,$0F,$89,$23,$A3,$02,$74
	db $1E,$9D,$1E,$2C,$01,$9C,$9F,$90,$0A,$2A,$09,$90,$32,$30,$08,$90
	db $00,$30,$01,$90,$1E,$2E,$09,$92,$01,$90,$46,$34,$08,$90,$00,$34
	db $01,$90,$32,$2F,$03,$90,$5A,$3A,$04,$90,$00,$80,$2D,$01,$9C,$9F
	db $90,$05,$2B,$09,$90,$32,$31,$08,$90,$00,$31,$01,$90,$1E,$2F,$09
	db $92,$01,$90,$46,$35,$08,$90,$00,$36,$01,$90,$32,$30,$03,$90,$5A
	db $3B,$04,$90,$00,$80

DATA_1EC6:
	db $B3,$78,$7F,$A2,$01,$00,$04,$78,$08,$1E,$07,$89,$25,$88,$01,$38
	db $01,$9C,$9F,$90,$3C,$32,$05,$90,$C8,$93,$08,$50,$0D,$80

DATA_1EE4:
	db $B3,$7D,$7F,$A2,$01,$00,$05,$78,$0A,$28,$07,$88,$E8,$89,$27,$86
	db $01,$4C,$9C,$9F,$46,$41,$3C,$86,$00,$36,$03,$90,$C8,$93,$08,$50
	db $0D,$80

DATA_1F06:
	db $B3,$78,$7F,$A2,$01,$78,$01,$78,$14,$3C,$14,$89,$18,$86,$01,$28
	db $9F,$9C,$22,$1B,$0F,$86,$00,$9E,$89,$19,$92,$0A,$1C,$16,$9F,$90
	db $08,$32,$09,$80

DATA_1F2A:
	db $B3,$64,$7F,$A2,$01,$28,$03,$7E,$1E,$00,$0A,$89,$19,$2F,$06,$9F
	db $2D,$01,$2B,$01,$8F,$01,$09,$00,$28,$1E,$80

DATA_1F45:
	db $B3,$78,$7F,$A2,$01,$78,$01,$78,$0A,$00,$14,$89,$0C,$86,$02,$19
	db $9C,$9F,$23,$2D,$37,$80

DATA_1F5B:
	db $B3,$64,$7F,$A2,$01,$7E,$01,$7E,$1E,$00,$0A,$89,$19,$14,$06,$9F
	db $1E,$01,$28,$01,$8F,$01,$09,$00,$2C,$1E,$80

DATA_1F76:
	db $B3,$32,$7F,$A2,$01,$1A,$03,$7E,$28,$00,$0A,$89,$24,$52,$01,$90
	db $F0,$1E,$28,$80

DATA_1F8A:
	db $B3,$78,$7F,$A2,$01,$78,$01,$78,$14,$00,$14,$89,$24,$28,$01,$9F
	db $90,$C8,$9C,$32,$03,$90,$78,$1B,$0F,$80

DATA_1FA4:
	db $B3,$46,$7F,$89,$1C,$A2,$01,$7E,$01,$7E,$01,$7E,$05,$92,$01,$A3
	db $02,$B9,$1F,$C8,$1F,$96,$03,$01,$01,$88,$05,$86,$03,$2C,$9C,$9F
	db $2F,$31,$33,$80,$96,$05,$01,$01,$88,$04,$86,$03,$2C,$9C,$9F,$30
	db $32,$34,$80

DATA_1FD7:
	db $B3,$64,$7F,$A2,$01,$7E,$01,$7E,$0A,$00,$05,$89,$2C,$86,$05,$88
	db $02,$A3,$04,$F2,$1F,$F6,$1F,$FA,$1F,$FE,$1F,$44,$9C,$44,$80,$42
	db $9C,$42,$80,$45,$9C,$45,$80,$47,$9C,$47,$80

DATA_2002:
	db $B3,$78,$7F,$89,$2B,$88,$04,$A2,$01,$78,$01,$78,$01,$78,$0A,$2D
	db $05,$2D,$03,$2D,$03,$2D,$02,$2D,$03,$2D,$03,$2D,$05,$80

DATA_2020:
	db $B3,$78,$7F,$89,$2B,$88,$01,$A2,$01,$78,$01,$78,$01,$78,$0A,$2D
	db $07,$2D,$06,$2D,$05,$2D,$06,$2D,$04,$2D,$03,$2D,$03,$2D,$03,$2D
	db $03,$2D,$04,$2D,$05,$80

DATA_2046:
	db $B3,$78,$7F,$89,$2B,$88,$F2,$A2,$01,$78,$01,$78,$01,$78,$0A,$2D
	db $09,$2D,$07,$2D,$06,$2D,$05,$2D,$05,$2D,$06,$2D,$07,$2D,$08,$2D
	db $09,$80

DATA_2068:
	db $B3,$78,$7F,$89,$2C,$86,$04,$A2,$01,$78,$01,$78,$18,$00,$0A,$39
	db $9C,$3D,$41,$45,$49,$A2,$01,$3C,$01,$3C,$18,$00,$0A,$39,$9C,$3D
	db $41,$45,$49,$A2,$01,$1E,$01,$1E,$18,$00,$0A,$39,$9C,$3D,$41,$45
	db $49,$80

DATA_209A:
	db $B3,$78,$7F,$A2,$01,$78,$01,$78,$01,$78,$07,$89,$21,$2C,$01,$9C
	db $9F,$90,$B9,$1E,$0A,$90,$03,$32,$14,$80

DATA_20B4:
	db $B3,$78,$7F,$A2,$01,$78,$01,$78,$01,$78,$07,$89,$21,$28,$01,$9C
	db $9F,$90,$B9,$19,$0A,$90,$03,$32,$14,$80

DATA_20CE:
	db $B5,$45,$B3,$32,$7F,$98,$A2,$01,$14,$28,$32,$05,$0A,$1E,$89,$0B
	db $86,$02,$9A,$1A,$03,$9C,$9A,$1B,$03,$86,$05,$9A,$1C,$03,$9A,$1D
	db $03,$9A,$1E,$86,$00,$03,$0A,$92,$01,$9A,$1F,$86,$00,$03,$1E,$99
	db $80

DATA_20FF:
	db $B3,$78,$7F,$89,$2B,$A2,$01,$78,$01,$78,$1E,$3C,$0A,$2D,$07,$9C
	db $2D,$06,$2C,$05,$2C,$06,$2B,$04,$2B,$03,$2A,$03,$2A,$03,$29,$03
	db $92,$01,$29,$04,$28,$05,$80

DATA_2126:
	db $B3,$78,$7F,$A2,$01,$00,$07,$78,$04,$00,$04,$89,$00,$A3,$03,$3B
	db $21,$51,$21,$67,$21,$49,$01,$90,$3C,$9F,$50,$0D,$90,$00,$49,$01
	db $90,$1E,$92,$05,$0A,$12,$92,$00,$90,$00,$80,$49,$01,$90,$28,$9F
	db $50,$0D,$90,$00,$4A,$01,$90,$14,$92,$05,$50,$12,$92,$00,$90,$00
	db $80,$49,$01,$90,$32,$9F,$50,$0D,$90,$00,$49,$01,$90,$32,$92,$05
	db $0A,$12,$92,$00,$90,$00,$80

DATA_217D:
	db $B3,$78,$7F,$89,$2A,$88,$F2,$A2,$01,$78,$01,$78,$28,$00,$0A,$18
	db $0B,$19,$09,$1B,$07,$1D,$06,$86,$05,$9C,$20,$23,$27,$29,$2F,$33
	db $37,$80

DATA_219F:
	db $B3,$78,$7F,$89,$2B,$88,$FF,$A2,$01,$78,$01,$78,$14,$00,$0A,$23
	db $0A,$23,$06,$24,$05,$24,$06,$25,$04,$26,$03,$9C,$27,$03,$28,$03
	db $2A,$03,$2C,$04,$2E,$05,$80

DATA_21C6:
	db $B5,$4A,$B3,$50,$14,$A2,$01,$78,$01,$78,$8C,$00,$02,$89,$19,$11
	db $0A,$9F,$1E,$01,$23,$01,$8F,$01,$02,$00,$27,$8C,$80

DATA_21E3:
	db $B3,$50,$EC,$A2,$01,$78,$01,$78,$8C,$00,$01,$89,$19,$18,$0D,$9F
	db $8F,$01,$01,$00,$23,$8C,$80

DATA_21FA:
	db $B3,$78,$7F,$89,$2D,$A5,$08,$A2,$01,$00,$14,$50,$01,$50,$14,$8E
	db $01,$0F,$0A,$36,$01,$9C,$9F,$90,$28,$3A,$09,$00,$01,$A7,$08,$15
	db $22,$92,$01,$2D,$14,$80

DATA_2220:
	db $A6,$08,$80

DATA_2223:
	db $B3,$78,$7F,$A2,$01,$50,$01,$50,$01,$50,$07,$89,$2D,$A3,$02,$36
	db $22,$4A,$22,$3A,$01,$9C,$9F,$90,$23,$1E,$0A,$90,$00,$9E,$89,$21
	db $1E,$03,$89,$25,$30,$08,$80,$38,$01,$9C,$9F,$90,$23,$1A,$0A,$90
	db $00,$9E,$89,$21,$1C,$03,$89,$25,$2E,$08,$80

DATA_225E:
	db $B3,$78,$7F,$A2,$01,$50,$01,$50,$01,$50,$07,$89,$2C,$96,$0D,$01
	db $01,$A3,$02,$75,$22,$78,$22,$35,$06,$80,$34,$06,$80

;--------------------------------------------------------------------

base $38B8
DATA_38B8:

base $38E7
DATA_38E7:

;--------------------------------------------------------------------

base off