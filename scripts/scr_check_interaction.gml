can_interact    = false;    
interact_target = 0;
var tt = 0;
var t = id;
with obj_interactable {
    var ii = id;
    if (can_use) {
        if place_meeting(x, y, t) {
            if (insta_use) {
                with (obj_player) {
                    interact_target = ii;
                    scr_use_door();
                }
            }
            else
                tt = id;
        }
    }
}
interact_target = tt;
with (obj_button_interact)
    sprite_index = spr_empty;
if interact_target != 0 {
    can_interact = true;
    with (obj_button_interact)
        sprite_index = spr_button_interact;
}
