/// @param symbol
/// @param rules
///symbol_load_from(symbol, rules)

var symbol = argument0, rules = argument1;

rules = symbol_wrap_rules(rules);
symbol.base_rules = rules;
symbol.rule_sets = array_push(symbol.rule_sets, rules);
symbol.current_rules = symbol.rule_sets[array_length_1d(symbol.rule_sets) - 1];