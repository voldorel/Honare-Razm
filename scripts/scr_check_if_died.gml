if (obj_player.hhealth <= 0) {
    if (!finished) {
        alarm[3] = room_speed * 3;
        finished = true;
    }
}
