if jump_buffer > 0 {
	jump_buffer -= 1;
}
/*
if run {
	max_walksp = 12;
} else {
	max_walksp = def_maxwalksp;
}*/

if decel = false {
	var move = right - left;
} else if decel = true {
	var move = facing;
}

if (right or left) and walksp < max_walksp {
	walksp += 1;
	decel = false;
}

if !right and !left and walksp > def_walksp {
	walksp -= 1;
	decel = true;
}

if walksp = def_walksp {
	decel = false;
}
///decel code is working, but the issue lies with using different sprites that aren't 64x64. 
///for some reason the sprites clip into the below wall and 
///force the player into an alterning idle/walk state that looks
///choppy. might need to fix the vertical collision
///code somehow. 
if attacking = -1 and state != states.DEATH {
	hsp = move * walksp;
}

if hsp > 0 and state != states.ATTACK {
	facing = 1;
}
if hsp < 0 and state != states.ATTACK {
	facing = -1;
}

image_xscale = facing;

if !wall_above and (grounded = 1 or coyote_time > 0) and (jump_buffer > 0 or jump_button) {
	if on_platform and state = states.CROUCH {
		y += 1;
	} else { 
		vsp = -jump_height;
		jump_buffer = 0;
		jumping = true;
		audio_play_sound(snd_jump,1,0);
	}
} else if jump_button && grounded = 0 {
	jump_buffer = 10;
}


if jump_release && vsp < 0 {
	vsp *= .25
}

if coyote_time > 0 {
	coyote_time -= 1;
}

if grounded = 0 && jumping = false && walk_off = false {
	walk_off = true;
	coyote_time = 5;
}

if jump_button and extra_jumps > 0 and !grounded and coyote_time = 0 {
	vsp = -jump_height;
	jump_buffer = 0;
	extra_jumps -= 1;
	audio_play_sound(snd_jump,1,0);
}


vsp += grv;
