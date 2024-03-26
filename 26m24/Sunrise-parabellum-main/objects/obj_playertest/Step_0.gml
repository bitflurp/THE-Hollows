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
if place_meeting(x + key_hor , y, obj_wall) ==true
	{
		while !place_meeting(x+sign(key_hor),y,obj_wall)
		{
			x+=sign(key_hor)
		}

		key_hor = 0;
	}
//y
if place_meeting(x, y+  key_vert, obj_wall)==true  
	{
		while !place_meeting(x,y+sign(key_vert),obj_wall)
		{
			y+=sign(key_vert)
		}

		key_vert = 0;
	}


x += key_hor;
y += key_vert;


if (Key_Sprint){
    sprinting = true;
    playerSpeed = 9;
	
}
else{
    sprinting = false;
    playerSpeed = 5;
}
 
 //SET SPRITE
 if key_hor > 0 {face = RIGHT}
 if key_hor < 0 {face = LEFT}
 if key_vert < 0 {face = UP}
 if key_vert > 0 {face = DOWN}
 if key_hor > 0 && key_vert < 0 {face = RIGHTUP}
 if key_hor < 0 && key_vert < 0 {face = LEFTUP}
 if key_hor > 0 && key_vert > 0 {face = RIGHTDOWN}
 if key_hor < 0 && key_vert > 0 {face = LEFTDOWN}

 sprite_index = sprite[face];



