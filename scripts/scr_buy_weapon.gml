var t = 0;
with (obj_box_weapon) {
    t = cost[index];
}
var q = scr_coins_lose(t);
if (q != -1) {
    with (obj_box_weapon) {
        locked[index] = false;
        index_prev       = -1;
        var t = code[index];
        with (obj_gamestats)
            scr_stat_update(t, false);
    }
}
