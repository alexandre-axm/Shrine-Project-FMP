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
	
if collision_rectangle(x-12,y-12,x+12,y+12,global.thrown,false,true) && !cooldownE
	{
		eHealth -= 1;
		cooldownE = true;
		hurt = true;
		alarm_set(0,30);
		kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
		kbSpeed = kbMaxSpeed;
		path_end();
		disguiseOn = false;
	}
	
//Sprite Control
xStart = path_get_x(path, 0);
xEnd = path_get_x(path, 0.2);
yStart = path_get_y(path, 0);
yEnd = path_get_y(path, 0.2);

if (xStart - xEnd) > (yStart - yEnd)
{
	if (xStart > xEnd) //Move Left
	{
		facing = 1;
	}
	if (xStart < xEnd) //Move Right
	{
		facing = 2;
	}
}
if (xStart - xEnd) < (yStart - yEnd)
{
	if (yStart > yEnd) //Move Up
	{
		facing = 3;
	}
	if (yStart < yEnd) //Move Down
	{
		facing = 4;
	}
}

EnemySpriteControl();