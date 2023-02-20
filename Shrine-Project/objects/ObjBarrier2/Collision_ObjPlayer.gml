if global.enemiesLeft <= 23
	{
		instance_destroy(self)
		global.target = noone;
	}
