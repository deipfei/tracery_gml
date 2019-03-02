/// @param tag
///parse_tag(tag)

var tag = argument0;

var prefxns = [];
var postfxns = [];

var lvl = 0;
var start = 1;

var in_pre = true;

var symbol = "", mods = [];

for (var i = 1; i < string_length(tag) + 1; i++) {
  var char = string_char_at(tag, i);
  
  switch (char) {
    case "[":
      if (lvl == 0) {
        var split = non_action(tag, start, i, in_pre);
        if (split != noone) {
          in_pre = false;
          symbol = split[0];
          array_copy(mods, 0, split, 1, array_length_1d(split));
        }
      }
      
      lvl++;
      break;
    case "]":
      lvl--;
      if (lvl == 0) {
        var section = string_copy(tag, start + 1, (i - (start + 1)));
        if (in_pre) {
          prefxns = array_push(prefxns, section);
        } else {
          postfxns = array_push(postfxns, section);
        }
        
        start = i + 1;
      }
      break;
    default:
      break;
  }
}

var split = non_action(tag, start, string_length(tag) + 1, in_pre);

if (split != noone) {
  in_pre = false;
  symbol = split[0];
  array_copy(mods, 0, split, 1, array_length_1d(split));
}

if (lvl > 0) {
  show_debug_message("too many '[' in rule " + in_quotes(tag));
  return;
}

if (lvl < 0) {
  show_debug_message("too many ']' in rule " + in_quotes(tag));
}

return tag_init(prefxns, postfxns, symbol, mods, tag);