// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyPlayerCheck2(){
	if (distance <= 350) && ((distance >= alertDis) || (distance <= attackDis)) //If distance higher than alert distance/ less than attack distance
	{
		//Move randomly
		alert = false;
		moveSpd = 1.5;
		xTarget = x + irandom_range(-40, 40);
		yTarget = y + irandom_range(-40, 40);
	}
	if (distance <= 350) && (distance <= alertDis) //Check if distance is less than alert distance/ higher than attack distance
	{
		//Move towards player
		alert = true;
		moveSpd = 2.5;
		xTarget = (ObjPlayer.x -+ random_range(100, 250)) - (ObjWall.x -+ irandom_range(10,30));
		yTarget = (ObjPlayer.y -+ random_range(100, 250)) - (ObjWall.y -+ irandom_range(10,30));
	}
}