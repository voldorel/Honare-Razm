var weapon  = argument0;
with mainhand
    instance_destroy();

mainhand    = instance_create(x, y, weapon);

with mainhand {
    hidden  = true;
}
var t = mainhand;
skeleton_attachment_set("mainhand", t.attachment);
run_anim            = t.run_anim;
runback_anim        = t.runback_anim;
stand_anim          = t.stand_anim;
