timer += 1;

if text_alpha < 1 and fade_in = true {
	text_alpha += .01;
} else if fade_in = false and text_alpha > 0 {
	text_alpha -= .05;
}

obj_game.status = 0;