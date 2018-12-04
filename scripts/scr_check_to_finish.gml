if (!finished) {
    var q = scr_check_characters();
    if (q != 0) {
        finished = true;
        with obj_room_controller {
            if (q == 2)
                win = true;
            else win = false;
            alarm[2] = room_speed * 2;
        }
    }
}
