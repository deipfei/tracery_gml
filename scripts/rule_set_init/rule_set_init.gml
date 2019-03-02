/// @param rules
///rule_set_init(rules)

var rules = argument0;

if (is_string(rules)) {
  rules = [rules];
} else if (is_array(rules)) {
  //do nothing, but don't let arrays go to object_index 
} else if (is_int64(rules)) {
  rules = [string(rules)];
} else if (rules.object_index == obj_rule_set) {
  return rules;
} else if (!is_array(rules)) {
  show_debug_message("Unknown rule type for rule_set_creation: " + string(rules));
}

var rule_set = instance_create_depth(0, 0, 0, obj_rule_set);

rule_set.rules = rules;
rule_set_parse_all(rule_set);

rule_set.uses = [];
rule_set.start_uses = [];
rule_set.total_uses = 0;

for (var i = 0; i < array_length_1d(rule_set.rules); i++) {
  rule_set.uses[i] = 0;
  rule_set.start_uses[i] = rule_set.uses[i];
  rule_set.total_uses += rule_set.uses[i];
}

return rule_set;