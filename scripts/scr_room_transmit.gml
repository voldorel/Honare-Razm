var tr = 0;
var td = 0;
with (interact_target) {
    tr = outgoing_room;
    td = outgoing_door;
}
if (!instance_exists(obj_room_transmit)) {
    with instance_create(x, y, obj_room_transmit) {
        target_room = tr;
        target_door = td;
    }
}
