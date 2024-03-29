; Indicates if the entity is waiting an
; opportunity to request a nametable change.
NabetableChanger.changeQueued = Entity.unknown6

; Counter to the nametable changes processed
NabetableChanger.updatesCount = Entity.unknown5

updateNametableChanger:
    bit 0, (ix + Entity.flags)
    jr nz, @checkKind

    ; Initialize entity
    ; Load sprite descriptor
    ld (ix + Entity.spriteDescriptorPointer.low), <nullSpriteDescriptor
    ld (ix + Entity.spriteDescriptorPointer.high), >nullSpriteDescriptor

    ; Return if offscreen
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    ret nz

    ; Otherwise mark as initialized
    set 0, (ix + Entity.flags)
    set 1, (ix + Entity.flags)

    ; Set some unkown data
    ld (ix + NabetableChanger.changeQueued), $00
    ld (ix + NabetableChanger.updatesCount), $00

    ; Reset counter used by increment kind 
    xor a
    ld (_RAM_C07F_), a

    ; Set requests pointer
    ld hl, $D8A0
    inc hl
    ld (v_shopEntranceDoorNametablePointer), hl

    @checkKind:
    ld a, (ix + Entity.data)
    cp $01
    jr z, @updateIncrementKind

    ld a, (ix + NabetableChanger.changeQueued)
    or a
    jr nz, @unkown6IsNotZero

    ; If data is 0x02, handle collision kind
    ld a, (ix + Entity.data)
    cp $02
    jr z, @updateCollisionKind

    ; Else, handle punch kind
    call isAlexAttackingEntity
    jr @updatePunchKind

    @updateCollisionKind:
    ld iy, v_alex
    call checkEntityCollision
    ret c
    jr @setUnknown6ToOne

    @updatePunchKind:
    ret c
    ld a, (v_alex.unknown8)
    bit 3, a
    ret z

    @setUnknown6ToOne:
    ld (ix + NabetableChanger.changeQueued), $01

    @unkown6IsNotZero:
    ; Return if nametable change was already requested
    ld a, (v_nametableChangeRequest)
    or a
    ret nz

    ; Unset alex unknown8 3rd bit (punch)
    ld a, (v_alex.unknown8)
    res 3, a
    ld (v_alex.unknown8), a

    ld (ix + NabetableChanger.changeQueued), $00

    ; Increment _RAM_D8A0_ and self destroy
    ; if all bytes data is handled
    inc (ix + NabetableChanger.updatesCount)
    ld a, (v_unknownEntityByteCount_RAM_D8A0_)
    cp (ix + NabetableChanger.updatesCount)
    jp c, destroyCurrentEntity

    ; Request change
    ld a, $80
    ld (v_nametableChangeRequest), a

    ld hl, (v_shopEntranceDoorNametablePointer)
    ld de, v_nametableChangeDestination
    ldi
    ldi

    ld c, (hl)
    ld b, $00

    inc hl
    ld (v_shopEntranceDoorNametablePointer), hl

    ld a, $85
    ld (Mapper_Slot2), a

    ; Load metatile nametable pointer indexed by 2c (two times c)
    ; and save it into nametableChangeSourceMetatile
    ld hl, (v_metatileNametablePointer)
    add hl, bc
    add hl, bc
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    ld (nametableChangeSourceMetatile), hl

    ld a, $82
    ld (Mapper_Slot2), a
    ret

    @updateIncrementKind:
    call isAlexAttackingEntity
    ret c
    ld hl, _RAM_C07F_
    inc (hl)
    jp destroyCurrentEntity
