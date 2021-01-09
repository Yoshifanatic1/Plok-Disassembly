
;--------------------------------------------------------------------

macro PLOK_UnknownFunction1(RAMTable1, RAMTable2)
	LDA.b #$00
	ASL.w <RAMTable1>+$01
	ROL
	ASL.w <RAMTable1>
	ROL
	ASL.w <RAMTable2>+$01
	ROL
	ASL.w <RAMTable2>
	ROL
	JSR.w CODE_87EF27
endmacro

;--------------------------------------------------------------------

macro PLOK_UnknownFunction2(RAMTable1)
	LDA.l <RAMTable1>
	STA.b [$E6]
	INC.b $E6
	BNE.b +
	INC.b $E7
	BNE.b +
	INC.b $E8
+:
endmacro

;--------------------------------------------------------------------

macro PLOK_UnknownDMAMacro1(VRAMAddr, RAM)
	REP.b #$20
	LDA.b $36
	STA.w DMA[$01].SourceLo
	CLC
	ADC.b <RAM>
	CLC
	ADC.b <RAM>
	STA.b $36
	LDA.w #$0028
	STA.w DMA[$01].SizeLo
	LDA.w #<VRAMAddr>
	STA.w !REGISTER_VRAMAddressLo
	SEP.b #$20
	LDA.b #$02
	STA.w !REGISTER_DMAEnable
endmacro

;--------------------------------------------------------------------

macro PLOK_UnknownDMAMacro2(VRAMAddr, SizeOfTransfer)
	REP.b #$20
	LDA.b $38
	STA.w DMA[$01].SourceLo
	CLC
	ADC.w #<SizeOfTransfer>
	STA.b $38
	LDA.w #<SizeOfTransfer>
	STA.w DMA[$01].SizeLo
	LDA.w #<VRAMAddr>
	STA.w !REGISTER_VRAMAddressLo
	SEP.b #$20
	LDA.b #$02
	STA.w !REGISTER_DMAEnable
endmacro

;--------------------------------------------------------------------

macro PLOK_InsertUnsortedData(Command, Label)
	%PLOK_GetUnsortedDataDefine(TEMP1, <Label>, "")
	%PLOK_GetUnsortedDataDefine(TEMP2, FilePath, !{TEMP1})
;print "(",hex(PLOK_UnsortedData_DATA_81F6E5_<Label>-PLOK_UnsortedData_DATA_81F6E5),") <Label> was inserted at $",pc
<Label>:
	<Command> "!TEMP2"
<Label>End:
endmacro

;--------------------------------------------------------------------

macro PLOK_UnsortedDataTableEntry(Parameter, Label, FilePath)
.<Label>:
	dw <Parameter>

%PLOK_CreateUnsortedDataDefine(Define_PLOK_UnsortedData<Label>, !Define_PLOK_UnsortedDataIndex, "")
%PLOK_CreateUnsortedDataDefine(Define_PLOK_UnsortedDataPointer, (((PLOK_UnsortedData_<Label>-PLOK_UnsortedData_Main)/2)&$FF8000)|(PLOK_UnsortedData_<Label>&$007FFF), !Define_PLOK_UnsortedDataIndex)
%PLOK_CreateUnsortedDataDefine(Define_PLOK_UnsortedDataFilePath, "<FilePath>", !Define_PLOK_UnsortedDataIndex)
%PLOK_CreateUnsortedDataDefine(Define_PLOK_UnsortedDataSize, filesize("<FilePath>"), !Define_PLOK_UnsortedDataIndex)
;print <Label>'s data pointer is index ",hex(!Define_PLOK_UnsortedDataIndex)

!Define_PLOK_UnsortedDataIndex #= !Define_PLOK_UnsortedDataIndex+$02
endmacro

;--------------------------------------------------------------------

macro PLOK_GenerateUnsortedDataPointersAndSize()
!LoopCounter #= 0
Ptrs:						;$81F91D
while !LoopCounter < !Define_PLOK_UnsortedDataIndex
	%PLOK_GetUnsortedDataDefine(TEMP1, Pointer, !LoopCounter)
	dd !TEMP1
	!LoopCounter #= !LoopCounter+2
endif
!LoopCounter #= 0
DataBlockSize:					;$81FD8D
while !LoopCounter < !Define_PLOK_UnsortedDataIndex
	%PLOK_GetUnsortedDataDefine(TEMP1, Size, !LoopCounter)
	dw !TEMP1
	!LoopCounter #= !LoopCounter+2
endif
endmacro

;--------------------------------------------------------------------

macro PLOK_CreateUnsortedDataDefine(Define, Data, Index)
	!<Define><Index> = <Data>
	;print hex(!<Define>_<Label>)
endmacro

;--------------------------------------------------------------------

macro PLOK_GetUnsortedDataDefine(Var, Param, Index)
	!<Var> = !Define_PLOK_UnsortedData<Param><Index>
endmacro

;--------------------------------------------------------------------

; Info: This macro is used to help manage the text scripting.
; Ptr = Pointer to the text data in bank 81.
; XPos = X position the text is drawn at. Valid values are $00-$1F, but note that the text will go down one row if it reaches the edge of the screen!
; YPos = Y position the text is drawn at. Valid values are $00-$1F.
; Layer = Whether the text is drawn on layer 1, 2, or 3.
; Pal = Which palette is used for the text. Technically, this also determines X/Y flip, tile priority, and the graphics page to use, but the original game only changes the palette while always using tile priority.
; Size = Whether to draw small or big letters. Note that you can't arbitrarily use either size everywhere. Which one to use depends on whether the game is set to use 8x8 or 16x16 layer 3 tiles.
 
; Speed = Whether the line of text prints instantly or slowly types out.
; Delay = How many frames to wait before the text box begins to draw. Valid values are $0000-$3BFF

; Internal format dw abcccccccccccccc, dddddddddddddddd, --------eeeeeeee, ffffffffffffffff
;a = Size bit
;b = Slow bit
;cccccccccccccc = Delay length
;dddddddddddddddd = VRAM address
;eeeeeeee = YXPCCCTT properties
;ffffffffffffffff = 16-bit pointer to text
; if abcccccccccccccc = $FFFF, that marks the end of the text script.

!Text_Layer_1 = $01
!Text_Layer_2 = $02
!Text_Layer_3 = $03
!Text_YFlip = $80
!Text_XFlip = $40
!Text_PriorityOff = $00
!Text_PriorityOn = $20
!Text_Palette_0 = $00
!Text_Palette_1 = $04
!Text_Palette_2 = $08
!Text_Palette_3 = $0C
!Text_Palette_4 = $10
!Text_Palette_5 = $14
!Text_Palette_6 = $18
!Text_Palette_7 = $1C
!Text_GFXPage0 = $00
!Text_GFXPage1 = $01
!Text_GFXPage2 = $02
!Text_GFXPage3 = $03
!Text_Size_Large = $00
!Text_Size_Small = $01
!Text_Speed_Fast = $00
!Text_Speed_Slow = $01
!Text_InTable = !FALSE
!Text_InCode = !TRUE

macro PLOK_WriteText(XPos, YPos, Layer, Pal, Size, Speed, Delay, Ptr)
!Size = <Size>
!Speed = <Speed>
!Delay = <Delay>

	db !Delay
	db ((!Size&$01)<<7)|((!Speed&$01)<<6)|(!Delay>>8)
	%PLOK_SetTextVRAMAddress(<XPos>, <YPos>, <Layer>, !Text_InTable)
	%PLOK_SetTextTileProperties(<Pal>, !Text_InTable)
	%PLOK_HandlePrimaryTextPointer(<Ptr>, !Text_InTable)
endmacro

;--------------------------------------------------------------------

; Note: This macro is used to set the "primary" language of each version. This is relevant primarily to the French version, which has two languages to use.

macro PLOK_HandlePrimaryTextPointer(Ptr, CodeFlag)
if <CodeFlag> == !Text_InCode
	db $A0							; Hex value for LDY #$00
endif
if !Define_Global_ROMToAssemble&(!ROM_PLOK_J) != $00
	dw PLOK_JapaneseTextStrings_<Ptr>
elseif !Define_Global_ROMToAssemble&(!ROM_PLOK_G) != $00
	dw PLOK_GermanTextStrings_<Ptr>
else
	dw PLOK_EnglishTextStrings_<Ptr>
endif
endmacro

;--------------------------------------------------------------------

; Info: This macro is used to help manage the level name positioning. It works similarly to the PLOK_WriteText macro, except with fewer parameters and it must be called twice per level.
; Note that the Legacy Island levels have special handling, since it displays its name accross 3 lines.

; Internal format dw aaaaaaaaaaaaaaaa, bbbbbbbbbbbbbbbb, cccccccccccccccc, dddddddddddddddd
;aaaaaaaaaaaaaaaa = 16-bit pointer to the world name text
;bbbbbbbbbbbbbbbb = VRAM address for the world name
;cccccccccccccccc = 16-bit pointer to the level name text
;dddddddddddddddd = VRAM address for the level name

macro PLOK_WriteLevelName(XPos, YPos, Layer, Ptr)
	%PLOK_HandlePrimaryTextPointer(<Ptr>, !Text_InTable)
	%PLOK_SetTextVRAMAddress(<XPos>, <YPos>, <Layer>, !Text_InTable)
endmacro

;--------------------------------------------------------------------

; Info: This macro is handles calls to CODE_80A488 (or other, similar routine), which draws text to the screen that are used to draw independant strings of text that aren't part of a script.

macro PLOK_WriteIndependantTextString(XPos, YPos, Layer, Pal, Ptr, Routine)
	%PLOK_SetTextVRAMAddress(<XPos>, <YPos>, <Layer>, !Text_InCode)
	%PLOK_HandlePrimaryTextPointer(<Ptr>, !Text_InCode)
	%PLOK_SetTextTileProperties(<Pal>, !Text_InCode)
	JSR.w <Routine>
endmacro

;--------------------------------------------------------------------

macro PLOK_SetTextVRAMAddress(XPos, YPos, Layer, CodeFlag)
!XPos = <XPos>
!YPos = <YPos>

if <Layer> == !Text_Layer_1
	!Layer = $50
elseif <Layer> == !Text_Layer_2
	!Layer = $58
elseif <Layer> == !Text_Layer_3
	!Layer = $5C
else
	error "The Layer in this WriteText macro parameter must be a 1, 2 or 3!"
endif
if <CodeFlag> == !Text_InCode
	db $A2				; Hex value for LDX #$00
endif
	db (!XPos&$1F)|(!YPos<<5)
	db (!YPos>>3)+!Layer
endmacro

;--------------------------------------------------------------------

macro PLOK_SetTextTileProperties(Pal, CodeFlag)
!Pal = <Pal>

if <CodeFlag> == !Text_InCode
	db $A9				; Hex value for LDA #$00
endif
	db !Text_PriorityOn|(!Pal)
	db $00
endmacro

;--------------------------------------------------------------------

; Note: This is used by the TextLineScriptDecoder.bat batch script.

macro PLOK_PrintWriteTextMacro(XPos, YPos, Layer, Pal, Size, Speed, Delay, Ptr)
if <XPos> < 16
	!LZ1 = 0
else
	!LZ1 = ""
endif
if <YPos> < 16
	!LZ2 = 0
else
	!LZ2 = ""
endif
if <Delay> < 16
	!LZ3 = 000
elseif <Delay> < 256
	!LZ3 = 00
elseif <Delay> < 4096
	!LZ3 = 0
else
	!LZ3 = ""
endif
	print "	%PLOK_WriteText($!LZ1",hex(<XPos>),", $!LZ2",hex(<YPos>),", \!Text_Layer_<Layer>, \!Text_Palette_",hex(<Pal>),", \!Text_Size_<Size>, \!Text_Speed_<Speed>, $!LZ3",hex(<Delay>),", DATA_81",hex(<Ptr>),")"
endmacro

;--------------------------------------------------------------------

; Note: This is used by the TextLineScriptDecoder.bat batch script.

macro PLOK_PrintWriteLevelName(XPos, YPos, Layer, Ptr)
if <XPos> < 16
	!LZ1 = 0
else
	!LZ1 = ""
endif
if <YPos> < 16
	!LZ2 = 0
else
	!LZ2 = ""
endif
	print "	%PLOK_WriteLevelName($!LZ1",hex(<XPos>),", $!LZ2",hex(<YPos>),", \!Text_Layer_<Layer>, DATA_81",hex(<Ptr>),")"
endmacro

;--------------------------------------------------------------------
