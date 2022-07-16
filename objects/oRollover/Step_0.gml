/// @description Insert description here
// You can write your code in this editor
var currentHover = oController.hovering;
var _isHovering = false;
if point_distance(mouse_x,mouse_y,x,y)<16 then 
{
	_isHovering = true;
	if currentHover==noone then 
	{
		hover = true;
		oController.hovering = id;
	}
}
if currentHover == id then 
{
	if !_isHovering then 
	{
		oController.hovering = noone;
		hover = false;
	}
}