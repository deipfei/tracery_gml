/// @param grammar
///grammar_clear(grammar)

var grammar = argument0;

with grammar {
  if (symbols != noone) {
    ds_map_destroy(symbols);
  }
  
  if (modifiers != noone) {
    ds_map_destroy(modifiers);
  }
  
  symbols = ds_map_create();
  modifiers = ds_map_create();
  symbol_names = [];
  
  for (var i = 0; i < array_length_1d(obj_tracery.UNIVERSAL_MODIFIERS); i++) {
    var script = obj_tracery.UNIVERSAL_MODIFIERS[i];
    ds_map_add(modifiers, script_get_name(script), script);
  }
}