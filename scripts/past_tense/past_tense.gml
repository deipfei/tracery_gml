/// @param str
///past_tense

var str = argument0;

var last = string_char_at(str, string_length(str));

if (last == "y") {
  if (is_consonant(string_char_at(str, string_length(str) - 1))) {
    return string_copy(str, 1, string_length(str) - 1) + "ied";
  } else {
    return str + "ed";
  }
} else if (last == "e") {
  return str + "d";
} else {
  return str + "ed";
}