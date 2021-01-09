ADDR_8297B4:
	BRA.b $F2

ADDR_8297B6:
	PLX
ADDR_8297B7:
	CMP.w !REGISTER_APUPort0
	BNE ADDR_8297B7
	STA.l $001CE4
	STA.w !REGISTER_APUPort0
	REP.b #$20
	LDA.w #$0001
	STA.l $001CE0
	STA.l $001CE2
	PLP
	RTL

UNK_8297D2:
	db $CF,$F0,$0F,$C6,$00,$00,$0E,$F6
	db $4B,$30,$1F,$FF,$A6,$42,$52,$F0
	db $FF,$01,$21,$14,$4E,$A6,$AC,$DE
	db $33,$FD,$D1,$F1,$0E,$F1,$B6,$11
	db $01,$25,$BC,$70,$EC,$01,$F2,$A6
	db $31,$DD,$FF,$02,$11,$13,$0C,$BA
	db $A6,$BD,$24,$FB,$CF,$01,$3F,$F1
	db $12,$B6,$FE,$06,$F5,$3F,$CD,$31
	db $12,$10,$A6,$EF,$00,$02
