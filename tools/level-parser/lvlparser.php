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

function readEntityTypes() {
    $entities = [];

    $efh = fopen('../../src/asm/constants.asm', 'r');

    $reading = false;
    while (!feof($efh)) {
        $line = fgets($efh);

        if ($reading === true and $line === "\n") {
            return $entities;
        }

        if ($reading === false and strpos($line, '; Entity types') === 0) {
            $reading = true;  
        } elseif ($reading === true) {
            if (preg_match('/(\w+)\s+=\s\$(\w\w)/i', $line, $matches)) {
                $entities[hexdec($matches[2])] = $matches[1];
            }
        }
    }
}

$entities = readEntityTypes();

function getEntityType($n) {
    global $entities;

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
        // echo "Count: " . ($rawCount & 0x7F) . "\n";

        if ($rawCount === 0) {
            echo "No entities.\n\n";
            continue;
        }

        if ($rawCount & 0x80) {
            echo "Special screen found: 0x" . dechex($rawCount & 0x7F) . "\n";

            if ($rawCount === 0x84) {
                // $screenPointer++;
                echo "Special type: Always present entity (bit 3)\n";
                echo "Type: ";
                echo getEntityType(rb($rom, $screenPointer + 1)) . ", ";
                echo "X: " . rb($rom, $screenPointer + 3) . ", ";
                echo "Y: " . rb($rom, $screenPointer + 2) . ", ";
                echo "d: 0x" . dechex(rb($rom, $screenPointer + 4)) . "\n";

                $screenPointer += 5;
                $rawCount = rb($rom, $screenPointer);
                echo "Real count: " . $rawCount . "\n";
            } elseif ($rawCount === 0x82) {
                // $screenPointer++;
                echo "Special type: Octopus Arm (bit 2)\n";
                echo "Octopus type: " . rb($rom, $screenPointer + 1) . "\n";

                $screenPointer += 2;
                $rawCount = rb($rom, $screenPointer);
                echo "Real count: " . $rawCount . "\n";
            } else {
                echo "Skipping unknown special entity...\n\n";
                continue;
            }
        } else {
            echo "Count: " . ($rawCount & 0x7F) . "\n";
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
