skeleton_attachment_set("hat", "none");
skeleton_attachment_set("pubic", "char black/pubic");
skeleton_attachment_set("head", "char black/head");
skeleton_attachment_set("hoodie_on", "none");
skeleton_attachment_set("hoodie_under", "none");
skeleton_attachment_set("torso", "char black/torso");
skeleton_attachment_set("arm", "char black/arm");
skeleton_attachment_set("backarm", "char black/arm");
skeleton_attachment_set("mainhand", "char black/broadsword");
skeleton_attachment_set("leg", "char black/leg");
skeleton_attachment_set("backleg", "char black/backleg");
skeleton_attachment_set("foot", "char_simple soldier/foot");
skeleton_attachment_set("backfoot", "char_simple soldier/foot");
skeleton_attachment_set("hand", "char black/hand");
skeleton_attachment_set("backhand", "char black/hand");
skeleton_attachment_set("fist", "char_peasant/fist");
skeleton_attachment_set("backfist", "char_peasant/backfist");
skeleton_attachment_set("shoulder", "none");
skeleton_attachment_set("backshoulder", "none");
skeleton_attachment_set("offhand", "none");
skeleton_attachment_set("backpack", "none");

scr_set_max_health(100);
mainhand    = instance_create(x, y, obj_blightsword);
with mainhand {
    hidden = true;
}


