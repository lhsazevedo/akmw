updateWaterTilesA:
    ld de, waterAnimatedTilesFrames
    call getSixFrameTileAddress
    ld de, $5100
    ld b, $40
    rst memcpyToVRAM
    ret

updateSwampTiles:
    ld de, swampAnimatedTilesFrames
    call getSixFrameTileAddress
    ld de, $48C0
    ld b, $40
    rst memcpyToVRAM
    ret

updateLavaTilesA:
    ld de, LavaAAnimatedTilesFrames
    call getFourFrameTileAddress
    ld de, $49E0
    ld b, $60
    rst memcpyToVRAM
    ret

updateWaterTilesB:
    ld de, BoilingWaterAnimatedTilesFrames
    call getFourFrameTileAddress
    ld de, $48A0
    ld b, $60
    rst memcpyToVRAM
    ld de, waterAnimatedTilesFrames
    call getSixFrameTileAddress
    ld de, $5100
    ld b, $40
    rst memcpyToVRAM
    ret

updateLavaTilesB:
    ld de, LavaBAnimatedTilesFrames
    call getFourFrameTileAddress
    ld de, $4B40
    ld b, $60
    rst memcpyToVRAM
    ret

doNotUpdateTiles:
    ret

; @TODO: Maybe move this data
waterAnimatedTilesFrames:
.dw _DATA_17853_
.dw _DATA_17893_
.dw _DATA_178D3_
.dw _DATA_17913_
.dw _DATA_178D3_
.dw _DATA_17893_

swampAnimatedTilesFrames:
.dw _DATA_17953_
.dw _DATA_17993_
.dw _DATA_179D3_
.dw _DATA_17A13_
.dw _DATA_179D3_
.dw _DATA_17993_

LavaAAnimatedTilesFrames:
.dw _DATA_17A53_
.dw _DATA_17AB3_
.dw _DATA_17B13_
.dw _DATA_17B73_

BoilingWaterAnimatedTilesFrames:
.dw _DATA_17BD3_
.dw _DATA_17C33_
.dw _DATA_17C93_
.dw _DATA_17CF3_

LavaBAnimatedTilesFrames:
.dw _DATA_17D53_
.dw _DATA_17DB3_
.dw _DATA_17E13_
.dw _DATA_17E73_
