handleInterruptShopState:
    ld hl, $C032
    ld de, $7D48
    call drawThreeBcdBytes
    call handleNametableChangeRequest
    ld a, (v_itemBeignBoughtIndex)
    or a
    ret z
    ld d, a
    xor a
    ld (v_itemBeignBoughtIndex), a
    ld a, $86
    ld (Mapper_Slot2), a
    ld a, (v_level)
    ld hl, _DATA_1FAB_ - 2
    rst loadAthPointer
    ld b, $03
-:
    push bc
    ld a, (hl)
    cp d
    jr nz, +
    inc hl
    push hl
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    set 0, (hl)
    pop hl
    inc hl
    inc hl
    ld e, (hl)
    inc hl
    ld d, (hl)
    ld bc, $0306
    call _LABEL_2532_
+:
    ld bc, $0005
    add hl, bc
    pop bc
    djnz -
    ret

_LABEL_1C33_:
    call audioEngine.reset
    call clearVDPTablesAndDisableScreen
    ld a, $82
    ld (Mapper_Slot2), a
    ld a, $8A
    ld (v_gameState), a
    ld de, v_nametable
    ld hl, v_nametableCopy
    ld bc, $0700
    ldir
    ld hl, v_nametable
    ld de, $7800
    ld bc, $0700
    call copyBytesToVRAM
    call updateVdpAddressAfterDraw
    ld hl, v_temporaryLevelDataCopy
    ld de, v_levelWidth
    ld bc, $002A
    ldir
    ld a, (v_level)
    ld c, a
    ld b, $00
    ld hl, levelSongs - 1
    add hl, bc
    ld a, (hl)
    ld (v_soundControl), a
    ld a, ENTITY_ARRAY_SIZE
    ld (v_entitydataArrayLength), a
    ld de, v_entities
    ld hl, v_mapEntities.2
    ld bc, $0020
    ldir
    ld ix, v_alex
    call updateAlexSpawning
    call updateEntities
    call loadLevelPalette
    ld a, $83
    ld (Mapper_Slot2), a
    call loadLevelTiles
    ld a, $85
    ld (Mapper_Slot2), a
    ld hl, tiles_4bppCharacters
    ld de, $5600
    call decompressTilesToVram
    ld a, $82
    ld (Mapper_Slot2), a
    ld a, (v_alexActionState)
    cp $07
    jr c, +
    cp $08
    jr z, +
    ld a, $87
    ld (Mapper_Slot2), a
    ld hl, _DATA_1DB29_
    ld de, $6200
    ld bc, $0020
    call copyBytesToVRAM
    ld hl, _DATA_1D429_
    ld de, $6220
    ld bc, $01C0
    call copyBytesToVRAM
+:
    ld a, (v_horizontalPositionShopHasBeenEnteredFrom)
    ld (v_shopDoorOffset), a
    ld hl, (v_shopEntranceEnteredFromDoorNametablePointer)
    ld (v_shopDoorNametablePointer), hl
    xor a
    ld (v_textBoxMessageIndex), a
    ld (v_shopFlags), a
    ld (v_shopSelectedItemIndex), a
    ld a, $82
    ld (Mapper_Slot2), a
    ld e, $26
    ld d, $80
    rst setVdpAddress
    ei
    ld a, $09
    call waitForInterrupt
    call enableDisplay
    ld b, $0A
    jp sleepTenthsOfSecond

_LABEL_1D04_:
    set 7, (hl)
    call audioEngine.reset
    ld hl, v_levelWidth
    ld de, v_temporaryLevelDataCopy
    ld bc, $002A
    ldir
    dec hl
    ld (hl), $00
    ld d, h
    ld e, l
    dec de
    ld bc, $0029
    lddr
    call clearVDPTablesAndDisableScreen
    ld b, $05
    call sleepTenthsOfSecond
    call clearScroll
    ld hl, v_nametable
    ld de, v_nametableCopy
    ld bc, $0700
    ldir
    ld a, $85
    ld (Mapper_Slot2), a
    ld hl, shopNametableEntries
    ld de, v_nametable
    call decompressNametable
    ld a, $01
    ld (v_entitydataArrayLength), a
    ld hl, v_mapEntities
    ld de, v_mapEntities + 1
    ld bc, $005F
    ld (hl), $00
    ldir
    ld a, $82
    ld (Mapper_Slot2), a
    ld hl, v_entities
    ld de, v_mapEntities.2
    ld bc, $0020
    ldir
    ld ix, v_alex
    ld (ix+0), $01
    ld (ix+12), $20
    ld (ix+14), $88
    call updateAlexSpawning
    call updateEntities
    ld a, (v_shopSelectedItemIndex)
    or a
    jr z, +
    ld hl, _DATA_1F62_ - 2
    rst loadAthPointer
    set 0, (hl)
    xor a
    ld (v_shopSelectedItemIndex), a
+:
    ld a, $82
    ld (Mapper_Slot2), a
    ld de, $5800
    ld hl, tiles_numbers
    ld bc, $0050
    ld a, $01
    call load1bppTiles
    ld a, $85
    ld (Mapper_Slot2), a
    ld hl, _DATA_153F3_
    ld de, $4520
    call decompressTilesToVram
    ld hl, _DATA_15840_
    ld de, $4E00
    call decompressTilesToVram
    ld de, _RAM_CB08_
    ld hl, _DATA_15800_
    ld bc, $0808
    call copyTileBlock
    ld hl, tiles_magicCapsules
    ld de, $5200
    ld bc, $01C0
    call copyBytesToVRAM
    ld hl, _DATA_17291_
    ld de, $5FE0
    ld bc, $0020
    call copyBytesToVRAM
    ld hl, tiles_alexStates
    ld de, $5420
    ld bc, $01E0
    call copyBytesToVRAM
    ld hl, _DATA_1F42_
    ld de, $C000
    ld bc, $0020
    call copyBytesToVRAM
    ld a, $01
    ld (v_shopFlags), a
    ld a, (v_shopDoorOffset)
    ld (v_horizontalPositionShopHasBeenEnteredFrom), a
    ld a, $28
    ld (v_shopDoorOffset), a
    ld hl, (v_shopDoorNametablePointer)
    ld (v_shopEntranceEnteredFromDoorNametablePointer), hl
    ld hl, _RAM_CC06_
    ld (v_shopDoorNametablePointer), hl
    ld a, $16
    ld (v_textBoxMessageIndex), a
    ld b, $03
    ld hl, _RAM_D7D0_
-:
    ld a, (hl)
    or a
    jr z, +
    ld de, $0005
    add hl, de
    djnz -
    jp _LABEL_1E77_

+:
    ld a, $01
    ld (v_textBoxMessageIndex), a
    xor a
    ld (v_itemBeignBoughtIndex), a
    ld de, $8006
    rst setVdpAddress
    ld a, $86
    ld (Mapper_Slot2), a
    ld a, (v_level)
    ld hl, _DATA_1F89_ - 2
    rst loadAthPointer
    ld a, $03
    ld de, _RAM_D7D1_
-:
    ldi
    ldi
    ldi
    ldi
    inc de
    dec a
    jr nz, -
    dec de
    ld a, $FF
    ld (de), a
    ld hl, _RAM_D7D0_
-:
    push hl
    ld a, (hl)
    cp $FF
    jp z, ++
    or a
    jr nz, +
    inc hl
    ld e, (hl)
    inc hl
    ld d, (hl)
    inc hl
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    ld bc, $0306
    call copyTileBlock
+:
    pop hl
    ld bc, $0005
    add hl, bc
    jp -

++:
    pop hl
_LABEL_1E77_:
    ld hl, _DATA_1F30_
    ld de, _RAM_CD44_
    ld bc, $0012
    ldir
    ld de, $7800
    ld hl, v_nametable
    ld bc, $0600
    call copyBytesToVRAM
    ld hl, $C032
    ld de, $7D48
    call drawThreeBcdBytes
    ld a, $82
    ld (Mapper_Slot2), a
    ei
    call enableDisplay
    ld a, (v_level)
    ld c, a
    ld b, $00
    ld hl, levelSongs - 1
    add hl, bc
    ld a, (hl)
    ld (v_soundControl), a
    ret

_LABEL_1EAF_:
    ld hl, v_shopFlags
    bit 6, (hl)
    jr z, +
    ld a, (v_alex.state)
    cp ALEX_IN_AIR 
    ret z
    res 6, (hl)
    xor a
    ld (v_shopSelectedItemIndex), a
+:
    ld a, (v_shopSelectedItemIndex)
    or a
    ret z
    ld c, a
    add a, a
    add a, c
    ld c, a
    ld b, $00
    ld hl, $1F6B
    add hl, bc
    ld bc, v_money
    call subtractBCDToA
    jp c, _LABEL_1F1E_
    dec hl
    dec hl
    dec bc
    dec bc
    call subtractBCD
    ld hl, v_shopFlags
    set 6, (hl)
    ld a, (v_shopSelectedItemIndex)
    ld (v_itemBeignBoughtIndex), a
    cp $07
    jr nc, +
    ld hl, _DATA_1F62_ - 2
    rst loadAthPointer
    set 0, (hl)
    xor a
    ld (v_shopSelectedItemIndex), a
    jr _LABEL_1F0A_

+:
    cp $08
    jr z, +
    ld (v_alexActionState), a
    xor a
    ld (v_invincibilityTimer), a
    ld (v_shopSelectedItemIndex), a
_LABEL_1F0A_:
    ld a, $03
    ld (v_textBoxMessageIndex), a
    ret

+:
    ld hl, v_lives
    ld a, (hl)
    add a, $01
    daa
    ld (hl), a
    xor a
    ld (v_shopSelectedItemIndex), a
    jr _LABEL_1F0A_

_LABEL_1F1E_:
    xor a
    ld (v_shopSelectedItemIndex), a
    ld (v_itemBeignBoughtIndex), a
    ld hl, v_shopFlags
    set 6, (hl)
    ld a, $02
    ld (v_textBoxMessageIndex), a
    ret

; Data from 1F30 to 1F41 (18 bytes)
_DATA_1F30_:
.db $FF
.dsb 15, $00
.db $C0 $00

; Data from 1F42 to 1F61 (32 bytes)
_DATA_1F42_:
.db $30 $3F $02 $03 $0F $0B $00 $06 $25 $2A $01 $2F $3C $0C $08 $3C
.db $30 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; Pointer Table from 1F62 to 1F6D (6 entries, indexed by v_shopSelectedItemIndex)
_DATA_1F62_:
.dw v_hasCaneOfFlight v_hasTeleportPowder v_hasMagicCapsuleA v_hasMagicCapsuleB v_hasTelepathyBall v_hasPowerBracelet

; Data from 1F6E to 1F88 (27 bytes)
.db $12 $00 $00 $10 $00 $00 $10 $00 $00 $12 $00 $00 $10 $00 $00 $10
.db $00 $00 $20 $00 $00 $50 $00 $00 $20 $00 $00

; Pointer Table from 1F89 to 1FAA (17 entries, indexed by v_level)
_DATA_1F89_:
.dw _DATA_1BE45_ _DATA_1BE45_ _DATA_1BE51_ _DATA_1BE51_ _DATA_1BE51_ _DATA_1BE51_ _DATA_1BE5D_ _DATA_1BE5D_
.dw _DATA_1BE69_ _DATA_1BE69_ _DATA_1BE75_ _DATA_1BE75_ _DATA_1BE75_ _DATA_1BE75_ _DATA_1BE81_ _DATA_1BE81_
.dw _DATA_1BE81_

; Pointer Table from 1FAB to 1FCC (17 entries, indexed by v_level)
_DATA_1FAB_:
.dw _DATA_1BF51_ _DATA_1BF51_ _DATA_1BF60_ _DATA_1BF60_ _DATA_1BF60_ _DATA_1BF60_ _DATA_1BF6F_ _DATA_1BF6F_
.dw _DATA_1BF7E_ _DATA_1BF7E_ _DATA_1BF8D_ _DATA_1BF8D_ _DATA_1BF8D_ _DATA_1BF8D_ _DATA_1BF9C_ _DATA_1BF9C_
.dw _DATA_1BF9C_
