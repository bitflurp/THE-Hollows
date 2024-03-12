
left = keyboard_check(ord("A"))
right = keyboard_check(ord("D"))
hdir= (right-left)*wspd;
vdir= global.grv
jump= keyboard_check_pressed(vk_space)


if place_meeting(x+hdir,y,obj_wall)
{
	while !place_meeting(x+sign(hdir),y,obj_wall)
		{
			x+=sign(hdir)
		}
			hdir=0
}

if place_meeting(x,y+vdir,obj_wall)
{
	while !place_meeting(x,y+sign(vdir),obj_wall)
		{
			y+=sign(vdir)
		}
			vdir=0
}

x+=hdir;
y+=vdir;

if jump {
 y -= global.grv*4
}