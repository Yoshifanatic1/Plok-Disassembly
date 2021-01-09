@echo off

set hackname=Plok.sfc

setlocal EnableDelayedExpansion
set Loopcounter=0
set LvlNumber=0

set address=0

:Loop1
echo:lorom> Test2.asm
echo:org $008000>> Test2.asm
echo:^^!LvlNum = %LvlNumber% >> Test2.asm
echo:^^!hackname = %hackname% >> Test2.asm
echo:^^!ASCIIoffset = $30 >> Test2.asm
echo:check bankcross off >> Test2.asm
echo:^^!offset #= pctosnes((snestopc($898000)+readfile4("^!hackname", snestopc($01F91D)+((^^!LvlNum^&$1FF)*4)))) >> Test2.asm
echo:if ((^^!offset^&$F00000)/$100000) ^> $09 >> Test2.asm
echo:^^!ASCIIoffset = $37 >> Test2.asm
echo:else >> Test2.asm
echo:^^!ASCIIoffset = $30 >> Test2.asm
echo:endif >> Test2.asm
echo:db ((^^!offset^&$F00000)/$100000)+^^!ASCIIoffset >> Test2.asm
echo:if ((^^!offset^&$0F0000)/$10000) ^> $09 >> Test2.asm
echo:^^!ASCIIoffset = $37 >> Test2.asm
echo:else >> Test2.asm
echo:^^!ASCIIoffset = $30 >> Test2.asm
echo:endif >> Test2.asm
echo:db ((^^!offset^&$0F0000)/$10000)+^^!ASCIIoffset >> Test2.asm
echo:if ((^^!offset^&$00F000)/$1000) ^> $09 >> Test2.asm
echo:^^!ASCIIoffset = $37 >> Test2.asm
echo:else >> Test2.asm
echo:^^!ASCIIoffset = $30 >> Test2.asm
echo:endif >> Test2.asm
echo:db ((^^!offset^&$00F000)/$1000)+^^!ASCIIoffset >> Test2.asm
echo:if ((^^!offset^&$000F00)/$100) ^> $09 >> Test2.asm
echo:^^!ASCIIoffset = $37 >> Test2.asm
echo:else >> Test2.asm
echo:^^!ASCIIoffset = $30 >> Test2.asm
echo:endif >> Test2.asm
echo:db ((^^!offset^&$000F00)/$100)+^^!ASCIIoffset >> Test2.asm
echo:if ((^^!offset^&$0000F0)/$10) ^> $09 >> Test2.asm
echo:^^!ASCIIoffset = $37 >> Test2.asm
echo:else >> Test2.asm
echo:^^!ASCIIoffset = $30 >> Test2.asm
echo:endif >> Test2.asm
echo:db ((^^!offset^&$0000F0)/$10)+^^!ASCIIoffset >> Test2.asm
echo:if ((^^!offset^&$00000F)/$1) ^> $09 >> Test2.asm
echo:^^!ASCIIoffset = $37 >> Test2.asm
echo:else >> Test2.asm
echo:^^!ASCIIoffset = $30 >> Test2.asm
echo:endif >> Test2.asm
echo:db ((^^!offset^&$00000F)/$1)+^^!ASCIIoffset >> Test2.asm
asar "Test2.asm" Temp.txt

for /f "delims=" %%x in (Temp.txt) do set address=%%x

echo:lorom> Test.asm
echo:org $008000>> Test.asm
echo:^^!LvlNum = %LvlNumber% >> Test.asm
echo:^^!hackname = %hackname% >> Test.asm
echo:check bankcross off >> Test.asm
echo:^^!offset #= (snestopc($898000)+readfile4("^!hackname", snestopc($01F91D)+((^^!LvlNum^&$1FF)*4))) >> Test.asm
echo:^^!offset2 #= (snestopc($898000)+readfile4("^!hackname", snestopc($01F91D)+(($01+^^!LvlNum^&$1FF)*4))) >> Test.asm
echo:^^!offset3 #= pctosnes(^^!offset) >> Test.asm
echo:incbin ^^!hackname:(^^!offset)-(^^!offset2) >> Test.asm
echo:;print "File offset 1: 0x",hex(^^!offset) >> Test.asm
echo:;print "File offset 2: 0x",hex(^^!offset2) >> Test.asm
echo:print "Extracted the file at offset $",hex(^^!offset3) >> Test.asm

asar --fix-checksum=off --no-title-check "Test.asm" DATA_%address%.bin

set /a Loopcounter+=1
set /a LvlNumber+=1
if %Loopcounter% neq 283 goto :Loop1
echo Note: The last file must be extracted manually with a hex editor.

pause
exit