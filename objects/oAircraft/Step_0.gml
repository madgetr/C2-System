/// @description Insert description here
// You can write your code in this editor
if reports >0 then 
{
	with(track)
	{
		lost = room_speed*5;
		drop = room_speed*10;
		state = 0;
		if ident==0 then ident  = 1;
	
		hdg = other.direction;
		spd = other.speed;
		altitude = other.altitude;
		x = other.x;
		y = other.y;
	}
}

direction-=angle_difference(direction,new_direction);

if !instance_exists(track) then 
{
	var _plots = ds_list_create();
	var _hits = collision_circle_list(x,y,64,oPlot,0,1,_plots,0);
	ds_list_destroy(_plots);
	if _hits>5 then 
	{
		track = instance_create_depth(x,y,0,oTrack);
	}
}