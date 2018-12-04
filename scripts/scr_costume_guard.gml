skeleton_attachment_set("hat", "char alliance/mask");
skeleton_attachment_set("pubic", "char alliance/pubic");
skeleton_attachment_set("head", "char_strawhat/head");
skeleton_attachment_set("hoodie_on", "none");
skeleton_attachment_set("hoodie_under", "none");
skeleton_attachment_set("torso", "char alliance/torso");
skeleton_attachment_set("arm", "char alliance/arm");
skeleton_attachment_set("backarm", "char alliance/backarm");
skeleton_attachment_set("mainhand", "none");
skeleton_attachment_set("leg", "char alliance/leg");
skeleton_attachment_set("backleg", "char_0/backleg");
skeleton_attachment_set("foot", "char alliance/foot");
skeleton_attachment_set("backfoot", "char alliance/backfoot");
skeleton_attachment_set("hand", "char alliance/hand");
skeleton_attachment_set("backhand", "char alliance/backhand");
skeleton_attachment_set("fist", "char alliance/fist");
skeleton_attachment_set("backfist", "char_aromred_guard/backfist");
skeleton_attachment_set("shoulder", "char alliance/shoulder");
skeleton_attachment_set("backshoulder", "char alliance/shoulder");
skeleton_attachment_set("offhand", "none");
skeleton_attachment_set("backpack", "char alliance/blightsword");


scr_set_max_health(250);
mainhand    = instance_create(x, y, obj_katana);
with mainhand {
    hidden = true;
}


