if(keyboard_check_released(vk_right)) {
	with obj_shape {
		move_Right = CELL_SIZE;
		if(place_meeting(x + move_Right, y, obj_border)) {
			move_Right = 0;
			global.Hshake = 5;
			audio_play_sound(snd_kick, 3, 0);
		}
		else {
			x += move_Right;
			audio_play_sound(snd_move, 4, 0);
		}
	}
	
	y = lerp(y, y + 8, 1);
	obj_btn_up.y = lerp(obj_btn_up.y, obj_btn_up.y + 8, 1);
	obj_btn_down.y = lerp(obj_btn_down.y, obj_btn_down.y + 8, 1);
	obj_btn_left.y = lerp(obj_btn_left.y, obj_btn_left.y + 8, 1);

	alarm[0] = 2;
}