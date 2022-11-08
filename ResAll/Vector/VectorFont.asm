	
VNumSet:
	dw VecExc
	dw VecQuo
	dw VecHash
	dw VecDollar
	dw VecPct
	dw VecAnd
	dw VecApos
	dw VecLbr
	dw VecRbr
	dw VecStar
	dw VecPlus
	dw VecComma
	dw VecMinus
	dw VecStop
	dw VecSlash
	dw VecO
	dw Vec1
	dw Vec2
	dw Vec3
	dw Vec4
	dw Vec5
	dw Vec6
	dw Vec7
	dw Vec8
	dw Vec9
	dw VecColon
	dw VecSemicolon
	dw VecLT
	dw VecEquals
	dw VecGT
	dw VecQuestion
	dw VecAt
	
VCharSet:
	dw VecA
	dw VecB
	dw VecC
	dw VecD
	dw VecE
	dw VecF
	dw VecG
	dw VecH
	dw VecI
	dw VecJ
	dw VecK
	dw VecL
	dw VecM
	dw VecN
	dw VecO
	dw VecP
	dw VecQ
	dw VecR
	dw VecS
	dw VecT
	dw VecU
	dw VecV
	dw VecW
	dw VecX
	dw VecY
	dw VecZ

VecA:
    db %01111001,%01111101
    db %00001010,%10000100
    db %01110110,%10000110
    db %00000011,%01111110
    db %10000000,%11111010

VecB:
    db %00000011,%01111101
    db %01110110,%10000000
    db %00000010,%10001000
    db %00000011,%11111011
    db %00000011,%10000101
    db %10000010,%11111000

VecC:
    db %00000011,%00000101
    db %00000000,%11111010
    db %01111110,%11111110
    db %01111100,%10000000
    db %01111110,%10000011
    db %10000000,%10000101

VecD:
    db %00000100,%01111110
    db %01110100,%10000000
    db %00000010,%10000111
    db %00000111,%10000000
    db %10000011,%11111010

VecE:
    db %00000011,%00000111
    db %00000000,%11110110
    db %01110110,%10000000
    db %00000000,%10001000
    db %00000101,%01111110
    db %10000000,%11111011


VecF:
    db %00000010,%00000110
    db %00000000,%11111000
    db %01110111,%10000000
    db %00000101,%00000101
    db %10000000,%11111011

VecG:
    db %00000010,%00000110
    db %00000001,%11111110
    db %00000000,%11111011
    db %01111011,%11111110
    db %01111011,%10000011
    db %00000001,%10000101
    db %00000100,%10000000
    db %00000000,%01111100
    db %10000000,%10000110

VecH:
    db %00000011,%01111101
    db %01110110,%10000000
    db %00000101,%00000000
    db %00000000,%10001000
    db %00000101,%00000000
    db %11110101,%10000001



VecI:
    db %00000011,%01111101
    db %00000000,%10001010
    db %00000000,%01111001
    db %01110110,%10000000
    db %00000001,%01111011
    db %01111111,%00000000
    db %10000000,%10001010

VecJ:
    db %00000011,%01111101
    db %00000000,%10001001
    db %00000000,%01111100
    db %01111001,%10000000
    db %11111111,%11111100

VecK:
    db %00000011,%01111110
    db %01110101,%10000000
    db %00000110,%00000000
    db %00000100,%10000110
    db %01111101,%01111001
    db %11111010,%10000110


VecL:
    db %00000011,%01111110
    db %01110110,%10000000
    db %10000001,%10001000


VecM:
    db %01111001,%01111101
    db %00001010,%10000010
    db %01111011,%10000011
    db %00000101,%10000011
    db %11110111,%10000010

VecN:
    db %01111001,%01111101
    db %00001010,%10000001
    db %01110111,%10000111
    db %10001001,%10000000

VecO:
    db %00000011,%00000000
    db %00000000,%10000011
    db %01111011,%10000100
    db %01111100,%11111111
    db %01111111,%11111011
    db %00000100,%11111100
    db %10000110,%10000011
VecP:
    db %01111010,%01111110
    db %00001000,%10000000
    db %00000000,%10000101
    db %01111101,%10000010
    db %01111110,%11111101
    db %10000001,%11111101

VecQ:
    db %00000011,%00000010
    db %01111111,%11111101
    db %01111101,%11111110
    db %01111100,%10000001
    db %01111111,%10000101
    db %00000011,%10000011
    db %00000100,%11111111
    db %00000011,%11111101
    db %01111011,%01111111
    db %00000000,%00000001
    db %11111010,%10000100

VecR:
    db %01111010,%01111110
    db %00001001,%10000000
    db %00000000,%10000111
    db %01111101,%10000000
    db %01111111,%11111001
    db %11111100,%10000110

VecS:
    db %00000100,%00000101
    db %01111101,%11110111
    db %01111100,%10001011
    db %11111100,%11110110

VecT:
    db %00000011,%01111101
    db %00000000,%10001010
    db %00000000,%01111011
    db %11110110,%10000000

VecU:
    db %00000100,%01111101
    db %01111000,%10000000
    db %01111110,%10000011
    db %00000001,%10000100
    db %10001001,%10000001

VecV:
    db %00000011,%01111101
    db %01110110,%10000101
    db %10001010,%10000100

VecW:
    db %00000011,%01111101
    db %01110110,%10000010
    db %00000100,%10000010
    db %01111100,%10000100
    db %10001001,%10000001

VecX:
    db %00000011,%01111101
    db %01110110,%10001000
    db %00001001,%00000000
    db %11110111,%11111000

VecY:
    db %00000011,%01111110
    db %01111011,%10000100
    db %00000110,%10000101
    db %01111011,%01111011
    db %11111010,%10000000

VecZ:
    db %00000011,%01111101
    db %00000000,%10001001
    db %01110111,%11110111
    db %10000000,%10001000



Vec1:
    db %00000001,%01111110
    db %00000001,%10000100
    db %01110111,%10000000
    db %00000000,%01111011
    db %10000000,%10001001



Vec2:
    db %00000001,%01111101
    db %00000010,%10000100
    db %01111011,%10000100
    db %01111100,%11111001
    db %10000000,%10000111

Vec3:
    db %00000010,%01111101
    db %00000001,%10000101
    db %01111100,%10000011
    db %01111111,%11111101
    db %01111100,%10000010
    db %11111111,%11111001


Vec4:
    db %00000011,%00000011
    db %01111001,%11111011
    db %00000000,%10001000
    db %00000011,%01111101
    db %11111010,%11111111


Vec5:
    db %00000011,%00000110
    db %00000000,%11111000
    db %01111011,%10000000
    db %01111111,%10000111
    db %01111101,%10000000
    db %11111111,%11111010

Vec6:
    db %00000011,%00000100
    db %01111011,%11111010
    db %01111101,%11111111
    db %01111110,%10000100
    db %00000011,%10000100
    db %10000011,%11111010


Vec7:
    db %00000011,%01111110
    db %00000000,%10001000
    db %11110111,%11111010

Vec8:
    db %00000011,%00000001
    db %01111011,%11111100
    db %01111100,%10001001
    db %01111111,%11111011
    db %00000011,%11111100
    db %00000101,%10001010
    db %10000100,%11111010

Vec9:
    db %01111001,%00000001
    db %00000111,%10000101
    db %00000011,%11111101
    db %01111110,%11111100
    db %01111101,%10000010
    db %10000000,%10000010


VecExc:
    db %00000100,%00000001
    db %01111010,%10000000
    db %01111101,%00000000
    db %11111111,%10000000

	
	ifdef ReducedFont
VecHash:
VecDollar:
VecPct:
VecAnd:
VecApos:
VecLbr:
VecRbr:
VecStar:
VecPlus:
VecComma:
VecMinus:
VecStop:
VecSlash:
VecQuo:
VecLT:
VecGT:
VecAt:
VecQuestion:
VecEquals:
VecSemicolon:
VecColon:
    db %10000000,%00000000
	
	else
	
VecColon:
    db %00000001,%00000001
    db %01111110,%10000010
    db %01111101,%01111101
    db %00000001,%00000001
    db %11111110,%10000010

VecSemicolon:
    db %00000010,%00000001
    db %01111110,%10000010
    db %01111101,%01111111
    db %11111101,%11111111

VecEquals:
    db %00000001,%01111111
    db %00000000,%10000110
    db %01111010,%01111010
    db %10000000,%10000110

VecQuestion:
    db %00000000,%01111111
    db %00000001,%10000010
    db %01111111,%10000011
    db %01111101,%11111101
    db %01111110,%10000000
    db %01111111,%01111110
    db %11111111,%10000011

VecAt:
    db %01111110,%00000010
    db %01111110,%11111110
    db %00000010,%11111111
    db %00000010,%10000010
    db %01111101,%10000001
    db %01111111,%10000010
    db %00000010,%10000001
    db %00000011,%11111111
    db %00000010,%11111100
    db %01111100,%11111101
    db %01111111,%10000000
    db %01111101,%10000010
    db %01111111,%10000011
    db %10000000,%10000010

VecLT:
    db %00000010,%00000011
    db %01111100,%11111011
    db %11111011,%10000101
VecGT:
    db %00000011,%01111111
    db %01111011,%10000100
    db %11111011,%11111011

VecQuo:
    db %00000011,%00000000
    db %01111110,%10000001
    db %00000010,%00000010
    db %11111110,%10000001

VecHash:
    db %00000100,%00000000
    db %01110101,%10000000
    db %00001010,%00000101
    db %01110110,%10000000
    db %00001000,%01111000
    db %00000000,%10001001
    db %01111100,%01110111
    db %10000000,%10001001

VecDollar:
    db %00000001,%00000110
    db %00000000,%11111000
    db %01111011,%10000111
    db %01111110,%11111001
    db %00001010,%00000011
    db %11110101,%10000000

VecPct:
    db %00000011,%01111111
    db %01111101,%11111111
    db %00000000,%10000010
    db %00000010,%11111111
    db %01111001,%00000110
    db %01111111,%10000010
    db %01111111,%11111111
    db %00000011,%11111111
    db %00000110,%00000010
    db %11110110,%11111000

VecAnd:
    db %01111111,%00001000
    db %01111011,%11111010
    db %00000011,%11111011
    db %00000111,%10000110
    db %00000000,%11111100
    db %11110111,%10000110

VecApos:
    db %00000011,%00000010
    db %11111101,%10000000

VecLbr:
    db %00000011,%00000011
    db %01111011,%11111011
    db %11111011,%10000101

VecRbr:
    db %00000100,%00000001
    db %01111011,%10000011
    db %11111010,%11111100

VecStar:
    db %00000010,%01111110
    db %01110111,%10001000
    db %00000111,%00000000
    db %01111001,%11111001
    db %00000101,%01111110
    db %01111111,%00000000
    db %00000000,%00000001
    db %10000000,%10001001

VecPlus:
    db %00000010,%00000001
    db %01110111,%10000000
    db %00000101,%01111011
    db %10000000,%10001001

VecComma:
    db %01111100,%00000010
    db %11111110,%11111110

VecMinus:
    db %01111111,%01111101
    db %10000000,%10001001

VecStop:
    db %01111011,%00000001
    db %10000000,%10000001

VecSlash:
    db %00000011,%00000100
    db %11110101,%11111010
	
	endif