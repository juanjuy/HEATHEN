game_start = true;
hsp = 0;
checkpointed = false;
vsp = 0;
def_grv = 0.5;
grv = def_grv;
attack = 0;
def_walksp = 1;
walksp = 1;
def_maxwalksp = 8;
max_walksp = 8;
jump_buffer = 0;
grounded = 1;
coyote_time = 0;
jumping = 0;
walk_off = false;
facing = 1;
decel = false;
crouch_timer = 0;
lookup_timer = 0;
def_extra_jumps = 0;
extra_jumps = def_extra_jumps;
h_colliding = false;
jump_height = 12;
on_platform = 0;
platforms_beneath = ds_list_create();
has_hammer = false;
attacking = -1;
hp = 3;
hurt = false;
hurting = false;
hurt_timer = 0;
has_wings = false;
wall_above = false;
x_dest = x;
y_dest = y;
trans_invul = false;
process_invul = false;
invul_timer = 0;
godmode = false;
cur_img_spd = image_speed;
flash = 0;
invul_flash = 0;
enum states {
	IDLE,
	WALK,
	JUMP,
	CROUCH,
	FALL,
	LOOKUP,
	ATTACK,
	DEATH
}

state = states.IDLE;

states_array[states.IDLE] = player_idle_state;
states_array[states.WALK] = player_walk_state;
states_array[states.JUMP] = player_jump_state;
states_array[states.CROUCH] = player_crouch_state;
states_array[states.FALL] = player_fall_state;
states_array[states.LOOKUP] = player_lookup_state;
states_array[states.ATTACK] = player_attack_state;
states_array[states.DEATH] = player_death_state;