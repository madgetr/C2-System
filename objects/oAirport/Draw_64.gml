/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var _coords = gui_coords(x,y);
var _x = _coords[0];
var _y = _coords[1];
draw_sprite_ext(sprite_index,image_index,_x,_y,1,1,0,image_blend,image_alpha);