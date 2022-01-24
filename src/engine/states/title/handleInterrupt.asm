handleInterruptTitleScreenState:
    ; Wait for v_titleScreenTimer.
    ld hl, v_titleScreenTimer
    dec (hl)
    ret nz

    ; Reset timer for tile screens.
    ld (hl), TITLE_SCREEN_TILE_DURATION

    ; Check if we are at the last tile screen. If not,
    ; jump to next tile. Else, continue to logo animation.
    
    inc hl
    ld a, (hl)
    cp $06
    jr c, advanceTitleScreenLevelTile

    ; Reset timer for title color.
    dec hl
    ld (hl), $03

    ; Increment color index and load color.
    inc hl
    inc hl
    inc (hl)

    ld a, (hl)
    and $03
    ld hl, titleLogoAnimationColors
    ld e, a
    ld d, $00
    add hl, de
    ld a, (hl)
    ld de, $C002
    jp writeAToVRAM


advanceTitleScreenLevelTile:
    inc (hl)
    ld hl, Mapper_Slot2
    ld (hl), $84
    ld hl, titleScreenFrameUpdatersPointers
    jp jumpToAthPointer


showTitleUnderwaterFrame:
    ld hl, titleUnderwaterFrameNametable
    ld de, $7828
    ld bc, $0718
    call copyNameTableBlockToVram
    jp createTitleEntityAlexSwiming


showTitleBoatFrame:
    ld hl, titleBoatFrameNametable
    ld de, $7B98
    ld bc, $061C
    call copyNameTableBlockToVram
    jp createTitleEntityAlexRidingBoat


showTitleTreeFrame:
    ld hl, titleTreeFrameNametable
    ld de, $7800
    ld bc, $080E
    jp copyNameTableBlockToVram


showTitlePeticopterFrame:
    ld hl, titlePeticopterFrameNametable
    ld de, $79F4
    ld bc, $0C0C
    call copyNameTableBlockToVram
    jp createTitleEntityAlexFlyingPeticopter


showTitleJankenFrame:
    ld hl, titleJankenFrameNametable 
    ld de, $7A00
    ld bc, $1018
    call copyNameTableBlockToVram
    jp createTitleEntitiesJankenFlight


showTitlePushStartFrame:
    ld hl, titlePushStartFrameNametable
    ld de, $7D1A
    ld bc, $0322
    jp copyNameTableBlockToVram


titleScreenPalette:
.db $2F $00 $03 $04

; @TODO
; 5th entry of Pointer Table from 1BF61 (indexed by unknown)
; Data from 8CA to 8E5 (28 bytes)
_DATA_8CA_:
.db $0C $08 $05 $0B $30 $38 $3C $3F $02 $06 $2F $00
.db $2F $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A


titleScreenFrameUpdatersPointers:
.dw showTitleUnderwaterFrame
.dw showTitleBoatFrame
.dw showTitleTreeFrame
.dw showTitlePeticopterFrame
.dw showTitleJankenFrame
.dw showTitlePushStartFrame


titleLogoAnimationColors:
.db $03 $0F $08 $0F
