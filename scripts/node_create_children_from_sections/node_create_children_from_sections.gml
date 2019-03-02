/// @param node
/// @param sections
///node_create_children_from_sections(node, sections)

var node = argument0, sections = argument1;

for (var i = 0; i < array_length_1d(sections); i++) {
  if (is_string(sections[i])) {
    node.children[i] = text_node_init(node, sections[i]);
  } else {
    node.children[i] = tag_node_init(node, sections[i]);
  }
}