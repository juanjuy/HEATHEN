if obj_player.attacking != -1 and place_meeting(x,y,obj_hammer) {
	if secret = true {
		layer_set_visible("Secret",false);
	}
	audio_play_sound(snd_break_rock,1,0);
	instance_destroy(id);
}