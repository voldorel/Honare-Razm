var momentum = 1;
    if walking = false {
        momentum = 2;
    }
    if key_right {
        if h_speed < 0
           h_speed = 0; 
        h_speed  = (h_speed + momentum);
        move_dir = RIGHT;
        if target = 0
            image_xscale = 1;
    }
    if key_left {
        if h_speed > 0
           h_speed = 0;
        h_speed      = (h_speed - momentum);
        move_dir     = LEFT;
        if target = 0
            image_xscale = -1;
    }
    var maxspeed  = walkspeed;
    var move_anim = walk_anim;
    if walking = false {
        maxspeed   = runspeed;
        if (target = 0)
            move_anim = run_anim;
        else {
            if (x > target.x) {
                image_xscale  = -1;
                if move_dir = LEFT {
                    move_anim = run_anim;
                }
                else if move_dir = RIGHT {
                    move_anim = runback_anim;
                }
            } else {
                image_xscale  = 1;
                if move_dir = RIGHT {
                    move_anim = run_anim;
                }
                else if move_dir = LEFT {
                    move_anim = runback_anim;
                }
            }
        }
    }
    if abs(h_speed) > maxspeed {
        h_speed = sign(h_speed) * maxspeed;
    }
    switch move_dir {
        case STAND   :scr_current_anim(stand_anim); break;
        case LEFT    :
        case RIGHT   :scr_current_anim(move_anim); break;
    }
