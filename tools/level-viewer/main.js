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
    const flags = rom[ptr+1]
    let hFlip = (flags & 0b10) !== 0
    let vFlip = (flags & 0b100) !== 0

    let tile = rom[ptr]

    let sx = (tile % 0x20) * 8
    let sy = Math.floor(tile/0x20) * 8

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
        0x18456,
        0x184D4,
        0x1853D,
    ]

    // const r = xrle(rom.slice(0x18022))
    for (const [s, screen] of screens.entries()) {
        const r = xrle(rom.slice(screen))

        for (const [i, metatile] of r.entries()) {

            const yPad = s * 192

            const ptr = rw(rom, 0x14000 + metatile * 2) + 0xc000
    
            const x = i % 16 * 16
            const y = Math.floor(i/16) * 16
    
            drawTile(rom, ptr, x, yPad + y)
            drawTile(rom, ptr + 2, x + 8, yPad + y)
            drawTile(rom, ptr + 4, x, yPad + y + 8)
            drawTile(rom, ptr + 6, x + 8, yPad + y + 8)
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
image.src = 'tiles.png'

