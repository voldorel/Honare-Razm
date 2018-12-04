if (!wound) {
    var damage    = argument0;
    var dir       = argument1;
    var part_id   = argument2;
    var blood_dir = 0;
    var dead = false;
    hhealth   -= damage;
    if hhealth < 0 {
        hhealth = 0;
        dead    = true;
    }
    wound      = true;
    if dir = RIGHT {
        h_speed -= 15;
    }
    else if dir = LEFT {
        blood_dir = 180;
        h_speed += 15;
    }
    with instance_create(part_id.x, part_id.y, obj_bleed) {
        if dead
            alarm[0] = room_speed * 2;
        father = part_id;
        dirr   = blood_dir;
    }
}
