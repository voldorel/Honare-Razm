var xx1     = argument0;
var yy1     = argument1;
var x_limit = argument2;
var yy2     = argument3;
var t       = alpha + 0.1;

if t > 0.9 || current_page > 1
    t = 0.9; 
draw_set_alpha(t);
draw_roundrect_colour(xx1 - 10.5*ii, yy1 - 10, xx1 + 10.5*ii, yy2 + 10, c_gray, c_gray, 0);
draw_roundrect_colour(xx1 - 10*ii, yy1, xx1 + 10*ii, yy2, c_white, c_white, 0);
draw_set_alpha(1);
if (ii >= x_limit) {
    opened = 1;
    ii = x_limit;
} else
    ii += 2;
