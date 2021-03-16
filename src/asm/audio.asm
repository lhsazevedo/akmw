; Audio engine entry
audio_LABEL_984F_:
    call _LABEL_98AE_
    call +
    ld ix, v_soundMusicSoftwareChannels
    ld b, $07
-:
    push bc
    bit 7, (ix+0)
    call nz, _LABEL_9ACC_
    ld de, $0020
    add ix, de
    pop bc
    djnz -
    ret

+:
    ld a, (v_soundFadeOutVolume)
    or a
    jr z, ++
    ld a, (v_soundFadeOutTimer)
    dec a
    jr z, +
    ld (v_soundFadeOutTimer), a
    jr ++

+:
    ld a, $1E
    ld (v_soundFadeOutTimer), a
    ld a, (v_soundFadeOutVolume)
    dec a
    cp $03
    jr nz, +
    xor a
+:
    ld (v_soundFadeOutVolume), a
    ld (_RAM_C120_), a
    ld (_RAM_C140_), a
    ld (_RAM_C160_), a
++:
    ld hl, _RAM_C1D8_
    bit 7, (hl)
    ret z
    inc hl
    bit 5, (hl)
    jr z, +
    ld hl, _RAM_C178_
    set 2, (hl)
    ret

+:
    ld hl, _RAM_C158_
    set 2, (hl)
    ret

_LABEL_98AE_:
    ld a, (v_soundControl)
    bit 7, a
    jp z, resetSoundAndInitVolume
    cp $B4
    jp nc, resetSoundAndInitVolume
    sub $81
    ret m
    cp $30
    jr nc, +
    ld (v_soundNumber), a
+:
    ld c, a
    ld b, $00
    ld hl, _DATA_98DD_
    add hl, bc
    add hl, bc
    ; Load sound channel count
    ld c, (hl)
    ; b = ch1 flags
    inc hl
    ld b, (hl)
    ; de = 0x5F 
    ld de, $005F
    ; hl (flags) += 0x005f
    add hl, de

    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    ld a, (v_soundEffectPriority)
    ld e, a
    jp (hl)

; Pointer Table from 98DD to 993C (48 entries, indexed by v_soundControl)
_DATA_98DD_:
.dw _DATA_9ECD_ _DATA_9F81_ _DATA_A3BD_ _DATA_A57D_ _DATA_A757_ _DATA_A8E0_ _DATA_A937_ _DATA_AAD1_
.dw _DATA_AC56_ _DATA_AC81_ _DATA_AC9B_ _DATA_ACB2_ _DATA_ACC9_ _DATA_ACE1_ _DATA_AD02_ _DATA_AD1E_
.dw _DATA_AD2C_ _DATA_AD46_ _DATA_AD8D_ _DATA_ADA7_ _DATA_ADCC_ _DATA_AE59_ _DATA_AE7F_ _DATA_AEA3_
.dw _DATA_AEB3_ _DATA_AECC_ _DATA_AEE3_ _DATA_AEFA_ _DATA_AF14_ _DATA_AF36_ _DATA_AF6D_ _DATA_AF84_
.dw _DATA_AFBD_ _DATA_AFCA_ _DATA_AFE9_ _DATA_B034_ _DATA_B04D_ _DATA_B062_ _DATA_B076_ _DATA_B090_
.dw _DATA_B0AA_ _DATA_B0BE_ _DATA_B0DD_ _DATA_B0F4_ _DATA_B11D_ _DATA_B16F_ _DATA_B189_ _DATA_B1D4_

; Jump Table from 993D to 99A2 (51 entries, indexed by v_soundControl)
_DATA_993D_:
.dw _LABEL_99F0_ _LABEL_99F0_ _LABEL_99F0_ _LABEL_99F0_ _LABEL_99F0_ _LABEL_99F0_ _LABEL_99F0_ _LABEL_99F0_
.dw _LABEL_99F0_ _LABEL_9A7A_ _LABEL_9A7A_ _LABEL_9A7A_ _LABEL_99F9_ _LABEL_99FC_ _LABEL_99FC_ _LABEL_9A7D_
.dw _LABEL_9A7A_ _LABEL_9A00_ _LABEL_9A8B_ _LABEL_9A8B_ _LABEL_9A04_ _LABEL_9A6D_ _LABEL_9A85_ _LABEL_9A85_
.dw _LABEL_9A47_ _LABEL_9A7A_ _LABEL_9A1F_ _LABEL_9A81_ _LABEL_9A60_ _LABEL_9A24_ _LABEL_9A60_ _LABEL_9A24_
.dw _LABEL_9A7A_ _LABEL_9A00_ _LABEL_99F9_ _LABEL_9A43_ _LABEL_9A7D_ _LABEL_9A89_ _LABEL_9A89_ _LABEL_9A7D_
.dw _LABEL_9A89_ _LABEL_9A68_ _LABEL_9A68_ _LABEL_9A85_ _LABEL_9A7D_ _LABEL_9A7D_ _LABEL_99F0_ _LABEL_99F0_
.dw _LABEL_99A3_ audio_LABEL_99D3_ _LABEL_99BE_

; 49th entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_99A3_:
    ld a, (v_soundNumber)
    cp $13
    jr z, +
    cp $10
    ret nz
+:
    xor a
    ld (_RAM_C1B8_), a
    ld a, $80
    ld (_RAM_C158_), a
    ld hl, _RAM_C1D8_
    res 2, (hl)
    jp _LABEL_9AC6_

; 51st entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_99BE_:
    ld a, $0B
    ld (v_soundFadeOutVolume), a
    ld a, $1E
    ld (v_soundFadeOutTimer), a
    xor a
    ld (_RAM_C178_), a
    ld a, $FF
    out (Port_PSG), a
    jp _LABEL_9AC6_

; 50th entry of Jump Table from 993D (indexed by v_soundControl)
audio_LABEL_99D3_:
    xor a
    ld (_RAM_C1D8_), a
    ld (v_soundSoftwareChannelSevenState), a
    ld a, $DF
    ld a, $80
    ld (_RAM_C158_), a
    out (Port_PSG), a
    ld a, $C0
    ld (_RAM_C178_), a
    ld hl, _RAM_C1B8_
    res 2, (hl)
    jp _LABEL_9AC6_

; 1st entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_99F0_:
    call resetSoundAndInitVolume
    ld de, v_soundMusicSoftwareChannels
    jp _LABEL_9AA3_

; 13th entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_99F9_:
    xor a
    jr +

; 14th entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_99FC_:
    ld a, $60
    jr +

; 18th entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_9A00_:
    ld a, $70
    jr +

; 21st entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_9A04_:
    ld a, $20
+:
    cp e
    jp c, _LABEL_9AC6_
    ld hl, _RAM_C138_
    set 2, (hl)
    ld hl, _RAM_C158_
    set 2, (hl)
    ld hl, _RAM_C1D8_
    set 2, (hl)
    ld de, v_soundEffectsSoftwareChannels
    jp _LABEL_9A9D_

; 27th entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_9A1F_:
    call resetSoundAndInitVolume
    jr +

; 30th entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_9A24_:
    ld a, $70
    cp e
    jp c, _LABEL_9AC6_
    ld hl, _RAM_C138_
    set 2, (hl)
    ld hl, _RAM_C158_
    set 2, (hl)
    ld hl, _RAM_C178_
    set 2, (hl)
    ld hl, _RAM_C1D8_
    set 2, (hl)
+:
    ld de, v_soundEffectsSoftwareChannels
    jr _LABEL_9A9D_

; 36th entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_9A43_:
    ld a, $60
    jr +

; 25th entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_9A47_:
    ld a, $40
+:
    cp e
    jr c, _LABEL_9AC6_
    ld hl, _RAM_C178_
    set 2, (hl)
    ld hl, _RAM_C158_
    set 2, (hl)
    ld hl, _RAM_C1D8_
    set 2, (hl)
    ld de, _RAM_C1B8_
    jr _LABEL_9A9D_

; 29th entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_9A60_:
    ld a, (v_soundSoftwareChannelSevenState)
    or a
    jr nz, _LABEL_9AC6_
    jr _LABEL_9A6D_

; 42nd entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_9A68_:
    ld a, $80
    ld (v_soundSoftwareChannelSevenState), a
; 22nd entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_9A6D_:
    ld hl, _RAM_C1B8_
    set 2, (hl)
    call _LABEL_9E0F_
    ld de, _RAM_C1D8_
    jr _LABEL_9AA3_

; 10th entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_9A7A_:
    xor a
    jr _LABEL_9A8B_

; 16th entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_9A7D_:
    ld a, $60
    jr _LABEL_9A8B_

; 28th entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_9A81_:
    ld a, $70
    jr _LABEL_9A8B_

; 23rd entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_9A85_:
    ld a, $30
    jr _LABEL_9A8B_

; 38th entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_9A89_:
    ld a, $20
; 19th entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_9A8B_:
    cp e
    jr c, _LABEL_9AC6_
    ld hl, _RAM_C158_
    set 2, (hl)
    ld hl, _RAM_C1D8_
    set 2, (hl)
    ld de, _RAM_C1B8_
    jr _LABEL_9A9D_

_LABEL_9A9D_:
    ld (v_soundEffectPriority), a
    call _LABEL_9E0F_
; Load sound data from bc
_LABEL_9AA3_:
    ld h, b
    ld l, c
    ; b = ch count
    ld b, (hl)
    inc hl
-:
    push bc
    ; Copy 9 bytes from sound data to software channel current struct
    ld bc, $0009
    ldir

    ; unknow = 0x20
    ld a, $20
    ld (de), a

    ; note duration low = 0x01
    inc de
    ld a, $01
    ld (de), a

    ; note duration high = 0x00
    inc de
    xor a
    ld (de), a

    ; current play duration high = 0x00
    inc de
    ld (de), a

    ; current play duration low = 0x00
    inc de
    ld (de), a

    push hl
    ld hl, $0012
    add hl, de
    ex de, hl
    pop hl
    inc de
    pop bc
    djnz -
_LABEL_9AC6_:
    ld a, $80
    ld (v_soundControl), a
    ret

_LABEL_9ACC_:
    ld e, (ix+12)
    ld d, (ix+13)
    inc de
    ld (ix+12), e
    ld (ix+13), d
    ld l, (ix+10)
    ld h, (ix+11)
    or a
    sbc hl, de
    call z, _LABEL_9C39_
    ld e, (ix+16)
    ld d, (ix+17)
    ld a, e
    or d
    jr nz, +
    ld (ix+22), $0F
    jp _LABEL_9BA0_

+:
    bit 5, (ix+0)
    jr nz, +
    ld a, (ix+6)
    or a
    jr nz, _LABEL_9B16_
    ld (ix+18), e
    ld (ix+19), d
    jp _LABEL_9B5E_

_LABEL_9B0B_:
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    ret

_LABEL_9B16_:
    ld hl, _DATA_B28A_
    call _LABEL_9B0B_
    call _LABEL_9BF8_
    jr _LABEL_9B5E_

+:
    push de
    ld l, (ix+20)
    ld h, (ix+21)
    or a
    sbc hl, de
    push af
    ld a, l
    jp p, +
    neg
+:
    ld h, a
    ld e, (ix+12)
    call _LABEL_9EAE_
    ld e, (ix+10)
    dec e
    call _LABEL_9EBA_
    ld e, a
    ld d, $00
    pop af
    ld a, e
    jp p, +
    neg
    jr z, +
    dec d
    ld e, a
+:
    pop hl
    add hl, de
    ex de, hl
    ld (ix+18), e
    ld (ix+19), d
    ld a, (ix+6)
    or a
    jp nz, _LABEL_9B16_
_LABEL_9B5E_:
    ld a, (ix+7)
    or a
    jr nz, +
    ld a, (ix+8)
    cpl
    and $0F
    ld (ix+22), a
    jr ++

+:
    ld hl, _DATA_B1F9_
    call _LABEL_9B0B_
    call _LABEL_9BB2_
++:
    bit 6, (ix+0)
    jr nz, _LABEL_9BA0_
    ld a, (ix+1)
    cp $E0
    jr nz, +
    ld a, $C0
+:
    ld c, a
    ld a, (ix+18)
    and $0F
    or c
    call _LABEL_9DEB_
    ld a, (ix+18)
    and $F0
    or (ix+19)
    rrca
    rrca
    rrca
    rrca
    call _LABEL_9DEB_
_LABEL_9BA0_:
    ld a, (ix+1)
    add a, $10
    or (ix+22)
    jp _LABEL_9DEB_

; Data from 9BAB to 9BAE (4 bytes)
.db $90 $B0 $D0 $F0

-:
    ld (ix+14), a
_LABEL_9BB2_:
    push hl
    ld a, (ix+14)
    srl a
    push af
    ld c, a
    ld b, $00
    add hl, bc
    pop af
    ld a, (hl)
    ex de, hl
    pop hl
    jr c, ++
    rrca
    rrca
    rrca
    rrca
    or a
    jr z, -
    cp $10
    jr nz, +
    dec (ix+14)
    jr _LABEL_9BB2_

+:
    cp $20
    jr z, +++
    cp $30
    jr nz, ++
    inc de
    ld a, (de)
    ld (ix+14), a
    jr _LABEL_9BB2_

++:
    inc (ix+14)
    or $F0
    add a, (ix+8)
    inc a
    jr c, ++++
+++:
    xor a
++++:
    cpl
    and $0F
    ld (ix+22), a
    ret

-:
    ld (ix+15), a
_LABEL_9BF8_:
    push hl
    ld a, (ix+15)
    srl a
    push af
    ld c, a
    ld b, $00
    add hl, bc
    pop af
    ld a, (hl)
    ld c, l
    ld b, h
    pop hl
    jr c, ++
    rrca
    rrca
    rrca
    rrca
    or a
    jp z, -
    cp $10
    jr nz, +
    dec (ix+15)
    jr _LABEL_9BF8_

+:
    cp $20
    ret z
    cp $30
    jr nz, ++
    inc bc
    ld a, (bc)
    ld (ix+15), a
++:
    inc (ix+15)
    cpl
    and $0F
    ld l, a
    ld h, $00
    ex de, hl
    add hl, de
    ld (ix+18), l
    ld (ix+19), h
    ret

; Load sound data from software channel in IX
_LABEL_9C39_:
    ld e, (ix+3)
    ld d, (ix+4)

; Load sound data from rom pointed by DE
; Expects IX to be software channel pointer
_LABEL_9C3F_:
    ld a, (de)
    inc de
    cp $E0
    jp nc, _LABEL_9CCD_

    bit 3, (ix+0)
    jr nz, _LABEL_9CAC_

    or a
    jp p, ++

    sub $80
    jr z, +

    ; Transpose
    add a, (ix+5)
+:
    ld hl, _DATA_9E1C_
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, (hl)
    ld (ix+16), a
    inc hl
    ld a, (hl)
    ld (ix+17), a
    bit 5, (ix+0)
    jr z, _LABEL_9CC6_
    ld a, (de)
    inc de
    sub $80
    add a, (ix+5)
    ld hl, _DATA_9E1C_
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, (hl)
    ld (ix+20), a
    inc hl
    ld a, (hl)
    ld (ix+21), a
--:
    ld a, (de)
_LABEL_9C87_:
    inc de
++:
    push de
    ld h, a
    ld e, (ix+2)
    call _LABEL_9EAE_
    pop de
    ld (ix+10), l
    ld (ix+11), h
-:
    xor a
    ld (ix+14), a
    ld (ix+15), a
    ld (ix+3), e
    ld (ix+4), d
    xor a
    ld (ix+12), a
    ld (ix+13), a
    ret

_LABEL_9CAC_:
    ld (ix+17), a
    ld a, (de)
    inc de
    ld (ix+16), a
    bit 5, (ix+0)
    jr z, --
    ld a, (de)
    inc de
    ld (ix+21), a
    ld a, (de)
    inc de
    ld (ix+20), a
    jr --

_LABEL_9CC6_:
    ld a, (de)
    or a
    jp p, _LABEL_9C87_
    jr -

_LABEL_9CCD_:
    ld hl, +    ; Overriding return address
    push hl
    and $1F
    ld hl, _DATA_9CE4_
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    jp (hl)

+:
    inc de
    jp _LABEL_9C3F_

; Jump Table from 9CE4 to 9D07 (18 entries, indexed by unknown)
_DATA_9CE4_:
.dw _LABEL_9D1F_ _LABEL_9D24_ _LABEL_9D72_ _LABEL_9D29_ _LABEL_9D40_ _LABEL_9D4A_ _LABEL_9D50_ _LABEL_9D56_
.dw _LABEL_9D5C_ _LABEL_9D62_ _LABEL_9D9E_ _LABEL_9DB9_ _LABEL_9DCC_ _LABEL_9D45_ _LABEL_9D17_ _LABEL_9D68_
.dw _LABEL_9D6E_ _LABEL_9D08_

; 18th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D08_:
    ld a, (v_level)
    cp $10
    ret z
    push de
    ld bc, _DATA_A3BD_
    call _LABEL_99F0_
    pop de
    ret

; 15th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D17_:
    ld a, (de)
    add a, (ix+5)
    ld (ix+5), a
    ret

; 1st entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D1F_:
    ld a, (de)
    ld (ix+2), a
    ret

; 2nd entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D24_:
    ld a, (de)
    ld (ix+8), a
    ret

; 4th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D29_:
    ld a, (de)
    or $E0
    push af
    call _LABEL_9DEB_
    pop af
    or $FC
    inc a
    jr nz, +
    res 6, (ix+0)
    ret

+:
    set 6, (ix+0)
    ret

; 5th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D40_:
    ld a, (de)
    ld (ix+7), a
    ret

; 14th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D45_:
    ld a, (de)
    ld (ix+6), a
    ret

; 6th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D4A_:
    ex de, hl
    ld e, (hl)
    inc hl
    ld d, (hl)
    dec de
    ret

; 7th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D50_:
    set 5, (ix+0)
    dec de
    ret

; 8th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D56_:
    res 5, (ix+0)
    dec de
    ret

; 9th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D5C_:
    set 3, (ix+0)
    dec de
    ret

; 10th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D62_:
    res 3, (ix+0)
    dec de
    ret

; 16th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D68_:
    xor a
    ld (v_soundSoftwareChannelSevenState), a
    jr +

; 17th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D6E_:
    ld a, (de)
    ld (v_soundJankenMatchSoundFlags), a
; 3rd entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D72_:
    xor a
    ld (v_soundEffectPriority), a
+:
    ld (ix+0), a
    ld hl, _RAM_C138_
    res 2, (hl)
    ld hl, _RAM_C158_
    res 2, (hl)
    ld hl, _RAM_C178_
    res 2, (hl)
    ld hl, _RAM_C1D8_
    res 2, (hl)
    ld a, (_RAM_C1B8_)
    bit 7, a
    jr nz, +
    ld a, $E4
    out (Port_PSG), a
+:
    call _LABEL_9DE4_
    pop hl
    pop hl
    ret

; 11th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D9E_:
    ld a, (de)
    ld c, a
    inc de
    ld a, (de)
    ld b, a
    push bc
    push ix
    pop hl
    dec (ix+9)
    ld c, (ix+9)
    dec (ix+9)
    ld b, $00
    add hl, bc
    ld (hl), d
    dec hl
    ld (hl), e
    pop de
    dec de
    ret

; 12th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9DB9_:
    push ix
    pop hl
    ld c, (ix+9)
    ld b, $00
    add hl, bc
    ld e, (hl)
    inc hl
    ld d, (hl)
    inc (ix+9)
    inc (ix+9)
    ret

; 13th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9DCC_:
    ld a, (de)
    inc de
    add a, $17
    ld c, a
    ld b, $00
    push ix
    pop hl
    add hl, bc
    ld a, (hl)
    or a
    jr nz, +
    ld a, (de)
    ld (hl), a
+:
    inc de
    dec (hl)
    jp nz, _LABEL_9D4A_
    inc de
    ret

_LABEL_9DE4_:
    ld a, (ix+1)
    add a, $10
    or $0F
_LABEL_9DEB_:
    bit 2, (ix+0)
    ret nz
    out (Port_PSG), a
    ret

resetSoundAndInitVolume:
    exx
    ld hl, v_soundFadeOutVolume
    ld de, v_soundFadeOutVolume + 1
    ld bc, $00E4
    ld (hl), $00
    ldir
    exx
initVolume:
    exx
    ld hl, _DATA_9E18_
    ld c, Port_PSG
    ld b, $04
    otir
    xor a
    exx
    ret

_LABEL_9E0F_:
    ld a, $DF
    out (Port_PSG), a
    ld a, $FF
    out (Port_PSG), a
    ret

; Data from 9E18 to 9E1B (4 bytes)
_DATA_9E18_:
.db $9F $BF $DF $FF

; Data from 9E1C to 9E74 (89 bytes)
; PSG notes
_DATA_9E1C_:
.db $00 $00
.db $FF $03
.db $C7 $03
.db $90 $03
.db $5D $03
.db $2D $03
.db $FF $02
.db $D4 $02
.db $AB $02
.db $85 $02
.db $61 $02
.db $3F $02
.db $1E $02
.db $00 $02
.db $E3 $01
.db $C8 $01
.db $AF $01
.db $96 $01
.db $80 $01
.db $6A $01
.db $56 $01
.db $43 $01
.db $30 $01
.db $1F $01
.db $0F $01
.db $00 $01
.db $F2 $00
.db $E4 $00
.db $D7 $00
.db $CB $00
.db $C0 $00
.db $B5 $00
.db $AB $00
.db $A1 $00
.db $98 $00
.db $90 $00
.db $88 $00
.db $80 $00
.db $79 $00
.db $72 $00
.db $6C $00
.db $66 $00
.db $60 $00
.db $5B $00 $55

; Data from 9E75 to 9E98 (36 bytes)
_DATA_9E75_:
.db $00 $51 $00 $4C $00 $48 $00 $44 $00 $40 $00 $3C $00 $39 $00 $36
.db $00 $33 $00 $30 $00 $2D $00 $2B $00 $28 $00 $26 $00 $24 $00 $22
.db $00 $20 $00 $1E

; Data from 9E99 to 9EAD (21 bytes)
_DATA_9E99_:
.db $00 $1C $00 $1B $00 $19 $00 $18 $00 $16 $00 $15 $00 $14 $00 $13
.db $00 $12 $00 $11 $00

_LABEL_9EAE_:
    ld d, $00
    ld l, d
    ld b, $08
-:
    add hl, hl
    jr nc, +
    add hl, de
+:
    djnz -
    ret

_LABEL_9EBA_:
    ld b, $08
-:
    adc hl, hl
    ld a, h
    jr c, +
    cp e
    jr c, ++
+:
    sub e
    ld h, a
    or a
++:
    djnz -
    ld a, l
    rla
    cpl
    ret
