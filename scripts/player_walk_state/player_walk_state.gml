/// walk state
sprite_index = spr_player_walk;
image_speed = hsp/5;
if floor(image_index) = 3 and !audio_is_playing(snd_walkhops) {
	audio_play_sound(snd_walkhops,1,0);
}
///idle from walk
if hsp == 0 and decel = false { 
	state = states.IDLE;
}

///fall from walk
if hsp != 0 and grounded = 0 {
	state = states.FALL;
}

//jump from walk
if jump_button state = states.JUMP;

//crouch from walk
if down and (!right and !left) {
	state = states.CROUCH;
	hsp = 0;
}

//lookup from walk
if up and hsp == 0 {
	state = states.LOOKUP;
	hsp = 0;
}

//attack from walk
if attack {
	hsp = 0;
	state = states.ATTACK;
}