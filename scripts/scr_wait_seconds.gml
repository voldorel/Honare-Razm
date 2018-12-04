var t = argument0;
t *= room_speed;
with instance_create(x, y, obj_timer) {
    count = t;
}
