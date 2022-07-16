/// @description Insert description here
// You can write your code in this editor
event_inherited();
image_blend = c_ltgray;
if !active then exit;
image_blend = c_aqua;
ang+=(360/rotationTime);
x2 = x+lengthdir_x(range,ang);
y2 = y+lengthdir_y(range,ang);
var _l = ds_list_create();
var _hits = collision_line_list(x,y,x2,y2,oAircraft,false,false,_l,false);

while(_hits)
{
	var _hit = _l[|0];
	if ds_list_find_index(got_on_sweep,_hit)<>-1 then 
	{
		ds_list_delete(_l,0);
		_hits--;
	}
	var _plot = instance_create_depth(_hit.x+offx,_hit.y+offy,0,oPlot);
	_plot.report = _hit;
	_plot.altitude = _hit.altitude;
	_plot.image_blend = plot_color;
	_hit.reports++;
	_hits--;
	ds_list_delete(_l,0);
	ds_list_add(got_on_sweep,_hit);
}

ds_list_destroy(_l);

if choose(0,0,0,0,0,0,0,0,0,0,1)
{
	repeat(random(2))
	{
		var _len = random(range);
		var _plot = instance_create_depth(x+lengthdir_x(_len,ang),y+lengthdir_y(_len,ang),0,oPlot);
		_plot.altitude = random_range(100,10000);
		_plot.image_blend = plot_color;
	}
}