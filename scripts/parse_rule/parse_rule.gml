/// @param rule
///parse_rule(rule)

var rule = argument0;

var sections = [];

if (!is_string(rule)) {
  show_debug_message("Cannot parse non-string rule " + string(rule));
  return noone;
}

if (string_length(rule) == 0) {
  return [];
}

var lvl = 0;
var start = 1;
var in_tag = false;

for (var i = 1; i < string_length(rule) + 1; i++) {
  var char = string_char_at(rule, i);
  
  switch(char) {
    case "[":
      if (lvl == 0 && !in_tag) {
        if (start < i)
          sections = create_section(sections, rule, start, i, in_tag);
        start = i + 1;
      }
      lvl++;
      break;
    case "]":
      lvl--;
      if (lvl == 0 && !in_tag) {
        if (start < i)
          sections = create_section(sections, rule, start, i, in_tag);
        start = i + 1;
      }
      break;
    case "#":
      if (lvl == 0) {
        sections = create_section(sections, rule, start, i, in_tag);
        in_tag = !in_tag;
        start = i + 1;
      }
      break;
    default:
      break;
  }
}
  
if (lvl > 0) {
  show_debug_message("Too many '[' in rule " + in_quotes(rule));
  return;
}

if (lvl < 0) {
  show_debug_message("Too many ']' in rule " + in_quotes(rule));
  return;
}

if (in_tag) {
  show_debug_message("Odd number of '#' in rule " + in_quotes(rule));
}

sections = create_section(sections, rule, start, string_length(rule) + 1, in_tag);

return sections;