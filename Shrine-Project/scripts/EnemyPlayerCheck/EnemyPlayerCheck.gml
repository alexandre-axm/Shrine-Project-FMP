// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyPlayerCheck(){
	var _dis = distance_to_object(ObjPlayer);
	if ((_dis <= alertDis) || distance_to_object(ObjWall) <= 15 || alert) and _dis > attackDis
	{
		alert = true;
	}
}