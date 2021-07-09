; 8th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x08:
    ld hl, (v_entities.4.stateTimer)
    dec hl
    ld a, l
    or h
    ld (v_entities.4.stateTimer), hl
    jr z, +
    ld a, (v_alex.xPos.high)
    sub $04
    ld (v_entities.4.xPos.high), a
    ld a, (v_alex.isOffScreenFlags)
    ld (v_entities.4.isOffScreenFlags.low), a
    ld a, (v_alex.yPos.high)
    sub $03
    ld (v_entities.4.yPos.high), a
    ld a, (v_alex.isOffScreenFlags.high)
    ld (v_entities.4.isOffScreenFlags.high), a
    ret

+:
    call audioEngine.handler_LABEL_99D3_
    ld hl, v_alex.unknown8
    ld a, (hl)
    and $F4
    ld (hl), a
    xor a
    ld (_RAM_C054_), a
    jp destroyCurrentEntity
