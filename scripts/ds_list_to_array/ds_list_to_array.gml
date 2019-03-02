///ds_list_to_array(list)

var list = argument0;

if (is_string(list)) {
  return [list]; 
}

if (ds_exists(list, ds_type_list)) {
  var output = [];

  var size = ds_list_size(list);

  for (var i = 0; i < size; i++) {
    output[i] = list[| i]; 
  }

  return output;
}

return [];