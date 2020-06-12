// @function pickup_message(msg)
// @param msg Message to show in middle of screen

if alarm_get(0) > 0 {
	draw_text_transformed(surface_get_width(application_surface)/2,surface_get_height(application_surface)/2,argument0,2,2,0);
}