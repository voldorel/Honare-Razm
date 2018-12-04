if (!instance_exists(obj_room_fade)) {
    var next = 0;
    with (obj_gamestats)
        next = scr_stat_get("story_room");
    next = asset_get_index(next);
    scr_load_room_state();
    scr_room_fade(next);
}
