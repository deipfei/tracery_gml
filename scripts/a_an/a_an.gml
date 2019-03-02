///@param str
///a_an(str)

var str = argument0;

var first = string_char_at(str, 1);

if (is_consonant(first)) {
  return "a " + str; 
}

return "an " + str;