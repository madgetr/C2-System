/// @description Insert description here
// You can write your code in this editor
event_inherited();
var _coords = gui_coords(x,y);
var _x = _coords[0];
var _y = _coords[1];
draw_set_alpha(image_alpha);
draw_line_color(_x-2,_y,_x+3,_y,image_blend,image_blend);
draw_set_alpha(1);