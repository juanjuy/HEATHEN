//draw textbox
draw_self();
//draw text
draw_set_color(c_black);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
if image_xscale = 1 {
	draw_set_font(fnt_ending_textbox_large);
	draw_text_ext(x,y,text,40,box_width);
	if text2 != "Placeholder" { 
		draw_set_font(fnt_ending_textbox_small);
		draw_text_ext(x,y+100,text2,20,box_width);
	}
}