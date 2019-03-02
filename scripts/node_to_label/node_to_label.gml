/// @param node
///node_to_label(node)

var node = argument0;

if (node.object_index == obj_text_node) {
  return node.text;
} else if (node.object_index == obj_tag_node) {
  return node.symbol;
}