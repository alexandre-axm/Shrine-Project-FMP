// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyPlayerCheck3(){
	if (distance <= 350) && ((distance >= alertDis) || (distance <= attackDis)) //If distance higher than alert distance/ less than attack distance
	{
		//Move randomly
		alert = false;
		xTarget = x + irandom_range(-40, 40);
		yTarget = y + irandom_range(-40, 40);
	}
	if (distance <= 350) && (distance <= alertDis) // (distance >= attackDis) //Check if distance is less than alert distance/ higher than attack distance
	{
		//Move towards player
		alert = true;
		xTarget = ObjPlayer.x;
		yTarget = ObjPlayer.y;
	}
	if distance < attackDis
	{
		xTarget = ObjPlayer.x + (choose(-96, 96));
		yTarget = ObjPlayer.y + (choose(-96, 96));
	}
}