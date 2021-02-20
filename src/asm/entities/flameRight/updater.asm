updateFlameRight:
    call tryToKillAlexIfColliding
    ld a, (ix+3)
    or a
    jr nz, +
    call _LABEL_7D0B_
    jp nc, _LABEL_55A5_
+:
    ld de, $0910
    call getTileNearEntityWithXYOffset
    rlca
    jr nc, +
--:
    ld (ix+0), ENTITY_FLAME_LEFT
    ld (ix+15), $80
    ld (ix+16), $FF
-:
    ld hl, _DATA_85A6_
    ld a, (ix+3)
    or a
    jp nz, handleEntityAnimation
    ld hl, _DATA_8286_
    jp handleEntityAnimation

+:
    ld d, $08
    call _LABEL_7CA3_
    ld a, (hl)
    rlca
    jr c, -
    jr --
