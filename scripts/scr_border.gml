var q = instance_exists(obj_room_transmit);
if (cutscene && !q) {
    scr_draw_border();
    border_offset += 2;
    if border_offset > 13
        border_offset = 13;
} else {
    if (border_offset > 0) {
        border_offset -= 2;
        if border_offset < 0
            border_offset = 0;
    }
}
