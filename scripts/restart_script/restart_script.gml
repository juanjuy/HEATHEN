if restart and obj_game.checkpoint = false {
	SlideTransition(TRANS_MODE.RESTART);
} else if restart and obj_game.checkpoint = true {
	if room = room4 or room = room5 {
		room_persistent = false;
	}	
	audio_stop_sound(snd_boss_theme);
	audio_stop_sound(snd_regular_theme);
	audio_stop_sound(snd_boss_theme_2);
	audio_sound_gain(snd_boss_theme,1,0);
	audio_sound_gain(snd_regular_theme,1,0);
	audio_sound_gain(snd_boss_theme_2,1,0);
	trans_invul = true;
	x_dest = 150;
	y_dest = 600;
	SlideTransition(TRANS_MODE.GOTO,room2);
	checkpointed = true;
}
