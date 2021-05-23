; Shared, Fallthrough
_LABEL_54DF_:
    ld a, (ix+0)
    ld (ix+29), a
    ld a, (ix+15)
    ld (ix+30), a
    ld a, (ix+16)
    ld (ix+31), a
    ld (ix+16), $01
    ld (ix+15), $00
    bit 7, a
    jr nz, +
    ld (ix+16), $FF
    ld (ix+15), $00
+:
    ld (ix+0), $4A
    ld (ix+23), $08
    inc (ix+22)
    ld a, $8B
    ld (v_soundControl), a
; 74th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x4A:
    ld a, (ix+9)
    or (ix+10)
    jr nz, +
    ld a, (v_entities.1.state)
    cp ALEX_DEAD
    jp z, _LABEL_5571_
+:
    ld a, (ix+22)
    cp $08
    jr nc, _LABEL_5547_
    dec (ix+23)
    ret nz
    res 0, (ix+1)
    ld a, (ix+29)
    ld (ix+0), a
    ld a, (ix+30)
    ld (ix+15), a
    ld a, (ix+31)
    ld (ix+16), a
    ret
