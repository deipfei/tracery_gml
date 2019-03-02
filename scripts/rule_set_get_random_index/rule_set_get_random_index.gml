/// @param rule_set
///rule_set_get_random_index(rule_set)

var rule_set = argument0;

return floor(array_length_1d(rule_set.uses) * random(1));