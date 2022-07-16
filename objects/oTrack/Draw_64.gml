/// @description Insert description here
// You can write your code in this editor
event_inherited();
var _coords = gui_coords(x,y);
var _x = _coords[0];
var _y = _coords[1];

image_blend = ident_colors[ident];
var _s = spd*room_speed*60*60/4;
var _coords2 = gui_coords(x+lengthdir_x(_s/30,hdg),y+lengthdir_y(_s/30,hdg));
draw_line_color(_x,_y,_coords2[0],_coords2[1],image_blend,image_blend);
if sprite_index == sTracks then image_angle = 0;
draw_sprite_ext(sprite_index,image_index,_x,_y,1,1,image_angle,image_blend,image_alpha);
tag = states[state];
if tags or global.tags or (hover and !mouse_check_button(mb_left)) or selected then tag += "\nHDG:"+string(heading(floor(hdg)))+"\n"+"SPD:"+string(floor(_s))+"\nAlt:" + string(floor(altitude)) + "\n" +ident_tags[ident];
draw_text_color(_x-16,_y+16,tag,c_white,c_white,c_white,c_white,1);