#!/usr/bin/env node

const fs = require('fs')

const file = "src/graphics/bag_of_gold_coins_and_cloud.bin"
// src/graphics/bag_o f_gold_coins_and_cloud.bin
let [...buf] = fs.readFileSync(file)
let dest = []
let destd = []

let ptr = 0
let bp = 0
let bplen = 0
const compressed = true

;(async () => {

console.log(`Input ${buf.length} bytes`)

if (compressed) {
  console.log('Decompressing...')

  while(true) {
      
      if (buf[ptr] === 0) {
          console.log(`End of bitplane ${bp}`)

          if (bp === 0) {
              bplen = dest.length
              console.log(`Bitplane lenght is ${bplen}`)
          }
          
          if (ptr === buf.length - 1) {
              console.log(`Done decompressing...`)
              break
          }

          // console.log('-'.repeat(16))
          // console.log('Found another bitplane!')
          // console.log('-'.repeat(16))
          bp++
          ptr++
      }

      // console.log(`Ptr is 0x${ptr.toString(16)}: 0x${buf[ptr].toString(16)}`)

      const seqlen = buf[ptr] & 0b01111111

      // console.log(`len is ${seqlen} (0x${seqlen.toString(16)})`)

      if (buf[ptr] & (1 << 7)) {
          dest.push(...buf.slice(ptr+1, ptr+1+seqlen))
          // console.log(`${buf.slice(ptr+1, ptr+1+seqlen).length} added`)
          ptr += seqlen+1
      } else {
          for (let i = 0; i < seqlen; i++) {
              dest.push(buf[ptr+1])
          }
          // console.log(`added ${seqlen} copies of 0x${buf[ptr+1].toString(16)} added`)
          ptr += 2
      }
  }

  console.log(`Output ${dest.length} bytes`)

  fs.writeFileSync('bag.bin', Uint8Array.from(dest))

  console.log('Deinterleaving...')

  for (const [i, byte] of dest.entries()) {
    const pos = ((i % bplen) * 4) + Math.floor((i) / bplen)
    // console.log(`deinterleaving byte ${i} (0x${dest[pos].toString(16)}) to ${pos}`)
    destd[pos] = byte
  }

  console.log('Done!')

  fs.writeFileSync('bag.bytedeint.bin', Uint8Array.from(destd))
} else {
  destd = buf
}


function printP(v) {
    let pref = ''

    switch (v) {
        case 0:
            pref = '\x1b[94m\x1b[44m'
            break;

        case 1:
            pref = '\x1b[97m\x1b[47m'
            break;
        
        case 2:
            pref = '\x1b[38;5;206m'
            break;
        
        case 3:
            pref = '\x1b[38;5;206m'
            break;
        
        case 4:
            pref = '\033[48;2;255;255;0m'
            break;

        case 6:
            pref = '\x1b[90m\x1b[40m'
            break;

        case 0xb:
          pref = '\033[48;2;0;170;0m'
          break;

        case 0xC:
          pref = '\x1b[34m\x1b[104m'
          break;

        case 0xD:
          pref = '\033[48;2;0;255;0m'
          break;
        
        case 0xE:
          pref = '\033[48;2;0;170;0m'
          break;

        case 0x7:
            pref = '\x1b[97m\x1b[47m'
            break;
    
        default:
            pref = '\x1b[37m'
            break;
    }

    process.stdout.write(pref + v.toString(16))
    process.stdout.write(pref + v.toString(16))
    process.stdout.write('\x1b[0m')
}

const pixels = []

for (let i = 0; i < destd.length; i = i+4) {

    if (i%32 === 0) {
        // process.stdout.write("\n")

        // console.log(`bytes ${i} - ${i+3}`)
    }

    // if (i===96) {
    //     process.exit()
    // }

    for (let j = 7; j >= 0; j-=2) {
        const mask = (1 << j)
        const b0 = (destd[i] & mask) >>> j
        const b1 = (destd[i+1] & mask) >>> j
        const b2 = (destd[i+2] & mask) >>> j
        const b3 = (destd[i+3] & mask) >>> j
        const b20 = (destd[i] & mask >>> 1) >>> (j-1)
        const b21 = (destd[i+1] & mask >>> 1) >>> (j-1)
        const b22 = (destd[i+2] & mask >>> 1) >>> (j-1)
        const b23 = (destd[i+3] & mask >>> 1) >>> (j-1)

        // console.log(`Tile ${Math.floor(i/4/8)} Row ${(i/4)%8} Pixel ${7-j}`)

        // console.log(`Mask  : ${mask.toString(2).padStart(8,0)}`)
        // console.log(`Byte 0: ${destd[i].toString(2).padStart(8,0)} (0x${destd[i].toString(16).padStart(2,0)})`)
        // console.log(`Bit  0: ${b0.toString(2).padStart(8,0)}`)

        // console.log(`Byte 1: ${destd[i+1].toString(2).padStart(8,0)} (0x${destd[i+1].toString(16).padStart(2,0)})`)
        // console.log(`Bit  1: ${b1.toString(2).padStart(8,0)}`)

        // console.log(`Byte 2: ${destd[i+2].toString(2).padStart(8,0)} (0x${destd[i+2].toString(16).padStart(2,0)})`)
        // console.log(`Bit  2: ${b2.toString(2).padStart(8,0)}`)

        // console.log(`Byte 3: ${destd[i+3].toString(2).padStart(8,0)} (0x${destd[i+3].toString(16).padStart(2,0)})`)
        // console.log(`Bit  3: ${b3.toString(2).padStart(8,0)}`)
        // console.log()

        let num = (b0 << 4)
                | (b1 << 5)
                | (b2 << 6)
                | (b3 << 7)
                | (b20)
                | (b21 << 1)
                | (b22 << 2)
                | (b23 << 3)


        pixels.push(num)

        // if (j >= 4) {
        //   num = num 
        // }

        // console.log(`Result: ${num.toString(2).padStart(8,0)}`)


        // console.log('='.repeat(16))

        // printP(num)
    }

    // for (let j = 0; j < 4; j++) {
    //     const num = (destd[i] & ( 1 << j + 4))
    //                 | (destd[i+1] & ( 1 << j + 4))
    //                 | (destd[i+2] & ( 1 << j + 4))
    //                 | (destd[i+3] & ( 1 << j + 4))

    //     const nums = num >> 4
    //     printP(
    //         nums
    //     )
    // }
}

fs.writeFileSync('bag.bitdeint.bin', Uint8Array.from(pixels))

})();