/// @param node
/// @param raw
///action_init(node, raw)

var node = argument0, raw = argument1;

var action = instance_create_depth(0, 0, 0, obj_action);

action.node = node;
action.grammar = node.grammar;
action.raw = raw;

return action;