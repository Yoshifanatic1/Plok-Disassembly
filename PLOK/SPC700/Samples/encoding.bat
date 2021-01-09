@ECHO OFF

CHOICE /C ED /M "Encode or decode?"

SET PATH="../../../Global"

IF %ERRORLEVEL% == 1 GOTO ENCODE
IF %ERRORLEVEL% == 2 GOTO DECODE

:ENCODE
SET program=brr_encoder
SET intype=wav
SET outtype=brr
GOTO MAIN

:DECODE
SET program=brr_decoder
SET intype=brr
SET outtype=wav
GOTO MAIN

:MAIN
ECHO Sample 00
%program% 00.%intype% 00.%outtype%
ECHO Sample 01
%program% 01.%intype% 01.%outtype%
ECHO Sample 02
%program% 02.%intype% 02.%outtype%
ECHO Sample 03
%program% 03.%intype% 03.%outtype%
ECHO Sample 04
%program% 04.%intype% 04.%outtype%
ECHO Sample 05
%program% 05.%intype% 05.%outtype%
ECHO Sample 06
%program% 06.%intype% 06.%outtype%
ECHO Sample 07
%program% 07.%intype% 07.%outtype%
ECHO Sample 08
%program% 08.%intype% 08.%outtype%
ECHO Sample 09
%program% 09.%intype% 09.%outtype%
ECHO Sample 0A
%program% 0A.%intype% 0A.%outtype%
ECHO Sample 0B
%program% 0B.%intype% 0B.%outtype%
ECHO Sample 0C
%program% 0C.%intype% 0C.%outtype%
ECHO Sample 0D
%program% 0D.%intype% 0D.%outtype%
ECHO Sample 0E
%program% 0E.%intype% 0E.%outtype%
ECHO Sample 0F
%program% 0F.%intype% 0F.%outtype%
ECHO Sample 10
%program% 10.%intype% 10.%outtype%
ECHO Sample 11
%program% 11.%intype% 11.%outtype%
ECHO Sample 12
%program% 12.%intype% 12.%outtype%
ECHO Sample 13
%program% 13.%intype% 13.%outtype%
ECHO Sample 14
%program% 14.%intype% 14.%outtype%
ECHO Sample 15
%program% 15.%intype% 15.%outtype%
ECHO Sample 16
%program% 16.%intype% 16.%outtype%
ECHO Sample 17
%program% 17.%intype% 17.%outtype%
ECHO Sample 18
%program% 18.%intype% 18.%outtype%
ECHO Sample 19
%program% 19.%intype% 19.%outtype%
ECHO Sample 1A
%program% 1A.%intype% 1A.%outtype%
ECHO Sample 1B
%program% 1B.%intype% 1B.%outtype%
ECHO Sample 1C
%program% 1C.%intype% 1C.%outtype%
ECHO Sample 1D
%program% 1D.%intype% 1D.%outtype%
ECHO Sample 1E
%program% 1E.%intype% 1E.%outtype%
ECHO Sample 1F
%program% 1F.%intype% 1F.%outtype%
ECHO Sample 20
%program% 20.%intype% 20.%outtype%
ECHO Sample 21
%program% 21.%intype% 21.%outtype%
ECHO Sample 22
%program% 22.%intype% 22.%outtype%
ECHO Sample 23
%program% 23.%intype% 23.%outtype%
ECHO Sample 24
%program% 24.%intype% 24.%outtype%
ECHO Sample 25
%program% 25.%intype% 25.%outtype%
ECHO Sample 26
%program% 26.%intype% 26.%outtype%
ECHO Sample 27
%program% 27.%intype% 27.%outtype%
ECHO Sample 28
%program% 28.%intype% 28.%outtype%
ECHO Sample 29
%program% 29.%intype% 29.%outtype%
ECHO Sample 2A
%program% 2A.%intype% 2A.%outtype%
ECHO Sample 2B
%program% 2B.%intype% 2B.%outtype%
ECHO Sample 2C
%program% 2C.%intype% 2C.%outtype%
ECHO Sample 2D
%program% 2D.%intype% 2D.%outtype%

DEL *.%intype%

PAUSE
