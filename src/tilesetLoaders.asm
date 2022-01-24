tilesetLoadersPointers:
.dw loadMtEthernalTileset
.dw loadMtEthernalStage2Tileset
.dw loadLakeFathomTileset
.dw loadTheIslandOfStNurariTileset
.dw loadLakeFathomPart2Tileset
.dw loadTheVillageOfNamuiTileset
.dw loadMtKaveTileset
.dw loadTheBlakwoodsTileset
.dw loadRiverTileset
.dw loadBingooLowlandTileset
.dw loadTheIslandOfStNurariTileset
.dw loadTheVillageOfNamuiTileset
.dw loadMtEthernalStage2Tileset
.dw loadTheKingdomOfNibanaPart1Tileset
.dw loadBingooLowlandTileset
.dw loadJankensCastleTileset
.dw loadCraggLakeTileset

loadMtEthernalTileset:
    ld de, $46A0
    ld bc, $0080
    ld l, $00
    call fillVram
    ld a, (v_level)
    ld hl, levelMainTilesetPointers - 2
    rst loadAthPointer
    ld de, $4720
    call decompressTilesToVram
    ld hl, tiles_aditionalSet4
    ld de, $4E60
    ld b, $A0
    rst memcpyToVRAM
    ld hl, tiles_aditionalSet1
    ld de, $4F00
    jp decompressTilesToVram

loadTheBlakwoodsTileset:
    ld hl, tiles_aditionalSet2
    ld de, $4EC0
    call decompressTilesToVram
    ld a, (v_level)
    ld hl, levelMainTilesetPointers - 2
    rst loadAthPointer
    ld de, $46A0
    jp decompressTilesToVram

loadJankensCastleTileset:
    ld de, $46A0
    ld bc, $0080
    ld l, $00
    call fillVram
    ld a, (v_level)
    ld hl, levelMainTilesetPointers - 2
    rst loadAthPointer
    ld de, $4720
    call decompressTilesToVram
    ld hl, tiles_aditionalSet1
    ld de, $4F00
    jp decompressTilesToVram

loadBingooLowlandTileset:
    ld de, $46A0
    ld bc, $0080
    ld l, $00
    call fillVram
    ld a, (v_level)
    ld hl, levelMainTilesetPointers - 2
    rst loadAthPointer
    ld de, $4720
    call decompressTilesToVram
    ld hl, tiles_aditionalSet2
    ld de, $4EC0
    jp decompressTilesToVram

loadLakeFathomTileset:
    ld de, $46A0
    ld bc, $0200
    ld l, $00
    call fillVram
    ld a, (v_level)
    ld hl, levelMainTilesetPointers - 2
    rst loadAthPointer
    ld de, $48A0
    call decompressTilesToVram
    ld hl, tiles_aditionalSet5
    ld de, $4D00
    call decompressTilesToVram
    ld hl, tiles_aditionalSet4
    ld de, $4E60
    ld b, $A0
    rst memcpyToVRAM
    ld hl, tiles_aditionalSet1
    ld de, $4F00
    jp decompressTilesToVram

loadTheIslandOfStNurariTileset:
    ld de, $46A0
    ld bc, $0080
    ld l, $00
    call fillVram
    ld a, (v_level)
    ld hl, levelMainTilesetPointers - 2
    rst loadAthPointer
    ld de, $4720
    jp decompressTilesToVram

loadTheVillageOfNamuiTileset:
    ld de, $46A0
    ld bc, $0080
    ld l, $00
    call fillVram
    ld a, $02
    ld hl, $847E
    rst loadAthPointer
    ld de, $4720
    call decompressTilesToVram
    ld a, (v_level)
    ld hl, levelMainTilesetPointers - 2
    rst loadAthPointer
    ld de, $4920
    call decompressTilesToVram
    ld hl, tiles_aditionalSet2
    ld de, $4EC0
    jp decompressTilesToVram

loadLakeFathomPart2Tileset:
    call loadMtEthernalTileset
    ld hl, tiles_aditionalSet5
    ld de, $4D00
    call decompressTilesToVram
    ld hl, tiles_aditionalSet3
    ld de, $47A0
    jp decompressTilesToVram

loadMtKaveTileset:
    ld de, $46A0
    ld bc, $0080
    ld l, $0A
    call fillVram
    ld a, (v_level)
    ld hl, levelMainTilesetPointers - 2
    rst loadAthPointer
    ld de, $4720
    jp decompressTilesToVram

loadRiverTileset:
    ld de, $46A0
    ld bc, $0080
    ld l, $00
    call fillVram
    ld a, (v_level)
    ld hl, levelMainTilesetPointers - 2
    rst loadAthPointer
    ld de, $4720
    call decompressTilesToVram
    ld hl, tiles_aditionalSet5
    ld de, $4D00
    call decompressTilesToVram
    ld hl, tiles_aditionalSet1
    ld de, $4F00
    call decompressTilesToVram
    ld hl, tiles_aditionalSet3
    ld de, $47A0
    jp decompressTilesToVram

loadMtEthernalStage2Tileset:
    ld de, $46A0
    ld bc, $0080
    ld l, $00
    call fillVram
    ld a, $02
    ld hl, $847E
    rst loadAthPointer
    ld de, $4720
    call decompressTilesToVram
    ld hl, tiles_aditionalSet2
    ld de, $4EC0
    call decompressTilesToVram
    ld hl, tiles_aditionalSet3
    ld de, $47A0
    jp decompressTilesToVram

loadCraggLakeTileset:
    ld de, $46A0
    ld bc, $0200
    ld l, $00
    call fillVram
    ld a, $03
    ld hl, $847E
    rst loadAthPointer
    ld de, $48A0
    call decompressTilesToVram
    ld a, (v_level)
    ld hl, levelMainTilesetPointers - 2
    rst loadAthPointer
    ld de, $4AA0
    call decompressTilesToVram
    ld hl, tiles_level17AditionalSet
    ld de, $4720
    call decompressTilesToVram
    ld hl, tiles_aditionalSet1
    ld de, $4F00
    jp decompressTilesToVram

loadTheKingdomOfNibanaPart1Tileset:
    ld de, $46A0
    ld bc, $0080
    ld l, $00
    call fillVram
    ld a, $0B
    ld hl, $847E
    rst loadAthPointer
    ld de, $4720
    call decompressTilesToVram
    ld a, (v_level)
    ld hl, levelMainTilesetPointers - 2
    rst loadAthPointer
    ld de, $4DA0
    jp decompressTilesToVram
