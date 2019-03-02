/// @param grammar
/// @param mod_name
/// @param text
///grammar_apply_mod(grammar, mod_name, text)

var grammar = argument0, mod_name = argument1, text = argument2;

if (is_undefined(ds_map_find_value(grammar.modifiers, mod_name))) {
  show_debug_message("Unknown mod " + string(mod_name));
  return text;
}

var modifier = ds_map_find_value(grammar.modifiers, mod_name);

return script_execute(modifier, text);