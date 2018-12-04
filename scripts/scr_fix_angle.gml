var angle = argument0;
while angle < -180
    angle += 360;
while angle > 180
    angle -= 360;
return angle;
