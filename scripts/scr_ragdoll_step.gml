var t = 0;
if image_xscale < 0
    t = -1;
scr_ragdoll_part_step(map_torso, part_torso, "torso", 0);
scr_ragdoll_part_step(map_leg, part_leg, "leg", -10 - t * 5);
scr_ragdoll_part_step(map_backleg, part_backleg, "backleg", -10 - t * 10);
scr_ragdoll_part_angle(map_head, part_head, "head", part_torso.image_angle + 50 + t * 50);
scr_ragdoll_part_angle(map_arm, part_arm, "arm", part_torso.image_angle + 10 + t * 5);
scr_ragdoll_part_angle(map_backarm, part_backarm, "backarm", part_torso.image_angle + 10 + t * 10);
scr_ragdoll_part_angle(map_hand, part_hand, "hand", part_arm.image_angle + 90 - t * 10);
scr_ragdoll_part_angle(map_backhand, part_backhand, "backhand", part_backarm.image_angle + 90 - t * 10);
scr_ragdoll_part_angle(map_foot, part_foot, "foot", part_leg.image_angle + 175);
scr_ragdoll_part_angle(map_backfoot, part_backfoot, "backfoot", part_backleg.image_angle + 175);

