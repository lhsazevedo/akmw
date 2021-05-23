; 18th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x12:
    ld hl, $BEF2
    ld bc, $040B
    ld (ix+25), $0A
    jr _LABEL_49FC_
