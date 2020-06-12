if global.pause {
	image_speed = 0;
	exit;
} else {
	image_speed = cur_img_spd;
}
if (instance_exists(obj_the_enlightened) and obj_the_enlightened.hp = 0) or !instance_exists(obj_the_enlightened) {
	image_xscale -= .05;
} else if obj_the_enlightened.hp > 0 {
	x = obj_the_enlightened.x;
	y = obj_the_enlightened.y - 60;
}

if image_xscale = 0 {
	instance_destroy(id);
}

cur_img_spd = image_speed;