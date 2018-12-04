///WARNING! 
//--this-functuin-deletes-the-whole-player-stats-including-purchases-use-with-care
ds_map_clear(stats);





if (stats = -1) {
    stats = ds_map_create();    
}


scr_stat_entry("music", true);
scr_stat_entry("sfx"  , true);
scr_stat_entry("fight_count"  , 0);
scr_stat_entry("cs"  , 100);//coins!
scr_stat_entry("story_room"  , "rm_bar");//current position in story
scr_stat_entry("stb"  , false);//bought the story or not
scr_stat_entry("wm"  , false);//bought all weapons-weapon master
scr_stat_entry("am"  , false);//bought all outfits-armor master :D





music       = scr_stat_get("music");
sfx         = scr_stat_get("sfx");
fight_count = scr_stat_get("fight_count");
cs          = scr_stat_get("cs");//stands for coins 

changed     = true;
