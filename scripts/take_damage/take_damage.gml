// @function take_damage(dmg)
// @param dmg  Amount of damage dealt

if hp > 0 and !godmode and obj_game.status = 1 {
	hp -= argument0;
	hurt = true;
	obj_camera.shake = true;
	audio_play_sound(snd_hit,1,0);
}