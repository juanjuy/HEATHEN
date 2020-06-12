if global.pause {
	image_speed = 0;
	exit;
} else {
	image_speed = cur_img_spd;
}
if (image_index + image_speed >= image_number) {
	instance_destroy(id);
}

cur_img_spd = image_speed;