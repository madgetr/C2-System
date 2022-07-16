function gui_coords(argument0, argument1) {
	var _x = (argument0 - camera_get_view_x(camera))*(RES_W/camera_get_view_width(camera));
	var _y = (argument1 - camera_get_view_y(camera))*(RES_H/camera_get_view_height(camera));

	return [_x,_y];


}
