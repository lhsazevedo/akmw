; 75th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
unknownUpdater:
    bit 0, (ix+1)
    jr nz, @skipInit

    ; Load sprite descriptor
    ld (ix+7), <_DATA_80E1_
    ld (ix+8), >_DATA_80E1_

    ; Return if offscreen
    ld a, (ix+9)
    or (ix+10)
    ret nz

    ; Otherwise mark as initialized
    set 0, (ix+1)
    set 1, (ix+1)

    ; Set some unkown data
    ld (ix+24), $00
    ld (ix+22), $00

    ; @TODO
    xor a
    ld (_RAM_C07F_), a

    ; @TODO
    ld hl, $D8A0
    inc hl
    ld (v_shopEntranceDoorNametablePointer), hl

    @skipInit:
    ld a, (ix + Entity.data)
    cp $01
    jr z, @maybeDelete

    ld a, (ix+24)
    or a
    jr nz, @unkown6IsNotZero

    ; If data is 0x02, handle collision kind
    ld a, (ix + Entity.data)
    cp $02
    jr z, @updateCollisionKind

    ; Else, handle punch kind
    ; @TODO
    call _LABEL_7D0B_
    jr @updatePunchKind

    @updateCollisionKind:
    ld iy, v_entity1
    call checkEntityCollision
    ret c
    jr @setUnknown6ToOne

    @updatePunchKind:
    ret c
    ld a, (v_entities.1.unknown8)
    bit 3, a
    ret z

    @setUnknown6ToOne:
    ld (ix + Entity.unknown6), $01

    @unkown6IsNotZero:
    ; Return if nametable change was already requested
    ld a, (v_nametableChangeRequest)
    or a
    ret nz

    ; Unset alex unknown8 3rd bit
    ; @TODO (punchEminent?)
    ld a, (v_entities.1.unknown8)
    res 3, a
    ld (v_entities.1.unknown8), a

    ld (ix + Entity.unknown6), $00

    ; Increment _RAM_D8A0_ and self destroy
    ; if all bytes data is handled
    inc (ix+22)
    ld a, (v_unknownEntityByteCount_RAM_D8A0_)
    cp (ix+22)
    jp c, clearCurrentEntity

    ; @TODO
    ld a, $80
    ld (v_nametableChangeRequest), a

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

    ; Load metatile nametable pointer indexed by 2c (two times c)
    ; and save it into v_pointerToANametableEntry_RAM_C206_
    ld hl, (v_metatileNametablePointer)
    add hl, bc
    add hl, bc
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    ld (v_pointerToANametableEntry_RAM_C206_), hl

    ld a, $82
    ld (Mapper_Slot2), a
    ret

    @maybeDelete:
    call _LABEL_7D0B_
    ret c
    ld hl, _RAM_C07F_
    inc (hl)
    jp clearCurrentEntity
