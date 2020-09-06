monsterbirdLeftAnimationDescriptor:
    ; Number of animation frames
    .db $02

    ; Pointer Table from 81B8 to 81BB (2 entries, indexed by _RAM_CF84_)
    .dw monsterbirdLeftSprite0Descriptor
    .dw monsterbirdLeftSprite1Descriptor

; 1st entry of Pointer Table from 81B8 (indexed by _RAM_CF84_)
; Data from 81BC to 81CF (20 bytes)
monsterbirdLeftSprite0Descriptor:
    ; Number of tiles
    .db $06
    ; Colision data
    .db $54

    .DSTRUCT monsterbirdLeftSprite0Tile0 INSTANCEOF TileDescriptor VALUES
        yPos: .db $00
        xPos: .db $00
        characterCode: .db $00 
    .ENDST

    .DSTRUCT monsterbirdLeftSprite0Tile1 INSTANCEOF TileDescriptor VALUES
        yPos: .db $08
        xPos: .db $08
        characterCode: .db $08 
    .ENDST

    .DSTRUCT monsterbirdLeftSprite0Tile2 INSTANCEOF TileDescriptor VALUES
        yPos: .db $00
        xPos: .db $7D
        characterCode: .db $08 
    .ENDST

    .DSTRUCT monsterbirdLeftSprite0Tile3 INSTANCEOF TileDescriptor VALUES
        yPos: .db $7E
        xPos: .db $10
        characterCode: .db $7F 
    .ENDST

    .DSTRUCT monsterbirdLeftSprite0Tile4 INSTANCEOF TileDescriptor VALUES
        yPos: .db $00
        xPos: .db $80
        characterCode: .db $08 
    .ENDST

    .DSTRUCT monsterbirdLeftSprite0Tile5 INSTANCEOF TileDescriptor VALUES
        yPos: .db $81
        xPos: .db $10
        characterCode: .db $82 
    .ENDST

; 2nd entry of Pointer Table from 81B8 (indexed by _RAM_CF84_)
; Data from 81D0 to 81E3 (20 bytes)
monsterbirdLeftSprite1Descriptor:
    ; Number of tiles
    .db $06
    ; Colision data
    .db $54

    .DSTRUCT monsterbirdLeftSprite1Tile0 INSTANCEOF TileDescriptor VALUES
        yPos: .db $00
        xPos: .db $00
        characterCode: .db $00 
    .ENDST

    .DSTRUCT monsterbirdLeftSprite1Tile1 INSTANCEOF TileDescriptor VALUES
        yPos: .db $08
        xPos: .db $08
        characterCode: .db $08 
    .ENDST

    .DSTRUCT monsterbirdLeftSprite1Tile2 INSTANCEOF TileDescriptor VALUES
        yPos: .db $00
        xPos: .db $83
        characterCode: .db $08 
    .ENDST

    .DSTRUCT monsterbirdLeftSprite1Tile3 INSTANCEOF TileDescriptor VALUES
        yPos: .db $84
        xPos: .db $10
        characterCode: .db $85 
    .ENDST

    .DSTRUCT monsterbirdLeftSprite1Tile4 INSTANCEOF TileDescriptor VALUES
        yPos: .db $02
        xPos: .db $86
        characterCode: .db $0A 
    .ENDST

    .DSTRUCT monsterbirdLeftSprite1Tile5 INSTANCEOF TileDescriptor VALUES
        yPos: .db $87
        xPos: .db $12
        characterCode: .db $88 
    .ENDST


; Data from 81E4 to 81E4 (1 bytes)
monsterbirdRightAnimationDescriptor:
    ; Number of animation frames
    .db $02

    .dw monsterbirdRightSprite0Descriptor
    .dw monsterbirdRightSprite1Descriptor

monsterbirdRightSprite0Descriptor:
    .db $06
    .db $58

    .DSTRUCT monsterbirdRightSprite0Tile0 INSTANCEOF TileDescriptor VALUES
        yPos: .db $00
        xPos: .db $00
        characterCode: .db $00 
    .ENDST

    .DSTRUCT monsterbirdRightSprite0Tile1 INSTANCEOF TileDescriptor VALUES
        yPos: .db $08
        xPos: .db $08
        characterCode: .db $08 
    .ENDST

    .DSTRUCT monsterbirdRightSprite0Tile2 INSTANCEOF TileDescriptor VALUES
        yPos: .db $10
        xPos: .db $89
        characterCode: .db $08 
    .ENDST

    .DSTRUCT monsterbirdRightSprite0Tile3 INSTANCEOF TileDescriptor VALUES
        yPos: .db $8A
        xPos: .db $00
        characterCode: .db $8B 
    .ENDST

    .DSTRUCT monsterbirdRightSprite0Tile4 INSTANCEOF TileDescriptor VALUES
        yPos: .db $10
        xPos: .db $8C
        characterCode: .db $08 
    .ENDST

    .DSTRUCT monsterbirdRightSprite0Tile5 INSTANCEOF TileDescriptor VALUES
        yPos: .db $8D
        xPos: .db $00
        characterCode: .db $8E
    .ENDST

monsterbirdRightSprite1Descriptor:
    .db $06
    .db $58

    .DSTRUCT monsterbirdRightSprite1Tile0 INSTANCEOF TileDescriptor VALUES
        yPos: .db $00
        xPos: .db $00
        characterCode: .db $00 
    .ENDST

    .DSTRUCT monsterbirdRightSprite1Tile1 INSTANCEOF TileDescriptor VALUES
        yPos: .db $08
        xPos: .db $08
        characterCode: .db $08 
    .ENDST

    .DSTRUCT monsterbirdRightSprite1Tile2 INSTANCEOF TileDescriptor VALUES
        yPos: .db $10
        xPos: .db $8F
        characterCode: .db $08 
    .ENDST

    .DSTRUCT monsterbirdRightSprite1Tile3 INSTANCEOF TileDescriptor VALUES
        yPos: .db $90
        xPos: .db $00
        characterCode: .db $91 
    .ENDST

    .DSTRUCT monsterbirdRightSprite1Tile4 INSTANCEOF TileDescriptor VALUES
        yPos: .db $0E
        xPos: .db $92
        characterCode: .db $06 
    .ENDST

    .DSTRUCT monsterbirdRightSprite1Tile5 INSTANCEOF TileDescriptor VALUES
        yPos: .db $93
        xPos: .db $FE
        characterCode: .db $94 
    .ENDST
