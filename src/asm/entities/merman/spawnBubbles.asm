spawnMermanBubbles:
    ld a, (ix+18)
    cp $FF
    ret nz
    ld b, $05
    ld de, $0020
    ld iy, _RAM_C500_
-:
    ld a, (iy+0)
    or a
    jr nz, +
    ld a, SOUND_MERMAN_BUBBLES
    ld (v_soundControl), a
    ld (iy+0), ENTITY_MERMAN_BUBBLE
    ld a, (ix+14)
    ld (iy+14), a
    ld a, (ix+12)
    ld (iy+12), a
    ld a, (ix+9)
    ld (iy+9), a
    set 1, (iy+1)
    inc (ix+24)
    ld a, (ix+24)
    and $07
    ld (iy+23), a
+:
    add iy, de
    djnz -
    ret