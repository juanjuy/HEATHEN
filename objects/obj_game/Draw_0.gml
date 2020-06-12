//paused code is wrong
/*if paused == true {
	if !surface_exists(paused_surf) {
		if paused_surf == -1 {
			instance_deactivate_all(true);
		}
		paused_surf = surface_create(display_get_gui_width(),display_get_gui_height());
		surface_set_target(paused_surf);
		draw_surface(application_surface,display_get_gui_width(),display_get_gui_height());
		surface_reset_target();
	} else {
		draw_surface(paused_surf,0,0);
		draw_set_alpha(0.5);
		draw_rectangle_color(0,0,view_xport[0],view_yport[0],c_black,c_black,c_black,c_black,false);
		draw_set_alpha(1);
		draw_set_halign(fa_center);
		draw_text_transformed_color(view_wport/2,view_hport/2,"PAUSED",2,2,0,c_aqua,c_aqua,c_aqua,c_aqua,1);
		draw_set_halign(fa_left);
	}
}