; 49th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateSeaHorseLeft:
    bit 0, (ix+1)
    jr nz, +
    ld (ix+5), $10
    ld (ix+6), $10
    ld a, (ix+9)
    or (ix+10)
    jr nz, _LABEL_5845_
    set 0, (ix+1)
    set 1, (ix+1)
+:
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jp nc, _LABEL_55A5_
    ld a, (ix+24)
    or a
    jr nz, +
    ld (ix+18), $00
    ld (ix+17), $80
    inc (ix+23)
    ld a, (ix+23)
    cp $30
    jr c, _LABEL_5845_
    inc (ix+22)
    ld a, (ix+22)
    cp $02
    jr z, _LABEL_5865_
    ld a, (ix+14)
    ld (ix+3), a
    ld (ix+18), $00
    ld (ix+17), $00
    ld (ix+16), $FF
    ld (ix+15), $80
+:
    inc (ix+24)
    ld a, (ix+24)
    cp $40
    jr z, +
    ld c, a
    ld b, $00
    ld hl, lowSine
    add hl, bc
    ld a, (hl)
    add a, (ix+3)
    ld (ix+14), a
_LABEL_5845_:
    ld hl, _DATA_8BF3_
    jp handleEntityAnimation

+:
    ld (ix+16), $00
    ld (ix+15), $00
    ld (ix+18), $00
    ld (ix+17), $80
    ld (ix+23), $00
    ld (ix+24), $00
    jr _LABEL_5845_

_LABEL_5865_:
    ld (ix+0), ENTITY_SEA_HORSE_RIGHT
    ld (ix+18), $FF
    ld (ix+17), $80
    ld (ix+22), $00
    ld (ix+23), $00
    ld (ix+24), $FF
    ld hl, _DATA_8BF3_
    jp handleEntityAnimation
