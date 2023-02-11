// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerSpriteControl(){
//Sprite Direction
if facing = 180 //Face Right
	{
		if state = PlayerStateFree && !stopMove
		{
			sprite_index = sPlayerR;
			//image_speed = 1;
		}
		if state = PlayerStateMelee
		{
			sprite_index = sMAttackR;
			image_speed = 2;
		}
	}
if facing = 0 //Face Left
	{
		if state = PlayerStateFree && !stopMove
		{
			sprite_index = sPlayerL;
			//image_speed = 1;
		}
		if state = PlayerStateMelee
		{
			sprite_index = sMAttackL;
			image_speed = 2;
		}
	}
if facing = 90 //Face Down
	{
		if state = PlayerStateFree && !stopMove
		{
			sprite_index = sPlayerD;
			//image_speed = 1;
		}
		if state = PlayerStateMelee
		{
			sprite_index = sMAttackD;
			image_speed = 2;
		}
	}
if facing = 270 //Face Up
	{
		if  !stopMove
		{
			sprite_index = sPlayerU;
			//image_speed = 1;
		}
		if state = PlayerStateMelee
		{
			sprite_index = sMAttackU;
			image_speed = 2;
		}
	}

if !stopMove && (hSpeed = 0 || vSpeed = 0)
	{
		//image_speed = 0;
	}
}