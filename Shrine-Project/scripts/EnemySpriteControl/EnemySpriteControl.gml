// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemySpriteControl()
	{
	switch (facing)
		{
		case 1: // Moving Left
			sprite_index = sEWalkL;
			image_speed = 1;
			break;
		case 2: // Moving Right
			sprite_index = sEWalkR;
			image_speed = 1;
			break;
		case 3: // Moving Up
			sprite_index = sEWalkU;
			image_speed = 1;
			break;
		case 4: // Moving Down
			sprite_index = sEWalkD;
			image_speed = 1;
			break;
		}
	
	if attacking
		{
			image_speed = 3;
		}
	}