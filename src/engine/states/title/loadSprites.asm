loadTitleSprites:
    ; Reset entity data array length and pointer
    ld a, ENTITY_ARRAY_SIZE
    ld (v_entitydataArrayLength), a
    ld hl, v_entities
    ld (v_entitydataArrayPointer), hl

    call clearEntities

    ; Load Peticopter tiles
    ld a, $1D
    call loadAlexTilesToVRAM2000

    ; Load Boat tiles
    ld bc, $0036
    call loadAlexTilesToVRAM

    ; Load Alex jumping tiles
    ld bc, $002C
    call loadAlexTilesToVRAM

    ; Load Alex swiming tiles
    ld bc, $0014
    call loadAlexTilesToVRAM

    ; Load Janken tiles
    ld hl, jankenTiles
    ld de, $6400
    call decompressTilesToVram

    ; Load sprite descriptors
    ld a, $82
    ld (Mapper_Slot2), a
    ld hl, alexFlyingPeticopterLeftFrame0SpriteDescriptor + 1
    ld de, _RAM_C800_
    xor a
    call +
    ld hl, alexRidingBoatFrame0SpriteDescriptor + 1
    ld de, _RAM_C828_
    ld a, $0B
    call +
    ld hl, alexAirRightSpriteDescriptor + 1
    ld de, _RAM_C850_
    ld a, $13
    call +
    ld hl, _DATA_8E01_ + 1
    ld de, _RAM_C878_
    ld a, $19
+:
    push de
    ld bc, $0024
    ldir
    pop hl
    ld e, (hl)
    inc hl
    ld b, e
    ld d, $00
    add hl, de
    ld c, a
-:
    inc hl
    inc hl
    ld a, (hl)
    add a, c
    ld (hl), a
    djnz -

return:
    ret
