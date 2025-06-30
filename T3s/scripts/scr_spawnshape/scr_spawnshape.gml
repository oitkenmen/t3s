function scr_spawnshape() {

var _shape = instance_create_depth(x, y, 400, obj_shape);

// GAME OVER CONDITION
if(place_meeting(x, y, obj_border)) {
	audio_stop_all();
	audio_play_sound(snd_gameover, 1, 0);
	
	if(room = rm_game_A) room_goto(rm_end_A);
	if(room = rm_game_B) room_goto(rm_end_B);
	if(room = rm_game_C) room_goto(rm_end_C);
	if(room = rm_game_D) room_goto(rm_end_D);
}

with _shape {
	index = other.next_shape;
	
	if(room = rm_game_A) {
		switch(index) {
			case 0: sprite_index = spr_shape_AO1; break;
			case 1: sprite_index = spr_shape_AO2; break;
			case 2: sprite_index = spr_shape_AS1; break;
			case 3: sprite_index = spr_shape_AS2; break;
			case 4: sprite_index = spr_shape_AZ1; break;
			case 5: sprite_index = spr_shape_AZ2; break;
			case 6: sprite_index = spr_shape_AJ1; break;
			case 7: sprite_index = spr_shape_AJ2; break;
			case 8: sprite_index = spr_shape_AL1; break;
			case 9: sprite_index = spr_shape_AL2; break;
			case 10: sprite_index = spr_shape_AT1; break;
			case 11: sprite_index = spr_shape_AT2; break;
			case 12: sprite_index = spr_shape_AI1; break;
			case 13: sprite_index = spr_shape_AI2; break;
		}
	}
	
	if(room = rm_game_B) {
		switch(index) {
			case 0: sprite_index = spr_shape_BO1; break;
			case 1: sprite_index = spr_shape_BO2; break;
			case 2: sprite_index = spr_shape_BS1; break;
			case 3: sprite_index = spr_shape_BS2; break;
			case 4: sprite_index = spr_shape_BZ1; break;
			case 5: sprite_index = spr_shape_BZ2; break;
			case 6: sprite_index = spr_shape_BJ1; break;
			case 7: sprite_index = spr_shape_BJ2; break;
			case 8: sprite_index = spr_shape_BL1; break;
			case 9: sprite_index = spr_shape_BL2; break;
			case 10: sprite_index = spr_shape_BT1; break;
			case 11: sprite_index = spr_shape_BT2; break;
			case 12: sprite_index = spr_shape_BI1; break;
			case 13: sprite_index = spr_shape_BI2; break;
		}
	}
	
	if(room = rm_game_C) {
		switch(index) {
			case 0: sprite_index = spr_shape_CO1; break;
			case 1: sprite_index = spr_shape_CO2; break;
			case 2: sprite_index = spr_shape_CS1; break;
			case 3: sprite_index = spr_shape_CS2; break;
			case 4: sprite_index = spr_shape_CZ1; break;
			case 5: sprite_index = spr_shape_CZ2; break;
			case 6: sprite_index = spr_shape_CJ1; break;
			case 7: sprite_index = spr_shape_CJ2; break;
			case 8: sprite_index = spr_shape_CL1; break;
			case 9: sprite_index = spr_shape_CL2; break;
			case 10: sprite_index = spr_shape_CT1; break;
			case 11: sprite_index = spr_shape_CT2; break;
			case 12: sprite_index = spr_shape_CI1; break;
			case 13: sprite_index = spr_shape_CI2; break;
		}
	}
	
	if(room = rm_game_D) {
		switch(index) {
			case 0: sprite_index = spr_shape_DO1; break;
			case 1: sprite_index = spr_shape_DO2; break;
			case 2: sprite_index = spr_shape_DS1; break;
			case 3: sprite_index = spr_shape_DS2; break;
			case 4: sprite_index = spr_shape_DZ1; break;
			case 5: sprite_index = spr_shape_DZ2; break;
			case 6: sprite_index = spr_shape_DJ1; break;
			case 7: sprite_index = spr_shape_DJ2; break;
			case 8: sprite_index = spr_shape_DL1; break;
			case 9: sprite_index = spr_shape_DL2; break;
			case 10: sprite_index = spr_shape_DT1; break;
			case 11: sprite_index = spr_shape_DT2; break;
			case 12: sprite_index = spr_shape_DI1; break;
			case 13: sprite_index = spr_shape_DI2; break;
		}
	}
}
next_shape = choose(0,1,2,3,4,5,6,7,8,9,10,11,12,13);

}