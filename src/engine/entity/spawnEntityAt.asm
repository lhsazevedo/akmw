; @param r unknown6
; @param d yPos
; @param e yPos
; @param c type
spawnEntityAt:
    ; Choose an available entity slot for spawing the item
    ld iy, v_entities.27
    ld a, (iy + Entity.type)
    or a
    jr z, @availableEntitySlotFound

    ld iy, v_entities.28
    ld a, (iy + Entity.type)
    or a
    jr z, @availableEntitySlotFound

    ld a, (v_entities.27.jankenMatchDecision)
    cp (iy + Entity.jankenMatchDecision)
    jr nc, @availableEntitySlotFound

    ld iy, v_entities.27

    @availableEntitySlotFound:
    ; Spaw entity
    ld a, r
    and $07
    ld (iy + Entity.unknown6), a
    ld (iy + Entity.yPos.high), d
    ld (iy + Entity.xPos.high), e
    ld (iy + Entity.type), c

    ; Make sure entity will be initialized
    res 0, (iy + Entity.flags)

    ld a, (v_horizontalScroll)
    ld (iy + Entity.xPos.low), a
    ld a, (v_verticalScroll)
    ld (iy + Entity.yPos.low), a

    ret
