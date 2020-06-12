if obj_player.state != states.DEATH {
	if (global.pause == 0) {
		global.pause = 1;
		audio_pause_all();
	} else {
		global.pause = 0;
		audio_resume_all();
	}
} else {
	global.pause = 0;
	audio_resume_all();
}