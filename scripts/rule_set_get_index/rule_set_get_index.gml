/// @param rule_set
///rule_set_get_index(rule_set)

var rule_set = argument0;

//weighted distribution
//imagine a bar of length 1, how to divide the length
//such that a random distribution will result in the dist we want?

var index = rule_set_get_random_index(rule_set);

var median_ = rule_set.total_uses / array_length_1d(rule_set.uses);

var count = 0;

while (rule_set.uses[index] > median_ && count < 20) {
  index = rule_set_get_random_index(rule_set);
  count++;
}

//reroll more likely if index is too much higher

return index;