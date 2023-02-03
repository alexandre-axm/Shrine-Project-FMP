// You can write your code in this editor
if global.attackUp = false && cooldownE = false
	{
		eHealth -= 1;
		cooldownE = true;
		alarm_set(0,60);
		instance_destroy(other);
	}
if global.attackUp = true && cooldownE = false
	{
		eHealth -= 2;
		cooldownE = true;
		alarm_set(0,60);
		instance_destroy(other);
	}