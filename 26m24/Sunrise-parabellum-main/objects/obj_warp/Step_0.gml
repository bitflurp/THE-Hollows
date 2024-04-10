
image_alpha += fade_in_s
if(state == fadein){
	image_alpha += fade_in_s;
	if (image_alpha >=1)
	{
		image_alpha = 1;	
		state = fadeout;
		
			room_goto(target_rm);
		obj_player.x = target_hor;
		obj_player.y = target_vert;
		obj_player.face = target_face;
	}

}
else if(state == fadeout){
	image_alpha -= fade_out_s;
	if (image_alpha <=0 )
	{
		image_alpha = 0;	
			state = fadein;
			
			instance_destroy();
	}

}




