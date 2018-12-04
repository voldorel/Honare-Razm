var t       = id;
var xscale  = argument0;
var yscale  = argument1;
var ang_off = argument2;
var xy_off  = argument3;
var part    = instance_create(x, y, obj_mask_part);
with part {
    father       = t;
    image_xscale = xscale;
    image_yscale = yscale;
    ang_offset   = ang_off;
    xy_offset    = xy_off;
}
return part.id;
