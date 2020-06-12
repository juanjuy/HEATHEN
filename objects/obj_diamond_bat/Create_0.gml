default_speed = 3;
spd = default_speed;
dir = 1;
start_y = y;
travel_distance = 200;
cooldown = 0;
hp = 2;
hurt = 0;
hurt_timer = 0;
shield = false;
boss = false;
cur_img_spd = image_speed;

enum fe_states {
	MOVING,
	ATTACK
}

state = fe_states.MOVING;

states_array[fe_states.MOVING] = diamond_moving_state;
states_array[fe_states.ATTACK] = diamond_attack_state;