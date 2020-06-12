if intro < 240 {
	intro += 1;
}

if text_alpha < 1 and fade_in = true {
	text_alpha += .01;
} else if text_alpha > 0 and fade_in = false {
	text_alpha -= .05;
}

if intro = 239 {
	fade_in = false;
}