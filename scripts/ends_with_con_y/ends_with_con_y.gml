/// @param str
///ends_with_con_y

var str = argument0;

if (string_char_at(str, string_length(str)) == "y") {
  return is_consonant(string_char_at(str, string_length(str) - 1));
}

return false;