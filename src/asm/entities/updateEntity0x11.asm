; 17th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x11:
    ld hl, $BEAA
    ld bc, $0809
    ld (ix+25), $19
    jr _LABEL_49FC_
