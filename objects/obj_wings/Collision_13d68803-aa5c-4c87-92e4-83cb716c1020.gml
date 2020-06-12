if obj_player.has_wings = false {
	textbox = instance_create_layer(-1000,y,"Text",obj_textbox);
	textbox.text = "Hold spacebar to glide!";
	obj_player.has_wings = true;
	image_xscale = 1.5;
	audio_play_sound(snd_power_up,1,0);
}