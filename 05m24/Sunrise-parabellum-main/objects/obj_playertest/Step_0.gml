///Movement
Key_Left = keyboard_check_direct(ord("A"));
Key_Right = keyboard_check_direct(ord("D"));
Key_Up = keyboard_check_direct(ord("W"));
Key_Down = keyboard_check_direct(ord("S"));
Key_Sprint = keyboard_check_direct(vk_lshift);
 
key_hor = ( Key_Right - Key_Left) * playerSpeed;
key_vert = ( Key_Down - Key_Up) *playerSpeed;

x += key_hor;
y += key_vert;
 //SET SPRITE
 
 sprite_index = sprite[face];
//Collisions and Movement
//Horizontal (X)

if (Key_Sprint){
    sprinting = true;
    playerSpeed = 9;
	
}

 




