; 98th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x62:
    ld (ix+6), $19
    ld (ix+12), $D8
    ld (ix+14), $80
    ld hl, _DATA_9750_
    jp handleEntityAnimation
