var name = argument0;
var t    = argument1;
scr_save_room();
with (obj_gamestats) {
    scr_stat_entry("story_state", name + string(t));
    scr_stat_update("story_state", name + string(t));
}

