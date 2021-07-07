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

    ; Sleep half a second
    ld b, $05
    call sleepTenthsOfSecond

    call audioEngine.reset

    ; Decrement lives
    ld hl, v_lives
    ld a, (hl)
    sub $01
    jp z, gameOver_LABEL_6DC9_
    daa
    ld (hl), a

    ; Memory mapping
    ld a, $82
    ld (Mapper_Slot2), a

    ; Clear the first 5 entities
    ld ix, v_entities
    ld de, $0020
    ld b, $05
-:    
    call destroyCurrentEntity
    add ix, de
    djnz -

    ; Clear entity 17 through 28
    ld ix, v_entities.17
    ld de, $0020
    ld b, $0C
-:
    call destroyCurrentEntity
    add ix, de
    djnz -

    ; For entities 7 to 17, update their type and position based on unkown1
    ld ix, v_entities.7
    ld b, $0A
-:
    ld a, (ix + Entity.unknown1)
    bit 7, a
    jp z, +
    and $7F
    ld e, b
    ld hl, _DATA_6F30_ - 2
    rst loadAthPointer
    exx
    call destroyCurrentEntity
    exx
    ld b, e
    ld a, (hl)
    ld (ix + Entity.type), a
    inc hl
    ld a, (hl)
    ld (ix + Entity.xPos.high), a
    inc hl
    ld a, (hl)
    ld (ix + Entity.yPos.high), a
+:
    ld de, $0020
    add ix, de
    djnz -

    ; If scroll flag 7 is set...
    ld a, (v_scrollFlags)
    bit 7, a
    jp z, +

    ; And isn't first level...
    ld a, (v_level)
    cp $01
    jp z, +

    ; @TODO: Test on levels 2+
    ; Restore temporary Alex copy
    ld de, v_entity1
    ld hl, temporaryAlexCopy
    ld bc, $0020
    ldir

    ; @TODO
    ld hl, (v_entities.1.spriteDescriptorPointer)
    dec hl
    ld a, (hl)
    ld (v_alexTilesIndex), a

    ; @TODO
    ld a, $02
    ld (_RAM_C054_), a

    ; @TODO: Add respaw grace period constant (max, here)
    ld a, $FF
    ld (v_invincibilityTimer), a
    jp _LABEL_6D73_


+:
    ; Set alex
    ld ix, v_entity1
    ld (ix + Entity.type), ENTITY_ALEX

    ; Jump to _LABEL_6D26_ if:
    ; Level is 0x0D (13)
    ; OR (v_shouldSpawnRidingBoat_RAM_C051_) is not 0
    ; OR (_RAM_C054_) >= 7
    ld a, (v_level)
    cp $0D
    jp z, _LABEL_6D26_
    ld a, (v_shouldSpawnRidingBoat_RAM_C051_)
    or a
    jp nz, _LABEL_6D26_
    ld a, (_RAM_C054_)
    cp $07
    jp nc, _LABEL_6D26_


    ld a, (v_alexStateBeforeHit)
    cp ALEX_SWIMING
    jp z, lifeLostAlexSwiming_LABEL_6D3C_

    cp ALEX_FLYING_PETICOPTER
    jp z, _LABEL_6D26_

    ; @TODO
    ld (ix + Entity.unknown6), $10
    ld (ix + Entity.unknown5), $10
    ld (ix + Entity.jankenMatchDecision), $01
    ld (ix + Entity.state), $01
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
    add a, (ix + Entity.yPos.high)
    ld (ix + Entity.yPos.high), a
    cp $90
    jp nc, +
    call _LABEL_6EBB_
    jp -

+:
    ld a, $08
    add a, (ix + Entity.unknown5)
    ld (ix + Entity.unknown5), a
    jp --

_LABEL_6D26_:
    ld ix, v_entities
    ld de, $0020
    ld b, ENTITY_ARRAY_SIZE
-:
    call destroyCurrentEntity
    add ix, de
    djnz -
    ld a, $0A
    ld (v_gameState), a
    ret

lifeLostAlexSwiming_LABEL_6D3C_:
    ld (ix + Entity.unknown6), $10
    ld (ix + Entity.unknown5), $10
    ld (ix + Entity.jankenMatchDecision), $01
    ld (ix + Entity.state), $02
    call _LABEL_6EAF_
_LABEL_6D4F_:
    ld a, $02
    ld (_RAM_C054_), a
    ld a, $FF
    ld (v_invincibilityTimer), a
    ld (ix + Entity.unknown6), $00
    ld (ix + Entity.unknown5), $00
    ld (ix + Entity.jankenMatchDecision), $00
    ld (ix + Entity.unknown7), $00
    ld (ix + Entity.state), $00
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
    ld hl, levelSongs - 1
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

gameOver_LABEL_6DC9_:
    call clearVDPTablesAndDisableScreen
    ld b, $05
    call sleepTenthsOfSecond
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
    rst setVDPAddress
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
    call sleepTenthsOfSecond
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
