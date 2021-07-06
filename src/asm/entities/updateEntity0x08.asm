; 8th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x08:
    ld hl, (_RAM_C37B_)
    dec hl
    ld a, l
    or h
    ld (_RAM_C37B_), hl
    jr z, +
    ld a, (v_entities.1.xPos.high)
    sub $04
    ld (v_entities.4.xPos.high), a
    ld a, (v_entities.1.isOffScreenFlags)
    ld (v_entities.4.isOffScreenFlags.low), a
    ld a, (v_entities.1.yPos.high)
    sub $03
    ld (v_entities.4.yPos.high), a
    ld a, (v_entities.1.isOffScreenFlags.high)
    ld (v_entities.4.isOffScreenFlags.high), a
    ret

+:
    call audio_LABEL_99D3_
    ld hl, v_entities.1.unknown8
    ld a, (hl)
    and $F4
    ld (hl), a
    xor a
    ld (_RAM_C054_), a
    jp clearCurrentEntity
