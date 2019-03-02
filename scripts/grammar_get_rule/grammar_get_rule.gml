/// @param grammar
/// @param key
///grammar_get_rule(grammar, key)

var grammar = argument0, key = argument1;

var symbol = ds_map_find_value(grammar.symbols, key);

if (is_undefined(symbol)) {
  var r = rule_init("{{" + string(key) + "}}");
  
  r.error = "Missing symbol " + string(key);
  return r;
}

var rule = symbol_get_rule(symbol);

if (rule == noone) {
  var r = rule_init("[" + string(key) + "]");
  r.error = "Symbol " + string(key) + " has no rule";
  return r;
}

return rule;