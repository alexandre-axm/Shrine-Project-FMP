// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerSpriteControl(){
//Sprite Direction
if facing = 180 //Face Right
	{
		if !stopMove
		{
			sprite_index = sPlayerR;
		}
		if state = PlayerStateMelee
		{
			sprite_index = sMAttackR;
			image_index = 0;
			image_speed = 3;
		}
	}
if facing = 0 //Face Left
	{
		if !stopMove
		{
			sprite_index = sPlayerL;
		}
		if state = PlayerStateMelee
		{
			sprite_index = sMAttackL;
			image_index = 0;
			image_speed = 3;
		}
	}
if facing = 90 //Face Down
	{
		if !stopMove
		{
			sprite_index = sPlayerD;
		}
		if state = PlayerStateMelee
		{
			sprite_index = sMAttackD;
			image_index = 0;
			image_speed = 3;
		}
	}
if facing = 270 //Face Up
	{
		if !stopMove
		{
			sprite_index = sPlayerU;
		}
		if state = PlayerStateMelee
		{
			sprite_index = sMAttackU;
			image_index = 0;
			image_speed = 3;
		}
	}
};