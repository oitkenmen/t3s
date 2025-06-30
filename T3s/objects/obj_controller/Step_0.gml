if(global.pause) exit;

var _numRows = 0;

for(var yy = 19; yy >= 0; yy--) {
	var _full = true;
	
	for(var xx = 9; xx >= 0; xx--) {
		if(Grid[# xx, yy] == 0) _full = false;
	}

	if(_full) {
		_numRows++;
		
		for(var _yy = yy; _yy > 0; _yy--) {
		  for(var _xx = 9; _xx >= 0; _xx--) {			
				Grid[# _xx, _yy] = 0;
				var _inst = instance_place(_xx * CELL_SIZE + GRID_OFFSET, _yy * CELL_SIZE + GRID_OFFSET, obj_border);
				with _inst instance_destroy();
				
				if(Grid[# _xx, _yy - 1] == 1) {
					Grid[# _xx ,_yy] = 1;
					Grid[# _xx, _yy - 1] = 0;
					var _block = instance_place(_xx * CELL_SIZE + GRID_OFFSET, (_yy - 1) * CELL_SIZE + GRID_OFFSET, obj_border);
					if(_block != noone) _block.y += CELL_SIZE;
				}
			}
		}

		yy++;
	}
}

switch(_numRows) {
	case 1: global.points += 10; global.lines += 1; audio_play_sound(snd_line, 2, 0); break;
	case 2: global.points += 40; global.lines += 2; audio_play_sound(snd_line, 2, 0); break;
	case 3: global.points += 90; global.lines += 3; audio_play_sound(snd_line, 2, 0); break;
	case 4: global.points += 160; global.lines += 4; audio_play_sound(snd_tetris, 2, 0); break;
}

if(global.lines < 20) {global.level = 0; global.fall_norm = room_speed;} // EASY
if(global.lines >= 20) and (global.lines < 40) {global.level = 1; global.fall_norm = room_speed - 6;}
if(global.lines >= 40) and (global.lines < 60) {global.level = 2; global.fall_norm = room_speed - 12;}
if(global.lines >= 60) and (global.lines < 80) {global.level = 3; global.fall_norm = room_speed - 18;}
if(global.lines >= 80) and (global.lines < 100) {global.level = 4; global.fall_norm = room_speed - 24;}
if(global.lines >= 100) and (global.lines < 120) {global.level = 5; global.fall_norm = room_speed - 30;} // NORMAL
if(global.lines >= 120) and (global.lines < 140) {global.level = 6; global.fall_norm = room_speed - 33;}
if(global.lines >= 140) and (global.lines < 160) {global.level = 7; global.fall_norm = room_speed - 36;}
if(global.lines >= 160) and (global.lines < 180) {global.level = 8; global.fall_norm = room_speed - 39;}
if(global.lines >= 180) and (global.lines < 200) {global.level = 9; global.fall_norm = room_speed - 42;}
if(global.lines >= 200) and (global.lines < 220) {global.level = 10; global.fall_norm = room_speed - 45;} // HARD
if(global.lines >= 220) and (global.lines < 240) {global.level = 11; global.fall_norm = room_speed - 47;}
if(global.lines >= 240) and (global.lines < 260) {global.level = 12; global.fall_norm = room_speed - 49;}
if(global.lines >= 260) and (global.lines < 280) {global.level = 13; global.fall_norm = room_speed - 51;}
if(global.lines >= 280) and (global.lines < 300) {global.level = 14; global.fall_norm = room_speed - 53;}
if(global.lines >= 300) and (global.lines < 320) {global.level = 15; global.fall_norm = room_speed - 55;} // IMPOSSIBLE
if(global.lines >= 320) and (global.lines < 340) {global.level = 16; global.fall_norm = room_speed - 56;}
if(global.lines >= 340) and (global.lines < 360) {global.level = 17; global.fall_norm = room_speed - 57;}
if(global.lines >= 360) and (global.lines < 380) {global.level = 18; global.fall_norm = room_speed - 58;}
if(global.lines >= 380) and (global.lines < 400) {global.level = 19; global.fall_norm = room_speed - 59;}
if(global.lines >= 400) {global.level = 20; global.fall_norm = 0;} // END