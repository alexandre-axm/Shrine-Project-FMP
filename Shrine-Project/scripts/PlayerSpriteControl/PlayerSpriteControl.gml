// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerSpriteControl(){
//Sprite Direction
if hSpeed > 0 //Face Left
	{
		sprite_index = sPlayerR
	}
if hSpeed < 0 //Face Right
	{
		sprite_index = sPlayerL
	}
if vSpeed > 0 //Face Down
	{
		sprite_index = sPlayerD
	}
if vSpeed < 0 //Face Up
	{
		sprite_index = sPlayerU
	}
}