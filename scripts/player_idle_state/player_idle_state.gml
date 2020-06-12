///idle state
sprite_index = spr_player;
image_speed = 1;

//walk from idle
if hsp != 0 {
	image_index = 0;
	state = states.WALK;
}

//jump from idle
if jump_button {
	state = states.JUMP;
}

//crouch from idle
if down and hsp == 0 and (!left or !right) {
	state = states.CROUCH;
}

//fall from idle
if vsp > 0 {
	state = states.FALL;
}
//lookup from idle
if up state = states.LOOKUP;

//attack from idle
if attack {
	hsp = 0;
	state = states.ATTACK;
}