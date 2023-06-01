// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateThrow(){
	with global.lifted
		{
			lifted = false;
			persistent = false;
			thrown = true;
			
			switch (ObjPlayer.facing)
				{
					case 0: //Left
						direction = 180;
						break;
					case 90: //Down
						direction = 270;
						break;
					case 180: //Right
						direction = 0;
						break;
					case 270: //Up
						direction = 90;
						break;
				}
			z = 7;
			throwPeakH = z + 10;
			
			throwDis = entityThrowDis;
			throwDisTravelled = 0;
			throwStartPercent = (10/throwPeakH) * 0.5;
			throwPercent = throwStartPercent;
			xstart = x;
			ystart = y;
		}
	holding = false;
	global.lifted = noone;
	cooldownM = true; //Attack cooldown
	stopMove = true; // Briefly Stops Movement
	solid = false;
	alarm_set(0,30);
	alarm_set(5,18);
	alarm_set(6,8);
	state = PlayerStateFree
}