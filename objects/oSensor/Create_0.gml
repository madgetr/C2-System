/// @description Insert description here
// You can write your code in this editor
event_inherited();
rotationTime = room_speed*12;
range = 500;
x2 = x;
y2 = y;
offx = random_range(-2,2);
offy = random_range(-2,2);
ang = random(360);
image_blend = c_blue;
plot_color = c_white;
active = true;
got_on_sweep = ds_list_create();
alarm[0] = rotationTime;