var _s = id;

//interact with text needs to be changed to be based on player location not mouse
if position_meeting(mouse_x,mouse_y, id) && mouse_check_button_pressed(mb_left)

{
	with(instance_create_depth(0,0,-9999, obj_textbox))
			{
				scr_game_script(_s.text_id);
			}



}






