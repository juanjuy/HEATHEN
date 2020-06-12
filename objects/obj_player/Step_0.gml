if global.pause {
	image_speed = 0;
	exit;
} else {
	image_speed = cur_img_spd;
}


game_start = false;
controls();
movement();
horizontal_collision();
restart_script();
x += hsp;

vertical_collision();
y += vsp;

if godmode {
	image_blend = c_red;
} else {
	image_blend = c_white;
}
enemy_collision();
projectile_collision();
hurt_anim();
invul_anim();
if hp <= 0 {
	if state != states.DEATH {
		image_index = 0;
	}
	state = states.DEATH;
}

script_execute(states_array[state]);
cur_img_spd = image_speed;