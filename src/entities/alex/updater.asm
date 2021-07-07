; 1st entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateAlex:
    ld hl, $0000
    ld (v_horizontalScrollSpeed), hl
    ld (v_verticalScrollSpeed), hl
    bit 7, (ix + Entity.flags)
    call nz, _LABEL_2F41_
    ld a, (v_entities.1.state)
    ld hl, alexStateHandlersPointers
    rst jumpToAthPointer
    ld a, (v_entities.1.state)
    cp ALEX_DEAD
    ret z
    bit 4, (ix + Entity.unknown8)
    ret nz
    ld a, (v_level)
    ld hl, _DATA_3F3A_ - 2
    rst jumpToAthPointer
    ret
