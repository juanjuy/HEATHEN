attacking = true;
sprite_index = spr_enemy_attack;
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
		dir_set = false;
		state = e_states.IDLE;
	}
	if floor(image_index) = 9 and hitbox_exists = false {
		hitbox = instance_create_depth(x,y,depth-1,obj_enemy_attack_hitbox);
		with (hitbox) {
			image_xscale = other.dir;
		}
		hitbox_exists = true;
	}
}
