sprite_index = spr_enemy_walk;
//chase
walksp = 6;

//left or right?
if obj_player.x > x {
	dir = 1;
} else {
	dir = -1;
}

hsp = walksp * dir;

//idle from chase
if distance_to_object(obj_player) > 150 or wall_in_the_way != noone or player_in_view != obj_player.id {
	walksp = def_walksp;
	state = e_states.IDLE;
}

//attack from chase
if distance_to_object(obj_player) < 50 and wall_in_the_way = noone and player_in_view = obj_player.id {
	walksp = def_walksp;
	image_index = 0;
	state = e_states.ATTACK;
}