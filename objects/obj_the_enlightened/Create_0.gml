walksp = 2;
boss = true;
rising = false;
start_y = y;
stomping = false;
rising_timer = 0;
patrol_timer = 0;
def_walksp = 2;
idle_timer = 0;
hsp = 0;
vsp = 0;
grv = .25;
facing = 1;
dir = 1;
hitbox_exists = false;
hitbox2_exists = false;
dir_set = false;
h_colliding = false;
player_in_view = false;
platforms_beneath = ds_list_create();
max_hp = 15;
hp = max_hp;
hurt = 0;
hurt_timer = 0;
shield = false;
drop = noone;
shiver = 1;
shiver_timer = 0;
cur_img_spd = image_speed;
boss_intro_create();

enum the_enlightened_states {
	IDLE,
	PATROL,
	CHASE,
	ATTACK,
	STOMP,
	DEATH
}

state = the_enlightened_states.IDLE;

states_array[the_enlightened_states.IDLE] = the_enlightened_idle_state;
states_array[the_enlightened_states.PATROL] = the_enlightened_patrol_state;
states_array[the_enlightened_states.CHASE] = the_enlightened_chase_state;
states_array[the_enlightened_states.ATTACK] = the_enlightened_attack_state;
states_array[the_enlightened_states.STOMP] = the_enlightened_stomp_state;
states_array[the_enlightened_states.DEATH] = the_enlightened_death_state;