; 34th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateMermanBubbles:
    bit 0, (ix+1)
    jr nz, +
    set 0, (ix+1)
    ld (ix+20), $12
    ld (ix+5), $08
    ld (ix+6), $08
    ld (ix+18), $FF
    ld a, (ix+23)
    ld c, a
    add a, a
    add a, c
    ld c, a
    ld b, $00
    ld hl, _DATA_52CF_
    add hl, bc
    ld a, (hl)
    ld (ix+17), a
    inc hl
    ld a, (hl)
    ld (ix+16), a
    inc hl
    ld a, (hl)
    ld (ix+15), a
    set 1, (ix+1)
+:
    ld a, (ix+9)
    or (ix+10)
    jr nz, +
    call tryToKillAlexIfColliding
    ld a, (ix+14)
    cp $18
    jp c, clearCurrentEntity
+:
    ld hl, _DATA_825C_
    jp handleEntityAnimation
