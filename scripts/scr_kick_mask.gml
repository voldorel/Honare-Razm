if attack_mask = 0 {
    var t       = id;
    var t1      = mainhand.damage;
    attack_mask = instance_create(x, y, obj_kick_mask);
    with attack_mask {
        father = t;
        damage = t1;
    }
    depth       = 900;
}
