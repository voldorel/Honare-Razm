var tr = argument0;
var ts = argument1;
var tw = argument2;
if (!instance_exists(obj_room_fade)) {
    with instance_create(x, y, obj_room_fade) {
        target_room = tr;
        contains    = 1;
        out_weapon  = tw;
        out_skin    = ts;
    }
}
