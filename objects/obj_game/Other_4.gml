if room = room2 {
	audio_sound_gain(snd_boss_theme,1,0);
	if audio_is_playing(snd_boss_theme) {
		audio_stop_sound(snd_boss_theme);
	}
	audio_sound_gain(snd_regular_theme,0,2000);
	audio_play_sound(snd_boss_theme,1,1);
} else if room = room4 {
	audio_sound_gain(snd_boss_theme_2,1,0);
	if audio_is_playing(snd_boss_theme_2) {
		audio_stop_sound(snd_boss_theme_2);
	}
	audio_sound_gain(snd_regular_theme,0,2000);
	audio_play_sound(snd_boss_theme_2,1,1);
} else {
	audio_sound_gain(snd_regular_theme,1,0);
	if audio_is_playing(snd_regular_theme) {
		audio_stop_sound(snd_boss_theme);
		audio_stop_sound(snd_boss_theme_2);
	}
	if audio_is_playing(snd_boss_theme) {
		audio_sound_gain(snd_boss_theme,0,2000);
	}
	if audio_is_playing(snd_boss_theme_2) {
		audio_sound_gain(snd_boss_theme_2,0,2000);
	}
	if !audio_is_playing(snd_regular_theme) {
		audio_play_sound(snd_regular_theme,1,1);
	}
}
