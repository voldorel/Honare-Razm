var tr = argument0;
var ts = argument1;
var tw = argument2;
var es = argument3;
var ew = argument4;
if (!instance_exists(obj_room_fade)) {
    with instance_create(x, y, obj_room_fade) {
        target_room  = tr;
        contains     = 2;
        out_weapon   = tw;
        out_skin     = ts;
        enemy_skin   = es;
        enemy_weapon = ew;
    }
}
