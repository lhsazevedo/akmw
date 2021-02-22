export interface Stream {
  peek (): string,
  eat (pattern: RegExp): string | null,
  next (): string
  isEOL (): boolean,
  isEOF (): boolean
}

export function createStream (input: string) {
  let pos = 0

  function peek () {
    return input.charAt(pos)
  }

  function eat (pattern: RegExp): string | null {
    const char = peek()
    if (!pattern.test(char)) {
      return null
    }

    pos++
    return char
  }

  function next (): string | null {
    const char = peek()
    pos++
    return char
  }

  function isEOL (): boolean {
    return peek() === '\n'
  }

  function isEOF (): boolean {
    return pos === input.length
  }

  const stream: Stream = {
    peek,
    eat,
    next,
    isEOL,
    isEOF
  }

  return stream
}
