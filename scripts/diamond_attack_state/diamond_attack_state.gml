//attack
sprite_index = spr_diamond_bat_attack;

spd = 0;
if (image_index + image_speed >= image_number) {
	proj = instance_create_depth(x,y,depth-1,obj_bat_beam)
	point = point_direction(x,y,obj_player.x,obj_player.y)
	proj.direction = point;
	proj.initial_dir = point;
	cooldown = 90;
	state = fe_states.MOVING;
}
