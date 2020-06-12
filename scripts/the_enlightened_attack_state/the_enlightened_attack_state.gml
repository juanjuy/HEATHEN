attacking = true;
if hp >= 11 {
	sprite_index = spr_the_enlightened_attack;
} else {
	sprite_index = spr_the_enlightened_attack2;
}

hsp = 0;

if dir_set = false {
	if obj_player.x > x {
		dir = 1;
	} else {
		dir = -1;
	}
	dir_set = true;
}

if attacking = true {
	//animation ends
	if (image_index + image_speed >= image_number) {
		hitbox_exists = false;
		hitbox2_exists = false;
		dir_set = false;
		state = the_enlightened_states.IDLE;
	}
	if floor(image_index) = 9 and hitbox_exists = false {
		hitbox = instance_create_depth(x,y,depth-1,obj_the_enlightened_attack_hitbox);
		with (hitbox) {
			if other.hp < 6 {
				image_xscale *= other.dir * 2
			} else {
				image_xscale *= other.dir;
			}
		}
		
		hitbox_exists = true;
		if hp < 11 and hitbox2_exists = false {
			hitbox2 = instance_create_depth(x,y,depth+1,obj_the_enlightened_attack_hitbox);
			with (hitbox2) {
				image_xscale = other.dir *-2;
				visible = true;
			}
		hitbox2_exists = true;
		}
	}
}

//die from attack
if hp = 0 {
	image_index = 0;
	state = the_enlightened_states.DEATH;
}