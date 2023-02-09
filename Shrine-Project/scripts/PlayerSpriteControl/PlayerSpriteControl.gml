// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerSpriteControl(){
//Sprite Direction
if hSpeed > 0 //Face Left
	{
		sprite_index = sPlayerR
		image_speed = 1;
	}
if hSpeed < 0 //Face Right
	{
		sprite_index = sPlayerL
		image_speed = 1;
	}
if vSpeed > 0 //Face Down
	{
		sprite_index = sPlayerD
		image_speed = 1;
	}
if vSpeed < 0 //Face Up
	{
		sprite_index = sPlayerU
		image_speed = 1;
	}
}