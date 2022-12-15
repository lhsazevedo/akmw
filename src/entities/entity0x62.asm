updateEntity0x62:
    ld (ix + Entity.animationTimerResetValue), $19
    ld (ix + Entity.xPos.high), $D8
    ld (ix + Entity.yPos.high), $80
    ld hl, _DATA_9750_
    jp handleEntityAnimation
