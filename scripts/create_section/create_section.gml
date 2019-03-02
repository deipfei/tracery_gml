/// @param sections
/// @param rule
/// @param start
/// @param ending
/// @param in_tag
///create_section(sections, rule, start, end, in_tag))

var sections = argument0, rule = argument1, start = argument2, ending = argument3, in_tag = argument4;

var section = string_copy(rule, start, (ending - start));

if (string_length(section) > 0) {
  if (in_tag) {
    sections = array_push(sections, parse_tag(section));
  } else {
    sections = array_push(sections, section);
  }
}

return sections;