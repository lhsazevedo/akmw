monsterbirdRightAnimationDescriptor:
    ; Number of animation frames
    .db $02

    .dw monsterbirdRightSprite0Descriptor
    .dw monsterbirdRightSprite1Descriptor


monsterbirdRightSprite0Descriptor:
    ; Number of tiles
    .db $06
    ; Colision data
    .db $58

    ; Y positions
    .db $00 $00 $00 $08 $08 $08

    ; X positions / Character codes
    .db $10 $89
    .db $08 $8A
    .db $00 $8B
    .db $10 $8C
    .db $08 $8D
    .db $00 $8E


monsterbirdRightSprite1Descriptor:
    ; Number of tiles
    .db $06
    ; Colision data
    .db $58

    ; Y positions
    .db $00 $00 $00 $08 $08 $08

    ; X positions / Character codes
    .db $10 $8F
    .db $08 $90
    .db $00 $91
    .db $0E $92
    .db $06 $93
    .db $FE $94
