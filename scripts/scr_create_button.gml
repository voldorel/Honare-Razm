var xx  = argument0;
var yy  = argument1;
var obj = argument2;
var res = 0;
res     = instance_create(x, y, obj);
with res {
    x_off = xx;
    y_off = yy;
}
return res;
