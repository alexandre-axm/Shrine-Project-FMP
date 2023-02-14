// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateFree(){
//Movement
hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

if place_free(x + hSpeed, y) && !stopMove
	{
		x += hSpeed
		image_speed = 0;
	}
if place_free(x, y + vSpeed) && !stopMove
	{
		y += vSpeed
		image_speed = 0;
	}

//Sprite Direction
if hSpeed > 0 && !cooldownM //Face Right
	{
		facing = 180;
		image_speed = 1;
	};
if hSpeed < 0 && !cooldownM //Face Left
	{
		facing = 0;
		image_speed = 1;
	};
if vSpeed > 0 && !cooldownM //Face Down
	{
		facing = 90;
		image_speed = 1;
	};
if vSpeed < 0 && !cooldownM //Face Up
	{
		facing = 270;
		image_speed = 1;
	};
//Change State
if ((keyMelee) && !cooldownM) //Melee Attack
	{
		state = PlayerStateMelee;
	}
if ((keyRange) && !cooldownR && global.stockR > 0) //Ranged Attack
	{
		state = PlayerStateRange;
	}
if global.playerHealth <= 0 //Game Over
	{
		state = PlayerStateDeath;
	}
if global.cooldownH = true //Taking Damage
	{
		state = PlayerStateKnockback;
	}
}