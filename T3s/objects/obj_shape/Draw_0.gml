draw_self();

var _yshift = 0;
while(!place_meeting(x, y + _yshift * CELL_SIZE, obj_border)) _yshift++;

draw_sprite_ext(sprite_index, image_index, x, y + (_yshift - 1) * CELL_SIZE, 1, 1, 0, c_white, .2);