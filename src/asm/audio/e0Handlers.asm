; Jump Table from 9CE4 to 9D07 (18 entries, indexed by unknown)
eXCommandHandlers_DATA_9CE4_:
.dw handleE0 handleE1 handleE2 handleE3 handleE4 handleE5 handleE6 handleE7
.dw handleE8 handleE9 handleEA handleEB handleEC handleED handleEE handleEF
.dw handleF0 handleF1

; 18th entry of Jump Table from 9CE4 (indexed by unknown)
handleF1:
    ld a, (v_level)
    cp $10
    ret z
    push de
    ld bc, _DATA_A3BD_
    call handleMusic
    pop de
    ret

; 15th entry of Jump Table from 9CE4 (indexed by unknown)
handleEE:
    ld a, (de)
    add a, (ix + SoftwareChannel.transpose)
    ld (ix + SoftwareChannel.transpose), a
    ret

; 1st entry of Jump Table from 9CE4 (indexed by unknown)
handleE0:
    ld a, (de)
    ld (ix + SoftwareChannel.duration), a
    ret

; 2nd entry of Jump Table from 9CE4 (indexed by unknown)
handleE1:
    ld a, (de)
    ld (ix + SoftwareChannel.volume), a
    ret

; 4th entry of Jump Table from 9CE4 (indexed by unknown)
handleE3:
    ld a, (de)
    or $E0
    push af
    call writeAToPsgIfFlagBit2_LABEL_9DEB_
    pop af
    or $FC
    inc a
    jr nz, +
    res 6, (ix + SoftwareChannel.flags)
    ret

+:
    set 6, (ix + SoftwareChannel.flags)
    ret

; 5th entry of Jump Table from 9CE4 (indexed by unknown)
handleE4:
    ld a, (de)
    ld (ix + SoftwareChannel.envelope), a
    ret

; 14th entry of Jump Table from 9CE4 (indexed by unknown)
handleED:
    ld a, (de)
    ld (ix + SoftwareChannel.vibrato), a
    ret

; 6th entry of Jump Table from 9CE4 (indexed by unknown)
handleE5:
    ex de, hl
    ld e, (hl)
    inc hl
    ld d, (hl)
    dec de
    ret

; 7th entry of Jump Table from 9CE4 (indexed by unknown)
handleE6:
    set 5, (ix + SoftwareChannel.flags)
    dec de
    ret

; 8th entry of Jump Table from 9CE4 (indexed by unknown)
handleE7:
    res 5, (ix + SoftwareChannel.flags)
    dec de
    ret

; 9th entry of Jump Table from 9CE4 (indexed by unknown)
handleE8:
    set 3, (ix + SoftwareChannel.flags)
    dec de
    ret

; 10th entry of Jump Table from 9CE4 (indexed by unknown)
handleE9:
    res 3, (ix + SoftwareChannel.flags)
    dec de
    ret

; 16th entry of Jump Table from 9CE4 (indexed by unknown)
handleEF:
    xor a
    ld (v_soundSoftwareChannelSevenState), a
    jr +

; 17th entry of Jump Table from 9CE4 (indexed by unknown)
handleF0:
    ld a, (de)
    ld (v_soundJankenMatchSoundFlags), a
; 3rd entry of Jump Table from 9CE4 (indexed by unknown)
handleE2:
    xor a
    ld (v_soundEffectPriority), a
+:
    ld (ix + SoftwareChannel.flags), a
    ld hl, v_soundMusicChannels.2.flags
    res 2, (hl)
    ld hl, v_soundMusicChannels.3.flags
    res 2, (hl)
    ld hl, v_soundMusicChannels.4.flags
    res 2, (hl)
    ld hl, _RAM_C1D8_
    res 2, (hl)
    ld a, (v_soundEffectsChannels.2.flags)
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
handleEA:
    ld a, (de)
    ld c, a
    inc de
    ld a, (de)
    ld b, a
    push bc
    push ix
    pop hl
    dec (ix + SoftwareChannel.unknown1)
    ld c, (ix + SoftwareChannel.unknown1)
    dec (ix + SoftwareChannel.unknown1)
    ld b, $00
    add hl, bc
    ld (hl), d
    dec hl
    ld (hl), e
    pop de
    dec de
    ret

; 12th entry of Jump Table from 9CE4 (indexed by unknown)
handleEB:
    push ix
    pop hl
    ld c, (ix + SoftwareChannel.unknown1)
    ld b, $00
    add hl, bc
    ld e, (hl)
    inc hl
    ld d, (hl)
    inc (ix + SoftwareChannel.unknown1)
    inc (ix + SoftwareChannel.unknown1)
    ret

; 13th entry of Jump Table from 9CE4 (indexed by unknown)
handleEC:
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
    jp nz, handleE5
    inc de
    ret
