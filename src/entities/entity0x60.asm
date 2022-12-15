updateEntity0x60:
    ld a, (ix + Entity.state)
    ld hl, _DATA_3E38_
    jp jumpToAthPointer
