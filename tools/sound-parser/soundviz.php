<?php

define('DEBUG', false);

function debug($str) {
    if (! DEBUG) {
        return;
    }

    echo "\n" . $str . "\n";
}

function rw($arr, $addr) {
    return $arr[$addr]
        | ($arr[$addr + 1] << 8);
}

function getNote($byte) {
    $notes = [
        0x00 => "__",
        0x01 => "A2",
        0x02 => "A#2",
        0x03 => "B2",
        0x04 => "C3",
        0x05 => "C#3",
        0x06 => "D3",
        0x07 => "D#3",
        0x08 => "E3",
        0x09 => "F3",
        0x0A => "F#3",
        0x0B => "G3",
        0x0C => "G#3",
        0x0D => "A3",
        0x0E => "A#3",
        0x0F => "B3",
        0x10 => "C4",
        0x11 => "C#4",
        0x12 => "D4",
        0x13 => "D#4",
        0x14 => "E4",
        0x15 => "F4",
        0x16 => "F#4",
        0x17 => "G4",
        0x18 => "G#4",
        0x19 => "A4",
        0x1A => "A#4",
        0x1B => "B4",
        0x1C => "C5",
        0x1D => "C#5",
        0x1E => "D5",
        0x1F => "D#5",
        0x20 => "E5",
        0x21 => "F5",
        0x22 => "F#5",
        0x23 => "G5",
        0x24 => "G#5",
        0x25 => "A5",
        0x26 => "A#5",
        0x27 => "B5",
        0x28 => "C6",
        0x29 => "C#6",
        0x2A => "D6",
        0x2B => "D#6",
        0x2C => "E6",
        0x2D => "F6",
        0x2E => "F#6",
        0x2F => "G6",
        0x30 => "G#6",
        0x31 => "A6",
        0x32 => "A#6",
        0x33 => "B6",
        0x34 => "C7",
        0x35 => "C#7",
        0x36 => "D7",
        0x37 => "D#7",
        0x38 => "E7",
        0x39 => "F7",
        0x3A => "F#7",
        0x3B => "G7",
        0x3C => "G#7",
        0x3D => "A7",
        0x3E => "A#7",
        0x3F => "B7",
        0x40 => "C8",
        0x41 => "C#8",
        0x42 => "D8",
        0x43 => "D#8",
        0x44 => "E8",
        0x45 => "F8",
        0x46 => "F#8",
        0x47 => "G8",
        0x48 => "G#8",
    ];

    return str_pad($notes[$byte & 0x1F] . " ", "4");
}

$fh = fopen('build/alex-kidd-in-miracle-world-usa-europe-rev-1.sms', 'r');

$rom = [];
while (!feof($fh)) {
    $rom[] = ord(fread($fh, 1));
}

// Let's process
$sounds = [];
for ($i = 0; $i < 48; $i++) {
    $sounds[] = rw($rom, 0x98DD + $i * 2);
}

foreach ($sounds as $key => $soundAddr) {
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
    echo str_repeat("---|", 16) . "\n";
    for ($i=0; $i < 1024; $i++) {
        $note = $rom[$soundDataAddr + $i];

        debug("Byte é 0x" . dechex($note) . " ($note)");

        if ($note === 0xE2) {
            echo "\nEnd of channel " . ($channel + 1) . "\n\n";
            if ($channel === $rom[$soundAddr] - 1) {
                break;
            } else {
                $channel++;
                $noteNo = 0;
                echo str_repeat("---|", 16) . "\n";
                continue;
            }
        }

        if ($note >= 0xE0) {
            // echo " .  ";
            debug("Skipping command parameter byte");
            $i++;
            continue;
        }

        if (($noteNo !== 0) and ($noteNo % 16 === 0)) {
            echo "\n";
        }
        $noteNo++;

        if (($note & 0x80) === 0) {
            debug("Repeat command");
            // echo "($note) ";
            echo getNote($lastNote);
            continue;    
        }

        if ($note === 0) {
            echo "___ ";
            continue;
        }

        $lastNote = $note;
        echo getNote($note);

        if (($rom[$soundDataAddr + $i + 1] & 0x80) === 0) {
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
