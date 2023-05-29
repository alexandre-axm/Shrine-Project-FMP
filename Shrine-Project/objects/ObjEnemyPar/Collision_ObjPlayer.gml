// Damage Player
if !global.cooldownH && !cooldownE && !lifted && !thrown
	{
		if !global.defenceUp
			global.playerHealth -= 1;
		else
			global.playerHealth -= 0.5;
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
		with ObjPlayer
			{
				alarm_set(4,10);
				kbDir = round(point_direction(other.x, other.y, x, y)/45)*45;
				kbSpeed = kbMaxSpeed;
			}
			audio_play_sound(SndHurt,2,false);
	}