.STRUCT entity
    type db ; C300
    flags db ; C301
    unknown1 db ; C302
    data db ;C303
    animationFrame db ; C304
    animationTimer db ; C305
    animationTimerResetValue db ; C306
    spriteDescriptorPointer dw ; C307
    ; ; C308
    isOffScreenFlagsB1 db ; C309
    isOffScreenFlagsB2 db ; C30A
    xPosB1 db ; C30B
    xPosB2 db ; C30C
    yPosB1 db ; C30D
    yPosB2 db ; C30E
    xSpeedB1 db ; C30F
    xSpeedB2 db ; C310
    ySpeedB1 db ; C311
    ySpeedB2 db ; C312
    unknown2 db ; C313
    unknown3 db ; C314
    unknown4 db ; C315
    unknown5 db ; C316
    jankenMatchDecision db; C317
    unknown6 db ; C318
    unknown7 db ; C319
    state db ; C31A
    stateTimer db ; C31B
    unknown8 db ; C31C
    unknown9 db ; C31D
    unknown10 db ; C31E
    unknown11 db ; C31F
.ENDST

; _DATA_66F8_:
; .db $86

; ; Pointer Table from 66F9 to 66FC (2 entries, indexed by unknown)
; .dw _DATA_18000_ _DATA_18004_

; ; Data from 66FD to 6701 (5 bytes)
; .db $01 $01 $02 $09 $81

; ; Pointer Table from 6702 to 6703 (1 entries, indexed by unknown)
; .dw _DATA_14000_

.STRUCT LevelDescriptor
    bank db ; 66f8
    layoutDataPointer dw ; 66f9
    layoutDataPointer2 dw; 66fb
    startScreenX db ; 66fd
    startScreenY db ; 66fe
    xScreenCount db ; 66ff
    yScreenCount db ; 6700
    scrollability db ; 6701
    metatileNameTablePointer dw ; 6703
.ENDST
