/// @param action
///action_activate(action)

var action = argument0;

var node = action.node;
node.actions = array_push(node.actions, action);

action.amended = grammar_flatten(action.grammar, action.raw);

var parsed = parse_tag(action.amended);
var sub_action_raw = parsed.preActions;

if (sub_action_raw != noone && array_length_1d(sub_action_raw) > 0) {
  for (var i = 0; i < array_length_1d(sub_action_raw); i++) {
    action.subactions[i] = action_init(node, sub_action_raw[i]);
  }
}

if (parsed.symbol != noone) {
  var split = string_split(parsed.symbol, ":");
  
  if (array_length_1d(split) == 2) {
    action.push = push_init(split[0], string_split(split[1], ","));
    grammar_push_rules(node.grammar, action.push.symbol, action.push.rules);
  } else {
    show_debug_message("Unknown action: " + string(parsed.symbol));
  }
}

if (action.subactions != noone) {
  for (var i = 0; i < array_length_1d(action.subactions); i++) {
    action_activate(action.subactions[i]);
  }
}