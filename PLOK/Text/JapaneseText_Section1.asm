table "Tables/Fonts/SmallFont_PLOK_J.txt"

JohnsCheat:
	db "JOHN'S CHEAT",$FF

LyndonsCheat:
	db "LYNDON'S CHEAT",$FF

NintendoPower:
	db "NINTENDO POWER",$FF

BadInfluence:
	db "BAD INFLUENCE!",$FF

FinalScore:
	dw $0000,$0000,$0124,$00CC,$00CA,$00E0,$0004,$0000
	dw $0000,$0000,$0000,$0000,$00CE,$00C6,$0006,$0104
	dw $00E6,$0000,$0000,$0000,$FFFF

Score:
	db $2E,$26,$2C,$26,$2A,$26,$24,$26,$22,$26
	db "SCORE",$FF

PostCottonIslandBobbinsBrosPart2:
.Line1:
	db $41,$18,$15,$1C,$1B,$A2,$22,$24,$22,$0A,$14,$44,$FF

.Line2:
	db "PLOK",$23,$0B,$0D,$1F,$0F,$0D,$38,$1C,$10,$19,$43,$7C
	db $15,$0F,$15,$42,$42,$41,$FF

PostAkrillicRockyfellaPart2:
.Line1:
	db $41,"PLOK",$23,$19,$28,$15,$0B,$36,$FF

.Line2:
	db $1C,$0A,$15,$1F,$14,$80,$12,$1C,$44,$FF

.Line3:
	db $5E,$65,$22,$0F,$11,$33,$7C,$1F,$23,$0B,$38,$1C,$0B,$38,$19,$43
	db $41,$FF

FlashbackTransitionText:
.Line1:
	db $40,$05,$BC,$21,$37,$28,$0D,$44,$0E,$7F,$0B,$1A,$39,$37,"PLOK"
	db $23,$FF

.Line2:
	db $18,$13,$84,$44,$18,$22,$0E,$28,$2C,$31,$36,$14,$7C,$15,$1C,$0B
	db $19,$43,$41,$FF

.Line3:
	db $FF

.Line4:
	db $FF

PlokAquiresAmuletScene:
.Line2:
	dw $0000,$00AC,$0024,$00A8,$002A,$002C,$0044,$0082
	dw $0000,$0000,$FFFF

.Line3:
	dw $0000,$014E,$0100,$0040,$0060,$0102,$002C,$00C0
	dw $0000,$0000,$FFFF

.Line4:
	dw $0000,$002A,$008C,$0062,$0026,$014E,$018E,$0166
	dw $0044,$0000,$FFFF

.Line5:
	dw $FFFF

GameOver:
	dw $0106,$00E0,$010A,$00E6,$0000,$0006,$01C2,$00E6
	dw $0104,$00C4,$FFFF

UNK_81B37E:
	db $4E,$4C,$4A,$48,$FF

RestartOption:
	dw $0000,$0000,$028A,$016E,$028C,$0122,$024A,$0000
	dw $0000,$0000,$0000,$0000,$01E2,$028E,$02A0,$02A2
	dw $0228,$0000,$0000,$0000,$FFFF

PressStart:
	dw $0000,$0000,$0002,$0104,$00E6,$00CE,$00CE,$0000
	dw $0000,$0000,$0000,$0000,$00CE,$00C8,$00E0,$0104
	dw $00C8,$0000,$0000,$0000,$FFFF

cleartable
namespace off
