if global.pause {
	image_speed = 0;
	exit;
} else {
	image_speed = cur_img_spd;
}

horizontal_collision();
x += hsp;
vertical_collision();
y += vsp;
vsp += grv;
image_xscale = dir;
enemy_hurt_anim();

if hp = 0 {
	instance_destroy(id);
}

player_in_view = collision_line(x-200,y,x+200,y,obj_player,false,0);
wall_in_the_way = collision_line(x,y,obj_player.x,obj_player.y,par_solid,false, 0);
script_execute(states_array[state]);

cur_img_spd = image_speed;