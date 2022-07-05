.INCLUDE "defines.asm"
.INCLUDE "constants.asm"
.INCLUDE "structs.asm"
.INCLUDE "variables.asm"

.BANK 0 SLOT 0
.ORG $0000

start:
    di
    im 1
    ld sp, $DFF0
    jr init

; Set DE as VDP Address
setVdpAddress:
    ld a, e
    out (Port_VDPAddress), a
    ld a, d
    out (Port_VDPAddress), a
    ret

; Data from F to F (1 bytes)
.db $FF

loadAthPointer:
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

jumpToAthPointerIfBit7:
    bit 7, a
    ret z
    and $0F

; @param a jumptable index
; Fallthrough
jumpToAthPointer:
    add a, a

; @param hl jumptable
; @param a jumptable byte
jumpToPointerAtA:
    ld e, a
    ld d, $00
    add hl, de
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    jp (hl)


.ORG $30
; Copy B bytes from (HL) to VRAM (DE) onwards
memcpyToVRAM:
    rst setVdpAddress
    ld c, Port_VDPData
-:
    outi
    jr nz, -
    ret

handleInterruptEntrypoint:
    jp handleInterrupt

; Jump Table from 3B to 52 (12 entries, indexed by v_gameState)
gameStateMainLoopPointers:
.dw initOrUpdateTitleScreenState
.dw initOrUpdateTitleScreenState
.dw updateDemoState
.dw updateLevelStartingState
.dw updateLevelCompletedState
.dw updateShopState
.dw updateLifeLostState
.dw updateTextBoxState
.dw updateBonusLevelState
.dw initOrUpdateGameplayState
.dw initOrUpdateGameplayState
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
    rst jumpToAthPointer

    ; Loop
    jp mainLoop


.org $66
handlePauseInterrupt:
    push af
    ; Skip if alex is dead
    ld a, (v_alex.state)
    cp ALEX_DEAD
    jp z, +

    ld a, (v_disallowMap)
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
    call audioEngine.resetVolume

    ; Clear RAM
    ld hl, ramStart
    ld de, ramStart + 1
    ld bc, ramEnd - ramStart
    ld (hl), l
    ldir

    call sleepOneSecond
    call configurePPI

reset:
    ld a, $82
    ld (Mapper_Slot2), a

    ; Reset stack pointer
    ld sp, $DFF0

    call audioEngine.resetVolume
    call initVDPRegisters

    ; Clear VRAM tiles
    ld hl, $0000
    ld de, $4000
    ld bc, $3800
    call fillVram

    ; Enable interrupts, display and jump to main loop
    ei
    call enableDisplay
    jp initMainLoop


handleInterrupt:
    ; Save registers in the stack.
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

    ; Handle reset.
    in a, (Port_IOPort2)
    and $10
    ld hl, v_resetButtonState
    ld c, (hl)
    ld (hl), a
    xor c
    and c
    jp nz, reset

    ; Save mapper slot in the stack.
    ld a, (Mapper_Slot2)
    push af

    ; Update sprites if interrupt flags bit 0 is set.
    ld a, (v_interruptFlags)
    rrca
    push af
    call c, updateSprites

    call requestLevelTilesUpdateIfAlexTilesChanged

    ; Get v_interruptFlags bit 1, not used here.
    pop af
    rrca
    push af

    call readInput
    call updatePalette

    ; Get v_interruptFlags bit 2, not used here.
    pop af
    rrca
    push af
    call updateInvincibility

    ; Run interrupt handler if v_interruptFlags bit 3 is set.
    pop af
    rrca
    ld a, (v_gameState)
    ld hl, gameStateInterruptHandlersPointers
    call c, jumpToAthPointerIfBit7

    ld a, $82
    ld (Mapper_Slot2), a
    call audioEngine.update

    xor a
    ld (v_interruptFlags), a

    ; Restore registers and mapper slot from the stack.
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

    ; Enable interrupts, just in case.
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
    rst setVdpAddress
    pop af
    out (Port_VDPData), a
    ret

; Copy BC bytes from (HL) to VRAM DE
copyBytesToVRAM:
    rst setVdpAddress
    ld a, c
    or a
    jr z, +
    inc b
+:
    ld a, b
    ld b, c
    ld c, Port_VDPData

@loop:
    outi
    jp nz, @loop
    dec a
    jp nz, @loop
    ret

; @param de VDP destination
; @param b count
; @param HL source
; @param v_nametableCopyFlags flags
copyNametableEntriesToVRAM:
    rst setVdpAddress
    ld a, (v_nametableCopyFlags)
    ld c, Port_VDPData
-:
    outi
    push af
    pop af
    out (c), a
    jr nz, -
    ret

; Data from 168 to 17B (20 bytes)
copyBytesFromVRAM:
    rst setVdpAddress
    ld a, c
    or a
    jr z, +
    inc b
+:
    ld a, b
    ld b, c
    ld c, Port_VDPData
@loop:
    ini
    jp nz, @loop
    dec a
    jp nz, @loop
    ret

clearNameTable:
    ld de, $7800
    ld bc, $0700
    ld l, $00

; Copy the byte l to the first l bytes pointed by de
; de = target
; bc = length
; l = byte
fillVram:
    rst setVdpAddress
    ld a, c
    or a
    ld a, l
    jr z, @loop
    inc b
@loop:
    out (Port_VDPData), a
    dec c
    jr nz, @loop
    djnz @loop
    ret

; Copy CxB (WxH) tiles from HL to DE
copyNameTableBlockToVram:
    push bc
    rst setVdpAddress
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
    djnz copyNameTableBlockToVram
    ret


copyNameTableBlockToVramWithFlag:
    ld (v_nametableCopyFlags), a

    --:
    push bc
    rst setVdpAddress
    ld b,c
    ld c, Port_VDPData

    -:
    outi
    ld a, (v_nametableCopyFlags)
    nop
    out (c),a
    nop
    jp nz, -

    ex de,hl
    ld bc, $0040
    add hl,bc
    ex de, hl
    pop bc
    djnz --
    ret

clearNametableArea:
    ld hl, $0040
    rst setVdpAddress
    push bc
    xor a
-:
    out (Port_VDPData), a
    dec c
    jr nz, -
    add hl, de
    ex de, hl
    pop bc
    djnz clearNametableArea
    ret

load1bppTiles:
    ld (v_1bppTileColor), a
    rst setVdpAddress
--:
    ld a, (hl)
    exx
    ld c, Port_VDPData
    ld b, $04
    ld h, a
    ld a, (v_1bppTileColor)
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

updateSprites:
    ld a, (v_gameState)
    and $0F
    cp STATE_DEMO
    jr c, @oddUpdate

    ld hl, v_spriteFlickeringCounter
    inc (hl)
    bit 0, (hl)
    jr z, @evenUpdate

@oddUpdate:
    ; Copy Y positions
    ld hl, v_tempSprites
    ld de, $7F00
    ld bc,  $4000 | Port_VDPData
    rst setVdpAddress

@oddYLoop:
    outi
    jr nz, @oddYLoop

    ld hl, v_tempSprites + $80
    ld de, $7F80
    ld b, $80
    rst setVdpAddress

@oddXLoop:
    outi
    jr nz, @oddXLoop
    ret

@evenUpdate:
    ld a, (v_spriteTerminatorPointer)
    cp $13
    jr c, @oddUpdate

    ld hl, v_tempSprites
    ld bc,  $1100 | Port_VDPData
    ld de, $7F00
    rst setVdpAddress

@evenFixedYLoop:
    outi
    jr nz, @evenFixedYLoop

    ld hl, (v_spriteTerminatorPointer)
    ld a, l
    dec l
    sub $11
    ld b, a

@evenReversedYLoop:
    outd
    jr nz, @evenReversedYLoop

    ld a, $D0
    out (Port_VDPData), a

    ld hl, v_tempSprites + $80
    ld de, $7F80
    ld b, $22
    rst setVdpAddress

@evenFixedXLoop:
    outi
    jr nz, @evenFixedXLoop

    ld hl, (v_spriteTerminatorPointer)
    sla l
    set 7, l
    ld a, l
    sub $A2
    ld b, a

@evenReversedXLoop:
    dec l
    dec l
    outi
    outd
    jp nz, @evenReversedXLoop

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

.INCLUDE "engine/decompressTilesToVram.asm"

; Unknown data
.db $CF

copyMirroredTilesToVramAtCurrentAddress:
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
    jr nz, copyMirroredTilesToVramAtCurrentAddress
    ret

clearSprites:
    ld hl, v_tempSprites
    ld de, v_tempSprites + 1
    ld bc, $00BF
    ld (hl), $E0
    ldir
    ld a, $01

waitForInterrupt:
    ld hl, v_interruptFlags
    ld (hl), a
@loop:
    ld a, (hl)
    or a
    jr nz, @loop
    ret

disableDisplay:
    ld a, (v_VDPRegister1Value)
    and %10111111
    jr +

; @TODO: Also sets VDP Address, why?
enableDisplay:
    ld a, (v_VDPRegister1Value)
    or VDP_R1_DISPLAY_VISIBLE
+:
    ld (v_VDPRegister1Value), a
    ld e, a
    ld d, $81
    rst setVdpAddress
    ret

clearScroll:
    xor a
    ld (v_verticalScroll.high), a
    ld (_RAM_C0B0_), a
    ld e, a
    ld d, $89
    rst setVdpAddress
    dec d
    rst setVdpAddress
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
    ld hl, v_tempSprites
    ld de, v_tempSprites + 1
    ld bc, $00BF
    ld (hl), $E0
    ldir
    ld de, $8800
    rst setVdpAddress
    ld d, $89
    rst setVdpAddress

    ; Enable interrupts and wait
    ei
    ld a, $01
    call waitForInterrupt

    ; Disable interrupts
    di
    jp clearNameTable

; Wait almost a second
sleepOneSecond:
    ld b, $0A
sleepTenthsOfSecond:
    push bc
    ld bc, $3333
-:
    dec bc
    ld a, b
    or c
    jr nz, -
    pop bc
    djnz sleepTenthsOfSecond
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
    ; TODO: Return if Button B is pressed?
    ld a, (v_inputFlags)
    and JOY_FIREB
    ret nz

    ld bc, v_money
    ld de, moneyBagValues
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
    ; @TODO: Return if Button B is pressed?
    ld a, (v_inputFlags)
    and JOY_FIREB
    ret nz

    ld bc, v_score
    ld de, scores
    ld h, $00
    add hl, de
    call sumBCD
    ret nc

    ; Limit highScore to 999999
    ld hl, v_highScore
    ld c, $99
    ld (hl), c
    inc hl
    ld (hl), c
    inc hl
    ld (hl), c
    ret


; Sum three BCD bytes, writing back to hl.
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

; Subtract three BCD bytes, writing back to hl.
; @param bc - Pointer to first value
; @param hl - Pointer to second value and destination
subtractBCD:
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

subtractBCDToA:
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
    ld hl, v_highScore
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

drawThreeBcdBytes:
    ld c, $03
drawBCDDigits:
    call setVdpAddress
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
    ld a, (v_nametableCopyFlags)
    out (Port_VDPData), a
    pop af
    djnz -
    rld
    dec hl
    dec c
    jr nz, --
    ret

; Data from 483 to 488 (6 bytes)
moneyBagValues:
.db SMALL_MONEY_BAG_VALUE
.db BIG_MONEY_BAG_VALUE

; Data from 489 to 4A0 (24 bytes)
scores:
.db $20 $00 $00 ; 200
.db $40 $00 $00 ; 400
.db $60 $00 $00 ; 600
.db $80 $00 $00 ; 800
.db $00 $01 $00 ; 1000
.db $20 $01 $00 ; 1200
.db $00 $02 $00 ; 2000
.db $00 $10 $00 ; 10000

fillRegisters:
    inc hl
    ld e, (hl)
    inc hl
    ld d, (hl)
    inc hl
    ld b, (hl)
    inc hl
    ld a, (hl)
    ret

unusedCodeB:
    ld b, (hl)

    -:
    push bc
    call fillRegisters
    inc hl
    push hl
    ld h, (hl)
    ld l, a
    call copyNametableEntriesToVRAM
    pop hl
    pop bc
    djnz -
    ret

unusedCodeC:
    ex af, af'

    ld a, $80 | :oneBppCharacters
    ld (Mapper_Slot2), a

    ex af, af'
    ld de, 0x4400
    ld bc, 0x0200
    ld hl, oneBppCharacters
    jp load1bppTiles

.INCLUDE "unknownAnimate.asm"

; Unused
; @TODO Study division
divideHLByE:
    ld b, $11
    xor a
    jp +

    -:
    adc a, a
    jr c, ++
    cp e
    jr c, +++

    ++:
    sub e
    or a

    +++:
    ccf

    +:
    adc hl, hl
    djnz -

    ret

.INCLUDE "engine/states/title/update.asm"

.INCLUDE "data/initialValues.asm"

.INCLUDE "engine/states/title/handleInterrupt.asm"
.INCLUDE "engine/states/title/loadSprites.asm"
.INCLUDE "engine/states/title/createEntities.asm"
.INCLUDE "engine/entity/clearEntities.asm"
.INCLUDE "engine/states/demo/update.asm"
.INCLUDE "engine/states/demo/handleInterrupt.asm"

.INCLUDE "data/demoInputPointers.asm"

.INCLUDE "engine/states/gameplay/update.asm"
.INCLUDE "engine/states/gameplay/handleInterrupt.asm"
.INCLUDE "engine/states/gameplay/init.asm"

.INCLUDE "data/levels/scrollFlagsUpdatersPointers.asm"
.INCLUDE "data/levels/paletteUpdatersPointers.asm"
.INCLUDE "data/levels/entityLoadersPointers.asm"
.INCLUDE "data/levels/shopDoorsConfigs.asm"
.INCLUDE "data/levels/startingPositions.asm"
.INCLUDE "data/levels/songs.asm"
.INCLUDE "data/questionMarkBoxItems.asm"
.INCLUDE "data/levels/spawnStates.asm"
.INCLUDE "data/levels/questionMarkBoxIndexes.asm"

.INCLUDE "engine/decompressNametable.asm"

.INCLUDE "engine/loadLevelTiles.asm"
.INCLUDE "tilesetLoaders.asm"

.INCLUDE "engine/updatePalette.asm"
.INCLUDE "paletteUpdaters.asm"

.INCLUDE "engine/loadLevelPalette.asm"
.INCLUDE "data/levels/palettePointers.asm"

.INCLUDE "engine/loadLevelSpriteTiles.asm"
.INCLUDE "spriteTileLoaders.asm"

.INCLUDE "data/levels/tileUpdatersPointers.asm"
.INCLUDE "engine/updateLevelTiles.asm"

.INCLUDE "tileUpdaters.asm"

.INCLUDE "engine/states/bonus/update.asm"
.INCLUDE "engine/states/bonus/handleInterrupt.asm"

.INCLUDE "engine/states/levelCompleted/handleInterrupt.asm"
.INCLUDE "engine/states/levelCompleted/update.asm"

.INCLUDE "engine/states/levelStarting/update.asm"
.INCLUDE "engine/states/levelStarting/handleInterrupt.asm"
.INCLUDE "engine/states/levelStarting/init.asm"


.INCLUDE "entities/arrow/update.asm"
.INCLUDE "entities/jankensCastle/update.asm"

.INCLUDE "data/levelStartingPalette.asm"

.INCLUDE "data/mapArrowPositions.asm"

.INCLUDE "engine/states/shop/update.asm"
.INCLUDE "engine/states/shop/handleInterrupt.asm"

.INCLUDE "engine/states/map/update.asm"
.INCLUDE "engine/states/map/handleInterrupt.asm"

updateInvincibility:
    ; Return if v_alexActionState isn't ALEX_C054_STATE_1 or ALEX_C054_INVINCIBLE.
    ld a, (v_alexActionState)
    or a
    ret z
    cp $03
    ret nc

    ; Tick invincibility and return.
    ld hl, (v_invincibilityTimer)
    ld a, h
    or l
    jr z, +
    dec hl
    ld (v_invincibilityTimer), hl
    ret

+:
    ; Stop Teleport Power sfx.
    ld a, SOUND_FX_CUT
    ld (v_soundControl), a

    ; Reset v_alexActionState.
    xor a
    ld (v_alexActionState), a

    ; Restore clothes color.
    ld a, $03
    ld de, $C014
    jp writeAToVRAM

.INCLUDE "data/hirottaStoneCloseUpPalette.asm"

.INCLUDE "engine/entity/entity.asm"

.INCLUDE "entities/updatersPointers.asm"

.INCLUDE "entities/alex/updater.asm"

.INCLUDE "entities/alex/updaters/updateSpawning.asm"

; Used by map state interrupt handler
_LABEL_2A6E_:
    ld (ix + Entity.animationTimerResetValue), $05
    ld (ix + Entity.unknown11), $18
    ld (ix + Entity.unknown9), $08
    ld (ix + Entity.state), $07
    ld hl, alexIdleRightSpriteDescriptor
    jp loadAlexSpriteDescriptor

startAutoWalkRight:
    ld (ix + Entity.animationTimerResetValue), $05
    ld (ix + Entity.unknown11), $18
    ld (ix + Entity.unknown9), $08
    ld (ix + Entity.state), ALEX_AUTO_WALKING_RIGHT
    ld (ix + Entity.yPos.high), $98
    ld hl, alexIdleRightSpriteDescriptor
    jp loadAlexSpriteDescriptor

.INCLUDE "entities/alex/updaters.asm"

.INCLUDE "entities/entity0x62.asm"

_LABEL_39ED_:
    push bc
    call isEntityCollidingWithTerrainAtOffset
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

; ix: *Entity
; d: Y offset
; e: X offset
; a: ?
; c: ?
isEntityCollidingWithTerrainAtOffset:
    ; Save a
    ex af, af'

    ; TODO: Params
    call getNearEntityTileAttrWithOffset

    ; Return of attr bit 0 is set
    rlca
    ret c

    ; Restore a
    ex af, af'


    ld d, a
    call _LABEL_7CA3_
    ld a, (hl)
    rlca
    ret

_LABEL_3A11_:
    ld a, (v_alex.xPos.high)
    add a, e
    ld e, a
    ex af, af'
    ld a, (v_alex.yPos.high)
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
    call getNearEntityTileAttrWithOffset
    rlca
    ret c
    ex af, af'

    ld e, a
    call _LABEL_7C94_
    ld a, (hl)
    rlca
    ret

_LABEL_3A4F_:
    ld a, (v_alex.yPos.high)
    add a, $40
    add a, d
    ld d, a
    ld a, (v_alex.xPos.high)
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
    ld hl, (v_alex.ySpeed)
    ld bc, ALEX_GRAVITY
    add hl, bc
    ld (v_alex.ySpeed), hl
    jr nc, +
    set 7, (ix+20)
+:
    bit 7, (ix+20)
    jr nz, +
_LABEL_3A7E_:
    ld a, (v_alex.isOffScreenFlags.high)
    or a
    ret nz
    ld a, (v_alex.unknown9)
    call _LABEL_3A41_
    ret nc
    set 7, (ix+20)
    ld hl, $0000
    ld (v_alex.ySpeed), hl
    ret

+:
    ld a, h
    cp $04
    jr c, +
    ld (ix+17), $00
+:
    ld a, (v_alex.unknown11)
    add a, h
    ld d, a
    ld a, (v_alex.isOffScreenFlags.high)
    or a
    jr z, +
    ld a, (v_alex.yPos.high)
    add a, $40
    add a, d
    ret nc
    ld d, a
    ld a, (v_alex.xPos.high)
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
    ld a, (v_alex.unknown9)
    call _LABEL_3A41_
    ret nc
_LABEL_3AD5_:
    ld a, b
    and $07
    neg
    add a, (ix+18)
    ld h, a
    ld l, $00
    ld (v_alex.ySpeed), hl
    set 6, (ix+20)
    ret

_LABEL_3AE8_:
    ld hl, (v_alex.ySpeed)
    ld bc, $0040
    add hl, bc
    ld (v_alex.ySpeed), hl
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
    call getNearEntityTileAttrWithOffset
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

accelerateAlexLeft:
    ld a, (v_alex.unknown3)
    or $04
    and $FC
    ld (v_alex.unknown3), a
    set 2, (ix+20)
    ld hl, (v_alex.xSpeed)
    add hl, de
    ld e, l
    ld d, h
    or a
    sbc hl, bc
    jr nc, +
    ld e, c
    ld d, b
+:
    ld (v_alex.xSpeed), de
    ret

_LABEL_3B4B_:
    bit 2, (ix+20)
    ret z
applyFrictionMovingLeft:
    ld hl, (v_alex.xSpeed)
    add hl, de
    jr nc, +
resetEntityUnknown3AndAlexSpeed:
    res 2, (ix + Entity.unknown3)
    ld hl, $0000
+:
    ld (v_alex.xSpeed), hl
    ret

leftBrake:
    ld a, (v_alex.unknown3)
    bit 2, a
    jr z, +
    set ALEX_UKNW3_FACING_RIGHT_BIT, a
    ld hl, (v_alex.xSpeed)
    add hl, de
    jr nc, ++
+:
    or $03
    and $FB
    ld hl, $0000
++:
    ld (v_alex.xSpeed), hl
    ld (v_alex.unknown3), a
    ret

accelerateAlexRight:
    ld a, (v_alex.unknown3)
    or 0b00000111
    ld (v_alex.unknown3), a

    set 2, (ix + Entity.unknown3)

    ld hl, (v_alex.xSpeed)
    add hl, de

    ld e, l
    ld d, h

    or a
    sbc hl, bc
    jr c, +
    ld e, c
    ld d, b
+:
    ld (v_alex.xSpeed), de
    ret

_LABEL_3B9C_:
    bit 2, (ix+20)
    ret z
applyFrictionMovingRight:
    ld hl, (v_alex.xSpeed)
    or a
    adc hl, de
    jp nc, resetEntityUnknown3AndAlexSpeed
    jp z, resetEntityUnknown3AndAlexSpeed
    ld (v_alex.xSpeed), hl
    ret

rightBrake:
    ld a, (v_alex.unknown3)
    bit 2, a
    jr z, +
    and $FE
    ld hl, (v_alex.xSpeed)
    adc hl, de
    jr z, +
    jr c, ++
+:
    ld hl, $0000
    and $F8
++:
    ld (v_alex.xSpeed), hl
    ld (v_alex.unknown3), a
    ret

_LABEL_3BCF_:
    ld hl, (v_alex.xSpeed)
    add hl, de
    ld e, l
    ld d, h
    or a
    sbc hl, bc
    jr nc, +
    ld e, c
    ld d, b
+:
    ld (v_alex.xSpeed), de
    ret

_LABEL_3BE1_:
    set 4, (ix+20)
    ld hl, (v_alex.ySpeed)
    add hl, de
    ld e, l
    ld d, h
    or a
    sbc hl, bc
    jr nc, +
    ld e, c
    ld d, b
+:
    ld (v_alex.ySpeed), de
    ret

_LABEL_3BF7_:
    ld a, (v_alex.unknown3)
    bit 4, a
    jr z, +
    ld hl, (v_alex.ySpeed)
    add hl, de
    jr nc, ++
+:
    or $08
    and $EF
    ld hl, $0000
++:
    ld (v_alex.ySpeed), hl
    ld (v_alex.unknown3), a
    ret

_LABEL_3C12_:
    set 4, (ix+20)
    ld hl, (v_alex.ySpeed)
    add hl, de
    ld e, l
    ld d, h
    or a
    sbc hl, bc
    jr c, +
    ld e, c
    ld d, b
+:
    ld (v_alex.ySpeed), de
    ret

_LABEL_3C28_:
    ld a, (v_alex.unknown3)
    bit 4, a
    jr z, +
    ld hl, (v_alex.ySpeed)
    or a
    adc hl, de
    jr z, +
    jr c, ++
+:
    ld hl, $0000
    and $E7
++:
    ld (v_alex.ySpeed), hl
    ld (v_alex.unknown3), a
    ret

interactWithTile:
    ld de, $0C08

interactWithTileAtOffset:
    ; @TODO
    xor a
    ld (v_nametableEntryAttrLastThreeBits), a

    ; Return if offscreen
    ld a, (v_alex.isOffScreenFlags.high)
    or a
    ret nz

    call getNearEntityTileAttrWithOffset

    ; Kill Alex if inside an solid block
    bit TILE_SOLID_BIT, a
    jp nz, setAlexDeathBit

    ; @TODO
    bit 6, a
    jp z, +

    ; Shop door
    bit TILE_SHOP_DOOR_BIT, a
    jr nz, interactWithShopDoor

    ; @TODO
    dec hl
    ld a, (hl)
    sub $90
    jr nc, @indexGreaterOrEqualThan90

    ; @TODO: Update tile address low byte
    ; Maybe round down to the nearest multiple of 4?
    ld a, l
    and $BC
    ld l, a

    ; @TODO: This handles some scroll edge case
    ld a, (_RAM_C0B0_)
    rra
    rra
    add a, l
    and $3E
    cp $3E
    ret z

    ; Save nametable pointer
    push hl

    ld l, $00
    call takeMoney

    ld a, SOUND_COINS
    ld (v_soundControl), a

    ; Restore nametable pointer
    pop hl

    ld a, (v_nametableChangeRequest)
    or a
    ret nz

    ld (v_nametableChangeDestination), hl
    jp requestNametableChangeBackground

+:
    and $E0
    cp $20
    ret nz
    ld (v_nametableEntryAttrLastThreeBits), a
    ret

@indexGreaterOrEqualThan90:
    ld e, a
    ld d, $00
    ld hl, _DATA_3CA3_
    add hl, de
    ld a, (hl)
    ld (v_shopSelectedItemIndex), a
    ret

; Data from 3CA3 to 3CCE (44 bytes)
_DATA_3CA3_:
.db $01
.db $01
.db $02
.db $02
.db $02
.db $03
.db $03
.db $03
.db $03
.db $04
.db $04
.db $04
.db $04
.db $05
.db $05
.db $05
.db $05
.db $06
.db $06
.db $06
.db $07
.db $07
.db $07
.db $07
.db $08
.db $08
.db $08
.db $08
.db $09
.db $09
.db $09
.db $09
.db $0A
.db $0A
.db $0A
.db $0A
.db $0B
.db $0B
.db $0B
.db $0B
.db $0C
.db $0C
.db $0C
.db $0C

interactWithShopDoor:
    dec hl
    ld a, (hl)
    ld (_RAM_C211_), hl
    cp $70
    jr c, +
    ld a, (v_alex.state)
    cp ALEX_IDLE
    ret nz
    ld a, (v_alex.xPos.high)
    cp $18
    ret c
    ld a, (v_inputData)
    bit JOY_UP_BIT, a
    ret z
    ld (ix + Entity.state), ALEX_REACHING_DOOR
    ret

+:
    cp $3F
    jr z, +

setAlexDeathBit:
    set 7, (ix + Entity.flags)
    ret

+:
    ld a, (v_inputData)
    bit JOY_UP_BIT, a
    ret z
    ld hl, $FF00
    ld (v_alex.ySpeed), hl
    jp _LABEL_3230_

interactWithFloor:
    ld de, $1808
interactWithFloorWithOffset:
    ld a, (v_alex.isOffScreenFlags.high)
    or a
    ret nz
    call getNearEntityTileAttrWithOffset
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
    jp jumpToAthPointer

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
    ld a, SOUND_COINS
    ld (v_soundControl), a
    ld a, (hl)
    cp $0A
    ret c
    ld iy, v_entities.6
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
    ld c, ENTITY_GHOST
    jp spawnEntityAt

; 17th entry of Jump Table from 3D2B (indexed by _RAM_C802_)
_LABEL_3DBF_:
    ld hl, v_nextGhostSpawnTimer
    dec (hl)
    ret p
    ld (hl), $7F
    ld e, (ix + Entity.xPos.high)
    ld a, (v_alex.yPos.high)
    add a, $18
    ld d, a
    ld c, ENTITY_GHOST
    jp spawnEntityAt

_LABEL_3DD4_:
    jr z, +
    ld a, (v_inputDataChanges)
    bit JOY_DOWN_BIT, a
    ret z
    ld (ix + Entity.state), $11
    ret

+:
    ld a, (v_inputData)
    bit JOY_DOWN_BIT, a
    ret z
    ld hl, $0100
    ld (v_alex.ySpeed), hl
    jp _LABEL_3230_

; Data from 3DF0 to 3DFA (11 bytes)
_DATA_3DF0_:
.db $05 $01 $02 $03 $05 $02 $01 $04 $03 $04 $FF

idleAndTickJitter:
    ld (ix + Entity.state), ALEX_IDLE
    jr tickJitter

_LABEL_3E01_:
    ld hl, $0000
    ld (v_alex.ySpeed), hl
    res 4, (ix+20)

tickJitter:
    dec (ix+24)
    jr z, ++
    ld hl, $FF80
    bit 1, (ix+24)
    jr z, +
    ld hl, $0080
+:
    ld (v_alex.xSpeed), hl
    ret

++:
    res 2, (ix+20)
    ld hl, $0000
    ld (v_alex.xSpeed), hl
    res 4, (ix+28)
    ret

.INCLUDE "entities/entity0x60.asm"

; Jump Table from 3E38 to 3E3F (4 entries, indexed by _RAM_CF9A_)
_DATA_3E38_:
.dw _LABEL_3E40_ _LABEL_3E50_ _LABEL_3E90_ _LABEL_3EA6_

; 1st entry of Jump Table from 3E38 (indexed by _RAM_CF9A_)
_LABEL_3E40_:
    ld (ix+9), $00
    ld (ix+7), <nullSpriteDescriptor
    ld (ix+8), >nullSpriteDescriptor
    inc (ix + Entity.state)
    ret

; 2nd entry of Jump Table from 3E38 (indexed by _RAM_CF9A_)
_LABEL_3E50_:
    ld a, (v_alex.state)
    cp ALEX_IDLE
    ret nz
    ld a, (ix+10)
    or (ix+9)
    ret nz
    ld iy, v_alex
    call checkEntityCollision
    ret c

    // @TODO: Understand this state
    ld a, $1A
    ld (v_alex.state), a
    inc (ix + Entity.state)
    ld (ix+5), $1E
    ld iy, v_entities.27
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
    inc (ix + Entity.state)
    ld iy, v_entities.28
    ld hl, $8A27
    ld c, $87
    jr -

; 4th entry of Jump Table from 3E38 (indexed by _RAM_CF9A_)
_LABEL_3EA6_:
    dec (ix+5)
    ret nz
    ld a, ALEX_IDLE
    ld (v_alex.state), a
    ld a, $89
    ld (v_nametableChangeRequest), a
    ld hl, v_entities.27
    call clearEntity
    inc hl
    call clearEntity
    jp destroyCurrentEntity

.INCLUDE "entities/entity0x61.asm"
.INCLUDE "entities/entity0x63.asm"

; Jump Table from 3F3A to 3F5B (17 entries, indexed by v_level)
_DATA_3F3A_:
.dw _LABEL_3F5C_ _LABEL_3F75_ _LABEL_3F75_ _LABEL_3F75_ _LABEL_3FD1_ _LABEL_3F75_ _LABEL_3F75_ _LABEL_3F75_
.dw _LABEL_3FD1_ _LABEL_3F75_ _LABEL_4025_ _LABEL_3F75_ _LABEL_3F6D_ _LABEL_3F75_ _LABEL_3F75_ _LABEL_4025_
.dw _LABEL_3F5C_

; 1st entry of Jump Table from 3F3A (indexed by v_level)
_LABEL_3F5C_:
    call _LABEL_40E7_
    ld hl, (v_alex.xSpeed)
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
    ld e, (ix + Entity.state)
    ld hl, _DATA_3FB1_
    ld d, $00
    add hl, de
    ld a, (hl)
    or a
    jr nz, +
    ld hl, (v_alex.xSpeed)
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, $60
    add a, h
    ld b, a
    jp _LABEL_4124_

+:
    ld a, (v_alex.xPos.high)
    ld b, $40
    cp $44
    jp c, _LABEL_4124_
    ld a, (v_scrollFlags)
    and SCROLL_RIGHT
    ret z
    ld de, (v_alex.xSpeed)
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
    ld a, (v_alex.state)
    cp $1B
    jr z, +
    cp ALEX_DIVING
    jp nz, _LABEL_3F75_
    jp +++

+:
    ld a, (_RAM_C0B7_)
    and $02
    jr z, ++
    ld a, (v_alex.yPos.high)
    cp $90
    jr c, +
    ld hl, $0000
    ld (v_alex.ySpeed), hl
+:
    ld hl, $FF00
    ld (v_horizontalScrollSpeed), hl
    ld hl, $0100
    ld (v_alex.xSpeed), hl

.IFDEF _REV1
    .BANK 1 SLOT 1
    .ORG $0000
.ENDIF

    ret


++:
    ld (ix+26), $13
    push ix

.IFDEF _REV0
    .BANK 1 SLOT 1
    .ORG $0000
.ENDIF

    call _LABEL_6671_
    pop ix
    ld hl, v_scrollFlags
    set SCROLL_DOWN_BIT, (hl)
+++:
    ld a, (v_alex.yPos.high)
    cp $08
    jr nc, +
    ld hl, $0300
    ld (v_alex.ySpeed), hl
+:
    ld hl, $0300
    ld (v_verticalScrollSpeed), hl
    ret

; 11th entry of Jump Table from 3F3A (indexed by v_level)
_LABEL_4025_:
    ld hl, v_scrollFlags
    ld a, (hl)
    and SCROLL_ANY
    jp z, +
    rrca
    jp c, _LABEL_40CB_
    rrca
    jp c, _LABEL_40E0_
    rrca
    jp c, _LABEL_4090_
    jp _LABEL_40AF_

+:
    ld a, (v_alex.yPos.high)
    cp $A8
    jr c, +
    ld a, (v_alex.unknown3)
    bit 3, a
    jp nz, _LABEL_40B6_
    bit 7, a
    jp z, _LABEL_40D2_
    bit 6, a
    jp nz, _LABEL_40B6_
    ld hl, (v_alex.ySpeed)
    ld a, l
    or h
    jp z, _LABEL_40D2_
    jp _LABEL_40B6_

+:
    ld a, (v_alex.state)
    ld b, $F0
    cp ALEX_SWIMING
    jr nz, +
    ld b, $E8
+:
    ld a, (v_alex.xPos.high)
    cp b
    ret c
    bit 1, (ix+20)
    jp nz, ++
    call _LABEL_3320_
    ld hl, v_scrollFlags
    set SCROLL_LEFT_BIT, (hl)
    ld a, (v_alexStateTemporaryCopy)
    cp $05
    ld hl, $FFC0
    jr nz, +
    ld hl, $FFA0
+:
    ld (v_alex.xSpeed), hl
_LABEL_4090_:
    ld hl, $0400
    ld (v_horizontalScrollSpeed), hl
    ret

++:
    call _LABEL_3320_
    ld hl, v_scrollFlags
    set SCROLL_RIGHT_BIT, (hl)
    ld a, (v_alexStateTemporaryCopy)
    cp $05
    ld hl, $0040
    jr nz, +
    ld hl, $0060
+:
    ld (v_alex.xSpeed), hl
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
    set SCROLL_DOWN_BIT, (hl)
    ld hl, $0080
    ld (v_alex.ySpeed), hl
_LABEL_40CB_:
    ld hl, $0400
    ld (v_verticalScrollSpeed), hl
    ret

_LABEL_40D2_:
    call _LABEL_3320_
    ld hl, v_scrollFlags
    set SCROLL_UP_BIT, (hl)
    ld hl, $FF80
    ld (v_alex.ySpeed), hl
_LABEL_40E0_:
    ld hl, $FC00
    ld (v_verticalScrollSpeed), hl
    ret

_LABEL_40E7_:
    ld hl, v_scrollFlags
    ld a, (hl)
    and SCROLL_UP | SCROLL_DOWN
    jp z, _LABEL_415E_
    ld a, (v_alex.yPos.high)
    bit 7, (ix+18)
    jr nz, ++
    bit 0, (hl)
    jr z, +
    cp $50
    ret c
    ld a, (v_alex.isOffScreenFlags.high)
    or a
    ret nz
    ld hl, (v_alex.ySpeed)
    ld (v_verticalScrollSpeed), hl
    ret

+:
    cp $A8
    ret c
    ld hl, $0000
    ld (v_alex.ySpeed), hl
    res 4, (ix+20)
    ret

++:
    ret

; Data from 411B to 4123 (9 bytes)
.db $FE $04 $D0 $DD $CB $14 $FE $18 $EB

_LABEL_4124_:
    ld a, (v_scrollFlags)
    ld c, a
    ld a, (v_alex.xPos.high)
    ld de, (v_alex.xSpeed)
    bit 7, d
    jr z, ++
    bit SCROLL_LEFT_BIT, c
    jr nz, +
    cp $04
    ret nc
    call resetEntityUnknown3AndAlexSpeed
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
    bit SCROLL_RIGHT_BIT, c
    jr nz, +
    cp $F4
    ret c
    call resetEntityUnknown3AndAlexSpeed
    ld (v_horizontalScrollSpeed), hl
    ret

+:
    cp b
    ret c
    jr -

_LABEL_415E_:
    ld a, (v_alex.state)
    // @TODO: Understand this state
    cp $07
    ret c
    ld a, (v_alex.yPos.high)
    bit 7, (ix+18)
    jr nz, +
    ld a, (v_alex.isOffScreenFlags.high)
    or a
    ret nz
    cp $A8
    ret c
-:
    ld hl, $0000
    ld (v_alex.ySpeed), hl
    res 4, (ix+20)
    ret

+:
    cp $04
    ret nc
    set 7, (ix+20)
    jr -

loadAlexAnimationDescriptor:
    ld d, (hl)
    inc hl
    ld a, (v_alex.animationFrame)
    dec (ix + Entity.animationTimer)
    jr nz, +
    ld e, (ix + Entity.animationTimerResetValue)
    ld (ix + Entity.animationTimer), e
    inc a
+:
    cp d
    jr c, +
    xor a
+:
    ld (v_alex.animationFrame), a
    add a, a
    ld e, a
    ld d, $00
    add hl, de
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
loadAlexSpriteDescriptor:
    ld a, (hl)
    inc hl
    ld (v_alexTilesIndex), a
    ld (v_alex.spriteDescriptorPointer), hl
    ret


requestLevelTilesUpdateIfAlexTilesChanged:
    ld hl, v_alexTilesIndex
    ld a, (hl)
    inc hl
    cp (hl)
    ret z

    ld (hl), a
    ld hl, v_shouldUpdateLevelTiles
    ld (hl), $01

; Load tiles from Alex tile descriptors to VRAM $2000.
;
; @param a - Index to Alex tile descriptors pointers
loadAlexTilesToVRAM2000:
    add a, a
    ld c, a
    ld b, $00
    ld de, $6000
    rst setVdpAddress

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

handleNametableChangeRequest:
    ld hl, v_nametableChangeRequest
    ld a, (hl)
    ld (hl), $00
    add a, a
    ret nc
    ld hl, nametableChangeHandlersPointers
    jp jumpToPointerAtA

; Jump Table from 4237 to 424A (10 entries, indexed by v_nametableChangeRequest)
nametableChangeHandlersPointers:
.dw _LABEL_424B_
.dw handleShopDoorNametableChange
.dw _LABEL_434F_
.dw _LABEL_42C3_
.dw _LABEL_42B6_
.dw _LABEL_4B9E_
.dw _LABEL_4BF3_
.dw _LABEL_4BCD_
.dw _LABEL_437D_
.dw _LABEL_43CA_

; 1st entry of Jump Table from 4237 (indexed by v_nametableChangeRequest)
_LABEL_424B_:
    ld a, $85
    ld (Mapper_Slot2), a
    ld a, (_RAM_C08E_)
    or a
    jr z, ++
    ld a, (v_verticalScroll.high)
    and $F0
    ld c, a
    ld hl, (v_nametableChangeDestination)
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
    ld hl, (targetBase_RAM_C07A_)
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
    ld de, (v_nametableChangeDestination)
    ld hl, (nametableChangeSourceMetatile)
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
    ld de, (v_nametableChangeDestination)
    ld hl, (nametableChangeSourceMetatile)
    ld a, d
    sub $50
    ld d, a
    ld bc, $0204
    call copyNameTableBlockToVram
    ret

; 5th entry of Jump Table from 4237 (indexed by v_nametableChangeRequest)
_LABEL_42B6_:
    ld de, (v_shopDoorNametablePointer)
    call ++
    ld hl, _DATA_14410_
    jp +

; 4th entry of Jump Table from 4237 (indexed by v_nametableChangeRequest)
_LABEL_42C3_:
    ld de, (v_shopDoorNametablePointer)
    call ++
    ld hl, _DATA_14400_
+:
    ld de, (v_nametableChangeDestination)
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
    ld hl, waterMetatile
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
    ld (v_nametableChangeDestination), de
    ld de, (v_shopDoorNametablePointer)
    ld a, d
    sub $50
    ld d, a
    ld b, $03
-:
    push bc
    ld hl, waterMetatile
    ld b, $08
    rst memcpyToVRAM
    ld hl, $0040
    add hl, de
    ex de, hl
    pop bc
    djnz -
    ld hl, _DATA_14400_
    ld bc, $0208
    jp copyNameTableBlockToVram

; 2nd entry of Jump Table from 4237 (indexed by v_nametableChangeRequest)
handleShopDoorNametableChange:
    ld hl, (v_shopDoorNametablePointer)
    inc hl
    ld e, l
    ld a, h
    sub $50
    ld d, a
    ld bc, $0204
    jp _LABEL_435F_

; 3rd entry of Jump Table from 4237 (indexed by v_nametableChangeRequest)
_LABEL_434F_:
    ld hl, (v_shopDoorNametablePointer)
    inc hl
    ld de, $00C0
    add hl, de
    ld e, l
    ld a, h
    sub $50
    ld d, a
    ld bc, $0404
_LABEL_435F_:
    rst setVdpAddress
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

; 9th entry of Jump Table from 4237 (indexed by v_nametableChangeRequest)
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
    ld hl, jankenPetrificationTable
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
    rst memcpyToVRAM
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
    ld (v_nametableChangeRequest), a
    ret

; 10th entry of Jump Table from 4237 (indexed by v_nametableChangeRequest)
_LABEL_43CA_:
    ld a, $85
    ld (Mapper_Slot2), a
    ld hl, _DATA_14420_
    ld de, $7BB4
    ld bc, $0608
    call copyNameTableBlockToVram
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
    ld a, SOUND_BASE_SONG
    ld (v_soundControl), a
    ld (ix+28), $04
    ld (ix+26), $03
    ld (ix+20), $03
    ld hl, $FE00
    ld (v_alex.ySpeed), hl
    ld hl, $0000
    ld (v_alex.xSpeed), hl
    ld hl, alexIdleRightSpriteDescriptor
    call loadAlexSpriteDescriptor
_LABEL_4415_:
    ld (ix+31), $18
    ld (ix+29), $08
    xor a
    ld (v_alexActionState), a
    ld iy, v_entities.4
    ld a, (v_alex.xPos.high)
    add a, $08
    ld (v_entities.4.xPos.high), a
    ld a, (v_alex.yPos.high)
    add a, $10
    ld (v_entities.4.yPos.high), a
    ld (iy+0), $03
    ld (iy+25), $14
    ld (iy+5), $04
    ld (iy+6), $04
    ret

; 3rd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
.INCLUDE "entities/entity0x03.asm"

; 9th entry of Jump Table from 4523 (indexed by v_alexActionState)
_LABEL_4453_:
    ld a, SOUND_BULLET
    ld (v_soundControl), a
    ld hl, v_alex.unknown8
    ld a, (hl)
    or $09
    ld (hl), a
    ld a, (v_alex.yPos.high)
    add a, $10
    ld (v_entities.2.yPos.high), a
    ld a, (v_alex.xPos.high)
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

.INCLUDE "entities/entity0x02.asm"
.INCLUDE "entities/entity0x04.asm"

_LABEL_44E2_:
    bit 0, (ix+28)
    ret nz
    ld hl, v_alex.unknown8
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

handleAction:
    bit 0, (ix+28)
    ret nz
    ld a, (v_alex.isOffScreenFlags.high)
    or a
    ret nz
    ld a, (v_gameState)
    and $0F
    cp $05
    ret z
    ld a, (v_alexActionState)
    ld hl, actionHandlersPointers
    jp jumpToAthPointer

; Jump Table from 4523 to 453E (14 entries, indexed by v_alexActionState)
actionHandlersPointers:
.dw punch
.dw punch
.dw punch
.dw _LABEL_4641_
.dw _LABEL_464E_
.dw _LABEL_48C5_
.dw punch
.dw _LABEL_468F_
.dw _LABEL_4453_
.dw _LABEL_4453_
.dw punch
.dw punch
.dw punch
.dw punch

; 1st entry of Jump Table from 4523 (indexed by v_alexActionState)
punch:
    ld hl, v_alex.unknown8
    ld a, (hl)
    or $09
    ld (hl), a
    ld (ix + Entity.unknown7), ALEX_PUNCH_TIME
    bit ALEX_UKNW3_FACING_RIGHT_BIT, (ix + Entity.unknown3)
    jr nz, +
    ld hl, alexPunchingLeftSpriteDescriptor
    ld de, $0CF9
    jr _LABEL_455E_

+:
    ld hl, alexPunchingRightSpriteDescriptor
    ld de, $0C17

_LABEL_455E_:
    ld a, SOUND_PUNCH
    ld (v_soundControl), a
    call loadAlexSpriteDescriptor
    ld a, (v_alex.xPos.high)
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
    ld (v_nametableChangeDestination), hl
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
    call requestBlockSound
    bit 5, b
    jr z, requestNametableChangeBackground
    exx
    ld a, d
    exx
    ld c, e
    ld b, d
    ld hl, _DATA_45D9_ - 2
    rst jumpToAthPointer

requestNametableChangeBackground:
    ; Choose metatile based on alex state.
    ld a, (v_alex.state)
    cp ALEX_SWIMING
    ld hl, backgroundMetatile
    jr nz, @notSwiming
    ld hl, waterMetatile
    @notSwiming:

    ; @TODO
    ld a, $85
    ld (_RAM_C203_), a

    ; Request nametable change
    ld (nametableChangeSourceMetatile), hl
    ld a, $80
    ld (v_nametableChangeRequest), a
    ret

; Jump Table from 45D9 to 45F0 (12 entries, indexed by _RAM_C804_)
_DATA_45D9_:
.dw _LABEL_45F1_ _LABEL_45F1_ _LABEL_45F1_ _LABEL_45F1_ _LABEL_4615_ _LABEL_4615_ _LABEL_4615_ _LABEL_4615_
.dw spawnMoneyBagAt spawnMoneyBagAt spawnMoneyBagAt spawnMoneyBagAt

; 1st entry of Jump Table from 45D9 (indexed by _RAM_C804_)
_LABEL_45F1_:
    ld a, (v_alexActionState)
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
    ld hl, questionMarkBoxItems
    ld c, a
    ld b, $00
    add hl, bc
    ld c, (hl)
    jp spawnEntityAt

; 9th entry of Jump Table from 45D9 (indexed by _RAM_C804_)
spawnMoneyBagAt:
    ld e, c
    ld d, b
    ld c, ENTITY_MONEY_BAG
    jp spawnEntityAt

tickPunch:
    ; @TODO
    ld hl, v_alex.unknown8
    ld a, (hl)
    and 0b00000010
    xor 0b00000010
    ret z

    ; Tick punch timer.
    dec (ix + Entity.unknown7)

    ; Return if not zero.
    ret nz

    ; Reset unknown8 punch bits.
    ld a, (hl)
    and 0b11110110
    ld (hl), a

    ; Set zero flag.
    cp a
    ret

; 4th entry of Jump Table from 4523 (indexed by v_alexActionState)
_LABEL_4641_:
    ld iy, v_entities.4
    ld (iy + Entity.type), $05
    ld hl, $80E6
    jr +

; 5th entry of Jump Table from 4523 (indexed by v_alexActionState)
_LABEL_464E_:
    ld iy, v_entities.4
    ld (iy+0), $07
    ld hl, $80F4
+:
    ld a, $90
    ld (v_soundControl), a
    ld (v_entities.4.spriteDescriptorPointer), hl
    ld hl, v_alex.unknown8
    ld a, (hl)
    or $0B
    ld (hl), a
    ld a, (v_alex.xPos.high)
    ld (v_entities.4.xPos.high), a
    ld a, (v_alex.yPos.high)
    add a, $04
    ld (v_entities.4.yPos.high), a
    ld a, (v_alex.unknown3)
    and ALEX_UKNW3_MOVING_RIGHT
    ld (v_entities.4.unknown3), a
    ld hl, $FF00
    jr z, +
    ld hl, $0100
+:
    ld (v_entities.4.xSpeed), hl
    ld hl, $FE00
    ld (v_entities.4.ySpeed), hl
; 8th entry of Jump Table from 4523 (indexed by v_alexActionState)
_LABEL_468F_:
    ret

.INCLUDE "entities/entity0x05.asm"
.INCLUDE "entities/entity0x06.asm"
.INCLUDE "entities/entity0x07.asm"

.INCLUDE "entities/entity0x09.asm"
.INCLUDE "entities/entity0x0A.asm"

.INCLUDE "entities/entity0x08.asm"

; 6th entry of Jump Table from 4523 (indexed by v_alexActionState)
_LABEL_48C5_:
    bit 0, (ix+20)
    ld a, (v_alex.xPos.high)
    jr nz, +
    sub $08
    call nc, +++
    ld hl, alexPunchingLeftSpriteDescriptor
    jr ++

+:
    add a, $10
    call nc, ++++
    ld hl, alexPunchingRightSpriteDescriptor
++:
    ld a, SOUND_SHOCK_WAVE
    ld (v_soundControl), a
    jp loadAlexSpriteDescriptor

+++:
    ld hl, $8093
    ld de, $FC00
    jr +++++

++++:
    ld hl, $8098
    ld de, $0400
+++++:
    ld (v_entities.2.xPos.high), a
    ld a, (v_alex.yPos.high)
    add a, $08
    ld (v_entities.2.yPos.high), a
    ld (v_entities.2.spriteDescriptorPointer), hl
    ld (v_entities.2.xSpeed), de
    ld hl, $0000
    ld (v_entities.2.ySpeed), hl
    ld a, $1B
    ld (v_entities.2), a
    ld hl, v_alex.unknown8
    ld a, (hl)
    or $0B
    ld (hl), a
    ret

.INCLUDE "entities/entity0x1B.asm"

; Shared
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
    call getNearEntityTileAttrWithOffset
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

.INCLUDE "entities/entity0x14.asm"

.INCLUDE "entities/entity0x10.asm"
.INCLUDE "entities/entity0x11.asm"
.INCLUDE "entities/entity0x12.asm"
.INCLUDE "entities/entity0x13.asm"

.INCLUDE "entities/entity0x16.asm"
.INCLUDE "entities/entity0x17.asm"

.INCLUDE "entities/entity0x15.asm"

; 6th entry of Jump Table from 4237 (indexed by v_nametableChangeRequest)
_LABEL_4B9E_:
    ld a, $87
    ld (Mapper_Slot2), a
    ld hl, (nametableChangeSourceMetatile)
    ld de, (v_nametableChangeDestination)
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
    rst memcpyToVRAM
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

; 8th entry of Jump Table from 4237 (indexed by v_nametableChangeRequest)
_LABEL_4BCD_:
    ld hl, (v_nametableChangeDestination)
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
    call setVdpAddress
-:
    xor a
    out (Port_VDPData), a
    djnz -
    call _LABEL_4C23_
    pop bc
    dec c
    jr nz, --
    ret

; 7th entry of Jump Table from 4237 (indexed by v_nametableChangeRequest)
_LABEL_4BF3_:
    ld hl, (v_nametableChangeDestination)
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
    rst memcpyToVRAM
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
.INCLUDE "entities/octopusArm/updater.asm"

getVelocitiesToPursuitAlex:
    ld c, $00
    ld a, (v_alex.yPos.high)
    sub (ix+14)
    jr nz, +
    inc a
+:
    jr nc, +
    ld c, $01
    neg
+:
    ld l, a
    ld a, (v_alex.xPos.high)
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

.INCLUDE "entities/merman/updater.asm"
.INCLUDE "entities/mermanBubbles/updater.asm"
.INCLUDE "entities/batLeft/updater.asm"
.INCLUDE "entities/batRight/updater.asm"
.INCLUDE "entities/merman/spawnBubbles.asm"
.INCLUDE "entities/plant/updater.asm"
.INCLUDE "entities/monsterBirdLeft/updater.asm"
.INCLUDE "entities/monsterBirdRight/updater.asm"
.INCLUDE "entities/smallFishLeft/updater.asm"
.INCLUDE "entities/smallFishRight/updater.asm"
.INCLUDE "entities/killerFishLeft/updater.asm"
.INCLUDE "entities/killerFishRight/updater.asm"

; Sine table used on bat (at least)
lowSine:
.db $00 $01 $02 $02 $03 $04 $04 $05 $06 $06 $07 $07 $07 $08 $08 $08
.db $08 $08 $08 $08 $07 $07 $07 $06 $06 $05 $04 $04 $03 $02 $02 $01
.db $00 $FF $FE $FE $FD $FC $FC $FB $FA $FA $F9 $F9 $F9 $F8 $F8 $F8
.db $F8 $F8 $F8 $F8 $F9 $F9 $F9 $FA $FA $FB $FC $FC $FD $FE $FE $FF

highSine:
.db $00 $02 $05 $07 $09 $0B $0D $0F $11 $13 $14 $15 $16 $17 $18 $18
.db $18 $18 $18 $17 $16 $15 $14 $13 $11 $0F $0D $0B $09 $07 $05 $02
.db $00 $FE $FB $F9 $F7 $F5 $F3 $F1 $EF $ED $EC $EB $EA $E9 $E8 $E8
.db $E8 $E8 $E8 $E9 $EA $EB $EC $ED $EF $F1 $F3 $F5 $F7 $F9 $FB $FE

mermanBubblesVelocities:
.db $80 $FF $80
.db $80 $00 $80
.db $00 $FF $80
.db $00 $00 $80
.db $80 $01 $00
.db $80 $FF $00
.db $80 $00 $40
.db $80 $FF $C0

.INCLUDE "entities/entity0x25.asm"
.INCLUDE "entities/entity0x26.asm"
.INCLUDE "entities/entity0x27.asm"
.INCLUDE "entities/entity0x28.asm"
.INCLUDE "entities/entity0x4A.asm"

; Shared
; - Request boss defeated sfx
; - Earn enemy score
; - Spaw boss smoke puff (that will spaw the onigiri)
killOpponent:
    ; Request boss defeated sfx
    ld a, SOUND_BOSS_DEFEATED
    ld (v_soundControl), a

    call earnEntityPoints

    ; @TODO
    ld (ix + Entity.unknown1), $01
    res 0, (ix + Entity.flags)

    ; @TODO: Spawn boss smoke puff
    ld (ix + Entity.type), $43
    ret

_LABEL_555C_:
    call earnEntityPoints
    ld a, SOUND_BOSS_DEFEATED
    ld (v_soundControl), a
    ld (ix+2), $00
    res 0, (ix+1)
    ld (ix+0), $43
    ret

; Shared
_LABEL_5571_:
    ld (ix+16), $00
    ld (ix+15), $00
    ret

.INCLUDE "entities/entity0x2A.asm"

; Shared
killEnemy:
    call earnEntityPoints

    ld a, SOUND_SMOKE_PUFF
    ld (v_soundControl), a

    ld (ix + Entity.type), ENTITY_SMOKE_PUFF

    res 0, (ix + Entity.flags)

    ret


_LABEL_55B6_:
    ld a, (ix+4)
    or a
    jr nz, _LABEL_55ED_
    ld a, (ix+5)
    cp $40
    jr nz, _LABEL_55ED_
    ld iy, v_entities.17
    ld de, $0020
    ld b, $05
-:
    ld a, (iy+0)
    or a
    jr nz, +
    ld a, SOUND_MONKEY_LEAF
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

.INCLUDE "entities/entity0x29.asm"
.INCLUDE "entities/entity0x43.asm"
.INCLUDE "entities/smokePuff/updater.asm"
.INCLUDE "entities/entity0x2F.asm"
.INCLUDE "entities/monsterFrog/jumpingUpdater.asm"

.INCLUDE "engine/entity/earnEntityPoints.asm"

.INCLUDE "data/entityPoints.asm"

.INCLUDE "entities/seaHorseLeft/updater.asm"
.INCLUDE "entities/seaHorseRight/updater.asm"
.INCLUDE "entities/debrisTopLeft.asm"
.INCLUDE "entities/entity0x39.asm"
.INCLUDE "entities/entity0x3A.asm"
.INCLUDE "entities/entity0x3B.asm"
.INCLUDE "entities/moneyBag/updater.asm"
.INCLUDE "entities/life.asm"
.INCLUDE "entities/powerBracelet/updater.asm"
.INCLUDE "entities/ghost/updater.asm"

.INCLUDE "engine/entity/spawnEntityAt.asm"

.INCLUDE "entities/riceBall/updater.asm"

requestBlockSound:
    ex af, af'
    ld a, SOUND_BLOCK
    ld (v_soundControl), a
    ex af, af'

    ld iy, v_entities.23
    ld (iy + Entity.type), ENTITY_DEBRIS_TOP_LEFT
    ld (iy + Entity.unknown6), a
    cp $01
    jr nz, +

    ld a, SOUND_STAR_BOX
    ld (v_soundControl), a

+:
    ld (iy + Entity.yPos.high), d
    ld (iy + Entity.xPos.high), e
    res 0, (iy + Entity.flags)
    ret

; TODO
unused_LABEL_5C27_:	
    ld iy, v_entities.27
    ld (iy+0), $44
    ld (iy+14), d
    ld (iy+12), e
    ret

.INCLUDE "entities/entity0x46.asm"
.INCLUDE "entities/entity0x47.asm"
.INCLUDE "entities/entity0x48.asm"
.INCLUDE "entities/entity0x49.asm"

_LABEL_5D7B_:
    jp _LABEL_555C_

; Data from 5D7E to 5D8B (14 bytes)
; TODO
_DATA_5D7E_:
.db $40 $10 $38 $20 $33 $30 $2E $40 $2A $50 $27 $60 $24 $70

; Pointer Table from 5D8C to 5D93 (4 entries, indexed by _RAM_CF98_)
; TODO
_DATA_5D8C_:
.dw _DATA_8022_ _DATA_8111_ _DATA_8120_ _DATA_8102_

.INCLUDE "entities/circularFlame.asm"
.INCLUDE "entities/flameOrScorpionLeft/updater.asm"
.INCLUDE "entities/flameOrScorpionRight/updater.asm"
.INCLUDE "entities/entity0x40.asm"
.INCLUDE "entities/entity0x41.asm"
.INCLUDE "entities/entity0x42.asm"
.INCLUDE "entities/entity0x51.asm"
.INCLUDE "entities/entity0x50.asm"
.INCLUDE "entities/saintNurari/updater.asm"
.INCLUDE "entities/entity0x52.asm"
.INCLUDE "entities/entity0x53.asm"
.INCLUDE "entities/nametableChanger.asm"
.INCLUDE "entities/entity0x4C.asm"
.INCLUDE "entities/entity0x54.asm"
.INCLUDE "entities/entity0x55.asm"
.INCLUDE "entities/entity0x57.asm"

; Pointer Table from 6422 to 6435 (10 entries, indexed by _RAM_CF83_)
_DATA_6422_:
.dw _DATA_80D3_
.dw _DATA_80C5_
.dw _DATA_8057_
.dw _DATA_8065_
.dw _DATA_8A27_
.dw lifeSpriteDescriptor
.dw powerBraceletSpriteDescriptor
.dw _DATA_801C_
.dw _DATA_800E_
.dw _DATA_8000_

; Pointer Table from 6436 to 6449 (10 entries, indexed by _RAM_CF83_)
_DATA_6436_:
.dw v_hasTelepathyBall
.dw v_hasTelepathyBall
.dw v_hasLetterToNibana
.dw v_hasHirottaStone
.dw v_hasMoonstoneMedallion
.dw v_hasMoonstoneMedallion
.dw v_hasPowerBracelet
.dw v_hasTeleportPowder
.dw v_hasSunstoneMedallion
.dw v_hasSunstoneMedallion

; Pointer Table from 644A to 645D (10 entries, indexed by _RAM_CF83_)
_DATA_644A_:
.dw _RAM_D800_
.dw _RAM_D801_
.dw _RAM_D802_
.dw _RAM_D803_
.dw _RAM_D804_
.dw _RAM_D805_
.dw _RAM_D806_
.dw _RAM_D807_
.dw _RAM_D800_
.dw _RAM_D807_

updateScrollFlags:
    ld hl, (scrollFlagsUpdaterPointer)
    jp (hl)

.INCLUDE "scrollFlagsUpdaters.asm"
.INCLUDE "engine/loadLevel.asm"

_LABEL_6671_:
    ld a, $01
    ld (v_isScrollingDownToNextScreen), a
    ld ix, v_entities.6
    ld de, $0020
    ld b, $19
-:
    ld a, (ix+0)
    or a
    jr z, +
    ld a, (ix+9)
    or (ix+10)
    jr z, +
    call destroyCurrentEntity
+:
    add ix, de
    djnz -
    ld a, (v_scrollFlags)
    and SCROLL_VERTICAL | 0b01100000
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

updateScroll_LABEL_67C4_:
    ; Check if we should scroll horizontally,
    ; otherwise skip to vertical scroll.
    ld de, (v_horizontalScrollSpeed)
    ld a, d
    or e
    jp z, updateVerticalScroll_LABEL_69CB_

    ld a, $0C
    ld (v_linesToLoadToNametable), a

    ld bc, (v_horizontalScrollAccumulator)

    ; Add horizontal scroll velocity to horizontal scroll
    ld hl, (v_horizontalScroll)
    add hl, de
    ld (v_horizontalScroll), hl

    ; Check if is moving right (velocity is negative)
    ex de, hl
    bit 7, h
    jp nz, scrollRight_LABEL_68A7_

    add hl, bc
    ld a, h
    cp $08
    ld (v_horizontalScrollAccumulator), hl
    ret c

    and $07
    ld (v_horizontalScrollAccumulator.high), a
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
    jp nc, loadLinesToNametable_LABEL_6865_
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
    res SCROLL_LEFT_BIT, (hl)
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
    ld de, v_decompressedLevelLayoutData
    call _LABEL_6BEF_

loadLinesToNametable_LABEL_6865_:
    // TODO
    ld a, $01
    ld (v_UpdateNameTableFlags), a

    ld hl, v_decompressedLevelLayoutData
    ld a, (_RAM_C0B5_)
    ld c, a
    ld b, $00
    add hl, bc

    ld de, _RAM_CF00_
    ld a, $85
    ld (Mapper_Slot2), a
    -:
        // TODO
        push hl

        ld c, (hl)
        ld hl, (v_metatileNametablePointer)
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

scrollRight_LABEL_68A7_:
    add hl, bc
    ld (v_horizontalScrollAccumulator), hl
    ret c

    // Return if scroll right is disabled
    ld a, (v_scrollFlags)
    bit SCROLL_RIGHT_BIT, a
    jp nz, +
        ld hl, $0000
        ld (v_horizontalScrollSpeed), hl
        ret
    +:

    // Overwrite accumulator high byte with itself modulus 7
    ld a, h
    and $07
    ld (v_horizontalScrollAccumulator.high), a

    // TODO
    // If _RAM_C0B7_ is zero, deal with screen numbers. Else, scroll normally.
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
        call loadLinesToNametable_LABEL_6865_
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
    res SCROLL_RIGHT_BIT, (hl)

    ld hl, v_currentScreenNumber
    dec (hl)
    res 7, (hl)

    ret

draw:
    ; TODO
    ld a, (v_UpdateNameTableFlags)
    rrca
    jp nc, @bit1_LABEL_6968_

    ld a, (_RAM_C0B0_)
    ld b, a
    ld a, (v_horizontalScrollSpeed.high)
    bit 7, a
    jp nz, @endif
        ld a, b
        sub $08
        ld b, a
    @endif:

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

    ; TODO: If halved, only the upper tiles of each metatile is draw.
    ld bc, $0040

    ; TODO: If halved, only the upper half of the screen is draw.
    ld a, $18

    -:
        ex af, af'
        call setVdpAddress
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
        jp nz, @endif2
            ld h, $78
        @endif2:
        ex de, hl
        ex af, af'
        dec a
    jr nz, -

@bit1_LABEL_6968_:
    ld a, (v_UpdateNameTableFlags)
    rrca
    rrca
    jp nc, _LABEL_69B5_
    ld a, (_RAM_C0BA_)
    bit 7, a
    ld a, (v_verticalScroll.high)
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
    call copyBytesToVRAM
    ex af, af'
    or a
    jp z, _LABEL_69B5_
    ld c, a
    ld b, $00
    ld a, e
    and $C0
    ld e, a
    call copyBytesToVRAM

_LABEL_69B5_:
    xor a
    ld (v_UpdateNameTableFlags), a
    ld de, (_RAM_C0B0_)
    ld d, $88
    call setVdpAddress
    ld de, (v_verticalScroll.high)
    ld d, $89
    jp setVdpAddress

updateVerticalScroll_LABEL_69CB_:
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
    jp nz, @speedBit7
    
    ; If scroll low byte is higher than e0, reset it
    cp $E0
    jp c, @continue

    ; Else, subtract $E0
    sub $E0
    jp @continue

@speedBit7:
    ; @TODO: Why?
    ; If speed bit 7 is set and scroll low
    ; byte is higher than e0, subtract $20.
    cp $E0
    jp c, @continue
    sub $20

@continue:
    ld (v_verticalScroll.high), a
    ex de, hl
    bit 7, h
    jp nz, _LABEL_6ABF_

    ; Sum BC to speed (HL)
    add hl, bc

    ; Save speed to _RAM_C0BB_ and return
    ; if high byte is less than 8.
    ld a, h
    cp $08
    ld (_RAM_C0BB_), hl
    ret c

    ; Save the first 3 bits of high byte to _RAM_C0BC_ 
    and $07
    ld (_RAM_C0BC_), a

    ; @TODO: ...
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
    res SCROLL_DOWN_BIT, (hl)
    ld hl, $0000
    ld (v_verticalScrollSpeed), hl
    ld a, (v_verticalScroll.high)
    and $F0
    ld (v_verticalScroll.high), a
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
    ld hl, v_decompressedLevelLayoutData
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
    ld hl, (v_metatileNametablePointer)
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
    res SCROLL_UP_BIT, (hl)
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
    ld de, v_decompressedLevelLayoutData
    jp _LABEL_6BEF_

updateNametable_LABEL_6B49_:
    ld a, $82
    ld (Mapper_Slot2), a
    ld a, (v_UpdateNameTableFlags)
    rrca
    jp nc, _LABEL_6B9C_
    ld a, (_RAM_C0B0_)
    ld b, a
    ld a, (v_horizontalScrollSpeed.high)
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
    ld a, (v_verticalScroll.high)
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
.INCLUDE "engine/states/lifeLost/update.asm"

; 7th entry of Jump Table from 127 (indexed by v_gameState)
handleInterruptLifeLostState:
    ret

.INCLUDE "engine/states/lifeLost/updateAdditional.asm"

loadNewEntities:
    ld hl, (v_entityLoaderPointer)
    jp (hl)

; 1st entry of Jump Table from D4E (indexed by v_level)
loadEntitiesNormal_LABEL_6F48_:
    ld hl, v_currentScreenNumber
    bit 7, (hl)
    ret z
    res 7, (hl)
    ld a, (hl)
    ld hl, (v_entityDescriptorsPointer)
    rst loadAthPointer
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
    jp nz, loadSpecialScreenEntitiesDescriptor

    ld b, a
_LABEL_6F8F_:
    ld c, b

    ; Find an empty entity slot
    ld ix, v_entities.7
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
loadSpecialScreenEntitiesDescriptor:
    ; If bit 1 is set (0x81)
    rrca
    jp c, @loadEntity28Or29
    ; If bit 2 is set (0x82)
    rrca
    jp c, loadOctopusArms
    ; If bit 3 is set (0x84)
    rrca
    jp c, @loadAlwaysPresentEntity
    
    ; Else
    inc hl
    ld a, (hl)
    ld c, a
    ld b, $00
    inc hl
    ld de, v_unknownEntityByteCount_RAM_D8A0_
    ldir
    jp _LABEL_6F86_

@loadAlwaysPresentEntity:
    ld ix, v_entities.6
    res 0, (ix+1)
    res 1, (ix+1)
    ld b, $01
    call _LABEL_6FA6_
    inc hl
    jp _LABEL_6F86_

@loadEntity28Or29:
    ld ix, v_entities.29
    ld a, (ix+0)
    or a
    jp z, +
    ld de, _sizeof_Entity
    add ix, de
+:
    res 0, (ix+1)
    res 1, (ix+1)
    ld b, $01
    call _LABEL_6FA6_
    inc hl
    jp _LABEL_6F86_

loadOctopusArms:
    inc hl
    ld a, (hl)
    exx
    ld hl, _DATA_7102_ - 2
    rst loadAthPointer
    ld e, (hl)
    inc hl
    ld d, (hl)
    ld (v_shopDoorNametablePointer), de
    inc hl
    ld ix, v_entities.7
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
loadEntitiesSpecial_LABEL_6F48_:
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
    ld hl, (v_entityDescriptorsPointer)
    rst loadAthPointer
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
    ld hl, (v_entityDescriptorsPointer)
    rst loadAthPointer
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
    ld hl, (v_entityDescriptorsPointer)
    rst loadAthPointer
    jp _LABEL_6F7E_

_LABEL_70F6_:
    ld hl, v_entityIndex
    dec (hl)
    ld a, (hl)
    ld hl, (v_entityDescriptorsPointer)
    rst loadAthPointer
    jp _LABEL_6F7E_

; Pointer Table from 7102 to 7105 (2 entries, indexed by unknown)
; Octopus arms
_DATA_7102_:
.dw _DATA_7106_ _DATA_7128_

; Octopus arms 1
; 1st entry of Pointer Table from 7102 (indexed by unknown)
; Data from 7106 to 7127 (34 bytes)
_DATA_7106_:
; Is copied to RAM C0FD
.db $5C $CC
; Arms are created from slot 7 to 14
; unknown5 / unknown10 / unknown11 / unknown4
.db $00 $98 $74 $00
.db $08 $98 $6C $01
.db $10 $98 $64 $01
.db $18 $98 $5C $01
.db $20 $98 $54 $01
.db $28 $98 $4C $01
.db $30 $98 $44 $01
.db $38 $98 $3C $01

; Octopus arms 1
; 2nd entry of Pointer Table from 7102 (indexed by unknown)
; Data from 7128 to 7149 (34 bytes)
_DATA_7128_:
; Is copied to RAM C0FD
.db $58 $CC
.db $00 $98 $66 $00
.db $08 $98 $5E $01
.db $10 $98 $56 $01
.db $18 $98 $4E $01
.db $20 $98 $46 $01
.db $28 $98 $3E $01
.db $30 $98 $36 $01
.db $38 $98 $2E $01

.INCLUDE "entities/janken.asm"

.INCLUDE "engine/battle/updateBattle.asm"

.INCLUDE "entities/entity0x19.asm"

.INCLUDE "engine/battle/simulateOpponentChoosing.asm"
.INCLUDE "engine/battle/drawThoughtClouds.asm"

.INCLUDE "entities/entity0x0B.asm"

.INCLUDE "engine/battle/destroyBattleEntities.asm"

.INCLUDE "data/opponentSettings.asm"

; 1st entry of Pointer Table from 765B (indexed by v_entities.6.data)
; Data from 7691 to 7692 (2 bytes)
jankenThrowSpriteDescriptor:
.db $5B $96

; Pointer Table from 7693 to 7694 (1 entries, indexed by v_entities.6.data)
.dw _DATA_116AB_

; Data from 7695 to 76A2 (14 bytes)
.db $FB $96

goosekaThrowSpriteDescriptor:
.db $A3 $93 $C9 $93 $EF $93

chokkinnaThrowSpriteDescriptor:
.db $8E $94 $B4 $94 $DA $94

; Data from 76A3 to 76AA (8 bytes)
_DATA_76A3_:
.db $D1 $00 $DC $00 $D5 $00 $E8 $00


; Opponent names, only used on JP version but names differ

jankenName:
; ANIOUT
.db $B0 $00 $D1 $00 $DE $00 $D9 $00 $DF $00 $E5 $00 $E4 $00

goosekaName:
; UNUUA
.db $B0 $00 $E5 $00 $DE $00 $E5 $00 $E5 $00 $D1 $00 $B0 $00

chokkinnaName:
; IOUINA
.db $B0 $00 $D9 $00 $DF $00 $E5 $00 $D9 $00 $DE $00 $D1 $00

parplinName:
; ANNUNIN
.db $D1 $00 $DE $00 $DE $00 $E5 $00 $DE $00  $D9 $00 $DE $00


; 1st entry of Pointer Table from 765D (indexed by v_entities.6.data)
; Data from 76E3 to 7762 (128 bytes)
JankenThrows:
.db $00 $01 $02 $02 $00 $01 $00 $02 $00 $01 $02 $01 $00 $01 $00 $02
.db $02 $00 $02 $01 $00 $02 $01 $02 $01 $00 $01 $02 $00 $01 $00 $02

goosekaThrows:
.db $00 $01 $02 $00 $00 $01 $00 $02 $02 $00 $02 $01 $00 $01 $00 $02
.db $02 $00 $02 $01 $00 $00 $01 $00 $01 $02 $01 $02 $00 $01 $00 $00

chokkinnaThrows:
.db $01 $01 $02 $02 $00 $01 $00 $01 $02 $01 $02 $01 $00 $01 $00 $02
.db $02 $00 $01 $01 $00 $02 $01 $02 $01 $00 $01 $02 $00 $01 $00 $01

parplinThrows:
.db $02 $02 $01 $02 $00 $01 $00 $02 $02 $01 $02 $02 $00 $01 $00 $00
.db $02 $00 $02 $01 $00 $02 $01 $02 $01 $02 $01 $02 $00 $01 $00 $02

; Data from 7763 to 776A (8 bytes)
_DATA_7763_:
.db $23 $1E $46 $32 $3C $2D $37 $28

; Data from 776B to 7771 (7 bytes)
_DATA_776B_:
.db $03 $00 $00 $00 $00 $00 $1F

; Data from 7772 to 7779 (8 bytes)
jankenBlockEntranceNametableChanges:
.db $08 $1F $10 $1F
.db $04 $CD $5D $8B

; Data from 777A to 778D (20 bytes)
jankenLadderNametableChanges:
.db $84 $CC $5D $8B
.db $04 $CB $75 $8B
.db $84 $CA $75 $8B
.db $04 $CA $75 $8B
.db $84 $C9 $75 $8B

; Data from 778E to 7795 (8 bytes)
goosekaNametableChanges:
.db $04 $C9 $75 $8B
.db $8C $CD $65 $8A

.INCLUDE "entities/gooseka.asm"
.INCLUDE "entities/chokkinna.asm"
.INCLUDE "entities/chokkinnaSpell.asm"
.INCLUDE "entities/parplin.asm"

; Clear entities, reset sound, load janken match tiles
prepareForBattle:
    ; Clear entities 7 through 28
    ld hl, v_entities.7
    ld b, $16
    @loopClear:
    call clearEntity
    inc hl
    djnz @loopClear

    call audioEngine.reset

    ld a, :battleTiles | $80
    ld (Mapper_Slot2), a

    ld hl, battleTiles
    ld de, $7000
    di
    jp decompressTilesToVram

drawAlexName_LABEL_7941_:
    ; Backup nametable to draw names
    ld hl, _RAM_C908_
    ld de, _RAM_C260_
    ld bc, $002E
    ldir

    ; Draw "Alex" name
    ld hl, _DATA_76A3_
    ld de, _RAM_C908_
    ld bc, $0008
    ldir

.IFDEF SHOW_OPPONENT_NAME
    ; Draw opponent name
    ld hl, (v_opponentNamePointer)
    ld de, $c928
    ld bc, $000E
    ldir
.ENDIF

    ; @TODO
    ; Related to entity 0x0C
    ld hl, _DATA_776B_
    ld de, _RAM_C2A0_
    ld bc, $000B
    ldir

    ; Spaw entity 0x0C
    ld hl, v_entities.23
    push hl
    call clearEntity
    pop hl
    ld (hl), $0C
    ret

restoreSomeNametableStuff_LABEL_796D_:
    ld de, _RAM_C908_
    ld hl, _RAM_C260_
    ld bc, $002E
    ldir

    ld hl, nametableCopy
    ld de, _RAM_CA08_
    ld bc, $00EC
    ldir

    ld a, $01
    ld (v_hasBattleEnded), a

    ret

.INCLUDE "entities/entity0x0C.asm"
.INCLUDE "entities/goosekaHead.asm"
.INCLUDE "entities/chokkinnaHead.asm"
.INCLUDE "entities/parplinHead.asm"

; ix: *Entity
; d: Y Offset
; e: X Offset
;
; Return:
; a: Tile attributes
getNearEntityTileAttrWithOffset:
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

; l: ?
; b: ?
; d: ?
_LABEL_7CA3_:
    ; e = a = l & 0x3f
    ld a, l
    and $3F
    ld e, a

    ; b = a = b + d
    ld a, b
    add a, d
    ld b, a

    ; if (a < 0xe0) {
    ;     a -= 0xe0
    ; }
    cp $E0
    jr c, @endif
        sub $E0
    @endif:

    ; a &= 0xf8
    and $F8

    ; hl = a * 4
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


.INCLUDE "engine/entity/checkEntityCollision.asm"


isAlexAttackingEntity:
    ld a, (v_alex.state)
    cp ALEX_SWIMING
    jp z, checkAlexPunchHit

    ld a, (v_alexActionState)
    ld hl, alexAttackHitCheckersPointers
    jp jumpToAthPointer

; Jump Table from 7D1C to 7D37 (14 entries, indexed by v_alexActionState)
alexAttackHitCheckersPointers:
.dw checkAlexPunchHit
.dw checkAlexPunchHit
.dw checkAlexPunchHit
.dw _LABEL_7D6E_
.dw _LABEL_7D84_
.dw _LABEL_7D92_
.dw checkAlexPunchHit
.dw _LABEL_7D8B_
.dw _LABEL_7D61_
.dw _LABEL_7D61_
.dw checkAlexPunchHit
.dw checkAlexPunchHit
.dw checkAlexPunchHit
.dw checkAlexPunchHit

checkAlexPunchHit:
    ; @TODO
    ; Return if alex unkown8 is not set
    ld a, (v_alex.unknown8)
    bit 0, a
    scf
    ret z

    ; hl = alex.unkown2 + _DATA_91D0_ + 4
    ; _DATA_91D0_ maybe a sprite descriptor
    ld iy, v_alex
    ld a, (v_alex.unknown2)
    add a, $04
    ld l, a
    ld h, $00
    ld bc, _DATA_91D0_
    add hl, bc

    ; Save hl into de
    ex de, hl

    ; hl = ix.unknown2 + _DATA_91D0_
    ld l, (ix + Entity.unknown2)
    ld h, $00
    add hl, bc

    ; a = (de) + (++de) + alex.xPos.high
    ld a, (de)
    ld b, a
    inc de
    ld a, (de)
    add a, b
    add a, (iy + Entity.xPos.high)
    jp checkEntityCollisionSub_LABEL_7CE6_

; 9th entry of Jump Table from 7D1C (indexed by v_alexActionState)
_LABEL_7D61_:
    ld iy, v_entities.2
    call _LABEL_7CBC_
    ret c
    set 7, (iy+1)
    ret

; 4th entry of Jump Table from 7D1C (indexed by v_alexActionState)
_LABEL_7D6E_:
    ld iy, v_entities.3
    call checkEntityCollision
    jr nc, +

    ld iy, v_entities.2
    call checkEntityCollision
    ret c

+:
    set 7, (iy+ Entity.flags)
    ret

; 5th entry of Jump Table from 7D1C (indexed by v_alexActionState)
_LABEL_7D84_:
    ld iy, v_entities.4
    jp checkEntityCollision

; 8th entry of Jump Table from 7D1C (indexed by v_alexActionState)
_LABEL_7D8B_:
    ld iy, v_alex
    jp checkEntityCollision

; 6th entry of Jump Table from 7D1C (indexed by v_alexActionState)
_LABEL_7D92_:
    ld iy, v_entities.2
    jp checkEntityCollision

tryToKillAlexIfColliding:
    ; Return if Alex is dead
    ld a, (v_alex.state)
    cp ALEX_DEAD
    ret nc

    ld a, (v_alexActionState)
    ld hl, alexActionStateDamageHandlersPointers
    jp jumpToAthPointer

; This table controls wehther alex can be hurt when colliding with an entity
; based v_alexActionState
alexActionStateDamageHandlersPointers:
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
    ld iy, v_alex
    call checkEntityCollision
    ret c
    set 7, (iy + Entity.flags)

doNotKillAlex:
    ret

.INCLUDE "engine/states/textbox/update.asm"
.INCLUDE "engine/states/textbox/handleInterrupt.asm"

.ORG $3ff0
; ROM header from 7FF0 to 7FFF (16 bytes)
.INCLUDE "header.asm"

.BANK 2
.ORG $0000

.INCLUDE "data/spriteDescriptors.asm"

; Data from 97DD to 97FF (35 bytes)
radactianCastleMetatileDeletes:
.db $00
.db $04 $58 $59 $5B $5C
.db $00
.db $04 $56 $66 $5B $6B
.db $00

.db $00
.db $02 $69 $6A
.db $00
.db $01 $21
.db $03 $86 $96 $78

.db $00
.db $00
.db $00
.db $00
.db $00

.db $00
.db $00
.db $00
.db $00
.db $00

.db $FF

; Data from 9800 to 984E (79 bytes)
craggLakeMetatileDeletes:
.db $00
.db $00
.db $00
.db $01 $1E
.db $00
.db $00
.db $01 $6E

.db $00
.db $02 $9D $9E
.db $00
.db $00
.db $00
.db $00
.db $00

.db $00
.db $03 $42 $8B $A4
.db $01 $A1
.db $03 $3E $4E $5E
.db $02 $AB $84
.db $00
.db $00

.db $00
.db $00
.db $01 $32
.db $08 $2D $64 $74 $84 $91 $92 $93 $94
.db $01 $53
.db $00
.db $00

.db $00
.db $02 $71 $91
.db $00
.db $02 $6D $95
.db $00
.db $02 $64 $74
.db $00

.db $00
.db $01 $26
.db $01 $6E
.db $00
.db $00
.db $03 $14 $1E $2E
.db $02 $9E $AE

.db $FF

.INCLUDE "audio.asm"

.ORG $1ECD

.INCLUDE "data.asm"
