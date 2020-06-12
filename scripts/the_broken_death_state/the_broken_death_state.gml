//death
sprite_index = spr_the_broken_die;
hsp = 0;
if (image_index + image_speed >= image_number) {
	image_speed = 0;
	final_frame = true;
}

if !audio_is_playing(snd_enlightened_death) {
	audio_play_sound(snd_enlightened_death,1,1);
}

//shivering
if shiver_timer mod 5 = 0 and final_frame = false {
	x += 5*shiver
	shiver *= -1;
}
shiver_timer += 1;

if final_frame = true {
	audio_stop_sound(snd_enlightened_death);
	if fade_play = false {
		audio_play_sound(snd_broken_fade,1,0);
		fade_play = true;
	}
	if image_alpha > 0 {
		image_alpha -= .007;
	}
	if image_alpha <= 0 {
		instance_destroy(id);
	}
}