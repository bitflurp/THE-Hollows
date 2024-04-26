

//get selected item
selected_item = -1;

for(var i = 0; i< array_length(inv); i++)
{
	var _xx = screen_bord+ camera_get_view_x(view_camera[0]) ;
	var _yy = screen_bord + sep*i+ camera_get_view_y(view_camera[0]);
	
	
	if mouse_x > _xx && mouse_x < _xx+16 && mouse_y > _yy && mouse_y < _yy+16
	{
		selected_item = i;
	}
}