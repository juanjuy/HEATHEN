/// @argument0BossName

draw_set_font(fnt_boss_intro);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_set_alpha(text_alpha);
if intro <= 240 {
	draw_text(480,200, string(argument0));
}
draw_set_alpha(1);