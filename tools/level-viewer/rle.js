export function xrle(input) {
    let ptr = 0
    const dest = []

    for(;;) {
        if (input[ptr] === 0) {
            return dest
        }
    
        const seqlen = input[ptr] & 0b01111111

        if (input[ptr] & (1 << 7)) {
            dest.push(...input.slice(ptr+1, ptr+1+seqlen))
            ptr += seqlen+1
        } else {
            for (let i = 0; i < seqlen; i++) {
                dest.push(input[ptr+1])
            }
            ptr += 2
        }
    }
}
