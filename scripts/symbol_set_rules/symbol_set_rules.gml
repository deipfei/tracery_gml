/// @param symbol
/// @param rules
///symbol_set_rules(symbol, rules))

var symbol = argument0, rules = argument1;

rules = symbol_wrap_rules(rules);

symbol.rule_sets = [rules];
symbol.current_rules = rules;