; 19th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x13:
    ld hl, $BF26
    ld bc, $2003
    ld (ix + Entity.unknown7), $1E
    jr _LABEL_49FC_
