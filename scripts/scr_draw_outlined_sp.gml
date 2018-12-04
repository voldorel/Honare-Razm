//draw_outlined(x, y, outline color, sprite color, string)  
var xx,yy;  
xx = argument[0];  
yy = argument[1];  

//Outline  
draw_set_color(argument[2]);  
draw_sprite_ext(argument[4], 0, xx+3, yy+3, 1, 1, 0, c_black, 1);
draw_sprite_ext(argument[4], 0, xx-3, yy-3, 1, 1, 0, c_black, 1);
draw_sprite_ext(argument[4], 0, xx,   yy+3, 1, 1, 0, c_black, 1);
draw_sprite_ext(argument[4], 0, xx+3,   yy, 1, 1, 0, c_black, 1);
draw_sprite_ext(argument[4], 0, xx,   yy-3, 1, 1, 0, c_black, 1);
draw_sprite_ext(argument[4], 0, xx-3,   yy, 1, 1, 0, c_black, 1);
draw_sprite_ext(argument[4], 0, xx-3, yy+3, 1, 1, 0, c_black, 1);
draw_sprite_ext(argument[4], 0, xx+3, yy-3, 1, 1, 0, c_black, 1);
  
//Text  
draw_set_color(argument[3]);  
draw_sprite(argument[4], 0, xx, yy);
