function PlayerStateKnockback()
{
	if (kbSpeed > 0) && place_free(x,y)
	{
		kbSpeed -= kbDec;
		x += lengthdir_x(kbSpeed, kbDir);
		y += lengthdir_y(kbSpeed, kbDir);
	}
	
	/*direction = (point_direction(other.x, other.y, x, y)/45)*45;
	speed = 3;
	if place_free(x, y) = false || !global.cooldownH
	{
		speed = 0;
	}*/
};