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
if hSpeed > 0 && (!cooldownM && !cooldownR) //Face Right
	{
		facing = 180;
		image_speed = 1;
	};
if hSpeed < 0 && (!cooldownM && !cooldownR) //Face Left
	{
		facing = 0;
		image_speed = 1;
	};
if vSpeed > 0 && (!cooldownM && !cooldownR) //Face Down
	{
		facing = 90;
		image_speed = 1;
	};
if vSpeed < 0 && (!cooldownM && !cooldownR) //Face Up
	{
		facing = 270;
		image_speed = 1;
	};
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