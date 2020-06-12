if global.pause exit;

image_yscale -= .05;
if image_yscale <= 0 {
	instance_destroy();
}