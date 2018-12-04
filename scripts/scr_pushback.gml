if (!pushed) {
    pushed      = true;
    var dir     = argument0;
    var part_id = argument1;
    if dir = RIGHT {
        if h_speed > 5
            h_speed = 0;
        h_speed -= 20;
    }
    else if dir = LEFT {
        if h_speed < -5
            h_speed = 0;
        h_speed += 20;
    }
    with instance_create(part_id.x, part_id.y, obj_smoke) {
        father = part_id;
    }
}
