///fall state
sprite_index = spr_player_fall;
image_speed = 1;
///grounded from fall 

if grounded and hsp != 0 {
	image_index = 0;
	state = states.WALK;
} else if grounded and hsp = 0 and !down {
	state = states.IDLE;
} else if grounded and hsp = 0 and down {
	state = states.CROUCH;
}

///jump from fall
if vsp < 0 {
	state = states.JUMP;
}