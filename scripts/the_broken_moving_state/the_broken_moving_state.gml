//moving
sprite_index = spr_the_broken;

if cooldown > 0 {
	cooldown -= 1;
}

spd = default_speed;

if (abs(y) - start_y > travel_distance) or y < start_y {
	dir *= -1;
}

//attack from moving
if distance_to_object(obj_player) < 200 and cooldown = 0 {
	attacking = true;
	image_index = 0;
	state = db_states.ATTACK;
}

if hp = 0 {
	image_index = 0;
	state = db_states.DEATH;
}