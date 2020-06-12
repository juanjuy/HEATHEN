sprite_index = spr_enemy_walk;
//patrol left or right

if patrol_timer = 0 {
	timer_max = choose(50,60,70)
	dir = choose(-1,1);
}
patrol_timer += 1;

hsp = dir * walksp;

//idle from patrol
if patrol_timer > timer_max {
	patrol_timer = 0;
	state = e_states.IDLE;
}

//chase from patrol
if distance_to_object(obj_player) < 100 and wall_in_the_way = noone and player_in_view = obj_player.id {
	patrol_timer = 0;
	state = e_states.CHASE;
}

//attack from patrol
if distance_to_object(obj_player) < 50 and wall_in_the_way = noone and player_in_view = obj_player.id{
	image_index = 0;
	state = e_states.ATTACK;
}