skeleton_attachment_set("hat", "none");
skeleton_attachment_set("pubic", "char_simple soldier/pubic");
skeleton_attachment_set("head", "char_simple soldier/head");
skeleton_attachment_set("hoodie_on", "char_simple soldier/hoodie_on");
skeleton_attachment_set("hoodie_under", "char_simple soldier/hoodie_under");
skeleton_attachment_set("torso", "char_simple soldier/torso");
skeleton_attachment_set("arm", "char_peasant/arm");
skeleton_attachment_set("backarm", "char_peasant/backarm");
skeleton_attachment_set("mainhand", "char_simple soldier/witcher_sword");
skeleton_attachment_set("leg", "char_simple soldier/leg");
skeleton_attachment_set("backleg", "char_simple soldier/backleg");
skeleton_attachment_set("foot", "char_simple soldier/foot");
skeleton_attachment_set("backfoot", "char_simple soldier/foot");
skeleton_attachment_set("hand", "char black/hand");
skeleton_attachment_set("backhand", "char black/hand");
skeleton_attachment_set("fist", "char_peasant/fist");
skeleton_attachment_set("backfist", "char_0/backfist");
skeleton_attachment_set("shoulder", "none");
skeleton_attachment_set("backshoulder", "none");
skeleton_attachment_set("offhand", "none");
skeleton_attachment_set("backpack", "none");


scr_set_max_health(80);
mainhand    = instance_create(x, y, obj_whitchsword);
with mainhand {
    hidden = true;
}


