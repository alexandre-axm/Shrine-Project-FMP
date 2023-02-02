//
if global.attackUp = false && cooldownE = false
	{
		eHealth -= 1;
		cooldownE = true;
		alarm_set(0,60);
	}
if global.attackUp = true && cooldownE = false
	{
		eHealth -= 2;
		cooldownE = true;
		alarm_set(0,60);
	}