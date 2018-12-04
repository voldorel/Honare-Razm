//--this-functuin-deletes-the-story-stats
with (obj_gamestats) {
    ds_map_delete(stats, "sunny_map_state");
    ds_map_delete(stats, "bar_state");
    ds_map_delete(stats, "house_state");
    ds_map_delete(stats, "sunny2");
    
    
    changed     = true;
}
