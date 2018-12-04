skeleton_attachment_set("hat", "char_aromred_guard/head");
skeleton_attachment_set("pubic", "char_aromred_guard/pubic");
skeleton_attachment_set("head", "char_strawhat/head");
skeleton_attachment_set("hoodie_on", "none");
skeleton_attachment_set("hoodie_under", "none");
skeleton_attachment_set("torso", "char_aromred_guard/torso");
skeleton_attachment_set("arm", "char_aromred_guard/arm");
skeleton_attachment_set("backarm", "char_aromred_guard/arm");
skeleton_attachment_set("mainhand", "none");
skeleton_attachment_set("leg", "char_aromred_guard/leg");
skeleton_attachment_set("backleg", "char_aromred_guard/backleg");
skeleton_attachment_set("foot", "char_aromred_guard/foot");
skeleton_attachment_set("backfoot", "char_aromred_guard/foot");
skeleton_attachment_set("hand", "char_aromred_guard/hand");
skeleton_attachment_set("backhand", "char_aromred_guard/hand");
skeleton_attachment_set("fist", "char_aromred_guard/fist");
skeleton_attachment_set("backfist", "char_aromred_guard/fist");
skeleton_attachment_set("shoulder", "char_aromred_guard/shoulder");
skeleton_attachment_set("backshoulder", "char_aromred_guard/shoulder");
skeleton_attachment_set("offhand", "none");
skeleton_attachment_set("backpack", "none");



scr_set_max_health(250);
mainhand    = instance_create(x, y, obj_katana);
with mainhand {
    hidden = true;
}


