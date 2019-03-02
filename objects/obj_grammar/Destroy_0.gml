ds_map_destroy(symbols);
ds_map_destroy(modifiers);

with obj_rule {
  instance_destroy(self); 
}

with obj_tag {
  instance_destroy(self); 
}

with obj_symbol {
  instance_destroy(self); 
}

with obj_rule_set {
  instance_destroy(self); 
}

with obj_action {
  instance_destroy(self);
}

with obj_node {
  instance_destroy(self); 
}

with obj_push {
  instance_destroy(self); 
}