/// @param grammar
/// @param object
///grammar_load_from(grammar, object)

var grammar = argument0, object = argument1;

//var symbol_src;

grammar_clear(grammar);

/*if (object.symbols != noone) {
  symbol_src = object.symbols;
} else {
  symbol_src = object;
}*/

var keys = ds_map_get_keys(object);

grammar.symbol_names = [];

for (var i = 0; i < array_length_1d(keys); i++) {
  var current_key = keys[i];
  
  grammar.symbol_names = array_push(grammar.symbol_names, current_key);
  var object_key = ds_map_find_value(object, current_key);
  var as_list = ds_list_to_array(object_key);
  ds_map_add(grammar.symbols, current_key, symbol_init(grammar, current_key));
  symbol_load_from(ds_map_find_value(grammar.symbols, current_key), as_list);
}