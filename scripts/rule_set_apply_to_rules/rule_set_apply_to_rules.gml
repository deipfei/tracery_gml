/// @param rule_set
/// @param script
///rule_set_map_rules

var rule_set = argument0, script = argument1;

var rules = rule_set.rules;

for (var i = 0; i < array_length_1d(rules); i++) {
  rules[i] = script_execute(script, rules[i], i);
}

rule_set.rules = rules;