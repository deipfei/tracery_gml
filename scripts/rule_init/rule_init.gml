/// @param raw
///rule_init(raw)

var raw = argument0;

var rule = instance_create_depth(0, 0, 0, obj_rule);

rule.raw = raw;
rule.sections = parse_rule(raw);
rule.error = noone;

return rule;