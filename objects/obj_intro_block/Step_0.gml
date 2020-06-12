if obj_intro.timer > 600 {
	image_alpha -= .05;
}

if image_alpha <= 0 {
	instance_destroy();
}