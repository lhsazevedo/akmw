updateEntity0x03:
    ld hl, _DATA_8372_
    call handleEntityAnimation
    dec (ix + Entity.unknown7)
    jp z, destroyCurrentEntity
    ret
