if checkpoint = true {
	draw_sprite(spr_checkpoint,0,880,510);
}

//draw_text(100,100,string(score));
/*
draw_text(100,100,"regular theme gain: " + string(audio_sound_get_gain(snd_regular_theme)));
draw_text(100,80,"boss theme gain: " + string(audio_sound_get_gain(snd_boss_theme)));
draw_text(100,60,"death sound playing: " + string(audio_is_playing(snd_player_death)));
draw_text(100,100,"Grounded: " + string(obj_player.grounded));
draw_text(100,80,"Coyote_time: " + string(obj_player.coyote_time));
draw_text(100,70,"jumping: " + string(obj_player.jumping));
draw_text(100,60,"walk_off: " + string(obj_player.walk_off));
draw_text(100,50,"walksp: " + string(obj_player.walksp));
draw_text(100,110,"hsp: " + string(obj_player.hsp));
draw_text(100,120,"state: " + string(obj_player.state));
draw_text(100,130,"bottom: " + string(obj_player.bbox_bottom));
if instance_exists(obj_enemy_attack_hitbox) {
	draw_text(100,140,"hitbox timer: " + string(obj_enemy_attack_hitbox.timer));
}
draw_text(100,200,"h_colliding: " + string(obj_player.h_colliding));
draw_text(100,240,"nearest_platform: " + string(obj_player._platform));
draw_text(100,250,"on_platform: " + string(obj_player.on_platform));
draw_text(100,270,"vsp: " + string(obj_player.vsp));
//draw_text(100,280,"hammer angle: " + string(obj_hammer.image_angle));
//draw_text(100,290,"hammer x: " + string(obj_hammer.x));
draw_text(100,300,"attacking: " + string(obj_player.attacking));
draw_text(100,310,"grv: " + string(obj_player.grv));
draw_text(100,320,"jump_buffer: " + string(obj_player.jump_buffer));
if instance_exists(obj_laser_eye) {
	draw_text(100,150,"index: " + string(obj_laser_eye.image_index));
	draw_text(100,160,"enemy dir: " + string(obj_laser_eye.dir));
	draw_text(100,170,"enemy state: " + string(obj_laser_eye.state));
	draw_text(100,180,"hitbox_exists: " + string(obj_laser_eye.hitbox_exists));
	draw_text(100,190,"enemy h_colliding: " + string(obj_laser_eye.h_colliding));
	draw_text(100,210,"player_in_view: " + string(obj_laser_eye.player_in_view));
	draw_text(100,220,"wall in way: " + string(obj_laser_eye.wall_in_the_way));
	draw_text(100,230,"dir_set: " + string(obj_laser_eye.dir_set));
}
if instance_exists(obj_the_enlightened) {
	draw_text(100,320,"boss vsp: " + string(obj_the_enlightened.vsp));
}