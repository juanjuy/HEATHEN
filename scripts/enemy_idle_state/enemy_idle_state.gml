
sprite_index = spr_enemy_idle;
//idle timer
hsp = 0;
if idle_timer = 0 {
	timer_max = choose(50,60,70);
}

idle_timer += 1;

//patrol from idle
if idle_timer > timer_max {
	idle_timer = 0;
	state = e_states.PATROL;
}

//chase from idle
if distance_to_object(obj_player) < 100 and wall_in_the_way = noone and player_in_view = obj_player.id {
	idle_timer = 0;
	state = e_states.CHASE;
}

//attack from idle
if distance_to_object(obj_player) < 50 and wall_in_the_way = noone and player_in_view = obj_player.id{
	image_index = 0;
	state = e_states.ATTACK;
}