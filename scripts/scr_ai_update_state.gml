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
        var enemy_far    = false;
        var enemy_close  = false;
        var en_too_close = false;
        if abs(x - target.x) > 550 {
            enemy_far   = true;
            enemy_close = false;
        } else {
            enemy_far   = false;
            enemy_close = true;
            if abs(x - target.x) < 350
                en_too_close = true;
        }
        if enemy_attacking {
            if enemy_attack_seen {
                if enemy_far
                    scr_ai_move_to_target();
                else {
                    c_wound           = true;
                    enemy_attack_seen = false;
                }
            } else {
                if enemy_close {
                    if (en_too_close) {
                        scr_ai_move_away();
                    } else {
                        if h_wound {
                            scr_ai_random_reaction();
                        }
                        else 
                            scr_ai_move_away();
                    }
                }
                if target.attack_mask != 0
                    enemy_attack_seen = true;
            }
        } else {
            if enemy_far {
                scr_ai_move_to_target();
            } else if (enemy_close) {
                if !en_too_close {
                    c_wound       = true;
                    flee_distance = 0;
                } else {
                    if flee_distance > room_speed {
                        var q = scr_ai_enemy_coming();
                        if q
                            scr_ai_random_reaction_1();
                        flee_distance = 0;
                    } else {
                        scr_ai_move_away();
                        flee_distance++;
                    }
                }
            }
        }
    }
    if (pushed) {
        stance  = PUSHED;
    }
    if c_wound
        stance  = ATTACKING;
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
    if attack_mask != 0
        scr_end_attack();
}
if stance = PUSHED {
    timeline_index   = 0;
    timeline_running = false;
    scr_current_anim(pushed_anim);
    if attack_mask != 0
        scr_end_attack();
}
if stance = PARRIED {
    pushed           = false;
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
if stance = KICK {
    h_wound = false;
    if (wound) {
        stance   = WOUND;
    }
    scr_current_anim(mainhand.kick_anim);
    if current_anim != current_attack_anim {
        var anim_           = mainhand.kick_anim;
        scr_current_anim(anim_);
        current_attack_anim = current_anim;
        timeline_index      = mainhand.kick_guide;
    }
    scr_start_timeline();
}
if stance = ATTACKING {
    c_wound     = false;
    if (wound) {
        stance  = WOUND;
        c_wound = true;
        wound   = false;
    }
    if blocked {
        stance  = PARRIED;
        h_speed = 0;
    }
    if (pushed) {
        stance  = PUSHED;
    }
   // c_wound = false;
    if current_anim != current_attack_anim {
        var ind             =  irandom_range(0, array_length_1d(mainhand.attack_anim) - 1);
        scr_current_anim(mainhand.attack_anim[ind]);
        current_attack_anim = current_anim;
        timeline_index      = mainhand.attack_guide[ind];
    }
    if !timeline_running {
        timeline_position = 0;
        timeline_running  = true;
    }
    if (pushed) {
        stance  = PUSHED;
    }
    if (wound) {
        stance  = WOUND;
        c_wound = true;
        wound   = false;
    }
    if blocked {
        stance  = PARRIED;
        h_speed = 0;
    }
}
if stance = PARRY {
    h_wound = false;
    if (wound) {
        if  (!parry) {
            stance   = WOUND;
            wound    = false;
        }
    }
    scr_current_anim(mainhand.parry_anim);
    if current_anim != current_attack_anim {
        var anim_           = mainhand.parry_anim;
        scr_current_anim(anim_);
        current_attack_anim = current_anim;
        timeline_index      = mainhand.parry_guide;
    }
    scr_start_timeline();
}
if (stance = CUTSCENE) {
    if (cutscene = false)
        stance = RUNWALK;
}

event_inherited();
