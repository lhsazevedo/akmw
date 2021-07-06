; 12th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x0C:
    bit 0, (ix + Entity.flags)
    ret nz
    set 0, (ix + Entity.flags)
    ld hl, _RAM_C2A0_
    ld (v_entities.23.spriteDescriptorPointer), hl
    ld (ix + Entity.xPos.high), $28
    ld (ix + Entity.yPos.high), $30
    ret
