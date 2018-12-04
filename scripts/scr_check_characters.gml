var res = 0;
with obj_character {
    var tt = id;
    var t  = scr_is_dead();
    if (t) {
        if (tt == obj_player)
            res = 1;
        else 
            res = 2;
    }
}
return res;
