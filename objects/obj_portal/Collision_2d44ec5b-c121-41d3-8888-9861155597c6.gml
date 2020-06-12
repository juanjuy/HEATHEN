if global.pause exit;
if obj_game.status = 1 {
	audio_play_sound(snd_portal,1,0);
	instance_deactivate_object(par_hitbox);
	obj_player.invul_timer = 200;
	obj_player.hurt = false;
	obj_game.status = 0;
	/*instance_deactivate_all(true);
	instance_activate_object(obj_game);
	instance_activate_object(obj_transition);
	instance_activate_object(obj_player);
	if obj_player.has_hammer = true {
		instance_activate_object(obj_hammer);
	}
	*/
	SlideTransition(TRANS_MODE.GOTO,target);
	obj_player.trans_invul = true;
	obj_player.process_invul = false;
	obj_player.image_blend = c_white;
	obj_player.x_dest = player_x_dest;
	obj_player.y_dest = player_y_dest;
}
