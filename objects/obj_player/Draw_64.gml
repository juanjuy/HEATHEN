/// draw the hearts
var xoffset = 50;

/// use a for loop
if obj_game.status = 1 {
	for (var i = 0; i<hp;i++) {
		draw_sprite(spr_heart,0,60+(xoffset*i),510);
	}
}

/*
draw_text(100,100,"state" + string(state));
draw_text(100,80,"status: " + string(obj_game.status));
draw_text(100,100,string(trans_invul));
draw_text(100,110,string(invul_timer));
draw_text(100,120,string(obj_game.status));
draw_text(100,140,string(godmode));
draw_text(100,150,string(invul_timer));
