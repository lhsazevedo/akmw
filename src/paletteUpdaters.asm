; 1st entry of Jump Table from D2C (indexed by v_level)
paletteUpdater_LABEL_1089_:
    ld a, (v_currentLevelIsBonusLevel)
    or a
    jp nz, _LABEL_10B0_
    ld hl, v_waterColorTimer
    dec (hl)
    jp p, _LABEL_10B0_
    ld (hl), $08
    inc hl
    ld a, (hl)
    cp $04
    jr c, +
    xor a
    ld (hl), a
+:
    inc (hl)
    ld e, a
    ld d, $00
    ld hl, _DATA_10D6_
    add hl, de
    ld de, $C00B
    ld a, (hl)
    call writeAToVRAM
_LABEL_10B0_:
    ld a, (v_alexActionState)
    or a
    ret z
    cp $03
    ret nc
    ld hl, v_invincibilityColorTimer
    dec (hl)
    ret p
    ld (hl), $04
    inc hl
    ld a, (hl)
    cp $04
    jr c, +
    xor a
    ld (hl), a
+:
    inc (hl)
    ld e, a
    ld d, $00
    ld hl, _DATA_10DA_
    add hl, de
    ld de, $C014
    ld a, (hl)
    jp writeAToVRAM

; Data from 10D6 to 10D9 (4 bytes)
_DATA_10D6_:
.db $FF $FD $FB $FD

; Data from 10DA to 10DD (4 bytes)
_DATA_10DA_:
.db $33 $3F $33 $3F

; 2nd entry of Jump Table from D2C (indexed by v_level)
paletteUpdater_LABEL_10DE_:
    jp _LABEL_10B0_

; 4th entry of Jump Table from D2C (indexed by v_level)
paletteUpdater_LABEL_10E1_:
    jp _LABEL_10B0_

; 6th entry of Jump Table from D2C (indexed by v_level)
paletteUpdater_LABEL_10E4_:
    jp _LABEL_10B0_

; 7th entry of Jump Table from D2C (indexed by v_level)
paletteUpdater_LABEL_10E7_:
    jp _LABEL_10B0_

; 8th entry of Jump Table from D2C (indexed by v_level)
paletteUpdater_LABEL_10EA_:
    jp _LABEL_10B0_

; 10th entry of Jump Table from D2C (indexed by v_level)
paletteUpdater_LABEL_10ED_:
    jp _LABEL_10B0_

; 11th entry of Jump Table from D2C (indexed by v_level)
paletteUpdater_LABEL_10F0_:
    jp _LABEL_10B0_

; 12th entry of Jump Table from D2C (indexed by v_level)
paletteUpdater_LABEL_10F3_:
    jp _LABEL_10B0_

; 13th entry of Jump Table from D2C (indexed by v_level)
paletteUpdater_LABEL_10F6_:
    jp _LABEL_10B0_

; 14th entry of Jump Table from D2C (indexed by v_level)
paletteUpdater_LABEL_10F9_:
    jp _LABEL_10B0_

; 15th entry of Jump Table from D2C (indexed by v_level)
paletteUpdater_LABEL_10FC_:
    jp _LABEL_10B0_
