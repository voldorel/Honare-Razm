var tr = argument0;
if (!instance_exists(obj_room_fade)) {
    with instance_create(x, y, obj_room_fade) {
        target_room = tr;
        blank       = true;
    }
}
