/// @param rule_set
///rule_set_parse_all(rule_set)

var rule_set = argument0;

with rule_set {
  for (var i = 0; i < array_length_1d(rules); i++) {
    if (is_string(rules[i])) {
      rules[i] = rule_init(rules[i]);
    } else {
      rules[i] = rule_init(string(rules[i]));
    }
  }
}