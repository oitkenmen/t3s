if(keyboard_check(vk_down)) {
	with obj_shape {
		fall_speed = global.fall_fast;
		if(alarm[0] > fall_speed) alarm[0] = fall_speed;
	}
}
else {
	with obj_shape {
		fall_speed = global.fall_norm;
	}
}