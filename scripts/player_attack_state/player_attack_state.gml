sprite_index = spr_player_attack;
image_speed = 1;
hsp = 0;
walksp = 0;
if attacking = -1 {
	attacking = 1;
	audio_play_sound(snd_sword_swing,1,0);
}

if attacking = 1 {
	obj_hammer.image_angle -= 15*facing;
	obj_hammer.x += facing*10;
	if obj_hammer.image_angle = facing * -90 {
		attacking = 0;
	}
}
if attacking = 0 {
	obj_hammer.image_angle += 15*facing;
	obj_hammer.x -= facing*10;
	if obj_hammer.image_angle = facing * 90 {
		attacking = -1;
	}
}
if attacking = -1 and vsp = 0 {
	attacking = -1;
	walksp = def_walksp;
	state = states.IDLE;
}

if vsp > 0  {
	attacking = -1;
	walksp = def_walksp;
	state = states.FALL;
} else if vsp < 0 {
	attacking = -1;
	walksp = def_walksp;
	state = states.JUMP;
}