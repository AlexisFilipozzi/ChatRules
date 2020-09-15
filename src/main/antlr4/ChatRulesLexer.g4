lexer grammar ChatRulesLexer;

tokens {
  WILDCARD,
  WORD,
  STRING,
  TEXT,
  CONCEPT,
  NUMBER,
  L_PAREN,
  R_PAREN,
  L_BRACKET,
  R_BRACKET,
  L_CURLY_BRACKET,
  R_CURLY_BRACKET,
  L_CHEVRON,
  R_CHEVRON,
  MARK,
  L_DOUBLE_CHEVRON,
  R_DOUBLE_CHEVRON,
  TILDE,
  WHITESPACE
}

WILDCARD: '*';

fragment CHAR: [a-zA-ZÀ-ÖØ-öø-ÿĀ-ɏḂ-ỳ0-9_];
fragment DIGIT: [0-9];
fragment STRING_CHARACTER: ~["\\] | ESCAPE_SEQUENCE;
fragment ESCAPE_SEQUENCE: '\\' [btnfr"'\\];

STRING: '"' (STRING_CHARACTER+)? '"';
L_PAREN: '(';
R_PAREN: ')';
L_BRACKET: '[';
R_BRACKET: ']';
L_CURLY_BRACKET: '{';
R_CURLY_BRACKET: '}';
L_CHEVRON: '<';
R_CHEVRON: '>';
MARK: '!';
L_DOUBLE_CHEVRON: '<<';
R_DOUBLE_CHEVRON: '>>';
WHITESPACE: ' ' -> skip;
NUMBER: DIGIT+;
WORD: CHAR+;
CONCEPT: '~' CHAR+;
TILDE: '~';

