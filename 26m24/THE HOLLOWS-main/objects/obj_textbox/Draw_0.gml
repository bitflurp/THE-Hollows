key_accept = keyboard_check_pressed(ord("E"));

textbox_hor = camera_get_view_x(view_camera[0]);
textbox_vert = camera_get_view_y(view_camera[0])+289;

//setup
if setup == false
	{
	
	setup = true;
	draw_set_font(global.font_main);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop through the pages
	
	for(var p = 0; p < page_number; p++)
		{
			//find how many charaters are on each page and store that number in the "text_lenght" array
			text_length[p] = string_length(text[p]);
			//get the x position for the textbox
			//no chaaracter (center the textbox)
			text_hor_offset[p] = 160;
			
		}
	
	
	}

//typing the text
if draw_char < text_length[page]
	{
		draw_char += text_spd;
		draw_char =clamp(draw_char,0,text_length[page]);
	}
	
//flip through pages
if key_accept
	{
	
	//if the typing is done
	if draw_char == text_length[page]{
		
			//next page
			if page< page_number-1{
				page++;
				draw_char = 0;
			}
				//destroy textbox
				else{
				//link dialog
				if option_number > 0{
				create_textbox(option_link_id[option_pos]);
				}
				instance_destroy();
			
				}
				
		}
	//if not done typing
	else{
		
	draw_char = text_length[page];
	
	}
	
	}
	

	//draw the textbox
	var _txtb_hor =  textbox_hor + text_hor_offset[page];
	var _txtb_vert = textbox_vert;
	textb_img += textb_img_spd;
	txtb_spr_w = sprite_get_width(txtb_spr);
	txtb_spr_h = sprite_get_height(txtb_spr);
	//back of the textbox
	
	draw_sprite_ext(txtb_spr, textb_img, _txtb_hor, _txtb_vert, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_white,1);
	
		//options; _op_space = the virtical distance between the options; _op_board = border around the text  
	
	
	
	if draw_char == text_length[page] && page == page_number -1 {
	//option select
	option_pos += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	option_pos = clamp(option_pos, 0, option_number -1);
	//draw options	
		var _op_space = 15;
		var _op_board = 4;
		for (var op = 0; op < option_number; op++){
			

		//option box _o_w is option width
		var _o_w = string_width(option[op]) + _op_board*2;
		draw_sprite_ext(txtb_spr, textb_img, _txtb_hor + 25, _txtb_vert - _op_space*option_number + _op_space*op, _o_w/txtb_spr_w, (_op_space -1)/txtb_spr_h, 0, c_white, 1)
		
		//arrow broken for some reason
	if option_pos == op {
		draw_sprite(spr_textbox_arrow,0,_txtb_hor, _txtb_vert - _op_space*option_number + _op_space*op)
		}	
				
			
		//option text
		draw_text(_txtb_hor + 25 + _op_board, _txtb_vert - _op_space*option_number + _op_space*op +2, option[op]);
		
		
		
		
		
		}
	
	}
	
	
	//draw the text
	var _drawtext = string_copy(text[page], 1, draw_char);
	draw_text_ext(_txtb_hor + border, _txtb_vert + border, _drawtext, line_sep, line_width);




