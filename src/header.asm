.db "TMR SEGA"

; Reserved
.db $20 $20

; Checksum
.db $00 $00
.COMPUTESMSCHECKSUM

; Product code + version
.IFDEF _REV1
    .db $67 $50 $01
.ELSE
    .db $67 $50 $00
.ENDIF

; Region code + ROM size
.db $4F
