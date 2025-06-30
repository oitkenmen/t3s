width = display_get_width();
height = display_get_height();
ratio = height / width;

// CAMERA
if(ratio > 1.8) {
	camW = 640;
	camH = 640 * ratio;
} else {
	camW = 640;
	camH = 1120;
}

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], camW, camH);

// DISPLAY
window_set_size(camW, camH);
surface_resize(application_surface, camW, camH);

// GUI
display_set_gui_size(camW, camH);