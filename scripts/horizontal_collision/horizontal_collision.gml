if place_meeting(x+hsp,y,par_solid) {
	while !place_meeting(x+sign(hsp),y,par_solid) {
		x += sign(hsp);
	}
	hsp = 0;
	walksp = def_walksp;
	h_colliding = true;
	if place_meeting(x+1,y,par_solid) {
		wall_on_right = true;
	} 
	if place_meeting(x-1,y,par_solid) {
		wall_on_left = true;
	}
	if (object_index = obj_laser_eye and obj_laser_eye.state != e_states.ATTACK) or (object_index = obj_the_enlightened and obj_the_enlightened.state != e_states.ATTACK) {
		dir *= -1
	}
} else {
	h_colliding = false;
	wall_on_right = false;
	wall_on_left = false;
}