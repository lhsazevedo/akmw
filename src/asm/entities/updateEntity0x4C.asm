; 76th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x4C:
    bit 0, (ix+1)
    jr nz, +
    set 0, (ix+1)
    ld (ix+7), <_DATA_80E1_
    ld (ix+8), >_DATA_80E1_
    ld a, (ix+3)
    ld (_RAM_C07F_), a
+:
    ld a, (ix+9)
    or (ix+10)
    ret nz
    ld iy, v_entity1
    call checkEntityCollision
    ret c
    ld a, $08
    ld (v_gameState), a
    jp clearCurrentEntity
