if obj_player.hp > 0 {
	with obj_player {
		y = 0;
		if !hurt {
			take_damage(1);
		}
		vsp = 0;
	}
}