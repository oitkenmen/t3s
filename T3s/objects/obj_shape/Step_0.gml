if(global.pause) exit;

// FALLING OF THE SHAPE
if(move_Down != 0) {
	if(!place_meeting(x, y + move_Down, obj_border)) y += move_Down;
	else {
		with obj_controller scr_addtogrid();
		global.Vshake = 5;
		audio_play_sound(snd_kick, 3, 0);
		instance_destroy();
	}
	
	move_Down = 0;
}