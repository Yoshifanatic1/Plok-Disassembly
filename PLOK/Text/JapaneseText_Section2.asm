table "Tables/Fonts/SmallFont_PLOK_J.txt"

SkillLevel:
	db "SKILL  LEVEL",$FF

NormalDifficultyName:
	dw $0000,$0000,$00CA,$0006,$0104,$010A,$00E0,$0004
	dw $0000,$0000,$FFFF

EasyDifficultyName:
	dw $0000,$0000,$0000,$00E6,$00E0,$00CE,$012E,$0000
	dw $0000,$0000,$FFFF

WorldName:
.Fleapit:
	dw $0000,$0124,$0004,$00E6,$00E0,$0002,$00CC,$00C8
	dw $0000,$0000,$FFFF

.TestDrive:
	db "TEST DRIVE",$FF

.CottonIsland:
	dw $0000,$0000,$00C6,$0006,$00C8,$00C8,$0006,$00CA
	dw $0000,$0000,$0000,$0000,$00CC,$00CE,$0004,$00E0
	dw $00CA,$00E2,$0000,$0000,$FFFF

.Legacy:
.Island:
	dw $0000,$0004,$00E6,$0106,$00E0,$00C6,$012E,$0000
	dw $0000,$0000,$0000,$0000,$0000,$00CC,$00CE,$0004
	dw $00E0,$00CA,$00E2,$0000,$FFFF

.Akrillic:
	dw $0000,$00E0,$0008,$0104,$00CC,$0004,$0004,$00CC
	dw $00C6,$0000,$FFFF

LevelName:
.GarlenBeach:
	dw $0000,$0000,$0106,$00E0,$0104,$0004,$00E6,$00CA
	dw $0000,$0000,$0000,$0000,$00E4,$00E6,$00E0,$00C6
	dw $00E8,$0000,$0000,$0000,$FFFF

.SleepyDale:
	dw $0000,$0000,$00CE,$0004,$00E6,$00E6,$0002,$012E
	dw $0000,$0000,$0000,$0000,$0000,$00E2,$00E0,$0004
	dw $00E6,$0000,$0000,$0000,$FFFF

.PloksHouse:
#IntroCutscenePart1_Line1:
	dw $0000,$0000,$0002,$0004,$0006,$0008,$000A,$000C
	dw $0000,$0000,$FFFF

#IntroCutscenePart1_Line2:
	dw $0000,$0000,$000E,$0020,$0022,$0024,$0026,$0028
	dw $0000,$0000,$FFFF

#IntroCutscenePart1_Line3:
	dw $FFFF

.PlokTown:
	dw $0002,$0004,$0006,$0008,$0000,$00C8,$0006,$01CA
	dw $00CA,$0000,$FFFF

.ThePenkinos:
	dw $0000,$0002,$00E6,$00CA,$0008,$00CC,$00CA,$0006
	dw $00CE,$0000,$FFFF

.VengeThicket:
	dw $0000,$0000,$01C2,$00E6,$00CA,$0106,$00E6,$0000
	dw $0000,$0000,$0000,$00C8,$00E8,$00CC,$00C6,$0008
	dw $00E6,$00C8,$0000,$0000,$FFFF

.DreamyCove:
	dw $00E2,$0104,$00E6,$00E0,$010A,$0000,$00C6,$0006
	dw $01C2,$00E6,$FFFF

.CreepyForest:
	dw $0000,$0000,$00C6,$0104,$00E6,$00E6,$0002,$012E
	dw $0000,$0000,$0000,$0000,$0124,$0006,$0104,$00E6
	dw $00CE,$00C8,$0000,$0000,$FFFF

.WomackSpider:
	dw $0000,$0000,$01CA,$0006,$010A,$00E0,$00C6,$0008
	dw $0000,$0000,$0000,$0000,$00CE,$0002,$00CC,$00E2
	dw $00E6,$0104,$0000,$0000,$FFFF

.CreepyCrag:
	dw $0000,$0000,$00C6,$0104,$00E6,$00E6,$0002,$012E
	dw $0000,$0000,$0000,$0000,$0000,$00C6,$0104,$00E0
	dw $0106,$0000,$0000,$0000,$FFFF

.GohomeCavern:
	dw $0000,$0000,$0106,$0006,$00E8,$0006,$010A,$00E6
	dw $0000,$0000,$0000,$0000,$00C6,$00E0,$01C2,$00E6
	dw $0104,$00CA,$0000,$0000,$FFFF

.CrashingRocks:
	dw $0000,$00C6,$0104,$00E0,$00CE,$00E8,$00CC,$00CA
	dw $0106,$0000,$0000,$0000,$0104,$0006,$00C6,$0008
	dw $00CE,$0000,$0000,$0000,$FFFF

.RockyFella:
	dw $0000,$0000,$0104,$0006,$00C6,$0008,$012E,$0122
	dw $0000,$0000,$0000,$0000,$0124,$00E6,$0004,$0004
	dw $00E0,$0000,$0000,$0000,$FFFF

.BrendammiBog:
	db "BRENDAMMI  BOG",$FF

.BadreamFens:
	db "BADREAM FENS",$FF

.BreezyBeach:
	db "BREEZY BEACH",$FF

.MaceCove:
	dw $010A,$00E0,$00C6,$00E6,$0000,$00C6,$0006,$01C2
	dw $00E6,$0000,$FFFF

.FoolsGap:
	dw $0124,$0006,$0006,$0004,$018A,$00CE,$0000,$0106
	dw $00E0,$0002,$FFFF

.ZigZag:
	dw $0000,$01C4,$00CC,$0106,$0000,$01C4,$00E0,$0106
	dw $0000,$0000,$FFFF

.SpongeRocks:
	dw $0000,$0000,$00CE,$0002,$0006,$00CA,$0106,$00E6
	dw $0000,$0000,$0000,$0000,$0104,$0006,$00C6,$0008
	dw $00CE,$0000,$0000,$0000,$FFFF

.SwiftyPeaks:
	dw $0000,$0000,$00CE,$01CA,$00CC,$0124,$00C8,$012E
	dw $0000,$0000,$0000,$0000,$0000,$01C2,$00CC,$00E6
	dw $01CA,$0000,$0000,$0000,$FFFF

.LogTrail:
	dw $0004,$0006,$0106,$0000,$00C8,$0104,$00E0,$00CC
	dw $0004,$0000,$FFFF

.CrouchHill:
	dw $0000,$0000,$00C6,$0104,$0006,$0108,$00C6,$00E8
	dw $0000,$0000,$0000,$0000,$0000,$00E8,$00CC,$0004
	dw $0004,$0000,$0000,$0000,$FFFF

.CyclingClever:
	dw $0000,$00C6,$012E,$00C6,$0004,$00CC,$00CA,$0106
	dw $0000,$0000,$0000,$0000,$00C6,$0004,$00E6,$01C2
	dw $00E6,$0104,$0000,$0000,$FFFF

.RoadHogging:
	dw $0000,$0000,$0000,$0104,$0006,$00E0,$00E2,$0000
	dw $0000,$0000,$0000,$00E8,$0006,$0106,$0106,$00CC
	dw $00CA,$0106,$0000,$0000,$FFFF

.HighFlying:
	dw $0000,$0000,$0000,$00E8,$00CC,$0106,$00E8,$0000
	dw $0000,$0000,$0000,$0000,$0124,$0004,$012E,$00CC
	dw $00CA,$0106,$0000,$0000,$FFFF

.EasyRiding:
	dw $0000,$0000,$0000,$00E6,$00E0,$00CE,$012E,$0000
	dw $0000,$0000,$0000,$0000,$0104,$00CC,$00E2,$00CC
	dw $00CA,$0106,$0000,$0000,$FFFF

.InASpin:
	dw $00CC,$00CA,$0000,$00E0,$0000,$00CE,$0002,$00CC
	dw $00CA,$0000,$FFFF

.RealRumblings:
	dw $0000,$0000,$0000,$0104,$00E6,$00E0,$0004,$0000
	dw $0000,$0000,$0104,$0108,$010A,$00E4,$0004,$00CC
	dw $00CA,$0106,$00CE,$0000,$FFFF

.SilentRunning:
	dw $0000,$0000,$00CE,$00CC,$0004,$00E6,$00CA,$00C8
	dw $0000,$0000,$0000,$0104,$0108,$00CA,$00CA,$00CC
	dw $00CA,$0106,$0000,$0000,$FFFF

.Level1:
	db "LEVEL 1!",$FF

.Level2:
	db "LEVEL 2!",$FF

.Level3:
	db "LEVEL 3!",$FF

.Level4:
	db "LEVEL 4!",$FF

.Level5:
	db "LEVEL 5!",$FF

.Level6:
	db "LEVEL 6!",$FF

.Level7:
	db "LEVEL 7!",$FF

.Level8:
	db "LEVEL 8!",$FF

.Beach:
	dw $0000,$0000,$00E4,$00E6,$00E0,$00C6,$00E8,$0000
	dw $0000,$0000,$FFFF

.Bridge:
	dw $0000,$0000,$00E4,$0104,$00CC,$00E2,$0106,$00E6
	dw $0000,$0000,$FFFF

.Columns:
	dw $0000,$00C6,$0006,$0004,$0108,$010A,$00CA,$00CE
	dw $0000,$0000,$FFFF

.LogFalls:
	dw $0004,$0006,$0106,$0000,$0124,$00E0,$0004,$0004
	dw $00CE,$0000,$FFFF

.RicketyBridge:
	dw $0000,$0104,$00CC,$00C6,$0008,$00E6,$00C8,$012E
	dw $0000,$0000,$0000,$0000,$00E4,$0104,$00CC,$00E2
	dw $0106,$00E6,$0000,$0000,$FFFF

.CrazyCradles:
	dw $0000,$0000,$0104,$00CC,$00E2,$00E6,$00CE,$0000
	dw $0000,$0000,$FFFF

.BlindLeap:
	dw $00E4,$0004,$00CC,$00CA,$00E2,$0000,$0004,$00E6
	dw $00E0,$0002,$FFFF

.BobbinsBros:
	dw $0000,$00E4,$0006,$00E4,$00E4,$00CC,$00CA,$00CE
	dw $0000,$0000,$0000,$00E4,$0104,$0006,$00C8,$00E8
	dw $00E6,$0104,$00CE,$0000,$FFFF

.TheFleaQueen:
	dw $0124,$0004,$00E6,$00E0,$0000,$026E,$0108,$00E6
	dw $00E6,$00CA,$FFFF

Plokontinue:
	dw $028E,$02C0,$02C2,$0228,$02C4,$02C6,$02C8,$02CA
	dw $0122,$00C4,$FFFF

BonusPlok:
	dw $00E4,$0006,$00CA,$0108,$00CE,$0000,$0002,$0004
	dw $0006,$0008,$FFFF

Paused:
	dw $0000,$0000,$0002,$00E0,$0108,$00CE,$00E6,$00E2
	dw $0000,$0000,$FFFF

Intermission:
	db "INTERMISSION",$FF

LevelSelect:
	db "LEVEL SELECT",$FF

UNK_81BB1C:					; Note: These 3 tables aren't referenced anywhere
	dw UnusedCottonIsland,UnusedLevelName1,UnusedLevelName2,UnusedLevelName3
	dw UnusedLevelName4

UNK_81BB26:
	dw $5C62,$5C82,$5CA2,$5CC2
	dw $5CE2,$5D02,$5D22,$5D42

UNK_81BB36:
	dw LevelName_Level1,LevelName_Level2,LevelName_Level3,LevelName_Level4
	dw LevelName_Level5,LevelName_Level6,LevelName_Level7,LevelName_Level8

FontTest:
	db $00,$00,$01,$00,$02,$00,$03,$00,$04,$00,$05,$00,$06,$00,$07,$00
	db $08,$00,$09,$00,$0A,$00,$13,$00,$14,$00,$15,$00,$16,$00,$17,$00
	db $18,$00,$19,$00,$1A,$00,$1B,$00,$1C,$00,$1D,$00,$1E,$00,$1F,$00
	db $0B,$00,$0C,$00,$0D,$00,$0E,$00,$0F,$00,$10,$00,$11,$00,$12,$00
	db $20,$00,$21,$00,$22,$00,$23,$00,$24,$00,$25,$00,$26,$00,$27,$00

UnusedCottonIsland:
	db "COTTON ISLAND",$FF

UnusedLevelName1:
	db "AKRYLIC 1-8  ",$FF

UnusedLevelName2:
	db "AKRYLIC 9-16 ",$FF

UnusedLevelName3:
	db "PLOK'S LEGACY",$FF

UnusedLevelName4:
	db "FLEAPIT TEST",$FF

BuildDate:
	db "15.42  5 MAY '93",$FF

SecretWarp:
	dw $0000,$0000,$00CE,$00E6,$00C6,$0104,$00E6,$00C8
	dw $0000,$0000,$0000,$0000,$02A4,$02A6,$02A8,$02AA
	dw $02AC,$0000,$0000,$0000,$FFFF

SuperBonus:
	dw $0000,$0000,$00CE,$0108,$0002,$00E6,$0104,$0000
	dw $0000,$0000,$0000,$0000,$00E4,$0006,$00CA,$0108
	dw $00CE,$00C4,$0000,$0000,$FFFF

CopyDetectionLine:
	db "ILLEGAL GAME CONFIGURATION",$FF

RegionLockout:
.Line1:
	db "THIS GAME PAK IS NOT DESIGNED",$FF

.Line2:
	db "FOR YOUR",$FF

.Line3:
	db "SUPER FAMICOM OR SUPER NES.",$FF

#SublicensedByActivision:
	db "SUBLICENSED TO ACTIVISION.",$FF

.Line4:
	db "COPYRIGHT TRADEWEST INC. 1993",$FF

SplashScreenText:
.Line1:
	db "PLOKtm AND (C) 1993",$FF

#JohnAndStePickford:
.Line2:
	db "JOHN PICKFORD AND STE PICKFORD",$FF

.Line3:
	db "ALL RIGHTS RESERVED.",$FF

.Line4:
	db "PLOK IS A U.S.",$FF

.Line5:
	db "REGISTERED TRADEMARK.",$FF

.Line6:
	db "LICENSED TO TRADEWEST, INC.",$FF

.Line7:
	db "BY SOFTWARE CREATIONS",$FF

.Line8:
	db "(HOLDINGS) LTD.",$FF

.Line9:
	db "                     ",$FF

ClearLargeLetterLine:
	dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dw $0000,$0000,$FFFF

ClearSmallLetterLine:
	db "                                ",$FF

IntroCutscenePart1:
.Line4
	dw $0000,$0000,$002A,$002C,$002E,$0040,$0040,$0042
	dw $0000,$0000,$FFFF

.Line5:
	dw $0000,$0000,$002A,$002C,$0044,$0046,$0048,$004A
	dw $0000,$0000,$FFFF

.Line6:
	dw $0000,$004C,$004E,$0060,$0040,$0040,$0062,$0064
	dw $0000,$0000,$FFFF

.Line7:
	dw $0000,$0000,$0066,$0068,$0044,$0062,$004A,$0000
	dw $0000,$0000,$FFFF

.Line8:
	dw $0000,$006A,$006C,$006E,$0080,$002A,$0040,$004A
	dw $0000,$0000,$0000,$0000,$0000,$000E,$0024,$0082
	dw $0000,$0000,$0000,$0000,$0000,$0084,$0068,$0086
	dw $002C,$0044,$0088,$004A,$0000,$0000,$FFFF

.Line9:
	dw $008A,$008C,$000A,$000E,$000A,$008E,$00A0,$008C
	dw $002E,$0064,$0000,$00A2,$00A4,$0040,$00A6,$00A8
	dw $00AA,$00AC,$0082,$0000,$00AE,$0068,$00C0,$00C2
	dw $002C,$0044,$002C,$0044,$00C4,$0000,$FFFF

.Line10:
	dw $FFFF

.Line11:
	dw $FFFF

.Line12:
	dw $FFFF

.Line13:
	dw $FFFF

IntroCutscenePart2:
.Line1:
	db "WHERE IS IT?!!!",$FF

.Line2:
	db "HMM... CREEPY CRAG?",$FF

.Line3:
.Line5:
.Line7:
	db "NOPE!",$FF

.Line4:
	db "BRENDAMMI BOG?",$FF

.Line6:
	db "BREEZY BEACH?",$FF

.Line8:
	db "WHERE ELSE COULD IT BE?",$FF

.Line9:
	db "AHA!... THERE IT IS!",$FF

.Line10:
	db "ON COTTON ISLAND!",$FF

.Line11:
	db "  THERE'LL BE TROUBLE!  ",$FE
	db "  I'M COMING TO GET YA  ",$FE
	db "AND LIMBS ARE GONNA FLY!",$FF

PloksHouseLevelEnd:
.Line1:
	dw $0000,$00AC,$0048,$0140,$002A,$008C,$00EC,$0060
	dw $0102,$0000,$FFFF

.Line2:
	dw $0000,$0000,$0000,$0080,$0062,$0080,$0064,$0000
	dw $0000,$0000,$FFFF

.Line3:
	dw $0000,$014E,$0100,$0040,$0060,$0102,$002C,$00C0
	dw $0000,$0000,$FFFF

.Line4:
	dw $0000,$0000,$000E,$000A,$018C,$0180,$0024,$0026
	dw $0000,$0000,$FFFF

.Line5:
	dw $0000,$0000,$0000,$014E,$018E,$0166,$0162,$0000
	dw $0000,$0000,$FFFF

.Line6:
	dw $0000,$01A0,$01A2,$01A4,$002E,$008C,$0024,$0026
	dw $0182,$0000,$FFFF

.Line7:
	dw $01A6,$01A8,$01AA,$01AC,$012A,$01AE,$012A,$01C0
	dw $01A2,$0000,$FFFF

.Line8:
	dw $0000,$0000,$0000,$000A,$012A,$002A,$0186,$0000
	dw $0000,$0000,$FFFF

.Line9:
	dw $FFFF

.Line10:
#PlokAquiresAmuletScene_Line1:
	dw $0000,$0000,$0202,$0122,$0000,$0202,$0122,$0000
	dw $0000,$0000,$FFFF

RaceAgainst:
	dw $0000,$0000,$0000,$0104,$00E0,$00C6,$00E6,$0000
	dw $0000,$0000,$0000,$00E0,$0106,$00E0,$00CC,$00CA
	dw $00CE,$00C8,$0000,$0000,$FFFF

Time:
	dw $0000,$0000,$0000,$00C8,$00CC,$010A,$00E6,$0000
	dw $0000,$0000,$FFFF

OnYourMarks:
	dw $0000,$0284,$0286,$012A,$01A2,$0040,$002E,$00C4
	dw $0000,$0000,$FFFF

GetSet:
	dw $0000,$0000,$0000,$01E0,$0122,$0040,$00C4,$0000
	dw $0000,$0000,$FFFF

Go:
	dw $0000,$0000,$0000,$0288,$0228,$00C4,$0000,$0000
	dw $0000,$0000,$FFFF

RaceLost:
	dw $0104,$00E0,$00C6,$00E6,$0000,$0004,$0006,$00CE
	dw $00C8,$0000,$FFFF

JLDPBuckley:
	db "J.L.D.P.BUCKLEY!"

Demo1Text:
.Line1:
	db $41,$C8,$4C,$7A,$36,$1B,$0F,$38,$1C,$44,$FF

.Line2:
	db "PLOK",$36,$14,$2E,$0C,$1F,$0C,$7E,$0F,$15,$28,$16,$43
	db $41,$FF

.Line3:
	db $41,$C8,$4C,$7A,$36,$15,$19,$1F,$0E,$16,$1D,$44,$FF

.Line4:
	db "PLOK",$7C,$15,$39,$7C,$29,$28,$16,$43,$41,$FF

.Line5:
	db $41,$42,$42,$18,$15,$1C,$14,$0F,$36,$11,$82,$31,$28,$16,$43,$41
	db $FF

.Line6:
	db $41,$C6,$4C,$7A,$84,$44,$1C,$0A,$15,$13,$0C,$7D,$10,$36,$15,$44
	db $FF

.Line7:
	db $29,$36,$28,$2C,$31,$28,$16,$43,$41,$FF

.Line8:
	db $41,$AF,$4C,$7A,$84,$1D,$87,$28,$16,$43,$41,$FF

.Line9:
	db $41,$AE,$4C,$7A,$84,$1A,$3A,$0C,$7C,$0D,$31,$15,$28,$16,$43,$41
	db $FF

.Line10:
	db $FF

.Line11:
	db $41,$15,$3B,$0C,$7C,$0B,$88,$1B,$36,$14,$12,$1C,$45,$41,$FF

.Line12:
	db $41,$9B,$7A,$5A,$52,$AC,$9F,$70,$74,$4D,$22,$19,$2B,$1F,$44,$FF

.Line13:
	db $0F,$0B,$7C,$30,$36,$0A,$1B,$2B,$2F,$0C,$45,$41,$FF

.Line14:
	db $41,$23,$19,$36,$0A,$7D,$2F,$0C,$45,$41,$FF

.Line15:
	db $FF

Demo3Text:
.Line1:
	db $41,$1C,$0A,$15,$31,$3B,$0C,$27,$0C,$36,$0C,$15,$1E,$0C,$1D,$FF

.Line2:
	db $2A,$1B,$0F,$15,$11,$1E,$32,$2F,$45,$41,$FF

.Line3:
	db $41,$0D,$38,$44,$8A,$11,$1F,$78,$41,$FF

.Line4:
	db $41,$9D,$71,$7A,$46,$74,$9F,$AC,$4F,$52,$56,$76,$7A,$66,$45,$41
	db $FF

.Line5:
	db $41,$9D,$71,$7A,$46,$74,$9F,$AC,$4F,$52,$56,$76,$7A,$66,$36,$10
	db $32,$1D,$44,$FF

.Line6:
	db $2C,$38,$1D,$1B,$2F,$11,$1E,$32,$2F,$45,$41,$FF

Demo7Text:
.Line1:
	db $41,$10,$36,$1B,$12,$1C,$45,$70,$74,$4C,$7A,$61,$8F,$6C,$7C,$42
	db $42,$41,$FF

.Line2:
	db $41,$2C,$15,$0F,$15,$19,$30,$44,$13,$22,$15,$19,$1F,$0F,$11,$33
	db $1C,$0B,$32,$0F,$2C,$15,$33,$1E,$0B,$43,$41,$FF

.Line3:
	db $41,$27,$0C,$17,$10,$36,$24,$34,$38,$1C,$42,$42,$41,$FF

.Line4:
	db $41,$16,$13,$15,$22,$0A,$0B,$82,$82,$12,$44,$10,$29,$36,$28,$2C
	db $32,$2F,$43,$41,$FF

.Line5:
	db $FF

Demo6Text:
.Line1:
	db $41,$49,$5D,$6E,$91,$7A,$22,$27,$10,$3A,$0C,$1F,$FF

.Line2:
	db $9B,$7A,$5A,$52,$AC,$61,$6E,$7A,$57,$36,$24,$34,$38,$1C,$45,$41
	db $FF

.Line3:
	db $41,$61,$6E,$7A,$57,$36,$8A,$0C,$1A,$3B,$0C,$14,$17,$32,$19,$2B
	db $1F,$44,$02,$0F,$0B,$13,$0C,$7D,$10,$15,$2F,$0C,$43,$41,$FF

.Line4:
	db $41,$61,$6E,$7A,$57,$7C,$0E,$0E,$10,$11,$1E,$33,$86,$1E,$32,$27
	db $85,$44,$FF

.Line5:
	db $49,$5D,$6E,$91,$7A,$2C,$0E,$0E,$10,$11,$1E,$31,$28,$16,$43,$41
	db $FF

.Line6:
	db $41,$03,$0F,$0B,$2B,$22,$13,$0C,$7D,$10,$84,$44,$FF

.Line7:
	db $61,$6E,$7A,$57,$23,$86,$11,$23,$1B,$16,$32,$0F,$44,$FF

.Line8:
	db $51,$7A,$4D,$6F,$74,$59,$AC,$9B,$7A,$5A,$52,$7C,$84,$1C,$10,$28
	db $16,$43,$41,$FF

.Line9:
	db $41,$0A,$7A,$0A,$45,$13,$33,$7F,$39,$1E,$0B,$37,$82,$43,$41,$FF

Demo4Text:
.Line1:
	db $41,$52,$9E,$7A,$96,$46,$74,$9F,$AC,$46,$47,$4F,$73,$36,$0A,$1B
	db $2B,$1C,$FF

.Line2:
	db $0B,$38,$10,$1F,$52,$58,$7A,$93,$36,$4D,$6D,$46,$15,$2F,$0C,$45
	db $41,$FF

.Line3:
	db $41,$16,$16,$29,$1E,$7C,$30,$44,$1C,$10,$36,$19,$0E,$18,$0C,$45
	db $41,$FF

Demo9Text:
.Line1:
	db $41,$A9,$AC,$9B,$98,$73,$AA,$AC,$99,$6C,$A9,$7A,$52,$41,$FF

.Line2:
	db $41,$61,$8F,$47,$6E,$96,$AC,$50,$7A,$4B,$52,$AC,$50,$47,$4F,$52
	db $41,$FF

Demo2Text:
.Line1:
	db $41,$1C,$0A,$15,$36,$44,$55,$7A,$A7,$74,$59,$1F,$2A,$12,$1C,$0C
	db $1B,$43,$41,$FF

.Line2:
	db $41,$0B,$85,$0C,$16,$32,$9F,$6C,$74,$59,$61,$AD,$7A,$66,$36,$14
	db $85,$0C,$16,$32,$19,$2B,$1F,$44,$FF

.Line3:
	db $5F,$73,$90,$7A,$0F,$30,$1C,$0A,$15,$36,$0A,$1B,$2B,$28,$16,$43
	db $41,$FF

.Line4:
	db $41,$11,$31,$0F,$0D,$15,$22,$13,$0C,$7D,$10,$7C,$24,$1B,$2F,$0C
	db $1E,$55,$7A,$A7,$74,$59,$7C,$0A,$31,$28,$16,$43,$41,$FF

.Line5:
	db $41,$23,$1A,$22,$16,$36,$0A,$1B,$2B,$2F,$0C,$43,$41,$FF

.Line6:
	db $41,$55,$64,$A8,$36,$25,$0F,$14,$17,$1C,$44,$5E,$65,$36,$28,$1A
	db $88,$17,$45,$41,$FF

.Line7:
	db $41,$C5,$4C,$7A,$84,$1E,$0F,$28,$22,$23,$1A,$36,$1D,$86,$18,$0C
	db $43,$41,$FF

.Line8:
	db $FF

.Line9:
	db $41,$5E,$65,$36,$2D,$38,$1B,$12,$2F,$0C,$45,$41,$FF

Demo8Text:
.Line1:
	db $41,$0C,$15,$1E,$38,$19,$0A,$22,$0E,$28,$2C,$31,$7C,$0A,$33,$86
	db $42,$42,$41,$FF

.Line2:
	db $FF

.Line3:
	db $41,$0F,$0B,$7C,$30,$84,"PLOK",$22,$1D,$0C,$15,$36,$FF

.Line4:
	db $0F,$10,$19,$1C,$2F,$45,$41,$FF

.Line5:
	db $41,$35,$32,$2C,$22,$36,$19,$0E,$18,$0C,$45,$41,$FF

Demo11Text:
.Line1:
	db $41,$A9,$AC,$A0,$73,$4C,$5E,$52,$41,$FF

.Line2:
	db $41,$14,$0B,$82,$0B,$1F,$44,$8A,$0C,$1A,$3B,$0C,$15,$28,$16,$43
	db $41,$FF

.Line3:
	db $41,$46,$67,$47,$93,$73,$92,$AC,$64,$93,$51,$75,$73,$AA,$41,$FF

.Line4:
	db $41,$47,$90,$47,$90,$84,$44,$2D,$1B,$30,$36,$19,$0E,$18,$0C,$45
	db $41,$FF

.Line5:
	db $FF

.Line6:
	db $41,$19,$0E,$33,$1C,$0B,$32,$1D,$10,$1F,$0C,$1C,$45,$41,$FF

CottonIslandBeachLevelEnd:
.Line1:
	dw $0000,$0000,$0000,$00EA,$00EC,$00C4,$0000,$0000
	dw $0000,$0000,$FFFF

.Line2:
	dw $0000,$00EE,$000A,$00A6,$0100,$0102,$002A,$0040
	dw $00C4,$0000,$FFFF

CottonIslandBridgeLevelEnd:
.Line1:
	dw $0040,$00EC,$0026,$0040,$00AA,$0048,$002A,$00EC
	dw $002E,$0000,$FFFF

.Line2:
	dw $0000,$0040,$0020,$002C,$0044,$0046,$0048,$0082
	dw $0000,$0000,$FFFF

CottonIslandColumnsLevelEnd:
.Line1:
	dw $0000,$010C,$0026,$0044,$010C,$010E,$0024,$0026
	dw $004A,$0000,$FFFF

.Line2:
	dw $0000,$0000,$008C,$0120,$0062,$0122,$0040,$00C4
	dw $0000,$0000,$FFFF

CottonIslandLogFallsLevelEnd:
.Line1:
	dw $0000,$0000,$0000,$0080,$0048,$0064,$0000,$0000
	dw $0000,$0000,$FFFF

.Line2:
	dw $0000,$0126,$0128,$012A,$012C,$012A,$00A0,$0026
	dw $0088,$0000,$FFFF

CottonIslandRicketyBridgeLevelEnd:
.Line1:
	dw $0000,$0000,$0000,$000E,$00EC,$00C4,$0000,$0000
	dw $0000,$0000,$FFFF

.Line2:
	dw $0000,$00AC,$002C,$002A,$0080,$000A,$010C,$0140
	dw $00C4,$0000,$FFFF

.Line3:
	dw $FFFF

CottonIslandCrazyCradlesLevelEnd:
.Line1:
	dw $0000,$0000,$0000,$0080,$0048,$0064,$0000,$0000
	dw $0000,$0000,$FFFF

.Line2:
	dw $0000,$0000,$008C,$0120,$0062,$0122,$0040,$00C4
	dw $0000,$0000,$FFFF

CottonIslandBlindLeapLevelEnd:
.Line1:
	dw $0080,$0048,$0100,$0142,$0048,$0044,$002C,$0140
	dw $00A8,$0000,$FFFF

.Line2:
	dw $0000,$0144,$010C,$010E,$0024,$002A,$0040,$00C4
	dw $0000,$0000,$FFFF

CottonIslandBobbinsBrosLevelEnd:
.Line1:
	dw $0000,$0000,$0146,$0148,$0148,$0148,$0148,$00C4
	dw $0000,$0000,$FFFF

.Line2:
	dw $0000,$0000,$0000,$014A,$014C,$010E,$00C4,$0000
	dw $0000,$0000,$FFFF

.Line3:
	dw $FFFF

.Line4:
	dw $0000,$014E,$0100,$0040,$0060,$0102,$002C,$00A8
	dw $0000,$0000,$FFFF

.Line5:
	dw $0000,$0000,$00EE,$000A,$00AC,$0160,$0162,$0000
	dw $0000,$0000,$FFFF

.Line6:
	dw $0000,$0164,$0166,$012A,$0168,$0048,$010E,$00C4
	dw $0000,$0000,$FFFF

AkrillicGarlenBeachLevelEnd:
.Line1:
	dw $0000,$00AC,$0024,$0140,$016A,$002C,$0160,$0048
	dw $000A,$0000,$FFFF

.Line2:
	dw $0000,$0000,$016C,$016E,$00C0,$00AE,$0068,$0162
	dw $0000,$0000,$FFFF

.Line3:
	dw $0000,$0180,$0068,$0182,$0184,$0026,$0088,$0186
	dw $0000,$0000,$FFFF

.Line4:
	dw $FFFF

AkrillicSleepyDaleLevelEnd:
.Line1:
	dw $0000,$002A,$002C,$002E,$0040,$0040,$002A,$00C0
	dw $0188,$0000,$FFFF

.Line2:
	dw $0000,$0000,$002A,$002C,$0044,$0046,$0048,$0000
	dw $0000,$0000,$FFFF

.Line3:
	dw $FFFF

LegacyIslandMaceCoveLevelEnd:
.Line1:
	dw $0000,$0000,$0080,$0048,$00C4,$00C4,$00C4,$0000
	dw $0000,$0000,$FFFF

LegacyIslandFoolsGapLevelEnd:
.Line1:
	dw $0000,$0080,$0048,$0064,$010C,$00EC,$0026,$008C
	dw $00C4,$0000,$FFFF

LegacyIslandZigZagLevelEnd:
.Line1:
	dw $0000,$000E,$0122,$0064,$014E,$0080,$0068,$00EC
	dw $0026,$0000,$FFFF

LegacyIslandSpongeRocksLevelEnd:
.Line1:
	dw $0000,$0000,$000E,$00EC,$0064,$00EE,$00C0,$0000
	dw $0000,$0000,$FFFF

.Line2:
	dw $0000,$02AE,$0024,$002E,$00EC,$0026,$0080,$000A
	dw $0044,$004A,$FFFF

.Line3:
	dw $FFFF

LegacyIslandSwiftyPeaksLevelEnd:
.Line1:
	dw $0000,$0000,$0000,$01CC,$01CE,$00C4,$0000,$0000
	dw $0000,$0000,$FFFF

LegacyIslandLogTrailLevelEnd:
.Line1:
	dw $0000,$0000,$0100,$0142,$0048,$0044,$002C,$0000
	dw $0000,$0000,$0000,$0000,$0100,$0102,$002A,$0040
	dw $01E0,$00C4,$0000,$0000,$FFFF

LegacyIslandCrouchHillLevelEnd:
.Line1:
.Line2:
	dw $0000,$002A,$002C,$0044,$014E,$010C,$00EA,$0068
	dw $004A,$0000,$FFFF

LegacyIslandBobbinsBrosLevelEnd:
.Line1:
	dw $01E2,$01E2,$0064,$00EE,$000A,$018C,$002A,$0180
	dw $0024,$0026,$FFFF

.Line2:
	dw $0000,$0000,$014E,$018E,$0166,$01E0,$00C4,$0000
	dw $0000,$0000,$FFFF

.Line3:
	dw $0000,$01E4,$01E6,$00AC,$01E8,$0080,$00EC,$0160
	dw $0000,$0000,$FFFF

.Line4:
	dw $0000,$0000,$01EA,$01EC,$002A,$01EE,$0200,$012A
	dw $0000,$0000,$FFFF

.Line5:
	dw $0000,$0062,$010C,$00EC,$002E,$014E,$008C,$0088
	dw $00C4,$0000,$FFFF

.Line6:
	dw $FFFF

AkrillicPlokTownLevelEnd:
.Line1:
	dw $0000,$0000,$0000,$014A,$014C,$010E,$00C4,$0000
	dw $0000,$0000,$FFFF

.Line2:
	dw $FFFF

AkrillicThePenkinosLevelEnd:
.Line1:
	dw $0000,$00AC,$0024,$0140,$0120,$01A2,$0182,$0080
	dw $0000,$0000,$FFFF

.Line2:
	dw $0000,$00AE,$00C0,$00AC,$000A,$0204,$000A,$0206
	dw $0068,$0000,$FFFF

.Line3:
	dw $0000,$0180,$0068,$00EC,$0026,$00A8,$0208,$0044
	dw $00C4,$0000,$FFFF

AkrillicVengeThicketLevelEnd:
.Line1:
	dw $0000,$0000,$0040,$0160,$0062,$0040,$00A6,$00C0
	dw $0000,$0000,$FFFF

.Line2:
	dw $0000,$0000,$010C,$0026,$020A,$0160,$01A2,$004A
	dw $0000,$0000,$FFFF

AkrillicDreamyCoveLevelEnd:
.Line1:
	dw $0000,$020C,$020E,$008C,$0180,$0184,$0026,$0088
	dw $0000,$0000,$FFFF

.Line2:
	dw $0000,$0000,$0148,$0148,$0148,$0148,$0148,$00C4
	dw $0000,$0000,$FFFF

AkrillicCreepyForestLevelEnd:
.Line1:
	dw $01A6,$01A8,$0220,$012A,$0222,$0224,$0226,$0228
	dw $0160,$0000,$FFFF

.Line2:
	dw $0000,$0000,$022A,$0180,$0184,$0026,$0088,$004A
	dw $0000,$0000,$FFFF

AkrillicWomackSpiderLevelEnd:
.Line1:
	dw $0000,$0000,$0080,$0048,$022C,$01E6,$0160,$0000
	dw $0000,$0000,$FFFF

.Line2:
	dw $0000,$0000,$000E,$0040,$01A2,$012A,$00A8,$0000
	dw $0000,$0000,$FFFF

.Line3:
	dw $0000,$022E,$0240,$010E,$0024,$002A,$0040,$0088
	dw $004A,$0000,$FFFF

.Line4:
	dw $FFFF

AkrillicCreepyCragLevelEnd:
.Line1:
	dw $0148,$0148,$0148,$00C4,$0000,$00EE,$000A,$0242
	dw $0162,$0000,$FFFF

.Line2:
	dw $0000,$0244,$0184,$002E,$0120,$00EC,$0026,$0088
	dw $00C4,$0000,$FFFF

AkrillicGohomeCavernLevelEnd:
.Line1:
	dw $0000,$0000,$0000,$000E,$0122,$0064,$0000,$0000
	dw $0000,$0000,$FFFF

.Line2:
	dw $0000,$0000,$0246,$0248,$024A,$0062,$0026,$00C4
	dw $0000,$0000,$FFFF

AkrillicCrashingRocksLevelEnd:
.Line1:
	dw $0000,$0000,$00AC,$0024,$0140,$024C,$024E,$00C0
	dw $0000,$0000,$FFFF

.Line2:
	dw $0000,$0000,$01A2,$01A4,$0182,$0024,$0026,$004A
	dw $0000,$0000,$FFFF

.Line3:
	dw $FFFF

AkrillicRockyfellaLevelEnd:
.Line1:
	dw $0000,$0000,$0000,$0040,$00EC,$0026,$0040,$0000
	dw $0000,$0000,$FFFF

.Line2:
	dw $0000,$0000,$00AC,$000A,$008E,$0260,$0262,$00A8
	dw $0000,$0000,$FFFF

.Line3:
	dw $0000,$002A,$002C,$0044,$00EC,$0026,$002C,$0044
	dw $004A,$0000,$FFFF

FleapitCyclingCleverLevelEnd:
.Line1:
	dw $0000,$0000,$0000,$000E,$0122,$0064,$0000,$0000
	dw $0000,$0000,$FFFF

.Line2:
	dw $0000,$0120,$00EC,$0160,$0264,$0126,$0266,$0140
	dw $0000,$0000,$FFFF

.Line3:
	dw $0000,$0000,$0000,$01C0,$002E,$0026,$00C4,$0000
	dw $0000,$0000,$FFFF

FleapitRoadHoggingLevelEnd:
.Line1:
	dw $0000,$00AA,$00AC,$012A,$01A6,$01A8,$0268,$0206
	dw $00A8,$0000,$FFFF

.Line2:
	dw $0000,$0000,$0000,$0068,$008C,$0024,$002E,$0000
	dw $0000,$0000,$FFFF

.Line3:
	dw $0000,$0040,$0020,$002C,$0044,$0046,$0048,$0082
	dw $0000,$0000,$FFFF

FleapitHighFlyingLevelEnd:
.Line1:
	dw $0000,$0000,$0000,$000E,$000E,$0064,$0000,$0000
	dw $0000,$0000,$FFFF

.Line2:
	dw $0000,$014E,$0080,$0062,$0046,$0068,$00EC,$0026
	dw $004A,$0000,$FFFF

.Line3:
	dw $0000,$0080,$0048,$020C,$01E6,$0040,$0040,$0082
	dw $0000,$0000,$FFFF

FleapitEasyRidingLevelEnd:
.Line1:
	dw $0000,$00AC,$00AC,$00A8,$016A,$002C,$0160,$0048
	dw $012A,$0000,$FFFF

.Line2:
	dw $0000,$0000,$012A,$014E,$0048,$002A,$00C4,$0000
	dw $0000,$0000,$FFFF

FleapitInASpinLevelEnd:
.Line1:
	dw $0000,$0000,$0120,$00EC,$0026,$0122,$00C4,$0000
	dw $0000,$0000,$FFFF

.Line2:
	dw $FFFF

.Line3:
	dw $FFFF

FleapitRealRumblingsLevelEnd:
.Line1:
	dw $0000,$0000,$01A6,$01A8,$0220,$012A,$020C,$020E
	dw $0000,$0000,$FFFF

.Line2:
	dw $0000,$008C,$0180,$0184,$0182,$0024,$0026,$00C4
	dw $0000,$0000,$FFFF

FleapitSilentRunningLevelEnd:
.Line1:
	dw $0000,$0000,$016A,$002C,$0160,$0048,$012A,$0000
	dw $0000,$0000,$FFFF

.Line2:
	dw $026A,$026C,$010C,$0140,$0026,$00AA,$0166,$01A2
	dw $008C,$0000,$0000,$0000,$0000,$000A,$0068,$002A
	dw $0082,$0000,$0000,$0000,$FFFF

FleapitTheFleaQueenLevelEnd:
.Line1:
	dw $0000,$0000,$0280,$0282,$0122,$0280,$00C4,$0000
	dw $0000,$0000,$FFFF

.Line2:
	dw $0000,$0000,$0000,$0146,$0122,$0280,$00C4,$0000
	dw $0000,$0000,$FFFF

.Line3:
	dw $0000,$0148,$0148,$0148,$0148,$0148,$0148,$00C4
	dw $0000,$0000,$FFFF

PostCottonIslandBeach:
.Line1:
	db $41,$28,$1A,$7C,$0D,$1A,$39,$38,$19,$29,$19,$0B,$82,$1E,$43,$FF

.Line2:
	db $0A,$38,$44,$10,$38,$1D,$0A,$18,$13,$82,$43,$41,$FF

PostCottonIslandBridge:
.Line1:
	db $41,$13,$37,$85,$13,$18,$44,$23,$19,$36,$1D,$31,$0F,$0D,$16,$81
	db $41,$FF

PostCottonIslandColumns:
.Line1:
	db $41,$37,$37,$37,$42,$42,$FF

.Line2:
	db $13,$22,$23,$19,$23,$0B,$22,$1A,$7C,$0A,$32,$1F,$1A,$7C,$0B,$1E
	db $0B,$43,$41,$FF

PostCottonIslandLogFalls:
.Line1:
	db $41,$1E,$37,$82,$0F,$1F,$0E,$38,$1C,$10,$19,$1E,$41,$FF

.Line2:
	db $FF

PostCottonIslandRicketyBridge:
.Line1:
	db $41,"PLOK",$14,$28,$36,$86,$0F,$1F,$15,$19,$30,$44,$FF

.Line2:
	db $19,$82,$7F,$39,$0E,$0F,$1E,$0B,$81,$42,$42,$41,$FF

.Line3:
	db $FF

PostCottonIslandCrazyCradles:
.Line1:
	db $41,$13,$37,$85,$13,$18,$8A,$11,$22,$14,$7C,$15,$1C,$0B,$32,$23
	db $19,$36,$42,$42,$FF

.Line2:
	db $14,$2C,$1E,$0B,$1D,$8A,$11,$23,$1E,$1F,$36,$15,$84,$0F,$16,$0F
	db $42,$42,$41,$FF

.Line3:
	db $FF

PostCottonIslandBlindLeap:
.Line1:
	db $41,$0E,$7A,$0B,$44,$0E,$28,$0D,$44,$0E,$28,$0D,$82,$2F,$44,"PLOK"
	db $45,$13,$13,$82,$2F,$45,$41,$FF

.Line2:
	db $41,$0E,$33,$36,$1B,$0F,$28,$0D,$1C,$29,$34,$45,$41,$FF

.Line3:
	db $41,$18,$0C,$0F,$44,$FF

.Line4:
	db $9B,$98,$73,$AA,$AC,$99,$6C,$A9,$7A,$52,$22,$15,$35,$A4,$FF

.Line5:
	db $82,$38,$19,$37,$82,$1E,$45,$41,$FF

.Line6:
	db $41,$0E,$7F,$0B,$1A,$39,$37,$7C,$44,$0E,$28,$0D,$19,$1A,$1F,$23
	db $FF

.Line7:
	db $10,$36,$1B,$12,$34,$1D,$0B,$38,$1C,$19,$2F,$43,$41,$FF

.Line8:
	db $41,"PLOK",$44,$0E,$28,$0D,$1F,$23,$A5,$38,$19,$0B,$1F
	db $FF

.Line9:
	db $23,$19,$36,$0F,$0D,$14,$1E,$0B,$81,$45,$41,$FF

.Line10:
	db $41,$11,$1A,$2C,$10,$12,$1E,$0B,$2F,$0C,$1F,$15,$1C,$2D,$32,$81
	db $45,$41,$FF

PostCottonIslandBobbinsBrosPart1:
.Line1:
	db $41,$0B,$0B,$24,$82,$38,$19,$1E,$43,$FF

.Line2:
	db $2C,$0C,$82,$33,$1F,$2C,$44,$8A,$11,$22,$23,$19,$1F,$FF

.Line3:
	db $2E,$87,$0B,$38,$8D,$37,$25,$33,$14,$17,$1E,$0B,$81,$43,$41,$FF

PostCottonIslandBobbinsBrosPart3:
.Line1:
	db $41,$2D,$30,$33,$19,$45,$FF

.Line2:
	db $4F,$74,$59,$73,$AC,$46,$47,$6C,$73,$96,$1F,$0B,$38,$1C,$0B,$32
	db $FF

.Line3:
	db $16,$10,$1F,$44,$23,$19,$7C,$A5,$37,$88,$20,$16,$28,$33,$19,$45
	db $41,$FF

.Line4:
	db $41,$0E,$28,$12,$1F,$5E,$65,$22,$23,$19,$7C,$24,$30,$2B,$0B,$1C
	db $0B,$32,$45,$41,$FF

.Line5:
	db $41,$8A,$11,$22,$0B,$1A,$86,$37,$19,$0B,$17,$1B,$1E,$23,$19,$36
	db $20,$16,$37,$FF

.Line6:
	db $82,$22,$23,$44,$5E,$65,$22,$2D,$1B,$30,$90,$44,$13,$13,$1F,$15
	db $37,$1F,$FF

.Line7:
	db $3A,$0C,$16,$32,$19,$2B,$22,$35,$1E,$82,$38,$19,$37,$82,$43,$41
	db $FF

.Line8:
	db $41,$13,$0C,$1E,$38,$19,$30,$44,$14,$0B,$7E,$22,$0B,$38,$A6,$10
	db $28,$84,$0C,$FF

.Line9:
	db $1A,$22,$2B,$15,$1C,$2D,$32,$81,$45,$41,$FF

PostAkrillicGarlenBeach:
.Line1:
	db $41,$19,$0B,$26,$37,$1F,$1E,$31,$18,$0C,$82,$12,$33,$85,$44,$FF

.Line2:
	db $0F,$1E,$30,$80,$15,$28,$36,$1D,$31,$2C,$85,$16,$81,$45,$41,$FF

.Line3:
	db $FF

PostAkrillicSleepyDale:
.Line1:
	db $41,$2C,$0C,$16,$A3,$0B,$0D,$82,$43,$FF

.Line2:
	db $5E,$65,$0B,$38,$A6,$10,$84,$2C,$FF

.Line3:
	db $8A,$11,$22,$0B,$0D,$1F,$23,$0B,$1E,$0B,$23,$80,$82,$41,$FF

GrandPappyHeadingTowardsMaceCove:
.Line1:
	db $41,$0D,$0D,$38,$1D,$44,$C5,$84,$15,$32,$15,$36,$1B,$12,$19,$23
	db $80,$1E,$37,$82,$7C,$1E,$42,$42,$41,$FF

PostLegacyIslandMaceCove:
.Line1:
	db $41,$13,$13,$1F,$0C,$2B,$19,$1F,$1A,$7C,$0B,$1E,$0B,$81,$42,$42
	db $41,$FF

.Line2:
	db $FF

PostLegacyIslandFoolsGap:
.Line1:
	db $41,$A5,$38,$19,$0B,$1F,$13,$13,$82,$81,$41,$FF

.Line2:
	db $FF

PostLegacyIslandZigZag:
.Line1:
	db $41,$85,$0C,$2D,$30,$10,$0E,$11,$7C,$0A,$2D,$15,$0B,$81,$41,$FF

.Line2:
	db $FF

PostLegacyIslandSpongeRocks:
.Line1:
	db $41,$0A,$22,$0E,$28,$2C,$31,$36,$0F,$1E,$30,$80,$29,$1B,$12,$1E
	db $11,$1C,$23,$43,$FF

.Line2:
	db $0A,$33,$23,$0C,$1A,$22,$19,$0F,$30,$2C,$22,$1E,$37,$82,$0F,$30
	db $43,$41,$FF

PostLegacyIslandSwiftyPeaks:
.Line1:
	db $41,$13,$85,$2C,$7F,$39,$0A,$32,$28,$0B,$15,$44,$FF

.Line2:
	db $13,$37,$1E,$35,$32,$25,$A4,$12,$1F,$1B,$10,$0A,$38,$1C,$0B,$30
	db $33,$1E,$0B,$2F,$43,$41,$FF

PostLegacyIslandLogTrail:
.Line1:
	db $41,$90,$6C,$4D,$55,$86,$0F,$31,$0C,$2B,$19,$29,$19,$0B,$82,$1E
	db $42,$42,$41,$FF

PostLegacyIslandCrouchHill:
.Line1:
	db $41,$85,$0C,$15,$1C,$8A,$11,$22,$15,$3A,$11,$1C,$10,$44,$FF

.Line2:
	db $9B,$98,$73,$AA,$AC,$99,$6C,$A9,$7A,$52,$7C,$0B,$32,$37,$82,$78
	db $41,$FF

.Line3:
	db $41,$13,$22,$11,$82,$30,$1E,$0B,$44,$0B,$19,$80,$30,$22,$0C,$30
	db $1F,$FF

.Line4:
	db $0B,$32,$22,$23,$44,$10,$38,$1D,$2D,$1B,$30,$82,$81,$41,$FF

.Line5:
	db $41,$25,$32,$0B,$2C,$22,$84,$2C,$14,$7C,$15,$1C,$0B,$32,$22,$0F
	db $78,$41,$FF

.Line6:
	db $41,$1E,$1F,$0F,$1E,$11,$15,$19,$22,$0F,$78,$41,$FF

.Line7:
	db $41,$0E,$28,$2C,$31,$1D,$0F,$78,$41,$FF

.Line8:
	db $41,"IRVING",$44,$82,$28,$33,$45,$41,$FF

.Line9:
	db $FF

PostPlokAquiresAmuletScene:
.Line1:
	db $41,$0E,$0E,$45,$13,$22,$28,$27,$0C,$22,$0E,$28,$2C,$31,$84,$44
	db $FF

.Line2:
	db $8A,$11,$23,$0F,$0B,$7C,$30,$36,$9F,$70,$74,$4D,$AC,$9D,$71,$7A
	db $1F,$16,$32,$13,$1D,$7C,$84,$10,$32,$81,$43,$41,$FF

.Line3:
	db $41,$28,$82,$5E,$65,$19,$1A,$23,$44,$1E,$1F,$7C,$7F,$88,$37,$19
	db $1A,$1F,$FF

.Line4:
	db $0E,$10,$32,$0F,$15,$30,$1E,$0B,$37,$82,$45,$41,$FF

PostAkrillicPlokTown:
.Line1:
	db $41,$1B,$0B,$84,$1F,"PENKINOS",$1F,$2C,$FF

.Line2:
	db $15,$80,$0F,$1F,$15,$1C,$2C,$30,$0E,$0C,$43,$41,$FF

.Line3:
	db $FF

PostAkrillicThePenkinos:
.Line1:
	db $41,$0B,$2D,$30,$15,$0B,$5E,$65,$7C,$FF

.Line2:
	db $0A,$38,$1A,$13,$38,$1A,$1F,$0B,$32,$81,$45,$41,$FF

PostAkrillicVengeThicket:
.Line1:
	db $41,$46,$4D,$6D,$6D,$74,$4D,$23,$25,$19,$19,$87,$FF

.Line2:
	db $8A,$11,$22,$15,$28,$1F,$1E,$32,$81,$42,$42,$41,$FF

PostAkrillicDreamyCove:
.Line1:
	db $41,$37,$37,$37,$42,$42,$FF

.Line2:
	db $1E,$37,$82,$0F,$17,$16,$7F,$7C,$81,$38,$1D,$15,$1C,$10,$19,$81
	db $43,$41,$FF

PostAkrillicCreepyForest:
.Line1:
	db $41,$85,$0C,$2D,$30,$44,$0A,$22,$2C,$37,$82,$0B,$7F,$22,$FF

.Line2:
	db $71,$64,$74,$4D,$AC,$52,$9D,$47,$94,$7A,$22,$1D,$13,$34,$1F,$FF

.Line3:
	db $0B,$11,$1D,$10,$7C,$10,$19,$2F,$0C,$82,$43,$41,$FF

PostAkrillicWomackSpider:
.Line1:
	db $41,$0A,$22,$0B,$2D,$30,$15,$0B,$5E,$65,$19,$1A,$36,$FF

.Line2:
	db $25,$19,$19,$87,$0F,$19,$80,$12,$32,$81,$43,$41,$FF

PostAkrillicCreepyCrag:
.Line1:
	db $41,$0A,$18,$13,$84,$23,$44,"PLOK",$22,$27,$37,$1D,$0C
	db $22,$1A,$0F,$30,$36,$23,$38,$10,$15,$19,$81,$45,$41,$FF

PostAkrillicGohomeCavern:
.Line1:
	db $41,$85,$13,$0F,$30,$13,$22,$5E,$65,$19,$1A,$23,$10,$19,$37,$82
	db $34,$0C,$78,$41,$FF

.Line2:
	db $FF

PostAkrillicCrashingRocks:
.Line1:
	db $41,$0A,$1D,$23,$44,$46,$4D,$6D,$6D,$74,$4D,$22,$7F,$3B,$0C,$15
	db $10,$36,$FF

.Line2:
	db $70,$74,$4C,$7A,$61,$8F,$6C,$1F,$35,$0F,$30,$17,$19,$30,$44,$FF

.Line3:
	db $13,$22,$15,$28,$22,$0E,$0C,$22,$A4,$23,$44,$28,$19,$8A,$11,$22
	db $2C,$22,$1F,$1E,$32,$81,$43,$41,$FF

PostAkrillicRockyfellaPart1:
.Line1:
	db $41,$14,$0A,$44,$13,$22,$0B,$19,$80,$30,$22,$0E,$0E,$2C,$1D,$1F
	db $2A,$0F,$0C,$81,$43,$41,$FF

.Line2:
	db $41,$A9,$AC,$61,$6D,$7A,$9E,$74,$59,$41,$FF

.Line3:
	db $FF

PostAkrillicRockyfellaPart3:
.Line1:
	db $41,$37,$37,$37,$42,$42,$FF

.Line2:
	db $1E,$37,$1C,$0C,$16,$10,$29,$22,$35,$32,$0B,$1D,$13,$34,$1E,$37
	db $82,$43,$41,$FF

.Line3:
	db $41,$0A,$33,$45,$78,$9F,$6F,$AB,$73,$59,$7C,$0A,$32,$45,$41,$FF

PostFleapitCyclingClever:
.Line1:
	db $41,$37,$37,$37,$42,$42,$FF

.Line2:
	db $46,$4D,$6D,$6D,$74,$4D,$1F,$0B,$32,$1D,$23,$0E,$2C,$0D,$1E,$0B
	db $1E,$43,$41,$FF

PostFleapitRoadHogging:
.Line1:
	db $41,$0B,$34,$37,$1E,$10,$29,$22,$35,$32,$0B,$5E,$65,$7C,$44,$FF

.Line2:
	db $13,$13,$1F,$23,$0B,$32,$2F,$0C,$82,$1E,$43,$41,$FF

PostFleapitHighFlying:
.Line1:
	db $41,$0A,$38,$45,$28,$82,$27,$0F,$1F,$2C,$9F,$6F,$AB,$73,$59,$7C
	db $0A,$32,$45,$FF

.Line2:
	db $0E,$2C,$15,$34,$0B,$1E,$43,$41,$FF

PostFleapitEasyRiding:
.Line1:
	db $41,$13,$22,$85,$0C,$11,$1B,$23,$FF

.Line2:
	db $82,$37,$82,$37,$24,$85,$11,$1E,$38,$1C,$11,$81,$45,$41,$FF

PostFleapitInASpin:
.Line1:
	db $41,$13,$37,$1E,$1F,$24,$85,$0B,$2B,$1F,$0A,$38,$19,$37,$82,$0F
	db $30,$44,$FF

.Line2:
	db $82,$33,$0F,$1F,$89,$37,$15,$3B,$0C,$15,$1C,$2C,$30,$35,$1E,$0B
	db $1D,$35,$31,$1F,$0A,$35,$1E,$0B,$1E,$43,$41,$FF

PostFleapitRealRumblings:
.Line1:
	db $41,$8A,$11,$22,$0A,$0F,$0B,$11,$1B,$1F,$44,$FF

.Line2:
	db $0A,$0E,$0B,$9A,$59,$9A,$59,$15,$19,$2C,$22,$7C,$11,$38,$1B,$0B
	db $1A,$39,$38,$19,$43,$41,$FF

PostFleapitSilentRunning:
.Line1:
	db $41,$5E,$65,$22,$4D,$47,$7A,$73,$23,$44,$1E,$1F,$7C,$13,$2F,$0C
	db $1D,$2C,$44,$FF

.Line2:
	db $0F,$1E,$30,$80,$15,$1D,$2B,$32,$37,$82,$45,$41,$FF

PostFleapitTheFleaQueen:
.Line1:
	db $41,$69,$74,$55,$7A,$45,$FF

.Line2:
	db $85,$0C,$2D,$30,$5E,$65,$19,$1A,$36,$7D,$10,$19,$0B,$15,$19,$2F
	db $0C,$82,$1E,$45,$41,$FF

CreditsText:
.Line1:
	db "CONCEPT AND DESIGN",$FF

.Line3:
	db "A SOFTWARE CREATIONS GAME",$FF

.Line4:
	db "GRAPHICS AND DESIGN",$FF

.Line5:
	db "LYNDON BROOKE",$FF

.Line6:
	db "PROGRAM AND DESIGN",$FF

.Line7:
	db "JOHN BUCKLEY",$FF

.Line8:
	db "MUSIC AND EFFECTS",$FF

.Line9:
	db "GEOFF FOLLIN AND TIM FOLLIN",$FF

.Line10:
	db "ADDITIONAL GRAPHICS",$FF

.Line11:
	db "STE PICKFORD AND DAN WHITWORTH",$FF

.Line12:
	db "ARTWORK",$FF

.Line13:
	db "STE PICKFORD AND CHRIS JOJO",$FF

.Line14:
	db "COMPRESSION TECHNIQUES",$FF

.Line15:
	db "STE RUDDY AND KEVIN EDWARDS",$FF

.Line16:
	db "GAME TESTERS",$FF

.Line17:
	db "MALCOLM DAGLISH",$FF

.Line18:
	db "CHUN WAH KONG",$FF

.Line19:
.Line22:
.Line25:
.Line27:
	db "THANKS TO",$FF

.Line20:
	db "MIKE WEBB      BRIAN ULLRICH",$FF

.Line21:
	db "DAVE MAC      STEVE THOMAS",$FF

.Line23:
	db "LORRAINE BUCKLEY",$FF

.Line24:
	db "JOAN BROOKE",$FF

.Line26:
	db "TONY HARMAN",$FF

.Line28:
	db "RARE LTD.",$FF

.Line29:
	db "JOEL HOCHBERG",$FF

.Line30:
	db "ZIPPO GAMES LTD.",$FF

.Line31:
	db "PRODUCERS",$FF

.Line33:
	db "EXECUTIVE PRODUCERS",$FF

.Line34:
	db "BYRON COOK",$FF

.Line35:
	db "RICHARD KAY",$FF

.Line36:
	db "JOEY TERRITO",$FF

WellDone:
	db "WELL DONE!",$FF

TryAgainOnNormalLevel:
	db "TRY AGAIN ON NORMAL LEVEL",$FF

EasyModeLockoutText:
.Line1:
	db "TO HELP GRANDPAPPY PLOK SEARCH",$FF

.Line2:
	db "FOR THE LOST AMULET, THEN",$FF

.Line3:
	db "JOURNEY INTO THE FLEAPIT TO",$FF

.Line4:
	db "DESTROY THE EVIL FLEA QUEEN!",$FF

cleartable
