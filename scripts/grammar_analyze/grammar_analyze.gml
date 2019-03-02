/// @param grammar
///grammar_analyze(grammar)

var grammar = argument0;

grammar.symbol_names = [];

var key = ds_map_find_first(grammar.symbols);
var size = ds_map_size(grammar.symbols);
for (var i = 0; i < size; i++) {
  grammar.symbol_names = array_push(grammar.symbol_names, key);
  key = ds_map_find_next(grammar.symbols, key);
}

// parse every rule

for (var i = 0; i < array_length_1d(grammar.symbol_names); i++) {
  var key = grammar.symbol_names[i];
  var symbol = ds_map_find_value(grammar.symbols, key);
}