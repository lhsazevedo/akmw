; Data from 8C4B to 8C4B (1 bytes)
smallFishRightAnimationDescriptor:
.db $02

; Pointer Table from 8C4C to 8C4F (2 entries, indexed by _RAM_CF84_)
.dw smallFishRightSprite0Descriptor smallFishRightSprite1Descriptor

; 1st entry of Pointer Table from 8C4C (indexed by _RAM_CF84_)
; Data from 8C50 to 8C5D (14 bytes)
smallFishRightSprite0Descriptor:
.db $04 $94 $00 $00 $08 $08 $07 $5D $FF $5E $08 $5F $00 $60

; 2nd entry of Pointer Table from 8C4C (indexed by _RAM_CF84_)
; Data from 8C5E to 8C6B (14 bytes)
smallFishRightSprite1Descriptor:
.db $04 $94 $00 $00 $08 $08 $07 $61 $FF $62 $08 $63 $00 $64
