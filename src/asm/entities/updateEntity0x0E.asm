; 14th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x0E:
    ld a, (_RAM_C3DA_)
    ld hl, _DATA_7A98_
    rst $20    ; loadAthJumptablePointer
    ret
