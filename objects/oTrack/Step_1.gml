/// @description Insert description here
// You can write your code in this editor
lost--;
state = 1;
if lost<0 then 
{
	drop--;
	state = 2;
}
if drop<0 then instance_destroy();

if selected and keyboard_check_pressed(vk_enter) and ident_names[ident] == "Suspect" then 
{
	with(oBase)
	{
		var _fighter = instance_create_depth(x,y,0,oFighter);
		_fighter.target = other.id;
	}
}