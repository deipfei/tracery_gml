/// @param grammar
/// @param raw= "#origin#"
///grammar_flatten(grammar, raw)

var grammar = argument[0];
var raw = argument_count > 1 ? argument[1] : "#origin#";

var root = root_node_init(grammar, raw);

node_expand(root);
var ret = root.child_text;
return ret;