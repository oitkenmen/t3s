g = make_color_rgb(240,240,240);
o = make_color_rgb(217,72,15);

draw_set_halign(fa_left);

if(room = rm_game_A) or(room = rm_end_A) draw_set_font(fnt_game_A);
if(room = rm_game_B) or(room = rm_end_B) draw_set_font(fnt_game_B);
if(room = rm_game_C) or(room = rm_end_C) draw_set_font(fnt_game_C);
if(room = rm_game_D) or(room = rm_end_D) draw_set_font(fnt_game_D);

if(room = rm_game_A) or(room = rm_game_B) or(room = rm_game_C) {
	if(!global.pause) {
		draw_text_color(446, 328, global.level, g, g, g, g, 1);
		draw_text_color(446, 424, global.points, g, g, g, g, 1);
	} else {
		draw_text_color(446, 328, global.level, g, g, g, g, .5);
		draw_text_color(446, 424, global.points, g, g, g, g, .5);
	}
}

if(room = rm_end_A) or(room = rm_end_B) or(room = rm_end_C) {
	draw_text_color(248, 440, global.points, g, g, g, g, 1);
}

if(room = rm_game_D) {
	draw_text_color(430, 328, global.level, o, o, o, o, 1);
	draw_text_color(430, 424, global.points, o, o, o, o, 1);
}

if(room = rm_end_D) {
	draw_set_halign(fa_center);
	draw_text_transformed_color(320, 324, global.points, 1.5, 1.5, 0, o, o, o, o, 1);
}