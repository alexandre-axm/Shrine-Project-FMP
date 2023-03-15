// Damage Player
if !global.defenceUp && !global.cooldownH && !cooldownE && !lifted && !thrown
	{
		global.playerHealth -= 1;
		global.cooldownH = true;
		cooldownE = true;
		kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
		kbSpeed = (kbMaxSpeed/2);
		alarm_set(0,30);
		path_end();
		with ObjPlayer
			{
				alarm_set(4,10);
				kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
				kbSpeed = kbMaxSpeed;
			}
	}
if global.defenceUp && !global.cooldownH && !cooldownE && !lifted && !thrown
	{
		global.playerHealth -= 0.5;
		global.cooldownH = true;
		cooldownE = true;
		kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
		kbSpeed = (kbMaxSpeed/2);
		alarm_set(0,30);
		path_end();
		with ObjPlayer
			{
				alarm_set(4,10);
				kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
				kbSpeed = kbMaxSpeed;
			}
	}