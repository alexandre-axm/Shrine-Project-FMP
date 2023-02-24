//Enemy State Machine
//script_execute(eState);

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
		alarm_set(0,30);
		instance_destroy(global.thrown);
		kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
		kbSpeed = kbMaxSpeed;
	}