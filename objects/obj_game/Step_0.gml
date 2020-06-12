if instance_exists(obj_transition) and obj_transition.mode = TRANS_MODE.OFF {
	status = 1;
} else {
	status = 0;
}

if audio_sound_get_gain(snd_boss_theme) = 0 {
	audio_stop_sound(snd_boss_theme);
	audio_sound_gain(snd_boss_theme,1,0);
}
if audio_sound_get_gain(snd_regular_theme) = 0 {
	audio_stop_sound(snd_regular_theme);
	audio_sound_gain(snd_regular_theme,1,0);
}

if audio_sound_get_gain(snd_boss_theme_2) = 0 {
	audio_stop_sound(snd_boss_theme_2);
	audio_sound_gain(snd_boss_theme,1,0);
}

if obj_player.hp <= 0 and !audio_is_playing(snd_player_death) and !instance_exists(obj_textbox_death) and obj_player.checkpointed = false {
	audio_play_sound(snd_player_death,1,0);
	audio_stop_sound(snd_boss_theme);
	audio_stop_sound(snd_regular_theme);
	audio_stop_sound(snd_boss_theme_2);
}

/*//paused code is wrong
if keyboard_check_pressed(ord("P")) {
	paused = !paused;
	if paused == false {
		instance_activate_all();
		surface_free(paused_surf);
		paused_surf = -1;
	}
}
if paused == true {
	alarm[0]++;
	alarm[1]++;
}
