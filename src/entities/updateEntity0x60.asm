; 96th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x60:
    ld a, (ix + Entity.state)
    ld hl, _DATA_3E38_
    jp jumpToAthPointer
