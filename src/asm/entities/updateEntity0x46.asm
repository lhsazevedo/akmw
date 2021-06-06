; 70th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x46:
    bit 0, (ix + Entity.flags)
    jr nz, +
    ld a, $01
    ld (_RAM_C07F_), a
    ld (ix + Entity.animationTimer), $01
    ld (ix + Entity.animationTimerResetValue), $10
    ld (ix + Entity.jankenMatchDecision), $00
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jr nz, _LABEL_5C96_
    set 0, (ix + Entity.flags)
    ld (ix + Entity.unknown1), $82
    ld (ix + Entity.xSpeed.high), $FF
    ld (ix + Entity.xSpeed.low), $80
+:
    ld a, (ix + Entity.xPos.high)
    cp $18
    jr c, _LABEL_5C9C_
    call tryToKillAlexIfColliding
    call checkAlexEntityCollision_LABEL_7D0B_
    jr c, _LABEL_5C96_
    inc (ix + Entity.jankenMatchDecision)
    ld a, (ix + Entity.jankenMatchDecision)
    cp $08
    jp nc, _LABEL_5D7B_
    ld a, $8B
    ld (v_soundControl), a
    ld (ix + Entity.type), $47
    res 0, (ix + Entity.flags)
    ld (ix + Entity.spriteDescriptorPointer.low), <_DATA_8458_
    ld (ix + Entity.spriteDescriptorPointer.high), >_DATA_8458_
    jr _LABEL_5CA0_

_LABEL_5C96_:
    ld hl, _DATA_8453_
    jp handleEntityAnimation

; Fallthrough
_LABEL_5C9C_:
    ld (ix + Entity.type), $48

; Shared
_LABEL_5CA0_:
    ld a, (ix + Entity.xSpeed.high)
    cpl
    ld (ix + Entity.xSpeed.high), a
    ld a, (ix + Entity.xSpeed.low)
    cpl
    inc a
    ld (ix + Entity.xSpeed.low), a
    ret
