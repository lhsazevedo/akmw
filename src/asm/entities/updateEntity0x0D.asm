
; 13th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x0D:
    ld a, (_RAM_C3DA_)
    ld hl, _DATA_79A9_
    rst $20    ; loadAthJumptablePointer
    ret
