updateBatRight:
    ld a, (ix+9)
    or (ix+10)
    jp nz, clearCurrentEntity
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jp nc, _LABEL_55A5_
    ld de, $0110
    call getTileNearEntityWithXYOffset
    rlca
    jp nc, _LABEL_4F43_
    ld (ix+0), ENTITY_BAT_LEFT
    ld (ix+16), $FF
    ld (ix+15), $80
    jp _LABEL_4F43_

_LABEL_4FAD_:
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
    ld a, $97
    ld (v_soundControl), a
    ld (iy+0), $22
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
