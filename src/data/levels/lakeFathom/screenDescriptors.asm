lakeFathomScreen1Descriptor:
.db $00

lakeFathomScreen2Descriptor:
.db $82 $01 $00

lakeFathomScreen3Descriptor:
.db $03 $31 $28 $90 $00 $31 $20 $70 $00 $30 $70 $A0 $00

lakeFathomScreen4Descriptor:
.db $00

lakeFathomScreen5Descriptor:
.db $82 $02 $00

lakeFathomScreen6Descriptor:
.db $84 $44 $30 $D0 $00 $02 $30 $90 $A0 $00 $2E $30 $B0 $00

lakeFathomScreen7Descriptor:
.db $02 $30 $10 $B0 $00 $30 $90 $80 $00

lakeFathomScreen8Descriptor:
.db $81 $4C $00 $F0 $00 $03 $30 $90 $80 $00 $2E $48 $80 $00 $2E $68
.db $B0 $00

lakeFathomScreen9Descriptor:
.db $00

lakeFathomScreen10Descriptor:
; Special screen type 0x08
.db $88
; Bytes to copy to v_unknownEntityByteCount_RAM_D8A0_
.db $16
; Bytes that will be copied.
.db $07 
.db $10 $CA $03
.db $14 $CA $03
.db $18 $CA $03
.db $1C $CA $03
.db $28 $CA $03
.db $2C $CA $03
.db $30 $CA $03

; Another special entity
.db $81
.db $4B $78 $C0 $00

; Remaining entities
.db $04
.db $2D $20 $90 $00
.db $2D $58 $70 $00
.db $3E $98 $60 $00
.db $3E $98 $F0 $00

lakeFathomScreen11Descriptor:
.db $84 $44 $30 $E0 $00 $04 $3E $98 $30 $00 $3E $98 $D0 $00 $3E $20
.db $70 $00 $52 $20 $70 $05
