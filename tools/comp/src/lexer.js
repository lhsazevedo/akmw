"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var TokenType;
(function (TokenType) {
    TokenType[TokenType["EOL"] = 0] = "EOL";
    TokenType[TokenType["LABEL"] = 1] = "LABEL";
    TokenType[TokenType["DELIMITER"] = 2] = "DELIMITER";
    TokenType[TokenType["UNKNOWN"] = 3] = "UNKNOWN";
})(TokenType || (TokenType = {}));
const splitter = ' \t,\n;:"';
const commentSplitter = ';';
const deadSplitter = ' \t';
const tokens = [];
function newToken(token) {
    if (token
        && (!token.text
            || token.text.length > 0)
        && deadSplitter.indexOf(token.text) == -1) {
        tokens.push(token);
    }
}
exports.default = {
    pass(input) {
        let lastFound = 0;
        let linepos = 1;
        let charpos = 1;
        for (let i = 0; i < input.length; i++) {
            let token = input.charAt(i);
            if (splitter.indexOf(token) !== -1) {
                if ('\\n'.indexOf(token) !== -1) {
                    newToken({
                        type: TokenType.EOL,
                        line: linepos,
                        char: charpos
                    });
                }
                else {
                    newToken({
                        type: TokenType.DELIMITER,
                        text: input.substring(lastFound, i),
                        line: linepos,
                        char: charpos
                    });
                }
                if (token === commentSplitter) {
                    while (input.charAt(i) !== '\n' && i < input.length) {
                        i++;
                    }
                    i--;
                }
                else {
                    newToken({
                        type: TokenType.UNKNOWN,
                        text: token,
                        line: linepos,
                        char: charpos
                    });
                }
                lastFound = i + 1;
            }
            charpos++;
            if (input.charAt(i) == '\n') {
                linepos++;
                charpos = 1;
            }
        }
        return tokens;
    }
};
