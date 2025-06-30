function scr_addtogrid() {

for(var yy = 19; yy >= 0; yy--) {
	for(var xx = 9; xx >= 0; xx--) {
		if(place_meeting(xx * CELL_SIZE + GRID_OFFSET, yy * CELL_SIZE + GRID_OFFSET, obj_shape)) {
			Grid[# xx, yy] = 1;
			
			var spr_custom = sprite_create_from_surface(application_surface, xx * CELL_SIZE + GRID_OFFSET, yy * CELL_SIZE + GRID_OFFSET, 32, 32, false, false, 0, 0);
			var surf = surface_create(32, 32);
			
			surface_set_target(surf);
			gpu_set_blendmode_ext_sepalpha(bm_max, bm_zero, bm_one, bm_one);
			draw_rectangle_color(0, 0, 32, 32, c_white, c_white, c_white, c_white, false);
			draw_sprite_ext(spr_custom, 0, 0, 0, 1, 1, 0, c_white, 1); 
			gpu_set_blendmode(bm_normal);
			surface_reset_target();
			
			var spr_block = sprite_create_from_surface(surf, 0, 0, 32, 32, false, false, 0, 0);
			surface_free(surf);
			
			var new_shape = instance_create_depth(xx * CELL_SIZE + GRID_OFFSET, yy * CELL_SIZE + GRID_OFFSET, 400, obj_block);
			new_shape.sprite_index = spr_block;
		}
	}
}

}