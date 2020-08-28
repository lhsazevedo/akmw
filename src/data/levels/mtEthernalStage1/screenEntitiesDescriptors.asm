; Data at B6ED (1 bytes)
MtEternalScreen0EntitiesDescriptor:
    .db $00

; Data at B6EE (5 bytes)
MtEternalScreen1EntitiesDescriptor:
    .db $01
    .db ENTITY_MOSTERBIRD_LEFT
    .db $78 $68
    .db $00

; Data at B6F3 (9 bytes)
MtEternalScreen2EntitiesDescriptor:
    ; Length
    .db $02
    ; Entity 1
    .db ENTITY_MOSTERBIRD_LEFT
    .db $20 $88
    .db $00
    ; Entity 2
    .db ENTITY_MOSTERBIRD_LEFT
    .db $98 $40
    .db $00

; Data at B6FC (9 bytes)
MtEternalScreen3EntitiesDescriptor:
    ; Length
    .db $02
    ; Entity 1
    .db ENTITY_MOSTERBIRD_LEFT
    .db $10 $88
    .db $00
    ; Entity 2
    .db ENTITY_MOSTERBIRD_LEFT
    .db $A0 $60
    .db $00

; Data at B705 (9 bytes)
MtEternalScreen4EntitiesDescriptor:
    .db $02
    ; Entity 1
    .db ENTITY_MOSTERBIRD_LEFT
    .db $20 $D0
    .db $00
    ; Entity 2
    .db ENTITY_MOSTERBIRD_LEFT
    .db $70 $88
    .db $00

; Data at B70E (5 bytes)
MtEternalScreen5EntitiesDescriptor:
    .db $01
    ; Entity 1
    .db ENTITY_MOSTERBIRD_LEFT
    .db $40 $50
    .db $00

; Data at B713 (9 bytes)
MtEternalScreen6EntitiesDescriptor:
    .db $02
    ; Entity 1
    .db ENTITY_MOSTERBIRD_LEFT
    .db $20 $D0
    .db $00
    ; Entity 2
    .db ENTITY_MOSTERBIRD_LEFT
    .db $90 $30
    .db $00

; Data at B71C (9 bytes)
MtEternalScreen7EntitiesDescriptor:
    .db $02
    ; Entity 1
    .db ENTITY_MOSTERBIRD_LEFT
    .db $70 $28
    .db $00
    ; Entity 2
    .db ENTITY_MOSTERBIRD_LEFT
    .db $98 $B0
    .db $00

; Data at B725 (1 bytes)
MtEternalScreen8EntitiesDescriptor:
    .db $00

; Data at B726 (13 bytes)
MtEternalScreen9EntitiesDescriptor:
    .db $03
    ; Entity 1
    .db ENTITY_SMALL_FISH_LEFT
    .db $68 $38
    .db $00
    ; Entity 2
    .db ENTITY_SMALL_FISH_LEFT
    .db $50 $80
    .db $00
    ; Entity 3
    .db ENTITY_SMALL_FISH_LEFT
    .db $78 $E0
    .db $00

; Data at B733 (9 bytes)
MtEternalScreen10EntitiesDescriptor:
    .db $02
    .db ENTITY_SMALL_FISH_LEFT
    .db $30 $A0
    .db $00
    .db ENTITY_SMALL_FISH_LEFT
    .db $80 $90
    .db $00

; Data at B73C (18 bytes)
; @FIXME Theres something wrong here!
MtEternalScreen11EntitiesDescriptor:
    .db $84 ; @TODO: Why bit 7 is set?
    .db $44 ; And why this extra value?
    ; Entity 1
    .db ENTITY_SMALL_FISH_LEFT
    .db $E0 $00
    .db $03
    ; Entity 2
    .db $2E
    .db $28 $A0
    .db $00
    ; Entity 3
    .db ENTITY_SMALL_FISH_LEFT
    .db $68 $80
    .db $00
    ; Entity 4
    .db $23
    .db $80 $30
    .db $00