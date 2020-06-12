sprite_index = spr_the_enlightened_walk;
//chase
walksp = 3;

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
	state = the_enlightened_states.IDLE;
}

//attack from chase
if distance_to_object(obj_player) < 50 and wall_in_the_way = noone and player_in_view = obj_player.id {
	image_index = 0;
	walksp = def_walksp;
	state = the_enlightened_states.ATTACK;
}
if hp < 6 and distance_to_object(obj_player) < 500 and wall_in_the_way = noone and player_in_view = obj_player.id {
	image_index = 0;
	state = the_enlightened_states.ATTACK;
}

//stomp from chase
if distance_to_object(obj_player) < 100 and obj_player.state = states.CROUCH {
	image_index = 0;
	state = the_enlightened_states.STOMP;
}

//die from chase
if hp = 0 {
	image_index = 0;
	state = the_enlightened_states.DEATH;
}