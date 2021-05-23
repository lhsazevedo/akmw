; 70th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x46:
    bit 0, (ix+1)
    jr nz, +
    ld a, $01
    ld (_RAM_C07F_), a
    ld (ix+5), $01
    ld (ix+6), $10
    ld (ix+23), $00
    ld a, (ix+9)
    or (ix+10)
    jr nz, _LABEL_5C96_
    set 0, (ix+1)
    ld (ix+2), $82
    ld (ix+16), $FF
    ld (ix+15), $80
+:
    ld a, (ix+12)
    cp $18
    jr c, _LABEL_5C9C_
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jr c, _LABEL_5C96_
    inc (ix+23)
    ld a, (ix+23)
    cp $08
    jp nc, _LABEL_5D7B_
    ld a, $8B
    ld (v_soundControl), a
    ld (ix+0), $47
    res 0, (ix+1)
    ld (ix+7), <_DATA_8458_
    ld (ix+8), >_DATA_8458_
    jr _LABEL_5CA0_

_LABEL_5C96_:
    ld hl, _DATA_8453_
    jp handleEntityAnimation

; Fallthrough
_LABEL_5C9C_:
    ld (ix+0), $48

; Shared
_LABEL_5CA0_:
    ld a, (ix+16)
    cpl
    ld (ix+16), a
    ld a, (ix+15)
    cpl
    inc a
    ld (ix+15), a
    ret
