// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemySpriteControl()
	{
	if facing = 1 // Moving Left
	{
		sprite_index = sEWalkL;
		//image_index = 0;
		image_speed = 1;
	}
	if facing = 2 //Moving Right
	{
		sprite_index = sEWalkR;
		//image_index = 0;
		image_speed = 1;
	}
	if facing = 3 //Moving Up
	{
		sprite_index = sEWalkU;
		//image_index = 0;
		image_speed = 1;
	}
	if facing = 4 //Moving Down
	{
		sprite_index = sEWalkD;
		//image_index = 0;
		image_speed = 1;
	}
	if attacking
		{
			//image_index = 0;
			image_speed = 3;
		}
	}