soundHandlers:
.dw handleSong              ; songIntro
.dw handleSong              ; songDefault
.dw handleSong              ; songUnderwater
.dw handleSong              ; songCastle_DATA_A57D_
.dw handleSong              ; songBike_DATA_A57D_
.dw handleSong              ; songLevelStarting
.dw handleSong              ; songBattle
.dw handleSong              ; songPeticopter
.dw handleSong              ; songDead
.dw _LABEL_9A7A_            ; _DATA_AC81_
.dw _LABEL_9A7A_            ; _DATA_AC9B_
.dw _LABEL_9A7A_            ; _DATA_ACB2_
.dw _LABEL_99F9_            ; _DATA_ACC9_
.dw _LABEL_99FC_            ; _DATA_ACE1_
.dw _LABEL_99FC_            ; _DATA_AD02_
.dw _LABEL_9A7D_            ; _DATA_AD1E_
.dw _LABEL_9A7A_            ; _DATA_AD2C_
.dw _LABEL_9A00_            ; _DATA_AD46_
.dw _LABEL_9A8B_            ; _DATA_AD8D_
.dw _LABEL_9A8B_            ; _DATA_ADA7_
.dw _LABEL_9A04_            ; _DATA_ADCC_
.dw _LABEL_9A6D_            ; _DATA_AE59_
.dw _LABEL_9A85_            ; _DATA_AE7F_
.dw _LABEL_9A85_            ; _DATA_AEA3_
.dw _LABEL_9A47_            ; _DATA_AEB3_
.dw _LABEL_9A7A_            ; _DATA_AECC_
.dw _LABEL_9A1F_            ; _DATA_AEE3_
.dw _LABEL_9A81_            ; _DATA_AEFA_
.dw _LABEL_9A60_            ; _DATA_AF14_
.dw _LABEL_9A24_            ; _DATA_AF36_
.dw _LABEL_9A60_            ; _DATA_AF6D_
.dw _LABEL_9A24_            ; _DATA_AF84_
.dw _LABEL_9A7A_            ; _DATA_AFBD_
.dw _LABEL_9A00_            ; _DATA_AFCA_
.dw _LABEL_99F9_            ; _DATA_AFE9_
.dw _LABEL_9A43_            ; _DATA_B034_
.dw _LABEL_9A7D_            ; _DATA_B04D_
.dw _LABEL_9A89_            ; _DATA_B062_
.dw _LABEL_9A89_            ; _DATA_B076_
.dw _LABEL_9A7D_            ; _DATA_B090_
.dw _LABEL_9A89_            ; _DATA_B0AA_
.dw _LABEL_9A68_            ; _DATA_B0BE_
.dw _LABEL_9A68_            ; _DATA_B0DD_
.dw _LABEL_9A85_            ; _DATA_B0F4_
.dw _LABEL_9A7D_            ; _DATA_B11D_
.dw _LABEL_9A7D_            ; _DATA_B16F_
.dw handleSong              ; _DATA_B189_
.dw handleSong              ; _DATA_B1D4_
.dw _LABEL_99A3_            ; ???
.dw handler_LABEL_99D3_     ; ???
.dw _LABEL_99BE_            ; ???

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
    ld hl, v_soundEffectsChannels.3.flags
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
handler_LABEL_99D3_:
    xor a
    ld (v_soundEffectsChannels.3.flags), a
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

; Music handler
handleSong:
    call audioEngine.reset
    ld de, v_soundMusicSoftwareChannels
    jp realHandleSong

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
    ; @TODO
    ld hl, v_soundEffectsChannels.3.flags
    set 2, (hl)
    ld de, v_soundEffectsChannels.1
    jp _LABEL_9A9D_

; 27th entry of Jump Table from 993D (indexed by v_soundControl)
_LABEL_9A1F_:
    call audioEngine.reset
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
    ld hl, v_soundEffectsChannels.3.flags
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
    ld hl, v_soundEffectsChannels.3.flags
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
    ld de, v_soundEffectsChannels.3
    jr realHandleSong

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
    ld hl, v_soundEffectsChannels.3.flags
    set 2, (hl)
    ld de, v_soundEffectsChannels.2
    jr _LABEL_9A9D_

_LABEL_9A9D_:
    ld (v_soundEffectPriority), a
    call _LABEL_9E0F_

; Load sound data from bc
; Real music handler tail called from 99F0
realHandleSong:
    ; Load channel count
    ld h, b
    ld l, c
    ld b, (hl)
    inc hl

    ; Init song software channel
    -:
        push bc
        ; Copy 9 bytes from sound data to software channel current struct
        ld bc, $0009
        ldir

        ; unknow = 0x20
        ld a, $20
        ld (de), a

        ; Note duration 0x0001
        inc de
        ld a, $01
        ld (de), a
        inc de
        xor a
        ld (de), a

        ; Current play duration = 0x0000
        inc de
        ld (de), a
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
