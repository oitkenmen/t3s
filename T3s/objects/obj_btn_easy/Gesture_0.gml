if(room = rm_level_A) room_goto(rm_game_A);
if(room = rm_level_B) room_goto(rm_game_B);
if(room = rm_level_C) room_goto(rm_game_C);

audio_play_sound(snd_game, 5, 1);

global.lines = 0;
global.points = 0;