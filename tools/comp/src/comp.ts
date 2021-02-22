import lexer from './lexer'
import fs from 'fs'

const file = process.argv[2]

if (!file) {
    console.log('Usage comp.js <file>')
}

const tokens = lexer.pass(fs.readFileSync(file, { encoding: 'utf-8' }))

console.log(tokens.slice(0, 5))

