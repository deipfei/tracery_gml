/// @param str
///plural

var str = argument0;

var last = string_char_at(str, string_length(str));

if (last == "y") {
  if (!is_consonant(string_char_at(str, string_length(str) - 1))) {
    return str + "s";
  } else {
    return string_copy(str, 1, string_length(str) - 1) + "ies";
  }
} else if (last == "x") {
  return str + "en";
} else if (last == "z") {
  return str + "zes";
} else if (last == "h") {
  return str + "es";
} else {
  return str + "s";
}