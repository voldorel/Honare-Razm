button      = scr_create_button(0, 90, obj_unlock);
var tt      = scr_get_cost(obj_box_weapon);
var t       = id;
with button {
    father    = t;
    visible   = false;
    invisible = true;
}
