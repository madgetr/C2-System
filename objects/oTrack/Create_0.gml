/// @description Insert description here
// You can write your code in this editor
event_inherited();
ident = 0;
ident_colors = [c_yellow,c_lime,c_aqua,c_yellow,c_orange,c_red];
ident_names = ["Pending","Assumed Friend","Friend","Unknown","Suspect","Hostile"];
ident_tags = ["PND","AFRD","FRD","UNK","SUS","HOSTILE"];

spd = 0;
hdg = 0;
alarm[0] = room_speed*2;
lost = room_speed*5;
drop = room_speed*10;

states = ["E","L","D"];
state = 0;

tags = false;