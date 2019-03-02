/// @param node
/// @param parent
///node_set_parent(node, parent)

var node = argument0, parent = argument1;

if (parent != noone) {
  node.depth_ = parent.depth_ + 1;
  node.parent = parent;
  node.grammar = parent.grammar;
}