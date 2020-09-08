.enum $C000 export
_RAM_C000_ dsb $4
_RAM_C004_ db
v_inputFlags db
v_inputData db      ; inverse of port Port_IOPort1 (port $DC)
_RAM_C007_ db
_RAM_C008_ db
v_spriteTerminatorPointer dw
; v_spriteTerminatorPointer.low db
; v_spriteTerminatorPointer.high db
.ende

.enum $C00E export
_RAM_C00E_ dw
.ende

.enum $C011 export
v_messageToShowInTheTextBoxIndex db
.ende

.enum $C014 export
_RAM_C014_ db
shouldDisplayMapOpening db
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
_RAM_C038_ dw
_RAM_C03A_ dw
_RAM_C03C_ db
_RAM_C03D_ db
_RAM_C03E_ db
_RAM_C03F_ db
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
_RAM_C051_ db
.ende

.enum $C053 export
v_inventoryItemSelectionState db
_RAM_C054_ db
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
v_entitydataPointersPointer dw
v_addedEntitiesShouldBeOffscreenHorizontally db
v_addedEntitiesShouldBeOffscreenVertically db
v_entityIndex db
v_isScrollingDownToNextScreen db
v_newEntityVerticalOffset db
.ende

.enum $C069 export
v_shopEntranceHorizontalPosition db
v_shopEntranceDoorNametablePointer dw
v_horizontalPositionShopHasBeenEnteredFrom db
v_shopEntranceEnteredFromDoorNametablePointer dw
v_shouldAlexStartWalkingtoNextScreen db
v_nuraiOrOldManEntityTemporaryPointer dw
v_nuraiOrOldManEntityAnimationDescriptorTemporaryPointer dw
_RAM_C074_ dw
v_shouldShowNuraiOrOldMan db
v_specialLevelScrollabilityFlag db
_RAM_C078_ dw
_RAM_C07A_ dw
v_questionMarkBoxIndex db
v_textBoxCounter db
v_textBoxFlags db
_RAM_C07F_ db
v_levelScrollability db
v_levelBankNumber db
.ende

.enum $C085 export
_RAM_C085_ dw
_RAM_C087_ dw
_RAM_C089_ dw
.ende

.enum $C08D export
v_currentScreenNumber db
_RAM_C08E_ db
v_powerBraceletsPickedUpCounter db
v_alexStateBeforeHit db
v_newEntityHorizontalOffset db
v_currentLevelIsBonusLevel db
v_triggerMapScreenToggle db
v_endingSequencePointer db
_RAM_C095_ db
v_resetButtonState db
.ende

.enum $C0A0 export
v_levelWidth db
v_linesToLoadToNametable db
.ende

.enum $C0A3 export
v_levelLayoutPointer dw
v_levelHeight db
v_columnsToLoadToNametable db
.ende

.enum $C0A8 export
v_SecondLevelLayoutPointer dw
v_UpdateNameTableFlags db
v_horizontalScrollSpeed db
_RAM_C0AC_ db
_RAM_C0AD_ db
_RAM_C0AE_ db
v_horizontalScroll db
_RAM_C0B0_ dw
.ende

.enum $C0B3 export
_RAM_C0B3_ db
_RAM_C0B4_ db
_RAM_C0B5_ db
v_horizontalScreenNumber db
_RAM_C0B7_ dw
v_verticalScrollSpeed db
_RAM_C0BA_ db
_RAM_C0BB_ db
_RAM_C0BC_ db
v_verticalScroll db
_RAM_C0BE_ dw
.ende

.enum $C0C1 export
_RAM_C0C1_ db
_RAM_C0C2_ db
_RAM_C0C3_ db
v_verticalScreenNumber db
_RAM_C0C5_ dw
.ende

.enum $C0C9 export
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
_RAM_C0FD_ dw
_RAM_C0FF_ db
v_waterColorTimer db
.ende

.enum $C103 export
v_introTimer dw
v_demoInputDataTimer dw
v_demoCurrentInputData dw
.ende

.enum $C10A export
_RAM_C10A_ db
_RAM_C10B_ db
.ende

.enum $C10D export
_RAM_C10D_ db
.ende

.enum $C110 export
v_soundControl db
v_soundFadeOutVolume db
v_soundFadeOutTimer db
v_soundEffectPriority db
v_soundSoftwareChannelSevenState db
v_soundJankenMatchSoundFlags db
v_soundNumber db
.ende

.enum $C118 export
v_soundMusicSoftwareChannels dsb $8
_RAM_C120_ db
.ende

.enum $C138 export
_RAM_C138_ dsb $8
_RAM_C140_ db
.ende

.enum $C158 export
_RAM_C158_ db
.ende

.enum $C160 export
_RAM_C160_ db
.ende

.enum $C178 export
_RAM_C178_ db
.ende

.enum $C198 export
v_soundEffectsSoftwareChannels dsb $9
.ende

.enum $C1B8 export
_RAM_C1B8_ dsb $9
.ende

.enum $C1D8 export
_RAM_C1D8_ dsb $9
.ende

.enum $C200 export
v_alexTilesIndex db
.ende

.enum $C202 export
_RAM_C202_ db
_RAM_C203_ db
_RAM_C204_ dw
_RAM_C206_ dw
_RAM_C208_ db
_RAM_C209_ db
.ende

.enum $C20B export
_RAM_C20B_ db
v_alexHorizontalSpeedTemporaryCopy dw
v_alexVerticalSpeedTemporaryCopy dw
v_alexStateTemporaryCopy db
_RAM_C211_ dw
_RAM_C213_ db
v_nextGhostSpawnTimer db
v_hasJankenMatchStarted db
_RAM_C216_ db
v_JankenMatchOpponentDecisionIndex db
_RAM_C218_ db
_RAM_C219_ dw
_RAM_C21B_ dw
.ende

.enum $C220 export
_RAM_C220_ db
_RAM_C221_ db
_RAM_C222_ db
_RAM_C223_ dw
_RAM_C225_ db
_RAM_C226_ db
_RAM_C227_ db
_RAM_C228_ db
_RAM_C229_ db
_RAM_C22A_ db
.ende

.enum $C230 export
_RAM_C230_ dw
_RAM_C232_ dw
_RAM_C234_ dw
_RAM_C236_ dw
_RAM_C238_ dw
_RAM_C23A_ dw
_RAM_C23C_ dw
_RAM_C23E_ db
.ende

.enum $C240 export
_RAM_C240_ dsb $1a
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
    v_entities INSTANCEOF Entity $1E
.ende

.DEFINE v_entity1 v_entities

.enum $C340 export
_RAM_C340_ db
.ende

.enum $C347 export
_RAM_C347_ dw
.ende

.enum $C360 export
_RAM_C360_ db
.ende

.enum $C367 export
_RAM_C367_ dw
_RAM_C369_ db
_RAM_C36A_ db
.ende

.enum $C36C export
_RAM_C36C_ db
.ende

.enum $C36E export
_RAM_C36E_ db
_RAM_C36F_ dw
_RAM_C371_ dw
.ende

.enum $C374 export
_RAM_C374_ db
.ende

.enum $C37B export
_RAM_C37B_ dw
.ende

.enum $C3A0 export
_RAM_C3A0_ db
.ende

.enum $C3A2 export
_RAM_C3A2_ db
_RAM_C3A3_ db
.ende

.enum $C3A5 export
_RAM_C3A5_ db
.ende

.enum $C3A7 export
_RAM_C3A7_ dw
.ende

.enum $C3AA export
_RAM_C3AA_ db
.ende

.enum $C3AC export
_RAM_C3AC_ db
.ende

.enum $C3AE export
_RAM_C3AE_ db
.ende

.enum $C3B7 export
_RAM_C3B7_ db
.ende

.enum $C3B9 export
_RAM_C3B9_ db
_RAM_C3BA_ db
.ende

.enum $C3BF export
_RAM_C3BF_ db
_RAM_C3C0_ db
.ende

.enum $C3C2 export
_RAM_C3C2_ db
.ende

.enum $C3C7 export
_RAM_C3C7_ dw
.ende

.enum $C3CC export
_RAM_C3CC_ db
.ende

.enum $C3CE export
_RAM_C3CE_ db
_RAM_C3CF_ dw
_RAM_C3D1_ dw
.ende

.enum $C3D4 export
_RAM_C3D4_ db
.ende

.enum $C3D7 export
_RAM_C3D7_ db
_RAM_C3D8_ db
.ende

.enum $C3DA export
_RAM_C3DA_ db
_RAM_C3DB_ db
_RAM_C3DC_ dw
_RAM_C3DE_ dw
_RAM_C3E0_ db
.ende

.enum $C3E7 export
_RAM_C3E7_ dw
.ende

.enum $C3EC export
_RAM_C3EC_ db
.ende

.enum $C3EE export
_RAM_C3EE_ db
_RAM_C3EF_ dw
.ende

.enum $C400 export
_RAM_C400_ db
.ende

.enum $C500 export
_RAM_C500_ db
.ende

.enum $C5C0 export
_RAM_C5C0_ db
.ende

.enum $C5C7 export
_RAM_C5C7_ dw
.ende

.enum $C5CC export
_RAM_C5CC_ db
.ende

.enum $C5CE export
_RAM_C5CE_ db
.ende

.enum $C5E0 export
_RAM_C5E0_ db
.ende

.enum $C640 export
_RAM_C640_ db
.ende

.enum $C657 export
_RAM_C657_ db
.ende

.enum $C660 export
_RAM_C660_ db
.ende

.enum $C677 export
_RAM_C677_ db
.ende

.enum $C680 export
_RAM_C680_ db
.ende

.enum $C700 export
_RAM_C700_ dsb $6
_RAM_C706_ db
.ende

.enum $C780 export
_RAM_C780_ db
.ende

.enum $C800 export
_RAM_C800_ dsb $8
_RAM_C808_ dw
_RAM_C80A_ dw
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

.enum $CA48 export
_RAM_CA48_ dsb $8
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

.enum $CB48 export
_RAM_CB48_ dsb $8
.ende

.enum $CBB4 export
_RAM_CBB4_ dsb $8
.ende

.enum $CBF4 export
_RAM_CBF4_ dsb $8
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
_RAM_CF00_ db
.ende

.enum $CF38 export
_RAM_CF38_ db
.ende

.enum $CF80 export
_RAM_CF80_ dsb $20
_RAM_CFA0_ dsb $20
_RAM_CFC0_ db
.ende

.enum $CFE0 export
v_textboxCursor db
.ende

.enum $D000 export
_RAM_D000_ dsb $503
_RAM_D503_ db
_RAM_D504_ db
.ende

.enum $D506 export
_RAM_D506_ db
.ende

.enum $D700 export
_RAM_D700_ db
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
_RAM_D8A0_ db
.ende

.enum $D900 export
_RAM_D900_ dsb $600
.ende

.enum $FFFF export
_RAM_FFFF_ db
.ende
