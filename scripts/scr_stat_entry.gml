var name       = argument0;
var init_value = argument1;
changed        = true;
if !ds_map_exists(stats, name) {
    ds_map_add(stats, name, init_value);
}
