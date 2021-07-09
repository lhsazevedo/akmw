; Used only on updateOpponentShowTextbox2
drawThoughtClouds:
    ; Clear entities 27 and 28
    ld hl, v_entities.27
    call clearEntity
    inc hl
    call clearEntity

    ; Copy 0xEC bytes from nametable at 0xCA08 to nametableCopy
    ld hl, _RAM_CA08_
    ld de, nametableCopy
    ld bc, $00EC
    ldir

    ; Add Alex thought cloud
    ld de, _RAM_CA08_
    call @patchNametableWithThoughtCloud

    ; Create Janken option preview entity
    ld iy, v_entities.28
    ld (iy + Entity.type), $0B
    ld hl, (v_horizontalScroll)
    ld a, $20
    add a, h
    ld (iy + Entity.xPos.high), a
    ld (iy + Entity.yPos.high), $3F

    ; Return if Alex doesn't have a Telepaty Ball
    ld a, (v_hasTelepathyBall)
    or a
    ret z

    ; Add opponent thought cloud
    ld iy, v_entities.27
    ld (iy + Entity.type), $0B
    ld a, $B0
    add a, h
    ld (iy + Entity.xPos.high), a
    ld (iy + Entity.yPos.high), $3F
    ld de, _RAM_CA2C_
@patchNametableWithThoughtCloud:
    ld hl, _DATA_92A8_
    ld bc, $0408
@lineLoop:
    push bc
    push de
    ld b, $00
    ldir
    pop de
    ex de, hl
    ld c, $40
    add hl, bc
    ex de, hl
    pop bc
    djnz @lineLoop
    ret
