ending = false;
text = "Placeholder";
text2 = "Placeholder";
box_width = 500;
stringheight = string_height(text);

alarm_set(0,240);
image_xscale = 0.05;
timer = 0;
audio_play_sound(snd_win_game,1,0);
obj_game.checkpoint = false;
score = 0;