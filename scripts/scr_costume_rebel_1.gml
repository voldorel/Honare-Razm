skeleton_attachment_set("hat", "none");
skeleton_attachment_set("pubic", "char_simple soldier/pubic");
skeleton_attachment_set("head", "char_simple soldier/head");
skeleton_attachment_set("hoodie_on", "char_simple soldier/hoodie_on");
skeleton_attachment_set("hoodie_under", "char_simple soldier/hoodie_under");
skeleton_attachment_set("torso", "char_simple soldier/torso");
skeleton_attachment_set("arm", "char_simple soldier/arm");
skeleton_attachment_set("backarm", "char_simple soldier/arm");
skeleton_attachment_set("mainhand", "char_simple soldier/witcher_sword");
skeleton_attachment_set("leg", "char_simple soldier/leg");
skeleton_attachment_set("backleg", "char_simple soldier/backleg");
skeleton_attachment_set("foot", "char_aromred_guard/foot");
skeleton_attachment_set("backfoot", "char_aromred_guard/foot");
skeleton_attachment_set("hand", "char_aromred_guard/hand");
skeleton_attachment_set("backhand", "char_aromred_guard/hand");
skeleton_attachment_set("fist", "char_0/fist");
skeleton_attachment_set("backfist", "char_aromred_guard/backfist");
skeleton_attachment_set("shoulder", "char_aromred_guard/shoulder");
skeleton_attachment_set("backshoulder", "char vulture 0/backshoulder");
skeleton_attachment_set("offhand", "none");
skeleton_attachment_set("backpack", "char black/broadsword");


scr_set_max_health(70);
mainhand    = instance_create(x, y, obj_whitchsword);
with mainhand {
    hidden = true;
}


