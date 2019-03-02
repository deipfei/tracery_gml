/// @param action
///action_deactivate(action)

var action = argument0;

if (action.subactions != noone) {
  for (var i = 0; i < array_length_1d(action.subactions); i++) {
    action_deactivate(action.subactions[i]);
  }
}

if (action.push != noone) {
  grammar_pop_rules(action.node.grammar, action.push.rules);
}