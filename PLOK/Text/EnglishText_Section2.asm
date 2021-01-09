table "Tables/Fonts/MainFont_PLOK_G.txt"

SkillLevel:
	db "SKILL  LEVEL",$FF

NormalDifficultyName:
	db "NORMAL",$FF

EasyDifficultyName:
	db "CHILD'S PLAY",$FF

WorldName:
.Fleapit:
	db "FLEAPIT!",$FF

.TestDrive:
	db "TEST DRIVE",$FF

.CottonIsland:
	db "COTTON  ISLAND",$FF

.Legacy:
	db "LEGACY",$FF

.Island:
	db "ISLAND",$FF

.Akrillic:
	db "AKRILLIC",$FF

LevelName:
.GarlenBeach:
	db "GARLEN BEACH",$FF

.SleepyDale:
	db "SLEEPY  DALE",$FF

.PloksHouse:
#IntroCutscenePart1_Line1:
	db "PLOK'S HOUSE",$FF

#IntroCutscenePart1_Line2:
	db "ONE FINE",$FF

#IntroCutscenePart1_Line3:
	db "MORNING",$FF

.PlokTown:
	db "PLOK  TOWN",$FF

.ThePenkinos:
	db "THE PENKINOS",$FF

.VengeThicket:
	db "VENGE  THICKET",$FF

.DreamyCove:
	db "DREAMY  COVE",$FF

.CreepyForest:
	db "CREEPY  FOREST",$FF

.WomackSpider:
	db "WOMACK SPIDER ",$FF

.CreepyCrag:
	db "CREEPY  CRAG",$FF

.GohomeCavern:
	db "GOHOME  CAVERN",$FF

.CrashingRocks:
	db "CRASHING ROCKS",$FF

.RockyFella:
	db "ROCKYFELLA",$FF

.BrendammiBog:
	db "BRENDAMMI  BOG",$FF

.BadreamFens:
	db "BADREAM FENS",$FF

.BreezyBeach:
	db "BREEZY BEACH",$FF

.MaceCove:
	db "MACE  COVE",$FF

.FoolsGap:
	db "FOOL'S GAP",$FF

.ZigZag:
	db "ZIG  ZAG",$FF

.SpongeRocks:
	db "SPONGE ROCKS",$FF

.SwiftyPeaks:
	db "SWIFTY PEAKS",$FF

.LogTrail:
	db "LOG  TRAIL",$FF

.CrouchHill:
	db "CROUCH  HILL",$FF

.CyclingClever:
	db "CYCLING CLEVER",$FF

.RoadHogging:
	db "ROAD HOGGING",$FF

.HighFlying:
	db "HIGH  FLYING",$FF

.EasyRiding:
	db "EASY  RIDING",$FF

.InASpin:
	db "IN A SPIN!",$FF

.RealRumblings:
	db "REAL RUMBLINGS",$FF

.SilentRunning:
	db "SILENT RUNNING",$FF

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
	db "BEACH",$FF

.Bridge:
	db "BRIDGE",$FF

.Columns:
	db "COLUMNS",$FF

.LogFalls:
	db "LOG  FALLS",$FF

.RicketyBridge:
	db "RICKETY BRIDGE",$FF

.CrazyCradles:
	db "CRAZY  CRADLES",$FF

.BlindLeap:
	db "BLIND LEAP",$FF

.BobbinsBros:
	db "BOBBINS BROS",$FF

.TheFleaQueen:
	db "THE FLEA QUEEN",$FF

Plokontinue:
	db "PLOKONTINUE",$FF

BonusPlok:
	db "  BONUS PLOK  ",$FF

Paused:
	db "PAUSED",$FF

Intermission:
	db "INTERMISSION",$FF

LevelSelect:
	db "LEVEL SELECT",$FF

UNK_81B8A1:					; Note: These 3 tables aren't referenced anywhere
	dw UnusedCottonIsland,UnusedLevelName1,UnusedLevelName2,UnusedLevelName3
	dw UnusedLevelName4

UNK_81B8AB:
	dw $5C62,$5C82,$5CA2,$5CC2
	dw $5CE2,$5D02,$5D22,$5D42

UNK_81B8BB:
	dw LevelName_Level1,LevelName_Level2,LevelName_Level3,LevelName_Level4
	dw LevelName_Level5,LevelName_Level6,LevelName_Level7,LevelName_Level8

FontTest:
	db "  0 1 2 3 4 5 6 7 8 9 I J K L M N O P Q R S T U A B C D E F G H V W X Y Z ! ' ? "

UnusedCottonIsland:
	db "COTTON ISLAND",$FF

UnusedLevelName1:
	db "AKRYLIC 1~8  ",$FF

UnusedLevelName2:
	db "AKRYLIC 9~16 ",$FF

UnusedLevelName3:
	db "PLOK'S LEGACY",$FF

UnusedLevelName4:
	db "FLEAPIT TEST",$FF

BuildDate:
	db "15.42  5 MAY '93",$FF

SecretWarp:
	db "SECRET WARP!",$FF

SuperBonus:
	db "SUPER BONUS!",$FF

CopyDetectionLine:
	db "ILLEGAL GAME CONFIGURATION",$FF

RegionLockout:
.Line1:
	db "THIS GAME PAK IS NOT DESIGNED",$FF

.Line2:
	db "FOR YOUR",$FF

.Line3:
	db "SUPER FAMICOM OR SUPER NES.",$FF

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
if !Define_Global_ROMToAssemble&(!ROM_PLOK_E) != $00
	db "LICENSED TO NINTENDO.",$FF
else
	db "LICENSED BY NINTENDO.",$FF
endif

ClearLargeLetterLine:
	db "                ",$FF

ClearSmallLetterLine:
	db "                                ",$FF

IntroCutscenePart1:
.Line4
	db "WHAT A FAB",$FF

.Line5:
	db "DAY! ...",$FF

.Line6:
	db "NICE AND QUIET",$FF

.Line7:
	db "...NO WORRIES.",$FF

.Line8:
	db "   HEY!    ",$FE
	db $FE
	db "SOMETHING'S",$FE
	db $FE
	db "  WRONG! ",$FF

.Line9:
	db "WHERE'S MY ",$FE
	db $FE
	db "BIG SQUARE",$FE
	db $FE
	db "  FLAG?",$FF

.Line10:
	db "SOMEONE'S ",$FE
	db $FE
	db "SWIPED IT!",$FF

.Line11:
	db "WHERE'S IT",$FE
	db $FE
	db "  GONE?...",$FF

.Line12:
	db "WHO'S GOT",$FE
	db $FE
	db "MY FLAG? ",$FF

.Line13:
	db "  YOU'LL BE  ",$FE
	db $FE
	db "SORRY WHOEVER",$FE
	db $FE
	db "  YOU ARE!    ",$FF

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
	db "THAT'S  BETTER",$FF

.Line2:
	db "IF ONLY",$FF

.Line3:
	db "GRANDPAPPY",$FF

.Line4:
	db "FOUND THAT",$FF

.Line5:
	db "LOST  AMULET",$FF

.Line6:
	db "THAT WOULD",$FF

.Line7:
	db "HELP ME SORT",$FF

.Line8:
	db "OUT THESE",$FF

.Line9:
	db "PESKY FLEAS",$FF

.Line10:
#PlokAquiresAmuletScene_Line1:
	db "Z..ZZ..ZZZ",$FF

RaceAgainst:
	db "RACE AGAINST",$FF

Time:
	db "TIME",$FF

OnYourMarks:
	db "ON YOUR MARKS!",$FF

GetSet:
	db "GET SET!",$FF

Go:
	db "G0!",$FF

RaceLost:
	db "RACE  LOST!",$FF

JLDPBuckley:
	db "J.L.D.P.BUCKLEY!"

Demo1Text:
.Line1:
	db "USE CONTROL PAD LEFT AND",$FF

.Line2:
	db "RIGHT TO MOVE PLOK AROUND.",$FF

.Line3:
	db "PRESS DOWN ON CONTROL PAD",$FF

.Line4:
	db "TO SQUAT.",$FF

.Line5:
	db "...YOU'LL SLIDE DOWN SLOPES.",$FF

.Line6:
	db "DEFEND PLOK BY PRESSING",$FF

.Line7:
	db "BUTTON 'Y' TO FIRE LIMBS.",$FF

.Line8:
	db "PRESS BUTTON 'B' TO JUMP.",$FF

.Line9:
	db "PRESS BUTTON 'A'",$FF

.Line10:
	db "TO SOMERSAULT.",$FF

.Line11:
	db "AVOID OBSTACLES!",$FF

.Line12:
	db "COLLECT SHELLS FOR",$FF

.Line13:
	db "BONUS  PLOK!",$FF

.Line14:
	db "RUN OVER FLAG",$FF

.Line15:
	db "TO COMPLETE LEVEL!",$FF

Demo3Text:
.Line1:
	db "LOSING BOTH YOUR LEGS ",$FF

.Line2:
	db "MAKES LIFE DIFFICULT!",$FF

.Line3:
	db "A NICE SURPRISE?",$FF

.Line4:
	db "POWER~UP COSTUME!",$FF

.Line5:
	db "POWER~UP COSTUMES CAN",$FF

.Line6:
	db "SHOOT MORE ENEMIES!",$FF

Demo7Text:
.Line1:
	db "WATCH OUT! ....ROCKYFELLA",$FF

.Line2:
	db "MAY BE HIDING UNDER HERE",$FF

.Line3:
	db "PICK UP THE GEM.......",$FF

.Line4:
	db "IT WILL SHIELD YOU",$FF

.Line5:
	db "FOR A SHORT TIME!",$FF

Demo6Text:
.Line1:
	db "PICK UP BONUS FRUIT",$FF

.Line2:
	db "FOR EXTRA ENERGY!",$FF

.Line3:
	db "SHOOT TWICE TO INFLATE FRUIT",$FF

.Line4:
	db "THE BIGGER THE FRUIT THE",$FF

.Line5:
	db "GREATER THE ENERGY!",$FF

.Line6:
	db "SHOOTING A THIRD TIME",$FF

.Line7:
	db "WILL BURST THE FRUIT",$FF

.Line8:
	db "OR REVEAL A SECRET BONUS!",$FF

.Line9:
	db "OH DEAR! NOT THIS ONE.",$FF

Demo4Text:
.Line1:
	db "COLLECT SPEED UP ICON",$FF

.Line2:
	db "TO BLAST ACROSS THE LEVEL!",$FF

.Line3:
	db "DESTROY ENEMIES AS YOU GO!",$FF

Demo9Text:
.Line1:
	db "THE BOBBINS BROTHERS",$FF

.Line2:
	db "FAILED CIRCUS PSYCHOS",$FF

Demo2Text:
.Line1:
	db "SHOOT LIMB INTO TARGET",$FF

.Line2:
	db "TO ACTIVATE MOVING GROUND",$FF

.Line3:
	db "COLLECT LIMB FROM HANGER.",$FF

.Line4:
	db "SOME TARGETS USE REPEAT SHOTS!",$FF

.Line5:
	db "COLLECT HORNET NESTS",$FF

.Line6:
	db "HATCH EGGS TO REVEAL FLEAS!",$FF

.Line7:
	db "PRESS BUTTON 'X' TO",$FF

.Line8:
	db "RELEASE FRIENDLY HORNET",$FF

.Line9:
	db "SHOOT THOSE FLEAS!",$FF

Demo8Text:
.Line1:
	db "   WITH THE LOST AMULET   ",$FF

.Line2:
	db "     YOU CAN.........   ",$FF

.Line3:
	db "USING SHELLS",$FF

.Line4:
	db "MAKES PLOK FIERCE!",$FF

.Line5:
	db "DESTROY THOSE BADDIES!",$FF

Demo11Text:
.Line1:
	db "THE PENKINOS",$FF

.Line2:
	db "FULLY INFLATABLE",$FF

.Line3:
	db "AMAZING MAGICIANS",$FF

.Line4:
	db "KNOCK THEM DOWN WITH",$FF

.Line5:
	db "THE 'SPIKE DRUM'",$FF

.Line6:
	db "SHOOT 'EM WHILE THEY'RE DOWN!",$FF

CottonIslandBeachLevelEnd:
.Line1:
	db "HEY! THIS",$FF

.Line2:
	db "ISN'T MY FLAG!",$FF

CottonIslandBridgeLevelEnd:
.Line1:
	db "WHAT'S GOING",$FF

.Line2:
	db "ON ?",$FF

CottonIslandColumnsLevelEnd:
.Line1:
	db "I'VE BEEN",$FF

.Line2:
	db "DIDDLED AGAIN",$FF

CottonIslandLogFallsLevelEnd:
.Line1:
	db "GRR!! THIS IS",$FF

.Line2:
	db "MAKING ME MAD",$FF

CottonIslandRicketyBridgeLevelEnd:
.Line1:
	db "HEY!",$FF

.Line2:
	db "I RECOGNIZE",$FF

.Line3:
	db "THOSE!",$FF

CottonIslandCrazyCradlesLevelEnd:
.Line1:
	db "OH!   OHH!!",$FF

.Line2:
	db "OHHH!!!",$FF

CottonIslandBlindLeapLevelEnd:
.Line1:
	db "THIS HAS GONE",$FF

.Line2:
	db "BEYOND A JOKE!",$FF

CottonIslandBobbinsBrosLevelEnd:
.Line1:
	db "HA!  HAAA!",$FF

.Line2:
	db "WHAT A PIECE",$FF

.Line3:
	db "OF CAKE",$FF

.Line4:
	db "GRANDPAPPY",$FF

.Line5:
	db "WOULD BE PROUD",$FF

.Line6:
	db "OF ME",$FF

AkrillicGarlenBeachLevelEnd:
.Line1:
	db "PHEW!",$FF

.Line2:
	db "I SHOWED THEM",$FF

.Line3:
	db "FLEAS WHO'S",$FF

.Line4:
	db "BOSS!",$FF

AkrillicSleepyDaleLevelEnd:
.Line1:
	db "WHAT A",$FF

.Line2:
	db "BEAUTIFUL",$FF

.Line3:
	db "SIGHT",$FF

LegacyIslandMaceCoveLevelEnd:
.Line1:
	db "HURUMPH !!!",$FF

LegacyIslandFoolsGapLevelEnd:
.Line1:
	db "BAH! HUMBUG!",$FF

LegacyIslandZigZagLevelEnd:
.Line1:
	db "THAT WAS HEAVY",$FF

LegacyIslandSpongeRocksLevelEnd:
.Line1:
	db "SO THAT'S",$FF

.Line2:
	db "WHERE THE LEFT",$FF

.Line3:
	db "ONE WENT",$FF

LegacyIslandSwiftyPeaksLevelEnd:
.Line1:
	db "GADZOOKS!",$FF

LegacyIslandLogTrailLevelEnd:
.Line1:
	db "WHAT  SAUCE!",$FF

LegacyIslandCrouchHillLevelEnd:
.Line1:
.Line2:
	db "BAH! IT'S YOU!",$FF

LegacyIslandBobbinsBrosLevelEnd:
.Line1:
	db "MY LONG LOST",$FF

.Line2:
	db "AMULET!",$FF

.Line3:
	db "THIS TIME I'LL",$FF

.Line4:
	db "PUT IT",$FF

.Line5:
	db "SOMEWHERE",$FF

.Line6:
	db "REAL SAFE..",$FF

AkrillicPlokTownLevelEnd:
.Line1:
	db "THAT WAS",$FF

.Line2:
	db "A  BREEZE!",$FF

AkrillicThePenkinosLevelEnd:
.Line1:
	db "NOW THEY KNOW",$FF

.Line2:
	db "WHO'S KING OF",$FF

.Line3:
	db "THIS ISLAND",$FF

AkrillicVengeThicketLevelEnd:
.Line1:
	db "ONE MORE",$FF

.Line2:
	db "LOVELY FLAG",$FF

AkrillicDreamyCoveLevelEnd:
.Line1:
	db "AND  DON'T",$FF

.Line2:
	db "COME BACK!",$FF

AkrillicCreepyForestLevelEnd:
.Line1:
	db "ANOTHER FLEA",$FF

.Line2:
	db "BITES THE DUST",$FF

AkrillicWomackSpiderLevelEnd:
.Line1:
	db "I DON'T THINK",$FF

.Line2:
	db "I'LL HAVE ANY",$FF

.Line3:
	db "MORE TROUBLE",$FF

.Line4:
	db "FROM HIM!",$FF

AkrillicCreepyCragLevelEnd:
.Line1:
	db "HA! HAAA!",$FF

.Line2:
	db "I SHOWED THEM!",$FF

AkrillicGohomeCavernLevelEnd:
.Line1:
	db "PHEW! BACK IN",$FF

.Line2:
	db "ONE PIECE...",$FF

AkrillicCrashingRocksLevelEnd:
.Line1:
	db "THAT'S THE",$FF

.Line2:
	db "LAST FLEA FLAG",$FF

.Line3:
	db "DONE WITH",$FF

AkrillicRockyfellaLevelEnd:
.Line1:
	db "I DON'T KNOW",$FF

.Line2:
	db "WHAT ALL THE",$FF

.Line3:
	db "FUSS WAS ABOUT",$FF

FleapitCyclingCleverLevelEnd:
.Line1:
	db "AT LAST, BACK",$FF

.Line2:
	db "ON TWO FEET",$FF

.Line3:
	db "AGAIN!",$FF

FleapitRoadHoggingLevelEnd:
.Line1:
	db "WHERE IS THAT",$FF

.Line2:
	db "FLEA QUEEN",$FF

.Line3:
	db "HIDING?",$FF

FleapitHighFlyingLevelEnd:
.Line1:
	db "THAT WAS FUN!",$FF

.Line2:
	db "CAN I HAVE",$FF

.Line3:
	db "ANOTHER GO?",$FF

FleapitEasyRidingLevelEnd:
.Line1:
	db "THIS PLACE",$FF

.Line2:
	db "REALLY SMELLS!",$FF

FleapitInASpinLevelEnd:
.Line1:
	db "YEAH!",$FF

.Line2:
	db "I DID IT!",$FF

.Line3:
	db "NICE ONE",$FF

FleapitRealRumblingsLevelEnd:
.Line1:
	db "EAT LEAD",$FF

.Line2:
	db "FLEA SCUM!",$FF

FleapitSilentRunningLevelEnd:
.Line1:
	db "WILL I EVER",$FF

.Line2:
	db "REACH THE END?",$FF

FleapitTheFleaQueenLevelEnd:
.Line1:
	db "YAAAY!",$FF

.Line2:
	db "WOOOW!",$FF

.Line3:
	db "HA! HA! HAAA!",$FF

PostCottonIslandBeach:
.Line1:
	db "I MUST HAVE BEEN MISTAKEN,",$FF

.Line2:
	db "THERE IT IS..",$FF

PostCottonIslandBridge:
.Line1:
	db "I'LL GET THAT FLAG THIS TIME!",$FF

PostCottonIslandColumns:
.Line1:
	db "HMM.. THIS FLAG HAS A MIND",$FF

.Line2:
	db "OF ITS OWN",$FF

PostCottonIslandLogFalls:
.Line1:
	db "Y'KNOW, I GET THE FEELING",$FF

.Line2:
	db "SOMETHING FISHY IS GOING ON",$FF

PostCottonIslandRicketyBridge:
.Line1:
	db "IF SOMEBODY IS MAKING A FOOL",$FF

.Line2:
	db "OUT OF PLOK, THEN THEY'RE",$FF

.Line3:
	db "GONNA PAY...",$FF

PostCottonIslandCrazyCradles:
.Line1:
	db "THIS ONE BETTA BE MY REAL FLAG",$FF

.Line2:
	db "OR I'LL... I'LL..",$FF

.Line3:
	db "DON'T KNOW WHAT I'LL DO...",$FF

PostCottonIslandBlindLeap:
.Line1:
	db "YOO HOO! OVER HERE PLOK!",$FF

.Line2:
	db "COME AND GET IT",$FF

.Line3:
	db "AHA! SO IT'S YOU",$FF

.Line4:
	db "BOBBINS BROTHERS WHO ARE",$FF

.Line5:
	db "BEHIND ALL THESE SHENANIGANS!",$FF

.Line6:
	db "MY GRANDPAPPY WARNED ME",$FF

.Line7:
	db "ABOUT YOU....",$FF

.Line8:
	db "YOU'LL NEVER GET YOUR FLAG",$FF

.Line9:
	db "BACK PLOK!...WE'LL STAMP",$FF

.Line10:
	db "YOU OUT FOR GOOD!",$FF

PostCottonIslandBobbinsBrosPart1:
.Line1:
	db "THAT WAS A FINE DAY'S WORK.",$FF

.Line2:
	db "NOBODY'S GONNA MESS WITH",$FF

.Line3:
	db "MY FLAGS AGAIN.",$FF

PostCottonIslandBobbinsBrosPart3:
.Line1:
	db "I'VE BEEN DUPED! ALL MY FLAGS",$FF

.Line2:
	db "HAVE BEEN STOLEN WHILE I WAS",$FF

.Line3:
	db "ON COTTON ISLAND AND REPLACED",$FF

.Line4:
	db "BY FLEA FLAGS!",$FF

.Line5:
	db "MY SQUARE FLAG WAS STOLEN AS",$FF

.Line6:
	db "BAIT TO LURE ME AWAY WHILE",$FF

.Line7:
	db "THE FLEAS INVADED! GRR....",$FF

.Line8:
	db "I'LL PUNCH THE DAYLIGHTS OUT",$FF

.Line9:
	db "OF EVERY LAST ONE OF THEM!",$FF

PostAkrillicGarlenBeach:
.Line1:
	db "THIS IS GONNA BE TOUGH, BUT",$FF

.Line2:
	db "I'LL GET MY ISLAND BACK IF IT",$FF

.Line3:
	db "TAKES ME ALL DAY!",$FF

PostAkrillicSleepyDale:
.Line1:
	db "NEARLY HOME NOW.",$FF

.Line2:
	db "NO DIRTY FLEA BETTER BE",$FF

.Line3:
	db "LIVING IN MY HOUSE!",$FF

GrandPappyHeadingTowardsMaceCove:
.Line1:
	db "HMM...X MARKS THE SPOT",$FF

PostLegacyIslandMaceCove:
.Line1:
	db "I MUST HAVE BURIED IT",$FF

.Line2:
	db "OVER HERE...",$FF

PostLegacyIslandFoolsGap:
.Line1:
	db "NOW I'M CERTAIN THIS",$FF

.Line2:
	db "IS THE ONE...",$FF

PostLegacyIslandZigZag:
.Line1:
	db "HMM... MY MEMORY IS NOT",$FF

.Line2:
	db "WHAT IT WAS...",$FF

PostLegacyIslandSpongeRocks:
.Line1:
	db "I MUST FIND THE AMULET, IT'S",$FF

.Line2:
	db "A FAMILY HEIRLOOM",$FF

PostLegacyIslandSwiftyPeaks:
.Line1:
	db "I'M TOO OLD FOR THIS CAPER...",$FF

PostLegacyIslandLogTrail:
.Line1:
	db "HOW MUCH JUNK HAVE I BURIED?",$FF

PostLegacyIslandCrouchHill:
.Line1:
	db "WHY IT'S MY ARCH FOES THE",$FF

.Line2:
	db "BOBBINS BROTHERS!.. I'LL WAGER",$FF

.Line3:
	db "THAT THEY'RE BEHIND THIS",$FF

.Line4:
	db "TOMFOOLERY",$FF

.Line5:
	db "LOOKING FOR SOMETHING",$FF

.Line6:
	db "OLD TIMER?... HAVE YOU LOST",$FF

.Line7:
	db "SOMETHING?... YEAH, LIKE AN",$FF

.Line8:
	db "AMULET?",$FF

.Line9:
	db "SHUT UP IRVING!",$FF

PostPlokAquiresAmuletScene:
.Line1:
	db "WOW! WITH THIS MAGIC AMULET",$FF

.Line2:
	db "I CAN TURN SHELLS INTO PLOK",$FF

.Line3:
	db "POWER. THE FLEAS WON'T KNOW",$FF

.Line4:
	db "WHAT'S HIT THEM!",$FF

PostAkrillicPlokTown:
.Line1:
	db "WHILE I'M AT IT, IT'S HIGH",$FF

.Line2:
	db "TIME I SORTED OUT THOSE",$FF

.Line3:
	db "PENKINOS..",$FF

PostAkrillicThePenkinos:
.Line1:
	db "THIS YUCKY FLEA GUNGE",$FF

.Line2:
	db "IS EVERYWHERE!",$FF

PostAkrillicVengeThicket:
.Line1:
	db "AKRILLIC WILL BE MINE AGAIN,",$FF

.Line2:
	db "OH YES...",$FF

PostAkrillicDreamyCove:
.Line1:
	db "UH OH, THIS PLACE",$FF

.Line2:
	db "LOOKS KIND OF SPOOKY",$FF

PostAkrillicCreepyForest:
.Line1:
	db "HMM.. I THINK I'LL PAY A VISIT",$FF

.Line2:
	db "TO THAT TROUBLE CAUSER",$FF

.Line3:
	db "WOMACK SPIDER",$FF

PostAkrillicWomackSpider:
.Line1:
	db "RIGHT, BACK TO WORK ON",$FF

.Line2:
	db "THOSE SLIMY FLEAS",$FF

PostAkrillicCreepyCrag:
.Line1:
	db "I WAS PLOKTASTIC BACK THERE!",$FF

PostAkrillicGohomeCavern:
.Line1:
	db "I WONDER WHERE ALL THESE",$FF

.Line2:
	db "FLEAS HAVE COME FROM?",$FF

PostAkrillicCrashingRocks:
.Line1:
	db "AKRILLIC WILL BE MINE ONCE",$FF

.Line2:
	db "AGAIN IF I CAN JUST KNOCK",$FF

.Line3:
	db "SOME SENSE INTO ROCKYFELLA..",$FF

PostAkrillicRockyfellaPart1:
.Line1:
	db "NOW TO THE SOURCE OF ALL",$FF

.Line2:
	db "THIS TROUBLE.....",$FF

.Line3:
	db "THE FLEAPIT!",$FF

PostAkrillicRockyfellaPart3:
.Line1:
	db "OOOH... THIS PLACE IS SCARY...",$FF

.Line2:
	db "HEY LOOK!",$FF

.Line3:
	db "SOMEBODY HAS LEFT ME A PRESENT",$FF

PostFleapitCyclingClever:
.Line1:
	db "HMM.. I DON'T THINK I'M",$FF

.Line2:
	db "IN AKRILLIC ANYMORE....",$FF

PostFleapitRoadHogging:
.Line1:
	db "THERE ARE ALL KINDS OF",$FF

.Line2:
	db "STRANGE FLEAS DOWN HERE!",$FF

PostFleapitHighFlying:
.Line1:
	db "HEY! MORE SURPRISES!",$FF

.Line2:
	db "THIS IS FUN",$FF

PostFleapitEasyRiding:
.Line1:
	db "THESE CAVES ARE GETTING",$FF

.Line2:
	db "WORSE AND WORSE....",$FF

PostFleapitInASpin:
.Line1:
	db "SOMEBODY IS GONNA PAY DEARLY",$FF

.Line2:
	db "FOR GIVING ME ALL THIS HASSLE!",$FF

PostFleapitRealRumblings:
.Line1:
	db "THIS BLUE GUNGE IS GETTING",$FF

.Line2:
	db "ALL OVER MY RED BOOTS",$FF

PostFleapitSilentRunning:
.Line1:
	db "THE FLEA QUEEN IS GONNA GET",$FF

.Line2:
	db "WHAT'S COMING TO HER!",$FF

PostFleapitTheFleaQueen:
.Line1:
	db "YEAH! CHECK ME OUT!.. DID I ",$FF

.Line2:
	db "SORT THOSE FLEAS OUT OR WHAT?",$FF

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
