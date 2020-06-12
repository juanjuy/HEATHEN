
if hurt = true and hurting = false {
	hurting = true;
	hurt_timer = 120;
}

if hurt_timer > 0 and hp > 0 {
	if hurt_timer mod 5 = 0 {
		if flash = true {
			flash = false;
		} else if flash = false {
			flash = true;
		}
	}
} else if hurt_timer = 0 or hp <= 0 {
	hurting = false;
	hurt = false;
	flash = false;
}

hurt_timer -= 1;