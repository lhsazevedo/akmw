; 48th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateSmallFishLeft:
    bit 0, (ix + Entity.flags)
    jr nz, +
    set 0, (ix + Entity.flags)
    ld (ix + Entity.unknown3), $04
    ld (ix + Entity.animationTimer), $10
    ld (ix + Entity.animationTimerResetValue), $10
    jr ++

+:
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jr nz, ++
    ld (ix + Entity.xSpeed.high), $FF
    ld (ix + Entity.xSpeed.low), $A0
    set 1, (ix + Entity.flags)
    call tryToKillAlexIfColliding
    call checkAlexEntityCollision_LABEL_7D0B_
    jp nc, _LABEL_55A5_
    ld de, $0100
    ld a, $08
    call _LABEL_3A03_
    jr nc, ++
    ld (ix + Entity.type), ENTITY_SMALL_FISH_RIGHT
    ld (ix + Entity.xSpeed.high), $00
    ld (ix + Entity.xSpeed.low), $60
++:
    ld hl, smallFishLeftAnimationDescriptor
    jp handleEntityAnimation


