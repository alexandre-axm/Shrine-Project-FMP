// Damage Player
if !cooldownE && !lifted && !thrown
	{
		if !global.cooldownH
			{
				if !global.defenceUp //Normal Damage
					{
						global.playerHealth -= 1
					}
				if global.defenceUp //Half Damage
					{
						global.playerHealth -= 0.5
					}
			}
		global.cooldownH = true;
		cooldownE = true;
		disguiseOn = false;
		path_end();
		if attacking
		{
			kbMaxSpeed = 7;
			attacking = false;
		}
		kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
		kbSpeed = (kbMaxSpeed/2);
		alarm_set(0,30);
		with ObjPlayer //Knock Player Back
			{
				alarm_set(4,10);
				kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
				kbSpeed = kbMaxSpeed;
			}
			audio_play_sound(SndHurt,2,false);
	}