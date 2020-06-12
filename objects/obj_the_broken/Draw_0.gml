draw_self();

var pc;
pc = hp / max_hp * 100;
if hp > 0 {
	draw_healthbar(x-50,y-100,x+50,y-90,pc,c_black,c_red,c_lime,0,true,true);
}

if !flash {
	draw_self();
}

if flash = true {
	gpu_set_fog(true,c_white,0,0);
	draw_self();
	gpu_set_fog(false,c_white,0,0);
}
