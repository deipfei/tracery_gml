/// @param grammar
/// @param key
///symbol_init(grammar, key))

var grammar = argument0, key = argument1;

var symbol = instance_create_depth(0, 0, 0, obj_symbol);

symbol.grammar = grammar;
symbol.key = key;
symbol.current_rules = noone;
symbol.rule_sets = [];

return symbol;