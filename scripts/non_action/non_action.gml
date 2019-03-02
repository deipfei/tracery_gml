/// @param tag
/// @param start
/// @param ending
/// @param in_pre
///non_actions(tag, start, end, in_pre, symbol, mods)

var tag = argument0, start = argument1, ending = argument2, in_pre = argument3;

if (start != ending) {
  var section = string_copy(tag, start, (ending - start) + 1);
  if (!in_pre) {
    show_debug_message("multiple possible expansion symbols in tag " + string(tag));
    return noone;
  } else {
    return string_split(section, ".");
  }
}

return noone;