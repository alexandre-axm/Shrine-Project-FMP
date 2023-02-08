// Damage Player
if global.defenceUp = false && global.cooldownH = false && cooldownE = false
	{
		global.playerHealth -= 1;
		global.cooldownH = true;
		with ObjPlayer
			{
				alarm_set(4,10);
				kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
				kbSpeed = kbMaxSpeed;
			}
	}
if global.defenceUp = true && global.cooldownH = false && cooldownE = false
	{
		global.playerHealth -= 0.5;
		global.cooldownH = true;
		with ObjPlayer
			{
				alarm_set(4,10);
				kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
				kbSpeed = kbMaxSpeed;
			}
	}