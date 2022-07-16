/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
var _coords = gui_coords(x,y);
if selected then 
{
	draw_rectangle_color(_coords[0]-20,_coords[1]-20,_coords[0]+20,_coords[1]+20,c_yellow,c_yellow,c_yellow,c_yellow,1);
}
draw_set_halign(fa_center)
draw_text_color(_coords[0],_coords[1]+24,name,image_blend,image_blend,image_blend,image_blend,1);