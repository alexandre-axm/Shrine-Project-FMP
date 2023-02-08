//Enemy Health Check
if eHealth <= 0
	{
		instance_destroy(self)
		global.enemiesLeft -= 1
	}
if (kbSpeed > 0) && place_free(x,y)
	{
		kbSpeed -= kbDec;
		x += lengthdir_x(kbSpeed, kbDir);
		y += lengthdir_y(kbSpeed, kbDir);
	}