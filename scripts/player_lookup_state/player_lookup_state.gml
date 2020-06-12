///crouch state
sprite_index = spr_player_lookup
image_speed = 1;

if lookup_timer < 30 {
	lookup_timer += 1;
}

///walk from lookup
if hsp != 0 {
	image_index = 0;
	state = states.WALK;
	lookup_timer = 0;
}

///jump from lookup
if jump_button {
	state = states.JUMP;
	lookup_timer = 0;
} 

///idle from lookup
if !up {
	state = states.IDLE;
	lookup_timer = 0;
}

///fall from lookup
if vsp > 0 {
	state = states.IDLE;
	lookup_timer = 0;
}

//attack from lookup
if attack {
	hsp = 0;
	state = states.ATTACK;
}