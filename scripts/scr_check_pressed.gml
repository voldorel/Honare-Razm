///check if pressed
var t = scr_can_gui();
if (!t) {
    for(var i=0; i<4; i++) {
        if device_mouse_check_button(i,mb_left) {
            if position_meeting(device_mouse_x(i), device_mouse_y(i), self) {
                pressed  = true;
                y+= 50;
                mouse_no = i;
            }
            else mouse_no = -1;
        }
    }
}
