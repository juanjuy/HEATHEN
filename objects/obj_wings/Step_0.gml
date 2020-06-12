if global.pause exit;
if obj_player.has_wings = false {
	y = anchorY + sin(timer*frequency)*amplitude;
	timer++;
	image_speed = 0;
}

if obj_player.has_wings = true {
	persistent = true;
	x = obj_player.x;
	y = obj_player.y-10;
	if obj_player.state = states.FALL and keyboard_check(vk_space) {
		obj_player.vsp = 2;
		audio_resume_sound(hover);
	} else {
		audio_pause_sound(hover);
		obj_player.vsp = obj_player.vsp;
	}
	if obj_player.state = states.CROUCH {
		x = obj_player.x;
		y = obj_player.y + 20;
	}
	if obj_player.jump_held {
		image_speed = 1;
	} else {
		image_speed = 0;
		image_index = 0;
	}
}

if obj_player.has_wings = true and obj_player.state = states.DEATH {
	if image_xscale > 0 {
		image_xscale -= .05;
	}
} else {
	image_xscale = 1.5;
}