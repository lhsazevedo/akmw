; 3rd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x03:
    ld hl, _DATA_8372_
    call handleEntityAnimation
    dec (ix + Entity.unknown7)
    jp z, clearCurrentEntity
    ret
