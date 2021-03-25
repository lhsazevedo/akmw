; Audio engine entry
audioEntry_LABEL_984F_:
    call readSoundRequest
    call +

    ; Run each channel
    ld ix, v_soundMusicSoftwareChannels
    ld b, $07
-:
    push bc
    bit 7, (ix + SoftwareChannel.flags)
    call nz, runChannel_LABEL_9ACC_
    ld de, $0020
    add ix, de
    pop bc
    djnz -
    ret

; @TODO
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
    ld (v_soundMusicChannels.1.volume), a
    ld (v_soundMusicChannels.2.volume), a
    ld (v_soundMusicChannels.3.volume), a
++:
    ; @TODO
    ld hl, _RAM_C1D8_
    bit 7, (hl)
    ret z
    inc hl
    bit 5, (hl)
    jr z, +
    ld hl, v_soundMusicChannels.4.flags
    set 2, (hl)
    ret

+:
    ld hl, v_soundMusicChannels.3.flags
    set 2, (hl)
    ret

readSoundRequest:
    ld a, (v_soundControl)

    ; Deactivage engine if bit 7 is not set or sound > 0xB3
    bit 7, a
    jp z, resetSoundAndVolume
    cp $B4
    jp nc, resetSoundAndVolume

    ; a -= 0x81
    sub $81

    ; Return if a < 0x81
    ret m

    ; Save soundNumber if a < 0x30
    cp $30
    jr nc, +
    ld (v_soundNumber), a
+:
    ; Load sound data pointer into BC from table at 98DD indexed by sound
    ld c, a
    ld b, $00
    ld hl, sounds
    add hl, bc
    add hl, bc
    ld c, (hl)
    inc hl
    ld b, (hl)

    ; Jump to the respective sound handler at table 993D
    ld de, _sizeof_sounds - 1
    add hl, de
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a

    ld a, (v_soundEffectPriority)
    ld e, a
    jp (hl)

; Pointer Table from 98DD to 993C (48 entries, indexed by v_soundControl)
sounds:
.dw _DATA_9ECD_ _DATA_9F81_ _DATA_A3BD_ _DATA_A57D_ _DATA_A757_ _DATA_A8E0_ _DATA_A937_ _DATA_AAD1_
.dw _DATA_AC56_ _DATA_AC81_ _DATA_AC9B_ _DATA_ACB2_ _DATA_ACC9_ _DATA_ACE1_ _DATA_AD02_ _DATA_AD1E_
.dw _DATA_AD2C_ _DATA_AD46_ _DATA_AD8D_ _DATA_ADA7_ _DATA_ADCC_ _DATA_AE59_ _DATA_AE7F_ _DATA_AEA3_
.dw _DATA_AEB3_ _DATA_AECC_ _DATA_AEE3_ _DATA_AEFA_ _DATA_AF14_ _DATA_AF36_ _DATA_AF6D_ _DATA_AF84_
.dw _DATA_AFBD_ _DATA_AFCA_ _DATA_AFE9_ _DATA_B034_ _DATA_B04D_ _DATA_B062_ _DATA_B076_ _DATA_B090_
.dw _DATA_B0AA_ _DATA_B0BE_ _DATA_B0DD_ _DATA_B0F4_ _DATA_B11D_ _DATA_B16F_ _DATA_B189_ _DATA_B1D4_

; Jump Table from 993D to 99A2 (51 entries, indexed by v_soundControl)
_DATA_993D_:
.dw handleMusic handleMusic handleMusic handleMusic handleMusic handleMusic handleMusic handleMusic
.dw handleMusic _LABEL_9A7A_ _LABEL_9A7A_ _LABEL_9A7A_ _LABEL_99F9_ _LABEL_99FC_ _LABEL_99FC_ _LABEL_9A7D_
.dw _LABEL_9A7A_ _LABEL_9A00_ _LABEL_9A8B_ _LABEL_9A8B_ _LABEL_9A04_ _LABEL_9A6D_ _LABEL_9A85_ _LABEL_9A85_
.dw _LABEL_9A47_ _LABEL_9A7A_ _LABEL_9A1F_ _LABEL_9A81_ _LABEL_9A60_ _LABEL_9A24_ _LABEL_9A60_ _LABEL_9A24_
.dw _LABEL_9A7A_ _LABEL_9A00_ _LABEL_99F9_ _LABEL_9A43_ _LABEL_9A7D_ _LABEL_9A89_ _LABEL_9A89_ _LABEL_9A7D_
.dw _LABEL_9A89_ _LABEL_9A68_ _LABEL_9A68_ _LABEL_9A85_ _LABEL_9A7D_ _LABEL_9A7D_ handleMusic handleMusic
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
    ld (v_soundEffectsChannels.2.flags), a
    ld a, $80
    ld (v_soundMusicChannels.3.flags), a
    ld hl, _RAM_C1D8_
    res 2, (hl)
    jp resetSoundControl

; 51st entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_99BE_:
    ld a, $0B
    ld (v_soundFadeOutVolume), a
    ld a, $1E
    ld (v_soundFadeOutTimer), a
    xor a
    ld (v_soundMusicChannels.4.flags), a
    ld a, $FF
    out (Port_PSG), a
    jp resetSoundControl

; 50th entry of Jump Table from 993D (indexed by v_soundControl)
audio_LABEL_99D3_:
    xor a
    ld (_RAM_C1D8_), a
    ld (v_soundSoftwareChannelSevenState), a
    ld a, $DF
    ld a, $80
    ld (v_soundMusicChannels.3.flags), a
    out (Port_PSG), a
    ld a, $C0
    ld (v_soundMusicChannels.4.flags), a
    ld hl, v_soundEffectsChannels.2.flags
    res 2, (hl)
    jp resetSoundControl

; 1st entry of Jump Table from 993D (indexed by v_soundControl)
; Music handler
handleMusic:
    call resetSoundAndVolume
    ld de, v_soundMusicSoftwareChannels
    jp realHandleMusic

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
    jp c, resetSoundControl
    ld hl, v_soundMusicChannels.2.flags
    set 2, (hl)
    ld hl, v_soundMusicChannels.3.flags
    set 2, (hl)
    ld hl, _RAM_C1D8_
    set 2, (hl)
    ld de, v_soundEffectsChannels.1
    jp _LABEL_9A9D_

; 27th entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_9A1F_:
    call resetSoundAndVolume
    jr +

; 30th entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_9A24_:
    ld a, $70
    cp e
    jp c, resetSoundControl
    ld hl, v_soundMusicChannels.2.flags
    set 2, (hl)
    ld hl, v_soundMusicChannels.3.flags
    set 2, (hl)
    ld hl, v_soundMusicChannels.4.flags
    set 2, (hl)
    ld hl, _RAM_C1D8_
    set 2, (hl)
+:
    ld de, v_soundEffectsChannels.1
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
    jr c, resetSoundControl
    ld hl, v_soundMusicChannels.4.flags
    set 2, (hl)
    ld hl, v_soundMusicChannels.3.flags
    set 2, (hl)
    ld hl, _RAM_C1D8_
    set 2, (hl)
    ld de, v_soundEffectsChannels.2
    jr _LABEL_9A9D_

; 29th entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_9A60_:
    ld a, (v_soundSoftwareChannelSevenState)
    or a
    jr nz, resetSoundControl
    jr _LABEL_9A6D_

; 42nd entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_9A68_:
    ld a, $80
    ld (v_soundSoftwareChannelSevenState), a
; 22nd entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_9A6D_:
    ld hl, v_soundEffectsChannels.2.flags
    set 2, (hl)
    call _LABEL_9E0F_
    ld de, _RAM_C1D8_
    jr realHandleMusic

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
    jr c, resetSoundControl
    ld hl, v_soundMusicChannels.3.flags
    set 2, (hl)
    ld hl, _RAM_C1D8_
    set 2, (hl)
    ld de, v_soundEffectsChannels.2
    jr _LABEL_9A9D_

_LABEL_9A9D_:
    ld (v_soundEffectPriority), a
    call _LABEL_9E0F_
; Load sound data from bc
; Real music handler tail called from 99F0
realHandleMusic:
    ld h, b
    ld l, c
    ; b = ch count
    ld b, (hl)
    inc hl

; Music channel init loop
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

    ; Note duration high = 0x00
    inc de
    xor a
    ld (de), a

    ; Current play duration high = 0x00
    inc de
    ld (de), a

    ; Current play duration low = 0x00
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

; Reset sound control
resetSoundControl:
    ld a, $80
    ld (v_soundControl), a
    ret

; Run soft channel
runChannel_LABEL_9ACC_:
    ; Increment current play duration
    ld e, (ix + SoftwareChannel.currentPlayDuration.low)
    ld d, (ix + SoftwareChannel.currentPlayDuration.high)
    inc de
    ld (ix + SoftwareChannel.currentPlayDuration.low), e
    ld (ix + SoftwareChannel.currentPlayDuration.high), d

    ; Read next note if current one has ended
    ld l, (ix + SoftwareChannel.noteDuration.low)
    ld h, (ix + SoftwareChannel.noteDuration.high)
    or a
    sbc hl, de
    call z, readChannelInstruction

    ; Mute volume if frequency is 0x0000 (and call 9C87)
    ld e, (ix + SoftwareChannel.noteFrequency.low)
    ld d, (ix + SoftwareChannel.noteFrequency.high)
    ld a, e
    or d
    jr nz, +
    ld (ix + SoftwareChannel.volumeToWrite), $0F
    jp writeChannelVolume

+:
    ; @TODO: What bit 5 means?
    bit 5, (ix + SoftwareChannel.flags)
    jr nz, +

    ld a, (ix + SoftwareChannel.vibrato)
    or a
    jr nz, applyVibratoThenEnvelope_LABEL_9B16_
    ld (ix + SoftwareChannel.frequencyToWrite.low), e
    ld (ix + SoftwareChannel.frequencyToWrite.high), d
    jp envelopeOrVolume_LABEL_9B5E_

; Calc address to word table entry a-1 
tbl_addr_LABEL_9B0B_:
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

applyVibratoThenEnvelope_LABEL_9B16_:
    ld hl, vibratos
    call tbl_addr_LABEL_9B0B_
    call vibrato_LABEL_9BF8_
    jr envelopeOrVolume_LABEL_9B5E_

+:
    push de
    ld l, (ix + SoftwareChannel.noteFrequency2.low)
    ld h, (ix + SoftwareChannel.noteFrequency2.high)
    or a
    sbc hl, de
    push af
    ld a, l
    jp p, +
    neg
+:
    ld h, a
    ld e, (ix + SoftwareChannel.currentPlayDuration.low)
    call littleEndianMultiply_LABEL_9EAE_
    ld e, (ix + SoftwareChannel.noteDuration.low)
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
    ld (ix + SoftwareChannel.frequencyToWrite.low), e
    ld (ix + SoftwareChannel.frequencyToWrite.high), d
    ld a, (ix + SoftwareChannel.vibrato)
    or a
    jp nz, applyVibratoThenEnvelope_LABEL_9B16_

envelopeOrVolume_LABEL_9B5E_:
    ; If channel has an envelope, apply it. If not, just channel volume
    ld a, (ix + SoftwareChannel.envelope)
    or a
    jr nz, @envelope

    ld a, (ix + SoftwareChannel.volume)
    cpl
    and $0F
    ld (ix + SoftwareChannel.volumeToWrite), a
    jr @done

@envelope:
    ld hl, envelopes
    call tbl_addr_LABEL_9B0B_
    call applyEnvelope_LABEL_9BB2_

@done:
    bit 6, (ix + SoftwareChannel.flags)
    jr nz, writeChannelVolume

    ld a, (ix + SoftwareChannel.hardwareChannel)

    ; @TODO: Why set a to 0xC0 (0b11000000) if noise channel?
    ; Shouldn't it be 0xE0 (0b11100000) ? 
    cp PSG_CONTROL_LATCH | PSG_CHANNEL_3
    jr nz, +
    ld a, $C0

+:
    ; Here we put together the channel and low nibble
    ; of the low frequency byte, then write it.
    ld c, a
    ld a, (ix + SoftwareChannel.frequencyToWrite.low)
    and $0F
    or c
    call writeAToPsgIfFlagBit2_LABEL_9DEB_

    ; Now we load the high nibble of the low frequency
    ; byte and add it to the high frequency byte.
    ld a, (ix + SoftwareChannel.frequencyToWrite.low)
    and $F0
    or (ix + SoftwareChannel.frequencyToWrite.high)

    ; Swap the nibbles and write it
    rrca
    rrca
    rrca
    rrca
    call writeAToPsgIfFlagBit2_LABEL_9DEB_

writeChannelVolume:
    ld a, (ix + SoftwareChannel.hardwareChannel)
    add a, $10
    or (ix + SoftwareChannel.volumeToWrite)
    jp writeAToPsgIfFlagBit2_LABEL_9DEB_

; Data from 9BAB to 9BAE (4 bytes)
.db $90 $B0 $D0 $F0

-:
    ld (ix + SoftwareChannel.envelopeCounter), a
applyEnvelope_LABEL_9BB2_:
    push hl
    ld a, (ix + SoftwareChannel.envelopeCounter)
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
    dec (ix + SoftwareChannel.envelopeCounter)
    jr applyEnvelope_LABEL_9BB2_

+:
    cp $20
    jr z, +++
    cp $30
    jr nz, ++
    inc de
    ld a, (de)
    ld (ix + SoftwareChannel.envelopeCounter), a
    jr applyEnvelope_LABEL_9BB2_

++:
    inc (ix + SoftwareChannel.envelopeCounter)
    or $F0
    add a, (ix + SoftwareChannel.volume)
    inc a
    jr c, ++++
+++:
    xor a
++++:
    cpl
    and $0F
    ld (ix + SoftwareChannel.volumeToWrite), a
    ret

-:
    ld (ix + SoftwareChannel.vibratoCounter), a
vibrato_LABEL_9BF8_:
    push hl
    ld a, (ix + SoftwareChannel.vibratoCounter)
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
    dec (ix + SoftwareChannel.vibratoCounter)
    jr vibrato_LABEL_9BF8_

+:
    cp $20
    ret z
    cp $30
    jr nz, ++
    inc bc
    ld a, (bc)
    ld (ix + SoftwareChannel.vibratoCounter), a
++:
    inc (ix + SoftwareChannel.vibratoCounter)
    cpl
    and $0F
    ld l, a
    ld h, $00
    ex de, hl
    add hl, de
    ld (ix + SoftwareChannel.frequencyToWrite.low), l
    ld (ix + SoftwareChannel.frequencyToWrite.high), h
    ret

; Load sound data from software channel in IX
readChannelInstruction:
    ld e, (ix + SoftwareChannel.dataPointer.low)
    ld d, (ix + SoftwareChannel.dataPointer.high)

; Load sound data from rom pointed by DE
; Expects IX to be software channel pointer
readInstruction:
    ; Read byte
    ld a, (de)

    ; Jump to handleEXCommands_LABEL_9CCD_ if byte >= $E0
    inc de
    cp $E0
    jp nc, handleEXCommands_LABEL_9CCD_

    ; Jump to _LABEL_9CAC_ if flag 3 is set
    ; @TODO: What flag 3 controls?
    bit 3, (ix + SoftwareChannel.flags)
    jr nz, _LABEL_9CAC_

    ; Jump to ++ if byte is even
    or a
    jp p, ++

    ; Remove control bit
    sub $80

    ; Skip transpose if command is disable
    jr z, +

    ; Transpose
    add a, (ix + SoftwareChannel.transpose)
+:
    ; Load note PSG frequency
    ld hl, noteFrequencies
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, (hl)
    ld (ix + SoftwareChannel.noteFrequency.low), a
    inc hl
    ld a, (hl)
    ld (ix + SoftwareChannel.noteFrequency.high), a

    ; Jump to _LABEL_9CC6_ if bit 5 of flags is set
    bit 5, (ix + SoftwareChannel.flags)
    jr z, _LABEL_9CC6_

    ld a, (de)
    inc de
    sub $80
    add a, (ix + SoftwareChannel.transpose)
    ld hl, noteFrequencies
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, (hl)
    ld (ix + SoftwareChannel.noteFrequency2.low), a
    inc hl
    ld a, (hl)
    ld (ix + SoftwareChannel.noteFrequency2.high), a
--:
    ld a, (de)

; Apply duration
; Reset envelope and vibrato
; Increment data pointer
; Reset play duration 
note_LABEL_9C87_:
    inc de
++:
    push de

    ; Load next duration into h,
    ; duration multiplier into e
    ; and call littleEndianMultiply_LABEL_9EAE_
    ld h, a
    ld e, (ix + SoftwareChannel.duration)
    call littleEndianMultiply_LABEL_9EAE_

    pop de

    ; Save the duration
    ld (ix + SoftwareChannel.noteDuration.low), l
    ld (ix + SoftwareChannel.noteDuration.high), h

-:
    ; Reset envelope and vibrato counters
    xor a
    ld (ix + SoftwareChannel.envelopeCounter), a
    ld (ix + SoftwareChannel.vibratoCounter), a

    ; Update data pointer
    ld (ix + SoftwareChannel.dataPointer.low), e
    ld (ix + SoftwareChannel.dataPointer.high), D

    ; Reset current play duration
    xor a
    ld (ix + SoftwareChannel.currentPlayDuration.low), a
    ld (ix + SoftwareChannel.currentPlayDuration.high), a
    ret

_LABEL_9CAC_:
    ld (ix + SoftwareChannel.noteFrequency.high), a
    ld a, (de)
    inc de
    ld (ix + SoftwareChannel.noteFrequency.low), a
    bit 5, (ix + SoftwareChannel.flags)
    jr z, --
    ld a, (de)
    inc de
    ld (ix + SoftwareChannel.noteFrequency2.high), a
    ld a, (de)
    inc de
    ld (ix + SoftwareChannel.noteFrequency2.low), a
    jr --

_LABEL_9CC6_:
    ; Jump to note_LABEL_9C87_ if byte pointed by DE is even
    ld a, (de)
    or a
    jp p, note_LABEL_9C87_
    jr -

handleEXCommands_LABEL_9CCD_:
    ld hl, +    ; Overriding return address
    push hl
    and $1F
    ld hl, eXCommandHandlers_DATA_9CE4_
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
    jp readInstruction

; Jump Table from 9CE4 to 9D07 (18 entries, indexed by unknown)
eXCommandHandlers_DATA_9CE4_:
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
    call handleMusic
    pop de
    ret

; 15th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D17_:
    ld a, (de)
    add a, (ix + SoftwareChannel.transpose)
    ld (ix + SoftwareChannel.transpose), a
    ret

; 1st entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D1F_:
    ld a, (de)
    ld (ix + SoftwareChannel.duration), a
    ret

; 2nd entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D24_:
    ld a, (de)
    ld (ix + SoftwareChannel.volume), a
    ret

; 4th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D29_:
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
_LABEL_9D40_:
    ld a, (de)
    ld (ix + SoftwareChannel.envelope), a
    ret

; 14th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D45_:
    ld a, (de)
    ld (ix + SoftwareChannel.vibrato), a
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
    set 5, (ix + SoftwareChannel.flags)
    dec de
    ret

; 8th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D56_:
    res 5, (ix + SoftwareChannel.flags)
    dec de
    ret

; 9th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D5C_:
    set 3, (ix + SoftwareChannel.flags)
    dec de
    ret

; 10th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D62_:
    res 3, (ix + SoftwareChannel.flags)
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
_LABEL_9D9E_:
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
_LABEL_9DB9_:
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
    ld a, (ix + SoftwareChannel.hardwareChannel)
    add a, $10
    or $0F
writeAToPsgIfFlagBit2_LABEL_9DEB_:
    bit 2, (ix + SoftwareChannel.flags)
    ret nz
    out (Port_PSG), a
    ret

resetSoundAndVolume:
    exx
    ld hl, v_soundFadeOutVolume
    ld de, v_soundFadeOutVolume + 1
    ld bc, $00E4
    ld (hl), $00
    ldir
    exx
resetVolume:
    exx
    ld hl, psgResetVolumeBytes
    ld c, Port_PSG
    ld b, _sizeof_psgResetVolumeBytes
    otir
    xor a
    exx
    ret

_LABEL_9E0F_:
    ld a, PSG_CONTROL_LATCH | PSG_CHANNEL_2 | PSG_LATCH_VOLUME | $F
    out (Port_PSG), a
    ld a, PSG_CONTROL_LATCH | PSG_CHANNEL_3 | PSG_LATCH_VOLUME | $F
    out (Port_PSG), a
    ret

; Data from 9E18 to 9E1B (4 bytes)
psgResetVolumeBytes:
.db PSG_CONTROL_LATCH | PSG_CHANNEL_0 | PSG_LATCH_VOLUME | $F
.db PSG_CONTROL_LATCH | PSG_CHANNEL_1 | PSG_LATCH_VOLUME | $F
.db PSG_CONTROL_LATCH | PSG_CHANNEL_2 | PSG_LATCH_VOLUME | $F
.db PSG_CONTROL_LATCH | PSG_CHANNEL_3 | PSG_LATCH_VOLUME | $F

; PSG notes
noteFrequencies:
; --
.db $00 $00
; A2
.db $FF $03
; A#2
.db $C7 $03
; B2
.db $90 $03
; C3
.db $5D $03
; C#3
.db $2D $03
; D3
.db $FF $02
; D#3
.db $D4 $02
; E3
.db $AB $02
; F3
.db $85 $02
; F#3
.db $61 $02
; G3
.db $3F $02
; G#3
.db $1E $02
; A3
.db $00 $02
; A#3
.db $E3 $01
; B3
.db $C8 $01
; C4
.db $AF $01
; C#4
.db $96 $01
; D4
.db $80 $01
; D#4
.db $6A $01
; E4
.db $56 $01
; F4
.db $43 $01
; F#4
.db $30 $01
; G4
.db $1F $01
; G#4
.db $0F $01
; A4
.db $00 $01
; A#4
.db $F2 $00
; B4
.db $E4 $00
; C5
.db $D7 $00
; C#5
.db $CB $00
; D5
.db $C0 $00
; D#5
.db $B5 $00
; E5
.db $AB $00
; F5
.db $A1 $00
; F#5
.db $98 $00
; G5
.db $90 $00
; G#5
.db $88 $00
; A5
.db $80 $00
; A#5
.db $79 $00
; B5
.db $72 $00
; C6
.db $6C $00
; C#6
.db $66 $00
; D6
.db $60 $00
; D#6
.db $5B $00
; E6
.db $55 $00
; F6
.db $51 $00
; F#6
.db $4C $00
; G6
.db $48 $00
; G#6
.db $44 $00
; A6
.db $40 $00
; A#6
.db $3C $00
; B6
.db $39 $00
; C7
.db $36 $00
; C#7
.db $33 $00
; D7
.db $30 $00
; D#7
.db $2D $00
; E7
.db $2B $00
; F7
.db $28 $00
; F#7
.db $26 $00
; G7
.db $24 $00
; G#7
.db $22 $00
; A7
.db $20 $00
; A#7
.db $1E $00
; B7
.db $1C $00
; C8
.db $1B $00
; C#8
.db $19 $00
; D8
.db $18 $00
; D#8
.db $16 $00
; E8
.db $15 $00
; F8
.db $14 $00
; F#8
.db $13 $00
; G8
.db $12 $00
; G#8
.db $11 $00

; h = Next duration
; e = Channel duration multiplier
littleEndianMultiply_LABEL_9EAE_:
    ; hl = d $00
    ; for (i = 0; i < 8; i++) {
    ;   hl += hl
    ;   if (carry) {
    ;     hl += de
    ;   }
    ; }
    ; return

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
