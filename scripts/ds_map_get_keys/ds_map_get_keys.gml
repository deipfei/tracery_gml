/// @param map
///ds_map_get_keys(map)

var map = argument0;

if (ds_exists(map, ds_type_map)) {
  var output = [];
  var key = ds_map_find_first(map);
  var size = ds_map_size(map);

  for (var i = 0; i < size; i++) {
    output[i] = key;
    key = ds_map_find_next(map, key);
  }

  return output;
}

return [];