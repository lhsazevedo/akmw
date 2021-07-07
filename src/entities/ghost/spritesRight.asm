; Data from 8C6C to 8C6C (1 bytes)
ghostRightAnimationDescriptor:
.db $02

; Pointer Table from 8C6D to 8C70 (2 entries, indexed by _RAM_CF84_)
.dw ghostRightSprite0Descriptor ghostRightSprite1Descriptor

; 1st entry of Pointer Table from 8C6D (indexed by _RAM_CF84_)
; Data from 8C71 to 8C7E (14 bytes)
ghostRightSprite0Descriptor:
.db $04 $64 $00 $00 $08 $08 $07 $27 $FF $28 $06 $29 $FE $2A

; 2nd entry of Pointer Table from 8C6D (indexed by _RAM_CF84_)
; Data from 8C7F to 8CC6 (72 bytes)
ghostRightSprite1Descriptor:
.db $04 $64 $00 $00 $08 $08 $08 $2B $00 $28 $07 $2C $FF $2D $0A $A0
.db $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $09 $A1 $01 $A2 $0F $A3
.db $07 $A4 $FF $A5 $0E $A6 $06 $A7 $FE $A8 $0A $A9 $02 $AA $08 $A0
.db $00 $00 $08 $08 $10 $10 $18 $18 $09 $AB $01 $AC $0A $AD $02 $AE
.db $0D $AF $05 $B0 $08 $B1 $00 $B2
