instance_create_depth(x,y-50,obj_player.depth,drop);
audio_stop_sound(snd_enlightened_death);
obj_game.checkpoint = true;
checkbox = instance_create_layer(-1000,y,"Text",obj_textbox);
checkbox.text = "Checkpoint!";
checkbox.checkpoint = true;