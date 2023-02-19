if !global.attackUp && !cooldownE //Standard Attack Value
	{
		eHealth -= 1;
		cooldownE = true;
		alarm_set(0,30);
		instance_destroy(other);
		kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
		kbSpeed = kbMaxSpeed;
		path_end();
	}
if global.attackUp && !cooldownE //Increased Attack Value
	{
		eHealth -= 2;
		cooldownE = true;
		alarm_set(0,30);
		instance_destroy(other);
		kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
		kbSpeed = kbMaxSpeed;
		path_end();
	}