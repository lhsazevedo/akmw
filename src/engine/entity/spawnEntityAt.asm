; @param d yPos
; @param e yPos
; @param c type
spawnEntityAt:
    ; Pick an available entity slot
    ld iy, v_entities.27
    ld a, (iy + Entity.type)
    or a
    jr z, @availableEntitySlotFound

    ld iy, v_entities.28
    ld a, (iy + Entity.type)
    or a
    jr z, @availableEntitySlotFound

    ld a, (v_entities.27.battleDecision)
    cp (iy + Entity.battleDecision)
    jr nc, @availableEntitySlotFound

    ld iy, v_entities.27

    @availableEntitySlotFound:
    ; Load a random value into Entity.unknown6
    ld a, r
    and $07
    ld (iy + Entity.unknown6), a

    ld (iy + Entity.yPos.high), d
    ld (iy + Entity.xPos.high), e
    ld (iy + Entity.type), c

    ; Mark entity as uninitialized
    res 0, (iy + Entity.flags)

    ; @TODO
    ld a, (v_horizontalScroll)
    ld (iy + Entity.xPos.low), a
    ld a, (v_verticalScroll)
    ld (iy + Entity.yPos.low), a

    ret
