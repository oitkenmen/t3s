randomize();

audio_group_load(audiogroup_music);
audio_group_load(audiogroup_sounds);

room_speed = 60;

global.fall_fast = room_speed - 59;
global.fall_norm = room_speed;

global.pause = false;

global.lines = 0;
global.level = 0;
global.points = 0;

// CAMERA SHAKE VARIABLES
global.Vshake = 0;
global.Hshake = 0;

camX = 0;
camY = 0;

camera_set_view_pos(view_camera[0], camX, camY);