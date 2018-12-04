var xscale       = sign(image_xscale);
var map          = argument0;
var part         = argument1;
var bone         = argument2;
var angle_offset = argument3;
var angle        = xscale * (part.image_angle - part.ang_offset - angle_offset);
ds_map_replace(map, "angle", angle);
skeleton_bone_state_set(bone, map);

