///Movement
Key_Left = keyboard_check_direct(ord("A"));
Key_Right = keyboard_check_direct(ord("D"));
Key_Up = keyboard_check_direct(ord("W"));
Key_Down = keyboard_check_direct(ord("S"));
Key_Sprint = keyboard_check_direct(vk_lshift);
 
key_hor = ( Key_Right - Key_Left) * playerSpeed;
key_vert = ( Key_Down - Key_Up) *playerSpeed;

//Collisions and Movement
//x
if place_meeting(x + key_hor , y, obj_wall)// --true // 
	{
		key_hor = 0;
	}
//y
if place_meeting(x + key_vert , y, obj_wall)// --true // 
	{
		key_vert = 0;
	}


x += key_hor;
y += key_vert;
 //SET SPRITE
 
 sprite_index = sprite[face];


if (Key_Sprint){
    sprinting = true;
    playerSpeed = 9;
	
}
else{
    sprinting = false;
    playerSpeed = 5;
}
 




