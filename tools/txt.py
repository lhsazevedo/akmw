#!/usr/bin/env python3

import sys

def usage():
    print("Usage: txt.py INPUT OUTPUT")

if (len(sys.argv) < 3):
    usage()
    exit()

in_file = sys.argv[1]
out_file = sys.argv[2]

alphabet = [
    ' ', '!', '"', '#', '$', '%', '&', '\'', '(', ')', '*', '+', ',', '-', '.', '/',
    '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', ':', ';', '<', '=', '>', '?',
    '@', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O',
    'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
]

data = []

with open(in_file) as f:
    lines = f.read().splitlines()

    width = len(max(lines, key=len)) + 2
    height = len(lines) * 2 + 1
    
    # Borders
    data.extend([0x80 + width + 1, 0x20, 0xB0])
    if height > 3:
        data.extend([0x80 + height - 1, 0x80, 0xB0])
    else:
        data.extend([0x02, 0x80, 0xB0, 0xB0])

    data.extend([0x80 + width - 1, 0x60, 0xB0])
    if height > 3:
        data.extend([0x80 + height - 2, 0xC0, 0xB0])
    else:
        data.extend([0x01, 0xC0, 0xB0])

    # First line
    data.extend([width - 2, 0x20])
    for c in lines[0]:
        data.append(0xB0 + alphabet.index(c))
    
    data.extend([0xB0 for _ in range(width - 2 - len(lines[0]))])
    
    # Remaining lines
    if len(lines) > 1:
        data.extend([0x01, 0x80, 0xB0, 0x80 + width - 3, 0x60, 0xB0])

    remaining_lines = lines[1:]
    for idx, line in enumerate(remaining_lines):
        line = line.strip()
        data.extend([0x01, 0x80])
        data.append(0xB0 + alphabet.index(line[0]))
        data.extend([width - 3, 0x20])
        for c in line[1:]:
            data.append(0xB0 + alphabet.index(c))
        
        data.extend([0xB0 for _ in range(width - 2 - len(line))])

        if idx != len(remaining_lines) - 1:
            data.extend([0x01, 0x80, 0xB0, 0x80 + width - 3, 0x60, 0xB0])

data.extend([0x00, 0x00])

out = open(out_file, 'wb')

out.write(bytes(data))
