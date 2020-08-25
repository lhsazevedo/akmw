const fs = require('fs')
const { Console } = require('console')

const [...buf] = fs.readFileSync('src/graphics/bag_of_gold_coins_and_cloud.bin')
const dest = []

let ptr = 0
let bp = 0
let bplen = 0



while(true) {
    
    if (buf[ptr] === 0) {
        console.log(`end of bitplane ${bp}`)

        if (bp === 0) {
            bplen = dest.length
        }
        
        if (ptr === buf.length - 1) {
            console.log(`done.`)
            break
        }

        console.log('-'.repeat(16))
        console.log('Found another bitplane!')
        console.log('-'.repeat(16))
        bp++
        ptr++
    }

    console.log(`Ptr is 0x${ptr.toString(16)}: 0x${buf[ptr].toString(16)}`)

    const seqlen = buf[ptr] & 0b01111111

    console.log(`len is ${seqlen} (0x${seqlen.toString(16)})`)

    if (buf[ptr] & (1 << 7)) {
        dest.push(...buf.slice(ptr+1, ptr+1+seqlen))
        console.log(`${buf.slice(ptr+1, ptr+1+seqlen).length} added`)
        ptr += seqlen+1
    } else {
        for (let i = 0; i < seqlen; i++) {
            dest.push(buf[ptr+1])
        }
        console.log(`added ${seqlen} copies of 0x${buf[ptr+1].toString(16)} added`)
        ptr += 2
    }
}

console.log('Deinterleaving...')

// final position = (x div 4) + (x mod 4) * (section size)

const destd = []

for (const [i, byte] of dest.entries()) {
    console.log(`deinterleaving byte ${i} to ${Math.floor(i/4) + (i%4) * bplen}`)
    destd[Math.floor(i/4) + (i%4) * bplen] = byte
}


//   0000 0000  1111 1111  2222 2222  3333 3333

//   |----------|----------|----------|
//    |----------|----------|----------|
//     |

console.log(dest.length)

const destdd = []

function printP(v) {
    let pref = ''

    switch (v) {
        case 0:
            pref = '\x1b[34m'
            break;

        case 1:
            pref = '\x1b[37m'
            break;
        
        case 2:
            pref = '\x1b[38;5;206m'
            break;
        
        case 3:
            pref = '\x1b[38;5;206m'
            break;
        
        case 4:
            pref = '\x1b[33m'
            break;
    
        default:
            pref = '\x1b[37m'
            break;
    }

    process.stdout.write(pref + v.toString(16))
}

for (let i = 0; i < destd.length; i = i+4) {

    if (i%32 === 0) {
        process.stdout.write("\n")

        console.log(`bytes ${i} - ${i+3}`)
    }

    if (i===32) {
        process.exit()
    }

    for (let j = 7; j >= 0; j--) {
        const mask = (1 << j)
        const b0 = (dest[i] & mask) >> j
        const b1 = (dest[i+1] & mask) >> (j-1)
        const b2 = (dest[i+2] & mask) >> (j-2)
        const b3 = (dest[i+3] & mask) >> (j-3)

        let num = b0 | b1 | b2 | b3

        if (num >= 16) {
            num = num >> 4
        }
        printP(num)
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
    
    process.stdout.write("\n")

}



