if place_meeting(x,y,par_hitbox) and hurt = false and invul_timer = 0 {
	take_damage(1);
	par_hitbox.hit = true;
}