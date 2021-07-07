updateEntities:
    ld hl, _RAM_C706_
    ld (v_spriteTerminatorPointer), hl
    ld ix, (v_entitydataArrayPointer)
    ld a, (v_entitydataArrayLength)
    ld b, a
-:
    ld a, (ix+0)
    and $7F
    jp z, ++
    push bc
    ld hl, entityTypeJumpTable - 2
    rst jumpToAthPointer
    ld a, (ix+0)
    or a
    jp z, +
    call _LABEL_27D0_
    call _LABEL_273A_
    call updateEntitySprites
+:
    pop bc
++:
    ld de, $0020
    add ix, de
    djnz -
    ld hl, (v_spriteTerminatorPointer)
    ld a, l
    cp $40
    jr c, +
    ld l, $3F
    ld (v_spriteTerminatorPointer), hl
+:
    ld (hl), $D0
    ret


updateEntitySprites:
    ld a, (ix + Entity.type)
    ; Do nothing if entity type is 0
    or a
    ret z
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    ; Jump to $283b if entity is offscreen
    jp nz, _LABEL_283B_
    ; Return if entity is past the bottom of screen
    ld a, (ix + Entity.yPos.high)
    cp $C0
    ret nc
    ld c, a ; c = yPos high
    ld de, (v_spriteTerminatorPointer)
    push de
    ; hl = entity.spriteDescriptorPointer
    ld l, (ix + Entity.spriteDescriptorPointer.low)
    ld h, (ix + Entity.spriteDescriptorPointer.high)
    ; b = sprite count
    ld b, (hl)
    push bc
    ; a = sprite collision data
    inc hl
    ld a, (hl)
    ld (ix + Entity.unknown2), a
    inc hl
-:
    ; a = Entity.yPos.high
    ld a, c
    ; a += tile.y
    add a, (hl)
    ; if (a !== $D0) dec a
    cp $D0
    jr nz, +
    dec a
+:
    ld (de), a
    inc e
    inc hl
    djnz -
    ld (v_spriteTerminatorPointer), de
    pop bc
    pop de
    sla e
    set 7, e
    ld c, (ix+12)
-:
    ld a, c
    add a, (hl)
    bit 7, (hl)
    jp z, +
    ccf
+:
    jp nc, +
    ld a, $E0
    res 7, e
    srl e
    ld (de), a
    sla e
    set 7, e
    jp ++

+:
    ld (de), a
++:
    inc hl
    inc e
    ldi
    inc bc
    djnz -
    ret


_LABEL_273A_:
    ld de, (v_verticalScrollSpeed)
    ld h, (ix+18)    ; v_entities.IX.ySpeed.high
    ld l, (ix+17)    ; v_entities.IX.ySpeed
    or a
    sbc hl, de
    ret z
    ex de, hl
    ld l, (ix+13)    ; v_entities.IX.yPos
    ld h, (ix+14)    ; v_entities.IX.yPos.high
    add hl, de
    bit 7, d
    jp z, +
    jp c, ++
    bit 1, (ix+1)    ; v_entities.IX.flags
    jp nz, destroyCurrentEntity
    ld a, h
    sub $40
    ld (ix+13), l
    ld (ix+14), a
    dec (ix+10)
    ret

+:
    ld a, h
    sub $C0
    jp c, ++
    bit 1, (ix+1)
    jp nz, destroyCurrentEntity
    ld (ix+13), l
    ld (ix+14), a
    inc (ix+10)
    ret

++:
    ld (ix+13), l
    ld (ix+14), h
    ret


destroyCurrentEntity:
    push ix
    pop hl
;
; Clears the given entity data, zeroing all bytes except for animation timer,
; that is set to $01. 
;
; @param hl - The entity index
;
; v1 address $278D
;
clearEntity:
    xor a
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), $01
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    inc l
    ld (hl), a
    ld c, a
    ret


_LABEL_27D0_:
    ld hl, (v_horizontalScrollSpeed)
    ld d, (ix+16)    ; v_entities.IX.xSpeed.high
    ld e, (ix+15)    ; v_entities.IX.xSpeed
    or a
    adc hl, de
    ret z
    ex de, hl
    ld l, (ix+11)    ; v_entities.IX.xPos
    ld h, (ix+12)    ; v_entities.IX.xPos.high
    add hl, de
    bit 7, d
    jp z, +
    jp c, ++
    bit 1, (ix+1)    ; v_entities.IX.flags
    jp nz, destroyCurrentEntity
    inc (ix+9)    ; v_entities.IX.isOffScreenFlags
    jp ++

+:
    jp nc, ++
    bit 1, (ix+1)
    jp nz, destroyCurrentEntity
    dec (ix+9)
++:
    ld (ix+11), l
    ld (ix+12), h
    ret


;
; Tick entity animation timer, resetting it and
; advancing frame (and sprite descriptor) if necessary.
;
handleEntityAnimation:
    ld d, (hl)
    inc hl
    ld a, (ix + Entity.animationFrame)
    dec (ix + Entity.animationTimer)
    ; Reset timer only if its zero
    jr nz, +
    ld e, (ix + Entity.animationTimerResetValue)
    ld (ix + Entity.animationTimer), e
    inc a
    cp d
    jr c, +
    xor a
+:
    ld (ix + Entity.animationFrame), a
    add a, a
    ld e, a
    ld d, $00
    add hl, de
    ld e, (hl)
    inc hl
    ld h, (hl)
    ld (ix + Entity.spriteDescriptorPointer.low), e
    ld (ix + Entity.spriteDescriptorPointer.high), h
    ret

; Data from 2835 to 283A (6 bytes)
.db $23 $DD $7E $04 $18 $EB


_LABEL_283B_:
    inc a
    or (ix+9)    ; v_entities.IX.isOffScreenFlags
    ret nz
    ld a, (ix+14)    ; v_entities.IX.yPos.high
    cp $A8
    ret c
    ld c, a
    ld de, (v_spriteTerminatorPointer)
    push de
    ld l, (ix+7)    ; v_entities.IX.spriteDescriptorPointer
    ld h, (ix+8)
    ld b, (hl)
    push bc
    inc hl
    ld a, (hl)
    ld (ix+19), a    ; v_entities.IX.unknown2
    inc hl
-:
    ld a, c
    add a, $40
    add a, (hl)
    ld (de), a
    inc e
    inc hl
    djnz -
    ld (v_spriteTerminatorPointer), de
    pop bc
    pop de
    sla e
    set 7, e
    ld c, (ix+12)    ; v_entities.IX.xPos.high
-:
    ld a, c
    add a, (hl)
    bit 7, (hl)
    jp z, +
    ccf
+:
    jp nc, +
    ld a, $E0
    res 7, e
    srl e
    ld (de), a
    sla e
    set 7, e
    jp ++

+:
    ld (de), a
++:
    inc hl
    inc e
    ldi
    inc bc
    djnz -
    ret
