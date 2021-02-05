; Data from 8BD2 to 8BD2 (1 bytes)
smallFishLeftAnimationDescriptor:
.db $02

; Pointer Table from 8BD3 to 8BD6 (2 entries, indexed by _RAM_CF84_)
.dw smallFishLeftSprite0Descriptor smallFishLeftSprite1Descriptor

; 1st entry of Pointer Table from 8BD3 (indexed by _RAM_CF84_)
; Data from 8BD7 to 8BE4 (14 bytes)
smallFishLeftSprite0Descriptor:
.db $04 $94 $00 $00 $08 $08 $01 $55 $09 $56 $00 $57 $08 $58

; 2nd entry of Pointer Table from 8BD3 (indexed by _RAM_CF84_)
; Data from 8BE5 to 8BF2 (14 bytes)
smallFishLeftSprite1Descriptor:
.db $04 $94 $00 $00 $08 $08 $01 $59 $09 $5A $00 $5B $08 $5C
