if !global.attackUp && !cooldownE //Standard Damage Value
	{	
		eHealth -= 1;
		cooldownE = true;
		hurt = true;
		alarm_set(0,30);
		if place_free(x,y)
		{
			kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
			kbSpeed = kbMaxSpeed;
		}
		path_end();
	};
if global.attackUp && !cooldownE //Increased Damage Value
	{
		eHealth -= 2;
		cooldownE = true;
		hurt = true;
		alarm_set(0,30);
		if place_free(x,y)
		{
			kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
			kbSpeed = kbMaxSpeed;
		}
		path_end();
	};