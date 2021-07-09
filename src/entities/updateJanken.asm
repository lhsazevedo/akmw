updateJanken:
    ld a, (v_entities.6.state)
    ld hl, jankenUpdaters
    rst jumpToAthPointer
    ret

