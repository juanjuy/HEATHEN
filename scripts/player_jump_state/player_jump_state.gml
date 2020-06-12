/// jump state
sprite_index = spr_player_jump;
image_speed = 1;

/// fall from jump
if vsp > 0 state = states.FALL;

///land from jump
if grounded = true and vsp = 0 {
	state = states.IDLE;
}