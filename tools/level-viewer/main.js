import { xrle } from './rle.js'

const canvas = document.getElementById('canvas')
const ctx = canvas.getContext('2d')

function rw(arr, address) {
    return arr[address] | (arr[address + 1] << 8)
}

function xxd(arr) {
    let out = ''

    for (let i = 0; i < arr.length; i++) {
        if (i % 16 === 0) {
            out += "\n"
        }
        out += '$' + arr[i].toString(16).padStart(2, '0') + ' '
    }

    console.log(out)
}

function hex(int) {
    return '0x' + int.toString(16)
}

function phex(int) {
    console.log(hex(int))
}

function drawTile(rom, ptr, x, y) {
    const flags = rom[ptr + 1]
    let hFlip = (flags & 0b10) !== 0
    let vFlip = (flags & 0b100) !== 0

    let tile = rom[ptr]

    let sx = (tile % 0x20) * 8
    let sy = Math.floor(tile / 0x20) * 8

    const canvas2 = document.createElement('canvas');
    canvas2.width = 8;
    canvas2.height = 8;

    const ctx2 = canvas2.getContext('2d')

    ctx2.translate(
        hFlip ? 8 : 0,
        vFlip ? 8 : 0
    )
    ctx2.scale(
        hFlip ? -1 : 1,
        vFlip ? -1 : 1
    )

    ctx2.drawImage(image, sx, sy, 8, 8, 0, 0, 8, 8)
    ctx.drawImage(canvas2, x, y)

    canvas2.remove()
}

function handleFile(ev) {
    const rom = new Uint8Array(ev.target.result)

    // const screens = [
    //     0x18022,
    //     0x18077,
    //     0x180F8,
    //     0x18193,
    //     0x18224,
    //     0x1829C,
    //     0x1830E,
    //     0x18378,
    //     0x183F9,
    //     0x18456,
    // ]

    const screens = [
        0x1A328,
        0x1A328,
        0x1A389,
        0x1A3EE,
        0x1A440,
        0x1A498,
        0x1A498,
        0x1A51F,
        0x1A566,
        0x1A5D6,
        0x1A63C,
        0x1A6BE,
        0x1A747,
        0x1A7C2,
        0x1A81F,
        0x1A84E,
        0x1A84E,
        0x1A8AB,
        0x1A91A,
        0x1A985,
    ]

    const entitiesDescs = [
        0xBCDB,
        0xBC1C,
        0xBC21,
        0xBC2E,
        0xBC43,
        0xBCDB,
        0xBC52,
        0xBC5B,
        0xBC64,
        0xBC71,
        0xBCDB,
        0xBC76,
        0xBC8B,
        0xBC98,
        0xBCA5,
        0xBCDB,
        0xBCAB,
        0xBCBC,
        0xBCC1,
        0xBCCA,
    ]

    // const r = xrle(rom.slice(0x18022))
    for (const [s, screen] of screens.entries()) {
        const r = xrle(rom.slice(screen))

        const yPad = Math.floor(s/5) * 192
        const xPad = (s % 5) * 256

        for (const [i, metatile] of r.entries()) {
            const ptr = rw(rom, 0x14000 + metatile * 2) + 0xc000

            const x = i % 16 * 16
            const y = Math.floor(i / 16) * 16

            drawTile(rom, ptr,     xPad + x     , yPad + y)
            drawTile(rom, ptr + 2, xPad + x + 8 , yPad + y)
            drawTile(rom, ptr + 4, xPad + x     , yPad + y + 8)
            drawTile(rom, ptr + 6, xPad + x + 8 , yPad + y + 8)
        }

        let ePtr = entitiesDescs[s]

        for (;;) {
            let eCur = rom[ePtr]

            if ((eCur === 0) || (eCur === 0x82)) {
                break;
            } else if (eCur === 0x88) {
                const count = rom[ePtr]

                const eEl = document.createElement('div')
                eEl.textContent = rom.slice(ePtr + 2, ePtr + 2 + count).map(hex).join(' ')
                eEl.style.setProperty('left', (xPad + 2) + 'px')
                eEl.style.setProperty('top',  (yPad + 2) + 'px')
                
                document.getElementById('entities').appendChild(eEl)

                ePtr += count + 2
            } else if ((eCur === 0x84) || (eCur === 0x81)) {
                const type = rom[ePtr + 1];
                const eYPos = rom[ePtr + 1 + 1];
                const eXPos = rom[ePtr + 1 + 2];

                const eEl = document.createElement('div')
                eEl.textContent = hex(type)
                eEl.style.setProperty('left', (xPad + eXPos)*2 + 'px')
                eEl.style.setProperty('top',  (yPad + eYPos)*2 + 'px')
                
                document.getElementById('entities').appendChild(eEl)

                ePtr += 5
            } else {
                for (let ei = 0; ei < eCur; ei++) {
                    const type = rom[ePtr + 1 + ei*4];
                    const eYPos = rom[ePtr + 1 + ei*4 + 1];
                    const eXPos = rom[ePtr + 1 + ei*4 + 2];

                    const eEl = document.createElement('div')
                    eEl.textContent = hex(type)
                    eEl.style.setProperty('left', (xPad + eXPos)*2 + 'px')
                    eEl.style.setProperty('top',  (yPad + eYPos)*2 + 'px')
                    
                    document.getElementById('entities').appendChild(eEl)
                }

                break
            }

            continue;
        }
    }
}

function handleFileChange(el) {
    reader.readAsArrayBuffer(el.target.files[0])
}

const reader = new FileReader()
reader.onload = handleFile

const fileEl = document.getElementById('file').addEventListener('change', handleFileChange)
// document.getElementById('submit').addEventListener(
//     'change', 
//     a => handleFileChange(fileEl)
// )

const image = new Image()
image.src = 'tiles_0b.png'

