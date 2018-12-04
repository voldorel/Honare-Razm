var t = array_length_1d(buttons);
if (cutscene) {
    UI_offset += 30;
    if UI_offset > 1000
        UI_offset = 1000;
} else {
    UI_offset -= 30;
    if UI_offset < 0
        UI_offset = 0;
}

for (var i = 0; i < t; i++) {
    var obj = buttons[i];
    var tt  = obj.sprite_index;
    var xx  = obj.x_off;
    var yy  = obj.y_off;
    var ty  = UI_offset;
    if yy < view_hview[0] / 2
        ty = - UI_offset;
    draw_sprite(tt, obj.image_index, xx, yy + ty);
}
