/// @description Insert description here
// You can write your code in this editor
if hover then 
{
	var _coords = gui_coords(x,y);
	draw_rectangle_color(_coords[0]-19,_coords[1]-19,_coords[0]+19,_coords[1]+19,c_white,c_white,c_white,c_white,1);
}