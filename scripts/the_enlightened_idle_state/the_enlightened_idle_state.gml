
sprite_index = spr_the_enlightened_idle;
//idle timer
hsp = 0;
if idle_timer = 0 {
	timer_max = choose(50,60,70);
}

idle_timer += 1;

//patrol from idle
if idle_timer > timer_max {
	idle_timer = 0;
	state = the_enlightened_states.PATROL;
}

//chase from idle
if distance_to_object(obj_player) < 300 and wall_in_the_way = noone and player_in_view = obj_player.id {
	idle_timer = 0;
	state = the_enlightened_states.CHASE;
}

//attack from idle
if distance_to_object(obj_player) < 150 and wall_in_the_way = noone and player_in_view = obj_player.id{
	image_index = 0;
	state = the_enlightened_states.ATTACK;
}
if hp < 6 and distance_to_object(obj_player) < 500 and wall_in_the_way = noone and player_in_view = obj_player.id {
	image_index = 0;
	state = the_enlightened_states.ATTACK;
}

//stomp from idle
if distance_to_object(obj_player) < 100 and obj_player.state = states.CROUCH {
	image_index = 0;
	state = the_enlightened_states.STOMP;
}

//die from idle
if hp = 0 {
	image_index = 0;
	state = the_enlightened_states.DEATH;
}