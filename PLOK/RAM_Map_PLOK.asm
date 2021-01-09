
if !Define_Global_ROMToAssemble&(!ROM_PLOK_J) != $00
!RAM_PLOK_UnknownRAM000046 = $00004A
!RAM_PLOK_UnknownRAM000048 = $00004C
!RAM_PLOK_UnknownRAM00004A = $00004E
!RAM_PLOK_UnknownRAM00004C = $000050
!RAM_PLOK_UnknownRAM00004E = $000052
!RAM_PLOK_UnknownRAM000050 = $000054
!RAM_PLOK_UnknownRAM000052 = $000056

!RAM_PLOK_Level_LeftmostCameraXPosLo = $00005C
!RAM_PLOK_Level_LeftmostCameraXPosHi = !RAM_PLOK_Level_LeftmostCameraXPosLo+$01
!RAM_PLOK_Level_RightmostCameraXPosLo = $00005E
!RAM_PLOK_Level_RightmostCameraXPosHi = !RAM_PLOK_Level_RightmostCameraXPosLo+$01
!RAM_PLOK_Level_HighestCameraYPosLo = $000060
!RAM_PLOK_Level_HighestCameraYPosHi = !RAM_PLOK_Level_HighestCameraYPosLo+$01
!RAM_PLOK_Level_LowestCameraYPosLo = $000062
!RAM_PLOK_Level_LowestCameraYPosHi = !RAM_PLOK_Level_LowestCameraYPosLo+$01
else
!RAM_PLOK_UnknownRAM000046 = $000046
!RAM_PLOK_UnknownRAM000048 = $000048
!RAM_PLOK_UnknownRAM00004A = $00004A
!RAM_PLOK_UnknownRAM00004C = $00004C
!RAM_PLOK_UnknownRAM00004E = $00004E
!RAM_PLOK_UnknownRAM000050 = $000050
!RAM_PLOK_UnknownRAM000052 = $000052

!RAM_PLOK_Level_LeftmostCameraXPosLo = $000058
!RAM_PLOK_Level_LeftmostCameraXPosHi = !RAM_PLOK_Level_LeftmostCameraXPosLo+$01
!RAM_PLOK_Level_RightmostCameraXPosLo = $00005A
!RAM_PLOK_Level_RightmostCameraXPosHi = !RAM_PLOK_Level_RightmostCameraXPosLo+$01
!RAM_PLOK_Level_HighestCameraYPosLo = $00005C
!RAM_PLOK_Level_HighestCameraYPosHi = !RAM_PLOK_Level_HighestCameraYPosLo+$01
!RAM_PLOK_Level_LowestCameraYPosLo = $00005E
!RAM_PLOK_Level_LowestCameraYPosHi = !RAM_PLOK_Level_LowestCameraYPosLo+$01
endif

; $00006A = Something sprite X position related
; $00006C = Something sprite Y position related

if !Define_Global_ROMToAssemble&(!ROM_PLOK_J) != $00
!RAM_PLOK_UnknownRAM000060 = $000064
!RAM_PLOK_UnknownRAM000062 = $000066
!RAM_PLOK_UnknownRAM000064 = $000068
!RAM_PLOK_UnknownRAM000066 = $00006A
!RAM_PLOK_UnknownRAM000068 = $00006C
!RAM_PLOK_UnknownRAM00006A = $00006E
!RAM_PLOK_UnknownRAM00006C = $000070
!RAM_PLOK_UnknownRAM00006E = $000072
!RAM_PLOK_UnknownRAM000070 = $000074
!RAM_PLOK_UnknownRAM000072 = $000076
!RAM_PLOK_UnknownRAM000074 = $000078
!RAM_PLOK_UnknownRAM00007A = $00007E
!RAM_PLOK_UnknownRAM00007C = $000080
!RAM_PLOK_UnknownRAM00007E = $000082
!RAM_PLOK_UnknownRAM000080 = $000084
!RAM_PLOK_UnknownRAM000082 = $000086
!RAM_PLOK_UnknownRAM000084 = $000088
!RAM_PLOK_UnknownRAM00008A = $00008E
!RAM_PLOK_UnknownRAM00008C = $000090
!RAM_PLOK_UnknownRAM00008E = $000092
!RAM_PLOK_UnknownRAM000090 = $000094
!RAM_PLOK_UnknownRAM000092 = $000096
!RAM_PLOK_UnknownRAM000094 = $000098
!RAM_PLOK_UnknownRAM000096 = $00009A
!RAM_PLOK_UnknownRAM000098 = $00009C
!RAM_PLOK_UnknownRAM00009A = $00009E
!RAM_PLOK_UnknownRAM00009C = $0000A0
!RAM_PLOK_UnknownRAM00009E = $0000A2
!RAM_PLOK_UnknownRAM0000A0 = $0000A4
!RAM_PLOK_UnknownRAM0000A2 = $0000A6
!RAM_PLOK_UnknownRAM0000A4 = $0000A8
!RAM_PLOK_UnknownRAM0000A6 = $0000AA
!RAM_PLOK_UnknownRAM0000A8 = $0000AC
!RAM_PLOK_UnknownRAM0000AA = $0000AE
!RAM_PLOK_UnknownRAM0000AB = $0000AF
!RAM_PLOK_UnknownRAM0000AE = $0000B2
!RAM_PLOK_UnknownRAM0000AF = $0000B3
else
!RAM_PLOK_UnknownRAM000060 = $000060
!RAM_PLOK_UnknownRAM000062 = $000062
!RAM_PLOK_UnknownRAM000064 = $000064
!RAM_PLOK_UnknownRAM000066 = $000066
!RAM_PLOK_UnknownRAM000068 = $000068
!RAM_PLOK_UnknownRAM00006A = $00006A
!RAM_PLOK_UnknownRAM00006C = $00006C
!RAM_PLOK_UnknownRAM00006E = $00006E
!RAM_PLOK_UnknownRAM000070 = $000070
!RAM_PLOK_UnknownRAM000072 = $000072
!RAM_PLOK_UnknownRAM000074 = $000074
!RAM_PLOK_UnknownRAM00007A = $00007A
!RAM_PLOK_UnknownRAM00007C = $00007C
!RAM_PLOK_UnknownRAM00007E = $00007E
!RAM_PLOK_UnknownRAM000080 = $000080
!RAM_PLOK_UnknownRAM000082 = $000082
!RAM_PLOK_UnknownRAM000084 = $000084
!RAM_PLOK_UnknownRAM00008A = $00008A
!RAM_PLOK_UnknownRAM00008C = $00008C
!RAM_PLOK_UnknownRAM00008E = $00008E
!RAM_PLOK_UnknownRAM000090 = $000090
!RAM_PLOK_UnknownRAM000092 = $000092
!RAM_PLOK_UnknownRAM000094 = $000094
!RAM_PLOK_UnknownRAM000096 = $000096
!RAM_PLOK_UnknownRAM000098 = $000098
!RAM_PLOK_UnknownRAM00009A = $00009A
!RAM_PLOK_UnknownRAM00009C = $00009C
!RAM_PLOK_UnknownRAM00009E = $00009E
!RAM_PLOK_UnknownRAM0000A0 = $0000A0
!RAM_PLOK_UnknownRAM0000A2 = $0000A2
!RAM_PLOK_UnknownRAM0000A4 = $0000A4
!RAM_PLOK_UnknownRAM0000A6 = $0000A6
!RAM_PLOK_UnknownRAM0000A8 = $0000A8
!RAM_PLOK_UnknownRAM0000AA = $0000AA
!RAM_PLOK_UnknownRAM0000AB = $0000AB
!RAM_PLOK_UnknownRAM0000AE = $0000AE
!RAM_PLOK_UnknownRAM0000AF = $0000AF
endif

!RAM_PLOK_Global_OAMBuffer = $000200

; $000426 = Beginning of the sprite RAM data structure.

!RAM_PLOK_Level_Player_XPosLo = $000426
!RAM_PLOK_Level_Player_XPosHi = !RAM_PLOK_Level_Player_XPosLo+$01
!RAM_PLOK_Level_Player_YPosLo = $000428
!RAM_PLOK_Level_Player_YPosHi = !RAM_PLOK_Level_Player_YPosLo+$01

!RAM_PLOK_Level_Player_FlyingLimbTable = $000430

; $000458 = Beginning of normal sprite RAM (ie. Not Plok related)

!RAM_PLOK_Level_Player_ScoreMillionsDigit = $000692
!RAM_PLOK_Level_Player_ScoreHundredThousandsDigit = !RAM_PLOK_Level_Player_ScoreMillionsDigit+$01
!RAM_PLOK_Level_Player_ScoreTenThousandsDigit = !RAM_PLOK_Level_Player_ScoreMillionsDigit+$02
!RAM_PLOK_Level_Player_ScoreThousandsDigit = !RAM_PLOK_Level_Player_ScoreMillionsDigit+$03
!RAM_PLOK_Level_Player_ScoreHundredsDigit = !RAM_PLOK_Level_Player_ScoreMillionsDigit+$04
!RAM_PLOK_Level_Player_ScoreTensDigit = !RAM_PLOK_Level_Player_ScoreMillionsDigit+$05

; $000742 = Some sort of jump timer. Setting this to a high value will make Plok jump repeatedly

!RAM_PLOK_Level_Player_CurrentLifeCountLo = $000768
!RAM_PLOK_Level_Player_CurrentLifeCountHi = !RAM_PLOK_Level_Player_CurrentLifeCount+$01

!RAM_PLOK_Level_Player_PlokontinueLetterCount = $00076C

!RAM_PLOK_Level_Player_CurrentCostumeLo = $0007F4
!RAM_PLOK_Level_Player_CurrentCostumeHi = !RAM_PLOK_Level_Player_CurrentCostumeLo+$01
!RAM_PLOK_Level_Player_CostumeTimerLo = $0007F6
!RAM_PLOK_Level_Player_CostumeTimerHi = !RAM_PLOK_Level_Player_CostumeTimerLo+$01

!RAM_PLOK_Level_Player_CurrentDisplayedHPLo = $000800
!RAM_PLOK_Level_Player_CurrentDisplayedHPHi = !RAM_PLOK_Level_Player_CurrentDisplayedHP+$01
!RAM_PLOK_Level_CurrentDisplayedEnemyHPLo = $000802
!RAM_PLOK_Level_CurrentDisplayedEnemyHPHi = !RAM_PLOK_Level_Player_CurrentEnemyHP+$01

!RAM_PLOK_Level_Player_CurrentHPLo = $000806
!RAM_PLOK_Level_Player_CurrentHPHi = !RAM_PLOK_Level_Player_CurrentHPLo+$01

!RAM_PLOK_Level_Player_YSpeedLo = $00080E
!RAM_PLOK_Level_Player_YSpeedHi = !RAM_PLOK_Level_Player_YSpeedLo+$01

!RAM_PLOK_Level_Player_InAirFlagLo = $000812
!RAM_PLOK_Level_Player_InAirFlagHi = !RAM_PLOK_Level_Player_InAirFlagLo+$01

!RAM_PLOK_Level_Player_CurrentVehicleLo = $00081E
!RAM_PLOK_Level_Player_CurrentVehicleHi = !RAM_PLOK_Level_Player_CurrentVehicleLo+$01

!RAM_PLOK_Level_Player_HurtFlashingTimerLo = $000836
!RAM_PLOK_Level_Player_HurtFlashingTimerHi = !RAM_PLOK_Level_Player_HurtFlashingTimerLo+$01

!RAM_PLOK_Level_Player_StarShieldTimerLo = $00083C
!RAM_PLOK_Level_Player_StarShieldTimerHi = !RAM_PLOK_Level_Player_StarShieldTimerLo+$01

!RAM_PLOK_Global_CurrentLevelNum = $00084A

!RAM_PLOK_Level_Player_ShellCounter = $0008F2

!RAM_PLOK_Level_CurrentEnemyHPLo = $000908
!RAM_PLOK_Level_CurrentEnemyHPHi = !RAM_PLOK_Level_CurrentEnemyHPLo+$01

; $00091A = Normal sprite IDs

!RAM_PLOK_Level_Player_AmuletPowerTimerLo = $000950
	!RAM_PLOK_Level_Player_BuzzsawStateTimerLo = !RAM_PLOK_Level_Player_AmuletPowerTimerLo
!RAM_PLOK_Level_Player_AmuletPowerTimerHi = !RAM_PLOK_Level_Player_AmuletPowerTimerLo+$01
	!RAM_PLOK_Level_Player_BuzzsawStateTimerHi = !RAM_PLOK_Level_Player_BuzzsawStateTimerLo+$01

; $000950 =  Timer related to the amulet and buzzsaw state
; $000950 =  Related to the amulet and buzzsaw state

!RAM_PLOK_Level_CurrentMessageIndex = $000DAE

!RAM_PLOK_Level_Player_BuddyHornetCount = $000DF0

!RAM_PLOK_Global_EasyModeFlag = $001802

; $7E3000 = Layer 1 tilemap on overworld. Might also be used in levels.

!RAM_PLOK_Level_SpriteDataBuffer = $7F0000

!RAM_PLOK_Level_StageTransformationDataTable = $7F4000

; $7FD000 = Layer 2 tilemap on overworld. Might also be used in levels.

struct PLOK_Global_OAMBuffer !RAM_PLOK_Global_OAMBuffer
	.XDisp: skip $01
	.YDisp: skip $01
	.Tile: skip $01
	.Prop: skip $01
endstruct align $04

struct PLOK_Global_UpperOAMBuffer !RAM_PLOK_Global_OAMBuffer+$0200
	.Slot: skip $01
endstruct align $01

struct PLOK_Level_Player_FlyingLimb !RAM_PLOK_Level_Player_FlyingLimbTable		; Note: $00 = Arm 1. $01 = Arm 2. $02 = Leg 1. $03 = Leg 2.
	.XPosLo: skip $01
	.XPosHi: skip $01
	.YPosLo: skip $01
	.YPosHi: skip $01
	.AnimationFrameLo: skip $01
	.AnimationFrameHi: skip $01
	.UnknownLo: skip $01
	.UnknownHi: skip $01
	.FlyingOutTimerLo: skip $01
	.FlyingOutTimerHi: skip $01
endstruct

struct PLOK_Level_StageTransformationData !RAM_PLOK_Level_StageTransformationDataTable
	.LevelDataPtr: skip $02
	.FrameIndex: skip $02
	.FrameWidth: skip $02
	.FrameHeight: skip $02
	.Unknown1: skip $02
	.Unknown2: skip $02
	.FrameSpeed: skip $02
	.FrameSlot: skip $02
	.FrameCount: skip $02
	.AnimationFlags: skip $02
endstruct
