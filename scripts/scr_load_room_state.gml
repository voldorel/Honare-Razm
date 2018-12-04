with (obj_gamestats) {
    if (scr_stat_entry_exists("story_state")) {
        var ss = scr_stat_get("story_state");
        var st = string_length(ss);
        var s1 = string_delete(ss, st, 1);
        var t  = string_char_at(ss, st)
        var tt = "" + t;
        scr_stat_update(s1, real(tt));
    }
}
