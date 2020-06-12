sprite_index = spr_the_enlightened_walk;
//patrol left or right

if patrol_timer = 0 {
	timer_max = choose(50,60,70)
	if obj_player.x > x {
		dir = 1;
	} else {
		dir = -1;
	}
}
patrol_timer += 1;

hsp = dir * walksp;

//idle from patrol
if patrol_timer > timer_max {
	patrol_timer = 0;
	state = the_enlightened_states.IDLE;
}

//chase from patrol
if distance_to_object(obj_player) < 300 and wall_in_the_way = noone and player_in_view = obj_player.id {
	patrol_timer = 0;
	state = the_enlightened_states.CHASE;
}

//attack from patrol
if distance_to_object(obj_player) < 150 and wall_in_the_way = noone and player_in_view = obj_player.id{
	image_index = 0;
	state = the_enlightened_states.ATTACK;
}
if hp < 6 and distance_to_object(obj_player) < 500 and wall_in_the_way = noone and player_in_view = obj_player.id{
	image_index = 0;
	state = the_enlightened_states.ATTACK;
}

//stomp from patrol
if distance_to_object(obj_player) < 100 and obj_player.state = states.CROUCH {
	image_index = 0;
	state = the_enlightened_states.STOMP;
}

//die from patrol
if hp = 0 {
	image_index = 0;
	state = the_enlightened_states.DEATH;
}