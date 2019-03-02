/// @param rule
///rule_get_parsed(rule)

var rule = argument0;

if (rule.sections == noone) {
  rule.sections = parse_rule(rule.raw); 
}

return rule.sections;