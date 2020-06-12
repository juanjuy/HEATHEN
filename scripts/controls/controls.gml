if obj_game.status = 1 and obj_player.hp > 0 {
	if obj_player.attacking = -1 {
		left = keyboard_check(vk_left);
		down = keyboard_check(vk_down);
		right = keyboard_check(vk_right);
		jump_button = keyboard_check_pressed(vk_space);
		jump_release = keyboard_check_released(vk_space);
		jump_held = keyboard_check(vk_space);
		run = keyboard_check(vk_lshift);
		up = keyboard_check(vk_up);
		if has_hammer = true {
		attack = keyboard_check_pressed(ord("F"));
		}
	}
} else {
	right = 0;
	left = 0;
	jump_button = 0;
	down = 0;
}

restart = keyboard_check_pressed(ord("R"));
	