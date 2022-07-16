/// @description Insert description here
// You can write your code in this editor
if instance_exists(track) then exit;
if abs(angle_difference(direction,other.hdg))<10 then 
{
	track = other;
}