; Data from 7FF0 to 7FFF (16 bytes)
.db $54 $4D $52 $20 $53 $45 $47 $41 $20 $20

.IFDEF _REV1
	.db $D0 $1C
.ELSE
	.db $22 $12
.ENDIF

.db $67 $50

.IFDEF _REV1
	.db $01
.ELSE
	.db $00
.ENDIF

.db $4F
