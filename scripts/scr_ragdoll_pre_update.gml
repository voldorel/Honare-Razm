var object    = argument0;
var map       = argument1;
var bone      = argument2;
var ang_minus = argument3;
var result = 0;
with object
    result = scr_ragdoll_part_update(map, bone, ang_minus);
return result;
