
	dw DATA_3800

base $3800
DATA_3800:
	dw DATA_3924	:	dw DATA_3924+$0009
	dw DATA_3A32	:	dw DATA_3A32+$0183
	dw DATA_3EF1	:	dw DATA_3EF1+$0090
	dw DATA_43A7	:	dw DATA_43A7+$02E2
	dw DATA_E16F	:	dw DATA_E16F+$0090
	dw DATA_E877	:	dw DATA_E877+$01EF
	dw DATA_3912	:	dw DATA_3912+$0009
	dw DATA_46B6	:	dw DATA_46B6+$0009
	dw DATA_46DA	:	dw DATA_46DA+$022E
	dw DATA_4BE1	:	dw DATA_4BE1+$001B
	dw DATA_5499	:	dw DATA_5499+$0183
	dw DATA_5652	:	dw DATA_5652+$0276
	dw DATA_58DA	:	dw DATA_58DA+$010E
	dw DATA_5A27	:	dw DATA_5A27+$01EF
	dw DATA_396C	:	dw DATA_396C+$001B
	dw DATA_5C31	:	dw DATA_5C31+$0000
	dw DATA_3936	:	dw DATA_3936+$0012
	dw DATA_F7CB	:	dw DATA_F7CB+$00D8
	dw DATA_61B6	:	dw DATA_61B6+$0129
	dw DATA_6543	:	dw DATA_6543+$00BD
	dw DATA_68E2	:	dw DATA_68E2+$0087
	dw DATA_6BA0	:	dw DATA_6BA0+$0024
	dw DATA_6C54	:	dw DATA_6C54+$08F7
	dw DATA_7566	:	dw DATA_7566+$020A
	dw DATA_8D84	:	dw DATA_8D84+$0009
	dw DATA_A110	:	dw DATA_A110+$0009
	dw DATA_A88D	:	dw DATA_A88D+$0009
	dw DATA_AF17	:	dw DATA_AF17+$0009
	dw DATA_BA9F	:	dw DATA_BA9F+$021C
	dw DATA_EDCF	:	dw DATA_EDCF+$0288
	dw DATA_F315	:	dw DATA_F315+$0183
	dw DATA_39C6	:	dw DATA_39C6+$0048
	dw DATA_79F8	:	dw DATA_79F8+$00E1
	dw DATA_B616	:	dw DATA_B616+$014D
	dw DATA_BCD6	:	dw DATA_BCD6+$0117
	dw DATA_BDFF	:	dw DATA_BDFF+$0012
	dw DATA_BE86	:	dw DATA_BE86+$0012
	dw DATA_BF0D	:	dw DATA_BF0D+$0009
	dw DATA_C27F	:	dw DATA_C27F+$0BBE
	dw DATA_F972	:	dw DATA_F972+$018C
	dw DATA_FBA9	:	dw DATA_FBA9+$0012
	dw DATA_FD59	:	dw DATA_FD59+$0012
	dw DATA_81CF	:	dw DATA_81CF+$0012
	dw DATA_FE28	:	dw DATA_FE28+$0087
	dw DATA_84D5	:	dw DATA_84D5+$0318
	dw DATA_8AAB	:	dw DATA_8AAB+$0171

DATA_38B8:
	db $00,$00,$00,$00,$03,$03,$04,$03
	db $00,$00,$03,$FC,$05,$03,$05,$FB
	db $08,$02,$00,$00,$00,$00,$F7,$00
	db $FA,$00,$05,$05,$03,$03,$03,$08
	db $00,$00,$FC,$00,$00,$00,$02,$02
	db $00,$00,$00,$00,$FE,$02,$00,$00
	db $01

DATA_38E7:
	db $0C,$0C,$01,$03,$00,$00,$03,$03
	db $0D,$03,$0E,$07,$03,$07,$00,$00
	db $00,$00,$04,$00,$0D,$00,$00,$00
	db $03,$0B,$0B,$02,$00,$00,$03,$00
	db $00,$00,$03,$0C,$00,$00,$00,$00
	db $0A

DATA_3912:	incbin "Samples/06.brr"
DATA_3924:	incbin "Samples/00.brr"
DATA_3936:	incbin "Samples/10.brr"
DATA_396C:	incbin "Samples/0E.brr"
DATA_39C6:	incbin "Samples/1F.brr"
DATA_3A32:	incbin "Samples/01.brr"
DATA_3EF1:	incbin "Samples/02.brr"
DATA_43A7:	incbin "Samples/03.brr"
DATA_46B6:	incbin "Samples/07.brr"
DATA_46DA:	incbin "Samples/08.brr"
DATA_4BE1:	incbin "Samples/09.brr"
DATA_5499:	incbin "Samples/0A.brr"
DATA_5652:	incbin "Samples/0B.brr"
DATA_58DA:	incbin "Samples/0C.brr"
DATA_5A27:	incbin "Samples/0D.brr"
DATA_5C31:	incbin "Samples/0F.brr"
DATA_61B6:	incbin "Samples/12.brr"
DATA_6543:	incbin "Samples/13.brr"
DATA_68E2:	incbin "Samples/14.brr"
DATA_6BA0:	incbin "Samples/15.brr"
DATA_6C54:	incbin "Samples/16.brr"
DATA_7566:	incbin "Samples/17.brr"
DATA_79F8:	incbin "Samples/20.brr"
DATA_81CF:	incbin "Samples/2A.brr"
DATA_84D5:	incbin "Samples/2C.brr"
DATA_8AAB:	incbin "Samples/2D.brr"
DATA_8D84:	incbin "Samples/18.brr"
DATA_A110:	incbin "Samples/19.brr"
DATA_A88D:	incbin "Samples/1A.brr"
DATA_AF17:	incbin "Samples/1B.brr"
DATA_B616:	incbin "Samples/21.brr"
DATA_BA9F:	incbin "Samples/1C.brr"
DATA_BCD6:	incbin "Samples/22.brr"
DATA_BDFF:	incbin "Samples/23.brr"
DATA_BE86:	incbin "Samples/24.brr"
DATA_BF0D:	incbin "Samples/25.brr"
DATA_C27F:	incbin "Samples/26.brr"
DATA_E16F:	incbin "Samples/04.brr"
DATA_E877:	incbin "Samples/05.brr"
DATA_EDCF:	incbin "Samples/1D.brr"
DATA_F315:	incbin "Samples/1E.brr"
DATA_F7CB:	incbin "Samples/11.brr"
DATA_F972:	incbin "Samples/27.brr"
DATA_FBA9:	incbin "Samples/28.brr"
DATA_FD59:	incbin "Samples/29.brr"
DATA_FE28:	incbin "Samples/2B.brr"

base off