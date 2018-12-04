var map          = argument0;
var part         = argument1;
var bone         = argument2;
var angle_offset = argument3;

var xscale       = sign(image_xscale);
var flip         = 0;
if image_xscale < 0 {
    flip         = 1;
}


var xx    = part.x - x + part.xy_offset * cos(degtorad(part.image_angle));
var yy    = -part.y + y + part.xy_offset * sin(degtorad(part.image_angle));
var angle = xscale * (part.image_angle - part.ang_offset - angle_offset) - flip * 180;

ds_map_replace(map, "x", xscale * xx);
ds_map_replace(map, "y", yy);
ds_map_replace(map, "angle", angle);
skeleton_bone_state_set(bone, map);

