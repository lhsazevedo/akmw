; This disassembly was created using Emulicious (http://www.emulicious.net)
.MEMORYMAP
SLOTSIZE $7FF0
SLOT 0 $0000
SLOTSIZE $10
SLOT 1 $7FF0
SLOTSIZE $4000
SLOT 2 $8000
DEFAULTSLOT 2
.ENDME
.ROMBANKMAP
BANKSTOTAL 8
BANKSIZE $7FF0
BANKS 1
BANKSIZE $10
BANKS 1
BANKSIZE $4000
BANKS 6
.ENDRO

.EMPTYFILL $FF

.INCDIR "src/asm"

.INCLUDE "constants.asm"
.INCLUDE "structs.asm"
.INCLUDE "variables.asm"

; Ports
.define Port_PSG $7F
.define Port_VDPData $BE
.define Port_VDPAddress $BF
.define _PORT_DE_ $DE
.define _PORT_DF_ $DF

; Input Ports
.define Port_VDPStatus $BF
.define Port_IOPort1 $DC
.define Port_IOPort2 $DD

; Mapper
.define Mapper_Slot2 $FFFF

.BANK 0 SLOT 0
.ORG $0000

start:
    di
    im 1
    ld sp, $DFF0
    jr init

; Set DE as VDP Address
setVDPAddress:
    ld a, e
    out (Port_VDPAddress), a
    ld a, d
    out (Port_VDPAddress), a
    ret

; Data from F to F (1 bytes)
.db $FF

_LABEL_10_:
    add a, a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    ret

; Data from 1A to 1A (1 bytes)
.db $FF

_LABEL_1B_:
    bit 7, a
    ret z
    and $0F
loadAthJumptablePointer:
    add a, a
_LABEL_21_:
    ld e, a
    ld d, $00
    add hl, de
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    jp (hl)

; Data from 2A to 2F (6 bytes)
.db $FF $FF $FF $FF $FF $FF

; Copy B bytes from (HL) to VRAM (DE) onwards
memcpyToVRAM:
    rst $08    ; setVDPAddress
    ld c, Port_VDPData
-:
    outi
    jr nz, -
    ret

handleInterruptEntrypoint:
    jp handleInterrupt

; Jump Table from 3B to 52 (12 entries, indexed by v_gameState)
gameStateMainLoopPointers:
.dw updateTitleScreenState
.dw updateTitleScreenState
.dw updateDemoState
.dw updateLevelStartingState
.dw updateLevelCompletedState
.dw updateShopState
.dw updateLifeLostState
.dw updateTextBoxState
.dw updateBonusLevelState
.dw updateGameplayState
.dw updateGameplayState
.dw updateMapState

initMainLoop:
    ; Reset game state to STATE_TITLE
    xor a
    ld (v_gameState), a
mainLoop:
    ld hl, v_gameState
    ld a, (hl)
    and $0F
    exx

    ; Jump to state updater
    ld hl, gameStateMainLoopPointers
    rst $20    ; loadAthJumptablePointer
    jp mainLoop


; Data from 65 to 65 (1 bytes)
.db $FF


handlePauseInterrupt:
    push af
    ; Skip if alex is dead
    ld a, (v_entities.1.state)
    cp ALEX_DEAD
    jp z, +

    ld a, (shouldDisplayMapOpening)
    or a
    jp nz, +
    ld a, (v_gameState)
    cp ($80 | STATE_GAMEPLAY)
    jr c, +
    ld a, $01
    ld (v_shouldOpenMap), a
+:
    pop af
    retn

init:
    ld a, $82
    ld (Mapper_Slot2), a
    call initVolume

    ; Clear RAM
    ld hl, $C000
    ld de, $C000 + 1
    ld bc, $1FFF
    ld (hl), l
    ldir

    call sleepOneSecond
    call configurePPI
-:
    ld a, $82
    ld (Mapper_Slot2), a

    ; Reset stack pointer
    ld sp, $DFF0
    call initVolume
    call initVDPRegisters

    ; Clear VRAM tiles
    ld hl, $0000
    ld de, $4000
    ld bc, $3800
    call fillVRAM
    ei
    call enableDisplay
    jp initMainLoop


handleInterrupt:
    push af
    push bc
    push de
    push hl
    exx
    ex af, af'
    push af
    push bc
    push de
    push hl
    push ix
    push iy
    in a, (Port_VDPStatus)
    in a, (Port_IOPort2)
    and $10
    ld hl, v_resetButtonState
    ld c, (hl)
    ld (hl), a
    xor c
    and c
    jp nz, -
    ld a, (Mapper_Slot2)
    push af
    ld a, (v_interruptFlags)
    rrca
    push af
    call c, copySATtoVRAM
    call _LABEL_41B3_
    pop af
    rrca
    push af
    call readInput
    call _LABEL_107C_
    pop af
    rrca
    push af
    call _LABEL_264F_
    pop af
    rrca
    ld a, (v_gameState)
    ld hl, gameStateInterruptHandlersPointers
    call c, _LABEL_1B_
    ld a, $82
    ld (Mapper_Slot2), a
    call _LABEL_984F_
    xor a
    ld (v_interruptFlags), a
    pop af
    ld (Mapper_Slot2), a
    pop iy
    pop ix
    pop hl
    pop de
    pop bc
    pop af
    exx
    ex af, af'
    pop hl
    pop de
    pop bc
    pop af
    ei
    ret

; Jump Table from 127 to 13E (12 entries, indexed by v_gameState)
gameStateInterruptHandlersPointers:
.dw handleInterruptTitleScreenState
.dw handleInterruptTitleScreenState
.dw handleInterruptDemoState
.dw handleInterruptLevelStartingState
.dw handleInterruptLevelCompletedState
.dw handleInterruptShopState
.dw handleInterruptLifeLostState
.dw handleInterruptTextBoxState
.dw handleInterruptBonusLevelState
.dw handleInterruptGameplayState
.dw handleInterruptGameplayState
.dw handleInterruptMapState

writeAToVRAM:
    push af
    rst $08    ; setVDPAddress
    pop af
    out (Port_VDPData), a
    ret

writeBcBytesToVRAM:
    rst $08    ; setVDPAddress
    ld a, c
    or a
    jr z, +
    inc b
+:
    ld a, b
    ld b, c
    ld c, Port_VDPData
-:
    outi
    jp nz, -
    dec a
    jp nz, -
    ret

_LABEL_159_:
    rst $08    ; setVDPAddress
    ld a, (_RAM_C10A_)
    ld c, Port_VDPData
-:
    outi
    push af
    pop af
    out (c), a
    jr nz, -
    ret

; Data from 168 to 17B (20 bytes)
.db $CF $79 $B7 $28 $01 $04 $78 $41 $0E $BE $ED $A2 $C2 $72 $01 $3D
.db $C2 $72 $01 $C9


clearNameTable:
    ld de, $7800
    ld bc, $0700
    ld l, $00
; FIXME: Understand parameters
fillVRAM:
    rst $08    ; setVDPAddress
    ld a, c
    or a
    ld a, l
    jr z, _LABEL_18B_
    inc b
_LABEL_18B_:
    out (Port_VDPData), a
    dec c
    jr nz, _LABEL_18B_
    djnz _LABEL_18B_
    ret

; Copy CxB (WxH) tiles from HL to DE
copyNameTableBlockToVRAM:
    push bc
    rst $08    ; setVDPAddress
    ld b, c
    ld c, Port_VDPData
-:
    outi
    nop
    jr nz, -
    ex de, hl
    ; Go to next line, (add $40 to VRAM address)
    ld bc, $0040
    add hl, bc
    ex de, hl
    pop bc
    djnz copyNameTableBlockToVRAM
    ret


; Data from 1A7 to 1C4 (30 bytes)
.db $32 $0A $C1 $C5 $CF $41 $0E $BE $ED $A3 $3A $0A $C1 $00 $ED $79
.db $00 $C2 $AF $01 $EB $01 $40 $00 $09 $EB $C1 $10 $E6 $C9

_LABEL_1C5_:
    ld hl, $0040
    rst $08    ; setVDPAddress
    push bc
    xor a
-:
    out (Port_VDPData), a
    dec c
    jr nz, -
    add hl, de
    ex de, hl
    pop bc
    djnz _LABEL_1C5_
    ret

_LABEL_1D6_:
    ld (_RAM_C10B_), a
    rst $08    ; setVDPAddress
--:
    ld a, (hl)
    exx
    ld c, Port_VDPData
    ld b, $04
    ld h, a
    ld a, (_RAM_C10B_)
-:
    rra
    ld d, h
    jr c, +
    ld d, $00
+:
    out (c), d
    djnz -
    exx
    inc hl
    dec bc
    ld a, b
    or c
    jp nz, --
    ret

copySATtoVRAM:
    ld a, (v_gameState)
    and $0F
    cp $02
    jr c, _LABEL_208_
    ld hl, _RAM_C10D_
    inc (hl)
    bit 0, (hl)
    jr z, +
_LABEL_208_:
    ld hl, _RAM_C700_
    ld de, $7F00
    ld bc,  $4000 | Port_VDPData
    rst $08    ; setVDPAddress
-:
    outi
    jr nz, -
    ld hl, _RAM_C780_
    ld de, $7F80
    ld b, $80
    rst $08    ; setVDPAddress
-:
    outi
    jr nz, -
    ret

+:
    ld a, (v_spriteTerminatorPointer)
    cp $13
    jr c, _LABEL_208_
    ld hl, _RAM_C700_
    ld bc,  $1100 | Port_VDPData
    ld de, $7F00
    rst $08    ; setVDPAddress
-:
    outi
    jr nz, -
    ld hl, (v_spriteTerminatorPointer)
    ld a, l
    dec l
    sub $11
    ld b, a
-:
    outd
    jr nz, -
    ld a, $D0
    out (Port_VDPData), a
    ld hl, _RAM_C780_
    ld de, $7F80
    ld b, $22
    rst $08    ; setVDPAddress
-:
    outi
    jr nz, -
    ld hl, (v_spriteTerminatorPointer)
    sla l
    set 7, l
    ld a, l
    sub $A2
    ld b, a
-:
    dec l
    dec l
    outi
    outd
    jp nz, -
    ret

initVDPRegisters:
    ld hl, initialVDPRegistersWrites
    ld bc,  $1600 | Port_VDPAddress
    otir
    xor a
    out (Port_VDPData), a
    ld a, (initialVDPRegistersWrites + 2)
    ld (v_VDPRegister1Value), a
    ret

; Data from 27D to 292 (22 bytes)
initialVDPRegistersWrites:
; Register $00
.db ( VDP_R0_MASK_COL_0 | VDP_R0_USE_MODE_4  | VDP_R0_CHANGE_HEIGHT_IN_MODE_4 )
.db $80

; Register $01
.db ( 1 << 7 | VDP_R1_ENABLE_FRAME_INTERRUPT )
.db $81

; Write $FF to register $02
; Name table base address
.db $FF $82

; Write $FF to register $03
; Color table base address
.db $FF $83

; Write $FF to register $04
; Background Pattern Generator Base Address
.db $FF $84

; Write $FF to register $05
; Sprite Attribute Table Base Address
.db $FF $85

; Write $FF to register $06
; Sprite Pattern Generator Base Address
.db $FF $86

; Write $00 to register $08
; Background X Scroll
.db $00 $88

; Write $00 to register $09
; Background Y Scroll
.db $00 $89

; Write $00 to register $07
; Overscan/Backdrop Color
.db $00 $87

; Write to CRAM at $C0 command
.db $10 $C0

.INCLUDE "decompress.asm"

; Data from 2C4 to 2C4 (1 bytes)
.db $CF

_LABEL_2C5_:
    ld e, $08
    ld d, (hl)
-:
    sla d
    rra
    dec e
    jr nz, -
    out (Port_VDPData), a
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, _LABEL_2C5_
    ret

; Data from 2D7 to 2E5 (15 bytes)
.db $21 $00 $C7 $11 $01 $C7 $01 $BF $00 $36 $E0 $ED $B0 $3E $01

setAndWaitForInterruptFlags:
    ld hl, v_interruptFlags
    ld (hl), a
-:
    ld a, (hl)
    or a
    jr nz, -
    ret

disableDisplay:
    ld a, (v_VDPRegister1Value)
    and %10111111
    jr +

; Also sets VDP Address, why?
enableDisplay:
    ld a, (v_VDPRegister1Value)
    or VDP_R1_DISPLAY_VISIBLE
+:
    ld (v_VDPRegister1Value), a
    ld e, a
    ld d, $81
    rst $08    ; setVDPAddress
    ret

clearScroll:
    xor a
    ld (_RAM_C0BE_), a
    ld (_RAM_C0B0_), a
    ld e, a
    ld d, $89
    rst $08    ; setVDPAddress
    dec d
    rst $08    ; setVDPAddress
    ret


clearVDPTablesAndDisableScreen:
    call disableDisplay

    ; Reset horizontal scroll
    ld hl, $0000
    ld (v_horizontalScroll), hl
    ld (v_verticalScroll), hl
    ld (v_horizontalScrollSpeed), hl
    ld (v_verticalScrollSpeed), hl

    ; Reset sprite address table
    ; @TODO: Why $E0?
    ld hl, _RAM_C700_
    ld de, _RAM_C700_ + 1
    ld bc, $00BF
    ld (hl), $E0
    ldir
    ld de, $8800
    rst $08    ; setVDPAddress
    ld d, $89
    rst $08    ; setVDPAddress

    ; Enable interrupts and wait
    ei
    ld a, $01
    call setAndWaitForInterruptFlags

    ; Disable interrupts
    di
    jp clearNameTable

; Wait almost a second
sleepOneSecond:
    ld b, $0A
_LABEL_343_:
    push bc
    ld bc, $3333
-:
    dec bc
    ld a, b
    or c
    jr nz, -
    pop bc
    djnz _LABEL_343_
    ret

configurePPI:
    ld a, $92
    out (_PORT_DF_), a
    ld hl, v_inputFlags
    ld a, (hl)
    and $02
    or $01
    ld (hl), a
    xor a
    out (_PORT_DE_), a
    in a, (_PORT_DE_)
    or a
    ret z
    res 0, (hl)
    ret

; $00367
readInput:
    ld a, (v_inputFlags)
    bit 0, a
    jp nz, +
    in a, (Port_IOPort1)
    jp saveInput

+:
    ld a, $07
    out (_PORT_DE_), a
    in a, (Port_IOPort1)
    ld c, a
    ld a, $04
    out (_PORT_DE_), a
    in a, (Port_IOPort1)
    bit 5, a
    jp nz, +
    res 1, c
+:
    ld a, $05
    out (_PORT_DE_), a
    in a, (Port_IOPort1)
    bit 5, a
    jp nz, +
    res 2, c
+:
    ld a, $06
    out (_PORT_DE_), a
    in a, (Port_IOPort1)
    bit 5, a
    jp nz, +
    res 3, c
+:
    bit 6, a
    jp nz, +
    res 0, c
+:
    ld a, $02
    out (_PORT_DE_), a
    in a, (Port_IOPort1)
    bit 4, a
    jp nz, +
    res 4, c
+:
    ld a, $03
    out (_PORT_DE_), a
    in a, (Port_IOPort1)
    bit 4, a
    jp nz, +
    res 5, c
+:
    ld a, c
; $003C4
saveInput:
    ld hl, v_inputData
    cpl
    ld c, a
    xor (hl)
    ld (hl), c
    inc hl
    and c
    ld (hl), a
    ret

; l = index to moneybag value table
takeMoney:
    ; Return if Button B is pressed
    ld a, (v_inputFlags)
    and JOY_FIREB
    ret nz

    ld bc, v_money
    ld de, data_moneyBagValueTable
    ld h, $00
    add hl, de
    call sumBCD
    ret nc

    ; Limit to 999999
    ld hl, v_money
    ld c, $99
    ld (hl), c
    inc hl
    ld (hl), c
    inc hl
    ld (hl), c
    ret


addScore:
    ; Return if Button B is pressed?
    ld a, (v_inputFlags)
    and JOY_FIREB
    ret nz

    ld bc, v_score
    ld de, scores
    ld h, $00
    add hl, de
    call sumBCD
    ret nc

    ; Limit to 999999
    ; @TODO: Why C000?
    ld hl, _RAM_C000_
    ld c, $99
    ld (hl), c
    inc hl
    ld (hl), c
    inc hl
    ld (hl), c
    ret


; Sum tree BCD bytes, writing back to hl.
;
; @param bc - Pointer to current money balance
; @param hl - Pointer to value to add 
sumBCD:
    ; Sum and correct least significant byte
    ld a, (bc)
    add a, (hl)
    daa
    ld (bc), a

    ; Sum and correct middle byte
    inc bc
    inc hl
    ld a, (bc)
    adc a, (hl)
    daa
    ld (bc), a

    ; Sum and corrent most significant byte
    inc bc
    inc hl
    ld a, (bc)
    adc a, (hl)
    daa
    ld (bc), a

    ret


_LABEL_41C_:
    ld a, (bc)
    sub (hl)
    daa
    ld (bc), a
    inc hl
    inc c
    ld a, (bc)
    sbc a, (hl)
    daa
    ld (bc), a
    inc hl
    inc c
    ld a, (bc)
    sbc a, (hl)
    daa
    ld (bc), a
    ret

_LABEL_42D_:
    ld a, (bc)
    sub (hl)
    daa
    inc hl
    inc c
    ld a, (bc)
    sbc a, (hl)
    daa
    inc hl
    inc c
    ld a, (bc)
    sbc a, (hl)
    daa
    ret

updateHighScore:
    ld de, v_score
    ld hl, _RAM_C000_
    ld b, $03
    or a
-:
    ld a, (de)
    sbc a, (hl)
    inc hl
    inc de
    djnz -
    ret c
    ex de, hl
    dec hl
    dec de
    ld bc, $0003
    lddr
    ret

_LABEL_454_:
    ld c, $03
_LABEL_456_:
    call setVDPAddress
    set 7, e
--:
    ld a, $C0
    ld b, $02
-:
    rld
    push af
    cp $C0
    jr nz, +
    bit 7, e
    jr z, ++
    ld a, $00
    jr ++

+:
    res 7, e
++:
    out (Port_VDPData), a
    push af
    pop af
    ld a, (_RAM_C10A_)
    out (Port_VDPData), a
    pop af
    djnz -
    rld
    dec hl
    dec c
    jr nz, --
    ret

; Data from 483 to 488 (6 bytes)
data_moneyBagValueTable:
.db SMALL_MONEY_BAG_VALUE
.db BIG_MONEY_BAG_VALUE

; Data from 489 to 4A0 (24 bytes)
scores:
.db $20 $00 $00 ; $489
.db $40 $00 $00 ; $48C
.db $60 $00 $00 ; $48F
.db $80 $00 $00 ; $492
.db $00 $01 $00 ; $495
.db $20 $01 $00 ; $498
.db $00 $02 $00 ; $49B
.db $00 $10 $00 ; $49E

; Data from 4A1 to 4CD (45 bytes)
.db $23 $5E $23
.db $56 $23 $46 $23 $7E
.db $C9 $46 $C5 $CD $A1 $04 $23 $E5 $66 $6F $CD $59 $01 $E1 $C1 $10
.db $F1 $C9 $08 $3E $82 $32 $FF $FF $08 $11 $00 $44 $01 $00 $02 $21
.db $05 $B3 $C3 $D6 $01

_LABEL_4CE_:
    ld l, (ix+27)
    ld a, (ix+28)
    and $01
    ld (ix+28), a
    ld h, a
    add hl, hl
    ld a, l
    and $7E
    ld c, a
    add hl, hl
    ld a, h
    add a, a
    ld e, a
    ld d, $00
    ld hl, _DATA_4EE_
    add hl, de
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    jp (hl)

; Jump Table from 4EE to 4FD (8 entries, indexed by _RAM_CF9C_)
_DATA_4EE_:
.dw _LABEL_4FE_ _LABEL_535_ _LABEL_571_ _LABEL_5A8_ _LABEL_5E4_ _LABEL_61B_ _LABEL_657_ _LABEL_68E_

; 1st entry of Jump Table from 4EE (indexed by _RAM_CF9C_)
_LABEL_4FE_:
    ld hl, _DATA_6CA_
    ld b, $00
    add hl, bc
    ld a, (hl)
    exx
    ld e, a
    ld l, (ix+29)
    call _LABEL_74C_
    ld a, (ix+30)
    add a, h
    ld (ix+14), a
    ld a, (ix+25)
    adc a, $00
    ld (ix+10), a
    exx
    inc hl
    ld l, (hl)
    ld e, (ix+29)
    call _LABEL_74C_
    ld a, (ix+31)
    add a, h
    ld (ix+12), a
    ld a, (ix+26)
    sbc a, $00
    ld (ix+9), a
    ret

; 2nd entry of Jump Table from 4EE (indexed by _RAM_CF9C_)
_LABEL_535_:
    ld hl, _DATA_6CA_ + 2
    ld a, c
    cpl
    add a, $7F
    ld c, a
    ld b, $00
    add hl, bc
    ld a, (hl)
    exx
    ld e, a
    ld l, (ix+29)
    call _LABEL_74C_
    ld a, (ix+31)
    add a, h
    ld (ix+12), a
    ld a, (ix+26)
    sbc a, $00
    ld (ix+9), a
    exx
    inc hl
    ld l, (hl)
    ld e, (ix+29)
    call _LABEL_74C_
    ld a, (ix+30)
    add a, h
    ld (ix+14), a
    ld a, (ix+25)
    adc a, $00
    ld (ix+10), a
    ret

; 3rd entry of Jump Table from 4EE (indexed by _RAM_CF9C_)
_LABEL_571_:
    ld hl, _DATA_6CA_ + 2
    ld b, $00
    add hl, bc
    ld a, (hl)
    exx
    ld e, a
    ld l, (ix+29)
    call _LABEL_74C_
    ld a, (ix+31)
    sub h
    ld (ix+12), a
    ld a, (ix+26)
    adc a, $00
    ld (ix+9), a
    exx
    inc hl
    ld l, (hl)
    ld e, (ix+29)
    call _LABEL_74C_
    ld a, (ix+30)
    add a, h
    ld (ix+14), a
    ld a, (ix+25)
    adc a, $00
    ld (ix+10), a
    ret

; 4th entry of Jump Table from 4EE (indexed by _RAM_CF9C_)
_LABEL_5A8_:
    ld hl, _DATA_6CA_
    ld a, c
    cpl
    add a, $7F
    ld c, a
    ld b, $00
    add hl, bc
    ld a, (hl)
    exx
    ld e, a
    ld l, (ix+29)
    call _LABEL_74C_
    ld a, (ix+30)
    add a, h
    ld (ix+14), a
    ld a, (ix+25)
    adc a, $00
    ld (ix+10), a
    exx
    inc hl
    ld l, (hl)
    ld e, (ix+29)
    call _LABEL_74C_
    ld a, (ix+31)
    sub h
    ld (ix+12), a
    ld a, (ix+26)
    adc a, $00
    ld (ix+9), a
    ret

; 5th entry of Jump Table from 4EE (indexed by _RAM_CF9C_)
_LABEL_5E4_:
    ld hl, _DATA_6CA_
    ld b, $00
    add hl, bc
    ld a, (hl)
    exx
    ld e, a
    ld l, (ix+29)
    call _LABEL_74C_
    ld a, (ix+30)
    sub h
    ld (ix+14), a
    ld a, (ix+25)
    sbc a, $00
    ld (ix+10), a
    exx
    inc hl
    ld l, (hl)
    ld e, (ix+29)
    call _LABEL_74C_
    ld a, (ix+31)
    sub h
    ld (ix+12), a
    ld a, (ix+26)
    adc a, $00
    ld (ix+9), a
    ret

; 6th entry of Jump Table from 4EE (indexed by _RAM_CF9C_)
_LABEL_61B_:
    ld hl, _DATA_6CA_ + 2
    ld a, c
    cpl
    add a, $7F
    ld c, a
    ld b, $00
    add hl, bc
    ld a, (hl)
    exx
    ld e, a
    ld l, (ix+29)
    call _LABEL_74C_
    ld a, (ix+31)
    sub h
    ld (ix+12), a
    ld a, (ix+26)
    adc a, $00
    ld (ix+9), a
    exx
    inc hl
    ld l, (hl)
    ld e, (ix+29)
    call _LABEL_74C_
    ld a, (ix+30)
    sub h
    ld (ix+14), a
    ld a, (ix+25)
    sbc a, $00
    ld (ix+10), a
    ret

; 7th entry of Jump Table from 4EE (indexed by _RAM_CF9C_)
_LABEL_657_:
    ld hl, _DATA_6CA_ + 2
    ld b, $00
    add hl, bc
    ld a, (hl)
    exx
    ld e, a
    ld l, (ix+29)
    call _LABEL_74C_
    ld a, (ix+31)
    add a, h
    ld (ix+12), a
    ld a, (ix+26)
    sbc a, $00
    ld (ix+9), a
    exx
    inc hl
    ld l, (hl)
    ld e, (ix+29)
    call _LABEL_74C_
    ld a, (ix+30)
    sub h
    ld (ix+14), a
    ld a, (ix+25)
    sbc a, $00
    ld (ix+10), a
    ret

; 8th entry of Jump Table from 4EE (indexed by _RAM_CF9C_)
_LABEL_68E_:
    ld hl, _DATA_6CA_
    ld a, c
    cpl
    add a, $7F
    ld c, a
    ld b, $00
    add hl, bc
    ld a, (hl)
    exx
    ld e, a
    ld l, (ix+29)
    call _LABEL_74C_
    ld a, (ix+30)
    sub h
    ld (ix+14), a
    ld a, (ix+25)
    sbc a, $00
    ld (ix+10), a
    exx
    inc hl
    ld l, (hl)
    ld e, (ix+29)
    call _LABEL_74C_
    ld a, (ix+31)
    add a, h
    ld (ix+12), a
    ld a, (ix+26)
    sbc a, $00
    ld (ix+9), a
    ret

; Data from 6CA to 74B (130 bytes)
_DATA_6CA_:
.db $00 $FF $03 $FF $06 $FF $09 $FF $0D $FF $10 $FF $13 $FE $16 $FE
.db $19 $FE $1C $FD $1F $FD $22 $FD $25 $FC $29 $FC $2C $FB $2F $FB
.db $32 $FA $35 $F9 $38 $F9 $3B $F8 $3E $F7 $41 $F7 $44 $F6 $47 $F5
.db $4A $F4 $4D $F3 $50 $F2 $53 $F1 $56 $F0 $59 $EF $5C $EE $5F $ED
.db $62 $EC $64 $EA $67 $E9 $6A $E8 $6D $E7 $70 $E5 $73 $E4 $75 $E2
.db $78 $E1 $7B $DF $7E $DE $80 $DC $83 $DB $86 $D9 $88 $D7 $8B $D6
.db $8E $D4 $90 $D2 $93 $D0 $95 $CF $98 $CD $9A $CB $9D $C9 $9F $C7
.db $A2 $C5 $A4 $C3 $A7 $C1 $A9 $BF $AB $BD $AE $BB $B0 $B9 $B2 $B7
.db $B4 $B4

_LABEL_74C_:
    ld h, l
    ld b, $08
    ld d, $00
    ld l, d
-:
    add hl, hl
    jr nc, +
    add hl, de
+:
    djnz -
    ret

; Data from 759 to 76C (20 bytes)
.db $06 $11 $AF $C3 $68 $07 $8F $38 $03 $BB $38 $02 $93 $B7 $3F $ED
.db $6A $10 $F3 $C9

; 1st entry of Jump Table from 3B (indexed by v_gameState)
.INC "engine/states/title/update.asm"

; Data from 824 to 841 (30 bytes)
initialValues:
.db INITIAL_GAME_STATE
.db INITIAL_SCORE
.db INITIAL_LEVEL
.db INITIAL_LIFES
.dsb 10, $00
.db INITIAL_MONEY
.db $00 $00
.db $03 $00 $00 $00 $00 $00 $00 $00

; 1st entry of Jump Table from 127 (indexed by v_gameState)
.INC "engine/states/title/handleInterrupt.asm"

.INC "engine/states/title/loadSprites.asm"

.INC "engine/states/title/createEntities.asm"

.INC "engine/entity/clearEntities.asm"

; 3rd entry of Jump Table from 3B (indexed by v_gameState)
.INC "engine/states/demo/update.asm"

; Data from A34 to A34 (1 bytes)
.db $C9

; 3rd entry of Jump Table from 127 (indexed by v_gameState)
.INC "engine/states/demo/handleInterrupt.asm"
.INC "src/data/demoInputPointers.asm"

.INC "engine/states/gameplay/update.asm"
.INC "engine/states/gameplay/handleInterrupt.asm"
.INC "engine/states/gameplay/init.asm"

_LABEL_C43_:
    ld ix, v_entity1
    ld (ix+0), $01
    ld a, (v_level)
    add a, a
    ld c, a
    ld b, $00
    ld hl, _DATA_DA3_ - 2
    add hl, bc
    ld a, (hl)
    ld (ix+12), a
    inc hl
    ld a, (hl)
    ld (ix+14), a
    call updateAlexSpawning
    call updateEntities
    ld a, (v_level)
    ld hl, _DATA_D2C_ - 2
    call _LABEL_10_
    ld (_RAM_C00E_), hl
    ld hl, _DATA_156D_ - 2
    ld a, (v_level)
    add a, a
    ld e, a
    ld d, $00
    add hl, de
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    ld (v_titleScreenTileUpdaterPointer), hl
    ld a, $01
    ld (v_titleScreenTileUpdateTimer), a
    ld a, (v_level)
    ld hl, _DATA_D0A_ - 2
    call _LABEL_10_
    ld (scrollFlagsUpdaterPointer), hl
    ld a, (v_level)
    ld hl, _DATA_D4E_ - 2
    call _LABEL_10_
    ld (newEntitiesLoaderPointer), hl
    ld a, (v_level)
    ld c, a
    ld b, $00
    ld hl, _DATA_E30_ - 1
    add hl, bc
    ld a, (hl)
    ld (v_questionMarkBoxIndex), a
    ld a, $87
    ld (Mapper_Slot2), a
    ld hl, _DATA_1EFC9_
    ld de, $6400
    ld bc, $00E0
    call writeBcBytesToVRAM
    ld hl, _DATA_1EFC9_
    ld bc, $00E0
    call _LABEL_2C5_
    ld a, $85
    ld (Mapper_Slot2), a
    ld hl, _DATA_17191_
    ld de, $65C0
    ld bc, $0080
    call writeBcBytesToVRAM
    ld hl, _DATA_170B1_
    ld de, $6640
    ld bc, $0060
    call writeBcBytesToVRAM
    ld hl, _DATA_170F1_
    ld bc, $0020
    call _LABEL_2C5_
    ld a, $82
    ld (Mapper_Slot2), a
    ld a, (v_level)
    ld c, a
    ld b, $00
    ld hl, _DATA_DC5_ - 1
    add hl, bc
    ld a, (hl)
    ld (v_soundControl), a
    ld hl, v_gameState
    set 7, (hl)
    ei
    jp enableDisplay

; Jump Table from D0A to D2B (17 entries, indexed by v_level)
_DATA_D0A_:
.dw _LABEL_6462_ _LABEL_6462_ _LABEL_657B_ _LABEL_6462_ _LABEL_6539_ _LABEL_6462_ _LABEL_6462_ _LABEL_6462_
.dw _LABEL_6539_ _LABEL_6462_ _LABEL_647D_ _LABEL_6462_ _LABEL_6462_ _LABEL_6462_ _LABEL_6462_ _LABEL_647D_
.dw _LABEL_6462_

; Jump Table from D2C to D4D (17 entries, indexed by v_level)
_DATA_D2C_:
.dw _LABEL_1089_ _LABEL_10DE_ _LABEL_1089_ _LABEL_10E1_ _LABEL_1089_ _LABEL_10E4_ _LABEL_10E7_ _LABEL_10EA_
.dw _LABEL_1089_ _LABEL_10ED_ _LABEL_10F0_ _LABEL_10F3_ _LABEL_10F6_ _LABEL_10F9_ _LABEL_10FC_ _LABEL_1089_
.dw _LABEL_1089_

; Jump Table from D4E to D6F (17 entries, indexed by v_level)
_DATA_D4E_:
.dw _LABEL_6F48_ _LABEL_6F48_ _LABEL_6F48_ _LABEL_6F48_ _LABEL_6F48_ _LABEL_6F48_ _LABEL_6F48_ _LABEL_6F48_
.dw _LABEL_6F48_ _LABEL_6F48_ _LABEL_7084_ _LABEL_6F48_ _LABEL_6F48_ _LABEL_6F48_ _LABEL_6F48_ _LABEL_7084_
.dw _LABEL_6F48_

; Data from D70 to DA2 (51 bytes)
_DATA_D70_:
.db $00 $00 $00 $60 $54 $CC $72 $5C $CC $00 $00 $00 $42 $40 $C9 $90
.db $20 $CC $00 $00 $00 $30 $08 $CC $00 $00 $00 $70 $18 $CC $00 $00
.db $00 $50 $D0 $C9 $00 $00 $00 $00 $00 $00 $50 $10 $CC $00 $00 $00
.db $00 $00 $00

; Data from DA3 to DC4 (34 bytes)
_DATA_DA3_:
.db $20 $58 $20 $88 $40 $20 $1B $90 $20 $70 $20 $88 $20 $88 $20 $88
.db $20 $88 $20 $88 $20 $88 $20 $88 $E8 $70 $20 $88 $20 $88 $20 $88
.db $10 $88

; Data from DC5 to DD6 (18 bytes)
_DATA_DC5_:
.db $82 $82 $83 $82 $88 $82 $82 $82 $83 $82 $84 $82 $88 $82 $82 $84
.db $82 $82

; Data from DD7 to E1E (72 bytes)
_DATA_DD7_:
.db $4D $4E $4F $4D $4E $4F $4D $4E $4F $4D $4E $4F $4D $4E $4F $4D
.db $4E $4F $4D $4E $4F $4D $4E $4F $4D $4E $4F $4D $4E $4F $4D $4E
.db $4F $4D $4E $4F $4D $4E $4F $4D $4E $4F $4D $4E $4F $4D $4E $4F
.db $4D $4E $4F $4D $4E $4F $4D $4E $4F $4D $4E $4F $4D $4E $4F $4D
.db $4E $4F $4D $4E $4F $4D $4E $4F

; Data from E1F to E2F (17 bytes)
_DATA_E1F_:
.db $00 $00 $00 $00 $09 $00 $00 $00 $01 $00 $00 $00 $09 $00 $00 $00
.db $00

; Data from E30 to E40 (17 bytes)
_DATA_E30_:
.db $01 $02 $03 $04 $05 $06 $07 $08 $02 $0A $0B $0C $0D $0E $0F $10
.db $11

_LABEL_E41_:
    push de
    call _LABEL_E4B_
    inc hl
    pop de
    inc de
    jp _LABEL_E4B_

_LABEL_E4B_:
    ld a, (hl)
    or a
    ret z
    bit 7, a
    jr nz, +
    ld b, a
    inc hl
    ld a, (hl)
-:
    ld (de), a
    inc de
    inc de
    djnz -
    inc hl
    jp _LABEL_E4B_

+:
    and $7F
    ld b, a
-:
    inc hl
    ld a, (hl)
    ld (de), a
    inc de
    inc de
    djnz -
    inc hl
    jp _LABEL_E4B_

_LABEL_E6C_:
    ld hl, tiles_bagOfGoldCoinsAndCloud
    ld de, $44A0
    call decompress4BitplanesToVRAM
    ld a, (v_level)
    ld hl, _DATA_E7D_ - 2
    rst $20    ; loadAthJumptablePointer
    ret

; Jump Table from E7D to E9E (17 entries, indexed by v_level)
_DATA_E7D_:
.dw _LABEL_E9F_ _LABEL_FF9_ _LABEL_F21_ _LABEL_F54_ _LABEL_F99_ _LABEL_F6C_ _LABEL_FAE_ _LABEL_EC9_
.dw _LABEL_FC6_ _LABEL_F00_ _LABEL_F54_ _LABEL_F6C_ _LABEL_FF9_ _LABEL_1058_ _LABEL_F00_ _LABEL_EDF_
.dw _LABEL_1022_

; 1st entry of Jump Table from E7D (indexed by v_level)
_LABEL_E9F_:
    ld de, $46A0
    ld bc, $0080
    ld l, $00
    call fillVRAM
    ld a, (v_level)
    ld hl, levelMainTilesetPointers - 2
    rst $10    ; _LABEL_10_
    ld de, $4720
    call decompress4BitplanesToVRAM
    ld hl, tiles_aditionalSet4
    ld de, $4E60
    ld b, $A0
    rst $30    ; memcpyToVRAM
    ld hl, tiles_aditionalSet1
    ld de, $4F00
    jp decompress4BitplanesToVRAM

; 8th entry of Jump Table from E7D (indexed by v_level)
_LABEL_EC9_:
    ld hl, tiles_aditionalSet2
    ld de, $4EC0
    call decompress4BitplanesToVRAM
    ld a, (v_level)
    ld hl, levelMainTilesetPointers - 2
    rst $10    ; _LABEL_10_
    ld de, $46A0
    jp decompress4BitplanesToVRAM

; 16th entry of Jump Table from E7D (indexed by v_level)
_LABEL_EDF_:
    ld de, $46A0
    ld bc, $0080
    ld l, $00
    call fillVRAM
    ld a, (v_level)
    ld hl, levelMainTilesetPointers - 2
    rst $10    ; _LABEL_10_
    ld de, $4720
    call decompress4BitplanesToVRAM
    ld hl, tiles_aditionalSet1
    ld de, $4F00
    jp decompress4BitplanesToVRAM

; 10th entry of Jump Table from E7D (indexed by v_level)
_LABEL_F00_:
    ld de, $46A0
    ld bc, $0080
    ld l, $00
    call fillVRAM
    ld a, (v_level)
    ld hl, levelMainTilesetPointers - 2
    rst $10    ; _LABEL_10_
    ld de, $4720
    call decompress4BitplanesToVRAM
    ld hl, tiles_aditionalSet2
    ld de, $4EC0
    jp decompress4BitplanesToVRAM

; 3rd entry of Jump Table from E7D (indexed by v_level)
_LABEL_F21_:
    ld de, $46A0
    ld bc, $0200
    ld l, $00
    call fillVRAM
    ld a, (v_level)
    ld hl, levelMainTilesetPointers - 2
    rst $10    ; _LABEL_10_
    ld de, $48A0
    call decompress4BitplanesToVRAM
    ld hl, tiles_aditionalSet5
    ld de, $4D00
    call decompress4BitplanesToVRAM
    ld hl, tiles_aditionalSet4
    ld de, $4E60
    ld b, $A0
    rst $30    ; memcpyToVRAM
    ld hl, tiles_aditionalSet1
    ld de, $4F00
    jp decompress4BitplanesToVRAM

; 4th entry of Jump Table from E7D (indexed by v_level)
_LABEL_F54_:
    ld de, $46A0
    ld bc, $0080
    ld l, $00
    call fillVRAM
    ld a, (v_level)
    ld hl, levelMainTilesetPointers - 2
    rst $10    ; _LABEL_10_
    ld de, $4720
    jp decompress4BitplanesToVRAM

; 6th entry of Jump Table from E7D (indexed by v_level)
_LABEL_F6C_:
    ld de, $46A0
    ld bc, $0080
    ld l, $00
    call fillVRAM
    ld a, $02
    ld hl, $847E
    rst $10    ; _LABEL_10_
    ld de, $4720
    call decompress4BitplanesToVRAM
    ld a, (v_level)
    ld hl, levelMainTilesetPointers - 2
    rst $10    ; _LABEL_10_
    ld de, $4920
    call decompress4BitplanesToVRAM
    ld hl, tiles_aditionalSet2
    ld de, $4EC0
    jp decompress4BitplanesToVRAM

; 5th entry of Jump Table from E7D (indexed by v_level)
_LABEL_F99_:
    call _LABEL_E9F_
    ld hl, tiles_aditionalSet5
    ld de, $4D00
    call decompress4BitplanesToVRAM
    ld hl, tiles_aditionalSet3
    ld de, $47A0
    jp decompress4BitplanesToVRAM

; 7th entry of Jump Table from E7D (indexed by v_level)
_LABEL_FAE_:
    ld de, $46A0
    ld bc, $0080
    ld l, $0A
    call fillVRAM
    ld a, (v_level)
    ld hl, levelMainTilesetPointers - 2
    rst $10    ; _LABEL_10_
    ld de, $4720
    jp decompress4BitplanesToVRAM

; 9th entry of Jump Table from E7D (indexed by v_level)
_LABEL_FC6_:
    ld de, $46A0
    ld bc, $0080
    ld l, $00
    call fillVRAM
    ld a, (v_level)
    ld hl, levelMainTilesetPointers - 2
    rst $10    ; _LABEL_10_
    ld de, $4720
    call decompress4BitplanesToVRAM
    ld hl, tiles_aditionalSet5
    ld de, $4D00
    call decompress4BitplanesToVRAM
    ld hl, tiles_aditionalSet1
    ld de, $4F00
    call decompress4BitplanesToVRAM
    ld hl, tiles_aditionalSet3
    ld de, $47A0
    jp decompress4BitplanesToVRAM

; 2nd entry of Jump Table from E7D (indexed by v_level)
_LABEL_FF9_:
    ld de, $46A0
    ld bc, $0080
    ld l, $00
    call fillVRAM
    ld a, $02
    ld hl, $847E
    rst $10    ; _LABEL_10_
    ld de, $4720
    call decompress4BitplanesToVRAM
    ld hl, tiles_aditionalSet2
    ld de, $4EC0
    call decompress4BitplanesToVRAM
    ld hl, tiles_aditionalSet3
    ld de, $47A0
    jp decompress4BitplanesToVRAM

; 17th entry of Jump Table from E7D (indexed by v_level)
_LABEL_1022_:
    ld de, $46A0
    ld bc, $0200
    ld l, $00
    call fillVRAM
    ld a, $03
    ld hl, $847E
    rst $10    ; _LABEL_10_
    ld de, $48A0
    call decompress4BitplanesToVRAM
    ld a, (v_level)
    ld hl, levelMainTilesetPointers - 2
    rst $10    ; _LABEL_10_
    ld de, $4AA0
    call decompress4BitplanesToVRAM
    ld hl, tiles_level17AditionalSet
    ld de, $4720
    call decompress4BitplanesToVRAM
    ld hl, tiles_aditionalSet1
    ld de, $4F00
    jp decompress4BitplanesToVRAM

; 14th entry of Jump Table from E7D (indexed by v_level)
_LABEL_1058_:
    ld de, $46A0
    ld bc, $0080
    ld l, $00
    call fillVRAM
    ld a, $0B
    ld hl, $847E
    rst $10    ; _LABEL_10_
    ld de, $4720
    call decompress4BitplanesToVRAM
    ld a, (v_level)
    ld hl, levelMainTilesetPointers - 2
    rst $10    ; _LABEL_10_
    ld de, $4DA0
    jp decompress4BitplanesToVRAM

_LABEL_107C_:
    ld a, (v_gameState)
    cp $89
    ret c
    cp $8B
    ret z
    ld hl, (_RAM_C00E_)
    jp (hl)

; 1st entry of Jump Table from D2C (indexed by v_level)
_LABEL_1089_:
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
    ld a, (_RAM_C054_)
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
_LABEL_10DE_:
    jp _LABEL_10B0_

; 4th entry of Jump Table from D2C (indexed by v_level)
_LABEL_10E1_:
    jp _LABEL_10B0_

; 6th entry of Jump Table from D2C (indexed by v_level)
_LABEL_10E4_:
    jp _LABEL_10B0_

; 7th entry of Jump Table from D2C (indexed by v_level)
_LABEL_10E7_:
    jp _LABEL_10B0_

; 8th entry of Jump Table from D2C (indexed by v_level)
_LABEL_10EA_:
    jp _LABEL_10B0_

; 10th entry of Jump Table from D2C (indexed by v_level)
_LABEL_10ED_:
    jp _LABEL_10B0_

; 11th entry of Jump Table from D2C (indexed by v_level)
_LABEL_10F0_:
    jp _LABEL_10B0_

; 12th entry of Jump Table from D2C (indexed by v_level)
_LABEL_10F3_:
    jp _LABEL_10B0_

; 13th entry of Jump Table from D2C (indexed by v_level)
_LABEL_10F6_:
    jp _LABEL_10B0_

; 14th entry of Jump Table from D2C (indexed by v_level)
_LABEL_10F9_:
    jp _LABEL_10B0_

; 15th entry of Jump Table from D2C (indexed by v_level)
_LABEL_10FC_:
    jp _LABEL_10B0_

loadLevelPalette:
    ld a, $87
    ld (Mapper_Slot2), a
    ld a, (v_level)
    ld hl, levelPalettes - 2
    rst $10    ; _LABEL_10_
    ld de, $C000
    ld b, $20
    rst $30    ; memcpyToVRAM
    ret

; Pointer Table from 1112 to 1133 (17 entries, indexed by v_level)
levelPalettes:
.dw mtEthernalStage1Palette _DATA_1FE1E_ _DATA_1FCDE_ _DATA_1FCFE_ _DATA_1FD1E_ _DATA_1FD3E_ _DATA_1FD5E_ _DATA_1FD7E_
.dw _DATA_1FDBE_ _DATA_1FDDE_ _DATA_1FD9E_ _DATA_1FDFE_ _DATA_1FE1E_ _DATA_1FE3E_ _DATA_1FCBE_ _DATA_1FE5E_
.dw _DATA_1FE7E_

loadLevelSpriteTiles:
    ld a, $87
    ld (Mapper_Slot2), a
    ld a, (v_level)
    ld hl, _DATA_1142_ - 2
    jp loadAthJumptablePointer

; Jump Table from 1142 to 1163 (17 entries, indexed by v_level)
_DATA_1142_:
.dw _LABEL_1164_ _LABEL_117F_ _LABEL_119D_ _LABEL_11B5_ _LABEL_11D3_ _LABEL_11EB_ _LABEL_1206_ _LABEL_1221_
.dw _LABEL_1239_ _LABEL_1254_ _LABEL_126F_ _LABEL_1299_ _LABEL_12AE_ _LABEL_12C0_ _LABEL_12CF_ _LABEL_12ED_
.dw _LABEL_1311_

; 1st entry of Jump Table from 1142 (indexed by v_level)
_LABEL_1164_:
    call _LABEL_14B2_
    call _LABEL_14A6_
    call _LABEL_14BE_
    call _LABEL_132F_
    call _LABEL_133B_
    call _LABEL_1350_
    call _LABEL_137D_
    call _LABEL_135C_
    jp _LABEL_1368_

; 2nd entry of Jump Table from 1142 (indexed by v_level)
_LABEL_117F_:
    call _LABEL_14B2_
    call _LABEL_14A6_
    call _LABEL_14BE_
    call _LABEL_1455_
    call _LABEL_1461_
    call _LABEL_132F_
    call _LABEL_1392_
    call _LABEL_139E_
    call _LABEL_13AA_
    jp _LABEL_13B6_

; 3rd entry of Jump Table from 1142 (indexed by v_level)
_LABEL_119D_:
    call _LABEL_14B2_
    call _LABEL_14A6_
    call _LABEL_14CA_
    call _LABEL_132F_
    call _LABEL_1368_
    call _LABEL_137D_
    call _LABEL_13C2_
    jp _LABEL_13CE_

; 4th entry of Jump Table from 1142 (indexed by v_level)
_LABEL_11B5_:
    call _LABEL_14B2_
    call _LABEL_14A6_
    call _LABEL_14CA_
    call _LABEL_154A_
    call _LABEL_132F_
    call _LABEL_133B_
    call _LABEL_13DA_
    call _LABEL_1455_
    call _LABEL_1461_
    jp _LABEL_13B6_

; 5th entry of Jump Table from 1142 (indexed by v_level)
_LABEL_11D3_:
    call _LABEL_14B2_
    call _LABEL_14A6_
    call _LABEL_14BE_
    call _LABEL_132F_
    call _LABEL_1368_
    call _LABEL_133B_
    call _LABEL_137D_
    jp _LABEL_13E6_

; 6th entry of Jump Table from 1142 (indexed by v_level)
_LABEL_11EB_:
    call _LABEL_14B2_
    call _LABEL_14A6_
    call _LABEL_14BE_
    call _LABEL_1455_
    call _LABEL_1461_
    call _LABEL_132F_
    call _LABEL_13FB_
    call _LABEL_1512_
    jp _LABEL_1410_

; 7th entry of Jump Table from 1142 (indexed by v_level)
_LABEL_1206_:
    call _LABEL_14B2_
    call _LABEL_14A6_
    call _LABEL_14CA_
    call _LABEL_1455_
    call _LABEL_1461_
    call _LABEL_14E2_
    call _LABEL_132F_
    call _LABEL_1425_
    jp _LABEL_149A_

; 8th entry of Jump Table from 1142 (indexed by v_level)
_LABEL_1221_:
    call _LABEL_14B2_
    call _LABEL_14A6_
    call _LABEL_14D6_
    call _LABEL_132F_
    call _LABEL_1392_
    call _LABEL_149A_
    call _LABEL_1431_
    jp _LABEL_139E_

; 9th entry of Jump Table from 1142 (indexed by v_level)
_LABEL_1239_:
    call _LABEL_14B2_
    call _LABEL_14A6_
    call _LABEL_14BE_
    call _LABEL_132F_
    call _LABEL_133B_
    call _LABEL_1368_
    call _LABEL_1350_
    call _LABEL_13E6_
    jp _LABEL_135C_

; 10th entry of Jump Table from 1142 (indexed by v_level)
_LABEL_1254_:
    call _LABEL_14B2_
    call _LABEL_14A6_
    call _LABEL_14BE_
    call _LABEL_13B6_
    call _LABEL_132F_
    call _LABEL_143D_
    call _LABEL_1449_
    call _LABEL_1455_
    jp _LABEL_1461_

; 11th entry of Jump Table from 1142 (indexed by v_level)
_LABEL_126F_:
    call _LABEL_14B2_
    call _LABEL_14A6_
    call _LABEL_14CA_
    call _LABEL_132F_
    call _LABEL_14E2_
    call _LABEL_1455_
    call _LABEL_14EE_
    call _LABEL_1476_
    call _LABEL_1461_
    call _LABEL_1425_
    call _LABEL_139E_
    call _LABEL_1392_
    call _LABEL_13AA_
    jp _LABEL_149A_

; 12th entry of Jump Table from 1142 (indexed by v_level)
_LABEL_1299_:
    call _LABEL_14B2_
    call _LABEL_14A6_
    call _LABEL_14BE_
    call _LABEL_1455_
    call _LABEL_1461_
    call _LABEL_13AA_
    jp _LABEL_132F_

; 13th entry of Jump Table from 1142 (indexed by v_level)
_LABEL_12AE_:
    call _LABEL_14B2_
    call _LABEL_14A6_
    call _LABEL_14BE_
    call _LABEL_132F_
    call _LABEL_13B6_
    jp _LABEL_133B_

; 14th entry of Jump Table from 1142 (indexed by v_level)
_LABEL_12C0_:
    call _LABEL_14B2_
    call _LABEL_14A6_
    call _LABEL_14BE_
    call _LABEL_14FA_
    jp _LABEL_132F_

; 15th entry of Jump Table from 1142 (indexed by v_level)
_LABEL_12CF_:
    call _LABEL_14B2_
    call _LABEL_14A6_
    call _LABEL_14BE_
    call _LABEL_1455_
    call _LABEL_1461_
    call _LABEL_132F_
    call _LABEL_1392_
    call _LABEL_139E_
    call _LABEL_13AA_
    jp _LABEL_13B6_

; 16th entry of Jump Table from 1142 (indexed by v_level)
_LABEL_12ED_:
    call _LABEL_14B2_
    call _LABEL_14A6_
    call _LABEL_14BE_
    call _LABEL_132F_
    call _LABEL_13AA_
    call _LABEL_1482_
    call _LABEL_151E_
    call _LABEL_148E_
    call _LABEL_1455_
    call _LABEL_1461_
    call _LABEL_1425_
    jp _LABEL_13B6_

; 17th entry of Jump Table from 1142 (indexed by v_level)
_LABEL_1311_:
    call _LABEL_14B2_
    call _LABEL_14A6_
    call _LABEL_14BE_
    call _LABEL_132F_
    call _LABEL_1368_
    call _LABEL_1482_
    call _LABEL_1561_
    call _LABEL_1506_
    call _LABEL_1350_
    jp _LABEL_135C_

_LABEL_132F_:
    ld hl, _DATA_1C7E9_
    ld de, $6880
    ld bc, $0220
    jp writeBcBytesToVRAM

_LABEL_133B_:
    ld hl, _DATA_1CA09_
    ld de, $6FA0
    ld bc, $0180
    call writeBcBytesToVRAM
    ld hl, _DATA_1CA09_
    ld bc, $0180
    jp _LABEL_2C5_

_LABEL_1350_:
    ld hl, _DATA_1CDC9_
    ld de, $7580
    ld bc, $0040
    jp writeBcBytesToVRAM

_LABEL_135C_:
    ld hl, _DATA_1CB89_
    ld de, $75C0
    ld bc, $0240
    jp writeBcBytesToVRAM

_LABEL_1368_:
    ld hl, _DATA_1EE09_
    ld de, $6AA0
    ld bc, $0100
    call writeBcBytesToVRAM
    ld hl, _DATA_1EE09_
    ld bc, $0100
    jp _LABEL_2C5_

_LABEL_137D_:
    ld hl, _DATA_1D5E9_
    ld de, $6CA0
    ld bc, $0180
    call writeBcBytesToVRAM
    ld hl, _DATA_1D5E9_
    ld bc, $0180
    jp _LABEL_2C5_

_LABEL_1392_:
    ld hl, _DATA_1DCA9_
    ld de, $6C00
    ld bc, $0020
    jp writeBcBytesToVRAM

_LABEL_139E_:
    ld hl, _DATA_1DB49_
    ld de, $6AA0
    ld bc, $0160
    jp writeBcBytesToVRAM

_LABEL_13AA_:
    ld hl, _DATA_1DD49_
    ld de, $7000
    ld bc, $0100
    jp writeBcBytesToVRAM

_LABEL_13B6_:
    ld hl, _DATA_1DE49_
    ld de, $7760
    ld bc, $00A0
    jp writeBcBytesToVRAM

_LABEL_13C2_:
    ld hl, _DATA_1EF09_
    ld de, $7200
    ld bc, $00C0
    jp writeBcBytesToVRAM

_LABEL_13CE_:
    ld hl, _DATA_1DB09_
    ld de, $77E0
    ld bc, $0020
    jp writeBcBytesToVRAM

_LABEL_13DA_:
    ld hl, _DATA_1CFC9_
    ld de, $72A0
    ld bc, $0100
    jp writeBcBytesToVRAM

_LABEL_13E6_:
    ld hl, _DATA_1CEC9_
    ld de, $72A0
    ld bc, $0100
    call writeBcBytesToVRAM
    ld hl, _DATA_1CEC9_
    ld bc, $0100
    jp _LABEL_2C5_

_LABEL_13FB_:
    ld hl, _DATA_1D769_
    ld de, $6C00
    ld bc, $02E0
    call writeBcBytesToVRAM
    ld hl, _DATA_1D769_
    ld bc, $02E0
    jp _LABEL_2C5_

_LABEL_1410_:
    ld hl, _DATA_1DA49_
    ld de, $7280
    ld bc, $00C0
    call writeBcBytesToVRAM
    ld hl, _DATA_1DA49_
    ld bc, $00C0
    jp _LABEL_2C5_

_LABEL_1425_:
    ld hl, _DATA_1DEE9_
    ld de, $7680
    ld bc, $00C0
    jp writeBcBytesToVRAM

_LABEL_1431_:
    ld hl, _DATA_1E2A9_
    ld de, $6C20
    ld bc, $0AE0
    jp writeBcBytesToVRAM

_LABEL_143D_:
    ld hl, _DATA_1E0A9_
    ld de, $73E0
    ld bc, $0020
    jp writeBcBytesToVRAM

_LABEL_1449_:
    ld hl, _DATA_1E0C9_
    ld de, $7320
    ld bc, $00C0
    jp writeBcBytesToVRAM

_LABEL_1455_:
    ld hl, _DATA_1DFA9_
    ld de, $7400
    ld bc, $0100
    jp writeBcBytesToVRAM

_LABEL_1461_:
    ld hl, _DATA_1CE09_
    ld de, $7500
    ld bc, $00C0
    call writeBcBytesToVRAM
    ld hl, _DATA_1CE09_
    ld bc, $00C0
    jp _LABEL_2C5_

_LABEL_1476_:
    ld hl, _DATA_1D0C9_
    ld de, $7180
    ld bc, $0280
    jp writeBcBytesToVRAM

_LABEL_1482_:
    ld hl, _DATA_1E229_
    ld de, $6DC0
    ld bc, $0080
    jp writeBcBytesToVRAM

_LABEL_148E_:
    ld hl, _DATA_1C629_
    ld de, $6E40
    ld bc, $01C0
    jp writeBcBytesToVRAM

_LABEL_149A_:
    ld hl, _DATA_1ED89_
    ld de, $7740
    ld bc, $0080
    jp writeBcBytesToVRAM

_LABEL_14A6_:
    ld hl, _DATA_1C5A9_
    ld de, $6840
    ld bc, $0040
    jp writeBcBytesToVRAM

_LABEL_14B2_:
    ld hl, _DATA_1C529_
    ld de, $6800
    ld bc, $0040
    jp writeBcBytesToVRAM

_LABEL_14BE_:
    ld hl, _DATA_1C529_
    ld de, $67C0
    ld bc, $0040
    jp writeBcBytesToVRAM

_LABEL_14CA_:
    ld hl, _DATA_1C569_
    ld de, $67C0
    ld bc, $0040
    jp writeBcBytesToVRAM

_LABEL_14D6_:
    ld hl, _DATA_1C5E9_
    ld de, $67C0
    ld bc, $0040
    jp writeBcBytesToVRAM

_LABEL_14E2_:
    ld hl, _DATA_1C3C9_
    ld de, $6F80
    ld bc, $0080
    jp writeBcBytesToVRAM

_LABEL_14EE_:
    ld hl, _DATA_1C169_
    ld de, $7100
    ld bc, $0080
    jp writeBcBytesToVRAM

_LABEL_14FA_:
    ld hl, _DATA_1C1E9_
    ld de, $6B20
    ld bc, $0080
    jp writeBcBytesToVRAM

_LABEL_1506_:
    ld hl, _DATA_1C449_
    ld de, $7100
    ld bc, $0080
    jp writeBcBytesToVRAM

_LABEL_1512_:
    ld hl, tiles_villageElder
    ld de, $6AA0
    ld bc, $0100
    jp writeBcBytesToVRAM

_LABEL_151E_:
    ld a, $85
    ld (Mapper_Slot2), a
    ld hl, _DATA_16F51_
    ld de, $7180
    ld bc, $0020
    call writeBcBytesToVRAM
    ld hl, _DATA_16F51_
    ld bc, $0020
    call _LABEL_2C5_
    ld hl, _DATA_16F71_
    ld de, $71C0
    ld bc, $0040
    call writeBcBytesToVRAM
    ld a, $87
    ld (Mapper_Slot2), a
    ret

_LABEL_154A_:
    ld a, $85
    ld (Mapper_Slot2), a
    ld hl, _DATA_17211_
    ld de, $76E0
    ld bc, $0080
    call writeBcBytesToVRAM
    ld a, $87
    ld (Mapper_Slot2), a
    ret

_LABEL_1561_:
    ld hl, _DATA_1E189_
    ld de, $7180
    ld bc, $0080
    jp writeBcBytesToVRAM

; Jump Table from 156D to 158E (17 entries, indexed by v_level)
_DATA_156D_:
.dw _LABEL_15D2_ _LABEL_15DF_ _LABEL_15D2_ _LABEL_15EC_ _LABEL_15D2_ _LABEL_15DF_ _LABEL_1612_ _LABEL_161F_
.dw _LABEL_15D2_ _LABEL_15DF_ _LABEL_161F_ _LABEL_161F_ _LABEL_15DF_ _LABEL_161F_ _LABEL_15DF_ _LABEL_15F9_
.dw _LABEL_15D2_

_LABEL_158F_:
    ld hl, v_shouldUpdateTitlescreenLevelTiles
    ld a, (hl)
    ld (hl), $00
    or a
    jp z, +
    ld hl, v_titleScreenTileUpdateTimer
    dec (hl)
    ret nz
    inc (hl)
+:
    ld hl, v_titleScreenTileUpdateTimer
    dec (hl)
    ret nz
    ld (hl), $12
    ld a, $85
    ld (Mapper_Slot2), a
    ld hl, (v_titleScreenTileUpdaterPointer)
    jp (hl)

_LABEL_15AF_:
    ld hl, v_titleScreen4FrameTileTimer
    inc (hl)
    ld a, (hl)
    cp $04
    jp c, ++
    jp +

_LABEL_15BC_:
    ld hl, v_titleScreen6FrameTileTimer
    inc (hl)
    ld a, (hl)
    cp $06
    jp c, ++
+:
    xor a
    ld (hl), a
++:
    add a, a
    ld l, a
    ld h, $00
    add hl, de
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    ret

; 1st entry of Jump Table from 156D (indexed by v_level)
_LABEL_15D2_:
    ld de, _DATA_1620_
    call _LABEL_15BC_
    ld de, $5100
    ld b, $40
    rst $30    ; memcpyToVRAM
    ret

; 2nd entry of Jump Table from 156D (indexed by v_level)
_LABEL_15DF_:
    ld de, _DATA_162C_
    call _LABEL_15BC_
    ld de, $48C0
    ld b, $40
    rst $30    ; memcpyToVRAM
    ret

; 4th entry of Jump Table from 156D (indexed by v_level)
_LABEL_15EC_:
    ld de, _DATA_1638_
    call _LABEL_15AF_
    ld de, $49E0
    ld b, $60
    rst $30    ; memcpyToVRAM
    ret

; 16th entry of Jump Table from 156D (indexed by v_level)
_LABEL_15F9_:
    ld de, _DATA_1640_
    call _LABEL_15AF_
    ld de, $48A0
    ld b, $60
    rst $30    ; memcpyToVRAM
    ld de, _DATA_1620_
    call _LABEL_15BC_
    ld de, $5100
    ld b, $40
    rst $30    ; memcpyToVRAM
    ret

; 7th entry of Jump Table from 156D (indexed by v_level)
_LABEL_1612_:
    ld de, _DATA_1648_
    call _LABEL_15AF_
    ld de, $4B40
    ld b, $60
    rst $30    ; memcpyToVRAM
    ret

; 8th entry of Jump Table from 156D (indexed by v_level)
_LABEL_161F_:
    ret

; Pointer Table from 1620 to 162B (6 entries, indexed by v_titleScreen6FrameTileTimer)
_DATA_1620_:
.dw _DATA_17853_ _DATA_17893_ _DATA_178D3_ _DATA_17913_ _DATA_178D3_ _DATA_17893_

; Pointer Table from 162C to 1637 (6 entries, indexed by v_titleScreen6FrameTileTimer)
_DATA_162C_:
.dw _DATA_17953_ _DATA_17993_ _DATA_179D3_ _DATA_17A13_ _DATA_179D3_ _DATA_17993_

; Pointer Table from 1638 to 163F (4 entries, indexed by v_titleScreen4FrameTileTimer)
_DATA_1638_:
.dw _DATA_17A53_ _DATA_17AB3_ _DATA_17B13_ _DATA_17B73_

; Pointer Table from 1640 to 1647 (4 entries, indexed by v_titleScreen4FrameTileTimer)
_DATA_1640_:
.dw _DATA_17BD3_ _DATA_17C33_ _DATA_17C93_ _DATA_17CF3_

; Pointer Table from 1648 to 164F (4 entries, indexed by v_titleScreen4FrameTileTimer)
_DATA_1648_:
.dw _DATA_17D53_ _DATA_17DB3_ _DATA_17E13_ _DATA_17E73_

; 9th entry of Jump Table from 3B (indexed by v_gameState)
updateBonusLevelState:
    exx
    bit 7, (hl)
    jp z, _LABEL_1735_
    ld a, $09
    call setAndWaitForInterruptFlags
    ld a, (_RAM_D800_)
    or a
    jr nz, +
    ld a, $8A
    ld (v_gameState), a
    ld b, $0A
    jp _LABEL_343_

+:
    ld a, (_RAM_C095_)
    or a
    ret nz
    ld hl, $0000
    ld (v_verticalScrollSpeed), hl
    ld a, $BD
    ld (_RAM_C014_), a
-:
    ld a, $01
    call setAndWaitForInterruptFlags
    ld hl, _RAM_C014_
    dec (hl)
    jp nz, -
    ld a, $82
    ld (Mapper_Slot2), a
    call resetSoundAndInitVolume
    ld hl, v_money
    ld de, v_moneyByteTwo
    ld (hl), $00
    ldi
    ldi
    ld a, $01
    ld (v_lives), a
    ld a, $06
    ld (v_gameState), a
    ret

; 9th entry of Jump Table from 127 (indexed by v_gameState)
handleInterruptBonusLevelState:
    ld a, (_RAM_D800_)
    or a
    ret z
    call _LABEL_69B5_
    ld hl, (v_verticalScrollSpeed)
    ld de, (v_verticalScroll)
    add hl, de
    ld a, h
    cp $E0
    jr c, +
    ld c, $20
    add a, c
    ld h, a
+:
    ld (v_verticalScroll), hl
    cp d
    ret z
    and $07
    ret nz
    ld a, h
    add a, $C0
    ld c, $20
    jr c, +
    cp $E0
    jr nc, +
    ld c, $00
+:
    add a, c
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $7800
    add hl, de
    ex de, hl
    ld a, $83
    ld (Mapper_Slot2), a
    ld hl, (v_endingSequencePointer)
    ld a, (hl)
    inc hl
    or a
    jp z, _LABEL_170D_
    ld b, a
    inc a
    jp z, _LABEL_1730_
    inc a
    jr z, +
    push de
    exx
    pop de
    ld l, $00
    ld bc, $0040
    call fillVRAM
    exx
    ld a, (hl)
    or e
    ld e, a
    inc hl
    xor a
    ld (_RAM_C10A_), a
    call _LABEL_159_
_LABEL_170D_:
    ld (v_endingSequencePointer), hl
    ret

+:
    push hl
    ld a, d
    add a, e
    ld hl, $0100
    cp $FE
    ld bc, $0040
    jr c, +
    ld bc, $0020
    call fillVRAM
    ld bc, $0020
    ld de, $7800
+:
    call fillVRAM
    pop hl
    jr _LABEL_170D_

_LABEL_1730_:
    xor a
    ld (_RAM_C095_), a
    ret

_LABEL_1735_:
    call resetSoundAndInitVolume
    ld b, $05
    call _LABEL_343_
    call clearVDPTablesAndDisableScreen
    ld hl, v_levelWidth
    ld de, v_levelWidth + 1
    ld bc, $002A
    ld (hl), $00
    ldir
    xor a
    ld (v_newEntityHorizontalOffset), a
    ld a, (v_level)
    cp $11
    jp z, +
    ld a, $01
    ld (v_currentLevelIsBonusLevel), a
    ld a, $83
    ld (Mapper_Slot2), a
    ld a, (v_level)
    push af
    inc a
    ld (v_level), a
    call _LABEL_E6C_
    call loadLevelPalette
    ld a, $87
    ld (Mapper_Slot2), a
    call loadLevelSpriteTiles
    pop af
    ld (v_level), a
    ld hl, $8AD6
    ld de, $8AD6
    ld bc, $0607
    jr ++

+:
    ld a, (_RAM_D800_)
    or a
    jp nz, _LABEL_189A_
    ld hl, $BC53
    ld de, $BC53
    ld bc, $0300
    ld a, (_RAM_C07F_)
    or a
    jr z, ++
    ld bc, $0400
++:
    ld a, $85
    ld (Mapper_Slot2), a
    ld (v_levelLayoutPointer), hl
    ld (v_SecondLevelLayoutPointer), de
    ld a, b
    ld (v_horizontalScreenNumber), a
    xor a
    ld (v_verticalScreenNumber), a
    ld a, c
    ld (v_levelWidth), a
    xor a
    ld (v_levelHeight), a
    ld a, $08
    ld (v_levelScrollability), a
    ld hl, $7800
    ld (_RAM_C0B7_), hl
    ld (_RAM_C0C5_), hl
-:
    ld hl, $0100
    ld (v_horizontalScrollSpeed), hl
    call _LABEL_67C4_
    call _LABEL_6B49_
    call _LABEL_6920_
    ld hl, (v_horizontalScroll)
    ld a, h
    or l
    jr nz, -
    ld a, $88
    ld (v_currentScreenNumber), a
    ld hl, $0000
    ld (v_horizontalScrollSpeed), hl
    ld a, (v_levelScrollability)
    ld (v_scrollFlags), a
    ld ix, v_entity1
    ld de, $0020
    ld a, (v_entitydataArrayLength)
    ld b, a
-:
    call clearCurrentEntity
    add ix, de
    djnz -
    ld a, $82
    ld (Mapper_Slot2), a
    ld ix, v_entity1
    ld (ix+0), $01
    ld a, (v_level)
    cp $11
    jr z, +
    ld (ix+12), $10
    ld (ix+14), $88
    jr _LABEL_1874_

+:
    xor a
    ld (v_scrollFlags), a
    ld (ix+12), $10
    ld (ix+14), $88
    ld a, (_RAM_C07F_)
    or a
    jr nz, +
    ld c, $4C
    ld de, $88F0
    ld b, $01
    ld (ix+12), $70
    ld (ix+14), $A0
    ld (ix+10), $FF
    ld ix, _RAM_C3A0_
    ld (ix+0), c
    ld (ix+12), e
    ld (ix+14), d
    ld (ix+3), b
+:
    ld c, $60
    ld de, $98C0
    ld a, (_RAM_C07F_)
    or a
    jr z, +
    ld c, $61
    ld de, $9008
+:
    ld ix, _RAM_C3C0_
    ld (ix+0), c
    ld (ix+12), e
    ld (ix+14), d
_LABEL_1874_:
    ld ix, v_entity1
    call updateAlexSpawning
    call updateEntities
    ld de, $8026
    rst $08    ; setVDPAddress
    ld a, (v_level)
    inc a
    ld c, a
    ld b, $00
    ld hl, _DATA_DC5_ - 1
    add hl, bc
    ld a, (hl)
    ld (v_soundControl), a
    ld hl, v_gameState
    set 7, (hl)
    ei
    jp enableDisplay

_LABEL_189A_:
    xor a
    ld de, $C000
    call writeAToVRAM
    xor a
    ld de, $C010
    call writeAToVRAM
    call clearEntities
    call updateEntities
    ld a, $83
    ld (Mapper_Slot2), a
    ld hl, data_endingSequenceText
    ld (v_endingSequencePointer), hl
    ld hl, $0039
    ld (v_verticalScrollSpeed), hl
    ld a, $B0
    ld (v_soundControl), a
    ld hl, v_gameState
    set 7, (hl)
    ei
    jp enableDisplay

; 5th entry of Jump Table from 127 (indexed by v_gameState)
handleInterruptLevelCompletedState:
    ret

; 5th entry of Jump Table from 3B (indexed by v_gameState)
updateLevelCompletedState:
    exx
    bit 7, (hl)
    jp z, +
    ld a, $82
    ld (Mapper_Slot2), a
    ld a, $01
    call setAndWaitForInterruptFlags
    ld hl, v_level
    inc (hl)
    ld a, $85
    ld (Mapper_Slot2), a
    ld a, $03
    ld (v_gameState), a
    ret

+:
    set 7, (hl)
    call resetSoundAndInitVolume
    ld b, $05
    call _LABEL_343_
    call clearVDPTablesAndDisableScreen
    ld hl, _RAM_D7D0_
    ld de, _RAM_D7D0_ + 1
    ld (hl), $00
    ld bc, $000E
    ldir
    xor a
    ld (_RAM_C08E_), a
    ld b, $1E
    ld de, $0020
    ld ix, v_entity1
-:
    call clearCurrentEntity
    add ix, de
    djnz -
    ld hl, _RAM_D800_
    ld de, _RAM_D800_ + 1
    ld (hl), $00
    ld bc, $0007
    ldir
    ld a, (v_level)
    cp $0A
    jp nz, +
    ld hl, _RAM_D802_
    set 0, (hl)
+:
    ld de, $8026
    call setVDPAddress
    xor a
    ld (v_newEntityHorizontalOffset), a
    ld (v_shopFlags), a
    ld (_RAM_C054_), a
    ld (_RAM_C051_), a
    ld (v_currentLevelIsBonusLevel), a
    ei
    jp enableDisplay


.INC "engine/states/levelStarting/update.asm"
.INC "engine/states/levelStarting/handleInterrupt.asm"
.INC "engine/states/levelStarting/init.asm"


; 86th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
.INC "entities/arrow/update.asm"

; 88th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
.INC "entities/jankensCastle/update.asm"

; Data from 1B97 to 1BA6 (16 bytes)
levelStartingPalette:
.db $00 $2F $0B $06 $01 $0C $08 $04 $3F $3E $38 $03 $30 $00 $0F $00

; Data from 1BA7 to 1BC8 (34 bytes)
.INC "src/data/mapArrowPositions.asm"

; 6th entry of Jump Table from 3B (indexed by v_gameState)
.INC "engine/states/shop/update.asm"
; 6th entry of Jump Table from 127 (indexed by v_gameState)
.INC "engine/states/shop/handleInterrupt.asm"

; 12th entry of Jump Table from 3B (indexed by v_gameState)
.INC "engine/states/map/update.asm"

; 12th entry of Jump Table from 127 (indexed by v_gameState)
.INC "engine/states/map/handleInterrupt.asm"

_LABEL_264F_:
    ld a, (_RAM_C054_)
    or a
    ret z
    cp $03
    ret nc
    ld hl, (v_invincibilityTimer)
    ld a, h
    or l
    jr z, +
    dec hl
    ld (v_invincibilityTimer), hl
    ret

+:
    ld a, $B2
    ld (v_soundControl), a
    xor a
    ld (_RAM_C054_), a
    ld a, $03
    ld de, $C014
    jp writeAToVRAM

; Data from 2674 to 2693 (32 bytes)
_DATA_2674_:
.db $30 $00 $3F $2A $25 $0F $03 $0B $3C $02 $00 $00 $00 $00 $00 $00
.db $30 $00 $3F $2A $25 $0F $03 $0B $3C $02 $00 $00 $00 $00 $00 $00

.INC "engine/entity/entity.asm"

.INC "entities/updatersPointers.asm"

; 1st entry of Jump Table from 2892 (indexed by _RAM_CF80_)
.INC "entities/alex/updater.asm"

; Jump Table from 2982 to 29B9 (28 entries, indexed by v_entities.1.state)
alexStateHandlersPointers:
.dw updateAlexSpawningAtCenter
.dw updateAlexIdle
.dw updateAlexWalking
.dw updateAlexInAir
.dw updateAlexCrouched
.dw updateAlexSwiming
.dw updateAlexFlyingPeticopter
.dw alexHandler_336F
.dw updateAlexRidingMotorcycle
.dw alexHandler_302F
.dw alexHandler_3256
.dw updateAlexRidingBoat
.dw updateAlexRidingBoatInAir
.dw alexHandler_3180
.dw alexHandler_31A8
.dw updateAlexDead
.dw alexHandler_3340
.dw alexHandler_31CC
.dw alexHandler_3223
.dw alexHandler_38C5
.dw updateAutoWalkingRight
.dw alexHandler_3919
.dw alexHandler_3961
.dw alexHandler_39A5
.dw alexHandler_3949
.dw alexHandler_39B4
.dw alexHandler_39D4
.dw alexHandler_38C2

.INC "entities/alex/updaters/updateSpawning.asm"

_LABEL_2A6E_:
    ld (ix + Entity.animationTimerResetValue), $05
    ld (ix + Entity.unknown11), $18
    ld (ix + Entity.unknown9), $08
    ld (ix + Entity.state), $07
    ld hl, _DATA_90BC_
    jp _LABEL_41AA_

startAutoWalkRight:
    ld (ix + Entity.animationTimerResetValue), $05
    ld (ix + Entity.unknown11), $18
    ld (ix + Entity.unknown9), $08
    ld (ix + Entity.state), ALEX_AUTO_WALKING_RIGHT
    ld (ix + Entity.yPos.high), $98
    ld hl, _DATA_90BC_
    jp _LABEL_41AA_

; 2nd entry of Jump Table from 2982 (indexed by v_entities.1.state)
.INC "entities/alex/updaters/updateAlexIdle.asm"

crouch:
    ld (ix + Entity.state), ALEX_CROUCHED
    bit 0, (ix + Entity.unknown3)
    ld hl, _DATA_8DA7_
    jp z, _LABEL_41AA_
    ld hl, _DATA_8DBC_
    jp _LABEL_41AA_

walkLeft:
    res 1, (ix + Entity.unknown3)
--:
    res 0, (ix + Entity.unknown3)
    ld (ix + Entity.state), ALEX_WALKING
    ret

walkRight:
    set 1, (ix + Entity.unknown3)
-:
    set 0, (ix + Entity.unknown3)
    ld (ix + Entity.state), ALEX_WALKING
    ret

walk:
    bit 1, (ix + Entity.unknown3)
    jr z, --
    jr -

; 3rd entry of Jump Table from 2982 (indexed by v_entities.1.state)
updateAlexWalking:
    ld hl, $0000
    ld (v_entities.1.ySpeed), hl
    bit 4, (ix+28)
    jp nz, _LABEL_3DFB_
    call _LABEL_3C45_
    ld a, (v_entities.1.state)
    cp ALEX_WALKING
    ret nz
    ld de, $1904
    ld a, (v_entities.1.isOffScreenFlags.high)
    or a
    jr z, +
    call _LABEL_3A4F_
    jp nc, _LABEL_2CA1_
    jr ++

+:
    ld a, $08
    call _LABEL_3A41_
    jp nc, _LABEL_2CA1_
    call _LABEL_3D07_
    ld a, (v_entities.1.state)
    cp ALEX_WALKING
    ret nz
++:
    ld a, (_RAM_C007_)
    bit 5, a
    jr z, +
    ld (ix+26), $01
    call _LABEL_3B56_
    jp _LABEL_4508_

+:
    bit 4, a
    jp nz, _LABEL_2CAE_
    bit 1, (ix+20)
    jp nz, _LABEL_2C25_
    ld de, $0102
    ld a, (v_entities.1.isOffScreenFlags.high)
    or a
    jr z, +
    ld d, $17
    call _LABEL_3A11_
    jr c, ++
    jr +++

+:
    ld a, $0E
    ld b, $01
    call _LABEL_39ED_
    jr nc, +++
++:
    call _LABEL_3B56_
    ld a, (v_inputData)
    bit JOY_DOWN_BIT, a
    jp nz, crouch
    bit JOY_RIGHT_BIT, a
    jp nz, walkRight
    bit JOY_LEFT_BIT, a
    jr nz, _LABEL_2BDC_
    jp _LABEL_2BFA_

+++:
    ld a, (v_inputData)
    bit JOY_LEFT_BIT, a
    jr z, +
    set 2, (ix + Entity.unknown3)
    ld de, $FFC0
    ld bc, $FE00
    call _LABEL_3B2B_
_LABEL_2BDC_:
    ld hl, _DATA_8CEB_
    jp _LABEL_4189_

+:
    bit JOY_RIGHT_BIT, a
    jp nz, +
    bit JOY_DOWN_BIT, a
    jp nz, crouch
    bit 2, (ix + Entity.unknown3)
    jr z, _LABEL_2BFA_
    ld de, $0020
    call _LABEL_3B50_
    jr nc, _LABEL_2BDC_
_LABEL_2BFA_:
    ld a, $05
    ld (v_entities.1.animationTimerResetValue), a
    ld a, $01
    ld (v_entities.1.state), a
_LABEL_2C04_:
    ld hl, _DATA_90A7_
    ld a, (v_entities.1.unknown3)
    bit 0, a
    jp z, _LABEL_41AA_
    ld hl, _DATA_90BC_
    jp _LABEL_41AA_

+:
    set 0, (ix + Entity.unknown3)
    ld de, $0040
    call _LABEL_3B61_
    ld hl, _DATA_8CF4_
    jp _LABEL_4189_

_LABEL_2C25_:
    ld de, $010E
    ld a, (v_entities.1.isOffScreenFlags.high)
    or a
    jr z, +
    ld d, $17
    call _LABEL_3A11_
    jr c, ++
    jp +++

+:
    ld a, $0E
    ld b, $01
    call _LABEL_39ED_
    jr nc, +++
++:
    call _LABEL_3B56_
    ld a, (v_inputData)
    bit JOY_DOWN_BIT, a
    jp nz, crouch
    bit JOY_LEFT_BIT, a
    jp nz, walkLeft
    bit JOY_RIGHT_BIT, a
    jr nz, _LABEL_2C6C_
    jp _LABEL_2BFA_

+++:
    ld a, (v_inputData)
    bit JOY_RIGHT_BIT, a
    jr z, +
    set 2, (ix+20)
    ld de, $0040
    ld bc, $0200
    call _LABEL_3B7E_
_LABEL_2C6C_:
    ld hl, _DATA_8CF4_
    jp _LABEL_4189_

+:
    bit JOY_LEFT_BIT, a
    jr nz, +
    bit JOY_DOWN_BIT, a
    jp nz, crouch
    bit 2, (ix+20)
    jp z, _LABEL_2BFA_
    ld de, $FFE0
    call _LABEL_3BA1_
    jr c, _LABEL_2C6C_
    jp _LABEL_2BFA_

+:
    set 2, (ix+20)
    res 0, (ix+20)
    ld de, $FFC0
    call _LABEL_3BB1_
    ld hl, _DATA_8CF4_
    jp _LABEL_4189_

_LABEL_2CA1_:
    ld a, (v_entities.1.unknown3)
    and $BF
    or $80
    set 2, (ix+28)
    jr +

_LABEL_2CAE_:
    ld a, $91
    ld (v_soundControl), a
    ld (ix+27), $16
    ld a, (v_entities.1.unknown3)
    and $3F
+:
    ld (v_entities.1.unknown3), a
    bit 0, a
    ld (ix+26), $03
    ld hl, _DATA_8F00_
    jr z, +
    ld hl, _DATA_8F15_
+:
    call _LABEL_41AA_
; 4th entry of Jump Table from 2982 (indexed by v_entities.1.state)
updateAlexInAir:
    call _LABEL_3C45_
    ld a, (v_entities.1.state)
    cp ALEX_IN_AIR 
    ret nz
    ld a, (_RAM_C213_)
    or a
    jp nz, _LABEL_3498_
    bit 0, (ix+28)
    jr z, ++
    call _LABEL_462E_
    jr nz, +++
    ld hl, _DATA_8F00_
    bit 0, (ix+20)
    jr z, +
    ld hl, _DATA_8F15_
+:
    call _LABEL_41AA_
    jr +++

++:
    ld a, (_RAM_C007_)
    and $20
    call nz, _LABEL_4508_
+++:
    bit 2, (ix+28)
    jp nz, _LABEL_2D4A_
    ld a, (v_inputData)
    bit JOY_BTN1_BIT, a
    jr z, ++
    dec (ix+27)
    jr z, ++
    ld de, (v_entities.1.xSpeed)
    bit 7, d
    jr nz, +
    xor a
    ld h, a
    ld l, a
    sbc hl, de
    ex de, hl
+:
    sra d
    rr e
    sra d
    rr e
    ld hl, $FE00
    add hl, de
    ld (v_entities.1.ySpeed), hl
    ld de, $0104
    call _LABEL_3A7E_
    bit 7, (ix+20)
    jr z, _LABEL_2D7F_
    set 2, (ix+28)
    jr _LABEL_2D7F_

++:
    set 2, (ix+28)
_LABEL_2D4A_:
    ld de, $0104
    call _LABEL_3A68_
    bit 6, (ix+20)
    jr z, _LABEL_2D7F_
    res 2, (ix+28)
    ld a, $B1
    ld (v_soundControl), a
    ld a, (v_entities.1.unknown8)
    bit 0, a
    jr z, +
    bit 1, a
    jr nz, +
    res 2, (ix+20)
    ld (ix+26), $01
    jp _LABEL_2BFA_

+:
    bit 2, (ix+20)
    jp z, _LABEL_2BFA_
    call walk
_LABEL_2D7F_:
    bit 1, (ix+20)
    jp nz, _LABEL_2DF3_
    ld de, $1802
    ld a, (v_entities.1.isOffScreenFlags.high)
    or a
    jr z, +
    call _LABEL_3A11_
    jr c, +++
    jr ++

+:
    ld a, (v_entities.1.ySpeed.high)
    add a, $07
    ld d, a
    ld a, $08
    ld e, $02
    ld b, $01
    call _LABEL_39ED_
    jr c, +++
++:
    ld a, (v_inputData)
    bit JOY_LEFT_BIT, a
    jr nz, ++++
    bit JOY_RIGHT_BIT, a
    jr nz, +++++
    ld de, $0008
    jp _LABEL_3B4B_

+++:
    call _LABEL_3B56_
    ld a, (v_inputData)
    bit JOY_RIGHT_BIT, a
    ret z
    set 1, (ix+20)
    ret

++++:
    set 2, (ix+20)
    ld de, $FFF0
    ld bc, $FE00
    jp _LABEL_3B2B_

+++++:
    ld a, (v_entities.1.unknown3)
    set 0, a
    ld (v_entities.1.unknown3), a
    ld hl, _DATA_8F15_
    ld a, (v_entities.1.unknown8)
    and $03
    cp $01
    jr nz, +
    ld hl, _DATA_8DE9_
+:
    call _LABEL_41AA_
    ld de, $0010
    jp _LABEL_3B61_

_LABEL_2DF3_:
    ld de, $180E
    ld a, (v_entities.1.isOffScreenFlags.high)
    or a
    jr z, +
    call _LABEL_3A11_
    jr c, +++
    jr ++

+:
    ld a, (v_entities.1.ySpeed.high)
    add a, $07
    ld d, a
    ld a, $08
    ld b, $01
    call _LABEL_39ED_
    jr c, +++
++:
    ld a, (v_inputData)
    bit JOY_RIGHT_BIT, a
    jr nz, ++++
    bit JOY_LEFT_BIT, a
    jr nz, +++++
    ld de, $FFF8
    jp _LABEL_3B9C_

+++:
    call _LABEL_3B56_
    ld a, (v_inputData)
    bit JOY_LEFT_BIT, a
    ret z
    res 1, (ix+20)
    ret

++++:
    set 2, (ix+20)
    ld de, $0010
    ld bc, $0200
    jp _LABEL_3B7E_

+++++:
    ld a, (v_entities.1.unknown3)
    bit 0, a
    res 0, a
    ld (v_entities.1.unknown3), a
    ld hl, _DATA_8F00_
    ld a, (v_entities.1.unknown8)
    and $03
    cp $01
    jr nz, +
    ld hl, _DATA_8DD1_
+:
    call _LABEL_41AA_
    ld de, $FFF0
    jp _LABEL_3BB1_

; 5th entry of Jump Table from 2982 (indexed by v_entities.1.state)
updateAlexCrouched:
    ld hl, $0000
    ld (v_entities.1.ySpeed), hl
    bit 4, (ix+28)
    jp nz, _LABEL_3E0B_
    call _LABEL_3C45_
    ld a, (v_entities.1.state)
    cp ALEX_CROUCHED
    ret nz
    ld de, $1904
    ld a, (v_entities.1.isOffScreenFlags.high)
    or a
    jr z, +
    call _LABEL_3A4F_
    jp nc, _LABEL_2CA1_
    jr ++

+:
    ld a, $08
    call _LABEL_3A41_
    jp nc, _LABEL_2CA1_
++:
    ld a, (v_inputData)
    bit JOY_DOWN_BIT, a
    jr nz, +
    ld a, (v_entities.1.isOffScreenFlags.high)
    or a
    jp nz, _LABEL_2F22_
    ld de, $0004
    ld a, $08
    call _LABEL_3A41_
    jp nc, _LABEL_2F22_
+:
    bit 2, (ix+20)
    jr z, +
    bit 1, (ix+20)
    jp nz, _LABEL_2F2C_
    ld de, $0902
    ld a, $0D
    call _LABEL_3A03_
    jp c, _LABEL_3B56_
    ld de, $0020
    jp _LABEL_3B4B_

+:
    ld a, (v_inputData)
    ld c, a
    ld a, (v_entities.1.unknown3)
    and $FB
    bit 2, c
    jr nz, ++
    bit 3, c
    ret z
    bit 1, c
    jr nz, +
    ld de, $090E
    ld a, $0D
    call _LABEL_3A03_
    jr c, +
    ld hl, $0020
    ld (v_entities.1.xSpeed), hl
    set 2, a
+:
    or $03
    bit 0, (ix+20)
    ld (v_entities.1.unknown3), a
    ret nz
    ld hl, _DATA_8DBC_
    jp _LABEL_41AA_

++:
    bit 1, c
    jr nz, +
    ld de, $0902
    ld a, $0D
    call _LABEL_3A03_
    jr c, +
    ld hl, $FFE0
    ld (v_entities.1.xSpeed), hl
    set 2, a
+:
    and $FC
    bit 0, (ix + Entity.unknown3)
    ld (v_entities.1.unknown3), a
    ret z
    ld hl, _DATA_8DA7_
    jp _LABEL_41AA_

_LABEL_2F22_:
    bit 2, (ix + Entity.unknown3)
    jp z, _LABEL_2BFA_
    jp walk

_LABEL_2F2C_:
    ld de, $090E
    ld a, $0D
    call _LABEL_3A03_
    jp c, _LABEL_3B56_
    ld de, $FFE0
    call _LABEL_3BA1_
    jp nc, _LABEL_3B56_
    ret

_LABEL_2F41_:
    res 7, (ix + Entity.flags)
    ld a, (v_entities.1.state)
    cp ALEX_FLYING_PETICOPTER
    jp z, _LABEL_388E_
    cp ALEX_RIDING_BOAT
    jp z, _LABEL_388E_
    cp ALEX_RIDING_BOAT_IN_AIR
    jp z, _LABEL_388E_
    xor a
    ld h, a
    ld l, a
    ld (v_entities.1.xSpeed), hl
    ld (v_entities.1.unknown8), a
    ld (_RAM_C054_), a
    res 2, (ix + Entity.unknown3)
    ld hl, $FF38
    ld (v_entities.1.ySpeed), hl
    ld a, (v_entities.1.state)
    ld (v_alexStateBeforeHit), a
    ld (ix + Entity.state), ALEX_DEAD
    ld (ix + Entity.animationTimerResetValue), $05
    ld b, $1E
-:
    ld a, $01
    call setAndWaitForInterruptFlags
    djnz -
    ld a, $89
    ld (v_soundControl), a
    ret

; 16th entry of Jump Table from 2982 (indexed by v_entities.1.state)
.INC "entities/alex/updaters/updateDead.asm"

; 9th entry of Jump Table from 2982 (indexed by v_entities.1.state)
updateAlexRidingMotorcycle:
    ld hl, $0000
    ld (v_entities.1.ySpeed), hl
    ld de, $0C0C
    call _LABEL_3C48_
    ld de, $1805
    ld a, $0F
    call _LABEL_3A41_
    jp nc, _LABEL_3013_
    ld a, (_RAM_C007_)
    bit 4, a
    jp nz, _LABEL_301D_
    ld a, (v_entities.1.xSpeed.high)
    cpl
    add a, $07
    ld (v_entities.1.animationTimerResetValue), a
    ld hl, _DATA_8D19_
    call _LABEL_4189_
_LABEL_2FD5_:
    ld de, $0214
    call getTileNearEntityWithXYOffset
    rlca
    jr nc, +
    rlca
    jp nc, _LABEL_43F2_
    call _LABEL_4578_
    jr ++

+:
    ld de, $1218
    call getTileNearEntityWithXYOffset
    rlca
    jr nc, ++
    rlca
    jp nc, _LABEL_43F2_
    call _LABEL_4578_
++:
    ld a, (v_inputData)
    bit JOY_RIGHT_BIT, a
    jr z, +
    ld de, $0040
    ld bc, $0400
    jp _LABEL_3B7E_

+:
    bit 2, a
    ret z
    ld de, $FFC0
    ld bc, $0100
    jp _LABEL_3BCF_

_LABEL_3013_:
    set 7, (ix+20)
    set 2, (ix+28)
    jr +

_LABEL_301D_:
    ld (ix+27), $10
    res 7, (ix + Entity.unknown3)
+:
    ld (ix + Entity.state), ALEX_RIDING_MOTORCYCLE_IN_AIR
    ld hl, _DATA_8F60_
    call _LABEL_41AA_
; 10th entry of Jump Table from 2982 (indexed by v_entities.1.state)
alexHandler_302F:
    ld de, $0C0C
    call _LABEL_3C48_
    bit 2, (ix+28)
    jr nz, ++
    ld a, (v_inputData)
    bit JOY_BTN1_BIT, a
    jr z, +
    dec (ix+27)
    jr z, +
    ld de, (v_entities.1.xSpeed)
    xor a
    ld h, a
    ld l, a
    sbc hl, de
    ex de, hl
    sra d
    rr e
    ld hl, $FE00
    add hl, de
    ld (v_entities.1.ySpeed), hl
    ld de, $0102
    call _LABEL_3A7E_
    bit 7, (ix+20)
    jp z, _LABEL_2FD5_
    set 2, (ix+28)
    jp _LABEL_2FD5_

+:
    set 2, (ix+28)
++:
    ld de, $0102
    call _LABEL_3A68_
    bit 6, (ix+20)
    jp z, _LABEL_2FD5_
    ld a, (v_entities.1.unknown3)
    and $3F
    ld (v_entities.1.unknown3), a
    res 2, (ix+28)
    ld (ix+26), $08
    jp _LABEL_2FD5_

; 12th entry of Jump Table from 2982 (indexed by v_entities.1.state)
updateAlexRidingBoat:
    ld hl, $0000
    ld (v_entities.1.ySpeed), hl
    ld de, $0C0C
    call _LABEL_3C48_
    bit 0, (ix+28)
    jr nz, +
    ld a, (_RAM_C007_)
    and $20
    call nz, _LABEL_4453_
+:
    ld a, (_RAM_C007_)
    bit 4, a
    jp nz, _LABEL_30F5_
    ld a, (v_entities.1.xSpeed.high)
    cpl
    add a, $07
    ld (v_entities.1.animationTimerResetValue), a
    ld hl, _DATA_8D1E_
    call _LABEL_4189_
_LABEL_30C5_:
    ld de, $0212
    call getTileNearEntityWithXYOffset
    rlca
    jp c, _LABEL_389C_
    ld de, $1214
    call getTileNearEntityWithXYOffset
    rlca
    jp c, _LABEL_389C_
    ld a, (v_inputData)
    bit JOY_RIGHT_BIT, a
    jr z, +
    ld de, $0040
    ld bc, $0280
    jp _LABEL_3B7E_

+:
    bit 2, a
    ret z
    ld de, $FFC0
    ld bc, $0100
    jp _LABEL_3BCF_

_LABEL_30F5_:
    ld (ix+27), $10
    res 7, (ix+20)
    ld (ix+26), $0C
    ld hl, _DATA_9137_
    call _LABEL_41AA_
; 13th entry of Jump Table from 2982 (indexed by v_entities.1.state)
updateAlexRidingBoatInAir:
    ld de, $0C0C
    call _LABEL_3C48_
    bit 0, (ix+28)
    jr nz, +
    ld a, (_RAM_C007_)
    and $20
    call nz, _LABEL_4453_
+:
    bit 2, (ix+28)
    jr nz, ++
    ld a, (v_inputData)
    bit JOY_BTN1_BIT, a
    jr z, +
    dec (ix+27)
    jr z, +
    ld de, (v_entities.1.xSpeed)
    xor a
    ld h, a
    ld l, a
    sbc hl, de
    ex de, hl
    sra d
    rr e
    ld hl, $FE00
    add hl, de
    ld (v_entities.1.ySpeed), hl
    ld de, $0102
    call _LABEL_3A7E_
    bit 7, (ix+20)
    jp z, _LABEL_30C5_
    set 2, (ix+28)
    jp _LABEL_30C5_

+:
    set 2, (ix+28)
++:
    ld de, $0102
    call _LABEL_3AE8_
    ld a, (v_entities.1.state)
    cp $13
    ret z
    bit 6, (ix+20)
    jp z, _LABEL_30C5_
    ld a, (v_entities.1.unknown3)
    and $3F
    ld (v_entities.1.unknown3), a
    res 2, (ix+28)
    ld (ix+26), $0B
    jp _LABEL_30C5_

; 14th entry of Jump Table from 2982 (indexed by v_entities.1.state)
alexHandler_3180:
    ld a, (v_shopEntranceHorizontalPosition)
    ld hl, (v_horizontalScroll)
    add a, h
    cp (ix+12)
    jr z, +
    jr c, ++
    ld hl, $0080
    ld (v_entities.1.xSpeed), hl
    ld hl, _DATA_8CF4_
    jp _LABEL_4189_

+:
    ld (ix+26), $0E
    ld (ix+27), $21
    ld a, $81
    ld (_RAM_C202_), a
    ret

; 15th entry of Jump Table from 2982 (indexed by v_entities.1.state)
alexHandler_31A8:
    dec (ix+27)
    jr nz, ++
    call _LABEL_3B56_
    ld hl, v_gameState
    ld a, (hl)
    cp $85
    jr z, +
    ld a, $05
    ld (hl), a
    ret

+:
    ld a, $C5
    ld (hl), a
    ret

++:
    ld hl, $FF80
    ld (v_entities.1.xSpeed), hl
    ld hl, _DATA_8CEB_
    jp _LABEL_4189_

; 18th entry of Jump Table from 2982 (indexed by v_entities.1.state)
alexHandler_31CC:
    ld hl, $0000
    ld (v_entities.1.ySpeed), hl
    ld a, (v_shopEntranceHorizontalPosition)
    ld hl, (v_horizontalScroll)
    add a, h
    cp (ix+12)
    jr z, ++
    jr c, +
    ld hl, $0080
    ld (v_entities.1.xSpeed), hl
    set 1, (ix+20)
    ld hl, _DATA_8D02_
    jp _LABEL_4189_

+:
    ld hl, $FF80
    ld (v_entities.1.xSpeed), hl
    res 1, (ix+20)
    ld hl, _DATA_8CFD_
    jp _LABEL_4189_

++:
    ld (ix+26), $12
    ld (ix+27), $40
    ld a, $82
    ld (_RAM_C202_), a
    ld hl, $00D0
    ld (v_entities.1.ySpeed), hl
    call _LABEL_3B56_
    push ix
    call _LABEL_6671_
    pop ix
    ld hl, v_scrollFlags
    set 0, (hl)
    ret

; 19th entry of Jump Table from 2982 (indexed by v_entities.1.state)
alexHandler_3223:
    ld hl, $0300
    ld (v_verticalScrollSpeed), hl
    dec (ix+27)
    ret nz
    jp _LABEL_3498_

_LABEL_3230_:
    ld a, (_RAM_C211_)
    add a, a
    add a, a
    and $F0
    ld (v_entities.1.xPos.high), a
    call _LABEL_3B56_
    ld hl, v_entities.1.unknown3
    ld a, (hl)
    and $2B
    ld (hl), a
    res 2, (ix+20)
    ld (ix+6), $04
    ld (ix+26), $0A
    ld a, $B1
    ld (v_soundControl), a
    ret

; 11th entry of Jump Table from 2982 (indexed by v_entities.1.state)
alexHandler_3256:
    call _LABEL_3B56_
    ld (v_entities.1.ySpeed), hl
    ld a, (v_inputData)
    rrca
    jr c, ++
    rrca
    jr c, _LABEL_32DC_
    rrca
    jr c, +
    rrca
    ret nc
    ld de, $0711
    ld a, $08
    ld e, $02
    ld b, $01
    call _LABEL_39ED_
    ret c
    ld hl, $0100
    ld (v_entities.1.xSpeed), hl
    ld (ix+20), $07
    jp _LABEL_2CA1_

+:
    ld de, $07FF
    ld a, $08
    ld e, $02
    ld b, $01
    call _LABEL_39ED_
    ret c
    ld hl, $FF00
    ld (v_entities.1.xSpeed), hl
    ld (ix+20), $04
    jp _LABEL_2CA1_

++:
    ld a, (v_entities.1.isOffScreenFlags.high)
    or a
    ret nz
    ld de, $0008
    call getTileNearEntityWithXYOffset
    rlca
    jr nc, +
    dec hl
    ld a, (hl)
    cp $3F
    ret nz
+:
    ld de, $0C08
    call getTileNearEntityWithXYOffset
    dec hl
    ld a, (hl)
    cp $3F
    jr z, +
    ld de, $1908
    call getTileNearEntityWithXYOffset
    rlca
    ret nc
    dec hl
    ld a, (hl)
    cp $3F
    jp nz, _LABEL_2BFA_
+:
    res 3, (ix+20)
    ld hl, $FF00
    ld (v_entities.1.ySpeed), hl
    ld hl, _DATA_9188_
    jp _LABEL_4189_

_LABEL_32DC_:
    ld de, $0C08
    call getTileNearEntityWithXYOffset
    dec hl
    ld a, (hl)
    cp $3F
    jr nz, +
    ld a, (v_entities.1.yPos.high)
    add a, $18
    cp $C0
    jr nc, _LABEL_3301_
    ld de, $1808
    call getTileNearEntityWithXYOffset
    rlca
    jr nc, _LABEL_3301_
    dec hl
    ld a, (hl)
    cp $3F
    jp nz, _LABEL_2BFA_
_LABEL_3301_:
    set 3, (ix+20)
    ld hl, $0100
    ld (v_entities.1.ySpeed), hl
    ld hl, _DATA_9188_
    jp _LABEL_4189_

+:
    ld de, $1808
    call getTileNearEntityWithXYOffset
    dec hl
    ld a, (hl)
    cp $3F
    jp nz, _LABEL_2CA1_
    jr _LABEL_3301_

_LABEL_3320_:
    ld hl, (v_entities.1.ySpeed)
    ld (v_alexVerticalSpeedTemporaryCopy), hl
    ld hl, (v_entities.1.xSpeed)
    ld (v_alexHorizontalSpeedTemporaryCopy), hl
    ld hl, $0000
    ld (v_entities.1.xSpeed), hl
    ld (v_entities.1.ySpeed), hl
    ld a, (v_entities.1.state)
    ld (v_alexStateTemporaryCopy), a
    ld (ix+26), $10
    ret

; 17th entry of Jump Table from 2982 (indexed by v_entities.1.state)
alexHandler_3340:
    ld a, (v_scrollFlags)
    and $0F
    ret nz
    ld hl, (v_alexVerticalSpeedTemporaryCopy)
    ld (v_entities.1.ySpeed), hl
    ld hl, (v_alexHorizontalSpeedTemporaryCopy)
    ld (v_entities.1.xSpeed), hl
    ld a, (v_alexStateTemporaryCopy)
    ld (v_entities.1.state), a
    cp $14
    jr nz, _LABEL_335F_
    call _LABEL_2BFA_
_LABEL_335F_:
    ld hl, v_entity1
    ld de, _RAM_C240_
    ld bc, $0020
    ldir
    xor a
    ld (_RAM_C25C_), a
    ret

; 8th entry of Jump Table from 2982 (indexed by v_entities.1.state)
alexHandler_336F:
    call _LABEL_3B56_
    ld (v_entities.1.ySpeed), hl
    res 4, (ix+20)
    res 2, (ix+20)
    call _LABEL_3C45_
    ld a, (_RAM_C054_)
    cp $01
    jp nz, _LABEL_345E_
    bit 0, (ix+28)
    jr z, ++
    call _LABEL_462E_
    ret nz
_LABEL_3392_:
    bit 1, (ix+20)
    jr z, +
    ld hl, _DATA_90BC_
    jp _LABEL_41AA_

+:
    ld hl, _DATA_90A7_
    jp _LABEL_41AA_

++:
    ld a, (_RAM_C007_)
    bit 5, a
    jp nz, _LABEL_4508_
    ld a, (v_inputData)
    ld c, a
    bit JOY_UP_BIT, c
    call nz, ++
    bit JOY_DOWN_BIT, c
    call nz, _LABEL_3400_
    bit JOY_LEFT_BIT, c
    call nz, _LABEL_3424_
    bit JOY_RIGHT_BIT, c
    call nz, _LABEL_3442_
    inc (ix+27)
    bit 2, (ix+27)
    ld de, $0080
    jr z, +
    ld de, $FF80
+:
    ld hl, (v_entities.1.ySpeed)
    add hl, de
    ld (v_entities.1.ySpeed), hl
    jr _LABEL_3392_

++:
    push bc
    ld de, $0104
    ld a, $0E
    call _LABEL_3A41_
    pop bc
    ret c
    ld a, (v_entities.1.yPos.high)
    cp $04
    ret c
    ld hl, $FF00
    ld (v_entities.1.ySpeed), hl
    res 3, (ix+20)
    res 7, (ix+20)
    set 4, (ix+20)
    ret

_LABEL_3400_:
    push bc
    ld de, $1904
    ld a, $08
    call _LABEL_3A41_
    pop bc
    ret c
    ld a, (v_entities.1.yPos.high)
    cp $98
    ret nc
    ld hl, $0100
    ld (v_entities.1.ySpeed), hl
    set 3, (ix+20)
    set 7, (ix+20)
    set 4, (ix+20)
    ret

_LABEL_3424_:
    push bc
    ld de, $0102
    ld a, $0E
    ld b, $01
    call _LABEL_39ED_
    pop bc
    ret c
    ld a, (v_entities.1.unknown3)
    and $FC
    or $04
    ld (v_entities.1.unknown3), a
    ld hl, $FF00
    ld (v_entities.1.xSpeed), hl
    ret

_LABEL_3442_:
    push bc
    ld de, $010E
    ld a, $0E
    ld b, $01
    call _LABEL_39ED_
    pop bc
    ret c
    ld a, (v_entities.1.unknown3)
    or $07
    ld (v_entities.1.unknown3), a
    ld hl, $0100
    ld (v_entities.1.xSpeed), hl
    ret

_LABEL_345E_:
    ld hl, v_entities.1.unknown3
    ld a, (hl)
    and $E7
    ld (hl), a
    jp _LABEL_2CA1_

; 21st entry of Jump Table from 2982 (indexed by v_entities.1.state)
updateAutoWalkingRight:
    ld hl, $0180
    ld (v_entities.1.xSpeed), hl
    set 2, (ix+20)
    ld hl, _DATA_8CF4_
    jp _LABEL_4189_

_LABEL_3478_:
    ld hl, v_entities.2
    call clearEntity
    inc hl
    call clearEntity
    inc hl
    call clearEntity
    ld a, (v_entities.1.unknown8)
    and $F4
    ld (v_entities.1.unknown8), a
    ld hl, _RAM_C054_
    ld a, (hl)
    cp $02
    ret z
    xor a
    ld (hl), a
    ret

_LABEL_3498_:
    ld a, $92
    ld (v_soundControl), a
    ld (ix+26), $05
    ld (ix+6), $0A
    call _LABEL_3478_
    bit 7, (ix+18)
    set 3, (ix+20)
    jr z, updateAlexSwiming
    res 3, (ix+20)
; 6th entry of Jump Table from 2982 (indexed by v_entities.1.state)
updateAlexSwiming:
    bit 4, (ix+28)
    jp nz, _LABEL_3E01_
    ld de, $080C
    call _LABEL_3C48_
    ld a, (v_entities.1.state)
    cp ALEX_SWIMING
    ret nz
    ld a, (v_entities.1.yPos.high)
    sub $08
    jr c, +
    ld d, a
    ld a, (v_entities.1.xPos.high)
    add a, $0C
    ld e, a
    call _LABEL_7C7A_
    and $E0
    cp $60
    jr nz, +
    ld a, (v_inputData)
    and JOY_UP
    jr z, +
    dec hl
    ld a, (hl)
    cp $3F
    jr nz, +
    ld (_RAM_C211_), hl
    ld hl, $F000
    ld (v_entities.1.ySpeed), hl
    jp _LABEL_3230_

+:
    bit 0, (ix+28)
    jr z, ++
    call _LABEL_462E_
    jr nz, +++
    ld hl, _DATA_8E01_
    bit 0, (ix+20)
    jr z, +
    ld hl, _DATA_8E25_
+:
    call _LABEL_41AA_
    jr +++

++:
    ld a, (_RAM_C007_)
    and $20
    jr z, +++
    call _LABEL_44E2_
+++:
    ld de, $110C
    call _LABEL_3D0A_
    call +++
    call _LABEL_363E_
    bit 0, (ix+28)
    ret nz
    ld c, $14
    ld a, (v_inputData)
    bit 0, (ix+20)
    jr nz, ++
    bit JOY_BTN1_BIT, a
    jr z, +
    ld c, $0A
+:
    ld (ix+6), c
    ld hl, _DATA_8CFD_
    jp _LABEL_4189_

++:
    ld c, $14
    bit JOY_BTN1_BIT, a
    jr z, +
    ld c, $0A
+:
    ld (ix+6), c
    ld hl, _DATA_8D02_
    jp _LABEL_4189_

+++:
    bit 3, (ix+20)
    jp nz, _LABEL_35F8_
    ld a, (v_entities.1.yPos.high)
    add a, (ix+18)
    cp $02
    jr c, _LABEL_35BE_
    ld de, $0103
    call getTileNearEntityWithXYOffset
    bit 7, a
    jr nz, _LABEL_35E3_
    ld de, $010C
    call getTileNearEntityWithXYOffset
    bit 7, a
    jp nz, _LABEL_35E3_
    and $E0
    cp $20
    jr nz, _LABEL_35BE_
    ld e, $09
    call _LABEL_7C94_
    ld a, (hl)
    bit 7, a
    jp nz, _LABEL_35E3_
    ld a, (v_inputData)
    bit JOY_DOWN_BIT, a
    jr nz, ++
    bit JOY_UP_BIT, a
    jr nz, +
    ld bc, $FF00
    ld de, $FFF0
    jp _LABEL_3BE1_

+:
    ld bc, $FE80
    ld de, $FFE0
    jp _LABEL_3BE1_

++:
    ld de, $0010
    bit 4, (ix+20)
    jp nz, _LABEL_3BF7_
    set 3, (ix+20)
    ret

_LABEL_35BE_:
    cp $60
    jr nz, +
    dec hl
    ld a, (hl)
    cp $59
    jr nz, +
    ld a, (v_inputData)
    and JOY_UP
    jr z, +
    set 7, (ix+1)
    ret

+:
    ld a, (v_entities.1.unknown3)
    or $18
    ld (v_entities.1.unknown3), a
    ld hl, $0080
    ld (v_entities.1.ySpeed), hl
    ret

_LABEL_35E3_:
    ld hl, $0000
    ld (v_entities.1.ySpeed), hl
    res 4, (ix+20)
    ld a, (v_inputData)
    bit JOY_DOWN_BIT, a
    ret z
    set 3, (ix+20)
    ret

_LABEL_35F8_:
    ld de, $0F03
    ld a, $02
    call _LABEL_3A41_
    jr c, ++
    ld e, $10
    call _LABEL_7C94_
    ld a, (hl)
    rlca
    jr c, ++
    ld a, (v_inputData)
    bit JOY_DOWN_BIT, a
    jr z, +
    ld bc, $0100
    ld de, $0010
    jp _LABEL_3C12_

+:
    ld de, $FFE0
    bit 0, a
    jp nz, _LABEL_3C28_
    ld de, $FFF0
    jp _LABEL_3C28_

++:
    ld hl, $0000
    ld (v_entities.1.ySpeed), hl
    res 4, (ix+20)
    ld a, (v_inputData)
    bit JOY_DOWN_BIT, a
    ret nz
    res 3, (ix+20)
    ret

_LABEL_363E_:
    bit 1, (ix+20)
    jp nz, _LABEL_369A_
    ld de, $0301
    ld a, $0A
    call _LABEL_3A03_
    jr c, +
    ld a, (v_inputData)
    bit JOY_LEFT_BIT, a
    jr nz, ++
    bit JOY_RIGHT_BIT, a
    jr nz, +++
    ld de, $0008
    jp _LABEL_3B4B_

+:
    call _LABEL_3B56_
    ld a, (v_inputData)
    bit JOY_RIGHT_BIT, a
    ret z
    ld a, (v_entities.1.unknown3)
    or $03
    ld (v_entities.1.unknown3), a
    ret

++:
    bit JOY_BTN1_BIT, a
    jr nz, +
    ld de, $FFF0
    ld bc, $FF00
    jp _LABEL_3B2B_

+:
    ld de, $FFE0
    ld bc, $FE80
    jp _LABEL_3B2B_

+++:
    set 0, (ix+20)
    ld de, $0010
    bit 4, a
    jp z, _LABEL_3B61_
    ld de, $0020
    jp _LABEL_3B61_

_LABEL_369A_:
    ld de, $0317
    ld a, $0A
    call _LABEL_3A03_
    jr c, +
    ld a, (v_inputData)
    bit JOY_RIGHT_BIT, a
    jr nz, ++
    bit JOY_LEFT_BIT, a
    jr nz, +++
    ld de, $FFF8
    jp _LABEL_3B9C_

+:
    call _LABEL_3B56_
    ld a, (v_inputData)
    bit JOY_LEFT_BIT, a
    ret z
    ld a, (v_entities.1.unknown3)
    and $F8
    ld (v_entities.1.unknown3), a
    ret

++:
    bit JOY_BTN1_BIT, a
    jr nz, +
    ld de, $0010
    ld bc, $0100
    jp _LABEL_3B7E_

+:
    ld de, $0020
    ld bc, $0180
    jp _LABEL_3B7E_

+++:
    res 0, (ix+20)
    bit JOY_BTN1_BIT, a
    jr nz, +
    ld de, $FFF0
    jp _LABEL_3BB1_

+:
    ld de, $FFE0
    jp _LABEL_3BB1_

; 7th entry of Jump Table from 2982 (indexed by v_entities.1.state)
updateAlexFlyingPeticopter:
    bit 6, (ix+28)
    jr nz, +
    ld a, (_RAM_C007_)
    and $10
    ret z
    set 6, (ix+28)
+:
    ld de, $040C
    call _LABEL_3C48_
    ld de, $140C
    call _LABEL_3C48_
    ld de, $1C0C
    call _LABEL_3C48_
    bit 0, (ix+28)
    jr nz, +
    ld a, (_RAM_C007_)
    and $20
    call nz, _LABEL_4453_
+:
    call ++
    call _LABEL_37D5_
    bit 0, (ix+20)
    ld hl, _DATA_8D07_
    jr z, +
    ld hl, _DATA_8D10_
+:
    ld a, (v_entities.1.animationTimerResetValue)
    inc a
    cp $14
    jp nc, _LABEL_4189_
    ld (v_entities.1.animationTimerResetValue), a
    jp _LABEL_4189_

++:
    bit 1, (ix+20)
    jp nz, _LABEL_378F_
    ld de, $0302
    ld a, $0C
    ld b, $02
    call _LABEL_39ED_
    jr c, +
    ld a, (v_inputData)
    bit JOY_LEFT_BIT, a
    jr nz, ++
    bit JOY_RIGHT_BIT, a
    jr nz, +++
    ld de, $0020
    jp _LABEL_3B4B_

+:
    call _LABEL_3B56_
    ld a, (v_inputData)
    bit JOY_RIGHT_BIT, a
    ret z
    ld a, (v_entities.1.unknown3)
    or $03
    ld (v_entities.1.unknown3), a
    ret

++:
    set 2, (ix+20)
    ld de, $FFC0
    ld bc, $FE00
    jp _LABEL_3B2B_

+++:
    set 0, (ix+20)
    ld de, $0040
    jp _LABEL_3B61_

_LABEL_378F_:
    ld de, $0316
    ld a, $0C
    ld b, $02
    call _LABEL_39ED_
    jr c, +
    ld a, (v_inputData)
    bit JOY_RIGHT_BIT, a
    jr nz, ++
    bit JOY_LEFT_BIT, a
    jr nz, +++
    ld de, $FFE0
    jp _LABEL_3B9C_

+:
    call _LABEL_3B56_
    ld a, (v_inputData)
    bit JOY_LEFT_BIT, a
    ret z
    ld a, (v_entities.1.unknown3)
    and $F8
    ld (v_entities.1.unknown3), a
    ret

++:
    set 2, (ix+20)
    ld de, $0040
    ld bc, $0200
    jp _LABEL_3B7E_

+++:
    res 0, (ix+20)
    ld de, $FFC0
    jp _LABEL_3BB1_

_LABEL_37D5_:
    bit 3, (ix+20)
    jp nz, _LABEL_382B_
    ld de, $0204
    ld a, $10
    call _LABEL_3A41_
    jp c, _LABEL_388E_
    ld a, (v_entities.1.stateTimer)
    or a
    jr nz, ++
    ld a, (_RAM_C007_)
    and $10
    jr nz, +
    ld a, (v_entities.1.yPos.high)
    cp $04
    jr c, +++
    ld de, $0020
    jp _LABEL_3BF7_

+:
    ld (ix+27), $07
++:
    dec (ix+27)
    ld (ix+6), $02
    ld a, (v_entities.1.yPos.high)
    cp $04
    jr c, +++
    ld de, $FFC0
    ld bc, $FE00
    jp _LABEL_3BE1_

+++:
    res 4, (ix+20)
    set 3, (ix+20)
    ld hl, $0000
    ld (v_entities.1.ySpeed), hl
    ret

_LABEL_382B_:
    ld de, $2004
    call getTileNearEntityWithXYOffset
    bit 7, a
    jr nz, _LABEL_3875_
    ld a, (_RAM_C213_)
    or a
    jp nz, _LABEL_388E_
    ld e, $08
    call _LABEL_7C94_
    ld a, (hl)
    rlca
    jr c, _LABEL_3875_
    ld e, $08
    call _LABEL_7C94_
    ld a, (hl)
    rlca
    jr c, _LABEL_3875_
    ld a, (v_entities.1.stateTimer)
    or a
    jr nz, _LABEL_3868_
    ld a, (_RAM_C007_)
    and $10
    jr nz, _LABEL_3864_
    ld de, $0020
    ld bc, $0100
    jp _LABEL_3C12_

_LABEL_3864_:
    ld (ix+27), $07
_LABEL_3868_:
    dec (ix+27)
    ld (ix+6), $02
    ld de, $FFC0
    jp _LABEL_3C28_

_LABEL_3875_:
    ld hl, $0000
    ld (v_entities.1.ySpeed), hl
    res 4, (ix+20)
    ld a, (v_entities.1.stateTimer)
    or a
    jp nz, _LABEL_3868_
    ld a, (_RAM_C007_)
    and $10
    jr nz, _LABEL_3864_
    ret

_LABEL_388E_:
    ld hl, (v_level)
    ld h, $00
    ld de, _DATA_3904_ - 1
    add hl, de
    ld a, (hl)
    or a
    jp z, _LABEL_43F2_
_LABEL_389C_:
    xor a
    ld (_RAM_C051_), a
    ld (_RAM_C054_), a
    call _LABEL_4415_
    call _LABEL_3B56_
    ld (v_entities.1.ySpeed), hl
    res 0, (ix+28)
    ld a, (v_entities.1.unknown3)
    or $18
    ld (v_entities.1.unknown3), a
    ld (ix+26), $1B
    ld a, $9B
    ld (v_soundControl), a
    ret

; 28th entry of Jump Table from 2982 (indexed by v_entities.1.state)
alexHandler_38C2:
    jp _LABEL_3B56_

; 20th entry of Jump Table from 2982 (indexed by v_entities.1.state)
alexHandler_38C5:
    call _LABEL_3B56_
    ld hl, _DATA_9122_
    call _LABEL_41AA_
    ld de, $1904
    ld a, $08
    call _LABEL_3A41_
    ld hl, $0300
    jr nc, +
    ld a, (v_entities.1.yPos.high)
    cp $04
    jr c, +
    ld hl, $0000
+:
    ld (v_entities.1.ySpeed), hl
    ld (ix+28), $00
    ld hl, _RAM_C20B_
    ld a, (v_scrollFlags)
    and $01
    or (hl)
    ret nz
    ld de, $0008
    call getTileNearEntityWithXYOffset
    and $E0
    cp $20
    jp z, _LABEL_3498_
    ret

; Data from 3904 to 3918 (21 bytes)
_DATA_3904_:
.db $01 $00 $00 $00 $01 $00 $00 $00 $01 $00 $00 $00 $00 $00 $00 $00
.db $00 $DD $36 $06 $14

; 22nd entry of Jump Table from 2982 (indexed by v_entities.1.state)
alexHandler_3919:
    call _LABEL_3928_
    ld a, (v_entities.1.jankenMatchDecision)
    ld (_RAM_C677_), a
    ld hl, _DATA_8D2A_
    jp _LABEL_4189_

_LABEL_3928_:
    ld a, (_RAM_C007_)
    bit 0, a
    jr z, +
    dec (ix+23)
    ret p
    ld (ix+23), $02
    ret

+:
    bit 1, a
    ret z
    inc (ix+23)
    ld a, (v_entities.1.jankenMatchDecision)
    cp $03
    ret c
    ld (ix+23), $00
    ret

; 25th entry of Jump Table from 2982 (indexed by v_entities.1.state)
alexHandler_3949:
    ld a, (ix+23)
    add a, a
    ld e, a
    ld d, $00
    ld hl, _DATA_395B_
    add hl, de
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    jp _LABEL_41AA_

; Pointer Table from 395B to 3960 (3 entries, indexed by _RAM_CF97_)
_DATA_395B_:
.dw _DATA_8E9D_ _DATA_8EBE_ _DATA_8EDF_

; 23rd entry of Jump Table from 2982 (indexed by v_entities.1.state)
alexHandler_3961:
    ld hl, $0000
    ld (v_entities.1.ySpeed), hl
    ld a, (v_entities.1.xPos.high)
    cp $28
    jr z, ++
    jr nc, +
    ld hl, $0100
    ld (v_entities.1.xSpeed), hl
    ld hl, _DATA_8CF4_
    jp _LABEL_4189_

+:
    ld hl, $FF00
    ld (v_entities.1.xSpeed), hl
    ld hl, _DATA_8CEB_
    jp _LABEL_4189_

++:
    call _LABEL_3B56_
    ld (v_entities.1.ySpeed), hl
    ld (ix+26), $17
    ld a, ($000A)
    ld (v_entities.1.unknown3), a
    call _LABEL_335F_
    ld a, $01
    ld (_RAM_C25A_), a
    ld (ix+6), $14
    ret

; 24th entry of Jump Table from 2982 (indexed by v_entities.1.state)
alexHandler_39A5:
    call _LABEL_3928_
    ld a, (v_entities.1.jankenMatchDecision)
    ld (_RAM_C677_), a
    ld hl, _DATA_8CE6_
    jp _LABEL_4189_

; 26th entry of Jump Table from 2982 (indexed by v_entities.1.state)
alexHandler_39B4:
    call _LABEL_3B56_
    bit 6, (ix+20)
    jr nz, +
    call _LABEL_3A68_
    jr ++

+:
    ld (v_entities.1.ySpeed), hl
++:
    ld hl, _DATA_90D1_
    call _LABEL_41AA_
    dec (ix+24)
    ret nz
    set 7, (ix+1)
    ret

; 27th entry of Jump Table from 2982 (indexed by v_entities.1.state)
alexHandler_39D4:
    call _LABEL_3B56_
    ld (v_entities.1.ySpeed), hl
    ret

; 98th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_39DB_:
    ld (ix+6), $19
    ld (ix+12), $D8
    ld (ix+14), $80
    ld hl, _DATA_9750_
    jp handleEntityAnimation

_LABEL_39ED_:
    push bc
    call _LABEL_3A03_
    pop de
    ret c
    ld a, d
-:
    ex af, af'
    ld d, $08
    call _LABEL_7CA3_
    ld a, (hl)
    rlca
    ret c
    ex af, af'
    dec a
    jr nz, -
    or a
    ret

_LABEL_3A03_:
    ex af, af'
    call getTileNearEntityWithXYOffset
    rlca
    ret c
    ex af, af'
    ld d, a
    call _LABEL_7CA3_
    ld a, (hl)
    rlca
    ret

_LABEL_3A11_:
    ld a, (v_entities.1.xPos.high)
    add a, e
    ld e, a
    ex af, af'
    ld a, (v_entities.1.yPos.high)
    add a, $40
    add a, d
    add a, (ix+18)
    cp $C0
    ret nc
    ld d, a
    cp $0F
    jr c, +
    call _LABEL_7C7A_
    rlca
    ret c
    ld d, $0C
    ex af, af'
    ld e, a
    ex af, af'
+:
    call _LABEL_7C7A_
    rlca
    ret c
    ex af, af'
    ld e, a
    ex af, af'
    ld d, $00
    call _LABEL_7C7A_
    rlca
    ret

_LABEL_3A41_:
    ex af, af'
    call getTileNearEntityWithXYOffset
    rlca
    ret c
    ex af, af'
    ld e, a
    call _LABEL_7C94_
    ld a, (hl)
    rlca
    ret

_LABEL_3A4F_:
    ld a, (v_entities.1.yPos.high)
    add a, $40
    add a, d
    ld d, a
    ld a, (v_entities.1.xPos.high)
    add a, e
    ld e, a
    call _LABEL_7C7A_
    rlca
    ret c
    ld e, $08
    call _LABEL_7C94_
    ld a, (hl)
    rlca
    ret

_LABEL_3A68_:
    ld hl, (v_entities.1.ySpeed)
    ld bc, ALEX_GRAVITY
    add hl, bc
    ld (v_entities.1.ySpeed), hl
    jr nc, +
    set 7, (ix+20)
+:
    bit 7, (ix+20)
    jr nz, +
_LABEL_3A7E_:
    ld a, (v_entities.1.isOffScreenFlags.high)
    or a
    ret nz
    ld a, (v_entities.1.unknown9)
    call _LABEL_3A41_
    ret nc
    set 7, (ix+20)
    ld hl, $0000
    ld (v_entities.1.ySpeed), hl
    ret

+:
    ld a, h
    cp $04
    jr c, +
    ld (ix+17), $00
+:
    ld a, (v_entities.1.unknown11)
    add a, h
    ld d, a
    ld a, (v_entities.1.isOffScreenFlags.high)
    or a
    jr z, +
    ld a, (v_entities.1.yPos.high)
    add a, $40
    add a, d
    ret nc
    ld d, a
    ld a, (v_entities.1.xPos.high)
    add a, e
    ld e, a
    call _LABEL_7C7A_
    rlca
    jr c, _LABEL_3AD5_
    ld e, (ix+29)
    call _LABEL_7C94_
    ld a, (hl)
    rlca
    jr c, _LABEL_3AD5_
    ret

+:
    .IFDEF _REV1
        ld a, d
        add a, (ix+14)
        cp $BF
        ret nc
    .ENDIF
    ld a, (v_entities.1.unknown9)
    call _LABEL_3A41_
    ret nc
_LABEL_3AD5_:
    ld a, b
    and $07
    neg
    add a, (ix+18)
    ld h, a
    ld l, $00
    ld (v_entities.1.ySpeed), hl
    set 6, (ix+20)
    ret

_LABEL_3AE8_:
    ld hl, (v_entities.1.ySpeed)
    ld bc, $0040
    add hl, bc
    ld (v_entities.1.ySpeed), hl
    jr nc, +
    set 7, (ix+20)
+:
    bit 7, (ix+20)
    jr z, _LABEL_3A7E_
    ld a, h
    cp $04
    jr c, +
    ld (ix+17), $00
+:
    ld a, $10
    add a, h
    ld d, a
    call getTileNearEntityWithXYOffset
    bit 7, a
    jp nz, _LABEL_389C_
    and $E0
    cp $20
    jr z, _LABEL_3AD5_
    ld e, $0F
    call _LABEL_7C94_
    ld a, (hl)
    bit 7, a
    jp nz, _LABEL_389C_
    and $E0
    cp $20
    jr z, _LABEL_3AD5_
    ret

_LABEL_3B2B_:
    ld a, (v_entities.1.unknown3)
    or $04
    and $FC
    ld (v_entities.1.unknown3), a
    set 2, (ix+20)
    ld hl, (v_entities.1.xSpeed)
    add hl, de
    ld e, l
    ld d, h
    or a
    sbc hl, bc
    jr nc, +
    ld e, c
    ld d, b
+:
    ld (v_entities.1.xSpeed), de
    ret

_LABEL_3B4B_:
    bit 2, (ix+20)
    ret z
_LABEL_3B50_:
    ld hl, (v_entities.1.xSpeed)
    add hl, de
    jr nc, +
_LABEL_3B56_:
    res 2, (ix+20)
    ld hl, $0000
+:
    ld (v_entities.1.xSpeed), hl
    ret

_LABEL_3B61_:
    ld a, (v_entities.1.unknown3)
    bit 2, a
    jr z, +
    set 0, a
    ld hl, (v_entities.1.xSpeed)
    add hl, de
    jr nc, ++
+:
    or $03
    and $FB
    ld hl, $0000
++:
    ld (v_entities.1.xSpeed), hl
    ld (v_entities.1.unknown3), a
    ret

_LABEL_3B7E_:
    ld a, (v_entities.1.unknown3)
    or $07
    ld (v_entities.1.unknown3), a
    set 2, (ix+20)
    ld hl, (v_entities.1.xSpeed)
    add hl, de
    ld e, l
    ld d, h
    or a
    sbc hl, bc
    jr c, +
    ld e, c
    ld d, b
+:
    ld (v_entities.1.xSpeed), de
    ret

_LABEL_3B9C_:
    bit 2, (ix+20)
    ret z
_LABEL_3BA1_:
    ld hl, (v_entities.1.xSpeed)
    or a
    adc hl, de
    jp nc, _LABEL_3B56_
    jp z, _LABEL_3B56_
    ld (v_entities.1.xSpeed), hl
    ret

_LABEL_3BB1_:
    ld a, (v_entities.1.unknown3)
    bit 2, a
    jr z, +
    and $FE
    ld hl, (v_entities.1.xSpeed)
    adc hl, de
    jr z, +
    jr c, ++
+:
    ld hl, $0000
    and $F8
++:
    ld (v_entities.1.xSpeed), hl
    ld (v_entities.1.unknown3), a
    ret

_LABEL_3BCF_:
    ld hl, (v_entities.1.xSpeed)
    add hl, de
    ld e, l
    ld d, h
    or a
    sbc hl, bc
    jr nc, +
    ld e, c
    ld d, b
+:
    ld (v_entities.1.xSpeed), de
    ret

_LABEL_3BE1_:
    set 4, (ix+20)
    ld hl, (v_entities.1.ySpeed)
    add hl, de
    ld e, l
    ld d, h
    or a
    sbc hl, bc
    jr nc, +
    ld e, c
    ld d, b
+:
    ld (v_entities.1.ySpeed), de
    ret

_LABEL_3BF7_:
    ld a, (v_entities.1.unknown3)
    bit 4, a
    jr z, +
    ld hl, (v_entities.1.ySpeed)
    add hl, de
    jr nc, ++
+:
    or $08
    and $EF
    ld hl, $0000
++:
    ld (v_entities.1.ySpeed), hl
    ld (v_entities.1.unknown3), a
    ret

_LABEL_3C12_:
    set 4, (ix+20)
    ld hl, (v_entities.1.ySpeed)
    add hl, de
    ld e, l
    ld d, h
    or a
    sbc hl, bc
    jr c, +
    ld e, c
    ld d, b
+:
    ld (v_entities.1.ySpeed), de
    ret

_LABEL_3C28_:
    ld a, (v_entities.1.unknown3)
    bit 4, a
    jr z, +
    ld hl, (v_entities.1.ySpeed)
    or a
    adc hl, de
    jr z, +
    jr c, ++
+:
    ld hl, $0000
    and $E7
++:
    ld (v_entities.1.ySpeed), hl
    ld (v_entities.1.unknown3), a
    ret

_LABEL_3C45_:
    ld de, $0C08
_LABEL_3C48_:
    xor a
    ld (_RAM_C213_), a
    ld a, (v_entities.1.isOffScreenFlags.high)
    or a
    ret nz
    call getTileNearEntityWithXYOffset
    bit 7, a
    jp nz, _LABEL_3CF3_
    bit 6, a
    jp z, +
    bit 5, a
    jr nz, _LABEL_3CCF_
    dec hl
    ld a, (hl)
    sub $90
    jr nc, ++
    ld a, l
    and $BC
    ld l, a
    ld a, (_RAM_C0B0_)
    rra
    rra
    add a, l
    and $3E
    cp $3E
    ret z
    push hl
    ld l, $00
    call takeMoney
    ld a, $8E
    ld (v_soundControl), a
    pop hl
    ld a, (_RAM_C202_)
    or a
    ret nz
    ld (_RAM_C204_), hl
    jp _LABEL_45BE_

+:
    and $E0
    cp $20
    ret nz
    ld (_RAM_C213_), a
    ret

++:
    ld e, a
    ld d, $00
    ld hl, _DATA_3CA3_
    add hl, de
    ld a, (hl)
    ld (v_shopSelectedItemIndex), a
    ret

; Data from 3CA3 to 3CCE (44 bytes)
_DATA_3CA3_:
.db $01 $01 $02 $02 $02 $03 $03 $03 $03 $04 $04 $04 $04 $05 $05 $05
.db $05 $06 $06 $06 $07 $07 $07 $07 $08 $08 $08 $08 $09 $09 $09 $09
.db $0A $0A $0A $0A $0B $0B $0B $0B $0C $0C $0C $0C

_LABEL_3CCF_:
    dec hl
    ld a, (hl)
    ld (_RAM_C211_), hl
    cp $70
    jr c, +
    ld a, (v_entities.1.state)
    cp ALEX_IDLE
    ret nz
    ld a, (v_entities.1.xPos.high)
    cp $18
    ret c
    ld a, (v_inputData)
    bit JOY_UP_BIT, a
    ret z
    ld (ix+26), $0D
    ret

+:
    cp $3F
    jr z, +
_LABEL_3CF3_:
    set 7, (ix+1)
    ret

+:
    ld a, (v_inputData)
    bit JOY_UP_BIT, a
    ret z
    ld hl, $FF00
    ld (v_entities.1.ySpeed), hl
    jp _LABEL_3230_

_LABEL_3D07_:
    ld de, $1808
_LABEL_3D0A_:
    ld a, (v_entities.1.isOffScreenFlags.high)
    or a
    ret nz
    call getTileNearEntityWithXYOffset
    and $E0
    cp $A0
    jr nz, _LABEL_3D5B_
    dec hl
    ld (_RAM_C211_), hl
    ld a, (hl)
    cp $3F
    jp nc, _LABEL_3DD4_
    sub $0D
    ret c
    ld hl, _DATA_3D2B_
    jp loadAthJumptablePointer

; Jump Table from 3D2B to 3D5A (24 entries, indexed by _RAM_C802_)
_DATA_3D2B_:
.dw _LABEL_3D60_ _LABEL_3D60_ _LABEL_3D60_ _LABEL_3D60_ _LABEL_3D64_ _LABEL_3D64_ _LABEL_3D64_ _LABEL_3D64_
.dw _LABEL_3D68_ _LABEL_3D68_ _LABEL_3D68_ _LABEL_3D68_ _LABEL_3D6C_ _LABEL_3D6C_ _LABEL_3D6C_ _LABEL_3D6C_
.dw _LABEL_3DBF_ _LABEL_3DBF_ _LABEL_3DBF_ _LABEL_3DBF_ _LABEL_3D70_ _LABEL_3D70_ _LABEL_3D70_ _LABEL_3D70_

_LABEL_3D5B_:
    xor a
    ld (v_nextGhostSpawnTimer), a
    ret

; 1st entry of Jump Table from 3D2B (indexed by _RAM_C802_)
_LABEL_3D60_:
    ld c, $03
    jr +

; 5th entry of Jump Table from 3D2B (indexed by _RAM_C802_)
_LABEL_3D64_:
    ld c, $01
    jr +

; 9th entry of Jump Table from 3D2B (indexed by _RAM_C802_)
_LABEL_3D68_:
    ld c, $04
    jr +

; 13th entry of Jump Table from 3D2B (indexed by _RAM_C802_)
_LABEL_3D6C_:
    ld c, $02
    jr +

; 21st entry of Jump Table from 3D2B (indexed by _RAM_C802_)
_LABEL_3D70_:
    ld c, $05
+:
    ld a, (v_level)
    cp $11
    ret nz
    ld hl, _RAM_C22A_
    ld a, (hl)
    ld (hl), c
    cp c
    ret z
    dec hl
    ld a, (hl)
    ld hl, _DATA_3DF0_
    ld e, a
    ld d, $00
    add hl, de
    ld a, (hl)
    cp c
    jr nz, +
    ld hl, _RAM_C229_
    inc (hl)
    ld a, $8E
    ld (v_soundControl), a
    ld a, (hl)
    cp $0A
    ret c
    ld iy, _RAM_C3A0_
    ld (iy+0), $52
    ld (iy+3), $00
    ld (iy+12), $20
    ld (iy+14), $1F
    ret

+:
    xor a
    ld (_RAM_C229_), a
    ld d, $30
    ld a, (v_horizontalScroll)
    add a, $30
    ld e, a
    ld c, $4F
    jp _LABEL_5B90_

; 17th entry of Jump Table from 3D2B (indexed by _RAM_C802_)
_LABEL_3DBF_:
    ld hl, v_nextGhostSpawnTimer
    dec (hl)
    ret p
    ld (hl), $7F
    ld e, (ix+12)
    ld a, (v_entities.1.yPos.high)
    add a, $18
    ld d, a
    ld c, $4F
    jp _LABEL_5B90_

_LABEL_3DD4_:
    jr z, +
    ld a, (_RAM_C007_)
    bit 1, a
    ret z
    ld (ix+26), $11
    ret

+:
    ld a, (v_inputData)
    bit JOY_DOWN_BIT, a
    ret z
    ld hl, $0100
    ld (v_entities.1.ySpeed), hl
    jp _LABEL_3230_

; Data from 3DF0 to 3DFA (11 bytes)
_DATA_3DF0_:
.db $05 $01 $02 $03 $05 $02 $01 $04 $03 $04 $FF

_LABEL_3DFB_:
    ld (ix+26), $01
    jr _LABEL_3E0B_

_LABEL_3E01_:
    ld hl, $0000
    ld (v_entities.1.ySpeed), hl
    res 4, (ix+20)
_LABEL_3E0B_:
    dec (ix+24)
    jr z, ++
    ld hl, $FF80
    bit 1, (ix+24)
    jr z, +
    ld hl, $0080
+:
    ld (v_entities.1.xSpeed), hl
    ret

++:
    res 2, (ix+20)
    ld hl, $0000
    ld (v_entities.1.xSpeed), hl
    res 4, (ix+28)
    ret

; 96th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_3E2F_:
    ld a, (ix+26)
    ld hl, _DATA_3E38_
    jp loadAthJumptablePointer

; Jump Table from 3E38 to 3E3F (4 entries, indexed by _RAM_CF9A_)
_DATA_3E38_:
.dw _LABEL_3E40_ _LABEL_3E50_ _LABEL_3E90_ _LABEL_3EA6_

; 1st entry of Jump Table from 3E38 (indexed by _RAM_CF9A_)
_LABEL_3E40_:
    ld (ix+9), $00
    ld (ix+7), <_DATA_80E1_
    ld (ix+8), >_DATA_80E1_
    inc (ix+26)
    ret

; 2nd entry of Jump Table from 3E38 (indexed by _RAM_CF9A_)
_LABEL_3E50_:
    ld a, (v_entities.1.state)
    cp ALEX_IDLE
    ret nz
    ld a, (ix+10)
    or (ix+9)
    ret nz
    ld iy, v_entity1
    call checkEntityCollision
    ret c
    ld a, $1A
    ld (v_entities.1.state), a
    inc (ix+26)
    ld (ix+5), $1E
    ld iy, _RAM_C640_
    ld hl, $8000
    ld c, $77
-:
    ld (iy+0), $18
    ld a, (ix+12)
    add a, $18
    ld (iy+12), a
    ld (iy+14), c
    ld (iy+7), l
    ld (iy+8), h
    ret

; 3rd entry of Jump Table from 3E38 (indexed by _RAM_CF9A_)
_LABEL_3E90_:
    dec (ix+5)
    ret nz
    ld (ix+5), $3C
    inc (ix+26)
    ld iy, _RAM_C660_
    ld hl, $8A27
    ld c, $87
    jr -

; 4th entry of Jump Table from 3E38 (indexed by _RAM_CF9A_)
_LABEL_3EA6_:
    dec (ix+5)
    ret nz
    ld a, $01
    ld (v_entities.1.state), a
    ld a, $89
    ld (_RAM_C202_), a
    ld hl, _RAM_C640_
    call clearEntity
    inc hl
    call clearEntity
    jp clearCurrentEntity

; 97th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_3EC1_:
    ld (ix+7), <_DATA_80E1_
    ld (ix+8), >_DATA_80E1_
    ld a, (ix+10)
    or (ix+9)
    ret nz
    ld iy, v_entity1
    call checkEntityCollision
    ret c
    ld a, (_RAM_C640_)
    ld c, a
    ld a, (_RAM_C640_)
    or c
    ret z
    ld hl, _DATA_3F00_
    ld bc, v_money
    call _LABEL_42D_
    ret c
    ld hl, _DATA_3F00_
    ld bc, v_money
    call _LABEL_41C_
    ld hl, _RAM_C640_
    call clearEntity
    ld hl, _RAM_C660_
    jp clearEntity

; Data from 3F00 to 3F02 (3 bytes)
_DATA_3F00_:
.db $50 $00 $00

; 99th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_3F03_:
    bit 0, (ix+1)
    jr z, +
    call _LABEL_7D0B_
    ret c
    ld hl, _RAM_C202_
    ld a, (hl)
    or a
    ret nz
    ld (hl), $80
    ld hl, _DATA_14503_
    ld (_RAM_C206_), hl
    ld hl, _RAM_CC08_
    ld (_RAM_C204_), hl
    jp clearCurrentEntity

+:
    ld (ix+7), <_DATA_80E1_
    ld (ix+8), >_DATA_80E1_
    ld a, (ix+9)
    or a
    ret nz
    ld a, (ix+1)
    or $03
    ld (ix+1), a
    ret

; Jump Table from 3F3A to 3F5B (17 entries, indexed by v_level)
_DATA_3F3A_:
.dw _LABEL_3F5C_ _LABEL_3F75_ _LABEL_3F75_ _LABEL_3F75_ _LABEL_3FD1_ _LABEL_3F75_ _LABEL_3F75_ _LABEL_3F75_
.dw _LABEL_3FD1_ _LABEL_3F75_ _LABEL_4025_ _LABEL_3F75_ _LABEL_3F6D_ _LABEL_3F75_ _LABEL_3F75_ _LABEL_4025_
.dw _LABEL_3F5C_

; 1st entry of Jump Table from 3F3A (indexed by v_level)
_LABEL_3F5C_:
    call _LABEL_40E7_
    ld hl, (v_entities.1.xSpeed)
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, $60
    add a, h
    ld b, a
    jp _LABEL_4124_

; 13th entry of Jump Table from 3F3A (indexed by v_level)
_LABEL_3F6D_:
    call _LABEL_415E_
    ld b, $80
    jp _LABEL_4124_

; 2nd entry of Jump Table from 3F3A (indexed by v_level)
_LABEL_3F75_:
    call _LABEL_415E_
    ld e, (ix+26)
    ld hl, _DATA_3FB1_
    ld d, $00
    add hl, de
    ld a, (hl)
    or a
    jr nz, +
    ld hl, (v_entities.1.xSpeed)
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, $60
    add a, h
    ld b, a
    jp _LABEL_4124_

+:
    ld a, (v_entities.1.xPos.high)
    ld b, $40
    cp $44
    jp c, _LABEL_4124_
    ld a, (v_scrollFlags)
    and $08
    ret z
    ld de, (v_entities.1.xSpeed)
    xor a
    ld hl, $FF00
    sbc hl, de
    ld (v_horizontalScrollSpeed), hl
    ret

; Data from 3FB1 to 3FD0 (32 bytes)
_DATA_3FB1_:
.db $00 $00 $00 $00 $00 $00 $00 $00 $01 $01 $00 $01 $01
.dsb 19, $00

; 5th entry of Jump Table from 3F3A (indexed by v_level)
_LABEL_3FD1_:
    ld a, (v_entities.1.state)
    cp $1B
    jr z, +
    cp $13
    jp nz, _LABEL_3F75_
    jp +++

+:
    ld a, (_RAM_C0B7_)
    and $02
    jr z, ++
    ld a, (v_entities.1.yPos.high)
    cp $90
    jr c, +
    ld hl, $0000
    ld (v_entities.1.ySpeed), hl
+:
    ld hl, $FF00
    ld (v_horizontalScrollSpeed), hl
    ld hl, $0100
    ld (v_entities.1.xSpeed), hl
    ret

++:
    ld (ix+26), $13
    push ix
    call _LABEL_6671_
    pop ix
    ld hl, v_scrollFlags
    set 0, (hl)
+++:
    ld a, (v_entities.1.yPos.high)
    cp $08
    jr nc, +
    ld hl, $0300
    ld (v_entities.1.ySpeed), hl
+:
    ld hl, $0300
    ld (v_verticalScrollSpeed), hl
    ret

; 11th entry of Jump Table from 3F3A (indexed by v_level)
_LABEL_4025_:
    ld hl, v_scrollFlags
    ld a, (hl)
    and $0F
    jp z, +
    rrca
    jp c, _LABEL_40CB_
    rrca
    jp c, _LABEL_40E0_
    rrca
    jp c, _LABEL_4090_
    jp _LABEL_40AF_

+:
    ld a, (v_entities.1.yPos.high)
    cp $A8
    jr c, +
    ld a, (v_entities.1.unknown3)
    bit 3, a
    jp nz, _LABEL_40B6_
    bit 7, a
    jp z, _LABEL_40D2_
    bit 6, a
    jp nz, _LABEL_40B6_
    ld hl, (v_entities.1.ySpeed)
    ld a, l
    or h
    jp z, _LABEL_40D2_
    jp _LABEL_40B6_

+:
    ld a, (v_entities.1.state)
    ld b, $F0
    cp $05
    jr nz, +
    ld b, $E8
+:
    ld a, (v_entities.1.xPos.high)
    cp b
    ret c
    bit 1, (ix+20)
    jp nz, ++
    call _LABEL_3320_
    ld hl, v_scrollFlags
    set 2, (hl)
    ld a, (v_alexStateTemporaryCopy)
    cp $05
    ld hl, $FFC0
    jr nz, +
    ld hl, $FFA0
+:
    ld (v_entities.1.xSpeed), hl
_LABEL_4090_:
    ld hl, $0400
    ld (v_horizontalScrollSpeed), hl
    ret

++:
    call _LABEL_3320_
    ld hl, v_scrollFlags
    set 3, (hl)
    ld a, (v_alexStateTemporaryCopy)
    cp $05
    ld hl, $0040
    jr nz, +
    ld hl, $0060
+:
    ld (v_entities.1.xSpeed), hl
_LABEL_40AF_:
    ld hl, $FC00
    ld (v_horizontalScrollSpeed), hl
    ret

_LABEL_40B6_:
    call _LABEL_3320_
    push ix
    call _LABEL_6671_
    pop ix
    ld hl, v_scrollFlags
    set 0, (hl)
    ld hl, $0080
    ld (v_entities.1.ySpeed), hl
_LABEL_40CB_:
    ld hl, $0400
    ld (v_verticalScrollSpeed), hl
    ret

_LABEL_40D2_:
    call _LABEL_3320_
    ld hl, v_scrollFlags
    set 1, (hl)
    ld hl, $FF80
    ld (v_entities.1.ySpeed), hl
_LABEL_40E0_:
    ld hl, $FC00
    ld (v_verticalScrollSpeed), hl
    ret

_LABEL_40E7_:
    ld hl, v_scrollFlags
    ld a, (hl)
    and $03
    jp z, _LABEL_415E_
    ld a, (v_entities.1.yPos.high)
    bit 7, (ix+18)
    jr nz, ++
    bit 0, (hl)
    jr z, +
    cp $50
    ret c
    ld a, (v_entities.1.isOffScreenFlags.high)
    or a
    ret nz
    ld hl, (v_entities.1.ySpeed)
    ld (v_verticalScrollSpeed), hl
    ret

+:
    cp $A8
    ret c
    ld hl, $0000
    ld (v_entities.1.ySpeed), hl
    res 4, (ix+20)
    ret

++:
    ret

; Data from 411B to 4123 (9 bytes)
.db $FE $04 $D0 $DD $CB $14 $FE $18 $EB

_LABEL_4124_:
    ld a, (v_scrollFlags)
    ld c, a
    ld a, (v_entities.1.xPos.high)
    ld de, (v_entities.1.xSpeed)
    bit 7, d
    jr z, ++
    bit 2, c
    jr nz, +
    cp $04
    ret nc
    call _LABEL_3B56_
    ld (v_horizontalScrollSpeed), hl
    ret

+:
    cp b
    ret nc
-:
    xor a
    ld h, a
    ld l, a
    sbc hl, de
    ld (v_horizontalScrollSpeed), hl
    ret

++:
    bit 3, c
    jr nz, +
    cp $F4
    ret c
    call _LABEL_3B56_
    ld (v_horizontalScrollSpeed), hl
    ret

+:
    cp b
    ret c
    jr -

_LABEL_415E_:
    ld a, (v_entities.1.state)
    cp $07
    ret c
    ld a, (v_entities.1.yPos.high)
    bit 7, (ix+18)
    jr nz, +
    ld a, (v_entities.1.isOffScreenFlags.high)
    or a
    ret nz
    cp $A8
    ret c
-:
    ld hl, $0000
    ld (v_entities.1.ySpeed), hl
    res 4, (ix+20)
    ret

+:
    cp $04
    ret nc
    set 7, (ix+20)
    jr -

_LABEL_4189_:
    ld d, (hl)
    inc hl
    ld a, (v_entities.1.animationFrame)
    dec (ix+5)
    jr nz, +
    ld e, (ix+6)
    ld (ix+5), e
    inc a
+:
    cp d
    jr c, +
    xor a
+:
    ld (v_entities.1.animationFrame), a
    add a, a
    ld e, a
    ld d, $00
    add hl, de
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
_LABEL_41AA_:
    ld a, (hl)
    inc hl
    ld (v_alexTilesIndex), a
    ld (v_entities.1.spriteDescriptorPointer), hl
    ret


_LABEL_41B3_:
    ld hl, v_alexTilesIndex
    ld a, (hl)
    inc hl
    cp (hl)
    ret z
    ld (hl), a
    ld hl, v_shouldUpdateTitlescreenLevelTiles
    ld (hl), $01

; Load tiles from Alex tile descriptors to VRAM $2000.
;
; @param a - Index to Alex tile descriptors pointers
loadAlexTilesToVRAM2000:
    add a, a
    ld c, a
    ld b, $00
    ld de, $6000
    rst $08    ; setVDPAddress

; Load tiles from Alex tile descriptors to VRAM.
; Assumes that VA is already set.
;
; @param bc - Offset to Alex tile descriptor
loadAlexTilesToVRAM:
    ld a, $84
    ld (Mapper_Slot2), a
    ld hl, _DATA_10000_
    add hl, bc
    ld e, (hl)
    inc hl
    ld d, (hl)
    ex de, hl
    ld c, Port_VDPData
    ld a, (hl)
    inc hl
    ex af, af'
    xor a
    ex af, af'
-:
    ld e, (hl)
    inc hl
    ld d, (hl)
    inc hl
    ex de, hl
    ex af, af'
    outi
    outi
    outi
    out (Port_VDPData), a
    outi
    outi
    outi
    out (Port_VDPData), a
    outi
    outi
    outi
    out (Port_VDPData), a
    outi
    outi
    outi
    out (Port_VDPData), a
    outi
    outi
    outi
    out (Port_VDPData), a
    outi
    outi
    outi
    out (Port_VDPData), a
    outi
    outi
    outi
    out (Port_VDPData), a
    outi
    outi
    outi
    out (Port_VDPData), a
    ex af, af'
    ex de, hl
    dec a
    jp nz, -
    ret

_LABEL_4229_:
    ld hl, _RAM_C202_
    ld a, (hl)
    ld (hl), $00
    add a, a
    ret nc
    ld hl, _DATA_4237_
    jp _LABEL_21_

; Jump Table from 4237 to 424A (10 entries, indexed by _RAM_C202_)
_DATA_4237_:
.dw _LABEL_424B_ _LABEL_4340_ _LABEL_434F_ _LABEL_42C3_ _LABEL_42B6_ _LABEL_4B9E_ _LABEL_4BF3_ _LABEL_4BCD_
.dw _LABEL_437D_ _LABEL_43CA_

; 1st entry of Jump Table from 4237 (indexed by _RAM_C202_)
_LABEL_424B_:
    ld a, $85
    ld (Mapper_Slot2), a
    ld a, (_RAM_C08E_)
    or a
    jr z, ++
    ld a, (_RAM_C0BE_)
    and $F0
    ld c, a
    ld hl, (_RAM_C204_)
    ld a, l
    rra
    rra
    and $0F
    ld d, a
    ld a, h
    rl l
    rla
    add a, a
    add a, a
    add a, a
    add a, a
    add a, d
    sub c
    jr nc, +
    sub $20
+:
    ld hl, (_RAM_C078_)
    ld b, (hl)
    inc b
    dec b
    jr z, ++
-:
    inc l
    inc l
    cp (hl)
    jr z, +
    djnz -
    jr ++

+:
    dec l
    ld (hl), $01
++:
    ld de, (_RAM_C204_)
    ld hl, (_RAM_C206_)
    ldi
    ldi
    ldi
    ldi
    ld bc, $003C
    ex de, hl
    add hl, bc
    ex de, hl
    ldi
    ldi
    ldi
    ldi
    ld de, (_RAM_C204_)
    ld hl, (_RAM_C206_)
    ld a, d
    sub $50
    ld d, a
    ld bc, $0204
    call copyNameTableBlockToVRAM
    ret

; 5th entry of Jump Table from 4237 (indexed by _RAM_C202_)
_LABEL_42B6_:
    ld de, (_RAM_C0FD_)
    call ++
    ld hl, _DATA_14410_
    jp +

; 4th entry of Jump Table from 4237 (indexed by _RAM_C202_)
_LABEL_42C3_:
    ld de, (_RAM_C0FD_)
    call ++
    ld hl, _DATA_14400_
+:
    ld de, (_RAM_C204_)
    ldi
    ldi
    ldi
    ldi
    ldi
    ldi
    ldi
    ldi
    ld bc, $0038
    ex de, hl
    add hl, bc
    ex de, hl
    ldi
    ldi
    ldi
    ldi
    ldi
    ldi
    ldi
    ldi
    ret

++:
    ld a, $85
    ld (Mapper_Slot2), a
    ld a, $03
-:
    ld hl, _DATA_1450B_
    ldi
    ldi
    ldi
    ldi
    ldi
    ldi
    ldi
    ldi
    ld hl, $0038
    add hl, de
    ex de, hl
    dec a
    jr nz, -
    ld (_RAM_C204_), de
    ld de, (_RAM_C0FD_)
    ld a, d
    sub $50
    ld d, a
    ld b, $03
-:
    push bc
    ld hl, _DATA_1450B_
    ld b, $08
    rst $30    ; memcpyToVRAM
    ld hl, $0040
    add hl, de
    ex de, hl
    pop bc
    djnz -
    ld hl, _DATA_14400_
    ld bc, $0208
    jp copyNameTableBlockToVRAM

; 2nd entry of Jump Table from 4237 (indexed by _RAM_C202_)
_LABEL_4340_:
    ld hl, (_RAM_C0FD_)
    inc hl
    ld e, l
    ld a, h
    sub $50
    ld d, a
    ld bc, $0204
    jp _LABEL_435F_

; 3rd entry of Jump Table from 4237 (indexed by _RAM_C202_)
_LABEL_434F_:
    ld hl, (_RAM_C0FD_)
    inc hl
    ld de, $00C0
    add hl, de
    ld e, l
    ld a, h
    sub $50
    ld d, a
    ld bc, $0404
_LABEL_435F_:
    rst $08    ; setVDPAddress
    push bc
    push hl
    push de
-:
    ld a, (hl)
    or $10
    out (Port_VDPData), a
    inc hl
    push af
    pop af
    in a, (Port_VDPData)
    inc hl
    djnz -
    pop hl
    ld bc, $0040
    add hl, bc
    ex de, hl
    pop hl
    add hl, bc
    pop bc
    dec c
    jr nz, _LABEL_435F_
    ret

; 9th entry of Jump Table from 4237 (indexed by _RAM_C202_)
_LABEL_437D_:
    ld a, $84
    ld (Mapper_Slot2), a
    ld a, (_RAM_C218_)
    ld b, a
    and $07
    add a, a
    add a, a
    ld l, a
    ld a, b
    and $F8
    rra
    rra
    ld e, a
    ld d, $00
    ld h, d
    ld (_RAM_C219_), hl
    ld hl, _DATA_12AC2_
    add hl, de
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    ld a, (hl)
    ld de, (_RAM_C21B_)
-:
    ex af, af'
    inc hl
    ld c, (hl)
    inc hl
    push hl
    ld b, (hl)
    ld hl, (_RAM_C219_)
    add hl, bc
    ex de, hl
    ld b, $04
    rst $30    ; memcpyToVRAM
    ex de, hl
    pop hl
    ex af, af'
    dec a
    jr nz, -
    ld (_RAM_C21B_), de
    ld hl, _RAM_C218_
    inc (hl)
    ld a, (hl)
    cp $30
    ret z
    ld a, $88
    ld (_RAM_C202_), a
    ret

; 10th entry of Jump Table from 4237 (indexed by _RAM_C202_)
_LABEL_43CA_:
    ld a, $85
    ld (Mapper_Slot2), a
    ld hl, _DATA_14420_
    ld de, $7BB4
    ld bc, $0608
    call copyNameTableBlockToVRAM
    ld hl, _DATA_14420_
    ld de, _RAM_CBB4_
    ld a, $06
-:
    ld bc, $0008
    ldir
    ex de, hl
    ld bc, $0038
    add hl, bc
    ex de, hl
    dec a
    jr nz, -
    ret

_LABEL_43F2_:
    ld a, $82
    ld (v_soundControl), a
    ld (ix+28), $04
    ld (ix+26), $03
    ld (ix+20), $03
    ld hl, $FE00
    ld (v_entities.1.ySpeed), hl
    ld hl, $0000
    ld (v_entities.1.xSpeed), hl
    ld hl, _DATA_90BC_
    call _LABEL_41AA_
_LABEL_4415_:
    ld (ix+31), $18
    ld (ix+29), $08
    xor a
    ld (_RAM_C054_), a
    ld iy, _RAM_C360_
    ld a, (v_entities.1.xPos.high)
    add a, $08
    ld (_RAM_C36C_), a
    ld a, (v_entities.1.yPos.high)
    add a, $10
    ld (_RAM_C36E_), a
    ld (iy+0), $03
    ld (iy+25), $14
    ld (iy+5), $04
    ld (iy+6), $04
    ret

; 3rd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4446_:
    ld hl, _DATA_8372_
    call handleEntityAnimation
    dec (ix+25)
    jp z, clearCurrentEntity
    ret

; 9th entry of Jump Table from 4523 (indexed by _RAM_C054_)
_LABEL_4453_:
    ld a, $A8
    ld (v_soundControl), a
    ld hl, v_entities.1.unknown8
    ld a, (hl)
    or $09
    ld (hl), a
    ld a, (v_entities.1.yPos.high)
    add a, $10
    ld (v_entities.2.yPos.high), a
    ld a, (v_entities.1.xPos.high)
    bit 0, (ix+20)
    ld hl, $FC00
    jr z, +
    add a, $10
    ret c
    ld hl, $0400
+:
    ld (v_entities.2.xPos.high), a
    ld (v_entities.2.xSpeed), hl
    ld a, $02
    ld (v_entities.2), a
    ld hl, $84E8
    ld (v_entities.2.spriteDescriptorPointer), hl
    ld a, $14
    ld (v_entities.2.unknown7), a
    ret

; 2nd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4490_:
    bit 7, (ix+1)
    jr nz, ++
    ld a, (v_entities.2.isOffScreenFlags)
    or (ix+10)
    jr nz, +
    ld a, (v_entities.2.xPos.high)
    ld de, $0404
    call getTileNearEntityWithXYOffset
    rlca
    jr nc, +
    rlca
    jr nc, ++
    call _LABEL_4578_
    ld a, (_RAM_C202_)
    or a
    jr nz, ++
+:
    dec (ix+25)
    ret nz
++:
    ld (ix+25), $05
    ld (ix+0), $04
    ld a, $A9
    ld (v_soundControl), a
    ld hl, $0000
    ld (v_entities.2.xSpeed), hl
    ld hl, $8380
    ld (v_entities.2.spriteDescriptorPointer), hl
    ret

; 4th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_44D4_:
    dec (ix+25)
    ret nz
    ld hl, v_entities.1.unknown8
    ld a, (hl)
    and $F6
    ld (hl), a
    jp clearCurrentEntity

_LABEL_44E2_:
    bit 0, (ix+28)
    ret nz
    ld hl, v_entities.1.unknown8
    ld a, (hl)
    or $09
    ld (hl), a
    ld (ix+25), $0A
    bit 0, (ix+20)
    jr nz, +
    ld hl, _DATA_8E49_
    ld de, $0AF9
    jr _LABEL_455E_

+:
    ld hl, _DATA_8E5E_
    ld de, $0A1F
    jr _LABEL_455E_

_LABEL_4508_:
    bit 0, (ix+28)
    ret nz
    ld a, (v_entities.1.isOffScreenFlags.high)
    or a
    ret nz
    ld a, (v_gameState)
    and $0F
    cp $05
    ret z
    ld a, (_RAM_C054_)
    ld hl, _DATA_4523_
    jp loadAthJumptablePointer

; Jump Table from 4523 to 453E (14 entries, indexed by _RAM_C054_)
_DATA_4523_:
.dw _LABEL_453F_ _LABEL_453F_ _LABEL_453F_ _LABEL_4641_ _LABEL_464E_ _LABEL_48C5_ _LABEL_453F_ _LABEL_468F_
.dw _LABEL_4453_ _LABEL_4453_ _LABEL_453F_ _LABEL_453F_ _LABEL_453F_ _LABEL_453F_

; 1st entry of Jump Table from 4523 (indexed by _RAM_C054_)
_LABEL_453F_:
    ld hl, v_entities.1.unknown8
    ld a, (hl)
    or $09
    ld (hl), a
    ld (ix+25), $0A
    bit 0, (ix+20)
    jr nz, +
    ld hl, _DATA_8DD1_
    ld de, $0CF9
    jr _LABEL_455E_

+:
    ld hl, _DATA_8DE9_
    ld de, $0C17
_LABEL_455E_:
    ld a, $8A
    ld (v_soundControl), a
    call _LABEL_41AA_
    ld a, (v_entities.1.xPos.high)
    add a, e
    cp $F8
    ret nc
    cp $0A
    ret c
    call _LABEL_7C4F_
    and $C0
    cp $C0
    ret nz
_LABEL_4578_:
    ld a, l
    and $BC
    ld l, a
    ld (_RAM_C204_), hl
    ld a, (hl)
    exx
    ld d, a
    exx
    ld e, c
    ld d, b
    inc hl
    ld b, (hl)
    ld c, $01
    cp $0D
    jr c, +
    inc c
    cp $7C
    jr c, +
    inc c
+:
    ld a, e
    ld hl, (v_horizontalScroll)
    and $F0
    add a, h
    ld e, a
    ld a, d
    ld hl, (v_verticalScroll)
    and $F0
    sub h
    jr nc, +
    sub $20
+:
    cp $E0
    jr c, +
    sub $20
+:
    ld d, a
    ld a, c
    call _LABEL_5C01_
    bit 5, b
    jr z, _LABEL_45BE_
    exx
    ld a, d
    exx
    ld c, e
    ld b, d
    ld hl, _DATA_45D9_ - 2
    rst $20    ; loadAthJumptablePointer
_LABEL_45BE_:
    ld a, (v_entities.1.state)
    cp ALEX_SWIMING
    ld hl, _DATA_14503_
    jr nz, +
    ld hl, _DATA_1450B_
+:
    ld a, $85
    ld (_RAM_C203_), a
    ld (_RAM_C206_), hl
    ld a, $80
    ld (_RAM_C202_), a
    ret

; Jump Table from 45D9 to 45F0 (12 entries, indexed by _RAM_C804_)
_DATA_45D9_:
.dw _LABEL_45F1_ _LABEL_45F1_ _LABEL_45F1_ _LABEL_45F1_ _LABEL_4615_ _LABEL_4615_ _LABEL_4615_ _LABEL_4615_
.dw _LABEL_4627_ _LABEL_4627_ _LABEL_4627_ _LABEL_4627_

; 1st entry of Jump Table from 45D9 (indexed by _RAM_C804_)
_LABEL_45F1_:
    ld a, (_RAM_C054_)
    ld e, a
    ld d, $00
    ld hl, _DATA_4607_
    add hl, de
    ld a, (hl)
    or a
    ret nz
    set 4, (ix+28)
    ld (ix+24), $3C
    ret

; Data from 4607 to 4614 (14 bytes)
_DATA_4607_:
.db $00 $00 $00 $01 $01 $01 $00 $01 $01 $01 $00 $00 $00 $00

; 5th entry of Jump Table from 45D9 (indexed by _RAM_C804_)
_LABEL_4615_:
    ld e, c
    ld d, b
    ld hl, v_questionMarkBoxIndex
    ld a, (hl)
    inc (hl)
    ld hl, _DATA_DD7_
    ld c, a
    ld b, $00
    add hl, bc
    ld c, (hl)
    jp _LABEL_5B90_

; 9th entry of Jump Table from 45D9 (indexed by _RAM_C804_)
_LABEL_4627_:
    ld e, c
    ld d, b
    ld c, $3C
    jp _LABEL_5B90_

_LABEL_462E_:
    ld hl, v_entities.1.unknown8
    ld a, (hl)
    and $02
    xor $02
    ret z
    dec (ix+25)
    ret nz
    ld a, (hl)
    and $F6
    ld (hl), a
    cp a
    ret

; 4th entry of Jump Table from 4523 (indexed by _RAM_C054_)
_LABEL_4641_:
    ld iy, _RAM_C360_
    ld (iy+0), $05
    ld hl, $80E6
    jr +

; 5th entry of Jump Table from 4523 (indexed by _RAM_C054_)
_LABEL_464E_:
    ld iy, _RAM_C360_
    ld (iy+0), $07
    ld hl, $80F4
+:
    ld a, $90
    ld (v_soundControl), a
    ld (_RAM_C367_), hl
    ld hl, v_entities.1.unknown8
    ld a, (hl)
    or $0B
    ld (hl), a
    ld a, (v_entities.1.xPos.high)
    ld (_RAM_C36C_), a
    ld a, (v_entities.1.yPos.high)
    add a, $04
    ld (_RAM_C36E_), a
    ld a, (v_entities.1.unknown3)
    and $02
    ld (_RAM_C374_), a
    ld hl, $FF00
    jr z, +
    ld hl, $0100
+:
    ld (_RAM_C36F_), hl
    ld hl, $FE00
    ld (_RAM_C371_), hl
; 8th entry of Jump Table from 4523 (indexed by _RAM_C054_)
_LABEL_468F_:
    ret

; 5th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4690_:
    ld a, (_RAM_C369_)
    or (ix+10)
    jp nz, _LABEL_485A_
    ld de, $1004
    call _LABEL_4944_
    bit 6, (ix+20)
    jr nz, ++
    ld de, $0642
    bit 1, (ix+20)
    jr z, +
    ld e, $0E
+:
    call getTileNearEntityWithXYOffset
    rlca
    ret nc
    ld hl, $0000
    ld (_RAM_C36F_), hl
    ret

++:
    ld (ix+0), $06
    ld (ix+30), $08
    ld (ix+31), $0A
    ret

; 6th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_46C9_:
    ld a, (_RAM_C369_)
    or (ix+10)
    jp nz, _LABEL_485A_
    ld hl, $0000
    ld (_RAM_C36F_), hl
    ld (_RAM_C371_), hl
    dec (ix+31)
    ret nz
    ld iy, v_entities.2
    ld a, (iy+0)
    or a
    jr z, +
    ld iy, _RAM_C340_
    ld a, (iy+0)
    or a
    jr z, +
    ld (ix+31), $01
    ret

+:
    ld a, $A5
    ld (v_soundControl), a
    ld (ix+31), $1E
    ld (iy+0), $09
    ld a, (_RAM_C36C_)
    ld (iy+12), a
    ld a, (_RAM_C36E_)
    ld (iy+14), a
    ld a, (_RAM_C374_)
    and $02
    ld (iy+20), a
    dec (ix+30)
    jp z, clearCurrentEntity
    ret

; 7th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4720_:
    ld a, (_RAM_C369_)
    or (ix+10)
    jp nz, _LABEL_485A_
    ld de, $1004
    call _LABEL_4944_
    bit 6, (ix+20)
    jr nz, ++
    ld de, $0642
    bit 1, (ix+20)
    jr z, +
    ld e, $0E
+:
    call getTileNearEntityWithXYOffset
    rlca
    ret nc
    ld hl, $0000
    ld (_RAM_C36F_), hl
    ret

++:
    res 1, (ix+1)
    ld a, $AB
    ld (v_soundControl), a
    ld (ix+0), $08
    ld hl, $8CD2
    ld (_RAM_C367_), hl
    ld hl, $04B0
    ld (_RAM_C37B_), hl
    ld hl, $0000
    ld (_RAM_C36F_), hl
    ld (_RAM_C371_), hl
    ret

; 9th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_476F_:
    bit 0, (ix+1)
    jp z, _LABEL_47F1_
    bit 7, (ix+1)
    jp nz, _LABEL_4854_
    ld (ix+17), $00
    ld (ix+18), $00
    call _LABEL_4846_
    ret nc
    bit 0, (ix+29)
    jr z, +++
    ld l, (ix+27)
    ld h, (ix+28)
    ld a, (hl)
    or a
    jr z, ++
    push hl
    pop iy
    ld a, (iy+12)
    bit 1, (ix+20)
    jr nz, +
    sub (ix+12)
    cp $D0
    jr nc, ++++
    jr +++

+:
    sub (ix+12)
    cp $10
    jr c, ++++
    jr +++

++:
    res 0, (ix+29)
+++:
    ld de, $1004
    call getTileNearEntityWithXYOffset
    rlca
    jr nc, +
    bit 1, (ix+20)
    jr nz, _LABEL_47D0_
_LABEL_47CA_:
    ld hl, _DATA_8522_
    jp handleEntityAnimation

_LABEL_47D0_:
    ld hl, _DATA_8537_
    jp handleEntityAnimation

+:
    ld (ix+0), $0A
    set 7, (ix+20)
    ret

++++:
    ld a, $A7
    ld (v_soundControl), a
    res 0, (ix+29)
    ld (ix+0), $0A
    ld (ix+18), $FD
    ret

_LABEL_47F1_:
    set 0, (ix+1)
    ld (ix+6), $05
    call +++
    jr z, ++
    push hl
    pop iy
    set 0, (ix+29)
    ld (ix+27), l
    ld (ix+28), h
    ld a, (iy+12)
    sub (ix+12)
    jr c, +
    set 1, (ix+20)
    ld (ix+16), $02
    jr _LABEL_47CA_

+:
    res 1, (ix+20)
    ld (ix+16), $FE
    jr _LABEL_47D0_

++:
    bit 1, (ix+20)
    ld (ix+16), $02
    jr nz, _LABEL_47D0_
    ld (ix+16), $FE
    jr _LABEL_47CA_

+++:
    ld hl, _RAM_C3C0_
    ld de, $0020
    ld b, $0A
-:
    ld a, (hl)
    or a
    ret nz
    add hl, de
    djnz -
    ret

_LABEL_4846_:
    ld a, (ix+9)
    or (ix+10)
    jr nz, _LABEL_4854_
    ld a, (ix+14)
    cp $AC
    ret c
_LABEL_4854_:
    ld a, (_RAM_C360_)
    or a
    jr nz, +
_LABEL_485A_:
    ld hl, v_entities.1.unknown8
    ld a, (hl)
    and $F4
    ld (hl), a
    xor a
    ld (_RAM_C054_), a
+:
    call clearCurrentEntity
    or a
    ret

; 10th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_486A_:
    bit 7, (ix+1)
    jr nz, _LABEL_4854_
    call _LABEL_4846_
    ret nc
    ld de, $1004
    call _LABEL_4944_
    bit 6, (ix+20)
    ret z
    ld a, (ix+20)
    and $3F
    ld (ix+20), a
    ld (ix+0), $09
    ret

; 8th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_488C_:
    ld hl, (_RAM_C37B_)
    dec hl
    ld a, l
    or h
    ld (_RAM_C37B_), hl
    jr z, +
    ld a, (v_entities.1.xPos.high)
    sub $04
    ld (_RAM_C36C_), a
    ld a, (v_entities.1.isOffScreenFlags)
    ld (_RAM_C369_), a
    ld a, (v_entities.1.yPos.high)
    sub $03
    ld (_RAM_C36E_), a
    ld a, (v_entities.1.isOffScreenFlags.high)
    ld (_RAM_C36A_), a
    ret

+:
    call _LABEL_99D3_
    ld hl, v_entities.1.unknown8
    ld a, (hl)
    and $F4
    ld (hl), a
    xor a
    ld (_RAM_C054_), a
    jp clearCurrentEntity

; 6th entry of Jump Table from 4523 (indexed by _RAM_C054_)
_LABEL_48C5_:
    bit 0, (ix+20)
    ld a, (v_entities.1.xPos.high)
    jr nz, +
    sub $08
    call nc, +++
    ld hl, _DATA_8DD1_
    jr ++

+:
    add a, $10
    call nc, ++++
    ld hl, _DATA_8DE9_
++:
    ld a, $A4
    ld (v_soundControl), a
    jp _LABEL_41AA_

+++:
    ld hl, $8093
    ld de, $FC00
    jr +++++

++++:
    ld hl, $8098
    ld de, $0400
+++++:
    ld (v_entities.2.xPos.high), a
    ld a, (v_entities.1.yPos.high)
    add a, $08
    ld (v_entities.2.yPos.high), a
    ld (v_entities.2.spriteDescriptorPointer), hl
    ld (v_entities.2.xSpeed), de
    ld hl, $0000
    ld (v_entities.2.ySpeed), hl
    ld a, $1B
    ld (v_entities.2), a
    ld hl, v_entities.1.unknown8
    ld a, (hl)
    or $0B
    ld (hl), a
    ret

; 27th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_491B_:
    ld a, (v_entities.2.isOffScreenFlags)
    or (ix+10)
    jr nz, +
    ld a, (v_entities.2.xPos.high)
    cp $0C
    jr c, +
    cp $F4
    jr nc, +
    ld de, $0404
    call getTileNearEntityWithXYOffset
    rlca
    ret nc
    rlca
    jp c, _LABEL_4578_
+:
    ld hl, v_entities.1.unknown8
    ld a, (hl)
    and $F4
    ld (hl), a
    jp clearCurrentEntity

_LABEL_4944_:
    ld l, (ix+17)
    ld h, (ix+18)
    ld bc, $0040
    add hl, bc
    ld (ix+17), l
    ld (ix+18), h
    jr nc, +
    set 7, (ix+20)
+:
    bit 7, (ix+20)
    ret z
    ld a, h
    cp $04
    jr c, +
    ld (ix+17), $00
+:
    ld a, d
    add a, h
    ld d, a
    call getTileNearEntityWithXYOffset
    rlca
    ret nc
    ld a, b
    and $07
    neg
    add a, (ix+18)
    ld (ix+18), a
    ld (ix+17), $00
    set 6, (ix+20)
    ret

; 20th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4984_:
    set 1, (ix+1)
    ld a, (v_scrollFlags)
    and $0F
    ret nz
    dec (ix+3)
    ret nz
    ld a, (_RAM_C202_)
    or a
    jr z, +
    inc (ix+3)
    ret

+:
    ld a, (ix+25)
    ld (ix+3), a
    ld a, $A2
    ld (v_soundControl), a
    ld h, $00
    ld l, (ix+30)
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, (ix+28)
    ld d, (ix+29)
    add hl, de
    ld a, (ix+31)
    rrca
    dec a
    ld b, a
    ld a, (hl)
-:
    inc hl
    inc hl
    or (hl)
    djnz -
    jp nz, clearCurrentEntity
    ld l, (ix+28)
    ld h, (ix+29)
    call _LABEL_4C23_
    ld (ix+28), l
    ld (ix+29), h
    ld (_RAM_C204_), hl
    ld l, (ix+26)
    ld h, (ix+27)
    ld (_RAM_C206_), hl
    ld l, (ix+30)
    ld h, (ix+31)
    ld (_RAM_C208_), hl
    ld a, $85
    ld (_RAM_C202_), a
    ret

; 16th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_49F2_:
    ld hl, $BE9E
    ld bc, $0403
    ld (ix+25), $0F
_LABEL_49FC_:
    ld (ix+7), <_DATA_80E1_
    ld (ix+8), >_DATA_80E1_
    ld a, (v_scrollFlags)
    and $0F
    ret nz
    ld (ix+26), l
    ld (ix+27), h
    ld (ix+31), b
    ld (ix+30), c
    ld e, (ix+12)
    ld d, (ix+14)
    call _LABEL_7C89_
    ld a, l
    and $FC
    ld (ix+28), a
    ld (ix+29), h
    ld (ix+0), $14
    ret

; 17th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4A2D_:
    ld hl, $BEAA
    ld bc, $0809
    ld (ix+25), $19
    jr _LABEL_49FC_

; 18th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4A39_:
    ld hl, $BEF2
    ld bc, $040B
    ld (ix+25), $0A
    jr _LABEL_49FC_

; 19th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4A45_:
    ld hl, $BF26
    ld bc, $2003
    ld (ix+25), $1E
    jr _LABEL_49FC_

; 22nd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4A51_:
    ld (ix+7), <_DATA_80E1_
    ld (ix+8), >_DATA_80E1_
    ld a, (v_scrollFlags)
    and $0F
    ret nz
    bit 0, (ix+1)
    jr z, _LABEL_4AC2_
    set 1, (ix+1)
    bit 4, (ix+1)
    jr nz, _LABEL_4A86_
    ld a, (v_entities.1.xPos.high)
    sub (ix+12)
    ret c
    cp $10
    ret nc
_LABEL_4A79_:
    ld a, $A0
    ld (v_soundControl), a
    set 4, (ix+1)
    ld (ix+5), $01
_LABEL_4A86_:
    dec (ix+5)
    ret nz
    ld a, (_RAM_C202_)
    or a
    jr z, +
    inc (ix+5)
    ret

+:
    ld a, (ix+25)
    ld (ix+5), a
    ld a, (ix+31)
    add a, $04
    ld (ix+31), a
    ld h, a
    ld l, $02
    ld (_RAM_C208_), hl
    ld l, (ix+28)
    ld h, (ix+29)
    ld (_RAM_C204_), hl
    dec l
    dec l
    ld (ix+28), l
    ld a, $87
    ld (_RAM_C202_), a
    dec (ix+24)
    jp z, clearCurrentEntity
    ret

_LABEL_4AC2_:
    ld e, (ix+12)
    ld a, (ix+14)
    add a, $10
    ld d, a
    call _LABEL_7C89_
    ld a, l
    and $FE
    ld (ix+28), a
    ld (ix+29), h
_LABEL_4AD7_:
    set 0, (ix+1)
    ld (ix+25), $03
    ld a, (ix+3)
    ld (ix+24), a
    ld (ix+31), $00
    ld (ix+30), $02
    ret

; 23rd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4AEE_:
    ld (ix+7), <_DATA_80E1_
    ld (ix+8), >_DATA_80E1_
    ld a, (v_scrollFlags)
    and $0F
    ret nz
    bit 0, (ix+1)
    jr z, +
    set 1, (ix+1)
    bit 4, (ix+1)
    jp nz, _LABEL_4A86_
    call _LABEL_7D0B_
    ret c
    jp _LABEL_4A79_

+:
    ld de, $A074
    call _LABEL_7C89_
    dec hl
    ld (ix+28), l
    ld (ix+29), h
    jr _LABEL_4AD7_

; 21st entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4B23_:
    ld (ix+7), <_DATA_80E1_
    ld (ix+8), >_DATA_80E1_
    ld a, (v_scrollFlags)
    and $0F
    ret nz
    bit 0, (ix+1)
    jr z, _LABEL_4B7A_
    ld a, (ix+10)
    or (ix+9)
    jr nz, ++
    dec (ix+5)
    ret nz
    ld a, (_RAM_C202_)
    or a
    jr z, +
    inc (ix+5)
    ret

+:
    ld (ix+5), $0F
    ld a, $86
    ld (_RAM_C202_), a
    ld a, (ix+3)
    ld (_RAM_C209_), a
    ld l, (ix+28)
    ld h, (ix+29)
    ld (_RAM_C204_), hl
    dec (ix+24)
    jr z, ++
    call _LABEL_4C23_
    ld (ix+28), l
    ld (ix+29), h
    ret

++:
    call _LABEL_99D3_
    jp clearCurrentEntity

_LABEL_4B7A_:
    set 0, (ix+1)
    ld (ix+25), $01
    ld (ix+24), $12
    ld e, (ix+12)
    ld d, (ix+14)
    call _LABEL_7C89_
    ld a, l
    and $FE
    ld (ix+28), a
    ld (ix+29), h
    ld a, $9F
    ld (v_soundControl), a
    ret

; 6th entry of Jump Table from 4237 (indexed by _RAM_C202_)
_LABEL_4B9E_:
    ld a, $87
    ld (Mapper_Slot2), a
    ld hl, (_RAM_C206_)
    ld de, (_RAM_C204_)
    ld bc, (_RAM_C208_)
-:
    push bc
    push bc
    push de
    ld c, b
    ld b, $00
    push hl
    ldir
    pop hl
    pop de
    ld a, d
    sub $50
    ld d, a
    pop bc
    rst $30    ; memcpyToVRAM
    ex de, hl
    call _LABEL_4C23_
    ex de, hl
    ld a, d
    add a, $50
    ld d, a
    pop bc
    dec c
    jr nz, -
    ret

; 8th entry of Jump Table from 4237 (indexed by _RAM_C202_)
_LABEL_4BCD_:
    ld hl, (_RAM_C204_)
    ld bc, (_RAM_C208_)
--:
    push bc
    push bc
    push hl
    ld e, l
    ld a, h
    sub $50
    ld d, a
-:
    ld (hl), $00
    inc hl
    djnz -
    pop hl
    pop bc
    call setVDPAddress
-:
    xor a
    out (Port_VDPData), a
    djnz -
    call _LABEL_4C23_
    pop bc
    dec c
    jr nz, --
    ret

; 7th entry of Jump Table from 4237 (indexed by _RAM_C202_)
_LABEL_4BF3_:
    ld hl, (_RAM_C204_)
    ld a, (_RAM_C209_)
    ld b, a
    ld c, $43
    call +
    ld a, (_RAM_C209_)
    ld b, a
    ld c, $44
+:
    push bc
    ld e, l
    ld a, h
    sub $50
    ld d, a
-:
    ld a, (hl)
    or a
    jr z, +
    cp $44
    jr z, +
    inc hl
    jr ++

+:
    ld (hl), c
    inc hl
    ld (hl), $70
++:
    inc hl
    djnz -
    ld l, e
    pop af
    add a, a
    ld b, a
    rst $30    ; memcpyToVRAM
    ld l, e
_LABEL_4C23_:
    ld bc, $0040
    add hl, bc
    ld a, h
    cp $CF
    ret c
    ld h, $C8
    ret

; 36th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4C2E_:
    bit 0, (ix+1)
    jr nz, +
    set 0, (ix+1)
    ld (ix+3), $00
    ld (ix+27), $C0
    ld (ix+28), $00
    ld (ix+29), $08
    ld (ix+16), $00
    ld (ix+15), $00
    ld (ix+18), $00
    ld (ix+17), $00
    ld (ix+7), <_DATA_84E3_
    ld (ix+8), >_DATA_84E3_
    ld a, (ix+9)
    ld (ix+26), a
    ld a, (ix+10)
    ld (ix+25), a
+:
    ld a, (ix+9)
    or (ix+10)
    jp nz, _LABEL_4CDE_
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jp c, _LABEL_4CDE_
    ld a, (ix+21)
    or a
    jp nz, _LABEL_4D92_
    ld a, (v_entities.1.unknown8)
    bit 3, a
    jp z, _LABEL_4CDE_
    res 3, a
    ld (v_entities.1.unknown8), a
    inc (ix+3)
    ld a, (ix+3)
    cp $03
    jp c, _LABEL_4CDE_
    ld b, $08
    ld de, $0020
-:
    ld a, (ix+0)
    cp $24
    jr nz, +
    ld (ix+0), $2B
    res 0, (ix+1)
+:
    add ix, de
    djnz -
    ld a, $95
    ld (v_soundControl), a
    ld ix, $C3C0
    ld a, $83
    ld (_RAM_C202_), a
    ld a, (v_level)
    cp $05
    jr c, +
    ld a, $84
    ld (_RAM_C202_), a
    ret

+:
    ld a, (v_currentScreenNumber)
    and $7F
    cp $03
    ret c
    ld a, $84
    ld (_RAM_C202_), a
    ret

_LABEL_4CDE_:
    ld bc, $0000
    ld a, (ix+22)
    or a
    jr z, +
    dec (ix+22)
    jr ++

+:
    ld bc, $0002
    ld a, (ix+24)
    ld d, a
    or a
    jr z, +
    ld bc, $FFFE
+:
    inc (ix+23)
    ld a, (ix+23)
    cp $60
    jr c, ++
    ld a, d
    cpl
    ld (ix+24), a
    ld (ix+23), $00
++:
    ld a, (ix+21)
    or a
    jr z, +
    ld hl, (_RAM_C0F4_)
    ld (ix+31), h
    ld (ix+30), l
    ld a, (_RAM_C0FF_)
    ld (ix+25), a
    ld a, (_RAM_C0FB_)
    ld (ix+26), a
    jp _LABEL_4D67_

+:
    ld hl, (v_horizontalScrollSpeed)
    ld a, h
    or l
    jr z, +
    ld d, (ix+31)
    ld e, (ix+6)
    add hl, de
    ld (ix+31), h
    ld (ix+6), l
    jr c, _LABEL_4D67_
    inc (ix+26)
    jr _LABEL_4D67_

+:
    ld hl, (v_verticalScrollSpeed)
    ld a, h
    or l
    jr z, _LABEL_4D67_
    ld d, (ix+30)
    ld e, (ix+2)
    ex de, hl
    or a
    sbc hl, de
    ld (ix+30), h
    ld (ix+2), l
    jr nc, _LABEL_4D67_
    ld a, h
    sub $40
    ld (ix+30), a
    dec (ix+25)
_LABEL_4D67_:
    ld l, (ix+27)
    ld h, (ix+28)
    add hl, bc
    ld (ix+27), l
    ld (ix+28), h
    call _LABEL_4CE_
    ld h, (ix+12)
    ld l, (ix+14)
    ld (_RAM_C0F4_), hl
    ld a, (ix+10)
    ld (_RAM_C0FF_), a
    ld a, (ix+9)
    ld (_RAM_C0FB_), a
    cp $01
    jp z, clearCurrentEntity
    ret

_LABEL_4D92_:
    ld a, (v_entities.1.unknown8)
    bit 3, a
    jp z, _LABEL_4CDE_
    res 3, a
    ld (v_entities.1.unknown8), a
    inc (ix+3)
    ld a, (ix+3)
    cp $03
    jp c, _LABEL_4CDE_
    jp _LABEL_55A5_

getVelocitiesToPursuitAlex:
    ld c, $00
    ld a, (v_entities.1.yPos.high)
    sub (ix+14)
    jr nz, +
    inc a
+:
    jr nc, +
    ld c, $01
    neg
+:
    ld l, a
    ld a, (v_entities.1.xPos.high)
    sub (ix+12)
    jr nz, +
    inc a
+:
    jr nc, +
    set 1, c
    neg
+:
    ld h, a
    ld a, l
    cp h
    jr nc, +
    set 2, c
    ld l, h
    ld h, a
+:
    ld e, l
    ld l, $00
    call ++
    ld h, $00
    ld a, (ix+0)
    cp $29
    jp z, +
    ld e, l
    ld d, h
    srl d
    rr e
    srl d
    rr e
    ld l, e
    ld h, d
    jp +

+:
    ld de, $0100
    bit 2, c
    jr z, +
    ex de, hl
+:
    bit 0, c
    jr z, +
    ld a, e
    cpl
    ld e, a
    ld a, d
    cpl
    ld d, a
    inc de
+:
    bit 1, c
    ret z
    ld a, l
    cpl
    ld l, a
    ld a, h
    cpl
    ld h, a
    inc hl
    ret

++:
    ld b, $08
    xor a
-:
    adc hl, hl
    ld a, h
    jp c, +
    cp e
    jp c, ++
+:
    sub e
    ld h, a
    xor a
++:
    ccf
    djnz -
    rl l
    sla h
    ld a, h
    sub e
    ret c
    inc l
    ret

; 35th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4E30_:
    bit 0, (ix+1)
    jr nz, +
    ld (ix+5), $0A
    ld (ix+6), $0A
    ld a, (ix+9)
    or (ix+10)
    jr nz, ++
    set 0, (ix+1)
    ld (ix+18), $FF
    ld (ix+17), $C0
    set 1, (ix+1)
+:
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jr nc, +++
-:
    inc (ix+23)
    ld a, (ix+23)
    cp $C0
    jr nz, ++
    ld (ix+23), $00
    ld a, (ix+18)
    cpl
    ld (ix+18), a
    ld a, (ix+17)
    cpl
    inc a
    ld (ix+17), a
    call _LABEL_4FAD_
++:
    ld hl, _DATA_8211_
    jp handleEntityAnimation

+++:
    ld a, (v_entities.1.unknown8)
    bit 3, a
    jr z, -
    res 3, a
    ld (v_entities.1.unknown8), a
    inc (ix+3)
    ld a, (ix+3)
    cp $03
    jp nc, _LABEL_55A5_
    jr -

; 34th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4E9D_:
    bit 0, (ix+1)
    jr nz, +
    set 0, (ix+1)
    ld (ix+20), $12
    ld (ix+5), $08
    ld (ix+6), $08
    ld (ix+18), $FF
    ld a, (ix+23)
    ld c, a
    add a, a
    add a, c
    ld c, a
    ld b, $00
    ld hl, _DATA_52CF_
    add hl, bc
    ld a, (hl)
    ld (ix+17), a
    inc hl
    ld a, (hl)
    ld (ix+16), a
    inc hl
    ld a, (hl)
    ld (ix+15), a
    set 1, (ix+1)
+:
    ld a, (ix+9)
    or (ix+10)
    jr nz, +
    call tryToKillAlexIfColliding
    ld a, (ix+14)
    cp $18
    jp c, clearCurrentEntity
+:
    ld hl, _DATA_825C_
    jp handleEntityAnimation

; 32nd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
.INC "entities/batLeft/updater.asm"

; 54th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
.INC "entities/batRight/updater.asm"

_LABEL_4FAD_:
    ld a, (ix+18)
    cp $FF
    ret nz
    ld b, $05
    ld de, $0020
    ld iy, _RAM_C500_
-:
    ld a, (iy+0)
    or a
    jr nz, +
    ld a, $97
    ld (v_soundControl), a
    ld (iy+0), $22
    ld a, (ix+14)
    ld (iy+14), a
    ld a, (ix+12)
    ld (iy+12), a
    ld a, (ix+9)
    ld (iy+9), a
    set 1, (iy+1)
    inc (ix+24)
    ld a, (ix+24)
    and $07
    ld (iy+23), a
+:
    add iy, de
    djnz -
    ret

; 44th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4FF1_:
    bit 0, (ix+1)
    jr nz, +
    ld (ix+7), <_DATA_856E_
    ld (ix+8), >_DATA_856E_
    ld a, (ix+9)
    or (ix+10)
    ret nz
    set 0, (ix+1)
    set 1, (ix+1)
    ld (ix+18), $FF
    ld (ix+17), $80
    ret

+:
    call tryToKillAlexIfColliding
    inc (ix+23)
    ld a, (ix+23)
    cp $40
    ret c
    ld a, (ix+18)
    cpl
    ld (ix+18), a
    ld a, (ix+17)
    cpl
    inc a
    ld (ix+17), a
    ld (ix+23), $00
    ret

.INC "entities/monsterBirdLeft/updater.asm"
.INC "entities/monsterBirdRight/updater.asm"

; 48th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
.INC "entities/smallFishLeft/updater.asm"
.INC "entities/smallFishRight/updater.asm"

.INC "entities/killerFishLeft/updater.asm"
.INC "entities/killerFishRight/updater.asm"

; Data from 524F to 528E (64 bytes)
; Sine table used on bat (at least)
lowSine:
.db $00 $01 $02 $02 $03 $04 $04 $05 $06 $06 $07 $07 $07 $08 $08 $08
.db $08 $08 $08 $08 $07 $07 $07 $06 $06 $05 $04 $04 $03 $02 $02 $01
.db $00 $FF $FE $FE $FD $FC $FC $FB $FA $FA $F9 $F9 $F9 $F8 $F8 $F8
.db $F8 $F8 $F8 $F8 $F9 $F9 $F9 $FA $FA $FB $FC $FC $FD $FE $FE $FF

; Data from 528F to 52CE (64 bytes)
highSine:
.db $00 $02 $05 $07 $09 $0B $0D $0F $11 $13 $14 $15 $16 $17 $18 $18
.db $18 $18 $18 $17 $16 $15 $14 $13 $11 $0F $0D $0B $09 $07 $05 $02
.db $00 $FE $FB $F9 $F7 $F5 $F3 $F1 $EF $ED $EC $EB $EA $E9 $E8 $E8
.db $E8 $E8 $E8 $E9 $EA $EB $EC $ED $EF $F1 $F3 $F5 $F7 $F9 $FB $FE

; Data from 52CF to 52E6 (24 bytes)
_DATA_52CF_:
.db $80 $FF $80 $80 $00 $80 $00 $FF $80 $00 $00 $80 $80 $01 $00 $80
.db $FF $00 $80 $00 $40 $80 $FF $C0

; 37th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_52E7_:
    ld a, (ix+9)
    or (ix+10)
    jr nz, +
    ld a, (v_entities.1.state)
    cp ALEX_DEAD
    jp z, _LABEL_5571_
+:
    bit 0, (ix+1)
    jr nz, +
    ld (ix+5), $12
    ld (ix+6), $12
    ld (ix+4), $00
    ld a, (ix+9)
    or (ix+10)
    jr nz, ++
    set 0, (ix+1)
    ld (ix+2), $81
    ld (ix+15), $A0
    ld (ix+16), $FF
+:
    call tryToKillAlexIfColliding
    ld a, (ix+19)
    ld (ix+24), a
    ld (ix+19), $A8
    call _LABEL_7D0B_
    jp nc, _LABEL_54DF_
    ld a, (ix+24)
    ld (ix+19), a
    ld a, (v_entities.1.xPos.high)
    sub (ix+12)
    jr nc, _LABEL_5357_
    neg
    cp $20
    jr c, +++
++:
    ld hl, _DATA_8A35_
    jp handleEntityAnimation

+++:
    ld (ix+0), $27
    res 0, (ix+1)
    ret

_LABEL_5357_:
    res 0, (ix+1)
    ld (ix+0), $26
    ret

; 38th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5360_:
    ld a, (ix+9)
    or (ix+10)
    jr nz, +
    ld a, (v_entities.1.state)
    cp ALEX_DEAD
    jp z, _LABEL_5571_
+:
    bit 0, (ix+1)
    jr nz, +
    set 0, (ix+1)
    ld (ix+5), $12
    ld (ix+6), $12
    ld (ix+4), $00
    ld (ix+15), $60
    ld (ix+16), $00
+:
    call tryToKillAlexIfColliding
    ld a, (ix+19)
    ld (ix+24), a
    ld (ix+19), $A8
    call _LABEL_7D0B_
    jp nc, _LABEL_54DF_
    ld a, (ix+24)
    ld (ix+19), a
    ld a, $38
    add a, (ix+12)
    ld c, a
    ld a, (v_entities.1.xPos.high)
    sub c
    jr c, _LABEL_53C6_
    cp $20
    jr c, +
    ld hl, _DATA_8A3F_
    jp handleEntityAnimation

+:
    ld (ix+0), $28
    res 0, (ix+1)
    ret

_LABEL_53C6_:
    ld (ix+0), $25
    res 0, (ix+1)
    ret

; 39th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_53CF_:
    ld a, (ix+9)
    or (ix+10)
    jr nz, +
    ld a, (v_entities.1.state)
    cp ALEX_DEAD
    jp z, _LABEL_5571_
+:
    bit 0, (ix+1)
    jr nz, +
    set 0, (ix+1)
    ld (ix+5), $20
    ld (ix+6), $20
    ld (ix+4), $00
    ld (ix+16), $FF
    ld (ix+15), $C0
    jr _LABEL_543D_

+:
    ld a, (ix+9)
    or (ix+10)
    jr nz, _LABEL_543D_
    call tryToKillAlexIfColliding
    ld a, (ix+19)
    ld (ix+24), a
    ld (ix+19), $A8
    call _LABEL_7D0B_
    jp nc, _LABEL_54DF_
    ld a, (ix+24)
    ld (ix+19), a
    ld a, (ix+4)
    or a
    jr nz, +
    ld a, (ix+5)
    cp $20
    jr nz, _LABEL_543D_
    ld a, (v_entities.1.xPos.high)
    sub (ix+12)
    jp nc, _LABEL_5357_
    neg
    cp $20
    jp nc, _LABEL_53C6_
_LABEL_543D_:
    ld hl, _DATA_8A3A_
    jp handleEntityAnimation

+:
    ld a, (ix+5)
    cp $20
    jr nz, _LABEL_543D_
    ld a, $99
    ld (v_soundControl), a
    jr _LABEL_543D_

; 40th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5451_:
    ld a, (ix+9)
    or (ix+10)
    jr nz, +
    ld a, (v_entities.1.state)
    cp ALEX_DEAD
    jp z, _LABEL_5571_
+:
    bit 0, (ix+1)
    jr nz, +
    set 0, (ix+1)
    ld (ix+5), $20
    ld (ix+6), $20
    ld (ix+4), $00
    ld (ix+16), $00
    ld (ix+15), $40
    jp _LABEL_54C9_

+:
    ld a, (ix+9)
    or (ix+10)
    jp nz, _LABEL_54C9_
    call tryToKillAlexIfColliding
    ld a, (ix+19)
    ld (ix+24), a
    ld (ix+19), $A8
    call _LABEL_7D0B_
    jp nc, _LABEL_54DF_
    ld a, (ix+24)
    ld (ix+19), a
    ld a, (ix+4)
    or a
    jp nz, +
    ld a, (ix+5)
    cp $20
    jr nz, _LABEL_54C9_
    ld a, $99
    ld (v_soundControl), a
    ld a, $38
    add a, (ix+12)
    ld c, a
    ld a, (v_entities.1.xPos.high)
    sub c
    jp c, _LABEL_53C6_
    cp $20
    jp nc, _LABEL_5357_
_LABEL_54C9_:
    ld hl, _DATA_8A44_
    jp handleEntityAnimation

+:
    ld a, (ix+5)
    cp $20
    jp nz, _LABEL_54C9_
    ld a, $99
    ld (v_soundControl), a
    jp _LABEL_54C9_

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
_LABEL_5515_:
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

_LABEL_5547_:
    ld a, $95
    ld (v_soundControl), a
    call earnEnemyScore
    ld (ix+2), $01
    res 0, (ix+1)
    ld (ix+0), $43
    ret

_LABEL_555C_:
    call earnEnemyScore
    ld a, $95
    ld (v_soundControl), a
    ld (ix+2), $00
    res 0, (ix+1)
    ld (ix+0), $43
    ret

_LABEL_5571_:
    ld (ix+16), $00
    ld (ix+15), $00
    ret

; 42nd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_557A_:
    bit 0, (ix+1)
    jr nz, +
    ld (ix+5), $40
    ld (ix+6), $40
    ld a, (ix+9)
    or (ix+10)
    jr nz, _LABEL_55ED_
    set 0, (ix+1)
    set 1, (ix+1)
    jp _LABEL_55ED_

+:
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jr nc, _LABEL_55A5_
    jr +

_LABEL_55A5_:
    call earnEnemyScore
    ld a, SOUND_SMOKE_PUFF
    ld (v_soundControl), a
    ld (ix+0), ENTITY_SMOKE_PUFF
    res 0, (ix+1)
    ret

+:
    ld a, (ix+4)
    or a
    jr nz, _LABEL_55ED_
    ld a, (ix+5)
    cp $40
    jr nz, _LABEL_55ED_
    ld iy, _RAM_C500_
    ld de, $0020
    ld b, $05
-:
    ld a, (iy+0)
    or a
    jr nz, +
    ld a, $98
    ld (v_soundControl), a
    ld (iy+0), $29
    ld a, (ix+12)
    ld (iy+12), a
    ld a, (ix+14)
    ld (iy+14), a
    jr _LABEL_55ED_

+:
    add iy, de
    djnz -
_LABEL_55ED_:
    ld hl, _DATA_84ED_
    jp handleEntityAnimation

; 41st entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_55F3_:
    bit 0, (ix+1)
    jr nz, +
    set 0, (ix+1)
    ld (ix+20), $12
    call getVelocitiesToPursuitAlex
    ld (ix+15), l
    ld (ix+16), h
    ld (ix+17), e
    ld (ix+18), d
    set 1, (ix+1)
    ld (ix+7), <_DATA_851D_
    ld (ix+8), >_DATA_851D_
    ret

+:
    ld a, (ix+9)
    or (ix+10)
    jp nz, clearCurrentEntity
    jp tryToKillAlexIfColliding

; 67th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5629_:
    bit 0, (ix+1)
    jr nz, +
    set 0, (ix+1)
    set 1, (ix+1)
    ld (ix+4), $00
    ld (ix+5), $10
    ld (ix+6), $10
    ld (ix+16), $00
    ld (ix+15), $00
    ld (ix+18), $00
    ld (ix+17), $00
+:
    ld a, (ix+9)
    or (ix+10)
    jp nz, clearCurrentEntity
    ld a, (ix+4)
    cp $03
    jr nz, +
    ld a, (ix+5)
    cp $01
    jr z, ++
+:
    ld hl, _DATA_8175_
    jp handleEntityAnimation

++:
    xor a
    ld (_RAM_C07F_), a
    ld a, (ix+2)
    or a
    jp z, clearCurrentEntity
    res 0, (ix+1)
    ld (ix+0), $44
    ret

; 43rd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
.INC "src/asm/entities/smokePuff/updater.asm"

; 47th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_56CC_:
    bit 0, (ix+1)
    jr nz, +
    ld (ix+7), <_DATA_854C_
    ld (ix+8), >_DATA_854C_
    ld a, (ix+9)
    or (ix+10)
    ret nz
    set 0, (ix+1)
    set 1, (ix+1)
    ld (ix+23), $10
+:
    ld a, (ix+9)
    or (ix+10)
    ret nz
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jp nc, _LABEL_55A5_
    dec (ix+23)
    ret nz
    ld a, $01
    ld (ix+23), a
    ld de, $1108
    call getTileNearEntityWithXYOffset
    rlca
    ret nc
    ld (ix+0), ENTITY_MONSTER_FROG_JUMPING
    ld (ix+18), $FE
    ld (ix+17), $80
    ld (ix+7), <_DATA_855A_
    ld (ix+8), >_DATA_855A_
    ret

; 55th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
.INC "entities/monsterFrog/jumpingUpdater.asm"


earnEnemyScore:
    ld a, (ix+0)
    ld c, a
    ld b, $00
    ld hl, _DATA_5776_ - 1
    add hl, bc
    ld l, (hl)
    jp addScore

; Data from 5776 to 57CD (88 bytes)
_DATA_5776_:
.dsb 28, $00
.db $12 $12 $12 $03 $00 $00 $06 $06 $09 $09 $09 $09 $00 $03 $00 $00
.db $00 $03 $00 $00 $03 $03 $00 $00 $03
.dsb 16, $00
.db $06 $06 $06 $06 $09 $00 $00 $00 $09 $00 $00 $00 $00 $00 $00 $03
.db $00 $00 $00

; 49th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_57CE_:
    bit 0, (ix+1)
    jr nz, +
    ld (ix+5), $10
    ld (ix+6), $10
    ld a, (ix+9)
    or (ix+10)
    jr nz, _LABEL_5845_
    set 0, (ix+1)
    set 1, (ix+1)
+:
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jp nc, _LABEL_55A5_
    ld a, (ix+24)
    or a
    jr nz, +
    ld (ix+18), $00
    ld (ix+17), $80
    inc (ix+23)
    ld a, (ix+23)
    cp $30
    jr c, _LABEL_5845_
    inc (ix+22)
    ld a, (ix+22)
    cp $02
    jr z, _LABEL_5865_
    ld a, (ix+14)
    ld (ix+3), a
    ld (ix+18), $00
    ld (ix+17), $00
    ld (ix+16), $FF
    ld (ix+15), $80
+:
    inc (ix+24)
    ld a, (ix+24)
    cp $40
    jr z, +
    ld c, a
    ld b, $00
    ld hl, lowSine
    add hl, bc
    ld a, (hl)
    add a, (ix+3)
    ld (ix+14), a
_LABEL_5845_:
    ld hl, _DATA_8BF3_
    jp handleEntityAnimation

+:
    ld (ix+16), $00
    ld (ix+15), $00
    ld (ix+18), $00
    ld (ix+17), $80
    ld (ix+23), $00
    ld (ix+24), $00
    jr _LABEL_5845_

_LABEL_5865_:
    ld (ix+0), $32
    ld (ix+18), $FF
    ld (ix+17), $80
    ld (ix+22), $00
    ld (ix+23), $00
    ld (ix+24), $FF
    ld hl, _DATA_8BF3_
    jp handleEntityAnimation

; 50th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5883_:
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jp nc, _LABEL_55A5_
    ld a, (ix+24)
    cp $FF
    jr nz, +
    inc (ix+23)
    ld a, (ix+23)
    cp $30
    jr c, _LABEL_58D2_
    inc (ix+22)
    ld a, (ix+22)
    cp $02
    jr z, _LABEL_58F2_
    ld (ix+24), $40
    ld (ix+18), $00
    ld (ix+17), $00
    ld (ix+16), $00
    ld (ix+15), $80
+:
    dec (ix+24)
    ld a, (ix+24)
    or a
    jr z, +
    ld c, a
    ld b, $00
    ld hl, lowSine
    add hl, bc
    ld a, (hl)
    add a, (ix+3)
    ld (ix+14), a
_LABEL_58D2_:
    ld hl, _DATA_8BF3_
    jp handleEntityAnimation

+:
    ld (ix+16), $00
    ld (ix+15), $00
    ld (ix+18), $FF
    ld (ix+17), $80
    ld (ix+23), $00
    ld (ix+24), $FF
    jr _LABEL_58D2_

_LABEL_58F2_:
    ld (ix+0), $31
    ld (ix+22), $00
    ld (ix+23), $00
    ld (ix+24), $00
    ld hl, _DATA_8BF3_
    jp handleEntityAnimation

; 56th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
.INCLUDE "entities/debrisTopLeft/updater.asm"

; 57th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5996_:
    bit 0, (ix+1)
    jr nz, updateDebris
    set 0, (ix+1)
    ld a, (_RAM_C5CC_)
    ld (ix+12), a
    ld a, (_RAM_C5CE_)
    add a, $08
    ld (ix+14), a
    ld (ix+16), $FF
    ld (ix+15), $80
    ld (ix+18), $FF
    ld (ix+17), $80
    ld (ix+5), $08
    ld (ix+6), $08
    jr updateDebris

; 58th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_59C8_:
    bit 0, (ix+1)
    jr nz, updateDebris
    set 0, (ix+1)
    ld a, (_RAM_C5CC_)
    add a, $08
    ld (ix+12), a
    ld a, (_RAM_C5CE_)
    ld (ix+14), a
    ld (ix+16), $00
    ld (ix+15), $80
    ld (ix+18), $FF
    ld (ix+17), $80
    ld (ix+5), $08
    ld (ix+6), $08
    jp updateDebris

; 59th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_59FB_:
    bit 0, (ix+1)
    jp nz, updateDebris
    set 0, (ix+1)
    ld a, (_RAM_C5CC_)
    add a, $08
    ld (ix+12), a
    ld a, (_RAM_C5CE_)
    add a, $08
    ld (ix+14), a
    ld (ix+16), $00
    ld (ix+15), $80
    ld (ix+18), $FF
    ld (ix+17), $80
    ld (ix+5), $08
    ld (ix+6), $08
    jp updateDebris

; 60th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
.INC "entities/moneyBag/updater.asm"

; 77th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5A96_:
    bit 0, (ix+1)
    jr nz, +
    set 0, (ix+1)
    ld (ix+23), $F0
    ld (ix+7), <_DATA_8C0E_
    ld (ix+8), >_DATA_8C0E_
    ld (ix+15), $00
    ld (ix+16), $00
    ld (ix+17), $00
    ld (ix+18), $00
    ret

+:
    ld a, (ix+9)
    or (ix+10)
    jp nz, clearCurrentEntity
    ld iy, v_entity1
    call checkEntityCollision
    jr c, +
    ld a, $8F
    ld (v_soundControl), a
    ld hl, v_lives
    ld a, (hl)
    add a, $01
    daa
    ld (hl), a
    jp clearCurrentEntity

+:
    dec (ix+23)
    jp z, clearCurrentEntity
    ret

; 78th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
.INC "entities/powerBracelet/updater.asm"

; 79th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
.INC "entities/ghost/updater.asm"

_LABEL_5B90_:
    ld iy, _RAM_C640_
    ld a, (iy+0)
    or a
    jr z, +
    ld iy, _RAM_C660_
    ld a, (iy+0)
    or a
    jr z, +
    ld a, (_RAM_C657_)
    cp (iy+23)
    jr nc, +
    ld iy, _RAM_C640_
+:
    ld a, r
    and $07
    ld (iy+24), a
    ld (iy+14), d
    ld (iy+12), e
    ld (iy+0), c
    res 0, (iy+1)
    ld a, (v_horizontalScroll)
    ld (iy+11), a
    ld a, (v_verticalScroll)
    ld (iy+13), a
    ret

; 68th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
.INC "entities/riceBall/updater.asm"

_LABEL_5C01_:
    ex af, af'
    ld a, $8C
    ld (v_soundControl), a
    ex af, af'
    ld iy, _RAM_C5C0_
    ld (iy+0), $38
    ld (iy+24), a
    cp $01
    jr nz, +
    ld a, $A3
    ld (v_soundControl), a
+:
    ld (iy+14), d
    ld (iy+12), e
    res 0, (iy+1)
    ret

; Data from 5C27 to 5C35 (15 bytes)
.db $FD $21 $40 $C6 $FD $36 $00 $44 $FD $72 $0E $FD $73 $0C $C9

; 70th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5C36_:
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
    jr c, +
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

+:
    ld (ix+0), $48
_LABEL_5CA0_:
    ld a, (ix+16)
    cpl
    ld (ix+16), a
    ld a, (ix+15)
    cpl
    inc a
    ld (ix+15), a
    ret

; 71st entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5CB0_:
    bit 0, (ix+1)
    jr nz, +
    set 0, (ix+1)
    ld a, (ix+23)
    add a, a
    ld c, a
    ld b, $00
    ld hl, _DATA_5D7E_ - 2
    add hl, bc
    ld a, (hl)
    ld (ix+24), a
    inc hl
    ld a, (hl)
    ld (ix+22), a
    ret

+:
    ld a, (ix+9)
    or (ix+10)
    jr nz, +
    dec (ix+24)
    ret nz
+:
    ld (ix+0), $46
    call _LABEL_5CA0_
    ld h, (ix+16)
    ld l, (ix+15)
    ld c, (ix+22)
    ld b, $00
    or a
    sbc hl, bc
    ld (ix+16), h
    ld (ix+15), l
    ret

; 72nd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5CF7_:
    ld a, (ix+12)
    cp $D8
    jr nc, ++
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jr c, +
    inc (ix+23)
    ld a, (ix+23)
    cp $08
    jp nc, _LABEL_5D7B_
    ld a, $8B
    ld (v_soundControl), a
    ld (ix+0), $49
    res 0, (ix+1)
    ld (ix+7), <_DATA_840A_
    ld (ix+8), >_DATA_840A_
    jp _LABEL_5CA0_

+:
    ld hl, _DATA_8405_
    jp handleEntityAnimation

++:
    ld (ix+0), $46
    jp _LABEL_5CA0_

; 73rd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5D36_:
    bit 0, (ix+1)
    jr nz, +
    set 0, (ix+1)
    ld a, (ix+23)
    add a, a
    ld c, a
    ld b, $00
    ld hl, _DATA_5D7E_ - 2
    add hl, bc
    ld a, (hl)
    ld (ix+24), a
    inc hl
    ld a, (hl)
    ld (ix+22), a
    ret

+:
    ld a, (ix+9)
    or (ix+10)
    jr nz, +
    dec (ix+24)
    ret nz
+:
    ld (ix+0), $48
    call _LABEL_5CA0_
    ld h, (ix+16)
    ld l, (ix+15)
    ld c, (ix+22)
    ld b, $00
    add hl, bc
    ld (ix+16), h
    ld (ix+15), l
    ret

_LABEL_5D7B_:
    jp _LABEL_555C_

; Data from 5D7E to 5D8B (14 bytes)
_DATA_5D7E_:
.db $40 $10 $38 $20 $33 $30 $2E $40 $2A $50 $27 $60 $24 $70

; Pointer Table from 5D8C to 5D93 (4 entries, indexed by _RAM_CF98_)
_DATA_5D8C_:
.dw _DATA_8022_ _DATA_8111_ _DATA_8120_ _DATA_8102_

; 61st entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5D94_:
    bit 0, (ix+1)
    jr nz, +
    set 0, (ix+1)
    ld (ix+5), $10
    ld (ix+6), $10
    ld a, (ix+12)
    ld (ix+31), a
    ld a, (ix+14)
    ld (ix+30), a
    ld (ix+29), $20
    ld (ix+27), $00
    ld (ix+28), $00
    ld a, (ix+9)
    ld (ix+26), a
    ld a, (ix+10)
    ld (ix+25), a
    jr _LABEL_5E0E_

+:
    ld a, (ix+9)
    or (ix+10)
    jr nz, +
    call tryToKillAlexIfColliding
+:
    ld hl, (v_horizontalScrollSpeed)
    ld a, h
    or l
    jr z, +
    ld d, (ix+31)
    ld e, (ix+3)
    add hl, de
    ld (ix+31), h
    ld (ix+3), l
    jr c, +
    inc (ix+26)
+:
    ld bc, $0002
    ld l, (ix+27)
    ld h, (ix+28)
    add hl, bc
    ld (ix+27), l
    ld (ix+28), h
    call _LABEL_4CE_
    ld a, (ix+9)
    cp $01
    jr nz, _LABEL_5E0E_
    set 1, (ix+1)
_LABEL_5E0E_:
    ld hl, _DATA_85A6_
    jp handleEntityAnimation

; 62nd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
.INC "src/asm/entities/flameOrScorpionLeft/updater.asm"

; 63rd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
.INC "src/asm/entities/flameOrScorpionRight/updater.asm"

; 64th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5EBA_:
    bit 0, (ix+1)
    jr nz, +
    ld (ix+7), <_DATA_85D5_
    ld (ix+8), >_DATA_85D5_
    ld a, (ix+9)
    or (ix+10)
    ret nz
    set 0, (ix+1)
    set 1, (ix+1)
    ld (ix+24), $00
    ld (ix+16), $FF
    ld (ix+15), $00
    ld (ix+5), $01
    ld (ix+6), $01
    ld (ix+4), $00
    ret

+:
    call tryToKillAlexIfColliding
    inc (ix+24)
    ld a, (ix+24)
    cp $10
    ret c
    ld (ix+0), $41
    ld (ix+24), $00
    ret

; 65th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5F05_:
    call tryToKillAlexIfColliding
    ld h, (ix+16)
    ld l, (ix+15)
    ld de, $0008
    add hl, de
    ld (ix+16), h
    ld (ix+15), l
    ld a, h
    cp $FF
    ret z
    ld a, (ix+24)
    or a
    jr nz, +
    ld (ix+24), $01
    ld a, $9E
    ld (v_soundControl), a
+:
    ld a, (ix+4)
    cp $13
    jr nz, +
    ld a, (ix+5)
    cp $01
    jr nz, +
    ld (ix+0), $40
    res 0, (ix+1)
    ld (ix+24), $00
    ret

+:
    ld hl, _DATA_85E9_
    jp handleEntityAnimation

; 66th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5F4C_:
    bit 0, (ix+1)
    jr nz, +
    ld (ix+7), <_DATA_82BD_
    ld (ix+8), >_DATA_82BD_
    ld a, (ix+9)
    or (ix+10)
    ret nz
    set 0, (ix+1)
    set 1, (ix+1)
    ld (ix+16), $FF
    ld (ix+15), $80
    ld (ix+18), $FF
    ld (ix+17), $00
    ld (ix+24), $02
    ld a, r
    and $07
    cp $04
    ret c
    ld (ix+24), $04
    ret

+:
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jp nc, _LABEL_55A5_
    ld h, (ix+18)
    ld l, (ix+17)
    ld d, $00
    ld e, (ix+24)
    add hl, de
    ld (ix+18), h
    ld (ix+17), l
    ld a, h
    bit 7, a
    ret nz
    ld (ix+7), <_DATA_82CB_
    ld (ix+8), >_DATA_82CB_
    ret

; 81st entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5FB1_:
    bit 0, (ix+1)
    jp nz, _LABEL_603E_
    ld a, (_RAM_D800_)
    or a
    jp nz, clearCurrentEntity
    bit 1, (ix+1)
    jr nz, ++
    ld (ix+7), <_DATA_830B_
    ld (ix+8), >_DATA_830B_
    ld a, (ix+3)
    or a
    jr nz, +
    ld (ix+7), <_DATA_815C_
    ld (ix+8), >_DATA_815C_
+:
    ld a, (ix+9)
    or (ix+10)
    ret nz
    set 1, (ix+1)
    ld (ix+24), $40
++:
    ld a, (ix+3)
    or a
    jr z, _LABEL_6054_
    ld a, (_RAM_C07F_)
    cp $02
    ret nz
    bit 0, (ix+1)
    jr nz, _LABEL_603E_
    dec (ix+24)
    jr nz, _LABEL_603E_
_LABEL_6001_:
    set 0, (ix+1)
    ld l, $0C
    call addScore
    xor a
    ld (_RAM_C07F_), a
    ld hl, _RAM_D800_
    set 0, (hl)
    ld a, (ix+3)
    or a
    jr nz, +
    ld a, $14
    ld hl, _DATA_812F_
    ld iy, _RAM_C5C0_
    ld (iy+0), $44
    ld (iy+12), $80
    ld (iy+14), $80
    jp _LABEL_60D4_

+:
    ld hl, _RAM_D802_
    res 0, (hl)
    ld a, $0F
    ld hl, _DATA_8306_
    jp _LABEL_60D4_

_LABEL_603E_:
    ld (ix+7), <_DATA_8331_
    ld (ix+8), >_DATA_8331_
    ld a, (ix+3)
    or a
    ret nz
    ld (ix+7), <_DATA_8134_
    ld (ix+8), >_DATA_8134_
    ret

_LABEL_6054_:
    ld a, (v_scrollFlags)
    and $7F
    or a
    ret nz
    ld a, (v_entities.1.state)
    cp ALEX_WALKING
    ret nz
    ld a, $80
    ld (_RAM_C202_), a
    ld hl, _RAM_CE84_
    ld (_RAM_C204_), hl
    ld a, $85
    ld (Mapper_Slot2), a
    ld hl, _DATA_14B5D_
    ld (_RAM_C206_), hl
    ld a, $82
    ld (Mapper_Slot2), a
    jr _LABEL_6001_

; 80th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_607E_:
    ld (ix+7), <_DATA_802F_
    ld (ix+8), >_DATA_802F_
    ld a, (_RAM_C07F_)
    or a
    ret nz
    bit 0, (ix+1)
    jr nz, +
    ld (ix+14), $88
    ld iy, _RAM_C3A0_
    ld (iy+0), $44
    ld (iy+12), $98
    ld (iy+14), $60
    ld a, $0E
    ld hl, _DATA_802A_
    jp _LABEL_60D4_

+:
    bit 1, (ix+1)
    ret nz
    set 1, (ix+1)
    ld a, $A3
    ld (v_soundControl), a
    ret

; 69th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_60BC_:
    ld (ix+7), <_DATA_82DE_
    ld (ix+8), >_DATA_82DE_
    bit 0, (ix+1)
    jr nz, +
    ld a, (v_scrollFlags)
    or a
    ret nz
    ld a, $0D
    ld hl, _DATA_82D9_
_LABEL_60D4_:
    set 0, (ix+1)
    ld (v_messageToShowInTheTextBoxIndex), a
    ld a, $01
    ld (v_shouldShowNuraiOrOldMan), a
    ld a, $07
    ld (v_gameState), a
    ld (v_nuraiOrOldManEntityAnimationDescriptorTemporaryPointer), hl
    push ix
    pop hl
    ld (v_nuraiOrOldManEntityTemporaryPointer), hl
    ret

+:
    bit 1, (ix+1)
    ret nz
    set 1, (ix+1)
    ld iy, _RAM_C640_
    ld (iy+0), $52
    ld (iy+12), $72
    ld (iy+14), $70
    ld (iy+3), $08
    ret

; 82nd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_610D_:
    bit 0, (ix+1)
    jr nz, +
    set 0, (ix+1)
    ld a, (ix+3)
    ld hl, _DATA_644A_
    rst $10    ; _LABEL_10_
    ld a, (hl)
    or a
    jp nz, clearCurrentEntity
    ld a, (ix+3)
    ld hl, _DATA_6422_
    rst $10    ; _LABEL_10_
    ld (ix+7), l
    ld (ix+8), h
    ret

+:
    ld a, (ix+9)
    or (ix+10)
    ret nz
    set 1, (ix+1)
    ld iy, v_entity1
    call checkEntityCollision
    ret c
    ld a, $8F
    ld (v_soundControl), a
    ld a, (ix+3)
    ld hl, _DATA_644A_
    rst $10    ; _LABEL_10_
    set 0, (hl)
    ld a, (ix+3)
    or a
    jr z, ++
    cp $05
    jr z, +
    ld hl, _DATA_6436_
    rst $10    ; _LABEL_10_
    set 0, (hl)
    jp clearCurrentEntity

+:
    ld hl, v_lives
    ld a, (hl)
    add a, $01
    daa
    ld (hl), a
    jp clearCurrentEntity

++:
    ld a, $08
    ld (v_gameState), a
    ret

; 83rd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_6176_:
    bit 0, (ix+1)
    jr nz, +
    ld (ix+7), <_DATA_80E1_
    ld (ix+8), >_DATA_80E1_
    ld a, (v_scrollFlags)
    or a
    ret nz
    set 0, (ix+1)
    ld a, $07
    ld (v_gameState), a
    ld a, $11
    ld (v_messageToShowInTheTextBoxIndex), a
    ld a, (v_hasLetterToNibana)
    or a
    ret z
    ld a, $10
    ld (v_messageToShowInTheTextBoxIndex), a
    ret

+:
    bit 1, (ix+1)
    ret nz
    set 1, (ix+1)
    ld iy, _RAM_C640_
    ld b, $4F
    ld de, $30D8
    ld a, (v_hasLetterToNibana)
    or a
    jr z, +
    ld b, $52
    ld de, $8858
    ld (iy+3), $03
+:
    ld (iy+0), b
    ld (iy+12), e
    ld (iy+14), d
    ret

; 75th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_61CD_:
    bit 0, (ix+1)
    jr nz, +
    ld (ix+7), <_DATA_80E1_
    ld (ix+8), >_DATA_80E1_
    ld a, (ix+9)
    or (ix+10)
    ret nz
    set 0, (ix+1)
    set 1, (ix+1)
    ld (ix+24), $00
    ld (ix+22), $00
    xor a
    ld (_RAM_C07F_), a
    ld hl, $D8A0
    inc hl
    ld (v_shopEntranceDoorNametablePointer), hl
+:
    ld a, (ix+3)
    cp $01
    jr z, _LABEL_6275_
    ld a, (ix+24)
    or a
    jr nz, ++++
    ld a, (ix+3)
    cp $02
    jr z, +
    call _LABEL_7D0B_
    jr ++

+:
    ld iy, v_entity1
    call checkEntityCollision
    ret c
    jr +++

++:
    ret c
    ld a, (v_entities.1.unknown8)
    bit 3, a
    ret z
+++:
    ld (ix+24), $01
++++:
    ld a, (_RAM_C202_)
    or a
    ret nz
    ld a, (v_entities.1.unknown8)
    res 3, a
    ld (v_entities.1.unknown8), a
    ld (ix+24), $00
    inc (ix+22)
    ld a, (_RAM_D8A0_)
    cp (ix+22)
    jp c, clearCurrentEntity
    ld a, $80
    ld (_RAM_C202_), a
    ld hl, (v_shopEntranceDoorNametablePointer)
    ld de, _RAM_C204_
    ldi
    ldi
    ld c, (hl)
    ld b, $00
    inc hl
    ld (v_shopEntranceDoorNametablePointer), hl
    ld a, $85
    ld (Mapper_Slot2), a
    ld hl, (_RAM_C087_)
    add hl, bc
    add hl, bc
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    ld (_RAM_C206_), hl
    ld a, $82
    ld (Mapper_Slot2), a
    ret

_LABEL_6275_:
    call _LABEL_7D0B_
    ret c
    ld hl, _RAM_C07F_
    inc (hl)
    jp clearCurrentEntity

; 76th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_6280_:
    bit 0, (ix+1)
    jr nz, +
    set 0, (ix+1)
    ld (ix+7), <_DATA_80E1_
    ld (ix+8), >_DATA_80E1_
    ld a, (ix+3)
    ld (_RAM_C07F_), a
+:
    ld a, (ix+9)
    or (ix+10)
    ret nz
    ld iy, v_entity1
    call checkEntityCollision
    ret c
    ld a, $08
    ld (v_gameState), a
    jp clearCurrentEntity

; 84th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_62AF_:
    bit 0, (ix+1)
    jr nz, _LABEL_62F5_
    ld (ix+5), $08
    ld (ix+6), $08
    ld a, (ix+9)
    or (ix+10)
    jr nz, _LABEL_6341_
    set 0, (ix+1)
    set 1, (ix+1)
    ld (ix+23), $00
    ld (ix+22), $30
    ld (ix+24), $0E
    ld (ix+15), $60
    ld (ix+16), $00
    ld a, (v_entities.1.xPos.high)
    cp (ix+12)
    jr nc, _LABEL_62F5_
    ld (ix+24), $02
    ld (ix+15), $A0
    ld (ix+16), $FF
_LABEL_62F5_:
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jp nc, _LABEL_55A5_
    ld d, $01
    ld e, (ix+24)
    ld a, $08
    call _LABEL_3A03_
    jr nc, +
    ld a, (ix+16)
    cpl
    ld (ix+16), a
    ld a, (ix+15)
    cpl
    inc a
    ld (ix+15), a
    jr ++

+:
    ld a, (ix+24)
    xor $0C
    ld e, a
    ld d, $11
    call getTileNearEntityWithXYOffset
    rlca
    jr c, _LABEL_6341_
    ld h, (ix+23)
    ld l, (ix+22)
    ld de, $0010
    add hl, de
    ld (ix+23), h
    ld (ix+22), l
    ld (ix+18), h
    ld (ix+17), l
    jr _LABEL_6351_

_LABEL_6341_:
    ld (ix+23), $00
    ld (ix+22), $30
    ld (ix+17), $00
    ld (ix+18), $00
_LABEL_6351_:
    ld hl, _DATA_8585_
    jp handleEntityAnimation

++:
    ld (ix+24), $02
    ld a, (ix+16)
    cp $FF
    jr z, _LABEL_6351_
    ld (ix+24), $0E
    jr _LABEL_6351_

; 85th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_6368_:
    bit 0, (ix+1)
    jr nz, +
    ld (ix+5), $08
    ld (ix+6), $08
    ld a, (ix+9)
    or (ix+10)
    jr nz, _LABEL_63EA_
    ld (ix+15), $80
    ld (ix+16), $FF
    ld (ix+17), $00
    ld (ix+18), $FF
    set 0, (ix+1)
    set 1, (ix+1)
    ld (ix+24), $0E
+:
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jp nc, _LABEL_55A5_
    ld a, (ix+24)
    xor $0C
    ld e, a
    ld d, $01
    ld a, $08
    call _LABEL_3A03_
    jr nc, +
    ld a, (ix+16)
    cpl
    ld (ix+16), a
    ld a, (ix+15)
    cpl
    inc a
    ld (ix+15), a
    ld a, (ix+24)
    xor $0C
    ld (ix+24), a
+:
    ld de, $1108
    call getTileNearEntityWithXYOffset
    rlca
    jr nc, +
    ld (ix+17), $00
    ld (ix+18), $FF
+:
    ld h, (ix+18)
    ld l, (ix+17)
    ld de, $0010
    add hl, de
    ld (ix+17), l
    ld (ix+18), h
_LABEL_63EA_:
    ld hl, _DATA_84C2_
    ld a, (ix+16)
    cp $FF
    jp nz, handleEntityAnimation
    ld hl, _DATA_84A1_
    jp handleEntityAnimation

; 87th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_63FB_:
    bit 0, (ix+1)
    jr nz, +
    ld (ix+5), $10
    ld (ix+6), $10
    ld a, (ix+10)
    or (ix+9)
    jr nz, ++
    set 0, (ix+1)
    set 1, (ix+1)
+:
    call tryToKillAlexIfColliding
++:
    ld hl, _DATA_85A6_
    jp handleEntityAnimation

; Pointer Table from 6422 to 6435 (10 entries, indexed by _RAM_CF83_)
_DATA_6422_:
.dw _DATA_80D3_ _DATA_80C5_ _DATA_8057_ _DATA_8065_ _DATA_8A27_ _DATA_8C0E_ powerBraceletSpriteDescriptor _DATA_801C_
.dw _DATA_800E_ _DATA_8000_

; Pointer Table from 6436 to 6449 (10 entries, indexed by _RAM_CF83_)
_DATA_6436_:
.dw v_hasTelepathyBall v_hasTelepathyBall v_hasLetterToNibana v_hasHirottaStone v_hasMoonstoneMedallion v_hasMoonstoneMedallion v_hasPowerBracelet v_hasTeleportPowder
.dw v_hasSunstoneMedallion v_hasSunstoneMedallion

; Pointer Table from 644A to 645D (10 entries, indexed by _RAM_CF83_)
_DATA_644A_:
.dw _RAM_D800_ _RAM_D801_ _RAM_D802_ _RAM_D803_ _RAM_D804_ _RAM_D805_ _RAM_D806_ _RAM_D807_
.dw _RAM_D800_ _RAM_D807_

updateScrollFlags:
    ld hl, (scrollFlagsUpdaterPointer)
    jp (hl)

; 1st entry of Jump Table from D0A (indexed by v_level)
_LABEL_6462_:
    ld a, (v_scrollFlags)
    or a
    ret z
    bit 7, a
    ret z
    and $03
    ret nz
    di
    ld de, $8026
    ld a, e
    ld (v_VDPRegister0Value), a
    rst $08    ; setVDPAddress
    ei
    ld a, $08
    ld (v_scrollFlags), a
    ret

; 11th entry of Jump Table from D0A (indexed by v_level)
_LABEL_647D_:
    ld a, (v_scrollFlags)
    and $7F
    ret z
    ld b, a
    and $03
    ld hl, (_RAM_C0C2_)
    ld de, (_RAM_C0BB_)
    jr nz, ++
    ld a, (v_shouldBlankLeftmostColumn)
    or a
    jr nz, +
    ld a, $01
    ld (v_shouldBlankLeftmostColumn), a
    di
    ld de, $8026
    ld a, e
    ld (v_VDPRegister0Value), a
    rst $08    ; setVDPAddress
    ei
+:
    ld hl, (v_horizontalScroll)
    ld de, (_RAM_C0AD_)
++:
    ld a, (v_specialLevelScrollabilityFlag)
    or a
    jp nz, _LABEL_6502_
    ld a, (v_currentScreenNumber)
    bit 7, a
    jr z, _LABEL_6502_
    ld a, $01
    ld (v_specialLevelScrollabilityFlag), a
    ld a, b
    bit 0, a
    ld a, (v_verticalScreenNumber)
    jr z, +
    inc a
+:
    push af
    exx
    ld b, a
    ld c, $00
    ld hl, _RAM_D900_
    add hl, bc
    pop af
    ld b, a
    ld a, (v_currentScreenNumber)
    and $7F
    sub b
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $00
    ld c, a
    add hl, bc
    ld (_RAM_C078_), hl
    ld a, (hl)
    or a
    jr z, ++
    ld b, a
    inc hl
-:
    ld a, (hl)
    or a
    jr z, +
    inc hl
    push hl
    ld a, (hl)
    ld e, a
    ld d, $00
    ld hl, $D700
    add hl, de
    ld a, $00
    ld (hl), a
    pop hl
    dec hl
+:
    inc hl
    inc hl
    djnz -
++:
    exx
_LABEL_6502_:
    ld a, h
    or l
    ret nz
    ex de, hl
    ld a, h
    or l
    ret nz
    ld a, (v_scrollFlags)
    bit 0, a
    jr z, +
    ld hl, v_currentScreenNumber
    dec (hl)
    res 7, (hl)
+:
    and $80
    ld (v_scrollFlags), a
    xor a
    ld (v_shouldBlankLeftmostColumn), a
    ld (v_shouldAlexStartWalkingtoNextScreen), a
    ld (v_specialLevelScrollabilityFlag), a
    ld hl, $0000
    ld (v_horizontalScrollSpeed), hl
    ld (v_verticalScrollSpeed), hl
    di
    ld de, $8006
    ld a, e
    ld (v_VDPRegister0Value), a
    rst $08    ; setVDPAddress
    ei
    ret

; 5th entry of Jump Table from D0A (indexed by v_level)
_LABEL_6539_:
    ld a, (v_scrollFlags)
    or a
    ret z
    bit 7, a
    jr nz, +
    and $03
    ret z
    ld a, (v_scrollFlags)
    res 3, a
    set 7, a
    ld (v_scrollFlags), a
    ret

+:
    and $03
    ret nz
    ld a, $01
    ld (v_verticalScreenNumber), a
    ld hl, $0000
    ld (_RAM_C0B4_), hl
    ld (_RAM_C0B3_), hl
    ld (_RAM_C0B7_), hl
    ld a, (v_horizontalScreenNumber)
    cp $03
    jr nc, +
    ld a, $08
    ld (v_scrollFlags), a
    ld a, $03
    ld (v_levelWidth), a
    ret

+:
    xor a
    ld (v_scrollFlags), a
    ret

; 3rd entry of Jump Table from D0A (indexed by v_level)
_LABEL_657B_:
    ld a, (v_scrollFlags)
    or a
    ret z
    bit 7, a
    jr nz, +
    and $03
    ret z
    ld a, (v_scrollFlags)
    res 3, a
    set 7, a
    ld (v_scrollFlags), a
    ret

+:
    and $03
    ret nz
    ld hl, $0000
    ld (_RAM_C0B4_), hl
    ld (_RAM_C0B3_), hl
    ld (_RAM_C0B7_), hl
    ld a, $01
    ld (v_verticalScreenNumber), a
    ld a, $01
    ld (v_levelWidth), a
    ld a, $08
    ld (v_scrollFlags), a
    ret

loadLevel:
    ld a, (v_level)
    ld hl, LevelDescriptorPointerTable - 2
    rst $10    ; _LABEL_10_
    ld a, (hl)
    ld (Mapper_Slot2), a
    ld (v_levelBankNumber), a
    inc hl
    ld e, (hl)
    inc hl
    ld d, (hl)
    ld (v_levelLayoutPointer), de
    inc hl
    ld e, (hl)
    inc hl
    ld d, (hl)
    ld (v_SecondLevelLayoutPointer), de
    inc hl
    ld a, (hl)
    ld (v_horizontalScreenNumber), a
    inc hl
    ld a, (hl)
    ld (v_verticalScreenNumber), a
    inc hl
    ld a, (hl)
    ld (v_levelWidth), a
    inc hl
    ld a, (hl)
    ld (v_levelHeight), a
    inc hl
    ld a, (hl)
    ld (v_levelScrollability), a
    inc hl
    ld e, (hl)
    inc hl
    ld d, (hl)
    ld (_RAM_C087_), de
    ld hl, $7800
    ld (_RAM_C0B7_), hl
    ld (_RAM_C0C5_), hl
-:
    ld hl, $0100
    ld (v_horizontalScrollSpeed), hl
    call _LABEL_67C4_
    call _LABEL_6B49_
    call _LABEL_6920_
    ld hl, (v_horizontalScroll)
    ld a, h
    or l
    jr nz, -
    ld a, (v_verticalScreenNumber)
    ld (v_currentScreenNumber), a
    ld hl, $0000
    ld (v_horizontalScrollSpeed), hl
    ld a, (v_level)
    cp $01
    jr nz, +
-:
    xor a
    ld (v_verticalScreenNumber), a
    ld a, $81
    ld (v_currentScreenNumber), a
    ld a, $10
    ld (v_columnsToLoadToNametable), a
    call _LABEL_6A73_
    call _LABEL_6B49_
    call _LABEL_6920_
    ld de, $8006
    ld a, e
    ld (v_VDPRegister0Value), a
    rst $08    ; setVDPAddress
    ld a, (v_levelScrollability)
    ld (v_scrollFlags), a
    ret

+:
    cp $11
    jp z, -
    cp $0D
    jr z, +
    ld a, (v_levelScrollability)
    ld (v_scrollFlags), a
    rlca
    ret nc
    ld a, $01
    ld (v_shouldAlexStartWalkingtoNextScreen), a
    ld a, (v_levelHeight)
    ld (v_entityIndex), a
    ret

+:
    ld a, $07
    ld (v_currentScreenNumber), a
    ld a, (v_levelScrollability)
    ld (v_scrollFlags), a
    ret

_LABEL_6671_:
    ld a, $01
    ld (v_isScrollingDownToNextScreen), a
    ld ix, _RAM_C3A0_
    ld de, $0020
    ld b, $19
-:
    ld a, (ix+0)
    or a
    jr z, +
    ld a, (ix+9)
    or (ix+10)
    jr z, +
    call clearCurrentEntity
+:
    add ix, de
    djnz -
    ld a, (v_scrollFlags)
    and $E0
    ret z
    rlca
    jr c, +++
    rlca
    jr c, +
    xor a
    ld (v_horizontalScreenNumber), a
    ld a, $86
    ld (v_currentScreenNumber), a
    jr ++

+:
    ld a, (v_horizontalScreenNumber)
    rrca
    rrca
    and $3F
    ld (v_horizontalScreenNumber), a
    add a, $90
    ld (v_currentScreenNumber), a
++:
    ld a, (_RAM_C0B0_)
    ld (v_newEntityHorizontalOffset), a
-:
    ld a, $10
    ld (v_columnsToLoadToNametable), a
    call _LABEL_6A73_
    ld a, $82
    ld (Mapper_Slot2), a
    ret

+++:
    ld hl, v_currentScreenNumber
    inc (hl)
    set 7, (hl)
    jr -

.INCLUDE "data/levels/descriptors.asm"

_LABEL_67C4_:
    ld de, (v_horizontalScrollSpeed)
    ld a, d
    or e
    jp z, _LABEL_69CB_
    ld a, $0C
    ld (v_linesToLoadToNametable), a
    ld bc, (_RAM_C0AD_)
    ld hl, (v_horizontalScroll)
    add hl, de
    ld (v_horizontalScroll), hl
    ex de, hl
    bit 7, h
    jp nz, _LABEL_68A7_
    add hl, bc
    ld a, h
    cp $08
    ld (_RAM_C0AD_), hl
    ret c
    and $07
    ld (_RAM_C0AE_), a
    ld a, (_RAM_C0B7_)
    sub $02
    jp nc, +
    ld a, $3E
+:
    ld (_RAM_C0B7_), a
    ld hl, (_RAM_C0B4_)
    ld bc, $0080
    or a
    sbc hl, bc
    jp nc, +
    ld hl, $0F80
+:
    ex af, af'
    ld (_RAM_C0B4_), hl
    ld a, (_RAM_C0B3_)
    dec a
    and $01
    ld (_RAM_C0B3_), a
    ld hl, v_horizontalScreenNumber
    ex af, af'
    jp nc, _LABEL_6865_
    ld a, (hl)
    sub $01
    ld (hl), a
    ld hl, v_currentScreenNumber
    dec (hl)
    set 7, (hl)
    jp nc, _LABEL_6841_
    inc (hl)
    res 7, (hl)
    ld hl, v_scrollFlags
    res 2, (hl)
    ld hl, $0000
    ld (v_horizontalScrollSpeed), hl
    ld a, $08
    ld (_RAM_C0B0_), a
    ret

_LABEL_6841_:
    add a, a
    ld c, a
    ld b, $00
    ld a, (v_verticalScreenNumber)
    add a, a
    ld e, a
    ld d, $00
    ld a, (v_levelBankNumber)
    ld (Mapper_Slot2), a
    ld hl, (v_levelLayoutPointer)
    add hl, de
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    add hl, bc
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    ld de, _RAM_D700_
    call _LABEL_6BEF_
_LABEL_6865_:
    ld a, $01
    ld (v_UpdateNameTableFlags), a
    ld hl, _RAM_D700_
    ld a, (_RAM_C0B5_)
    ld c, a
    ld b, $00
    add hl, bc
    ld de, _RAM_CF00_
    ld a, $85
    ld (Mapper_Slot2), a
-:
    push hl
    ld c, (hl)
    ld hl, (_RAM_C087_)
    add hl, bc
    add hl, bc
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    ld a, (_RAM_C0B3_)
    add a, a
    ld c, a
    add hl, bc
    ldi
    ldi
    inc hl
    inc hl
    ldi
    ldi
    ld a, (v_linesToLoadToNametable)
    dec a
    ld (v_linesToLoadToNametable), a
    pop hl
    ret z
    ld bc, $0010
    add hl, bc
    jp -

_LABEL_68A7_:
    add hl, bc
    ld (_RAM_C0AD_), hl
    ret c
    ld a, (v_scrollFlags)
    bit 3, a
    jp nz, +
    ld hl, $0000
    ld (v_horizontalScrollSpeed), hl
    ret

+:
    ld a, h
    and $07
    ld (_RAM_C0AE_), a
    ld a, (_RAM_C0B7_)
    or a
    jp nz, +
    ld hl, v_currentScreenNumber
    inc (hl)
    set 7, (hl)
    ld hl, v_horizontalScreenNumber
    ld a, (hl)
    inc a
    call _LABEL_6841_
    jp ++

+:
    call _LABEL_6865_
++:
    ld a, (_RAM_C0B7_)
    add a, $02
    cp $40
    jp c, +
    xor a
+:
    ld (_RAM_C0B7_), a
    ld hl, (_RAM_C0B4_)
    ld bc, $0080
    add hl, bc
    ld a, h
    cp $10
    jp c, +
    ld hl, $0000
+:
    ex af, af'
    ld (_RAM_C0B4_), hl
    ld a, (_RAM_C0B3_)
    inc a
    and $01
    ld (_RAM_C0B3_), a
    ld hl, v_horizontalScreenNumber
    ld bc, (v_levelWidth)
    ex af, af'
    ret c
    inc (hl)
    ld a, (hl)
    cp c
    ret c
    ld hl, v_scrollFlags
    res 3, (hl)
    ld hl, v_currentScreenNumber
    dec (hl)
    res 7, (hl)
    ret

_LABEL_6920_:
    ld a, (v_UpdateNameTableFlags)
    rrca
    jp nc, _LABEL_6968_
    ld a, (_RAM_C0B0_)
    ld b, a
    ld a, (_RAM_C0AC_)
    bit 7, a
    jp nz, +
    ld a, b
    sub $08
    ld b, a
+:
    ld a, b
    cpl
    rrca
    rrca
    and $3E
    ld c, a
    ld b, $00
    ld hl, (_RAM_C0C5_)
    add hl, bc
    ex de, hl
    ld hl, _RAM_CF00_
    ld bc, $0040
    ld a, $18
-:
    ex af, af'
    call setVDPAddress
    ld a, (hl)
    out (Port_VDPData), a
    inc hl
    ld a, (hl)
    inc hl
    out (Port_VDPData), a
    ex de, hl
    add hl, bc
    ld a, h
    cp $7F
    jp nz, +
    ld h, $78
+:
    ex de, hl
    ex af, af'
    dec a
    jr nz, -
_LABEL_6968_:
    ld a, (v_UpdateNameTableFlags)
    rrca
    rrca
    jp nc, _LABEL_69B5_
    ld a, (_RAM_C0BA_)
    bit 7, a
    ld a, (_RAM_C0BE_)
    jp z, +
    and $F8
    jp ++

+:
    and $F8
    sub $20
    jp nc, ++
    sub $20
++:
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    ex de, hl
	ld hl, (_RAM_C0B7_)
	add hl, de
	ld a, (_RAM_C0B7_)
	ld b, a
	ex af, af'
	ld a, $40
	sub b
	ex de, hl
	ld b, $00
	ld c, a
	ld hl, _RAM_CF38_
	call writeBcBytesToVRAM
	ex af, af'
	or a
	jp z, _LABEL_69B5_
	ld c, a
	ld b, $00
	ld a, e
	and $C0
	ld e, a
	call writeBcBytesToVRAM
_LABEL_69B5_:
	xor a
	ld (v_UpdateNameTableFlags), a
	ld de, (_RAM_C0B0_)
	ld d, $88
	call setVDPAddress
	ld de, (_RAM_C0BE_)
	ld d, $89
	jp setVDPAddress

_LABEL_69CB_:
	ld de, (v_verticalScrollSpeed)
	ld a, d
	or e
	ret z
	ld a, $10
	ld (v_columnsToLoadToNametable), a
	ld bc, (_RAM_C0BB_)
	ld hl, (v_verticalScroll)
	add hl, de
	ld (v_verticalScroll), hl
	bit 7, d
	ld a, h
	jp nz, +
	cp $E0
	jp c, ++
	sub $E0
	jp ++

+:
	cp $E0
	jp c, ++
	sub $20
++:
	ld (_RAM_C0BE_), a
	ex de, hl
	bit 7, h
	jp nz, _LABEL_6ABF_
	add hl, bc
	ld a, h
	cp $08
	ld (_RAM_C0BB_), hl
	ret c
	and $07
	ld (_RAM_C0BC_), a
	ld hl, (_RAM_C0C5_)
	ld bc, $0040
	add hl, bc
	ld a, h
	cp $7F
	jp nz, +
	ld h, $78
+:
	ld (_RAM_C0C5_), hl
	ld a, (_RAM_C0C1_)
	inc a
	and $01
	ld (_RAM_C0C1_), a
	ld hl, (_RAM_C0C2_)
	ld bc, $0080
	add hl, bc
	ld a, h
	cp $0C
	ld (_RAM_C0C2_), hl
	jp c, _LABEL_6A76_
	ld hl, v_currentScreenNumber
	inc (hl)
	set 7, (hl)
	ld hl, $0000
	ld (_RAM_C0C2_), hl
	ld bc, (v_levelHeight)
	ld hl, v_verticalScreenNumber
	inc (hl)
	ld a, (hl)
	cp c
	jp c, _LABEL_6A73_
	xor a
	ld (hl), a
	ld hl, v_scrollFlags
	res 0, (hl)
	ld hl, $0000
	ld (v_verticalScrollSpeed), hl
	ld a, (_RAM_C0BE_)
	and $F0
	ld (_RAM_C0BE_), a
	xor a
	ld (_RAM_C0BC_), a
	ld hl, v_currentScreenNumber
	dec (hl)
	res 7, (hl)
	ret

_LABEL_6A73_:
	call _LABEL_6B21_
_LABEL_6A76_:
	ld a, $02
	ld (v_UpdateNameTableFlags), a
	ld hl, _RAM_D700_
	ld a, (_RAM_C0C3_)
	or a
	jp z, +
	ld bc, $0010
-:
	add hl, bc
	dec a
	jp nz, -
+:
	ld de, _RAM_CF38_
	ld a, $85
	ld (Mapper_Slot2), a
-:
	push hl
	ld a, (hl)
	ld c, a
	ld b, $00
	ld hl, (_RAM_C087_)
	add hl, bc
	add hl, bc
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld a, (_RAM_C0C1_)
	add a, a
	add a, a
	ld c, a
	add hl, bc
	ldi
	ldi
	ldi
	ldi
	ld a, (v_columnsToLoadToNametable)
	dec a
	ld (v_columnsToLoadToNametable), a
	pop hl
	ret z
	inc hl
	jp -

_LABEL_6ABF_:
	add hl, bc
	ld (_RAM_C0BB_), hl
	ret c
	ld a, h
	and $07
	ld (_RAM_C0BC_), a
	ld hl, (_RAM_C0C5_)
	ld bc, $0040
	or a
	sbc hl, bc
	ld a, h
	cp $77
	jp nz, +
	ld h, $7E
+:
	ld (_RAM_C0C5_), hl
	ld hl, (_RAM_C0C2_)
	ld bc, $0080
	or a
	sbc hl, bc
	jp nc, +
	ld hl, $0B80
+:
	ex af, af'
	ld (_RAM_C0C2_), hl
	ld a, (_RAM_C0C1_)
	dec a
	and $01
	ld (_RAM_C0C1_), a
	ex af, af'
	ld a, (v_verticalScreenNumber)
	jp nc, _LABEL_6A76_
	sub $01
	jp nc, +
	ld hl, v_scrollFlags
	res 1, (hl)
	ld hl, $0000
	ld (v_verticalScrollSpeed), hl
	ret

+:
	ld hl, v_currentScreenNumber
	dec (hl)
	set 7, (hl)
	ld (v_verticalScreenNumber), a
	call +
	jp _LABEL_6A76_

_LABEL_6B21_:
	ld a, (v_verticalScreenNumber)
	inc a
+:
	add a, a
	ld c, a
	ld b, $00
	ld a, (v_horizontalScreenNumber)
	add a, a
	ld e, a
	ld d, $00
	ld a, (v_levelBankNumber)
	ld (Mapper_Slot2), a
	ld hl, (v_SecondLevelLayoutPointer)
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	add hl, bc
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld de, _RAM_D700_
	jp _LABEL_6BEF_

_LABEL_6B49_:
	ld a, $82
	ld (Mapper_Slot2), a
	ld a, (v_UpdateNameTableFlags)
	rrca
	jp nc, _LABEL_6B9C_
	ld a, (_RAM_C0B0_)
	ld b, a
	ld a, (_RAM_C0AC_)
	bit 7, a
	jp nz, +
	ld a, b
	sub $08
	ld b, a
+:
	ld a, b
	cpl
	rrca
	rrca
	and $3E
	ld c, a
	ld b, $00
	ld hl, (_RAM_C0C5_)
	ld a, h
	and $07
	ld h, a
	add hl, bc
	ex de, hl
	ld hl, $C800
	add hl, de
	ex de, hl
	ld hl, _RAM_CF00_
	ld bc, $0040
	ld a, $18
-:
	ex af, af'
	ld a, (hl)
	ld (de), a
	inc hl
	inc de
	ld a, (hl)
	inc hl
	ld (de), a
	dec de
	ex de, hl
	add hl, bc
	ld a, h
	cp $CF
	jp nz, +
	ld h, $C8
+:
	ex de, hl
	ex af, af'
	dec a
	jr nz, -
_LABEL_6B9C_:
	ld a, (v_UpdateNameTableFlags)
	rrca
	rrca
	ret nc
	ld a, (_RAM_C0BA_)
	bit 7, a
	ld a, (_RAM_C0BE_)
	jp z, +
	and $F8
	jp ++

+:
	and $F8
	sub $20
	jp nc, ++
	sub $20
++:
	ld h, $00
	ld l, a
	add hl, hl
	add hl, hl
	add hl, hl
	ex de, hl
	ld hl, (_RAM_C0B7_)
	ld h, $00
	add hl, de
	ex de, hl
	ld hl, $C800
	add hl, de
	ex de, hl
	ld a, (_RAM_C0B7_)
	ld b, a
	ex af, af'
	ld a, $40
	sub b
	ld b, $00
	ld c, a
	ld hl, _RAM_CF38_
	ldir
	ex af, af'
	or a
	ret z
	ex de, hl
	ld bc, $0040
	or a
	sbc hl, bc
	ex de, hl
	ld c, a
	ld b, $00
	ldir
	ret

_LABEL_6BEF_:
	ld a, (hl)
	or a
	ret z
	bit 7, a
	jr nz, +
	ld b, a
	inc hl
	ld a, (hl)
-:
	ld (de), a
	inc de
	djnz -
	inc hl
	jp _LABEL_6BEF_

+:
	and $7F
	ld c, a
	ld b, $00
	inc hl
	ldir
	jp _LABEL_6BEF_

; 7th entry of Jump Table from 3B (indexed by v_gameState)
updateLifeLostState:
	; @TODO: Why check input here?
	ld a, (v_inputFlags)
	and $20
	jp z, +
	ld a, $00
	ld (v_gameState), a
	ret

+:
	call disableDisplay
	ld b, $05
	call _LABEL_343_
	call resetSoundAndInitVolume
	ld hl, v_lives
	ld a, (hl)
	sub $01
	jp z, _LABEL_6DC9_
	daa
	ld (hl), a
	ld a, $82
	ld (Mapper_Slot2), a
	ld ix, v_entity1
	ld de, $0020
	ld b, $05
-:
	call clearCurrentEntity
	add ix, de
	djnz -
	ld ix, _RAM_C500_
	ld de, $0020
	ld b, $0C
-:
	call clearCurrentEntity
	add ix, de
	djnz -
	ld ix, _RAM_C3C0_
	ld b, $0A
-:
	ld a, (ix+2)
	bit 7, a
	jp z, +
	and $7F
	ld e, b
	ld hl, _DATA_6F30_ - 2
	rst $10	; _LABEL_10_
	exx
	call clearCurrentEntity
	exx
	ld b, e
	ld a, (hl)
	ld (ix+0), a
	inc hl
	ld a, (hl)
	ld (ix+12), a
	inc hl
	ld a, (hl)
	ld (ix+14), a
+:
	ld de, $0020
	add ix, de
	djnz -
	ld a, (v_scrollFlags)
	bit 7, a
	jp z, +
	ld a, (v_level)
	cp $01
	jp z, +
	ld de, v_entity1
	ld hl, _RAM_C240_
	ld bc, $0020
	ldir
	ld hl, (v_entities.1.spriteDescriptorPointer)
	dec hl
	ld a, (hl)
	ld (v_alexTilesIndex), a
	ld a, $02
	ld (_RAM_C054_), a
	; CONSTANT: Respaw grace period (max)
	ld a, $FF
	ld (v_invincibilityTimer), a
	jp _LABEL_6D73_

+:
	ld ix, v_entity1
	ld (ix+0), $01
	ld a, (v_level)
	cp $0D
	jp z, _LABEL_6D26_
	ld a, (_RAM_C051_)
	or a
	jp nz, _LABEL_6D26_
	ld a, (_RAM_C054_)
	cp $07
	jp nc, _LABEL_6D26_
	ld a, (v_alexStateBeforeHit)
	cp $05
	jp z, _LABEL_6D3C_
	cp $06
	jp z, _LABEL_6D26_
	ld (ix+24), $10
	ld (ix+22), $10
	ld (ix+23), $01
	ld (ix+26), $01
--:
	call _LABEL_6EAF_
-:
	ld de, $1900
	call getTileNearEntityWithXYOffset
	rlca
	jp nc, +
	ld de, $1908
	call getTileNearEntityWithXYOffset
	rlca
	jp c, _LABEL_6D4F_
+:
	ld a, $08
	add a, (ix+14)
	ld (ix+14), a
	cp $90
	jp nc, +
	call _LABEL_6EBB_
	jp -

+:
	ld a, $08
	add a, (ix+22)
	ld (ix+22), a
	jp --

_LABEL_6D26_:
	ld ix, v_entity1
	ld de, $0020
	ld b, $1E
-:
	call clearCurrentEntity
	add ix, de
	djnz -
	ld a, $0A
	ld (v_gameState), a
	ret

_LABEL_6D3C_:
	ld (ix+24), $10
	ld (ix+22), $10
	ld (ix+23), $01
	ld (ix+26), $02
	call _LABEL_6EAF_
_LABEL_6D4F_:
	ld a, $02
	ld (_RAM_C054_), a
	ld a, $FF
	ld (v_invincibilityTimer), a
	ld (ix+24), $00
	ld (ix+22), $00
	ld (ix+23), $00
	ld (ix+25), $00
	ld (ix+26), $00
	call _LABEL_6F21_
	call updateAlexSpawning
_LABEL_6D73_:
	call updateEntities
	ld a, (v_level)
	ld c, a
	ld a, (v_currentLevelIsBonusLevel)
	or a
	jp z, +
	inc c
+:
	ld hl, _DATA_DC5_ - 1
	ld b, $00
	add hl, bc
	ld a, (hl)
	ld (v_soundControl), a
	ld a, (v_level)
	cp $10
	jp z, +
	ld a, (v_alexStateBeforeHit)
	cp $05
	jp nz, +
	ld a, $83
	ld (v_soundControl), a
+:
	ld a, (v_hasJankenMatchStarted)
	or a
	jp z, +
	ld a, $84
	ld (v_soundControl), a
+:
	ld a, $82
	ld (Mapper_Slot2), a
	ld a, $01
	call setAndWaitForInterruptFlags
	ld b, $89
	ld a, (v_hasJankenMatchStarted)
	or a
	jp nz, +
	ld b, $8A
+:
	ld a, b
	ld (v_gameState), a
	jp enableDisplay

_LABEL_6DC9_:
	call clearVDPTablesAndDisableScreen
	ld b, $05
	call _LABEL_343_
	call clearScroll
	xor a
	ld de, $C000
	call writeAToVRAM
	xor a
	ld de, $C010
	call writeAToVRAM
	ld de, $7A94
	ld hl, _DATA_6E8B_
	ld b, $09
	call _LABEL_159_
	ld de, $7B90
	ld hl, _DATA_6E94_
	ld b, $0D
	call _LABEL_159_
	ld hl, $C022
	ld de, $7B9C
	call _LABEL_454_
	ld de, $8026
	ld a, e
	ld (v_VDPRegister0Value), a
	rst $08	; setVDPAddress
	ld a, $AF
	ld (v_soundControl), a
	ei
	call enableDisplay
	ld a, $C0
	ld (_RAM_C07F_), a
	xor a
	ld (v_itemBeignBoughtIndex), a
-:
	ld a, $80
	call setAndWaitForInterruptFlags
	ld a, (v_inputData)
	and JOY_UP
	jp nz, +
	xor a
	ld (v_itemBeignBoughtIndex), a
	jp _LABEL_6E41_

+:
	ld a, (_RAM_C007_)
	and $20
	jp z, _LABEL_6E41_
	ld hl, v_itemBeignBoughtIndex
	inc (hl)
	ld a, (hl)
	cp $08
	jp nc, +
_LABEL_6E41_:
	ld hl, _RAM_C07F_
	dec (hl)
	jp nz, -
	ld a, $00
	ld (v_gameState), a
	ret

+:
	xor a
	ld (v_itemBeignBoughtIndex), a
	ld c, $03
	ld b, $00
	ld hl, $0489
	add hl, bc
	ld bc, v_money
	call _LABEL_42D_
	jr c, _LABEL_6E41_
	dec hl
	dec hl
	dec bc
	dec bc
	call _LABEL_41C_
	di
	ld de, $7C50
	ld hl, _DATA_6EA1_
	ld b, $0D
	call _LABEL_159_
	ei
	ld a, $8F
	ld (v_soundControl), a
	ld b, $1E
	call _LABEL_343_
	ld a, $03
	ld (v_lives), a
	ld a, $0A
	ld (v_gameState), a
	ret

; Data from 6E8B to 6E93 (9 bytes)
_DATA_6E8B_:
.db $D7 $D1 $DD $D5 $B0 $DF $E6 $D5 $E2

; Data from 6E94 to 6EA0 (13 bytes)
_DATA_6E94_:
.db $E3 $D3 $DF $E2 $D5 $B0 $B0 $B0 $B0 $B0 $B0 $B0 $C0

; Data from 6EA1 to 6EAD (13 bytes)
_DATA_6EA1_:
.db $D3 $DF $DE $E4 $D9 $DE $E5 $D5 $B0 $DD $DF $D4 $D5

; 7th entry of Jump Table from 127 (indexed by v_gameState)
handleInterruptLifeLostState:
	ret

_LABEL_6EAF_:
	ld a, (ix+24)
	ld (ix+14), a
	ld a, (ix+22)
	ld (ix+12), a
_LABEL_6EBB_:
	exx
	ld a, (ix+12)
	ld (ix+25), a
	ld de, $0100
	ld a, $08
	ld b, (ix+26)
	call _LABEL_39ED_
	exx
	jp nc, +
--:
	ld a, $08
	add a, (ix+14)
	ld (ix+14), a
	cp $90
	jp c, _LABEL_6EBB_
	ld a, $08
	add a, (ix+22)
	ld (ix+22), a
	cp $60
	jp c, _LABEL_6EAF_
	ret

+:
	ld b, (ix+26)
	ld a, $08
	add a, (ix+25)
	ld (ix+12), a
-:
	exx
	ld de, $0100
	ld a, $08
	ld b, (ix+23)
	call _LABEL_39ED_
	exx
	jp nc, +
	ld a, (ix+25)
	ld (ix+12), a
	jp --

+:
	ld a, $08
	add a, (ix+12)
	ld (ix+12), a
	djnz -
	ld a, (ix+25)
	ld (ix+12), a
	ret

_LABEL_6F21_:
	ld a, (_RAM_C0BC_)
	cp $07
	ret nc
	ld b, a
	ld a, (ix+14)
	sub b
	ld (ix+14), a
	ret

; Pointer Table from 6F30 to 6F37 (4 entries, indexed by _RAM_C3C2_)
_DATA_6F30_:
.dw _DATA_6F38_ _DATA_6F3B_ _DATA_6F3E_ _DATA_6F41_

; 1st entry of Pointer Table from 6F30 (indexed by _RAM_C3C2_)
; Data from 6F38 to 6F3A (3 bytes)
_DATA_6F38_:
.db $25 $B0 $70

; 2nd entry of Pointer Table from 6F30 (indexed by _RAM_C3C2_)
; Data from 6F3B to 6F3D (3 bytes)
_DATA_6F3B_:
.db $46 $C0 $88

; 3rd entry of Pointer Table from 6F30 (indexed by _RAM_C3C2_)
; Data from 6F3E to 6F40 (3 bytes)
_DATA_6F3E_:
.db $25 $B0 $90

; 4th entry of Pointer Table from 6F30 (indexed by _RAM_C3C2_)
; Data from 6F41 to 6F43 (3 bytes)
_DATA_6F41_:
.db $25 $B0 $90

loadNewEntities:
	ld hl, (newEntitiesLoaderPointer)
	jp (hl)

; 1st entry of Jump Table from D4E (indexed by v_level)
_LABEL_6F48_:
	ld hl, v_currentScreenNumber
	bit 7, (hl)
	ret z
	res 7, (hl)
	ld a, (hl)
	ld hl, (v_entitydataPointersPointer)
	rst $10	; _LABEL_10_
	xor a
	ld (v_newEntityVerticalOffset), a
	ld de, $0100
	ld a, (v_isScrollingDownToNextScreen)
	or a
	jp nz, _LABEL_6F7E_
	ld de, $0100
	ld a, (v_scrollFlags)
	rrca
	jp c, _LABEL_6F7E_
	ld de, $FF00
	rrca
	jp c, _LABEL_6F7E_
	ld de, $0001
	rrca
	jp c, _LABEL_6F7E_
	ld de, $00FF
_LABEL_6F7E_:
	xor a
	ld (v_isScrollingDownToNextScreen), a
	ld (v_addedEntitiesShouldBeOffscreenHorizontally), de
_LABEL_6F86_:
    ; Here the screen entities descriptor entity count is read
	ld a, (hl)
	or a
	ret z

    ; If unknown bit 7 is set
	bit 7, a
	jp nz, _LABEL_6FDF_

	ld b, a
_LABEL_6F8F_:
	ld c, b

    ; Find an empty entity slot
	ld ix, _RAM_C3C0_
	ld de, $0020
	ld b, $0A
-:
	ld a, (ix+0)
	or a
	jp z, +
	add ix, de
	djnz -
	ret

+:
	ld b, c

; Entity loading related
_LABEL_6FA6_:
	inc hl
	ld a, (hl)
	ld (ix+0), a
	inc hl
	ld a, (hl)
	ld (ix+14), a
	inc hl
	ld a, (hl)
	ld de, (v_horizontalScroll)
	ld (ix+11), e
	add a, d
	ld d, a
	ld a, (v_newEntityHorizontalOffset)
	ld e, a
	ld a, d
	sub e
	ld (ix+12), a
	inc hl
	ld a, (hl)
	ld (ix+3), a
	ld de, (v_addedEntitiesShouldBeOffscreenHorizontally)
	ld (ix+10), d
	ld (ix+9), e
	ld a, (v_newEntityVerticalOffset)
	add a, (ix+14)
	ld (ix+14), a
	djnz _LABEL_6F8F_
	ret

; Entity loading related
_LABEL_6FDF_:
    ; If bit 1 is set (0x81)
	rrca
	jp c, ++
    ; If bit 2 is set (0x82)
	rrca
	jp c, _LABEL_702F_
    ; If bit 3 is set (0x84)
	rrca
	jp c, +
    
    ; Else
	inc hl
	ld a, (hl)
	ld c, a
	ld b, $00
	inc hl
	ld de, _RAM_D8A0_
	ldir
	jp _LABEL_6F86_

+:
	ld ix, _RAM_C3A0_
	res 0, (ix+1)
	res 1, (ix+1)
	ld b, $01
	call _LABEL_6FA6_
	inc hl
	jp _LABEL_6F86_

++:
	ld ix, _RAM_C680_
	ld a, (ix+0)
	or a
	jp z, +
	ld de, $0020
	add ix, de
+:
	res 0, (ix+1)
	res 1, (ix+1)
	ld b, $01
	call _LABEL_6FA6_
	inc hl
	jp _LABEL_6F86_

_LABEL_702F_:
	inc hl
	ld a, (hl)
	exx
	ld hl, _DATA_7102_ - 2
	rst $10	; _LABEL_10_
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld (_RAM_C0FD_), de
	inc hl
	ld ix, _RAM_C3C0_
	ld de, $0020
	ld b, $08
-:
	ld a, (hl)
	ld (ix+22), a
	inc hl
	ld a, (hl)
	ld (ix+30), a
	inc hl
	ld a, (hl)
	ld (ix+31), a
	inc hl
	ld a, (hl)
	ld (ix+21), a
	ld (ix+0), $24
	ld a, (v_addedEntitiesShouldBeOffscreenHorizontally)
	ld (ix+9), a
	ld a, (v_addedEntitiesShouldBeOffscreenVertically)
	ld (ix+10), a
	ld (ix+24), $00
	ld (ix+23), $00
	res 0, (ix+1)
	res 1, (ix+1)
	add ix, de
	inc hl
	djnz -
	exx
	inc hl
	jp _LABEL_6F86_

; 11th entry of Jump Table from D4E (indexed by v_level)
_LABEL_7084_:
	ld hl, v_currentScreenNumber
	bit 7, (hl)
	ret z
	res 7, (hl)
	xor a
	ld (v_newEntityVerticalOffset), a
	ld de, $0100
	ld a, (v_isScrollingDownToNextScreen)
	or a
	jp nz, +
	ld a, (v_scrollFlags)
	rrca
	jp c, +
	ld de, $FF00
	rrca
	jp c, ++
	ld de, $0001
	rrca
	jp c, _LABEL_70F6_
	ld de, $00FF
	ld hl, v_entityIndex
	inc (hl)
	ld a, (hl)
	ld hl, (v_entitydataPointersPointer)
	rst $10	; _LABEL_10_
	jp _LABEL_6F7E_

+:
	ld a, (_RAM_C0BC_)
	neg
	ld (v_newEntityVerticalOffset), a
	xor a
	ld (v_isScrollingDownToNextScreen), a
	ld a, (v_levelWidth)
	ld b, a
	ld a, (v_entityIndex)
	add a, b
	ld (v_entityIndex), a
	ld hl, (v_entitydataPointersPointer)
	rst $10	; _LABEL_10_
	jp _LABEL_6F7E_

++:
	ld a, (_RAM_C0BC_)
	ld (v_newEntityVerticalOffset), a
	ld a, (v_entityIndex)
	ld c, a
	ld a, (v_levelWidth)
	ld b, a
	ld a, c
	sub b
	ld (v_entityIndex), a
	ld hl, (v_entitydataPointersPointer)
	rst $10	; _LABEL_10_
	jp _LABEL_6F7E_

_LABEL_70F6_:
	ld hl, v_entityIndex
	dec (hl)
	ld a, (hl)
	ld hl, (v_entitydataPointersPointer)
	rst $10	; _LABEL_10_
	jp _LABEL_6F7E_

; Pointer Table from 7102 to 7105 (2 entries, indexed by unknown)
_DATA_7102_:
.dw _DATA_7106_ _DATA_7128_

; 1st entry of Pointer Table from 7102 (indexed by unknown)
; Data from 7106 to 7127 (34 bytes)
_DATA_7106_:
.db $5C $CC $00 $98 $74 $00 $08 $98 $6C $01 $10 $98 $64 $01 $18 $98
.db $5C $01 $20 $98 $54 $01 $28 $98 $4C $01 $30 $98 $44 $01 $38 $98
.db $3C $01

; 2nd entry of Pointer Table from 7102 (indexed by unknown)
; Data from 7128 to 7149 (34 bytes)
_DATA_7128_:
.db $58 $CC $00 $98 $66 $00 $08 $98 $5E $01 $10 $98 $56 $01 $18 $98
.db $4E $01 $20 $98 $46 $01 $28 $98 $3E $01 $30 $98 $36 $01 $38 $98
.db $2E $01

; 28th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_714A_:
	ld a, (_RAM_C3BA_)
	ld hl, _DATA_7152_
	rst $20	; loadAthJumptablePointer
	ret

; Jump Table from 7152 to 717B (21 entries, indexed by _RAM_C3BA_)
_DATA_7152_:
.dw _LABEL_717C_ _LABEL_71B0_ _LABEL_71CC_ _LABEL_7210_ _LABEL_7237_ _LABEL_7251_ _LABEL_727F_ _LABEL_72B3_
.dw _LABEL_7342_ _LABEL_7357_ _LABEL_7372_ _LABEL_73AE_ _LABEL_73CB_ _LABEL_74A4_ _LABEL_73D8_ _LABEL_7447_
.dw _LABEL_71B0_ _LABEL_7453_ _LABEL_746F_ _LABEL_74A4_ _LABEL_74CD_

; 1st entry of Jump Table from 78B0 (indexed by _RAM_C3BA_)
_LABEL_717C_:
	inc (ix+26)
	xor a
	ld (_RAM_C216_), a
	ld (v_hasJankenMatchStarted), a
	inc a
	ld (_RAM_C3A5_), a
	ld (_RAM_C3BF_), a
	ld a, (_RAM_C3A3_)
	and $FE
	add a, a
	add a, a
	add a, a
	ld hl, $80E1
	jr nz, +
	ld hl, $8134
+:
	ld (_RAM_C3A7_), hl
	ld l, a
	ld h, $00
	ld de, _DATA_7651_
	add hl, de
	ld de, _RAM_C230_
	ld bc, $0010
	ldir
	ret

; 2nd entry of Jump Table from 78B0 (indexed by _RAM_C3BA_)
_LABEL_71B0_:
	ld a, (_RAM_C3AA_)
	or (ix+9)
	ret nz
	ld a, (v_scrollFlags)
	and $0F
	ret nz
	ld a, (v_entities.1.state)
	cp ALEX_IN_AIR 
	ret nc
	inc (ix+26)
	ld a, $16
	ld (v_entities.1.state), a
	ret

; 3rd entry of Jump Table from 78B0 (indexed by _RAM_C3BA_)
_LABEL_71CC_:
	ld a, (v_entities.1.state)
	cp $17
	ret nz
	inc (ix+26)
	call _LABEL_3478_
	ld hl, (_RAM_C230_)
	ld (_RAM_C3A7_), hl
	ld a, (_RAM_C3A3_)
	cp $01
	jr nz, +
	ld (ix+12), $B8
	ld (ix+14), $80
+:
	ld a, $01
	ld (v_hasJankenMatchStarted), a
	call _LABEL_7924_
	ld hl, (_RAM_C232_)
	ld de, $6400
	call decompress4BitplanesToVRAM
	ei
	ld a, $82
	ld (Mapper_Slot2), a
	ld a, $07
	ld (v_gameState), a
	ld a, (_RAM_C23E_)
	ld (v_messageToShowInTheTextBoxIndex), a
	ret

; 4th entry of Jump Table from 78B0 (indexed by _RAM_C3BA_)
_LABEL_7210_:
	call _LABEL_722F_
	ret z
	ld hl, (_RAM_C234_)
	call _LABEL_75C6_
	call _LABEL_7941_
	ld a, $07
	ld (v_gameState), a
	ld a, $07
	ld (v_messageToShowInTheTextBoxIndex), a
	inc (ix+26)
	ld (ix+6), $10
	ret

_LABEL_722F_:
	ld a, (v_gameState)
	and $0F
	cp $07
	ret

; 5th entry of Jump Table from 78B0 (indexed by _RAM_C3BA_)
_LABEL_7237_:
	call _LABEL_722F_
	ret z
	ld a, $17
	ld (v_entities.1.state), a
	ld a, $87
	ld (v_soundControl), a
	inc (ix+26)
	ld (ix+31), $FF
	ld (ix+24), $14
	ret

; 6th entry of Jump Table from 78B0 (indexed by _RAM_C3BA_)
_LABEL_7251_:
	call _LABEL_7591_
	ld a, (v_soundJankenMatchSoundFlags)
	cp $80
	jr z, +
	ld hl, (_RAM_C236_)
	jp handleEntityAnimation

+:
	ld a, $AD
	ld (v_soundControl), a
	inc (ix+26)
	ld (ix+6), $14
	ld a, $01
	ld (_RAM_C3A5_), a
	ld (v_entities.1.animationTimer), a
	ld a, $15
	ld (v_entities.1.state), a
	ld (ix+31), $46
	ret

; 7th entry of Jump Table from 78B0 (indexed by _RAM_C3BA_)
_LABEL_727F_:
	call _LABEL_7591_
	ld a, (v_soundJankenMatchSoundFlags)
	cp $10
	jr z, +
	ld hl, (_RAM_C238_)
	jp handleEntityAnimation

+:
	ld hl, (_RAM_C23A_)
	ld a, $AE
	ld (v_soundControl), a
	inc (ix+26)
	ld a, $18
	ld (v_entities.1.state), a
	ld a, (_RAM_C3B7_)
	add a, a
	ld e, a
	ld d, $00
	add hl, de
	ld e, (hl)
	inc hl
	ld d, (hl)
	ex de, hl
	ld (_RAM_C3A7_), hl
	ld (ix+24), $1E
	ret

; 8th entry of Jump Table from 78B0 (indexed by _RAM_C3BA_)
_LABEL_72B3_:
	dec (ix+24)
	ret nz
	ld a, (v_entities.1.jankenMatchDecision)
	ld e, (ix+23)
	add a, e
	add a, e
	add a, e
	ld hl, _DATA_72CA_
	rst $20	; loadAthJumptablePointer
	ld a, $07
	ld (v_gameState), a
	ret

; Jump Table from 72CA to 72DB (9 entries, indexed by v_entities.1.jankenMatchDecision)
_DATA_72CA_:
.dw _LABEL_72DC_ _LABEL_72E6_ _LABEL_7314_ _LABEL_7314_ _LABEL_72DC_ _LABEL_72E6_ _LABEL_72E6_ _LABEL_7314_
.dw _LABEL_72DC_

; 1st entry of Jump Table from 72CA (indexed by v_entities.1.jankenMatchDecision)
_LABEL_72DC_:
	ld a, $0A
	ld (v_messageToShowInTheTextBoxIndex), a
	ld (ix+26), $04
	ret

; 2nd entry of Jump Table from 72CA (indexed by v_entities.1.jankenMatchDecision)
_LABEL_72E6_:
	ld a, $08
	ld (v_messageToShowInTheTextBoxIndex), a
	ld e, (ix+25)
	ld d, $00
	ld hl, $C2A6
	add hl, de
	add hl, de
	ld (hl), $A5
	dec hl
	dec hl
	ld a, (hl)
	cp $A5
	jr z, +
	inc (ix+25)
	ld a, (_RAM_C3B9_)
	cp $03
	jr nc, +
	ld (ix+26), $04
	ret

+:
	ld (ix+26), $08
	jp _LABEL_796D_

; 3rd entry of Jump Table from 72CA (indexed by v_entities.1.jankenMatchDecision)
_LABEL_7314_:
	ld a, $09
	ld (v_messageToShowInTheTextBoxIndex), a
	ld e, (ix+25)
	ld d, $00
	ld hl, $C2A6
	add hl, de
	add hl, de
	ld (hl), $A4
	dec hl
	dec hl
	ld a, (hl)
	cp $A4
	jr z, +
	inc (ix+25)
	ld a, (_RAM_C3B9_)
	cp $03
	jr nc, +
	ld (ix+26), $04
	ret

+:
	ld (ix+26), $0B
	jp _LABEL_796D_

; 9th entry of Jump Table from 78B0 (indexed by _RAM_C3BA_)
_LABEL_7342_:
	call _LABEL_722F_
	ret z
	call _LABEL_7641_
	ld a, $15
	ld (v_messageToShowInTheTextBoxIndex), a
	ld a, $07
	ld (v_gameState), a
	inc (ix+26)
	ret

; 10th entry of Jump Table from 78B0 (indexed by _RAM_C3BA_)
_LABEL_7357_:
	call _LABEL_722F_
	ret z
	ld (ix+6), $14
	ld a, $93
	ld (v_soundControl), a
	ld a, $19
	ld (v_entities.1.state), a
	ld a, $3C
	ld (v_entities.1.unknown6), a
	inc (ix+26)
	ret

; 11th entry of Jump Table from 78B0 (indexed by _RAM_C3BA_)
_LABEL_7372_:
	ld a, (v_gameState)
	cp $06
	jr z, +
	ld hl, (_RAM_C236_)
	jp handleEntityAnimation

+:
	ld b, (ix+0)
	ld c, (ix+3)
	ld e, (ix+12)
	ld d, (ix+14)
	exx
	call clearCurrentEntity
	exx
	ld hl, $80E1
	ld (_RAM_C3A7_), hl
	ld (ix+0), b
	ld (ix+3), c
	ld (ix+12), e
	ld (ix+14), d
	ld a, c
	or a
	ret nz
	ld (ix+12), $C0
	ld (ix+14), $98
	ret

; 12th entry of Jump Table from 7152 (indexed by _RAM_C3BA_)
_LABEL_73AE_:
	call _LABEL_78CE_
	ld (ix+24), $60
	ld hl, _DATA_7772_
	ld (_RAM_C219_), hl
	ld a, $03
	ld (_RAM_C218_), a
	xor a
	ld (_RAM_C3A2_), a
	ld hl, $961A
	ld (_RAM_C3A7_), hl
	ret

; 13th entry of Jump Table from 78B0 (indexed by _RAM_C3BA_)
_LABEL_73CB_:
	call _LABEL_722F_
	ret z
	ld a, $84
	ld (v_soundControl), a
	inc (ix+26)
	ret

; 15th entry of Jump Table from 7152 (indexed by _RAM_C3BA_)
_LABEL_73D8_:
	ld a, (ix+10)
	or a
	ret nz
	ld (ix+19), $CC
	call tryToKillAlexIfColliding
	ld hl, v_entities.1.unknown8
	bit 3, (hl)
	jr z, ++
	res 3, (hl)
	ld (ix+19), $D0
	call _LABEL_7D0B_
	jr c, ++
	inc (ix+2)
	ld a, (_RAM_C3A2_)
	cp $03
	jr c, +
	inc (ix+26)
	ret

+:
	ld a, $8D
	ld (v_soundControl), a
++:
	ld a, (v_entities.1.state)
	cp ALEX_DEAD
	ret nc
	dec (ix+24)
	ret nz
	inc (ix+24)
	ld iy, _RAM_C3C0_
	ld a, (_RAM_C3C0_)
	or a
	jr z, +
	ld iy, _RAM_C3E0_
	ld a, (_RAM_C3E0_)
	or a
	ret nz
+:
	ld (ix+24), $60
	ld (iy+0), $19
	ld a, (_RAM_C3AC_)
	add a, $08
	ld (iy+12), a
	ld a, (_RAM_C3AE_)
	add a, $10
	ld (iy+14), a
	ld a, $96
	ld (v_soundControl), a
	ret

; 16th entry of Jump Table from 7152 (indexed by _RAM_C3BA_)
_LABEL_7447_:
	call _LABEL_99D3_
	ld a, $95
	ld (v_soundControl), a
	inc (ix+26)
	ret

; 18th entry of Jump Table from 7152 (indexed by _RAM_C3BA_)
_LABEL_7453_:
	ld hl, v_entities.1.state
	ld a, (hl)
	cp $17
	ret nz
	ld (hl), $1A
	ld hl, _DATA_12AFE_
	ld (_RAM_C21B_), hl
	ld a, $88
	ld (_RAM_C202_), a
	xor a
	ld (_RAM_C218_), a
	inc (ix+26)
	ret

; 19th entry of Jump Table from 7152 (indexed by _RAM_C3BA_)
_LABEL_746F_:
	ld a, (_RAM_C202_)
	or a
	ret nz
	ld hl, _DATA_777A_
	ld (_RAM_C219_), hl
	ld a, $06
	ld (_RAM_C218_), a
	inc (ix+26)
	ld iy, _RAM_C400_
	ld (iy+0), $52
	ld (iy+3), $04
	ld (iy+12), $A8
	ld (iy+14), $A0
	ld (iy+1), $00
	ld a, $01
	ld (v_hasMoonstoneMedallion), a
	ld l, $15
	jp addScore

; 14th entry of Jump Table from 779E (indexed by _RAM_C3BA_)
_LABEL_74A4_:
	ld a, (_RAM_C202_)
	or a
	ret nz
	ld hl, _RAM_C218_
	dec (hl)
	jr z, +
	ld a, (hl)
	add a, a
	add a, a
	ld e, a
	ld d, $00
	ld hl, (_RAM_C219_)
	add hl, de
	ld de, _RAM_C204_
	ld bc, $0004
	ldir
	ld a, $80
	ld (_RAM_C202_), a
	ret

+:
	call _LABEL_2BFA_
	inc (ix+26)
; 21st entry of Jump Table from 7152 (indexed by _RAM_C3BA_)
_LABEL_74CD_:
	ret

; 25th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_74CE_:
	call tryToKillAlexIfColliding
	bit 7, (iy+1)
	jr nz, +
	ld a, (ix+26)
	ld hl, _DATA_74DF_
	rst $20	; loadAthJumptablePointer
	ret

; Jump Table from 74DF to 74EA (6 entries, indexed by _RAM_CF9A_)
_DATA_74DF_:
.dw _LABEL_7509_ _LABEL_7525_ _LABEL_7535_ _LABEL_7564_ _LABEL_756C_ _LABEL_7588_

+:
	res 7, (iy+1)
	ld (iy+26), $19
	ld (iy+24), $3C
	call _LABEL_99D3_
	ld a, $93
	ld (v_soundControl), a
	ld hl, _RAM_C3C0_
	call clearEntity
	inc hl
	jp clearEntity

; 1st entry of Jump Table from 74DF (indexed by _RAM_CF9A_)
_LABEL_7509_:
	set 1, (ix+1)
	ld (ix+7), <_DATA_974B_
	ld (ix+8), >_DATA_974B_
	ld (ix+16), $FF
	ld (ix+22), $08
	ld (ix+23), $01
	inc (ix+26)
	ret

; 2nd entry of Jump Table from 74DF (indexed by _RAM_CF9A_)
_LABEL_7525_:
	dec (ix+22)
	ret nz
	ld (ix+17), $00
	ld (ix+18), $FE
	inc (ix+26)
	ret

; 3rd entry of Jump Table from 74DF (indexed by _RAM_CF9A_)
_LABEL_7535_:
	ld l, (ix+17)
	ld h, (ix+18)
	ld de, $0040
	add hl, de
	ld (ix+17), l
	ld (ix+18), h
	bit 7, h
	ret nz
	ld de, $0200
	or a
	sbc hl, de
	ret c
-:
	ld (ix+17), e
	ld (ix+18), d
	inc (ix+26)
	ld a, (ix+23)
	add a, $02
	ld (ix+23), a
	ld (ix+22), a
	ret

; 4th entry of Jump Table from 74DF (indexed by _RAM_CF9A_)
_LABEL_7564_:
	dec (ix+22)
	ret nz
	inc (ix+26)
	ret

; 5th entry of Jump Table from 74DF (indexed by _RAM_CF9A_)
_LABEL_756C_:
	ld l, (ix+17)
	ld h, (ix+18)
	ld de, $FFC0
	add hl, de
	ld (ix+17), l
	ld (ix+18), h
	bit 7, h
	ret z
	ld de, $FE00
	or a
	sbc hl, de
	jr c, -
	ret

; 6th entry of Jump Table from 74DF (indexed by _RAM_CF9A_)
_LABEL_7588_:
	dec (ix+22)
	ret nz
	ld (ix+26), $02
	ret

_LABEL_7591_:
	ld hl, _RAM_C3BF_
	ld a, (hl)
	or a
	ret z
	dec (hl)
	ld c, (ix+3)
	ld b, $00
	ld hl, _DATA_7763_
	add hl, bc
	ld c, (hl)
	ld de, (_RAM_C23C_)
	dec (ix+24)
	ret p
	ld (ix+24), c
	ld hl, v_JankenMatchOpponentDecisionIndex
	inc (hl)
	ld a, (hl)
	and $1F
	ld l, a
	ld h, $00
	add hl, de
	ld l, (hl)
	ld (ix+23), l
	ld a, (v_hasTelepathyBall)
	or a
	ret z
	ld a, l
	ld (_RAM_C657_), a
	ret

_LABEL_75C6_:
	ld hl, _RAM_C640_
	call clearEntity
	inc hl
	call clearEntity
	ld hl, _RAM_CA08_
	ld de, _RAM_D000_
	ld bc, $00EC
	ldir
	ld de, _RAM_CA08_
	call +
	ld iy, _RAM_C660_
	ld (iy+0), $0B
	ld hl, (v_horizontalScroll)
	ld a, $20
	add a, h
	ld (iy+12), a
	ld (iy+14), $3F
	ld a, (v_hasTelepathyBall)
	or a
	ret z
	ld iy, _RAM_C640_
	ld (iy+0), $0B
	ld a, $B0
	add a, h
	ld (iy+12), a
	ld (iy+14), $3F
	ld de, _RAM_CA2C_
+:
	ld hl, _DATA_92A8_
	ld bc, $0408
-:
	push bc
	push de
	ld b, $00
	ldir
	pop de
	ex de, hl
	ld c, $40
	add hl, bc
	ex de, hl
	pop bc
	djnz -
	ret

; 11th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_7626_:
	ld a, (ix+23)
	add a, a
	ld e, a
	ld d, $00
	ld hl, _DATA_763B_
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld (ix+7), a
	ld (ix+8), h
	ret

; Pointer Table from 763B to 7640 (3 entries, indexed by _RAM_CF97_)
_DATA_763B_:
.dw _DATA_92C8_ _DATA_92D6_ _DATA_92E4_

_LABEL_7641_:
	ld hl, _RAM_C640_
	call clearEntity
	inc hl
	call clearEntity
	ld hl, _RAM_C5C0_
	jp clearEntity

; Data from 7651 to 7652 (2 bytes)
_DATA_7651_:
.db $4B $95

; Pointer Table from 7653 to 7656 (2 entries, indexed by _RAM_C3A3_)
.dw _DATA_12357_ _DATA_76AB_

; Pointer Table from 7657 to 7658 (1 entries, indexed by _RAM_C3A3_)
.dw _DATA_9500_

; Pointer Table from 7659 to 765A (1 entries, indexed by _RAM_C3A3_)
.dw _DATA_9505_

; Pointer Table from 765B to 765C (1 entries, indexed by _RAM_C3A3_)
.dw _DATA_7691_

; Pointer Table from 765D to 765E (1 entries, indexed by _RAM_C3A3_)
.dw _DATA_76E3_

; Data from 765F to 7662 (4 bytes)
.db $0C $00 $16 $93

; Pointer Table from 7663 to 7664 (1 entries, indexed by _RAM_C3A3_)
.dw _DATA_11BB5_

; Data from 7665 to 7672 (14 bytes)
.IFDEF _REV1
	.db $B9
.ELSE
	.db $B2
.ENDIF
.db $76 $F2 $92 $F7 $92
.IFDEF _REV1
	.db $97
.ELSE
	.db $90
.ENDIF
.db $76
.IFDEF _REV1
	.db $03 $77
.ELSE
	.db $FC $76
.ENDIF
.db $04 $00 $16 $93

; Pointer Table from 7673 to 7674 (1 entries, indexed by _RAM_C3A3_)
.dw _DATA_11E67_

; Data from 7675 to 7682 (14 bytes)
.IFDEF _REV1
	.db $C7
.ELSE
	.db $C0
.ENDIF
.db $76 $F2 $92 $15 $94
.IFDEF _REV1
	.db $9D
.ELSE
	.db $96
.ENDIF
.db $76
.IFDEF _REV1
	.db $23
.ELSE
	.db $1C
.ENDIF
.db $77 $05 $00 $16 $93

; Pointer Table from 7683 to 7684 (1 entries, indexed by _RAM_C3A3_)
.dw _DATA_120A8_

; Data from 7685 to 7690 (12 bytes)
.IFDEF _REV1
	.db $D5
.ELSE
	.db $CE
.ENDIF
.db $76 $F2 $92 $F7 $92
.IFDEF _REV1
	.db $97
.ELSE
	.db $90
.ENDIF

.db $76

.IFDEF _REV1
	.db $43
.ELSE
	.db $3C
.ENDIF

.db $77 $06 $00

; 1st entry of Pointer Table from 765B (indexed by _RAM_C3A3_)
; Data from 7691 to 7692 (2 bytes)
_DATA_7691_:
.db $5B $96

; Pointer Table from 7693 to 7694 (1 entries, indexed by _RAM_C3A3_)
.dw _DATA_116AB_

; Data from 7695 to 76A2 (14 bytes)
.db $FB $96 $A3 $93 $C9 $93 $EF $93 $8E $94 $B4 $94 $DA $94

; Data from 76A3 to 76AA (8 bytes)
_DATA_76A3_:
.db $D1 $00 $DC $00 $D5 $00 $E8 $00

; 2nd entry of Pointer Table from 7653 (indexed by _RAM_C3A3_)
; Data from 76AB to 76E2 (56 bytes)
_DATA_76AB_:
.db $B0 $00 $D1 $00 $DE $00 $D9 $00 $DF $00 $E5 $00 $E4 $00 $B0 $00
.db $E5 $00 $DE $00 $E5 $00 $E5 $00 $D1 $00 $B0 $00 $B0 $00 $D9 $00
.db $DF $00 $E5 $00 $D9 $00 $DE $00 $D1 $00 $D1 $00 $DE $00 $DE $00
.db $E5 $00 $DE $00 $D9 $00 $DE $00

; 1st entry of Pointer Table from 765D (indexed by _RAM_C3A3_)
; Data from 76E3 to 7762 (128 bytes)
_DATA_76E3_:
.db $00 $01 $02 $02 $00 $01 $00 $02 $00 $01 $02 $01 $00 $01 $00 $02
.db $02 $00 $02 $01 $00 $02 $01 $02 $01 $00 $01 $02 $00 $01 $00 $02
.db $00 $01 $02 $00 $00 $01 $00 $02 $02 $00 $02 $01 $00 $01 $00 $02
.db $02 $00 $02 $01 $00 $00 $01 $00 $01 $02 $01 $02 $00 $01 $00 $00
.db $01 $01 $02 $02 $00 $01 $00 $01 $02 $01 $02 $01 $00 $01 $00 $02
.db $02 $00 $01 $01 $00 $02 $01 $02 $01 $00 $01 $02 $00 $01 $00 $01
.db $02 $02 $01 $02 $00 $01 $00 $02 $02 $01 $02 $02 $00 $01 $00 $00
.db $02 $00 $02 $01 $00 $02 $01 $02 $01 $02 $01 $02 $00 $01 $00 $02

; Data from 7763 to 776A (8 bytes)
_DATA_7763_:
.db $23 $1E $46 $32 $3C $2D $37 $28

; Data from 776B to 7771 (7 bytes)
_DATA_776B_:
.db $03 $00 $00 $00 $00 $00 $1F

; Data from 7772 to 7779 (8 bytes)
_DATA_7772_:
.db $08 $1F $10 $1F $04 $CD $5D $8B

; Data from 777A to 778D (20 bytes)
_DATA_777A_:
.db $84 $CC $5D $8B $04 $CB $75 $8B $84 $CA $75 $8B $04 $CA $75 $8B
.db $84 $C9 $75 $8B

; Data from 778E to 7795 (8 bytes)
_DATA_778E_:
.db $04 $C9 $75 $8B $8C $CD $65 $8A

; 29th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_7796_:
	ld a, (_RAM_C3BA_)
	ld hl, _DATA_779E_
	rst $20	; loadAthJumptablePointer
	ret

; Jump Table from 779E to 77BD (16 entries, indexed by _RAM_C3BA_)
_DATA_779E_:
.dw _LABEL_717C_ _LABEL_71B0_ _LABEL_71CC_ _LABEL_7210_ _LABEL_7237_ _LABEL_7251_ _LABEL_727F_ _LABEL_72B3_
.dw _LABEL_7342_ _LABEL_7357_ _LABEL_7372_ _LABEL_77BE_ _LABEL_73CB_ _LABEL_74A4_ _LABEL_77CD_ _LABEL_780B_

; 12th entry of Jump Table from 779E (indexed by _RAM_C3BA_)
_LABEL_77BE_:
	call _LABEL_78CE_
	ld hl, _DATA_778E_
	ld (_RAM_C219_), hl
	ld a, $02
	ld (_RAM_C218_), a
	ret

; 15th entry of Jump Table from 779E (indexed by _RAM_C3BA_)
_LABEL_77CD_:
	ld hl, $936D
	ld (_RAM_C3A7_), hl
	dec (ix+22)
	ret nz
	ld hl, $9395
	ld (_RAM_C3A7_), hl
	ld hl, _RAM_C3C0_
	call clearEntity
	ld iy, _RAM_C3C0_
	ld (iy+0), $0D
	ld a, (_RAM_C3AC_)
	ld (_RAM_C3CC_), a
	ld a, (_RAM_C3AE_)
	ld (_RAM_C3CE_), a
	sub $20
	ld (_RAM_C3D7_), a
	ld hl, $9387
	ld (_RAM_C3C7_), hl
	inc (ix+26)
	ld a, $AC
	ld (v_soundControl), a
	ret

; 15th entry of Jump Table from 78B0 (indexed by _RAM_C3BA_)
_LABEL_780B_:
	call tryToKillAlexIfColliding
	ld a, (_RAM_C3C0_)
	or a
	jp z, _LABEL_5547_
	ret

; 30th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_7816_:
	ld a, (_RAM_C3BA_)
	ld hl, _DATA_781E_
	rst $20	; loadAthJumptablePointer
	ret

; Jump Table from 781E to 783B (15 entries, indexed by _RAM_C3BA_)
_DATA_781E_:
.dw _LABEL_717C_ _LABEL_71B0_ _LABEL_71CC_ _LABEL_7210_ _LABEL_7237_ _LABEL_7251_ _LABEL_727F_ _LABEL_72B3_
.dw _LABEL_7342_ _LABEL_7357_ _LABEL_7372_ _LABEL_78CE_ _LABEL_73CB_ _LABEL_783C_ _LABEL_786F_

; 14th entry of Jump Table from 781E (indexed by _RAM_C3BA_)
_LABEL_783C_:
	ld hl, $9458
	ld (_RAM_C3A7_), hl
	dec (ix+22)
	ret nz
	ld hl, $9480
	ld (_RAM_C3A7_), hl
	ld iy, _RAM_C3C0_
	ld (iy+0), $0E
	ld a, (_RAM_C3AC_)
	ld (_RAM_C3CC_), a
	ld a, (_RAM_C3AE_)
	ld (_RAM_C3CE_), a
	ld hl, $9472
	ld (_RAM_C3C7_), hl
	inc (ix+26)
	ld a, $AC
	ld (v_soundControl), a
	ret

; 15th entry of Jump Table from 781E (indexed by _RAM_C3BA_)
_LABEL_786F_:
	call tryToKillAlexIfColliding
	ld a, (_RAM_C3C0_)
	or a
	jp z, _LABEL_5547_
	ld a, (_RAM_C3E0_)
	or a
	ret nz
	ld iy, _RAM_C3E0_
	ld (iy+0), $1A
	ld a, (_RAM_C3AC_)
	ld (_RAM_C3EC_), a
	ld a, (_RAM_C3AE_)
	add a, $10
	ld (_RAM_C3EE_), a
	ld hl, $FF00
	ld (_RAM_C3EF_), hl
	ld hl, $974B
	ld (_RAM_C3E7_), hl
	set 1, (iy+1)
	ret

; 26th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_78A5_:
	jp tryToKillAlexIfColliding

; 31st entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_78A8_:
	ld a, (_RAM_C3BA_)
	ld hl, _DATA_78B0_
	rst $20	; loadAthJumptablePointer
	ret

; Jump Table from 78B0 to 78CD (15 entries, indexed by _RAM_C3BA_)
_DATA_78B0_:
.dw _LABEL_717C_ _LABEL_71B0_ _LABEL_71CC_ _LABEL_7210_ _LABEL_7237_ _LABEL_7251_ _LABEL_727F_ _LABEL_72B3_
.dw _LABEL_7342_ _LABEL_7357_ _LABEL_7372_ _LABEL_78CE_ _LABEL_73CB_ _LABEL_78F1_ _LABEL_780B_

; 12th entry of Jump Table from 78B0 (indexed by _RAM_C3BA_)
_LABEL_78CE_:
	call _LABEL_722F_
	ret z
	call _LABEL_2BFA_
	call _LABEL_7641_
	bit 0, (ix+3)
	jp z, _LABEL_5547_
	inc (ix+26)
	ld (ix+22), $28
	ld a, $0B
	ld (v_messageToShowInTheTextBoxIndex), a
	ld a, $07
	ld (v_gameState), a
	ret

; 14th entry of Jump Table from 78B0 (indexed by _RAM_C3BA_)
_LABEL_78F1_:
	ld hl, $936D
	ld (_RAM_C3A7_), hl
	dec (ix+22)
	ret nz
	ld hl, $9395
	ld (_RAM_C3A7_), hl
	ld iy, _RAM_C3C0_
	ld (iy+0), $0F
	ld a, (_RAM_C3AC_)
	ld (_RAM_C3CC_), a
	ld a, (_RAM_C3AE_)
	ld (_RAM_C3CE_), a
	ld hl, $9387
	ld (_RAM_C3C7_), hl
	inc (ix+26)
	ld a, $AC
	ld (v_soundControl), a
	ret

_LABEL_7924_:
	ld hl, _RAM_C3C0_
	ld b, $16
-:
	call clearEntity
	inc hl
	djnz -
	call resetSoundAndInitVolume
	ld a, $84
	ld (Mapper_Slot2), a
	ld hl, _DATA_118E9_
	ld de, $7000
	di
	jp decompress4BitplanesToVRAM

_LABEL_7941_:
	ld hl, _RAM_C908_
	ld de, _RAM_C260_
	ld bc, $002E
	ldir
	ld hl, _DATA_76A3_
	ld de, _RAM_C908_
	ld bc, $0008
	ldir
	ld hl, _DATA_776B_
	ld de, _RAM_C2A0_
	ld bc, $000B
	ldir
	ld hl, _RAM_C5C0_
	push hl
	call clearEntity
	pop hl
	ld (hl), $0C
	ret

_LABEL_796D_:
	ld de, _RAM_C908_
	ld hl, _RAM_C260_
	ld bc, $002E
	ldir
	ld hl, _RAM_D000_
	ld de, _RAM_CA08_
	ld bc, $00EC
	ldir
	ld a, $01
	ld (_RAM_C216_), a
	ret

; 12th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_7989_:
	bit 0, (ix+1)
	ret nz
	set 0, (ix+1)
	ld hl, $C2A0
	ld (_RAM_C5C7_), hl
	ld (ix+12), $28
	ld (ix+14), $30
	ret

; 13th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_79A1_:
	ld a, (_RAM_C3DA_)
	ld hl, _DATA_79A9_
	rst $20	; loadAthJumptablePointer
	ret

; Jump Table from 79A9 to 79B0 (4 entries, indexed by _RAM_C3DA_)
_DATA_79A9_:
.dw _LABEL_79B1_ _LABEL_79D0_ _LABEL_79F0_ _LABEL_7A79_

; 1st entry of Jump Table from 79A9 (indexed by _RAM_C3DA_)
_LABEL_79B1_:
	ld a, (_RAM_C3CE_)
	cp (ix+23)
	jr nc, +
	inc (ix+26)
	ld hl, $FF00
	ld (_RAM_C3CF_), hl
	ld hl, $FE00
	ld (_RAM_C3D1_), hl
	ret

+:
	ld hl, $FF00
	ld (_RAM_C3D1_), hl
	ret

; 2nd entry of Jump Table from 79A9 (indexed by _RAM_C3DA_)
_LABEL_79D0_:
	call _LABEL_7A10_
	ld a, (_RAM_C3CE_)
	cp (ix+23)
	jr c, +
	inc (ix+26)
	ld hl, $0200
	ld (_RAM_C3D1_), hl
	ret

+:
	ld hl, (_RAM_C3D1_)
	ld de, $0010
	add hl, de
	ld (_RAM_C3D1_), hl
	ret

; 3rd entry of Jump Table from 79A9 (indexed by _RAM_C3DA_)
_LABEL_79F0_:
	call _LABEL_7A10_
	ld a, (_RAM_C3CE_)
	cp (ix+23)
	jr nc, +
	dec (ix+26)
	ld hl, $FE00
	ld (_RAM_C3D1_), hl
	ret

+:
	ld hl, (_RAM_C3D1_)
	ld de, $FFF0
	add hl, de
	ld (_RAM_C3D1_), hl
	ret

_LABEL_7A10_:
	call tryToKillAlexIfColliding
	call _LABEL_7D0B_
	jr nc, _LABEL_7A40_
	bit 1, (ix+20)
	jr z, +
	ld hl, $0100
	ld (_RAM_C3CF_), hl
	ld a, (_RAM_C3CC_)
	cp $E0
	ret c
	res 1, (ix+20)
	ret

+:
	ld hl, $FF00
	ld (_RAM_C3CF_), hl
	ld a, (_RAM_C3CC_)
	cp $11
	ret nc
	set 1, (ix+20)
	ret

_LABEL_7A40_:
	pop af
_LABEL_7A41_:
	res 7, (ix+1)
	inc (ix+2)
	ld a, (_RAM_C3C2_)
	cp $03
	jp nc, _LABEL_55A5_
	ld a, $8D
	ld (v_soundControl), a
	ld a, (_RAM_C3DA_)
	ld (_RAM_C3D8_), a
	ld (ix+26), $03
	ld (ix+22), $3C
	ld hl, (_RAM_C3D1_)
	ld (_RAM_C3DE_), hl
	ld hl, (_RAM_C3CF_)
	ld (_RAM_C3DC_), hl
	ld hl, $0000
	ld (_RAM_C3D1_), hl
	ld (_RAM_C3CF_), hl
	ret

; 4th entry of Jump Table from 79A9 (indexed by _RAM_C3DA_)
_LABEL_7A79_:
	dec (ix+22)
	ret nz
	ld a, (_RAM_C3D8_)
	ld (_RAM_C3DA_), a
	ld hl, (_RAM_C3DE_)
	ld (_RAM_C3D1_), hl
	ld hl, (_RAM_C3DC_)
	ld (_RAM_C3CF_), hl
	ret

; 14th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_7A90_:
	ld a, (_RAM_C3DA_)
	ld hl, _DATA_7A98_
	rst $20	; loadAthJumptablePointer
	ret

; Jump Table from 7A98 to 7A9F (4 entries, indexed by _RAM_C3DA_)
_DATA_7A98_:
.dw _LABEL_7AA0_ _LABEL_7AC2_ _LABEL_7AF3_ _LABEL_7A79_

; 1st entry of Jump Table from 7A98 (indexed by _RAM_C3DA_)
_LABEL_7AA0_:
	ld a, (_RAM_C3CE_)
	cp $28
	jr nc, +
	inc (ix+26)
	ld hl, $0200
	ld (_RAM_C3CF_), hl
	ld hl, $FB34
	ld (_RAM_C3D1_), hl
	set 1, (ix+20)
	ret

+:
	ld hl, $FF00
	ld (_RAM_C3D1_), hl
	ret

; 2nd entry of Jump Table from 7A98 (indexed by _RAM_C3DA_)
_LABEL_7AC2_:
	call _LABEL_7B18_
	ld a, (_RAM_C3CE_)
	cp $28
	jr c, ++
	inc (ix+26)
	ld hl, $04CC
	ld (_RAM_C3D1_), hl
	ld hl, _RAM_C3D4_
	ld a, (hl)
	xor $02
	ld (hl), a
	ld hl, $FE00
	jr z, +
	ld hl, $0200
+:
	ld (_RAM_C3CF_), hl
	ret

++:
	ld hl, (_RAM_C3D1_)
	ld de, $005E
	add hl, de
	ld (_RAM_C3D1_), hl
	ret

; 3rd entry of Jump Table from 7A98 (indexed by _RAM_C3DA_)
_LABEL_7AF3_:
	call tryToKillAlexIfColliding
	call _LABEL_7D0B_
	jp nc, _LABEL_7A41_
	ld a, (_RAM_C3CE_)
	cp $28
	jr nc, +
	dec (ix+26)
	ld hl, $FB34
	ld (_RAM_C3D1_), hl
	ret

+:
	ld hl, (_RAM_C3D1_)
	ld de, $FFE2
	add hl, de
	ld (_RAM_C3D1_), hl
	ret

_LABEL_7B18_:
	call tryToKillAlexIfColliding
	call _LABEL_7D0B_
	jp nc, _LABEL_7A40_
	bit 1, (ix+20)
	ld de, $0028
	jr z, +
	ld de, $FFD8
+:
	ld hl, (_RAM_C3CF_)
	add hl, de
	ld (_RAM_C3CF_), hl
	ret

; 15th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_7B35_:
	call tryToKillAlexIfColliding
	ld a, (_RAM_C3DB_)
	or a
	jr z, +
	dec (ix+27)
	jr ++

+:
	call _LABEL_7D0B_
	jr c, ++
	inc (ix+2)
	ld a, (_RAM_C3C2_)
	cp $03
	jp nc, _LABEL_55A5_
	ld a, $8D
	ld (v_soundControl), a
	ld (ix+27), $1E
++:
	ld a, (_RAM_C3DA_)
	ld hl, _DATA_7B64_
	rst $20	; loadAthJumptablePointer
	ret

; Jump Table from 7B64 to 7B77 (10 entries, indexed by _RAM_C3DA_)
_DATA_7B64_:
.dw _LABEL_7B78_ _LABEL_7B88_ _LABEL_7B99_ _LABEL_7B88_ _LABEL_7BAA_ _LABEL_7BB4_ _LABEL_7BC5_ _LABEL_7BB4_
.dw _LABEL_7BD6_ _LABEL_7BEC_

; 1st entry of Jump Table from 7B64 (indexed by _RAM_C3DA_)
_LABEL_7B78_:
	ld hl, $FE00
	ld (_RAM_C3D1_), hl
	ld a, (_RAM_C3CE_)
	cp $70
	ret nc
	inc (ix+26)
	ret

; 2nd entry of Jump Table from 7B64 (indexed by _RAM_C3DA_)
_LABEL_7B88_:
	call _LABEL_7C10_
	call _LABEL_7C1B_
	ret nz
	ld hl, $FE00
	ld (_RAM_C3CF_), hl
	inc (ix+26)
	ret

; 3rd entry of Jump Table from 7B64 (indexed by _RAM_C3DA_)
_LABEL_7B99_:
	call _LABEL_7C28_
	call _LABEL_7C03_
	ret nz
	ld hl, $FE00
	ld (_RAM_C3D1_), hl
	inc (ix+26)
	ret

; 5th entry of Jump Table from 7B64 (indexed by _RAM_C3DA_)
_LABEL_7BAA_:
	ld a, (_RAM_C3CC_)
	cp $48
	ret nc
	inc (ix+26)
	ret

; 6th entry of Jump Table from 7B64 (indexed by _RAM_C3DA_)
_LABEL_7BB4_:
	call _LABEL_7C40_
	call _LABEL_7C03_
	ret nz
	ld hl, $0200
	ld (_RAM_C3D1_), hl
	inc (ix+26)
	ret

; 7th entry of Jump Table from 7B64 (indexed by _RAM_C3DA_)
_LABEL_7BC5_:
	call _LABEL_7C10_
	call _LABEL_7C33_
	ret nz
	ld hl, $0200
	ld (_RAM_C3D1_), hl
	inc (ix+26)
	ret

; 9th entry of Jump Table from 7B64 (indexed by _RAM_C3DA_)
_LABEL_7BD6_:
	ld a, (_RAM_C3CE_)
	cp $88
	ret c
	ld hl, $0000
	ld (_RAM_C3D1_), hl
	ld hl, $0400
	ld (_RAM_C3CF_), hl
	inc (ix+26)
	ret

; 10th entry of Jump Table from 7B64 (indexed by _RAM_C3DA_)
_LABEL_7BEC_:
	ld a, (_RAM_C3CC_)
	cp $B0
	ret c
	ld hl, $0000
	ld (_RAM_C3CF_), hl
	ld hl, $FE00
	ld (_RAM_C3D1_), hl
	ld (ix+26), $00
	ret

_LABEL_7C03_:
	ld hl, (_RAM_C3CF_)
	ld de, $0020
	or a
	adc hl, de
	ld (_RAM_C3CF_), hl
	ret

_LABEL_7C10_:
	ld hl, (_RAM_C3CF_)
	ld de, $FFE0
	add hl, de
	ld (_RAM_C3CF_), hl
	ret

_LABEL_7C1B_:
	ld hl, (_RAM_C3D1_)
	ld de, $0020
	or a
	adc hl, de
	ld (_RAM_C3D1_), hl
	ret

_LABEL_7C28_:
	ld hl, (_RAM_C3D1_)
	ld de, $FFE0
	add hl, de
	ld (_RAM_C3D1_), hl
	ret

_LABEL_7C33_:
	ld hl, (_RAM_C3D1_)
	ld de, $FFE0
	or a
	adc hl, de
	ld (_RAM_C3D1_), hl
	ret

_LABEL_7C40_:
	ld hl, (_RAM_C3D1_)
	ld de, $0020
	add hl, de
	ld (_RAM_C3D1_), hl
	ret

getTileNearEntityWithXYOffset:
	ld a, (ix + Entity.xPos.high)
	add a, e
_LABEL_7C4F_:
	; Map x screen coordinate from e into x
	; nametable position and put it on e again
	ld hl, (v_horizontalScroll)
	sub h
	ld c, a
	rra
	rra
	and $3E
	ld e, a

	; Count number of tiles to sum with x tile position to get the
	; nametable address of the tile being displayed at screen coordinates
	ld a, (ix + Entity.yPos.high)
	add a, d
-:
	ld hl, (v_verticalScroll)
	add a, h
	jr nc, +
	add a, $20
+:
	cp $E0
	jr c, +
	add a, $20
+:
	ld b, a
	and $F8
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ld d, $C8
	add hl, de
	inc hl
	ld a, (hl)
	ret

_LABEL_7C7A_:
	ld a, e
	ld hl, (v_horizontalScroll)
	sub h
	ld c, a
	rra
	rra
	and $3E
	ld e, a
	ld a, d
	jp -

_LABEL_7C89_:
	ld a, e
	ld c, a
	rra
	rra
	and $3E
	ld e, a
	ld a, d
	jp -

_LABEL_7C94_:
	ld a, l
	and $C0
	ld d, a
	ld a, c
	add a, e
	ld c, a
	rra
	rra
	and $3E
	or d
	inc a
	ld l, a
	ret

_LABEL_7CA3_:
	ld a, l
	and $3F
	ld e, a
	ld a, b
	add a, d
	ld b, a
	cp $E0
	jr c, +
	sub $E0
+:
	and $F8
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ld d, $C8
	add hl, de
	ret

_LABEL_7CBC_:
	ld a, (iy+0)
	or a
	scf
	ret z


.INC "engine/entity/checkEntityCollision.asm"


_LABEL_7D0B_:
	ld a, (v_entities.1.state)
	cp ALEX_SWIMING
	jp z, _LABEL_7D38_
	ld a, (_RAM_C054_)
	ld hl, _DATA_7D1C_
	jp loadAthJumptablePointer

; Jump Table from 7D1C to 7D37 (14 entries, indexed by _RAM_C054_)
_DATA_7D1C_:
.dw _LABEL_7D38_ _LABEL_7D38_ _LABEL_7D38_ _LABEL_7D6E_ _LABEL_7D84_ _LABEL_7D92_ _LABEL_7D38_ _LABEL_7D8B_
.dw _LABEL_7D61_ _LABEL_7D61_ _LABEL_7D38_ _LABEL_7D38_ _LABEL_7D38_ _LABEL_7D38_

; 1st entry of Jump Table from 7D1C (indexed by _RAM_C054_)
_LABEL_7D38_:
	ld a, (v_entities.1.unknown8)
	bit 0, a
	scf
	ret z
	ld iy, v_entity1
	ld a, (v_entities.1.unknown2)
	add a, $04
	ld l, a
	ld h, $00
	ld bc, _DATA_91D0_
	add hl, bc
	ex de, hl
	ld l, (ix+19)
	ld h, $00
	add hl, bc
	ld a, (de)
	ld b, a
	inc de
	ld a, (de)
	add a, b
	add a, (iy+12)
	jp _LABEL_7CE6_

; 9th entry of Jump Table from 7D1C (indexed by _RAM_C054_)
_LABEL_7D61_:
	ld iy, v_entities.2
	call _LABEL_7CBC_
	ret c
	set 7, (iy+1)
	ret

; 4th entry of Jump Table from 7D1C (indexed by _RAM_C054_)
_LABEL_7D6E_:
	ld iy, _RAM_C340_
	call checkEntityCollision
	jr nc, +
	ld iy, v_entities.2
	call checkEntityCollision
	ret c
+:
	set 7, (iy+1)
	ret

; 5th entry of Jump Table from 7D1C (indexed by _RAM_C054_)
_LABEL_7D84_:
	ld iy, _RAM_C360_
	jp checkEntityCollision

; 8th entry of Jump Table from 7D1C (indexed by _RAM_C054_)
_LABEL_7D8B_:
	ld iy, v_entity1
	jp checkEntityCollision

; 6th entry of Jump Table from 7D1C (indexed by _RAM_C054_)
_LABEL_7D92_:
	ld iy, v_entities.2
	jp checkEntityCollision

; Check if is colliding with Alex
tryToKillAlexIfColliding:
	; Return if Alex state is $0F
	ld a, (v_entities.1.state)
	cp ALEX_DEAD
	ret nc
	ld a, (_RAM_C054_)
	ld hl, _DATA_7DA8_
	jp loadAthJumptablePointer

; This table controls wehther alex can be hurt when colliding with an entity
; based on it's mechanics state (_RAM_C054_)
_DATA_7DA8_:
.dw killAlexIfColliding
.dw killAlexIfColliding
.dw doNotKillAlex
.dw killAlexIfColliding
.dw doNotKillAlex
.dw killAlexIfColliding
.dw killAlexIfColliding
.dw doNotKillAlex
.dw killAlexIfColliding
.dw killAlexIfColliding

killAlexIfColliding:
	ld iy, v_entity1
	call checkEntityCollision
	ret c
	set 7, (iy+1)

doNotKillAlex:
	ret

; 8th entry of Jump Table from 3B (indexed by v_gameState)
updateTextBoxState:
	exx
	bit 7, (hl)
	jp z, _LABEL_7ED3_
	ld a, $09
	call setAndWaitForInterruptFlags
	ld a, $01
	ld (v_nextMapNametableUpdateTimer), a
	ld hl, v_textBoxCounter
	bit 7, (hl)
	jp z, +
	res 7, (hl)
	dec (hl)
	set 7, (hl)
	jp nz, +++
	ld hl, (v_currentMapOrTextNametablePointer)
	inc hl
	jp ++

+:
	dec (hl)
	jp nz, +++
	ld hl, (v_currentMapOrTextNametablePointer)
++:
	ld a, (hl)
	ld (v_textBoxCounter), a
	inc hl
	ld a, (hl)
	ld (v_textBoxFlags), a
	inc hl
	ld (v_currentMapOrTextNametablePointer), hl
+++:
	ld a, (v_textBoxFlags)
	and $E0
	jp z, +++
	bit 7, a
	jp nz, ++
	rlca
	rlca
	jp c, +
	ld a, $08
	add a, (ix+12)
	ld (ix+12), a
	ret

+:
	ld a, (ix+12)
	sub $08
	ld (ix+12), a
	ret

++:
	rlca
	rlca
	jp c, +
	ld a, $08
	add a, (ix+14)
	ld (ix+14), a
	ret

+:
	ld a, (ix+14)
	sub $08
	ld (ix+14), a
	ret

+++:
	ld a, $B1
	ld (v_soundControl), a
	ld a, $82
	ld (Mapper_Slot2), a
	ld a, (v_shouldShowNuraiOrOldMan)
	or a
	jp z, _LABEL_7E5E_
	ld hl, (v_nuraiOrOldManEntityTemporaryPointer)
	push hl
	pop ix
	ld (ix+5), $0A
	ld (ix+6), $0A
_LABEL_7E5E_:
	ld a, $01
	call setAndWaitForInterruptFlags
	ld a, (v_inputData)
	and (JOY_FIREA | JOY_FIREB)
	jp nz, ++
	ld a, (v_shouldShowNuraiOrOldMan)
	or a
	jp z, +
	ld hl, (v_nuraiOrOldManEntityAnimationDescriptorTemporaryPointer)
	call handleEntityAnimation
	ld hl, _RAM_C700_
	ld (v_spriteTerminatorPointer), hl
	call updateEntitySprites
+:
	jp _LABEL_7E5E_

++:
	xor a
	ld (v_shouldShowNuraiOrOldMan), a
	ld hl, _RAM_C700_
	ld (hl), $E0
	ld de, _RAM_C700_ + 1
	ld bc, $0005
	ldir
	ld ix, $C300
	ld a, $89
	ld (v_gameState), a
	ld a, (v_hasJankenMatchStarted)
	or a
	jp nz, +
	ld a, $8A
	ld (v_gameState), a
	ld a, (v_shopFlags)
	or a
	jp z, +
	ld a, $85
	ld (v_gameState), a
+:
	call updateEntities
	ld a, $01
	call setAndWaitForInterruptFlags
	di
	call disableDisplay
	ld hl, _RAM_C800_
	ld de, $7800
	ld bc, $0700
	call writeBcBytesToVRAM
	call enableDisplay
	ei
	ret

_LABEL_7ED3_:
	ld a, $82
	ld (Mapper_Slot2), a
	call updateEntities
	ld a, $01
	call setAndWaitForInterruptFlags
	ld hl, v_gameState
	set 7, (hl)
	ld a, (v_hasJankenMatchStarted)
	or a
	jp z, +
	ld a, $84
	ld (v_soundControl), a
+:
	ld a, $87
	ld (Mapper_Slot2), a
	ld a, (v_messageToShowInTheTextBoxIndex)
	ld hl, _DATA_7F50_ - 2
	rst $10	; _LABEL_10_
	ld a, (hl)
	ld (v_textBoxCounter), a
	inc hl
	ld a, (hl)
	ld (v_textBoxFlags), a
	inc hl
	ld (v_currentMapOrTextNametablePointer), hl
	ld hl, $0100
	ld (_RAM_C074_), hl
	ld ix, v_textboxCursor
	ld (ix+14), $11
	ld (ix+12), $09
	xor a
	ld (v_messageToShowInTheTextBoxIndex), a
	ld (v_nextMapNametableUpdateTimer), a
	ld a, $94
	ld (v_soundControl), a
	ret

; 8th entry of Jump Table from 127 (indexed by v_gameState)
handleInterruptTextBoxState:
	ld a, (v_nextMapNametableUpdateTimer)
	or a
	ret z
	ld de, $0100
	call getTileNearEntityWithXYOffset
	ld a, h
	xor $B0
	ld h, a
	dec hl
	ex de, hl
	rst $08	; setVDPAddress
	ld hl, (v_currentMapOrTextNametablePointer)
	ld a, (hl)
	out (Port_VDPData), a
	ld a, $10
	out (Port_VDPData), a
	ld a, (v_textBoxCounter)
	bit 7, a
	ret nz
	inc hl
	ld (v_currentMapOrTextNametablePointer), hl
	ret

; Pointer Table from 7F50 to 7F7B (22 entries, indexed by v_messageToShowInTheTextBoxIndex)
_DATA_7F50_:
.dw _DATA_1F109_ _DATA_1F155_ _DATA_1F19D_ _DATA_1F32C_ _DATA_1F272_ _DATA_1F1B8_ _DATA_1F3E6_ _DATA_1F474_
.dw _DATA_1F497_ _DATA_1F4B8_ _DATA_1F4FA_ _DATA_1F569_ _DATA_1F664_ _DATA_1F7DC_ _DATA_1F8E5_ _DATA_1FA5D_
.dw _DATA_1FB41_ _DATA_1FB89_ _DATA_1FB89_ _DATA_1FB89_ _DATA_1FC48_ _DATA_1FC84_

.BANK 1 SLOT 1
.ORG $0000

; ROM header from 7FF0 to 7FFF (16 bytes)
.INCLUDE "header.asm"

.BANK 2
.ORG $0000

.INC "src/data/spriteDescriptors.asm"

; Data from 97DD to 97FF (35 bytes)
_DATA_97DD_:
.db $00 $04 $58 $59 $5B $5C $00 $04 $56 $66 $5B $6B $00 $00 $02 $69
.db $6A $00 $01 $21 $03 $86 $96 $78
.dsb 10, $00
.db $FF

; Data from 9800 to 984E (79 bytes)
_DATA_9800_:
.db $00 $00 $00 $01 $1E $00 $00 $01 $6E $00 $02 $9D $9E $00 $00 $00
.db $00 $00 $00 $03 $42 $8B $A4 $01 $A1 $03 $3E $4E $5E $02 $AB $84
.db $00 $00 $00 $00 $01 $32 $08 $2D $64 $74 $84 $91 $92 $93 $94 $01
.db $53 $00 $00 $00 $02 $71 $91 $00 $02 $6D $95 $00 $02 $64 $74 $00
.db $00 $01 $26 $01 $6E $00 $00 $03 $14 $1E $2E $02 $9E $AE $FF

.INCLUDE "audio.asm"

.INCLUDE "data.asm"
