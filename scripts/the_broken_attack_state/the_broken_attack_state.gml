//attack
sprite_index = spr_the_broken_attack;

spd = 0;
if (image_index + image_speed >= image_number) {
	rand_point = random_range(40,90);
	proj = instance_create_depth(x,y,depth-1,obj_bat_beam)
	point = point_direction(x,y,obj_player.x,obj_player.y)
	proj.direction = point;
	proj.initial_dir = point;
	proj2 = instance_create_depth(x,y,depth-1,obj_bat_beam);
	point2 = point_direction(x,y,obj_player.x + rand_point,obj_player.y + rand_point);
	proj2.direction = point2;
	proj2.initial_dir = point2;
	rand_point = random_range(40,90);
	proj3 = instance_create_depth(x,y,depth-1,obj_bat_beam);
	point3 = point_direction(x,y,obj_player.x - rand_point,obj_player.y - rand_point);
	proj3.direction = point3;
	proj3.initial_dir = point3;
	if stage > 1 {
		rand_point = random_range(40,90);
		proj4 = instance_create_depth(x,y,depth-1,obj_bat_beam);
		point4 = point_direction(x,y,obj_player.x + (rand_point*2),obj_player.y + (rand_point*2));
		proj4.direction = point4;
		proj4.initial_dir = point4;
		rand_point = random_range(40,90);
		proj5 = instance_create_depth(x,y,depth-1,obj_bat_beam);
		point5 = point_direction(x,y,obj_player.x - (rand_point*2),obj_player.y - (rand_point*2));
		proj5.direction = point5;
		proj5.initial_dir = point5;
	}
	if stage > 2 {
		rand_point = random_range(40,90);
		proj6 = instance_create_depth(x,y,depth-1,obj_bat_beam);
		point6 = point_direction(x,y,obj_player.x + (rand_point*3),obj_player.y + (rand_point*3));
		proj6.direction = point6;
		proj6.initial_dir = point6;
		rand_point = random_range(40,90);
		proj7 = instance_create_depth(x,y,depth-1,obj_bat_beam);
		point7 = point_direction(x,y,obj_player.x - (rand_point*3),obj_player.y - (rand_point*3));
		proj7.direction = point7;
		proj7.initial_dir = point7;
	}
	cooldown = 90;
	attacks += 1;
	state = db_states.MOVING;
	if attacks > 5 and attacks mod 2 = 0 {
		fading = true;
		image_index = 0;
		state = db_states.TELEPORT;
	}
}

if hp = 0 {
	image_index = 0;
	state = db_states.DEATH;
}
