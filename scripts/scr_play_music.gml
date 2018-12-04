var snd = argument0;
var t   = scr_can_play_music();
var res = 0;
if (t) {
    res = audio_play_sound(snd, 0, true);
}
return res;
