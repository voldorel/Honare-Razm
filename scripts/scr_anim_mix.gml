var mix_speed = 0.3;
if prev_anim = run_anim {
    if current_anim = stand_anim {
        mix_speed = 0.7
    }
}

if stance != DEAD {
    if is_solid
        scr_ragdoll_update();
    skeleton_animation_mix(prev_anim, current_anim, mix_speed);
    if skeleton_animation_get() != current_anim skeleton_animation_set(current_anim);
} else if stance = DEAD {
    scr_ragdoll_step();
}

