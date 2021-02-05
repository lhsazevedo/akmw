monsterbirdLeftAnimationDescriptor:
    ; Number of animation frames
    .db $02

    ; Pointer Table from 81B8 to 81BB (2 entries, indexed by _RAM_CF84_)
    .dw monsterbirdLeftSprite0Descriptor
    .dw monsterbirdLeftSprite1Descriptor


monsterbirdLeftSprite0Descriptor:
    ; Number of tiles
    .db $06
    ; Colision data
    .db $54

    ; Y positions
    .db $00 $00 $00 $08 $08 $08

    ; X positions / Character codes
    .db $00 $7D
    .db $08 $7E
    .db $10 $7F
    .db $00 $80
    .db $08 $81
    .db $10 $82 


monsterbirdLeftSprite1Descriptor:
    ; Number of tiles
    .db $06
    ; Colision data
    .db $54

    ; Y Positions
    .db $00
    .db $00
    .db $00 
    .db $08
    .db $08
    .db $08

    ; X positions / Character codes
    .db $00 $83
    .db $08 $84
    .db $10 $85
    .db $02 $86
    .db $0A $87
    .db $12 $88 
