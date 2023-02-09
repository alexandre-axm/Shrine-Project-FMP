// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateFree(){
//Movement
hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

if place_free(x + hSpeed, y) && stopMove = false
	{
		x += hSpeed
		image_speed = 0;
	}
if place_free(x, y + vSpeed) && stopMove = false
	{
		y += vSpeed
		image_speed = 0;
	}
}