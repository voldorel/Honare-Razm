skeleton_attachment_set("hat", "char_strawhat/hat");
skeleton_attachment_set("pubic", "char_strawhat/pubic");
skeleton_attachment_set("head", "char_strawhat/head");
skeleton_attachment_set("hoodie_on", "none");
skeleton_attachment_set("hoodie_under", "none");
skeleton_attachment_set("torso", "char_strawhat/torso");
skeleton_attachment_set("arm", "char_strawhat/arm");
skeleton_attachment_set("backarm", "char_strawhat/backarm");
skeleton_attachment_set("mainhand", "char_strawhat/katana");
skeleton_attachment_set("leg", "char_strawhat/leg");
skeleton_attachment_set("backleg", "char_strawhat/backleg");
skeleton_attachment_set("foot", "char_strawhat/foot");
skeleton_attachment_set("backfoot", "char_strawhat/foot");
skeleton_attachment_set("hand", "char_0/hand");
skeleton_attachment_set("backhand", "char_0/hand");
skeleton_attachment_set("fist", "char_aromred_guard/fist");
skeleton_attachment_set("backfist", "char_aromred_guard/backfist");
skeleton_attachment_set("shoulder", "none");
skeleton_attachment_set("backshoulder", "none");
skeleton_attachment_set("offhand", "none");
skeleton_attachment_set("backpack", "none");


scr_set_max_health(70);

mainhand    = instance_create(x, y, obj_katana);
with mainhand {
    hidden = true;
}


