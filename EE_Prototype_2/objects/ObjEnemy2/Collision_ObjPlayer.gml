// You can write your code in this editor
if global.defenceUp = false && global.cooldownH = false && cooldownE = false
	{
		global.playerHealth -= 1;
		global.cooldownH = true;
		with ObjPlayer
			{
				alarm_set(4,60);
			}
	}
if global.defenceUp = true && global.cooldownH = false && cooldownE = false
	{
		global.playerHealth -= 0.5;
		global.cooldownH = true;
		with ObjPlayer
			{
				alarm_set(4,60);
			}
	}
if global.playerHealth <= 0
	{
		instance_destroy(other);
	}