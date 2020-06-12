if obj_player.attacking != -1 {
	colliding_beam = instance_place(x,y,obj_bat_beam);
	colliding_beam.reflect = true;
}