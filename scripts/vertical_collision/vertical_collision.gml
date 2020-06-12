
/*var _num = collision_line_list(x,y+(sprite_height/2),x,room_height,obj_platform,0,0,platforms_beneath,1)
	
if _num > 0 {
	nearest_platform = ds_list_find_value(platforms_beneath,0);
} else {
	nearest_platform = noone;
}*/



if place_meeting(x,y+vsp,par_solid) {
	var _colliding_solid = instance_place(x,y+vsp,par_solid);
	while !place_meeting(x,y+(sign(vsp)/2),par_solid) {
		y += (sign(vsp)/2);
	}
	vsp = 0;
	if _colliding_solid.y > y {
		on_platform = 0;
		grounded = 1;
		jumping = false;
		walk_off = 0;
		if object_index = obj_player { 
			extra_jumps = def_extra_jumps;
		}
	}
	if place_meeting(x,y+sprite_height,par_solid) {
		wall_below = true;
	} else {
		wall_below = false;
	}
	if state = states.CROUCH and place_meeting(x,y-sprite_height,par_solid) {
		wall_above = true;
	} else {
		wall_above = false;
	}
/*} else if _num > 0 and place_meeting(x,y+vsp,obj_platform) and bbox_bottom < nearest_platform.bbox_top {
	while !place_meeting(x,y+(sign(vsp)/2),obj_platform) {
		y += (sign(vsp)/2);
	}
	vsp = 0;
	grounded = 1;
	on_platform = 1;
	jumping = false;
	walk_off = 0;
	if object_index = obj_player {
		extra_jumps = def_extra_jumps;
	}*/
} else {
	grounded = 0;
}

_platform = instance_place(x,y+vsp,obj_platform);

if _platform != noone {
	if _platform.bbox_top > bbox_bottom and vsp > 0 {
		while (!place_meeting(x,y+(sign(vsp)/2),obj_platform)) {
			y += sign(vsp)/2;
		}
		vsp = 0;
		on_platform = 1;
		grounded = 1;
		jumping = false;
		walk_off = 0;
		if object_index = obj_player { 
			extra_jumps = def_extra_jumps;
		}
		wall_above = false;
		wall_below = false;
	} else {
		grounded = false;
		on_platform = false;
	}
} else {
	on_platform = false;
}