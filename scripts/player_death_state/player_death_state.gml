obj_game.status = 0;
sprite_index = spr_player_death;
image_speed = 1;
hurt = false;
hurting = false;
image_blend = c_white;
hsp = 0;
walksp = 0;
attacking = -1;
if (image_index + image_speed >= image_number) {
	image_speed = 0;
	if !instance_exists(obj_textbox_death) and checkpointed = false {
		deathbox = instance_create_layer(-1000,y,"Text",obj_textbox_death);
		deathbox.text = "You died!";
		if obj_game.checkpoint = false {
			deathbox.text2 = "Press R to restart.";
		} else if obj_game.checkpoint = true {
			deathbox.text2 = "Press R to restart from the checkpoint.";
		}
	}
}

