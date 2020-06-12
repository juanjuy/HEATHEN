default_speed = 3;
spd = default_speed;
dir = 1;
boss = true;
start_y = y;
travel_distance = (room_height - sprite_height);
cooldown = 0;
max_hp = 12;
hp = max_hp;
hurt = 0;
hurt_timer = 0;
shield = false;
attacks = 0;
col = 2;
fading = false;
appearing = false;
stage = 1;
final_frame = false;
flash = false; 
boss_intro_create();
shiver = 1;
shiver_timer = 0;
fade_play = false;
play_tp_in = false;
cur_img_spd = image_speed;
enum db_states {
	MOVING,
	ATTACK,
	TELEPORT,
	DEATH
}

state = db_states.MOVING;

states_array[db_states.MOVING] = the_broken_moving_state;
states_array[db_states.ATTACK] = the_broken_attack_state;
states_array[db_states.TELEPORT] = the_broken_teleport_state;
states_array[db_states.DEATH] = the_broken_death_state;