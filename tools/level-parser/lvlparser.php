<?php

define('DEBUG', false);

function debug($str) {
    if (! DEBUG) {
        return;
    }

    echo "\n" . $str . "\n";
}

function rw($arr, $addr) {
    debug("Reading WORD from 0x" . dechex($addr));

    return $arr[$addr]
        | ($arr[$addr + 1] << 8);
}

function rb($arr, $addr) {
    debug("Reading BYTE from 0x" . dechex($addr));

    return $arr[$addr];
}

function getEntityType($n) {
    $entities = [
        0x18 => 'ENTITY_STATIC',
        0x20 => 'ENTITY_BAT_LEFT',
        0x2D => 'ENTITY_MONSTERBIRD_LEFT',
        0x2F => 'ENTITY_MONSTER_FROG',
        0x30 => 'ENTITY_SMALL_FISH_LEFT',
        0x33 => 'ENTITY_MONSTERBIRD_RIGHT',
        0x34 => 'ENTITY_SMALL_FISH_RIGHT',
        0x36 => 'ENTITY_BAT_RIGHT',
        0x37 => 'ENTITY_MONSTER_FROG_JUMPING',
        0x38 => 'ENTITY_DEBRIS_TOP_LEFT',
        0x39 => 'ENTITY_DEBRIS_BOTTOM_LEFT',
        0x3A => 'ENTITY_DEBRIS_TOP_RIGHT',
        0x3B => 'ENTITY_DEBRIS_BOTTOM_RIGHT',
        0x3C => 'ENTITY_MONEY_BAG',
        0x3E => 'ENTITY_FLAME_OR_SCORPION_LEFT',
        0x3F => 'ENTITY_FLAME_OR_SCORPION_RIGHT',
        0x4F => 'ENTITY_GHOST',
        0x56 => 'ENTITY_ARROW',
        0x58 => 'ENTITY_JANKENS_CASTLE'
    ];
    
    return $entities[$n] ?? '0x' . dechex($n);
}

$fh = fopen('../../build/alex-kidd-in-miracle-world-usa-europe-rev-1.sms', 'r');

$rom = [];
while (!feof($fh)) {
    $rom[] = ord(fread($fh, 1));
}

// Let's process
echo "> Reading screensEntityDescriptorsPointers...\n";
$levelsPointers = [];
for ($i = 0; $i < 17; $i++) {
    $levelsPointers[] = rw($rom, 0xB505 + $i * 2);
    echo "0x" . dechex(rw($rom, 0xB505 + $i * 2)) . "\n";
}
echo "> Done.\n\n";

foreach ($levelsPointers as $key => $levelPointer) {
    echo "****************************\n";
    echo "* Reading lvl " . ($key+1) . " screens.\n";
    echo "****************************\n\n";
    $screensPointers = [];
    for (
        $i = 0;
        $i < 512;
        $i++
    ) {
        $screenPointer = $levelPointer + $i * 2;
        if (($screenPointer === $levelsPointers[$key + 1])
            or ($screenPointer === 0xb6ed)
        ) {
            break;
        }

        $data = rw($rom, $screenPointer);
        debug("0x" . dechex($data));
        $screensPointers[] = $data;
    }

    // Screens
    $screens = [];
    foreach ($screensPointers as $spKey => $screenPointer) {
        echo "> Screen $spKey entities:\n";

        // echo dechex($screenPointer) . "\n";
        $rawCount = rb($rom, $screenPointer);
        echo "Count: " . ($rawCount & 0x7F) . "\n";

        if ($rawCount & 0x80) {
            echo "Skipping strange screen...\n\n";
            continue;
        }

        for ($entityIndex = 0; $entityIndex < $rawCount; $entityIndex++) {
            echo "Entity $entityIndex: ";
            echo getEntityType(rb($rom, $screenPointer + 1 + ($entityIndex * 4))) . ", ";
            echo "X: " . rb($rom, $screenPointer + 3 + ($entityIndex * 4)) . ", ";
            echo "Y: " . rb($rom, $screenPointer + 2 + ($entityIndex * 4)) . ", ";
            echo "d: 0x" . dechex(rb($rom, $screenPointer + 4 + ($entityIndex * 4))) . "\n";
        }   
        // $screenAddr = rw($rom, $screenPointer);

        // $entityCount = rw($rom, $screenAddr);

        // echo "Entity count: " . $entityCount . "\n";

        echo "\n";
    }
    // rw($rom, $levelPointer)
    // $levelScreens = []
}
