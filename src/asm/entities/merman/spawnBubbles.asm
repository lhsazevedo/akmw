spawnMermanBubbles:
    ld a, (ix + Entity.ySpeed.high)
    cp $FF
    ret nz
    ld b, $05
    ld de, $0020
    ld iy, v_entities.17
-:
    ld a, (iy+0)
    or a
    jr nz, +
    ld a, SOUND_MERMAN_BUBBLES
    ld (v_soundControl), a
    ld (iy+0), ENTITY_MERMAN_BUBBLE
    ld a, (ix + Entity.yPos.high)
    ld (iy+14), a
    ld a, (ix + Entity.xPos.high)
    ld (iy+12), a
    ld a, (ix + Entity.isOffScreenFlags.low)
    ld (iy+9), a
    set 1, (iy+1)
    inc (ix + Entity.unknown6)
    ld a, (ix + Entity.unknown6)
    and $07
    ld (iy+23), a
+:
    add iy, de
    djnz -
    ret