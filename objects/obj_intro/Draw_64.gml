if timer > 10 and timer < 240 {
	fade_in = true;
	draw_set_font(fnt_intro);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_color($00c6ff);
	draw_set_alpha(text_alpha);
	draw_text(480,260,"HEATHEN");
	draw_set_alpha(1);
} else if timer > 239 and timer < 300 {
	draw_set_font(fnt_intro);
	draw_set_color($00c6ff);
	fade_in = false;
	draw_set_alpha(text_alpha);
	draw_text(480,260,"HEATHEN");
	draw_set_alpha(1);
} else if timer > 299 and timer < 540 {
	fade_in = true;
	draw_set_color($00c6ff);
	draw_set_font(fnt_intro_name);
	draw_set_alpha(text_alpha);
	draw_text(480,300,"By Juan Juy");
	draw_set_alpha(1);
} else if timer > 539 and timer < 600 {
	draw_set_font(fnt_intro_name);
	draw_set_color($00c6ff);
	fade_in = false;
	draw_set_alpha(text_alpha);
	draw_text(480,300,"By Juan Juy");
	draw_set_alpha(1);
}
