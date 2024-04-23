/// @param text_id
function scr_game_script(_text_id){

switch(_text_id){

	case"ncp 1":
				scr_text("The blues, the ship of 'captian steel' ")
				scr_text("It was great and i longed to be like him")
				scr_text("Fiery red, and big as a castle")
				scr_text("Only one ship like it in the world")
						scr_option("How could I get one of these", "npc 1 - brat")
						scr_option("Fredric badguy!!! :0", "npc 1 - badguy")
					
		break;
	case"npc 1 - brat": 
		scr_text("The answer lies there withing your heart")
	
	break;
	
	case"npc 1 - badguy": 
		scr_text("solbadguy")
	
	break;
	case"ncp 2":
				scr_text("Welcome to the infinite world")
				scr_text("What's my endgame? there came a zero")
				scr_text("Sent here, there's silence everywhere - no peace either")
				scr_text("Where there is no beginning and no end - will I be like that?")
				scr_text("And if the words that won't go away still ruin my head")

		break;

}

}