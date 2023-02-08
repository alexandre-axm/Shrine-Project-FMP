//
if global.attackUp = false && cooldownE = false
	{
		eHealth -= 1;
		cooldownE = true;
		alarm_set(0,30);
		instance_destroy(other);
		kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
		kbSpeed = kbMaxSpeed;
	}
if global.attackUp = true && cooldownE = false
	{
		eHealth -= 2;
		cooldownE = true;
		alarm_set(0,30);
		instance_destroy(other);
		kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
		kbSpeed = kbMaxSpeed;
	}