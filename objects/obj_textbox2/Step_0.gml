global.pause = false;
x = obj_camera.x;
y = obj_camera.y;

if image_xscale < 1 {
	image_xscale += .05;
}
/*
if ending = true {
	image_xscale -= .1;
}

if image_xscale = 0 {
	instance_destroy();
}