//death
sprite_index = spr_the_enlightened_die;
hsp = 0;
if !audio_is_playing(snd_enlightened_death) {
	audio_play_sound(snd_enlightened_death,1,1);
}
//shivering
if shiver_timer mod 5 = 0 {
	x += 5*shiver
	shiver *= -1;
}

if (image_index + image_speed >= image_number) {
	instance_destroy(id);
}

shiver_timer += 1;