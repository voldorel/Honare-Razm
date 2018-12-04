var father = argument0;
var t      = sign(father.image_xscale);
if father != id {
    var xx         = 0;
    var yy         = 0;
    var angle      = 0;
    var arm_angle  = 0
    var hand_angle = 0;
    var fist_angle = 0;
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
        fist_angle  = ds_map_find_value(map_fist, "angle");
        fist_angle -= (arm_angle + torso_angle + hand_angle);
    }
    phy_position_x   = father.x + xx + t*(-80 * cos(degtorad(angle)) + 60 * cos(degtorad(fist_angle - 20)));
    phy_position_y   = father.y + yy - 80 * sin(degtorad(angle)) + 60 * sin(degtorad(fist_angle - 20));
    if (father.image_xscale < 0)
        angle = 90 - angle;
    phy_rotation     = angle + 40
}
