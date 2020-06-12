if global.pause {
	image_speed = 0;
	speed = 0;
	exit;
} else {
	image_speed = cur_img_spd;
	speed = cur_speed;
}
if reflect = true and reflected = false {
	sprite_index = spr_bat_beam_reflected;
	audio_play_sound(snd_projectile_bounce,1,0);
	if obj_player.facing = -1 {
		direction = 180;
	} else {
		direction = 0;
	}
	speed = 10;
	reflected = true;
	reflect = false;
}

image_angle += 10;
cur_img_spd = image_speed;
cur_speed = speed;