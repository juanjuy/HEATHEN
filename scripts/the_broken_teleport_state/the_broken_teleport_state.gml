sprite_index = spr_the_broken_teleport;

if (image_index + image_speed >= image_number) {
	image_speed = 0;
}

if fading = true {
	if !audio_is_playing(snd_broken_tp_out) {
		audio_play_sound(snd_broken_tp_out,1,0);
	}
	if stage = 1 {
		image_alpha -= .01;
	} else if stage = 2 {
		image_alpha -= .05;
	} else if stage = 3 {
		image_alpha -= .1;
	}
}

if image_alpha < 0 {
	fading = false;
	appearing = true;
	if !audio_is_playing(snd_broken_tp_in) and play_tp_in = false {
		audio_play_sound(snd_broken_tp_in,1,0);
		play_tp_in = true;
	}
	if col = 1 {
		new_col = choose(2,3);
		col = new_col;
	} else if col = 2 {
		new_col = choose(1,3);
		col = new_col;
	} else if col = 3 {
		new_col = choose(1,2);
		col = new_col;
	}
}

if appearing = true {
	if stage = 1 {
		image_alpha += .01
	} else if stage = 2 {
		image_alpha += .05;
	} else if stage = 3 {
		image_alpha += .1;
	}
}

if image_alpha > 1 and appearing = true {
	play_tp_in = false;
	appearing = false;
	image_speed = 1;
	image_index = 0;
	state = db_states.MOVING;
}
	
if hp = 0 {
	image_index = 0;
	state = db_states.DEATH;
}