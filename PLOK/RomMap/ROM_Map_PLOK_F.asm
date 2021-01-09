
macro PLOK_GameSpecificAssemblySettings()
	!ROM_PLOK_U = $0001							;\ These defines assign each ROM version with a different bit so version difference checks will work. Do not touch them!
	!ROM_PLOK_E = $0002							;|
	!ROM_PLOK_J = $0004							;|
	!ROM_PLOK_F = $0008							;|
	!ROM_PLOK_G = $0010							;/

!Define_PLOK_Global_EnableCheatCodes = !FALSE
!Define_PLOK_Global_DisableCopyDetection = !FALSE

	%SetROMToAssembleForHack(PLOK_F, !ROMID)
endmacro

macro PLOK_LoadGameSpecificMainSNESFiles()
	incsrc ../Misc_Defines_PLOK.asm
	incsrc ../RAM_Map_PLOK.asm
	incsrc ../Routine_Macros_PLOK.asm
	incsrc ../SNES_Macros_PLOK.asm
endmacro

macro PLOK_LoadGameSpecificMainSPC700Files()
	incsrc ../SPC700/ARAM_Map_PLOK.asm
	incsrc ../Misc_Defines_PLOK.asm
	incsrc ../SPC700/SPC700_Macros_PLOK.asm
endmacro

macro PLOK_LoadGameSpecificMainExtraHardwareFiles()
endmacro

macro PLOK_LoadGameSpecificMSU1Files()
endmacro

macro PLOK_GlobalAssemblySettings()
	!Define_Global_ApplyAsarPatches = !FALSE
	!Define_Global_InsertRATSTags = !TRUE
	!Define_Global_IgnoreCodeAlignments = !FALSE
	!Define_Global_IgnoreOriginalFreespace = !FALSE
	!Define_Global_CompatibleControllers = !Controller_StandardJoypad
	!Define_Global_DisableROMMirroring = !FALSE
	!Define_Global_CartridgeHeaderVersion = $00
	!Define_Global_FixIncorrectChecksumHack = !FALSE
	!Define_Global_ROMFrameworkVer = 1
	!Define_Global_ROMFrameworkSubVer = 0
	!Define_Global_ROMFrameworkSubSubVer = 0
	!Define_Global_AsarChecksum = $0000
	!Define_Global_LicenseeName = "Nintendo"
	!Define_Global_DeveloperName = "Software Creations"
	!Define_Global_ReleaseDate = "November 27, 1993"
	!Define_Global_BaseROMMD5Hash = "7bed3a10e8e42d47b542637313eb96fe"

	!Define_Global_MakerCode = "01"
	!Define_Global_GameCode = "Axxx"
	!Define_Global_ReservedSpace = $00,$00,$00,$00,$00,$00
	!Define_Global_ExpansionFlashSize = !ExpansionMemorySize_0KB
	!Define_Global_ExpansionRAMSize = !ExpansionMemorySize_0KB
	!Define_Global_IsSpecialVersion = $00
	!Define_Global_InternalName = "PLOK                 "
	!Define_Global_ROMLayout = !ROMLayout_LoROM_FastROM
	!Define_Global_ROMType = !ROMType_ROM
	!Define_Global_CustomChip = !Chip_None
	!Define_Global_ROMSize = !ROMSize_1MB
	!Define_Global_SRAMSize = !SRAMSize_0KB
	!Define_Global_Region = !Region_French
	!Define_Global_LicenseeID = $01
	!Define_Global_VersionNumber = $00
	!Define_Global_ChecksumCompliment = !Define_Global_Checksum^$FFFF
	!Define_Global_Checksum = $893C
	!UnusedNativeModeVector1 = $6B28
	!UnusedNativeModeVector2 = $FFFF
	!NativeModeCOPVector = $830A
	!NativeModeBRKVector = PLOK_VBlankRoutine_EndofVBlank
	!NativeModeAbortVector = PLOK_VBlankRoutine_EndofVBlank
	!NativeModeNMIVector = PLOK_VBlankRoutine_Main
	!NativeModeResetVector = PLOK_VBlankRoutine_EndofVBlank
	!NativeModeIRQVector = PLOK_VBlankRoutine_EndofVBlank
	!UnusedEmulationModeVector1 = PLOK_VBlankRoutine_EndofVBlank
	!UnusedEmulationModeVector2 = PLOK_VBlankRoutine_EndofVBlank
	!EmulationModeCOPVector = PLOK_VBlankRoutine_EndofVBlank
	!EmulationModeBRKVector = PLOK_VBlankRoutine_EndofVBlank
	!EmulationModeAbortVector = PLOK_VBlankRoutine_EndofVBlank
	!EmulationModeNMIVector = PLOK_VBlankRoutine_EndofVBlank
	!EmulationModeResetVector = PLOK_InitAndMainLoop_Main
	!EmulationModeIRQVector = PLOK_VBlankRoutine_EndofVBlank
	%LoadExtraRAMFile("SRAM_Map_PLOK.asm")
endmacro

macro PLOK_LoadROMMap()
warn "The French version of Plok is not 100% complete. Glitches may occur if this is loaded in an emulator."
	%PLOKBank80Macros(!BANK_00, !BANK_00)
	%PLOKBank81Macros(!BANK_01, !BANK_01)
	%PLOKBank82Macros(!BANK_02, !BANK_02)
	%PLOKBank83Macros(!BANK_03, !BANK_03)
	%PLOKBank84Macros(!BANK_04, !BANK_04)
	%PLOKBank85Macros(!BANK_05, !BANK_05)
	%PLOKBank86Macros(!BANK_06, !BANK_06)
	%PLOKBank87Macros(!BANK_07, !BANK_07)
	%PLOKBank88Macros(!BANK_08, !BANK_08)

%BANK_START(!BANK_09)
namespace PLOK_UnsortedData
check bankcross off

Main:
	%PLOK_InsertUnsortedData(incbin, SPCEngine)
	%PLOK_InsertUnsortedData(incbin, UnknownData)
	%PLOK_InsertUnsortedData(incbin, SPCSampleBank)
	%PLOK_InsertUnsortedData(incbin, Music_TitleScreen)
	%PLOK_InsertUnsortedData(incbin, Music_Map)
	%PLOK_InsertUnsortedData(incbin, Music_CottonIsland)
	%PLOK_InsertUnsortedData(incbin, Music_Akrillic)
	%PLOK_InsertUnsortedData(incbin, Music_Beach)
	%PLOK_InsertUnsortedData(incbin, Music_PloksHouse)
	%PLOK_InsertUnsortedData(incbin, Music_CreepyCrag)
	%PLOK_InsertUnsortedData(incbin, Music_Cavern)
	%PLOK_InsertUnsortedData(incbin, Music_Boss)
	%PLOK_InsertUnsortedData(incbin, Music_Fleapit)
	%PLOK_InsertUnsortedData(incbin, Music_BonusLevel)
	%PLOK_InsertUnsortedData(incbin, Music_DiggingForAmulet)
	%PLOK_InsertUnsortedData(incbin, Music_LegacyIsland)
	%PLOK_InsertUnsortedData(incbin, Music_BoxerPlok)
	%PLOK_InsertUnsortedData(incbin, Music_ArsonistPlok)
	%PLOK_InsertUnsortedData(incbin, Music_CowboyPlok)
	%PLOK_InsertUnsortedData(incbin, Music_HunterPlok)
	%PLOK_InsertUnsortedData(incbin, Music_RocketeerPlok)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform00FrameData)
	%FREE_BYTES(NULLROM, 1151, $00)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform01FrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform02FrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform03FrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform05FrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform06FrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform0CFrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform0DFrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform0EFrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform07FrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform08FrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform09FrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform0AFrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform0BFrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform16FrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform10FrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform11FrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform12FrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform13FrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform14FrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform15FrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform17FrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform18FrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform1AFrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform1BFrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform1CFrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform1DFrameData)
	%FREE_BYTES(NULLROM, 2664, $00)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform19FrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform04FrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform1EFrameData)
	%PLOK_InsertUnsortedData(incbin, Tilemap_StageTransform0FFrameData)
	%PLOK_InsertUnsortedData(incbin, GFX_TitleScreenSpotlight)
	%PLOK_InsertUnsortedData(incbin, Palette_TitleScreenLogo)
	%PLOK_InsertUnsortedData(incbin, GFX_Layer3_TitleScreenLogo)
	%PLOK_InsertUnsortedData(incbin, GFX_Layer3_DemoCreditsText)
	%PLOK_InsertUnsortedData(incbin, Palette_DemoCreditsText)
	%PLOK_InsertUnsortedData(incbin, GFX_Layer3_RegularHUD)
	%PLOK_InsertUnsortedData(incbin, GFX_Layer3_SmallSillyLetters)
	%PLOK_InsertUnsortedData(incbin, GFX_Layer3_GrandpappyHUD)
	%PLOK_InsertUnsortedData(incbin, GFX_Layer3_SmallLetters)
	%PLOK_InsertUnsortedData(incbin, Palette_PresentLayer3)
	%PLOK_InsertUnsortedData(incbin, Palette_PastLayer3)
	%PLOK_InsertUnsortedData(incbin, GFX_TitleScreenPlok1)
	%PLOK_InsertUnsortedData(incbin, GFX_TitleScreenPlok2)
	%PLOK_InsertUnsortedData(incbin, GFX_TitleScreenPlok3)
	%PLOK_InsertUnsortedData(incbin, GFX_TitleScreenPlok4)
	%PLOK_InsertUnsortedData(incbin, GFX_FinalScoreScreenPlok)
	%PLOK_InsertUnsortedData(incbin, Palette_FinalScoreScreen)
	%PLOK_InsertUnsortedData(incbin, Tilemap_TitleScreenSpotlight)
	%PLOK_InsertUnsortedData(incbin, Tilemap_PushSelectForOptionsText)
	%PLOK_InsertUnsortedData(incbin, Tilemap_TitleScreenLogo)
	%PLOK_InsertUnsortedData(incbin, Tilemap_DemoCreditsText)
	%PLOK_InsertUnsortedData(incbin, Tilemap_TitleScreenPlok)
	%PLOK_InsertUnsortedData(incbin, GFX_EndCreditsScreen)
	%PLOK_InsertUnsortedData(incbin, Palette_EndingCreditsScreen)
	%PLOK_InsertUnsortedData(incbin, Tilemap_EndingCreditsScreenBG)
	%PLOK_InsertUnsortedData(incbin, Tilemap_EndingCreditsScreenPlok)
	%PLOK_InsertUnsortedData(incbin, Tilemap_FinalScoreScreenPlok)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Overworld)
	%PLOK_InsertUnsortedData(incbin, Palette_FG_Overworld)
	%PLOK_InsertUnsortedData(incbin, GFX_Sprite_Overworld)
	%PLOK_InsertUnsortedData(incbin, Palette_Sprite_PresentOverworld)
	%PLOK_InsertUnsortedData(incbin, Palette_Sprite_PastOverworld)
	%PLOK_InsertUnsortedData(incbin, Tilemap_PresentOverworldLayer1)
	%PLOK_InsertUnsortedData(incbin, Tilemap_PresentOverworldLayer2)
	%PLOK_InsertUnsortedData(incbin, Tilemap_PastOverworldLayer1)
	%PLOK_InsertUnsortedData(incbin, Tilemap_PastOverworldLayer2)
	%PLOK_InsertUnsortedData(incbin, Tilemap_AltPresentOverworldLayer1)
	%PLOK_InsertUnsortedData(incbin, Tilemap_AltPastOverworldLayer1)
	%PLOK_InsertUnsortedData(incbin, LevelData_IntroPloksHouse)
	%PLOK_InsertUnsortedData(incbin, LevelData_CottonIslandBeach)
	%PLOK_InsertUnsortedData(incbin, LevelData_CottonIslandBridge)
	%PLOK_InsertUnsortedData(incbin, LevelData_CottonIslandColumns)
	%PLOK_InsertUnsortedData(incbin, LevelData_CottonIslandLogFalls)
	%PLOK_InsertUnsortedData(incbin, LevelData_CottonIslandRicketyBridge)
	%PLOK_InsertUnsortedData(incbin, LevelData_CottonIslandCrazyCradles)
	%PLOK_InsertUnsortedData(incbin, LevelData_CottonIslandBlindLeap)
	%PLOK_InsertUnsortedData(incbin, LevelData_CottonIslandBobbinsBros)
	%PLOK_InsertUnsortedData(incbin, LevelBG_CottonIslandBeach)
	%PLOK_InsertUnsortedData(incbin, LevelBG_CottonIslandBridge)
	%PLOK_InsertUnsortedData(incbin, LevelBG_CottonIslandColumns)
	%PLOK_InsertUnsortedData(incbin, LevelBG_CottonIslandLogFalls)
	%PLOK_InsertUnsortedData(incbin, LevelBG_CottonIslandRicketyBridge)
	%PLOK_InsertUnsortedData(incbin, LevelBG_CottonIslandCrazyCradles)
	%PLOK_InsertUnsortedData(incbin, LevelBG_CottonIslandBlindLeap)
	%PLOK_InsertUnsortedData(incbin, LevelBG_CottonIslandBobbinsBros)
	%PLOK_InsertUnsortedData(incbin, LevelData_LegacyIslandMaceCove)
	%PLOK_InsertUnsortedData(incbin, LevelData_LegacyIslandFoolsGap)
	%PLOK_InsertUnsortedData(incbin, LevelData_LegacyIslandZigZag)
	%PLOK_InsertUnsortedData(incbin, LevelData_LegacyIslandSpongeRocks)
	%PLOK_InsertUnsortedData(incbin, LevelData_LegacyIslandSwiftyPeaks)
	%PLOK_InsertUnsortedData(incbin, LevelData_LegacyIslandLogTrail)
	%PLOK_InsertUnsortedData(incbin, LevelData_LegacyIslandCrouchHill)
	%PLOK_InsertUnsortedData(incbin, LevelData_LegacyIslandBobbinsBros)
	%PLOK_InsertUnsortedData(incbin, LevelData_AkrillicGarlenBeach)
	%PLOK_InsertUnsortedData(incbin, LevelData_AkrillicSleepyDale)
	%PLOK_InsertUnsortedData(incbin, LevelData_AkrillicPloksHouse)
	%PLOK_InsertUnsortedData(incbin, LevelData_AkrillicPlokTown)
	%PLOK_InsertUnsortedData(incbin, LevelData_AkrillicThePenkinos)
	%PLOK_InsertUnsortedData(incbin, LevelData_AkrillicVengeThicket)
	%PLOK_InsertUnsortedData(incbin, LevelData_AkrillicDreamyCove)
	%PLOK_InsertUnsortedData(incbin, LevelData_AkrillicCreepyForest)
	%PLOK_InsertUnsortedData(incbin, LevelData_AkrillicWomackSpider)
	%PLOK_InsertUnsortedData(incbin, LevelData_AkrillicCreepyCrag)
	%PLOK_InsertUnsortedData(incbin, LevelData_AkrillicGohomeCavern)
	%PLOK_InsertUnsortedData(incbin, LevelData_AkrillicCrashingRocks)
	%PLOK_InsertUnsortedData(incbin, LevelData_AkrillicRockyfella)
	%PLOK_InsertUnsortedData(incbin, LevelData_AkrillicBrendammiBog)
	%PLOK_InsertUnsortedData(incbin, LevelData_AkrillicBadreamFens)
	%PLOK_InsertUnsortedData(incbin, LevelData_AkrillicBreezyBeach)
	%PLOK_InsertUnsortedData(incbin, LevelBG_AkrillicGarlenBeach)
	%PLOK_InsertUnsortedData(incbin, LevelBG_AkrillicSleepyDale)
	%PLOK_InsertUnsortedData(incbin, LevelBG_AkrillicPloksHouse)
	%PLOK_InsertUnsortedData(incbin, LevelBG_AkrillicPlokTown)
	%PLOK_InsertUnsortedData(incbin, LevelBG_AkrillicThePenkinos)
	%PLOK_InsertUnsortedData(incbin, LevelBG_AkrillicVengeThicket)
	%PLOK_InsertUnsortedData(incbin, LevelBG_AkrillicDreamyCove)
	%PLOK_InsertUnsortedData(incbin, LevelBG_AkrillicCreepyForest)
	%PLOK_InsertUnsortedData(incbin, LevelBG_AkrillicWomackSpider)
	%PLOK_InsertUnsortedData(incbin, LevelBG_AkrillicCreepyCrag)
	%PLOK_InsertUnsortedData(incbin, LevelBG_AkrillicGohomeCavern)
	%PLOK_InsertUnsortedData(incbin, LevelBG_AkrillicCrashingRocks)
	%PLOK_InsertUnsortedData(incbin, LevelBG_AkrillicRockyfella)
	%PLOK_InsertUnsortedData(incbin, LevelBG_AkrillicBrendammiBog)
	%PLOK_InsertUnsortedData(incbin, LevelBG_AkrillicBadreamFens)
	%PLOK_InsertUnsortedData(incbin, LevelBG_AkrillicBreezyBeach)
	%PLOK_InsertUnsortedData(incbin, LevelData_FleapitCyclingClever)
	%PLOK_InsertUnsortedData(incbin, LevelData_FleapitRoadHogging)
	%PLOK_InsertUnsortedData(incbin, LevelData_FleapitHighFlying)
	%PLOK_InsertUnsortedData(incbin, LevelData_FleapitEasyRiding)
	%PLOK_InsertUnsortedData(incbin, LevelData_FleapitInASpin)
	%PLOK_InsertUnsortedData(incbin, LevelData_FleapitRealRumblings)
	%PLOK_InsertUnsortedData(incbin, LevelData_FleapitSilentRunning)
	%PLOK_InsertUnsortedData(incbin, LevelData_FleapitTheFleaQueen)
	%PLOK_InsertUnsortedData(incbin, LevelData_TestDriveSecretWarp)
	%PLOK_InsertUnsortedData(incbin, LevelBG_FleapitCyclingClever)
	%PLOK_InsertUnsortedData(incbin, LevelBG_FleapitTheFleaQueen)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_CottonIsland)
	%PLOK_InsertUnsortedData(incbin, Palette_FG_CottonIsland)
	%PLOK_InsertUnsortedData(incbin, GFX_BG_Level_CottonIslandMain)
	%PLOK_InsertUnsortedData(incbin, GFX_BG_Level_CottonIslandBeach)
	%PLOK_InsertUnsortedData(incbin, GFX_BG_Level_CottonIslandBridge)
	%PLOK_InsertUnsortedData(incbin, GFX_BG_Level_CottonIslandColumns)
	%PLOK_InsertUnsortedData(incbin, GFX_BG_Level_CottonIslandLogFalls)
	%PLOK_InsertUnsortedData(incbin, GFX_BG_Level_CottonIslandRicketyBridge)
	%PLOK_InsertUnsortedData(incbin, GFX_BG_Level_CottonIslandCrazyCradles)
	%PLOK_InsertUnsortedData(incbin, GFX_BG_Level_CottonIslandBlindLeap)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_CottonIslandBeach)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_CottonIslandBridge)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_CottonIslandColumns)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_CottonIslandLogFalls)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_CottonIslandRicketyBridge)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_CottonIslandCrazyCradles)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_CottonIslandBlindLeap)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_CottonIslandBobbinsBros)
	%PLOK_InsertUnsortedData(incbin, Palette_FG_LegacyIsland)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_LegacyIslandMaceCove)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_LegacyIslandFoolsGap)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_LegacyIslandZigZag)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_LegacyIslandSpongeRocks)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_LegacyIslandSwiftyPeaks)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_LegacyIslandLogTrail)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_LegacyIslandCrouchHill)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_LegacyIslandBobbinsBros)
	%PLOK_InsertUnsortedData(incbin, Palette_FG_UnusedLegacyIsland)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Akrillic_Slot4_Var05)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Akrillic_Slot4_Var01)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Akrillic_Slot5_Var04)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Akrillic_Slot4_Var03)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Akrillic_Slot5_Var01)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Akrillic_Slot4_Var02)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Akrillic_Slot5_Var02)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Akrillic_Slot5_Var05)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_GrandpappyStatue)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Akrillic_Slot4_Var04)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Akrillic_Slot4_Var06)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Akrillic_Slot4_Var08)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Akrillic_Slot4_Var07)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Akrillic_Slot5_Var03)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Objects)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Akrillic_Slot2_Var01)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Akrillic_Slot2_Var02)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Akrillic_Slot2_Var03)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Akrillic_Slot2_Var04)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Akrillic_Slot2_Var05)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Akrillic_Slot1_Var02)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Akrillic_Slot2_Var06)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Akrillic_Slot2_Var07)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Akrillic_Slot2_Var08)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Akrillic_Slot2_Var09)
	%PLOK_InsertUnsortedData(incbin, GFX_UnusedBlankFile)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Akrillic_Slot1_Var01)
	%PLOK_InsertUnsortedData(incbin, Palette_FG_AkrillicGarlenBeach)
	%PLOK_InsertUnsortedData(incbin, Palette_FG_AkrillicSleepyDale)
	%PLOK_InsertUnsortedData(incbin, Palette_FG_AkrillicPloksHouse)
	%PLOK_InsertUnsortedData(incbin, Palette_FG_AkrillicPlokTown)
	%PLOK_InsertUnsortedData(incbin, Palette_FG_AkrillicThePenkinos)
	%PLOK_InsertUnsortedData(incbin, Palette_FG_AkrillicVengeThicket)
	%PLOK_InsertUnsortedData(incbin, Palette_FG_AkrillicDreamyCove)
	%PLOK_InsertUnsortedData(incbin, Palette_FG_AkrillicCreepyForest)
	%PLOK_InsertUnsortedData(incbin, Palette_FG_AkrillicWomackSpider)
	%PLOK_InsertUnsortedData(incbin, Palette_FG_AkrillicCreepyCrag)
	%PLOK_InsertUnsortedData(incbin, Palette_FG_AkrillicGohomeCavern)
	%PLOK_InsertUnsortedData(incbin, Palette_FG_AkrillicCrashingRocks)
	%PLOK_InsertUnsortedData(incbin, Palette_FG_AkrillicRockyfella)
	%PLOK_InsertUnsortedData(incbin, Palette_FG_AkrillicBrendammiBog)
	%PLOK_InsertUnsortedData(incbin, Palette_FG_AkrillicBadreamFens)
	%PLOK_InsertUnsortedData(incbin, Palette_FG_UnusedPalette)
	%PLOK_InsertUnsortedData(incbin, GFX_BG_Level_AkrillicGarlenBeach)
	%PLOK_InsertUnsortedData(incbin, GFX_BG_Level_AkrillicSleepyDale)
	%PLOK_InsertUnsortedData(incbin, GFX_BG_Level_AkrillicThePenkinos)
	%PLOK_InsertUnsortedData(incbin, GFX_BG_Level_AkrillicVengeThicket)
	%PLOK_InsertUnsortedData(incbin, GFX_BG_Level_AkrillicCreepyForest)
	%PLOK_InsertUnsortedData(incbin, GFX_BG_Level_AkrillicCreepyCrag)
	%PLOK_InsertUnsortedData(incbin, GFX_BG_Level_AkrillicGohomeCavern)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_AkrillicGarlenBeach)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_AkrillicSleepyDale)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_AkrillicPloksHouse)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_AkrillicPlokTown)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_AkrillicThePenkinos)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_AkrillicVengeThicket)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_AkrillicDreamyCove)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_AkrillicCreepyForest)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_AkrillicWomackSpider)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_AkrillicCreepyCrag)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_AkrillicGohomeCavern)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_AkrillicCrashingRocks)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_AkrillicRockyfella)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_AkrillicBrendammiBog)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_AkrillicBadreamFens)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_AkrillicBreezyBeach)
	%PLOK_InsertUnsortedData(incbin, GFX_FG_Level_Fleapit)
	%PLOK_InsertUnsortedData(incbin, Palette_FG_Fleapit)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_FleapitCyclingClever)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_FleapitRoadHogging)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_FleapitHighFlying)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_FleapitEasyRiding)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_FleapitInASpin)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_FleapitRealRumblings)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_FleapitSilentRunning)
	%PLOK_InsertUnsortedData(incbin, Palette_BG_FleapitTheFleaQueen)
	%PLOK_InsertUnsortedData(incbin, GFX_Sprite_Level_Global1)
	%PLOK_InsertUnsortedData(incbin, GFX_Sprite_Level_Global2)
	%PLOK_InsertUnsortedData(incbin, Palette_Sprite_GlobalPresentLevel)
	%PLOK_InsertUnsortedData(incbin, GFX_Sprite_Level_CottonIsland)
	%PLOK_InsertUnsortedData(incbin, Palette_Sprite_CottonIsland)
	%PLOK_InsertUnsortedData(incbin, Palette_Sprite_GlobalPastLevel)
	%PLOK_InsertUnsortedData(incbin, GFX_Sprite_Level_AkrillicGarlenBeach)
	%PLOK_InsertUnsortedData(incbin, GFX_Sprite_Level_AkrillicSleepyDale)
	%PLOK_InsertUnsortedData(incbin, Palette_Sprite_Akrillic)
	%PLOK_InsertUnsortedData(incbin, GFX_Sprite_Level_Fleapit)
	%PLOK_InsertUnsortedData(incbin, Palette_Sprite_Fleapit)
	%PLOK_InsertUnsortedData(incbin, GFX_Sprite_Level_BobbinsBros)
	%PLOK_InsertUnsortedData(incbin, Palette_Sprite_PresentBobbinsBros)
	%PLOK_InsertUnsortedData(incbin, Palette_Sprite_PastBobbinsBros)
	%PLOK_InsertUnsortedData(incbin, GFX_Sprite_Level_AkrillicThePenkinos)
	%PLOK_InsertUnsortedData(incbin, Palette_Sprite_ThePenkinos)
	%PLOK_InsertUnsortedData(incbin, GFX_Sprite_Level_AkrillicWomackSpider)
	%PLOK_InsertUnsortedData(incbin, Palette_Sprite_WomackSpider)
	%PLOK_InsertUnsortedData(incbin, GFX_Sprite_Level_AkrillicRockyfella)
	%PLOK_InsertUnsortedData(incbin, Palette_Sprite_Rockyfella)
	%PLOK_InsertUnsortedData(incbin, GFX_Sprite_Level_FleaQueen)
	%PLOK_InsertUnsortedData(incbin, Palette_Sprite_TheFleaQueen)
	;%InsertGarbageData(NULLROM, incbin, UNK_9EFC8F_PLOK_E.bin)
	%DATATABLE_RT00_PLOK_EnglishTextStrings(NULLROM)
	%DATATABLE_RT01_PLOK_EnglishTextStrings(NULLROM)
check bankcross on
%BANK_END(!BANK_1F)
endmacro
