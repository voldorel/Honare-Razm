var map          = argument0;
var part         = argument1;
var bone         = argument2;
var angle_offset = argument3;
ds_map_replace(map, "angle", part.image_angle - angle_offset);
skeleton_bone_state_set(bone, map);

