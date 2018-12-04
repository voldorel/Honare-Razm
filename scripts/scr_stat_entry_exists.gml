var name       = argument0;

var result     = false;
if ds_map_exists(stats, name) {
    result = true;
}
changed = true;
return result;
