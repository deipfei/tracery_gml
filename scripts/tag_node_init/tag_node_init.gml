/// @param parent
/// @param parsed_tag
///tag_node_init(parent, parsed_tag))

var parent = argument0, parsed_tag = argument1;

var node = instance_create_depth(0, 0, 0, obj_tag_node);

node_init_parent(node);

if (parsed_tag.object_index != obj_tag) {
  if (is_string(parsed_tag)) {
    show_debug_message("Can't make tagNode from unparsed string!");
    parsed_tag = parse_tag(parsed_tag);
  } else {
    show_debug_message("Unknown tagNode input: " + string(parsed_tag));
  }
}

node_set_parent(node, parent);
tag_node_copy_tag(node, parsed_tag);

return node;