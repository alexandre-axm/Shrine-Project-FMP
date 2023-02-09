if global.attackUp = false && cooldownE = false //Standard Damage Value
	{	
		eHealth -= 1;
		cooldownE = true;
		alarm_set(0,15);
		kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
		kbSpeed = kbMaxSpeed;
		path_end();
	};
if global.attackUp = true && cooldownE = false //Increased Damage Value
	{
		eHealth -= 2;
		cooldownE = true;
		alarm_set(0,15);
		kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
		kbSpeed = kbMaxSpeed;
		path_end();
	};