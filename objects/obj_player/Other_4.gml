x = x_dest;
y = y_dest;
vsp = vsp;
grv = def_grv;
if game_start = false {
	audio_play_sound(snd_portal_arrive,1,0);
}

if checkpointed = true {
	state = states.IDLE;
	hp = 3;
	checkpointed = false;
}