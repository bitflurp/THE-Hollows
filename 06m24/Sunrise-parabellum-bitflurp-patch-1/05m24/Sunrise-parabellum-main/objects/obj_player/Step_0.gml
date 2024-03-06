///Movement
key_left = keyboard_check_direct(ord("A"));
key_right = keyboard_check_direct(ord("D"));
key_up = keyboard_check_direct(ord("W"));
key_down = keyboard_check_direct(ord("S"));
key_sprint = keyboard_check_direct(vk_lshift);
 
key_hor = ( key_right - key_left) * playerSpeed;
key_vert = ( key_down - key_up) *playerSpeed;

x += key_hor;
y += key_vert;
 //SET SPRITE
 
 sprite_index = sprite[face];
//Collisions and Movement
//Horizontal (X)

if (key_sprint){
    sprinting = true;
    playerSpeed = 9;
	
}
else{
	sprinting = false;
	playerSpeed = 5;
}
 




