if father != id {
    var xx         = 0;
    var yy         = 0;
    var angle      = 0;
    var arm_angle  = 0
    var hand_angle = 0;
    
    with father {
        ds_map_clear(map_torso);
        ds_map_clear(map_arm);
        ds_map_clear(map_hand);
        ds_map_clear(map_mainhand);
        ds_map_clear(map_fist);
        skeleton_bone_state_get("torso", map_torso);
        skeleton_bone_state_get("arm", map_arm);
        skeleton_bone_state_get("hand", map_hand);
        skeleton_bone_state_get("fist", map_fist);
        skeleton_bone_state_get("mainhand", map_mainhand);
        xx          = ds_map_find_value(map_mainhand, "worldX");
        yy          = ds_map_find_value(map_mainhand, "worldY");
        torso_angle = ds_map_find_value(map_torso, "angle");
        arm_angle   = ds_map_find_value(map_arm, "angle");
        hand_angle  = ds_map_find_value(map_hand, "angle");
        fist_angle  = ds_map_find_value(map_fist, "angle");
        angle       = ds_map_find_value(map_mainhand, "angle");
        angle       = angle - (hand_angle + arm_angle + torso_angle + fist_angle);
    }
    angle       = -50 - angle;
    if (father.image_xscale < 0)
        angle = 180 - angle;
    image_angle = angle;
    x           = father.x + xx - 70 * cos(degtorad(angle));
    y           = father.y + yy + 70 * sin(degtorad(angle));
}



//collision detection
var t   = id;
var f   = father;
var dir = 1;
with (obj_sword_mask_m) {
    if (t != id) {
        var ff  = father;
        var father_weapon = father.mainhand;
        var dmg = damage;
        var t1 = id;
        if father.x < f.x
            dir = -1
        if (place_meeting(x, y, t)) {
            if father != f.id {
                with f {
                    blocked = true;
                    with instance_create(t1.x, t1.y, obj_spark) {
                        father = ff.part_fist;
                        scr_play_sound(father_weapon.parry_sound[irandom_range(0, 3)]);
                    }
                }
                hit = true;
            }
        }
    }
}
