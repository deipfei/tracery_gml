/// @param rules
///symbol_wrap_rules(rules)

var rules = argument0;
if (is_array(rules) || is_string(rules)) {
  return rule_set_init(rules);
} else if (rules.object_index != obj_rule_set) {
  return rules;
} else {
  show_debug_message("Unknown rules type: " + rules);
  return noone;
}