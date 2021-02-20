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
    jp nc, bat_LABEL_4F43_
    ld (ix+0), ENTITY_BAT_LEFT
    ld (ix+16), $FF
    ld (ix+15), $80
    jp bat_LABEL_4F43_
