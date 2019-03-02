/// @param node
/// @param tag
///tag_node_copy_tag(node, tag))

var node = argument0, tag = argument1;

node.preActions = tag.preActions;
node.postActions = tag.postActions;
node.symbol = tag.symbol;
node.mods = tag.mods;
node.raw = tag.raw;