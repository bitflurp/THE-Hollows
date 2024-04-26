draw_set_font(global.font_main)

for(var i = 0; i< array_length(inv); i++)
{
	var _xx = screen_bord;
	var _yy = screen_bord;
	var _sep = sep;
	var _col = c_white;
	//icon
draw_sprite( inv[i].sprite, 0, camera_get_view_x(view_camera[0]) + _xx,  camera_get_view_y(view_camera[0]) +_yy +_sep*i)

//get selected color
if selected_item == i { _col = c_yellow; };
draw_set_color(_col);
//name
draw_text(camera_get_view_x(view_camera[0]) + _xx + 16, camera_get_view_y(view_camera[0]) + _yy + _sep*i ,inv[i].name)
//description
if selected_item == i{
draw_text_ext( camera_get_view_x(view_camera[0]) +_xx+16, camera_get_view_y(view_camera[0]) +_yy+ _sep*array_length(inv), inv[i].description, 12, 80)
}
//reset color to white
draw_set_color(c_white);
}