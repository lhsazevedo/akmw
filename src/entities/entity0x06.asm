updateEntity0x06:
    ld a, (v_entities.4.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jp nz, _LABEL_485A_
    ld hl, $0000
    ld (v_entities.4.xSpeed), hl
    ld (v_entities.4.ySpeed), hl
    dec (ix + Entity.unknown11)
    ret nz
    ld iy, v_entities.2
    ld a, (iy+0)
    or a
    jr z, +
    ld iy, v_entities.3
    ld a, (iy+0)
    or a
    jr z, +
    ld (ix + Entity.unknown11), $01
    ret

+:
    ld a, $A5
    ld (v_soundControl), a
    ld (ix + Entity.unknown11), $1E
    ld (iy+0), $09
    ld a, (v_entities.4.xPos.high)
    ld (iy+12), a
    ld a, (v_entities.4.yPos.high)
    ld (iy+14), a
    ld a, (v_entities.4.unknown3)
    and $02
    ld (iy+20), a
    dec (ix + Entity.unknown10)
    jp z, destroyCurrentEntity
    ret
