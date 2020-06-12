//draw textbox
draw_self();
//draw text
draw_set_color(c_black);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
if image_xscale = 1 and timer <= 5 {
	draw_set_font(fnt_textbox3);
	//draw_text_ext(x,y,text,stringheight,box_width);
	draw_text(x,y,text);
	timer += 1;
} else if image_xscale = 1 and timer > 5 and timer <= 10 {
	draw_set_font(fnt_textbox2);
	//draw_text_ext(x,y,text,stringheight,box_width);
	draw_text(x,y,text);
	timer += 1;
} else if image_xscale = 1 and timer > 10 and timer <= 15 {
	draw_set_font(fnt_textbox3);
	//draw_text_ext(x,y,text,stringheight,box_width);
	draw_text(x,y,text);
	timer += 1;
} else if image_xscale = 1 and timer > 15 and timer <= 20 {
	draw_set_font(fnt_textbox2);
	//draw_text_ext(x,y,text,stringheight,box_width);
	draw_text(x,y,text);
	timer += 1;
} else if image_xscale = 1 and timer > 20 {
	draw_set_font(fnt_textbox);
	draw_text(x,y,text);
	//draw_text_ext(x,y,text,stringheight,box_width);
}