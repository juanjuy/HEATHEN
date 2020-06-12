if timer = 0 {
	obj_player.hp += 1;
	audio_play_sound(snd_heart_pickup,1,0);
	instance_destroy();
}