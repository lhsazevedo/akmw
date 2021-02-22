declare enum TokenType {
    EOL = 0,
    LABEL = 1,
    DELIMITER = 2,
    UNKNOWN = 3
}
interface Token {
    type: TokenType;
    text?: string;
    line: number;
    char: number;
}
declare const _default: {
    pass(input: string): Token[];
};
export default _default;
