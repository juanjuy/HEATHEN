if obj_player.has_hammer = false {
	textbox = instance_create_layer(-1000,y,"Text",obj_textbox);
	textbox.text = "Slash with F!";
	audio_play_sound(snd_power_up,1,0);
	obj_player.has_hammer = true;
	persistent = true;
}

