// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyStateWander(){
	//At Destination?
	if ((x == xTarget) && (y == yTarget)) || (timePassed > alertDis / moveSpd)
	{
		moveSpd = 0;
		if (image_index > 1)
		{
			image_speed = 0;
			image_index = 0;
		}
		
		//Set new target
		if (++wait >= waitDuration)
		{
			wait = 0;
			timePassed = 0;
			pathDir = point_direction(x,y,xstart,ystart) + irandom_range(-45,45);
			xTarget = x + lengthdir_x(alertDis, pathDir);
			yTarget = y + lengthdir_y(alertDis, pathDir);
		}
	}
	else //New Path
	{
		timePassed++;
		image_speed = 1;
		var _disLeft = point_distance(x,y,xTarget,yTarget);
		var _currentSpeed = moveSpd;
		if (-_disLeft < moveSpd) _currentSpeed = _disLeft;
		pathDir = point_direction(x,y,xTarget,yTarget)
		hSpeed = lengthdir_x(_currentSpeed,pathDir);
		vSpeed = lengthdir_y(_currentSpeed,pathDir);
		
	}
}