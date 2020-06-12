boss = false;
walksp = 4;
patrol_timer = 0;
def_walksp = 4;
idle_timer = 0;
hsp = 0;
vsp = 0;
grv = .25;
facing = 1;
dir = 1;
hitbox_exists = false;
dir_set = false;
h_colliding = false;
player_in_view = false;
platforms_beneath = ds_list_create();
hp = 1;
hurt = 0;
hurt_timer = 0;
shield = false;
cur_img_spd = image_speed;

enum e_states {
	IDLE,
	PATROL,
	CHASE,
	ATTACK
}

state = e_states.IDLE;

states_array[e_states.IDLE] = enemy_idle_state;
states_array[e_states.PATROL] = enemy_patrol_state;
states_array[e_states.CHASE] = enemy_chase_state;
states_array[e_states.ATTACK] = enemy_attack_state;