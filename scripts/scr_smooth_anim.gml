var t  = current_anim;
scr_current_anim(stand_anim);
skeleton_animation_mix(t, walk_anim, 0.3);
skeleton_animation_mix(t, run_anim, 0.3);
skeleton_animation_mix(t, runback_anim, 0.3);
skeleton_animation_mix(t, stand_anim, 0.1);
