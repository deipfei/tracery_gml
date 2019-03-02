/// @param symbol
///symbol_pop_rules(symbol)

var symbol = argument0;

var new_rules = [];
var popped = noone;
if (array_length_1d(symbol.rule_sets) > 0) {
  popped = symbol.rule_sets[array_length_1d(symbol.rule_sets) - 1];
  for (var i = 0; i < array_length_1d(symbol.rule_sets) - 1; i++) {
    new_rules[i] = symbol.rule_sets[i];
  }
  
  symbol.rule_sets = new_rules;
}

if (array_length_1d(symbol.rule_sets) > 0) {
  symbol.current_rules = symbol.rule_sets[array_length_1d(symbol.rule_sets) - 1];
} else {
  symbol.current_rules = noone;
}