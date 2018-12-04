var name       = argument0;
var init_value = argument1;
with obj_gamestats {
    scr_stat_entry(name, init_value);
    changed        = true;
}
