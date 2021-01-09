@echo off

set PATH=../../Global

set Input1=
set Input2=
set Input3=
set mode=
set ROMName="Plok.sfc"

:Mode
echo Type which mode you want to use:
echo 0 = Text Script
echo 1 = Level name table
echo 2 = Independant data

set /p Input1=""
if "%Input1%" equ "0" goto :TextScript
if "%Input1%" equ "1" goto :LevelNames
if "%Input1%" equ "2" goto :VRAM

echo %Input1% is not a valid mode.
goto :Mode

:TextScript
echo.
echo "Type the text script address to decode (Ex. DATA_81A852 -> 81A852)"
:Start1
set /p Input1=""

set Input1=%Input1%

echo:org $008000 >> Temp.asm
echo:lorom >> Temp.asm
echo:incsrc "SNES_Macros_PLOK.asm" >> Temp.asm
echo:^!LoopCount = 0 >> Temp.asm
echo:while read2($%Input1%+^!LoopCount) != $FFFF >> Temp.asm
echo:^!Byte1 = read2($%Input1%+^!LoopCount) >> Temp.asm
echo:^!Byte2 = read2($%Input1%+^!LoopCount+$02) >> Temp.asm
echo:^!Byte3 = read2($%Input1%+^!LoopCount+$04) >> Temp.asm
echo:^!Byte4 = read2($%Input1%+^!LoopCount+$06) >> Temp.asm
echo:^!X #= (^!Byte2^&$001F) >> Temp.asm
echo:^!Y #= ((^!Byte2^&$03E0)^>^>5) >> Temp.asm
echo:if ^!Byte2^&$FC00 == $50 >> Temp.asm
echo:^!Layer = 1 >> Temp.asm
echo:elseif ^!Byte2^&$FC00 == $58 >> Temp.asm
echo:^!Layer = 1 >> Temp.asm
echo:else >> Temp.asm
echo:^!Layer = 3 >> Temp.asm
echo:endif >> Temp.asm
echo:if ^!Byte1^&$8000 == $0000 >> Temp.asm
echo:^!Size = "Large" >> Temp.asm
echo:else >> Temp.asm
echo:^!Size = "Small" >> Temp.asm
echo:endif >> Temp.asm
echo:if ^!Byte1^&$4000 == $0000 >> Temp.asm
echo:^!Speed = "Fast" >> Temp.asm
echo:else >> Temp.asm
echo:^!Speed = "Slow" >> Temp.asm
echo:endif >> Temp.asm
echo:^!Pal #= ((^!Byte3^&$001C)/4) >> Temp.asm
echo:^!Delay #= (^!Byte1^&$3FFF) >> Temp.asm
echo:^!Ptr = ^!Byte4 >> Temp.asm
echo:^%%PLOK_PrintWriteTextMacro(^!X, ^!Y, ^!Layer, ^!Pal, ^!Size, ^!Speed, ^!Delay, ^!Ptr)>> Temp.asm
echo:^!LoopCount #= ^!LoopCount+$08 >> Temp.asm
echo:endif >> Temp.asm
echo:print "	dw $FFFF" >> Temp.asm

asar "Temp.asm" %ROMName%

if exist Temp.asm del Temp.asm

echo.
echo Enter a new text script address.
goto :Start1

:LevelNames
echo:org $008000 >> Temp.asm
echo:lorom >> Temp.asm
echo:incsrc "SNES_Macros_PLOK.asm" >> Temp.asm
echo:^!LoopCount = 0 >> Temp.asm
echo:while $81B40C+^!LoopCount ^< $81B5C4 >> Temp.asm
echo:^!Byte1 = read2($81B40C+^!LoopCount) >> Temp.asm
echo:^!Byte2 = read2($81B40C+^!LoopCount+$02) >> Temp.asm
echo:^!Byte3 = read2($81B40C+^!LoopCount+$04) >> Temp.asm
echo:^!Byte4 = read2($81B40C+^!LoopCount+$06) >> Temp.asm
echo:^!Ptr1 = ^!Byte1 >> Temp.asm
echo:^!X1 #= (^!Byte2^&$001F) >> Temp.asm
echo:^!Y1 #= ((^!Byte2^&$03E0)^>^>5) >> Temp.asm
echo:if ^!Byte2^&$FC00 == $50 >> Temp.asm
echo:^!Layer1 = 1 >> Temp.asm
echo:elseif ^!Byte2^&$FC00 == $58 >> Temp.asm
echo:^!Layer1 = 1 >> Temp.asm
echo:else >> Temp.asm
echo:^!Layer1 = 3 >> Temp.asm
echo:endif >> Temp.asm
echo:^!Ptr2 = ^!Byte3 >> Temp.asm
echo:^!X2 #= (^!Byte4^&$001F) >> Temp.asm
echo:^!Y2 #= ((^!Byte4^&$03E0)^>^>5) >> Temp.asm
echo:if ^!Byte4^&$FC00 == $50 >> Temp.asm
echo:^!Layer2 = 1 >> Temp.asm
echo:elseif ^!Byte4^&$FC00 == $58 >> Temp.asm
echo:^!Layer2 = 1 >> Temp.asm
echo:else >> Temp.asm
echo:^!Layer2 = 3 >> Temp.asm
echo:endif >> Temp.asm
echo:^%%PLOK_PrintWriteLevelName(^!X1, ^!Y1, ^!Layer1, ^!Ptr1)>> Temp.asm
echo:^%%PLOK_PrintWriteLevelName(^!X2, ^!Y2, ^!Layer2, ^!Ptr2)>> Temp.asm
echo:^!LoopCount #= ^!LoopCount+$08 >> Temp.asm
echo:endif >> Temp.asm

asar "Temp.asm" %ROMName%

if exist Temp.asm del Temp.asm

pause
exit

:VRAM
:Start2
echo.
echo "Enter what was loaded into X before a JSR.w CODE_80A488"
set /p Input1=""
::echo "Enter what was loaded into Y before a JSR.w CODE_80A488"
::set /p Input2=""
echo "Enter what was loaded into A before a JSR.w CODE_80A488"
set /p Input3=""

set Input1=%Input1%
::set Input2=%Input2%
set Input3=%Input3%

echo:org $008000 >> Temp.asm
echo:lorom >> Temp.asm
echo:^!X #= ($%Input1%^&$001F) >> Temp.asm
echo:^!Y #= (($%Input1%^&$03E0)^>^>5) >> Temp.asm
echo:if $%Input1%^&$FC00 == $50 >> Temp.asm
echo:^!Layer = 1 >> Temp.asm
echo:elseif $%Input1%^&$FC00 == $58 >> Temp.asm
echo:^!Layer = 1 >> Temp.asm
echo:else >> Temp.asm
echo:^!Layer = 3 >> Temp.asm
echo:endif >> Temp.asm
::echo:^!Ptr = $%Input2% >> Temp.asm
echo:^!Pal #= (($%Input3%^&$001C)/4) >> Temp.asm
echo:print "X Position = $",hex(^!X)>> Temp.asm
echo:print "Y Position = $",hex(^!Y)>> Temp.asm
echo:print "Layer = !Layer" >> Temp.asm
echo:print "Palette = !Pal" >> Temp.asm
::echo:print "Text pointer = !Ptr" >> Temp.asm

asar "Temp.asm" %ROMName%

if exist Temp.asm del Temp.asm

echo "Enter another VRAM address to decode"
goto :Start2
