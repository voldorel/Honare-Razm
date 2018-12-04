var map           = argument0;
var bone          = argument1;
var ang_minus     = argument2;
var angle_offset  = ang_offset;
var _xy_offset    = xy_offset;
var result        = 0;
if !instance_exists(father)
    exit
if father != id {
    var xx         = 0;
    var yy         = 0;
    var angle      = 0;
    with father {
        ds_map_clear(map);
        skeleton_bone_state_get(bone, map);
        xx          = ds_map_find_value(map, "worldX");
        yy          = ds_map_find_value(map, "worldY");
        angle       = ds_map_find_value(map, "angle");
        angle       = angle + ang_minus;
        result      = angle;
    }
    angle -= ang_offset;
    if (father.image_xscale < 0)
        angle = 180 - angle;
    image_angle = angle;
    x           = father.x + xx - _xy_offset * cos(degtorad(angle));
    y           = father.y + yy + _xy_offset * sin(degtorad(angle));
}
return result;
