.org $C000

ramStart:

.enum $C000 export
v_highScore dsb $4
v_VDPRegister1Value db
v_inputFlags db
v_inputData db      ; inverse of port Port_IOPort1 (port $DC)
v_inputDataChanges db
v_interruptFlags db
v_spriteTerminatorPointer dw
; v_spriteTerminatorPointer.low db
; v_spriteTerminatorPointer.high db
.ende

.enum $C00E export
paletteUpdaterPointer dw
.ende

.enum $C011 export
v_textBoxMessageIndex db
.ende

.enum $C014 export
_RAM_C014_ db
v_disallowMap db
v_nextDemoIndex db
.ende

.enum $C01F export
v_gameState db
v_score dsb $3
v_level dw
v_lives db
.ende

.enum $C030 export
v_money db
v_moneyByteTwo db
.ende

.enum $C038 export
v_currentMapOrTextNametablePointer dw
v_currentMapNametableDestinationPointer dw
v_mapLoadingState db
v_shouldUpdateMapNametable db
v_nextMapNametableUpdateTimer db
v_levelStartingTimer db
.ende

.enum $C046 export
v_hasMagicCapsuleA db
v_hasMagicCapsuleB db
v_hasTelepathyBall db
v_hasCaneOfFlight db
v_hasTeleportPowder db
v_hasMoonstoneMedallion db
v_hasLetterToNibana db
v_hasPowerBracelet db
v_hasHirottaStone db
v_hasSunstoneMedallion db
.ende

.enum $C051 export
v_shouldSpawnRidingBoat_RAM_C051_ db
.ende

.enum $C053 export
v_inventoryItemSelectionState db
v_alexActionState db
v_shopFlags db
v_shopSelectedItemIndex db
v_itemBeignBoughtIndex db
v_selectedItemNametablePointer dw
v_invincibilityTimer dw
v_shouldBlankLeftmostColumn db
v_invincibilityColorTimer db
.ende

.enum $C05F export
v_VDPRegister0Value db
.ende

.enum $C061 export
v_entityDescriptorsPointer dw
v_addedEntitiesShouldBeOffscreenHorizontally db
v_addedEntitiesShouldBeOffscreenVertically db
v_entityIndex db
v_isScrollingDownToNextScreen db
v_newEntityVerticalOffset db
.ende

.enum $C069 export
v_shopDoorOffset db
v_shopEntranceDoorNametablePointer dw
v_horizontalPositionShopHasBeenEnteredFrom db
v_shopEntranceEnteredFromDoorNametablePointer dw
v_shouldAlexStartWalkingtoNextScreen db
v_nuraiOrOldManEntityTemporaryPointer dw
v_nuraiOrOldManEntityAnimationDescriptorTemporaryPointer dw
_RAM_C074_ dw
v_shouldShowNuraiOrOldMan db
v_specialLevelScrollFlags db
targetBase_RAM_C07A_ dw
targetBlock_RAM_C07A_ dw
v_questionMarkBoxIndex db
v_textBoxCounter db
v_textBoxFlags db
_RAM_C07F_ db
v_levelScrollFlags db
v_levelBankNumber db
.ende

.enum $C085 export
scrollFlagsUpdaterPointer dw
v_metatileNametablePointer dw
v_entityLoaderPointer dw
.ende

.enum $C08D export
v_currentScreenNumber db
_RAM_C08E_ db
v_powerBraceletsPickedUpCounter db
v_alexStateBeforeHit db
v_newEntityHorizontalOffset db
v_currentLevelIsBonusLevel db
v_shouldOpenMap db
v_endingSequencePointer db
_RAM_C095_ db
v_resetButtonState db
.ende

; Level variables.
; $2A (42 bytes) from $C0A0 to $C0CA.
.enum $C0A0 export
v_levelWidth db
v_linesToLoadToNametable db
v_levelData_C0A2 db
v_levelLayoutPointer dw
v_levelHeight db
v_columnsToLoadToNametable db
v_levelData_C0A7 db
v_SecondLevelLayoutPointer dw
v_UpdateNameTableFlags db
v_horizontalScrollSpeed .dw
v_horizontalScrollSpeed.low db
v_horizontalScrollSpeed.high db
v_horizontalScrollAccumulator .dw
v_horizontalScrollAccumulator.low db
v_horizontalScrollAccumulator.high db
v_horizontalScroll db
v_levelData_C0B0 dw
v_levelData_C0B2 db
v_levelData_C0B3_ db
v_levelData_C0B4_ db
v_levelData_C0B5_ db
v_horizontalScreenNumber db
v_levelData_C0B7_ dw
v_verticalScrollSpeed db
v_levelData_C0BA_ db
v_levelData_C0BB_ db
v_levelData_C0BC_ db
v_verticalScroll .dw
v_verticalScroll.low db
v_verticalScroll.high db
v_levelData_C0BF db
v_levelData_C0C0 db
v_levelData_C0C1_ db
v_levelData_C0C2_ db
v_levelData_C0C3_ db
v_verticalScreenNumber db
v_levelData_C0C5_ dw
v_levelData_C0C7 db
v_levelData_C0C8 db
v_scrollFlags db

v_temporaryLevelDataCopy dsb $2a

_RAM_C0F4_ dw
.ende

.enum $C0F8 export
v_entitydataArrayLength db
v_entitydataArrayPointer dw
_RAM_C0FB_ db
.ende

.enum $C0FD export
v_shopDoorNametablePointer dw
_RAM_C0FF_ db
v_waterColorTimer db
.ende

.enum $C103 export
v_introTimer dw
v_demoInputDataPointer dw
v_demoCurrentInputData dw
.ende

.enum $C10A export
v_nametableCopyFlags db
v_1bppTileColor db
.ende

.enum $C10D export
v_spriteFlickeringCounter db
.ende

.enum $C110 export
v_soundControl db
v_soundFadeOutVolume db
v_soundFadeOutTimer db
v_soundEffectPriority db
v_soundSoftwareChannelSevenState db
v_soundBattleSoundFlags db
v_soundNumber db
.ende

.enum $C118 export
    v_soundMusicChannels INSTANCEOF SoftwareChannel $04
; v_soundMusicSoftwareChannels dsb $8
.ende

.DEFINE v_soundMusicSoftwareChannels v_soundMusicChannels.1

.enum $C198 export
    v_soundEffectsChannels INSTANCEOF SoftwareChannel $03
; v_soundMusicSoftwareChannels dsb $8
.ende

.enum $C200 export
v_alexTilesIndex db
.ende

.enum $C202 export
v_nametableChangeRequest db
_RAM_C203_ db
v_nametableChangeDestination dw
nametableChangeSourceMetatile dw
_RAM_C208_ db
_RAM_C209_ db
.ende

.enum $C20B export
_RAM_C20B_ db
v_alexHorizontalSpeedTemporaryCopy dw
v_alexVerticalSpeedTemporaryCopy dw
v_alexStateTemporaryCopy db
_RAM_C211_ dw
v_nametableEntryAttrLastThreeBits db
v_nextGhostSpawnTimer db
v_hasBattleStarted db
v_hasBattleEnded db
v_BattleOpponentDecisionIndex db
_RAM_C218_ db
_RAM_C219_ dw
_RAM_C21B_ dw
.ende

.enum $C220 export
v_levelTileUpdateTimer db
v_fourFrameLevelTileIndex db
v_sixFrameLevelTileIndex db
v_levelTileUpdaterPointer dw
v_shouldUpdateLevelTiles db
v_titleScreenTimer db
v_currentTitleScreen db
v_titleScreenLogoTimer db
_RAM_C229_ db
_RAM_C22A_ db
.ende

.enum $C230 export
v_battleOpponentSpriteDescriptorPointer dw
v_battleOpponentTilesPointer dw
v_opponentNamePointer dw
v_opponentAnimationDescriptorPointer dw
v_opponentCountdownAnimationDescriptorPointer dw
v_opponentThrowSpriteDescriptorPointer dw
v_opponentDecisionsPointer dw
v_battleOpponentMessagePointer db
.ende

.enum $C240 export
temporaryAlexCopy dsb $1a
_RAM_C25A_ db
.ende

.enum $C25C export
_RAM_C25C_ db
.ende

.enum $C260 export
_RAM_C260_ dsb $2e
.ende

.enum $C2A0 export
_RAM_C2A0_ dsb $b
.ende

.enum $C300 export
    v_alex INSTANCEOF Entity
.ende

.enum $C300 export
    v_entities INSTANCEOF Entity $1E
.ende

.enum $C700 export
v_tempSprites dsb $6
_RAM_C706_ db
.ende

.enum $C800 export
v_nametable dsb $8
_RAM_C808_ dw
.ende

.enum $C828 export
_RAM_C828_ dsb $24
.ende

.enum $C850 export
_RAM_C850_ dsb $24
.ende

.enum $C878 export
_RAM_C878_ dsb $24
.ende

.enum $C908 export
_RAM_C908_ dsb $2e
.ende

.enum $CA08 export
_RAM_CA08_ dsb $24
_RAM_CA2C_ dsb $8
.ende

.enum $CA94 export
_RAM_CA94_ db
.ende

.enum $CA9C export
_RAM_CA9C_ db
.ende

.enum $CAA4 export
_RAM_CAA4_ db
.ende

.enum $CB08 export
_RAM_CB08_ dsb $8
.ende

.enum $CBB4 export
_RAM_CBB4_ dsb $8
.ende

.enum $CC06 export
_RAM_CC06_ db
.ende

.enum $CC08 export
_RAM_CC08_ db
.ende

.enum $CCD4 export
_RAM_CCD4_ db
.ende

.enum $CCD8 export
_RAM_CCD8_ db
.ende

.enum $CCDC export
_RAM_CCDC_ db
.ende

.enum $CCE0 export
_RAM_CCE0_ db
.ende

.enum $CCE4 export
_RAM_CCE4_ db
.ende

.enum $CCE8 export
_RAM_CCE8_ db
.ende

.enum $CCEC export
_RAM_CCEC_ db
.ende

.enum $CCF0 export
_RAM_CCF0_ db
.ende

.enum $CCF4 export
_RAM_CCF4_ dsb $4
_RAM_CCF8_ db
.ende

.enum $CD44 export
_RAM_CD44_ dsb $12
.ende

.enum $CE84 export
_RAM_CE84_ db
.ende

.enum $CF00 export
v_columnToDraw dsb $38
// $CF38
v_rowToDraw dsb $40
.ende

.enum $CF80 export
    v_mapEntities INSTANCEOF Entity $3
.ende

.enum $CFE0 export
v_textboxCursor db
.ende

.enum $D000 export
v_nametableCopy dsb $503
_RAM_D503_ db
_RAM_D504_ db
.ende

.enum $D506 export
_RAM_D506_ db
.ende

.enum $D700 export
v_decompressedLevelLayoutData db
.ende

.enum $D7D0 export
_RAM_D7D0_ db
_RAM_D7D1_ db
.ende

.enum $D7DA export
_RAM_D7DA_ db
.ende

.enum $D800 export
_RAM_D800_ db
_RAM_D801_ db
_RAM_D802_ db
_RAM_D803_ db
_RAM_D804_ db
_RAM_D805_ db
_RAM_D806_ db
_RAM_D807_ db
.ende

.enum $D8A0 export
v_unknownEntityByteCount_RAM_D8A0_ db
.ende

.enum $D900 export
v_metatileDeletesTable dsb $600
.ende

.org $DFFF

ramEnd:
