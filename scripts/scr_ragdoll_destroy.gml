with part_torso
    instance_destroy();
with part_leg
    instance_destroy();
with part_backleg
    instance_destroy();
with part_head
    instance_destroy();
with part_arm
    instance_destroy();
with part_backarm
    instance_destroy();
with part_hand
    instance_destroy();
with part_backhand
    instance_destroy();
with part_foot
    instance_destroy();
with part_backfoot
    instance_destroy();
with part_fist
    instance_destroy();
with part_backfist
    instance_destroy();
ds_map_destroy(map_torso);
ds_map_destroy(map_mainhand);
ds_map_destroy(map_arm);
ds_map_destroy(map_hand);
ds_map_destroy(map_fist);
ds_map_destroy(map_backarm);
ds_map_destroy(map_backhand);
ds_map_destroy(map_backfist);
ds_map_destroy(map_leg);
ds_map_destroy(map_foot);
ds_map_destroy(map_backleg);
ds_map_destroy(map_backfoot);

