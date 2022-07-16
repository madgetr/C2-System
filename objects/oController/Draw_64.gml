/// @description Insert description here
// You can write your code in this editor
if mouse_check_button(mb_left) then 
{
	if multiSelect then 
	{
		var _mouse1 = gui_coords(mouse_x1,mouse_y1);
		var _mouse2 = gui_coords(mouse_x,mouse_y);
		draw_rectangle_color(_mouse1[0],_mouse1[1],_mouse2[0],_mouse2[1],c_yellow,c_yellow,c_yellow,c_yellow,1);
	}
	else
	{
		var _init_coords = gui_coords(mouse_x1,mouse_y1);
		var _mouse_x2 = mouse_x;
		var _mouse_y2 = mouse_y;
		if instance_exists(hovering) then 
		{
			_mouse_x2 = hovering.x;
			_mouse_y2 = hovering.y;
		}
		var _mouse_coords = gui_coords(_mouse_x2,_mouse_y2);
		draw_line_color(_init_coords[0],_init_coords[1],_mouse_coords[0],_mouse_coords[1],c_yellow,c_yellow);
		draw_text(_mouse_coords[0],_mouse_coords[1]+16,"BRG: " + string(heading(floor(point_direction(mouse_x1,mouse_y1,_mouse_x2,_mouse_y2))))+"\nRNG: "+string(floor(point_distance(mouse_x1,mouse_y1,_mouse_x2,_mouse_y2))));
	}
}