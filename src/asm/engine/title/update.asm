abDebounce = $c080
prevNextDebounce = $c082

; 1st entry of Jump Table from 3B (indexed by v_gameState)
updateTitleScreenState:
    exx

    ; Skip initialization
    bit 7, (hl)
    jp nz, realUpdateTitleScreenState

    set 7, (hl)
    
    xor a
    ld (_RAM_C10A_), a
    ld ($C080), a
    call clearVDPTablesAndDisableScreen
    
    ld de, $6000
    ld bc, $0020
    ld l, $00
    call fillVRAM

    ; Map slot 2 to bank 2
    ld a, $82
    ld (Mapper_Slot2), a

    call resetSoundAndInitVolume
    call updateHighScore

    ; Clear some RAM
    ; @TODO: Identify which part is being cleared
    ld hl, v_score
    ld de, v_score + 1
    ld bc, $1DDF
    ld (hl), $00
    ldir

    ld hl, v_titleScreenTimer
    ld (hl), TITLE_SCREEN_DURATION

    xor a
    ld (v_currentTitleScreen), a
    ld (v_titleScreenLogoTimer), a

    ; Map slot 2 to titleScreenTiles bank
    ld a, :titleScreenTiles | $80
    ld (Mapper_Slot2), a

    ; Loag tiles
    ld hl, titleScreenTiles
    ld de, $4020
    call decompress4BitplanesToVRAM

    ; Load logo nametable
    ld hl, logoTopNametable
    ld de, $788E
    ld bc, $061C
    call copyNameTableBlockToVRAM
    ld hl, logoBottomNametable
    ld de, $79DA
    ld bc, $071A
    call copyNameTableBlockToVRAM

    ; Set titlescreen palette
    ld hl, titleScreenPalette
    ld de, $C000
    ld b, $20
    rst $30    ; memcpyToVRAM

    ; Copy alex/janken sprite tiles to VRAM
    call loadTitleSprites

    call enableDisplay
    ei
    ld hl, $01D0
    ld (v_introTimer), hl

    ; Play intro sound
    ld a, SOUND_INTRO
    ld ($C081), a
    ld (v_soundControl), a


realUpdateTitleScreenState:
    ld a, $09
    call setAndWaitForInterruptFlags
    call updateEntities

;     ld a, (v_inputData)
;     and JOY_UP
;     jr z, +++
;     ld a, ($c081)
;     inc a
;     ld ($c081), a
; +++:

    ; Load input data
    ld a, (v_inputData)
    ld b, a
    ; Next music
    and (JOY_UP + JOY_DOWN)
    jr z, _decPrevNext    
        ld a, (prevNextDebounce)
        cp a, $0
        jr nz, _decPrevNext
            ld a, $10
            ld (prevNextDebounce), a
            ld a, b
            and JOY_UP
            jr z, +
                ld a, ($c081)
                inc a
                jr ++
            +:
                ld a, ($c081)
                dec a
        ++:
            ld ($c081), a
            ld (v_soundControl), a
            jr _calcPlay
    _decPrevNext:
        ld a, (prevNextDebounce)
        cp $0
        jr z, _calcPlay
            dec a
            ld (prevNextDebounce), a

_calcPlay:
    ; Prev music
    ; Play music
;     and (JOY_FIREA + JOY_FIREB)
;     jr z, +
;     ld a, ($c080)
;     cp a, $0
;     jr nz, +

;     ld a, ($C081)
;     ld (v_soundControl), a
;     ld a, $20
;     ld ($c080), a
;     jr ++
; +:
;     ld a, ($c080)
;     cp a, $0
;     jr z, ++
;     dec a
;     ld ($c080), a
; ++:
    ret

    ; ; Exit title on button press
    ; ld a, (v_inputData)
    ; ld b, a
    ; and (JOY_FIREA + JOY_FIREB)
    ; jr nz, startGame

    ; ; Tick intro timer
    ; ld hl, (v_introTimer)
    ; dec hl
    ; ld (v_introTimer), hl

    ; ; Start demo on timer end
    ; ld a, h
    ; or l
    ; ret nz
    ; ld a, $02
    ; ld (v_gameState), a
    ; ret


startGame:
    ; Update VDP register 0 as following:
    ; VDP_R0_CHANGE_HEIGHT_IN_MODE_4
    ; | VDP_R0_USE_MODE_4
    ; | VDP_R0_ENABLE_LINE_INTERRUPT
    ld a, $26
    ld (v_VDPRegister0Value), a

    ld hl, initialValues
    ld de, v_gameState
    ld bc, $0019
    ldir

    xor a
    ld (_RAM_C10A_), a
    ; Reset input flags
    ld (v_inputFlags), a

    ret
