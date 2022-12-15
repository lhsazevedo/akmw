updateGhost:
    bit 0, (ix + Entity.flags)
    jr nz, +

    ; Initialize
    set 0, (ix + Entity.flags)
    ld (ix + Entity.unknown6), GHOST_IDLE_TIME
    ld (ix + Entity.animationTimer), $18
    ld (ix + Entity.animationTimerResetValue), $18

+:
    ; Clear if offscreen
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jp nz, destroyCurrentEntity

    ; Wait before start moving
    bit 1, (ix + Entity.flags)
    jp nz, +
    dec (ix + Entity.unknown6)
    jr nz, ++
    set 1, (ix + Entity.flags)

+:
    ; Skip if alex is dead
    ld a, (v_alex.state)
    cp ALEX_DEAD
    ret z

    call tryToKillAlexIfColliding

    call getVelocitiesToPursuitAlex
    ld (ix + Entity.xSpeed.high), h
    ld (ix + Entity.xSpeed.low), l
    ld (ix + Entity.ySpeed.high), d
    ld (ix + Entity.ySpeed.low), e

    ; Choose animation descriptor based on alex position
    ld hl, ghostRightAnimationDescriptor
    ld a, (v_alex.xPos.high)
    cp (ix + Entity.xPos.high)
    jp nc, handleEntityAnimation
++:
    ld hl, ghostLeftAnimationDescriptor
    jp handleEntityAnimation
