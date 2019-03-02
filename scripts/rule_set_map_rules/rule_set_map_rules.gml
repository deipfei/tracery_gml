/// @param rule_set
/// @param script
///rule_set_map_rules

var rule_set = argument0, script = argument1;

var rules = rule_set.rules;
var output = [];

for (var i = 0; i < array_length_1d(rules); i++) {
  output[i] = script_execute(script, rules[i], i);
}

return output;