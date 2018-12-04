var snd = argument0;
var t   = scr_can_play_sound();
var res = 0;
if (t) {
    res = audio_play_sound(snd, 1, false);
}
return res;
