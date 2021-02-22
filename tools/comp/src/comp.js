"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const lexer_1 = __importDefault(require("./lexer"));
const fs_1 = __importDefault(require("fs"));
const file = process.argv[2];
if (!file) {
    console.log('Usage comp.js <file>');
}
const tokens = lexer_1.default.pass(fs_1.default.readFileSync(file, { encoding: 'utf-8' }));
console.log(tokens.slice(0, 5));
