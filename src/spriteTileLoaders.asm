spriteTilesLoadersPointers:
.dw loadMtEthernalSpriteTiles
.dw loadMtEthernalStage2SpriteTiles
.dw loadLakeFathomSpriteTiles
.dw loadTheIslandOfStNurariSpriteTiles
.dw loadLakeFathomPart2SpriteTiles
.dw loadTheVillageOfNamuiSpriteTiles
.dw loadMtKaveSpriteTiles
.dw loadTheBlakwoodsSpriteTiles
.dw loadRiverSpriteTiles
.dw loadBingooLowlandSpriteTiles
.dw loadTheRadactianCastleSpriteTiles
.dw loadTheCityOfRadactianSpriteTiles
.dw loadSwampSpriteTiles
.dw loadTheKingdomOfNibanaPart1SpriteTiles
.dw loadTheKingdomOfNibanaPart2SpriteTiles
.dw loadJankensCastleSpriteTiles
.dw loadCraggLakeSpriteTiles

loadMtEthernalSpriteTiles:
    call loadDebrisATiles
    call loadGreenDebrisTiles
    call loadDebrisBTiles
    call loadSmokePuffTiles
    call loadMonsterBirdTiles
    call loadMermanBubblesTiles
    call loadKillerFishTiles
    call loadMermanTiles
    jp loadSmallFishTiles

loadMtEthernalStage2SpriteTiles:
    call loadDebrisATiles
    call loadGreenDebrisTiles
    call loadDebrisBTiles
    call loadFlameTiles
    call loadScorpionTiles
    call loadSmokePuffTiles
    call loadMonkeyLeafTiles
    call loadMonkeyTiles
    call loadMonsterFrogTiles
    jp loadPlantTiles

loadLakeFathomSpriteTiles:
    call loadDebrisATiles
    call loadGreenDebrisTiles
    call loadBlueDebrisTiles
    call loadSmokePuffTiles
    call loadSmallFishTiles
    call loadKillerFishTiles
    call loadSeaHorseTiles
    jp loadOctopusArmTiles

loadTheIslandOfStNurariSpriteTiles:
    call loadDebrisATiles
    call loadGreenDebrisTiles
    call loadBlueDebrisTiles
    call loadPeticopterTiles
    call loadSmokePuffTiles
    call loadMonsterBirdTiles
    call loadStNurariTiles
    call loadFlameTiles
    call loadScorpionTiles
    jp loadPlantTiles

loadLakeFathomPart2SpriteTiles:
    call loadDebrisATiles
    call loadGreenDebrisTiles
    call loadDebrisBTiles
    call loadSmokePuffTiles
    call loadSmallFishTiles
    call loadMonsterBirdTiles
    call loadKillerFishTiles
    jp loadFlyingFishTiles

loadTheVillageOfNamuiSpriteTiles:
    call loadDebrisATiles
    call loadGreenDebrisTiles
    call loadDebrisBTiles
    call loadFlameTiles
    call loadScorpionTiles
    call loadSmokePuffTiles
    call loadOxTiles
    call loadVillageElderTiles
    jp loadDarumanTiles

loadMtKaveSpriteTiles:
    call loadDebrisATiles
    call loadGreenDebrisTiles
    call loadBlueDebrisTiles
    call loadFlameTiles
    call loadScorpionTiles
    call loadTelapathyBallTiles
    call loadSmokePuffTiles
    call loadRollingRockTiles
    jp loadBatTiles

loadTheBlakwoodsSpriteTiles:
    call loadDebrisATiles
    call loadGreenDebrisTiles
    call loadWoodsDebrisTiles
    call loadSmokePuffTiles
    call loadMonkeyLeafTiles
    call loadBatTiles
    call loadGrizzlyBearTiles
    jp loadMonkeyTiles

loadRiverSpriteTiles:
    call loadDebrisATiles
    call loadGreenDebrisTiles
    call loadDebrisBTiles
    call loadSmokePuffTiles
    call loadMonsterBirdTiles
    call loadSmallFishTiles
    call loadMermanBubblesTiles
    call loadFlyingFishTiles
    jp loadMermanTiles

loadBingooLowlandSpriteTiles:
    call loadDebrisATiles
    call loadGreenDebrisTiles
    call loadDebrisBTiles
    call loadPlantTiles
    call loadSmokePuffTiles
    call loadLightningTiles
    call loadDarkCloudTiles
    call loadFlameTiles
    jp loadScorpionTiles

loadTheRadactianCastleSpriteTiles:
    call loadDebrisATiles
    call loadGreenDebrisTiles
    call loadBlueDebrisTiles
    call loadSmokePuffTiles
    call loadTelapathyBallTiles
    call loadFlameTiles
    call loadLetterTiles
    call loadEgleTiles
    call loadScorpionTiles
    call loadRollingRockTiles
    call loadMonkeyTiles
    call loadMonkeyLeafTiles
    call loadMonsterFrogTiles
    jp loadBatTiles

loadTheCityOfRadactianSpriteTiles:
    call loadDebrisATiles
    call loadGreenDebrisTiles
    call loadDebrisBTiles
    call loadFlameTiles
    call loadScorpionTiles
    call loadMonsterFrogTiles
    jp loadSmokePuffTiles

loadSwampSpriteTiles:
    call loadDebrisATiles
    call loadGreenDebrisTiles
    call loadDebrisBTiles
    call loadSmokePuffTiles
    call loadPlantTiles
    jp loadMonsterBirdTiles

loadTheKingdomOfNibanaPart1SpriteTiles:
    call loadDebrisATiles
    call loadGreenDebrisTiles
    call loadDebrisBTiles
    call loadHirottaStoneTiles
    jp loadSmokePuffTiles

loadTheKingdomOfNibanaPart2SpriteTiles:
    call loadDebrisATiles
    call loadGreenDebrisTiles
    call loadDebrisBTiles
    call loadFlameTiles
    call loadScorpionTiles
    call loadSmokePuffTiles
    call loadMonkeyLeafTiles
    call loadMonkeyTiles
    call loadMonsterFrogTiles
    jp loadPlantTiles

loadJankensCastleSpriteTiles:
    call loadDebrisATiles
    call loadGreenDebrisTiles
    call loadDebrisBTiles
    call loadSmokePuffTiles
    call loadMonsterFrogTiles
    call loadMoonlightStoneMedallionTiles
    call loadTeleportPowderTiles
    call loadPrincessLoraTiles
    call loadFlameTiles
    call loadScorpionTiles
    call loadRollingRockTiles
    jp loadPlantTiles

loadCraggLakeSpriteTiles:
    call loadDebrisATiles
    call loadGreenDebrisTiles
    call loadDebrisBTiles
    call loadSmokePuffTiles
    call loadSmallFishTiles
    call loadMoonlightStoneMedallionTiles
    call loadSunStoneMedallionTiles
    call loadGoldCrownTiles
    call loadMermanBubblesTiles
    jp loadMermanTiles

loadSmokePuffTiles:
    ld hl, _DATA_1C7E9_
    ld de, $6880
    ld bc, $0220
    jp copyBytesToVRAM

loadMonsterBirdTiles:
    ld hl, _DATA_1CA09_
    ld de, $6FA0
    ld bc, $0180
    call copyBytesToVRAM
    ld hl, _DATA_1CA09_
    ld bc, $0180
    jp copyMirroredTilesToVramAtCurrentAddress

loadMermanBubblesTiles:
    ld hl, _DATA_1CDC9_
    ld de, $7580
    ld bc, $0040
    jp copyBytesToVRAM

loadMermanTiles:
    ld hl, _DATA_1CB89_
    ld de, $75C0
    ld bc, $0240
    jp copyBytesToVRAM

loadSmallFishTiles:
    ld hl, _DATA_1EE09_
    ld de, $6AA0
    ld bc, $0100
    call copyBytesToVRAM
    ld hl, _DATA_1EE09_
    ld bc, $0100
    jp copyMirroredTilesToVramAtCurrentAddress

loadKillerFishTiles:
    ld hl, _DATA_1D5E9_
    ld de, $6CA0
    ld bc, $0180
    call copyBytesToVRAM
    ld hl, _DATA_1D5E9_
    ld bc, $0180
    jp copyMirroredTilesToVramAtCurrentAddress

loadMonkeyLeafTiles:
    ld hl, _DATA_1DCA9_
    ld de, $6C00
    ld bc, $0020
    jp copyBytesToVRAM

loadMonkeyTiles:
    ld hl, _DATA_1DB49_
    ld de, $6AA0
    ld bc, $0160
    jp copyBytesToVRAM

loadMonsterFrogTiles:
    ld hl, _DATA_1DD49_
    ld de, $7000
    ld bc, $0100
    jp copyBytesToVRAM

loadPlantTiles:
    ld hl, _DATA_1DE49_
    ld de, $7760
    ld bc, $00A0
    jp copyBytesToVRAM

loadSeaHorseTiles:
    ld hl, _DATA_1EF09_
    ld de, $7200
    ld bc, $00C0
    jp copyBytesToVRAM

loadOctopusArmTiles:
    ld hl, _DATA_1DB09_
    ld de, $77E0
    ld bc, $0020
    jp copyBytesToVRAM

loadStNurariTiles:
    ld hl, _DATA_1CFC9_
    ld de, $72A0
    ld bc, $0100
    jp copyBytesToVRAM

loadFlyingFishTiles:
    ld hl, _DATA_1CEC9_
    ld de, $72A0
    ld bc, $0100
    call copyBytesToVRAM
    ld hl, _DATA_1CEC9_
    ld bc, $0100
    jp copyMirroredTilesToVramAtCurrentAddress

loadOxTiles:
    ld hl, _DATA_1D769_
    ld de, $6C00
    ld bc, $02E0
    call copyBytesToVRAM
    ld hl, _DATA_1D769_
    ld bc, $02E0
    jp copyMirroredTilesToVramAtCurrentAddress

loadDarumanTiles:
    ld hl, _DATA_1DA49_
    ld de, $7280
    ld bc, $00C0
    call copyBytesToVRAM
    ld hl, _DATA_1DA49_
    ld bc, $00C0
    jp copyMirroredTilesToVramAtCurrentAddress

loadRollingRockTiles:
    ld hl, _DATA_1DEE9_
    ld de, $7680
    ld bc, $00C0
    jp copyBytesToVRAM

loadGrizzlyBearTiles:
    ld hl, _DATA_1E2A9_
    ld de, $6C20
    ld bc, $0AE0
    jp copyBytesToVRAM

loadLightningTiles:
    ld hl, _DATA_1E0A9_
    ld de, $73E0
    ld bc, $0020
    jp copyBytesToVRAM

loadDarkCloudTiles:
    ld hl, _DATA_1E0C9_
    ld de, $7320
    ld bc, $00C0
    jp copyBytesToVRAM

loadFlameTiles:
    ld hl, _DATA_1DFA9_
    ld de, $7400
    ld bc, $0100
    jp copyBytesToVRAM

loadScorpionTiles:
    ld hl, _DATA_1CE09_
    ld de, $7500
    ld bc, $00C0
    call copyBytesToVRAM
    ld hl, _DATA_1CE09_
    ld bc, $00C0
    jp copyMirroredTilesToVramAtCurrentAddress

loadEgleTiles:
    ld hl, _DATA_1D0C9_
    ld de, $7180
    ld bc, $0280
    jp copyBytesToVRAM

loadMoonlightStoneMedallionTiles:
    ld hl, tiles_moonlightStoneMedalion
    ld de, $6DC0
    ld bc, $0080
    jp copyBytesToVRAM

loadPrincessLoraTiles:
    ld hl, _DATA_1C629_
    ld de, $6E40
    ld bc, $01C0
    jp copyBytesToVRAM

loadBatTiles:
    ld hl, _DATA_1ED89_
    ld de, $7740
    ld bc, $0080
    jp copyBytesToVRAM

loadGreenDebrisTiles:
    ld hl, _DATA_1C5A9_
    ld de, $6840
    ld bc, $0040
    jp copyBytesToVRAM

loadDebrisATiles:
    ld hl, _DATA_1C529_
    ld de, $6800
    ld bc, $0040
    jp copyBytesToVRAM

loadDebrisBTiles:
    ld hl, _DATA_1C529_
    ld de, $67C0
    ld bc, $0040
    jp copyBytesToVRAM

loadBlueDebrisTiles:
    ld hl, _DATA_1C569_
    ld de, $67C0
    ld bc, $0040
    jp copyBytesToVRAM

loadWoodsDebrisTiles:
    ld hl, _DATA_1C5E9_
    ld de, $67C0
    ld bc, $0040
    jp copyBytesToVRAM

loadTelapathyBallTiles:
    ld hl, tiles_telepathyBall
    ld de, $6F80
    ld bc, $0080
    jp copyBytesToVRAM

loadLetterTiles:
    ld hl, tiles_letter
    ld de, $7100
    ld bc, $0080
    jp copyBytesToVRAM

loadHirottaStoneTiles:
    ld hl, tiles_hirottaStone
    ld de, $6B20
    ld bc, $0080
    jp copyBytesToVRAM

loadGoldCrownTiles:
    ld hl, _DATA_1C449_
    ld de, $7100
    ld bc, $0080
    jp copyBytesToVRAM

loadVillageElderTiles:
    ld hl, tiles_villageElder
    ld de, $6AA0
    ld bc, $0100
    jp copyBytesToVRAM

loadTeleportPowderTiles:
    ld a, $85
    ld (Mapper_Slot2), a
    ld hl, _DATA_16F51_
    ld de, $7180
    ld bc, $0020
    call copyBytesToVRAM
    ld hl, _DATA_16F51_
    ld bc, $0020
    call copyMirroredTilesToVramAtCurrentAddress
    ld hl, _DATA_16F71_
    ld de, $71C0
    ld bc, $0040
    call copyBytesToVRAM
    ld a, $87
    ld (Mapper_Slot2), a
    ret

loadPeticopterTiles:
    ld a, $85
    ld (Mapper_Slot2), a
    ld hl, _DATA_17211_
    ld de, $76E0
    ld bc, $0080
    call copyBytesToVRAM
    ld a, $87
    ld (Mapper_Slot2), a
    ret

loadSunStoneMedallionTiles:
    ld hl, tiles_sunStoneMedallion
    ld de, $7180
    ld bc, $0080
    jp copyBytesToVRAM