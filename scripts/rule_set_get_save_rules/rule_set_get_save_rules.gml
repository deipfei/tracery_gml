/// @param rule_set
///rule_set_get_save_rules(rule_set)

var rule_set = argument0;
//this is converted to JSON in original tracery, but JSON isn't easily worked with in GameMaker
//depending on how this is used, might be worth making a ds_map, but I'll come back later
return rule_set.rules;