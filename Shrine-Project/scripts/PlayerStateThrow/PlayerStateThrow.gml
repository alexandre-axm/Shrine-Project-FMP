// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateThrow(){
	with global.lifted
		{
			lifted = false;
			persistent = false;
			thrown = true;
			z = 13;
			throwPeakH = z + 10;
			throwDis = entityThrowDis;
			throwDisTravelled = 0;
			throwStartPercent = (13/throwPeakH) * 0.5;
			throwPercent = throwStartPercent;
			if (ObjPlayer.facing = 0) {direction = 180;} //Left
			if (ObjPlayer.facing = 90) {direction = 270;} //Down
			if (ObjPlayer.facing = 180) {direction = 0;} //Right
			if (ObjPlayer.facing = 270) {direction = 90;} //Up
			xstart = x;
			ystart = y;
		}
	holding = false;
	global.lifted = noone;
	state = PlayerStateFree
}