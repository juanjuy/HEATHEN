if place_meeting(x,y,par_enemy) and obj_game.status = 1 and hp > 0 {
	colliding_enemy = instance_place(x,y,par_enemy);
	if y < (colliding_enemy.y - (colliding_enemy.sprite_height/2)) and colliding_enemy.hp > 0 {
		if colliding_enemy.hurt = 0 and colliding_enemy.shield = false {
			colliding_enemy.hp -= 1;
			colliding_enemy.hurt = 1;
			audio_play_sound(snd_stomp,1,0);
		} else {
			audio_play_sound(snd_stomp_no_damage,1,0);
		}
		if !jump_held {
			vsp = -8;
		} else {
			vsp = -10;
		}
		extra_jumps = def_extra_jumps;
	} else if hurt = false and colliding_enemy.hurt = false and invul_timer = 0 {
		take_damage(1);
	}
}

