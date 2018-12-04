skeleton_attachment_set("hat", "char_0/hat");
skeleton_attachment_set("pubic", "char_0/pubic");
skeleton_attachment_set("head", "char_0/head_old");
skeleton_attachment_set("hoodie_on", "none");
skeleton_attachment_set("hoodie_under", "none");
skeleton_attachment_set("torso", "char_0/torso");
skeleton_attachment_set("arm", "char black/arm");
skeleton_attachment_set("backarm", "char black/arm");
skeleton_attachment_set("mainhand", "char alliance/blightsword");
skeleton_attachment_set("leg", "char_0/leg");
skeleton_attachment_set("backleg", "char_0/backleg");
skeleton_attachment_set("foot", "char_0/foot");
skeleton_attachment_set("backfoot", "char_0/foot");
skeleton_attachment_set("hand", "char_0/hand");
skeleton_attachment_set("backhand", "char_0/hand");
skeleton_attachment_set("fist", "char_0/fist");
skeleton_attachment_set("backfist", "char_0/fist");
skeleton_attachment_set("shoulder", "none");
skeleton_attachment_set("backshoulder", "none");
skeleton_attachment_set("offhand", "none");
skeleton_attachment_set("backpack", "char_0/sword");


scr_set_max_health(150);
mainhand    = instance_create(x, y, obj_greatsword);
with mainhand {
    hidden = true;
}
stand_anim   = "stand_katana";
run_anim     = "run_katana";
runback_anim = "run_back_katana";


