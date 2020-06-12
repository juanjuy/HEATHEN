//stomp
sprite_index = spr_the_enlightened_stomp;
hsp = 0;
/*
if dir_set = false {
	if obj_player.x > x {
		dir = 1;
	} else {
		dir = -1;
	}
	dir_set = true;
}*/
if stomping = false and rising = false {
	rising = true;
	audio_play_sound(snd_enlightened_rising,1,0);
}

if rising = true {
	y -= 1;
	rising_timer += 1;
}

if rising_timer = 60 {
	rising = false;
	stomping = true;
	rising_timer = 0;
}

if stomping = true {
	//animation ends
	if (image_index + image_speed >= image_number) {
		hitbox_exists = false;
		dir_set = false;
		stomping = false;
		state = the_enlightened_states.IDLE;
	}
	if floor(image_index) = 10 and hitbox_exists = false {
		hitbox = instance_create_depth(x,y,depth-1,obj_the_enlightened_stomp_hitbox);
		with (hitbox) {
			image_xscale *= other.dir;
		}
		hitbox_exists = true;
	}
}

//die from stomp
if hp = 0 {
	image_index = 0;
	stomping = false;
	state = the_enlightened_states.DEATH;
}