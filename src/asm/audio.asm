.INCLUDE "src/asm/group1.asm"
.INCLUDE "src/asm/constants.asm"
.INCLUDE "src/asm/structs.asm"
.INCLUDE "src/asm/variables.asm"

.BANK 2
.ORG $184F
.SECTION "Audio Engine" NAMESPACE "audioEngine" FORCE

; Audio engine entry
update:
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
    jp z, reset
    cp $B4
    jp nc, reset

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
.dw musicIntro musicDefault musicUnderwater musicCastle_DATA_A57D_ musicBike_DATA_A57D_ musicLevelStarting musicJankenMatch musicPeticopter
.dw musicDead _DATA_AC81_ _DATA_AC9B_ _DATA_ACB2_ _DATA_ACC9_ _DATA_ACE1_ _DATA_AD02_ _DATA_AD1E_
.dw _DATA_AD2C_ _DATA_AD46_ _DATA_AD8D_ _DATA_ADA7_ _DATA_ADCC_ _DATA_AE59_ _DATA_AE7F_ _DATA_AEA3_
.dw _DATA_AEB3_ _DATA_AECC_ _DATA_AEE3_ _DATA_AEFA_ _DATA_AF14_ _DATA_AF36_ _DATA_AF6D_ _DATA_AF84_
.dw _DATA_AFBD_ _DATA_AFCA_ _DATA_AFE9_ _DATA_B034_ _DATA_B04D_ _DATA_B062_ _DATA_B076_ _DATA_B090_
.dw _DATA_B0AA_ _DATA_B0BE_ _DATA_B0DD_ _DATA_B0F4_ _DATA_B11D_ _DATA_B16F_ _DATA_B189_ _DATA_B1D4_

.INC "asm/audio/soundHandlers.asm"

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

    ; Handle 0xEX commands
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

.INC "asm/audio/e0Handlers.asm"

_LABEL_9DE4_:
    ld a, (ix + SoftwareChannel.hardwareChannel)
    add a, $10
    or $0F
writeAToPsgIfFlagBit2_LABEL_9DEB_:
    bit 2, (ix + SoftwareChannel.flags)
    ret nz
    out (Port_PSG), a
    ret

reset:
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

.INC "asm/audio/notes.asm"

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

.ENDS
