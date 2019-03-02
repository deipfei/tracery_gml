/// @param str
///comma

var str = argument0;

var last = string_char_at(str, string_length(str));

if (last == "," || last == "." || last == "?" || last =="!") return str;

return str + ",";