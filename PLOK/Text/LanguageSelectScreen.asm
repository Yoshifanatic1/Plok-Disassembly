table "Tables/Fonts/MainFont.txt"

SelectYourLanguage:
	db "SELECT YOUR LANGUAGE",$FF

EnglishLanguage:
	db "ENGLISH",$FF

FrenchLanguage:
	db "FRANCAIS",$FF

DutchLanguage:								; Note: These is no option for dutch in the language select menu in the French version.
									; Even stranger, there is no language select screen in the PAL or German version, yet it has a slightly different string here.
if !Define_Global_ROMToAssemble&(!ROM_PLOK_E|!ROM_PLOK_G) != $00
	db "DEUTSCH",$FF
else
	db "DEUTCH",$FF
endif

cleartable
