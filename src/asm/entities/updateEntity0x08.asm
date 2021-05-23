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
    ld (_RAM_C36C_), a
    ld a, (v_entities.1.isOffScreenFlags)
    ld (_RAM_C369_), a
    ld a, (v_entities.1.yPos.high)
    sub $03
    ld (_RAM_C36E_), a
    ld a, (v_entities.1.isOffScreenFlags.high)
    ld (_RAM_C36A_), a
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
