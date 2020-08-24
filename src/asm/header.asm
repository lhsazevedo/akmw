.db "TMR SEGA"

; Reserved
.db $20 $20

; Checksum
.IFDEF _REV1
	.db $D0 $1C
.ELSE
	.db $22 $12
.ENDIF

; Product code + version
.IFDEF _REV1
	.db $67 $50 $01
.ELSE
	.db $67 $50 $00
.ENDIF

; Region code + ROM size
.db $4F
