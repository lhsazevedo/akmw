.STRUCT Entity
    type db ; C300
    flags db ; C301
    unknown1 db ; C302
    data db ;C303
    animationFrame db ; C304
    animationTimer db ; C305
    animationTimerResetValue db ; C306
    spriteDescriptorPointer .dw ; C307
    spriteDescriptorPointer.low db ; C307
    spriteDescriptorPointer.high db ; C308
    ; ; C308
    isOffScreenFlags .dw
    isOffScreenFlags.low db ; C309
    isOffScreenFlags.high db ; C30A
    xPos .dw
    xPos.low db ; C30B
    xPos.high db ; C30C
    yPos .dw
    yPos.low db ; C30D
    yPos.high db ; C30E
    xSpeed .dw
    xSpeed.low db ; C30F
    xSpeed.high db ; C310
    ySpeed .dw
    ySpeed.low db ; C311
    ySpeed.high db ; C312
    unknown2 db ; C313
    unknown3 db ; C314
    unknown4 db ; C315
    unknown5 db ; C316
    battleDecision db; C317
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
; .dw metatilesTableA

.STRUCT LevelDescriptor
    bank db ; 66f8
    layoutDataPointer dw ; 66f9
    layoutDataPointer2 dw; 66fb
    startScreenX db ; 66fd
    startScreenY db ; 66fe
    xScreenCount db ; 66ff
    yScreenCount db ; 6700
    scrollFlags db ; 6701
    metatileNameTablePointer dw ; 6703
.ENDST

.STRUCT TileDescriptor
    yPos db
    xPos db
    characterCode db
.ENDST

.STRUCT SoftwareChannel
    ; Bit field with flags of the software channel.
    ; Bit 0: TODO
    ; Bit 1: TODO
    ; Bit 2: TODO
    ; Bit 3: TODO
    ; Bit 4: TODO
    ; Bit 5: TODO
    ; Bit 6: TODO
    ; Bit 7: TODO
    flags db

    ; Hardware channel used by the software channel
    hardwareChannel db

    ; Multipler for the note duration.
    duration db

    ; Play head pointer to sound data
    dataPointer .dw
    dataPointer.low db
    dataPointer.high db

    ; Transposition value
    transpose db

    ; Index to the pitch envelope table.
    ; Used for vibrato and other pitch effects.
    pitchEnvelope db

    ; Index to the volume envelope table.
    ; Used for tremolo and other volume effects.
    volumeEnvelope db

    ; Volume of the software channel
    volume db

    unknown1 db

    noteDuration .dw
    noteDuration.low db
    noteDuration.high db

    currentPlayDuration .dw
    currentPlayDuration.low db
    currentPlayDuration.high db

    volumeEnvelopeCounter db
    pitchEnvelopeCounter db

    noteFrequency .dw
    noteFrequency.low db
    noteFrequency.high db

    frequencyToWrite .dw
    frequencyToWrite.low db
    frequencyToWrite.high db

    ; TODO
    noteFrequency2 .dw
    noteFrequency2.low db
    noteFrequency2.high db

    volumeToWrite db 

    repetitionCouters dsb 9
.ENDST
