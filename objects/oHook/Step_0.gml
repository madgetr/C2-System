/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if mouse_check_button_released(mb_left) then 
{
	if !keyboard_check(vk_shift) then selected = false;
	if hover then selected = true;
}