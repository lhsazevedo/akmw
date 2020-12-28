; Data from 8C2A to 8C2A (1 bytes)
ghostLeftAnimationDescriptor:
.db $02

; Pointer Table from 8C2B to 8C2E (2 entries, indexed by _RAM_CF84_)
.dw ghostLeftSprite0Descriptor ghostLeftSprite1Descriptor

; 1st entry of Pointer Table from 8C2B (indexed by _RAM_CF84_)
; Data from 8C2F to 8C3C (14 bytes)
ghostLeftSprite0Descriptor:
.db $04 $64 $00 $00 $08 $08 $01 $20 $09 $21 $02 $22 $0A $23

; 2nd entry of Pointer Table from 8C2B (indexed by _RAM_CF84_)
; Data from 8C3D to 8C4A (14 bytes)
ghostLeftSprite1Descriptor:
.db $04 $64 $00 $00 $08 $08 $00 $24 $08 $21 $01 $25 $09 $26
