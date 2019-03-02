/// @param parent
/// @param text
///text_node_init(parent, text)

var parent = argument0, text = argument1;

var node = instance_create_depth(0, 0, 0, obj_text_node);

node_init_parent(node);
node_set_parent(node, parent);

node.text = text;

node.final_text = text;

return node;
