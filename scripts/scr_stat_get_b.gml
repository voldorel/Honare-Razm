var name       = argument0;

var result = -1;
with obj_gamestats
    result = scr_stat_get(name);
return result;

