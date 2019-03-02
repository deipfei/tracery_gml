/// @param node
///node_expand(node)

var node = argument0;

if (node.object_index == obj_root_node) {
  node_create_children_from_sections(node, node.parsed_rule);
  node_expand_children(node);
} else if (node.object_index == obj_tag_node) {
  node.rule = grammar_get_rule(node.grammar, node.symbol);
  
  if (node.rule.error != noone) {
    node.error = node.rule.error;
  }
  
  node.actions = [];
  
  //parse the rule if it hasn't been already
  node_create_children_from_sections(node, rule_get_parsed(node.rule));
  
  //do any pre-expansion actions
  for (var i = 0; i < array_length_1d(node.preActions); i++) {
    var action = action_init(node, node.preActions[i]);
    action_activate(action);
  }
  
  //map each child section to a node
  /*if (node.rule.sections == noone) {
    show_debug_message(string(node.rule));
  }*/
  
  node_expand_children(node);
  
  for (var i = 0; i < array_length_1d(node.actions); i++) {
    action_deactivate(node.actions[i]);
  }
  
  node.final_text = node.child_text;
  for (var i = 0; i < array_length_1d(node.mods); i++) {
    node.final_text = grammar_apply_mod(node.grammar, node.mods[i], node.final_text);
  }
}

//do nothing otherwise