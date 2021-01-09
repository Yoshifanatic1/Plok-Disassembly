; Note: This file is used by the ExtractAssets.bat batch script to define where each file is, how large they are, and their filenames.

lorom
;!ROMVer = $0000						; Note: This is set within the batch script
!PLOK_U = $0001
!PLOK_E = $0002
!PLOK_J = $0004
!PLOK_F = $0008
!PLOK_G = $0010

org $008000
MainPointerTableStart:
	dl MainPointerTableStart,MainPointerTableEnd-MainPointerTableStart
	dl UncompressedGFXPointersStart,(UncompressedGFXPointersEnd-UncompressedGFXPointersStart)/$0C
	dl CompressedGFXPointersStart,(CompressedGFXPointersEnd-CompressedGFXPointersStart)/$0C
	dl GarbageGFXPointersStart,(GarbageGFXPointersEnd-GarbageGFXPointersStart)/$0C
	dl MusicPointersStart,(MusicPointersEnd-MusicPointersStart)/$0C
	dl BRRPointersStart,(BRRPointersEnd-BRRPointersStart)/$0C
MainPointerTableEnd:

;--------------------------------------------------------------------

UncompressedGFXPointersStart:
	dl $848000,$849000,GFX_AnimatedTiles_CottonIsland,GFX_AnimatedTiles_CottonIslandEnd
	dl $849000,$84A000,GFX_AnimatedTiles_CloudBonusLevel,GFX_AnimatedTiles_CloudBonusLevelEnd
	dl $84A000,$84B000,GFX_AnimatedTiles_AkrillicGarlenBeach,GFX_AnimatedTiles_AkrillicGarlenBeachEnd
	dl $84B000,$84C000,GFX_AnimatedTiles_AkrillicSleepyDale,GFX_AnimatedTiles_AkrillicSleepyDaleEnd
if !ROMVer&(!PLOK_G|!PLOK_F) != $00
else
	dl $84C000,$84D000,GFX_AnimatedTiles_AkrillicCreepyForest,GFX_AnimatedTiles_AkrillicCreepyForestEnd
	dl $84D000,$84E000,GFX_AnimatedTiles_Fleapit,GFX_AnimatedTiles_FleapitEnd
endif
	dl $858000,$85C000,GFX_858000,GFX_858000End
	dl $85D7AA,$85DDAA,GFX_85D7AA,GFX_85D7AAEnd
	dl $868000,$86D000,GFX_868000,GFX_868000End
	dl $878000,$87E000,GFX_878000,GFX_878000End
	dl $889CC4,$88DCC4,GFX_889CC4,GFX_889CC4End
if !ROMVer&(!PLOK_J) != $00
	dl $8C8000,$8CADC0,GFX_BigJapaneseCharacterFont,GFX_BigJapaneseCharacterFontEnd
endif
UncompressedGFXPointersEnd:

;--------------------------------------------------------------------

CompressedGFXPointersStart:
if !ROMVer&(!PLOK_G) != $00
	dl $000000,$000000,GFX_TitleScreenSpotlight,GFX_TitleScreenSpotlightEnd
	dl $000000,$000000,GFX_Layer3_TitleScreenLogo,GFX_Layer3_TitleScreenLogoEnd
	dl $000000,$000000,GFX_Layer3_DemoCreditsText,GFX_Layer3_DemoCreditsTextEnd
	dl $000000,$000000,GFX_Layer3_RegularHUD,GFX_Layer3_RegularHUDEnd
	dl $000000,$000000,GFX_Layer3_SmallSillyLetters,GFX_Layer3_SmallSillyLettersEnd
	dl $000000,$000000,GFX_Layer3_GrandpappyHUD,GFX_Layer3_GrandpappyHUDEnd
	dl $000000,$000000,GFX_Layer3_SmallLetters,GFX_Layer3_SmallLettersEnd
	dl $000000,$000000,GFX_TitleScreenPlok1,GFX_TitleScreenPlok1End
	dl $000000,$000000,GFX_TitleScreenPlok2,GFX_TitleScreenPlok2End
	dl $000000,$000000,GFX_TitleScreenPlok3,GFX_TitleScreenPlok3End
	dl $000000,$000000,GFX_TitleScreenPlok4,GFX_TitleScreenPlok4End
	dl $000000,$000000,GFX_EndCreditsScreen,GFX_EndCreditsScreenEnd
	dl $000000,$000000,GFX_FinalScoreScreenPlok,GFX_FinalScoreScreenPlokEnd
	dl $000000,$000000,GFX_FG_Overworld,GFX_FG_OverworldEnd
	dl $000000,$000000,GFX_Sprite_Overworld,GFX_Sprite_OverworldEnd
	dl $000000,$000000,GFX_FG_Level_CottonIsland,GFX_FG_Level_CottonIslandEnd
	dl $000000,$000000,GFX_BG_Level_CottonIslandMain,GFX_BG_Level_CottonIslandMainEnd
	dl $000000,$000000,GFX_BG_Level_CottonIslandBeach,GFX_BG_Level_CottonIslandBeachEnd
	dl $000000,$000000,GFX_BG_Level_CottonIslandBridge,GFX_BG_Level_CottonIslandBridgeEnd
	dl $000000,$000000,GFX_BG_Level_CottonIslandColumns,GFX_BG_Level_CottonIslandColumnsEnd
	dl $000000,$000000,GFX_BG_Level_CottonIslandLogFalls,GFX_BG_Level_CottonIslandLogFallsEnd
	dl $000000,$000000,GFX_BG_Level_CottonIslandRicketyBridge,GFX_BG_Level_CottonIslandRicketyBridgeEnd
	dl $000000,$000000,GFX_BG_Level_CottonIslandCrazyCradles,GFX_BG_Level_CottonIslandCrazyCradlesEnd
	dl $000000,$000000,GFX_BG_Level_CottonIslandBlindLeap,GFX_BG_Level_CottonIslandBlindLeapEnd
	dl $000000,$000000,GFX_FG_Level_Akrillic_Slot4_Var05,GFX_FG_Level_Akrillic_Slot4_Var05End
	dl $000000,$000000,GFX_FG_Level_Akrillic_Slot4_Var01,GFX_FG_Level_Akrillic_Slot4_Var01End
	dl $000000,$000000,GFX_FG_Level_Akrillic_Slot5_Var04,GFX_FG_Level_Akrillic_Slot5_Var04End
	dl $000000,$000000,GFX_FG_Level_Akrillic_Slot4_Var03,GFX_FG_Level_Akrillic_Slot4_Var03End
	dl $000000,$000000,GFX_FG_Level_Akrillic_Slot5_Var01,GFX_FG_Level_Akrillic_Slot5_Var01End
	dl $000000,$000000,GFX_FG_Level_Akrillic_Slot4_Var02,GFX_FG_Level_Akrillic_Slot4_Var02End
	dl $000000,$000000,GFX_FG_Level_Akrillic_Slot5_Var02,GFX_FG_Level_Akrillic_Slot5_Var02End
	dl $000000,$000000,GFX_FG_Level_Akrillic_Slot5_Var05,GFX_FG_Level_Akrillic_Slot5_Var05End
	dl $000000,$000000,GFX_FG_Level_GrandpappyStatue,GFX_FG_Level_GrandpappyStatueEnd
	dl $000000,$000000,GFX_FG_Level_Akrillic_Slot4_Var04,GFX_FG_Level_Akrillic_Slot4_Var04End
	dl $000000,$000000,GFX_FG_Level_Akrillic_Slot4_Var06,GFX_FG_Level_Akrillic_Slot4_Var06End
	dl $000000,$000000,GFX_FG_Level_Akrillic_Slot4_Var08,GFX_FG_Level_Akrillic_Slot4_Var08End
	dl $000000,$000000,GFX_FG_Level_Akrillic_Slot4_Var07,GFX_FG_Level_Akrillic_Slot4_Var07End
	dl $000000,$000000,GFX_FG_Level_Akrillic_Slot5_Var03,GFX_FG_Level_Akrillic_Slot5_Var03End
	dl $000000,$000000,GFX_FG_Level_Objects,GFX_FG_Level_ObjectsEnd
	dl $000000,$000000,GFX_FG_Level_Akrillic_Slot2_Var01,GFX_FG_Level_Akrillic_Slot2_Var01End
	dl $000000,$000000,GFX_FG_Level_Akrillic_Slot2_Var02,GFX_FG_Level_Akrillic_Slot2_Var02End
	dl $000000,$000000,GFX_FG_Level_Akrillic_Slot2_Var03,GFX_FG_Level_Akrillic_Slot2_Var03End
	dl $000000,$000000,GFX_FG_Level_Akrillic_Slot2_Var04,GFX_FG_Level_Akrillic_Slot2_Var04End
	dl $000000,$000000,GFX_FG_Level_Akrillic_Slot2_Var05,GFX_FG_Level_Akrillic_Slot2_Var05End
	dl $000000,$000000,GFX_FG_Level_Akrillic_Slot1_Var02,GFX_FG_Level_Akrillic_Slot1_Var02End
	dl $000000,$000000,GFX_FG_Level_Akrillic_Slot2_Var06,GFX_FG_Level_Akrillic_Slot2_Var06End
	dl $000000,$000000,GFX_FG_Level_Akrillic_Slot2_Var07,GFX_FG_Level_Akrillic_Slot2_Var07End
	dl $000000,$000000,GFX_FG_Level_Akrillic_Slot2_Var08,GFX_FG_Level_Akrillic_Slot2_Var08End
	dl $000000,$000000,GFX_FG_Level_Akrillic_Slot2_Var09,GFX_FG_Level_Akrillic_Slot2_Var09End
	dl $000000,$000000,GFX_UnusedBlankFile,GFX_UnusedBlankFileEnd
	dl $000000,$000000,GFX_FG_Level_Akrillic_Slot1_Var01,GFX_FG_Level_Akrillic_Slot1_Var01End
	dl $000000,$000000,GFX_BG_Level_AkrillicGarlenBeach,GFX_BG_Level_AkrillicGarlenBeachEnd
	dl $000000,$000000,GFX_BG_Level_AkrillicSleepyDale,GFX_BG_Level_AkrillicSleepyDaleEnd
	dl $000000,$000000,GFX_BG_Level_AkrillicThePenkinos,GFX_BG_Level_AkrillicThePenkinosEnd
	dl $000000,$000000,GFX_BG_Level_AkrillicVengeThicket,GFX_BG_Level_AkrillicVengeThicketEnd
	dl $000000,$000000,GFX_BG_Level_AkrillicCreepyForest,GFX_BG_Level_AkrillicCreepyForestEnd
	dl $000000,$000000,GFX_BG_Level_AkrillicCreepyCrag,GFX_BG_Level_AkrillicCreepyCragEnd
	dl $000000,$000000,GFX_BG_Level_AkrillicGohomeCavern,GFX_BG_Level_AkrillicGohomeCavernEnd
	dl $000000,$000000,GFX_FG_Level_Fleapit,GFX_FG_Level_FleapitEnd
	dl $000000,$000000,GFX_Sprite_Level_Global1,GFX_Sprite_Level_Global1End
	dl $000000,$000000,GFX_Sprite_Level_Global2,GFX_Sprite_Level_Global2End
	dl $000000,$000000,GFX_Sprite_Level_CottonIsland,GFX_Sprite_Level_CottonIslandEnd
	dl $000000,$000000,GFX_Sprite_Level_AkrillicGarlenBeach,GFX_Sprite_Level_AkrillicGarlenBeachEnd
	dl $000000,$000000,GFX_Sprite_Level_AkrillicSleepyDale,GFX_Sprite_Level_AkrillicSleepyDaleEnd
	dl $000000,$000000,GFX_Sprite_Level_Fleapit,GFX_Sprite_Level_FleapitEnd
	dl $000000,$000000,GFX_Sprite_Level_BobbinsBros,GFX_Sprite_Level_BobbinsBrosEnd
	dl $000000,$000000,GFX_Sprite_Level_AkrillicThePenkinos,GFX_Sprite_Level_AkrillicThePenkinosEnd
	dl $000000,$000000,GFX_Sprite_Level_AkrillicWomackSpider,GFX_Sprite_Level_AkrillicWomackSpiderEnd
	dl $000000,$000000,GFX_Sprite_Level_AkrillicRockyfella,GFX_Sprite_Level_AkrillicRockyfellaEnd
	dl $000000,$000000,GFX_Sprite_Level_FleaQueen,GFX_Sprite_Level_FleaQueenEnd
elseif !ROMVer&(!PLOK_J) != $00
	dl $8DFAF8,$8E9881,GFX_ActivisionScreen,GFX_ActivisionScreenEnd
	dl $8E98A1,$8E9FFA,GFX_TitleScreenSpotlight,GFX_TitleScreenSpotlightEnd
	dl $8EA07F,$8EA6AD,GFX_Layer3_TitleScreenLogo,GFX_Layer3_TitleScreenLogoEnd
	dl $8EA6AD,$8EB24B,GFX_Layer3_DemoCreditsText,GFX_Layer3_DemoCreditsTextEnd
	dl $8EB2A4,$8EB9F1,GFX_Layer3_RegularHUD,GFX_Layer3_RegularHUDEnd
	dl $8EB9F1,$8EC3F3,GFX_Layer3_SmallSillyLetters,GFX_Layer3_SmallSillyLettersEnd
	dl $8EC3F3,$8ECA90,GFX_Layer3_GrandpappyHUD,GFX_Layer3_GrandpappyHUDEnd
	dl $8ECA90,$8ED492,GFX_Layer3_SmallLetters,GFX_Layer3_SmallLettersEnd
	dl $8ED4CB,$8EE534,GFX_TitleScreenPlok1,GFX_TitleScreenPlok1End
	dl $8EE534,$8F9740,GFX_TitleScreenPlok2,GFX_TitleScreenPlok2End
	dl $8F9740,$8FC65B,GFX_TitleScreenPlok3,GFX_TitleScreenPlok3End
	dl $8FC65B,$8FE1E8,GFX_TitleScreenPlok4,GFX_TitleScreenPlok4End
	dl $8FE1E8,$8FFE5A,GFX_FinalScoreScreenPlok,GFX_FinalScoreScreenPlokEnd
	dl $909EBA,$9189E8,GFX_EndCreditsScreen,GFX_EndCreditsScreenEnd
	dl $919FF1,$91F5A8,GFX_FG_Overworld,GFX_FG_OverworldEnd
	dl $91F668,$92AE0D,GFX_Sprite_Overworld,GFX_Sprite_OverworldEnd
	dl $98D935,$99A0B4,GFX_FG_Level_CottonIsland,GFX_FG_Level_CottonIslandEnd
	dl $99A172,$99A975,GFX_BG_Level_CottonIslandMain,GFX_BG_Level_CottonIslandMainEnd
	dl $99A975,$99ADAB,GFX_BG_Level_CottonIslandBeach,GFX_BG_Level_CottonIslandBeachEnd
	dl $99ADAB,$99B217,GFX_BG_Level_CottonIslandBridge,GFX_BG_Level_CottonIslandBridgeEnd
	dl $99B217,$99B61D,GFX_BG_Level_CottonIslandColumns,GFX_BG_Level_CottonIslandColumnsEnd
	dl $99B61D,$99BCC9,GFX_BG_Level_CottonIslandLogFalls,GFX_BG_Level_CottonIslandLogFallsEnd
	dl $99BCC9,$99C8AD,GFX_BG_Level_CottonIslandRicketyBridge,GFX_BG_Level_CottonIslandRicketyBridgeEnd
	dl $99C8AD,$99CF43,GFX_BG_Level_CottonIslandCrazyCradles,GFX_BG_Level_CottonIslandCrazyCradlesEnd
	dl $99CF43,$99D2C8,GFX_BG_Level_CottonIslandBlindLeap,GFX_BG_Level_CottonIslandBlindLeapEnd
	dl $99D625,$99EDE9,GFX_FG_Level_Akrillic_Slot4_Var05,GFX_FG_Level_Akrillic_Slot4_Var05End
	dl $99EDE9,$9A81E6,GFX_FG_Level_Akrillic_Slot4_Var01,GFX_FG_Level_Akrillic_Slot4_Var01End
	dl $9A81E6,$9A9730,GFX_FG_Level_Akrillic_Slot5_Var04,GFX_FG_Level_Akrillic_Slot5_Var04End
	dl $9A9730,$9AAD23,GFX_FG_Level_Akrillic_Slot4_Var03,GFX_FG_Level_Akrillic_Slot4_Var03End
	dl $9AAD23,$9ABF61,GFX_FG_Level_Akrillic_Slot5_Var01,GFX_FG_Level_Akrillic_Slot5_Var01End
	dl $9ABF61,$9AD2CB,GFX_FG_Level_Akrillic_Slot4_Var02,GFX_FG_Level_Akrillic_Slot4_Var02End
	dl $9AD2CB,$9AE549,GFX_FG_Level_Akrillic_Slot5_Var02,GFX_FG_Level_Akrillic_Slot5_Var02End
	dl $9AE549,$9AF603,GFX_FG_Level_Akrillic_Slot5_Var05,GFX_FG_Level_Akrillic_Slot5_Var05End
	dl $9AF603,$9AFFFB,GFX_FG_Level_GrandpappyStatue,GFX_FG_Level_GrandpappyStatueEnd
	dl $9AFFFB,$9B9202,GFX_FG_Level_Akrillic_Slot4_Var04,GFX_FG_Level_Akrillic_Slot4_Var04End
	dl $9B9202,$9BA64E,GFX_FG_Level_Akrillic_Slot4_Var06,GFX_FG_Level_Akrillic_Slot4_Var06End
	dl $9BA64E,$9BAA8C,GFX_FG_Level_Akrillic_Slot4_Var08,GFX_FG_Level_Akrillic_Slot4_Var08End
	dl $9BAA8C,$9BC2DD,GFX_FG_Level_Akrillic_Slot4_Var07,GFX_FG_Level_Akrillic_Slot4_Var07End
	dl $9BC2DD,$9BDA2F,GFX_FG_Level_Akrillic_Slot5_Var03,GFX_FG_Level_Akrillic_Slot5_Var03End
	dl $9BDA2F,$9BEAA1,GFX_FG_Level_Objects,GFX_FG_Level_ObjectsEnd
	dl $9BEAA1,$9BEEEE,GFX_FG_Level_Akrillic_Slot2_Var01,GFX_FG_Level_Akrillic_Slot2_Var01End
	dl $9BEEEE,$9BF4A7,GFX_FG_Level_Akrillic_Slot2_Var02,GFX_FG_Level_Akrillic_Slot2_Var02End
	dl $9BF4A7,$9BFA54,GFX_FG_Level_Akrillic_Slot2_Var03,GFX_FG_Level_Akrillic_Slot2_Var03End
	dl $9BFA54,$9C802F,GFX_FG_Level_Akrillic_Slot2_Var04,GFX_FG_Level_Akrillic_Slot2_Var04End
	dl $9C802F,$9C8591,GFX_FG_Level_Akrillic_Slot2_Var05,GFX_FG_Level_Akrillic_Slot2_Var05End
	dl $9C8591,$9C926E,GFX_FG_Level_Akrillic_Slot1_Var02,GFX_FG_Level_Akrillic_Slot1_Var02End
	dl $9C926E,$9C97CB,GFX_FG_Level_Akrillic_Slot2_Var06,GFX_FG_Level_Akrillic_Slot2_Var06End
	dl $9C97CB,$9C9E6E,GFX_FG_Level_Akrillic_Slot2_Var07,GFX_FG_Level_Akrillic_Slot2_Var07End
	dl $9C9E6E,$9C9F6E,GFX_FG_Level_Akrillic_Slot2_Var08,GFX_FG_Level_Akrillic_Slot2_Var08End
	dl $9C9F6E,$9CA06E,GFX_FG_Level_Akrillic_Slot2_Var09,GFX_FG_Level_Akrillic_Slot2_Var09End
	dl $9CA06E,$9CA16E,GFX_UnusedBlankFile,GFX_UnusedBlankFileEnd
	dl $9CA16E,$9CAD99,GFX_FG_Level_Akrillic_Slot1_Var01,GFX_FG_Level_Akrillic_Slot1_Var01End
	dl $9CB91A,$9CC331,GFX_BG_Level_AkrillicGarlenBeach,GFX_BG_Level_AkrillicGarlenBeachEnd
	dl $9CC331,$9CCEAD,GFX_BG_Level_AkrillicSleepyDale,GFX_BG_Level_AkrillicSleepyDaleEnd
	dl $9CCEAD,$9CD8C4,GFX_BG_Level_AkrillicThePenkinos,GFX_BG_Level_AkrillicThePenkinosEnd
	dl $9CD8C4,$9CE065,GFX_BG_Level_AkrillicVengeThicket,GFX_BG_Level_AkrillicVengeThicketEnd
	dl $9CE065,$9CEA1C,GFX_BG_Level_AkrillicCreepyForest,GFX_BG_Level_AkrillicCreepyForestEnd
	dl $9CEA1C,$9CF264,GFX_BG_Level_AkrillicCreepyCrag,GFX_BG_Level_AkrillicCreepyCragEnd
	dl $9CF264,$9CFDD8,GFX_BG_Level_AkrillicGohomeCavern,GFX_BG_Level_AkrillicGohomeCavernEnd
	dl $9CFFD4,$9DD729,GFX_FG_Level_Fleapit,GFX_FG_Level_FleapitEnd
	dl $9DD8C3,$9DE503,GFX_Sprite_Level_Global1,GFX_Sprite_Level_Global1End
	dl $9DE503,$9DEB9F,GFX_Sprite_Level_Global2,GFX_Sprite_Level_Global2End
	dl $9DEBDE,$9E87AE,GFX_Sprite_Level_CottonIsland,GFX_Sprite_Level_CottonIslandEnd
	dl $9E8968,$9EA2B4,GFX_Sprite_Level_AkrillicGarlenBeach,GFX_Sprite_Level_AkrillicGarlenBeachEnd
	dl $9EA2B4,$9EBC36,GFX_Sprite_Level_AkrillicSleepyDale,GFX_Sprite_Level_AkrillicSleepyDaleEnd
	dl $9EBCE1,$9ED970,GFX_Sprite_Level_Fleapit,GFX_Sprite_Level_FleapitEnd
	dl $9EDA19,$9EF3C6,GFX_Sprite_Level_BobbinsBros,GFX_Sprite_Level_BobbinsBrosEnd
	dl $9EF445,$9F8E20,GFX_Sprite_Level_AkrillicThePenkinos,GFX_Sprite_Level_AkrillicThePenkinosEnd
	dl $9F8ECF,$9FA467,GFX_Sprite_Level_AkrillicWomackSpider,GFX_Sprite_Level_AkrillicWomackSpiderEnd
	dl $9FA502,$9FB74A,GFX_Sprite_Level_AkrillicRockyfella,GFX_Sprite_Level_AkrillicRockyfellaEnd
	dl $9FB807,$9FD427,GFX_Sprite_Level_FleaQueen,GFX_Sprite_Level_FleaQueenEnd
elseif !ROMVer&(!PLOK_E|!PLOK_F) != $00
	dl $8DCBA8,$8DD301,GFX_TitleScreenSpotlight,GFX_TitleScreenSpotlightEnd
	dl $8DD386,$8DD9B4,GFX_Layer3_TitleScreenLogo,GFX_Layer3_TitleScreenLogoEnd
	dl $8DD9B4,$8DE552,GFX_Layer3_DemoCreditsText,GFX_Layer3_DemoCreditsTextEnd
	dl $8DE5AB,$8DF1BC,GFX_Layer3_RegularHUD,GFX_Layer3_RegularHUDEnd
	dl $8DF1BC,$8DF435,GFX_Layer3_SmallSillyLetters,GFX_Layer3_SmallSillyLettersEnd
	dl $8DF435,$8DFEA9,GFX_Layer3_GrandpappyHUD,GFX_Layer3_GrandpappyHUDEnd
	dl $8DFEA9,$8E80CC,GFX_Layer3_SmallLetters,GFX_Layer3_SmallLettersEnd
	dl $8E8105,$8E916E,GFX_TitleScreenPlok1,GFX_TitleScreenPlok1End
	dl $8E916E,$8EC37A,GFX_TitleScreenPlok2,GFX_TitleScreenPlok2End
	dl $8EC37A,$8EF295,GFX_TitleScreenPlok3,GFX_TitleScreenPlok3End
	dl $8EF295,$8F8E22,GFX_TitleScreenPlok4,GFX_TitleScreenPlok4End
	dl $8F8E22,$8FAA94,GFX_FinalScoreScreenPlok,GFX_FinalScoreScreenPlokEnd
	dl $8FC68A,$90B1B8,GFX_EndCreditsScreen,GFX_EndCreditsScreenEnd
	dl $90C7C1,$919D78,GFX_FG_Overworld,GFX_FG_OverworldEnd
	dl $919E38,$91D5DD,GFX_Sprite_Overworld,GFX_Sprite_OverworldEnd
	dl $988105,$98C884,GFX_FG_Level_CottonIsland,GFX_FG_Level_CottonIslandEnd
	dl $98C942,$98D145,GFX_BG_Level_CottonIslandMain,GFX_BG_Level_CottonIslandMainEnd
	dl $98D145,$98D57B,GFX_BG_Level_CottonIslandBeach,GFX_BG_Level_CottonIslandBeachEnd
	dl $98D57B,$98D9E7,GFX_BG_Level_CottonIslandBridge,GFX_BG_Level_CottonIslandBridgeEnd
	dl $98D9E7,$98DDED,GFX_BG_Level_CottonIslandColumns,GFX_BG_Level_CottonIslandColumnsEnd
	dl $98DDED,$98E499,GFX_BG_Level_CottonIslandLogFalls,GFX_BG_Level_CottonIslandLogFallsEnd
	dl $98E499,$98F07D,GFX_BG_Level_CottonIslandRicketyBridge,GFX_BG_Level_CottonIslandRicketyBridgeEnd
	dl $98F07D,$98F713,GFX_BG_Level_CottonIslandCrazyCradles,GFX_BG_Level_CottonIslandCrazyCradlesEnd
	dl $98F713,$98FA98,GFX_BG_Level_CottonIslandBlindLeap,GFX_BG_Level_CottonIslandBlindLeapEnd
	dl $98FDF5,$9995B9,GFX_FG_Level_Akrillic_Slot4_Var05,GFX_FG_Level_Akrillic_Slot4_Var05End
	dl $9995B9,$99A9B6,GFX_FG_Level_Akrillic_Slot4_Var01,GFX_FG_Level_Akrillic_Slot4_Var01End
	dl $99A9B6,$99BF00,GFX_FG_Level_Akrillic_Slot5_Var04,GFX_FG_Level_Akrillic_Slot5_Var04End
	dl $99BF00,$99D4F3,GFX_FG_Level_Akrillic_Slot4_Var03,GFX_FG_Level_Akrillic_Slot4_Var03End
	dl $99D4F3,$99E731,GFX_FG_Level_Akrillic_Slot5_Var01,GFX_FG_Level_Akrillic_Slot5_Var01End
	dl $99E731,$99FA9B,GFX_FG_Level_Akrillic_Slot4_Var02,GFX_FG_Level_Akrillic_Slot4_Var02End
	dl $99FA9B,$9A8D19,GFX_FG_Level_Akrillic_Slot5_Var02,GFX_FG_Level_Akrillic_Slot5_Var02End
	dl $9A8D19,$9A9DD3,GFX_FG_Level_Akrillic_Slot5_Var05,GFX_FG_Level_Akrillic_Slot5_Var05End
	dl $9A9DD3,$9AA7CB,GFX_FG_Level_GrandpappyStatue,GFX_FG_Level_GrandpappyStatueEnd
	dl $9AA7CB,$9AB9D2,GFX_FG_Level_Akrillic_Slot4_Var04,GFX_FG_Level_Akrillic_Slot4_Var04End
	dl $9AB9D2,$9ACE1E,GFX_FG_Level_Akrillic_Slot4_Var06,GFX_FG_Level_Akrillic_Slot4_Var06End
	dl $9ACE1E,$9AD25C,GFX_FG_Level_Akrillic_Slot4_Var08,GFX_FG_Level_Akrillic_Slot4_Var08End
	dl $9AD25C,$9AEAAD,GFX_FG_Level_Akrillic_Slot4_Var07,GFX_FG_Level_Akrillic_Slot4_Var07End
	dl $9AEAAD,$9B81FF,GFX_FG_Level_Akrillic_Slot5_Var03,GFX_FG_Level_Akrillic_Slot5_Var03End
	dl $9B81FF,$9B9271,GFX_FG_Level_Objects,GFX_FG_Level_ObjectsEnd
	dl $9B9271,$9B96BE,GFX_FG_Level_Akrillic_Slot2_Var01,GFX_FG_Level_Akrillic_Slot2_Var01End
	dl $9B96BE,$9B9C77,GFX_FG_Level_Akrillic_Slot2_Var02,GFX_FG_Level_Akrillic_Slot2_Var02End
	dl $9B9C77,$9BA224,GFX_FG_Level_Akrillic_Slot2_Var03,GFX_FG_Level_Akrillic_Slot2_Var03End
	dl $9BA224,$9BA7FF,GFX_FG_Level_Akrillic_Slot2_Var04,GFX_FG_Level_Akrillic_Slot2_Var04End
	dl $9BA7FF,$9BAD61,GFX_FG_Level_Akrillic_Slot2_Var05,GFX_FG_Level_Akrillic_Slot2_Var05End
	dl $9BAD61,$9BBA3E,GFX_FG_Level_Akrillic_Slot1_Var02,GFX_FG_Level_Akrillic_Slot1_Var02End
	dl $9BBA3E,$9BBF9B,GFX_FG_Level_Akrillic_Slot2_Var06,GFX_FG_Level_Akrillic_Slot2_Var06End
	dl $9BBF9B,$9BC63E,GFX_FG_Level_Akrillic_Slot2_Var07,GFX_FG_Level_Akrillic_Slot2_Var07End
	dl $9BC63E,$9BC73E,GFX_FG_Level_Akrillic_Slot2_Var08,GFX_FG_Level_Akrillic_Slot2_Var08End
	dl $9BC73E,$9BC83E,GFX_FG_Level_Akrillic_Slot2_Var09,GFX_FG_Level_Akrillic_Slot2_Var09End
	dl $9BC83E,$9BC93E,GFX_UnusedBlankFile,GFX_UnusedBlankFileEnd
	dl $9BC93E,$9BD569,GFX_FG_Level_Akrillic_Slot1_Var01,GFX_FG_Level_Akrillic_Slot1_Var01End
	dl $9BE0EA,$9BEB01,GFX_BG_Level_AkrillicGarlenBeach,GFX_BG_Level_AkrillicGarlenBeachEnd
	dl $9BEB01,$9BF67D,GFX_BG_Level_AkrillicSleepyDale,GFX_BG_Level_AkrillicSleepyDaleEnd
	dl $9BF67D,$9C8094,GFX_BG_Level_AkrillicThePenkinos,GFX_BG_Level_AkrillicThePenkinosEnd
	dl $9C8094,$9C8835,GFX_BG_Level_AkrillicVengeThicket,GFX_BG_Level_AkrillicVengeThicketEnd
	dl $9C8835,$9C91EC,GFX_BG_Level_AkrillicCreepyForest,GFX_BG_Level_AkrillicCreepyForestEnd
	dl $9C91EC,$9C9A34,GFX_BG_Level_AkrillicCreepyCrag,GFX_BG_Level_AkrillicCreepyCragEnd
	dl $9C9A34,$9CA5A8,GFX_BG_Level_AkrillicGohomeCavern,GFX_BG_Level_AkrillicGohomeCavernEnd
	dl $9CA7A4,$9CFEF9,GFX_FG_Level_Fleapit,GFX_FG_Level_FleapitEnd
	dl $9D8093,$9D8CD3,GFX_Sprite_Level_Global1,GFX_Sprite_Level_Global1End
	dl $9D8CD3,$9D936F,GFX_Sprite_Level_Global2,GFX_Sprite_Level_Global2End
	dl $9D93AE,$9DAF7E,GFX_Sprite_Level_CottonIsland,GFX_Sprite_Level_CottonIslandEnd
	dl $9DB138,$9DCA84,GFX_Sprite_Level_AkrillicGarlenBeach,GFX_Sprite_Level_AkrillicGarlenBeachEnd
	dl $9DCA84,$9DE406,GFX_Sprite_Level_AkrillicSleepyDale,GFX_Sprite_Level_AkrillicSleepyDaleEnd
	dl $9DE4B1,$9E8140,GFX_Sprite_Level_Fleapit,GFX_Sprite_Level_FleapitEnd
	dl $9E81E9,$9E9B96,GFX_Sprite_Level_BobbinsBros,GFX_Sprite_Level_BobbinsBrosEnd
	dl $9E9C15,$9EB5F0,GFX_Sprite_Level_AkrillicThePenkinos,GFX_Sprite_Level_AkrillicThePenkinosEnd
	dl $9EB69F,$9ECC37,GFX_Sprite_Level_AkrillicWomackSpider,GFX_Sprite_Level_AkrillicWomackSpiderEnd
	dl $9ECCD2,$9EDF1A,GFX_Sprite_Level_AkrillicRockyfella,GFX_Sprite_Level_AkrillicRockyfellaEnd
	dl $9EDFD7,$9EFBF7,GFX_Sprite_Level_FleaQueen,GFX_Sprite_Level_FleaQueenEnd
else
	dl $8DD2C0,$8DD948,GFX_TitleScreenSpotlight,GFX_TitleScreenSpotlightEnd
	dl $8DD9CD,$8DDFFB,GFX_Layer3_TitleScreenLogo,GFX_Layer3_TitleScreenLogoEnd
	dl $8DDFFB,$8DEB99,GFX_Layer3_DemoCreditsText,GFX_Layer3_DemoCreditsTextEnd
	dl $8DEBF2,$8DF803,GFX_Layer3_RegularHUD,GFX_Layer3_RegularHUDEnd
	dl $8DF803,$8DFA7C,GFX_Layer3_SmallSillyLetters,GFX_Layer3_SmallSillyLettersEnd
	dl $8DFA7C,$8E84F0,GFX_Layer3_GrandpappyHUD,GFX_Layer3_GrandpappyHUDEnd
	dl $8E84F0,$8E8713,GFX_Layer3_SmallLetters,GFX_Layer3_SmallLettersEnd
	dl $8E874C,$8E97B5,GFX_TitleScreenPlok1,GFX_TitleScreenPlok1End
	dl $8E97B5,$8EC9C1,GFX_TitleScreenPlok2,GFX_TitleScreenPlok2End
	dl $8EC9C1,$8EF8DC,GFX_TitleScreenPlok3,GFX_TitleScreenPlok3End
	dl $8EF8DC,$8F9469,GFX_TitleScreenPlok4,GFX_TitleScreenPlok4End
	dl $8FAEBC,$9099EA,GFX_EndCreditsScreen,GFX_EndCreditsScreenEnd
	dl $90AE10,$90D4C7,GFX_FinalScoreScreenPlok,GFX_FinalScoreScreenPlokEnd
	dl $90D80B,$91ADC2,GFX_FG_Overworld,GFX_FG_OverworldEnd
	dl $91AE82,$91E627,GFX_Sprite_Overworld,GFX_Sprite_OverworldEnd
	dl $98914F,$98D8CE,GFX_FG_Level_CottonIsland,GFX_FG_Level_CottonIslandEnd
	dl $98D98C,$98E18F,GFX_BG_Level_CottonIslandMain,GFX_BG_Level_CottonIslandMainEnd
	dl $98E18F,$98E5C5,GFX_BG_Level_CottonIslandBeach,GFX_BG_Level_CottonIslandBeachEnd
	dl $98E5C5,$98EA31,GFX_BG_Level_CottonIslandBridge,GFX_BG_Level_CottonIslandBridgeEnd
	dl $98EA31,$98EE37,GFX_BG_Level_CottonIslandColumns,GFX_BG_Level_CottonIslandColumnsEnd
	dl $98EE37,$98F4E3,GFX_BG_Level_CottonIslandLogFalls,GFX_BG_Level_CottonIslandLogFallsEnd
	dl $98F4E3,$9980C7,GFX_BG_Level_CottonIslandRicketyBridge,GFX_BG_Level_CottonIslandRicketyBridgeEnd
	dl $9980C7,$99875D,GFX_BG_Level_CottonIslandCrazyCradles,GFX_BG_Level_CottonIslandCrazyCradlesEnd
	dl $99875D,$998AE2,GFX_BG_Level_CottonIslandBlindLeap,GFX_BG_Level_CottonIslandBlindLeapEnd
	dl $998E3F,$99A603,GFX_FG_Level_Akrillic_Slot4_Var05,GFX_FG_Level_Akrillic_Slot4_Var05End
	dl $99A603,$99BA00,GFX_FG_Level_Akrillic_Slot4_Var01,GFX_FG_Level_Akrillic_Slot4_Var01End
	dl $99BA00,$99CF4A,GFX_FG_Level_Akrillic_Slot5_Var04,GFX_FG_Level_Akrillic_Slot5_Var04End
	dl $99CF4A,$99E53D,GFX_FG_Level_Akrillic_Slot4_Var03,GFX_FG_Level_Akrillic_Slot4_Var03End
	dl $99E53D,$99F77B,GFX_FG_Level_Akrillic_Slot5_Var01,GFX_FG_Level_Akrillic_Slot5_Var01End
	dl $99F77B,$9A8AE5,GFX_FG_Level_Akrillic_Slot4_Var02,GFX_FG_Level_Akrillic_Slot4_Var02End
	dl $9A8AE5,$9A9D63,GFX_FG_Level_Akrillic_Slot5_Var02,GFX_FG_Level_Akrillic_Slot5_Var02End
	dl $9A9D63,$9AAE1D,GFX_FG_Level_Akrillic_Slot5_Var05,GFX_FG_Level_Akrillic_Slot5_Var05End
	dl $9AAE1D,$9AB815,GFX_FG_Level_GrandpappyStatue,GFX_FG_Level_GrandpappyStatueEnd
	dl $9AB815,$9ACA1C,GFX_FG_Level_Akrillic_Slot4_Var04,GFX_FG_Level_Akrillic_Slot4_Var04End
	dl $9ACA1C,$9ADE68,GFX_FG_Level_Akrillic_Slot4_Var06,GFX_FG_Level_Akrillic_Slot4_Var06End
	dl $9ADE68,$9AE2A6,GFX_FG_Level_Akrillic_Slot4_Var08,GFX_FG_Level_Akrillic_Slot4_Var08End
	dl $9AE2A6,$9AFAF7,GFX_FG_Level_Akrillic_Slot4_Var07,GFX_FG_Level_Akrillic_Slot4_Var07End
	dl $9AFAF7,$9B9249,GFX_FG_Level_Akrillic_Slot5_Var03,GFX_FG_Level_Akrillic_Slot5_Var03End
	dl $9B9249,$9BA2BB,GFX_FG_Level_Objects,GFX_FG_Level_ObjectsEnd
	dl $9BA2BB,$9BA708,GFX_FG_Level_Akrillic_Slot2_Var01,GFX_FG_Level_Akrillic_Slot2_Var01End
	dl $9BA708,$9BACC1,GFX_FG_Level_Akrillic_Slot2_Var02,GFX_FG_Level_Akrillic_Slot2_Var02End
	dl $9BACC1,$9BB26E,GFX_FG_Level_Akrillic_Slot2_Var03,GFX_FG_Level_Akrillic_Slot2_Var03End
	dl $9BB26E,$9BB849,GFX_FG_Level_Akrillic_Slot2_Var04,GFX_FG_Level_Akrillic_Slot2_Var04End
	dl $9BB849,$9BBDAB,GFX_FG_Level_Akrillic_Slot2_Var05,GFX_FG_Level_Akrillic_Slot2_Var05End
	dl $9BBDAB,$9BCA88,GFX_FG_Level_Akrillic_Slot1_Var02,GFX_FG_Level_Akrillic_Slot1_Var02End
	dl $9BCA88,$9BCFE5,GFX_FG_Level_Akrillic_Slot2_Var06,GFX_FG_Level_Akrillic_Slot2_Var06End
	dl $9BCFE5,$9BD688,GFX_FG_Level_Akrillic_Slot2_Var07,GFX_FG_Level_Akrillic_Slot2_Var07End
	dl $9BD688,$9BD788,GFX_FG_Level_Akrillic_Slot2_Var08,GFX_FG_Level_Akrillic_Slot2_Var08End
	dl $9BD788,$9BD888,GFX_FG_Level_Akrillic_Slot2_Var09,GFX_FG_Level_Akrillic_Slot2_Var09End
	dl $9BD888,$9BD988,GFX_UnusedBlankFile,GFX_UnusedBlankFileEnd
	dl $9BD988,$9BE5B3,GFX_FG_Level_Akrillic_Slot1_Var01,GFX_FG_Level_Akrillic_Slot1_Var01End
	dl $9BF134,$9BFB4B,GFX_BG_Level_AkrillicGarlenBeach,GFX_BG_Level_AkrillicGarlenBeachEnd
	dl $9BFB4B,$9C86C7,GFX_BG_Level_AkrillicSleepyDale,GFX_BG_Level_AkrillicSleepyDaleEnd
	dl $9C86C7,$9C90DE,GFX_BG_Level_AkrillicThePenkinos,GFX_BG_Level_AkrillicThePenkinosEnd
	dl $9C90DE,$9C987F,GFX_BG_Level_AkrillicVengeThicket,GFX_BG_Level_AkrillicVengeThicketEnd
	dl $9C987F,$9CA236,GFX_BG_Level_AkrillicCreepyForest,GFX_BG_Level_AkrillicCreepyForestEnd
	dl $9CA236,$9CAA7E,GFX_BG_Level_AkrillicCreepyCrag,GFX_BG_Level_AkrillicCreepyCragEnd
	dl $9CAA7E,$9CB5F2,GFX_BG_Level_AkrillicGohomeCavern,GFX_BG_Level_AkrillicGohomeCavernEnd
	dl $9CB7EE,$9D8F43,GFX_FG_Level_Fleapit,GFX_FG_Level_FleapitEnd
	dl $9D90DD,$9D9D1D,GFX_Sprite_Level_Global1,GFX_Sprite_Level_Global1End
	dl $9D9D1D,$9DA3B9,GFX_Sprite_Level_Global2,GFX_Sprite_Level_Global2End
	dl $9DA3F8,$9DBFC8,GFX_Sprite_Level_CottonIsland,GFX_Sprite_Level_CottonIslandEnd
	dl $9DC182,$9DDACE,GFX_Sprite_Level_AkrillicGarlenBeach,GFX_Sprite_Level_AkrillicGarlenBeachEnd
	dl $9DDACE,$9DF450,GFX_Sprite_Level_AkrillicSleepyDale,GFX_Sprite_Level_AkrillicSleepyDaleEnd
	dl $9DF4FB,$9E918A,GFX_Sprite_Level_Fleapit,GFX_Sprite_Level_FleapitEnd
	dl $9E9233,$9EABE0,GFX_Sprite_Level_BobbinsBros,GFX_Sprite_Level_BobbinsBrosEnd
	dl $9EAC5F,$9EC63A,GFX_Sprite_Level_AkrillicThePenkinos,GFX_Sprite_Level_AkrillicThePenkinosEnd
	dl $9EC6E9,$9EDC81,GFX_Sprite_Level_AkrillicWomackSpider,GFX_Sprite_Level_AkrillicWomackSpiderEnd
	dl $9EDD1C,$9EEF64,GFX_Sprite_Level_AkrillicRockyfella,GFX_Sprite_Level_AkrillicRockyfellaEnd
	dl $9EF021,$9F8C41,GFX_Sprite_Level_FleaQueen,GFX_Sprite_Level_FleaQueenEnd
endif
CompressedGFXPointersEnd:

;--------------------------------------------------------------------

GarbageGFXPointersStart:
if !ROMVer&(!PLOK_J) != $00
	dl $84E203,$84E9C3,GFX_84E203_PLOK_J,GFX_84E203_PLOK_JEnd
elseif !ROMVer&(!PLOK_F|!PLOK_E) != $00
else
	dl $84E001,$84FEA1,GFX_84E001,GFX_84E001End
	dl $88DCC5,$88FB65,GFX_88DCC5,GFX_88DCC5End
endif
GarbageGFXPointersEnd:

;--------------------------------------------------------------------

MusicPointersStart:
	dl $8AF4BB,$8AFCD0,Music_TitleScreen,Music_TitleScreenEnd
	dl $8AFCD0,$8AFEC6,Music_Map,Music_MapEnd
	dl $8AFEC6,$8B8A13,Music_CottonIsland,Music_CottonIslandEnd
	dl $8B8A13,$8B962B,Music_Akrillic,Music_AkrillicEnd
	dl $8B962B,$8BA2BE,Music_Beach,Music_BeachEnd
	dl $8BA2BE,$8BB1A9,Music_PloksHouse,Music_PloksHouseEnd
	dl $8BB1A9,$8BBDC8,Music_CreepyCrag,Music_CreepyCragEnd
	dl $8BBDC8,$8BC7FC,Music_Cavern,Music_CavernEnd
	dl $8BC7FC,$8BCC28,Music_Boss,Music_BossEnd
	dl $8BCC28,$8BD646,Music_Fleapit,Music_FleapitEnd
	dl $8BD646,$8BDC8C,Music_BonusLevel,Music_BonusLevelEnd
	dl $8BDC8C,$8BDE3D,Music_DiggingForAmulet,Music_DiggingForAmuletEnd
	dl $8BDE3D,$8BE7E1,Music_LegacyIsland,Music_LegacyIslandEnd
	dl $8BE7E1,$8BEBC2,Music_BoxerPlok,Music_BoxerPlokEnd
	dl $8BEBC2,$8BEEF1,Music_ArsonistPlok,Music_ArsonistPlokEnd
	dl $8BEEF1,$8BF1AB,Music_CowboyPlok,Music_CowboyPlokEnd
	dl $8BF1AB,$8BF4A9,Music_HunterPlok,Music_HunterPlokEnd
	dl $8BF4A9,$8BF861,Music_RocketeerPlok,Music_RocketeerPlokEnd
MusicPointersEnd:

;--------------------------------------------------------------------

BRRPointersStart:
	dl $89AEA0,$89AEB2,BRRFile00,BRRFile00End
	dl $89AFAE,$89B46D,BRRFile01,BRRFile01End
	dl $89B46D,$89B923,BRRFile02,BRRFile02End
	dl $89B923,$89BC32,BRRFile03,BRRFile03End
	dl $8AD6EB,$8ADDF3,BRRFile04,BRRFile04End
	dl $8ADDF3,$8AE34B,BRRFile05,BRRFile05End
	dl $89AE8E,$89AEA0,BRRFile06,BRRFile06End
	dl $89BC32,$89BC56,BRRFile07,BRRFile07End
	dl $89BC56,$89C15D,BRRFile08,BRRFile08End
	dl $89C15D,$89CA15,BRRFile09,BRRFile09End
	dl $89CA15,$89CBCE,BRRFile0A,BRRFile0AEnd
	dl $89CBCE,$89CE56,BRRFile0B,BRRFile0BEnd
	dl $89CE56,$89CFA3,BRRFile0C,BRRFile0CEnd
	dl $89CFA3,$89D1AD,BRRFile0D,BRRFile0DEnd
	dl $89AEE8,$89AF42,BRRFile0E,BRRFile0EEnd
	dl $89D1AD,$89D732,BRRFile0F,BRRFile0FEnd
	dl $89AEB2,$89AEE8,BRRFile10,BRRFile10End
	dl $8AED47,$8AEEEE,BRRFile11,BRRFile11End
	dl $89D732,$89DABF,BRRFile12,BRRFile12End
	dl $89DABF,$89DE5E,BRRFile13,BRRFile13End
	dl $89DE5E,$89E11C,BRRFile14,BRRFile14End
	dl $89E11C,$89E1D0,BRRFile15,BRRFile15End
	dl $89E1D0,$89EAE2,BRRFile16,BRRFile16End
	dl $89EAE2,$89EF74,BRRFile17,BRRFile17End
	dl $8A8300,$8A968C,BRRFile18,BRRFile18End
	dl $8A968C,$8A9E09,BRRFile19,BRRFile19End
	dl $8A9E09,$8AA493,BRRFile1A,BRRFile1AEnd
	dl $8AA493,$8AAB92,BRRFile1B,BRRFile1BEnd
	dl $8AB01B,$8AB252,BRRFile1C,BRRFile1CEnd
	dl $8AE34B,$8AE891,BRRFile1D,BRRFile1DEnd
	dl $8AE891,$8AED47,BRRFile1E,BRRFile1EEnd
	dl $89AF42,$89AFAE,BRRFile1F,BRRFile1FEnd
	dl $89EF74,$89F74B,BRRFile20,BRRFile20End
	dl $8AAB92,$8AB01B,BRRFile21,BRRFile21End
	dl $8AB252,$8AB37B,BRRFile22,BRRFile22End
	dl $8AB37B,$8AB402,BRRFile23,BRRFile23End
	dl $8AB402,$8AB489,BRRFile24,BRRFile24End
	dl $8AB489,$8AB7FB,BRRFile25,BRRFile25End
	dl $8AB7FB,$8AD6EB,BRRFile26,BRRFile26End
	dl $8AEEEE,$8AF125,BRRFile27,BRRFile27End
	dl $8AF125,$8AF2D5,BRRFile28,BRRFile28End
	dl $8AF2D5,$8AF3A4,BRRFile29,BRRFile29End
	dl $89F74B,$89FA51,BRRFile2A,BRRFile2AEnd
	dl $8AF3A4,$8AF4BB,BRRFile2B,BRRFile2BEnd
	dl $89FA51,$8A8027,BRRFile2C,BRRFile2CEnd
	dl $8A8027,$8A8300,BRRFile2D,BRRFile2DEnd
BRRPointersEnd:

;--------------------------------------------------------------------

GFX_AnimatedTiles_CottonIsland:
	db "GFX_AnimatedTiles_CottonIsland.bin"
GFX_AnimatedTiles_CottonIslandEnd:
GFX_AnimatedTiles_CloudBonusLevel:
	db "GFX_AnimatedTiles_CloudBonusLevel.bin"
GFX_AnimatedTiles_CloudBonusLevelEnd:
GFX_AnimatedTiles_AkrillicGarlenBeach:
	db "GFX_AnimatedTiles_AkrillicGarlenBeach.bin"
GFX_AnimatedTiles_AkrillicGarlenBeachEnd:
GFX_AnimatedTiles_AkrillicSleepyDale:
	db "GFX_AnimatedTiles_AkrillicSleepyDale.bin"
GFX_AnimatedTiles_AkrillicSleepyDaleEnd:
if !ROMVer&(!PLOK_G|!PLOK_F) != $00
else
GFX_AnimatedTiles_AkrillicCreepyForest:
	db "GFX_AnimatedTiles_AkrillicCreepyForest.bin"
GFX_AnimatedTiles_AkrillicCreepyForestEnd:
GFX_AnimatedTiles_Fleapit:
	db "GFX_AnimatedTiles_Fleapit.bin"
GFX_AnimatedTiles_FleapitEnd:
endif
GFX_858000:
	db "GFX_858000.bin"
GFX_858000End:
GFX_85D7AA:
	db "GFX_85D7AA.bin"
GFX_85D7AAEnd:
GFX_868000:
	db "GFX_868000.bin"
GFX_868000End:
GFX_878000:
	db "GFX_878000.bin"
GFX_878000End:
GFX_889CC4:
	db "GFX_889CC4.bin"
GFX_889CC4End:
if !ROMVer&(!PLOK_J) != $00
GFX_BigJapaneseCharacterFont:
	db "GFX_BigJapaneseCharacterFont.bin"
GFX_BigJapaneseCharacterFontEnd:
endif

;--------------------------------------------------------------------

if !ROMVer&(!PLOK_J) != $00
GFX_ActivisionScreen:
	db "GFX_ActivisionScreen.bin"
GFX_ActivisionScreenEnd:
endif
GFX_TitleScreenSpotlight:
if !ROMVer&(!PLOK_E|!PLOK_F|!PLOK_J) != $00
	db "GFX_TitleScreenSpotlight_PLOK_E.bin"
elseif !ROMVer&(!PLOK_G) != $00
	db "GFX_TitleScreenSpotlight_PLOK_G.bin"
else
	db "GFX_TitleScreenSpotlight_PLOK_U.bin"
endif
GFX_TitleScreenSpotlightEnd:
GFX_Layer3_TitleScreenLogo:
	db "GFX_Layer3_TitleScreenLogo.bin"
GFX_Layer3_TitleScreenLogoEnd:
GFX_Layer3_DemoCreditsText:
	db "GFX_Layer3_DemoCreditsText.bin"
GFX_Layer3_DemoCreditsTextEnd:
GFX_Layer3_RegularHUD:
if !ROMVer&(!PLOK_J) != $00
	db "GFX_Layer3_RegularHUD_PLOK_J.bin"
else
	db "GFX_Layer3_RegularHUD.bin"
endif
GFX_Layer3_RegularHUDEnd:
GFX_Layer3_SmallSillyLetters:
if !ROMVer&(!PLOK_J) != $00
	db "GFX_Layer3_SmallSillyLetters_PLOK_J.bin"
elseif !ROMVer&(!PLOK_G) != $00
	db "GFX_Layer3_SmallSillyLetters_PLOK_G.bin"
else
	db "GFX_Layer3_SmallSillyLetters.bin"
endif
GFX_Layer3_SmallSillyLettersEnd:
GFX_Layer3_GrandpappyHUD:
if !ROMVer&(!PLOK_J) != $00
	db "GFX_Layer3_GrandpappyHUD_PLOK_J.bin"
else
	db "GFX_Layer3_GrandpappyHUD.bin"
endif
GFX_Layer3_GrandpappyHUDEnd:
GFX_Layer3_SmallLetters:
if !ROMVer&(!PLOK_J) != $00
	db "GFX_Layer3_SmallLetters_PLOK_J.bin"
elseif !ROMVer&(!PLOK_G) != $00
	db "GFX_Layer3_SmallLetters_PLOK_G.bin"
else
	db "GFX_Layer3_SmallLetters.bin"
endif
GFX_Layer3_SmallLettersEnd:
GFX_TitleScreenPlok1:
	db "GFX_TitleScreenPlok1.bin"
GFX_TitleScreenPlok1End:
GFX_TitleScreenPlok2:
	db "GFX_TitleScreenPlok2.bin"
GFX_TitleScreenPlok2End:
GFX_TitleScreenPlok3:
	db "GFX_TitleScreenPlok3.bin"
GFX_TitleScreenPlok3End:
GFX_TitleScreenPlok4:
	db "GFX_TitleScreenPlok4.bin"
GFX_TitleScreenPlok4End:
GFX_EndCreditsScreen:
	db "GFX_EndCreditsScreen.bin"
GFX_EndCreditsScreenEnd:
GFX_FinalScoreScreenPlok:
if !ROMVer&(!PLOK_E|!PLOK_F|!PLOK_J) != $00
	db "GFX_FinalScoreScreenPlok_PLOK_E.bin"
else
	db "GFX_FinalScoreScreenPlok_PLOK_U.bin"
endif
GFX_FinalScoreScreenPlokEnd:
GFX_FG_Overworld:
	db "GFX_FG_Overworld.bin"
GFX_FG_OverworldEnd:
GFX_Sprite_Overworld:
	db "GFX_Sprite_Overworld.bin"
GFX_Sprite_OverworldEnd:
GFX_FG_Level_CottonIsland:
	db "GFX_FG_Level_CottonIsland.bin"
GFX_FG_Level_CottonIslandEnd:
GFX_BG_Level_CottonIslandMain:
	db "GFX_BG_Level_CottonIslandMain.bin"
GFX_BG_Level_CottonIslandMainEnd:
GFX_BG_Level_CottonIslandBeach:
	db "GFX_BG_Level_CottonIslandBeach.bin"
GFX_BG_Level_CottonIslandBeachEnd:
GFX_BG_Level_CottonIslandBridge:
	db "GFX_BG_Level_CottonIslandBridge.bin"
GFX_BG_Level_CottonIslandBridgeEnd:
GFX_BG_Level_CottonIslandColumns:
	db "GFX_BG_Level_CottonIslandColumns.bin"
GFX_BG_Level_CottonIslandColumnsEnd:
GFX_BG_Level_CottonIslandLogFalls:
	db "GFX_BG_Level_CottonIslandLogFalls.bin"
GFX_BG_Level_CottonIslandLogFallsEnd:
GFX_BG_Level_CottonIslandRicketyBridge:
	db "GFX_BG_Level_CottonIslandRicketyBridge.bin"
GFX_BG_Level_CottonIslandRicketyBridgeEnd:
GFX_BG_Level_CottonIslandCrazyCradles:
	db "GFX_BG_Level_CottonIslandCrazyCradles.bin"
GFX_BG_Level_CottonIslandCrazyCradlesEnd:
GFX_BG_Level_CottonIslandBlindLeap:
	db "GFX_BG_Level_CottonIslandBlindLeap.bin"
GFX_BG_Level_CottonIslandBlindLeapEnd:
GFX_FG_Level_Akrillic_Slot4_Var05:
	db "GFX_FG_Level_Akrillic_Slot4_Var05.bin"
GFX_FG_Level_Akrillic_Slot4_Var05End:
GFX_FG_Level_Akrillic_Slot4_Var01:
	db "GFX_FG_Level_Akrillic_Slot4_Var01.bin"
GFX_FG_Level_Akrillic_Slot4_Var01End:
GFX_FG_Level_Akrillic_Slot5_Var04:
	db "GFX_FG_Level_Akrillic_Slot5_Var04.bin"
GFX_FG_Level_Akrillic_Slot5_Var04End:
GFX_FG_Level_Akrillic_Slot4_Var03:
	db "GFX_FG_Level_Akrillic_Slot4_Var03.bin"
GFX_FG_Level_Akrillic_Slot4_Var03End:
GFX_FG_Level_Akrillic_Slot5_Var01:
	db "GFX_FG_Level_Akrillic_Slot5_Var01.bin"
GFX_FG_Level_Akrillic_Slot5_Var01End:
GFX_FG_Level_Akrillic_Slot4_Var02:
	db "GFX_FG_Level_Akrillic_Slot4_Var02.bin"
GFX_FG_Level_Akrillic_Slot4_Var02End:
GFX_FG_Level_Akrillic_Slot5_Var02:
	db "GFX_FG_Level_Akrillic_Slot5_Var02.bin"
GFX_FG_Level_Akrillic_Slot5_Var02End:
GFX_FG_Level_Akrillic_Slot5_Var05:
	db "GFX_FG_Level_Akrillic_Slot5_Var05.bin"
GFX_FG_Level_Akrillic_Slot5_Var05End:
GFX_FG_Level_GrandpappyStatue:
	db "GFX_FG_Level_GrandpappyStatue.bin"
GFX_FG_Level_GrandpappyStatueEnd:
GFX_FG_Level_Akrillic_Slot4_Var04:
	db "GFX_FG_Level_Akrillic_Slot4_Var04.bin"
GFX_FG_Level_Akrillic_Slot4_Var04End:
GFX_FG_Level_Akrillic_Slot4_Var06:
	db "GFX_FG_Level_Akrillic_Slot4_Var06.bin"
GFX_FG_Level_Akrillic_Slot4_Var06End:
GFX_FG_Level_Akrillic_Slot4_Var08:
	db "GFX_FG_Level_Akrillic_Slot4_Var08.bin"
GFX_FG_Level_Akrillic_Slot4_Var08End:
GFX_FG_Level_Akrillic_Slot4_Var07:
	db "GFX_FG_Level_Akrillic_Slot4_Var07.bin"
GFX_FG_Level_Akrillic_Slot4_Var07End:
GFX_FG_Level_Akrillic_Slot5_Var03:
	db "GFX_FG_Level_Akrillic_Slot5_Var03.bin"
GFX_FG_Level_Akrillic_Slot5_Var03End:
GFX_FG_Level_Objects:
	db "GFX_FG_Level_Objects.bin"
GFX_FG_Level_ObjectsEnd:
GFX_FG_Level_Akrillic_Slot2_Var01:
	db "GFX_FG_Level_Akrillic_Slot2_Var01.bin"
GFX_FG_Level_Akrillic_Slot2_Var01End:
GFX_FG_Level_Akrillic_Slot2_Var02:
	db "GFX_FG_Level_Akrillic_Slot2_Var02.bin"
GFX_FG_Level_Akrillic_Slot2_Var02End:
GFX_FG_Level_Akrillic_Slot2_Var03:
	db "GFX_FG_Level_Akrillic_Slot2_Var03.bin"
GFX_FG_Level_Akrillic_Slot2_Var03End:
GFX_FG_Level_Akrillic_Slot2_Var04:
	db "GFX_FG_Level_Akrillic_Slot2_Var04.bin"
GFX_FG_Level_Akrillic_Slot2_Var04End:
GFX_FG_Level_Akrillic_Slot2_Var05:
	db "GFX_FG_Level_Akrillic_Slot2_Var05.bin"
GFX_FG_Level_Akrillic_Slot2_Var05End:
GFX_FG_Level_Akrillic_Slot1_Var02:
	db "GFX_FG_Level_Akrillic_Slot1_Var02.bin"
GFX_FG_Level_Akrillic_Slot1_Var02End:
GFX_FG_Level_Akrillic_Slot2_Var06:
	db "GFX_FG_Level_Akrillic_Slot2_Var06.bin"
GFX_FG_Level_Akrillic_Slot2_Var06End:
GFX_FG_Level_Akrillic_Slot2_Var07:
	db "GFX_FG_Level_Akrillic_Slot2_Var07.bin"
GFX_FG_Level_Akrillic_Slot2_Var07End:
GFX_FG_Level_Akrillic_Slot2_Var08:
	db "GFX_FG_Level_Akrillic_Slot2_Var08.bin"
GFX_FG_Level_Akrillic_Slot2_Var08End:
GFX_FG_Level_Akrillic_Slot2_Var09:
	db "GFX_FG_Level_Akrillic_Slot2_Var09.bin"
GFX_FG_Level_Akrillic_Slot2_Var09End:
GFX_UnusedBlankFile:
	db "GFX_UnusedBlankFile.bin"
GFX_UnusedBlankFileEnd:
GFX_FG_Level_Akrillic_Slot1_Var01:
	db "GFX_FG_Level_Akrillic_Slot1_Var01.bin"
GFX_FG_Level_Akrillic_Slot1_Var01End:
GFX_BG_Level_AkrillicGarlenBeach:
	db "GFX_BG_Level_AkrillicGarlenBeach.bin"
GFX_BG_Level_AkrillicGarlenBeachEnd:
GFX_BG_Level_AkrillicSleepyDale:
	db "GFX_BG_Level_AkrillicSleepyDale.bin"
GFX_BG_Level_AkrillicSleepyDaleEnd:
GFX_BG_Level_AkrillicThePenkinos:
	db "GFX_BG_Level_AkrillicThePenkinos.bin"
GFX_BG_Level_AkrillicThePenkinosEnd:
GFX_BG_Level_AkrillicVengeThicket:
	db "GFX_BG_Level_AkrillicVengeThicket.bin"
GFX_BG_Level_AkrillicVengeThicketEnd:
GFX_BG_Level_AkrillicCreepyForest:
	db "GFX_BG_Level_AkrillicCreepyForest.bin"
GFX_BG_Level_AkrillicCreepyForestEnd:
GFX_BG_Level_AkrillicCreepyCrag:
	db "GFX_BG_Level_AkrillicCreepyCrag.bin"
GFX_BG_Level_AkrillicCreepyCragEnd:
GFX_BG_Level_AkrillicGohomeCavern:
	db "GFX_BG_Level_AkrillicGohomeCavern.bin"
GFX_BG_Level_AkrillicGohomeCavernEnd:
GFX_FG_Level_Fleapit:
	db "GFX_FG_Level_Fleapit.bin"
GFX_FG_Level_FleapitEnd:
GFX_Sprite_Level_Global1:
	db "GFX_Sprite_Level_Global1.bin"
GFX_Sprite_Level_Global1End:
GFX_Sprite_Level_Global2:
	db "GFX_Sprite_Level_Global2.bin"
GFX_Sprite_Level_Global2End:
GFX_Sprite_Level_CottonIsland:
	db "GFX_Sprite_Level_CottonIsland.bin"
GFX_Sprite_Level_CottonIslandEnd:
GFX_Sprite_Level_AkrillicGarlenBeach:
	db "GFX_Sprite_Level_AkrillicGarlenBeach.bin"
GFX_Sprite_Level_AkrillicGarlenBeachEnd:
GFX_Sprite_Level_AkrillicSleepyDale:
	db "GFX_Sprite_Level_AkrillicSleepyDale.bin"
GFX_Sprite_Level_AkrillicSleepyDaleEnd:
GFX_Sprite_Level_Fleapit:
	db "GFX_Sprite_Level_Fleapit.bin"
GFX_Sprite_Level_FleapitEnd:
GFX_Sprite_Level_BobbinsBros:
	db "GFX_Sprite_Level_BobbinsBros.bin"
GFX_Sprite_Level_BobbinsBrosEnd:
GFX_Sprite_Level_AkrillicThePenkinos:
	db "GFX_Sprite_Level_AkrillicThePenkinos.bin"
GFX_Sprite_Level_AkrillicThePenkinosEnd:
GFX_Sprite_Level_AkrillicWomackSpider:
	db "GFX_Sprite_Level_AkrillicWomackSpider.bin"
GFX_Sprite_Level_AkrillicWomackSpiderEnd:
GFX_Sprite_Level_AkrillicRockyfella:
	db "GFX_Sprite_Level_AkrillicRockyfella.bin"
GFX_Sprite_Level_AkrillicRockyfellaEnd:
GFX_Sprite_Level_FleaQueen:
	db "GFX_Sprite_Level_FleaQueen.bin"
GFX_Sprite_Level_FleaQueenEnd:

;--------------------------------------------------------------------

if !ROMVer&(!PLOK_J) != $00
GFX_84E203_PLOK_J:
	db "GFX_84E203_PLOK_J.bin"
GFX_84E203_PLOK_JEnd:
elseif !ROMVer&(!PLOK_F|!PLOK_E) != $00
else
GFX_84E001:
	db "GFX_84E001.bin"
GFX_84E001End:
GFX_88DCC5:
	db "GFX_88DCC5.bin"
GFX_88DCC5End:
endif

;--------------------------------------------------------------------

Music_TitleScreen:
	db "TitleScreen.bin"
Music_TitleScreenEnd:
Music_Map:
	db "Map.bin"
Music_MapEnd:
Music_CottonIsland:
	db "CottonIsland.bin"
Music_CottonIslandEnd:
Music_Akrillic:
	db "Akrillic.bin"
Music_AkrillicEnd:
Music_Beach:
	db "Beach.bin"
Music_BeachEnd:
Music_PloksHouse:
	db "PloksHouse.bin"
Music_PloksHouseEnd:
Music_CreepyCrag:
	db "CreepyCrag.bin"
Music_CreepyCragEnd:
Music_Cavern:
	db "Cavern.bin"
Music_CavernEnd:
Music_Boss:
	db "Boss.bin"
Music_BossEnd:
Music_Fleapit:
	db "Fleapit.bin"
Music_FleapitEnd:
Music_BonusLevel:
	db "BonusLevel.bin"
Music_BonusLevelEnd:
Music_DiggingForAmulet:
	db "DiggingForAmulet.bin"
Music_DiggingForAmuletEnd:
Music_LegacyIsland:
	db "LegacyIsland.bin"
Music_LegacyIslandEnd:
Music_BoxerPlok:
	db "BoxerPlok.bin"
Music_BoxerPlokEnd:
Music_ArsonistPlok:
	db "ArsonistPlok.bin"
Music_ArsonistPlokEnd:
Music_CowboyPlok:
	db "CowboyPlok.bin"
Music_CowboyPlokEnd:
Music_HunterPlok:
	db "HunterPlok.bin"
Music_HunterPlokEnd:
Music_RocketeerPlok:
	db "RocketeerPlok.bin"
Music_RocketeerPlokEnd:

;--------------------------------------------------------------------

BRRFile00:
	db "00.brr"
BRRFile00End:
BRRFile01:
	db "01.brr"
BRRFile01End:
BRRFile02:
	db "02.brr"
BRRFile02End:
BRRFile03:
	db "03.brr"
BRRFile03End:
BRRFile04:
	db "04.brr"
BRRFile04End:
BRRFile05:
	db "05.brr"
BRRFile05End:
BRRFile06:
	db "06.brr"
BRRFile06End:
BRRFile07:
	db "07.brr"
BRRFile07End:
BRRFile08:
	db "08.brr"
BRRFile08End:
BRRFile09:
	db "09.brr"
BRRFile09End:
BRRFile0A:
	db "0A.brr"
BRRFile0AEnd:
BRRFile0B:
	db "0B.brr"
BRRFile0BEnd:
BRRFile0C:
	db "0C.brr"
BRRFile0CEnd:
BRRFile0D:
	db "0D.brr"
BRRFile0DEnd:
BRRFile0E:
	db "0E.brr"
BRRFile0EEnd:
BRRFile0F:
	db "0F.brr"
BRRFile0FEnd:
BRRFile10:
	db "10.brr"
BRRFile10End:
BRRFile11:
	db "11.brr"
BRRFile11End:
BRRFile12:
	db "12.brr"
BRRFile12End:
BRRFile13:
	db "13.brr"
BRRFile13End:
BRRFile14:
	db "14.brr"
BRRFile14End:
BRRFile15:
	db "15.brr"
BRRFile15End:
BRRFile16:
	db "16.brr"
BRRFile16End:
BRRFile17:
	db "17.brr"
BRRFile17End:
BRRFile18:
	db "18.brr"
BRRFile18End:
BRRFile19:
	db "19.brr"
BRRFile19End:
BRRFile1A:
	db "1A.brr"
BRRFile1AEnd:
BRRFile1B:
	db "1B.brr"
BRRFile1BEnd:
BRRFile1C:
	db "1C.brr"
BRRFile1CEnd:
BRRFile1D:
	db "1D.brr"
BRRFile1DEnd:
BRRFile1E:
	db "1E.brr"
BRRFile1EEnd:
BRRFile1F:
	db "1F.brr"
BRRFile1FEnd:
BRRFile20:
	db "20.brr"
BRRFile20End:
BRRFile21:
	db "21.brr"
BRRFile21End:
BRRFile22:
	db "22.brr"
BRRFile22End:
BRRFile23:
	db "23.brr"
BRRFile23End:
BRRFile24:
	db "24.brr"
BRRFile24End:
BRRFile25:
	db "25.brr"
BRRFile25End:
BRRFile26:
	db "26.brr"
BRRFile26End:
BRRFile27:
	db "27.brr"
BRRFile27End:
BRRFile28:
	db "28.brr"
BRRFile28End:
BRRFile29:
	db "29.brr"
BRRFile29End:
BRRFile2A:
	db "2A.brr"
BRRFile2AEnd:
BRRFile2B:
	db "2B.brr"
BRRFile2BEnd:
BRRFile2C:
	db "2C.brr"
BRRFile2CEnd:
BRRFile2D:
	db "2D.brr"
BRRFile2DEnd:

;--------------------------------------------------------------------
