; 55th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateMonsterFrogJumping:
    ; Return if offscreen
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    ret nz

    call tryToKillAlexIfColliding

    call isAlexAttackingEntity
    jp nc, killEnemy

    ; Update Y velocity.
    ld h, (ix + Entity.ySpeed.high)
    ld l, (ix + Entity.ySpeed.low)
    ld de, $0008
    add hl, de
    ld (ix + Entity.ySpeed.high), h
    ld (ix + Entity.ySpeed.low), l
    ld a, h
    cp $FF
    ret z

    ; Return if not directly above a solid tile.
    ; This is needed so the frog can continue falling
    ; whean the block underneath it is broken.
    ; PS: Solid tile are the ones with charcode less than 128
    ld de, $1108
    call getNearEntityTileAttrWithOffset
    rlca
    ret nc

    ; Change entity to the normal still frog
    ld (ix + Entity.ySpeed.high), $00
    ld (ix + Entity.ySpeed.low), $00
    ld (ix + Entity.type), ENTITY_MONSTER_FROG
    ld (ix + Entity.spriteDescriptorPointer.low), <_DATA_854C_
    ld (ix + Entity.spriteDescriptorPointer.high), >_DATA_854C_
    ; @TODO: Fix entity var name below.
    ld (ix + Entity.battleDecision), $10
    ret
