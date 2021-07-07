updateBatLeft:
    ; Skip initialization if already initialized
    bit 0, (ix + Entity.flags)
    jr nz, +

    ; Initialize entity
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jp nz, _LABEL_4F7C_
    set 0, (ix + Entity.flags)
    ld a, (ix + Entity.yPos.high)
    ld (ix + Entity.unknown5), a
    ld (ix + Entity.animationTimer), $08
    ld (ix + Entity.animationTimerResetValue), $08

+:
    ; Destroy if offscreen
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jp nz, clearCurrentEntity

    set 1, (ix + Entity.flags)
    ld (ix + Entity.xSpeed.high), $FF
    ld (ix + Entity.xSpeed.low), $80
    call tryToKillAlexIfColliding

    ; @TODO
    call checkAlexEntityCollision_LABEL_7D0B_
    jp nc, _LABEL_55A5_

    ; If colliding on left
    ld de, $0100
    call getTileNearEntityWithXYOffset
    rlca
    jr nc, bat_LABEL_4F43_
        ; Change entity type and
        ; velocity to bat right.
        ld (ix + Entity.type), ENTITY_BAT_RIGHT
        ld (ix + Entity.xSpeed.high), $00
        ld (ix + Entity.xSpeed.low), $80
bat_LABEL_4F43_:
    inc (ix + Entity.unknown6)
    ld a, (ix + Entity.unknown6)
    cp $40
    jr nz, +
    xor a
    ld (ix + Entity.unknown6), a
+:
    ; Apply sine movement
    ld hl, lowSine
    ld c, a
    ld b, $00
    add hl, bc
    ld h, (hl)
    ld de, (v_verticalScrollSpeed)
    ; @TODO
    ld a, d
    cpl
    inc a
    ld d, a
    ld a, e
    cpl
    inc a
    ld e, a
    ld a, h
    ld h, (ix + Entity.unknown5)
    ld l, (ix + Entity.jankenMatchDecision)
    add hl, de
    ld (ix + Entity.unknown5), h
    ld (ix + Entity.jankenMatchDecision), l
    add a, h
    ; @TODO: Clear if offscreen?
    cp $C0
    jp nc, clearCurrentEntity
    ld (ix + Entity.yPos.high), a

_LABEL_4F7C_:
    ld hl, _DATA_8BBD_
    jp handleEntityAnimation