/// @description Insert description here
// You can write your code in this editor
event_inherited();
var _coords = gui_coords(x,y);
var _x = _coords[0];
var _y = _coords[1];
var _coords = gui_coords(x2,y2);
var _x2 = _coords[0];
var _y2 = _coords[1];

if selected and active then 
{
	draw_set_alpha(0.5)
	draw_line_color(_x,_y,_x2,_y2,plot_color,plot_color);
	draw_set_alpha(1);
}
draw_sprite_ext(sprite_index,image_index,_x,_y,1,1,0,image_blend,image_alpha);