; 50th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateSeaHorseRight:
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jp nc, _LABEL_55A5_
    ld a, (ix+24)
    cp $FF
    jr nz, +
    inc (ix+23)
    ld a, (ix+23)
    cp $30
    jr c, _LABEL_58D2_
    inc (ix+22)
    ld a, (ix+22)
    cp $02
    jr z, _LABEL_58F2_
    ld (ix+24), $40
    ld (ix+18), $00
    ld (ix+17), $00
    ld (ix+16), $00
    ld (ix+15), $80
+:
    dec (ix+24)
    ld a, (ix+24)
    or a
    jr z, +
    ld c, a
    ld b, $00
    ld hl, lowSine
    add hl, bc
    ld a, (hl)
    add a, (ix+3)
    ld (ix+14), a
_LABEL_58D2_:
    ld hl, _DATA_8BF3_
    jp handleEntityAnimation

+:
    ld (ix+16), $00
    ld (ix+15), $00
    ld (ix+18), $FF
    ld (ix+17), $80
    ld (ix+23), $00
    ld (ix+24), $FF
    jr _LABEL_58D2_

_LABEL_58F2_:
    ld (ix+0), ENTITY_SEA_HORSE_LEFT
    ld (ix+22), $00
    ld (ix+23), $00
    ld (ix+24), $00
    ld hl, _DATA_8BF3_
    jp handleEntityAnimation
