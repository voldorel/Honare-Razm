var t = argument0;
var q = 0;
with (obj_gamestats) {
    if (cs - t >= 0)
        cs -= t;
    else 
        q = -1;
    scr_stat_update("cs", cs);
    changed = true;
}
return q;
