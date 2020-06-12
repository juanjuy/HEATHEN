if trans_invul = true and process_invul = false {
	invul_timer = 200;
	process_invul = true;
}

if invul_timer > 0 and hp > 0 {
	hurt_timer = 0;
	if invul_timer mod 5 = 0 {
		if invul_flash = true {
			invul_flash = false;
		} else if flash = false {
			invul_flash = true;
		}
	}
} else if invul_timer = 0 or hp <= 0 {
	trans_invul = false;
	process_invul = false;
	invul_flash = false;
}

if invul_timer > 0 {
	invul_timer -= 1;
}