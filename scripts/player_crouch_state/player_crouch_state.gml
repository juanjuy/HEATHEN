///crouch state
sprite_index = spr_player_crouch
hsp = 0;
image_speed = 1;

if crouch_timer < 30 {
	crouch_timer += 1;
}

///fall from crouch
if vsp > 0 {
	state = states.FALL;
	crouch_timer = 0;
}

if vsp < 0 {
	state = states.JUMP;
}

///walk from crouch
if right and !wall_on_right {
	image_index = 0;
	state = states.WALK;
	crouch_timer = 0;
} else if left and !wall_on_left {
	image_index = 0;
	state = states.WALK;
	crouch_timer = 0;
}

///jump from crouch
if jump_button and !on_platform {
	sprite_index = spr_player_jump;
	state = states.JUMP;
	crouch_timer = 0;
} 

///crouch jump on platform
/*if jump_button and on_platform {
	y += 2;
	state = states.FALL;
	crouch_timer = 0;
}*/

///idle from crouch
if !down {
	state = states.IDLE;
	crouch_timer = 0;
}

//attack from crouch
if attack {
	hsp = 0;
	state = states.ATTACK;
}