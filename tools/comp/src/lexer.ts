import { Stream, createStream } from "./stream";

enum TokenType {
  EOL,
  LABEL,
  DELIMITER,
  UNKNOWN
}

interface Token {
  type: TokenType
  text?: string,
  line: number,
  char: number,
}

const deadSplitter = ' \t'
const tokens: Token[] = []

function nextToken (stream: Stream): Token
{
  const char = stream.next()

  if (char === ';') {
    stream.skipToEol()
  }
}

export default {
  pass(input: string) {
    const stream = createStream(input)

    while (!stream.isEOL()) {
      tokens.push(nextToken(stream))
    }

    // let lastFound = 0
    // let linepos = 1
    // let charpos = 1

    
  }
}