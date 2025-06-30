if(keyboard_check_released(ord("Z"))) {
	with obj_shape {
		image_index++;
		audio_play_sound(snd_rotate, 4, 0);
		var _inst = instance_place(x, y, obj_border)
		if(_inst != noone) {
			if(!place_meeting(x + CELL_SIZE, y, obj_border)) x += CELL_SIZE
			else if(!place_meeting(x - CELL_SIZE, y, obj_border)) x -= CELL_SIZE
				else image_index--;
		}
	}
	
	y = lerp(y, y + 8, 1);
	alarm[0] = 2;
}