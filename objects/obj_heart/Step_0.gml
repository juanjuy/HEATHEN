/*y = anchorY + sin(timer*frequency)*amplitude;
timer++;
*/
if global.pause exit;
if timer > 0 {
	timer -= 1;
} 

if timer mod 10 = 0 and timer > 0 {
	if image_alpha = 1 {
		image_alpha = 0;
	} else if image_alpha = 0 {
		image_alpha = 1;
	}
} else if timer = 0 {
	image_alpha = 1;
}