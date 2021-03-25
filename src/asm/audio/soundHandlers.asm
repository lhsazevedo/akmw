; Jump Table from 993D to 99A2 (51 entries, indexed by v_soundControl)
soundHandlers:
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
