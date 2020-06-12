if global.pause {
	image_speed = 0;
	exit;
} else {
	image_speed = cur_img_spd;
}
horizontal_collision();
x += hsp;

if !rising or hp = 0 {
	vertical_collision();
	y += vsp;
	vsp += grv;
}

if hp > 0 {
	image_xscale = dir;
	enemy_hurt_anim();
}

if hp < 12 and !instance_exists(obj_the_enlightened_halo) and hp > 0 {
	instance_create_depth(x,y-60,depth-1,obj_the_enlightened_halo);
	shield = true;
}


if hp > 5 {
	player_in_view = collision_line(x-200,y,x+200,y,obj_player,false,0);
} else if hp < 6 {
	player_in_view = collision_line(x-500,y,x+500,y,obj_player,false,0);
}
wall_in_the_way = collision_line(x,y,obj_player.x,obj_player.y,par_solid,false, 0);
script_execute(states_array[state]);

boss_intro_step();
cur_img_spd = image_speed;