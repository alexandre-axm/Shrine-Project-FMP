// You can write your code in this editor
if eHealth <= 0
	{
		instance_destroy(self)
		//global.enemiesLeft -= 1
		room_goto(LevelClear);
	}