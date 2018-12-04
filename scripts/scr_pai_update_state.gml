var enemy_attacking = false;
//key_left        = keyboard_check(ord('Z'));
//key_right       = keyboard_check(ord('C'));


if (target != 0) {
    var t = false
    with target {
        t = scr_is_dead();
    }
    if t {
        target    = 0;
        key_right = false;
        key_left  = false;
    }
    with target {
        enemy_attacking = scr_is_attacking();
    }
}

if stance != DASH
    move_dir = STAND;


if hhealth <= 0
    stance  = DEAD;
if stance = RUNWALK {
    scr_generate_walk();
    if (target != 0) {
        if (x > target.x) {
            image_xscale  = -1;
        } else {
            image_xscale  = 1;
        }
        var enemy_far   = false;
        var enemy_close = false;
        if abs(x - target.x) > 400 {
            enemy_far   = true;
            enemy_close = false;
        } else {
            enemy_far   = false;
            enemy_close = true;
        }
    }
    if (pushed) {
        stance  = PUSHED;
    }
    if (wound) {
        stance  = WOUND;
        wound   = false;
    }
    if cutscene 
        stance = CUTSCENE;
}
if stance = WOUND {
    h_wound          = true;
    timeline_index   = 0;
    timeline_running = false;
    scr_current_anim("wound");
}
if stance = PUSHED {
    timeline_index   = 0;
    timeline_running = false;
    scr_current_anim(pushed_anim);
    if attack_mask != 0
        scr_end_attack();
}
if stance = PARRIED {
    timeline_index   = 0;
    timeline_running = false;
    if attack_mask != 0
        scr_end_attack();
    scr_current_anim("blocked");
}
if stance = DEAD {
    if !ragdoll {
        ragdoll = true;
        scr_ragdoll_enable();
        var t = 1
        if obj_player.x > x
            t = -1;
        if cutscene
            t = 1;
        with part_torso {
            physics_apply_force(x,y, t * 350000, -200000);
        }
        timeline_index   = 0;
        timeline_running = false;
        if attack_mask != 0 {
            with attack_mask {
                instance_destroy();
            }
        }
    }
}
if (stance = CUTSCENE) {
    if (cutscene = false)
        stance = RUNWALK;
}
event_inherited();
