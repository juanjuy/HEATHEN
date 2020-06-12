if global.pause {
	image_speed = 0;
	exit;
} else {
	image_speed = cur_img_spd;
}
enemy_hurt_anim();

if hp > 0 {
	y += spd * dir;
}

if hp = 5 and stage = 1 {
	stage = 2;
	default_speed = 5;
}

if hp = 2 and stage = 2 {
	stage = 3;
	default_speed = 7;
}

script_execute(states_array[state]);

if state != db_states.DEATH {
	if col = 2 {
		x = 500;
	} else if col = 1 {
		x = 64;
	} else if col = 3 {
		x = 928;
	}
}
if hp = 0 {
	obj_game.status = 0;
}
boss_intro_step();
cur_img_spd = image_speed;