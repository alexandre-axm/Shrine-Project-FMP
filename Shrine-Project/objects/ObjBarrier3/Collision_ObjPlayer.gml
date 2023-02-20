if global.enemiesLeft <= 0
	{
		instance_destroy(self)
		global.target = noone;
	}