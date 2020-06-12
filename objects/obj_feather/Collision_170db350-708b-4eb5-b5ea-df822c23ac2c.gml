
obj_player.def_extra_jumps += 1;
textbox = instance_create_layer(-1000,y,"Text",obj_textbox);
textbox.text = "Double jump!";
audio_play_sound(snd_power_up,1,0);
instance_destroy();