// Damage Player
if !global.defenceUp && !global.cooldownH
	{
		global.playerHealth -= 1;
		global.cooldownH = true;
		with ObjPlayer
			{
				alarm_set(4,10);
				kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
				kbSpeed = kbMaxSpeed;
			}
		instance_destroy(self);
	}
if global.defenceUp && !global.cooldownH
	{
		global.playerHealth -= 0.5;
		global.cooldownH = true;
		with ObjPlayer
			{
				alarm_set(4,10);
				kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
				kbSpeed = kbMaxSpeed;
			}
		instance_destroy(self);
	}