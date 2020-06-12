if global.pause {
	image_speed = 0;
	exit;
} else {
	image_speed = cur_img_spd;
}
enemy_hurt_anim();
if hp = 0 {
	instance_destroy(id);
}

y += spd * dir;
script_execute(states_array[state]);
cur_img_spd = image_speed;