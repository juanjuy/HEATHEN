if global.pause {
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,room_width,room_height,0);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_boss_intro);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_font(fnt_boss_intro);
	draw_text(obj_camera.x,obj_camera.y,"Game Paused");
	draw_set_color(c_black);
}