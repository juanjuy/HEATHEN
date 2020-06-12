colliding_enemy = instance_place(x,y,par_enemy);
if reflected = true and colliding_enemy.hurt = false {
	colliding_enemy.hp -= 1;
	colliding_enemy.hurt = true;
	audio_play_sound(snd_stomp,1,0);
	instance_destroy();
}