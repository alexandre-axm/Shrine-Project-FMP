function PlayerStateKnockback()
{
	if (kbSpeed > 0) && place_free(x,y)
	{
		kbSpeed -= kbDec;
		x += lengthdir_x(kbSpeed, kbDir);
		y += lengthdir_y(kbSpeed, kbDir);
	}
	if !place_free(x,y)
	{
		kbSpeed = 0;
	}
};