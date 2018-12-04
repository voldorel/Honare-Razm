var ts = 0;
var tw = 0;
var es = 0;
var ew = 0;

with (obj_room_controller) {
    ts = player_cost;
    tw = player_wp;
}


with (obj_box_char) {
    var t = array_length_1d(skins) - 1;
    es    = skins[irandom_range(0, t)];
}
with (obj_box_weapon) {
    var t = array_length_1d(weapons) - 1;
    ew    = weapons[irandom_range(0, t)];
}

rooms[0] = rm_fogs_c1;
rooms[1] = rm_sunset_c1;
rooms[2] = rm_sunny_c1;
var tr   = rooms[irandom_range(0, 2)];



    
if (!instance_exists(obj_room_fade)) {
    scr_fade_modified_2(tr, ts, tw, es, ew);
}

