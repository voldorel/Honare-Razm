var fixA     = argument0;
var des      = argument1;
var obj      = argument2;
physics_fixture_set_density(fixA, des);
physics_fixture_set_restitution(fixA, 0.7);
physics_fixture_set_friction(fixA, 0.7);
var xscale = 0;
var yscale = 0;
with obj {
    xscale = image_xscale * sprite_get_width(sprite_index) / 2;
    yscale = image_yscale * sprite_get_height(sprite_index) / 2;
}
physics_fixture_set_box_shape(fixA, xscale, yscale);
physics_fixture_bind(fixA, obj);

