<?php

define('DEBUG', false);

function debug($str) {
    if (! DEBUG) {
        return;
    }

    echo "\n DEBUG: " . $str . "\n";
}

function rw($arr, $addr) {
    return $arr[$addr]
        | ($arr[$addr + 1] << 8);
}

function getNote($byte) {
    $notes = [
        0x00 => "Silence",
        0x01 => "A2",
        0x02 => "ASharp2",
        0x03 => "B2",
        0x04 => "C3",
        0x05 => "CSharp3",
        0x06 => "D3",
        0x07 => "DSharp3",
        0x08 => "E3",
        0x09 => "F3",
        0x0A => "FSharp3",
        0x0B => "G3",
        0x0C => "GSharp3",
        0x0D => "A3",
        0x0E => "ASharp3",
        0x0F => "B3",
        0x10 => "C4",
        0x11 => "CSharp4",
        0x12 => "D4",
        0x13 => "DSharp4",
        0x14 => "E4",
        0x15 => "F4",
        0x16 => "FSharp4",
        0x17 => "G4",
        0x18 => "GSharp4",
        0x19 => "A4",
        0x1A => "ASharp4",
        0x1B => "B4",
        0x1C => "C5",
        0x1D => "CSharp5",
        0x1E => "D5",
        0x1F => "DSharp5",
        0x20 => "E5",
        0x21 => "F5",
        0x22 => "FSharp5",
        0x23 => "G5",
        0x24 => "GSharp5",
        0x25 => "A5",
        0x26 => "ASharp5",
        0x27 => "B5",
        0x28 => "C6",
        0x29 => "CSharp6",
        0x2A => "D6",
        0x2B => "DSharp6",
        0x2C => "E6",
        0x2D => "F6",
        0x2E => "FSharp6",
        0x2F => "G6",
        0x30 => "GSharp6",
        0x31 => "A6",
        0x32 => "ASharp6",
        0x33 => "B6",
        0x34 => "C7",
        0x35 => "CSharp7",
        0x36 => "D7",
        0x37 => "DSharp7",
        0x38 => "E7",
        0x39 => "F7",
        0x3A => "FSharp7",
        0x3B => "G7",
        0x3C => "GSharp7",
        0x3D => "A7",
        0x3E => "ASharp7",
        0x3F => "B7",
        0x40 => "C8",
        0x41 => "CSharp8",
        0x42 => "D8",
        0x43 => "DSharp8",
        0x44 => "E8",
        0x45 => "F8",
        0x46 => "FSharp8",
        0x47 => "G8",
        0x48 => "GSharp8",
    ];

    return $notes[$byte & 0x7F] ?? null;
}

$fh = fopen('build/alex-kidd-in-miracle-world-usa-europe-rev-1.sms', 'r');

$rom = [];
while (!feof($fh)) {
    $rom[] = ord(fread($fh, 1));
}

// Let's process
$sounds = [];
for ($i = 1; $i < 2; $i++) {
    $sounds[] = rw($rom, 0x98DD + $i * 2);
}

foreach ($sounds as $key => $soundAddr) {
    $jumpTargets = [];

    $data = [
        "*****************************",
        "* Sound " . ($key + 1),
        "*****************************",
        "Channels:      " . $rom[$soundAddr],
        "Flags:         " . decbin($rom[$soundAddr + 1]),
        "HW ch.         " . $rom[$soundAddr + 2],
        "Duration mult. " . $rom[$soundAddr + 3],
        "Data pointer   0x" . dechex(rw($rom, $soundAddr + 4)),
        "Transpose      " . $rom[$soundAddr + 6],
        "Vibrato index  " . $rom[$soundAddr + 7],
        "Envelope index " . $rom[$soundAddr + 8],
    ];

    echo join("\n", $data) . "\n\n";

    $soundDataAddr = rw($rom, $soundAddr + 4);

    $channel = 0;
    $noteNo = 0;
    $lastNote = "";
    // echo str_repeat("---|", 16) . "\n";
    for ($i=0; $i < 4096; $i++) {
        $note = $rom[$soundDataAddr + $i];

        debug("Byte é 0x" . dechex($note) . " ($note)");

        if ($note === 0xE2) {
            echo "\n.db \$E2";
            echo "\n; End of channel " . ($channel + 1) . "\n\n";

            if ($channel === $rom[$soundAddr] - 1) {
                break;
            } else {
                $channel++;
                $noteNo = 0;
                // echo str_repeat("---|", 16) . "\n";
                continue;
            }
        } elseif ($note === 0xE5) {
            echo "\n.db \$E5";

            $jumpTargets[] = rw($rom, $soundDataAddr + $i + 1);

            echo "\n.dw $" . strtoupper(str_pad(dechex($rom[$soundDataAddr + $i + 2]), 2, '0', STR_PAD_LEFT));
            echo strtoupper(str_pad(dechex($rom[$soundDataAddr + $i + 1]), 2, '0', STR_PAD_LEFT));
            echo "\n; End of channel " . ($channel + 1) . "\n\n";

            if ($channel === $rom[$soundAddr] - 1) {
                break;
            } else {
                $channel++;
                $noteNo = 0;
                $i += 2;
                // echo str_repeat("---|", 16) . "\n";
                continue;
            }
        }

        if ($note >= 0xE0) {
            echo "\n.db $" . strtoupper(str_pad(dechex($note), 2, '0', STR_PAD_LEFT));
            echo " $" . strtoupper(str_pad(dechex($rom[$soundDataAddr + $i + 1]), 2, '0', STR_PAD_LEFT));
            debug("Skipping command parameter byte");
            $i++;
            continue;
        }

        if (($noteNo !== 0) and ($noteNo % 16 === 0)) {
            // echo "\n";
        }
        $noteNo++;

        if (($note & 0x80) === 0) {
            debug("Repeat command");
            echo " $" . strtoupper(str_pad(dechex($note), 2, '0', STR_PAD_LEFT));
            // echo getNote($lastNote);
            continue;    
        }

        if ($note === 0) {
            echo "\n.db noteNop";
            continue;
        }

        $lastNote = $note;
        $noteText = getNote($note);
        if ($noteText) {
            echo "\n.db note" . str_pad($noteText, 7, ' ', STR_PAD_RIGHT);
        } else {
            echo "\n @TODO:";
            echo "\n.db $" . strtoupper(str_pad(dechex($note), 10, ' ', STR_PAD_RIGHT));
        }

        if (($rom[$soundDataAddr + $i + 1] & 0x80) === 0) {
            echo " $" . strtoupper(str_pad(dechex($rom[$soundDataAddr + $i + 1]), 2, '0', STR_PAD_LEFT));
            debug("Skipping one byte cuz next is repeat");
            $i++;
        }
    }

    echo "\n\n";
    // break;
}

// Sound 1





// print_r(array_map(fn($x) => dechex($x), $sounds));
// echo $rom[0x9ecd] . "\n";
