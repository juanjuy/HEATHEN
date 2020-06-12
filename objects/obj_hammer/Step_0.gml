if global.pause exit;
if obj_player.has_hammer = false {
	y = anchorY + sin(timer*frequency)*amplitude;
	timer++;
}

if obj_player.has_hammer = true and obj_player.attacking = -1 {
	image_yscale = 1.5;
	x = obj_player.x - (obj_player.facing*40);
	y = obj_player.y+10;
	image_angle = 120 * obj_player.facing;
	if obj_player.state = states.CROUCH {
		x = obj_player.x - (obj_player.facing*40);
		y = obj_player.y+20;
	}
	depth = obj_player.depth - 1;
}

if obj_player.attacking != -1 and place_meeting(x,y,par_enemy) {
	var colliding_enemy = instance_place(x,y,par_enemy);
	if colliding_enemy.hurt = 0 and colliding_enemy.hp > 0 {
		colliding_enemy.hp -= 1;
		colliding_enemy.hurt = 1;
		audio_play_sound(snd_stomp,1,0);
	}
}

if obj_player.state = states.DEATH and obj_player.has_hammer = true {
	if image_xscale > 0 {
		image_xscale -= .05;
	}
} else {
	image_xscale = 1;
}