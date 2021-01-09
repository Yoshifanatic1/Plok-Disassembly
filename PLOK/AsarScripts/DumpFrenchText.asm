; This will dump the french text from the French Plok ROM if applied to it.
; Note that in the dumped text, + represents ", % represents a space, and & represents something that wasn't a standard character.
; Also, it may take a second before asar starts displaying anything on the command line.

!LoopCounter = 0
!Offset = $848000
while !LoopCounter < 10546
	!Output = ""
	!LetterCount = 0
	!Input = $00
	print "DATA_",hex(!Offset+!LoopCounter),":"
	while !Input != $FF
		!Input = read1(!Offset+!LoopCounter)
		if !Input == $00
			!Output += "%"
		elseif !Input == $01
			!Output += 0
		elseif !Input == $02
			!Output += 1
		elseif !Input == $03
			!Output += 2
		elseif !Input == $04
			!Output += 3
		elseif !Input == $05
			!Output += 4
		elseif !Input == $06
			!Output += 5
		elseif !Input == $07
			!Output += 6
		elseif !Input == $08
			!Output += 7
		elseif !Input == $09
			!Output += 8
		elseif !Input == $0A
			!Output += 9
		elseif !Input == $0B
			!Output += A
		elseif !Input == $0C
			!Output += B
		elseif !Input == $0D
			!Output += C
		elseif !Input == $0E
			!Output += D
		elseif !Input == $0F
			!Output += E
		elseif !Input == $10
			!Output += F
		elseif !Input == $11
			!Output += G
		elseif !Input == $12
			!Output += H
		elseif !Input == $13
			!Output += I
		elseif !Input == $14
			!Output += J
		elseif !Input == $15
			!Output += K
		elseif !Input == $16
			!Output += L
		elseif !Input == $17
			!Output += M
		elseif !Input == $18
			!Output += N
		elseif !Input == $19
			!Output += O
		elseif !Input == $1A
			!Output += P
		elseif !Input == $1B
			!Output += Q
		elseif !Input == $1C
			!Output += R
		elseif !Input == $1D
			!Output += S
		elseif !Input == $1E
			!Output += T
		elseif !Input == $1F
			!Output += U
		elseif !Input == $20
			!Output += V
		elseif !Input == $21
			!Output += W
		elseif !Input == $22
			!Output += X
		elseif !Input == $23
			!Output += Y
		elseif !Input == $24
			!Output += Z
		elseif !Input == $25
			!Output += "\!"
		elseif !Input == $26
			!Output += "'"
		elseif !Input == $27
			!Output += ?
		elseif !Input == $28
			!Output += "-"
		elseif !Input == $29
			!Output += ","
		elseif !Input == $2A
			!Output += "."
		else
			!Output += "&"
		endif
		!LoopCounter #= !LoopCounter+1
		!LetterCount #= !LetterCount+1
		if !LetterCount == 32
			!Input = $FF
		endif
	endif
	!LoopCounter #= !LoopCounter+1
	print "db +!Output+,$FF"
	print ""
endif