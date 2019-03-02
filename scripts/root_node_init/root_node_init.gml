/// @param grammar
/// @param raw_rule
///root_node_init(grammar, raw_rule))

var grammar = argument0, raw_rule = argument1;

var node = instance_create_depth(0, 0, 0, obj_root_node);

node_init_parent(node);

node.grammar = grammar;
node.parsed_rule = parse_rule(raw_rule);

return node;