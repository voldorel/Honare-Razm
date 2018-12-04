if scr_can_play_sound() {
    audio_stop_sound(voice);
    voice = scr_play_sound(attack_sound[irandom_range(0, 3)]);
}
