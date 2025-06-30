if(keyboard_check_released(vk_left)) {
	with obj_shape {
		move_Left = CELL_SIZE;
		if(place_meeting(x - move_Left, y, obj_border)) {
			move_Left = 0;
			global.Hshake = 5;
			audio_play_sound(snd_kick, 3, 0);
		}
		else {
			x -= move_Left;
			audio_play_sound(snd_move, 4, 0);
		}
	}
	
	y = lerp(y, y + 8, 1);
	obj_btn_up.y = lerp(obj_btn_up.y, obj_btn_up.y + 8, 1);
	obj_btn_down.y = lerp(obj_btn_down.y, obj_btn_down.y + 8, 1);
	obj_btn_right.y = lerp(obj_btn_right.y, obj_btn_right.y + 8, 1);

	alarm[0] = 2;
}