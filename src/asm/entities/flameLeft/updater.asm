updateFlameLeft:
    bit 0, (ix+1)
    jr nz, +
    ld a, (ix+9)
    or (ix+10)
    jr nz, _LABEL_5E60_
    set 0, (ix+1)
    set 1, (ix+1)
    ld (ix+5), $10
    ld (ix+6), $10
    ld (ix+15), $80
    ld (ix+16), $FF
    jr _LABEL_5E60_

+:
    call tryToKillAlexIfColliding
    ld a, (ix+3)
    or a
    jr nz, +
    call _LABEL_7D0B_
    jp nc, _LABEL_55A5_
+:
    ld de, $0900
    call getTileNearEntityWithXYOffset
    rlca
    jr nc, +
-:
    ld (ix+0), $3F
    ld (ix+15), $80
    ld (ix+16), $00
_LABEL_5E60_:
    ld hl, _DATA_85A6_
    ld a, (ix+3)
    or a
    jp nz, handleEntityAnimation
    ld hl, _DATA_826B_
    jp handleEntityAnimation

+:
    ld d, $08
    call _LABEL_7CA3_
    ld a, (hl)
    rlca
    jr c, _LABEL_5E60_
    jr -
