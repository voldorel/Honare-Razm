var t      = argument0;
var text   = argument1;
var xt     = argument2;
var yt     = argument3;
var xsize  = argument4;
var ysize  = argument5;
with instance_create(x, y, obj_dialogue) {
    father = t;
    xx     = xt;
    yy     = yt;
    x_lim  = xsize;
    yy1    = ysize;
    script_execute(text);
}
waiting    = true;
