// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerSpriteControl(){
//Sprite Direction
if facing = 180 //Face Right
	{
		if !stopMove
		{
			if holding
			{
				sprite_index = sGrabR;
			} 
			else
			{
				sprite_index = sPlayerR;
			}
		}
		if state = PlayerStateMelee
		{
			sprite_index = sMAttackR;
			image_index = 0;
			image_speed = 3;
		}
		if state = PlayerStateRange
		{
			sprite_index = sRAttackR;
			image_index = 0;
			image_speed = 3;
		}
		if state = PlayerStateThrow
		{
			sprite_index = sThrowR;
			image_index = 0;
			image_speed = 4;
		}
				if state = PlayerStateGrab
		{
			sprite_index = sThrowR;
			image_index = 0;
			image_speed = 2;
		}
	}
if facing = 0 //Face Left
	{
		if !stopMove
		{
			if holding
			{
				sprite_index = sGrabL;
			} 
			else
			{
				sprite_index = sPlayerL;
			}
		}
		if state = PlayerStateMelee
		{
			sprite_index = sMAttackL;
			image_index = 0;
			image_speed = 3;
		}
		if state = PlayerStateRange
		{
			sprite_index = sRAttackL;
			image_index = 0;
			image_speed = 3;
		}
		if state = PlayerStateThrow
		{
			sprite_index = sThrowL;
			image_index = 0;
			image_speed = 4;
		}
				if state = PlayerStateGrab
		{
			sprite_index = sThrowL;
			image_index = 0;
			image_speed = 2;
		}
	}
if facing = 90 //Face Down
	{
		if !stopMove
		{
			if holding
			{
				sprite_index = sGrabD;
			} 
			else
			{
				sprite_index = sPlayerD;
			}
		}
		if state = PlayerStateMelee
		{
			sprite_index = sMAttackD;
			image_index = 0;
			image_speed = 3;
		}
		if state = PlayerStateRange
		{
			sprite_index = sRAttackD;
			image_index = 0;
			image_speed = 3;
		}
		if state = PlayerStateThrow
		{
			sprite_index = sThrowD;
			image_index = 0;
			image_speed = 4;
		}
				if state = PlayerStateGrab
		{
			sprite_index = sThrowD;
			image_index = 0;
			image_speed = 2;
		}
	}
if facing = 270 //Face Up
	{
		if !stopMove
		{
			if holding
			{
				sprite_index = sGrabU;
			} 
			else
			{
				sprite_index = sPlayerU;
			}
		}
		if state = PlayerStateMelee
		{
			sprite_index = sMAttackU;
			image_index = 0;
			image_speed = 3;
		}
		if state = PlayerStateRange
		{
			sprite_index = sRAttackU;
			image_index = 0;
			image_speed = 3;
		}
		if state = PlayerStateThrow
		{
			sprite_index = sThrowU;
			image_index = 0;
			image_speed = 4;
		}
		if state = PlayerStateGrab
		{
			sprite_index = sThrowU;
			image_index = 0;
			image_speed = 2;
		}
	}
};