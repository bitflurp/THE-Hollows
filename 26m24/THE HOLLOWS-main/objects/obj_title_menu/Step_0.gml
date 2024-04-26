//inputs
key_up = keyboard_check_pressed(vk_up);
key_down = keyboard_check_pressed(vk_down);
key_accept = keyboard_check_pressed(vk_space);
//menu wackaton
op_length = array_length(option[menu_level])

//menu move
pos += key_down - key_up;
if pos >= op_length {pos = 0} 
if pos < 0 {pos= op_length-1}

//using stuff
if key_accept
	{
		// start menu level = sml
		var _sml = menu_level;
	
	
		switch(menu_level)
		{
			//main menu
			case 0:
				switch(pos)
				{
					//start game
				case 0: room_goto_next(); break;

					//settings
				case 1: menu_level = 1; break;

					//quit game
				case 2: game_end(); break;
	
			}
				break;
			
			//settings menu
			case 1:
				switch(pos)
				{
			//window size
				case 0: break;
			//brightness
				case 1: break;
			//controls
				case 2: break;
			//back
				case 3: menu_level = 0 ; break;
				}
		}
// set position back
	if _sml != menu_level{pos = 0};

	  //correct option length
	op_length = array_length(option[menu_level])

	}



