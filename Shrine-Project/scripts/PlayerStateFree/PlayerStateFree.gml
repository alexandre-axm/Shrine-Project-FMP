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
if (!cooldownM && !cooldownR)
	{
		if (hSpeed != 0 or vSpeed != 0)
			{
				image_speed = 1;
			}
			
		if hSpeed > 0 //Face Right
			{
				facing = 180;
			};
		if hSpeed < 0 //Face Left
			{
				facing = 0;
			};
			
		if vSpeed > 0 //Face Down
			{
				facing = 90;
			};
		if vSpeed < 0 //Face Up
			{
				facing = 270;
			};
	}

//Change State
if ((keyMelee) && !cooldownM && !holding) //Melee Attack
	{
		state = PlayerStateMelee;
		audio_play_sound(SndMeleeAttack,1,false);
	}
if ((keyRange) && !cooldownR && !holding && global.stockR > 0) //Ranged Attack
	{
		state = PlayerStateRange;
		audio_play_sound(SndRangeAttack,1,false);
	}
if keyGrab //Grab Throw
	{
		if !holding && !cooldownM
			{
				state = PlayerStateGrab;
				audio_play_sound(SndMeleeAttack,1,false);
			}
		if holding && !cooldownM
			{
				state = PlayerStateThrow;
				audio_play_sound(SndMeleeAttack,1,false);
			}
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