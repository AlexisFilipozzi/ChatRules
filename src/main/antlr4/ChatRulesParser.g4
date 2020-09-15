parser grammar ChatRulesParser;

options {
   tokenVocab=ChatRulesLexer;
}

chatRule: chatRuleElement+;
chatRuleElement:
      '>' |
      '<' |
      wildcard |
      pattern |
      '[' pattern+ ']' |
      '{' pattern+ '}' |
      '<<' pattern+ '>>' |
      negation |
      positionalNegation |
      '(' chatRuleElement + ')'
      ;
negation: '!' (
          pattern |
              '[' pattern+ ']'
          );
positionalNegation: '!' '!' (
          pattern |
              '[' pattern+ ']'
          );

wildcard: '*' ('~'? NUMBER)?;
pattern: WORD |
                STRING |
                CONCEPT |
                '(' pattern+ ')';
