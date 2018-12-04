skeleton_attachment_set("hat", "none");
skeleton_attachment_set("pubic", "char_strawhat/pubic");
skeleton_attachment_set("head", "char black/head_bearded");
skeleton_attachment_set("hoodie_on", "none");
skeleton_attachment_set("hoodie_under", "none");
skeleton_attachment_set("torso", "char_strawhat/torso");
skeleton_attachment_set("arm", "char_strawhat/arm");
skeleton_attachment_set("backarm", "char_strawhat/backarm");
skeleton_attachment_set("mainhand", "char black/broadsword");
skeleton_attachment_set("leg", "char black/leg");
skeleton_attachment_set("backleg", "char black/backleg");
skeleton_attachment_set("foot", "char_0/foot");
skeleton_attachment_set("backfoot", "char_0/foot");
skeleton_attachment_set("hand", "char_0/hand");
skeleton_attachment_set("backhand", "char_0/hand");
skeleton_attachment_set("fist", "char_0/fist");
skeleton_attachment_set("backfist", "char_0/backfist");
skeleton_attachment_set("shoulder", "none");
skeleton_attachment_set("backshoulder", "none");
skeleton_attachment_set("offhand", "none");
skeleton_attachment_set("backpack", "none");


scr_set_max_health(90);
mainhand    = instance_create(x, y, obj_blightsword);
with mainhand {
    hidden = true;
}


