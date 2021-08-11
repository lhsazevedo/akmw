updateAlex:
    ; Reset scroll speed
    ld hl, $0000
    ld (v_horizontalScrollSpeed), hl
    ld (v_verticalScrollSpeed), hl

    bit 7, (ix + Entity.flags)
    call nz, _LABEL_2F41_
    ld a, (v_alex.state)
    ld hl, alexStateHandlersPointers
    rst jumpToAthPointer
    ld a, (v_alex.state)
    cp ALEX_DEAD
    ret z
    bit 4, (ix + Entity.unknown8)
    ret nz
    ld a, (v_level)
    ld hl, _DATA_3F3A_ - 2
    rst jumpToAthPointer
    ret

alexStateHandlersPointers:
.dw updateAlexSpawningAtCenter
.dw updateAlexIdle
.dw updateAlexWalking
.dw updateAlexInAir
.dw updateAlexCrouched
.dw updateAlexSwiming
.dw updateAlexFlyingPeticopter
.dw alexHandler_336F
.dw updateAlexRidingMotorcycle
.dw alexHandler_302F
.dw alexHandler_3256
.dw updateAlexRidingBoat
.dw updateAlexRidingBoatInAir
.dw updateAlexReachingDoor
.dw updateAlexCrossingDoor
.dw updateAlexDead
.dw alexHandler_3340
.dw alexHandler_31CC
.dw alexHandler_3223
.dw alexHandler_38C5
.dw updateAutoWalkingRight
.dw alexHandler_3919
.dw alexHandler_3961
.dw alexHandler_39A5
.dw alexHandler_3949
.dw alexHandler_39B4
.dw alexHandler_39D4
.dw alexHandler_38C2
