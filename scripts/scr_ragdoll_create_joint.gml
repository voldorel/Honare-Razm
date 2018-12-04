var obj1       = argument0;
var obj2       = argument1;
var map        = argument2
var ang_offset = argument3;
var min_ang    = argument4;
var max_ang    = argument5;

var xx         = ds_map_find_value(map, "worldX");
var yy         = ds_map_find_value(map, "worldY");
var xscale     = 1;
if sign(image_xscale) < 0
    xscale     = -1;
var ang1       = scr_fix_angle(xscale * min_ang - xscale * ang_offset)
var ang2       = scr_fix_angle(xscale * max_ang - xscale * ang_offset);
var min_angle  = min(ang1, ang2);
var max_angle  = max(ang1, ang2);
var result     = physics_joint_revolute_create(obj1, obj2, x + xx, y + yy, min_angle, max_angle, 1, 0, 0, 0, 1);

return  result;

