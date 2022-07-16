/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

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
if instance_exists(target) then 
{
	var _alt_diff = target.altitude-altitude;
	altitude+=sign(_alt_diff)*climbRate;
	if abs(_alt_diff)>5000 then 
	{
		direction++;
		speed =(maxSpeed*0.5);
	}
	else
	{
		motion_add(point_direction(x,y,target.x,target.y),1);
		speed = clamp(speed,maxSpeed*0.1,maxSpeed);
	}
}
with(track)
{
	ident = 2;
	sprite_index = sFighter;
	image_angle = hdg;
	hdg = other.direction;
		spd = other.speed;
		altitude = other.altitude;
		x = other.x;
		y = other.y;
		state = 0;
}