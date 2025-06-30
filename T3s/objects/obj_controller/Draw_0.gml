x_offset = 0;
y_offset = 0;

var _sprite;

if(room = rm_game_A) {
	switch(next_shape) {
		case 0: _sprite = spr_shape_AO1; break;
		case 1: _sprite = spr_shape_AO2; break;
		case 2: _sprite =	spr_shape_AS1; x_offset += -16; break;
		case 3: _sprite =	spr_shape_AS2; x_offset += -16; break;
		case 4: _sprite = spr_shape_AZ1; x_offset += -16; break;
		case 5: _sprite = spr_shape_AZ2; x_offset += -16; break;
		case 6: _sprite = spr_shape_AJ1; x_offset += -16; break;
		case 7: _sprite = spr_shape_AJ2; x_offset += -16; break;
		case 8: _sprite = spr_shape_AL1; x_offset += -16; break;
		case 9: _sprite = spr_shape_AL2; x_offset += -16; break;
		case 10: _sprite = spr_shape_AT1; x_offset += -16; break;
		case 11: _sprite = spr_shape_AT2; x_offset += -16; break;
		case 12: _sprite = spr_shape_AI1; x_offset += -32; y_offset += -16; break;
		case 13: _sprite = spr_shape_AI2; x_offset += -32; y_offset += -16; break
	}
}

if(room = rm_game_B) {
	switch(next_shape) {
		case 0: _sprite = spr_shape_BO1; break;
		case 1: _sprite = spr_shape_BO2; break;
		case 2: _sprite =	spr_shape_BS1; x_offset += -16; break;
		case 3: _sprite =	spr_shape_BS2; x_offset += -16; break;
		case 4: _sprite = spr_shape_BZ1; x_offset += -16; break;
		case 5: _sprite = spr_shape_BZ2; x_offset += -16; break;
		case 6: _sprite = spr_shape_BJ1; x_offset += -16; break;
		case 7: _sprite = spr_shape_BJ2; x_offset += -16; break;
		case 8: _sprite = spr_shape_BL1; x_offset += -16; break;
		case 9: _sprite = spr_shape_BL2; x_offset += -16; break;
		case 10: _sprite = spr_shape_BT1; x_offset += -16; break;
		case 11: _sprite = spr_shape_BT2; x_offset += -16; break;
		case 12: _sprite = spr_shape_BI1; x_offset += -32; y_offset += -16; break;
		case 13: _sprite = spr_shape_BI2; x_offset += -32; y_offset += -16; break
	}
}

if(room = rm_game_C) {
	switch(next_shape) {
		case 0: _sprite = spr_shape_CO1; break;
		case 1: _sprite = spr_shape_CO2; break;
		case 2: _sprite =	spr_shape_CS1; x_offset += -16; break;
		case 3: _sprite =	spr_shape_CS2; x_offset += -16; break;
		case 4: _sprite = spr_shape_CZ1; x_offset += -16; break;
		case 5: _sprite = spr_shape_CZ2; x_offset += -16; break;
		case 6: _sprite = spr_shape_CJ1; x_offset += -16; break;
		case 7: _sprite = spr_shape_CJ2; x_offset += -16; break;
		case 8: _sprite = spr_shape_CL1; x_offset += -16; break;
		case 9: _sprite = spr_shape_CL2; x_offset += -16; break;
		case 10: _sprite = spr_shape_CT1; x_offset += -16; break;
		case 11: _sprite = spr_shape_CT2; x_offset += -16; break;
		case 12: _sprite = spr_shape_CI1; x_offset += -32; y_offset += -16; break;
		case 13: _sprite = spr_shape_CI2; x_offset += -32; y_offset += -16; break
	}
}

if(room = rm_game_D) {
	switch(next_shape) {
		case 0: _sprite = spr_shape_DO1; break;
		case 1: _sprite = spr_shape_DO2; break;
		case 2: _sprite =	spr_shape_DS1; x_offset += -16; break;
		case 3: _sprite =	spr_shape_DS2; x_offset += -16; break;
		case 4: _sprite = spr_shape_DZ1; x_offset += -16; break;
		case 5: _sprite = spr_shape_DZ2; x_offset += -16; break;
		case 6: _sprite = spr_shape_DJ1; x_offset += -16; break;
		case 7: _sprite = spr_shape_DJ2; x_offset += -16; break;
		case 8: _sprite = spr_shape_DL1; x_offset += -16; break;
		case 9: _sprite = spr_shape_DL2; x_offset += -16; break;
		case 10: _sprite = spr_shape_DT1; x_offset += -16; break;
		case 11: _sprite = spr_shape_DT2; x_offset += -16; break;
		case 12: _sprite = spr_shape_DI1; x_offset += -32; y_offset += -16; break;
		case 13: _sprite = spr_shape_DI2; x_offset += -32; y_offset += -16; break
	}
}

draw_sprite_ext(_sprite, 0, 512 + x_offset, 640 + y_offset, 1, 1, 0, c_white, 1);