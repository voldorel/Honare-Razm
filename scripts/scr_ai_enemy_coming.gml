var result = false;
if target.x > x {
    with target
        if move_dir == LEFT
            result = true;
}
else {
    with target
        if move_dir == RIGHT
            result = true;
}
return result;
