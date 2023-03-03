// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function OnryoStateMelee()
{
	move_towards_point(ObjPlayer.x, ObjPlayer.y, 4);
	alarm_set(1,90);
}