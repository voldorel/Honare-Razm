player_cam  = instance_create(x, y, obj_player_cam);
var t       = player_cam.id;
camera      = instance_create(x, y, obj_camera);
cutscene    = false;
player_cost = 0;
player_wp   = 0;
enemy_cost  = 0;
enemy_wp    = 0;
win         = false;
finished    = false;


with camera {
    target = t;
}
view_visible[0] = true;
view_enabled    = true;

if !instance_exists(obj_particle_system) {
    instance_create(x, y, obj_particle_system);
}
if !instance_exists(obj_gamestats) {
    instance_create(x, y, obj_gamestats);
}
