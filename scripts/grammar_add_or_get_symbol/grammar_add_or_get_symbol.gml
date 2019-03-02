/// @param grammar
/// @param key
///grammar_add_or_get_symbol(grammar, key))

var grammar = argument0, key = argument1;

if (is_undefined(ds_map_find_value(grammar.symbols, key))) {
  ds_map_add(grammar.symbols, key, symbol_init(grammar, key));
}

return ds_map_find_value(grammar.symbols, key);