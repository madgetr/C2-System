/// @description Insert description here
// You can write your code in this editor
//if choose(0,0,0,0,0,0,0,0,1)
//repeat(random(10))
//{
//	instance_create_depth(random(room_width),random(room_height),0,oPlot);
//}


if mouse_check_button_pressed(mb_left) then 
{
	if keyboard_check(vk_shift) then multiSelect = true;
	mouse_x1 = mouse_x;
	mouse_y1 = mouse_y;
	if instance_exists(hovering) then 
	{
		mouse_x1 = hovering.x;
		mouse_y1 = hovering.y;
	}
	var _plot = instance_nearest(mouse_x,mouse_y,oPlot);
	if instance_exists(_plot) then 
	{
		if point_distance(mouse_x,mouse_y,_plot.x,_plot.y)<32 then 
		{
			initiating = true;
			init_x = mouse_x;
			init_y = mouse_y;
		}
	}
}
if initiating then 
{
	if mouse_check_button_released(mb_left) then 
	{
		initiating = false;
	}
	if keyboard_check_pressed(vk_space) then 
	{
		var _track = instance_create_depth(mouse_x,mouse_y,0,oTrack);
		_track.spd = point_distance(init_x,init_y,mouse_x,mouse_y)*0.01;
		_track.hdg = point_direction(init_x,init_y,mouse_x,mouse_y);
		initiating = false;
	}
}
if multiSelect and mouse_check_button_released(mb_left) then 
{
	var _l = ds_list_create();
	var _n = collision_rectangle_list(mouse_x1,mouse_y1,mouse_x,mouse_y,oHook,0,1,_l,0);
	for (var _i = 0; _i < _n; ++_i) {
	    with(_l[| _i])
		{
			selected = true;
		}
	}
	ds_list_destroy(_l);
	multiSelect = false;
}

if keyboard_check_pressed(ord("S")) then 
{
	with(oSensor)visible = !visible;
}
if keyboard_check_pressed(ord("T")) then 
{
	global.tags = !global.tags;
}