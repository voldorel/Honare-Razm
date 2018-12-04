skeleton_animation_clear(0);
ragdoll = true;
var fixA = physics_fixture_create();
scr_ragdoll_enable_part(fixA, 10, part_torso);
scr_ragdoll_enable_part(fixA, 5, part_head);
scr_ragdoll_enable_part(fixA, 5, part_arm);
scr_ragdoll_enable_part(fixA, 5, part_hand);
scr_ragdoll_enable_part(fixA, 5, part_backarm);
scr_ragdoll_enable_part(fixA, 5, part_backhand);
scr_ragdoll_enable_part(fixA, 5, part_leg);
scr_ragdoll_enable_part(fixA, 5, part_foot);
scr_ragdoll_enable_part(fixA, 5, part_backleg);
scr_ragdoll_enable_part(fixA, 5, part_backfoot);
physics_fixture_delete(fixA);

joint_arm       = scr_ragdoll_create_joint(part_arm, part_torso, map_arm, arm_angle - torso_angle, 90, 180);
joint_hand      = scr_ragdoll_create_joint(part_hand, part_arm, map_hand, hand_angle - arm_angle, 90, 180);
joint_backarm   = scr_ragdoll_create_joint(part_backarm, part_torso, map_backarm, backarm_angle - torso_angle, -180, -40);
joint_backhand  = scr_ragdoll_create_joint(part_backhand, part_backarm, map_backhand, backhand_angle - backarm_angle, 90, 180);
joint_leg       = scr_ragdoll_create_joint(part_leg, part_torso, map_leg, leg_angle - torso_angle, -90, - 180);
joint_foot      = scr_ragdoll_create_joint(part_foot, part_leg, map_foot, foot_angle - leg_angle, -70, -10);
joint_backleg   = scr_ragdoll_create_joint(part_backleg, part_torso, map_backleg, backleg_angle - torso_angle, -90, -160);
joint_backfoot  = scr_ragdoll_create_joint(part_backfoot, part_backleg, map_backfoot, backfoot_angle - backleg_angle, -70, -10);
joint_head      = scr_ragdoll_create_joint(part_head, part_torso, map_head, head_angle - torso_angle, -70, 0);


with part_fist {
    instance_destroy();
}
with part_backfist {
    instance_destroy();
}



if mainhand != -1 {
    skeleton_attachment_set("mainhand", "none");
    var t = id;
    with mainhand {
        father = t;
        hidden = false;
    }
}
