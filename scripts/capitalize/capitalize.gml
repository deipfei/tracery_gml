/// @param str
///capitalize

var str = argument0;

return string_upper(string_char_at(str, 1)) + string_copy(str, 2, string_length(str) - 1);