; 47th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x2F:
    bit 0, (ix+1)
    jr nz, +
    ld (ix+7), <_DATA_854C_
    ld (ix+8), >_DATA_854C_
    ld a, (ix+9)
    or (ix+10)
    ret nz
    set 0, (ix+1)
    set 1, (ix+1)
    ld (ix+23), $10
+:
    ld a, (ix+9)
    or (ix+10)
    ret nz
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jp nc, _LABEL_55A5_
    dec (ix+23)
    ret nz
    ld a, $01
    ld (ix+23), a
    ld de, $1108
    call getTileNearEntityWithXYOffset
    rlca
    ret nc
    ld (ix+0), ENTITY_MONSTER_FROG_JUMPING
    ld (ix+18), $FE
    ld (ix+17), $80
    ld (ix+7), <_DATA_855A_
    ld (ix+8), >_DATA_855A_
    ret
