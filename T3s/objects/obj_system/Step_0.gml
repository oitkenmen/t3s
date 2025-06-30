if(room = rm_game_A) or(room = rm_game_B) or(room = rm_game_C) or(room = rm_game_D) {
	if(!global.pause) {
		layer_set_visible("Background_2", false)
		instance_deactivate_layer("Pause");
		instance_activate_layer("Buttons");
	} else {
		layer_set_visible("Background_2", true)
		instance_activate_layer("Pause");
		instance_deactivate_layer("Buttons");
	}
}

// CAMERA SHAKE
camX += random_range(-global.Hshake, global.Hshake);
camY += random_range(-global.Vshake, global.Vshake);

camera_set_view_pos(view_camera[0], camX, camY);
alarm[0] = 1;

if(global.Vshake > 0) {
	global.Vshake -= .5;
	if(global.Vshake < 0) global.Vshake = 0;
}

if(global.Hshake > 0) {
	global.Hshake -= .5;
	if(global.Hshake < 0) global.Hshake = 0;
}