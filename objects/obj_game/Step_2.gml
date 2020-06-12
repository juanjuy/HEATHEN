if status = 0 and instance_exists(obj_player) {
	obj_player.vsp = 0;
	obj_player.grv = 0;
} else if status = 1 and instance_exists(obj_player) {
	obj_player.vsp = obj_player.vsp;
	obj_player.grv = obj_player.def_grv;
}