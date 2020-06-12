if timer > 60 and timer < 290 {
	fade_in = true;
	draw_set_font(fnt_intro_name);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_set_alpha(text_alpha);
	draw_text(480,260,"Programming and Art by Juan Juy");
	draw_set_alpha(1);
} else if timer > 289 and timer < 350 {
	draw_set_font(fnt_intro_name);
	draw_set_color(c_white);
	fade_in = false;
	draw_set_alpha(text_alpha);
	draw_text(480,260,"Programming and Art by Juan Juy");
	draw_set_alpha(1);
} else if timer > 349 and timer < 590 {
	fade_in = true;
	draw_set_color(c_white);
	draw_set_font(fnt_intro_name);
	draw_set_alpha(text_alpha);
	draw_text(480,260,"Music from Night in the Woods by Alec Holowka");
	draw_set_alpha(1);
} else if timer > 589 and timer < 650 {
	draw_set_font(fnt_intro_name);
	draw_set_color(c_white);
	fade_in = false;
	draw_set_alpha(text_alpha);
	draw_text(480,260,"Music from Night in the Woods by Alec Holowka");
	draw_set_alpha(1);
} else if timer > 649 and timer < 890 {
	fade_in = true;
	draw_set_color(c_white);
	draw_set_font(fnt_intro_name);
	draw_set_alpha(text_alpha);
	draw_text(480,260,"Sound Effects from Zapsplat.com");
	draw_set_alpha(1);
} else if timer > 889 and timer < 950 {
	draw_set_font(fnt_intro_name);
	draw_set_color(c_white);
	fade_in = false;
	draw_set_alpha(text_alpha);
	draw_text(480,260,"Sound Effects from Zapsplat.com");
	draw_set_alpha(1);
} else if timer > 949 {
	draw_set_font(fnt_intro_name);
	draw_set_color(c_white);
	fade_in = true;
	draw_set_alpha(text_alpha);
	draw_text(480,180,"Thanks for playing")
	draw_set_font(fnt_intro);
	draw_set_color($00c6ff);
	draw_text(480,260,"HEATHEN")
	draw_set_color(c_white);
	draw_set_font(fnt_intro_name);
	draw_text_transformed(480,400,"Press R to restart.",.75,.75,0);
	draw_set_alpha(1);
}